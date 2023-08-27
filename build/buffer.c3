module vk;
import std::io;

struct Buffer {
    VkBuffer buffer;
    VkDeviceMemory memory;
    ulong size;
    void* mapped;
    VkBufferUsageFlags usage;
}

fn void Buffer.free(&self, VkDevice device)
{
    destroyBuffer(device, self.buffer, null);
    freeMemory(device, self.memory, null);
}

fn void! Buffer.copy_to(&self, Buffer dst_buffer, Device context) {
    VkCommandPool command_pool;
    VkCommandPoolCreateInfo pool_info = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .pNext = null,
        .queueFamilyIndex = context.queue_family.graphics,
    };
    createCommandPool(context.device, &pool_info, null, &command_pool)!;
    VkCommandBufferAllocateInfo alloc_info = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .pNext = null,
        .level = VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandPool = command_pool,
        .commandBufferCount = 1,
    };
    VkCommandBuffer command_buffer;
    allocateCommandBuffers(context.device, &alloc_info, &command_buffer)!;
    VkCommandBufferBeginInfo beginInfo = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
        .flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    };

    beginCommandBuffer(command_buffer, &beginInfo)!;

    VkBufferCopy copyRegion = {
        .srcOffset = 0,
        .dstOffset = 0,
        .size = self.size
    };
    vk::cmdCopyBuffer(command_buffer, self.buffer, dst_buffer.buffer, 1, &copyRegion);

    endCommandBuffer(command_buffer)!;

    VkSubmitInfo submitInfo = {
        .sType = VK_STRUCTURE_TYPE_SUBMIT_INFO,
        .commandBufferCount = 1,
        .pCommandBuffers = &command_buffer
    };
    queueSubmit(context.graphics_queue, 1, &submitInfo, null)!;
    queueWaitIdle(context.graphics_queue)!;
    freeCommandBuffers(context.device, command_pool, 1, &command_buffer);
    destroyCommandPool(context.device, command_pool, null);
/*    context.single_time_buffer(fn (buffer) {
       VkBufferCopy copyRegion = {
            .srcOffset = 0,
            .dstOffset = 0,
            .size = self.size
        };
        vk::cmdCopyBuffer(command_buffer, self.buffer, dst_buffer.buffer, 1, &copyRegion);
    });*/
}

fn void! Buffer.device_only(&self, void* buffer_data, Device context) {
    VkBufferCreateInfo staging_info = {
       .sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
       .sharingMode = VK_SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null,
    };

    Buffer staging_buffer = initBuffer(staging_info, VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, context)!;
    defer staging_buffer.free(context.device);

    vk::mapMemory(context.device, staging_buffer.memory, 0, staging_info.size, 0, &self.mapped)!;
    mem::copy(self.mapped, buffer_data, self.size);
    vk::unmapMemory(context.device, staging_buffer.memory);

    VkBufferCreateInfo buffer_info = {
       .sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = VK_BUFFER_USAGE_TRANSFER_DST_BIT | self.usage,
       .sharingMode = VK_SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null,
    };

    Buffer buffer = initBuffer(buffer_info, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT, context)!;
    staging_buffer.copy_to(buffer, context)!;
    self.buffer = buffer.buffer;
    self.memory = buffer.memory;
}

fn void! Buffer.writable(&self, void* buffer_data, Device context) {
    VkBufferCreateInfo buffer_info = {
       .sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = self.usage,
       .sharingMode = VK_SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null,
    };

    Buffer buffer = initBuffer(buffer_info, VK_MEMORY_PROPERTY_HOST_COHERENT_BIT | VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, context)!;
    vk::mapMemory(context.device, buffer.memory, 0, buffer_info.size, 0, &self.mapped)!;

    mem::copy(self.mapped, buffer_data, self.size);

    self.buffer = buffer.buffer;
    self.memory = buffer.memory;
}


fn Buffer! initBuffer(VkBufferCreateInfo info, VkMemoryPropertyFlags properties, Device context) {
    VkBuffer buffer;
    VkDeviceMemory memory;

    createBuffer(context.device, &info, null, &buffer)!;
    VkMemoryRequirements mem_reqs;
    getBufferMemoryRequirements(context.device, buffer, &mem_reqs);

    uint memory_type = {|
        VkPhysicalDeviceMemoryProperties mem_props;
        getPhysicalDeviceMemoryProperties(context.physical_device, &mem_props);
        for (int i = 0; i < mem_props.memoryTypeCount; ++i) {
            if ((mem_reqs.memoryTypeBits & 1 << i) != 0 && (mem_props.memoryTypes[i].propertyFlags & properties) == properties)
            {
                return i;
            }
        }
        return 0;
    |};

    VkMemoryAllocateInfo alloc_info = {
        .sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
        .pNext = null,
        .allocationSize = mem_reqs.size,
        .memoryTypeIndex = memory_type,
    };

    allocateMemory(context.device, &alloc_info, null, &memory)!;
    bindBufferMemory(context.device, buffer, memory, 0)!;

    return Buffer {
        .buffer = buffer,
        .memory = memory,
        .size = info.size,
        .usage = info.usage
    };
}
