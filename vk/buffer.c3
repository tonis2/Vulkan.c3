module vk;
import std::io;
import std::collections::list;
import std::collections::map;

alias BlockList = List{Memory*};
alias PageList = List{MemoryPage*};
alias FreeBlockList = List{FreeBlock};

enum GpuType : inline uint
{
    HOST_VISIBLE,
    DEVICE_ONLY,
    CPU_ONLY
}

interface Allocator
{
    fn usz total_size();
    fn void set_used_size(usz size);
    fn char* data();
    fn void upload(void* data, usz size, usz offset);
    fn ulong get_address();
    fn usz get_used_size();
    fn uint get_type();
    fn void* get_buffer();
    fn void free();
    fn void mark_deleted();
    fn bool is_deleted();
}

faultdef BUFFER_TOO_SMALL, ALLOCATION_NOT_FOUND, ALLOCATION_HAS_NO_ROOM;

fn usz alignUp(usz value, usz factor)  => value + factor - 1 - (value + factor - 1) % factor;

// Represents a free region in a memory page
struct FreeBlock {
    usz offset;
    usz size;
}

struct MemoryPage {
    DeviceMemory memory;
    usz size;
    usz used_size;
    void* mapped;
    MemoryPropertyFlags properties;
    uint memory_type;
    FreeBlockList free_blocks;  // Tracks holes from deleted allocations
}

struct MemoryAllocator {
    Device device;
    PhysicalDevice pdevice;
    DeviceQueue* queue;
    usz default_page_size;
    MemoryAllocateFlags flags;
    PageList pages;
    BlockList pending_deletes;  // Allocations marked for deletion
}

fn MemoryAllocator? MemoryAllocator.init(&self) {
    if (self.default_page_size == 0) {
        self.default_page_size = 64_000_000;  // 64MB default
    }
    return *self;
}

// Try to find a free block that fits the required size
fn FreeBlock* MemoryPage.find_free_block(&self, usz required_size, usz alignment) @local {
    foreach (&block : self.free_blocks) {
        usz aligned_offset = alignUp(block.offset, alignment);
        usz padding = aligned_offset - block.offset;
        if (block.size >= required_size + padding) {
            return block;
        }
    }
    return null;
}

// Remove a free block from the list (after using it)
fn void MemoryPage.remove_free_block(&self, FreeBlock* block) @local {
    for (usz i = 0; i < self.free_blocks.len(); i++) {
        if (&self.free_blocks[i] == block) {
            self.free_blocks.remove_at(i);
            return;
        }
    }
}

// Add a free block, merging with adjacent blocks if possible
fn void MemoryPage.add_free_block(&self, usz offset, usz size) @local {
    // Try to merge with existing adjacent blocks
    foreach (&block : self.free_blocks) {
        // Check if new block is immediately after existing block
        if (block.offset + block.size == offset) {
            block.size += size;
            // Check if we can merge with the next block too
            self.merge_free_blocks();
            return;
        }
        // Check if new block is immediately before existing block
        if (offset + size == block.offset) {
            block.offset = offset;
            block.size += size;
            self.merge_free_blocks();
            return;
        }
    }
    // No adjacent block found, add new one
    self.free_blocks.push({ .offset = offset, .size = size });
}

// Merge adjacent free blocks
fn void MemoryPage.merge_free_blocks(&self) @local {
    if (self.free_blocks.len() < 2) return;

    // Sort by offset (simple bubble sort, lists are typically small)
    for (usz i = 0; i < self.free_blocks.len() - 1; i++) {
        for (usz j = 0; j < self.free_blocks.len() - i - 1; j++) {
            if (self.free_blocks[j].offset > self.free_blocks[j + 1].offset) {
                FreeBlock temp = self.free_blocks[j];
                self.free_blocks[j] = self.free_blocks[j + 1];
                self.free_blocks[j + 1] = temp;
            }
        }
    }

    // Merge adjacent blocks
    usz i = 0;
    while (i < self.free_blocks.len() - 1) {
        FreeBlock* current = &self.free_blocks[i];
        FreeBlock* next = &self.free_blocks[i + 1];
        if (current.offset + current.size == next.offset) {
            current.size += next.size;
            self.free_blocks.remove_at(i + 1);
        } else {
            i++;
        }
    }
}

