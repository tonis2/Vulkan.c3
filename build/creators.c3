module vk;

fn vk::Fence! FenceCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Fence response;
  createFence(device, self, allocator, &response)!;
  return response;
}

fn vk::Semaphore! SemaphoreCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Semaphore response;
  createSemaphore(device, self, allocator, &response)!;
  return response;
}

fn vk::Event! EventCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Event response;
  createEvent(device, self, allocator, &response)!;
  return response;
}

fn vk::QueryPool! QueryPoolCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::QueryPool response;
  createQueryPool(device, self, allocator, &response)!;
  return response;
}

fn vk::Buffer! BufferCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Buffer response;
  createBuffer(device, self, allocator, &response)!;
  return response;
}

fn vk::BufferView! BufferViewCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::BufferView response;
  createBufferView(device, self, allocator, &response)!;
  return response;
}

fn vk::Image! ImageCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Image response;
  createImage(device, self, allocator, &response)!;
  return response;
}

fn vk::ImageView! ImageViewCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::ImageView response;
  createImageView(device, self, allocator, &response)!;
  return response;
}

fn vk::ShaderModule! ShaderModuleCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::ShaderModule response;
  createShaderModule(device, self, allocator, &response)!;
  return response;
}

fn vk::PipelineCache! PipelineCacheCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::PipelineCache response;
  createPipelineCache(device, self, allocator, &response)!;
  return response;
}

fn vk::PipelineLayout! PipelineLayoutCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::PipelineLayout response;
  createPipelineLayout(device, self, allocator, &response)!;
  return response;
}

fn vk::Sampler! SamplerCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Sampler response;
  createSampler(device, self, allocator, &response)!;
  return response;
}

fn vk::DescriptorSetLayout! DescriptorSetLayoutCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::DescriptorSetLayout response;
  createDescriptorSetLayout(device, self, allocator, &response)!;
  return response;
}

fn vk::DescriptorPool! DescriptorPoolCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::DescriptorPool response;
  createDescriptorPool(device, self, allocator, &response)!;
  return response;
}

fn vk::Framebuffer! FramebufferCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::Framebuffer response;
  createFramebuffer(device, self, allocator, &response)!;
  return response;
}

fn vk::RenderPass! RenderPassCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::RenderPass response;
  createRenderPass(device, self, allocator, &response)!;
  return response;
}

fn vk::CommandPool! CommandPoolCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::CommandPool response;
  createCommandPool(device, self, allocator, &response)!;
  return response;
}

fn vk::SamplerYcbcrConversion! SamplerYcbcrConversionCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::SamplerYcbcrConversion response;
  createSamplerYcbcrConversion(device, self, allocator, &response)!;
  return response;
}

fn vk::DescriptorUpdateTemplate! DescriptorUpdateTemplateCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::DescriptorUpdateTemplate response;
  createDescriptorUpdateTemplate(device, self, allocator, &response)!;
  return response;
}

fn vk::RenderPass! RenderPassCreateInfo2.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::RenderPass response;
  createRenderPass2(device, self, allocator, &response)!;
  return response;
}

fn vk::PrivateDataSlot! PrivateDataSlotCreateInfo.build(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::PrivateDataSlot response;
  createPrivateDataSlot(device, self, allocator, &response)!;
  return response;
}

fn vk::SwapchainKHR! SwapchainCreateInfoKHR.buildKHR(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::SwapchainKHR response;
  createSwapchainKHR(device, self, allocator, &response)!;
  return response;
}

fn vk::SurfaceKHR! DisplaySurfaceCreateInfoKHR.buildKHR(&self, Instance device, AllocationCallbacks* allocator = null) {
  vk::SurfaceKHR response;
  createDisplayPlaneSurfaceKHR(device, self, allocator, &response)!;
  return response;
}

fn vk::SurfaceKHR! XcbSurfaceCreateInfoKHR.buildKHR(&self, Instance device, AllocationCallbacks* allocator = null) {
  vk::SurfaceKHR response;
  createXcbSurfaceKHR(device, self, allocator, &response)!;
  return response;
}

fn vk::DebugReportCallbackEXT! DebugReportCallbackCreateInfoEXT.build(&self, Instance device, AllocationCallbacks* allocator = null) {
  vk::DebugReportCallbackEXT response;
  createDebugReportCallbackEXT(device, self, allocator, &response)!;
  return response;
}

fn vk::RenderPass! RenderPassCreateInfo2.buildKHR(&self, Device device, AllocationCallbacks* allocator = null) {
  vk::RenderPass response;
  createRenderPass2KHR(device, self, allocator, &response)!;
  return response;
}

fn vk::DebugUtilsMessengerEXT! DebugUtilsMessengerCreateInfoEXT.build(&self, Instance device, AllocationCallbacks* allocator = null) {
  vk::DebugUtilsMessengerEXT response;
  createDebugUtilsMessengerEXT(device, self, allocator, &response)!;
  return response;
}

fn vk::Pipeline! GraphicsPipelineCreateInfo.build(&self, Device device, PipelineCache pipelineCache = null, uint count = 1, AllocationCallbacks* allocator = null) {
  vk::Pipeline response;
  createGraphicsPipelines(device, pipelineCache, count, self, allocator, &response)!;
  return response;
}

fn vk::Device! DeviceCreateInfo.build(&self, PhysicalDevice device, AllocationCallbacks* allocator = null) {
    vk::Device response;
    vk::createDevice(device, self, allocator, &response)!;
    return response;
}


