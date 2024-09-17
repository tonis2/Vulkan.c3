module vk;
fn ApplicationInfo applicationInfo() => ApplicationInfo { .sType = STRUCTURE_TYPE_APPLICATION_INFO, .pNext = null };
fn ApplicationInfo ApplicationInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ApplicationInfo ApplicationInfo.setApplicationName(&self, char* pApplicationName) {
   self.pApplicationName = pApplicationName;
   return *self;
}
fn ApplicationInfo ApplicationInfo.setApplicationVersion(&self, uint applicationVersion) {
   self.applicationVersion = applicationVersion;
   return *self;
}
fn ApplicationInfo ApplicationInfo.setEngineName(&self, char* pEngineName) {
   self.pEngineName = pEngineName;
   return *self;
}
fn ApplicationInfo ApplicationInfo.setEngineVersion(&self, uint engineVersion) {
   self.engineVersion = engineVersion;
   return *self;
}
fn ApplicationInfo ApplicationInfo.setApiVersion(&self, uint apiVersion) {
   self.apiVersion = apiVersion;
   return *self;
}
fn DeviceQueueCreateInfo deviceQueueCreateInfo() => DeviceQueueCreateInfo { .sType = STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO, .pNext = null };
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setFlags(&self, DeviceQueueCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setQueueFamilyIndex(&self, uint queueFamilyIndex) {
   self.queueFamilyIndex = queueFamilyIndex;
   return *self;
}
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setQueueCount(&self, uint queueCount) {
   self.queueCount = queueCount;
   return *self;
}
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setQueuePriorities(&self, float[] pQueuePriorities) {
   self.queueCount= (uint)pQueuePriorities.len;
   self.pQueuePriorities = &pQueuePriorities[0];
   return *self;
}
fn DeviceCreateInfo deviceCreateInfo() => DeviceCreateInfo { .sType = STRUCTURE_TYPE_DEVICE_CREATE_INFO, .pNext = null };
fn DeviceCreateInfo DeviceCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setFlags(&self, DeviceCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setQueueCreateInfoCount(&self, uint queueCreateInfoCount) {
   self.queueCreateInfoCount = queueCreateInfoCount;
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setQueueCreateInfos(&self, DeviceQueueCreateInfo[] pQueueCreateInfos) {
   self.queueCreateInfoCount= (uint)pQueueCreateInfos.len;
   self.pQueueCreateInfos = &pQueueCreateInfos[0];
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setEnabledLayerCount(&self, uint enabledLayerCount) {
   self.enabledLayerCount = enabledLayerCount;
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setEnabledLayerNames(&self, ZString[] ppEnabledLayerNames) {
   self.enabledLayerCount= (uint)ppEnabledLayerNames.len;
   self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setEnabledExtensionCount(&self, uint enabledExtensionCount) {
   self.enabledExtensionCount = enabledExtensionCount;
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setEnabledExtensionNames(&self, ZString[] ppEnabledExtensionNames) {
   self.enabledExtensionCount= (uint)ppEnabledExtensionNames.len;
   self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
   return *self;
}
fn DeviceCreateInfo DeviceCreateInfo.setEnabledFeatures(&self, PhysicalDeviceFeatures* pEnabledFeatures) {
   self.pEnabledFeatures = pEnabledFeatures;
   return *self;
}
fn InstanceCreateInfo instanceCreateInfo() => InstanceCreateInfo { .sType = STRUCTURE_TYPE_INSTANCE_CREATE_INFO, .pNext = null };
fn InstanceCreateInfo InstanceCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn InstanceCreateInfo InstanceCreateInfo.setFlags(&self, InstanceCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn InstanceCreateInfo InstanceCreateInfo.setApplicationInfo(&self, ApplicationInfo* pApplicationInfo) {
   self.pApplicationInfo = pApplicationInfo;
   return *self;
}
fn InstanceCreateInfo InstanceCreateInfo.setEnabledLayerCount(&self, uint enabledLayerCount) {
   self.enabledLayerCount = enabledLayerCount;
   return *self;
}
fn InstanceCreateInfo InstanceCreateInfo.setEnabledLayerNames(&self, ZString[] ppEnabledLayerNames) {
   self.enabledLayerCount= (uint)ppEnabledLayerNames.len;
   self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
   return *self;
}
fn InstanceCreateInfo InstanceCreateInfo.setEnabledExtensionCount(&self, uint enabledExtensionCount) {
   self.enabledExtensionCount = enabledExtensionCount;
   return *self;
}
fn InstanceCreateInfo InstanceCreateInfo.setEnabledExtensionNames(&self, ZString[] ppEnabledExtensionNames) {
   self.enabledExtensionCount= (uint)ppEnabledExtensionNames.len;
   self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
   return *self;
}
fn MemoryAllocateInfo memoryAllocateInfo() => MemoryAllocateInfo { .sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO, .pNext = null };
fn MemoryAllocateInfo MemoryAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryAllocateInfo MemoryAllocateInfo.setAllocationSize(&self, DeviceSize allocationSize) {
   self.allocationSize = allocationSize;
   return *self;
}
fn MemoryAllocateInfo MemoryAllocateInfo.setMemoryTypeIndex(&self, uint memoryTypeIndex) {
   self.memoryTypeIndex = memoryTypeIndex;
   return *self;
}
fn MappedMemoryRange mappedMemoryRange() => MappedMemoryRange { .sType = STRUCTURE_TYPE_MAPPED_MEMORY_RANGE, .pNext = null };
fn MappedMemoryRange MappedMemoryRange.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MappedMemoryRange MappedMemoryRange.setMemory(&self, DeviceMemory memory) {
   self.memory = memory;
   return *self;
}
fn MappedMemoryRange MappedMemoryRange.setOffset(&self, DeviceSize offset) {
   self.offset = offset;
   return *self;
}
fn MappedMemoryRange MappedMemoryRange.setSize(&self, DeviceSize size) {
   self.size = size;
   return *self;
}
fn WriteDescriptorSet writeDescriptorSet() => WriteDescriptorSet { .sType = STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET, .pNext = null };
fn WriteDescriptorSet WriteDescriptorSet.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setDstSet(&self, DescriptorSet dstSet) {
   self.dstSet = dstSet;
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setDstBinding(&self, uint dstBinding) {
   self.dstBinding = dstBinding;
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setDstArrayElement(&self, uint dstArrayElement) {
   self.dstArrayElement = dstArrayElement;
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setDescriptorCount(&self, uint descriptorCount) {
   self.descriptorCount = descriptorCount;
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setDescriptorType(&self, DescriptorType descriptorType) {
   self.descriptorType = descriptorType;
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setImageInfo(&self, DescriptorImageInfo[] pImageInfo) {
   self.descriptorCount= (uint)pImageInfo.len;
   self.pImageInfo = &pImageInfo[0];
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setBufferInfo(&self, DescriptorBufferInfo[] pBufferInfo) {
   self.descriptorCount= (uint)pBufferInfo.len;
   self.pBufferInfo = &pBufferInfo[0];
   return *self;
}
fn WriteDescriptorSet WriteDescriptorSet.setTexelBufferView(&self, BufferView[] pTexelBufferView) {
   self.descriptorCount= (uint)pTexelBufferView.len;
   self.pTexelBufferView = &pTexelBufferView[0];
   return *self;
}
fn CopyDescriptorSet copyDescriptorSet() => CopyDescriptorSet { .sType = STRUCTURE_TYPE_COPY_DESCRIPTOR_SET, .pNext = null };
fn CopyDescriptorSet CopyDescriptorSet.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setSrcSet(&self, DescriptorSet srcSet) {
   self.srcSet = srcSet;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setSrcBinding(&self, uint srcBinding) {
   self.srcBinding = srcBinding;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setSrcArrayElement(&self, uint srcArrayElement) {
   self.srcArrayElement = srcArrayElement;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setDstSet(&self, DescriptorSet dstSet) {
   self.dstSet = dstSet;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setDstBinding(&self, uint dstBinding) {
   self.dstBinding = dstBinding;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setDstArrayElement(&self, uint dstArrayElement) {
   self.dstArrayElement = dstArrayElement;
   return *self;
}
fn CopyDescriptorSet CopyDescriptorSet.setDescriptorCount(&self, uint descriptorCount) {
   self.descriptorCount = descriptorCount;
   return *self;
}
fn BufferCreateInfo bufferCreateInfo() => BufferCreateInfo { .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO, .pNext = null };
fn BufferCreateInfo BufferCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferCreateInfo BufferCreateInfo.setFlags(&self, BufferCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn BufferCreateInfo BufferCreateInfo.setSize(&self, DeviceSize size) {
   self.size = size;
   return *self;
}
fn BufferCreateInfo BufferCreateInfo.setUsage(&self, BufferUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn BufferCreateInfo BufferCreateInfo.setSharingMode(&self, SharingMode sharingMode) {
   self.sharingMode = sharingMode;
   return *self;
}
fn BufferCreateInfo BufferCreateInfo.setQueueFamilyIndexCount(&self, uint queueFamilyIndexCount) {
   self.queueFamilyIndexCount = queueFamilyIndexCount;
   return *self;
}
fn BufferCreateInfo BufferCreateInfo.setQueueFamilyIndices(&self, uint[] pQueueFamilyIndices) {
   self.queueFamilyIndexCount= (uint)pQueueFamilyIndices.len;
   self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
   return *self;
}
fn BufferViewCreateInfo bufferViewCreateInfo() => BufferViewCreateInfo { .sType = STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO, .pNext = null };
fn BufferViewCreateInfo BufferViewCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferViewCreateInfo BufferViewCreateInfo.setFlags(&self, BufferViewCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn BufferViewCreateInfo BufferViewCreateInfo.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn BufferViewCreateInfo BufferViewCreateInfo.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn BufferViewCreateInfo BufferViewCreateInfo.setOffset(&self, DeviceSize offset) {
   self.offset = offset;
   return *self;
}
fn BufferViewCreateInfo BufferViewCreateInfo.setRange(&self, DeviceSize range) {
   self.range = range;
   return *self;
}
fn MemoryBarrier memoryBarrier() => MemoryBarrier { .sType = STRUCTURE_TYPE_MEMORY_BARRIER, .pNext = null };
fn MemoryBarrier MemoryBarrier.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryBarrier MemoryBarrier.setSrcAccessMask(&self, AccessFlags srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn MemoryBarrier MemoryBarrier.setDstAccessMask(&self, AccessFlags dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn BufferMemoryBarrier bufferMemoryBarrier() => BufferMemoryBarrier { .sType = STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER, .pNext = null };
fn BufferMemoryBarrier BufferMemoryBarrier.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setSrcAccessMask(&self, AccessFlags srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setDstAccessMask(&self, AccessFlags dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setSrcQueueFamilyIndex(&self, uint srcQueueFamilyIndex) {
   self.srcQueueFamilyIndex = srcQueueFamilyIndex;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setDstQueueFamilyIndex(&self, uint dstQueueFamilyIndex) {
   self.dstQueueFamilyIndex = dstQueueFamilyIndex;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setOffset(&self, DeviceSize offset) {
   self.offset = offset;
   return *self;
}
fn BufferMemoryBarrier BufferMemoryBarrier.setSize(&self, DeviceSize size) {
   self.size = size;
   return *self;
}
fn ImageMemoryBarrier imageMemoryBarrier() => ImageMemoryBarrier { .sType = STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER, .pNext = null };
fn ImageMemoryBarrier ImageMemoryBarrier.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setSrcAccessMask(&self, AccessFlags srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setDstAccessMask(&self, AccessFlags dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setOldLayout(&self, ImageLayout oldLayout) {
   self.oldLayout = oldLayout;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setNewLayout(&self, ImageLayout newLayout) {
   self.newLayout = newLayout;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setSrcQueueFamilyIndex(&self, uint srcQueueFamilyIndex) {
   self.srcQueueFamilyIndex = srcQueueFamilyIndex;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setDstQueueFamilyIndex(&self, uint dstQueueFamilyIndex) {
   self.dstQueueFamilyIndex = dstQueueFamilyIndex;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn ImageMemoryBarrier ImageMemoryBarrier.setSubresourceRange(&self, ImageSubresourceRange subresourceRange) {
   self.subresourceRange = subresourceRange;
   return *self;
}
fn ImageCreateInfo imageCreateInfo() => ImageCreateInfo { .sType = STRUCTURE_TYPE_IMAGE_CREATE_INFO, .pNext = null };
fn ImageCreateInfo ImageCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setFlags(&self, ImageCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setImageType(&self, ImageType imageType) {
   self.imageType = imageType;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setExtent(&self, Extent3D extent) {
   self.extent = extent;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setMipLevels(&self, uint mipLevels) {
   self.mipLevels = mipLevels;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setArrayLayers(&self, uint arrayLayers) {
   self.arrayLayers = arrayLayers;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setSamples(&self, SampleCountFlagBits samples) {
   self.samples = samples;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setTiling(&self, ImageTiling tiling) {
   self.tiling = tiling;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setUsage(&self, ImageUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setSharingMode(&self, SharingMode sharingMode) {
   self.sharingMode = sharingMode;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setQueueFamilyIndexCount(&self, uint queueFamilyIndexCount) {
   self.queueFamilyIndexCount = queueFamilyIndexCount;
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setQueueFamilyIndices(&self, uint[] pQueueFamilyIndices) {
   self.queueFamilyIndexCount= (uint)pQueueFamilyIndices.len;
   self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
   return *self;
}
fn ImageCreateInfo ImageCreateInfo.setInitialLayout(&self, ImageLayout initialLayout) {
   self.initialLayout = initialLayout;
   return *self;
}
fn ImageViewCreateInfo imageViewCreateInfo() => ImageViewCreateInfo { .sType = STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO, .pNext = null };
fn ImageViewCreateInfo ImageViewCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageViewCreateInfo ImageViewCreateInfo.setFlags(&self, ImageViewCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn ImageViewCreateInfo ImageViewCreateInfo.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn ImageViewCreateInfo ImageViewCreateInfo.setViewType(&self, ImageViewType viewType) {
   self.viewType = viewType;
   return *self;
}
fn ImageViewCreateInfo ImageViewCreateInfo.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn ImageViewCreateInfo ImageViewCreateInfo.setComponents(&self, ComponentMapping components) {
   self.components = components;
   return *self;
}
fn ImageViewCreateInfo ImageViewCreateInfo.setSubresourceRange(&self, ImageSubresourceRange subresourceRange) {
   self.subresourceRange = subresourceRange;
   return *self;
}
fn BindSparseInfo bindSparseInfo() => BindSparseInfo { .sType = STRUCTURE_TYPE_BIND_SPARSE_INFO, .pNext = null };
fn BindSparseInfo BindSparseInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BindSparseInfo BindSparseInfo.setWaitSemaphoreCount(&self, uint waitSemaphoreCount) {
   self.waitSemaphoreCount = waitSemaphoreCount;
   return *self;
}
fn BindSparseInfo BindSparseInfo.setWaitSemaphores(&self, Semaphore[] pWaitSemaphores) {
   self.waitSemaphoreCount= (uint)pWaitSemaphores.len;
   self.pWaitSemaphores = &pWaitSemaphores[0];
   return *self;
}
fn BindSparseInfo BindSparseInfo.setBufferBindCount(&self, uint bufferBindCount) {
   self.bufferBindCount = bufferBindCount;
   return *self;
}
fn BindSparseInfo BindSparseInfo.setBufferBinds(&self, SparseBufferMemoryBindInfo[] pBufferBinds) {
   self.bufferBindCount= (uint)pBufferBinds.len;
   self.pBufferBinds = &pBufferBinds[0];
   return *self;
}
fn BindSparseInfo BindSparseInfo.setImageOpaqueBindCount(&self, uint imageOpaqueBindCount) {
   self.imageOpaqueBindCount = imageOpaqueBindCount;
   return *self;
}
fn BindSparseInfo BindSparseInfo.setImageOpaqueBinds(&self, SparseImageOpaqueMemoryBindInfo[] pImageOpaqueBinds) {
   self.imageOpaqueBindCount= (uint)pImageOpaqueBinds.len;
   self.pImageOpaqueBinds = &pImageOpaqueBinds[0];
   return *self;
}
fn BindSparseInfo BindSparseInfo.setImageBindCount(&self, uint imageBindCount) {
   self.imageBindCount = imageBindCount;
   return *self;
}
fn BindSparseInfo BindSparseInfo.setImageBinds(&self, SparseImageMemoryBindInfo[] pImageBinds) {
   self.imageBindCount= (uint)pImageBinds.len;
   self.pImageBinds = &pImageBinds[0];
   return *self;
}
fn BindSparseInfo BindSparseInfo.setSignalSemaphoreCount(&self, uint signalSemaphoreCount) {
   self.signalSemaphoreCount = signalSemaphoreCount;
   return *self;
}
fn BindSparseInfo BindSparseInfo.setSignalSemaphores(&self, Semaphore[] pSignalSemaphores) {
   self.signalSemaphoreCount= (uint)pSignalSemaphores.len;
   self.pSignalSemaphores = &pSignalSemaphores[0];
   return *self;
}
fn ShaderModuleCreateInfo shaderModuleCreateInfo() => ShaderModuleCreateInfo { .sType = STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO, .pNext = null };
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setFlags(&self, ShaderModuleCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setCodeSize(&self, usz codeSize) {
   self.codeSize = codeSize;
   return *self;
}
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setCode(&self, uint* pCode) {
   self.pCode = pCode;
   return *self;
}
fn DescriptorSetLayoutCreateInfo descriptorSetLayoutCreateInfo() => DescriptorSetLayoutCreateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO, .pNext = null };
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setFlags(&self, DescriptorSetLayoutCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setBindingCount(&self, uint bindingCount) {
   self.bindingCount = bindingCount;
   return *self;
}
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setBindings(&self, DescriptorSetLayoutBinding[] pBindings) {
   self.bindingCount= (uint)pBindings.len;
   self.pBindings = &pBindings[0];
   return *self;
}
fn DescriptorPoolCreateInfo descriptorPoolCreateInfo() => DescriptorPoolCreateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO, .pNext = null };
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setFlags(&self, DescriptorPoolCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setMaxSets(&self, uint maxSets) {
   self.maxSets = maxSets;
   return *self;
}
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setPoolSizeCount(&self, uint poolSizeCount) {
   self.poolSizeCount = poolSizeCount;
   return *self;
}
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setPoolSizes(&self, DescriptorPoolSize[] pPoolSizes) {
   self.poolSizeCount= (uint)pPoolSizes.len;
   self.pPoolSizes = &pPoolSizes[0];
   return *self;
}
fn DescriptorSetAllocateInfo descriptorSetAllocateInfo() => DescriptorSetAllocateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO, .pNext = null };
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setDescriptorPool(&self, DescriptorPool descriptorPool) {
   self.descriptorPool = descriptorPool;
   return *self;
}
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setDescriptorSetCount(&self, uint descriptorSetCount) {
   self.descriptorSetCount = descriptorSetCount;
   return *self;
}
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setSetLayouts(&self, DescriptorSetLayout[] pSetLayouts) {
   self.descriptorSetCount= (uint)pSetLayouts.len;
   self.pSetLayouts = &pSetLayouts[0];
   return *self;
}
fn PipelineShaderStageCreateInfo pipelineShaderStageCreateInfo() => PipelineShaderStageCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO, .pNext = null };
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setFlags(&self, PipelineShaderStageCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setStage(&self, ShaderStageFlagBits stage) {
   self.stage = stage;
   return *self;
}
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setMod(&self, ShaderModule mod) {
   self.mod = mod;
   return *self;
}
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setName(&self, char* pName) {
   self.pName = pName;
   return *self;
}
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setSpecializationInfo(&self, SpecializationInfo* pSpecializationInfo) {
   self.pSpecializationInfo = pSpecializationInfo;
   return *self;
}
fn ComputePipelineCreateInfo computePipelineCreateInfo() => ComputePipelineCreateInfo { .sType = STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO, .pNext = null };
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setFlags(&self, PipelineCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setStage(&self, PipelineShaderStageCreateInfo stage) {
   self.stage = stage;
   return *self;
}
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setLayout(&self, PipelineLayout layout) {
   self.layout = layout;
   return *self;
}
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setBasePipelineHandle(&self, Pipeline basePipelineHandle) {
   self.basePipelineHandle = basePipelineHandle;
   return *self;
}
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setBasePipelineIndex(&self, int basePipelineIndex) {
   self.basePipelineIndex = basePipelineIndex;
   return *self;
}
fn PipelineVertexInputStateCreateInfo pipelineVertexInputStateCreateInfo() => PipelineVertexInputStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO, .pNext = null };
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setFlags(&self, PipelineVertexInputStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexBindingDescriptionCount(&self, uint vertexBindingDescriptionCount) {
   self.vertexBindingDescriptionCount = vertexBindingDescriptionCount;
   return *self;
}
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexBindingDescriptions(&self, VertexInputBindingDescription[] pVertexBindingDescriptions) {
   self.vertexBindingDescriptionCount= (uint)pVertexBindingDescriptions.len;
   self.pVertexBindingDescriptions = &pVertexBindingDescriptions[0];
   return *self;
}
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexAttributeDescriptionCount(&self, uint vertexAttributeDescriptionCount) {
   self.vertexAttributeDescriptionCount = vertexAttributeDescriptionCount;
   return *self;
}
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexAttributeDescriptions(&self, VertexInputAttributeDescription[] pVertexAttributeDescriptions) {
   self.vertexAttributeDescriptionCount= (uint)pVertexAttributeDescriptions.len;
   self.pVertexAttributeDescriptions = &pVertexAttributeDescriptions[0];
   return *self;
}
fn PipelineInputAssemblyStateCreateInfo pipelineInputAssemblyStateCreateInfo() => PipelineInputAssemblyStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO, .pNext = null };
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setFlags(&self, PipelineInputAssemblyStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setTopology(&self, PrimitiveTopology topology) {
   self.topology = topology;
   return *self;
}
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setPrimitiveRestartEnable(&self, uint primitiveRestartEnable) {
   self.primitiveRestartEnable = primitiveRestartEnable;
   return *self;
}
fn PipelineTessellationStateCreateInfo pipelineTessellationStateCreateInfo() => PipelineTessellationStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO, .pNext = null };
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setFlags(&self, PipelineTessellationStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setPatchControlPoints(&self, uint patchControlPoints) {
   self.patchControlPoints = patchControlPoints;
   return *self;
}
fn PipelineViewportStateCreateInfo pipelineViewportStateCreateInfo() => PipelineViewportStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO, .pNext = null };
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setFlags(&self, PipelineViewportStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setViewportCount(&self, uint viewportCount) {
   self.viewportCount = viewportCount;
   return *self;
}
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setViewports(&self, Viewport[] pViewports) {
   self.viewportCount= (uint)pViewports.len;
   self.pViewports = &pViewports[0];
   return *self;
}
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setScissorCount(&self, uint scissorCount) {
   self.scissorCount = scissorCount;
   return *self;
}
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setScissors(&self, Rect2D[] pScissors) {
   self.scissorCount= (uint)pScissors.len;
   self.pScissors = &pScissors[0];
   return *self;
}
fn PipelineRasterizationStateCreateInfo pipelineRasterizationStateCreateInfo() => PipelineRasterizationStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO, .pNext = null };
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setFlags(&self, PipelineRasterizationStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthClampEnable(&self, uint depthClampEnable) {
   self.depthClampEnable = depthClampEnable;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setRasterizerDiscardEnable(&self, uint rasterizerDiscardEnable) {
   self.rasterizerDiscardEnable = rasterizerDiscardEnable;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setPolygonMode(&self, PolygonMode polygonMode) {
   self.polygonMode = polygonMode;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setCullMode(&self, CullModeFlags cullMode) {
   self.cullMode = cullMode;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setFrontFace(&self, FrontFace frontFace) {
   self.frontFace = frontFace;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasEnable(&self, uint depthBiasEnable) {
   self.depthBiasEnable = depthBiasEnable;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasConstantFactor(&self, float depthBiasConstantFactor) {
   self.depthBiasConstantFactor = depthBiasConstantFactor;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasClamp(&self, float depthBiasClamp) {
   self.depthBiasClamp = depthBiasClamp;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasSlopeFactor(&self, float depthBiasSlopeFactor) {
   self.depthBiasSlopeFactor = depthBiasSlopeFactor;
   return *self;
}
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setLineWidth(&self, float lineWidth) {
   self.lineWidth = lineWidth;
   return *self;
}
fn PipelineMultisampleStateCreateInfo pipelineMultisampleStateCreateInfo() => PipelineMultisampleStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO, .pNext = null };
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setFlags(&self, PipelineMultisampleStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setRasterizationSamples(&self, SampleCountFlagBits rasterizationSamples) {
   self.rasterizationSamples = rasterizationSamples;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setSampleShadingEnable(&self, uint sampleShadingEnable) {
   self.sampleShadingEnable = sampleShadingEnable;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setMinSampleShading(&self, float minSampleShading) {
   self.minSampleShading = minSampleShading;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setSampleMask(&self, SampleMask* pSampleMask) {
   self.pSampleMask = pSampleMask;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setAlphaToCoverageEnable(&self, uint alphaToCoverageEnable) {
   self.alphaToCoverageEnable = alphaToCoverageEnable;
   return *self;
}
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setAlphaToOneEnable(&self, uint alphaToOneEnable) {
   self.alphaToOneEnable = alphaToOneEnable;
   return *self;
}
fn PipelineColorBlendStateCreateInfo pipelineColorBlendStateCreateInfo() => PipelineColorBlendStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO, .pNext = null };
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setFlags(&self, PipelineColorBlendStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setLogicOpEnable(&self, uint logicOpEnable) {
   self.logicOpEnable = logicOpEnable;
   return *self;
}
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setLogicOp(&self, LogicOp logicOp) {
   self.logicOp = logicOp;
   return *self;
}
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setAttachmentCount(&self, uint attachmentCount) {
   self.attachmentCount = attachmentCount;
   return *self;
}
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setAttachments(&self, PipelineColorBlendAttachmentState[] pAttachments) {
   self.attachmentCount= (uint)pAttachments.len;
   self.pAttachments = &pAttachments[0];
   return *self;
}
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setBlendConstants(&self, float[4] blendConstants) {
   self.blendConstants = blendConstants;
   return *self;
}
fn PipelineDynamicStateCreateInfo pipelineDynamicStateCreateInfo() => PipelineDynamicStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO, .pNext = null };
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setFlags(&self, PipelineDynamicStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setDynamicStateCount(&self, uint dynamicStateCount) {
   self.dynamicStateCount = dynamicStateCount;
   return *self;
}
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setDynamicStates(&self, DynamicState[] pDynamicStates) {
   self.dynamicStateCount= (uint)pDynamicStates.len;
   self.pDynamicStates = &pDynamicStates[0];
   return *self;
}
fn PipelineDepthStencilStateCreateInfo pipelineDepthStencilStateCreateInfo() => PipelineDepthStencilStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO, .pNext = null };
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setFlags(&self, PipelineDepthStencilStateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthTestEnable(&self, uint depthTestEnable) {
   self.depthTestEnable = depthTestEnable;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthWriteEnable(&self, uint depthWriteEnable) {
   self.depthWriteEnable = depthWriteEnable;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthCompareOp(&self, CompareOp depthCompareOp) {
   self.depthCompareOp = depthCompareOp;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthBoundsTestEnable(&self, uint depthBoundsTestEnable) {
   self.depthBoundsTestEnable = depthBoundsTestEnable;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setStencilTestEnable(&self, uint stencilTestEnable) {
   self.stencilTestEnable = stencilTestEnable;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setFront(&self, StencilOpState front) {
   self.front = front;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setBack(&self, StencilOpState back) {
   self.back = back;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setMinDepthBounds(&self, float minDepthBounds) {
   self.minDepthBounds = minDepthBounds;
   return *self;
}
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setMaxDepthBounds(&self, float maxDepthBounds) {
   self.maxDepthBounds = maxDepthBounds;
   return *self;
}
fn GraphicsPipelineCreateInfo graphicsPipelineCreateInfo() => GraphicsPipelineCreateInfo { .sType = STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO, .pNext = null };
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setFlags(&self, PipelineCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setStageCount(&self, uint stageCount) {
   self.stageCount = stageCount;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setStages(&self, PipelineShaderStageCreateInfo[] pStages) {
   self.stageCount= (uint)pStages.len;
   self.pStages = &pStages[0];
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setVertexInputState(&self, PipelineVertexInputStateCreateInfo* pVertexInputState) {
   self.pVertexInputState = pVertexInputState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setInputAssemblyState(&self, PipelineInputAssemblyStateCreateInfo* pInputAssemblyState) {
   self.pInputAssemblyState = pInputAssemblyState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setTessellationState(&self, PipelineTessellationStateCreateInfo* pTessellationState) {
   self.pTessellationState = pTessellationState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setViewportState(&self, PipelineViewportStateCreateInfo* pViewportState) {
   self.pViewportState = pViewportState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setRasterizationState(&self, PipelineRasterizationStateCreateInfo* pRasterizationState) {
   self.pRasterizationState = pRasterizationState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setMultisampleState(&self, PipelineMultisampleStateCreateInfo* pMultisampleState) {
   self.pMultisampleState = pMultisampleState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setDepthStencilState(&self, PipelineDepthStencilStateCreateInfo* pDepthStencilState) {
   self.pDepthStencilState = pDepthStencilState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setColorBlendState(&self, PipelineColorBlendStateCreateInfo* pColorBlendState) {
   self.pColorBlendState = pColorBlendState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setDynamicState(&self, PipelineDynamicStateCreateInfo* pDynamicState) {
   self.pDynamicState = pDynamicState;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setLayout(&self, PipelineLayout layout) {
   self.layout = layout;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setRenderPass(&self, RenderPass renderPass) {
   self.renderPass = renderPass;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setSubpass(&self, uint subpass) {
   self.subpass = subpass;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setBasePipelineHandle(&self, Pipeline basePipelineHandle) {
   self.basePipelineHandle = basePipelineHandle;
   return *self;
}
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setBasePipelineIndex(&self, int basePipelineIndex) {
   self.basePipelineIndex = basePipelineIndex;
   return *self;
}
fn PipelineCacheCreateInfo pipelineCacheCreateInfo() => PipelineCacheCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO, .pNext = null };
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setFlags(&self, PipelineCacheCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setInitialDataSize(&self, usz initialDataSize) {
   self.initialDataSize = initialDataSize;
   return *self;
}
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setInitialData(&self, void* pInitialData) {
   self.pInitialData = pInitialData;
   return *self;
}
fn PipelineLayoutCreateInfo pipelineLayoutCreateInfo() => PipelineLayoutCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO, .pNext = null };
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setFlags(&self, PipelineLayoutCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setSetLayoutCount(&self, uint setLayoutCount) {
   self.setLayoutCount = setLayoutCount;
   return *self;
}
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setSetLayouts(&self, DescriptorSetLayout[] pSetLayouts) {
   self.setLayoutCount= (uint)pSetLayouts.len;
   self.pSetLayouts = &pSetLayouts[0];
   return *self;
}
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPushConstantRangeCount(&self, uint pushConstantRangeCount) {
   self.pushConstantRangeCount = pushConstantRangeCount;
   return *self;
}
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPushConstantRanges(&self, PushConstantRange[] pPushConstantRanges) {
   self.pushConstantRangeCount= (uint)pPushConstantRanges.len;
   self.pPushConstantRanges = &pPushConstantRanges[0];
   return *self;
}
fn SamplerCreateInfo samplerCreateInfo() => SamplerCreateInfo { .sType = STRUCTURE_TYPE_SAMPLER_CREATE_INFO, .pNext = null };
fn SamplerCreateInfo SamplerCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setFlags(&self, SamplerCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMagFilter(&self, Filter magFilter) {
   self.magFilter = magFilter;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMinFilter(&self, Filter minFilter) {
   self.minFilter = minFilter;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMipmapMode(&self, SamplerMipmapMode mipmapMode) {
   self.mipmapMode = mipmapMode;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setAddressModeU(&self, SamplerAddressMode addressModeU) {
   self.addressModeU = addressModeU;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setAddressModeV(&self, SamplerAddressMode addressModeV) {
   self.addressModeV = addressModeV;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setAddressModeW(&self, SamplerAddressMode addressModeW) {
   self.addressModeW = addressModeW;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMipLodBias(&self, float mipLodBias) {
   self.mipLodBias = mipLodBias;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setAnisotropyEnable(&self, uint anisotropyEnable) {
   self.anisotropyEnable = anisotropyEnable;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMaxAnisotropy(&self, float maxAnisotropy) {
   self.maxAnisotropy = maxAnisotropy;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setCompareEnable(&self, uint compareEnable) {
   self.compareEnable = compareEnable;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setCompareOp(&self, CompareOp compareOp) {
   self.compareOp = compareOp;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMinLod(&self, float minLod) {
   self.minLod = minLod;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setMaxLod(&self, float maxLod) {
   self.maxLod = maxLod;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setBorderColor(&self, BorderColor borderColor) {
   self.borderColor = borderColor;
   return *self;
}
fn SamplerCreateInfo SamplerCreateInfo.setUnnormalizedCoordinates(&self, uint unnormalizedCoordinates) {
   self.unnormalizedCoordinates = unnormalizedCoordinates;
   return *self;
}
fn CommandPoolCreateInfo commandPoolCreateInfo() => CommandPoolCreateInfo { .sType = STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO, .pNext = null };
fn CommandPoolCreateInfo CommandPoolCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CommandPoolCreateInfo CommandPoolCreateInfo.setFlags(&self, CommandPoolCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn CommandPoolCreateInfo CommandPoolCreateInfo.setQueueFamilyIndex(&self, uint queueFamilyIndex) {
   self.queueFamilyIndex = queueFamilyIndex;
   return *self;
}
fn CommandBufferAllocateInfo commandBufferAllocateInfo() => CommandBufferAllocateInfo { .sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO, .pNext = null };
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setCommandPool(&self, CommandPool commandPool) {
   self.commandPool = commandPool;
   return *self;
}
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setLevel(&self, CommandBufferLevel level) {
   self.level = level;
   return *self;
}
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setCommandBufferCount(&self, uint commandBufferCount) {
   self.commandBufferCount = commandBufferCount;
   return *self;
}
fn CommandBufferInheritanceInfo commandBufferInheritanceInfo() => CommandBufferInheritanceInfo { .sType = STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO, .pNext = null };
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setRenderPass(&self, RenderPass renderPass) {
   self.renderPass = renderPass;
   return *self;
}
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setSubpass(&self, uint subpass) {
   self.subpass = subpass;
   return *self;
}
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setFramebuffer(&self, Framebuffer framebuffer) {
   self.framebuffer = framebuffer;
   return *self;
}
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setOcclusionQueryEnable(&self, uint occlusionQueryEnable) {
   self.occlusionQueryEnable = occlusionQueryEnable;
   return *self;
}
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setQueryFlags(&self, QueryControlFlags queryFlags) {
   self.queryFlags = queryFlags;
   return *self;
}
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setPipelineStatistics(&self, QueryPipelineStatisticFlags pipelineStatistics) {
   self.pipelineStatistics = pipelineStatistics;
   return *self;
}
fn CommandBufferBeginInfo commandBufferBeginInfo() => CommandBufferBeginInfo { .sType = STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO, .pNext = null };
fn CommandBufferBeginInfo CommandBufferBeginInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CommandBufferBeginInfo CommandBufferBeginInfo.setFlags(&self, CommandBufferUsageFlags flags) {
   self.flags = flags;
   return *self;
}
fn CommandBufferBeginInfo CommandBufferBeginInfo.setInheritanceInfo(&self, CommandBufferInheritanceInfo* pInheritanceInfo) {
   self.pInheritanceInfo = pInheritanceInfo;
   return *self;
}
fn RenderPassBeginInfo renderPassBeginInfo() => RenderPassBeginInfo { .sType = STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO, .pNext = null };
fn RenderPassBeginInfo RenderPassBeginInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderPassBeginInfo RenderPassBeginInfo.setRenderPass(&self, RenderPass renderPass) {
   self.renderPass = renderPass;
   return *self;
}
fn RenderPassBeginInfo RenderPassBeginInfo.setFramebuffer(&self, Framebuffer framebuffer) {
   self.framebuffer = framebuffer;
   return *self;
}
fn RenderPassBeginInfo RenderPassBeginInfo.setRenderArea(&self, Rect2D renderArea) {
   self.renderArea = renderArea;
   return *self;
}
fn RenderPassBeginInfo RenderPassBeginInfo.setClearValueCount(&self, uint clearValueCount) {
   self.clearValueCount = clearValueCount;
   return *self;
}
fn RenderPassBeginInfo RenderPassBeginInfo.setClearValues(&self, ClearValue[] pClearValues) {
   self.clearValueCount= (uint)pClearValues.len;
   self.pClearValues = &pClearValues[0];
   return *self;
}
fn RenderPassCreateInfo renderPassCreateInfo() => RenderPassCreateInfo { .sType = STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO, .pNext = null };
fn RenderPassCreateInfo RenderPassCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setFlags(&self, RenderPassCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setAttachmentCount(&self, uint attachmentCount) {
   self.attachmentCount = attachmentCount;
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setAttachments(&self, AttachmentDescription[] pAttachments) {
   self.attachmentCount= (uint)pAttachments.len;
   self.pAttachments = &pAttachments[0];
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setSubpassCount(&self, uint subpassCount) {
   self.subpassCount = subpassCount;
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setSubpasses(&self, SubpassDescription[] pSubpasses) {
   self.subpassCount= (uint)pSubpasses.len;
   self.pSubpasses = &pSubpasses[0];
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setDependencyCount(&self, uint dependencyCount) {
   self.dependencyCount = dependencyCount;
   return *self;
}
fn RenderPassCreateInfo RenderPassCreateInfo.setDependencies(&self, SubpassDependency[] pDependencies) {
   self.dependencyCount= (uint)pDependencies.len;
   self.pDependencies = &pDependencies[0];
   return *self;
}
fn EventCreateInfo eventCreateInfo() => EventCreateInfo { .sType = STRUCTURE_TYPE_EVENT_CREATE_INFO, .pNext = null };
fn EventCreateInfo EventCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn EventCreateInfo EventCreateInfo.setFlags(&self, EventCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn FenceCreateInfo fenceCreateInfo() => FenceCreateInfo { .sType = STRUCTURE_TYPE_FENCE_CREATE_INFO, .pNext = null };
fn FenceCreateInfo FenceCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn FenceCreateInfo FenceCreateInfo.setFlags(&self, FenceCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn SemaphoreCreateInfo semaphoreCreateInfo() => SemaphoreCreateInfo { .sType = STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO, .pNext = null };
fn SemaphoreCreateInfo SemaphoreCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SemaphoreCreateInfo SemaphoreCreateInfo.setFlags(&self, SemaphoreCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn QueryPoolCreateInfo queryPoolCreateInfo() => QueryPoolCreateInfo { .sType = STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO, .pNext = null };
fn QueryPoolCreateInfo QueryPoolCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn QueryPoolCreateInfo QueryPoolCreateInfo.setFlags(&self, QueryPoolCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn QueryPoolCreateInfo QueryPoolCreateInfo.setQueryType(&self, QueryType queryType) {
   self.queryType = queryType;
   return *self;
}
fn QueryPoolCreateInfo QueryPoolCreateInfo.setQueryCount(&self, uint queryCount) {
   self.queryCount = queryCount;
   return *self;
}
fn QueryPoolCreateInfo QueryPoolCreateInfo.setPipelineStatistics(&self, QueryPipelineStatisticFlags pipelineStatistics) {
   self.pipelineStatistics = pipelineStatistics;
   return *self;
}
fn FramebufferCreateInfo framebufferCreateInfo() => FramebufferCreateInfo { .sType = STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO, .pNext = null };
fn FramebufferCreateInfo FramebufferCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setFlags(&self, FramebufferCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setRenderPass(&self, RenderPass renderPass) {
   self.renderPass = renderPass;
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setAttachmentCount(&self, uint attachmentCount) {
   self.attachmentCount = attachmentCount;
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setAttachments(&self, ImageView[] pAttachments) {
   self.attachmentCount= (uint)pAttachments.len;
   self.pAttachments = &pAttachments[0];
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setWidth(&self, uint width) {
   self.width = width;
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setHeight(&self, uint height) {
   self.height = height;
   return *self;
}
fn FramebufferCreateInfo FramebufferCreateInfo.setLayers(&self, uint layers) {
   self.layers = layers;
   return *self;
}
fn SubmitInfo submitInfo() => SubmitInfo { .sType = STRUCTURE_TYPE_SUBMIT_INFO, .pNext = null };
fn SubmitInfo SubmitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SubmitInfo SubmitInfo.setWaitSemaphoreCount(&self, uint waitSemaphoreCount) {
   self.waitSemaphoreCount = waitSemaphoreCount;
   return *self;
}
fn SubmitInfo SubmitInfo.setWaitSemaphores(&self, Semaphore[] pWaitSemaphores) {
   self.waitSemaphoreCount= (uint)pWaitSemaphores.len;
   self.pWaitSemaphores = &pWaitSemaphores[0];
   return *self;
}
fn SubmitInfo SubmitInfo.setWaitDstStageMask(&self, PipelineStageFlags[] pWaitDstStageMask) {
   self.waitSemaphoreCount= (uint)pWaitDstStageMask.len;
   self.pWaitDstStageMask = &pWaitDstStageMask[0];
   return *self;
}
fn SubmitInfo SubmitInfo.setCommandBufferCount(&self, uint commandBufferCount) {
   self.commandBufferCount = commandBufferCount;
   return *self;
}
fn SubmitInfo SubmitInfo.setCommandBuffers(&self, CommandBuffer[] pCommandBuffers) {
   self.commandBufferCount= (uint)pCommandBuffers.len;
   self.pCommandBuffers = &pCommandBuffers[0];
   return *self;
}
fn SubmitInfo SubmitInfo.setSignalSemaphoreCount(&self, uint signalSemaphoreCount) {
   self.signalSemaphoreCount = signalSemaphoreCount;
   return *self;
}
fn SubmitInfo SubmitInfo.setSignalSemaphores(&self, Semaphore[] pSignalSemaphores) {
   self.signalSemaphoreCount= (uint)pSignalSemaphores.len;
   self.pSignalSemaphores = &pSignalSemaphores[0];
   return *self;
}
fn DisplayModeCreateInfoKHR displayModeCreateInfo() => DisplayModeCreateInfoKHR { .sType = STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR, .pNext = null };
fn DisplayModeCreateInfoKHR DisplayModeCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DisplayModeCreateInfoKHR DisplayModeCreateInfoKHR.setFlags(&self, DisplayModeCreateFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn DisplayModeCreateInfoKHR DisplayModeCreateInfoKHR.setParameters(&self, DisplayModeParametersKHR parameters) {
   self.parameters = parameters;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR displaySurfaceCreateInfo() => DisplaySurfaceCreateInfoKHR { .sType = STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR, .pNext = null };
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setFlags(&self, DisplaySurfaceCreateFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setDisplayMode(&self, DisplayModeKHR displayMode) {
   self.displayMode = displayMode;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setPlaneIndex(&self, uint planeIndex) {
   self.planeIndex = planeIndex;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setPlaneStackIndex(&self, uint planeStackIndex) {
   self.planeStackIndex = planeStackIndex;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setTransform(&self, SurfaceTransformFlagBitsKHR transform) {
   self.transform = transform;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setGlobalAlpha(&self, float globalAlpha) {
   self.globalAlpha = globalAlpha;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setAlphaMode(&self, DisplayPlaneAlphaFlagBitsKHR alphaMode) {
   self.alphaMode = alphaMode;
   return *self;
}
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setImageExtent(&self, Extent2D imageExtent) {
   self.imageExtent = imageExtent;
   return *self;
}
fn Win32SurfaceCreateInfoKHR win32SurfaceCreateInfo() => Win32SurfaceCreateInfoKHR { .sType = STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR, .pNext = null };
fn Win32SurfaceCreateInfoKHR Win32SurfaceCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn Win32SurfaceCreateInfoKHR Win32SurfaceCreateInfoKHR.setFlags(&self, Win32SurfaceCreateFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn Win32SurfaceCreateInfoKHR Win32SurfaceCreateInfoKHR.setHinstance(&self, Hinstance hinstance) {
   self.hinstance = hinstance;
   return *self;
}
fn Win32SurfaceCreateInfoKHR Win32SurfaceCreateInfoKHR.setHwnd(&self, Hwnd hwnd) {
   self.hwnd = hwnd;
   return *self;
}
fn XlibSurfaceCreateInfoKHR xlibSurfaceCreateInfo() => XlibSurfaceCreateInfoKHR { .sType = STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR, .pNext = null };
fn XlibSurfaceCreateInfoKHR XlibSurfaceCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn XlibSurfaceCreateInfoKHR XlibSurfaceCreateInfoKHR.setFlags(&self, XlibSurfaceCreateFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn XlibSurfaceCreateInfoKHR XlibSurfaceCreateInfoKHR.setPy(&self, Display* dpy) {
   self.dpy = dpy;
   return *self;
}
fn XlibSurfaceCreateInfoKHR XlibSurfaceCreateInfoKHR.setWindow(&self, Window window) {
   self.window = window;
   return *self;
}
fn XcbSurfaceCreateInfoKHR xcbSurfaceCreateInfo() => XcbSurfaceCreateInfoKHR { .sType = STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR, .pNext = null };
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setFlags(&self, XcbSurfaceCreateFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setOnnection(&self, Connection* connection) {
   self.connection = connection;
   return *self;
}
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setWindow(&self, Window window) {
   self.window = window;
   return *self;
}
fn SwapchainCreateInfoKHR swapchainCreateInfo() => SwapchainCreateInfoKHR { .sType = STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR, .pNext = null };
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setFlags(&self, SwapchainCreateFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setSurface(&self, SurfaceKHR surface) {
   self.surface = surface;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setMinImageCount(&self, uint minImageCount) {
   self.minImageCount = minImageCount;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageFormat(&self, Format imageFormat) {
   self.imageFormat = imageFormat;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageColorSpace(&self, ColorSpaceKHR imageColorSpace) {
   self.imageColorSpace = imageColorSpace;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageExtent(&self, Extent2D imageExtent) {
   self.imageExtent = imageExtent;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageArrayLayers(&self, uint imageArrayLayers) {
   self.imageArrayLayers = imageArrayLayers;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageUsage(&self, ImageUsageFlags imageUsage) {
   self.imageUsage = imageUsage;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageSharingMode(&self, SharingMode imageSharingMode) {
   self.imageSharingMode = imageSharingMode;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setQueueFamilyIndexCount(&self, uint queueFamilyIndexCount) {
   self.queueFamilyIndexCount = queueFamilyIndexCount;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setQueueFamilyIndices(&self, uint[] pQueueFamilyIndices) {
   self.queueFamilyIndexCount= (uint)pQueueFamilyIndices.len;
   self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setPreTransform(&self, SurfaceTransformFlagBitsKHR preTransform) {
   self.preTransform = preTransform;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setCompositeAlpha(&self, CompositeAlphaFlagBitsKHR compositeAlpha) {
   self.compositeAlpha = compositeAlpha;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setPresentMode(&self, PresentModeKHR presentMode) {
   self.presentMode = presentMode;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setClipped(&self, uint clipped) {
   self.clipped = clipped;
   return *self;
}
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setOldSwapchain(&self, SwapchainKHR oldSwapchain) {
   self.oldSwapchain = oldSwapchain;
   return *self;
}
fn PresentInfoKHR presentInfo() => PresentInfoKHR { .sType = STRUCTURE_TYPE_PRESENT_INFO_KHR, .pNext = null };
fn PresentInfoKHR PresentInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PresentInfoKHR PresentInfoKHR.setWaitSemaphoreCount(&self, uint waitSemaphoreCount) {
   self.waitSemaphoreCount = waitSemaphoreCount;
   return *self;
}
fn PresentInfoKHR PresentInfoKHR.setWaitSemaphores(&self, Semaphore[] pWaitSemaphores) {
   self.waitSemaphoreCount= (uint)pWaitSemaphores.len;
   self.pWaitSemaphores = &pWaitSemaphores[0];
   return *self;
}
fn PresentInfoKHR PresentInfoKHR.setSwapchainCount(&self, uint swapchainCount) {
   self.swapchainCount = swapchainCount;
   return *self;
}
fn PresentInfoKHR PresentInfoKHR.setSwapchains(&self, SwapchainKHR[] pSwapchains) {
   self.swapchainCount= (uint)pSwapchains.len;
   self.pSwapchains = &pSwapchains[0];
   return *self;
}
fn PresentInfoKHR PresentInfoKHR.setImageIndices(&self, uint[] pImageIndices) {
   self.swapchainCount= (uint)pImageIndices.len;
   self.pImageIndices = &pImageIndices[0];
   return *self;
}
fn PresentInfoKHR PresentInfoKHR.setResults(&self, Result[] pResults) {
   self.swapchainCount= (uint)pResults.len;
   self.pResults = &pResults[0];
   return *self;
}
fn DebugReportCallbackCreateInfoEXT debugReportCallbackCreateInfoEXT() => DebugReportCallbackCreateInfoEXT { .sType = STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT, .pNext = null };
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setFlags(&self, DebugReportFlagsEXT flags) {
   self.flags = flags;
   return *self;
}
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setPfnCallback(&self, PFN_vkDebugReportCallbackEXT pfnCallback) {
   self.pfnCallback = pfnCallback;
   return *self;
}
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setUserData(&self, void* pUserData) {
   self.pUserData = pUserData;
   return *self;
}
fn DevicePrivateDataCreateInfo devicePrivateDataCreateInfo() => DevicePrivateDataCreateInfo { .sType = STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO, .pNext = null };
fn DevicePrivateDataCreateInfo DevicePrivateDataCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DevicePrivateDataCreateInfo DevicePrivateDataCreateInfo.setPrivateDataSlotRequestCount(&self, uint privateDataSlotRequestCount) {
   self.privateDataSlotRequestCount = privateDataSlotRequestCount;
   return *self;
}
fn PrivateDataSlotCreateInfo privateDataSlotCreateInfo() => PrivateDataSlotCreateInfo { .sType = STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO, .pNext = null };
fn PrivateDataSlotCreateInfo PrivateDataSlotCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PrivateDataSlotCreateInfo PrivateDataSlotCreateInfo.setFlags(&self, PrivateDataSlotCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PhysicalDevicePrivateDataFeatures physicalDevicePrivateDataFeatures() => PhysicalDevicePrivateDataFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES, .pNext = null };
fn PhysicalDevicePrivateDataFeatures PhysicalDevicePrivateDataFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevicePrivateDataFeatures PhysicalDevicePrivateDataFeatures.setPrivateData(&self, uint privateData) {
   self.privateData = privateData;
   return *self;
}
fn PhysicalDeviceFeatures2 physicalDeviceFeatures2() => PhysicalDeviceFeatures2 { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2, .pNext = null };
fn PhysicalDeviceFeatures2 PhysicalDeviceFeatures2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceFeatures2 PhysicalDeviceFeatures2.setFeatures(&self, PhysicalDeviceFeatures features) {
   self.features = features;
   return *self;
}
fn PhysicalDeviceProperties2 physicalDeviceProperties2() => PhysicalDeviceProperties2 { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2, .pNext = null };
fn PhysicalDeviceProperties2 PhysicalDeviceProperties2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceProperties2 PhysicalDeviceProperties2.setProperties(&self, PhysicalDeviceProperties properties) {
   self.properties = properties;
   return *self;
}
fn FormatProperties2 formatProperties2() => FormatProperties2 { .sType = STRUCTURE_TYPE_FORMAT_PROPERTIES_2, .pNext = null };
fn FormatProperties2 FormatProperties2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn FormatProperties2 FormatProperties2.setFormatProperties(&self, FormatProperties formatProperties) {
   self.formatProperties = formatProperties;
   return *self;
}
fn ImageFormatProperties2 imageFormatProperties2() => ImageFormatProperties2 { .sType = STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2, .pNext = null };
fn ImageFormatProperties2 ImageFormatProperties2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageFormatProperties2 ImageFormatProperties2.setImageFormatProperties(&self, ImageFormatProperties imageFormatProperties) {
   self.imageFormatProperties = imageFormatProperties;
   return *self;
}
fn PhysicalDeviceImageFormatInfo2 physicalDeviceImageFormatInfo2() => PhysicalDeviceImageFormatInfo2 { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2, .pNext = null };
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setType(&self, ImageType type) {
   self.type = type;
   return *self;
}
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setTiling(&self, ImageTiling tiling) {
   self.tiling = tiling;
   return *self;
}
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setUsage(&self, ImageUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setFlags(&self, ImageCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn QueueFamilyProperties2 queueFamilyProperties2() => QueueFamilyProperties2 { .sType = STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2, .pNext = null };
fn QueueFamilyProperties2 QueueFamilyProperties2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn QueueFamilyProperties2 QueueFamilyProperties2.setQueueFamilyProperties(&self, QueueFamilyProperties queueFamilyProperties) {
   self.queueFamilyProperties = queueFamilyProperties;
   return *self;
}
fn PhysicalDeviceMemoryProperties2 physicalDeviceMemoryProperties2() => PhysicalDeviceMemoryProperties2 { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2, .pNext = null };
fn PhysicalDeviceMemoryProperties2 PhysicalDeviceMemoryProperties2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceMemoryProperties2 PhysicalDeviceMemoryProperties2.setMemoryProperties(&self, PhysicalDeviceMemoryProperties memoryProperties) {
   self.memoryProperties = memoryProperties;
   return *self;
}
fn SparseImageFormatProperties2 sparseImageFormatProperties2() => SparseImageFormatProperties2 { .sType = STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2, .pNext = null };
fn SparseImageFormatProperties2 SparseImageFormatProperties2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SparseImageFormatProperties2 SparseImageFormatProperties2.setProperties(&self, SparseImageFormatProperties properties) {
   self.properties = properties;
   return *self;
}
fn PhysicalDeviceSparseImageFormatInfo2 physicalDeviceSparseImageFormatInfo2() => PhysicalDeviceSparseImageFormatInfo2 { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2, .pNext = null };
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setType(&self, ImageType type) {
   self.type = type;
   return *self;
}
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setSamples(&self, SampleCountFlagBits samples) {
   self.samples = samples;
   return *self;
}
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setUsage(&self, ImageUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setTiling(&self, ImageTiling tiling) {
   self.tiling = tiling;
   return *self;
}
fn PhysicalDevicePushDescriptorPropertiesKHR physicalDevicePushDescriptorProperties() => PhysicalDevicePushDescriptorPropertiesKHR { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR, .pNext = null };
fn PhysicalDevicePushDescriptorPropertiesKHR PhysicalDevicePushDescriptorPropertiesKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevicePushDescriptorPropertiesKHR PhysicalDevicePushDescriptorPropertiesKHR.setMaxPushDescriptors(&self, uint maxPushDescriptors) {
   self.maxPushDescriptors = maxPushDescriptors;
   return *self;
}
fn PhysicalDeviceDriverProperties physicalDeviceDriverProperties() => PhysicalDeviceDriverProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES, .pNext = null };
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setDriverID(&self, DriverId driverID) {
   self.driverID = driverID;
   return *self;
}
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setDriverName(&self, char[MAX_DRIVER_NAME_SIZE] driverName) {
   self.driverName = driverName;
   return *self;
}
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setDriverInfo(&self, char[MAX_DRIVER_INFO_SIZE] driverInfo) {
   self.driverInfo = driverInfo;
   return *self;
}
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setConformanceVersion(&self, ConformanceVersion conformanceVersion) {
   self.conformanceVersion = conformanceVersion;
   return *self;
}
fn PhysicalDeviceVariablePointersFeatures physicalDeviceVariablePointersFeatures() => PhysicalDeviceVariablePointersFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES, .pNext = null };
fn PhysicalDeviceVariablePointersFeatures PhysicalDeviceVariablePointersFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVariablePointersFeatures PhysicalDeviceVariablePointersFeatures.setVariablePointersStorageBuffer(&self, uint variablePointersStorageBuffer) {
   self.variablePointersStorageBuffer = variablePointersStorageBuffer;
   return *self;
}
fn PhysicalDeviceVariablePointersFeatures PhysicalDeviceVariablePointersFeatures.setVariablePointers(&self, uint variablePointers) {
   self.variablePointers = variablePointers;
   return *self;
}
fn PhysicalDeviceExternalImageFormatInfo physicalDeviceExternalImageFormatInfo() => PhysicalDeviceExternalImageFormatInfo { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO, .pNext = null };
fn PhysicalDeviceExternalImageFormatInfo PhysicalDeviceExternalImageFormatInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceExternalImageFormatInfo PhysicalDeviceExternalImageFormatInfo.setHandleType(&self, ExternalMemoryHandleTypeFlagBits handleType) {
   self.handleType = handleType;
   return *self;
}
fn ExternalImageFormatProperties externalImageFormatProperties() => ExternalImageFormatProperties { .sType = STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES, .pNext = null };
fn ExternalImageFormatProperties ExternalImageFormatProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExternalImageFormatProperties ExternalImageFormatProperties.setExternalMemoryProperties(&self, ExternalMemoryProperties externalMemoryProperties) {
   self.externalMemoryProperties = externalMemoryProperties;
   return *self;
}
fn PhysicalDeviceExternalBufferInfo physicalDeviceExternalBufferInfo() => PhysicalDeviceExternalBufferInfo { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO, .pNext = null };
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setFlags(&self, BufferCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setUsage(&self, BufferUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setHandleType(&self, ExternalMemoryHandleTypeFlagBits handleType) {
   self.handleType = handleType;
   return *self;
}
fn ExternalBufferProperties externalBufferProperties() => ExternalBufferProperties { .sType = STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES, .pNext = null };
fn ExternalBufferProperties ExternalBufferProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExternalBufferProperties ExternalBufferProperties.setExternalMemoryProperties(&self, ExternalMemoryProperties externalMemoryProperties) {
   self.externalMemoryProperties = externalMemoryProperties;
   return *self;
}
fn PhysicalDeviceIDProperties physicalDeviceIDProperties() => PhysicalDeviceIDProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES, .pNext = null };
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceUUID(&self, uint[UUID_SIZE] deviceUUID) {
   self.deviceUUID = deviceUUID;
   return *self;
}
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDriverUUID(&self, uint[UUID_SIZE] driverUUID) {
   self.driverUUID = driverUUID;
   return *self;
}
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceLUID(&self, uint[LUID_SIZE] deviceLUID) {
   self.deviceLUID = deviceLUID;
   return *self;
}
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceNodeMask(&self, uint deviceNodeMask) {
   self.deviceNodeMask = deviceNodeMask;
   return *self;
}
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceLUIDValid(&self, uint deviceLUIDValid) {
   self.deviceLUIDValid = deviceLUIDValid;
   return *self;
}
fn ExternalMemoryImageCreateInfo externalMemoryImageCreateInfo() => ExternalMemoryImageCreateInfo { .sType = STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO, .pNext = null };
fn ExternalMemoryImageCreateInfo ExternalMemoryImageCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExternalMemoryImageCreateInfo ExternalMemoryImageCreateInfo.setHandleTypes(&self, ExternalMemoryHandleTypeFlags handleTypes) {
   self.handleTypes = handleTypes;
   return *self;
}
fn ExternalMemoryBufferCreateInfo externalMemoryBufferCreateInfo() => ExternalMemoryBufferCreateInfo { .sType = STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO, .pNext = null };
fn ExternalMemoryBufferCreateInfo ExternalMemoryBufferCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExternalMemoryBufferCreateInfo ExternalMemoryBufferCreateInfo.setHandleTypes(&self, ExternalMemoryHandleTypeFlags handleTypes) {
   self.handleTypes = handleTypes;
   return *self;
}
fn ExportMemoryAllocateInfo exportMemoryAllocateInfo() => ExportMemoryAllocateInfo { .sType = STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO, .pNext = null };
fn ExportMemoryAllocateInfo ExportMemoryAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExportMemoryAllocateInfo ExportMemoryAllocateInfo.setHandleTypes(&self, ExternalMemoryHandleTypeFlags handleTypes) {
   self.handleTypes = handleTypes;
   return *self;
}
fn PhysicalDeviceExternalSemaphoreInfo physicalDeviceExternalSemaphoreInfo() => PhysicalDeviceExternalSemaphoreInfo { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO, .pNext = null };
fn PhysicalDeviceExternalSemaphoreInfo PhysicalDeviceExternalSemaphoreInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceExternalSemaphoreInfo PhysicalDeviceExternalSemaphoreInfo.setHandleType(&self, ExternalSemaphoreHandleTypeFlagBits handleType) {
   self.handleType = handleType;
   return *self;
}
fn ExternalSemaphoreProperties externalSemaphoreProperties() => ExternalSemaphoreProperties { .sType = STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES, .pNext = null };
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setExportFromImportedHandleTypes(&self, ExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes) {
   self.exportFromImportedHandleTypes = exportFromImportedHandleTypes;
   return *self;
}
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setCompatibleHandleTypes(&self, ExternalSemaphoreHandleTypeFlags compatibleHandleTypes) {
   self.compatibleHandleTypes = compatibleHandleTypes;
   return *self;
}
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setExternalSemaphoreFeatures(&self, ExternalSemaphoreFeatureFlags externalSemaphoreFeatures) {
   self.externalSemaphoreFeatures = externalSemaphoreFeatures;
   return *self;
}
fn ExportSemaphoreCreateInfo exportSemaphoreCreateInfo() => ExportSemaphoreCreateInfo { .sType = STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO, .pNext = null };
fn ExportSemaphoreCreateInfo ExportSemaphoreCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExportSemaphoreCreateInfo ExportSemaphoreCreateInfo.setHandleTypes(&self, ExternalSemaphoreHandleTypeFlags handleTypes) {
   self.handleTypes = handleTypes;
   return *self;
}
fn PhysicalDeviceExternalFenceInfo physicalDeviceExternalFenceInfo() => PhysicalDeviceExternalFenceInfo { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO, .pNext = null };
fn PhysicalDeviceExternalFenceInfo PhysicalDeviceExternalFenceInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceExternalFenceInfo PhysicalDeviceExternalFenceInfo.setHandleType(&self, ExternalFenceHandleTypeFlagBits handleType) {
   self.handleType = handleType;
   return *self;
}
fn ExternalFenceProperties externalFenceProperties() => ExternalFenceProperties { .sType = STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES, .pNext = null };
fn ExternalFenceProperties ExternalFenceProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExternalFenceProperties ExternalFenceProperties.setExportFromImportedHandleTypes(&self, ExternalFenceHandleTypeFlags exportFromImportedHandleTypes) {
   self.exportFromImportedHandleTypes = exportFromImportedHandleTypes;
   return *self;
}
fn ExternalFenceProperties ExternalFenceProperties.setCompatibleHandleTypes(&self, ExternalFenceHandleTypeFlags compatibleHandleTypes) {
   self.compatibleHandleTypes = compatibleHandleTypes;
   return *self;
}
fn ExternalFenceProperties ExternalFenceProperties.setExternalFenceFeatures(&self, ExternalFenceFeatureFlags externalFenceFeatures) {
   self.externalFenceFeatures = externalFenceFeatures;
   return *self;
}
fn ExportFenceCreateInfo exportFenceCreateInfo() => ExportFenceCreateInfo { .sType = STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO, .pNext = null };
fn ExportFenceCreateInfo ExportFenceCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ExportFenceCreateInfo ExportFenceCreateInfo.setHandleTypes(&self, ExternalFenceHandleTypeFlags handleTypes) {
   self.handleTypes = handleTypes;
   return *self;
}
fn PhysicalDeviceMultiviewFeatures physicalDeviceMultiviewFeatures() => PhysicalDeviceMultiviewFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES, .pNext = null };
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setMultiview(&self, uint multiview) {
   self.multiview = multiview;
   return *self;
}
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setMultiviewGeometryShader(&self, uint multiviewGeometryShader) {
   self.multiviewGeometryShader = multiviewGeometryShader;
   return *self;
}
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setMultiviewTessellationShader(&self, uint multiviewTessellationShader) {
   self.multiviewTessellationShader = multiviewTessellationShader;
   return *self;
}
fn PhysicalDeviceMultiviewProperties physicalDeviceMultiviewProperties() => PhysicalDeviceMultiviewProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES, .pNext = null };
fn PhysicalDeviceMultiviewProperties PhysicalDeviceMultiviewProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceMultiviewProperties PhysicalDeviceMultiviewProperties.setMaxMultiviewViewCount(&self, uint maxMultiviewViewCount) {
   self.maxMultiviewViewCount = maxMultiviewViewCount;
   return *self;
}
fn PhysicalDeviceMultiviewProperties PhysicalDeviceMultiviewProperties.setMaxMultiviewInstanceIndex(&self, uint maxMultiviewInstanceIndex) {
   self.maxMultiviewInstanceIndex = maxMultiviewInstanceIndex;
   return *self;
}
fn RenderPassMultiviewCreateInfo renderPassMultiviewCreateInfo() => RenderPassMultiviewCreateInfo { .sType = STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO, .pNext = null };
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setSubpassCount(&self, uint subpassCount) {
   self.subpassCount = subpassCount;
   return *self;
}
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setViewMasks(&self, uint[] pViewMasks) {
   self.subpassCount= (uint)pViewMasks.len;
   self.pViewMasks = &pViewMasks[0];
   return *self;
}
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setDependencyCount(&self, uint dependencyCount) {
   self.dependencyCount = dependencyCount;
   return *self;
}
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setViewOffsets(&self, int[] pViewOffsets) {
   self.dependencyCount= (uint)pViewOffsets.len;
   self.pViewOffsets = &pViewOffsets[0];
   return *self;
}
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setCorrelationMaskCount(&self, uint correlationMaskCount) {
   self.correlationMaskCount = correlationMaskCount;
   return *self;
}
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setCorrelationMasks(&self, uint[] pCorrelationMasks) {
   self.correlationMaskCount= (uint)pCorrelationMasks.len;
   self.pCorrelationMasks = &pCorrelationMasks[0];
   return *self;
}
fn PhysicalDeviceGroupProperties physicalDeviceGroupProperties() => PhysicalDeviceGroupProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES, .pNext = null };
fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setPhysicalDeviceCount(&self, uint physicalDeviceCount) {
   self.physicalDeviceCount = physicalDeviceCount;
   return *self;
}
fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setPhysicalDevices(&self, PhysicalDevice[MAX_DEVICE_GROUP_SIZE] physicalDevices) {
   self.physicalDeviceCount= (uint)physicalDevices.len;
   self.physicalDevices = physicalDevices;
   return *self;
}
fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setSubsetAllocation(&self, uint subsetAllocation) {
   self.subsetAllocation = subsetAllocation;
   return *self;
}
fn MemoryAllocateFlagsInfo memoryAllocateFlagsInfo() => MemoryAllocateFlagsInfo { .sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .pNext = null };
fn MemoryAllocateFlagsInfo MemoryAllocateFlagsInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryAllocateFlagsInfo MemoryAllocateFlagsInfo.setFlags(&self, MemoryAllocateFlags flags) {
   self.flags = flags;
   return *self;
}
fn MemoryAllocateFlagsInfo MemoryAllocateFlagsInfo.setDeviceMask(&self, uint deviceMask) {
   self.deviceMask = deviceMask;
   return *self;
}
fn BindBufferMemoryInfo bindBufferMemoryInfo() => BindBufferMemoryInfo { .sType = STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO, .pNext = null };
fn BindBufferMemoryInfo BindBufferMemoryInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BindBufferMemoryInfo BindBufferMemoryInfo.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn BindBufferMemoryInfo BindBufferMemoryInfo.setMemory(&self, DeviceMemory memory) {
   self.memory = memory;
   return *self;
}
fn BindBufferMemoryInfo BindBufferMemoryInfo.setMemoryOffset(&self, DeviceSize memoryOffset) {
   self.memoryOffset = memoryOffset;
   return *self;
}
fn BindBufferMemoryDeviceGroupInfo bindBufferMemoryDeviceGroupInfo() => BindBufferMemoryDeviceGroupInfo { .sType = STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO, .pNext = null };
fn BindBufferMemoryDeviceGroupInfo BindBufferMemoryDeviceGroupInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BindBufferMemoryDeviceGroupInfo BindBufferMemoryDeviceGroupInfo.setDeviceIndexCount(&self, uint deviceIndexCount) {
   self.deviceIndexCount = deviceIndexCount;
   return *self;
}
fn BindBufferMemoryDeviceGroupInfo BindBufferMemoryDeviceGroupInfo.setDeviceIndices(&self, uint[] pDeviceIndices) {
   self.deviceIndexCount= (uint)pDeviceIndices.len;
   self.pDeviceIndices = &pDeviceIndices[0];
   return *self;
}
fn BindImageMemoryInfo bindImageMemoryInfo() => BindImageMemoryInfo { .sType = STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO, .pNext = null };
fn BindImageMemoryInfo BindImageMemoryInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BindImageMemoryInfo BindImageMemoryInfo.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn BindImageMemoryInfo BindImageMemoryInfo.setMemory(&self, DeviceMemory memory) {
   self.memory = memory;
   return *self;
}
fn BindImageMemoryInfo BindImageMemoryInfo.setMemoryOffset(&self, DeviceSize memoryOffset) {
   self.memoryOffset = memoryOffset;
   return *self;
}
fn BindImageMemoryDeviceGroupInfo bindImageMemoryDeviceGroupInfo() => BindImageMemoryDeviceGroupInfo { .sType = STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO, .pNext = null };
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setDeviceIndexCount(&self, uint deviceIndexCount) {
   self.deviceIndexCount = deviceIndexCount;
   return *self;
}
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setDeviceIndices(&self, uint[] pDeviceIndices) {
   self.deviceIndexCount= (uint)pDeviceIndices.len;
   self.pDeviceIndices = &pDeviceIndices[0];
   return *self;
}
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setSplitInstanceBindRegionCount(&self, uint splitInstanceBindRegionCount) {
   self.splitInstanceBindRegionCount = splitInstanceBindRegionCount;
   return *self;
}
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setSplitInstanceBindRegions(&self, Rect2D[] pSplitInstanceBindRegions) {
   self.splitInstanceBindRegionCount= (uint)pSplitInstanceBindRegions.len;
   self.pSplitInstanceBindRegions = &pSplitInstanceBindRegions[0];
   return *self;
}
fn DeviceGroupRenderPassBeginInfo deviceGroupRenderPassBeginInfo() => DeviceGroupRenderPassBeginInfo { .sType = STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO, .pNext = null };
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setDeviceMask(&self, uint deviceMask) {
   self.deviceMask = deviceMask;
   return *self;
}
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setDeviceRenderAreaCount(&self, uint deviceRenderAreaCount) {
   self.deviceRenderAreaCount = deviceRenderAreaCount;
   return *self;
}
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setDeviceRenderAreas(&self, Rect2D[] pDeviceRenderAreas) {
   self.deviceRenderAreaCount= (uint)pDeviceRenderAreas.len;
   self.pDeviceRenderAreas = &pDeviceRenderAreas[0];
   return *self;
}
fn DeviceGroupCommandBufferBeginInfo deviceGroupCommandBufferBeginInfo() => DeviceGroupCommandBufferBeginInfo { .sType = STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO, .pNext = null };
fn DeviceGroupCommandBufferBeginInfo DeviceGroupCommandBufferBeginInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceGroupCommandBufferBeginInfo DeviceGroupCommandBufferBeginInfo.setDeviceMask(&self, uint deviceMask) {
   self.deviceMask = deviceMask;
   return *self;
}
fn DeviceGroupSubmitInfo deviceGroupSubmitInfo() => DeviceGroupSubmitInfo { .sType = STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO, .pNext = null };
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setWaitSemaphoreCount(&self, uint waitSemaphoreCount) {
   self.waitSemaphoreCount = waitSemaphoreCount;
   return *self;
}
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setWaitSemaphoreDeviceIndices(&self, uint[] pWaitSemaphoreDeviceIndices) {
   self.waitSemaphoreCount= (uint)pWaitSemaphoreDeviceIndices.len;
   self.pWaitSemaphoreDeviceIndices = &pWaitSemaphoreDeviceIndices[0];
   return *self;
}
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setCommandBufferCount(&self, uint commandBufferCount) {
   self.commandBufferCount = commandBufferCount;
   return *self;
}
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setCommandBufferDeviceMasks(&self, uint[] pCommandBufferDeviceMasks) {
   self.commandBufferCount= (uint)pCommandBufferDeviceMasks.len;
   self.pCommandBufferDeviceMasks = &pCommandBufferDeviceMasks[0];
   return *self;
}
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setSignalSemaphoreCount(&self, uint signalSemaphoreCount) {
   self.signalSemaphoreCount = signalSemaphoreCount;
   return *self;
}
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setSignalSemaphoreDeviceIndices(&self, uint[] pSignalSemaphoreDeviceIndices) {
   self.signalSemaphoreCount= (uint)pSignalSemaphoreDeviceIndices.len;
   self.pSignalSemaphoreDeviceIndices = &pSignalSemaphoreDeviceIndices[0];
   return *self;
}
fn DeviceGroupBindSparseInfo deviceGroupBindSparseInfo() => DeviceGroupBindSparseInfo { .sType = STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO, .pNext = null };
fn DeviceGroupBindSparseInfo DeviceGroupBindSparseInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceGroupBindSparseInfo DeviceGroupBindSparseInfo.setResourceDeviceIndex(&self, uint resourceDeviceIndex) {
   self.resourceDeviceIndex = resourceDeviceIndex;
   return *self;
}
fn DeviceGroupBindSparseInfo DeviceGroupBindSparseInfo.setMemoryDeviceIndex(&self, uint memoryDeviceIndex) {
   self.memoryDeviceIndex = memoryDeviceIndex;
   return *self;
}
fn DeviceGroupDeviceCreateInfo deviceGroupDeviceCreateInfo() => DeviceGroupDeviceCreateInfo { .sType = STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO, .pNext = null };
fn DeviceGroupDeviceCreateInfo DeviceGroupDeviceCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceGroupDeviceCreateInfo DeviceGroupDeviceCreateInfo.setPhysicalDeviceCount(&self, uint physicalDeviceCount) {
   self.physicalDeviceCount = physicalDeviceCount;
   return *self;
}
fn DeviceGroupDeviceCreateInfo DeviceGroupDeviceCreateInfo.setPhysicalDevices(&self, PhysicalDevice[] pPhysicalDevices) {
   self.physicalDeviceCount= (uint)pPhysicalDevices.len;
   self.pPhysicalDevices = &pPhysicalDevices[0];
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo descriptorUpdateTemplateCreateInfo() => DescriptorUpdateTemplateCreateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO, .pNext = null };
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setFlags(&self, DescriptorUpdateTemplateCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setDescriptorUpdateEntryCount(&self, uint descriptorUpdateEntryCount) {
   self.descriptorUpdateEntryCount = descriptorUpdateEntryCount;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setDescriptorUpdateEntries(&self, DescriptorUpdateTemplateEntry[] pDescriptorUpdateEntries) {
   self.descriptorUpdateEntryCount= (uint)pDescriptorUpdateEntries.len;
   self.pDescriptorUpdateEntries = &pDescriptorUpdateEntries[0];
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setTemplateType(&self, DescriptorUpdateTemplateType templateType) {
   self.templateType = templateType;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setDescriptorSetLayout(&self, DescriptorSetLayout descriptorSetLayout) {
   self.descriptorSetLayout = descriptorSetLayout;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setPipelineBindPoint(&self, PipelineBindPoint pipelineBindPoint) {
   self.pipelineBindPoint = pipelineBindPoint;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setPipelineLayout(&self, PipelineLayout pipelineLayout) {
   self.pipelineLayout = pipelineLayout;
   return *self;
}
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setSet(&self, uint set) {
   self.set = set;
   return *self;
}
fn MacOSSurfaceCreateInfoMVK macOSSurfaceCreateInfoMVK() => MacOSSurfaceCreateInfoMVK { .sType = STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK, .pNext = null };
fn MacOSSurfaceCreateInfoMVK MacOSSurfaceCreateInfoMVK.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MacOSSurfaceCreateInfoMVK MacOSSurfaceCreateInfoMVK.setFlags(&self, MacOSSurfaceCreateFlagsMVK flags) {
   self.flags = flags;
   return *self;
}
fn MacOSSurfaceCreateInfoMVK MacOSSurfaceCreateInfoMVK.setView(&self, void* pView) {
   self.pView = pView;
   return *self;
}
fn RenderPassInputAttachmentAspectCreateInfo renderPassInputAttachmentAspectCreateInfo() => RenderPassInputAttachmentAspectCreateInfo { .sType = STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO, .pNext = null };
fn RenderPassInputAttachmentAspectCreateInfo RenderPassInputAttachmentAspectCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderPassInputAttachmentAspectCreateInfo RenderPassInputAttachmentAspectCreateInfo.setAspectReferenceCount(&self, uint aspectReferenceCount) {
   self.aspectReferenceCount = aspectReferenceCount;
   return *self;
}
fn RenderPassInputAttachmentAspectCreateInfo RenderPassInputAttachmentAspectCreateInfo.setAspectReferences(&self, InputAttachmentAspectReference[] pAspectReferences) {
   self.aspectReferenceCount= (uint)pAspectReferences.len;
   self.pAspectReferences = &pAspectReferences[0];
   return *self;
}
fn PhysicalDevice16BitStorageFeatures physicalDevice16BitStorageFeatures() => PhysicalDevice16BitStorageFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES, .pNext = null };
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setStorageBuffer16BitAccess(&self, uint storageBuffer16BitAccess) {
   self.storageBuffer16BitAccess = storageBuffer16BitAccess;
   return *self;
}
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setUniformAndStorageBuffer16BitAccess(&self, uint uniformAndStorageBuffer16BitAccess) {
   self.uniformAndStorageBuffer16BitAccess = uniformAndStorageBuffer16BitAccess;
   return *self;
}
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setStoragePushConstant16(&self, uint storagePushConstant16) {
   self.storagePushConstant16 = storagePushConstant16;
   return *self;
}
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setStorageInputOutput16(&self, uint storageInputOutput16) {
   self.storageInputOutput16 = storageInputOutput16;
   return *self;
}
fn PhysicalDeviceSubgroupProperties physicalDeviceSubgroupProperties() => PhysicalDeviceSubgroupProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES, .pNext = null };
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setSubgroupSize(&self, uint subgroupSize) {
   self.subgroupSize = subgroupSize;
   return *self;
}
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setSupportedStages(&self, ShaderStageFlags supportedStages) {
   self.supportedStages = supportedStages;
   return *self;
}
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setSupportedOperations(&self, SubgroupFeatureFlags supportedOperations) {
   self.supportedOperations = supportedOperations;
   return *self;
}
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setQuadOperationsInAllStages(&self, uint quadOperationsInAllStages) {
   self.quadOperationsInAllStages = quadOperationsInAllStages;
   return *self;
}
fn PhysicalDeviceShaderSubgroupExtendedTypesFeatures physicalDeviceShaderSubgroupExtendedTypesFeatures() => PhysicalDeviceShaderSubgroupExtendedTypesFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES, .pNext = null };
fn PhysicalDeviceShaderSubgroupExtendedTypesFeatures PhysicalDeviceShaderSubgroupExtendedTypesFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderSubgroupExtendedTypesFeatures PhysicalDeviceShaderSubgroupExtendedTypesFeatures.setShaderSubgroupExtendedTypes(&self, uint shaderSubgroupExtendedTypes) {
   self.shaderSubgroupExtendedTypes = shaderSubgroupExtendedTypes;
   return *self;
}
fn BufferMemoryRequirementsInfo2 bufferMemoryRequirementsInfo2() => BufferMemoryRequirementsInfo2 { .sType = STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2, .pNext = null };
fn BufferMemoryRequirementsInfo2 BufferMemoryRequirementsInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferMemoryRequirementsInfo2 BufferMemoryRequirementsInfo2.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn DeviceBufferMemoryRequirements deviceBufferMemoryRequirements() => DeviceBufferMemoryRequirements { .sType = STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS, .pNext = null };
fn DeviceBufferMemoryRequirements DeviceBufferMemoryRequirements.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceBufferMemoryRequirements DeviceBufferMemoryRequirements.setCreateInfo(&self, BufferCreateInfo* pCreateInfo) {
   self.pCreateInfo = pCreateInfo;
   return *self;
}
fn ImageMemoryRequirementsInfo2 imageMemoryRequirementsInfo2() => ImageMemoryRequirementsInfo2 { .sType = STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2, .pNext = null };
fn ImageMemoryRequirementsInfo2 ImageMemoryRequirementsInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageMemoryRequirementsInfo2 ImageMemoryRequirementsInfo2.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn ImageSparseMemoryRequirementsInfo2 imageSparseMemoryRequirementsInfo2() => ImageSparseMemoryRequirementsInfo2 { .sType = STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2, .pNext = null };
fn ImageSparseMemoryRequirementsInfo2 ImageSparseMemoryRequirementsInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageSparseMemoryRequirementsInfo2 ImageSparseMemoryRequirementsInfo2.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn DeviceImageMemoryRequirements deviceImageMemoryRequirements() => DeviceImageMemoryRequirements { .sType = STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS, .pNext = null };
fn DeviceImageMemoryRequirements DeviceImageMemoryRequirements.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceImageMemoryRequirements DeviceImageMemoryRequirements.setCreateInfo(&self, ImageCreateInfo* pCreateInfo) {
   self.pCreateInfo = pCreateInfo;
   return *self;
}
fn DeviceImageMemoryRequirements DeviceImageMemoryRequirements.setPlaneAspect(&self, ImageAspectFlagBits planeAspect) {
   self.planeAspect = planeAspect;
   return *self;
}
fn MemoryRequirements2 memoryRequirements2() => MemoryRequirements2 { .sType = STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2, .pNext = null };
fn MemoryRequirements2 MemoryRequirements2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryRequirements2 MemoryRequirements2.setMemoryRequirements(&self, MemoryRequirements memoryRequirements) {
   self.memoryRequirements = memoryRequirements;
   return *self;
}
fn SparseImageMemoryRequirements2 sparseImageMemoryRequirements2() => SparseImageMemoryRequirements2 { .sType = STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2, .pNext = null };
fn SparseImageMemoryRequirements2 SparseImageMemoryRequirements2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SparseImageMemoryRequirements2 SparseImageMemoryRequirements2.setMemoryRequirements(&self, SparseImageMemoryRequirements memoryRequirements) {
   self.memoryRequirements = memoryRequirements;
   return *self;
}
fn PhysicalDevicePointClippingProperties physicalDevicePointClippingProperties() => PhysicalDevicePointClippingProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES, .pNext = null };
fn PhysicalDevicePointClippingProperties PhysicalDevicePointClippingProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevicePointClippingProperties PhysicalDevicePointClippingProperties.setPointClippingBehavior(&self, PointClippingBehavior pointClippingBehavior) {
   self.pointClippingBehavior = pointClippingBehavior;
   return *self;
}
fn MemoryDedicatedRequirements memoryDedicatedRequirements() => MemoryDedicatedRequirements { .sType = STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS, .pNext = null };
fn MemoryDedicatedRequirements MemoryDedicatedRequirements.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryDedicatedRequirements MemoryDedicatedRequirements.setPrefersDedicatedAllocation(&self, uint prefersDedicatedAllocation) {
   self.prefersDedicatedAllocation = prefersDedicatedAllocation;
   return *self;
}
fn MemoryDedicatedRequirements MemoryDedicatedRequirements.setRequiresDedicatedAllocation(&self, uint requiresDedicatedAllocation) {
   self.requiresDedicatedAllocation = requiresDedicatedAllocation;
   return *self;
}
fn MemoryDedicatedAllocateInfo memoryDedicatedAllocateInfo() => MemoryDedicatedAllocateInfo { .sType = STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO, .pNext = null };
fn MemoryDedicatedAllocateInfo MemoryDedicatedAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryDedicatedAllocateInfo MemoryDedicatedAllocateInfo.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn MemoryDedicatedAllocateInfo MemoryDedicatedAllocateInfo.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn ImageViewUsageCreateInfo imageViewUsageCreateInfo() => ImageViewUsageCreateInfo { .sType = STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO, .pNext = null };
fn ImageViewUsageCreateInfo ImageViewUsageCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageViewUsageCreateInfo ImageViewUsageCreateInfo.setUsage(&self, ImageUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn PipelineTessellationDomainOriginStateCreateInfo pipelineTessellationDomainOriginStateCreateInfo() => PipelineTessellationDomainOriginStateCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO, .pNext = null };
fn PipelineTessellationDomainOriginStateCreateInfo PipelineTessellationDomainOriginStateCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineTessellationDomainOriginStateCreateInfo PipelineTessellationDomainOriginStateCreateInfo.setDomainOrigin(&self, TessellationDomainOrigin domainOrigin) {
   self.domainOrigin = domainOrigin;
   return *self;
}
fn SamplerYcbcrConversionInfo samplerYcbcrConversionInfo() => SamplerYcbcrConversionInfo { .sType = STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO, .pNext = null };
fn SamplerYcbcrConversionInfo SamplerYcbcrConversionInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SamplerYcbcrConversionInfo SamplerYcbcrConversionInfo.setConversion(&self, SamplerYcbcrConversion conversion) {
   self.conversion = conversion;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo samplerYcbcrConversionCreateInfo() => SamplerYcbcrConversionCreateInfo { .sType = STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO, .pNext = null };
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setYcbcrModel(&self, SamplerYcbcrModelConversion ycbcrModel) {
   self.ycbcrModel = ycbcrModel;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setYcbcrRange(&self, SamplerYcbcrRange ycbcrRange) {
   self.ycbcrRange = ycbcrRange;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setComponents(&self, ComponentMapping components) {
   self.components = components;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setXChromaOffset(&self, ChromaLocation xChromaOffset) {
   self.xChromaOffset = xChromaOffset;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setYChromaOffset(&self, ChromaLocation yChromaOffset) {
   self.yChromaOffset = yChromaOffset;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setChromaFilter(&self, Filter chromaFilter) {
   self.chromaFilter = chromaFilter;
   return *self;
}
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setForceExplicitReconstruction(&self, uint forceExplicitReconstruction) {
   self.forceExplicitReconstruction = forceExplicitReconstruction;
   return *self;
}
fn BindImagePlaneMemoryInfo bindImagePlaneMemoryInfo() => BindImagePlaneMemoryInfo { .sType = STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO, .pNext = null };
fn BindImagePlaneMemoryInfo BindImagePlaneMemoryInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BindImagePlaneMemoryInfo BindImagePlaneMemoryInfo.setPlaneAspect(&self, ImageAspectFlagBits planeAspect) {
   self.planeAspect = planeAspect;
   return *self;
}
fn ImagePlaneMemoryRequirementsInfo imagePlaneMemoryRequirementsInfo() => ImagePlaneMemoryRequirementsInfo { .sType = STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO, .pNext = null };
fn ImagePlaneMemoryRequirementsInfo ImagePlaneMemoryRequirementsInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImagePlaneMemoryRequirementsInfo ImagePlaneMemoryRequirementsInfo.setPlaneAspect(&self, ImageAspectFlagBits planeAspect) {
   self.planeAspect = planeAspect;
   return *self;
}
fn PhysicalDeviceSamplerYcbcrConversionFeatures physicalDeviceSamplerYcbcrConversionFeatures() => PhysicalDeviceSamplerYcbcrConversionFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES, .pNext = null };
fn PhysicalDeviceSamplerYcbcrConversionFeatures PhysicalDeviceSamplerYcbcrConversionFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSamplerYcbcrConversionFeatures PhysicalDeviceSamplerYcbcrConversionFeatures.setSamplerYcbcrConversion(&self, uint samplerYcbcrConversion) {
   self.samplerYcbcrConversion = samplerYcbcrConversion;
   return *self;
}
fn SamplerYcbcrConversionImageFormatProperties samplerYcbcrConversionImageFormatProperties() => SamplerYcbcrConversionImageFormatProperties { .sType = STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES, .pNext = null };
fn SamplerYcbcrConversionImageFormatProperties SamplerYcbcrConversionImageFormatProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SamplerYcbcrConversionImageFormatProperties SamplerYcbcrConversionImageFormatProperties.setCombinedImageSamplerDescriptorCount(&self, uint combinedImageSamplerDescriptorCount) {
   self.combinedImageSamplerDescriptorCount = combinedImageSamplerDescriptorCount;
   return *self;
}
fn ProtectedSubmitInfo protectedSubmitInfo() => ProtectedSubmitInfo { .sType = STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO, .pNext = null };
fn ProtectedSubmitInfo ProtectedSubmitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ProtectedSubmitInfo ProtectedSubmitInfo.setProtectedSubmit(&self, uint protectedSubmit) {
   self.protectedSubmit = protectedSubmit;
   return *self;
}
fn PhysicalDeviceProtectedMemoryFeatures physicalDeviceProtectedMemoryFeatures() => PhysicalDeviceProtectedMemoryFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES, .pNext = null };
fn PhysicalDeviceProtectedMemoryFeatures PhysicalDeviceProtectedMemoryFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceProtectedMemoryFeatures PhysicalDeviceProtectedMemoryFeatures.setProtectedMemory(&self, uint protectedMemory) {
   self.protectedMemory = protectedMemory;
   return *self;
}
fn PhysicalDeviceProtectedMemoryProperties physicalDeviceProtectedMemoryProperties() => PhysicalDeviceProtectedMemoryProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES, .pNext = null };
fn PhysicalDeviceProtectedMemoryProperties PhysicalDeviceProtectedMemoryProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceProtectedMemoryProperties PhysicalDeviceProtectedMemoryProperties.setProtectedNoFault(&self, uint protectedNoFault) {
   self.protectedNoFault = protectedNoFault;
   return *self;
}
fn DeviceQueueInfo2 deviceQueueInfo2() => DeviceQueueInfo2 { .sType = STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2, .pNext = null };
fn DeviceQueueInfo2 DeviceQueueInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceQueueInfo2 DeviceQueueInfo2.setFlags(&self, DeviceQueueCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn DeviceQueueInfo2 DeviceQueueInfo2.setQueueFamilyIndex(&self, uint queueFamilyIndex) {
   self.queueFamilyIndex = queueFamilyIndex;
   return *self;
}
fn DeviceQueueInfo2 DeviceQueueInfo2.setQueueIndex(&self, uint queueIndex) {
   self.queueIndex = queueIndex;
   return *self;
}
fn PhysicalDeviceSamplerFilterMinmaxProperties physicalDeviceSamplerFilterMinmaxProperties() => PhysicalDeviceSamplerFilterMinmaxProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES, .pNext = null };
fn PhysicalDeviceSamplerFilterMinmaxProperties PhysicalDeviceSamplerFilterMinmaxProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSamplerFilterMinmaxProperties PhysicalDeviceSamplerFilterMinmaxProperties.setFilterMinmaxSingleComponentFormats(&self, uint filterMinmaxSingleComponentFormats) {
   self.filterMinmaxSingleComponentFormats = filterMinmaxSingleComponentFormats;
   return *self;
}
fn PhysicalDeviceSamplerFilterMinmaxProperties PhysicalDeviceSamplerFilterMinmaxProperties.setFilterMinmaxImageComponentMapping(&self, uint filterMinmaxImageComponentMapping) {
   self.filterMinmaxImageComponentMapping = filterMinmaxImageComponentMapping;
   return *self;
}
fn SamplerReductionModeCreateInfo samplerReductionModeCreateInfo() => SamplerReductionModeCreateInfo { .sType = STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO, .pNext = null };
fn SamplerReductionModeCreateInfo SamplerReductionModeCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SamplerReductionModeCreateInfo SamplerReductionModeCreateInfo.setReductionMode(&self, SamplerReductionMode reductionMode) {
   self.reductionMode = reductionMode;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockFeatures physicalDeviceInlineUniformBlockFeatures() => PhysicalDeviceInlineUniformBlockFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES, .pNext = null };
fn PhysicalDeviceInlineUniformBlockFeatures PhysicalDeviceInlineUniformBlockFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockFeatures PhysicalDeviceInlineUniformBlockFeatures.setInlineUniformBlock(&self, uint inlineUniformBlock) {
   self.inlineUniformBlock = inlineUniformBlock;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockFeatures PhysicalDeviceInlineUniformBlockFeatures.setDescriptorBindingInlineUniformBlockUpdateAfterBind(&self, uint descriptorBindingInlineUniformBlockUpdateAfterBind) {
   self.descriptorBindingInlineUniformBlockUpdateAfterBind = descriptorBindingInlineUniformBlockUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockProperties physicalDeviceInlineUniformBlockProperties() => PhysicalDeviceInlineUniformBlockProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES, .pNext = null };
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxInlineUniformBlockSize(&self, uint maxInlineUniformBlockSize) {
   self.maxInlineUniformBlockSize = maxInlineUniformBlockSize;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxPerStageDescriptorInlineUniformBlocks(&self, uint maxPerStageDescriptorInlineUniformBlocks) {
   self.maxPerStageDescriptorInlineUniformBlocks = maxPerStageDescriptorInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks(&self, uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks) {
   self.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxDescriptorSetInlineUniformBlocks(&self, uint maxDescriptorSetInlineUniformBlocks) {
   self.maxDescriptorSetInlineUniformBlocks = maxDescriptorSetInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxDescriptorSetUpdateAfterBindInlineUniformBlocks(&self, uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks) {
   self.maxDescriptorSetUpdateAfterBindInlineUniformBlocks = maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
   return *self;
}
fn WriteDescriptorSetInlineUniformBlock writeDescriptorSetInlineUniformBlock() => WriteDescriptorSetInlineUniformBlock { .sType = STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK, .pNext = null };
fn WriteDescriptorSetInlineUniformBlock WriteDescriptorSetInlineUniformBlock.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn WriteDescriptorSetInlineUniformBlock WriteDescriptorSetInlineUniformBlock.setDataSize(&self, uint dataSize) {
   self.dataSize = dataSize;
   return *self;
}
fn WriteDescriptorSetInlineUniformBlock WriteDescriptorSetInlineUniformBlock.setData(&self, void* pData) {
   self.pData = pData;
   return *self;
}
fn DescriptorPoolInlineUniformBlockCreateInfo descriptorPoolInlineUniformBlockCreateInfo() => DescriptorPoolInlineUniformBlockCreateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO, .pNext = null };
fn DescriptorPoolInlineUniformBlockCreateInfo DescriptorPoolInlineUniformBlockCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorPoolInlineUniformBlockCreateInfo DescriptorPoolInlineUniformBlockCreateInfo.setMaxInlineUniformBlockBindings(&self, uint maxInlineUniformBlockBindings) {
   self.maxInlineUniformBlockBindings = maxInlineUniformBlockBindings;
   return *self;
}
fn ImageFormatListCreateInfo imageFormatListCreateInfo() => ImageFormatListCreateInfo { .sType = STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO, .pNext = null };
fn ImageFormatListCreateInfo ImageFormatListCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageFormatListCreateInfo ImageFormatListCreateInfo.setViewFormatCount(&self, uint viewFormatCount) {
   self.viewFormatCount = viewFormatCount;
   return *self;
}
fn ImageFormatListCreateInfo ImageFormatListCreateInfo.setViewFormats(&self, Format[] pViewFormats) {
   self.viewFormatCount= (uint)pViewFormats.len;
   self.pViewFormats = &pViewFormats[0];
   return *self;
}
fn PhysicalDeviceMaintenance3Properties physicalDeviceMaintenance3Properties() => PhysicalDeviceMaintenance3Properties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES, .pNext = null };
fn PhysicalDeviceMaintenance3Properties PhysicalDeviceMaintenance3Properties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceMaintenance3Properties PhysicalDeviceMaintenance3Properties.setMaxPerSetDescriptors(&self, uint maxPerSetDescriptors) {
   self.maxPerSetDescriptors = maxPerSetDescriptors;
   return *self;
}
fn PhysicalDeviceMaintenance3Properties PhysicalDeviceMaintenance3Properties.setMaxMemoryAllocationSize(&self, DeviceSize maxMemoryAllocationSize) {
   self.maxMemoryAllocationSize = maxMemoryAllocationSize;
   return *self;
}
fn PhysicalDeviceMaintenance4Features physicalDeviceMaintenance4Features() => PhysicalDeviceMaintenance4Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES, .pNext = null };
fn PhysicalDeviceMaintenance4Features PhysicalDeviceMaintenance4Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceMaintenance4Features PhysicalDeviceMaintenance4Features.setMaintenance4(&self, uint maintenance4) {
   self.maintenance4 = maintenance4;
   return *self;
}
fn PhysicalDeviceMaintenance4Properties physicalDeviceMaintenance4Properties() => PhysicalDeviceMaintenance4Properties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES, .pNext = null };
fn PhysicalDeviceMaintenance4Properties PhysicalDeviceMaintenance4Properties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceMaintenance4Properties PhysicalDeviceMaintenance4Properties.setMaxBufferSize(&self, DeviceSize maxBufferSize) {
   self.maxBufferSize = maxBufferSize;
   return *self;
}
fn DescriptorSetLayoutSupport descriptorSetLayoutSupport() => DescriptorSetLayoutSupport { .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT, .pNext = null };
fn DescriptorSetLayoutSupport DescriptorSetLayoutSupport.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorSetLayoutSupport DescriptorSetLayoutSupport.setSupported(&self, uint supported) {
   self.supported = supported;
   return *self;
}
fn PhysicalDeviceShaderDrawParametersFeatures physicalDeviceShaderDrawParametersFeatures() => PhysicalDeviceShaderDrawParametersFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES, .pNext = null };
fn PhysicalDeviceShaderDrawParametersFeatures PhysicalDeviceShaderDrawParametersFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderDrawParametersFeatures PhysicalDeviceShaderDrawParametersFeatures.setShaderDrawParameters(&self, uint shaderDrawParameters) {
   self.shaderDrawParameters = shaderDrawParameters;
   return *self;
}
fn PhysicalDeviceShaderFloat16Int8Features physicalDeviceShaderFloat16Int8Features() => PhysicalDeviceShaderFloat16Int8Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES, .pNext = null };
fn PhysicalDeviceShaderFloat16Int8Features PhysicalDeviceShaderFloat16Int8Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderFloat16Int8Features PhysicalDeviceShaderFloat16Int8Features.setShaderFloat16(&self, uint shaderFloat16) {
   self.shaderFloat16 = shaderFloat16;
   return *self;
}
fn PhysicalDeviceShaderFloat16Int8Features PhysicalDeviceShaderFloat16Int8Features.setShaderInt8(&self, uint shaderInt8) {
   self.shaderInt8 = shaderInt8;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties physicalDeviceFloatControlsProperties() => PhysicalDeviceFloatControlsProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES, .pNext = null };
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setDenormBehaviorIndependence(&self, ShaderFloatControlsIndependence denormBehaviorIndependence) {
   self.denormBehaviorIndependence = denormBehaviorIndependence;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setRoundingModeIndependence(&self, ShaderFloatControlsIndependence roundingModeIndependence) {
   self.roundingModeIndependence = roundingModeIndependence;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat16(&self, uint shaderSignedZeroInfNanPreserveFloat16) {
   self.shaderSignedZeroInfNanPreserveFloat16 = shaderSignedZeroInfNanPreserveFloat16;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat32(&self, uint shaderSignedZeroInfNanPreserveFloat32) {
   self.shaderSignedZeroInfNanPreserveFloat32 = shaderSignedZeroInfNanPreserveFloat32;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat64(&self, uint shaderSignedZeroInfNanPreserveFloat64) {
   self.shaderSignedZeroInfNanPreserveFloat64 = shaderSignedZeroInfNanPreserveFloat64;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat16(&self, uint shaderDenormPreserveFloat16) {
   self.shaderDenormPreserveFloat16 = shaderDenormPreserveFloat16;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat32(&self, uint shaderDenormPreserveFloat32) {
   self.shaderDenormPreserveFloat32 = shaderDenormPreserveFloat32;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat64(&self, uint shaderDenormPreserveFloat64) {
   self.shaderDenormPreserveFloat64 = shaderDenormPreserveFloat64;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat16(&self, uint shaderDenormFlushToZeroFloat16) {
   self.shaderDenormFlushToZeroFloat16 = shaderDenormFlushToZeroFloat16;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat32(&self, uint shaderDenormFlushToZeroFloat32) {
   self.shaderDenormFlushToZeroFloat32 = shaderDenormFlushToZeroFloat32;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat64(&self, uint shaderDenormFlushToZeroFloat64) {
   self.shaderDenormFlushToZeroFloat64 = shaderDenormFlushToZeroFloat64;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat16(&self, uint shaderRoundingModeRTEFloat16) {
   self.shaderRoundingModeRTEFloat16 = shaderRoundingModeRTEFloat16;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat32(&self, uint shaderRoundingModeRTEFloat32) {
   self.shaderRoundingModeRTEFloat32 = shaderRoundingModeRTEFloat32;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat64(&self, uint shaderRoundingModeRTEFloat64) {
   self.shaderRoundingModeRTEFloat64 = shaderRoundingModeRTEFloat64;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat16(&self, uint shaderRoundingModeRTZFloat16) {
   self.shaderRoundingModeRTZFloat16 = shaderRoundingModeRTZFloat16;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat32(&self, uint shaderRoundingModeRTZFloat32) {
   self.shaderRoundingModeRTZFloat32 = shaderRoundingModeRTZFloat32;
   return *self;
}
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat64(&self, uint shaderRoundingModeRTZFloat64) {
   self.shaderRoundingModeRTZFloat64 = shaderRoundingModeRTZFloat64;
   return *self;
}
fn PhysicalDeviceHostQueryResetFeatures physicalDeviceHostQueryResetFeatures() => PhysicalDeviceHostQueryResetFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES, .pNext = null };
fn PhysicalDeviceHostQueryResetFeatures PhysicalDeviceHostQueryResetFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceHostQueryResetFeatures PhysicalDeviceHostQueryResetFeatures.setHostQueryReset(&self, uint hostQueryReset) {
   self.hostQueryReset = hostQueryReset;
   return *self;
}
fn DebugUtilsObjectNameInfoEXT debugUtilsObjectNameInfoEXT() => DebugUtilsObjectNameInfoEXT { .sType = STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT, .pNext = null };
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setObjectType(&self, ObjectType objectType) {
   self.objectType = objectType;
   return *self;
}
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setObjectHandle(&self, ulong objectHandle) {
   self.objectHandle = objectHandle;
   return *self;
}
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setObjectName(&self, char* pObjectName) {
   self.pObjectName = pObjectName;
   return *self;
}
fn DebugUtilsObjectTagInfoEXT debugUtilsObjectTagInfoEXT() => DebugUtilsObjectTagInfoEXT { .sType = STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT, .pNext = null };
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setObjectType(&self, ObjectType objectType) {
   self.objectType = objectType;
   return *self;
}
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setObjectHandle(&self, ulong objectHandle) {
   self.objectHandle = objectHandle;
   return *self;
}
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setTagName(&self, ulong tagName) {
   self.tagName = tagName;
   return *self;
}
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setTagSize(&self, usz tagSize) {
   self.tagSize = tagSize;
   return *self;
}
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setTag(&self, void* pTag) {
   self.pTag = pTag;
   return *self;
}
fn DebugUtilsLabelEXT debugUtilsLabelEXT() => DebugUtilsLabelEXT { .sType = STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT, .pNext = null };
fn DebugUtilsLabelEXT DebugUtilsLabelEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DebugUtilsLabelEXT DebugUtilsLabelEXT.setLabelName(&self, char* pLabelName) {
   self.pLabelName = pLabelName;
   return *self;
}
fn DebugUtilsLabelEXT DebugUtilsLabelEXT.setColor(&self, float[4] color) {
   self.color = color;
   return *self;
}
fn DebugUtilsMessengerCreateInfoEXT debugUtilsMessengerCreateInfoEXT() => DebugUtilsMessengerCreateInfoEXT { .sType = STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT, .pNext = null };
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setFlags(&self, DebugUtilsMessengerCreateFlagsEXT flags) {
   self.flags = flags;
   return *self;
}
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setMessageSeverity(&self, DebugUtilsMessageSeverityFlagsEXT messageSeverity) {
   self.messageSeverity = messageSeverity;
   return *self;
}
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setMessageType(&self, DebugUtilsMessageTypeFlagsEXT messageType) {
   self.messageType = messageType;
   return *self;
}
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setPfnUserCallback(&self, PFN_vkDebugUtilsMessengerCallbackEXT pfnUserCallback) {
   self.pfnUserCallback = pfnUserCallback;
   return *self;
}
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setUserData(&self, void* pUserData) {
   self.pUserData = pUserData;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT debugUtilsMessengerCallbackDataEXT() => DebugUtilsMessengerCallbackDataEXT { .sType = STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT, .pNext = null };
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setFlags(&self, DebugUtilsMessengerCallbackDataFlagsEXT flags) {
   self.flags = flags;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setMessageIdName(&self, char* pMessageIdName) {
   self.pMessageIdName = pMessageIdName;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setMessageIdNumber(&self, int messageIdNumber) {
   self.messageIdNumber = messageIdNumber;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setMessage(&self, char* pMessage) {
   self.pMessage = pMessage;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setQueueLabelCount(&self, uint queueLabelCount) {
   self.queueLabelCount = queueLabelCount;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setQueueLabels(&self, DebugUtilsLabelEXT[] pQueueLabels) {
   self.queueLabelCount= (uint)pQueueLabels.len;
   self.pQueueLabels = &pQueueLabels[0];
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setCmdBufLabelCount(&self, uint cmdBufLabelCount) {
   self.cmdBufLabelCount = cmdBufLabelCount;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setCmdBufLabels(&self, DebugUtilsLabelEXT[] pCmdBufLabels) {
   self.cmdBufLabelCount= (uint)pCmdBufLabels.len;
   self.pCmdBufLabels = &pCmdBufLabels[0];
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setObjectCount(&self, uint objectCount) {
   self.objectCount = objectCount;
   return *self;
}
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setObjects(&self, DebugUtilsObjectNameInfoEXT[] pObjects) {
   self.objectCount= (uint)pObjects.len;
   self.pObjects = &pObjects[0];
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures physicalDeviceDescriptorIndexingFeatures() => PhysicalDeviceDescriptorIndexingFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES, .pNext = null };
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderInputAttachmentArrayDynamicIndexing(&self, uint shaderInputAttachmentArrayDynamicIndexing) {
   self.shaderInputAttachmentArrayDynamicIndexing = shaderInputAttachmentArrayDynamicIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderUniformTexelBufferArrayDynamicIndexing(&self, uint shaderUniformTexelBufferArrayDynamicIndexing) {
   self.shaderUniformTexelBufferArrayDynamicIndexing = shaderUniformTexelBufferArrayDynamicIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageTexelBufferArrayDynamicIndexing(&self, uint shaderStorageTexelBufferArrayDynamicIndexing) {
   self.shaderStorageTexelBufferArrayDynamicIndexing = shaderStorageTexelBufferArrayDynamicIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderUniformBufferArrayNonUniformIndexing(&self, uint shaderUniformBufferArrayNonUniformIndexing) {
   self.shaderUniformBufferArrayNonUniformIndexing = shaderUniformBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderSampledImageArrayNonUniformIndexing(&self, uint shaderSampledImageArrayNonUniformIndexing) {
   self.shaderSampledImageArrayNonUniformIndexing = shaderSampledImageArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageBufferArrayNonUniformIndexing(&self, uint shaderStorageBufferArrayNonUniformIndexing) {
   self.shaderStorageBufferArrayNonUniformIndexing = shaderStorageBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageImageArrayNonUniformIndexing(&self, uint shaderStorageImageArrayNonUniformIndexing) {
   self.shaderStorageImageArrayNonUniformIndexing = shaderStorageImageArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderInputAttachmentArrayNonUniformIndexing(&self, uint shaderInputAttachmentArrayNonUniformIndexing) {
   self.shaderInputAttachmentArrayNonUniformIndexing = shaderInputAttachmentArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderUniformTexelBufferArrayNonUniformIndexing(&self, uint shaderUniformTexelBufferArrayNonUniformIndexing) {
   self.shaderUniformTexelBufferArrayNonUniformIndexing = shaderUniformTexelBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageTexelBufferArrayNonUniformIndexing(&self, uint shaderStorageTexelBufferArrayNonUniformIndexing) {
   self.shaderStorageTexelBufferArrayNonUniformIndexing = shaderStorageTexelBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUniformBufferUpdateAfterBind(&self, uint descriptorBindingUniformBufferUpdateAfterBind) {
   self.descriptorBindingUniformBufferUpdateAfterBind = descriptorBindingUniformBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingSampledImageUpdateAfterBind(&self, uint descriptorBindingSampledImageUpdateAfterBind) {
   self.descriptorBindingSampledImageUpdateAfterBind = descriptorBindingSampledImageUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageImageUpdateAfterBind(&self, uint descriptorBindingStorageImageUpdateAfterBind) {
   self.descriptorBindingStorageImageUpdateAfterBind = descriptorBindingStorageImageUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageBufferUpdateAfterBind(&self, uint descriptorBindingStorageBufferUpdateAfterBind) {
   self.descriptorBindingStorageBufferUpdateAfterBind = descriptorBindingStorageBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUniformTexelBufferUpdateAfterBind(&self, uint descriptorBindingUniformTexelBufferUpdateAfterBind) {
   self.descriptorBindingUniformTexelBufferUpdateAfterBind = descriptorBindingUniformTexelBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageTexelBufferUpdateAfterBind(&self, uint descriptorBindingStorageTexelBufferUpdateAfterBind) {
   self.descriptorBindingStorageTexelBufferUpdateAfterBind = descriptorBindingStorageTexelBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUpdateUnusedWhilePending(&self, uint descriptorBindingUpdateUnusedWhilePending) {
   self.descriptorBindingUpdateUnusedWhilePending = descriptorBindingUpdateUnusedWhilePending;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingPartiallyBound(&self, uint descriptorBindingPartiallyBound) {
   self.descriptorBindingPartiallyBound = descriptorBindingPartiallyBound;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingVariableDescriptorCount(&self, uint descriptorBindingVariableDescriptorCount) {
   self.descriptorBindingVariableDescriptorCount = descriptorBindingVariableDescriptorCount;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setRuntimeDescriptorArray(&self, uint runtimeDescriptorArray) {
   self.runtimeDescriptorArray = runtimeDescriptorArray;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties physicalDeviceDescriptorIndexingProperties() => PhysicalDeviceDescriptorIndexingProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES, .pNext = null };
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxUpdateAfterBindDescriptorsInAllPools(&self, uint maxUpdateAfterBindDescriptorsInAllPools) {
   self.maxUpdateAfterBindDescriptorsInAllPools = maxUpdateAfterBindDescriptorsInAllPools;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderUniformBufferArrayNonUniformIndexingNative(&self, uint shaderUniformBufferArrayNonUniformIndexingNative) {
   self.shaderUniformBufferArrayNonUniformIndexingNative = shaderUniformBufferArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderSampledImageArrayNonUniformIndexingNative(&self, uint shaderSampledImageArrayNonUniformIndexingNative) {
   self.shaderSampledImageArrayNonUniformIndexingNative = shaderSampledImageArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderStorageBufferArrayNonUniformIndexingNative(&self, uint shaderStorageBufferArrayNonUniformIndexingNative) {
   self.shaderStorageBufferArrayNonUniformIndexingNative = shaderStorageBufferArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderStorageImageArrayNonUniformIndexingNative(&self, uint shaderStorageImageArrayNonUniformIndexingNative) {
   self.shaderStorageImageArrayNonUniformIndexingNative = shaderStorageImageArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderInputAttachmentArrayNonUniformIndexingNative(&self, uint shaderInputAttachmentArrayNonUniformIndexingNative) {
   self.shaderInputAttachmentArrayNonUniformIndexingNative = shaderInputAttachmentArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setRobustBufferAccessUpdateAfterBind(&self, uint robustBufferAccessUpdateAfterBind) {
   self.robustBufferAccessUpdateAfterBind = robustBufferAccessUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setQuadDivergentImplicitLod(&self, uint quadDivergentImplicitLod) {
   self.quadDivergentImplicitLod = quadDivergentImplicitLod;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindSamplers(&self, uint maxPerStageDescriptorUpdateAfterBindSamplers) {
   self.maxPerStageDescriptorUpdateAfterBindSamplers = maxPerStageDescriptorUpdateAfterBindSamplers;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindUniformBuffers(&self, uint maxPerStageDescriptorUpdateAfterBindUniformBuffers) {
   self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = maxPerStageDescriptorUpdateAfterBindUniformBuffers;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindStorageBuffers(&self, uint maxPerStageDescriptorUpdateAfterBindStorageBuffers) {
   self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = maxPerStageDescriptorUpdateAfterBindStorageBuffers;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindSampledImages(&self, uint maxPerStageDescriptorUpdateAfterBindSampledImages) {
   self.maxPerStageDescriptorUpdateAfterBindSampledImages = maxPerStageDescriptorUpdateAfterBindSampledImages;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindStorageImages(&self, uint maxPerStageDescriptorUpdateAfterBindStorageImages) {
   self.maxPerStageDescriptorUpdateAfterBindStorageImages = maxPerStageDescriptorUpdateAfterBindStorageImages;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindInputAttachments(&self, uint maxPerStageDescriptorUpdateAfterBindInputAttachments) {
   self.maxPerStageDescriptorUpdateAfterBindInputAttachments = maxPerStageDescriptorUpdateAfterBindInputAttachments;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageUpdateAfterBindResources(&self, uint maxPerStageUpdateAfterBindResources) {
   self.maxPerStageUpdateAfterBindResources = maxPerStageUpdateAfterBindResources;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindSamplers(&self, uint maxDescriptorSetUpdateAfterBindSamplers) {
   self.maxDescriptorSetUpdateAfterBindSamplers = maxDescriptorSetUpdateAfterBindSamplers;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindUniformBuffers(&self, uint maxDescriptorSetUpdateAfterBindUniformBuffers) {
   self.maxDescriptorSetUpdateAfterBindUniformBuffers = maxDescriptorSetUpdateAfterBindUniformBuffers;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindUniformBuffersDynamic(&self, uint maxDescriptorSetUpdateAfterBindUniformBuffersDynamic) {
   self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageBuffers(&self, uint maxDescriptorSetUpdateAfterBindStorageBuffers) {
   self.maxDescriptorSetUpdateAfterBindStorageBuffers = maxDescriptorSetUpdateAfterBindStorageBuffers;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageBuffersDynamic(&self, uint maxDescriptorSetUpdateAfterBindStorageBuffersDynamic) {
   self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindSampledImages(&self, uint maxDescriptorSetUpdateAfterBindSampledImages) {
   self.maxDescriptorSetUpdateAfterBindSampledImages = maxDescriptorSetUpdateAfterBindSampledImages;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageImages(&self, uint maxDescriptorSetUpdateAfterBindStorageImages) {
   self.maxDescriptorSetUpdateAfterBindStorageImages = maxDescriptorSetUpdateAfterBindStorageImages;
   return *self;
}
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindInputAttachments(&self, uint maxDescriptorSetUpdateAfterBindInputAttachments) {
   self.maxDescriptorSetUpdateAfterBindInputAttachments = maxDescriptorSetUpdateAfterBindInputAttachments;
   return *self;
}
fn DescriptorSetLayoutBindingFlagsCreateInfo descriptorSetLayoutBindingFlagsCreateInfo() => DescriptorSetLayoutBindingFlagsCreateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO, .pNext = null };
fn DescriptorSetLayoutBindingFlagsCreateInfo DescriptorSetLayoutBindingFlagsCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorSetLayoutBindingFlagsCreateInfo DescriptorSetLayoutBindingFlagsCreateInfo.setBindingCount(&self, uint bindingCount) {
   self.bindingCount = bindingCount;
   return *self;
}
fn DescriptorSetLayoutBindingFlagsCreateInfo DescriptorSetLayoutBindingFlagsCreateInfo.setBindingFlags(&self, DescriptorBindingFlags[] pBindingFlags) {
   self.bindingCount= (uint)pBindingFlags.len;
   self.pBindingFlags = &pBindingFlags[0];
   return *self;
}
fn DescriptorSetVariableDescriptorCountAllocateInfo descriptorSetVariableDescriptorCountAllocateInfo() => DescriptorSetVariableDescriptorCountAllocateInfo { .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO, .pNext = null };
fn DescriptorSetVariableDescriptorCountAllocateInfo DescriptorSetVariableDescriptorCountAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorSetVariableDescriptorCountAllocateInfo DescriptorSetVariableDescriptorCountAllocateInfo.setDescriptorSetCount(&self, uint descriptorSetCount) {
   self.descriptorSetCount = descriptorSetCount;
   return *self;
}
fn DescriptorSetVariableDescriptorCountAllocateInfo DescriptorSetVariableDescriptorCountAllocateInfo.setDescriptorCounts(&self, uint[] pDescriptorCounts) {
   self.descriptorSetCount= (uint)pDescriptorCounts.len;
   self.pDescriptorCounts = &pDescriptorCounts[0];
   return *self;
}
fn DescriptorSetVariableDescriptorCountLayoutSupport descriptorSetVariableDescriptorCountLayoutSupport() => DescriptorSetVariableDescriptorCountLayoutSupport { .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT, .pNext = null };
fn DescriptorSetVariableDescriptorCountLayoutSupport DescriptorSetVariableDescriptorCountLayoutSupport.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorSetVariableDescriptorCountLayoutSupport DescriptorSetVariableDescriptorCountLayoutSupport.setMaxVariableDescriptorCount(&self, uint maxVariableDescriptorCount) {
   self.maxVariableDescriptorCount = maxVariableDescriptorCount;
   return *self;
}
fn AttachmentDescription2 attachmentDescription2() => AttachmentDescription2 { .sType = STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2, .pNext = null };
fn AttachmentDescription2 AttachmentDescription2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setFlags(&self, AttachmentDescriptionFlags flags) {
   self.flags = flags;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setSamples(&self, SampleCountFlagBits samples) {
   self.samples = samples;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setLoadOp(&self, AttachmentLoadOp loadOp) {
   self.loadOp = loadOp;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setStoreOp(&self, AttachmentStoreOp storeOp) {
   self.storeOp = storeOp;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setStencilLoadOp(&self, AttachmentLoadOp stencilLoadOp) {
   self.stencilLoadOp = stencilLoadOp;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setStencilStoreOp(&self, AttachmentStoreOp stencilStoreOp) {
   self.stencilStoreOp = stencilStoreOp;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setInitialLayout(&self, ImageLayout initialLayout) {
   self.initialLayout = initialLayout;
   return *self;
}
fn AttachmentDescription2 AttachmentDescription2.setFinalLayout(&self, ImageLayout finalLayout) {
   self.finalLayout = finalLayout;
   return *self;
}
fn AttachmentReference2 attachmentReference2() => AttachmentReference2 { .sType = STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2, .pNext = null };
fn AttachmentReference2 AttachmentReference2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AttachmentReference2 AttachmentReference2.setAttachment(&self, uint attachment) {
   self.attachment = attachment;
   return *self;
}
fn AttachmentReference2 AttachmentReference2.setLayout(&self, ImageLayout layout) {
   self.layout = layout;
   return *self;
}
fn AttachmentReference2 AttachmentReference2.setAspectMask(&self, ImageAspectFlags aspectMask) {
   self.aspectMask = aspectMask;
   return *self;
}
fn SubpassDescription2 subpassDescription2() => SubpassDescription2 { .sType = STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2, .pNext = null };
fn SubpassDescription2 SubpassDescription2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setFlags(&self, SubpassDescriptionFlags flags) {
   self.flags = flags;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setPipelineBindPoint(&self, PipelineBindPoint pipelineBindPoint) {
   self.pipelineBindPoint = pipelineBindPoint;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setViewMask(&self, uint viewMask) {
   self.viewMask = viewMask;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setInputAttachmentCount(&self, uint inputAttachmentCount) {
   self.inputAttachmentCount = inputAttachmentCount;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setInputAttachments(&self, AttachmentReference2[] pInputAttachments) {
   self.inputAttachmentCount= (uint)pInputAttachments.len;
   self.pInputAttachments = &pInputAttachments[0];
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setColorAttachmentCount(&self, uint colorAttachmentCount) {
   self.colorAttachmentCount = colorAttachmentCount;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setColorAttachments(&self, AttachmentReference2[] pColorAttachments) {
   self.colorAttachmentCount= (uint)pColorAttachments.len;
   self.pColorAttachments = &pColorAttachments[0];
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setResolveAttachments(&self, AttachmentReference2[] pResolveAttachments) {
   self.colorAttachmentCount= (uint)pResolveAttachments.len;
   self.pResolveAttachments = &pResolveAttachments[0];
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setDepthStencilAttachment(&self, AttachmentReference2* pDepthStencilAttachment) {
   self.pDepthStencilAttachment = pDepthStencilAttachment;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setPreserveAttachmentCount(&self, uint preserveAttachmentCount) {
   self.preserveAttachmentCount = preserveAttachmentCount;
   return *self;
}
fn SubpassDescription2 SubpassDescription2.setPreserveAttachments(&self, uint[] pPreserveAttachments) {
   self.preserveAttachmentCount= (uint)pPreserveAttachments.len;
   self.pPreserveAttachments = &pPreserveAttachments[0];
   return *self;
}
fn SubpassDependency2 subpassDependency2() => SubpassDependency2 { .sType = STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2, .pNext = null };
fn SubpassDependency2 SubpassDependency2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setSrcSubpass(&self, uint srcSubpass) {
   self.srcSubpass = srcSubpass;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setDstSubpass(&self, uint dstSubpass) {
   self.dstSubpass = dstSubpass;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setSrcStageMask(&self, PipelineStageFlags srcStageMask) {
   self.srcStageMask = srcStageMask;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setDstStageMask(&self, PipelineStageFlags dstStageMask) {
   self.dstStageMask = dstStageMask;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setSrcAccessMask(&self, AccessFlags srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setDstAccessMask(&self, AccessFlags dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setDependencyFlags(&self, DependencyFlags dependencyFlags) {
   self.dependencyFlags = dependencyFlags;
   return *self;
}
fn SubpassDependency2 SubpassDependency2.setViewOffset(&self, int viewOffset) {
   self.viewOffset = viewOffset;
   return *self;
}
fn RenderPassCreateInfo2 renderPassCreateInfo2() => RenderPassCreateInfo2 { .sType = STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2, .pNext = null };
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setFlags(&self, RenderPassCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setAttachmentCount(&self, uint attachmentCount) {
   self.attachmentCount = attachmentCount;
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setAttachments(&self, AttachmentDescription2[] pAttachments) {
   self.attachmentCount= (uint)pAttachments.len;
   self.pAttachments = &pAttachments[0];
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setSubpassCount(&self, uint subpassCount) {
   self.subpassCount = subpassCount;
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setSubpasses(&self, SubpassDescription2[] pSubpasses) {
   self.subpassCount= (uint)pSubpasses.len;
   self.pSubpasses = &pSubpasses[0];
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setDependencyCount(&self, uint dependencyCount) {
   self.dependencyCount = dependencyCount;
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setDependencies(&self, SubpassDependency2[] pDependencies) {
   self.dependencyCount= (uint)pDependencies.len;
   self.pDependencies = &pDependencies[0];
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setCorrelatedViewMaskCount(&self, uint correlatedViewMaskCount) {
   self.correlatedViewMaskCount = correlatedViewMaskCount;
   return *self;
}
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setCorrelatedViewMasks(&self, uint[] pCorrelatedViewMasks) {
   self.correlatedViewMaskCount= (uint)pCorrelatedViewMasks.len;
   self.pCorrelatedViewMasks = &pCorrelatedViewMasks[0];
   return *self;
}
fn SubpassBeginInfo subpassBeginInfo() => SubpassBeginInfo { .sType = STRUCTURE_TYPE_SUBPASS_BEGIN_INFO, .pNext = null };
fn SubpassBeginInfo SubpassBeginInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SubpassBeginInfo SubpassBeginInfo.setContents(&self, SubpassContents contents) {
   self.contents = contents;
   return *self;
}
fn SubpassEndInfo subpassEndInfo() => SubpassEndInfo { .sType = STRUCTURE_TYPE_SUBPASS_END_INFO, .pNext = null };
fn SubpassEndInfo SubpassEndInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceTimelineSemaphoreFeatures physicalDeviceTimelineSemaphoreFeatures() => PhysicalDeviceTimelineSemaphoreFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES, .pNext = null };
fn PhysicalDeviceTimelineSemaphoreFeatures PhysicalDeviceTimelineSemaphoreFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceTimelineSemaphoreFeatures PhysicalDeviceTimelineSemaphoreFeatures.setTimelineSemaphore(&self, uint timelineSemaphore) {
   self.timelineSemaphore = timelineSemaphore;
   return *self;
}
fn PhysicalDeviceTimelineSemaphoreProperties physicalDeviceTimelineSemaphoreProperties() => PhysicalDeviceTimelineSemaphoreProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES, .pNext = null };
fn PhysicalDeviceTimelineSemaphoreProperties PhysicalDeviceTimelineSemaphoreProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceTimelineSemaphoreProperties PhysicalDeviceTimelineSemaphoreProperties.setMaxTimelineSemaphoreValueDifference(&self, ulong maxTimelineSemaphoreValueDifference) {
   self.maxTimelineSemaphoreValueDifference = maxTimelineSemaphoreValueDifference;
   return *self;
}
fn SemaphoreTypeCreateInfo semaphoreTypeCreateInfo() => SemaphoreTypeCreateInfo { .sType = STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO, .pNext = null };
fn SemaphoreTypeCreateInfo SemaphoreTypeCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SemaphoreTypeCreateInfo SemaphoreTypeCreateInfo.setSemaphoreType(&self, SemaphoreType semaphoreType) {
   self.semaphoreType = semaphoreType;
   return *self;
}
fn SemaphoreTypeCreateInfo SemaphoreTypeCreateInfo.setInitialValue(&self, ulong initialValue) {
   self.initialValue = initialValue;
   return *self;
}
fn TimelineSemaphoreSubmitInfo timelineSemaphoreSubmitInfo() => TimelineSemaphoreSubmitInfo { .sType = STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO, .pNext = null };
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setWaitSemaphoreValueCount(&self, uint waitSemaphoreValueCount) {
   self.waitSemaphoreValueCount = waitSemaphoreValueCount;
   return *self;
}
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setWaitSemaphoreValues(&self, ulong[] pWaitSemaphoreValues) {
   self.waitSemaphoreValueCount= (uint)pWaitSemaphoreValues.len;
   self.pWaitSemaphoreValues = &pWaitSemaphoreValues[0];
   return *self;
}
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setSignalSemaphoreValueCount(&self, uint signalSemaphoreValueCount) {
   self.signalSemaphoreValueCount = signalSemaphoreValueCount;
   return *self;
}
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setSignalSemaphoreValues(&self, ulong[] pSignalSemaphoreValues) {
   self.signalSemaphoreValueCount= (uint)pSignalSemaphoreValues.len;
   self.pSignalSemaphoreValues = &pSignalSemaphoreValues[0];
   return *self;
}
fn SemaphoreWaitInfo semaphoreWaitInfo() => SemaphoreWaitInfo { .sType = STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO, .pNext = null };
fn SemaphoreWaitInfo SemaphoreWaitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SemaphoreWaitInfo SemaphoreWaitInfo.setFlags(&self, SemaphoreWaitFlags flags) {
   self.flags = flags;
   return *self;
}
fn SemaphoreWaitInfo SemaphoreWaitInfo.setSemaphoreCount(&self, uint semaphoreCount) {
   self.semaphoreCount = semaphoreCount;
   return *self;
}
fn SemaphoreWaitInfo SemaphoreWaitInfo.setSemaphores(&self, Semaphore[] pSemaphores) {
   self.semaphoreCount= (uint)pSemaphores.len;
   self.pSemaphores = &pSemaphores[0];
   return *self;
}
fn SemaphoreWaitInfo SemaphoreWaitInfo.setValues(&self, ulong[] pValues) {
   self.semaphoreCount= (uint)pValues.len;
   self.pValues = &pValues[0];
   return *self;
}
fn SemaphoreSignalInfo semaphoreSignalInfo() => SemaphoreSignalInfo { .sType = STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO, .pNext = null };
fn SemaphoreSignalInfo SemaphoreSignalInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SemaphoreSignalInfo SemaphoreSignalInfo.setSemaphore(&self, Semaphore semaphore) {
   self.semaphore = semaphore;
   return *self;
}
fn SemaphoreSignalInfo SemaphoreSignalInfo.setValue(&self, ulong value) {
   self.value = value;
   return *self;
}
fn PhysicalDevice8BitStorageFeatures physicalDevice8BitStorageFeatures() => PhysicalDevice8BitStorageFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES, .pNext = null };
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setStorageBuffer8BitAccess(&self, uint storageBuffer8BitAccess) {
   self.storageBuffer8BitAccess = storageBuffer8BitAccess;
   return *self;
}
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setUniformAndStorageBuffer8BitAccess(&self, uint uniformAndStorageBuffer8BitAccess) {
   self.uniformAndStorageBuffer8BitAccess = uniformAndStorageBuffer8BitAccess;
   return *self;
}
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setStoragePushConstant8(&self, uint storagePushConstant8) {
   self.storagePushConstant8 = storagePushConstant8;
   return *self;
}
fn PhysicalDeviceVulkanMemoryModelFeatures physicalDeviceVulkanMemoryModelFeatures() => PhysicalDeviceVulkanMemoryModelFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES, .pNext = null };
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModel(&self, uint vulkanMemoryModel) {
   self.vulkanMemoryModel = vulkanMemoryModel;
   return *self;
}
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModelDeviceScope(&self, uint vulkanMemoryModelDeviceScope) {
   self.vulkanMemoryModelDeviceScope = vulkanMemoryModelDeviceScope;
   return *self;
}
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModelAvailabilityVisibilityChains(&self, uint vulkanMemoryModelAvailabilityVisibilityChains) {
   self.vulkanMemoryModelAvailabilityVisibilityChains = vulkanMemoryModelAvailabilityVisibilityChains;
   return *self;
}
fn PhysicalDeviceShaderAtomicInt64Features physicalDeviceShaderAtomicInt64Features() => PhysicalDeviceShaderAtomicInt64Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES, .pNext = null };
fn PhysicalDeviceShaderAtomicInt64Features PhysicalDeviceShaderAtomicInt64Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderAtomicInt64Features PhysicalDeviceShaderAtomicInt64Features.setShaderBufferInt64Atomics(&self, uint shaderBufferInt64Atomics) {
   self.shaderBufferInt64Atomics = shaderBufferInt64Atomics;
   return *self;
}
fn PhysicalDeviceShaderAtomicInt64Features PhysicalDeviceShaderAtomicInt64Features.setShaderSharedInt64Atomics(&self, uint shaderSharedInt64Atomics) {
   self.shaderSharedInt64Atomics = shaderSharedInt64Atomics;
   return *self;
}
fn PhysicalDeviceDepthStencilResolveProperties physicalDeviceDepthStencilResolveProperties() => PhysicalDeviceDepthStencilResolveProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES, .pNext = null };
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setSupportedDepthResolveModes(&self, ResolveModeFlags supportedDepthResolveModes) {
   self.supportedDepthResolveModes = supportedDepthResolveModes;
   return *self;
}
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setSupportedStencilResolveModes(&self, ResolveModeFlags supportedStencilResolveModes) {
   self.supportedStencilResolveModes = supportedStencilResolveModes;
   return *self;
}
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setIndependentResolveNone(&self, uint independentResolveNone) {
   self.independentResolveNone = independentResolveNone;
   return *self;
}
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setIndependentResolve(&self, uint independentResolve) {
   self.independentResolve = independentResolve;
   return *self;
}
fn SubpassDescriptionDepthStencilResolve subpassDescriptionDepthStencilResolve() => SubpassDescriptionDepthStencilResolve { .sType = STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE, .pNext = null };
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setDepthResolveMode(&self, ResolveModeFlagBits depthResolveMode) {
   self.depthResolveMode = depthResolveMode;
   return *self;
}
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setStencilResolveMode(&self, ResolveModeFlagBits stencilResolveMode) {
   self.stencilResolveMode = stencilResolveMode;
   return *self;
}
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setDepthStencilResolveAttachment(&self, AttachmentReference2* pDepthStencilResolveAttachment) {
   self.pDepthStencilResolveAttachment = pDepthStencilResolveAttachment;
   return *self;
}
fn WriteDescriptorSetAccelerationStructureKHR writeDescriptorSetAccelerationStructure() => WriteDescriptorSetAccelerationStructureKHR { .sType = STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR, .pNext = null };
fn WriteDescriptorSetAccelerationStructureKHR WriteDescriptorSetAccelerationStructureKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn WriteDescriptorSetAccelerationStructureKHR WriteDescriptorSetAccelerationStructureKHR.setAccelerationStructureCount(&self, uint accelerationStructureCount) {
   self.accelerationStructureCount = accelerationStructureCount;
   return *self;
}
fn WriteDescriptorSetAccelerationStructureKHR WriteDescriptorSetAccelerationStructureKHR.setAccelerationStructures(&self, AccelerationStructureKHR[] pAccelerationStructures) {
   self.accelerationStructureCount= (uint)pAccelerationStructures.len;
   self.pAccelerationStructures = &pAccelerationStructures[0];
   return *self;
}
fn PhysicalDeviceAccelerationStructureFeaturesKHR physicalDeviceAccelerationStructureFeatures() => PhysicalDeviceAccelerationStructureFeaturesKHR { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR, .pNext = null };
fn PhysicalDeviceAccelerationStructureFeaturesKHR PhysicalDeviceAccelerationStructureFeaturesKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceAccelerationStructureFeaturesKHR PhysicalDeviceAccelerationStructureFeaturesKHR.setAccelerationStructure(&self, uint accelerationStructure) {
   self.accelerationStructure = accelerationStructure;
   return *self;
}
fn PhysicalDeviceAccelerationStructureFeaturesKHR PhysicalDeviceAccelerationStructureFeaturesKHR.setAccelerationStructureCaptureReplay(&self, uint accelerationStructureCaptureReplay) {
   self.accelerationStructureCaptureReplay = accelerationStructureCaptureReplay;
   return *self;
}
fn PhysicalDeviceAccelerationStructureFeaturesKHR PhysicalDeviceAccelerationStructureFeaturesKHR.setAccelerationStructureIndirectBuild(&self, uint accelerationStructureIndirectBuild) {
   self.accelerationStructureIndirectBuild = accelerationStructureIndirectBuild;
   return *self;
}
fn PhysicalDeviceAccelerationStructureFeaturesKHR PhysicalDeviceAccelerationStructureFeaturesKHR.setAccelerationStructureHostCommands(&self, uint accelerationStructureHostCommands) {
   self.accelerationStructureHostCommands = accelerationStructureHostCommands;
   return *self;
}
fn PhysicalDeviceAccelerationStructureFeaturesKHR PhysicalDeviceAccelerationStructureFeaturesKHR.setDescriptorBindingAccelerationStructureUpdateAfterBind(&self, uint descriptorBindingAccelerationStructureUpdateAfterBind) {
   self.descriptorBindingAccelerationStructureUpdateAfterBind = descriptorBindingAccelerationStructureUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR physicalDeviceAccelerationStructureProperties() => PhysicalDeviceAccelerationStructurePropertiesKHR { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR, .pNext = null };
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxGeometryCount(&self, ulong maxGeometryCount) {
   self.maxGeometryCount = maxGeometryCount;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxInstanceCount(&self, ulong maxInstanceCount) {
   self.maxInstanceCount = maxInstanceCount;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxPrimitiveCount(&self, ulong maxPrimitiveCount) {
   self.maxPrimitiveCount = maxPrimitiveCount;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxPerStageDescriptorAccelerationStructures(&self, uint maxPerStageDescriptorAccelerationStructures) {
   self.maxPerStageDescriptorAccelerationStructures = maxPerStageDescriptorAccelerationStructures;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxPerStageDescriptorUpdateAfterBindAccelerationStructures(&self, uint maxPerStageDescriptorUpdateAfterBindAccelerationStructures) {
   self.maxPerStageDescriptorUpdateAfterBindAccelerationStructures = maxPerStageDescriptorUpdateAfterBindAccelerationStructures;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxDescriptorSetAccelerationStructures(&self, uint maxDescriptorSetAccelerationStructures) {
   self.maxDescriptorSetAccelerationStructures = maxDescriptorSetAccelerationStructures;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMaxDescriptorSetUpdateAfterBindAccelerationStructures(&self, uint maxDescriptorSetUpdateAfterBindAccelerationStructures) {
   self.maxDescriptorSetUpdateAfterBindAccelerationStructures = maxDescriptorSetUpdateAfterBindAccelerationStructures;
   return *self;
}
fn PhysicalDeviceAccelerationStructurePropertiesKHR PhysicalDeviceAccelerationStructurePropertiesKHR.setMinAccelerationStructureScratchOffsetAlignment(&self, uint minAccelerationStructureScratchOffsetAlignment) {
   self.minAccelerationStructureScratchOffsetAlignment = minAccelerationStructureScratchOffsetAlignment;
   return *self;
}
fn ImageStencilUsageCreateInfo imageStencilUsageCreateInfo() => ImageStencilUsageCreateInfo { .sType = STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO, .pNext = null };
fn ImageStencilUsageCreateInfo ImageStencilUsageCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageStencilUsageCreateInfo ImageStencilUsageCreateInfo.setStencilUsage(&self, ImageUsageFlags stencilUsage) {
   self.stencilUsage = stencilUsage;
   return *self;
}
fn PhysicalDeviceScalarBlockLayoutFeatures physicalDeviceScalarBlockLayoutFeatures() => PhysicalDeviceScalarBlockLayoutFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES, .pNext = null };
fn PhysicalDeviceScalarBlockLayoutFeatures PhysicalDeviceScalarBlockLayoutFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceScalarBlockLayoutFeatures PhysicalDeviceScalarBlockLayoutFeatures.setScalarBlockLayout(&self, uint scalarBlockLayout) {
   self.scalarBlockLayout = scalarBlockLayout;
   return *self;
}
fn PhysicalDeviceUniformBufferStandardLayoutFeatures physicalDeviceUniformBufferStandardLayoutFeatures() => PhysicalDeviceUniformBufferStandardLayoutFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES, .pNext = null };
fn PhysicalDeviceUniformBufferStandardLayoutFeatures PhysicalDeviceUniformBufferStandardLayoutFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceUniformBufferStandardLayoutFeatures PhysicalDeviceUniformBufferStandardLayoutFeatures.setUniformBufferStandardLayout(&self, uint uniformBufferStandardLayout) {
   self.uniformBufferStandardLayout = uniformBufferStandardLayout;
   return *self;
}
fn PhysicalDeviceBufferDeviceAddressFeatures physicalDeviceBufferDeviceAddressFeatures() => PhysicalDeviceBufferDeviceAddressFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES, .pNext = null };
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddress(&self, uint bufferDeviceAddress) {
   self.bufferDeviceAddress = bufferDeviceAddress;
   return *self;
}
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddressCaptureReplay(&self, uint bufferDeviceAddressCaptureReplay) {
   self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay;
   return *self;
}
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddressMultiDevice(&self, uint bufferDeviceAddressMultiDevice) {
   self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice;
   return *self;
}
fn BufferDeviceAddressInfo bufferDeviceAddressInfo() => BufferDeviceAddressInfo { .sType = STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO, .pNext = null };
fn BufferDeviceAddressInfo BufferDeviceAddressInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferDeviceAddressInfo BufferDeviceAddressInfo.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn BufferOpaqueCaptureAddressCreateInfo bufferOpaqueCaptureAddressCreateInfo() => BufferOpaqueCaptureAddressCreateInfo { .sType = STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO, .pNext = null };
fn BufferOpaqueCaptureAddressCreateInfo BufferOpaqueCaptureAddressCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferOpaqueCaptureAddressCreateInfo BufferOpaqueCaptureAddressCreateInfo.setOpaqueCaptureAddress(&self, ulong opaqueCaptureAddress) {
   self.opaqueCaptureAddress = opaqueCaptureAddress;
   return *self;
}
fn PhysicalDeviceImagelessFramebufferFeatures physicalDeviceImagelessFramebufferFeatures() => PhysicalDeviceImagelessFramebufferFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES, .pNext = null };
fn PhysicalDeviceImagelessFramebufferFeatures PhysicalDeviceImagelessFramebufferFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceImagelessFramebufferFeatures PhysicalDeviceImagelessFramebufferFeatures.setImagelessFramebuffer(&self, uint imagelessFramebuffer) {
   self.imagelessFramebuffer = imagelessFramebuffer;
   return *self;
}
fn FramebufferAttachmentsCreateInfo framebufferAttachmentsCreateInfo() => FramebufferAttachmentsCreateInfo { .sType = STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO, .pNext = null };
fn FramebufferAttachmentsCreateInfo FramebufferAttachmentsCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn FramebufferAttachmentsCreateInfo FramebufferAttachmentsCreateInfo.setAttachmentImageInfoCount(&self, uint attachmentImageInfoCount) {
   self.attachmentImageInfoCount = attachmentImageInfoCount;
   return *self;
}
fn FramebufferAttachmentsCreateInfo FramebufferAttachmentsCreateInfo.setAttachmentImageInfos(&self, FramebufferAttachmentImageInfo[] pAttachmentImageInfos) {
   self.attachmentImageInfoCount= (uint)pAttachmentImageInfos.len;
   self.pAttachmentImageInfos = &pAttachmentImageInfos[0];
   return *self;
}
fn FramebufferAttachmentImageInfo framebufferAttachmentImageInfo() => FramebufferAttachmentImageInfo { .sType = STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO, .pNext = null };
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setFlags(&self, ImageCreateFlags flags) {
   self.flags = flags;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setUsage(&self, ImageUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setWidth(&self, uint width) {
   self.width = width;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setHeight(&self, uint height) {
   self.height = height;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setLayerCount(&self, uint layerCount) {
   self.layerCount = layerCount;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setViewFormatCount(&self, uint viewFormatCount) {
   self.viewFormatCount = viewFormatCount;
   return *self;
}
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setViewFormats(&self, Format[] pViewFormats) {
   self.viewFormatCount= (uint)pViewFormats.len;
   self.pViewFormats = &pViewFormats[0];
   return *self;
}
fn RenderPassAttachmentBeginInfo renderPassAttachmentBeginInfo() => RenderPassAttachmentBeginInfo { .sType = STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO, .pNext = null };
fn RenderPassAttachmentBeginInfo RenderPassAttachmentBeginInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderPassAttachmentBeginInfo RenderPassAttachmentBeginInfo.setAttachmentCount(&self, uint attachmentCount) {
   self.attachmentCount = attachmentCount;
   return *self;
}
fn RenderPassAttachmentBeginInfo RenderPassAttachmentBeginInfo.setAttachments(&self, ImageView[] pAttachments) {
   self.attachmentCount= (uint)pAttachments.len;
   self.pAttachments = &pAttachments[0];
   return *self;
}
fn PhysicalDeviceTextureCompressionASTCHDRFeatures physicalDeviceTextureCompressionASTCHDRFeatures() => PhysicalDeviceTextureCompressionASTCHDRFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES, .pNext = null };
fn PhysicalDeviceTextureCompressionASTCHDRFeatures PhysicalDeviceTextureCompressionASTCHDRFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceTextureCompressionASTCHDRFeatures PhysicalDeviceTextureCompressionASTCHDRFeatures.setTextureCompressionASTC_HDR(&self, uint textureCompressionASTC_HDR) {
   self.textureCompressionASTC_HDR = textureCompressionASTC_HDR;
   return *self;
}
fn PipelineCreationFeedbackCreateInfo pipelineCreationFeedbackCreateInfo() => PipelineCreationFeedbackCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO, .pNext = null };
fn PipelineCreationFeedbackCreateInfo PipelineCreationFeedbackCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineCreationFeedbackCreateInfo PipelineCreationFeedbackCreateInfo.setPipelineCreationFeedback(&self, PipelineCreationFeedback* pPipelineCreationFeedback) {
   self.pPipelineCreationFeedback = pPipelineCreationFeedback;
   return *self;
}
fn PipelineCreationFeedbackCreateInfo PipelineCreationFeedbackCreateInfo.setPipelineStageCreationFeedbackCount(&self, uint pipelineStageCreationFeedbackCount) {
   self.pipelineStageCreationFeedbackCount = pipelineStageCreationFeedbackCount;
   return *self;
}
fn PipelineCreationFeedbackCreateInfo PipelineCreationFeedbackCreateInfo.setPipelineStageCreationFeedbacks(&self, PipelineCreationFeedback[] pPipelineStageCreationFeedbacks) {
   self.pipelineStageCreationFeedbackCount= (uint)pPipelineStageCreationFeedbacks.len;
   self.pPipelineStageCreationFeedbacks = &pPipelineStageCreationFeedbacks[0];
   return *self;
}
fn PhysicalDeviceSeparateDepthStencilLayoutsFeatures physicalDeviceSeparateDepthStencilLayoutsFeatures() => PhysicalDeviceSeparateDepthStencilLayoutsFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES, .pNext = null };
fn PhysicalDeviceSeparateDepthStencilLayoutsFeatures PhysicalDeviceSeparateDepthStencilLayoutsFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSeparateDepthStencilLayoutsFeatures PhysicalDeviceSeparateDepthStencilLayoutsFeatures.setSeparateDepthStencilLayouts(&self, uint separateDepthStencilLayouts) {
   self.separateDepthStencilLayouts = separateDepthStencilLayouts;
   return *self;
}
fn AttachmentReferenceStencilLayout attachmentReferenceStencilLayout() => AttachmentReferenceStencilLayout { .sType = STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT, .pNext = null };
fn AttachmentReferenceStencilLayout AttachmentReferenceStencilLayout.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AttachmentReferenceStencilLayout AttachmentReferenceStencilLayout.setStencilLayout(&self, ImageLayout stencilLayout) {
   self.stencilLayout = stencilLayout;
   return *self;
}
fn AttachmentDescriptionStencilLayout attachmentDescriptionStencilLayout() => AttachmentDescriptionStencilLayout { .sType = STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT, .pNext = null };
fn AttachmentDescriptionStencilLayout AttachmentDescriptionStencilLayout.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AttachmentDescriptionStencilLayout AttachmentDescriptionStencilLayout.setStencilInitialLayout(&self, ImageLayout stencilInitialLayout) {
   self.stencilInitialLayout = stencilInitialLayout;
   return *self;
}
fn AttachmentDescriptionStencilLayout AttachmentDescriptionStencilLayout.setStencilFinalLayout(&self, ImageLayout stencilFinalLayout) {
   self.stencilFinalLayout = stencilFinalLayout;
   return *self;
}
fn PhysicalDeviceShaderDemoteToHelperInvocationFeatures physicalDeviceShaderDemoteToHelperInvocationFeatures() => PhysicalDeviceShaderDemoteToHelperInvocationFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES, .pNext = null };
fn PhysicalDeviceShaderDemoteToHelperInvocationFeatures PhysicalDeviceShaderDemoteToHelperInvocationFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderDemoteToHelperInvocationFeatures PhysicalDeviceShaderDemoteToHelperInvocationFeatures.setShaderDemoteToHelperInvocation(&self, uint shaderDemoteToHelperInvocation) {
   self.shaderDemoteToHelperInvocation = shaderDemoteToHelperInvocation;
   return *self;
}
fn PhysicalDeviceTexelBufferAlignmentProperties physicalDeviceTexelBufferAlignmentProperties() => PhysicalDeviceTexelBufferAlignmentProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES, .pNext = null };
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setStorageTexelBufferOffsetAlignmentBytes(&self, DeviceSize storageTexelBufferOffsetAlignmentBytes) {
   self.storageTexelBufferOffsetAlignmentBytes = storageTexelBufferOffsetAlignmentBytes;
   return *self;
}
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setStorageTexelBufferOffsetSingleTexelAlignment(&self, uint storageTexelBufferOffsetSingleTexelAlignment) {
   self.storageTexelBufferOffsetSingleTexelAlignment = storageTexelBufferOffsetSingleTexelAlignment;
   return *self;
}
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setUniformTexelBufferOffsetAlignmentBytes(&self, DeviceSize uniformTexelBufferOffsetAlignmentBytes) {
   self.uniformTexelBufferOffsetAlignmentBytes = uniformTexelBufferOffsetAlignmentBytes;
   return *self;
}
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setUniformTexelBufferOffsetSingleTexelAlignment(&self, uint uniformTexelBufferOffsetSingleTexelAlignment) {
   self.uniformTexelBufferOffsetSingleTexelAlignment = uniformTexelBufferOffsetSingleTexelAlignment;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlFeatures physicalDeviceSubgroupSizeControlFeatures() => PhysicalDeviceSubgroupSizeControlFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES, .pNext = null };
fn PhysicalDeviceSubgroupSizeControlFeatures PhysicalDeviceSubgroupSizeControlFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlFeatures PhysicalDeviceSubgroupSizeControlFeatures.setSubgroupSizeControl(&self, uint subgroupSizeControl) {
   self.subgroupSizeControl = subgroupSizeControl;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlFeatures PhysicalDeviceSubgroupSizeControlFeatures.setComputeFullSubgroups(&self, uint computeFullSubgroups) {
   self.computeFullSubgroups = computeFullSubgroups;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlProperties physicalDeviceSubgroupSizeControlProperties() => PhysicalDeviceSubgroupSizeControlProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES, .pNext = null };
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setMinSubgroupSize(&self, uint minSubgroupSize) {
   self.minSubgroupSize = minSubgroupSize;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setMaxSubgroupSize(&self, uint maxSubgroupSize) {
   self.maxSubgroupSize = maxSubgroupSize;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setMaxComputeWorkgroupSubgroups(&self, uint maxComputeWorkgroupSubgroups) {
   self.maxComputeWorkgroupSubgroups = maxComputeWorkgroupSubgroups;
   return *self;
}
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setRequiredSubgroupSizeStages(&self, ShaderStageFlags requiredSubgroupSizeStages) {
   self.requiredSubgroupSizeStages = requiredSubgroupSizeStages;
   return *self;
}
fn PipelineShaderStageRequiredSubgroupSizeCreateInfo pipelineShaderStageRequiredSubgroupSizeCreateInfo() => PipelineShaderStageRequiredSubgroupSizeCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO, .pNext = null };
fn PipelineShaderStageRequiredSubgroupSizeCreateInfo PipelineShaderStageRequiredSubgroupSizeCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineShaderStageRequiredSubgroupSizeCreateInfo PipelineShaderStageRequiredSubgroupSizeCreateInfo.setRequiredSubgroupSize(&self, uint requiredSubgroupSize) {
   self.requiredSubgroupSize = requiredSubgroupSize;
   return *self;
}
fn MemoryOpaqueCaptureAddressAllocateInfo memoryOpaqueCaptureAddressAllocateInfo() => MemoryOpaqueCaptureAddressAllocateInfo { .sType = STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO, .pNext = null };
fn MemoryOpaqueCaptureAddressAllocateInfo MemoryOpaqueCaptureAddressAllocateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryOpaqueCaptureAddressAllocateInfo MemoryOpaqueCaptureAddressAllocateInfo.setOpaqueCaptureAddress(&self, ulong opaqueCaptureAddress) {
   self.opaqueCaptureAddress = opaqueCaptureAddress;
   return *self;
}
fn DeviceMemoryOpaqueCaptureAddressInfo deviceMemoryOpaqueCaptureAddressInfo() => DeviceMemoryOpaqueCaptureAddressInfo { .sType = STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO, .pNext = null };
fn DeviceMemoryOpaqueCaptureAddressInfo DeviceMemoryOpaqueCaptureAddressInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DeviceMemoryOpaqueCaptureAddressInfo DeviceMemoryOpaqueCaptureAddressInfo.setMemory(&self, DeviceMemory memory) {
   self.memory = memory;
   return *self;
}
fn PhysicalDevicePipelineCreationCacheControlFeatures physicalDevicePipelineCreationCacheControlFeatures() => PhysicalDevicePipelineCreationCacheControlFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES, .pNext = null };
fn PhysicalDevicePipelineCreationCacheControlFeatures PhysicalDevicePipelineCreationCacheControlFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevicePipelineCreationCacheControlFeatures PhysicalDevicePipelineCreationCacheControlFeatures.setPipelineCreationCacheControl(&self, uint pipelineCreationCacheControl) {
   self.pipelineCreationCacheControl = pipelineCreationCacheControl;
   return *self;
}
fn PhysicalDeviceVulkan11Features physicalDeviceVulkan11Features() => PhysicalDeviceVulkan11Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES, .pNext = null };
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setStorageBuffer16BitAccess(&self, uint storageBuffer16BitAccess) {
   self.storageBuffer16BitAccess = storageBuffer16BitAccess;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setUniformAndStorageBuffer16BitAccess(&self, uint uniformAndStorageBuffer16BitAccess) {
   self.uniformAndStorageBuffer16BitAccess = uniformAndStorageBuffer16BitAccess;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setStoragePushConstant16(&self, uint storagePushConstant16) {
   self.storagePushConstant16 = storagePushConstant16;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setStorageInputOutput16(&self, uint storageInputOutput16) {
   self.storageInputOutput16 = storageInputOutput16;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setMultiview(&self, uint multiview) {
   self.multiview = multiview;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setMultiviewGeometryShader(&self, uint multiviewGeometryShader) {
   self.multiviewGeometryShader = multiviewGeometryShader;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setMultiviewTessellationShader(&self, uint multiviewTessellationShader) {
   self.multiviewTessellationShader = multiviewTessellationShader;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setVariablePointersStorageBuffer(&self, uint variablePointersStorageBuffer) {
   self.variablePointersStorageBuffer = variablePointersStorageBuffer;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setVariablePointers(&self, uint variablePointers) {
   self.variablePointers = variablePointers;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setProtectedMemory(&self, uint protectedMemory) {
   self.protectedMemory = protectedMemory;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setSamplerYcbcrConversion(&self, uint samplerYcbcrConversion) {
   self.samplerYcbcrConversion = samplerYcbcrConversion;
   return *self;
}
fn PhysicalDeviceVulkan11Features PhysicalDeviceVulkan11Features.setShaderDrawParameters(&self, uint shaderDrawParameters) {
   self.shaderDrawParameters = shaderDrawParameters;
   return *self;
}
fn PhysicalDeviceVulkan11Properties physicalDeviceVulkan11Properties() => PhysicalDeviceVulkan11Properties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES, .pNext = null };
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setDeviceUUID(&self, uint[UUID_SIZE] deviceUUID) {
   self.deviceUUID = deviceUUID;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setDriverUUID(&self, uint[UUID_SIZE] driverUUID) {
   self.driverUUID = driverUUID;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setDeviceLUID(&self, uint[LUID_SIZE] deviceLUID) {
   self.deviceLUID = deviceLUID;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setDeviceNodeMask(&self, uint deviceNodeMask) {
   self.deviceNodeMask = deviceNodeMask;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setDeviceLUIDValid(&self, uint deviceLUIDValid) {
   self.deviceLUIDValid = deviceLUIDValid;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setSubgroupSize(&self, uint subgroupSize) {
   self.subgroupSize = subgroupSize;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setSubgroupSupportedStages(&self, ShaderStageFlags subgroupSupportedStages) {
   self.subgroupSupportedStages = subgroupSupportedStages;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setSubgroupSupportedOperations(&self, SubgroupFeatureFlags subgroupSupportedOperations) {
   self.subgroupSupportedOperations = subgroupSupportedOperations;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setSubgroupQuadOperationsInAllStages(&self, uint subgroupQuadOperationsInAllStages) {
   self.subgroupQuadOperationsInAllStages = subgroupQuadOperationsInAllStages;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setPointClippingBehavior(&self, PointClippingBehavior pointClippingBehavior) {
   self.pointClippingBehavior = pointClippingBehavior;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setMaxMultiviewViewCount(&self, uint maxMultiviewViewCount) {
   self.maxMultiviewViewCount = maxMultiviewViewCount;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setMaxMultiviewInstanceIndex(&self, uint maxMultiviewInstanceIndex) {
   self.maxMultiviewInstanceIndex = maxMultiviewInstanceIndex;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setProtectedNoFault(&self, uint protectedNoFault) {
   self.protectedNoFault = protectedNoFault;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setMaxPerSetDescriptors(&self, uint maxPerSetDescriptors) {
   self.maxPerSetDescriptors = maxPerSetDescriptors;
   return *self;
}
fn PhysicalDeviceVulkan11Properties PhysicalDeviceVulkan11Properties.setMaxMemoryAllocationSize(&self, DeviceSize maxMemoryAllocationSize) {
   self.maxMemoryAllocationSize = maxMemoryAllocationSize;
   return *self;
}
fn PhysicalDeviceVulkan12Features physicalDeviceVulkan12Features() => PhysicalDeviceVulkan12Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES, .pNext = null };
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setSamplerMirrorClampToEdge(&self, uint samplerMirrorClampToEdge) {
   self.samplerMirrorClampToEdge = samplerMirrorClampToEdge;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDrawIndirectCount(&self, uint drawIndirectCount) {
   self.drawIndirectCount = drawIndirectCount;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setStorageBuffer8BitAccess(&self, uint storageBuffer8BitAccess) {
   self.storageBuffer8BitAccess = storageBuffer8BitAccess;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setUniformAndStorageBuffer8BitAccess(&self, uint uniformAndStorageBuffer8BitAccess) {
   self.uniformAndStorageBuffer8BitAccess = uniformAndStorageBuffer8BitAccess;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setStoragePushConstant8(&self, uint storagePushConstant8) {
   self.storagePushConstant8 = storagePushConstant8;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderBufferInt64Atomics(&self, uint shaderBufferInt64Atomics) {
   self.shaderBufferInt64Atomics = shaderBufferInt64Atomics;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderSharedInt64Atomics(&self, uint shaderSharedInt64Atomics) {
   self.shaderSharedInt64Atomics = shaderSharedInt64Atomics;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderFloat16(&self, uint shaderFloat16) {
   self.shaderFloat16 = shaderFloat16;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderInt8(&self, uint shaderInt8) {
   self.shaderInt8 = shaderInt8;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorIndexing(&self, uint descriptorIndexing) {
   self.descriptorIndexing = descriptorIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderInputAttachmentArrayDynamicIndexing(&self, uint shaderInputAttachmentArrayDynamicIndexing) {
   self.shaderInputAttachmentArrayDynamicIndexing = shaderInputAttachmentArrayDynamicIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderUniformTexelBufferArrayDynamicIndexing(&self, uint shaderUniformTexelBufferArrayDynamicIndexing) {
   self.shaderUniformTexelBufferArrayDynamicIndexing = shaderUniformTexelBufferArrayDynamicIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderStorageTexelBufferArrayDynamicIndexing(&self, uint shaderStorageTexelBufferArrayDynamicIndexing) {
   self.shaderStorageTexelBufferArrayDynamicIndexing = shaderStorageTexelBufferArrayDynamicIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderUniformBufferArrayNonUniformIndexing(&self, uint shaderUniformBufferArrayNonUniformIndexing) {
   self.shaderUniformBufferArrayNonUniformIndexing = shaderUniformBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderSampledImageArrayNonUniformIndexing(&self, uint shaderSampledImageArrayNonUniformIndexing) {
   self.shaderSampledImageArrayNonUniformIndexing = shaderSampledImageArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderStorageBufferArrayNonUniformIndexing(&self, uint shaderStorageBufferArrayNonUniformIndexing) {
   self.shaderStorageBufferArrayNonUniformIndexing = shaderStorageBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderStorageImageArrayNonUniformIndexing(&self, uint shaderStorageImageArrayNonUniformIndexing) {
   self.shaderStorageImageArrayNonUniformIndexing = shaderStorageImageArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderInputAttachmentArrayNonUniformIndexing(&self, uint shaderInputAttachmentArrayNonUniformIndexing) {
   self.shaderInputAttachmentArrayNonUniformIndexing = shaderInputAttachmentArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderUniformTexelBufferArrayNonUniformIndexing(&self, uint shaderUniformTexelBufferArrayNonUniformIndexing) {
   self.shaderUniformTexelBufferArrayNonUniformIndexing = shaderUniformTexelBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderStorageTexelBufferArrayNonUniformIndexing(&self, uint shaderStorageTexelBufferArrayNonUniformIndexing) {
   self.shaderStorageTexelBufferArrayNonUniformIndexing = shaderStorageTexelBufferArrayNonUniformIndexing;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingUniformBufferUpdateAfterBind(&self, uint descriptorBindingUniformBufferUpdateAfterBind) {
   self.descriptorBindingUniformBufferUpdateAfterBind = descriptorBindingUniformBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingSampledImageUpdateAfterBind(&self, uint descriptorBindingSampledImageUpdateAfterBind) {
   self.descriptorBindingSampledImageUpdateAfterBind = descriptorBindingSampledImageUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingStorageImageUpdateAfterBind(&self, uint descriptorBindingStorageImageUpdateAfterBind) {
   self.descriptorBindingStorageImageUpdateAfterBind = descriptorBindingStorageImageUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingStorageBufferUpdateAfterBind(&self, uint descriptorBindingStorageBufferUpdateAfterBind) {
   self.descriptorBindingStorageBufferUpdateAfterBind = descriptorBindingStorageBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingUniformTexelBufferUpdateAfterBind(&self, uint descriptorBindingUniformTexelBufferUpdateAfterBind) {
   self.descriptorBindingUniformTexelBufferUpdateAfterBind = descriptorBindingUniformTexelBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingStorageTexelBufferUpdateAfterBind(&self, uint descriptorBindingStorageTexelBufferUpdateAfterBind) {
   self.descriptorBindingStorageTexelBufferUpdateAfterBind = descriptorBindingStorageTexelBufferUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingUpdateUnusedWhilePending(&self, uint descriptorBindingUpdateUnusedWhilePending) {
   self.descriptorBindingUpdateUnusedWhilePending = descriptorBindingUpdateUnusedWhilePending;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingPartiallyBound(&self, uint descriptorBindingPartiallyBound) {
   self.descriptorBindingPartiallyBound = descriptorBindingPartiallyBound;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setDescriptorBindingVariableDescriptorCount(&self, uint descriptorBindingVariableDescriptorCount) {
   self.descriptorBindingVariableDescriptorCount = descriptorBindingVariableDescriptorCount;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setRuntimeDescriptorArray(&self, uint runtimeDescriptorArray) {
   self.runtimeDescriptorArray = runtimeDescriptorArray;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setSamplerFilterMinmax(&self, uint samplerFilterMinmax) {
   self.samplerFilterMinmax = samplerFilterMinmax;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setScalarBlockLayout(&self, uint scalarBlockLayout) {
   self.scalarBlockLayout = scalarBlockLayout;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setImagelessFramebuffer(&self, uint imagelessFramebuffer) {
   self.imagelessFramebuffer = imagelessFramebuffer;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setUniformBufferStandardLayout(&self, uint uniformBufferStandardLayout) {
   self.uniformBufferStandardLayout = uniformBufferStandardLayout;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderSubgroupExtendedTypes(&self, uint shaderSubgroupExtendedTypes) {
   self.shaderSubgroupExtendedTypes = shaderSubgroupExtendedTypes;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setSeparateDepthStencilLayouts(&self, uint separateDepthStencilLayouts) {
   self.separateDepthStencilLayouts = separateDepthStencilLayouts;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setHostQueryReset(&self, uint hostQueryReset) {
   self.hostQueryReset = hostQueryReset;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setTimelineSemaphore(&self, uint timelineSemaphore) {
   self.timelineSemaphore = timelineSemaphore;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setBufferDeviceAddress(&self, uint bufferDeviceAddress) {
   self.bufferDeviceAddress = bufferDeviceAddress;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setBufferDeviceAddressCaptureReplay(&self, uint bufferDeviceAddressCaptureReplay) {
   self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setBufferDeviceAddressMultiDevice(&self, uint bufferDeviceAddressMultiDevice) {
   self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setVulkanMemoryModel(&self, uint vulkanMemoryModel) {
   self.vulkanMemoryModel = vulkanMemoryModel;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setVulkanMemoryModelDeviceScope(&self, uint vulkanMemoryModelDeviceScope) {
   self.vulkanMemoryModelDeviceScope = vulkanMemoryModelDeviceScope;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setVulkanMemoryModelAvailabilityVisibilityChains(&self, uint vulkanMemoryModelAvailabilityVisibilityChains) {
   self.vulkanMemoryModelAvailabilityVisibilityChains = vulkanMemoryModelAvailabilityVisibilityChains;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderOutputViewportIndex(&self, uint shaderOutputViewportIndex) {
   self.shaderOutputViewportIndex = shaderOutputViewportIndex;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setShaderOutputLayer(&self, uint shaderOutputLayer) {
   self.shaderOutputLayer = shaderOutputLayer;
   return *self;
}
fn PhysicalDeviceVulkan12Features PhysicalDeviceVulkan12Features.setSubgroupBroadcastDynamicId(&self, uint subgroupBroadcastDynamicId) {
   self.subgroupBroadcastDynamicId = subgroupBroadcastDynamicId;
   return *self;
}
fn PhysicalDeviceVulkan12Properties physicalDeviceVulkan12Properties() => PhysicalDeviceVulkan12Properties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES, .pNext = null };
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setDriverID(&self, DriverId driverID) {
   self.driverID = driverID;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setDriverName(&self, char[MAX_DRIVER_NAME_SIZE] driverName) {
   self.driverName = driverName;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setDriverInfo(&self, char[MAX_DRIVER_INFO_SIZE] driverInfo) {
   self.driverInfo = driverInfo;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setConformanceVersion(&self, ConformanceVersion conformanceVersion) {
   self.conformanceVersion = conformanceVersion;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setDenormBehaviorIndependence(&self, ShaderFloatControlsIndependence denormBehaviorIndependence) {
   self.denormBehaviorIndependence = denormBehaviorIndependence;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setRoundingModeIndependence(&self, ShaderFloatControlsIndependence roundingModeIndependence) {
   self.roundingModeIndependence = roundingModeIndependence;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderSignedZeroInfNanPreserveFloat16(&self, uint shaderSignedZeroInfNanPreserveFloat16) {
   self.shaderSignedZeroInfNanPreserveFloat16 = shaderSignedZeroInfNanPreserveFloat16;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderSignedZeroInfNanPreserveFloat32(&self, uint shaderSignedZeroInfNanPreserveFloat32) {
   self.shaderSignedZeroInfNanPreserveFloat32 = shaderSignedZeroInfNanPreserveFloat32;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderSignedZeroInfNanPreserveFloat64(&self, uint shaderSignedZeroInfNanPreserveFloat64) {
   self.shaderSignedZeroInfNanPreserveFloat64 = shaderSignedZeroInfNanPreserveFloat64;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderDenormPreserveFloat16(&self, uint shaderDenormPreserveFloat16) {
   self.shaderDenormPreserveFloat16 = shaderDenormPreserveFloat16;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderDenormPreserveFloat32(&self, uint shaderDenormPreserveFloat32) {
   self.shaderDenormPreserveFloat32 = shaderDenormPreserveFloat32;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderDenormPreserveFloat64(&self, uint shaderDenormPreserveFloat64) {
   self.shaderDenormPreserveFloat64 = shaderDenormPreserveFloat64;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderDenormFlushToZeroFloat16(&self, uint shaderDenormFlushToZeroFloat16) {
   self.shaderDenormFlushToZeroFloat16 = shaderDenormFlushToZeroFloat16;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderDenormFlushToZeroFloat32(&self, uint shaderDenormFlushToZeroFloat32) {
   self.shaderDenormFlushToZeroFloat32 = shaderDenormFlushToZeroFloat32;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderDenormFlushToZeroFloat64(&self, uint shaderDenormFlushToZeroFloat64) {
   self.shaderDenormFlushToZeroFloat64 = shaderDenormFlushToZeroFloat64;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderRoundingModeRTEFloat16(&self, uint shaderRoundingModeRTEFloat16) {
   self.shaderRoundingModeRTEFloat16 = shaderRoundingModeRTEFloat16;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderRoundingModeRTEFloat32(&self, uint shaderRoundingModeRTEFloat32) {
   self.shaderRoundingModeRTEFloat32 = shaderRoundingModeRTEFloat32;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderRoundingModeRTEFloat64(&self, uint shaderRoundingModeRTEFloat64) {
   self.shaderRoundingModeRTEFloat64 = shaderRoundingModeRTEFloat64;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderRoundingModeRTZFloat16(&self, uint shaderRoundingModeRTZFloat16) {
   self.shaderRoundingModeRTZFloat16 = shaderRoundingModeRTZFloat16;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderRoundingModeRTZFloat32(&self, uint shaderRoundingModeRTZFloat32) {
   self.shaderRoundingModeRTZFloat32 = shaderRoundingModeRTZFloat32;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderRoundingModeRTZFloat64(&self, uint shaderRoundingModeRTZFloat64) {
   self.shaderRoundingModeRTZFloat64 = shaderRoundingModeRTZFloat64;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxUpdateAfterBindDescriptorsInAllPools(&self, uint maxUpdateAfterBindDescriptorsInAllPools) {
   self.maxUpdateAfterBindDescriptorsInAllPools = maxUpdateAfterBindDescriptorsInAllPools;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderUniformBufferArrayNonUniformIndexingNative(&self, uint shaderUniformBufferArrayNonUniformIndexingNative) {
   self.shaderUniformBufferArrayNonUniformIndexingNative = shaderUniformBufferArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderSampledImageArrayNonUniformIndexingNative(&self, uint shaderSampledImageArrayNonUniformIndexingNative) {
   self.shaderSampledImageArrayNonUniformIndexingNative = shaderSampledImageArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderStorageBufferArrayNonUniformIndexingNative(&self, uint shaderStorageBufferArrayNonUniformIndexingNative) {
   self.shaderStorageBufferArrayNonUniformIndexingNative = shaderStorageBufferArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderStorageImageArrayNonUniformIndexingNative(&self, uint shaderStorageImageArrayNonUniformIndexingNative) {
   self.shaderStorageImageArrayNonUniformIndexingNative = shaderStorageImageArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setShaderInputAttachmentArrayNonUniformIndexingNative(&self, uint shaderInputAttachmentArrayNonUniformIndexingNative) {
   self.shaderInputAttachmentArrayNonUniformIndexingNative = shaderInputAttachmentArrayNonUniformIndexingNative;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setRobustBufferAccessUpdateAfterBind(&self, uint robustBufferAccessUpdateAfterBind) {
   self.robustBufferAccessUpdateAfterBind = robustBufferAccessUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setQuadDivergentImplicitLod(&self, uint quadDivergentImplicitLod) {
   self.quadDivergentImplicitLod = quadDivergentImplicitLod;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageDescriptorUpdateAfterBindSamplers(&self, uint maxPerStageDescriptorUpdateAfterBindSamplers) {
   self.maxPerStageDescriptorUpdateAfterBindSamplers = maxPerStageDescriptorUpdateAfterBindSamplers;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageDescriptorUpdateAfterBindUniformBuffers(&self, uint maxPerStageDescriptorUpdateAfterBindUniformBuffers) {
   self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = maxPerStageDescriptorUpdateAfterBindUniformBuffers;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageDescriptorUpdateAfterBindStorageBuffers(&self, uint maxPerStageDescriptorUpdateAfterBindStorageBuffers) {
   self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = maxPerStageDescriptorUpdateAfterBindStorageBuffers;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageDescriptorUpdateAfterBindSampledImages(&self, uint maxPerStageDescriptorUpdateAfterBindSampledImages) {
   self.maxPerStageDescriptorUpdateAfterBindSampledImages = maxPerStageDescriptorUpdateAfterBindSampledImages;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageDescriptorUpdateAfterBindStorageImages(&self, uint maxPerStageDescriptorUpdateAfterBindStorageImages) {
   self.maxPerStageDescriptorUpdateAfterBindStorageImages = maxPerStageDescriptorUpdateAfterBindStorageImages;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageDescriptorUpdateAfterBindInputAttachments(&self, uint maxPerStageDescriptorUpdateAfterBindInputAttachments) {
   self.maxPerStageDescriptorUpdateAfterBindInputAttachments = maxPerStageDescriptorUpdateAfterBindInputAttachments;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxPerStageUpdateAfterBindResources(&self, uint maxPerStageUpdateAfterBindResources) {
   self.maxPerStageUpdateAfterBindResources = maxPerStageUpdateAfterBindResources;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindSamplers(&self, uint maxDescriptorSetUpdateAfterBindSamplers) {
   self.maxDescriptorSetUpdateAfterBindSamplers = maxDescriptorSetUpdateAfterBindSamplers;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindUniformBuffers(&self, uint maxDescriptorSetUpdateAfterBindUniformBuffers) {
   self.maxDescriptorSetUpdateAfterBindUniformBuffers = maxDescriptorSetUpdateAfterBindUniformBuffers;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindUniformBuffersDynamic(&self, uint maxDescriptorSetUpdateAfterBindUniformBuffersDynamic) {
   self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindStorageBuffers(&self, uint maxDescriptorSetUpdateAfterBindStorageBuffers) {
   self.maxDescriptorSetUpdateAfterBindStorageBuffers = maxDescriptorSetUpdateAfterBindStorageBuffers;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindStorageBuffersDynamic(&self, uint maxDescriptorSetUpdateAfterBindStorageBuffersDynamic) {
   self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindSampledImages(&self, uint maxDescriptorSetUpdateAfterBindSampledImages) {
   self.maxDescriptorSetUpdateAfterBindSampledImages = maxDescriptorSetUpdateAfterBindSampledImages;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindStorageImages(&self, uint maxDescriptorSetUpdateAfterBindStorageImages) {
   self.maxDescriptorSetUpdateAfterBindStorageImages = maxDescriptorSetUpdateAfterBindStorageImages;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxDescriptorSetUpdateAfterBindInputAttachments(&self, uint maxDescriptorSetUpdateAfterBindInputAttachments) {
   self.maxDescriptorSetUpdateAfterBindInputAttachments = maxDescriptorSetUpdateAfterBindInputAttachments;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setSupportedDepthResolveModes(&self, ResolveModeFlags supportedDepthResolveModes) {
   self.supportedDepthResolveModes = supportedDepthResolveModes;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setSupportedStencilResolveModes(&self, ResolveModeFlags supportedStencilResolveModes) {
   self.supportedStencilResolveModes = supportedStencilResolveModes;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setIndependentResolveNone(&self, uint independentResolveNone) {
   self.independentResolveNone = independentResolveNone;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setIndependentResolve(&self, uint independentResolve) {
   self.independentResolve = independentResolve;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setFilterMinmaxSingleComponentFormats(&self, uint filterMinmaxSingleComponentFormats) {
   self.filterMinmaxSingleComponentFormats = filterMinmaxSingleComponentFormats;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setFilterMinmaxImageComponentMapping(&self, uint filterMinmaxImageComponentMapping) {
   self.filterMinmaxImageComponentMapping = filterMinmaxImageComponentMapping;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setMaxTimelineSemaphoreValueDifference(&self, ulong maxTimelineSemaphoreValueDifference) {
   self.maxTimelineSemaphoreValueDifference = maxTimelineSemaphoreValueDifference;
   return *self;
}
fn PhysicalDeviceVulkan12Properties PhysicalDeviceVulkan12Properties.setFramebufferIntegerColorSampleCounts(&self, SampleCountFlags framebufferIntegerColorSampleCounts) {
   self.framebufferIntegerColorSampleCounts = framebufferIntegerColorSampleCounts;
   return *self;
}
fn PhysicalDeviceVulkan13Features physicalDeviceVulkan13Features() => PhysicalDeviceVulkan13Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES, .pNext = null };
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setRobustImageAccess(&self, uint robustImageAccess) {
   self.robustImageAccess = robustImageAccess;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setInlineUniformBlock(&self, uint inlineUniformBlock) {
   self.inlineUniformBlock = inlineUniformBlock;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setDescriptorBindingInlineUniformBlockUpdateAfterBind(&self, uint descriptorBindingInlineUniformBlockUpdateAfterBind) {
   self.descriptorBindingInlineUniformBlockUpdateAfterBind = descriptorBindingInlineUniformBlockUpdateAfterBind;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setPipelineCreationCacheControl(&self, uint pipelineCreationCacheControl) {
   self.pipelineCreationCacheControl = pipelineCreationCacheControl;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setPrivateData(&self, uint privateData) {
   self.privateData = privateData;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setShaderDemoteToHelperInvocation(&self, uint shaderDemoteToHelperInvocation) {
   self.shaderDemoteToHelperInvocation = shaderDemoteToHelperInvocation;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setShaderTerminateInvocation(&self, uint shaderTerminateInvocation) {
   self.shaderTerminateInvocation = shaderTerminateInvocation;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setSubgroupSizeControl(&self, uint subgroupSizeControl) {
   self.subgroupSizeControl = subgroupSizeControl;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setComputeFullSubgroups(&self, uint computeFullSubgroups) {
   self.computeFullSubgroups = computeFullSubgroups;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setSynchronization2(&self, uint synchronization2) {
   self.synchronization2 = synchronization2;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setTextureCompressionASTC_HDR(&self, uint textureCompressionASTC_HDR) {
   self.textureCompressionASTC_HDR = textureCompressionASTC_HDR;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setShaderZeroInitializeWorkgroupMemory(&self, uint shaderZeroInitializeWorkgroupMemory) {
   self.shaderZeroInitializeWorkgroupMemory = shaderZeroInitializeWorkgroupMemory;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setDynamicRendering(&self, uint dynamicRendering) {
   self.dynamicRendering = dynamicRendering;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setShaderIntegerDotProduct(&self, uint shaderIntegerDotProduct) {
   self.shaderIntegerDotProduct = shaderIntegerDotProduct;
   return *self;
}
fn PhysicalDeviceVulkan13Features PhysicalDeviceVulkan13Features.setMaintenance4(&self, uint maintenance4) {
   self.maintenance4 = maintenance4;
   return *self;
}
fn PhysicalDeviceVulkan13Properties physicalDeviceVulkan13Properties() => PhysicalDeviceVulkan13Properties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES, .pNext = null };
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMinSubgroupSize(&self, uint minSubgroupSize) {
   self.minSubgroupSize = minSubgroupSize;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxSubgroupSize(&self, uint maxSubgroupSize) {
   self.maxSubgroupSize = maxSubgroupSize;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxComputeWorkgroupSubgroups(&self, uint maxComputeWorkgroupSubgroups) {
   self.maxComputeWorkgroupSubgroups = maxComputeWorkgroupSubgroups;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setRequiredSubgroupSizeStages(&self, ShaderStageFlags requiredSubgroupSizeStages) {
   self.requiredSubgroupSizeStages = requiredSubgroupSizeStages;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxInlineUniformBlockSize(&self, uint maxInlineUniformBlockSize) {
   self.maxInlineUniformBlockSize = maxInlineUniformBlockSize;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxPerStageDescriptorInlineUniformBlocks(&self, uint maxPerStageDescriptorInlineUniformBlocks) {
   self.maxPerStageDescriptorInlineUniformBlocks = maxPerStageDescriptorInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks(&self, uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks) {
   self.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxDescriptorSetInlineUniformBlocks(&self, uint maxDescriptorSetInlineUniformBlocks) {
   self.maxDescriptorSetInlineUniformBlocks = maxDescriptorSetInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxDescriptorSetUpdateAfterBindInlineUniformBlocks(&self, uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks) {
   self.maxDescriptorSetUpdateAfterBindInlineUniformBlocks = maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxInlineUniformTotalSize(&self, uint maxInlineUniformTotalSize) {
   self.maxInlineUniformTotalSize = maxInlineUniformTotalSize;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct8BitUnsignedAccelerated(&self, uint integerDotProduct8BitUnsignedAccelerated) {
   self.integerDotProduct8BitUnsignedAccelerated = integerDotProduct8BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct8BitSignedAccelerated(&self, uint integerDotProduct8BitSignedAccelerated) {
   self.integerDotProduct8BitSignedAccelerated = integerDotProduct8BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct8BitMixedSignednessAccelerated(&self, uint integerDotProduct8BitMixedSignednessAccelerated) {
   self.integerDotProduct8BitMixedSignednessAccelerated = integerDotProduct8BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct4x8BitPackedUnsignedAccelerated(&self, uint integerDotProduct4x8BitPackedUnsignedAccelerated) {
   self.integerDotProduct4x8BitPackedUnsignedAccelerated = integerDotProduct4x8BitPackedUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct4x8BitPackedSignedAccelerated(&self, uint integerDotProduct4x8BitPackedSignedAccelerated) {
   self.integerDotProduct4x8BitPackedSignedAccelerated = integerDotProduct4x8BitPackedSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct4x8BitPackedMixedSignednessAccelerated(&self, uint integerDotProduct4x8BitPackedMixedSignednessAccelerated) {
   self.integerDotProduct4x8BitPackedMixedSignednessAccelerated = integerDotProduct4x8BitPackedMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct16BitUnsignedAccelerated(&self, uint integerDotProduct16BitUnsignedAccelerated) {
   self.integerDotProduct16BitUnsignedAccelerated = integerDotProduct16BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct16BitSignedAccelerated(&self, uint integerDotProduct16BitSignedAccelerated) {
   self.integerDotProduct16BitSignedAccelerated = integerDotProduct16BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct16BitMixedSignednessAccelerated(&self, uint integerDotProduct16BitMixedSignednessAccelerated) {
   self.integerDotProduct16BitMixedSignednessAccelerated = integerDotProduct16BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct32BitUnsignedAccelerated(&self, uint integerDotProduct32BitUnsignedAccelerated) {
   self.integerDotProduct32BitUnsignedAccelerated = integerDotProduct32BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct32BitSignedAccelerated(&self, uint integerDotProduct32BitSignedAccelerated) {
   self.integerDotProduct32BitSignedAccelerated = integerDotProduct32BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct32BitMixedSignednessAccelerated(&self, uint integerDotProduct32BitMixedSignednessAccelerated) {
   self.integerDotProduct32BitMixedSignednessAccelerated = integerDotProduct32BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct64BitUnsignedAccelerated(&self, uint integerDotProduct64BitUnsignedAccelerated) {
   self.integerDotProduct64BitUnsignedAccelerated = integerDotProduct64BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct64BitSignedAccelerated(&self, uint integerDotProduct64BitSignedAccelerated) {
   self.integerDotProduct64BitSignedAccelerated = integerDotProduct64BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProduct64BitMixedSignednessAccelerated(&self, uint integerDotProduct64BitMixedSignednessAccelerated) {
   self.integerDotProduct64BitMixedSignednessAccelerated = integerDotProduct64BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating8BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating8BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating8BitUnsignedAccelerated = integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating8BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating8BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating8BitSignedAccelerated = integerDotProductAccumulatingSaturating8BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating16BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating16BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating16BitUnsignedAccelerated = integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating16BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating16BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating16BitSignedAccelerated = integerDotProductAccumulatingSaturating16BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating32BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating32BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating32BitUnsignedAccelerated = integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating32BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating32BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating32BitSignedAccelerated = integerDotProductAccumulatingSaturating32BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating64BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating64BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating64BitUnsignedAccelerated = integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating64BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating64BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating64BitSignedAccelerated = integerDotProductAccumulatingSaturating64BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setIntegerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setStorageTexelBufferOffsetAlignmentBytes(&self, DeviceSize storageTexelBufferOffsetAlignmentBytes) {
   self.storageTexelBufferOffsetAlignmentBytes = storageTexelBufferOffsetAlignmentBytes;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setStorageTexelBufferOffsetSingleTexelAlignment(&self, uint storageTexelBufferOffsetSingleTexelAlignment) {
   self.storageTexelBufferOffsetSingleTexelAlignment = storageTexelBufferOffsetSingleTexelAlignment;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setUniformTexelBufferOffsetAlignmentBytes(&self, DeviceSize uniformTexelBufferOffsetAlignmentBytes) {
   self.uniformTexelBufferOffsetAlignmentBytes = uniformTexelBufferOffsetAlignmentBytes;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setUniformTexelBufferOffsetSingleTexelAlignment(&self, uint uniformTexelBufferOffsetSingleTexelAlignment) {
   self.uniformTexelBufferOffsetSingleTexelAlignment = uniformTexelBufferOffsetSingleTexelAlignment;
   return *self;
}
fn PhysicalDeviceVulkan13Properties PhysicalDeviceVulkan13Properties.setMaxBufferSize(&self, DeviceSize maxBufferSize) {
   self.maxBufferSize = maxBufferSize;
   return *self;
}
fn PhysicalDeviceToolProperties physicalDeviceToolProperties() => PhysicalDeviceToolProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES, .pNext = null };
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setName(&self, char[MAX_EXTENSION_NAME_SIZE] name) {
   self.name = name;
   return *self;
}
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setVersion(&self, char[MAX_EXTENSION_NAME_SIZE] version) {
   self.version = version;
   return *self;
}
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setPurposes(&self, ToolPurposeFlags purposes) {
   self.purposes = purposes;
   return *self;
}
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setDescription(&self, char[MAX_DESCRIPTION_SIZE] description) {
   self.description = description;
   return *self;
}
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setLayer(&self, char[MAX_EXTENSION_NAME_SIZE] layer) {
   self.layer = layer;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR accelerationStructureGeometryTrianglesData() => AccelerationStructureGeometryTrianglesDataKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR, .pNext = null };
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setVertexFormat(&self, Format vertexFormat) {
   self.vertexFormat = vertexFormat;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setVertexData(&self, DeviceOrHostAddressConstKHR vertexData) {
   self.vertexData = vertexData;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setVertexStride(&self, DeviceSize vertexStride) {
   self.vertexStride = vertexStride;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setMaxVertex(&self, uint maxVertex) {
   self.maxVertex = maxVertex;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setIndexType(&self, IndexType indexType) {
   self.indexType = indexType;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setIndexData(&self, DeviceOrHostAddressConstKHR indexData) {
   self.indexData = indexData;
   return *self;
}
fn AccelerationStructureGeometryTrianglesDataKHR AccelerationStructureGeometryTrianglesDataKHR.setTransformData(&self, DeviceOrHostAddressConstKHR transformData) {
   self.transformData = transformData;
   return *self;
}
fn AccelerationStructureGeometryAabbsDataKHR accelerationStructureGeometryAabbsData() => AccelerationStructureGeometryAabbsDataKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR, .pNext = null };
fn AccelerationStructureGeometryAabbsDataKHR AccelerationStructureGeometryAabbsDataKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureGeometryAabbsDataKHR AccelerationStructureGeometryAabbsDataKHR.setData(&self, DeviceOrHostAddressConstKHR data) {
   self.data = data;
   return *self;
}
fn AccelerationStructureGeometryAabbsDataKHR AccelerationStructureGeometryAabbsDataKHR.setStride(&self, DeviceSize stride) {
   self.stride = stride;
   return *self;
}
fn AccelerationStructureGeometryInstancesDataKHR accelerationStructureGeometryInstancesData() => AccelerationStructureGeometryInstancesDataKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR, .pNext = null };
fn AccelerationStructureGeometryInstancesDataKHR AccelerationStructureGeometryInstancesDataKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureGeometryInstancesDataKHR AccelerationStructureGeometryInstancesDataKHR.setArrayOfPointers(&self, uint arrayOfPointers) {
   self.arrayOfPointers = arrayOfPointers;
   return *self;
}
fn AccelerationStructureGeometryInstancesDataKHR AccelerationStructureGeometryInstancesDataKHR.setData(&self, DeviceOrHostAddressConstKHR data) {
   self.data = data;
   return *self;
}
fn AccelerationStructureGeometryKHR accelerationStructureGeometry() => AccelerationStructureGeometryKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR, .pNext = null };
fn AccelerationStructureGeometryKHR AccelerationStructureGeometryKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureGeometryKHR AccelerationStructureGeometryKHR.setGeometryType(&self, GeometryTypeKHR geometryType) {
   self.geometryType = geometryType;
   return *self;
}
fn AccelerationStructureGeometryKHR AccelerationStructureGeometryKHR.setGeometry(&self, AccelerationStructureGeometryDataKHR geometry) {
   self.geometry = geometry;
   return *self;
}
fn AccelerationStructureGeometryKHR AccelerationStructureGeometryKHR.setFlags(&self, GeometryFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR accelerationStructureBuildGeometryInfo() => AccelerationStructureBuildGeometryInfoKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR, .pNext = null };
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setType(&self, AccelerationStructureTypeKHR type) {
   self.type = type;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setFlags(&self, BuildAccelerationStructureFlagsKHR flags) {
   self.flags = flags;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setMode(&self, BuildAccelerationStructureModeKHR mode) {
   self.mode = mode;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setSrcAccelerationStructure(&self, AccelerationStructureKHR srcAccelerationStructure) {
   self.srcAccelerationStructure = srcAccelerationStructure;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setDstAccelerationStructure(&self, AccelerationStructureKHR dstAccelerationStructure) {
   self.dstAccelerationStructure = dstAccelerationStructure;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setGeometryCount(&self, uint geometryCount) {
   self.geometryCount = geometryCount;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setGeometries(&self, AccelerationStructureGeometryKHR[] pGeometries) {
   self.geometryCount= (uint)pGeometries.len;
   self.pGeometries = &pGeometries[0];
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setPGeometries(&self, AccelerationStructureGeometryKHR* ppGeometries) {
   self.ppGeometries = ppGeometries;
   return *self;
}
fn AccelerationStructureBuildGeometryInfoKHR AccelerationStructureBuildGeometryInfoKHR.setScratchData(&self, DeviceOrHostAddressKHR scratchData) {
   self.scratchData = scratchData;
   return *self;
}
fn AccelerationStructureCreateInfoKHR accelerationStructureCreateInfo() => AccelerationStructureCreateInfoKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR, .pNext = null };
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setCreateFlags(&self, AccelerationStructureCreateFlagsKHR createFlags) {
   self.createFlags = createFlags;
   return *self;
}
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setOffset(&self, DeviceSize offset) {
   self.offset = offset;
   return *self;
}
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setSize(&self, DeviceSize size) {
   self.size = size;
   return *self;
}
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setType(&self, AccelerationStructureTypeKHR type) {
   self.type = type;
   return *self;
}
fn AccelerationStructureCreateInfoKHR AccelerationStructureCreateInfoKHR.setDeviceAddress(&self, DeviceAddress deviceAddress) {
   self.deviceAddress = deviceAddress;
   return *self;
}
fn AccelerationStructureDeviceAddressInfoKHR accelerationStructureDeviceAddressInfo() => AccelerationStructureDeviceAddressInfoKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR, .pNext = null };
fn AccelerationStructureDeviceAddressInfoKHR AccelerationStructureDeviceAddressInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureDeviceAddressInfoKHR AccelerationStructureDeviceAddressInfoKHR.setAccelerationStructure(&self, AccelerationStructureKHR accelerationStructure) {
   self.accelerationStructure = accelerationStructure;
   return *self;
}
fn AccelerationStructureVersionInfoKHR accelerationStructureVersionInfo() => AccelerationStructureVersionInfoKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_INFO_KHR, .pNext = null };
fn AccelerationStructureVersionInfoKHR AccelerationStructureVersionInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureVersionInfoKHR AccelerationStructureVersionInfoKHR.setVersionData(&self, uint* pVersionData) {
   self.pVersionData = pVersionData;
   return *self;
}
fn CopyAccelerationStructureInfoKHR copyAccelerationStructureInfo() => CopyAccelerationStructureInfoKHR { .sType = STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR, .pNext = null };
fn CopyAccelerationStructureInfoKHR CopyAccelerationStructureInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyAccelerationStructureInfoKHR CopyAccelerationStructureInfoKHR.setSrc(&self, AccelerationStructureKHR src) {
   self.src = src;
   return *self;
}
fn CopyAccelerationStructureInfoKHR CopyAccelerationStructureInfoKHR.setDst(&self, AccelerationStructureKHR dst) {
   self.dst = dst;
   return *self;
}
fn CopyAccelerationStructureInfoKHR CopyAccelerationStructureInfoKHR.setMode(&self, CopyAccelerationStructureModeKHR mode) {
   self.mode = mode;
   return *self;
}
fn CopyAccelerationStructureToMemoryInfoKHR copyAccelerationStructureToMemoryInfo() => CopyAccelerationStructureToMemoryInfoKHR { .sType = STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR, .pNext = null };
fn CopyAccelerationStructureToMemoryInfoKHR CopyAccelerationStructureToMemoryInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyAccelerationStructureToMemoryInfoKHR CopyAccelerationStructureToMemoryInfoKHR.setSrc(&self, AccelerationStructureKHR src) {
   self.src = src;
   return *self;
}
fn CopyAccelerationStructureToMemoryInfoKHR CopyAccelerationStructureToMemoryInfoKHR.setDst(&self, DeviceOrHostAddressKHR dst) {
   self.dst = dst;
   return *self;
}
fn CopyAccelerationStructureToMemoryInfoKHR CopyAccelerationStructureToMemoryInfoKHR.setMode(&self, CopyAccelerationStructureModeKHR mode) {
   self.mode = mode;
   return *self;
}
fn CopyMemoryToAccelerationStructureInfoKHR copyMemoryToAccelerationStructureInfo() => CopyMemoryToAccelerationStructureInfoKHR { .sType = STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR, .pNext = null };
fn CopyMemoryToAccelerationStructureInfoKHR CopyMemoryToAccelerationStructureInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyMemoryToAccelerationStructureInfoKHR CopyMemoryToAccelerationStructureInfoKHR.setSrc(&self, DeviceOrHostAddressConstKHR src) {
   self.src = src;
   return *self;
}
fn CopyMemoryToAccelerationStructureInfoKHR CopyMemoryToAccelerationStructureInfoKHR.setDst(&self, AccelerationStructureKHR dst) {
   self.dst = dst;
   return *self;
}
fn CopyMemoryToAccelerationStructureInfoKHR CopyMemoryToAccelerationStructureInfoKHR.setMode(&self, CopyAccelerationStructureModeKHR mode) {
   self.mode = mode;
   return *self;
}
fn PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures physicalDeviceZeroInitializeWorkgroupMemoryFeatures() => PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES, .pNext = null };
fn PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.setShaderZeroInitializeWorkgroupMemory(&self, uint shaderZeroInitializeWorkgroupMemory) {
   self.shaderZeroInitializeWorkgroupMemory = shaderZeroInitializeWorkgroupMemory;
   return *self;
}
fn PhysicalDeviceImageRobustnessFeatures physicalDeviceImageRobustnessFeatures() => PhysicalDeviceImageRobustnessFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES, .pNext = null };
fn PhysicalDeviceImageRobustnessFeatures PhysicalDeviceImageRobustnessFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceImageRobustnessFeatures PhysicalDeviceImageRobustnessFeatures.setRobustImageAccess(&self, uint robustImageAccess) {
   self.robustImageAccess = robustImageAccess;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR physicalDevicePortabilitySubsetFeatures() => PhysicalDevicePortabilitySubsetFeaturesKHR { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR, .pNext = null };
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setConstantAlphaColorBlendFactors(&self, uint constantAlphaColorBlendFactors) {
   self.constantAlphaColorBlendFactors = constantAlphaColorBlendFactors;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setEvents(&self, uint events) {
   self.events = events;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setImageViewFormatReinterpretation(&self, uint imageViewFormatReinterpretation) {
   self.imageViewFormatReinterpretation = imageViewFormatReinterpretation;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setImageViewFormatSwizzle(&self, uint imageViewFormatSwizzle) {
   self.imageViewFormatSwizzle = imageViewFormatSwizzle;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setImageView2DOn3DImage(&self, uint imageView2DOn3DImage) {
   self.imageView2DOn3DImage = imageView2DOn3DImage;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setMultisampleArrayImage(&self, uint multisampleArrayImage) {
   self.multisampleArrayImage = multisampleArrayImage;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setMutableComparisonSamplers(&self, uint mutableComparisonSamplers) {
   self.mutableComparisonSamplers = mutableComparisonSamplers;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setPointPolygons(&self, uint pointPolygons) {
   self.pointPolygons = pointPolygons;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setSamplerMipLodBias(&self, uint samplerMipLodBias) {
   self.samplerMipLodBias = samplerMipLodBias;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setSeparateStencilMaskRef(&self, uint separateStencilMaskRef) {
   self.separateStencilMaskRef = separateStencilMaskRef;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setShaderSampleRateInterpolationFunctions(&self, uint shaderSampleRateInterpolationFunctions) {
   self.shaderSampleRateInterpolationFunctions = shaderSampleRateInterpolationFunctions;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setTessellationIsolines(&self, uint tessellationIsolines) {
   self.tessellationIsolines = tessellationIsolines;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setTessellationPointMode(&self, uint tessellationPointMode) {
   self.tessellationPointMode = tessellationPointMode;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setTriangleFans(&self, uint triangleFans) {
   self.triangleFans = triangleFans;
   return *self;
}
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setVertexAttributeAccessBeyondStride(&self, uint vertexAttributeAccessBeyondStride) {
   self.vertexAttributeAccessBeyondStride = vertexAttributeAccessBeyondStride;
   return *self;
}
fn PhysicalDevicePortabilitySubsetPropertiesKHR physicalDevicePortabilitySubsetProperties() => PhysicalDevicePortabilitySubsetPropertiesKHR { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR, .pNext = null };
fn PhysicalDevicePortabilitySubsetPropertiesKHR PhysicalDevicePortabilitySubsetPropertiesKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDevicePortabilitySubsetPropertiesKHR PhysicalDevicePortabilitySubsetPropertiesKHR.setMinVertexInputBindingStrideAlignment(&self, uint minVertexInputBindingStrideAlignment) {
   self.minVertexInputBindingStrideAlignment = minVertexInputBindingStrideAlignment;
   return *self;
}
fn BufferCopy2 bufferCopy2() => BufferCopy2 { .sType = STRUCTURE_TYPE_BUFFER_COPY_2, .pNext = null };
fn BufferCopy2 BufferCopy2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferCopy2 BufferCopy2.setSrcOffset(&self, DeviceSize srcOffset) {
   self.srcOffset = srcOffset;
   return *self;
}
fn BufferCopy2 BufferCopy2.setDstOffset(&self, DeviceSize dstOffset) {
   self.dstOffset = dstOffset;
   return *self;
}
fn BufferCopy2 BufferCopy2.setSize(&self, DeviceSize size) {
   self.size = size;
   return *self;
}
fn ImageCopy2 imageCopy2() => ImageCopy2 { .sType = STRUCTURE_TYPE_IMAGE_COPY_2, .pNext = null };
fn ImageCopy2 ImageCopy2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageCopy2 ImageCopy2.setSrcSubresource(&self, ImageSubresourceLayers srcSubresource) {
   self.srcSubresource = srcSubresource;
   return *self;
}
fn ImageCopy2 ImageCopy2.setSrcOffset(&self, Offset3D srcOffset) {
   self.srcOffset = srcOffset;
   return *self;
}
fn ImageCopy2 ImageCopy2.setDstSubresource(&self, ImageSubresourceLayers dstSubresource) {
   self.dstSubresource = dstSubresource;
   return *self;
}
fn ImageCopy2 ImageCopy2.setDstOffset(&self, Offset3D dstOffset) {
   self.dstOffset = dstOffset;
   return *self;
}
fn ImageCopy2 ImageCopy2.setExtent(&self, Extent3D extent) {
   self.extent = extent;
   return *self;
}
fn ImageBlit2 imageBlit2() => ImageBlit2 { .sType = STRUCTURE_TYPE_IMAGE_BLIT_2, .pNext = null };
fn ImageBlit2 ImageBlit2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageBlit2 ImageBlit2.setSrcSubresource(&self, ImageSubresourceLayers srcSubresource) {
   self.srcSubresource = srcSubresource;
   return *self;
}
fn ImageBlit2 ImageBlit2.setSrcOffsets(&self, Offset3D[2] srcOffsets) {
   self.srcOffsets = srcOffsets;
   return *self;
}
fn ImageBlit2 ImageBlit2.setDstSubresource(&self, ImageSubresourceLayers dstSubresource) {
   self.dstSubresource = dstSubresource;
   return *self;
}
fn ImageBlit2 ImageBlit2.setDstOffsets(&self, Offset3D[2] dstOffsets) {
   self.dstOffsets = dstOffsets;
   return *self;
}
fn BufferImageCopy2 bufferImageCopy2() => BufferImageCopy2 { .sType = STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2, .pNext = null };
fn BufferImageCopy2 BufferImageCopy2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferImageCopy2 BufferImageCopy2.setBufferOffset(&self, DeviceSize bufferOffset) {
   self.bufferOffset = bufferOffset;
   return *self;
}
fn BufferImageCopy2 BufferImageCopy2.setBufferRowLength(&self, uint bufferRowLength) {
   self.bufferRowLength = bufferRowLength;
   return *self;
}
fn BufferImageCopy2 BufferImageCopy2.setBufferImageHeight(&self, uint bufferImageHeight) {
   self.bufferImageHeight = bufferImageHeight;
   return *self;
}
fn BufferImageCopy2 BufferImageCopy2.setImageSubresource(&self, ImageSubresourceLayers imageSubresource) {
   self.imageSubresource = imageSubresource;
   return *self;
}
fn BufferImageCopy2 BufferImageCopy2.setImageOffset(&self, Offset3D imageOffset) {
   self.imageOffset = imageOffset;
   return *self;
}
fn BufferImageCopy2 BufferImageCopy2.setImageExtent(&self, Extent3D imageExtent) {
   self.imageExtent = imageExtent;
   return *self;
}
fn ImageResolve2 imageResolve2() => ImageResolve2 { .sType = STRUCTURE_TYPE_IMAGE_RESOLVE_2, .pNext = null };
fn ImageResolve2 ImageResolve2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageResolve2 ImageResolve2.setSrcSubresource(&self, ImageSubresourceLayers srcSubresource) {
   self.srcSubresource = srcSubresource;
   return *self;
}
fn ImageResolve2 ImageResolve2.setSrcOffset(&self, Offset3D srcOffset) {
   self.srcOffset = srcOffset;
   return *self;
}
fn ImageResolve2 ImageResolve2.setDstSubresource(&self, ImageSubresourceLayers dstSubresource) {
   self.dstSubresource = dstSubresource;
   return *self;
}
fn ImageResolve2 ImageResolve2.setDstOffset(&self, Offset3D dstOffset) {
   self.dstOffset = dstOffset;
   return *self;
}
fn ImageResolve2 ImageResolve2.setExtent(&self, Extent3D extent) {
   self.extent = extent;
   return *self;
}
fn CopyBufferInfo2 copyBufferInfo2() => CopyBufferInfo2 { .sType = STRUCTURE_TYPE_COPY_BUFFER_INFO_2, .pNext = null };
fn CopyBufferInfo2 CopyBufferInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyBufferInfo2 CopyBufferInfo2.setSrcBuffer(&self, Buffer srcBuffer) {
   self.srcBuffer = srcBuffer;
   return *self;
}
fn CopyBufferInfo2 CopyBufferInfo2.setDstBuffer(&self, Buffer dstBuffer) {
   self.dstBuffer = dstBuffer;
   return *self;
}
fn CopyBufferInfo2 CopyBufferInfo2.setRegionCount(&self, uint regionCount) {
   self.regionCount = regionCount;
   return *self;
}
fn CopyBufferInfo2 CopyBufferInfo2.setRegions(&self, BufferCopy2[] pRegions) {
   self.regionCount= (uint)pRegions.len;
   self.pRegions = &pRegions[0];
   return *self;
}
fn CopyImageInfo2 copyImageInfo2() => CopyImageInfo2 { .sType = STRUCTURE_TYPE_COPY_IMAGE_INFO_2, .pNext = null };
fn CopyImageInfo2 CopyImageInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyImageInfo2 CopyImageInfo2.setSrcImage(&self, Image srcImage) {
   self.srcImage = srcImage;
   return *self;
}
fn CopyImageInfo2 CopyImageInfo2.setSrcImageLayout(&self, ImageLayout srcImageLayout) {
   self.srcImageLayout = srcImageLayout;
   return *self;
}
fn CopyImageInfo2 CopyImageInfo2.setDstImage(&self, Image dstImage) {
   self.dstImage = dstImage;
   return *self;
}
fn CopyImageInfo2 CopyImageInfo2.setDstImageLayout(&self, ImageLayout dstImageLayout) {
   self.dstImageLayout = dstImageLayout;
   return *self;
}
fn CopyImageInfo2 CopyImageInfo2.setRegionCount(&self, uint regionCount) {
   self.regionCount = regionCount;
   return *self;
}
fn CopyImageInfo2 CopyImageInfo2.setRegions(&self, ImageCopy2[] pRegions) {
   self.regionCount= (uint)pRegions.len;
   self.pRegions = &pRegions[0];
   return *self;
}
fn BlitImageInfo2 blitImageInfo2() => BlitImageInfo2 { .sType = STRUCTURE_TYPE_BLIT_IMAGE_INFO_2, .pNext = null };
fn BlitImageInfo2 BlitImageInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setSrcImage(&self, Image srcImage) {
   self.srcImage = srcImage;
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setSrcImageLayout(&self, ImageLayout srcImageLayout) {
   self.srcImageLayout = srcImageLayout;
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setDstImage(&self, Image dstImage) {
   self.dstImage = dstImage;
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setDstImageLayout(&self, ImageLayout dstImageLayout) {
   self.dstImageLayout = dstImageLayout;
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setRegionCount(&self, uint regionCount) {
   self.regionCount = regionCount;
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setRegions(&self, ImageBlit2[] pRegions) {
   self.regionCount= (uint)pRegions.len;
   self.pRegions = &pRegions[0];
   return *self;
}
fn BlitImageInfo2 BlitImageInfo2.setFilter(&self, Filter filter) {
   self.filter = filter;
   return *self;
}
fn CopyBufferToImageInfo2 copyBufferToImageInfo2() => CopyBufferToImageInfo2 { .sType = STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2, .pNext = null };
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setSrcBuffer(&self, Buffer srcBuffer) {
   self.srcBuffer = srcBuffer;
   return *self;
}
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setDstImage(&self, Image dstImage) {
   self.dstImage = dstImage;
   return *self;
}
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setDstImageLayout(&self, ImageLayout dstImageLayout) {
   self.dstImageLayout = dstImageLayout;
   return *self;
}
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setRegionCount(&self, uint regionCount) {
   self.regionCount = regionCount;
   return *self;
}
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setRegions(&self, BufferImageCopy2[] pRegions) {
   self.regionCount= (uint)pRegions.len;
   self.pRegions = &pRegions[0];
   return *self;
}
fn CopyImageToBufferInfo2 copyImageToBufferInfo2() => CopyImageToBufferInfo2 { .sType = STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2, .pNext = null };
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setSrcImage(&self, Image srcImage) {
   self.srcImage = srcImage;
   return *self;
}
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setSrcImageLayout(&self, ImageLayout srcImageLayout) {
   self.srcImageLayout = srcImageLayout;
   return *self;
}
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setDstBuffer(&self, Buffer dstBuffer) {
   self.dstBuffer = dstBuffer;
   return *self;
}
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setRegionCount(&self, uint regionCount) {
   self.regionCount = regionCount;
   return *self;
}
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setRegions(&self, BufferImageCopy2[] pRegions) {
   self.regionCount= (uint)pRegions.len;
   self.pRegions = &pRegions[0];
   return *self;
}
fn ResolveImageInfo2 resolveImageInfo2() => ResolveImageInfo2 { .sType = STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2, .pNext = null };
fn ResolveImageInfo2 ResolveImageInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ResolveImageInfo2 ResolveImageInfo2.setSrcImage(&self, Image srcImage) {
   self.srcImage = srcImage;
   return *self;
}
fn ResolveImageInfo2 ResolveImageInfo2.setSrcImageLayout(&self, ImageLayout srcImageLayout) {
   self.srcImageLayout = srcImageLayout;
   return *self;
}
fn ResolveImageInfo2 ResolveImageInfo2.setDstImage(&self, Image dstImage) {
   self.dstImage = dstImage;
   return *self;
}
fn ResolveImageInfo2 ResolveImageInfo2.setDstImageLayout(&self, ImageLayout dstImageLayout) {
   self.dstImageLayout = dstImageLayout;
   return *self;
}
fn ResolveImageInfo2 ResolveImageInfo2.setRegionCount(&self, uint regionCount) {
   self.regionCount = regionCount;
   return *self;
}
fn ResolveImageInfo2 ResolveImageInfo2.setRegions(&self, ImageResolve2[] pRegions) {
   self.regionCount= (uint)pRegions.len;
   self.pRegions = &pRegions[0];
   return *self;
}
fn PhysicalDeviceShaderTerminateInvocationFeatures physicalDeviceShaderTerminateInvocationFeatures() => PhysicalDeviceShaderTerminateInvocationFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES, .pNext = null };
fn PhysicalDeviceShaderTerminateInvocationFeatures PhysicalDeviceShaderTerminateInvocationFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderTerminateInvocationFeatures PhysicalDeviceShaderTerminateInvocationFeatures.setShaderTerminateInvocation(&self, uint shaderTerminateInvocation) {
   self.shaderTerminateInvocation = shaderTerminateInvocation;
   return *self;
}
fn AccelerationStructureBuildSizesInfoKHR accelerationStructureBuildSizesInfo() => AccelerationStructureBuildSizesInfoKHR { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR, .pNext = null };
fn AccelerationStructureBuildSizesInfoKHR AccelerationStructureBuildSizesInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureBuildSizesInfoKHR AccelerationStructureBuildSizesInfoKHR.setAccelerationStructureSize(&self, DeviceSize accelerationStructureSize) {
   self.accelerationStructureSize = accelerationStructureSize;
   return *self;
}
fn AccelerationStructureBuildSizesInfoKHR AccelerationStructureBuildSizesInfoKHR.setUpdateScratchSize(&self, DeviceSize updateScratchSize) {
   self.updateScratchSize = updateScratchSize;
   return *self;
}
fn AccelerationStructureBuildSizesInfoKHR AccelerationStructureBuildSizesInfoKHR.setBuildScratchSize(&self, DeviceSize buildScratchSize) {
   self.buildScratchSize = buildScratchSize;
   return *self;
}
fn MemoryBarrier2 memoryBarrier2() => MemoryBarrier2 { .sType = STRUCTURE_TYPE_MEMORY_BARRIER_2, .pNext = null };
fn MemoryBarrier2 MemoryBarrier2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MemoryBarrier2 MemoryBarrier2.setSrcStageMask(&self, PipelineStageFlags2 srcStageMask) {
   self.srcStageMask = srcStageMask;
   return *self;
}
fn MemoryBarrier2 MemoryBarrier2.setSrcAccessMask(&self, AccessFlags2 srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn MemoryBarrier2 MemoryBarrier2.setDstStageMask(&self, PipelineStageFlags2 dstStageMask) {
   self.dstStageMask = dstStageMask;
   return *self;
}
fn MemoryBarrier2 MemoryBarrier2.setDstAccessMask(&self, AccessFlags2 dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn ImageMemoryBarrier2 imageMemoryBarrier2() => ImageMemoryBarrier2 { .sType = STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2, .pNext = null };
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSrcStageMask(&self, PipelineStageFlags2 srcStageMask) {
   self.srcStageMask = srcStageMask;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSrcAccessMask(&self, AccessFlags2 srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setDstStageMask(&self, PipelineStageFlags2 dstStageMask) {
   self.dstStageMask = dstStageMask;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setDstAccessMask(&self, AccessFlags2 dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setOldLayout(&self, ImageLayout oldLayout) {
   self.oldLayout = oldLayout;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setNewLayout(&self, ImageLayout newLayout) {
   self.newLayout = newLayout;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSrcQueueFamilyIndex(&self, uint srcQueueFamilyIndex) {
   self.srcQueueFamilyIndex = srcQueueFamilyIndex;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setDstQueueFamilyIndex(&self, uint dstQueueFamilyIndex) {
   self.dstQueueFamilyIndex = dstQueueFamilyIndex;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSubresourceRange(&self, ImageSubresourceRange subresourceRange) {
   self.subresourceRange = subresourceRange;
   return *self;
}
fn BufferMemoryBarrier2 bufferMemoryBarrier2() => BufferMemoryBarrier2 { .sType = STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2, .pNext = null };
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSrcStageMask(&self, PipelineStageFlags2 srcStageMask) {
   self.srcStageMask = srcStageMask;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSrcAccessMask(&self, AccessFlags2 srcAccessMask) {
   self.srcAccessMask = srcAccessMask;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setDstStageMask(&self, PipelineStageFlags2 dstStageMask) {
   self.dstStageMask = dstStageMask;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setDstAccessMask(&self, AccessFlags2 dstAccessMask) {
   self.dstAccessMask = dstAccessMask;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSrcQueueFamilyIndex(&self, uint srcQueueFamilyIndex) {
   self.srcQueueFamilyIndex = srcQueueFamilyIndex;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setDstQueueFamilyIndex(&self, uint dstQueueFamilyIndex) {
   self.dstQueueFamilyIndex = dstQueueFamilyIndex;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setOffset(&self, DeviceSize offset) {
   self.offset = offset;
   return *self;
}
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSize(&self, DeviceSize size) {
   self.size = size;
   return *self;
}
fn DependencyInfo dependencyInfo() => DependencyInfo { .sType = STRUCTURE_TYPE_DEPENDENCY_INFO, .pNext = null };
fn DependencyInfo DependencyInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DependencyInfo DependencyInfo.setDependencyFlags(&self, DependencyFlags dependencyFlags) {
   self.dependencyFlags = dependencyFlags;
   return *self;
}
fn DependencyInfo DependencyInfo.setMemoryBarrierCount(&self, uint memoryBarrierCount) {
   self.memoryBarrierCount = memoryBarrierCount;
   return *self;
}
fn DependencyInfo DependencyInfo.setMemoryBarriers(&self, MemoryBarrier2[] pMemoryBarriers) {
   self.memoryBarrierCount= (uint)pMemoryBarriers.len;
   self.pMemoryBarriers = &pMemoryBarriers[0];
   return *self;
}
fn DependencyInfo DependencyInfo.setBufferMemoryBarrierCount(&self, uint bufferMemoryBarrierCount) {
   self.bufferMemoryBarrierCount = bufferMemoryBarrierCount;
   return *self;
}
fn DependencyInfo DependencyInfo.setBufferMemoryBarriers(&self, BufferMemoryBarrier2[] pBufferMemoryBarriers) {
   self.bufferMemoryBarrierCount= (uint)pBufferMemoryBarriers.len;
   self.pBufferMemoryBarriers = &pBufferMemoryBarriers[0];
   return *self;
}
fn DependencyInfo DependencyInfo.setImageMemoryBarrierCount(&self, uint imageMemoryBarrierCount) {
   self.imageMemoryBarrierCount = imageMemoryBarrierCount;
   return *self;
}
fn DependencyInfo DependencyInfo.setImageMemoryBarriers(&self, ImageMemoryBarrier2[] pImageMemoryBarriers) {
   self.imageMemoryBarrierCount= (uint)pImageMemoryBarriers.len;
   self.pImageMemoryBarriers = &pImageMemoryBarriers[0];
   return *self;
}
fn SemaphoreSubmitInfo semaphoreSubmitInfo() => SemaphoreSubmitInfo { .sType = STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO, .pNext = null };
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setSemaphore(&self, Semaphore semaphore) {
   self.semaphore = semaphore;
   return *self;
}
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setValue(&self, ulong value) {
   self.value = value;
   return *self;
}
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setStageMask(&self, PipelineStageFlags2 stageMask) {
   self.stageMask = stageMask;
   return *self;
}
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setDeviceIndex(&self, uint deviceIndex) {
   self.deviceIndex = deviceIndex;
   return *self;
}
fn CommandBufferSubmitInfo commandBufferSubmitInfo() => CommandBufferSubmitInfo { .sType = STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO, .pNext = null };
fn CommandBufferSubmitInfo CommandBufferSubmitInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CommandBufferSubmitInfo CommandBufferSubmitInfo.setCommandBuffer(&self, CommandBuffer commandBuffer) {
   self.commandBuffer = commandBuffer;
   return *self;
}
fn CommandBufferSubmitInfo CommandBufferSubmitInfo.setDeviceMask(&self, uint deviceMask) {
   self.deviceMask = deviceMask;
   return *self;
}
fn SubmitInfo2 submitInfo2() => SubmitInfo2 { .sType = STRUCTURE_TYPE_SUBMIT_INFO_2, .pNext = null };
fn SubmitInfo2 SubmitInfo2.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setFlags(&self, SubmitFlags flags) {
   self.flags = flags;
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setWaitSemaphoreInfoCount(&self, uint waitSemaphoreInfoCount) {
   self.waitSemaphoreInfoCount = waitSemaphoreInfoCount;
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setWaitSemaphoreInfos(&self, SemaphoreSubmitInfo[] pWaitSemaphoreInfos) {
   self.waitSemaphoreInfoCount= (uint)pWaitSemaphoreInfos.len;
   self.pWaitSemaphoreInfos = &pWaitSemaphoreInfos[0];
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setCommandBufferInfoCount(&self, uint commandBufferInfoCount) {
   self.commandBufferInfoCount = commandBufferInfoCount;
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setCommandBufferInfos(&self, CommandBufferSubmitInfo[] pCommandBufferInfos) {
   self.commandBufferInfoCount= (uint)pCommandBufferInfos.len;
   self.pCommandBufferInfos = &pCommandBufferInfos[0];
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setSignalSemaphoreInfoCount(&self, uint signalSemaphoreInfoCount) {
   self.signalSemaphoreInfoCount = signalSemaphoreInfoCount;
   return *self;
}
fn SubmitInfo2 SubmitInfo2.setSignalSemaphoreInfos(&self, SemaphoreSubmitInfo[] pSignalSemaphoreInfos) {
   self.signalSemaphoreInfoCount= (uint)pSignalSemaphoreInfos.len;
   self.pSignalSemaphoreInfos = &pSignalSemaphoreInfos[0];
   return *self;
}
fn PhysicalDeviceSynchronization2Features physicalDeviceSynchronization2Features() => PhysicalDeviceSynchronization2Features { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES, .pNext = null };
fn PhysicalDeviceSynchronization2Features PhysicalDeviceSynchronization2Features.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceSynchronization2Features PhysicalDeviceSynchronization2Features.setSynchronization2(&self, uint synchronization2) {
   self.synchronization2 = synchronization2;
   return *self;
}
fn PhysicalDeviceDescriptorBufferFeaturesEXT physicalDeviceDescriptorBufferFeaturesEXT() => PhysicalDeviceDescriptorBufferFeaturesEXT { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT, .pNext = null };
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBuffer(&self, uint descriptorBuffer) {
   self.descriptorBuffer = descriptorBuffer;
   return *self;
}
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBufferCaptureReplay(&self, uint descriptorBufferCaptureReplay) {
   self.descriptorBufferCaptureReplay = descriptorBufferCaptureReplay;
   return *self;
}
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBufferImageLayoutIgnored(&self, uint descriptorBufferImageLayoutIgnored) {
   self.descriptorBufferImageLayoutIgnored = descriptorBufferImageLayoutIgnored;
   return *self;
}
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBufferPushDescriptors(&self, uint descriptorBufferPushDescriptors) {
   self.descriptorBufferPushDescriptors = descriptorBufferPushDescriptors;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT physicalDeviceDescriptorBufferPropertiesEXT() => PhysicalDeviceDescriptorBufferPropertiesEXT { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT, .pNext = null };
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setCombinedImageSamplerDescriptorSingleArray(&self, uint combinedImageSamplerDescriptorSingleArray) {
   self.combinedImageSamplerDescriptorSingleArray = combinedImageSamplerDescriptorSingleArray;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setBufferlessPushDescriptors(&self, uint bufferlessPushDescriptors) {
   self.bufferlessPushDescriptors = bufferlessPushDescriptors;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setAllowSamplerImageViewPostSubmitCreation(&self, uint allowSamplerImageViewPostSubmitCreation) {
   self.allowSamplerImageViewPostSubmitCreation = allowSamplerImageViewPostSubmitCreation;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setDescriptorBufferOffsetAlignment(&self, DeviceSize descriptorBufferOffsetAlignment) {
   self.descriptorBufferOffsetAlignment = descriptorBufferOffsetAlignment;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxDescriptorBufferBindings(&self, uint maxDescriptorBufferBindings) {
   self.maxDescriptorBufferBindings = maxDescriptorBufferBindings;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxResourceDescriptorBufferBindings(&self, uint maxResourceDescriptorBufferBindings) {
   self.maxResourceDescriptorBufferBindings = maxResourceDescriptorBufferBindings;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxSamplerDescriptorBufferBindings(&self, uint maxSamplerDescriptorBufferBindings) {
   self.maxSamplerDescriptorBufferBindings = maxSamplerDescriptorBufferBindings;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxEmbeddedImmutableSamplerBindings(&self, uint maxEmbeddedImmutableSamplerBindings) {
   self.maxEmbeddedImmutableSamplerBindings = maxEmbeddedImmutableSamplerBindings;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxEmbeddedImmutableSamplers(&self, uint maxEmbeddedImmutableSamplers) {
   self.maxEmbeddedImmutableSamplers = maxEmbeddedImmutableSamplers;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setBufferCaptureReplayDescriptorDataSize(&self, usz bufferCaptureReplayDescriptorDataSize) {
   self.bufferCaptureReplayDescriptorDataSize = bufferCaptureReplayDescriptorDataSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setImageCaptureReplayDescriptorDataSize(&self, usz imageCaptureReplayDescriptorDataSize) {
   self.imageCaptureReplayDescriptorDataSize = imageCaptureReplayDescriptorDataSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setImageViewCaptureReplayDescriptorDataSize(&self, usz imageViewCaptureReplayDescriptorDataSize) {
   self.imageViewCaptureReplayDescriptorDataSize = imageViewCaptureReplayDescriptorDataSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSamplerCaptureReplayDescriptorDataSize(&self, usz samplerCaptureReplayDescriptorDataSize) {
   self.samplerCaptureReplayDescriptorDataSize = samplerCaptureReplayDescriptorDataSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setAccelerationStructureCaptureReplayDescriptorDataSize(&self, usz accelerationStructureCaptureReplayDescriptorDataSize) {
   self.accelerationStructureCaptureReplayDescriptorDataSize = accelerationStructureCaptureReplayDescriptorDataSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSamplerDescriptorSize(&self, usz samplerDescriptorSize) {
   self.samplerDescriptorSize = samplerDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setCombinedImageSamplerDescriptorSize(&self, usz combinedImageSamplerDescriptorSize) {
   self.combinedImageSamplerDescriptorSize = combinedImageSamplerDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSampledImageDescriptorSize(&self, usz sampledImageDescriptorSize) {
   self.sampledImageDescriptorSize = sampledImageDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setStorageImageDescriptorSize(&self, usz storageImageDescriptorSize) {
   self.storageImageDescriptorSize = storageImageDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setUniformTexelBufferDescriptorSize(&self, usz uniformTexelBufferDescriptorSize) {
   self.uniformTexelBufferDescriptorSize = uniformTexelBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustUniformTexelBufferDescriptorSize(&self, usz robustUniformTexelBufferDescriptorSize) {
   self.robustUniformTexelBufferDescriptorSize = robustUniformTexelBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setStorageTexelBufferDescriptorSize(&self, usz storageTexelBufferDescriptorSize) {
   self.storageTexelBufferDescriptorSize = storageTexelBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustStorageTexelBufferDescriptorSize(&self, usz robustStorageTexelBufferDescriptorSize) {
   self.robustStorageTexelBufferDescriptorSize = robustStorageTexelBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setUniformBufferDescriptorSize(&self, usz uniformBufferDescriptorSize) {
   self.uniformBufferDescriptorSize = uniformBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustUniformBufferDescriptorSize(&self, usz robustUniformBufferDescriptorSize) {
   self.robustUniformBufferDescriptorSize = robustUniformBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setStorageBufferDescriptorSize(&self, usz storageBufferDescriptorSize) {
   self.storageBufferDescriptorSize = storageBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustStorageBufferDescriptorSize(&self, usz robustStorageBufferDescriptorSize) {
   self.robustStorageBufferDescriptorSize = robustStorageBufferDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setInputAttachmentDescriptorSize(&self, usz inputAttachmentDescriptorSize) {
   self.inputAttachmentDescriptorSize = inputAttachmentDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setAccelerationStructureDescriptorSize(&self, usz accelerationStructureDescriptorSize) {
   self.accelerationStructureDescriptorSize = accelerationStructureDescriptorSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxSamplerDescriptorBufferRange(&self, DeviceSize maxSamplerDescriptorBufferRange) {
   self.maxSamplerDescriptorBufferRange = maxSamplerDescriptorBufferRange;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxResourceDescriptorBufferRange(&self, DeviceSize maxResourceDescriptorBufferRange) {
   self.maxResourceDescriptorBufferRange = maxResourceDescriptorBufferRange;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSamplerDescriptorBufferAddressSpaceSize(&self, DeviceSize samplerDescriptorBufferAddressSpaceSize) {
   self.samplerDescriptorBufferAddressSpaceSize = samplerDescriptorBufferAddressSpaceSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setResourceDescriptorBufferAddressSpaceSize(&self, DeviceSize resourceDescriptorBufferAddressSpaceSize) {
   self.resourceDescriptorBufferAddressSpaceSize = resourceDescriptorBufferAddressSpaceSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setDescriptorBufferAddressSpaceSize(&self, DeviceSize descriptorBufferAddressSpaceSize) {
   self.descriptorBufferAddressSpaceSize = descriptorBufferAddressSpaceSize;
   return *self;
}
fn PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT physicalDeviceDescriptorBufferDensityMapPropertiesEXT() => PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT, .pNext = null };
fn PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.setCombinedImageSamplerDensityMapDescriptorSize(&self, usz combinedImageSamplerDensityMapDescriptorSize) {
   self.combinedImageSamplerDensityMapDescriptorSize = combinedImageSamplerDensityMapDescriptorSize;
   return *self;
}
fn DescriptorAddressInfoEXT descriptorAddressInfoEXT() => DescriptorAddressInfoEXT { .sType = STRUCTURE_TYPE_DESCRIPTOR_ADDRESS_INFO_EXT, .pNext = null };
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setAddress(&self, DeviceAddress address) {
   self.address = address;
   return *self;
}
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setRange(&self, DeviceSize range) {
   self.range = range;
   return *self;
}
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setFormat(&self, Format format) {
   self.format = format;
   return *self;
}
fn DescriptorBufferBindingInfoEXT descriptorBufferBindingInfoEXT() => DescriptorBufferBindingInfoEXT { .sType = STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_INFO_EXT, .pNext = null };
fn DescriptorBufferBindingInfoEXT DescriptorBufferBindingInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorBufferBindingInfoEXT DescriptorBufferBindingInfoEXT.setAddress(&self, DeviceAddress address) {
   self.address = address;
   return *self;
}
fn DescriptorBufferBindingInfoEXT DescriptorBufferBindingInfoEXT.setUsage(&self, BufferUsageFlags usage) {
   self.usage = usage;
   return *self;
}
fn DescriptorBufferBindingPushDescriptorBufferHandleEXT descriptorBufferBindingPushDescriptorBufferHandleEXT() => DescriptorBufferBindingPushDescriptorBufferHandleEXT { .sType = STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT, .pNext = null };
fn DescriptorBufferBindingPushDescriptorBufferHandleEXT DescriptorBufferBindingPushDescriptorBufferHandleEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorBufferBindingPushDescriptorBufferHandleEXT DescriptorBufferBindingPushDescriptorBufferHandleEXT.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn DescriptorGetInfoEXT descriptorGetInfoEXT() => DescriptorGetInfoEXT { .sType = STRUCTURE_TYPE_DESCRIPTOR_GET_INFO_EXT, .pNext = null };
fn DescriptorGetInfoEXT DescriptorGetInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn DescriptorGetInfoEXT DescriptorGetInfoEXT.setType(&self, DescriptorType type) {
   self.type = type;
   return *self;
}
fn DescriptorGetInfoEXT DescriptorGetInfoEXT.setData(&self, DescriptorDataEXT data) {
   self.data = data;
   return *self;
}
fn BufferCaptureDescriptorDataInfoEXT bufferCaptureDescriptorDataInfoEXT() => BufferCaptureDescriptorDataInfoEXT { .sType = STRUCTURE_TYPE_BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT, .pNext = null };
fn BufferCaptureDescriptorDataInfoEXT BufferCaptureDescriptorDataInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn BufferCaptureDescriptorDataInfoEXT BufferCaptureDescriptorDataInfoEXT.setBuffer(&self, Buffer buffer) {
   self.buffer = buffer;
   return *self;
}
fn ImageCaptureDescriptorDataInfoEXT imageCaptureDescriptorDataInfoEXT() => ImageCaptureDescriptorDataInfoEXT { .sType = STRUCTURE_TYPE_IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT, .pNext = null };
fn ImageCaptureDescriptorDataInfoEXT ImageCaptureDescriptorDataInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageCaptureDescriptorDataInfoEXT ImageCaptureDescriptorDataInfoEXT.setImage(&self, Image image) {
   self.image = image;
   return *self;
}
fn ImageViewCaptureDescriptorDataInfoEXT imageViewCaptureDescriptorDataInfoEXT() => ImageViewCaptureDescriptorDataInfoEXT { .sType = STRUCTURE_TYPE_IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT, .pNext = null };
fn ImageViewCaptureDescriptorDataInfoEXT ImageViewCaptureDescriptorDataInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn ImageViewCaptureDescriptorDataInfoEXT ImageViewCaptureDescriptorDataInfoEXT.setImageView(&self, ImageView imageView) {
   self.imageView = imageView;
   return *self;
}
fn SamplerCaptureDescriptorDataInfoEXT samplerCaptureDescriptorDataInfoEXT() => SamplerCaptureDescriptorDataInfoEXT { .sType = STRUCTURE_TYPE_SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT, .pNext = null };
fn SamplerCaptureDescriptorDataInfoEXT SamplerCaptureDescriptorDataInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn SamplerCaptureDescriptorDataInfoEXT SamplerCaptureDescriptorDataInfoEXT.setSampler(&self, Sampler sampler) {
   self.sampler = sampler;
   return *self;
}
fn AccelerationStructureCaptureDescriptorDataInfoEXT accelerationStructureCaptureDescriptorDataInfoEXT() => AccelerationStructureCaptureDescriptorDataInfoEXT { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT, .pNext = null };
fn AccelerationStructureCaptureDescriptorDataInfoEXT AccelerationStructureCaptureDescriptorDataInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureCaptureDescriptorDataInfoEXT AccelerationStructureCaptureDescriptorDataInfoEXT.setAccelerationStructure(&self, AccelerationStructureKHR accelerationStructure) {
   self.accelerationStructure = accelerationStructure;
   return *self;
}
fn AccelerationStructureCaptureDescriptorDataInfoEXT AccelerationStructureCaptureDescriptorDataInfoEXT.setAccelerationStructureNV(&self, AccelerationStructureNV accelerationStructureNV) {
   self.accelerationStructureNV = accelerationStructureNV;
   return *self;
}
fn OpaqueCaptureDescriptorDataCreateInfoEXT opaqueCaptureDescriptorDataCreateInfoEXT() => OpaqueCaptureDescriptorDataCreateInfoEXT { .sType = STRUCTURE_TYPE_OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT, .pNext = null };
fn OpaqueCaptureDescriptorDataCreateInfoEXT OpaqueCaptureDescriptorDataCreateInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn OpaqueCaptureDescriptorDataCreateInfoEXT OpaqueCaptureDescriptorDataCreateInfoEXT.setPaqueCaptureDescriptorData(&self, void* opaqueCaptureDescriptorData) {
   self.opaqueCaptureDescriptorData = opaqueCaptureDescriptorData;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductFeatures physicalDeviceShaderIntegerDotProductFeatures() => PhysicalDeviceShaderIntegerDotProductFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES, .pNext = null };
fn PhysicalDeviceShaderIntegerDotProductFeatures PhysicalDeviceShaderIntegerDotProductFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductFeatures PhysicalDeviceShaderIntegerDotProductFeatures.setShaderIntegerDotProduct(&self, uint shaderIntegerDotProduct) {
   self.shaderIntegerDotProduct = shaderIntegerDotProduct;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties physicalDeviceShaderIntegerDotProductProperties() => PhysicalDeviceShaderIntegerDotProductProperties { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES, .pNext = null };
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitUnsignedAccelerated(&self, uint integerDotProduct8BitUnsignedAccelerated) {
   self.integerDotProduct8BitUnsignedAccelerated = integerDotProduct8BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitSignedAccelerated(&self, uint integerDotProduct8BitSignedAccelerated) {
   self.integerDotProduct8BitSignedAccelerated = integerDotProduct8BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitMixedSignednessAccelerated(&self, uint integerDotProduct8BitMixedSignednessAccelerated) {
   self.integerDotProduct8BitMixedSignednessAccelerated = integerDotProduct8BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedUnsignedAccelerated(&self, uint integerDotProduct4x8BitPackedUnsignedAccelerated) {
   self.integerDotProduct4x8BitPackedUnsignedAccelerated = integerDotProduct4x8BitPackedUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedSignedAccelerated(&self, uint integerDotProduct4x8BitPackedSignedAccelerated) {
   self.integerDotProduct4x8BitPackedSignedAccelerated = integerDotProduct4x8BitPackedSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedMixedSignednessAccelerated(&self, uint integerDotProduct4x8BitPackedMixedSignednessAccelerated) {
   self.integerDotProduct4x8BitPackedMixedSignednessAccelerated = integerDotProduct4x8BitPackedMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitUnsignedAccelerated(&self, uint integerDotProduct16BitUnsignedAccelerated) {
   self.integerDotProduct16BitUnsignedAccelerated = integerDotProduct16BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitSignedAccelerated(&self, uint integerDotProduct16BitSignedAccelerated) {
   self.integerDotProduct16BitSignedAccelerated = integerDotProduct16BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitMixedSignednessAccelerated(&self, uint integerDotProduct16BitMixedSignednessAccelerated) {
   self.integerDotProduct16BitMixedSignednessAccelerated = integerDotProduct16BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitUnsignedAccelerated(&self, uint integerDotProduct32BitUnsignedAccelerated) {
   self.integerDotProduct32BitUnsignedAccelerated = integerDotProduct32BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitSignedAccelerated(&self, uint integerDotProduct32BitSignedAccelerated) {
   self.integerDotProduct32BitSignedAccelerated = integerDotProduct32BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitMixedSignednessAccelerated(&self, uint integerDotProduct32BitMixedSignednessAccelerated) {
   self.integerDotProduct32BitMixedSignednessAccelerated = integerDotProduct32BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitUnsignedAccelerated(&self, uint integerDotProduct64BitUnsignedAccelerated) {
   self.integerDotProduct64BitUnsignedAccelerated = integerDotProduct64BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitSignedAccelerated(&self, uint integerDotProduct64BitSignedAccelerated) {
   self.integerDotProduct64BitSignedAccelerated = integerDotProduct64BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitMixedSignednessAccelerated(&self, uint integerDotProduct64BitMixedSignednessAccelerated) {
   self.integerDotProduct64BitMixedSignednessAccelerated = integerDotProduct64BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating8BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating8BitUnsignedAccelerated = integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating8BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating8BitSignedAccelerated = integerDotProductAccumulatingSaturating8BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating16BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating16BitUnsignedAccelerated = integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating16BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating16BitSignedAccelerated = integerDotProductAccumulatingSaturating16BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating32BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating32BitUnsignedAccelerated = integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating32BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating32BitSignedAccelerated = integerDotProductAccumulatingSaturating32BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitUnsignedAccelerated(&self, uint integerDotProductAccumulatingSaturating64BitUnsignedAccelerated) {
   self.integerDotProductAccumulatingSaturating64BitUnsignedAccelerated = integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitSignedAccelerated(&self, uint integerDotProductAccumulatingSaturating64BitSignedAccelerated) {
   self.integerDotProductAccumulatingSaturating64BitSignedAccelerated = integerDotProductAccumulatingSaturating64BitSignedAccelerated;
   return *self;
}
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated(&self, uint integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated) {
   self.integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
   return *self;
}
fn PhysicalDeviceRayTracingMotionBlurFeaturesNV physicalDeviceRayTracingMotionBlurFeaturesNV() => PhysicalDeviceRayTracingMotionBlurFeaturesNV { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV, .pNext = null };
fn PhysicalDeviceRayTracingMotionBlurFeaturesNV PhysicalDeviceRayTracingMotionBlurFeaturesNV.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceRayTracingMotionBlurFeaturesNV PhysicalDeviceRayTracingMotionBlurFeaturesNV.setRayTracingMotionBlur(&self, uint rayTracingMotionBlur) {
   self.rayTracingMotionBlur = rayTracingMotionBlur;
   return *self;
}
fn PhysicalDeviceRayTracingMotionBlurFeaturesNV PhysicalDeviceRayTracingMotionBlurFeaturesNV.setRayTracingMotionBlurPipelineTraceRaysIndirect(&self, uint rayTracingMotionBlurPipelineTraceRaysIndirect) {
   self.rayTracingMotionBlurPipelineTraceRaysIndirect = rayTracingMotionBlurPipelineTraceRaysIndirect;
   return *self;
}
fn AccelerationStructureGeometryMotionTrianglesDataNV accelerationStructureGeometryMotionTrianglesDataNV() => AccelerationStructureGeometryMotionTrianglesDataNV { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV, .pNext = null };
fn AccelerationStructureGeometryMotionTrianglesDataNV AccelerationStructureGeometryMotionTrianglesDataNV.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureGeometryMotionTrianglesDataNV AccelerationStructureGeometryMotionTrianglesDataNV.setVertexData(&self, DeviceOrHostAddressConstKHR vertexData) {
   self.vertexData = vertexData;
   return *self;
}
fn AccelerationStructureMotionInfoNV accelerationStructureMotionInfoNV() => AccelerationStructureMotionInfoNV { .sType = STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MOTION_INFO_NV, .pNext = null };
fn AccelerationStructureMotionInfoNV AccelerationStructureMotionInfoNV.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AccelerationStructureMotionInfoNV AccelerationStructureMotionInfoNV.setMaxInstances(&self, uint maxInstances) {
   self.maxInstances = maxInstances;
   return *self;
}
fn AccelerationStructureMotionInfoNV AccelerationStructureMotionInfoNV.setFlags(&self, AccelerationStructureMotionInfoFlagsNV flags) {
   self.flags = flags;
   return *self;
}
fn FormatProperties3 formatProperties3() => FormatProperties3 { .sType = STRUCTURE_TYPE_FORMAT_PROPERTIES_3, .pNext = null };
fn FormatProperties3 FormatProperties3.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn FormatProperties3 FormatProperties3.setLinearTilingFeatures(&self, FormatFeatureFlags2 linearTilingFeatures) {
   self.linearTilingFeatures = linearTilingFeatures;
   return *self;
}
fn FormatProperties3 FormatProperties3.setOptimalTilingFeatures(&self, FormatFeatureFlags2 optimalTilingFeatures) {
   self.optimalTilingFeatures = optimalTilingFeatures;
   return *self;
}
fn FormatProperties3 FormatProperties3.setBufferFeatures(&self, FormatFeatureFlags2 bufferFeatures) {
   self.bufferFeatures = bufferFeatures;
   return *self;
}
fn PipelineRenderingCreateInfo pipelineRenderingCreateInfo() => PipelineRenderingCreateInfo { .sType = STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO, .pNext = null };
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setViewMask(&self, uint viewMask) {
   self.viewMask = viewMask;
   return *self;
}
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setColorAttachmentCount(&self, uint colorAttachmentCount) {
   self.colorAttachmentCount = colorAttachmentCount;
   return *self;
}
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setColorAttachmentFormats(&self, Format[] pColorAttachmentFormats) {
   self.colorAttachmentCount= (uint)pColorAttachmentFormats.len;
   self.pColorAttachmentFormats = &pColorAttachmentFormats[0];
   return *self;
}
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setDepthAttachmentFormat(&self, Format depthAttachmentFormat) {
   self.depthAttachmentFormat = depthAttachmentFormat;
   return *self;
}
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setStencilAttachmentFormat(&self, Format stencilAttachmentFormat) {
   self.stencilAttachmentFormat = stencilAttachmentFormat;
   return *self;
}
fn RenderingInfo renderingInfo() => RenderingInfo { .sType = STRUCTURE_TYPE_RENDERING_INFO, .pNext = null };
fn RenderingInfo RenderingInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderingInfo RenderingInfo.setFlags(&self, RenderingFlags flags) {
   self.flags = flags;
   return *self;
}
fn RenderingInfo RenderingInfo.setRenderArea(&self, Rect2D renderArea) {
   self.renderArea = renderArea;
   return *self;
}
fn RenderingInfo RenderingInfo.setLayerCount(&self, uint layerCount) {
   self.layerCount = layerCount;
   return *self;
}
fn RenderingInfo RenderingInfo.setViewMask(&self, uint viewMask) {
   self.viewMask = viewMask;
   return *self;
}
fn RenderingInfo RenderingInfo.setColorAttachmentCount(&self, uint colorAttachmentCount) {
   self.colorAttachmentCount = colorAttachmentCount;
   return *self;
}
fn RenderingInfo RenderingInfo.setColorAttachments(&self, RenderingAttachmentInfo[] pColorAttachments) {
   self.colorAttachmentCount= (uint)pColorAttachments.len;
   self.pColorAttachments = &pColorAttachments[0];
   return *self;
}
fn RenderingInfo RenderingInfo.setDepthAttachment(&self, RenderingAttachmentInfo* pDepthAttachment) {
   self.pDepthAttachment = pDepthAttachment;
   return *self;
}
fn RenderingInfo RenderingInfo.setStencilAttachment(&self, RenderingAttachmentInfo* pStencilAttachment) {
   self.pStencilAttachment = pStencilAttachment;
   return *self;
}
fn RenderingAttachmentInfo renderingAttachmentInfo() => RenderingAttachmentInfo { .sType = STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO, .pNext = null };
fn RenderingAttachmentInfo RenderingAttachmentInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setImageView(&self, ImageView imageView) {
   self.imageView = imageView;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setImageLayout(&self, ImageLayout imageLayout) {
   self.imageLayout = imageLayout;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setResolveMode(&self, ResolveModeFlagBits resolveMode) {
   self.resolveMode = resolveMode;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setResolveImageView(&self, ImageView resolveImageView) {
   self.resolveImageView = resolveImageView;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setResolveImageLayout(&self, ImageLayout resolveImageLayout) {
   self.resolveImageLayout = resolveImageLayout;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setLoadOp(&self, AttachmentLoadOp loadOp) {
   self.loadOp = loadOp;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setStoreOp(&self, AttachmentStoreOp storeOp) {
   self.storeOp = storeOp;
   return *self;
}
fn RenderingAttachmentInfo RenderingAttachmentInfo.setClearValue(&self, ClearValue clearValue) {
   self.clearValue = clearValue;
   return *self;
}
fn RenderingFragmentShadingRateAttachmentInfoKHR renderingFragmentShadingRateAttachmentInfo() => RenderingFragmentShadingRateAttachmentInfoKHR { .sType = STRUCTURE_TYPE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR, .pNext = null };
fn RenderingFragmentShadingRateAttachmentInfoKHR RenderingFragmentShadingRateAttachmentInfoKHR.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderingFragmentShadingRateAttachmentInfoKHR RenderingFragmentShadingRateAttachmentInfoKHR.setImageView(&self, ImageView imageView) {
   self.imageView = imageView;
   return *self;
}
fn RenderingFragmentShadingRateAttachmentInfoKHR RenderingFragmentShadingRateAttachmentInfoKHR.setImageLayout(&self, ImageLayout imageLayout) {
   self.imageLayout = imageLayout;
   return *self;
}
fn RenderingFragmentShadingRateAttachmentInfoKHR RenderingFragmentShadingRateAttachmentInfoKHR.setShadingRateAttachmentTexelSize(&self, Extent2D shadingRateAttachmentTexelSize) {
   self.shadingRateAttachmentTexelSize = shadingRateAttachmentTexelSize;
   return *self;
}
fn RenderingFragmentDensityMapAttachmentInfoEXT renderingFragmentDensityMapAttachmentInfoEXT() => RenderingFragmentDensityMapAttachmentInfoEXT { .sType = STRUCTURE_TYPE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT, .pNext = null };
fn RenderingFragmentDensityMapAttachmentInfoEXT RenderingFragmentDensityMapAttachmentInfoEXT.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn RenderingFragmentDensityMapAttachmentInfoEXT RenderingFragmentDensityMapAttachmentInfoEXT.setImageView(&self, ImageView imageView) {
   self.imageView = imageView;
   return *self;
}
fn RenderingFragmentDensityMapAttachmentInfoEXT RenderingFragmentDensityMapAttachmentInfoEXT.setImageLayout(&self, ImageLayout imageLayout) {
   self.imageLayout = imageLayout;
   return *self;
}
fn PhysicalDeviceDynamicRenderingFeatures physicalDeviceDynamicRenderingFeatures() => PhysicalDeviceDynamicRenderingFeatures { .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES, .pNext = null };
fn PhysicalDeviceDynamicRenderingFeatures PhysicalDeviceDynamicRenderingFeatures.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn PhysicalDeviceDynamicRenderingFeatures PhysicalDeviceDynamicRenderingFeatures.setDynamicRendering(&self, uint dynamicRendering) {
   self.dynamicRendering = dynamicRendering;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo commandBufferInheritanceRenderingInfo() => CommandBufferInheritanceRenderingInfo { .sType = STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO, .pNext = null };
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setFlags(&self, RenderingFlags flags) {
   self.flags = flags;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setViewMask(&self, uint viewMask) {
   self.viewMask = viewMask;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setColorAttachmentCount(&self, uint colorAttachmentCount) {
   self.colorAttachmentCount = colorAttachmentCount;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setColorAttachmentFormats(&self, Format[] pColorAttachmentFormats) {
   self.colorAttachmentCount= (uint)pColorAttachmentFormats.len;
   self.pColorAttachmentFormats = &pColorAttachmentFormats[0];
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setDepthAttachmentFormat(&self, Format depthAttachmentFormat) {
   self.depthAttachmentFormat = depthAttachmentFormat;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setStencilAttachmentFormat(&self, Format stencilAttachmentFormat) {
   self.stencilAttachmentFormat = stencilAttachmentFormat;
   return *self;
}
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setRasterizationSamples(&self, SampleCountFlagBits rasterizationSamples) {
   self.rasterizationSamples = rasterizationSamples;
   return *self;
}
fn AttachmentSampleCountInfoAMD attachmentSampleCountInfoAMD() => AttachmentSampleCountInfoAMD { .sType = STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_AMD, .pNext = null };
fn AttachmentSampleCountInfoAMD AttachmentSampleCountInfoAMD.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn AttachmentSampleCountInfoAMD AttachmentSampleCountInfoAMD.setColorAttachmentCount(&self, uint colorAttachmentCount) {
   self.colorAttachmentCount = colorAttachmentCount;
   return *self;
}
fn AttachmentSampleCountInfoAMD AttachmentSampleCountInfoAMD.setColorAttachmentSamples(&self, SampleCountFlagBits[] pColorAttachmentSamples) {
   self.colorAttachmentCount= (uint)pColorAttachmentSamples.len;
   self.pColorAttachmentSamples = &pColorAttachmentSamples[0];
   return *self;
}
fn AttachmentSampleCountInfoAMD AttachmentSampleCountInfoAMD.setDepthStencilAttachmentSamples(&self, SampleCountFlagBits depthStencilAttachmentSamples) {
   self.depthStencilAttachmentSamples = depthStencilAttachmentSamples;
   return *self;
}
fn MultiviewPerViewAttributesInfoNVX multiviewPerViewAttributesInfoNVX() => MultiviewPerViewAttributesInfoNVX { .sType = STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX, .pNext = null };
fn MultiviewPerViewAttributesInfoNVX MultiviewPerViewAttributesInfoNVX.setNext(&self, void* pNext) {
   self.pNext = pNext;
   return *self;
}
fn MultiviewPerViewAttributesInfoNVX MultiviewPerViewAttributesInfoNVX.setPerViewAttributes(&self, uint perViewAttributes) {
   self.perViewAttributes = perViewAttributes;
   return *self;
}
fn MultiviewPerViewAttributesInfoNVX MultiviewPerViewAttributesInfoNVX.setPerViewAttributesPositionXOnly(&self, uint perViewAttributesPositionXOnly) {
   self.perViewAttributesPositionXOnly = perViewAttributesPositionXOnly;
   return *self;
}
