module vk;
import std::io;

enum BufferVersion : int
{
  DEVICE_BUFFER,
  GLOBAL_BUFFER,
}

struct ImageBufferInfo {
    vk::Image image;
    vk::DeviceMemory memory;
    vk::Sampler sampler;
    vk::ImageView view;

    uint mipLevels;
    vk::ImageLayout layout;
}

fn ImageBufferInfo! createTexture(ImageCreateInfo image_info, DeviceInfo context)
{
    vk::Image image;
    vk::DeviceMemory memory;
    vk::createImage(context.device, &image_info, null, &image)!;

    vk::MemoryRequirements mem_reqs;
    vk::getImageMemoryRequirements(context.device, image, &mem_reqs);

    MemoryAllocateInfo memory_info = memoryAllocateInfoBuilder()
        .setAllocationSize(mem_reqs.size)
        .setMemoryTypeIndex(getMemoryType(mem_reqs.memoryTypeBits, vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT, context));

    vk::allocateMemory(context.device, &memory_info, null, &memory)!;
    vk::bindImageMemory(context.device, image, memory, 0)!;

    return ImageBufferInfo {
        .image = image,
        .memory = memory,
        .mipLevels =  image_info.mipLevels,
        .layout = image_info.initialLayout
    };
}

fn void ImageBufferInfo.free(&self, Device device)
{
    vk::destroyImageView(device, self.view, null);
    vk::destroyImage(device, self.image, null);
    vk::destroySampler(device, self.sampler, null);
    vk::freeMemory(device, self.memory, null);
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

fn MemoryAllocateInfo Buffer.getMemoryInfo(self, MemoryPropertyFlags properties, DeviceInfo context) {
    PhysicalDeviceMemoryProperties mem_props;
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(context.device, self, &mem_reqs);
    getPhysicalDeviceMemoryProperties(context.physical_device, &mem_props);

    uint memory_type = getMemoryType(mem_reqs.memoryTypeBits, properties, context);

    return memoryAllocateInfoBuilder()
    .setAllocationSize(mem_reqs.size)
    .setMemoryTypeIndex(memory_type);
}


fn uint getMemoryType(uint typeFilter, MemoryPropertyFlags properties, DeviceInfo context) {
    vk::PhysicalDeviceMemoryProperties memProperties;
    vk::getPhysicalDeviceMemoryProperties(context.physical_device, &memProperties);

    for (int i = 0; i < memProperties.memoryTypeCount; ++i) {
        if ((typeFilter & (1 << i)) && (memProperties.memoryTypes[i].propertyFlags & properties) == properties)
        {
            return i;
        }
    }
    return 0;
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

fn BufferInfo BufferInfo.set_size(&self, usz size) {
   self.size = size;
   return *self;
}

fn BufferInfo! BufferInfo.build(&self, DeviceInfo context) {
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

       context.@single_time_buffer(;CommandBuffer command_buffer) {
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
    MemoryAllocateInfo alloc_info = buffer.getMemoryInfo(properties, context);

    allocateMemory(context.device, &alloc_info, null, &memory)!;
    bindBufferMemory(context.device, buffer, memory, 0)!;

    return BufferInfo {
        .buffer = buffer,
        .memory = memory,
        .size = info.size,
        .usage = info.usage
    };
}

