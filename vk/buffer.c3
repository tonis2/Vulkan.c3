module vk;
import std::io;
import std::collections::list;
import std::collections::map;

alias BlockList = List{Memory*};
alias PageList = List{MemoryPage*};
alias FreeBlockList = List{FreeBlock};

enum GpuType
{
    HOST_VISIBLE,
    DEVICE_ONLY,
    CPU_ONLY
}

interface Allocator
{
    fn sz total_size();
    fn void set_used_size(sz size);
    fn char* data();
    fn void upload(void* data, sz size, sz offset);
    fn ulong get_address();
    fn sz get_used_size();
    fn uint get_type();
    fn void* get_buffer();
    fn void free();
    fn void mark_deleted();
    fn bool is_deleted();
}

faultdef BUFFER_TOO_SMALL, ALLOCATION_NOT_FOUND, ALLOCATION_HAS_NO_ROOM, OUT_OF_DEVICE_MEMORY;

macro alignUp(value, factor) => value + factor - 1 - (value + factor - 1) % factor;

// ============================================================================
// Device memory
//
// Vulkan allocations are few and slow, so buffers and images are placed in
// pages. Two kinds, and an allocation only ever goes in its own kind:
//
//   shared     `default_page_size` pages holding many small allocations, first
//              fit over a free list.
//   dedicated  one page per allocation bigger than that. When it is freed the
//              page stays, idle, for the next allocation about its size.
//
// Every allocation remembers the whole block it took, alignment padding
// included, and every page counts what it still holds. So a free gives back
// exactly what was taken, and a page whose count reaches zero starts over as
// one free block - however its holes would have merged.
//
// A page that holds nothing still holds device memory. Idle pages go back to
// the driver before a new page is made (the request did not fit them, and
// keeping them would put the new page on top) and on `trim()`. What the
// allocator keeps is then what is live plus whatever was freed since the last
// page was made - not every size the process ever asked for.
//
// Freeing is immediate (`Memory.free`, the caller knows the GPU is done) or
// deferred (`Memory.mark_deleted`, given back on the next `sync()` at idle).
// Either way the block is reusable at once and its page can be released at
// the next new page, so nothing may still be reading it.
// ============================================================================

struct FreeBlock {
    sz offset;
    sz size;
}

struct MemoryPage {
    DeviceMemory memory;
    sz size;
    sz used_size;               // bytes handed out, padding included
    usz live;                   // allocations not yet given back
    bool dedicated;             // made for one allocation bigger than a shared page
    void* mapped;
    MemoryPropertyFlags properties;
    uint memory_type;
    FreeBlockList free_blocks;  // by offset, never two touching
}

// What the allocator holds, in bytes. `idle` is pages holding nothing, which
// `trim()` would give back.
struct MemoryStats {
    sz allocated;
    sz used;
    sz idle;
    usz pages;
    usz idle_pages;
}

struct MemoryAllocator {
    Device device;
    PhysicalDevice pdevice;
    DeviceQueue queue;
    sz default_page_size;
    MemoryAllocateFlags flags;
    PageList pages;
    BlockList pending_deletes;  // Allocations marked for deletion
    // Where the bookkeeping lives, taken at init. Not `mem` at the moment of
    // the call: a page made while a caller has swapped `mem` for a tracker or
    // an arena would be freed through the wrong allocator, and a list left
    // zero-initialised resolves to `tmem`, which a `@pool()` frees under it.
    alloc::Allocator heap;
}

fn MemoryAllocator? MemoryAllocator.init(&self) {
    if (self.default_page_size == 0) {
        self.default_page_size = 64_000_000;  // 64MB default
    }
    self.heap = mem;
    self.pages.init(self.heap);
    self.pending_deletes.init(self.heap);
    return *self;
}

// The end-of-range check every placement makes: whether `required_size` bytes
// aligned to `alignment` fit between `used_size` and `page_size`. Pure, so the
// alignment-padding overflow that once reached vkBind*Memory can be pinned
// without a device.
fn bool allocation_fits(sz page_size, sz used_size, sz required_size, sz alignment)
{
    sz offset = alignUp(used_size, alignment);
    return offset <= page_size && required_size <= page_size - offset;
}

