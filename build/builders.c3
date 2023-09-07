module vk; 


fn BufferMemoryBarrier bufferMemoryBarrierBuilder() {
  BufferMemoryBarrier defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferMemoryBarrier BufferMemoryBarrier.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setSrcAccessMask(self, AccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setDstAccessMask(self, AccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setOffset(self, DeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn BufferMemoryBarrier BufferMemoryBarrier.setSize(self, DeviceSize size) {
  self.size = size;
  return self;
}
       


fn ImageMemoryBarrier imageMemoryBarrierBuilder() {
  ImageMemoryBarrier defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageMemoryBarrier ImageMemoryBarrier.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setSrcAccessMask(self, AccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setDstAccessMask(self, AccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setOldLayout(self, ImageLayout oldLayout) {
  self.oldLayout = oldLayout;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setNewLayout(self, ImageLayout newLayout) {
  self.newLayout = newLayout;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setImage(self, Image image) {
  self.image = image;
  return self;
}
       
fn ImageMemoryBarrier ImageMemoryBarrier.setSubresourceRange(self, ImageSubresourceRange subresourceRange) {
  self.subresourceRange = subresourceRange;
  return self;
}
       


fn MemoryBarrier memoryBarrierBuilder() {
  MemoryBarrier defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryBarrier MemoryBarrier.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryBarrier MemoryBarrier.setSrcAccessMask(self, AccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn MemoryBarrier MemoryBarrier.setDstAccessMask(self, AccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       


fn ApplicationInfo applicationInfoBuilder() {
  ApplicationInfo defaultValue = {
    .sType = STRUCTURE_TYPE_APPLICATION_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ApplicationInfo ApplicationInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setPApplicationName(self, char* pApplicationName) {
  self.pApplicationName = pApplicationName;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setApplicationVersion(self, uint applicationVersion) {
  self.applicationVersion = applicationVersion;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setPEngineName(self, char* pEngineName) {
  self.pEngineName = pEngineName;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setEngineVersion(self, uint engineVersion) {
  self.engineVersion = engineVersion;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setApiVersion(self, uint apiVersion) {
  self.apiVersion = apiVersion;
  return self;
}
       


fn InstanceCreateInfo instanceCreateInfoBuilder() {
  InstanceCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn InstanceCreateInfo InstanceCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setFlags(self, InstanceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setPApplicationInfo(self, ApplicationInfo* pApplicationInfo) {
  self.pApplicationInfo = pApplicationInfo;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setEnabledLayerCount(self, uint enabledLayerCount) {
  self.enabledLayerCount = enabledLayerCount;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setPpEnabledLayerNames(self, ZString[] ppEnabledLayerNames) {
  self.enabledLayerCount = (uint)ppEnabledLayerNames.len;
  self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
  return self;
}

fn InstanceCreateInfo InstanceCreateInfo.setEnabledExtensionCount(self, uint enabledExtensionCount) {
  self.enabledExtensionCount = enabledExtensionCount;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setPpEnabledExtensionNames(self, ZString[] ppEnabledExtensionNames) {
  self.enabledExtensionCount = (uint)ppEnabledExtensionNames.len;
  self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
  return self;
}



fn DeviceCreateInfo deviceCreateInfoBuilder() {
  DeviceCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceCreateInfo DeviceCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setFlags(self, DeviceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setQueueCreateInfoCount(self, uint queueCreateInfoCount) {
  self.queueCreateInfoCount = queueCreateInfoCount;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setPQueueCreateInfos(self, DeviceQueueCreateInfo[] pQueueCreateInfos) {
  self.queueCreateInfoCount = (uint)pQueueCreateInfos.len;
  self.pQueueCreateInfos = &pQueueCreateInfos[0];
  return self;
}

fn DeviceCreateInfo DeviceCreateInfo.setEnabledLayerCount(self, uint enabledLayerCount) {
  self.enabledLayerCount = enabledLayerCount;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setPpEnabledLayerNames(self, ZString[] ppEnabledLayerNames) {
  self.enabledLayerCount = (uint)ppEnabledLayerNames.len;
  self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
  return self;
}

fn DeviceCreateInfo DeviceCreateInfo.setEnabledExtensionCount(self, uint enabledExtensionCount) {
  self.enabledExtensionCount = enabledExtensionCount;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setPpEnabledExtensionNames(self, ZString[] ppEnabledExtensionNames) {
  self.enabledExtensionCount = (uint)ppEnabledExtensionNames.len;
  self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
  return self;
}

fn DeviceCreateInfo DeviceCreateInfo.setPEnabledFeatures(self, PhysicalDeviceFeatures* pEnabledFeatures) {
  self.pEnabledFeatures = pEnabledFeatures;
  return self;
}
       


fn DeviceQueueCreateInfo deviceQueueCreateInfoBuilder() {
  DeviceQueueCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setFlags(self, DeviceQueueCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setQueueFamilyIndex(self, uint queueFamilyIndex) {
  self.queueFamilyIndex = queueFamilyIndex;
  return self;
}
       
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setQueueCount(self, uint queueCount) {
  self.queueCount = queueCount;
  return self;
}
       
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setPQueuePriorities(self, float[] pQueuePriorities) {
  self.queueCount = (uint)pQueuePriorities.len;
  self.pQueuePriorities = &pQueuePriorities[0];
  return self;
}



fn SubmitInfo submitInfoBuilder() {
  SubmitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubmitInfo SubmitInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubmitInfo SubmitInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn SubmitInfo SubmitInfo.setPWaitSemaphores(self, Semaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn SubmitInfo SubmitInfo.setPWaitDstStageMask(self, PipelineStageFlags[] pWaitDstStageMask) {
  self.waitSemaphoreCount = (uint)pWaitDstStageMask.len;
  self.pWaitDstStageMask = &pWaitDstStageMask[0];
  return self;
}

fn SubmitInfo SubmitInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       
fn SubmitInfo SubmitInfo.setPCommandBuffers(self, CommandBuffer[] pCommandBuffers) {
  self.commandBufferCount = (uint)pCommandBuffers.len;
  self.pCommandBuffers = &pCommandBuffers[0];
  return self;
}

fn SubmitInfo SubmitInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn SubmitInfo SubmitInfo.setPSignalSemaphores(self, Semaphore[] pSignalSemaphores) {
  self.signalSemaphoreCount = (uint)pSignalSemaphores.len;
  self.pSignalSemaphores = &pSignalSemaphores[0];
  return self;
}



fn MappedMemoryRange mappedMemoryRangeBuilder() {
  MappedMemoryRange defaultValue = {
    .sType = STRUCTURE_TYPE_MAPPED_MEMORY_RANGE,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MappedMemoryRange MappedMemoryRange.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MappedMemoryRange MappedMemoryRange.setMemory(self, DeviceMemory memory) {
  self.memory = memory;
  return self;
}
       
fn MappedMemoryRange MappedMemoryRange.setOffset(self, DeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn MappedMemoryRange MappedMemoryRange.setSize(self, DeviceSize size) {
  self.size = size;
  return self;
}
       


fn MemoryAllocateInfo memoryAllocateInfoBuilder() {
  MemoryAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryAllocateInfo MemoryAllocateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryAllocateInfo MemoryAllocateInfo.setAllocationSize(self, DeviceSize allocationSize) {
  self.allocationSize = allocationSize;
  return self;
}
       
fn MemoryAllocateInfo MemoryAllocateInfo.setMemoryTypeIndex(self, uint memoryTypeIndex) {
  self.memoryTypeIndex = memoryTypeIndex;
  return self;
}
       


fn BindSparseInfo bindSparseInfoBuilder() {
  BindSparseInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_SPARSE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindSparseInfo BindSparseInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setPWaitSemaphores(self, Semaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setBufferBindCount(self, uint bufferBindCount) {
  self.bufferBindCount = bufferBindCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setPBufferBinds(self, SparseBufferMemoryBindInfo[] pBufferBinds) {
  self.bufferBindCount = (uint)pBufferBinds.len;
  self.pBufferBinds = &pBufferBinds[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setImageOpaqueBindCount(self, uint imageOpaqueBindCount) {
  self.imageOpaqueBindCount = imageOpaqueBindCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setPImageOpaqueBinds(self, SparseImageOpaqueMemoryBindInfo[] pImageOpaqueBinds) {
  self.imageOpaqueBindCount = (uint)pImageOpaqueBinds.len;
  self.pImageOpaqueBinds = &pImageOpaqueBinds[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setImageBindCount(self, uint imageBindCount) {
  self.imageBindCount = imageBindCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setPImageBinds(self, SparseImageMemoryBindInfo[] pImageBinds) {
  self.imageBindCount = (uint)pImageBinds.len;
  self.pImageBinds = &pImageBinds[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setPSignalSemaphores(self, Semaphore[] pSignalSemaphores) {
  self.signalSemaphoreCount = (uint)pSignalSemaphores.len;
  self.pSignalSemaphores = &pSignalSemaphores[0];
  return self;
}



fn FenceCreateInfo fenceCreateInfoBuilder() {
  FenceCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_FENCE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn FenceCreateInfo FenceCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn FenceCreateInfo FenceCreateInfo.setFlags(self, FenceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn SemaphoreCreateInfo semaphoreCreateInfoBuilder() {
  SemaphoreCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SemaphoreCreateInfo SemaphoreCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SemaphoreCreateInfo SemaphoreCreateInfo.setFlags(self, SemaphoreCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn EventCreateInfo eventCreateInfoBuilder() {
  EventCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_EVENT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn EventCreateInfo EventCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn EventCreateInfo EventCreateInfo.setFlags(self, EventCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn QueryPoolCreateInfo queryPoolCreateInfoBuilder() {
  QueryPoolCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn QueryPoolCreateInfo QueryPoolCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn QueryPoolCreateInfo QueryPoolCreateInfo.setFlags(self, QueryPoolCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn QueryPoolCreateInfo QueryPoolCreateInfo.setQueryType(self, QueryType queryType) {
  self.queryType = queryType;
  return self;
}
       
fn QueryPoolCreateInfo QueryPoolCreateInfo.setQueryCount(self, uint queryCount) {
  self.queryCount = queryCount;
  return self;
}
       
fn QueryPoolCreateInfo QueryPoolCreateInfo.setPipelineStatistics(self, QueryPipelineStatisticFlags pipelineStatistics) {
  self.pipelineStatistics = pipelineStatistics;
  return self;
}
       


fn BufferCreateInfo bufferCreateInfoBuilder() {
  BufferCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferCreateInfo BufferCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferCreateInfo BufferCreateInfo.setFlags(self, BufferCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn BufferCreateInfo BufferCreateInfo.setSize(self, DeviceSize size) {
  self.size = size;
  return self;
}
       
fn BufferCreateInfo BufferCreateInfo.setUsage(self, BufferUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn BufferCreateInfo BufferCreateInfo.setSharingMode(self, SharingMode sharingMode) {
  self.sharingMode = sharingMode;
  return self;
}
       
fn BufferCreateInfo BufferCreateInfo.setQueueFamilyIndexCount(self, uint queueFamilyIndexCount) {
  self.queueFamilyIndexCount = queueFamilyIndexCount;
  return self;
}
       
fn BufferCreateInfo BufferCreateInfo.setPQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
  self.queueFamilyIndexCount = (uint)pQueueFamilyIndices.len;
  self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
  return self;
}



fn BufferViewCreateInfo bufferViewCreateInfoBuilder() {
  BufferViewCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferViewCreateInfo BufferViewCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferViewCreateInfo BufferViewCreateInfo.setFlags(self, BufferViewCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn BufferViewCreateInfo BufferViewCreateInfo.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn BufferViewCreateInfo BufferViewCreateInfo.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn BufferViewCreateInfo BufferViewCreateInfo.setOffset(self, DeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn BufferViewCreateInfo BufferViewCreateInfo.setRange(self, DeviceSize range) {
  self.range = range;
  return self;
}
       


fn ImageCreateInfo imageCreateInfoBuilder() {
  ImageCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageCreateInfo ImageCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setFlags(self, ImageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setImageType(self, ImageType imageType) {
  self.imageType = imageType;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setExtent(self, Extent3D extent) {
  self.extent = extent;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setMipLevels(self, uint mipLevels) {
  self.mipLevels = mipLevels;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setArrayLayers(self, uint arrayLayers) {
  self.arrayLayers = arrayLayers;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setSamples(self, SampleCountFlagBits samples) {
  self.samples = samples;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setTiling(self, ImageTiling tiling) {
  self.tiling = tiling;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setUsage(self, ImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setSharingMode(self, SharingMode sharingMode) {
  self.sharingMode = sharingMode;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setQueueFamilyIndexCount(self, uint queueFamilyIndexCount) {
  self.queueFamilyIndexCount = queueFamilyIndexCount;
  return self;
}
       
fn ImageCreateInfo ImageCreateInfo.setPQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
  self.queueFamilyIndexCount = (uint)pQueueFamilyIndices.len;
  self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
  return self;
}

fn ImageCreateInfo ImageCreateInfo.setInitialLayout(self, ImageLayout initialLayout) {
  self.initialLayout = initialLayout;
  return self;
}
       


fn ImageViewCreateInfo imageViewCreateInfoBuilder() {
  ImageViewCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageViewCreateInfo ImageViewCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageViewCreateInfo ImageViewCreateInfo.setFlags(self, ImageViewCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn ImageViewCreateInfo ImageViewCreateInfo.setImage(self, Image image) {
  self.image = image;
  return self;
}
       
fn ImageViewCreateInfo ImageViewCreateInfo.setViewType(self, ImageViewType viewType) {
  self.viewType = viewType;
  return self;
}
       
fn ImageViewCreateInfo ImageViewCreateInfo.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn ImageViewCreateInfo ImageViewCreateInfo.setComponents(self, ComponentMapping components) {
  self.components = components;
  return self;
}
       
fn ImageViewCreateInfo ImageViewCreateInfo.setSubresourceRange(self, ImageSubresourceRange subresourceRange) {
  self.subresourceRange = subresourceRange;
  return self;
}
       


fn ShaderModuleCreateInfo shaderModuleCreateInfoBuilder() {
  ShaderModuleCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setFlags(self, ShaderModuleCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setCodeSize(self, usz codeSize) {
  self.codeSize = codeSize;
  return self;
}
       
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setPCode(self, uint[] pCode) {
  self.codeSize = (uint)pCode.len;
  self.pCode = &pCode[0];
  return self;
}



fn PipelineCacheCreateInfo pipelineCacheCreateInfoBuilder() {
  PipelineCacheCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setFlags(self, PipelineCacheCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setInitialDataSize(self, usz initialDataSize) {
  self.initialDataSize = initialDataSize;
  return self;
}
       
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setInitialDataSize(self, usz initialDataSize) {
  self.initialDataSize = initialDataSize;
  return self;
}
       
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setPInitialData(self, void* pInitialData) {
  self.pInitialData = pInitialData;
  return self;
}
       


fn ComputePipelineCreateInfo computePipelineCreateInfoBuilder() {
  ComputePipelineCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setFlags(self, PipelineCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setStage(self, PipelineShaderStageCreateInfo stage) {
  self.stage = stage;
  return self;
}
       
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setLayout(self, PipelineLayout layout) {
  self.layout = layout;
  return self;
}
       
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setBasePipelineHandle(self, Pipeline basePipelineHandle) {
  self.basePipelineHandle = basePipelineHandle;
  return self;
}
       
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setBasePipelineIndex(self, int basePipelineIndex) {
  self.basePipelineIndex = basePipelineIndex;
  return self;
}
       


fn GraphicsPipelineCreateInfo graphicsPipelineCreateInfoBuilder() {
  GraphicsPipelineCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setFlags(self, PipelineCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setStageCount(self, uint stageCount) {
  self.stageCount = stageCount;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPStages(self, PipelineShaderStageCreateInfo[] pStages) {
  self.stageCount = (uint)pStages.len;
  self.pStages = &pStages[0];
  return self;
}

fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPStages(self, PipelineShaderStageCreateInfo[] pStages) {
  self.stageCount = (uint)pStages.len;
  self.pStages = &pStages[0];
  return self;
}

fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPVertexInputState(self, PipelineVertexInputStateCreateInfo* pVertexInputState) {
  self.pVertexInputState = pVertexInputState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPInputAssemblyState(self, PipelineInputAssemblyStateCreateInfo* pInputAssemblyState) {
  self.pInputAssemblyState = pInputAssemblyState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPTessellationState(self, PipelineTessellationStateCreateInfo* pTessellationState) {
  self.pTessellationState = pTessellationState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPViewportState(self, PipelineViewportStateCreateInfo* pViewportState) {
  self.pViewportState = pViewportState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPRasterizationState(self, PipelineRasterizationStateCreateInfo* pRasterizationState) {
  self.pRasterizationState = pRasterizationState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPMultisampleState(self, PipelineMultisampleStateCreateInfo* pMultisampleState) {
  self.pMultisampleState = pMultisampleState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPDepthStencilState(self, PipelineDepthStencilStateCreateInfo* pDepthStencilState) {
  self.pDepthStencilState = pDepthStencilState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPColorBlendState(self, PipelineColorBlendStateCreateInfo* pColorBlendState) {
  self.pColorBlendState = pColorBlendState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setPDynamicState(self, PipelineDynamicStateCreateInfo* pDynamicState) {
  self.pDynamicState = pDynamicState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setLayout(self, PipelineLayout layout) {
  self.layout = layout;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setRenderPass(self, RenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setSubpass(self, uint subpass) {
  self.subpass = subpass;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setBasePipelineHandle(self, Pipeline basePipelineHandle) {
  self.basePipelineHandle = basePipelineHandle;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setBasePipelineIndex(self, int basePipelineIndex) {
  self.basePipelineIndex = basePipelineIndex;
  return self;
}
       


fn PipelineColorBlendStateCreateInfo pipelineColorBlendStateCreateInfoBuilder() {
  PipelineColorBlendStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setFlags(self, PipelineColorBlendStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setLogicOpEnable(self, Bool32 logicOpEnable) {
  self.logicOpEnable = logicOpEnable;
  return self;
}
       
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setLogicOp(self, LogicOp logicOp) {
  self.logicOp = logicOp;
  return self;
}
       
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setPAttachments(self, PipelineColorBlendAttachmentState[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setBlendConstants(self, float[4] blendConstants) {
  self.blendConstants = blendConstants;
  return self;
}
       


fn PipelineDepthStencilStateCreateInfo pipelineDepthStencilStateCreateInfoBuilder() {
  PipelineDepthStencilStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setFlags(self, PipelineDepthStencilStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthTestEnable(self, Bool32 depthTestEnable) {
  self.depthTestEnable = depthTestEnable;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthWriteEnable(self, Bool32 depthWriteEnable) {
  self.depthWriteEnable = depthWriteEnable;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthCompareOp(self, CompareOp depthCompareOp) {
  self.depthCompareOp = depthCompareOp;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setDepthBoundsTestEnable(self, Bool32 depthBoundsTestEnable) {
  self.depthBoundsTestEnable = depthBoundsTestEnable;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setStencilTestEnable(self, Bool32 stencilTestEnable) {
  self.stencilTestEnable = stencilTestEnable;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setFront(self, StencilOpState front) {
  self.front = front;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setBack(self, StencilOpState back) {
  self.back = back;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setMinDepthBounds(self, float minDepthBounds) {
  self.minDepthBounds = minDepthBounds;
  return self;
}
       
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setMaxDepthBounds(self, float maxDepthBounds) {
  self.maxDepthBounds = maxDepthBounds;
  return self;
}
       


fn PipelineDynamicStateCreateInfo pipelineDynamicStateCreateInfoBuilder() {
  PipelineDynamicStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setFlags(self, PipelineDynamicStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setDynamicStateCount(self, uint dynamicStateCount) {
  self.dynamicStateCount = dynamicStateCount;
  return self;
}
       
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setPDynamicStates(self, DynamicState[] pDynamicStates) {
  self.dynamicStateCount = (uint)pDynamicStates.len;
  self.pDynamicStates = &pDynamicStates[0];
  return self;
}



fn PipelineInputAssemblyStateCreateInfo pipelineInputAssemblyStateCreateInfoBuilder() {
  PipelineInputAssemblyStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setFlags(self, PipelineInputAssemblyStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setTopology(self, PrimitiveTopology topology) {
  self.topology = topology;
  return self;
}
       
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setPrimitiveRestartEnable(self, Bool32 primitiveRestartEnable) {
  self.primitiveRestartEnable = primitiveRestartEnable;
  return self;
}
       


fn PipelineMultisampleStateCreateInfo pipelineMultisampleStateCreateInfoBuilder() {
  PipelineMultisampleStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setFlags(self, PipelineMultisampleStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setRasterizationSamples(self, SampleCountFlagBits rasterizationSamples) {
  self.rasterizationSamples = rasterizationSamples;
  return self;
}
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setSampleShadingEnable(self, Bool32 sampleShadingEnable) {
  self.sampleShadingEnable = sampleShadingEnable;
  return self;
}
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setMinSampleShading(self, float minSampleShading) {
  self.minSampleShading = minSampleShading;
  return self;
}
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setPSampleMask(self, SampleMask[] pSampleMask) {
  self.codeSize = (uint)pSampleMask.len;
  self.pSampleMask = &pSampleMask[0];
  return self;
}

fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setAlphaToCoverageEnable(self, Bool32 alphaToCoverageEnable) {
  self.alphaToCoverageEnable = alphaToCoverageEnable;
  return self;
}
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setAlphaToOneEnable(self, Bool32 alphaToOneEnable) {
  self.alphaToOneEnable = alphaToOneEnable;
  return self;
}
       


fn PipelineRasterizationStateCreateInfo pipelineRasterizationStateCreateInfoBuilder() {
  PipelineRasterizationStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setFlags(self, PipelineRasterizationStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthClampEnable(self, Bool32 depthClampEnable) {
  self.depthClampEnable = depthClampEnable;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setRasterizerDiscardEnable(self, Bool32 rasterizerDiscardEnable) {
  self.rasterizerDiscardEnable = rasterizerDiscardEnable;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setPolygonMode(self, PolygonMode polygonMode) {
  self.polygonMode = polygonMode;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setCullMode(self, CullModeFlags cullMode) {
  self.cullMode = cullMode;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setFrontFace(self, FrontFace frontFace) {
  self.frontFace = frontFace;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasEnable(self, Bool32 depthBiasEnable) {
  self.depthBiasEnable = depthBiasEnable;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasConstantFactor(self, float depthBiasConstantFactor) {
  self.depthBiasConstantFactor = depthBiasConstantFactor;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasClamp(self, float depthBiasClamp) {
  self.depthBiasClamp = depthBiasClamp;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setDepthBiasSlopeFactor(self, float depthBiasSlopeFactor) {
  self.depthBiasSlopeFactor = depthBiasSlopeFactor;
  return self;
}
       
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setLineWidth(self, float lineWidth) {
  self.lineWidth = lineWidth;
  return self;
}
       


fn PipelineShaderStageCreateInfo pipelineShaderStageCreateInfoBuilder() {
  PipelineShaderStageCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setFlags(self, PipelineShaderStageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setStage(self, ShaderStageFlagBits stage) {
  self.stage = stage;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setMod(self, ShaderModule mod) {
  self.mod = mod;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setPName(self, char* pName) {
  self.pName = pName;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setPName(self, char* pName) {
  self.pName = pName;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setPSpecializationInfo(self, SpecializationInfo* pSpecializationInfo) {
  self.pSpecializationInfo = pSpecializationInfo;
  return self;
}
       


fn PipelineTessellationStateCreateInfo pipelineTessellationStateCreateInfoBuilder() {
  PipelineTessellationStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setFlags(self, PipelineTessellationStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setPatchControlPoints(self, uint patchControlPoints) {
  self.patchControlPoints = patchControlPoints;
  return self;
}
       


fn PipelineVertexInputStateCreateInfo pipelineVertexInputStateCreateInfoBuilder() {
  PipelineVertexInputStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setFlags(self, PipelineVertexInputStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexBindingDescriptionCount(self, uint vertexBindingDescriptionCount) {
  self.vertexBindingDescriptionCount = vertexBindingDescriptionCount;
  return self;
}
       
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setPVertexBindingDescriptions(self, VertexInputBindingDescription[] pVertexBindingDescriptions) {
  self.vertexBindingDescriptionCount = (uint)pVertexBindingDescriptions.len;
  self.pVertexBindingDescriptions = &pVertexBindingDescriptions[0];
  return self;
}

fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexAttributeDescriptionCount(self, uint vertexAttributeDescriptionCount) {
  self.vertexAttributeDescriptionCount = vertexAttributeDescriptionCount;
  return self;
}
       
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setPVertexAttributeDescriptions(self, VertexInputAttributeDescription[] pVertexAttributeDescriptions) {
  self.vertexAttributeDescriptionCount = (uint)pVertexAttributeDescriptions.len;
  self.pVertexAttributeDescriptions = &pVertexAttributeDescriptions[0];
  return self;
}



fn PipelineViewportStateCreateInfo pipelineViewportStateCreateInfoBuilder() {
  PipelineViewportStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setFlags(self, PipelineViewportStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setViewportCount(self, uint viewportCount) {
  self.viewportCount = viewportCount;
  return self;
}
       
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setPViewports(self, Viewport[] pViewports) {
  self.viewportCount = (uint)pViewports.len;
  self.pViewports = &pViewports[0];
  return self;
}

fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setScissorCount(self, uint scissorCount) {
  self.scissorCount = scissorCount;
  return self;
}
       
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setPScissors(self, Rect2D[] pScissors) {
  self.scissorCount = (uint)pScissors.len;
  self.pScissors = &pScissors[0];
  return self;
}



fn PipelineLayoutCreateInfo pipelineLayoutCreateInfoBuilder() {
  PipelineLayoutCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setFlags(self, PipelineLayoutCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setSetLayoutCount(self, uint setLayoutCount) {
  self.setLayoutCount = setLayoutCount;
  return self;
}
       
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPSetLayouts(self, DescriptorSetLayout[] pSetLayouts) {
  self.setLayoutCount = (uint)pSetLayouts.len;
  self.pSetLayouts = &pSetLayouts[0];
  return self;
}

fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPushConstantRangeCount(self, uint pushConstantRangeCount) {
  self.pushConstantRangeCount = pushConstantRangeCount;
  return self;
}
       
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPPushConstantRanges(self, PushConstantRange[] pPushConstantRanges) {
  self.pushConstantRangeCount = (uint)pPushConstantRanges.len;
  self.pPushConstantRanges = &pPushConstantRanges[0];
  return self;
}



fn SamplerCreateInfo samplerCreateInfoBuilder() {
  SamplerCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SamplerCreateInfo SamplerCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setFlags(self, SamplerCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMagFilter(self, Filter magFilter) {
  self.magFilter = magFilter;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMinFilter(self, Filter minFilter) {
  self.minFilter = minFilter;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMipmapMode(self, SamplerMipmapMode mipmapMode) {
  self.mipmapMode = mipmapMode;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setAddressModeU(self, SamplerAddressMode addressModeU) {
  self.addressModeU = addressModeU;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setAddressModeV(self, SamplerAddressMode addressModeV) {
  self.addressModeV = addressModeV;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setAddressModeW(self, SamplerAddressMode addressModeW) {
  self.addressModeW = addressModeW;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMipLodBias(self, float mipLodBias) {
  self.mipLodBias = mipLodBias;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setAnisotropyEnable(self, Bool32 anisotropyEnable) {
  self.anisotropyEnable = anisotropyEnable;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMaxAnisotropy(self, float maxAnisotropy) {
  self.maxAnisotropy = maxAnisotropy;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setCompareEnable(self, Bool32 compareEnable) {
  self.compareEnable = compareEnable;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setCompareOp(self, CompareOp compareOp) {
  self.compareOp = compareOp;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMinLod(self, float minLod) {
  self.minLod = minLod;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setMaxLod(self, float maxLod) {
  self.maxLod = maxLod;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setBorderColor(self, BorderColor borderColor) {
  self.borderColor = borderColor;
  return self;
}
       
fn SamplerCreateInfo SamplerCreateInfo.setUnnormalizedCoordinates(self, Bool32 unnormalizedCoordinates) {
  self.unnormalizedCoordinates = unnormalizedCoordinates;
  return self;
}
       


fn CopyDescriptorSet copyDescriptorSetBuilder() {
  CopyDescriptorSet defaultValue = {
    .sType = STRUCTURE_TYPE_COPY_DESCRIPTOR_SET,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CopyDescriptorSet CopyDescriptorSet.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setSrcSet(self, DescriptorSet srcSet) {
  self.srcSet = srcSet;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setSrcBinding(self, uint srcBinding) {
  self.srcBinding = srcBinding;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setSrcArrayElement(self, uint srcArrayElement) {
  self.srcArrayElement = srcArrayElement;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setDstSet(self, DescriptorSet dstSet) {
  self.dstSet = dstSet;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setDstBinding(self, uint dstBinding) {
  self.dstBinding = dstBinding;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setDstArrayElement(self, uint dstArrayElement) {
  self.dstArrayElement = dstArrayElement;
  return self;
}
       
fn CopyDescriptorSet CopyDescriptorSet.setDescriptorCount(self, uint descriptorCount) {
  self.descriptorCount = descriptorCount;
  return self;
}
       


fn DescriptorPoolCreateInfo descriptorPoolCreateInfoBuilder() {
  DescriptorPoolCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setFlags(self, DescriptorPoolCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setMaxSets(self, uint maxSets) {
  self.maxSets = maxSets;
  return self;
}
       
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setPoolSizeCount(self, uint poolSizeCount) {
  self.poolSizeCount = poolSizeCount;
  return self;
}
       
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setPPoolSizes(self, DescriptorPoolSize[] pPoolSizes) {
  self.poolSizeCount = (uint)pPoolSizes.len;
  self.pPoolSizes = &pPoolSizes[0];
  return self;
}



fn DescriptorSetAllocateInfo descriptorSetAllocateInfoBuilder() {
  DescriptorSetAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setDescriptorPool(self, DescriptorPool descriptorPool) {
  self.descriptorPool = descriptorPool;
  return self;
}
       
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setDescriptorSetCount(self, uint descriptorSetCount) {
  self.descriptorSetCount = descriptorSetCount;
  return self;
}
       
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setPSetLayouts(self, DescriptorSetLayout[] pSetLayouts) {
  self.descriptorSetCount = (uint)pSetLayouts.len;
  self.pSetLayouts = &pSetLayouts[0];
  return self;
}



fn DescriptorSetLayoutCreateInfo descriptorSetLayoutCreateInfoBuilder() {
  DescriptorSetLayoutCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setFlags(self, DescriptorSetLayoutCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setBindingCount(self, uint bindingCount) {
  self.bindingCount = bindingCount;
  return self;
}
       
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setPBindings(self, DescriptorSetLayoutBinding[] pBindings) {
  self.bindingCount = (uint)pBindings.len;
  self.pBindings = &pBindings[0];
  return self;
}



fn WriteDescriptorSet writeDescriptorSetBuilder() {
  WriteDescriptorSet defaultValue = {
    .sType = STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn WriteDescriptorSet WriteDescriptorSet.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn WriteDescriptorSet WriteDescriptorSet.setDstSet(self, DescriptorSet dstSet) {
  self.dstSet = dstSet;
  return self;
}
       
fn WriteDescriptorSet WriteDescriptorSet.setDstBinding(self, uint dstBinding) {
  self.dstBinding = dstBinding;
  return self;
}
       
fn WriteDescriptorSet WriteDescriptorSet.setDstArrayElement(self, uint dstArrayElement) {
  self.dstArrayElement = dstArrayElement;
  return self;
}
       
fn WriteDescriptorSet WriteDescriptorSet.setDescriptorCount(self, uint descriptorCount) {
  self.descriptorCount = descriptorCount;
  return self;
}
       
fn WriteDescriptorSet WriteDescriptorSet.setDescriptorType(self, DescriptorType descriptorType) {
  self.descriptorType = descriptorType;
  return self;
}
       
fn WriteDescriptorSet WriteDescriptorSet.setPImageInfo(self, DescriptorImageInfo[] pImageInfo) {
  self.descriptorCount = (uint)pImageInfo.len;
  self.pImageInfo = &pImageInfo[0];
  return self;
}

fn WriteDescriptorSet WriteDescriptorSet.setPBufferInfo(self, DescriptorBufferInfo[] pBufferInfo) {
  self.descriptorCount = (uint)pBufferInfo.len;
  self.pBufferInfo = &pBufferInfo[0];
  return self;
}

fn WriteDescriptorSet WriteDescriptorSet.setPTexelBufferView(self, BufferView[] pTexelBufferView) {
  self.descriptorCount = (uint)pTexelBufferView.len;
  self.pTexelBufferView = &pTexelBufferView[0];
  return self;
}



fn FramebufferCreateInfo framebufferCreateInfoBuilder() {
  FramebufferCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn FramebufferCreateInfo FramebufferCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn FramebufferCreateInfo FramebufferCreateInfo.setFlags(self, FramebufferCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn FramebufferCreateInfo FramebufferCreateInfo.setRenderPass(self, RenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn FramebufferCreateInfo FramebufferCreateInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn FramebufferCreateInfo FramebufferCreateInfo.setPAttachments(self, ImageView[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn FramebufferCreateInfo FramebufferCreateInfo.setWidth(self, uint width) {
  self.width = width;
  return self;
}
       
fn FramebufferCreateInfo FramebufferCreateInfo.setHeight(self, uint height) {
  self.height = height;
  return self;
}
       
fn FramebufferCreateInfo FramebufferCreateInfo.setLayers(self, uint layers) {
  self.layers = layers;
  return self;
}
       


fn RenderPassCreateInfo renderPassCreateInfoBuilder() {
  RenderPassCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderPassCreateInfo RenderPassCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setFlags(self, RenderPassCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setPAttachments(self, AttachmentDescription[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn RenderPassCreateInfo RenderPassCreateInfo.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setPSubpasses(self, SubpassDescription[] pSubpasses) {
  self.subpassCount = (uint)pSubpasses.len;
  self.pSubpasses = &pSubpasses[0];
  return self;
}

fn RenderPassCreateInfo RenderPassCreateInfo.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setPDependencies(self, SubpassDependency[] pDependencies) {
  self.dependencyCount = (uint)pDependencies.len;
  self.pDependencies = &pDependencies[0];
  return self;
}



fn CommandPoolCreateInfo commandPoolCreateInfoBuilder() {
  CommandPoolCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CommandPoolCreateInfo CommandPoolCreateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandPoolCreateInfo CommandPoolCreateInfo.setFlags(self, CommandPoolCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn CommandPoolCreateInfo CommandPoolCreateInfo.setQueueFamilyIndex(self, uint queueFamilyIndex) {
  self.queueFamilyIndex = queueFamilyIndex;
  return self;
}
       


fn CommandBufferAllocateInfo commandBufferAllocateInfoBuilder() {
  CommandBufferAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setCommandPool(self, CommandPool commandPool) {
  self.commandPool = commandPool;
  return self;
}
       
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setLevel(self, CommandBufferLevel level) {
  self.level = level;
  return self;
}
       
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       


fn CommandBufferBeginInfo commandBufferBeginInfoBuilder() {
  CommandBufferBeginInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CommandBufferBeginInfo CommandBufferBeginInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandBufferBeginInfo CommandBufferBeginInfo.setFlags(self, CommandBufferUsageFlags flags) {
  self.flags = flags;
  return self;
}
       
fn CommandBufferBeginInfo CommandBufferBeginInfo.setPInheritanceInfo(self, CommandBufferInheritanceInfo* pInheritanceInfo) {
  self.pInheritanceInfo = pInheritanceInfo;
  return self;
}
       


fn CommandBufferInheritanceInfo commandBufferInheritanceInfoBuilder() {
  CommandBufferInheritanceInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setRenderPass(self, RenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setSubpass(self, uint subpass) {
  self.subpass = subpass;
  return self;
}
       
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setFramebuffer(self, Framebuffer framebuffer) {
  self.framebuffer = framebuffer;
  return self;
}
       
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setOcclusionQueryEnable(self, Bool32 occlusionQueryEnable) {
  self.occlusionQueryEnable = occlusionQueryEnable;
  return self;
}
       
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setQueryFlags(self, QueryControlFlags queryFlags) {
  self.queryFlags = queryFlags;
  return self;
}
       
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setPipelineStatistics(self, QueryPipelineStatisticFlags pipelineStatistics) {
  self.pipelineStatistics = pipelineStatistics;
  return self;
}
       


fn RenderPassBeginInfo renderPassBeginInfoBuilder() {
  RenderPassBeginInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderPassBeginInfo RenderPassBeginInfo.setPNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderPassBeginInfo RenderPassBeginInfo.setRenderPass(self, RenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn RenderPassBeginInfo RenderPassBeginInfo.setFramebuffer(self, Framebuffer framebuffer) {
  self.framebuffer = framebuffer;
  return self;
}
       
fn RenderPassBeginInfo RenderPassBeginInfo.setRenderArea(self, Rect2D renderArea) {
  self.renderArea = renderArea;
  return self;
}
       
fn RenderPassBeginInfo RenderPassBeginInfo.setClearValueCount(self, uint clearValueCount) {
  self.clearValueCount = clearValueCount;
  return self;
}
       
fn RenderPassBeginInfo RenderPassBeginInfo.setPClearValues(self, ClearValue[] pClearValues) {
  self.clearValueCount = (uint)pClearValues.len;
  self.pClearValues = &pClearValues[0];
  return self;
}

