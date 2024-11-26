module vk;
import std::io;
import std::collections::list;
import std::collections::map;

def BlockList = List(<MemoryBlock>);
def AllocationList = List(<Allocation>);

fault BufferError
{
    BUFFER_TOO_SMALL,
    ALLOCATION_NOT_FOUND,
    ALLOCATION_HAS_NO_ROOM
}

/*struct MemoryPool {
    ulong size;
    BufferList buffers;
    Device device;

    PhysicalDevice pdevice;
    AllocationList allocations;
}*/

/*
fn Allocation! MemoryPool.createBuffer(&self, BufferCreateInfo buffer_info, MemoryPropertyFlags properties) {
    Buffer buffer;
    createBuffer(device, &info, null, &buffer)!;
    MemoryRequirements mem_reqs = buffer.memoryRequirements(self.device);
    bool found_memory = false;

    foreach (allocation : self.allocations) {
        if ((allocation.properties & properties) == properties) {
            bindBufferMemory(self.device, buffer, allocation.memory, allocation.used_size)!;
            found_memory = true;
            break;
        }
    }
    if (!found_memory) return BufferError.ALLOCATION_NOT_FOUND;
}
*/


fn usz alignUp(usz value, usz factor)  => value + factor - 1 - (value + factor - 1) % factor;

enum BufferType {
    IMAGE,
    BUFFER,
    STAGING_BUFFER
}

struct Allocation {
    Device device;
    PhysicalDevice pdevice;
    DeviceMemory memory;
    ulong size;
    BlockList blocks;
    ulong used_size;
    uint buffer_count;
    void* mapped;
    MemoryPropertyFlags properties;
    MemoryAllocateFlags flags;
    uint memory_type;
}

fn Allocation! Allocation.build(&self) {
    DeviceMemory memory;

    memory = memoryAllocateInfo()
                .setAllocationSize(self.size)
                .setNext(&&MemoryAllocateFlagsInfo {.sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .flags = self.flags })
                .setMemoryTypeIndex(self.pdevice.getMemoryType2(self.properties))
                .build(self.device)!;

    self.memory_type = self.pdevice.getMemoryType2(self.properties);
    self.memory = memory;
    self.used_size = 0;
    self.buffer_count = 0;

    // Map data, when not meant for DEVICE LOCAL memory
    if ((MemoryPropertyFlagBits)self.properties & MEMORY_PROPERTY_DEVICE_LOCAL_BIT != self.properties) {
        vk::mapMemory(self.device, self.memory, 0, self.size, 0, &self.mapped)!;
    }

    return *self;
}

fn void Allocation.free(&self) {
    foreach (block_info: self.blocks) block_info.free(self.device);
    self.blocks.free();
    freeMemory(self.device, self.memory, null);
}


struct MemoryBlock {
    uint id;
    BufferType type;
    Buffer buffer;
    vk::Image image;
    DeviceMemory memory;
    ulong size;
    ulong offset;
    ulong used_size;
    void* mapped;
    bool is_used;
    DeviceAddress address;
    Allocation* allocator;
}


// macro MemoryBlock.@upload_from_stage(&self) {
// 	$for (var $i = 0; $i < $vacount; $i++)
// 		{
// 			$vatype[$i] x;
// 		}
// 		io::printfn("%s", $vatype[$i].nameof);
// 	$endfor;
// }

macro void! @upload_from_stage(usz size, DeviceQueue queue, Allocation allocator; @body(MemoryBlock stage_buffer, CommandBuffer command_buffer)) {
    Device device = allocator.device;
    PhysicalDevice pdevice = allocator.pdevice;

    Buffer staging_buffer_info = BufferCreateInfo {
      .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
      .pNext = null,
      .flags = 0,
      .size = size,
      .usage = BUFFER_USAGE_TRANSFER_SRC_BIT,
      .sharingMode = SHARING_MODE_EXCLUSIVE,
      .queueFamilyIndexCount = 0,
      .pQueueFamilyIndices = null,
    }.build(device)!;

    MemoryRequirements mem_reqs = staging_buffer_info.memoryRequirements(device);
    DeviceMemory memory = memoryAllocateInfo()
                .setAllocationSize(mem_reqs.size)
                .setMemoryTypeIndex(pdevice.getMemoryType(MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,  mem_reqs.memoryTypeBits))
                .build(device)!;

    bindBufferMemory(device, staging_buffer_info, memory, 0)!;
    void* mapped;
    vk::mapMemory(device, memory, 0, size, 0, &mapped)!;


    MemoryBlock stage_buffer = MemoryBlock {
        .buffer = staging_buffer_info,
        .memory = memory,
        .type = STAGING_BUFFER,
        .mapped = mapped
    };

    device.@single_time_command(queue: queue; CommandBuffer command_buffer) {
        @body(stage_buffer, command_buffer);
    }!;

    stage_buffer.free(device);
}


