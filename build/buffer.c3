module vk;
import std::io;

enum BufferVersion : int
{
  DEVICE_ONLY,
  GLOBAL,
}

struct BufferInfo {
    void* pre_buffer;
    Buffer buffer;
    DeviceMemory memory;
    ulong size;
    void* mapped;
    BufferUsageFlags usage;
    BufferVersion version;
    bool is_ready;
}

fn void BufferInfo.free(&self, Device device)
{
    destroyBuffer(device, self.buffer, null);
    freeMemory(device, self.memory, null);
}

fn void! BufferInfo.copy_to(&self, BufferInfo dst_buffer, DeviceInfo context) {
    CommandPool command_pool;
    CommandPoolCreateInfo pool_info = {
        .sType = STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .pNext = null,
        .queueFamilyIndex = context.queue_family.graphics,
    };
    createCommandPool(context.device, &pool_info, null, &command_pool)!;
    CommandBufferAllocateInfo alloc_info = {
        .sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .pNext = null,
        .level = COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandPool = command_pool,
        .commandBufferCount = 1,
    };
    CommandBuffer command_buffer;
    allocateCommandBuffers(context.device, &alloc_info, &command_buffer)!;
    CommandBufferBeginInfo beginInfo = {
        .sType = STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
        .flags = COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    };
    beginCommandBuffer(command_buffer, &beginInfo)!;

    BufferCopy copyRegion = {
        .srcOffset = 0,
        .dstOffset = 0,
        .size = self.size
    };
    vk::cmdCopyBuffer(command_buffer, self.buffer, dst_buffer.buffer, 1, &copyRegion);
    endCommandBuffer(command_buffer)!;
    SubmitInfo submitInfo = {
        .sType = STRUCTURE_TYPE_SUBMIT_INFO,
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

fn BufferInfo BufferInfo.upload_data(&self, void* buffer_data, usz size) {
   if (self.size == 0) {
       self.pre_buffer = mem::malloc(void*, size);
   } else {
       mem::realloc(self.pre_buffer, self.size + size);
   }
   mem::copy(self.pre_buffer + self.size, buffer_data, size);
   self.size += size;
   return *self;
}

fn BufferInfo! BufferInfo.build(&self, DeviceInfo context) {
   if (self.version == BufferVersion.DEVICE_ONLY) {
     BufferCreateInfo staging_info = {
          .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
          .pNext = null,
          .flags = 0,
          .size = self.size,
          .usage = BUFFER_USAGE_TRANSFER_SRC_BIT,
          .sharingMode = SHARING_MODE_EXCLUSIVE,
          .queueFamilyIndexCount = 0,
          .pQueueFamilyIndices = null,
       };

       BufferInfo staging_buffer = initBuffer(staging_info, MEMORY_PROPERTY_HOST_COHERENT_BIT, context)!;
       defer staging_buffer.free(context.device);

       vk::mapMemory(context.device, staging_buffer.memory, 0, staging_info.size, 0, &self.mapped)!;
       mem::copy(self.mapped, self.pre_buffer, self.size);
       vk::unmapMemory(context.device, staging_buffer.memory);

       BufferCreateInfo buffer_info = {
          .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
          .pNext = null,
          .flags = 0,
          .size = self.size,
          .usage = BUFFER_USAGE_TRANSFER_DST_BIT | self.usage,
          .sharingMode = SHARING_MODE_EXCLUSIVE,
          .queueFamilyIndexCount = 0,
          .pQueueFamilyIndices = null,
       };

       BufferInfo buffer = initBuffer(buffer_info, MEMORY_PROPERTY_DEVICE_LOCAL_BIT, context)!;
       staging_buffer.copy_to(buffer, context)!;
       self.buffer = buffer.buffer;
       self.memory = buffer.memory;
   }

   if (self.version == BufferVersion.GLOBAL) {
        BufferCreateInfo buffer_info = {
           .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
           .pNext = null,
           .flags = 0,
           .size = self.size,
           .usage = self.usage,
           .sharingMode = SHARING_MODE_EXCLUSIVE,
           .queueFamilyIndexCount = 0,
           .pQueueFamilyIndices = null,
        };

        BufferInfo buffer = initBuffer(buffer_info, MEMORY_PROPERTY_HOST_COHERENT_BIT | MEMORY_PROPERTY_HOST_VISIBLE_BIT, context)!;
        vk::mapMemory(context.device, buffer.memory, 0, buffer_info.size, 0, &self.mapped)!;
        mem::copy(self.mapped, self.pre_buffer, self.size);

        self.buffer = buffer.buffer;
        self.memory = buffer.memory;
   }

   mem::free(self.pre_buffer);
   return *self;
}

fn BufferInfo! initBuffer(BufferCreateInfo info, MemoryPropertyFlags properties, DeviceInfo context) {
    Buffer buffer;
    DeviceMemory memory;

    createBuffer(context.device, &info, null, &buffer)!;
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(context.device, buffer, &mem_reqs);

    uint memory_type = {|
        PhysicalDeviceMemoryProperties mem_props;
        getPhysicalDeviceMemoryProperties(context.physical_device, &mem_props);
        for (int i = 0; i < mem_props.memoryTypeCount; ++i) {
            if ((mem_reqs.memoryTypeBits & 1 << i) != 0 && (mem_props.memoryTypes[i].propertyFlags & properties) == properties)
            {
                return i;
            }
        }
        return 0;
    |};

    MemoryAllocateInfo alloc_info = {
        .sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
        .pNext = null,
        .allocationSize = mem_reqs.size,
        .memoryTypeIndex = memory_type,
    };

    allocateMemory(context.device, &alloc_info, null, &memory)!;
    bindBufferMemory(context.device, buffer, memory, 0)!;

    return BufferInfo {
        .buffer = buffer,
        .memory = memory,
        .size = info.size,
        .usage = info.usage
    };
}