// A page holding nothing: one free block, the whole of it.
fn void MemoryPage.reset(&self) {
    self.free_blocks.clear();
    self.free_blocks.push({ .offset = 0, .size = self.size });
    self.used_size = 0;
    self.live = 0;
}

fn bool MemoryPage.idle(&self) => self.live == 0;

<*
 Takes `size` bytes at `alignment` from the first free block they fit.

 @param [out] offset : `Where the allocation starts.`
 @param [out] padding : `The bytes skipped before it to align it, given back with it.`
 @return `Whether it fit.`
*>
fn bool MemoryPage.take(&self, sz size, sz alignment, sz* offset, sz* padding) {
    foreach (i, &block : self.free_blocks) {
        if (!allocation_fits(block.offset + block.size, block.offset, size, alignment)) continue;
        sz at = alignUp(block.offset, alignment);
        sz taken = at - block.offset + size;
        *offset = at;
        *padding = at - block.offset;
        if (taken == block.size) {
            self.free_blocks.remove_at(i);
        } else {
            block.offset += taken;
            block.size -= taken;
        }
        self.used_size += taken;
        self.live++;
        return true;
    }
    return false;
}

// Gives back a block `take` handed out, padding included, joining it to the
// free blocks either side.
fn void MemoryPage.give_back(&self, sz offset, sz size) {
    if (self.live == 0) return;  // nothing out: a second free of the same block
    self.live--;
    if (self.live == 0) {
        self.reset();
        return;
    }
    self.used_size -= size;

    sz i = 0;
    sz count = self.free_blocks.len();
    while (i < count && self.free_blocks[i].offset < offset) i++;
    bool joins_before = i > 0 && self.free_blocks[i - 1].offset + self.free_blocks[i - 1].size == offset;
    bool joins_after = i < count && offset + size == self.free_blocks[i].offset;

    if (joins_before && joins_after) {
        self.free_blocks[i - 1].size += size + self.free_blocks[i].size;
        self.free_blocks.remove_at(i);
    } else if (joins_before) {
        self.free_blocks[i - 1].size += size;
    } else if (joins_after) {
        self.free_blocks[i].offset = offset;
        self.free_blocks[i].size += size;
    } else {
        self.free_blocks.insert_at(i, { .offset = offset, .size = size });
    }
}

fn MemoryPage*? MemoryAllocator.new_page(&self, uint memory_type, MemoryPropertyFlags properties, sz size, bool dedicated) {
    MemoryAllocateFlagsInfo flags_info = {.sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .flags = self.flags};
    MemoryAllocateInfo info = memoryAllocateInfo()
        .setAllocationSize((DeviceSize)size)
        .setNext(&flags_info)
        .setMemoryTypeIndex(memory_type);

    DeviceMemory? built = info.build(self.device);
    if (catch built) {
        // Idle pages may be what is in the way.
        if (self.trim() == 0) return OUT_OF_DEVICE_MEMORY~;
        built = info.build(self.device);
    }
    if (catch built) return OUT_OF_DEVICE_MEMORY~;
    DeviceMemory memory = built;

    void* mapped = null;
    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_HOST_VISIBLE_BIT) {
        if (catch vk::mapMemory(self.device, memory, 0, (DeviceSize)size, (MemoryMapFlags)0, &mapped)) {
            freeMemory(self.device, memory, null);
            return OUT_OF_DEVICE_MEMORY~;
        }
    }

    MemoryPage* page = alloc::new(self.heap, MemoryPage);
    *page = {
        .memory = memory,
        .size = size,
        .dedicated = dedicated,
        .mapped = mapped,
        .memory_type = memory_type,
        .properties = properties,
    };
    page.free_blocks.init(self.heap);
    page.reset();
    self.pages.push(page);
    return page;
}

fn void MemoryAllocator.release_page(&self, sz index) {
    MemoryPage* page = self.pages[index];
    if (page.mapped != null) vk::unmapMemory(self.device, page.memory);
    page.free_blocks.free();
    freeMemory(self.device, page.memory, null);
    alloc::free(self.heap, page);
    self.pages.remove_at(index);
}