fn MemoryPage* MemoryAllocator.find_or_create_page(&self, MemoryPropertyFlags properties, usz required_size, uint memory_type_bits) @private {
    uint memory_type = self.pdevice.getMemoryType(properties, memory_type_bits);

    // Search existing pages for matching properties + enough space
    foreach (page : self.pages) {
        if (page.memory_type == memory_type && (page.size - page.used_size) >= required_size) {
            return page;
        }
    }

    // Create new page
    usz page_size = required_size > self.default_page_size ? required_size : self.default_page_size;

    MemoryAllocateFlagsInfo flags_info = {.sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .flags = self.flags};

    DeviceMemory memory = memoryAllocateInfo()
	.setAllocationSize(page_size)
	.setNext(&flags_info)
	.setMemoryTypeIndex(memory_type)
	.build(self.device)!!;

	MemoryPage* new_page = mem::alloc(MemoryPage);

	*new_page = {                                                                                                                                                           
		.memory = memory,
		.size = page_size,
		.used_size = 0,
	};

    // Map memory if host-visible
    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_HOST_VISIBLE_BIT) {
        vk::mapMemory(self.device, memory, 0, page_size, 0, &new_page.mapped)!!;
    }

    self.pages.push(new_page);
    return new_page;
}

// Mark a Memory allocation for deletion (will be freed on sync)
fn void MemoryAllocator.mark_deleted(&self, Memory* mem) {
    if (mem.buffer == null && mem.image == null) return;  // Already freed
    self.pending_deletes.push(mem);
}

// Process all pending deletions - call this when GPU is idle
fn void MemoryAllocator.sync(&self) {
    foreach (mem : self.pending_deletes) {
        if (mem.buffer != null) {
            vk::destroyBuffer(self.device, mem.buffer, null);
            mem.buffer = null;
        }
        if (mem.image != null) {
            vk::destroyImage(self.device, mem.image, null);
            mem.image = null;
        }

        // Add the freed region to the page's free list
        // Note: do NOT decrement used_size — it's a high-water mark (see Memory.free)
        if (mem.page != null) {
            mem.page.add_free_block(mem.page_offset, mem.size);
        }

        mem.size = 0;
        mem.used_size = 0;
        mem.page = null;
        mem.allocator = null;
    }
    self.pending_deletes.clear();
}

// Get memory statistics
fn usz MemoryAllocator.total_allocated(&self) {
    usz total = 0;
    foreach (page : self.pages) {
        total += page.size;
    }
    return total;
}

fn usz MemoryAllocator.total_used(&self) {
    usz total = 0;
    foreach (page : self.pages) {
        total += page.used_size;
    }
    return total;
}

fn usz MemoryAllocator.total_fragmented(&self) {
    usz total = 0;
    foreach (page : self.pages) {
        foreach (&block : page.free_blocks) {
            total += block.size;
        }
    }
    return total;
}

fn void MemoryAllocator.free(&self) {
    // First sync any pending deletions
    self.sync();

    foreach (page : self.pages) {
        if (page.mapped != null) {
            vk::unmapMemory(self.device, page.memory);
        }
        page.free_blocks.free();
        freeMemory(self.device, page.memory, null);
		mem::free(page);
    }
    self.pages.free();
    self.pending_deletes.free();
}

