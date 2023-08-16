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

fn void Buffer.copy_to(&self, Buffer dst_buffer, VkContext context) {
    VkCommandBufferAllocateInfo alloc_info = {
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .pNext = null,
        .level = vk::VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandPool = context.command_pool,
        .commandBufferCount = 1,
    };
    VkCommandBuffer command_buffer;
    vk::allocateCommandBuffers(context.device, &alloc_info, &command_buffer);
    VkCommandBufferBeginInfo beginInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
        .flags = vk::VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    };
    vk::beginCommandBuffer(command_buffer, &beginInfo);
    VkBufferCopy copyRegion = {
        .srcOffset = 0,
        .dstOffset = 0,
        .size = self.size
    };
    vk::cmdCopyBuffer(command_buffer, self.buffer, dst_buffer.buffer, 1, &copyRegion);
    vk::endCommandBuffer(command_buffer);
    VkSubmitInfo submitInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_SUBMIT_INFO,
        .commandBufferCount = 1,
        .pCommandBuffers = &command_buffer
    };
    vk::queueSubmit(context.graphics_queue, 1, &submitInfo, null);
    vk::queueWaitIdle(context.graphics_queue);
    vk::freeCommandBuffers(context.device, context.command_pool, 1, &command_buffer);
}

fn void! Buffer.init(&self, void* buffer_data, VkContext context) {
    VkBufferCreateInfo staging_info = {
       .sType = vk::VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = vk::VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
       .sharingMode = vk::VK_SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null,
    };

    io::printfn("buffer size %d ", self.size);

    Buffer staging_buffer = createBuffer(staging_info, vk::VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, context)!;
    defer staging_buffer.free(context.device);


    void* data;
    if (vk::mapMemory(context.device, staging_buffer.memory, 0, staging_info.size, 0, &data) != vk::VK_SUCCESS) {
        io::printfn("Failed mapping memory");
        return BufferErrors.FAILED_CREATING_BUFFER?;
    }

    mem::copy(data, buffer_data, self.size);
    vk::unmapMemory(context.device, staging_buffer.memory);

    VkBufferCreateInfo buffer_info = {
       .sType = vk::VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = vk::VK_BUFFER_USAGE_TRANSFER_DST_BIT | self.usage,
       .sharingMode = vk::VK_SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null,
    };

    Buffer buffer = createBuffer(buffer_info, vk::VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT, context)!;
    staging_buffer.copy_to(buffer, context);
    self.buffer = buffer.buffer;
    self.memory = buffer.memory;
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
        .size = info.size,
        .usage = info.usage
    };
}