<*
 Finds room for an allocation, making a page if nothing has it.

 A small allocation takes the first shared page with room. A big one takes the
 smallest idle dedicated page that is at most a quarter bigger than it - the
 same buffer made again at the same size, the common case - and otherwise gets
 a page of its own.

 @param [out] offset : `Where in the page it starts.`
 @param [out] padding : `The alignment bytes before it, which belong to it.`
 @return? OUT_OF_DEVICE_MEMORY : `No page had room and the device would not make one, even after the idle pages went.`
 @return? ALLOCATION_HAS_NO_ROOM : `A new page that cannot take it: an alignment bigger than the page.`
*>
fn MemoryPage*? MemoryAllocator.place(&self, MemoryPropertyFlags properties, uint memory_type_bits, sz size, sz alignment, sz* offset, sz* padding) {
    uint memory_type = self.pdevice.getMemoryType(properties, memory_type_bits);
    bool dedicated = size > self.default_page_size;

    // Match on memory_type AND properties: on unified-memory GPUs (Apple
    // Silicon via KosmicKrisp/MoltenVK) every property bit lives on one memory
    // type, and a device-local page is unmapped - a host-visible allocation put
    // there would memcpy through a null `mapped`.
    MemoryPage* best = null;
    foreach (page : self.pages) {
        if (page.memory_type != memory_type || page.properties != properties || page.dedicated != dedicated) continue;
        if (!dedicated) {
            if (page.take(size, alignment, offset, padding)) return page;
            continue;
        }
        if (!page.idle() || page.size < size || page.size - size > size / 4) continue;
        if (best == null || page.size < best.size) best = page;
    }
    if (best != null && best.take(size, alignment, offset, padding)) return best;

    // Idle pages first: none of them could take this, and a new page made
    // beside them would be on top of memory nobody is using.
    self.trim();
    MemoryPage* page = self.new_page(memory_type, properties, dedicated ? size : self.default_page_size, dedicated)!;
    if (!page.take(size, alignment, offset, padding)) return ALLOCATION_HAS_NO_ROOM~;
    return page;
}

// Kept for callers of the old name: a page with room, made if need be. The
// room is not taken.
fn MemoryPage* MemoryAllocator.find_or_create_page(
    &self, MemoryPropertyFlags properties, sz required_size, uint memory_type_bits, sz alignment = 1
) {
    sz offset;
    sz padding;
    MemoryPage* page = self.place(properties, memory_type_bits, required_size, alignment, &offset, &padding)!!;
    page.give_back(offset - padding, required_size + padding);
    return page;
}

// Mark a Memory allocation for deletion (will be freed on sync)
fn void MemoryAllocator.mark_deleted(&self, Memory* mem) {
    if (mem.buffer == null && mem.image == null) return;  // Already freed
    self.pending_deletes.push(mem);
}

// Process all pending deletions - call this when GPU is idle
fn void MemoryAllocator.sync(&self) {
    foreach (mem : self.pending_deletes) mem.release();
    self.pending_deletes.clear();
}

<*
 Gives every page that holds nothing back to the driver.

 Safe whenever the blocks in those pages were freed honestly: a page is idle
 only when every allocation in it went through `Memory.free` (the caller knew
 the GPU was done) or through `sync()` at idle. Deferred deletes still pending
 hold their pages.

 @return `The bytes given back.`
*>
fn sz MemoryAllocator.trim(&self) {
    sz released = 0;
    for (sz i = self.pages.len(); i > 0; i--) {
        if (!self.pages[i - 1].idle()) continue;
        released += self.pages[i - 1].size;
        self.release_page(i - 1);
    }
    return released;
}

// The pending deletions, then `trim()`. Call when the GPU is idle.
fn void MemoryAllocator.release_empty_pages(&self) {
    self.sync();
    self.trim();
}

fn MemoryStats MemoryAllocator.stats(&self) {
    MemoryStats s;
    foreach (page : self.pages) {
        s.allocated += page.size;
        s.used += page.used_size;
        s.pages++;
        if (page.idle()) {
            s.idle += page.size;
            s.idle_pages++;
        }
    }
    return s;
}

fn sz MemoryAllocator.total_allocated(&self) => self.stats().allocated;
fn sz MemoryAllocator.total_used(&self) => self.stats().used;

// Free bytes inside pages that still hold something: what fragmentation costs.
fn sz MemoryAllocator.total_fragmented(&self) {
    sz total = 0;
    foreach (page : self.pages) {
        if (!page.idle()) total += page.size - page.used_size;
    }
    return total;
}

