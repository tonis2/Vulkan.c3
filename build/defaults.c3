module vk;

VkWriteDescriptorSet writeDescriptorSetDefault = {
    .sType = vk::VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
    .dstSet = null,
    .dstBinding = 0,
    .descriptorCount = 1,
};

fn VkWriteDescriptorSet descriptorWriteSetTexel(VkDescriptorType type, VkBufferView[] bindings, VkDescriptorSet dstSet = null)
{
    VkWriteDescriptorSet writeDescriptorSetDefault;
    writeDescriptorSetDefault.dstSet = dstSet;
    writeDescriptorSetDefault.descriptorCount = bindings.len;
    writeDescriptorSetDefault.pTexelBufferView = &bindings[0];
    writeDescriptorSetDefault.descriptorType = type;
    return writeDescriptorSetDefault;
}

fn VkWriteDescriptorSet descriptorWriteSetBuffer(VkDescriptorType type, VkDescriptorBufferInfo[] bindings, VkDescriptorSet dstSet = null)
{
    VkWriteDescriptorSet writeDescriptorSetDefault;
    writeDescriptorSetDefault.dstSet = dstSet;
    writeDescriptorSetDefault.descriptorCount = bindings.len;
    writeDescriptorSetDefault.pBufferInfo = &bindings[0];
    writeDescriptorSetDefault.descriptorType = type;
    return writeDescriptorSetDefault;
}

fn VkWriteDescriptorSet descriptorWriteSetImage(VkDescriptorType type, VkDescriptorImageInfo[] bindings, VkDescriptorSet dstSet = null)
{
    VkWriteDescriptorSet writeDescriptorSetDefault;
    writeDescriptorSetDefault.dstSet = dstSet;
    writeDescriptorSetDefault.descriptorCount = bindings.len;
    writeDescriptorSetDefault.pImageInfo = &bindings[0];
    writeDescriptorSetDefault.descriptorType = type;
    return writeDescriptorSetDefault;
}


VkDescriptorSetLayoutCreateInfo descriptorSetLayoutDefault = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
    .bindingCount = 0,
    .pNext = null,
    .flags = 0,
};

fn VkDescriptorSetLayoutCreateInfo VkDescriptorSetLayoutCreateInfo.bindings(self, VkDescriptorSetLayoutBinding[] bindings)
{
    self.bindingCount = bindings.len;
    self.pBindings = &bindings[0];
    return self;
}

fn VkDescriptorSetLayoutCreateInfo VkDescriptorSetLayoutCreateInfo.set_flags(self, VkDescriptorSetLayoutCreateFlags flag)
{
    self.flags = flag;
    return self;
}

VkPhysicalDeviceFeatures default_device_features = {
    .robustBufferAccess = 0,
    .fullDrawIndexUint32 = 0,
    .imageCubeArray = 0,
    .independentBlend = 0,
    .geometryShader = 0,
    .tessellationShader = 0,
    .sampleRateShading = 0,
    .dualSrcBlend = 0,
    .logicOp = 0,
    .multiDrawIndirect = 0,
    .drawIndirectFirstInstance = 0,
    .depthClamp = 0,
    .depthBiasClamp = 0,
    .fillModeNonSolid = 0,
    .depthBounds = 0,
    .wideLines = 0,
    .largePoints = 0,
    .alphaToOne = 0,
    .multiViewport = 0,
    .samplerAnisotropy = 0,
    .textureCompressionETC2 = 0,
    .textureCompressionASTC_LDR = 0,
    .textureCompressionBC = 0,
    .occlusionQueryPrecise = 0,
    .pipelineStatisticsQuery = 0,
    .vertexPipelineStoresAndAtomics = 0,
    .fragmentStoresAndAtomics = 0,
    .shaderTessellationAndGeometryPointSize = 0,
    .shaderImageGatherExtended = 0,
    .shaderStorageImageExtendedFormats = 0,
    .shaderStorageImageMultisample = 0,
    .shaderStorageImageReadWithoutFormat = 0,
    .shaderStorageImageWriteWithoutFormat = 0,
    .shaderUniformBufferArrayDynamicIndexing = 0,
    .shaderSampledImageArrayDynamicIndexing = 0,
    .shaderStorageBufferArrayDynamicIndexing = 0,
    .shaderStorageImageArrayDynamicIndexing = 0,
    .shaderClipDistance = 0,
    .shaderCullDistance = 0,
    .shaderFloat64 = 0,
    .shaderInt64 = 0,
    .shaderInt16 = 0,
    .shaderResourceResidency = 0,
    .shaderResourceMinLod = 0,
    .sparseBinding = 0,
    .sparseResidencyBuffer = 0,
    .sparseResidencyImage2D = 0,
    .sparseResidencyImage3D = 0,
    .sparseResidency2Samples = 0,
    .sparseResidency4Samples = 0,
    .sparseResidency8Samples = 0,
    .sparseResidency16Samples = 0,
    .sparseResidencyAliased = 0,
    .variableMultisampleRate = 0,
    .inheritedQueries = 0,
};

VkDebugUtilsMessengerCreateInfoEXT default_debug_info =  {
     .sType = vk::VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
     .flags = 0,
     .messageSeverity = vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
     .messageType = vk::VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
     .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback,
     .pUserData = null,
};