fn MemoryBlock! create_staging_buffer(usz size, Device device, PhysicalDevice pdevice)
{
    Buffer staging_buffer = BufferCreateInfo {
      .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
      .pNext = null,
      .flags = 0,
      .size = size,
      .usage = BUFFER_USAGE_TRANSFER_SRC_BIT,
      .sharingMode = SHARING_MODE_EXCLUSIVE,
      .queueFamilyIndexCount = 0,
      .pQueueFamilyIndices = null,
    }.build(device)!;

    MemoryRequirements mem_reqs = staging_buffer.memoryRequirements(device);
    DeviceMemory memory = memoryAllocateInfo()
                .setAllocationSize(mem_reqs.size)
                .setMemoryTypeIndex(pdevice.getMemoryType(MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,  mem_reqs.memoryTypeBits))
                .build(device)!;

    bindBufferMemory(device, staging_buffer, memory, 0)!;
    void* mapped;
    vk::mapMemory(device, memory, 0, size, 0, &mapped)!;

    return MemoryBlock {
        .buffer = staging_buffer,
        .memory = memory,
        .type = STAGING_BUFFER,
        .mapped = mapped
    };
}

fn void MemoryBlock.free(&self, Device device)
{
    if (self.type == BufferType.BUFFER) {
        destroyBuffer(device, self.buffer, null);
    }

    if (self.type == BufferType.IMAGE) {
        destroyImage(device, self.image, null);
    }

    if (self.type == BufferType.STAGING_BUFFER) {
        destroyBuffer(device, self.buffer, null);
        freeMemory(device, self.memory, null);
    }
}

fn void MemoryBlock.upload(&self, void* data, ulong size, usz offset = 0)
{
    mem::copy(self.mapped + self.offset + offset, data, size);
}

fn void MemoryBlock.push(&self, void* data, ulong size, usz offset = 0)
{
    mem::copy(self.mapped + self.offset + offset + self.used_size, data, size);
    self.used_size += size;
}

fn MemoryBlock! vk::BufferCreateInfo.bind(self, Allocation* allocator)
{
    vk::Buffer buffer = self.build(allocator.device)!;
    MemoryRequirements mem_reqs = buffer.memoryRequirements(allocator.device);
    uint memory_type = allocator.pdevice.getMemoryType(allocator.properties, mem_reqs.memoryTypeBits);

    if ((MemoryPropertyFlagBits)self.usage & BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT) {
        MemoryRequirements desc_mem_reqs = self.descriptorMemoryRequirements(allocator.pdevice);
        mem_reqs.size = desc_mem_reqs.size;
        mem_reqs.alignment = desc_mem_reqs.alignment;
    }

    if (memory_type != allocator.memory_type) {
        io::printfn("Allocation memory type is %d, but buffer requires %d", allocator.memory_type, memory_type);
    }

    if (allocator.size - allocator.used_size < mem_reqs.size) {
       io::printfn("Allocation has no enough free memory");
       return BufferError.ALLOCATION_HAS_NO_ROOM?;
    }

    usz offset = alignUp(allocator.used_size, mem_reqs.alignment);
    bindBufferMemory(allocator.device, buffer, allocator.memory, offset)!;
    usz size = alignUp(mem_reqs.size, mem_reqs.alignment);

    MemoryBlock block = {
        .is_used = true,
        .offset = offset,
        .id = allocator.buffer_count - 1,
        .buffer = buffer,
        .memory = allocator.memory,
        .size = size,
        .mapped = allocator.mapped,
        .type = BufferType.BUFFER,
        .allocator = allocator
    };

    allocator.used_size += size;
    allocator.buffer_count += 1;
    allocator.blocks.push(block);

    if ((MemoryPropertyFlagBits)self.usage & BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT) {
        BufferDeviceAddressInfo address_info = {
          .sType = STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
          .buffer = buffer
        };
        block.address = getBufferDeviceAddress(allocator.device, &address_info);
    }

    return block;
}

fn MemoryBlock! vk::Image.bind(self, Allocation* allocation)
{
    vk::MemoryRequirements mem_reqs = self.getMemoryRequirements(allocation.device);

    if (allocation.size - allocation.used_size < mem_reqs.size) {
       io::printfn("Allocation has no enough free memory");
       return BufferError.ALLOCATION_HAS_NO_ROOM?;
    }

    usz offset = alignUp(allocation.used_size, mem_reqs.alignment);
    bindImageMemory(allocation.device, self, allocation.memory, offset)!;

    MemoryBlock block = {
        .is_used = true,
        .offset = offset,
        .id = allocation.buffer_count - 1,
        .image = self,
        .size = mem_reqs.size,
        .memory = allocation.memory,
        .type = BufferType.IMAGE,
    };

    allocation.used_size += mem_reqs.size;
    allocation.buffer_count += 1;
    allocation.blocks.push(block);

    return block;
}

fn MemoryRequirements Buffer.memoryRequirements(self, Device device) {
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(device, self, &mem_reqs);
    return mem_reqs;
}

fn MemoryRequirements BufferCreateInfo.descriptorMemoryRequirements(self, PhysicalDevice device) {
    PhysicalDeviceDescriptorBufferPropertiesEXT descriptorProperties = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
    };

    PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2()
      .setNext(&descriptorProperties)
      .build(device);

    return MemoryRequirements  {
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

fn DeviceMemory! MemoryAllocateInfo.build(&self, Device device) {
    DeviceMemory memory;
    allocateMemory(device, self, null, &memory)!;
    return memory;
}