fn void MemoryAllocator.free(&self) {
    self.sync();
    while (self.pages.len() > 0) self.release_page(self.pages.len() - 1);
    self.pages.free();
    self.pending_deletes.free();
}

struct Memory
{
    sz size;
    sz used_size;
    sz page_offset;
    sz padding;     // alignment bytes before page_offset that belong to this block
    GpuType type;
    vk::Buffer buffer;
    vk::Image image;
    vk::MemoryPage* page;
    vk::MemoryAllocator* allocator;
    vk::BufferUsageFlagBits usage;
    DeviceAddress address;
    bool deleted;  // Marked for deletion, will be freed on sync
}

fn Memory? new_buffer(
	vk::MemoryAllocator* allocator,
    vk::BufferUsageFlagBits usage,
    vk::MemoryPropertyFlags properties,
    void* data = null,
    sz data_size,
    DeviceQueue* queue = null
) {
    vk::Device device = allocator.device;
    vk::PhysicalDevice pdevice = allocator.pdevice;

    // For device-local buffers with data, we need transfer destination capability
    BufferUsageFlagBits actual_usage = usage;
    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_DEVICE_LOCAL_BIT && data != null) {
        actual_usage |= BUFFER_USAGE_TRANSFER_DST_BIT;
    }

    vk::Buffer buffer = vk::bufferCreateInfo()
        .setUsage(actual_usage)
        .setSharingMode(SHARING_MODE_EXCLUSIVE)
        .setSize((DeviceSize)data_size)
        .build(device)!!;

    MemoryRequirements mem_reqs = buffer.memoryRequirements(device);

    if ((BufferUsageFlagBits)usage & BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT) {
        PhysicalDeviceDescriptorBufferPropertiesEXT descriptorProperties = {
            .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
        };

        PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2()
            .setNext(&descriptorProperties)
            .build(pdevice);

        mem_reqs.size = (DeviceSize)alignUp((ulong)data_size, descriptorProperties.descriptorBufferOffsetAlignment);
        mem_reqs.alignment = descriptorProperties.descriptorBufferOffsetAlignment;
    }

    sz size = (sz)alignUp((sz)mem_reqs.size, (sz)mem_reqs.alignment);
    sz offset;
    sz padding;
    MemoryPage*? placed = allocator.place(properties, mem_reqs.memoryTypeBits, size, (sz)mem_reqs.alignment, &offset, &padding);
    if (catch err = placed) {
        vk::destroyBuffer(device, buffer, null);
        return err~;
    }
    MemoryPage* page = placed;
    vk::bindBufferMemory(device, buffer, page.memory, (DeviceSize)offset)!!;

    vk::DeviceAddress address;

    if ((BufferUsageFlagBits)usage & BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT) {
        BufferDeviceAddressInfo address_info = {
            .sType = STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
            .buffer = buffer
        };
        address = vk::getBufferDeviceAddress(device, &address_info);
    }

    Memory response = {
        .buffer = buffer,
        .size = size,
        .used_size = 0,
        .page_offset = offset,
        .padding = padding,
        .page = page,
        .allocator = allocator,
        .address = address,
        .usage = usage,
    };

    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_HOST_VISIBLE_BIT) {
        response.type = GpuType.HOST_VISIBLE;
    } else {
        response.type = GpuType.DEVICE_ONLY;
    }

    // Host-visible: direct memcpy
    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_HOST_VISIBLE_BIT && data != null) {
        response.upload(data, data_size);
    }

    // Device-local with data: use staging buffer
    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_DEVICE_LOCAL_BIT &&
        !((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_HOST_VISIBLE_BIT) &&
        data != null) {

        DeviceQueue transfer_queue = queue != null ? *queue : allocator.queue;

        // Create staging buffer on host-visible memory
        Memory stage_buffer = new_buffer(
			allocator,
            usage: BUFFER_USAGE_TRANSFER_SRC_BIT,
            properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
            data: data,
            data_size: data_size
        )!;

        device.@single_time_command(queue: transfer_queue; CommandBuffer command_buffer) {
            vk::cmdCopyBuffer(command_buffer, stage_buffer.buffer, response.buffer, 1, (BufferCopy[]){
                {
                    .srcOffset = 0,
                    .dstOffset = 0,
                    .size = (DeviceSize)data_size
                }
            });
        }!;

        stage_buffer.free();
    }

    return response;
}

