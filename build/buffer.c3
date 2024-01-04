module vk;
import std::io;
import std::collections::list;

fault BufferError
{
    BUFFER_TOO_SMALL,
}

enum BufferVersion : int
{
  DEVICE_BUFFER,
  GLOBAL_BUFFER,
}

struct BufferInfo {
    Buffer buffer;
    DeviceMemory memory;
    ulong size;
    void* mapped;
    BufferUsageFlags usage;
    BufferVersion version;
}

fn void BufferInfo.free(&self, Device device)
{
    destroyBuffer(device, self.buffer, null);
    freeMemory(device, self.memory, null);
}

fn MemoryAllocateInfo Buffer.getMemoryInfo(self, MemoryPropertyFlags properties, Device device, PhysicalDevice pdevice) {
    PhysicalDeviceMemoryProperties mem_props;
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(device, self, &mem_reqs);
    getPhysicalDeviceMemoryProperties(pdevice, &mem_props);

    uint memory_type = getMemoryType(mem_reqs.memoryTypeBits, properties, pdevice);

    return memoryAllocateInfoBuilder()
    .setAllocationSize(mem_reqs.size)
    .setMemoryTypeIndex(memory_type);
}

fn DeviceMemory! MemoryAllocateInfo.build(&self, Device device) {
    DeviceMemory memory;
    allocateMemory(device, self, null, &memory)!;
    return memory;
}


fn uint getMemoryType(uint typeFilter, MemoryPropertyFlags properties, PhysicalDevice pdevice) {
    vk::PhysicalDeviceMemoryProperties memProperties;
    vk::getPhysicalDeviceMemoryProperties(pdevice, &memProperties);

    for (int i = 0; i < memProperties.memoryTypeCount; ++i) {
        if ((typeFilter & (1 << i)) && (memProperties.memoryTypes[i].propertyFlags & properties) == properties)
        {
            return i;
        }
    }
    return 0;
}

fn BufferInfo! BufferInfo.build(&self, void* data, ulong size, Device device, PhysicalDevice pdevice, QueueFamily queue) {
    self.size = size;

    if (self.version == BufferVersion.DEVICE_BUFFER) {
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

       BufferInfo staging_buffer = initBuffer(staging_info, MEMORY_PROPERTY_HOST_COHERENT_BIT, device, pdevice)!;
       defer staging_buffer.free(device);

       vk::mapMemory(device, staging_buffer.memory, 0, staging_info.size, 0, &self.mapped)!;
       mem::copy(self.mapped, data, self.size);
       vk::unmapMemory(device, staging_buffer.memory);

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

       BufferInfo buffer = initBuffer(buffer_info, MEMORY_PROPERTY_DEVICE_LOCAL_BIT, device, pdevice)!;

       device.@single_time_buffer(queue; CommandBuffer command_buffer) {
          BufferCopy copyRegion = {
               .srcOffset = 0,
               .dstOffset = 0,
               .size = self.size
           };
           vk::cmdCopyBuffer(command_buffer, staging_buffer.buffer, buffer.buffer, 1, &copyRegion);
       }!;

       self.buffer = buffer.buffer;
       self.memory = buffer.memory;
    }

   if (self.version == BufferVersion.GLOBAL_BUFFER) {
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

        BufferInfo buffer = initBuffer(buffer_info, MEMORY_PROPERTY_HOST_COHERENT_BIT | MEMORY_PROPERTY_HOST_VISIBLE_BIT, device, pdevice)!;
        vk::mapMemory(device, buffer.memory, 0, buffer_info.size, 0, &self.mapped)!;
        mem::copy(self.mapped, data, self.size);

        self.buffer = buffer.buffer;
        self.memory = buffer.memory;
   }

   return *self;
}

fn BufferInfo! initBuffer(BufferCreateInfo info, MemoryPropertyFlags properties, Device device, PhysicalDevice pdevice) {
    Buffer buffer;
    createBuffer(device, &info, null, &buffer)!;

    DeviceMemory memory = buffer.getMemoryInfo(properties, device, pdevice).build(device)!;
    bindBufferMemory(device, buffer, memory, 0)!;

    return BufferInfo {
        .buffer = buffer,
        .memory = memory,
        .size = info.size,
        .usage = info.usage
    };
}

fn void BufferInfo.updateData(&self, void* data) {
    mem::copy(self.mapped, data, self.size);
}

