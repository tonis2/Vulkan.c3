module vk;
import std::io;

fault BufferError
{
    BUFFER_TOO_SMALL,
}

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

fn ImageBufferInfo! createTexture(ImageCreateInfo image_info, char* pixels, DeviceInfo device)
{
    vk::Image image;
    vk::DeviceMemory memory;
    vk::Sampler sampler;
    vk::ImageView view;
    vk::createImage(device.device, &image_info, null, &image)!;

    vk::MemoryRequirements mem_reqs;
    vk::getImageMemoryRequirements(device.device, image, &mem_reqs);

    MemoryAllocateInfo memory_info = memoryAllocateInfoBuilder()
        .setAllocationSize(mem_reqs.size)
        .setMemoryTypeIndex(getMemoryType(mem_reqs.memoryTypeBits, vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT, device));

    vk::allocateMemory(device.device, &memory_info, null, &memory)!;
    vk::bindImageMemory(device.device, image, memory, 0)!;

    BufferInfo image_staging_buffer = BufferInfo {
        .usage = vk::BUFFER_USAGE_TRANSFER_SRC_BIT,
        .version = vk::BufferVersion.GLOBAL_BUFFER
    }
    .upload_data(pixels, (usz)image_info.extent.width * image_info.extent.height * 4)
    .build(device)!;

    defer image_staging_buffer.free(device.device);

    // Create single-time command buffer for copying buffer to image
    device.@single_time_buffer(;CommandBuffer command_buffer) {
        ImageMemoryBarrier imageMemoryBarrier = vk::imageMemoryBarrierBuilder()
        .setImage(image)
        .setSubresourceRange({
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .baseArrayLayer = 0,
            .layerCount = 1,
            .levelCount = 1,
        })
        .setSrcAccessMask(0)
        .setDstAccessMask(vk::ACCESS_TRANSFER_WRITE_BIT)
        .setOldLayout(vk::IMAGE_LAYOUT_UNDEFINED)
        .setNewLayout(vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL);

        vk::cmdPipelineBarrier(
         command_buffer,
         vk::PIPELINE_STAGE_TOP_OF_PIPE_BIT,
         vk::PIPELINE_STAGE_TRANSFER_BIT,
         0,
         0,
         null,
         0,
         null,
         1,
         &imageMemoryBarrier
        );

        BufferImageCopy bufferCopyRegion = {
            .bufferOffset = 0,
            .bufferRowLength = 0,
            .bufferImageHeight = 0,
            .imageSubresource = {
                .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                .mipLevel = 0,
                .baseArrayLayer = 0,
                .layerCount = 1,
            },
            .imageOffset = {0, 0, 0},
            .imageExtent = {.width = image_info.extent.width, .height = image_info.extent.height, .depth = 1 }
        };

        vk::cmdCopyBufferToImage(
            command_buffer,
            image_staging_buffer.buffer,
            image,
            vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
            1,
            &bufferCopyRegion
        );

        ImageMemoryBarrier imageMemoryBarrier2 = vk::imageMemoryBarrierBuilder()
        .setImage(image)
        .setSubresourceRange({
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .baseArrayLayer = 0,
            .layerCount = 1,
            .levelCount = 1,
        })
        .setSrcAccessMask(vk::ACCESS_TRANSFER_WRITE_BIT)
        .setDstAccessMask(vk::ACCESS_SHADER_READ_BIT)
        .setOldLayout(vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL)
        .setNewLayout(vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL);

        vk::cmdPipelineBarrier(
             command_buffer,
             vk::PIPELINE_STAGE_TRANSFER_BIT,
             vk::PIPELINE_STAGE_FRAGMENT_SHADER_BIT,
             0,
             0,
             null,
             0,
             null,
             1,
             &imageMemoryBarrier2
        );
    }!;

    return ImageBufferInfo {
        .image = image,
        .memory = memory,
        .mipLevels = image_info.mipLevels,
        .layout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL
    };
}

fn void! ImageBufferInfo.createSampler(&self, SamplerCreateInfo sampler_info, Device device) {
    vk::createSampler(device, &sampler_info, null, &self.sampler)!;
}

fn void! ImageBufferInfo.createView(&self, ImageViewCreateInfo image_view_info, Device device) {
    vk::createImageView(device, &image_view_info, null, &self.view)!;
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
    ulong total_size;
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

fn BufferInfo! BufferInfo.upload_data(&self, void* buffer_data, usz size) {
   if (self.total_size == 0) {
       self.total_size = size;
       self.pre_buffer = mem::malloc(void*, size);
   }

   if (self.total_size < self.size + size) {
        return BufferError.BUFFER_TOO_SMALL?;
   }
   mem::copy(self.pre_buffer + self.size, buffer_data, size);
   self.size += size;
   return *self;
}

fn BufferInfo BufferInfo.set_size(&self, ulong size) {
   self.total_size = size;
   self.pre_buffer = mem::malloc(void*, self.total_size);
   return *self;
}

fn BufferInfo BufferInfo.resize(&self, ulong size) {
    if (self.total_size == 0) {
        self.total_size = size;
        self.pre_buffer = mem::malloc(void*, self.total_size);
    } else {
        self.total_size = self.total_size + size;
        mem::realloc(self.pre_buffer, self.total_size + size);
    }
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

