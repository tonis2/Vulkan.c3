module buffer;

import std::io;
import vk;
import context;

fault BufferErrors
{
    FAILED_CREATING_BUFFER,
    FAILED_CREATING_MEMORY,
}

struct Buffer {
    VkBuffer buffer;
    VkDeviceMemory memory;
    ulong size;
    VkBufferUsageFlags usage;
}

fn void Buffer.free(&self, VkDevice device)
{
    vk::destroyBuffer(device, self.buffer, null);
    vk::freeMemory(device, self.memory, null);
}

fn void! Buffer.init(&self, void* data, VkContext context) {
    VkBufferCreateInfo buffer_info = {
       .sType = vk::VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = vk::VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
       .sharingMode = vk::VK_SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null,
    };

    Buffer staging_buffer = createBuffer(buffer_info, vk::VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, context)!;
    self.buffer = staging_buffer.buffer;
    self.memory = staging_buffer.memory;
/*    defer {
       vk::destroyBuffer(context.device, staging_buffer.buffer, null);
       vk::freeMemory(context.device, staging_buffer.memory, null);
    }*/

    if (vk::mapMemory(context.device, staging_buffer.memory, 0, self.size, 0, data) != vk::VK_SUCCESS) {
        io::printfn("Failed mapping memory");
        return BufferErrors.FAILED_CREATING_BUFFER?;
    }

    vk::unmapMemory(context.device, staging_buffer.memory);
}


fn Buffer! createBuffer(VkBufferCreateInfo info, VkMemoryPropertyFlags properties, VkContext context) {
    VkBuffer buffer;
    VkDeviceMemory memory;

    if (vk::createBuffer(context.device, &info, null, &buffer) != vk::VK_SUCCESS) {
        io::printfn("Failed creating buffer");
        return BufferErrors.FAILED_CREATING_BUFFER?;
    }

    VkMemoryRequirements mem_reqs;
    vk::getBufferMemoryRequirements(context.device, buffer, &mem_reqs);

    uint memory_type = {|
        VkPhysicalDeviceMemoryProperties mem_props;
        vk::getPhysicalDeviceMemoryProperties(context.physical_device, &mem_props);
        for (int i = 0; i < mem_props.memoryTypeCount; ++i) {
            if ((mem_reqs.memoryTypeBits & 1 << i) != 0 && (mem_props.memoryTypes[i].propertyFlags & properties) == properties)
            {
                return i;
            }
        }
        return 0;
    |};

    VkMemoryAllocateInfo alloc_info = {
        .sType = vk::VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
        .pNext = null,
        .allocationSize = mem_reqs.size,
        .memoryTypeIndex = memory_type,
    };

    if (vk::allocateMemory(context.device, &alloc_info, null, &memory) != vk::VK_SUCCESS) {
        io::printfn("Failed allocating buffer memory");
        return BufferErrors.FAILED_CREATING_BUFFER?;
    }

    if (vk::bindBufferMemory(context.device, buffer, memory, 0) != vk::VK_SUCCESS) {
        io::printfn("Failed binding memory");
        return BufferErrors.FAILED_CREATING_BUFFER?;
    }

    return Buffer {
        .buffer = buffer,
        .memory = memory,
        .size = info.size
    };
}
