module vk;
import std::io;
import std::collections::list;
import std::collections::map;

alias BlockList = List{Memory};
alias PageList = List{MemoryPage};

enum GpuType : uint
{
    HOST_VISIBLE,
    DEVICE_ONLY
}

faultdef BUFFER_TOO_SMALL, ALLOCATION_NOT_FOUND, ALLOCATION_HAS_NO_ROOM;

fn usz alignUp(usz value, usz factor)  => value + factor - 1 - (value + factor - 1) % factor;

struct MemoryPage {
    DeviceMemory memory;
    usz size;
    usz used_size;
    void* mapped;
    MemoryPropertyFlags properties;
    uint memory_type;
}

struct Allocator {
    Device device;
    PhysicalDevice pdevice;
    DeviceQueue* queue;
    usz default_page_size;
    MemoryAllocateFlags flags;
    PageList pages;
}

fn Allocator? Allocator.init(&self) {
    if (self.default_page_size == 0) {
        self.default_page_size = 64_000_000;  // 64MB default
    }
    return *self;
}

fn MemoryPage* Allocator.find_or_create_page(&self, MemoryPropertyFlags properties, usz required_size, uint memory_type_bits) {
    uint memory_type = self.pdevice.getMemoryType(properties, memory_type_bits);

    // Search existing pages for matching properties + enough space
    foreach (&page : self.pages) {
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

    MemoryPage new_page = {
        .memory = memory,
        .size = page_size,
        .used_size = 0,
        .mapped = null,
        .properties = properties,
        .memory_type = memory_type
    };

    // Map memory if host-visible
    if ((MemoryPropertyFlagBits)properties & MEMORY_PROPERTY_HOST_VISIBLE_BIT) {
        vk::mapMemory(self.device, memory, 0, page_size, 0, &new_page.mapped)!!;
    }

    self.pages.push(new_page);
    return &self.pages[self.pages.len() - 1];
}

fn void Allocator.free(&self) {
    foreach (&page : self.pages) {
        if (page.mapped != null) {
            vk::unmapMemory(self.device, page.memory);
        }
        freeMemory(self.device, page.memory, null);
    }
    self.pages.free();
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
    vk::Allocator* allocator;
    vk::BufferUsageFlagBits usage;
    DeviceAddress address;
}

fn Memory? new_buffer(
	vk::Allocator* allocator,
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
    MemoryPage* page = allocator.find_or_create_page(properties, size, mem_reqs.memoryTypeBits);

    usz offset = alignUp(page.used_size, mem_reqs.alignment);

    vk::bindBufferMemory(device, buffer, page.memory, offset)!!;
    page.used_size = offset + size;

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

fn Memory? create_image_buffer(vk::Image image, vk::Allocator* allocator, vk::MemoryPropertyFlags properties)
{
    vk::Device device = allocator.device;

    MemoryRequirements mem_reqs = image.getMemoryRequirements(device);
    usz size = alignUp(mem_reqs.size, mem_reqs.alignment);

    MemoryPage* page = allocator.find_or_create_page(properties, size, mem_reqs.memoryTypeBits);
    usz offset = alignUp(page.used_size, mem_reqs.alignment);

    vk::bindImageMemory(device, image, page.memory, offset)!;
    page.used_size = offset + size;

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

fn void Memory.free(&self) @dynamic
{
    self.page.used_size -= self.size;
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