fn Memory? create_image_buffer(vk::Image image, vk::MemoryAllocator* allocator, vk::MemoryPropertyFlags properties)
{
    vk::Device device = allocator.device;
    vk::PhysicalDevice pdevice = allocator.pdevice;

    MemoryRequirements mem_reqs = image.getMemoryRequirements(device);
    sz size = (sz)alignUp((sz)mem_reqs.size, (sz)mem_reqs.alignment);

    sz offset;
    sz padding;
    MemoryPage* page = allocator.place(properties, mem_reqs.memoryTypeBits, size, (sz)mem_reqs.alignment, &offset, &padding)!;
    if (catch err = vk::bindImageMemory(device, image, page.memory, (DeviceSize)offset)) {
        page.give_back(offset - padding, size + padding);
        return err~;
    }

    Memory response = {
        .image = image,
        .size = size,
        .used_size = 0,
        .page_offset = offset,
        .padding = padding,
        .page = page,
        .allocator = allocator
    };

    return response;
}


fn void Memory.upload(&self, void* data, sz size, sz offset = 0) @dynamic
{
    mem::copy(self.page.mapped + self.page_offset + offset, data, size);
}

fn char* Memory.data(&self) @dynamic
{
    return self.page.mapped + self.page_offset;
}

fn ulong Memory.get_address(&self) @dynamic
{
    return self.address;
}

fn sz Memory.total_size(&self) @dynamic => self.size;
fn sz Memory.get_used_size(&self) @dynamic => self.used_size;
fn uint Memory.get_type(&self) @dynamic => (uint)self.type.ordinal;
fn void* Memory.get_buffer(&self) @dynamic => self.buffer;
fn void Memory.set_used_size(&self, sz size) @dynamic => self.used_size = (uint)size;

<*
 Stage `data` (size `data_size`) into a sub-range of `dst` starting at `dst_offset`.
 Used to fill a Region that lives on a DEVICE_LOCAL buffer without having to
 re-upload the entire backing buffer.
*>
fn void? stage_upload_at(MemoryAllocator* allocator, vk::Buffer dst, void* data, sz data_size, sz dst_offset, DeviceQueue* queue = null)
{
    vk::Device device = allocator.device;
    DeviceQueue transfer_queue = queue != null ? *queue : allocator.queue;

    Memory stage = new_buffer(
        allocator,
        usage: BUFFER_USAGE_TRANSFER_SRC_BIT,
        properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
        data: data,
        data_size: data_size,
    )!;

    device.@single_time_command(queue: transfer_queue; CommandBuffer cmd) {
        vk::cmdCopyBuffer(cmd, stage.buffer, dst, 1, (BufferCopy[]){
            { .srcOffset = 0, .dstOffset = (DeviceSize)dst_offset, .size = (DeviceSize)data_size }
        });
    }!;

    stage.free();
}

fn void? Memory.upload_from_stage(&self, void* data, sz data_size, DeviceQueue* queue = null)
{
    vk::Device device = self.allocator.device;
    DeviceQueue transfer_queue = queue != null ? *queue : self.allocator.queue;

    Memory stage_buffer = new_buffer(
		self.allocator,
        usage: BUFFER_USAGE_TRANSFER_SRC_BIT,
        properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
        data: data,
        data_size: data_size
    )!;

    device.@single_time_command(queue: transfer_queue; CommandBuffer command_buffer) {
        vk::cmdCopyBuffer(command_buffer, stage_buffer.buffer, self.buffer, 1, (BufferCopy[]){
            {
                .srcOffset = 0,
                .dstOffset = 0,
                .size = (DeviceSize)data_size
            }
        });
    }!;

    stage_buffer.free();
}

fn void Memory.push(&self, void* data, sz size) @dynamic
{
    mem::copy(self.page.mapped + self.page_offset + self.used_size, data, size);
    self.used_size += size;
}

// Mark this allocation for deferred deletion
// The actual cleanup happens when Allocator.sync() is called
fn void Memory.mark_deleted(&self) @dynamic
{
    if (self.deleted) return;  // Already marked
    self.deleted = true;
    if (self.allocator != null) {
        self.allocator.mark_deleted(self);
    }
}

