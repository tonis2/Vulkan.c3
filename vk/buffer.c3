module vk;
import std::io;
import std::collections::list;
import std::collections::map;

alias BlockList = List{Memory};
alias AllocationList = List{Allocation};

enum GpuType : uint
{
    HOST_VISIBLE,
    DEVICE_ONLY
}

faultdef BUFFER_TOO_SMALL, ALLOCATION_NOT_FOUND, ALLOCATION_HAS_NO_ROOM;

fn usz alignUp(usz value, usz factor)  => value + factor - 1 - (value + factor - 1) % factor;

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

fn Allocation? Allocation.build(&self) {
    DeviceMemory memory;
    MemoryAllocateFlagsInfo flags = {.sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .flags = self.flags};

    memory = memoryAllocateInfo()
                .setAllocationSize(self.size)
                .setNext(&flags)
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
    foreach (block_info: self.blocks) block_info.free();
    self.blocks.free();
    freeMemory(self.device, self.memory, null);
}

struct Memory 
{
	usz size;
    usz used_size;
    usz allocator_offset;
    GpuType type;
    vk::Buffer buffer;
    vk::Image image;
	vk::Allocation* allocator;
    vk::BufferUsageFlagBits usage;
    DeviceAddress address;
}

fn Memory? new_buffer(vk::BufferUsageFlagBits usage, vk::Allocation* allocator, void* data = null, usz data_size, vk::Allocation* stage_allocator = null, DeviceQueue* queue = null)
{
    vk::Device device = allocator.device;
    vk::PhysicalDevice pdevice = allocator.pdevice;
    
    vk::Buffer buffer = vk::bufferCreateInfo()
    .setUsage(usage)
    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
    .setSize(data_size)
    .build(device)!!;

    MemoryRequirements mem_reqs = buffer.memoryRequirements(device);
    uint memory_type = pdevice.getMemoryType(allocator.properties, mem_reqs.memoryTypeBits);
    
    usz size = alignUp(mem_reqs.size, mem_reqs.alignment);
    usz offset = alignUp(allocator.used_size, mem_reqs.alignment);

    if ((MemoryPropertyFlagBits)usage & vk::BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT) {
        MemoryRequirements desc_mem_reqs;
        PhysicalDeviceDescriptorBufferPropertiesEXT descriptorProperties = {
            .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
        };

        PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2()
        .setNext(&descriptorProperties)
        .build(pdevice);

        desc_mem_reqs = {
            .size = alignUp(data_size, descriptorProperties.descriptorBufferOffsetAlignment),
            .alignment = descriptorProperties.descriptorBufferOffsetAlignment
        };

        mem_reqs.size = desc_mem_reqs.size;
        mem_reqs.alignment = desc_mem_reqs.alignment;
    }

    if (memory_type != allocator.memory_type) {
        io::printfn("Allocation memory type is %d, but buffer requires %d", allocator.memory_type, memory_type);
    }

    if ((allocator.size - allocator.used_size) < size) {
        io::printfn("Allocation has no enough free memory");
        return ALLOCATION_HAS_NO_ROOM?;
    };

    vk::bindBufferMemory(allocator.device, buffer, allocator.memory, offset)!!;
    allocator.used_size += size;

    vk::DeviceAddress address;

    if ((MemoryPropertyFlagBits)usage & vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT) {
        BufferDeviceAddressInfo address_info = {
            .sType = vk::STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
            .buffer = buffer
        };
        address = vk::getBufferDeviceAddress(allocator.device, &address_info);
    }

    Memory response = {
        .buffer = buffer,
        .size = size,
        .used_size = 0,
        .allocator_offset = offset,
        .allocator = allocator,
        .address = address,
    };

    if ((MemoryPropertyFlagBits)allocator.properties & (vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT)) {
        response.type = GpuType.HOST_VISIBLE;
    } else {
        response.type = GpuType.DEVICE_ONLY;
    }
    
    // CPU & GPU
    if ((MemoryPropertyFlagBits)allocator.properties & (vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT) && data != null) {
        response.upload(data, data_size); 
    }

    // GPU only
    if ((MemoryPropertyFlagBits)allocator.properties & vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT && data != null) {
        if (stage_allocator == null) {
            io::printfn("Add stage allocator for uploading to GPU");
            return ALLOCATION_HAS_NO_ROOM?;
        }

        Memory stage_buffer = new_buffer(
            vk::BUFFER_USAGE_TRANSFER_SRC_BIT,
            stage_allocator,
            data,
            data_size: data_size
        )!;

        device.@single_time_command(queue: *queue; CommandBuffer command_buffer) {
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

    // Dont push stage buffers
    if (!((MemoryPropertyFlagBits)usage & vk::BUFFER_USAGE_TRANSFER_SRC_BIT)) {
        allocator.blocks.push(response);
    }
  
    return response;
}

fn Memory? create_image_buffer(vk::Image image, vk::Allocation* allocator)
{
    vk::Device device = allocator.device;
    vk::PhysicalDevice pdevice = allocator.pdevice;

    MemoryRequirements mem_reqs = image.getMemoryRequirements(device);
    uint memory_type = allocator.pdevice.getMemoryType(allocator.properties, mem_reqs.memoryTypeBits);

    usz size = alignUp(mem_reqs.size, mem_reqs.alignment);
    usz offset = alignUp(allocator.used_size, mem_reqs.alignment);

    if (allocator.size - allocator.used_size < size) {
       io::printfn("Allocation has no enough free memory");
       return ALLOCATION_HAS_NO_ROOM?;
    }

    vk::bindImageMemory(device, image, allocator.memory, offset)!;
    allocator.used_size += size;

    Memory response = {
        .image = image,
        .size = size,
        .used_size = 0,
        .allocator_offset = offset,
        .allocator = allocator
    };
    allocator.blocks.push(response);
    
    return response;
}


fn void Memory.upload(&self, void* data, ulong size, usz offset = 0) @dynamic
{
    mem::copy(self.allocator.mapped + self.allocator_offset + offset, data, size);
}

fn char* Memory.data(&self) @dynamic
{
    return self.allocator.mapped + self.allocator_offset;
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

fn void? Memory.upload_from_stage(&self, void* data, usz data_size, vk::Allocation* stage_allocator, DeviceQueue queue)
{
    vk::Device device = self.allocator.device;
    vk::PhysicalDevice pdevice = self.allocator.pdevice;

    Memory stage_buffer = new_buffer(
        vk::BUFFER_USAGE_TRANSFER_SRC_BIT,
        stage_allocator,
        data,
        data_size: data_size
    )!;

    device.@single_time_command(queue: queue; CommandBuffer command_buffer) {
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
    mem::copy(self.allocator.mapped + self.allocator_offset + self.used_size, data, size);
    self.used_size += size;
}

fn void Memory.free(&self) @dynamic
{
    self.allocator.used_size -= self.size;
    if (self.buffer != null) {
        vk::destroyBuffer(self.allocator.device, self.buffer, null);
        self.buffer = null;
        self.size = 0;
        self.used_size = 0;
    }

    if (self.image != null) {
        vk::destroyImage(self.allocator.device, self.image, null);
        self.image = null;
    }
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