struct Memory
{
    usz size;
    usz used_size;
    usz page_offset;
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
    usz data_size,
    DeviceQueue* queue = null
) {
    vk::Device device = allocator.device;
    vk::PhysicalDevice pdevice = allocator.pdevice;

    // For device-local buffers with data, we need transfer destination capability
    BufferUsageFlagBits actual_usage = usage;
    if ((MemoryPropertyFlagBits)properties & vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT && data != null) {
        actual_usage |= vk::BUFFER_USAGE_TRANSFER_DST_BIT;
    }

    vk::Buffer buffer = vk::bufferCreateInfo()
        .setUsage(actual_usage)
        .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
        .setSize(data_size)
        .build(device)!!;

    MemoryRequirements mem_reqs = buffer.memoryRequirements(device);

    if ((MemoryPropertyFlagBits)usage & vk::BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT) {
        PhysicalDeviceDescriptorBufferPropertiesEXT descriptorProperties = {
            .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
        };

        PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2()
            .setNext(&descriptorProperties)
            .build(pdevice);

        mem_reqs.size = alignUp(data_size, descriptorProperties.descriptorBufferOffsetAlignment);
        mem_reqs.alignment = descriptorProperties.descriptorBufferOffsetAlignment;
    }

    usz size = alignUp(mem_reqs.size, mem_reqs.alignment);

    // Find or create a page with the requested properties
    uint memory_type = pdevice.getMemoryType(properties, mem_reqs.memoryTypeBits);
    MemoryPage* page = null;
    usz offset;
    bool used_free_block = false;

    // First, try to find a free block in an existing page
    foreach (p : allocator.pages) {
        if (p.memory_type == memory_type) {
            FreeBlock* free_block = p.find_free_block(size, mem_reqs.alignment);
            if (free_block != null) {
                page = p;
                offset = alignUp(free_block.offset, mem_reqs.alignment);
                usz padding = offset - free_block.offset;
                usz total_used = size + padding;

                // Update or remove the free block
                if (free_block.size > total_used) {
                    // Shrink the free block
                    free_block.offset = offset + size;
                    free_block.size -= total_used;
                } else {
                    // Remove the free block entirely
                    p.remove_free_block(free_block);
                }
                used_free_block = true;
                break;
            }
        }
    }

    // If no free block found, allocate from page end
    if (!used_free_block) {
        page = allocator.find_or_create_page(properties, size, mem_reqs.memoryTypeBits);
        offset = alignUp(page.used_size, mem_reqs.alignment);
    }

    vk::bindBufferMemory(device, buffer, page.memory, offset)!!;
    if (!used_free_block) {
        page.used_size = offset + size;
    } else {
        // When reusing free block, used_size doesn't change (it tracks high water mark)
        // but we should update it if we're filling a gap at the end
        if (offset + size > page.used_size) {
            page.used_size = offset + size;
        }
    }

    vk::DeviceAddress address;

    if ((MemoryPropertyFlagBits)usage & vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT) {
        BufferDeviceAddressInfo address_info = {
            .sType = vk::STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
            .buffer = buffer
        };
        address = vk::getBufferDeviceAddress(device, &address_info);
    }

    Memory response = {
        .buffer = buffer,
        .size = size,
        .used_size = 0,
        .page_offset = offset,
        .page = page,
        .allocator = allocator,
        .address = address,
        .usage = usage,
    };

    if ((MemoryPropertyFlagBits)properties & vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT) {
        response.type = GpuType.HOST_VISIBLE;
    } else {
        response.type = GpuType.DEVICE_ONLY;
    }

    // Host-visible: direct memcpy
    if ((MemoryPropertyFlagBits)properties & vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT && data != null) {
        response.upload(data, data_size);
    }

    // Device-local with data: use staging buffer
    if ((MemoryPropertyFlagBits)properties & vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT &&
        !((MemoryPropertyFlagBits)properties & vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT) &&
        data != null) {

        DeviceQueue* transfer_queue = queue != null ? queue : allocator.queue;
        if (transfer_queue == null) {
            io::printfn("No queue available for staging transfer");
            return ALLOCATION_HAS_NO_ROOM~;
        }

        // Create staging buffer on host-visible memory
        Memory stage_buffer = new_buffer(
			allocator,
            usage: vk::BUFFER_USAGE_TRANSFER_SRC_BIT,
            properties: vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_COHERENT_BIT,
            data: data,
            data_size: data_size
        )!;

        device.@single_time_command(queue: *transfer_queue; CommandBuffer command_buffer) {
            vk::cmdCopyBuffer(command_buffer, stage_buffer.buffer, response.buffer, 1, (BufferCopy[]){
                {
                    .srcOffset = 0,
                    .dstOffset = 0,
                    .size = data_size
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
    usz size = alignUp(mem_reqs.size, mem_reqs.alignment);

    // Try to find a free block first
    uint memory_type = pdevice.getMemoryType(properties, mem_reqs.memoryTypeBits);
    MemoryPage* page = null;
    usz offset;
    bool used_free_block = false;

    foreach (p : allocator.pages) {
        if (p.memory_type == memory_type) {
            FreeBlock* free_block = p.find_free_block(size, mem_reqs.alignment);
            if (free_block != null) {
                page = p;
                offset = alignUp(free_block.offset, mem_reqs.alignment);
                usz padding = offset - free_block.offset;
                usz total_used = size + padding;

                if (free_block.size > total_used) {
                    free_block.offset = offset + size;
                    free_block.size -= total_used;
                } else {
                    p.remove_free_block(free_block);
                }
                used_free_block = true;
                break;
            }
        }
    }

    if (!used_free_block) {
        page = allocator.find_or_create_page(properties, size, mem_reqs.memoryTypeBits);
        offset = alignUp(page.used_size, mem_reqs.alignment);
    }

    vk::bindImageMemory(device, image, page.memory, offset)!;
    if (!used_free_block) {
        page.used_size = offset + size;
    } else if (offset + size > page.used_size) {
        page.used_size = offset + size;
    }

    Memory response = {
        .image = image,
        .size = size,
        .used_size = 0,
        .page_offset = offset,
        .page = page,
        .allocator = allocator
    };

    return response;
}


fn void Memory.upload(&self, void* data, ulong size, usz offset = 0) @dynamic
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

fn usz Memory.total_size(&self) @dynamic => self.size;
fn usz Memory.get_used_size(&self) @dynamic => self.used_size;
fn uint Memory.get_type(&self) @dynamic => self.type.ordinal;
fn void* Memory.get_buffer(&self) @dynamic => self.buffer;
fn void Memory.set_used_size(&self, usz size) @dynamic => self.used_size = (uint)size;

fn void? Memory.upload_from_stage(&self, void* data, usz data_size, DeviceQueue* queue = null)
{
    vk::Device device = self.allocator.device;
    DeviceQueue* transfer_queue = queue != null ? queue : self.allocator.queue;

    if (transfer_queue == null) {
        io::printfn("No queue available for staging transfer");
        return ALLOCATION_HAS_NO_ROOM~;
    }

    Memory stage_buffer = new_buffer(
		self.allocator,
        usage: vk::BUFFER_USAGE_TRANSFER_SRC_BIT,
        properties: vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_COHERENT_BIT,
        data: data,
        data_size: data_size
    )!;

    device.@single_time_command(queue: *transfer_queue; CommandBuffer command_buffer) {
        vk::cmdCopyBuffer(command_buffer, stage_buffer.buffer, self.buffer, 1, (BufferCopy[]){
            {
                .srcOffset = 0,
                .dstOffset = 0,
                .size = data_size
            }
        });
    }!;

    stage_buffer.free();
}

fn void Memory.push(&self, void* data, ulong size) @dynamic
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

// Immediate free - use when GPU is idle or for staging buffers
fn void Memory.free(&self) @dynamic
{
    if (self.buffer != null) {
        vk::destroyBuffer(self.allocator.device, self.buffer, null);
        self.buffer = null;
    }

    if (self.image != null) {
        vk::destroyImage(self.allocator.device, self.image, null);
        self.image = null;
    }

    // Add freed region to page's free list for reuse
    // Note: do NOT decrement used_size — it's a high-water mark for end-of-page allocation.
    // Decrementing it causes underflow/overlap when allocations are freed out of order.
    if (self.page != null && self.size > 0) {
        self.page.add_free_block(self.page_offset, self.size);
    }

    self.size = 0;
    self.used_size = 0;
    self.deleted = true;
}


fn MemoryRequirements Buffer.memoryRequirements(self, Device device) {
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(device, self, &mem_reqs);
    return mem_reqs;
}

fn MemoryRequirements BufferCreateInfo.descriptorMemoryRequirements(self, PhysicalDevice device) @private {
    PhysicalDeviceDescriptorBufferPropertiesEXT descriptorProperties = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
    };

    PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2()
      .setNext(&descriptorProperties)
      .build(device);

    return {
        .size = alignUp(self.size, descriptorProperties.descriptorBufferOffsetAlignment),
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
    usz used_size;
    usz offset;
    uint buffer;
    BufferManager* bm;
}

fn ulong Region.get_address(&self) => self.bm.buffers[self.buffer].get_address() + self.offset;
fn void* Region.get_ref(&self) => (void*)(self.bm.buffers[self.buffer].data() + self.offset);
fn char* Region.data(&self) => self.bm.buffers[self.buffer].data() + self.offset;
fn void Region.reset(&self) => self.used_size = 0;

<*
 @require self.size > (self.used_size + size) : "Region total size is too small"
*>
macro void Region.@push(&self, #data, usz size = 0, usz offset = 0, bool auto_increase = true) {
    usz data_size = size;
    Allocator buffer = self.bm.buffers[self.buffer];
    usz data_offset = self.offset + offset + (self.used_size * (auto_increase ? 1 : 0));

    $if $kindof(#data) == POINTER: {
        if (size == 0) data_size = $typeof(*#data).sizeof;
    }
    $else {
        if (size == 0) data_size = $typeof(#data).sizeof;
    }
    $endif

    $if $kindof(#data) == POINTER: {
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

macro void @region_upload(Region region, #data, usz size = 0, usz offset = 0) {
    usz data_size = size;
    Allocator buffer = region.bm.buffers[region.buffer];
    usz data_offset = region.offset + offset;

    $if $kindof(#data) == POINTER: {
        if (size == 0) data_size = $typeof(*#data).sizeof;
    }
    $else {
        if (size == 0) data_size = $typeof(#data).sizeof;
    }
    $endif

    $if $kindof(#data) == POINTER: {
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

alias UploadFN = fn void (vk::Allocator buffer, void* data, usz data_size, usz offset);

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

    if (!(buffer.total_size() > buffer.get_used_size() + size)) return COMPONENT_BUFFER_OVERFLOW~;

    Region region = {
        .size = size,
        .buffer = buffer_index,
        .offset = buffer.get_used_size(),
        .bm = self,
    };

    if (data != null) {
        if (buffer.get_type() == GpuType.DEVICE_ONLY) {
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
    usz size;
    usz used_size;
    char* mapped;
    bool deleted;
}

fn void LocalBuffer.push(&self, void* data, usz size) @dynamic {
    self.ensure_size(self.used_size + size);
    mem::copy(self.mapped + self.used_size, data, size);
    self.used_size += size;
}

fn void LocalBuffer.ensure_size(&self, usz new_size) @dynamic {
    if (new_size > self.size) {
        usz grow_size = new_size > self.size * 2 ? new_size : self.size * 2;
        self.mapped = mem::realloc(self.mapped, grow_size);
        self.size = grow_size;
    }
}

fn void LocalBuffer.upload(&self, void* data, usz size, usz offset) @dynamic {
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
fn usz LocalBuffer.total_size(&self) @dynamic => uint.max;
fn usz LocalBuffer.get_used_size(&self) @dynamic => self.used_size;
fn ulong LocalBuffer.get_address(&self) @dynamic => 0;
fn uint LocalBuffer.get_type(&self) @dynamic => 2;
fn void* LocalBuffer.get_buffer(&self) @dynamic => null;
fn void LocalBuffer.set_used_size(&self, usz size) @dynamic {
    if (size > self.size) self.ensure_size(size);
    self.used_size = size;
}