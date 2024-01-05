module vk;
import std::io;
import std::collections::list;

fault BufferError
{
    BUFFER_TOO_SMALL,
}

struct BufferInfo {
    Buffer buffer;
    DeviceMemory memory;
    ulong size;
    void* mapped;
    BufferUsageFlags usage;
    MemoryPropertyFlags version;
    DeviceAddress address;
}

fn void! BufferInfo.createPointer(&self, usz size, Device device, PhysicalDevice pdevice) {
    self.size = size;
    BufferCreateInfo buffer_info = {
       .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .size = self.size,
       .usage = self.usage | BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT,
       .sharingMode = SHARING_MODE_EXCLUSIVE,
       .queueFamilyIndexCount = 0,
       .pQueueFamilyIndices = null
    };

    createBuffer(device, &buffer_info, null, &self.buffer)!;
    BufferDeviceAddressInfo address_info = {
        .sType = STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
        .buffer = self.buffer
    };

    MemoryRequirements mem_reqs = self.buffer.memoryRequirements(device);
    MemoryAllocateInfo memory_allocate_info = memoryAllocateInfoBuilder()
                   .setAllocationSize(mem_reqs.size)
                   .setNext(&&MemoryAllocateFlagsInfo {.sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .flags = MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT })
                   .setMemoryTypeIndex(pdevice.getMemoryType(self.version, mem_reqs.memoryTypeBits));

    self.memory = memory_allocate_info.build(device)!;
    bindBufferMemory(device, self.buffer, self.memory, 0)!;
    self.address = getBufferDeviceAddress(device, &address_info);
}

fn void BufferInfo.free(&self, Device device)
{
    destroyBuffer(device, self.buffer, null);
    freeMemory(device, self.memory, null);
}

fn MemoryRequirements Buffer.memoryRequirements(self, Device device) {
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(device, self, &mem_reqs);
    return mem_reqs;
}

fn DeviceMemory! MemoryAllocateInfo.build(&self, Device device) {
    DeviceMemory memory;
    allocateMemory(device, self, null, &memory)!;
    return memory;
}

fn BufferInfo! BufferInfo.build(&self, void* data, ulong size, Device device, PhysicalDevice pdevice, QueueFamily queue) {
    self.size = size;

    if (self.version == MEMORY_PROPERTY_DEVICE_LOCAL_BIT) {
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

       BufferInfo staging_buffer = initBuffer(staging_info, MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT, device, pdevice)!;
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

   if (self.version == MEMORY_PROPERTY_HOST_VISIBLE_BIT) {
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

    MemoryRequirements mem_reqs = buffer.memoryRequirements(device);
    DeviceMemory memory = memoryAllocateInfoBuilder()
                   .setAllocationSize(mem_reqs.size)
                   .setMemoryTypeIndex(pdevice.getMemoryType(properties, mem_reqs.memoryTypeBits))
                   .build(device)!;

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

fn void! BufferInfo.addData(&self, void* data, Device device) {
    vk::mapMemory(device, self.memory, 0, self.size, 0, &self.mapped)!;
    mem::copy(self.mapped, data, self.size);
    vk::unmapMemory(device, self.memory);
}