// Check if this allocation is marked for deletion
fn bool Memory.is_deleted(&self) @dynamic => self.deleted;

// Destroys the handle and gives the block back. Both free paths end here.
fn void Memory.release(&self)
{
    if (self.buffer != null) {
        vk::destroyBuffer(self.allocator.device, self.buffer, null);
        self.buffer = (Buffer)null;
    }
    if (self.image != null) {
        vk::destroyImage(self.allocator.device, self.image, null);
        self.image = (Image)null;
    }
    if (self.page != null && self.size > 0) {
        self.page.give_back(self.page_offset - self.padding, self.size + self.padding);
    }
    self.page = null;
    self.size = 0;
    self.used_size = 0;
}

// Immediate free - use when the GPU is done with it, or for staging buffers.
fn void Memory.free(&self) @dynamic
{
    self.release();
    self.deleted = true;
}


fn MemoryRequirements Buffer.memoryRequirements(self, Device device) {
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(device, self, &mem_reqs);
    return mem_reqs;
}

fn MemoryRequirements BufferCreateInfo.descriptorMemoryRequirements(self, PhysicalDevice device) {
    PhysicalDeviceDescriptorBufferPropertiesEXT descriptorProperties = {
        .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
    };

    PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2()
      .setNext(&descriptorProperties)
      .build(device);

    return {
        .size = (sz)alignUp(self.size, descriptorProperties.descriptorBufferOffsetAlignment),
        .alignment = descriptorProperties.descriptorBufferOffsetAlignment
    };
}

fn vk::Format findDepthFormat(vk::Format[] formats = {FORMAT_D32_SFLOAT, FORMAT_D32_SFLOAT_S8_UINT, FORMAT_D24_UNORM_S8_UINT}, ImageTiling tiling = IMAGE_TILING_OPTIMAL, FormatFeatureFlags features, PhysicalDevice device) {
    foreach (format: formats) {
        FormatProperties props;
        getPhysicalDeviceFormatProperties(device, format, &props);

        if (tiling == IMAGE_TILING_LINEAR && (props.linearTilingFeatures & features) == features) {
            return format;
        } else if (tiling == IMAGE_TILING_OPTIMAL && (props.optimalTilingFeatures & features) == features) {
            return format;
        }
    }

    return formats[0];
}

fn DeviceMemory? MemoryAllocateInfo.build(&self, Device device) {
    DeviceMemory memory;
    allocateMemory(device, self, null, &memory)!;
    return memory;
}



faultdef NO_KEY_FOUND, COMPONENT_BUFFER_OVERFLOW;

struct Region {
    uint size;
    sz used_size;
    sz offset;
    uint buffer;
    BufferManager* bm;
}

fn ulong Region.get_address(&self) => self.bm.buffers[self.buffer].get_address() + (ulong)self.offset;
fn void* Region.get_ref(&self) => (void*)(self.bm.buffers[self.buffer].data() + self.offset);
fn char* Region.data(&self) => self.bm.buffers[self.buffer].data() + self.offset;
fn void Region.reset(&self) => self.used_size = 0;

<*
 @require self.size >= (self.used_size + size) : "Region total size is too small"
*>
macro void Region.@push(&self, #data, sz size = 0, sz offset = 0, bool auto_increase = true) {
    sz data_size = size;
    Allocator buffer = self.bm.buffers[self.buffer];
    sz data_offset = self.offset + offset + (self.used_size * (auto_increase ? 1 : 0));

    $if @kindof(#data) == POINTER: {
        if (size == 0) data_size = $Typeof(*#data)::size;
    }
    $else {
        if (size == 0) data_size = $Typeof(#data)::size;
    }
    $endif

    $if @kindof(#data) == POINTER: {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            self.bm.uploadFN(buffer, #data, data_size, data_offset);
        } else  {
            buffer.upload(#data, data_size, data_offset);
        }
    }
    $else {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            self.bm.uploadFN(buffer, &&#data, data_size, data_offset);
        } else  {
            buffer.upload(&&#data, data_size, data_offset);
        }
    }
    $endif

    self.used_size += data_size;
}

macro void @region_upload(Region region, #data, sz size = 0, sz offset = 0) {
    sz data_size = size;
    Allocator buffer = region.bm.buffers[region.buffer];
    sz data_offset = region.offset + offset;

    $if @kindof(#data) == POINTER: {
        if (size == 0) data_size = $Typeof(*#data)::size;
    }
    $else {
        if (size == 0) data_size = $Typeof(#data)::size;
    }
    $endif

    $if @kindof(#data) == POINTER: {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            region.bm.uploadFN(buffer, #data, data_size, data_offset);
        } else  {
            buffer.upload(#data, data_size, data_offset);
        }
    }
    $else {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            region.bm.uploadFN(buffer, &&#data, data_size, data_offset);
        } else  {
            buffer.upload(&&#data, data_size, data_offset);
        }
    }
    $endif
}

// Buffer manager

alias UploadFN = fn void (vk::Allocator buffer, void* data, sz data_size, sz offset);

struct BufferManager {
    List{Allocator} buffers;
    List{Allocator} pending_deletes;
    UploadFN uploadFN;
}

fn BufferManager create_buffer_manager(Allocator[] buffers, UploadFN uploadFN = null) {
    BufferManager bm = {
        .uploadFN = uploadFN,
    };
    foreach (buffer: buffers) bm.buffers.push(buffer);
    return bm;
}

fn Region? BufferManager.alloc(&self, uint buffer_index, uint size, void* data = null) {
    Allocator buffer = self.buffers[buffer_index];

    if (buffer.total_size() < buffer.get_used_size() + size) return COMPONENT_BUFFER_OVERFLOW~;

    Region region = {
        .size = size,
        .buffer = buffer_index,
        .offset = buffer.get_used_size(),
        .bm = self,
    };

    if (data != null) {
        if (buffer.get_type() == (uint)GpuType.DEVICE_ONLY.ordinal) {
            self.uploadFN(buffer, data, size, region.offset);
        } else {
            buffer.upload(data, size, region.offset);
        }
    }

    buffer.set_used_size(buffer.get_used_size() + size);
    return region;
}

fn void BufferManager.free(&self) {
    self.sync();
    foreach (buffer: self.buffers) {
        buffer.free();
    };
    self.buffers.free();
    self.pending_deletes.free();
}

fn void BufferManager.sync(&self) {
    foreach (buffer: self.pending_deletes) {
        buffer.free();
    }
    self.pending_deletes.clear();
}

fn void BufferManager.mark_deleted(&self, Allocator buffer) {
    if (buffer.is_deleted()) return;
    buffer.mark_deleted();
    self.pending_deletes.push(buffer);
}

struct LocalBuffer (vk::Allocator) {
    sz size;
    sz used_size;
    char* mapped;
    bool deleted;
}

fn void LocalBuffer.push(&self, void* data, sz size) @dynamic {
    self.ensure_size(self.used_size + size);
    mem::copy(self.mapped + self.used_size, data, size);
    self.used_size += size;
}

fn void LocalBuffer.ensure_size(&self, sz new_size) @dynamic {
    if (new_size > self.size) {
        sz grow_size = new_size > self.size * 2 ? new_size : self.size * 2;
        self.mapped = mem::realloc(self.mapped, grow_size);
        self.size = grow_size;
    }
}

fn void LocalBuffer.upload(&self, void* data, sz size, sz offset) @dynamic {
    self.ensure_size(offset + size);
    mem::copy(self.mapped + offset, data, size);
}

fn void LocalBuffer.free(&self) @dynamic {
    if (self.mapped != null) {
        mem::free(self.mapped);
        self.mapped = null;
    }
    self.size = 0;
    self.used_size = 0;
    self.deleted = true;
}

fn void LocalBuffer.mark_deleted(&self) @dynamic {
    self.deleted = true;
}

fn bool LocalBuffer.is_deleted(&self) @dynamic => self.deleted;

fn char* LocalBuffer.data(&self) @dynamic => self.mapped;
fn sz LocalBuffer.total_size(&self) @dynamic => (uint)-1;
fn sz LocalBuffer.get_used_size(&self) @dynamic => self.used_size;
fn ulong LocalBuffer.get_address(&self) @dynamic => 0;
fn uint LocalBuffer.get_type(&self) @dynamic => 2;
fn void* LocalBuffer.get_buffer(&self) @dynamic => null;
fn void LocalBuffer.set_used_size(&self, sz size) @dynamic {
    if (size > self.size) self.ensure_size(size);
    self.used_size = size;
}
