module vk; 


fn BufferMemoryBarrier bufferMemoryBarrierBuilder() {
  BufferMemoryBarrier defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferMemoryBarrier BufferMemoryBarrier.setNext(self, void* pNext) {
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
fn ImageMemoryBarrier ImageMemoryBarrier.setNext(self, void* pNext) {
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
fn MemoryBarrier MemoryBarrier.setNext(self, void* pNext) {
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
fn ApplicationInfo ApplicationInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setApplicationName(self, char* pApplicationName) {
  self.pApplicationName = pApplicationName;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setApplicationVersion(self, uint applicationVersion) {
  self.applicationVersion = applicationVersion;
  return self;
}
       
fn ApplicationInfo ApplicationInfo.setEngineName(self, char* pEngineName) {
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
fn InstanceCreateInfo InstanceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setFlags(self, InstanceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setApplicationInfo(self, ApplicationInfo* pApplicationInfo) {
  self.pApplicationInfo = pApplicationInfo;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setEnabledLayerCount(self, uint enabledLayerCount) {
  self.enabledLayerCount = enabledLayerCount;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setEnabledLayerNames(self, ZString[] ppEnabledLayerNames) {
  self.enabledLayerCount = (uint)ppEnabledLayerNames.len;
  self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
  return self;
}

fn InstanceCreateInfo InstanceCreateInfo.setEnabledExtensionCount(self, uint enabledExtensionCount) {
  self.enabledExtensionCount = enabledExtensionCount;
  return self;
}
       
fn InstanceCreateInfo InstanceCreateInfo.setEnabledExtensionNames(self, ZString[] ppEnabledExtensionNames) {
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
fn DeviceCreateInfo DeviceCreateInfo.setNext(self, void* pNext) {
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
       
fn DeviceCreateInfo DeviceCreateInfo.setQueueCreateInfos(self, DeviceQueueCreateInfo[] pQueueCreateInfos) {
  self.queueCreateInfoCount = (uint)pQueueCreateInfos.len;
  self.pQueueCreateInfos = &pQueueCreateInfos[0];
  return self;
}

fn DeviceCreateInfo DeviceCreateInfo.setEnabledLayerCount(self, uint enabledLayerCount) {
  self.enabledLayerCount = enabledLayerCount;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setEnabledLayerNames(self, ZString[] ppEnabledLayerNames) {
  self.enabledLayerCount = (uint)ppEnabledLayerNames.len;
  self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
  return self;
}

fn DeviceCreateInfo DeviceCreateInfo.setEnabledExtensionCount(self, uint enabledExtensionCount) {
  self.enabledExtensionCount = enabledExtensionCount;
  return self;
}
       
fn DeviceCreateInfo DeviceCreateInfo.setEnabledExtensionNames(self, ZString[] ppEnabledExtensionNames) {
  self.enabledExtensionCount = (uint)ppEnabledExtensionNames.len;
  self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
  return self;
}

fn DeviceCreateInfo DeviceCreateInfo.setEnabledFeatures(self, PhysicalDeviceFeatures* pEnabledFeatures) {
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
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setNext(self, void* pNext) {
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
       
fn DeviceQueueCreateInfo DeviceQueueCreateInfo.setQueuePriorities(self, float[] pQueuePriorities) {
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
fn SubmitInfo SubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubmitInfo SubmitInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn SubmitInfo SubmitInfo.setWaitSemaphores(self, Semaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn SubmitInfo SubmitInfo.setWaitDstStageMask(self, PipelineStageFlags[] pWaitDstStageMask) {
  self.waitSemaphoreCount = (uint)pWaitDstStageMask.len;
  self.pWaitDstStageMask = &pWaitDstStageMask[0];
  return self;
}

fn SubmitInfo SubmitInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       
fn SubmitInfo SubmitInfo.setCommandBuffers(self, CommandBuffer[] pCommandBuffers) {
  self.commandBufferCount = (uint)pCommandBuffers.len;
  self.pCommandBuffers = &pCommandBuffers[0];
  return self;
}

fn SubmitInfo SubmitInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn SubmitInfo SubmitInfo.setSignalSemaphores(self, Semaphore[] pSignalSemaphores) {
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
fn MappedMemoryRange MappedMemoryRange.setNext(self, void* pNext) {
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
fn MemoryAllocateInfo MemoryAllocateInfo.setNext(self, void* pNext) {
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
fn BindSparseInfo BindSparseInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setWaitSemaphores(self, Semaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setBufferBindCount(self, uint bufferBindCount) {
  self.bufferBindCount = bufferBindCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setBufferBinds(self, SparseBufferMemoryBindInfo[] pBufferBinds) {
  self.bufferBindCount = (uint)pBufferBinds.len;
  self.pBufferBinds = &pBufferBinds[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setImageOpaqueBindCount(self, uint imageOpaqueBindCount) {
  self.imageOpaqueBindCount = imageOpaqueBindCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setImageOpaqueBinds(self, SparseImageOpaqueMemoryBindInfo[] pImageOpaqueBinds) {
  self.imageOpaqueBindCount = (uint)pImageOpaqueBinds.len;
  self.pImageOpaqueBinds = &pImageOpaqueBinds[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setImageBindCount(self, uint imageBindCount) {
  self.imageBindCount = imageBindCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setImageBinds(self, SparseImageMemoryBindInfo[] pImageBinds) {
  self.imageBindCount = (uint)pImageBinds.len;
  self.pImageBinds = &pImageBinds[0];
  return self;
}

fn BindSparseInfo BindSparseInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn BindSparseInfo BindSparseInfo.setSignalSemaphores(self, Semaphore[] pSignalSemaphores) {
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
fn FenceCreateInfo FenceCreateInfo.setNext(self, void* pNext) {
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
fn SemaphoreCreateInfo SemaphoreCreateInfo.setNext(self, void* pNext) {
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
fn EventCreateInfo EventCreateInfo.setNext(self, void* pNext) {
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
fn QueryPoolCreateInfo QueryPoolCreateInfo.setNext(self, void* pNext) {
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
fn BufferCreateInfo BufferCreateInfo.setNext(self, void* pNext) {
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
       
fn BufferCreateInfo BufferCreateInfo.setQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
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
fn BufferViewCreateInfo BufferViewCreateInfo.setNext(self, void* pNext) {
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
fn ImageCreateInfo ImageCreateInfo.setNext(self, void* pNext) {
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
       
fn ImageCreateInfo ImageCreateInfo.setQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
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
fn ImageViewCreateInfo ImageViewCreateInfo.setNext(self, void* pNext) {
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
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setNext(self, void* pNext) {
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
       
fn ShaderModuleCreateInfo ShaderModuleCreateInfo.setCode(self, uint* pCode) {
  self.pCode = pCode;
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
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineCacheCreateInfo PipelineCacheCreateInfo.setInitialData(self, void* pInitialData) {
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
fn ComputePipelineCreateInfo ComputePipelineCreateInfo.setNext(self, void* pNext) {
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
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setNext(self, void* pNext) {
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
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setStages(self, PipelineShaderStageCreateInfo[] pStages) {
  self.stageCount = (uint)pStages.len;
  self.pStages = &pStages[0];
  return self;
}

fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setVertexInputState(self, PipelineVertexInputStateCreateInfo* pVertexInputState) {
  self.pVertexInputState = pVertexInputState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setInputAssemblyState(self, PipelineInputAssemblyStateCreateInfo* pInputAssemblyState) {
  self.pInputAssemblyState = pInputAssemblyState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setTessellationState(self, PipelineTessellationStateCreateInfo* pTessellationState) {
  self.pTessellationState = pTessellationState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setViewportState(self, PipelineViewportStateCreateInfo* pViewportState) {
  self.pViewportState = pViewportState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setRasterizationState(self, PipelineRasterizationStateCreateInfo* pRasterizationState) {
  self.pRasterizationState = pRasterizationState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setMultisampleState(self, PipelineMultisampleStateCreateInfo* pMultisampleState) {
  self.pMultisampleState = pMultisampleState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setDepthStencilState(self, PipelineDepthStencilStateCreateInfo* pDepthStencilState) {
  self.pDepthStencilState = pDepthStencilState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setColorBlendState(self, PipelineColorBlendStateCreateInfo* pColorBlendState) {
  self.pColorBlendState = pColorBlendState;
  return self;
}
       
fn GraphicsPipelineCreateInfo GraphicsPipelineCreateInfo.setDynamicState(self, PipelineDynamicStateCreateInfo* pDynamicState) {
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
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineColorBlendStateCreateInfo PipelineColorBlendStateCreateInfo.setAttachments(self, PipelineColorBlendAttachmentState[] pAttachments) {
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
fn PipelineDepthStencilStateCreateInfo PipelineDepthStencilStateCreateInfo.setNext(self, void* pNext) {
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
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineDynamicStateCreateInfo PipelineDynamicStateCreateInfo.setDynamicStates(self, DynamicState[] pDynamicStates) {
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
fn PipelineInputAssemblyStateCreateInfo PipelineInputAssemblyStateCreateInfo.setNext(self, void* pNext) {
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
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineMultisampleStateCreateInfo PipelineMultisampleStateCreateInfo.setSampleMask(self, SampleMask* pSampleMask) {
  self.pSampleMask = pSampleMask;
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
fn PipelineRasterizationStateCreateInfo PipelineRasterizationStateCreateInfo.setNext(self, void* pNext) {
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
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setName(self, char* pName) {
  self.pName = pName;
  return self;
}
       
fn PipelineShaderStageCreateInfo PipelineShaderStageCreateInfo.setSpecializationInfo(self, SpecializationInfo* pSpecializationInfo) {
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
fn PipelineTessellationStateCreateInfo PipelineTessellationStateCreateInfo.setNext(self, void* pNext) {
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
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexBindingDescriptions(self, VertexInputBindingDescription[] pVertexBindingDescriptions) {
  self.vertexBindingDescriptionCount = (uint)pVertexBindingDescriptions.len;
  self.pVertexBindingDescriptions = &pVertexBindingDescriptions[0];
  return self;
}

fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexAttributeDescriptionCount(self, uint vertexAttributeDescriptionCount) {
  self.vertexAttributeDescriptionCount = vertexAttributeDescriptionCount;
  return self;
}
       
fn PipelineVertexInputStateCreateInfo PipelineVertexInputStateCreateInfo.setVertexAttributeDescriptions(self, VertexInputAttributeDescription[] pVertexAttributeDescriptions) {
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
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setViewports(self, Viewport[] pViewports) {
  self.viewportCount = (uint)pViewports.len;
  self.pViewports = &pViewports[0];
  return self;
}

fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setScissorCount(self, uint scissorCount) {
  self.scissorCount = scissorCount;
  return self;
}
       
fn PipelineViewportStateCreateInfo PipelineViewportStateCreateInfo.setScissors(self, Rect2D[] pScissors) {
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
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setNext(self, void* pNext) {
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
       
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setSetLayouts(self, DescriptorSetLayout[] pSetLayouts) {
  self.setLayoutCount = (uint)pSetLayouts.len;
  self.pSetLayouts = &pSetLayouts[0];
  return self;
}

fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPushConstantRangeCount(self, uint pushConstantRangeCount) {
  self.pushConstantRangeCount = pushConstantRangeCount;
  return self;
}
       
fn PipelineLayoutCreateInfo PipelineLayoutCreateInfo.setPushConstantRanges(self, PushConstantRange[] pPushConstantRanges) {
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
fn SamplerCreateInfo SamplerCreateInfo.setNext(self, void* pNext) {
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
fn CopyDescriptorSet CopyDescriptorSet.setNext(self, void* pNext) {
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
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setNext(self, void* pNext) {
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
       
fn DescriptorPoolCreateInfo DescriptorPoolCreateInfo.setPoolSizes(self, DescriptorPoolSize[] pPoolSizes) {
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
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setNext(self, void* pNext) {
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
       
fn DescriptorSetAllocateInfo DescriptorSetAllocateInfo.setSetLayouts(self, DescriptorSetLayout[] pSetLayouts) {
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
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setNext(self, void* pNext) {
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
       
fn DescriptorSetLayoutCreateInfo DescriptorSetLayoutCreateInfo.setBindings(self, DescriptorSetLayoutBinding[] pBindings) {
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
fn WriteDescriptorSet WriteDescriptorSet.setNext(self, void* pNext) {
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
       
fn WriteDescriptorSet WriteDescriptorSet.setImageInfo(self, DescriptorImageInfo[] pImageInfo) {
  self.descriptorCount = (uint)pImageInfo.len;
  self.pImageInfo = &pImageInfo[0];
  return self;
}

fn WriteDescriptorSet WriteDescriptorSet.setBufferInfo(self, DescriptorBufferInfo[] pBufferInfo) {
  self.descriptorCount = (uint)pBufferInfo.len;
  self.pBufferInfo = &pBufferInfo[0];
  return self;
}

fn WriteDescriptorSet WriteDescriptorSet.setTexelBufferView(self, BufferView[] pTexelBufferView) {
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
fn FramebufferCreateInfo FramebufferCreateInfo.setNext(self, void* pNext) {
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
       
fn FramebufferCreateInfo FramebufferCreateInfo.setAttachments(self, ImageView[] pAttachments) {
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
fn RenderPassCreateInfo RenderPassCreateInfo.setNext(self, void* pNext) {
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
       
fn RenderPassCreateInfo RenderPassCreateInfo.setAttachments(self, AttachmentDescription[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn RenderPassCreateInfo RenderPassCreateInfo.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setSubpasses(self, SubpassDescription[] pSubpasses) {
  self.subpassCount = (uint)pSubpasses.len;
  self.pSubpasses = &pSubpasses[0];
  return self;
}

fn RenderPassCreateInfo RenderPassCreateInfo.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn RenderPassCreateInfo RenderPassCreateInfo.setDependencies(self, SubpassDependency[] pDependencies) {
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
fn CommandPoolCreateInfo CommandPoolCreateInfo.setNext(self, void* pNext) {
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
fn CommandBufferAllocateInfo CommandBufferAllocateInfo.setNext(self, void* pNext) {
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
fn CommandBufferBeginInfo CommandBufferBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandBufferBeginInfo CommandBufferBeginInfo.setFlags(self, CommandBufferUsageFlags flags) {
  self.flags = flags;
  return self;
}
       
fn CommandBufferBeginInfo CommandBufferBeginInfo.setInheritanceInfo(self, CommandBufferInheritanceInfo* pInheritanceInfo) {
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
fn CommandBufferInheritanceInfo CommandBufferInheritanceInfo.setNext(self, void* pNext) {
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
fn RenderPassBeginInfo RenderPassBeginInfo.setNext(self, void* pNext) {
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
       
fn RenderPassBeginInfo RenderPassBeginInfo.setClearValues(self, ClearValue[] pClearValues) {
  self.clearValueCount = (uint)pClearValues.len;
  self.pClearValues = &pClearValues[0];
  return self;
}



fn PhysicalDeviceSubgroupProperties physicalDeviceSubgroupPropertiesBuilder() {
  PhysicalDeviceSubgroupProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setSubgroupSize(self, uint subgroupSize) {
  self.subgroupSize = subgroupSize;
  return self;
}
       
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setSupportedStages(self, ShaderStageFlags supportedStages) {
  self.supportedStages = supportedStages;
  return self;
}
       
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setSupportedOperations(self, SubgroupFeatureFlags supportedOperations) {
  self.supportedOperations = supportedOperations;
  return self;
}
       
fn PhysicalDeviceSubgroupProperties PhysicalDeviceSubgroupProperties.setQuadOperationsInAllStages(self, Bool32 quadOperationsInAllStages) {
  self.quadOperationsInAllStages = quadOperationsInAllStages;
  return self;
}
       


fn BindBufferMemoryInfo bindBufferMemoryInfoBuilder() {
  BindBufferMemoryInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindBufferMemoryInfo BindBufferMemoryInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindBufferMemoryInfo BindBufferMemoryInfo.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn BindBufferMemoryInfo BindBufferMemoryInfo.setMemory(self, DeviceMemory memory) {
  self.memory = memory;
  return self;
}
       
fn BindBufferMemoryInfo BindBufferMemoryInfo.setMemoryOffset(self, DeviceSize memoryOffset) {
  self.memoryOffset = memoryOffset;
  return self;
}
       


fn BindImageMemoryInfo bindImageMemoryInfoBuilder() {
  BindImageMemoryInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindImageMemoryInfo BindImageMemoryInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindImageMemoryInfo BindImageMemoryInfo.setImage(self, Image image) {
  self.image = image;
  return self;
}
       
fn BindImageMemoryInfo BindImageMemoryInfo.setMemory(self, DeviceMemory memory) {
  self.memory = memory;
  return self;
}
       
fn BindImageMemoryInfo BindImageMemoryInfo.setMemoryOffset(self, DeviceSize memoryOffset) {
  self.memoryOffset = memoryOffset;
  return self;
}
       


fn PhysicalDevice16BitStorageFeatures physicalDevice16BitStorageFeaturesBuilder() {
  PhysicalDevice16BitStorageFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setStorageBuffer16BitAccess(self, Bool32 storageBuffer16BitAccess) {
  self.storageBuffer16BitAccess = storageBuffer16BitAccess;
  return self;
}
       
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setUniformAndStorageBuffer16BitAccess(self, Bool32 uniformAndStorageBuffer16BitAccess) {
  self.uniformAndStorageBuffer16BitAccess = uniformAndStorageBuffer16BitAccess;
  return self;
}
       
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setStoragePushConstant16(self, Bool32 storagePushConstant16) {
  self.storagePushConstant16 = storagePushConstant16;
  return self;
}
       
fn PhysicalDevice16BitStorageFeatures PhysicalDevice16BitStorageFeatures.setStorageInputOutput16(self, Bool32 storageInputOutput16) {
  self.storageInputOutput16 = storageInputOutput16;
  return self;
}
       


fn MemoryDedicatedRequirements memoryDedicatedRequirementsBuilder() {
  MemoryDedicatedRequirements defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryDedicatedRequirements MemoryDedicatedRequirements.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryDedicatedRequirements MemoryDedicatedRequirements.setPrefersDedicatedAllocation(self, Bool32 prefersDedicatedAllocation) {
  self.prefersDedicatedAllocation = prefersDedicatedAllocation;
  return self;
}
       
fn MemoryDedicatedRequirements MemoryDedicatedRequirements.setRequiresDedicatedAllocation(self, Bool32 requiresDedicatedAllocation) {
  self.requiresDedicatedAllocation = requiresDedicatedAllocation;
  return self;
}
       


fn MemoryDedicatedAllocateInfo memoryDedicatedAllocateInfoBuilder() {
  MemoryDedicatedAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryDedicatedAllocateInfo MemoryDedicatedAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryDedicatedAllocateInfo MemoryDedicatedAllocateInfo.setImage(self, Image image) {
  self.image = image;
  return self;
}
       
fn MemoryDedicatedAllocateInfo MemoryDedicatedAllocateInfo.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn MemoryAllocateFlagsInfo memoryAllocateFlagsInfoBuilder() {
  MemoryAllocateFlagsInfo defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryAllocateFlagsInfo MemoryAllocateFlagsInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryAllocateFlagsInfo MemoryAllocateFlagsInfo.setFlags(self, MemoryAllocateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn MemoryAllocateFlagsInfo MemoryAllocateFlagsInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn DeviceGroupRenderPassBeginInfo deviceGroupRenderPassBeginInfoBuilder() {
  DeviceGroupRenderPassBeginInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setDeviceRenderAreaCount(self, uint deviceRenderAreaCount) {
  self.deviceRenderAreaCount = deviceRenderAreaCount;
  return self;
}
       
fn DeviceGroupRenderPassBeginInfo DeviceGroupRenderPassBeginInfo.setDeviceRenderAreas(self, Rect2D[] pDeviceRenderAreas) {
  self.deviceRenderAreaCount = (uint)pDeviceRenderAreas.len;
  self.pDeviceRenderAreas = &pDeviceRenderAreas[0];
  return self;
}



fn DeviceGroupCommandBufferBeginInfo deviceGroupCommandBufferBeginInfoBuilder() {
  DeviceGroupCommandBufferBeginInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupCommandBufferBeginInfo DeviceGroupCommandBufferBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupCommandBufferBeginInfo DeviceGroupCommandBufferBeginInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn DeviceGroupSubmitInfo deviceGroupSubmitInfoBuilder() {
  DeviceGroupSubmitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setWaitSemaphoreDeviceIndices(self, uint[] pWaitSemaphoreDeviceIndices) {
  self.waitSemaphoreCount = (uint)pWaitSemaphoreDeviceIndices.len;
  self.pWaitSemaphoreDeviceIndices = &pWaitSemaphoreDeviceIndices[0];
  return self;
}

fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setCommandBufferDeviceMasks(self, uint[] pCommandBufferDeviceMasks) {
  self.commandBufferCount = (uint)pCommandBufferDeviceMasks.len;
  self.pCommandBufferDeviceMasks = &pCommandBufferDeviceMasks[0];
  return self;
}

fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn DeviceGroupSubmitInfo DeviceGroupSubmitInfo.setSignalSemaphoreDeviceIndices(self, uint[] pSignalSemaphoreDeviceIndices) {
  self.signalSemaphoreCount = (uint)pSignalSemaphoreDeviceIndices.len;
  self.pSignalSemaphoreDeviceIndices = &pSignalSemaphoreDeviceIndices[0];
  return self;
}



fn DeviceGroupBindSparseInfo deviceGroupBindSparseInfoBuilder() {
  DeviceGroupBindSparseInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupBindSparseInfo DeviceGroupBindSparseInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupBindSparseInfo DeviceGroupBindSparseInfo.setResourceDeviceIndex(self, uint resourceDeviceIndex) {
  self.resourceDeviceIndex = resourceDeviceIndex;
  return self;
}
       
fn DeviceGroupBindSparseInfo DeviceGroupBindSparseInfo.setMemoryDeviceIndex(self, uint memoryDeviceIndex) {
  self.memoryDeviceIndex = memoryDeviceIndex;
  return self;
}
       


fn BindBufferMemoryDeviceGroupInfo bindBufferMemoryDeviceGroupInfoBuilder() {
  BindBufferMemoryDeviceGroupInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindBufferMemoryDeviceGroupInfo BindBufferMemoryDeviceGroupInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindBufferMemoryDeviceGroupInfo BindBufferMemoryDeviceGroupInfo.setDeviceIndexCount(self, uint deviceIndexCount) {
  self.deviceIndexCount = deviceIndexCount;
  return self;
}
       
fn BindBufferMemoryDeviceGroupInfo BindBufferMemoryDeviceGroupInfo.setDeviceIndices(self, uint[] pDeviceIndices) {
  self.deviceIndexCount = (uint)pDeviceIndices.len;
  self.pDeviceIndices = &pDeviceIndices[0];
  return self;
}



fn BindImageMemoryDeviceGroupInfo bindImageMemoryDeviceGroupInfoBuilder() {
  BindImageMemoryDeviceGroupInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setDeviceIndexCount(self, uint deviceIndexCount) {
  self.deviceIndexCount = deviceIndexCount;
  return self;
}
       
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setDeviceIndices(self, uint[] pDeviceIndices) {
  self.deviceIndexCount = (uint)pDeviceIndices.len;
  self.pDeviceIndices = &pDeviceIndices[0];
  return self;
}

fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setSplitInstanceBindRegionCount(self, uint splitInstanceBindRegionCount) {
  self.splitInstanceBindRegionCount = splitInstanceBindRegionCount;
  return self;
}
       
fn BindImageMemoryDeviceGroupInfo BindImageMemoryDeviceGroupInfo.setSplitInstanceBindRegions(self, Rect2D[] pSplitInstanceBindRegions) {
  self.splitInstanceBindRegionCount = (uint)pSplitInstanceBindRegions.len;
  self.pSplitInstanceBindRegions = &pSplitInstanceBindRegions[0];
  return self;
}



fn PhysicalDeviceGroupProperties physicalDeviceGroupPropertiesBuilder() {
  PhysicalDeviceGroupProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setPhysicalDeviceCount(self, uint physicalDeviceCount) {
  self.physicalDeviceCount = physicalDeviceCount;
  return self;
}
       
/*fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setPhysicalDevices(self, PhysicalDevice[MAX_DEVICE_GROUP_SIZE][] physicalDevices) {
  self.physicalDeviceCount = (uint)physicalDevices.len;
  self.physicalDevices = &physicalDevices[0];
  return self;
}*/

fn PhysicalDeviceGroupProperties PhysicalDeviceGroupProperties.setSubsetAllocation(self, Bool32 subsetAllocation) {
  self.subsetAllocation = subsetAllocation;
  return self;
}
       


fn DeviceGroupDeviceCreateInfo deviceGroupDeviceCreateInfoBuilder() {
  DeviceGroupDeviceCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupDeviceCreateInfo DeviceGroupDeviceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupDeviceCreateInfo DeviceGroupDeviceCreateInfo.setPhysicalDeviceCount(self, uint physicalDeviceCount) {
  self.physicalDeviceCount = physicalDeviceCount;
  return self;
}
       
fn DeviceGroupDeviceCreateInfo DeviceGroupDeviceCreateInfo.setPhysicalDevices(self, PhysicalDevice[] pPhysicalDevices) {
  self.physicalDeviceCount = (uint)pPhysicalDevices.len;
  self.pPhysicalDevices = &pPhysicalDevices[0];
  return self;
}



fn BufferMemoryRequirementsInfo2 bufferMemoryRequirementsInfo2Builder() {
  BufferMemoryRequirementsInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferMemoryRequirementsInfo2 BufferMemoryRequirementsInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferMemoryRequirementsInfo2 BufferMemoryRequirementsInfo2.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn ImageMemoryRequirementsInfo2 imageMemoryRequirementsInfo2Builder() {
  ImageMemoryRequirementsInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageMemoryRequirementsInfo2 ImageMemoryRequirementsInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageMemoryRequirementsInfo2 ImageMemoryRequirementsInfo2.setImage(self, Image image) {
  self.image = image;
  return self;
}
       


fn ImageSparseMemoryRequirementsInfo2 imageSparseMemoryRequirementsInfo2Builder() {
  ImageSparseMemoryRequirementsInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageSparseMemoryRequirementsInfo2 ImageSparseMemoryRequirementsInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageSparseMemoryRequirementsInfo2 ImageSparseMemoryRequirementsInfo2.setImage(self, Image image) {
  self.image = image;
  return self;
}
       


fn MemoryRequirements2 memoryRequirements2Builder() {
  MemoryRequirements2 defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryRequirements2 MemoryRequirements2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryRequirements2 MemoryRequirements2.setMemoryRequirements(self, MemoryRequirements memoryRequirements) {
  self.memoryRequirements = memoryRequirements;
  return self;
}
       


fn SparseImageMemoryRequirements2 sparseImageMemoryRequirements2Builder() {
  SparseImageMemoryRequirements2 defaultValue = {
    .sType = STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SparseImageMemoryRequirements2 SparseImageMemoryRequirements2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SparseImageMemoryRequirements2 SparseImageMemoryRequirements2.setMemoryRequirements(self, SparseImageMemoryRequirements memoryRequirements) {
  self.memoryRequirements = memoryRequirements;
  return self;
}
       


fn PhysicalDeviceFeatures2 physicalDeviceFeatures2Builder() {
  PhysicalDeviceFeatures2 defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceFeatures2 PhysicalDeviceFeatures2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceFeatures2 PhysicalDeviceFeatures2.setFeatures(self, PhysicalDeviceFeatures features) {
  self.features = features;
  return self;
}
       


fn PhysicalDeviceProperties2 physicalDeviceProperties2Builder() {
  PhysicalDeviceProperties2 defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceProperties2 PhysicalDeviceProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceProperties2 PhysicalDeviceProperties2.setProperties(self, PhysicalDeviceProperties properties) {
  self.properties = properties;
  return self;
}
       


fn FormatProperties2 formatProperties2Builder() {
  FormatProperties2 defaultValue = {
    .sType = STRUCTURE_TYPE_FORMAT_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn FormatProperties2 FormatProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn FormatProperties2 FormatProperties2.setFormatProperties(self, FormatProperties formatProperties) {
  self.formatProperties = formatProperties;
  return self;
}
       


fn ImageFormatProperties2 imageFormatProperties2Builder() {
  ImageFormatProperties2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageFormatProperties2 ImageFormatProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageFormatProperties2 ImageFormatProperties2.setImageFormatProperties(self, ImageFormatProperties imageFormatProperties) {
  self.imageFormatProperties = imageFormatProperties;
  return self;
}
       


fn PhysicalDeviceImageFormatInfo2 physicalDeviceImageFormatInfo2Builder() {
  PhysicalDeviceImageFormatInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setType(self, ImageType type) {
  self.type = type;
  return self;
}
       
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setTiling(self, ImageTiling tiling) {
  self.tiling = tiling;
  return self;
}
       
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setUsage(self, ImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn PhysicalDeviceImageFormatInfo2 PhysicalDeviceImageFormatInfo2.setFlags(self, ImageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn QueueFamilyProperties2 queueFamilyProperties2Builder() {
  QueueFamilyProperties2 defaultValue = {
    .sType = STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn QueueFamilyProperties2 QueueFamilyProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn QueueFamilyProperties2 QueueFamilyProperties2.setQueueFamilyProperties(self, QueueFamilyProperties queueFamilyProperties) {
  self.queueFamilyProperties = queueFamilyProperties;
  return self;
}
       


fn PhysicalDeviceMemoryProperties2 physicalDeviceMemoryProperties2Builder() {
  PhysicalDeviceMemoryProperties2 defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceMemoryProperties2 PhysicalDeviceMemoryProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceMemoryProperties2 PhysicalDeviceMemoryProperties2.setMemoryProperties(self, PhysicalDeviceMemoryProperties memoryProperties) {
  self.memoryProperties = memoryProperties;
  return self;
}
       


fn SparseImageFormatProperties2 sparseImageFormatProperties2Builder() {
  SparseImageFormatProperties2 defaultValue = {
    .sType = STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SparseImageFormatProperties2 SparseImageFormatProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SparseImageFormatProperties2 SparseImageFormatProperties2.setProperties(self, SparseImageFormatProperties properties) {
  self.properties = properties;
  return self;
}
       


fn PhysicalDeviceSparseImageFormatInfo2 physicalDeviceSparseImageFormatInfo2Builder() {
  PhysicalDeviceSparseImageFormatInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setType(self, ImageType type) {
  self.type = type;
  return self;
}
       
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setSamples(self, SampleCountFlagBits samples) {
  self.samples = samples;
  return self;
}
       
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setUsage(self, ImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn PhysicalDeviceSparseImageFormatInfo2 PhysicalDeviceSparseImageFormatInfo2.setTiling(self, ImageTiling tiling) {
  self.tiling = tiling;
  return self;
}
       


fn PhysicalDevicePointClippingProperties physicalDevicePointClippingPropertiesBuilder() {
  PhysicalDevicePointClippingProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevicePointClippingProperties PhysicalDevicePointClippingProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevicePointClippingProperties PhysicalDevicePointClippingProperties.setPointClippingBehavior(self, PointClippingBehavior pointClippingBehavior) {
  self.pointClippingBehavior = pointClippingBehavior;
  return self;
}
       


fn RenderPassInputAttachmentAspectCreateInfo renderPassInputAttachmentAspectCreateInfoBuilder() {
  RenderPassInputAttachmentAspectCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderPassInputAttachmentAspectCreateInfo RenderPassInputAttachmentAspectCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderPassInputAttachmentAspectCreateInfo RenderPassInputAttachmentAspectCreateInfo.setAspectReferenceCount(self, uint aspectReferenceCount) {
  self.aspectReferenceCount = aspectReferenceCount;
  return self;
}
       
fn RenderPassInputAttachmentAspectCreateInfo RenderPassInputAttachmentAspectCreateInfo.setAspectReferences(self, InputAttachmentAspectReference[] pAspectReferences) {
  self.aspectReferenceCount = (uint)pAspectReferences.len;
  self.pAspectReferences = &pAspectReferences[0];
  return self;
}



fn ImageViewUsageCreateInfo imageViewUsageCreateInfoBuilder() {
  ImageViewUsageCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageViewUsageCreateInfo ImageViewUsageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageViewUsageCreateInfo ImageViewUsageCreateInfo.setUsage(self, ImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       


fn PipelineTessellationDomainOriginStateCreateInfo pipelineTessellationDomainOriginStateCreateInfoBuilder() {
  PipelineTessellationDomainOriginStateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineTessellationDomainOriginStateCreateInfo PipelineTessellationDomainOriginStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineTessellationDomainOriginStateCreateInfo PipelineTessellationDomainOriginStateCreateInfo.setDomainOrigin(self, TessellationDomainOrigin domainOrigin) {
  self.domainOrigin = domainOrigin;
  return self;
}
       


fn RenderPassMultiviewCreateInfo renderPassMultiviewCreateInfoBuilder() {
  RenderPassMultiviewCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setViewMasks(self, uint[] pViewMasks) {
  self.subpassCount = (uint)pViewMasks.len;
  self.pViewMasks = &pViewMasks[0];
  return self;
}

fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setViewOffsets(self, int[] pViewOffsets) {
  self.dependencyCount = (uint)pViewOffsets.len;
  self.pViewOffsets = &pViewOffsets[0];
  return self;
}

fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setCorrelationMaskCount(self, uint correlationMaskCount) {
  self.correlationMaskCount = correlationMaskCount;
  return self;
}
       
fn RenderPassMultiviewCreateInfo RenderPassMultiviewCreateInfo.setCorrelationMasks(self, uint[] pCorrelationMasks) {
  self.correlationMaskCount = (uint)pCorrelationMasks.len;
  self.pCorrelationMasks = &pCorrelationMasks[0];
  return self;
}



fn PhysicalDeviceMultiviewFeatures physicalDeviceMultiviewFeaturesBuilder() {
  PhysicalDeviceMultiviewFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setMultiview(self, Bool32 multiview) {
  self.multiview = multiview;
  return self;
}
       
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setMultiviewGeometryShader(self, Bool32 multiviewGeometryShader) {
  self.multiviewGeometryShader = multiviewGeometryShader;
  return self;
}
       
fn PhysicalDeviceMultiviewFeatures PhysicalDeviceMultiviewFeatures.setMultiviewTessellationShader(self, Bool32 multiviewTessellationShader) {
  self.multiviewTessellationShader = multiviewTessellationShader;
  return self;
}
       


fn PhysicalDeviceMultiviewProperties physicalDeviceMultiviewPropertiesBuilder() {
  PhysicalDeviceMultiviewProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceMultiviewProperties PhysicalDeviceMultiviewProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceMultiviewProperties PhysicalDeviceMultiviewProperties.setMaxMultiviewViewCount(self, uint maxMultiviewViewCount) {
  self.maxMultiviewViewCount = maxMultiviewViewCount;
  return self;
}
       
fn PhysicalDeviceMultiviewProperties PhysicalDeviceMultiviewProperties.setMaxMultiviewInstanceIndex(self, uint maxMultiviewInstanceIndex) {
  self.maxMultiviewInstanceIndex = maxMultiviewInstanceIndex;
  return self;
}
       


fn PhysicalDeviceVariablePointersFeatures physicalDeviceVariablePointersFeaturesBuilder() {
  PhysicalDeviceVariablePointersFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceVariablePointersFeatures PhysicalDeviceVariablePointersFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceVariablePointersFeatures PhysicalDeviceVariablePointersFeatures.setVariablePointersStorageBuffer(self, Bool32 variablePointersStorageBuffer) {
  self.variablePointersStorageBuffer = variablePointersStorageBuffer;
  return self;
}
       
fn PhysicalDeviceVariablePointersFeatures PhysicalDeviceVariablePointersFeatures.setVariablePointers(self, Bool32 variablePointers) {
  self.variablePointers = variablePointers;
  return self;
}
       


fn PhysicalDeviceProtectedMemoryFeatures physicalDeviceProtectedMemoryFeaturesBuilder() {
  PhysicalDeviceProtectedMemoryFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceProtectedMemoryFeatures PhysicalDeviceProtectedMemoryFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceProtectedMemoryFeatures PhysicalDeviceProtectedMemoryFeatures.setProtectedMemory(self, Bool32 protectedMemory) {
  self.protectedMemory = protectedMemory;
  return self;
}
       


fn PhysicalDeviceProtectedMemoryProperties physicalDeviceProtectedMemoryPropertiesBuilder() {
  PhysicalDeviceProtectedMemoryProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceProtectedMemoryProperties PhysicalDeviceProtectedMemoryProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceProtectedMemoryProperties PhysicalDeviceProtectedMemoryProperties.setProtectedNoFault(self, Bool32 protectedNoFault) {
  self.protectedNoFault = protectedNoFault;
  return self;
}
       


fn DeviceQueueInfo2 deviceQueueInfo2Builder() {
  DeviceQueueInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceQueueInfo2 DeviceQueueInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceQueueInfo2 DeviceQueueInfo2.setFlags(self, DeviceQueueCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn DeviceQueueInfo2 DeviceQueueInfo2.setQueueFamilyIndex(self, uint queueFamilyIndex) {
  self.queueFamilyIndex = queueFamilyIndex;
  return self;
}
       
fn DeviceQueueInfo2 DeviceQueueInfo2.setQueueIndex(self, uint queueIndex) {
  self.queueIndex = queueIndex;
  return self;
}
       


fn ProtectedSubmitInfo protectedSubmitInfoBuilder() {
  ProtectedSubmitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ProtectedSubmitInfo ProtectedSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ProtectedSubmitInfo ProtectedSubmitInfo.setProtectedSubmit(self, Bool32 protectedSubmit) {
  self.protectedSubmit = protectedSubmit;
  return self;
}
       


fn SamplerYcbcrConversionCreateInfo samplerYcbcrConversionCreateInfoBuilder() {
  SamplerYcbcrConversionCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setYcbcrModel(self, SamplerYcbcrModelConversion ycbcrModel) {
  self.ycbcrModel = ycbcrModel;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setYcbcrRange(self, SamplerYcbcrRange ycbcrRange) {
  self.ycbcrRange = ycbcrRange;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setComponents(self, ComponentMapping components) {
  self.components = components;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setXChromaOffset(self, ChromaLocation xChromaOffset) {
  self.xChromaOffset = xChromaOffset;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setYChromaOffset(self, ChromaLocation yChromaOffset) {
  self.yChromaOffset = yChromaOffset;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setChromaFilter(self, Filter chromaFilter) {
  self.chromaFilter = chromaFilter;
  return self;
}
       
fn SamplerYcbcrConversionCreateInfo SamplerYcbcrConversionCreateInfo.setForceExplicitReconstruction(self, Bool32 forceExplicitReconstruction) {
  self.forceExplicitReconstruction = forceExplicitReconstruction;
  return self;
}
       


fn SamplerYcbcrConversionInfo samplerYcbcrConversionInfoBuilder() {
  SamplerYcbcrConversionInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SamplerYcbcrConversionInfo SamplerYcbcrConversionInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SamplerYcbcrConversionInfo SamplerYcbcrConversionInfo.setConversion(self, SamplerYcbcrConversion conversion) {
  self.conversion = conversion;
  return self;
}
       


fn BindImagePlaneMemoryInfo bindImagePlaneMemoryInfoBuilder() {
  BindImagePlaneMemoryInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindImagePlaneMemoryInfo BindImagePlaneMemoryInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindImagePlaneMemoryInfo BindImagePlaneMemoryInfo.setPlaneAspect(self, ImageAspectFlagBits planeAspect) {
  self.planeAspect = planeAspect;
  return self;
}
       


fn ImagePlaneMemoryRequirementsInfo imagePlaneMemoryRequirementsInfoBuilder() {
  ImagePlaneMemoryRequirementsInfo defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImagePlaneMemoryRequirementsInfo ImagePlaneMemoryRequirementsInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImagePlaneMemoryRequirementsInfo ImagePlaneMemoryRequirementsInfo.setPlaneAspect(self, ImageAspectFlagBits planeAspect) {
  self.planeAspect = planeAspect;
  return self;
}
       


fn PhysicalDeviceSamplerYcbcrConversionFeatures physicalDeviceSamplerYcbcrConversionFeaturesBuilder() {
  PhysicalDeviceSamplerYcbcrConversionFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSamplerYcbcrConversionFeatures PhysicalDeviceSamplerYcbcrConversionFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSamplerYcbcrConversionFeatures PhysicalDeviceSamplerYcbcrConversionFeatures.setSamplerYcbcrConversion(self, Bool32 samplerYcbcrConversion) {
  self.samplerYcbcrConversion = samplerYcbcrConversion;
  return self;
}
       


fn SamplerYcbcrConversionImageFormatProperties samplerYcbcrConversionImageFormatPropertiesBuilder() {
  SamplerYcbcrConversionImageFormatProperties defaultValue = {
    .sType = STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SamplerYcbcrConversionImageFormatProperties SamplerYcbcrConversionImageFormatProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SamplerYcbcrConversionImageFormatProperties SamplerYcbcrConversionImageFormatProperties.setCombinedImageSamplerDescriptorCount(self, uint combinedImageSamplerDescriptorCount) {
  self.combinedImageSamplerDescriptorCount = combinedImageSamplerDescriptorCount;
  return self;
}
       


fn DescriptorUpdateTemplateCreateInfo descriptorUpdateTemplateCreateInfoBuilder() {
  DescriptorUpdateTemplateCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setFlags(self, DescriptorUpdateTemplateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setDescriptorUpdateEntryCount(self, uint descriptorUpdateEntryCount) {
  self.descriptorUpdateEntryCount = descriptorUpdateEntryCount;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setDescriptorUpdateEntries(self, DescriptorUpdateTemplateEntry[] pDescriptorUpdateEntries) {
  self.descriptorUpdateEntryCount = (uint)pDescriptorUpdateEntries.len;
  self.pDescriptorUpdateEntries = &pDescriptorUpdateEntries[0];
  return self;
}

fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setTemplateType(self, DescriptorUpdateTemplateType templateType) {
  self.templateType = templateType;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setDescriptorSetLayout(self, DescriptorSetLayout descriptorSetLayout) {
  self.descriptorSetLayout = descriptorSetLayout;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setPipelineBindPoint(self, PipelineBindPoint pipelineBindPoint) {
  self.pipelineBindPoint = pipelineBindPoint;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setPipelineLayout(self, PipelineLayout pipelineLayout) {
  self.pipelineLayout = pipelineLayout;
  return self;
}
       
fn DescriptorUpdateTemplateCreateInfo DescriptorUpdateTemplateCreateInfo.setSet(self, uint set) {
  self.set = set;
  return self;
}
       


fn PhysicalDeviceExternalImageFormatInfo physicalDeviceExternalImageFormatInfoBuilder() {
  PhysicalDeviceExternalImageFormatInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceExternalImageFormatInfo PhysicalDeviceExternalImageFormatInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceExternalImageFormatInfo PhysicalDeviceExternalImageFormatInfo.setHandleType(self, ExternalMemoryHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn ExternalImageFormatProperties externalImageFormatPropertiesBuilder() {
  ExternalImageFormatProperties defaultValue = {
    .sType = STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExternalImageFormatProperties ExternalImageFormatProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExternalImageFormatProperties ExternalImageFormatProperties.setExternalMemoryProperties(self, ExternalMemoryProperties externalMemoryProperties) {
  self.externalMemoryProperties = externalMemoryProperties;
  return self;
}
       


fn PhysicalDeviceExternalBufferInfo physicalDeviceExternalBufferInfoBuilder() {
  PhysicalDeviceExternalBufferInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setFlags(self, BufferCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setUsage(self, BufferUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn PhysicalDeviceExternalBufferInfo PhysicalDeviceExternalBufferInfo.setHandleType(self, ExternalMemoryHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn ExternalBufferProperties externalBufferPropertiesBuilder() {
  ExternalBufferProperties defaultValue = {
    .sType = STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExternalBufferProperties ExternalBufferProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExternalBufferProperties ExternalBufferProperties.setExternalMemoryProperties(self, ExternalMemoryProperties externalMemoryProperties) {
  self.externalMemoryProperties = externalMemoryProperties;
  return self;
}
       


fn PhysicalDeviceIDProperties physicalDeviceIDPropertiesBuilder() {
  PhysicalDeviceIDProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceUUID(self, uint[UUID_SIZE] deviceUUID) {
  self.deviceUUID = deviceUUID;
  return self;
}
       
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDriverUUID(self, uint[UUID_SIZE] driverUUID) {
  self.driverUUID = driverUUID;
  return self;
}
       
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceLUID(self, uint[LUID_SIZE] deviceLUID) {
  self.deviceLUID = deviceLUID;
  return self;
}
       
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceNodeMask(self, uint deviceNodeMask) {
  self.deviceNodeMask = deviceNodeMask;
  return self;
}
       
fn PhysicalDeviceIDProperties PhysicalDeviceIDProperties.setDeviceLUIDValid(self, Bool32 deviceLUIDValid) {
  self.deviceLUIDValid = deviceLUIDValid;
  return self;
}
       


fn ExternalMemoryImageCreateInfo externalMemoryImageCreateInfoBuilder() {
  ExternalMemoryImageCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExternalMemoryImageCreateInfo ExternalMemoryImageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExternalMemoryImageCreateInfo ExternalMemoryImageCreateInfo.setHandleTypes(self, ExternalMemoryHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn ExternalMemoryBufferCreateInfo externalMemoryBufferCreateInfoBuilder() {
  ExternalMemoryBufferCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExternalMemoryBufferCreateInfo ExternalMemoryBufferCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExternalMemoryBufferCreateInfo ExternalMemoryBufferCreateInfo.setHandleTypes(self, ExternalMemoryHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn ExportMemoryAllocateInfo exportMemoryAllocateInfoBuilder() {
  ExportMemoryAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExportMemoryAllocateInfo ExportMemoryAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExportMemoryAllocateInfo ExportMemoryAllocateInfo.setHandleTypes(self, ExternalMemoryHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn PhysicalDeviceExternalFenceInfo physicalDeviceExternalFenceInfoBuilder() {
  PhysicalDeviceExternalFenceInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceExternalFenceInfo PhysicalDeviceExternalFenceInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceExternalFenceInfo PhysicalDeviceExternalFenceInfo.setHandleType(self, ExternalFenceHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn ExternalFenceProperties externalFencePropertiesBuilder() {
  ExternalFenceProperties defaultValue = {
    .sType = STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExternalFenceProperties ExternalFenceProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExternalFenceProperties ExternalFenceProperties.setExportFromImportedHandleTypes(self, ExternalFenceHandleTypeFlags exportFromImportedHandleTypes) {
  self.exportFromImportedHandleTypes = exportFromImportedHandleTypes;
  return self;
}
       
fn ExternalFenceProperties ExternalFenceProperties.setCompatibleHandleTypes(self, ExternalFenceHandleTypeFlags compatibleHandleTypes) {
  self.compatibleHandleTypes = compatibleHandleTypes;
  return self;
}
       
fn ExternalFenceProperties ExternalFenceProperties.setExternalFenceFeatures(self, ExternalFenceFeatureFlags externalFenceFeatures) {
  self.externalFenceFeatures = externalFenceFeatures;
  return self;
}
       


fn ExportFenceCreateInfo exportFenceCreateInfoBuilder() {
  ExportFenceCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExportFenceCreateInfo ExportFenceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExportFenceCreateInfo ExportFenceCreateInfo.setHandleTypes(self, ExternalFenceHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn ExportSemaphoreCreateInfo exportSemaphoreCreateInfoBuilder() {
  ExportSemaphoreCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExportSemaphoreCreateInfo ExportSemaphoreCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExportSemaphoreCreateInfo ExportSemaphoreCreateInfo.setHandleTypes(self, ExternalSemaphoreHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn PhysicalDeviceExternalSemaphoreInfo physicalDeviceExternalSemaphoreInfoBuilder() {
  PhysicalDeviceExternalSemaphoreInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceExternalSemaphoreInfo PhysicalDeviceExternalSemaphoreInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceExternalSemaphoreInfo PhysicalDeviceExternalSemaphoreInfo.setHandleType(self, ExternalSemaphoreHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn ExternalSemaphoreProperties externalSemaphorePropertiesBuilder() {
  ExternalSemaphoreProperties defaultValue = {
    .sType = STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setExportFromImportedHandleTypes(self, ExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes) {
  self.exportFromImportedHandleTypes = exportFromImportedHandleTypes;
  return self;
}
       
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setCompatibleHandleTypes(self, ExternalSemaphoreHandleTypeFlags compatibleHandleTypes) {
  self.compatibleHandleTypes = compatibleHandleTypes;
  return self;
}
       
fn ExternalSemaphoreProperties ExternalSemaphoreProperties.setExternalSemaphoreFeatures(self, ExternalSemaphoreFeatureFlags externalSemaphoreFeatures) {
  self.externalSemaphoreFeatures = externalSemaphoreFeatures;
  return self;
}
       


fn PhysicalDeviceMaintenance3Properties physicalDeviceMaintenance3PropertiesBuilder() {
  PhysicalDeviceMaintenance3Properties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceMaintenance3Properties PhysicalDeviceMaintenance3Properties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceMaintenance3Properties PhysicalDeviceMaintenance3Properties.setMaxPerSetDescriptors(self, uint maxPerSetDescriptors) {
  self.maxPerSetDescriptors = maxPerSetDescriptors;
  return self;
}
       
fn PhysicalDeviceMaintenance3Properties PhysicalDeviceMaintenance3Properties.setMaxMemoryAllocationSize(self, DeviceSize maxMemoryAllocationSize) {
  self.maxMemoryAllocationSize = maxMemoryAllocationSize;
  return self;
}
       


fn DescriptorSetLayoutSupport descriptorSetLayoutSupportBuilder() {
  DescriptorSetLayoutSupport defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorSetLayoutSupport DescriptorSetLayoutSupport.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorSetLayoutSupport DescriptorSetLayoutSupport.setSupported(self, Bool32 supported) {
  self.supported = supported;
  return self;
}
       


fn PhysicalDeviceShaderDrawParametersFeatures physicalDeviceShaderDrawParametersFeaturesBuilder() {
  PhysicalDeviceShaderDrawParametersFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderDrawParametersFeatures PhysicalDeviceShaderDrawParametersFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderDrawParametersFeatures PhysicalDeviceShaderDrawParametersFeatures.setShaderDrawParameters(self, Bool32 shaderDrawParameters) {
  self.shaderDrawParameters = shaderDrawParameters;
  return self;
}
       


fn ImageFormatListCreateInfo imageFormatListCreateInfoBuilder() {
  ImageFormatListCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageFormatListCreateInfo ImageFormatListCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageFormatListCreateInfo ImageFormatListCreateInfo.setViewFormatCount(self, uint viewFormatCount) {
  self.viewFormatCount = viewFormatCount;
  return self;
}
       
fn ImageFormatListCreateInfo ImageFormatListCreateInfo.setViewFormats(self, Format[] pViewFormats) {
  self.viewFormatCount = (uint)pViewFormats.len;
  self.pViewFormats = &pViewFormats[0];
  return self;
}



fn RenderPassCreateInfo2 renderPassCreateInfo2Builder() {
  RenderPassCreateInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setFlags(self, RenderPassCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setAttachments(self, AttachmentDescription2[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn RenderPassCreateInfo2 RenderPassCreateInfo2.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setSubpasses(self, SubpassDescription2[] pSubpasses) {
  self.subpassCount = (uint)pSubpasses.len;
  self.pSubpasses = &pSubpasses[0];
  return self;
}

fn RenderPassCreateInfo2 RenderPassCreateInfo2.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setDependencies(self, SubpassDependency2[] pDependencies) {
  self.dependencyCount = (uint)pDependencies.len;
  self.pDependencies = &pDependencies[0];
  return self;
}

fn RenderPassCreateInfo2 RenderPassCreateInfo2.setCorrelatedViewMaskCount(self, uint correlatedViewMaskCount) {
  self.correlatedViewMaskCount = correlatedViewMaskCount;
  return self;
}
       
fn RenderPassCreateInfo2 RenderPassCreateInfo2.setCorrelatedViewMasks(self, uint[] pCorrelatedViewMasks) {
  self.correlatedViewMaskCount = (uint)pCorrelatedViewMasks.len;
  self.pCorrelatedViewMasks = &pCorrelatedViewMasks[0];
  return self;
}



fn AttachmentDescription2 attachmentDescription2Builder() {
  AttachmentDescription2 defaultValue = {
    .sType = STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn AttachmentDescription2 AttachmentDescription2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setFlags(self, AttachmentDescriptionFlags flags) {
  self.flags = flags;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setSamples(self, SampleCountFlagBits samples) {
  self.samples = samples;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setLoadOp(self, AttachmentLoadOp loadOp) {
  self.loadOp = loadOp;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setStoreOp(self, AttachmentStoreOp storeOp) {
  self.storeOp = storeOp;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setStencilLoadOp(self, AttachmentLoadOp stencilLoadOp) {
  self.stencilLoadOp = stencilLoadOp;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setStencilStoreOp(self, AttachmentStoreOp stencilStoreOp) {
  self.stencilStoreOp = stencilStoreOp;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setInitialLayout(self, ImageLayout initialLayout) {
  self.initialLayout = initialLayout;
  return self;
}
       
fn AttachmentDescription2 AttachmentDescription2.setFinalLayout(self, ImageLayout finalLayout) {
  self.finalLayout = finalLayout;
  return self;
}
       


fn AttachmentReference2 attachmentReference2Builder() {
  AttachmentReference2 defaultValue = {
    .sType = STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn AttachmentReference2 AttachmentReference2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn AttachmentReference2 AttachmentReference2.setAttachment(self, uint attachment) {
  self.attachment = attachment;
  return self;
}
       
fn AttachmentReference2 AttachmentReference2.setLayout(self, ImageLayout layout) {
  self.layout = layout;
  return self;
}
       
fn AttachmentReference2 AttachmentReference2.setAspectMask(self, ImageAspectFlags aspectMask) {
  self.aspectMask = aspectMask;
  return self;
}
       


fn SubpassDescription2 subpassDescription2Builder() {
  SubpassDescription2 defaultValue = {
    .sType = STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubpassDescription2 SubpassDescription2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setFlags(self, SubpassDescriptionFlags flags) {
  self.flags = flags;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setPipelineBindPoint(self, PipelineBindPoint pipelineBindPoint) {
  self.pipelineBindPoint = pipelineBindPoint;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setInputAttachmentCount(self, uint inputAttachmentCount) {
  self.inputAttachmentCount = inputAttachmentCount;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setInputAttachments(self, AttachmentReference2[] pInputAttachments) {
  self.inputAttachmentCount = (uint)pInputAttachments.len;
  self.pInputAttachments = &pInputAttachments[0];
  return self;
}

fn SubpassDescription2 SubpassDescription2.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setColorAttachments(self, AttachmentReference2[] pColorAttachments) {
  self.colorAttachmentCount = (uint)pColorAttachments.len;
  self.pColorAttachments = &pColorAttachments[0];
  return self;
}

fn SubpassDescription2 SubpassDescription2.setResolveAttachments(self, AttachmentReference2[] pResolveAttachments) {
  self.colorAttachmentCount = (uint)pResolveAttachments.len;
  self.pResolveAttachments = &pResolveAttachments[0];
  return self;
}

fn SubpassDescription2 SubpassDescription2.setDepthStencilAttachment(self, AttachmentReference2* pDepthStencilAttachment) {
  self.pDepthStencilAttachment = pDepthStencilAttachment;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setPreserveAttachmentCount(self, uint preserveAttachmentCount) {
  self.preserveAttachmentCount = preserveAttachmentCount;
  return self;
}
       
fn SubpassDescription2 SubpassDescription2.setPreserveAttachments(self, uint[] pPreserveAttachments) {
  self.preserveAttachmentCount = (uint)pPreserveAttachments.len;
  self.pPreserveAttachments = &pPreserveAttachments[0];
  return self;
}



fn SubpassDependency2 subpassDependency2Builder() {
  SubpassDependency2 defaultValue = {
    .sType = STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubpassDependency2 SubpassDependency2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setSrcSubpass(self, uint srcSubpass) {
  self.srcSubpass = srcSubpass;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setDstSubpass(self, uint dstSubpass) {
  self.dstSubpass = dstSubpass;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setSrcStageMask(self, PipelineStageFlags srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setDstStageMask(self, PipelineStageFlags dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setSrcAccessMask(self, AccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setDstAccessMask(self, AccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setDependencyFlags(self, DependencyFlags dependencyFlags) {
  self.dependencyFlags = dependencyFlags;
  return self;
}
       
fn SubpassDependency2 SubpassDependency2.setViewOffset(self, int viewOffset) {
  self.viewOffset = viewOffset;
  return self;
}
       


fn SubpassBeginInfo subpassBeginInfoBuilder() {
  SubpassBeginInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SUBPASS_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubpassBeginInfo SubpassBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubpassBeginInfo SubpassBeginInfo.setContents(self, SubpassContents contents) {
  self.contents = contents;
  return self;
}
       


fn SubpassEndInfo subpassEndInfoBuilder() {
  SubpassEndInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SUBPASS_END_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubpassEndInfo SubpassEndInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       


fn PhysicalDevice8BitStorageFeatures physicalDevice8BitStorageFeaturesBuilder() {
  PhysicalDevice8BitStorageFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setStorageBuffer8BitAccess(self, Bool32 storageBuffer8BitAccess) {
  self.storageBuffer8BitAccess = storageBuffer8BitAccess;
  return self;
}
       
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setUniformAndStorageBuffer8BitAccess(self, Bool32 uniformAndStorageBuffer8BitAccess) {
  self.uniformAndStorageBuffer8BitAccess = uniformAndStorageBuffer8BitAccess;
  return self;
}
       
fn PhysicalDevice8BitStorageFeatures PhysicalDevice8BitStorageFeatures.setStoragePushConstant8(self, Bool32 storagePushConstant8) {
  self.storagePushConstant8 = storagePushConstant8;
  return self;
}
       


fn PhysicalDeviceDriverProperties physicalDeviceDriverPropertiesBuilder() {
  PhysicalDeviceDriverProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setDriverID(self, DriverId driverID) {
  self.driverID = driverID;
  return self;
}
       
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setDriverName(self, char[MAX_DRIVER_NAME_SIZE] driverName) {
  self.driverName = driverName;
  return self;
}
       
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setDriverInfo(self, char[MAX_DRIVER_INFO_SIZE] driverInfo) {
  self.driverInfo = driverInfo;
  return self;
}
       
fn PhysicalDeviceDriverProperties PhysicalDeviceDriverProperties.setConformanceVersion(self, ConformanceVersion conformanceVersion) {
  self.conformanceVersion = conformanceVersion;
  return self;
}
       


fn PhysicalDeviceShaderAtomicInt64Features physicalDeviceShaderAtomicInt64FeaturesBuilder() {
  PhysicalDeviceShaderAtomicInt64Features defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderAtomicInt64Features PhysicalDeviceShaderAtomicInt64Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderAtomicInt64Features PhysicalDeviceShaderAtomicInt64Features.setShaderBufferInt64Atomics(self, Bool32 shaderBufferInt64Atomics) {
  self.shaderBufferInt64Atomics = shaderBufferInt64Atomics;
  return self;
}
       
fn PhysicalDeviceShaderAtomicInt64Features PhysicalDeviceShaderAtomicInt64Features.setShaderSharedInt64Atomics(self, Bool32 shaderSharedInt64Atomics) {
  self.shaderSharedInt64Atomics = shaderSharedInt64Atomics;
  return self;
}
       


fn PhysicalDeviceShaderFloat16Int8Features physicalDeviceShaderFloat16Int8FeaturesBuilder() {
  PhysicalDeviceShaderFloat16Int8Features defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderFloat16Int8Features PhysicalDeviceShaderFloat16Int8Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderFloat16Int8Features PhysicalDeviceShaderFloat16Int8Features.setShaderFloat16(self, Bool32 shaderFloat16) {
  self.shaderFloat16 = shaderFloat16;
  return self;
}
       
fn PhysicalDeviceShaderFloat16Int8Features PhysicalDeviceShaderFloat16Int8Features.setShaderInt8(self, Bool32 shaderInt8) {
  self.shaderInt8 = shaderInt8;
  return self;
}
       


fn PhysicalDeviceFloatControlsProperties physicalDeviceFloatControlsPropertiesBuilder() {
  PhysicalDeviceFloatControlsProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setDenormBehaviorIndependence(self, ShaderFloatControlsIndependence denormBehaviorIndependence) {
  self.denormBehaviorIndependence = denormBehaviorIndependence;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setRoundingModeIndependence(self, ShaderFloatControlsIndependence roundingModeIndependence) {
  self.roundingModeIndependence = roundingModeIndependence;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat16(self, Bool32 shaderSignedZeroInfNanPreserveFloat16) {
  self.shaderSignedZeroInfNanPreserveFloat16 = shaderSignedZeroInfNanPreserveFloat16;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat32(self, Bool32 shaderSignedZeroInfNanPreserveFloat32) {
  self.shaderSignedZeroInfNanPreserveFloat32 = shaderSignedZeroInfNanPreserveFloat32;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat64(self, Bool32 shaderSignedZeroInfNanPreserveFloat64) {
  self.shaderSignedZeroInfNanPreserveFloat64 = shaderSignedZeroInfNanPreserveFloat64;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat16(self, Bool32 shaderDenormPreserveFloat16) {
  self.shaderDenormPreserveFloat16 = shaderDenormPreserveFloat16;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat32(self, Bool32 shaderDenormPreserveFloat32) {
  self.shaderDenormPreserveFloat32 = shaderDenormPreserveFloat32;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat64(self, Bool32 shaderDenormPreserveFloat64) {
  self.shaderDenormPreserveFloat64 = shaderDenormPreserveFloat64;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat16(self, Bool32 shaderDenormFlushToZeroFloat16) {
  self.shaderDenormFlushToZeroFloat16 = shaderDenormFlushToZeroFloat16;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat32(self, Bool32 shaderDenormFlushToZeroFloat32) {
  self.shaderDenormFlushToZeroFloat32 = shaderDenormFlushToZeroFloat32;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat64(self, Bool32 shaderDenormFlushToZeroFloat64) {
  self.shaderDenormFlushToZeroFloat64 = shaderDenormFlushToZeroFloat64;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat16(self, Bool32 shaderRoundingModeRTEFloat16) {
  self.shaderRoundingModeRTEFloat16 = shaderRoundingModeRTEFloat16;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat32(self, Bool32 shaderRoundingModeRTEFloat32) {
  self.shaderRoundingModeRTEFloat32 = shaderRoundingModeRTEFloat32;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat64(self, Bool32 shaderRoundingModeRTEFloat64) {
  self.shaderRoundingModeRTEFloat64 = shaderRoundingModeRTEFloat64;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat16(self, Bool32 shaderRoundingModeRTZFloat16) {
  self.shaderRoundingModeRTZFloat16 = shaderRoundingModeRTZFloat16;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat32(self, Bool32 shaderRoundingModeRTZFloat32) {
  self.shaderRoundingModeRTZFloat32 = shaderRoundingModeRTZFloat32;
  return self;
}
       
fn PhysicalDeviceFloatControlsProperties PhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat64(self, Bool32 shaderRoundingModeRTZFloat64) {
  self.shaderRoundingModeRTZFloat64 = shaderRoundingModeRTZFloat64;
  return self;
}
       


fn DescriptorSetLayoutBindingFlagsCreateInfo descriptorSetLayoutBindingFlagsCreateInfoBuilder() {
  DescriptorSetLayoutBindingFlagsCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorSetLayoutBindingFlagsCreateInfo DescriptorSetLayoutBindingFlagsCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorSetLayoutBindingFlagsCreateInfo DescriptorSetLayoutBindingFlagsCreateInfo.setBindingCount(self, uint bindingCount) {
  self.bindingCount = bindingCount;
  return self;
}
       
fn DescriptorSetLayoutBindingFlagsCreateInfo DescriptorSetLayoutBindingFlagsCreateInfo.setBindingFlags(self, DescriptorBindingFlags[] pBindingFlags) {
  self.bindingCount = (uint)pBindingFlags.len;
  self.pBindingFlags = &pBindingFlags[0];
  return self;
}



fn PhysicalDeviceDescriptorIndexingFeatures physicalDeviceDescriptorIndexingFeaturesBuilder() {
  PhysicalDeviceDescriptorIndexingFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderInputAttachmentArrayDynamicIndexing(self, Bool32 shaderInputAttachmentArrayDynamicIndexing) {
  self.shaderInputAttachmentArrayDynamicIndexing = shaderInputAttachmentArrayDynamicIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderUniformTexelBufferArrayDynamicIndexing(self, Bool32 shaderUniformTexelBufferArrayDynamicIndexing) {
  self.shaderUniformTexelBufferArrayDynamicIndexing = shaderUniformTexelBufferArrayDynamicIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageTexelBufferArrayDynamicIndexing(self, Bool32 shaderStorageTexelBufferArrayDynamicIndexing) {
  self.shaderStorageTexelBufferArrayDynamicIndexing = shaderStorageTexelBufferArrayDynamicIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderUniformBufferArrayNonUniformIndexing(self, Bool32 shaderUniformBufferArrayNonUniformIndexing) {
  self.shaderUniformBufferArrayNonUniformIndexing = shaderUniformBufferArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderSampledImageArrayNonUniformIndexing(self, Bool32 shaderSampledImageArrayNonUniformIndexing) {
  self.shaderSampledImageArrayNonUniformIndexing = shaderSampledImageArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageBufferArrayNonUniformIndexing(self, Bool32 shaderStorageBufferArrayNonUniformIndexing) {
  self.shaderStorageBufferArrayNonUniformIndexing = shaderStorageBufferArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageImageArrayNonUniformIndexing(self, Bool32 shaderStorageImageArrayNonUniformIndexing) {
  self.shaderStorageImageArrayNonUniformIndexing = shaderStorageImageArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderInputAttachmentArrayNonUniformIndexing(self, Bool32 shaderInputAttachmentArrayNonUniformIndexing) {
  self.shaderInputAttachmentArrayNonUniformIndexing = shaderInputAttachmentArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderUniformTexelBufferArrayNonUniformIndexing(self, Bool32 shaderUniformTexelBufferArrayNonUniformIndexing) {
  self.shaderUniformTexelBufferArrayNonUniformIndexing = shaderUniformTexelBufferArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setShaderStorageTexelBufferArrayNonUniformIndexing(self, Bool32 shaderStorageTexelBufferArrayNonUniformIndexing) {
  self.shaderStorageTexelBufferArrayNonUniformIndexing = shaderStorageTexelBufferArrayNonUniformIndexing;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUniformBufferUpdateAfterBind(self, Bool32 descriptorBindingUniformBufferUpdateAfterBind) {
  self.descriptorBindingUniformBufferUpdateAfterBind = descriptorBindingUniformBufferUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingSampledImageUpdateAfterBind(self, Bool32 descriptorBindingSampledImageUpdateAfterBind) {
  self.descriptorBindingSampledImageUpdateAfterBind = descriptorBindingSampledImageUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageImageUpdateAfterBind(self, Bool32 descriptorBindingStorageImageUpdateAfterBind) {
  self.descriptorBindingStorageImageUpdateAfterBind = descriptorBindingStorageImageUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageBufferUpdateAfterBind(self, Bool32 descriptorBindingStorageBufferUpdateAfterBind) {
  self.descriptorBindingStorageBufferUpdateAfterBind = descriptorBindingStorageBufferUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUniformTexelBufferUpdateAfterBind(self, Bool32 descriptorBindingUniformTexelBufferUpdateAfterBind) {
  self.descriptorBindingUniformTexelBufferUpdateAfterBind = descriptorBindingUniformTexelBufferUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageTexelBufferUpdateAfterBind(self, Bool32 descriptorBindingStorageTexelBufferUpdateAfterBind) {
  self.descriptorBindingStorageTexelBufferUpdateAfterBind = descriptorBindingStorageTexelBufferUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUpdateUnusedWhilePending(self, Bool32 descriptorBindingUpdateUnusedWhilePending) {
  self.descriptorBindingUpdateUnusedWhilePending = descriptorBindingUpdateUnusedWhilePending;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingPartiallyBound(self, Bool32 descriptorBindingPartiallyBound) {
  self.descriptorBindingPartiallyBound = descriptorBindingPartiallyBound;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingVariableDescriptorCount(self, Bool32 descriptorBindingVariableDescriptorCount) {
  self.descriptorBindingVariableDescriptorCount = descriptorBindingVariableDescriptorCount;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingFeatures PhysicalDeviceDescriptorIndexingFeatures.setRuntimeDescriptorArray(self, Bool32 runtimeDescriptorArray) {
  self.runtimeDescriptorArray = runtimeDescriptorArray;
  return self;
}
       


fn PhysicalDeviceDescriptorIndexingProperties physicalDeviceDescriptorIndexingPropertiesBuilder() {
  PhysicalDeviceDescriptorIndexingProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxUpdateAfterBindDescriptorsInAllPools(self, uint maxUpdateAfterBindDescriptorsInAllPools) {
  self.maxUpdateAfterBindDescriptorsInAllPools = maxUpdateAfterBindDescriptorsInAllPools;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderUniformBufferArrayNonUniformIndexingNative(self, Bool32 shaderUniformBufferArrayNonUniformIndexingNative) {
  self.shaderUniformBufferArrayNonUniformIndexingNative = shaderUniformBufferArrayNonUniformIndexingNative;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderSampledImageArrayNonUniformIndexingNative(self, Bool32 shaderSampledImageArrayNonUniformIndexingNative) {
  self.shaderSampledImageArrayNonUniformIndexingNative = shaderSampledImageArrayNonUniformIndexingNative;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderStorageBufferArrayNonUniformIndexingNative(self, Bool32 shaderStorageBufferArrayNonUniformIndexingNative) {
  self.shaderStorageBufferArrayNonUniformIndexingNative = shaderStorageBufferArrayNonUniformIndexingNative;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderStorageImageArrayNonUniformIndexingNative(self, Bool32 shaderStorageImageArrayNonUniformIndexingNative) {
  self.shaderStorageImageArrayNonUniformIndexingNative = shaderStorageImageArrayNonUniformIndexingNative;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setShaderInputAttachmentArrayNonUniformIndexingNative(self, Bool32 shaderInputAttachmentArrayNonUniformIndexingNative) {
  self.shaderInputAttachmentArrayNonUniformIndexingNative = shaderInputAttachmentArrayNonUniformIndexingNative;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setRobustBufferAccessUpdateAfterBind(self, Bool32 robustBufferAccessUpdateAfterBind) {
  self.robustBufferAccessUpdateAfterBind = robustBufferAccessUpdateAfterBind;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setQuadDivergentImplicitLod(self, Bool32 quadDivergentImplicitLod) {
  self.quadDivergentImplicitLod = quadDivergentImplicitLod;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindSamplers(self, uint maxPerStageDescriptorUpdateAfterBindSamplers) {
  self.maxPerStageDescriptorUpdateAfterBindSamplers = maxPerStageDescriptorUpdateAfterBindSamplers;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindUniformBuffers(self, uint maxPerStageDescriptorUpdateAfterBindUniformBuffers) {
  self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = maxPerStageDescriptorUpdateAfterBindUniformBuffers;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindStorageBuffers(self, uint maxPerStageDescriptorUpdateAfterBindStorageBuffers) {
  self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = maxPerStageDescriptorUpdateAfterBindStorageBuffers;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindSampledImages(self, uint maxPerStageDescriptorUpdateAfterBindSampledImages) {
  self.maxPerStageDescriptorUpdateAfterBindSampledImages = maxPerStageDescriptorUpdateAfterBindSampledImages;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindStorageImages(self, uint maxPerStageDescriptorUpdateAfterBindStorageImages) {
  self.maxPerStageDescriptorUpdateAfterBindStorageImages = maxPerStageDescriptorUpdateAfterBindStorageImages;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindInputAttachments(self, uint maxPerStageDescriptorUpdateAfterBindInputAttachments) {
  self.maxPerStageDescriptorUpdateAfterBindInputAttachments = maxPerStageDescriptorUpdateAfterBindInputAttachments;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxPerStageUpdateAfterBindResources(self, uint maxPerStageUpdateAfterBindResources) {
  self.maxPerStageUpdateAfterBindResources = maxPerStageUpdateAfterBindResources;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindSamplers(self, uint maxDescriptorSetUpdateAfterBindSamplers) {
  self.maxDescriptorSetUpdateAfterBindSamplers = maxDescriptorSetUpdateAfterBindSamplers;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindUniformBuffers(self, uint maxDescriptorSetUpdateAfterBindUniformBuffers) {
  self.maxDescriptorSetUpdateAfterBindUniformBuffers = maxDescriptorSetUpdateAfterBindUniformBuffers;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindUniformBuffersDynamic(self, uint maxDescriptorSetUpdateAfterBindUniformBuffersDynamic) {
  self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageBuffers(self, uint maxDescriptorSetUpdateAfterBindStorageBuffers) {
  self.maxDescriptorSetUpdateAfterBindStorageBuffers = maxDescriptorSetUpdateAfterBindStorageBuffers;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageBuffersDynamic(self, uint maxDescriptorSetUpdateAfterBindStorageBuffersDynamic) {
  self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindSampledImages(self, uint maxDescriptorSetUpdateAfterBindSampledImages) {
  self.maxDescriptorSetUpdateAfterBindSampledImages = maxDescriptorSetUpdateAfterBindSampledImages;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageImages(self, uint maxDescriptorSetUpdateAfterBindStorageImages) {
  self.maxDescriptorSetUpdateAfterBindStorageImages = maxDescriptorSetUpdateAfterBindStorageImages;
  return self;
}
       
fn PhysicalDeviceDescriptorIndexingProperties PhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindInputAttachments(self, uint maxDescriptorSetUpdateAfterBindInputAttachments) {
  self.maxDescriptorSetUpdateAfterBindInputAttachments = maxDescriptorSetUpdateAfterBindInputAttachments;
  return self;
}
       


fn DescriptorSetVariableDescriptorCountAllocateInfo descriptorSetVariableDescriptorCountAllocateInfoBuilder() {
  DescriptorSetVariableDescriptorCountAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorSetVariableDescriptorCountAllocateInfo DescriptorSetVariableDescriptorCountAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorSetVariableDescriptorCountAllocateInfo DescriptorSetVariableDescriptorCountAllocateInfo.setDescriptorSetCount(self, uint descriptorSetCount) {
  self.descriptorSetCount = descriptorSetCount;
  return self;
}
       
fn DescriptorSetVariableDescriptorCountAllocateInfo DescriptorSetVariableDescriptorCountAllocateInfo.setDescriptorCounts(self, uint[] pDescriptorCounts) {
  self.descriptorSetCount = (uint)pDescriptorCounts.len;
  self.pDescriptorCounts = &pDescriptorCounts[0];
  return self;
}



fn DescriptorSetVariableDescriptorCountLayoutSupport descriptorSetVariableDescriptorCountLayoutSupportBuilder() {
  DescriptorSetVariableDescriptorCountLayoutSupport defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorSetVariableDescriptorCountLayoutSupport DescriptorSetVariableDescriptorCountLayoutSupport.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorSetVariableDescriptorCountLayoutSupport DescriptorSetVariableDescriptorCountLayoutSupport.setMaxVariableDescriptorCount(self, uint maxVariableDescriptorCount) {
  self.maxVariableDescriptorCount = maxVariableDescriptorCount;
  return self;
}
       


fn SubpassDescriptionDepthStencilResolve subpassDescriptionDepthStencilResolveBuilder() {
  SubpassDescriptionDepthStencilResolve defaultValue = {
    .sType = STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setDepthResolveMode(self, ResolveModeFlagBits depthResolveMode) {
  self.depthResolveMode = depthResolveMode;
  return self;
}
       
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setStencilResolveMode(self, ResolveModeFlagBits stencilResolveMode) {
  self.stencilResolveMode = stencilResolveMode;
  return self;
}
       
fn SubpassDescriptionDepthStencilResolve SubpassDescriptionDepthStencilResolve.setDepthStencilResolveAttachment(self, AttachmentReference2* pDepthStencilResolveAttachment) {
  self.pDepthStencilResolveAttachment = pDepthStencilResolveAttachment;
  return self;
}
       


fn PhysicalDeviceDepthStencilResolveProperties physicalDeviceDepthStencilResolvePropertiesBuilder() {
  PhysicalDeviceDepthStencilResolveProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setSupportedDepthResolveModes(self, ResolveModeFlags supportedDepthResolveModes) {
  self.supportedDepthResolveModes = supportedDepthResolveModes;
  return self;
}
       
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setSupportedStencilResolveModes(self, ResolveModeFlags supportedStencilResolveModes) {
  self.supportedStencilResolveModes = supportedStencilResolveModes;
  return self;
}
       
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setIndependentResolveNone(self, Bool32 independentResolveNone) {
  self.independentResolveNone = independentResolveNone;
  return self;
}
       
fn PhysicalDeviceDepthStencilResolveProperties PhysicalDeviceDepthStencilResolveProperties.setIndependentResolve(self, Bool32 independentResolve) {
  self.independentResolve = independentResolve;
  return self;
}
       


fn PhysicalDeviceScalarBlockLayoutFeatures physicalDeviceScalarBlockLayoutFeaturesBuilder() {
  PhysicalDeviceScalarBlockLayoutFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceScalarBlockLayoutFeatures PhysicalDeviceScalarBlockLayoutFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceScalarBlockLayoutFeatures PhysicalDeviceScalarBlockLayoutFeatures.setScalarBlockLayout(self, Bool32 scalarBlockLayout) {
  self.scalarBlockLayout = scalarBlockLayout;
  return self;
}
       


fn ImageStencilUsageCreateInfo imageStencilUsageCreateInfoBuilder() {
  ImageStencilUsageCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageStencilUsageCreateInfo ImageStencilUsageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageStencilUsageCreateInfo ImageStencilUsageCreateInfo.setStencilUsage(self, ImageUsageFlags stencilUsage) {
  self.stencilUsage = stencilUsage;
  return self;
}
       


fn SamplerReductionModeCreateInfo samplerReductionModeCreateInfoBuilder() {
  SamplerReductionModeCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SamplerReductionModeCreateInfo SamplerReductionModeCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SamplerReductionModeCreateInfo SamplerReductionModeCreateInfo.setReductionMode(self, SamplerReductionMode reductionMode) {
  self.reductionMode = reductionMode;
  return self;
}
       


fn PhysicalDeviceSamplerFilterMinmaxProperties physicalDeviceSamplerFilterMinmaxPropertiesBuilder() {
  PhysicalDeviceSamplerFilterMinmaxProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSamplerFilterMinmaxProperties PhysicalDeviceSamplerFilterMinmaxProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSamplerFilterMinmaxProperties PhysicalDeviceSamplerFilterMinmaxProperties.setFilterMinmaxSingleComponentFormats(self, Bool32 filterMinmaxSingleComponentFormats) {
  self.filterMinmaxSingleComponentFormats = filterMinmaxSingleComponentFormats;
  return self;
}
       
fn PhysicalDeviceSamplerFilterMinmaxProperties PhysicalDeviceSamplerFilterMinmaxProperties.setFilterMinmaxImageComponentMapping(self, Bool32 filterMinmaxImageComponentMapping) {
  self.filterMinmaxImageComponentMapping = filterMinmaxImageComponentMapping;
  return self;
}
       


fn PhysicalDeviceVulkanMemoryModelFeatures physicalDeviceVulkanMemoryModelFeaturesBuilder() {
  PhysicalDeviceVulkanMemoryModelFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModel(self, Bool32 vulkanMemoryModel) {
  self.vulkanMemoryModel = vulkanMemoryModel;
  return self;
}
       
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModelDeviceScope(self, Bool32 vulkanMemoryModelDeviceScope) {
  self.vulkanMemoryModelDeviceScope = vulkanMemoryModelDeviceScope;
  return self;
}
       
fn PhysicalDeviceVulkanMemoryModelFeatures PhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModelAvailabilityVisibilityChains(self, Bool32 vulkanMemoryModelAvailabilityVisibilityChains) {
  self.vulkanMemoryModelAvailabilityVisibilityChains = vulkanMemoryModelAvailabilityVisibilityChains;
  return self;
}
       


fn PhysicalDeviceImagelessFramebufferFeatures physicalDeviceImagelessFramebufferFeaturesBuilder() {
  PhysicalDeviceImagelessFramebufferFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceImagelessFramebufferFeatures PhysicalDeviceImagelessFramebufferFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceImagelessFramebufferFeatures PhysicalDeviceImagelessFramebufferFeatures.setImagelessFramebuffer(self, Bool32 imagelessFramebuffer) {
  self.imagelessFramebuffer = imagelessFramebuffer;
  return self;
}
       


fn FramebufferAttachmentsCreateInfo framebufferAttachmentsCreateInfoBuilder() {
  FramebufferAttachmentsCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn FramebufferAttachmentsCreateInfo FramebufferAttachmentsCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn FramebufferAttachmentsCreateInfo FramebufferAttachmentsCreateInfo.setAttachmentImageInfoCount(self, uint attachmentImageInfoCount) {
  self.attachmentImageInfoCount = attachmentImageInfoCount;
  return self;
}
       
fn FramebufferAttachmentsCreateInfo FramebufferAttachmentsCreateInfo.setAttachmentImageInfos(self, FramebufferAttachmentImageInfo[] pAttachmentImageInfos) {
  self.attachmentImageInfoCount = (uint)pAttachmentImageInfos.len;
  self.pAttachmentImageInfos = &pAttachmentImageInfos[0];
  return self;
}



fn FramebufferAttachmentImageInfo framebufferAttachmentImageInfoBuilder() {
  FramebufferAttachmentImageInfo defaultValue = {
    .sType = STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setFlags(self, ImageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setUsage(self, ImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setWidth(self, uint width) {
  self.width = width;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setHeight(self, uint height) {
  self.height = height;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setLayerCount(self, uint layerCount) {
  self.layerCount = layerCount;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setViewFormatCount(self, uint viewFormatCount) {
  self.viewFormatCount = viewFormatCount;
  return self;
}
       
fn FramebufferAttachmentImageInfo FramebufferAttachmentImageInfo.setViewFormats(self, Format[] pViewFormats) {
  self.viewFormatCount = (uint)pViewFormats.len;
  self.pViewFormats = &pViewFormats[0];
  return self;
}



fn RenderPassAttachmentBeginInfo renderPassAttachmentBeginInfoBuilder() {
  RenderPassAttachmentBeginInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderPassAttachmentBeginInfo RenderPassAttachmentBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderPassAttachmentBeginInfo RenderPassAttachmentBeginInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn RenderPassAttachmentBeginInfo RenderPassAttachmentBeginInfo.setAttachments(self, ImageView[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}



fn PhysicalDeviceUniformBufferStandardLayoutFeatures physicalDeviceUniformBufferStandardLayoutFeaturesBuilder() {
  PhysicalDeviceUniformBufferStandardLayoutFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceUniformBufferStandardLayoutFeatures PhysicalDeviceUniformBufferStandardLayoutFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceUniformBufferStandardLayoutFeatures PhysicalDeviceUniformBufferStandardLayoutFeatures.setUniformBufferStandardLayout(self, Bool32 uniformBufferStandardLayout) {
  self.uniformBufferStandardLayout = uniformBufferStandardLayout;
  return self;
}
       


fn PhysicalDeviceShaderSubgroupExtendedTypesFeatures physicalDeviceShaderSubgroupExtendedTypesFeaturesBuilder() {
  PhysicalDeviceShaderSubgroupExtendedTypesFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderSubgroupExtendedTypesFeatures PhysicalDeviceShaderSubgroupExtendedTypesFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderSubgroupExtendedTypesFeatures PhysicalDeviceShaderSubgroupExtendedTypesFeatures.setShaderSubgroupExtendedTypes(self, Bool32 shaderSubgroupExtendedTypes) {
  self.shaderSubgroupExtendedTypes = shaderSubgroupExtendedTypes;
  return self;
}
       


fn PhysicalDeviceSeparateDepthStencilLayoutsFeatures physicalDeviceSeparateDepthStencilLayoutsFeaturesBuilder() {
  PhysicalDeviceSeparateDepthStencilLayoutsFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSeparateDepthStencilLayoutsFeatures PhysicalDeviceSeparateDepthStencilLayoutsFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSeparateDepthStencilLayoutsFeatures PhysicalDeviceSeparateDepthStencilLayoutsFeatures.setSeparateDepthStencilLayouts(self, Bool32 separateDepthStencilLayouts) {
  self.separateDepthStencilLayouts = separateDepthStencilLayouts;
  return self;
}
       


fn AttachmentReferenceStencilLayout attachmentReferenceStencilLayoutBuilder() {
  AttachmentReferenceStencilLayout defaultValue = {
    .sType = STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn AttachmentReferenceStencilLayout AttachmentReferenceStencilLayout.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn AttachmentReferenceStencilLayout AttachmentReferenceStencilLayout.setStencilLayout(self, ImageLayout stencilLayout) {
  self.stencilLayout = stencilLayout;
  return self;
}
       


fn AttachmentDescriptionStencilLayout attachmentDescriptionStencilLayoutBuilder() {
  AttachmentDescriptionStencilLayout defaultValue = {
    .sType = STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn AttachmentDescriptionStencilLayout AttachmentDescriptionStencilLayout.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn AttachmentDescriptionStencilLayout AttachmentDescriptionStencilLayout.setStencilInitialLayout(self, ImageLayout stencilInitialLayout) {
  self.stencilInitialLayout = stencilInitialLayout;
  return self;
}
       
fn AttachmentDescriptionStencilLayout AttachmentDescriptionStencilLayout.setStencilFinalLayout(self, ImageLayout stencilFinalLayout) {
  self.stencilFinalLayout = stencilFinalLayout;
  return self;
}
       


fn PhysicalDeviceHostQueryResetFeatures physicalDeviceHostQueryResetFeaturesBuilder() {
  PhysicalDeviceHostQueryResetFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceHostQueryResetFeatures PhysicalDeviceHostQueryResetFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceHostQueryResetFeatures PhysicalDeviceHostQueryResetFeatures.setHostQueryReset(self, Bool32 hostQueryReset) {
  self.hostQueryReset = hostQueryReset;
  return self;
}
       


fn PhysicalDeviceTimelineSemaphoreFeatures physicalDeviceTimelineSemaphoreFeaturesBuilder() {
  PhysicalDeviceTimelineSemaphoreFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceTimelineSemaphoreFeatures PhysicalDeviceTimelineSemaphoreFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceTimelineSemaphoreFeatures PhysicalDeviceTimelineSemaphoreFeatures.setTimelineSemaphore(self, Bool32 timelineSemaphore) {
  self.timelineSemaphore = timelineSemaphore;
  return self;
}
       


fn PhysicalDeviceTimelineSemaphoreProperties physicalDeviceTimelineSemaphorePropertiesBuilder() {
  PhysicalDeviceTimelineSemaphoreProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceTimelineSemaphoreProperties PhysicalDeviceTimelineSemaphoreProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceTimelineSemaphoreProperties PhysicalDeviceTimelineSemaphoreProperties.setMaxTimelineSemaphoreValueDifference(self, ulong maxTimelineSemaphoreValueDifference) {
  self.maxTimelineSemaphoreValueDifference = maxTimelineSemaphoreValueDifference;
  return self;
}
       


fn SemaphoreTypeCreateInfo semaphoreTypeCreateInfoBuilder() {
  SemaphoreTypeCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SemaphoreTypeCreateInfo SemaphoreTypeCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SemaphoreTypeCreateInfo SemaphoreTypeCreateInfo.setSemaphoreType(self, SemaphoreType semaphoreType) {
  self.semaphoreType = semaphoreType;
  return self;
}
       
fn SemaphoreTypeCreateInfo SemaphoreTypeCreateInfo.setInitialValue(self, ulong initialValue) {
  self.initialValue = initialValue;
  return self;
}
       


fn TimelineSemaphoreSubmitInfo timelineSemaphoreSubmitInfoBuilder() {
  TimelineSemaphoreSubmitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setWaitSemaphoreValueCount(self, uint waitSemaphoreValueCount) {
  self.waitSemaphoreValueCount = waitSemaphoreValueCount;
  return self;
}
       
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setWaitSemaphoreValues(self, ulong[] pWaitSemaphoreValues) {
  self.waitSemaphoreValueCount = (uint)pWaitSemaphoreValues.len;
  self.pWaitSemaphoreValues = &pWaitSemaphoreValues[0];
  return self;
}

fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setSignalSemaphoreValueCount(self, uint signalSemaphoreValueCount) {
  self.signalSemaphoreValueCount = signalSemaphoreValueCount;
  return self;
}
       
fn TimelineSemaphoreSubmitInfo TimelineSemaphoreSubmitInfo.setSignalSemaphoreValues(self, ulong[] pSignalSemaphoreValues) {
  self.signalSemaphoreValueCount = (uint)pSignalSemaphoreValues.len;
  self.pSignalSemaphoreValues = &pSignalSemaphoreValues[0];
  return self;
}



fn SemaphoreWaitInfo semaphoreWaitInfoBuilder() {
  SemaphoreWaitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SemaphoreWaitInfo SemaphoreWaitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SemaphoreWaitInfo SemaphoreWaitInfo.setFlags(self, SemaphoreWaitFlags flags) {
  self.flags = flags;
  return self;
}
       
fn SemaphoreWaitInfo SemaphoreWaitInfo.setSemaphoreCount(self, uint semaphoreCount) {
  self.semaphoreCount = semaphoreCount;
  return self;
}
       
fn SemaphoreWaitInfo SemaphoreWaitInfo.setSemaphores(self, Semaphore[] pSemaphores) {
  self.semaphoreCount = (uint)pSemaphores.len;
  self.pSemaphores = &pSemaphores[0];
  return self;
}

fn SemaphoreWaitInfo SemaphoreWaitInfo.setValues(self, ulong[] pValues) {
  self.semaphoreCount = (uint)pValues.len;
  self.pValues = &pValues[0];
  return self;
}



fn SemaphoreSignalInfo semaphoreSignalInfoBuilder() {
  SemaphoreSignalInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SemaphoreSignalInfo SemaphoreSignalInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SemaphoreSignalInfo SemaphoreSignalInfo.setSemaphore(self, Semaphore semaphore) {
  self.semaphore = semaphore;
  return self;
}
       
fn SemaphoreSignalInfo SemaphoreSignalInfo.setValue(self, ulong value) {
  self.value = value;
  return self;
}
       


fn PhysicalDeviceBufferDeviceAddressFeatures physicalDeviceBufferDeviceAddressFeaturesBuilder() {
  PhysicalDeviceBufferDeviceAddressFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddress(self, Bool32 bufferDeviceAddress) {
  self.bufferDeviceAddress = bufferDeviceAddress;
  return self;
}
       
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddressCaptureReplay(self, Bool32 bufferDeviceAddressCaptureReplay) {
  self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay;
  return self;
}
       
fn PhysicalDeviceBufferDeviceAddressFeatures PhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddressMultiDevice(self, Bool32 bufferDeviceAddressMultiDevice) {
  self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice;
  return self;
}
       


fn BufferDeviceAddressInfo bufferDeviceAddressInfoBuilder() {
  BufferDeviceAddressInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferDeviceAddressInfo BufferDeviceAddressInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferDeviceAddressInfo BufferDeviceAddressInfo.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn BufferOpaqueCaptureAddressCreateInfo bufferOpaqueCaptureAddressCreateInfoBuilder() {
  BufferOpaqueCaptureAddressCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferOpaqueCaptureAddressCreateInfo BufferOpaqueCaptureAddressCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferOpaqueCaptureAddressCreateInfo BufferOpaqueCaptureAddressCreateInfo.setOpaqueCaptureAddress(self, ulong opaqueCaptureAddress) {
  self.opaqueCaptureAddress = opaqueCaptureAddress;
  return self;
}
       


fn MemoryOpaqueCaptureAddressAllocateInfo memoryOpaqueCaptureAddressAllocateInfoBuilder() {
  MemoryOpaqueCaptureAddressAllocateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryOpaqueCaptureAddressAllocateInfo MemoryOpaqueCaptureAddressAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryOpaqueCaptureAddressAllocateInfo MemoryOpaqueCaptureAddressAllocateInfo.setOpaqueCaptureAddress(self, ulong opaqueCaptureAddress) {
  self.opaqueCaptureAddress = opaqueCaptureAddress;
  return self;
}
       


fn DeviceMemoryOpaqueCaptureAddressInfo deviceMemoryOpaqueCaptureAddressInfoBuilder() {
  DeviceMemoryOpaqueCaptureAddressInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceMemoryOpaqueCaptureAddressInfo DeviceMemoryOpaqueCaptureAddressInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceMemoryOpaqueCaptureAddressInfo DeviceMemoryOpaqueCaptureAddressInfo.setMemory(self, DeviceMemory memory) {
  self.memory = memory;
  return self;
}
       


fn PhysicalDeviceShaderTerminateInvocationFeatures physicalDeviceShaderTerminateInvocationFeaturesBuilder() {
  PhysicalDeviceShaderTerminateInvocationFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderTerminateInvocationFeatures PhysicalDeviceShaderTerminateInvocationFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderTerminateInvocationFeatures PhysicalDeviceShaderTerminateInvocationFeatures.setShaderTerminateInvocation(self, Bool32 shaderTerminateInvocation) {
  self.shaderTerminateInvocation = shaderTerminateInvocation;
  return self;
}
       


fn PhysicalDeviceToolProperties physicalDeviceToolPropertiesBuilder() {
  PhysicalDeviceToolProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setName(self, char[MAX_EXTENSION_NAME_SIZE] name) {
  self.name = name;
  return self;
}
       
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setVersion(self, char[MAX_EXTENSION_NAME_SIZE] version) {
  self.version = version;
  return self;
}
       
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setPurposes(self, ToolPurposeFlags purposes) {
  self.purposes = purposes;
  return self;
}
       
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setDescription(self, char[MAX_DESCRIPTION_SIZE] description) {
  self.description = description;
  return self;
}
       
fn PhysicalDeviceToolProperties PhysicalDeviceToolProperties.setLayer(self, char[MAX_EXTENSION_NAME_SIZE] layer) {
  self.layer = layer;
  return self;
}
       


fn PhysicalDeviceShaderDemoteToHelperInvocationFeatures physicalDeviceShaderDemoteToHelperInvocationFeaturesBuilder() {
  PhysicalDeviceShaderDemoteToHelperInvocationFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderDemoteToHelperInvocationFeatures PhysicalDeviceShaderDemoteToHelperInvocationFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderDemoteToHelperInvocationFeatures PhysicalDeviceShaderDemoteToHelperInvocationFeatures.setShaderDemoteToHelperInvocation(self, Bool32 shaderDemoteToHelperInvocation) {
  self.shaderDemoteToHelperInvocation = shaderDemoteToHelperInvocation;
  return self;
}
       


fn PhysicalDevicePrivateDataFeatures physicalDevicePrivateDataFeaturesBuilder() {
  PhysicalDevicePrivateDataFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevicePrivateDataFeatures PhysicalDevicePrivateDataFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevicePrivateDataFeatures PhysicalDevicePrivateDataFeatures.setPrivateData(self, Bool32 privateData) {
  self.privateData = privateData;
  return self;
}
       


fn DevicePrivateDataCreateInfo devicePrivateDataCreateInfoBuilder() {
  DevicePrivateDataCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DevicePrivateDataCreateInfo DevicePrivateDataCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DevicePrivateDataCreateInfo DevicePrivateDataCreateInfo.setPrivateDataSlotRequestCount(self, uint privateDataSlotRequestCount) {
  self.privateDataSlotRequestCount = privateDataSlotRequestCount;
  return self;
}
       


fn PrivateDataSlotCreateInfo privateDataSlotCreateInfoBuilder() {
  PrivateDataSlotCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PrivateDataSlotCreateInfo PrivateDataSlotCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PrivateDataSlotCreateInfo PrivateDataSlotCreateInfo.setFlags(self, PrivateDataSlotCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn PhysicalDevicePipelineCreationCacheControlFeatures physicalDevicePipelineCreationCacheControlFeaturesBuilder() {
  PhysicalDevicePipelineCreationCacheControlFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevicePipelineCreationCacheControlFeatures PhysicalDevicePipelineCreationCacheControlFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevicePipelineCreationCacheControlFeatures PhysicalDevicePipelineCreationCacheControlFeatures.setPipelineCreationCacheControl(self, Bool32 pipelineCreationCacheControl) {
  self.pipelineCreationCacheControl = pipelineCreationCacheControl;
  return self;
}
       


fn MemoryBarrier2 memoryBarrier2Builder() {
  MemoryBarrier2 defaultValue = {
    .sType = STRUCTURE_TYPE_MEMORY_BARRIER_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn MemoryBarrier2 MemoryBarrier2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn MemoryBarrier2 MemoryBarrier2.setSrcStageMask(self, PipelineStageFlags2 srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn MemoryBarrier2 MemoryBarrier2.setSrcAccessMask(self, AccessFlags2 srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn MemoryBarrier2 MemoryBarrier2.setDstStageMask(self, PipelineStageFlags2 dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn MemoryBarrier2 MemoryBarrier2.setDstAccessMask(self, AccessFlags2 dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       


fn BufferMemoryBarrier2 bufferMemoryBarrier2Builder() {
  BufferMemoryBarrier2 defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSrcStageMask(self, PipelineStageFlags2 srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSrcAccessMask(self, AccessFlags2 srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setDstStageMask(self, PipelineStageFlags2 dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setDstAccessMask(self, AccessFlags2 dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setOffset(self, DeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn BufferMemoryBarrier2 BufferMemoryBarrier2.setSize(self, DeviceSize size) {
  self.size = size;
  return self;
}
       


fn ImageMemoryBarrier2 imageMemoryBarrier2Builder() {
  ImageMemoryBarrier2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSrcStageMask(self, PipelineStageFlags2 srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSrcAccessMask(self, AccessFlags2 srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setDstStageMask(self, PipelineStageFlags2 dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setDstAccessMask(self, AccessFlags2 dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setOldLayout(self, ImageLayout oldLayout) {
  self.oldLayout = oldLayout;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setNewLayout(self, ImageLayout newLayout) {
  self.newLayout = newLayout;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setImage(self, Image image) {
  self.image = image;
  return self;
}
       
fn ImageMemoryBarrier2 ImageMemoryBarrier2.setSubresourceRange(self, ImageSubresourceRange subresourceRange) {
  self.subresourceRange = subresourceRange;
  return self;
}
       


fn DependencyInfo dependencyInfoBuilder() {
  DependencyInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DEPENDENCY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DependencyInfo DependencyInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DependencyInfo DependencyInfo.setDependencyFlags(self, DependencyFlags dependencyFlags) {
  self.dependencyFlags = dependencyFlags;
  return self;
}
       
fn DependencyInfo DependencyInfo.setMemoryBarrierCount(self, uint memoryBarrierCount) {
  self.memoryBarrierCount = memoryBarrierCount;
  return self;
}
       
fn DependencyInfo DependencyInfo.setMemoryBarriers(self, MemoryBarrier2[] pMemoryBarriers) {
  self.memoryBarrierCount = (uint)pMemoryBarriers.len;
  self.pMemoryBarriers = &pMemoryBarriers[0];
  return self;
}

fn DependencyInfo DependencyInfo.setBufferMemoryBarrierCount(self, uint bufferMemoryBarrierCount) {
  self.bufferMemoryBarrierCount = bufferMemoryBarrierCount;
  return self;
}
       
fn DependencyInfo DependencyInfo.setBufferMemoryBarriers(self, BufferMemoryBarrier2[] pBufferMemoryBarriers) {
  self.bufferMemoryBarrierCount = (uint)pBufferMemoryBarriers.len;
  self.pBufferMemoryBarriers = &pBufferMemoryBarriers[0];
  return self;
}

fn DependencyInfo DependencyInfo.setImageMemoryBarrierCount(self, uint imageMemoryBarrierCount) {
  self.imageMemoryBarrierCount = imageMemoryBarrierCount;
  return self;
}
       
fn DependencyInfo DependencyInfo.setImageMemoryBarriers(self, ImageMemoryBarrier2[] pImageMemoryBarriers) {
  self.imageMemoryBarrierCount = (uint)pImageMemoryBarriers.len;
  self.pImageMemoryBarriers = &pImageMemoryBarriers[0];
  return self;
}



fn SubmitInfo2 submitInfo2Builder() {
  SubmitInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_SUBMIT_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SubmitInfo2 SubmitInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SubmitInfo2 SubmitInfo2.setFlags(self, SubmitFlags flags) {
  self.flags = flags;
  return self;
}
       
fn SubmitInfo2 SubmitInfo2.setWaitSemaphoreInfoCount(self, uint waitSemaphoreInfoCount) {
  self.waitSemaphoreInfoCount = waitSemaphoreInfoCount;
  return self;
}
       
fn SubmitInfo2 SubmitInfo2.setWaitSemaphoreInfos(self, SemaphoreSubmitInfo[] pWaitSemaphoreInfos) {
  self.waitSemaphoreInfoCount = (uint)pWaitSemaphoreInfos.len;
  self.pWaitSemaphoreInfos = &pWaitSemaphoreInfos[0];
  return self;
}

fn SubmitInfo2 SubmitInfo2.setCommandBufferInfoCount(self, uint commandBufferInfoCount) {
  self.commandBufferInfoCount = commandBufferInfoCount;
  return self;
}
       
fn SubmitInfo2 SubmitInfo2.setCommandBufferInfos(self, CommandBufferSubmitInfo[] pCommandBufferInfos) {
  self.commandBufferInfoCount = (uint)pCommandBufferInfos.len;
  self.pCommandBufferInfos = &pCommandBufferInfos[0];
  return self;
}

fn SubmitInfo2 SubmitInfo2.setSignalSemaphoreInfoCount(self, uint signalSemaphoreInfoCount) {
  self.signalSemaphoreInfoCount = signalSemaphoreInfoCount;
  return self;
}
       
fn SubmitInfo2 SubmitInfo2.setSignalSemaphoreInfos(self, SemaphoreSubmitInfo[] pSignalSemaphoreInfos) {
  self.signalSemaphoreInfoCount = (uint)pSignalSemaphoreInfos.len;
  self.pSignalSemaphoreInfos = &pSignalSemaphoreInfos[0];
  return self;
}



fn SemaphoreSubmitInfo semaphoreSubmitInfoBuilder() {
  SemaphoreSubmitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setSemaphore(self, Semaphore semaphore) {
  self.semaphore = semaphore;
  return self;
}
       
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setValue(self, ulong value) {
  self.value = value;
  return self;
}
       
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setStageMask(self, PipelineStageFlags2 stageMask) {
  self.stageMask = stageMask;
  return self;
}
       
fn SemaphoreSubmitInfo SemaphoreSubmitInfo.setDeviceIndex(self, uint deviceIndex) {
  self.deviceIndex = deviceIndex;
  return self;
}
       


fn CommandBufferSubmitInfo commandBufferSubmitInfoBuilder() {
  CommandBufferSubmitInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CommandBufferSubmitInfo CommandBufferSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandBufferSubmitInfo CommandBufferSubmitInfo.setCommandBuffer(self, CommandBuffer commandBuffer) {
  self.commandBuffer = commandBuffer;
  return self;
}
       
fn CommandBufferSubmitInfo CommandBufferSubmitInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn PhysicalDeviceSynchronization2Features physicalDeviceSynchronization2FeaturesBuilder() {
  PhysicalDeviceSynchronization2Features defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSynchronization2Features PhysicalDeviceSynchronization2Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSynchronization2Features PhysicalDeviceSynchronization2Features.setSynchronization2(self, Bool32 synchronization2) {
  self.synchronization2 = synchronization2;
  return self;
}
       


fn PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures physicalDeviceZeroInitializeWorkgroupMemoryFeaturesBuilder() {
  PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.setShaderZeroInitializeWorkgroupMemory(self, Bool32 shaderZeroInitializeWorkgroupMemory) {
  self.shaderZeroInitializeWorkgroupMemory = shaderZeroInitializeWorkgroupMemory;
  return self;
}
       


fn PhysicalDeviceImageRobustnessFeatures physicalDeviceImageRobustnessFeaturesBuilder() {
  PhysicalDeviceImageRobustnessFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceImageRobustnessFeatures PhysicalDeviceImageRobustnessFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceImageRobustnessFeatures PhysicalDeviceImageRobustnessFeatures.setRobustImageAccess(self, Bool32 robustImageAccess) {
  self.robustImageAccess = robustImageAccess;
  return self;
}
       


fn CopyBufferInfo2 copyBufferInfo2Builder() {
  CopyBufferInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_COPY_BUFFER_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CopyBufferInfo2 CopyBufferInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CopyBufferInfo2 CopyBufferInfo2.setSrcBuffer(self, Buffer srcBuffer) {
  self.srcBuffer = srcBuffer;
  return self;
}
       
fn CopyBufferInfo2 CopyBufferInfo2.setDstBuffer(self, Buffer dstBuffer) {
  self.dstBuffer = dstBuffer;
  return self;
}
       
fn CopyBufferInfo2 CopyBufferInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn CopyBufferInfo2 CopyBufferInfo2.setRegions(self, BufferCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn CopyImageInfo2 copyImageInfo2Builder() {
  CopyImageInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_COPY_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CopyImageInfo2 CopyImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CopyImageInfo2 CopyImageInfo2.setSrcImage(self, Image srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn CopyImageInfo2 CopyImageInfo2.setSrcImageLayout(self, ImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn CopyImageInfo2 CopyImageInfo2.setDstImage(self, Image dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn CopyImageInfo2 CopyImageInfo2.setDstImageLayout(self, ImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn CopyImageInfo2 CopyImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn CopyImageInfo2 CopyImageInfo2.setRegions(self, ImageCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn CopyBufferToImageInfo2 copyBufferToImageInfo2Builder() {
  CopyBufferToImageInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setSrcBuffer(self, Buffer srcBuffer) {
  self.srcBuffer = srcBuffer;
  return self;
}
       
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setDstImage(self, Image dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setDstImageLayout(self, ImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn CopyBufferToImageInfo2 CopyBufferToImageInfo2.setRegions(self, BufferImageCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn CopyImageToBufferInfo2 copyImageToBufferInfo2Builder() {
  CopyImageToBufferInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setSrcImage(self, Image srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setSrcImageLayout(self, ImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setDstBuffer(self, Buffer dstBuffer) {
  self.dstBuffer = dstBuffer;
  return self;
}
       
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn CopyImageToBufferInfo2 CopyImageToBufferInfo2.setRegions(self, BufferImageCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn BlitImageInfo2 blitImageInfo2Builder() {
  BlitImageInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_BLIT_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BlitImageInfo2 BlitImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BlitImageInfo2 BlitImageInfo2.setSrcImage(self, Image srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn BlitImageInfo2 BlitImageInfo2.setSrcImageLayout(self, ImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn BlitImageInfo2 BlitImageInfo2.setDstImage(self, Image dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn BlitImageInfo2 BlitImageInfo2.setDstImageLayout(self, ImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn BlitImageInfo2 BlitImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn BlitImageInfo2 BlitImageInfo2.setRegions(self, ImageBlit2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}

fn BlitImageInfo2 BlitImageInfo2.setFilter(self, Filter filter) {
  self.filter = filter;
  return self;
}
       


fn ResolveImageInfo2 resolveImageInfo2Builder() {
  ResolveImageInfo2 defaultValue = {
    .sType = STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ResolveImageInfo2 ResolveImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ResolveImageInfo2 ResolveImageInfo2.setSrcImage(self, Image srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn ResolveImageInfo2 ResolveImageInfo2.setSrcImageLayout(self, ImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn ResolveImageInfo2 ResolveImageInfo2.setDstImage(self, Image dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn ResolveImageInfo2 ResolveImageInfo2.setDstImageLayout(self, ImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn ResolveImageInfo2 ResolveImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn ResolveImageInfo2 ResolveImageInfo2.setRegions(self, ImageResolve2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn BufferCopy2 bufferCopy2Builder() {
  BufferCopy2 defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_COPY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferCopy2 BufferCopy2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferCopy2 BufferCopy2.setSrcOffset(self, DeviceSize srcOffset) {
  self.srcOffset = srcOffset;
  return self;
}
       
fn BufferCopy2 BufferCopy2.setDstOffset(self, DeviceSize dstOffset) {
  self.dstOffset = dstOffset;
  return self;
}
       
fn BufferCopy2 BufferCopy2.setSize(self, DeviceSize size) {
  self.size = size;
  return self;
}
       


fn ImageCopy2 imageCopy2Builder() {
  ImageCopy2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_COPY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageCopy2 ImageCopy2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageCopy2 ImageCopy2.setSrcSubresource(self, ImageSubresourceLayers srcSubresource) {
  self.srcSubresource = srcSubresource;
  return self;
}
       
fn ImageCopy2 ImageCopy2.setSrcOffset(self, Offset3D srcOffset) {
  self.srcOffset = srcOffset;
  return self;
}
       
fn ImageCopy2 ImageCopy2.setDstSubresource(self, ImageSubresourceLayers dstSubresource) {
  self.dstSubresource = dstSubresource;
  return self;
}
       
fn ImageCopy2 ImageCopy2.setDstOffset(self, Offset3D dstOffset) {
  self.dstOffset = dstOffset;
  return self;
}
       
fn ImageCopy2 ImageCopy2.setExtent(self, Extent3D extent) {
  self.extent = extent;
  return self;
}
       


fn ImageBlit2 imageBlit2Builder() {
  ImageBlit2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_BLIT_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageBlit2 ImageBlit2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageBlit2 ImageBlit2.setSrcSubresource(self, ImageSubresourceLayers srcSubresource) {
  self.srcSubresource = srcSubresource;
  return self;
}
       
fn ImageBlit2 ImageBlit2.setSrcOffsets(self, Offset3D[2] srcOffsets) {
  self.srcOffsets = srcOffsets;
  return self;
}
       
fn ImageBlit2 ImageBlit2.setDstSubresource(self, ImageSubresourceLayers dstSubresource) {
  self.dstSubresource = dstSubresource;
  return self;
}
       
fn ImageBlit2 ImageBlit2.setDstOffsets(self, Offset3D[2] dstOffsets) {
  self.dstOffsets = dstOffsets;
  return self;
}
       


fn BufferImageCopy2 bufferImageCopy2Builder() {
  BufferImageCopy2 defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferImageCopy2 BufferImageCopy2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferImageCopy2 BufferImageCopy2.setBufferOffset(self, DeviceSize bufferOffset) {
  self.bufferOffset = bufferOffset;
  return self;
}
       
fn BufferImageCopy2 BufferImageCopy2.setBufferRowLength(self, uint bufferRowLength) {
  self.bufferRowLength = bufferRowLength;
  return self;
}
       
fn BufferImageCopy2 BufferImageCopy2.setBufferImageHeight(self, uint bufferImageHeight) {
  self.bufferImageHeight = bufferImageHeight;
  return self;
}
       
fn BufferImageCopy2 BufferImageCopy2.setImageSubresource(self, ImageSubresourceLayers imageSubresource) {
  self.imageSubresource = imageSubresource;
  return self;
}
       
fn BufferImageCopy2 BufferImageCopy2.setImageOffset(self, Offset3D imageOffset) {
  self.imageOffset = imageOffset;
  return self;
}
       
fn BufferImageCopy2 BufferImageCopy2.setImageExtent(self, Extent3D imageExtent) {
  self.imageExtent = imageExtent;
  return self;
}
       


fn ImageResolve2 imageResolve2Builder() {
  ImageResolve2 defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_RESOLVE_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageResolve2 ImageResolve2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageResolve2 ImageResolve2.setSrcSubresource(self, ImageSubresourceLayers srcSubresource) {
  self.srcSubresource = srcSubresource;
  return self;
}
       
fn ImageResolve2 ImageResolve2.setSrcOffset(self, Offset3D srcOffset) {
  self.srcOffset = srcOffset;
  return self;
}
       
fn ImageResolve2 ImageResolve2.setDstSubresource(self, ImageSubresourceLayers dstSubresource) {
  self.dstSubresource = dstSubresource;
  return self;
}
       
fn ImageResolve2 ImageResolve2.setDstOffset(self, Offset3D dstOffset) {
  self.dstOffset = dstOffset;
  return self;
}
       
fn ImageResolve2 ImageResolve2.setExtent(self, Extent3D extent) {
  self.extent = extent;
  return self;
}
       


fn PhysicalDeviceSubgroupSizeControlFeatures physicalDeviceSubgroupSizeControlFeaturesBuilder() {
  PhysicalDeviceSubgroupSizeControlFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSubgroupSizeControlFeatures PhysicalDeviceSubgroupSizeControlFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSubgroupSizeControlFeatures PhysicalDeviceSubgroupSizeControlFeatures.setSubgroupSizeControl(self, Bool32 subgroupSizeControl) {
  self.subgroupSizeControl = subgroupSizeControl;
  return self;
}
       
fn PhysicalDeviceSubgroupSizeControlFeatures PhysicalDeviceSubgroupSizeControlFeatures.setComputeFullSubgroups(self, Bool32 computeFullSubgroups) {
  self.computeFullSubgroups = computeFullSubgroups;
  return self;
}
       


fn PhysicalDeviceSubgroupSizeControlProperties physicalDeviceSubgroupSizeControlPropertiesBuilder() {
  PhysicalDeviceSubgroupSizeControlProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setMinSubgroupSize(self, uint minSubgroupSize) {
  self.minSubgroupSize = minSubgroupSize;
  return self;
}
       
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setMaxSubgroupSize(self, uint maxSubgroupSize) {
  self.maxSubgroupSize = maxSubgroupSize;
  return self;
}
       
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setMaxComputeWorkgroupSubgroups(self, uint maxComputeWorkgroupSubgroups) {
  self.maxComputeWorkgroupSubgroups = maxComputeWorkgroupSubgroups;
  return self;
}
       
fn PhysicalDeviceSubgroupSizeControlProperties PhysicalDeviceSubgroupSizeControlProperties.setRequiredSubgroupSizeStages(self, ShaderStageFlags requiredSubgroupSizeStages) {
  self.requiredSubgroupSizeStages = requiredSubgroupSizeStages;
  return self;
}
       


fn PipelineShaderStageRequiredSubgroupSizeCreateInfo pipelineShaderStageRequiredSubgroupSizeCreateInfoBuilder() {
  PipelineShaderStageRequiredSubgroupSizeCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineShaderStageRequiredSubgroupSizeCreateInfo PipelineShaderStageRequiredSubgroupSizeCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineShaderStageRequiredSubgroupSizeCreateInfo PipelineShaderStageRequiredSubgroupSizeCreateInfo.setRequiredSubgroupSize(self, uint requiredSubgroupSize) {
  self.requiredSubgroupSize = requiredSubgroupSize;
  return self;
}
       


fn PhysicalDeviceInlineUniformBlockFeatures physicalDeviceInlineUniformBlockFeaturesBuilder() {
  PhysicalDeviceInlineUniformBlockFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceInlineUniformBlockFeatures PhysicalDeviceInlineUniformBlockFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockFeatures PhysicalDeviceInlineUniformBlockFeatures.setInlineUniformBlock(self, Bool32 inlineUniformBlock) {
  self.inlineUniformBlock = inlineUniformBlock;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockFeatures PhysicalDeviceInlineUniformBlockFeatures.setDescriptorBindingInlineUniformBlockUpdateAfterBind(self, Bool32 descriptorBindingInlineUniformBlockUpdateAfterBind) {
  self.descriptorBindingInlineUniformBlockUpdateAfterBind = descriptorBindingInlineUniformBlockUpdateAfterBind;
  return self;
}
       


fn PhysicalDeviceInlineUniformBlockProperties physicalDeviceInlineUniformBlockPropertiesBuilder() {
  PhysicalDeviceInlineUniformBlockProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxInlineUniformBlockSize(self, uint maxInlineUniformBlockSize) {
  self.maxInlineUniformBlockSize = maxInlineUniformBlockSize;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxPerStageDescriptorInlineUniformBlocks(self, uint maxPerStageDescriptorInlineUniformBlocks) {
  self.maxPerStageDescriptorInlineUniformBlocks = maxPerStageDescriptorInlineUniformBlocks;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks(self, uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks) {
  self.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxDescriptorSetInlineUniformBlocks(self, uint maxDescriptorSetInlineUniformBlocks) {
  self.maxDescriptorSetInlineUniformBlocks = maxDescriptorSetInlineUniformBlocks;
  return self;
}
       
fn PhysicalDeviceInlineUniformBlockProperties PhysicalDeviceInlineUniformBlockProperties.setMaxDescriptorSetUpdateAfterBindInlineUniformBlocks(self, uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks) {
  self.maxDescriptorSetUpdateAfterBindInlineUniformBlocks = maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
  return self;
}
       


fn WriteDescriptorSetInlineUniformBlock writeDescriptorSetInlineUniformBlockBuilder() {
  WriteDescriptorSetInlineUniformBlock defaultValue = {
    .sType = STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn WriteDescriptorSetInlineUniformBlock WriteDescriptorSetInlineUniformBlock.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn WriteDescriptorSetInlineUniformBlock WriteDescriptorSetInlineUniformBlock.setDataSize(self, uint dataSize) {
  self.dataSize = dataSize;
  return self;
}
       
fn WriteDescriptorSetInlineUniformBlock WriteDescriptorSetInlineUniformBlock.setData(self, void* pData) {
  self.pData = pData;
  return self;
}
       


fn DescriptorPoolInlineUniformBlockCreateInfo descriptorPoolInlineUniformBlockCreateInfoBuilder() {
  DescriptorPoolInlineUniformBlockCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorPoolInlineUniformBlockCreateInfo DescriptorPoolInlineUniformBlockCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorPoolInlineUniformBlockCreateInfo DescriptorPoolInlineUniformBlockCreateInfo.setMaxInlineUniformBlockBindings(self, uint maxInlineUniformBlockBindings) {
  self.maxInlineUniformBlockBindings = maxInlineUniformBlockBindings;
  return self;
}
       


fn PhysicalDeviceTextureCompressionASTCHDRFeatures physicalDeviceTextureCompressionASTCHDRFeaturesBuilder() {
  PhysicalDeviceTextureCompressionASTCHDRFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceTextureCompressionASTCHDRFeatures PhysicalDeviceTextureCompressionASTCHDRFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceTextureCompressionASTCHDRFeatures PhysicalDeviceTextureCompressionASTCHDRFeatures.setTextureCompressionASTC_HDR(self, Bool32 textureCompressionASTC_HDR) {
  self.textureCompressionASTC_HDR = textureCompressionASTC_HDR;
  return self;
}
       


fn RenderingInfo renderingInfoBuilder() {
  RenderingInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDERING_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderingInfo RenderingInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderingInfo RenderingInfo.setFlags(self, RenderingFlags flags) {
  self.flags = flags;
  return self;
}
       
fn RenderingInfo RenderingInfo.setRenderArea(self, Rect2D renderArea) {
  self.renderArea = renderArea;
  return self;
}
       
fn RenderingInfo RenderingInfo.setLayerCount(self, uint layerCount) {
  self.layerCount = layerCount;
  return self;
}
       
fn RenderingInfo RenderingInfo.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn RenderingInfo RenderingInfo.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn RenderingInfo RenderingInfo.setColorAttachments(self, RenderingAttachmentInfo[] pColorAttachments) {
  self.colorAttachmentCount = (uint)pColorAttachments.len;
  self.pColorAttachments = &pColorAttachments[0];
  return self;
}

fn RenderingInfo RenderingInfo.setDepthAttachment(self, RenderingAttachmentInfo* pDepthAttachment) {
  self.pDepthAttachment = pDepthAttachment;
  return self;
}
       
fn RenderingInfo RenderingInfo.setStencilAttachment(self, RenderingAttachmentInfo* pStencilAttachment) {
  self.pStencilAttachment = pStencilAttachment;
  return self;
}
       


fn RenderingAttachmentInfo renderingAttachmentInfoBuilder() {
  RenderingAttachmentInfo defaultValue = {
    .sType = STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn RenderingAttachmentInfo RenderingAttachmentInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setImageView(self, ImageView imageView) {
  self.imageView = imageView;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setImageLayout(self, ImageLayout imageLayout) {
  self.imageLayout = imageLayout;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setResolveMode(self, ResolveModeFlagBits resolveMode) {
  self.resolveMode = resolveMode;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setResolveImageView(self, ImageView resolveImageView) {
  self.resolveImageView = resolveImageView;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setResolveImageLayout(self, ImageLayout resolveImageLayout) {
  self.resolveImageLayout = resolveImageLayout;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setLoadOp(self, AttachmentLoadOp loadOp) {
  self.loadOp = loadOp;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setStoreOp(self, AttachmentStoreOp storeOp) {
  self.storeOp = storeOp;
  return self;
}
       
fn RenderingAttachmentInfo RenderingAttachmentInfo.setClearValue(self, ClearValue clearValue) {
  self.clearValue = clearValue;
  return self;
}
       


fn PipelineRenderingCreateInfo pipelineRenderingCreateInfoBuilder() {
  PipelineRenderingCreateInfo defaultValue = {
    .sType = STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setColorAttachmentFormats(self, Format[] pColorAttachmentFormats) {
  self.colorAttachmentCount = (uint)pColorAttachmentFormats.len;
  self.pColorAttachmentFormats = &pColorAttachmentFormats[0];
  return self;
}

fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setDepthAttachmentFormat(self, Format depthAttachmentFormat) {
  self.depthAttachmentFormat = depthAttachmentFormat;
  return self;
}
       
fn PipelineRenderingCreateInfo PipelineRenderingCreateInfo.setStencilAttachmentFormat(self, Format stencilAttachmentFormat) {
  self.stencilAttachmentFormat = stencilAttachmentFormat;
  return self;
}
       


fn PhysicalDeviceDynamicRenderingFeatures physicalDeviceDynamicRenderingFeaturesBuilder() {
  PhysicalDeviceDynamicRenderingFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDynamicRenderingFeatures PhysicalDeviceDynamicRenderingFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDynamicRenderingFeatures PhysicalDeviceDynamicRenderingFeatures.setDynamicRendering(self, Bool32 dynamicRendering) {
  self.dynamicRendering = dynamicRendering;
  return self;
}
       


fn CommandBufferInheritanceRenderingInfo commandBufferInheritanceRenderingInfoBuilder() {
  CommandBufferInheritanceRenderingInfo defaultValue = {
    .sType = STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setFlags(self, RenderingFlags flags) {
  self.flags = flags;
  return self;
}
       
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setColorAttachmentFormats(self, Format[] pColorAttachmentFormats) {
  self.colorAttachmentCount = (uint)pColorAttachmentFormats.len;
  self.pColorAttachmentFormats = &pColorAttachmentFormats[0];
  return self;
}

fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setDepthAttachmentFormat(self, Format depthAttachmentFormat) {
  self.depthAttachmentFormat = depthAttachmentFormat;
  return self;
}
       
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setStencilAttachmentFormat(self, Format stencilAttachmentFormat) {
  self.stencilAttachmentFormat = stencilAttachmentFormat;
  return self;
}
       
fn CommandBufferInheritanceRenderingInfo CommandBufferInheritanceRenderingInfo.setRasterizationSamples(self, SampleCountFlagBits rasterizationSamples) {
  self.rasterizationSamples = rasterizationSamples;
  return self;
}
       


fn PhysicalDeviceShaderIntegerDotProductFeatures physicalDeviceShaderIntegerDotProductFeaturesBuilder() {
  PhysicalDeviceShaderIntegerDotProductFeatures defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderIntegerDotProductFeatures PhysicalDeviceShaderIntegerDotProductFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductFeatures PhysicalDeviceShaderIntegerDotProductFeatures.setShaderIntegerDotProduct(self, Bool32 shaderIntegerDotProduct) {
  self.shaderIntegerDotProduct = shaderIntegerDotProduct;
  return self;
}
       


fn PhysicalDeviceShaderIntegerDotProductProperties physicalDeviceShaderIntegerDotProductPropertiesBuilder() {
  PhysicalDeviceShaderIntegerDotProductProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitUnsignedAccelerated(self, Bool32 integerDotProduct8BitUnsignedAccelerated) {
  self.integerDotProduct8BitUnsignedAccelerated = integerDotProduct8BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitSignedAccelerated(self, Bool32 integerDotProduct8BitSignedAccelerated) {
  self.integerDotProduct8BitSignedAccelerated = integerDotProduct8BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitMixedSignednessAccelerated(self, Bool32 integerDotProduct8BitMixedSignednessAccelerated) {
  self.integerDotProduct8BitMixedSignednessAccelerated = integerDotProduct8BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedUnsignedAccelerated(self, Bool32 integerDotProduct4x8BitPackedUnsignedAccelerated) {
  self.integerDotProduct4x8BitPackedUnsignedAccelerated = integerDotProduct4x8BitPackedUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedSignedAccelerated(self, Bool32 integerDotProduct4x8BitPackedSignedAccelerated) {
  self.integerDotProduct4x8BitPackedSignedAccelerated = integerDotProduct4x8BitPackedSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedMixedSignednessAccelerated(self, Bool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated) {
  self.integerDotProduct4x8BitPackedMixedSignednessAccelerated = integerDotProduct4x8BitPackedMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitUnsignedAccelerated(self, Bool32 integerDotProduct16BitUnsignedAccelerated) {
  self.integerDotProduct16BitUnsignedAccelerated = integerDotProduct16BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitSignedAccelerated(self, Bool32 integerDotProduct16BitSignedAccelerated) {
  self.integerDotProduct16BitSignedAccelerated = integerDotProduct16BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitMixedSignednessAccelerated(self, Bool32 integerDotProduct16BitMixedSignednessAccelerated) {
  self.integerDotProduct16BitMixedSignednessAccelerated = integerDotProduct16BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitUnsignedAccelerated(self, Bool32 integerDotProduct32BitUnsignedAccelerated) {
  self.integerDotProduct32BitUnsignedAccelerated = integerDotProduct32BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitSignedAccelerated(self, Bool32 integerDotProduct32BitSignedAccelerated) {
  self.integerDotProduct32BitSignedAccelerated = integerDotProduct32BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitMixedSignednessAccelerated(self, Bool32 integerDotProduct32BitMixedSignednessAccelerated) {
  self.integerDotProduct32BitMixedSignednessAccelerated = integerDotProduct32BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitUnsignedAccelerated(self, Bool32 integerDotProduct64BitUnsignedAccelerated) {
  self.integerDotProduct64BitUnsignedAccelerated = integerDotProduct64BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitSignedAccelerated(self, Bool32 integerDotProduct64BitSignedAccelerated) {
  self.integerDotProduct64BitSignedAccelerated = integerDotProduct64BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitMixedSignednessAccelerated(self, Bool32 integerDotProduct64BitMixedSignednessAccelerated) {
  self.integerDotProduct64BitMixedSignednessAccelerated = integerDotProduct64BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitUnsignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating8BitUnsignedAccelerated = integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitSignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating8BitSignedAccelerated = integerDotProductAccumulatingSaturating8BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated(self, Bool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated(self, Bool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitUnsignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating16BitUnsignedAccelerated = integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitSignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating16BitSignedAccelerated = integerDotProductAccumulatingSaturating16BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated(self, Bool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitUnsignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating32BitUnsignedAccelerated = integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitSignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating32BitSignedAccelerated = integerDotProductAccumulatingSaturating32BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated(self, Bool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitUnsignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating64BitUnsignedAccelerated = integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitSignedAccelerated(self, Bool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating64BitSignedAccelerated = integerDotProductAccumulatingSaturating64BitSignedAccelerated;
  return self;
}
       
fn PhysicalDeviceShaderIntegerDotProductProperties PhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated(self, Bool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
  return self;
}
       


fn PhysicalDeviceTexelBufferAlignmentProperties physicalDeviceTexelBufferAlignmentPropertiesBuilder() {
  PhysicalDeviceTexelBufferAlignmentProperties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setStorageTexelBufferOffsetAlignmentBytes(self, DeviceSize storageTexelBufferOffsetAlignmentBytes) {
  self.storageTexelBufferOffsetAlignmentBytes = storageTexelBufferOffsetAlignmentBytes;
  return self;
}
       
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setStorageTexelBufferOffsetSingleTexelAlignment(self, Bool32 storageTexelBufferOffsetSingleTexelAlignment) {
  self.storageTexelBufferOffsetSingleTexelAlignment = storageTexelBufferOffsetSingleTexelAlignment;
  return self;
}
       
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setUniformTexelBufferOffsetAlignmentBytes(self, DeviceSize uniformTexelBufferOffsetAlignmentBytes) {
  self.uniformTexelBufferOffsetAlignmentBytes = uniformTexelBufferOffsetAlignmentBytes;
  return self;
}
       
fn PhysicalDeviceTexelBufferAlignmentProperties PhysicalDeviceTexelBufferAlignmentProperties.setUniformTexelBufferOffsetSingleTexelAlignment(self, Bool32 uniformTexelBufferOffsetSingleTexelAlignment) {
  self.uniformTexelBufferOffsetSingleTexelAlignment = uniformTexelBufferOffsetSingleTexelAlignment;
  return self;
}
       


fn FormatProperties3 formatProperties3Builder() {
  FormatProperties3 defaultValue = {
    .sType = STRUCTURE_TYPE_FORMAT_PROPERTIES_3,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn FormatProperties3 FormatProperties3.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn FormatProperties3 FormatProperties3.setLinearTilingFeatures(self, FormatFeatureFlags2 linearTilingFeatures) {
  self.linearTilingFeatures = linearTilingFeatures;
  return self;
}
       
fn FormatProperties3 FormatProperties3.setOptimalTilingFeatures(self, FormatFeatureFlags2 optimalTilingFeatures) {
  self.optimalTilingFeatures = optimalTilingFeatures;
  return self;
}
       
fn FormatProperties3 FormatProperties3.setBufferFeatures(self, FormatFeatureFlags2 bufferFeatures) {
  self.bufferFeatures = bufferFeatures;
  return self;
}
       


fn PhysicalDeviceMaintenance4Features physicalDeviceMaintenance4FeaturesBuilder() {
  PhysicalDeviceMaintenance4Features defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceMaintenance4Features PhysicalDeviceMaintenance4Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceMaintenance4Features PhysicalDeviceMaintenance4Features.setMaintenance4(self, Bool32 maintenance4) {
  self.maintenance4 = maintenance4;
  return self;
}
       


fn PhysicalDeviceMaintenance4Properties physicalDeviceMaintenance4PropertiesBuilder() {
  PhysicalDeviceMaintenance4Properties defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceMaintenance4Properties PhysicalDeviceMaintenance4Properties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceMaintenance4Properties PhysicalDeviceMaintenance4Properties.setMaxBufferSize(self, DeviceSize maxBufferSize) {
  self.maxBufferSize = maxBufferSize;
  return self;
}
       


fn DeviceBufferMemoryRequirements deviceBufferMemoryRequirementsBuilder() {
  DeviceBufferMemoryRequirements defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceBufferMemoryRequirements DeviceBufferMemoryRequirements.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceBufferMemoryRequirements DeviceBufferMemoryRequirements.setCreateInfo(self, BufferCreateInfo* pCreateInfo) {
  self.pCreateInfo = pCreateInfo;
  return self;
}
       


fn DeviceImageMemoryRequirements deviceImageMemoryRequirementsBuilder() {
  DeviceImageMemoryRequirements defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceImageMemoryRequirements DeviceImageMemoryRequirements.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceImageMemoryRequirements DeviceImageMemoryRequirements.setCreateInfo(self, ImageCreateInfo* pCreateInfo) {
  self.pCreateInfo = pCreateInfo;
  return self;
}
       
fn DeviceImageMemoryRequirements DeviceImageMemoryRequirements.setPlaneAspect(self, ImageAspectFlagBits planeAspect) {
  self.planeAspect = planeAspect;
  return self;
}
       


fn SwapchainCreateInfoKHR swapchainCreateInfoKHRBuilder() {
  SwapchainCreateInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setFlags(self, SwapchainCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setSurface(self, SurfaceKHR surface) {
  self.surface = surface;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setMinImageCount(self, uint minImageCount) {
  self.minImageCount = minImageCount;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageFormat(self, Format imageFormat) {
  self.imageFormat = imageFormat;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageColorSpace(self, ColorSpaceKHR imageColorSpace) {
  self.imageColorSpace = imageColorSpace;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageExtent(self, Extent2D imageExtent) {
  self.imageExtent = imageExtent;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageArrayLayers(self, uint imageArrayLayers) {
  self.imageArrayLayers = imageArrayLayers;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageUsage(self, ImageUsageFlags imageUsage) {
  self.imageUsage = imageUsage;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setImageSharingMode(self, SharingMode imageSharingMode) {
  self.imageSharingMode = imageSharingMode;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setQueueFamilyIndexCount(self, uint queueFamilyIndexCount) {
  self.queueFamilyIndexCount = queueFamilyIndexCount;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
  self.queueFamilyIndexCount = (uint)pQueueFamilyIndices.len;
  self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
  return self;
}

fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setPreTransform(self, SurfaceTransformFlagBitsKHR preTransform) {
  self.preTransform = preTransform;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setCompositeAlpha(self, CompositeAlphaFlagBitsKHR compositeAlpha) {
  self.compositeAlpha = compositeAlpha;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setPresentMode(self, PresentModeKHR presentMode) {
  self.presentMode = presentMode;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setClipped(self, Bool32 clipped) {
  self.clipped = clipped;
  return self;
}
       
fn SwapchainCreateInfoKHR SwapchainCreateInfoKHR.setOldSwapchain(self, SwapchainKHR oldSwapchain) {
  self.oldSwapchain = oldSwapchain;
  return self;
}
       


fn PresentInfoKHR presentInfoKHRBuilder() {
  PresentInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_PRESENT_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PresentInfoKHR PresentInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PresentInfoKHR PresentInfoKHR.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn PresentInfoKHR PresentInfoKHR.setWaitSemaphores(self, Semaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn PresentInfoKHR PresentInfoKHR.setSwapchainCount(self, uint swapchainCount) {
  self.swapchainCount = swapchainCount;
  return self;
}
       
fn PresentInfoKHR PresentInfoKHR.setSwapchains(self, SwapchainKHR[] pSwapchains) {
  self.swapchainCount = (uint)pSwapchains.len;
  self.pSwapchains = &pSwapchains[0];
  return self;
}

fn PresentInfoKHR PresentInfoKHR.setImageIndices(self, uint[] pImageIndices) {
  self.swapchainCount = (uint)pImageIndices.len;
  self.pImageIndices = &pImageIndices[0];
  return self;
}

fn PresentInfoKHR PresentInfoKHR.setResults(self, Result[] pResults) {
  self.swapchainCount = (uint)pResults.len;
  self.pResults = &pResults[0];
  return self;
}



fn ImageSwapchainCreateInfoKHR imageSwapchainCreateInfoKHRBuilder() {
  ImageSwapchainCreateInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageSwapchainCreateInfoKHR ImageSwapchainCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageSwapchainCreateInfoKHR ImageSwapchainCreateInfoKHR.setSwapchain(self, SwapchainKHR swapchain) {
  self.swapchain = swapchain;
  return self;
}
       


fn BindImageMemorySwapchainInfoKHR bindImageMemorySwapchainInfoKHRBuilder() {
  BindImageMemorySwapchainInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BindImageMemorySwapchainInfoKHR BindImageMemorySwapchainInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BindImageMemorySwapchainInfoKHR BindImageMemorySwapchainInfoKHR.setSwapchain(self, SwapchainKHR swapchain) {
  self.swapchain = swapchain;
  return self;
}
       
fn BindImageMemorySwapchainInfoKHR BindImageMemorySwapchainInfoKHR.setImageIndex(self, uint imageIndex) {
  self.imageIndex = imageIndex;
  return self;
}
       


fn AcquireNextImageInfoKHR acquireNextImageInfoKHRBuilder() {
  AcquireNextImageInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn AcquireNextImageInfoKHR AcquireNextImageInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn AcquireNextImageInfoKHR AcquireNextImageInfoKHR.setSwapchain(self, SwapchainKHR swapchain) {
  self.swapchain = swapchain;
  return self;
}
       
fn AcquireNextImageInfoKHR AcquireNextImageInfoKHR.setTimeout(self, ulong timeout) {
  self.timeout = timeout;
  return self;
}
       
fn AcquireNextImageInfoKHR AcquireNextImageInfoKHR.setSemaphore(self, Semaphore semaphore) {
  self.semaphore = semaphore;
  return self;
}
       
fn AcquireNextImageInfoKHR AcquireNextImageInfoKHR.setFence(self, Fence fence) {
  self.fence = fence;
  return self;
}
       
fn AcquireNextImageInfoKHR AcquireNextImageInfoKHR.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn DeviceGroupPresentCapabilitiesKHR deviceGroupPresentCapabilitiesKHRBuilder() {
  DeviceGroupPresentCapabilitiesKHR defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupPresentCapabilitiesKHR DeviceGroupPresentCapabilitiesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupPresentCapabilitiesKHR DeviceGroupPresentCapabilitiesKHR.setPresentMask(self, uint[MAX_DEVICE_GROUP_SIZE] presentMask) {
  self.presentMask = presentMask;
  return self;
}
       
fn DeviceGroupPresentCapabilitiesKHR DeviceGroupPresentCapabilitiesKHR.setModes(self, DeviceGroupPresentModeFlagsKHR modes) {
  self.modes = modes;
  return self;
}
       


fn DeviceGroupPresentInfoKHR deviceGroupPresentInfoKHRBuilder() {
  DeviceGroupPresentInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupPresentInfoKHR DeviceGroupPresentInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupPresentInfoKHR DeviceGroupPresentInfoKHR.setSwapchainCount(self, uint swapchainCount) {
  self.swapchainCount = swapchainCount;
  return self;
}
       
fn DeviceGroupPresentInfoKHR DeviceGroupPresentInfoKHR.setDeviceMasks(self, uint[] pDeviceMasks) {
  self.swapchainCount = (uint)pDeviceMasks.len;
  self.pDeviceMasks = &pDeviceMasks[0];
  return self;
}

fn DeviceGroupPresentInfoKHR DeviceGroupPresentInfoKHR.setMode(self, DeviceGroupPresentModeFlagBitsKHR mode) {
  self.mode = mode;
  return self;
}
       


fn DeviceGroupSwapchainCreateInfoKHR deviceGroupSwapchainCreateInfoKHRBuilder() {
  DeviceGroupSwapchainCreateInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DeviceGroupSwapchainCreateInfoKHR DeviceGroupSwapchainCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DeviceGroupSwapchainCreateInfoKHR DeviceGroupSwapchainCreateInfoKHR.setModes(self, DeviceGroupPresentModeFlagsKHR modes) {
  self.modes = modes;
  return self;
}
       


fn DisplayModeCreateInfoKHR displayModeCreateInfoKHRBuilder() {
  DisplayModeCreateInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DisplayModeCreateInfoKHR DisplayModeCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DisplayModeCreateInfoKHR DisplayModeCreateInfoKHR.setFlags(self, DisplayModeCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn DisplayModeCreateInfoKHR DisplayModeCreateInfoKHR.setParameters(self, DisplayModeParametersKHR parameters) {
  self.parameters = parameters;
  return self;
}
       


fn DisplaySurfaceCreateInfoKHR displaySurfaceCreateInfoKHRBuilder() {
  DisplaySurfaceCreateInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setFlags(self, DisplaySurfaceCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setDisplayMode(self, DisplayModeKHR displayMode) {
  self.displayMode = displayMode;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setPlaneIndex(self, uint planeIndex) {
  self.planeIndex = planeIndex;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setPlaneStackIndex(self, uint planeStackIndex) {
  self.planeStackIndex = planeStackIndex;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setTransform(self, SurfaceTransformFlagBitsKHR transform) {
  self.transform = transform;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setGlobalAlpha(self, float globalAlpha) {
  self.globalAlpha = globalAlpha;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setAlphaMode(self, DisplayPlaneAlphaFlagBitsKHR alphaMode) {
  self.alphaMode = alphaMode;
  return self;
}
       
fn DisplaySurfaceCreateInfoKHR DisplaySurfaceCreateInfoKHR.setImageExtent(self, Extent2D imageExtent) {
  self.imageExtent = imageExtent;
  return self;
}
       


fn XcbSurfaceCreateInfoKHR xcbSurfaceCreateInfoKHRBuilder() {
  XcbSurfaceCreateInfoKHR defaultValue = {
    .sType = STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setFlags(self, XcbSurfaceCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setOnnection(self, void** connection) {
  self.connection = connection;
  return self;
}
       
fn XcbSurfaceCreateInfoKHR XcbSurfaceCreateInfoKHR.setWindow(self, uint window) {
  self.window = window;
  return self;
}
       


fn DebugReportCallbackCreateInfoEXT debugReportCallbackCreateInfoEXTBuilder() {
  DebugReportCallbackCreateInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setFlags(self, DebugReportFlagsEXT flags) {
  self.flags = flags;
  return self;
}
       
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setPfnCallback(self, PFN_vkDebugReportCallbackEXT pfnCallback) {
  self.pfnCallback = pfnCallback;
  return self;
}
       
fn DebugReportCallbackCreateInfoEXT DebugReportCallbackCreateInfoEXT.setUserData(self, void* pUserData) {
  self.pUserData = pUserData;
  return self;
}
       


fn PhysicalDevicePushDescriptorPropertiesKHR physicalDevicePushDescriptorPropertiesKHRBuilder() {
  PhysicalDevicePushDescriptorPropertiesKHR defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevicePushDescriptorPropertiesKHR PhysicalDevicePushDescriptorPropertiesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevicePushDescriptorPropertiesKHR PhysicalDevicePushDescriptorPropertiesKHR.setMaxPushDescriptors(self, uint maxPushDescriptors) {
  self.maxPushDescriptors = maxPushDescriptors;
  return self;
}
       


fn DebugUtilsLabelEXT debugUtilsLabelEXTBuilder() {
  DebugUtilsLabelEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DebugUtilsLabelEXT DebugUtilsLabelEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DebugUtilsLabelEXT DebugUtilsLabelEXT.setLabelName(self, char* pLabelName) {
  self.pLabelName = pLabelName;
  return self;
}
       
fn DebugUtilsLabelEXT DebugUtilsLabelEXT.setColor(self, float[4] color) {
  self.color = color;
  return self;
}
       


fn DebugUtilsMessengerCallbackDataEXT debugUtilsMessengerCallbackDataEXTBuilder() {
  DebugUtilsMessengerCallbackDataEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setFlags(self, DebugUtilsMessengerCallbackDataFlagsEXT flags) {
  self.flags = flags;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setMessageIdName(self, char* pMessageIdName) {
  self.pMessageIdName = pMessageIdName;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setMessageIdNumber(self, int messageIdNumber) {
  self.messageIdNumber = messageIdNumber;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setMessage(self, char* pMessage) {
  self.pMessage = pMessage;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setQueueLabelCount(self, uint queueLabelCount) {
  self.queueLabelCount = queueLabelCount;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setQueueLabels(self, DebugUtilsLabelEXT[] pQueueLabels) {
  self.queueLabelCount = (uint)pQueueLabels.len;
  self.pQueueLabels = &pQueueLabels[0];
  return self;
}

fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setCmdBufLabelCount(self, uint cmdBufLabelCount) {
  self.cmdBufLabelCount = cmdBufLabelCount;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setCmdBufLabels(self, DebugUtilsLabelEXT[] pCmdBufLabels) {
  self.cmdBufLabelCount = (uint)pCmdBufLabels.len;
  self.pCmdBufLabels = &pCmdBufLabels[0];
  return self;
}

fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setObjectCount(self, uint objectCount) {
  self.objectCount = objectCount;
  return self;
}
       
fn DebugUtilsMessengerCallbackDataEXT DebugUtilsMessengerCallbackDataEXT.setObjects(self, DebugUtilsObjectNameInfoEXT[] pObjects) {
  self.objectCount = (uint)pObjects.len;
  self.pObjects = &pObjects[0];
  return self;
}



fn DebugUtilsMessengerCreateInfoEXT debugUtilsMessengerCreateInfoEXTBuilder() {
  DebugUtilsMessengerCreateInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setFlags(self, DebugUtilsMessengerCreateFlagsEXT flags) {
  self.flags = flags;
  return self;
}
       
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setMessageSeverity(self, DebugUtilsMessageSeverityFlagsEXT messageSeverity) {
  self.messageSeverity = messageSeverity;
  return self;
}
       
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setMessageType(self, DebugUtilsMessageTypeFlagsEXT messageType) {
  self.messageType = messageType;
  return self;
}
       
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setPfnUserCallback(self, PFN_vkDebugUtilsMessengerCallbackEXT pfnUserCallback) {
  self.pfnUserCallback = pfnUserCallback;
  return self;
}
       
fn DebugUtilsMessengerCreateInfoEXT DebugUtilsMessengerCreateInfoEXT.setUserData(self, void* pUserData) {
  self.pUserData = pUserData;
  return self;
}
       


fn DebugUtilsObjectNameInfoEXT debugUtilsObjectNameInfoEXTBuilder() {
  DebugUtilsObjectNameInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setObjectType(self, ObjectType objectType) {
  self.objectType = objectType;
  return self;
}
       
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setObjectHandle(self, ulong objectHandle) {
  self.objectHandle = objectHandle;
  return self;
}
       
fn DebugUtilsObjectNameInfoEXT DebugUtilsObjectNameInfoEXT.setObjectName(self, char* pObjectName) {
  self.pObjectName = pObjectName;
  return self;
}
       


fn DebugUtilsObjectTagInfoEXT debugUtilsObjectTagInfoEXTBuilder() {
  DebugUtilsObjectTagInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setObjectType(self, ObjectType objectType) {
  self.objectType = objectType;
  return self;
}
       
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setObjectHandle(self, ulong objectHandle) {
  self.objectHandle = objectHandle;
  return self;
}
       
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setTagName(self, ulong tagName) {
  self.tagName = tagName;
  return self;
}
       
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setTagSize(self, usz tagSize) {
  self.tagSize = tagSize;
  return self;
}
       
fn DebugUtilsObjectTagInfoEXT DebugUtilsObjectTagInfoEXT.setTag(self, void* pTag) {
  self.pTag = pTag;
  return self;
}
       


fn PhysicalDevicePortabilitySubsetFeaturesKHR physicalDevicePortabilitySubsetFeaturesKHRBuilder() {
  PhysicalDevicePortabilitySubsetFeaturesKHR defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setConstantAlphaColorBlendFactors(self, Bool32 constantAlphaColorBlendFactors) {
  self.constantAlphaColorBlendFactors = constantAlphaColorBlendFactors;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setEvents(self, Bool32 events) {
  self.events = events;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setImageViewFormatReinterpretation(self, Bool32 imageViewFormatReinterpretation) {
  self.imageViewFormatReinterpretation = imageViewFormatReinterpretation;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setImageViewFormatSwizzle(self, Bool32 imageViewFormatSwizzle) {
  self.imageViewFormatSwizzle = imageViewFormatSwizzle;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setImageView2DOn3DImage(self, Bool32 imageView2DOn3DImage) {
  self.imageView2DOn3DImage = imageView2DOn3DImage;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setMultisampleArrayImage(self, Bool32 multisampleArrayImage) {
  self.multisampleArrayImage = multisampleArrayImage;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setMutableComparisonSamplers(self, Bool32 mutableComparisonSamplers) {
  self.mutableComparisonSamplers = mutableComparisonSamplers;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setPointPolygons(self, Bool32 pointPolygons) {
  self.pointPolygons = pointPolygons;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setSamplerMipLodBias(self, Bool32 samplerMipLodBias) {
  self.samplerMipLodBias = samplerMipLodBias;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setSeparateStencilMaskRef(self, Bool32 separateStencilMaskRef) {
  self.separateStencilMaskRef = separateStencilMaskRef;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setShaderSampleRateInterpolationFunctions(self, Bool32 shaderSampleRateInterpolationFunctions) {
  self.shaderSampleRateInterpolationFunctions = shaderSampleRateInterpolationFunctions;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setTessellationIsolines(self, Bool32 tessellationIsolines) {
  self.tessellationIsolines = tessellationIsolines;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setTessellationPointMode(self, Bool32 tessellationPointMode) {
  self.tessellationPointMode = tessellationPointMode;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setTriangleFans(self, Bool32 triangleFans) {
  self.triangleFans = triangleFans;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetFeaturesKHR PhysicalDevicePortabilitySubsetFeaturesKHR.setVertexAttributeAccessBeyondStride(self, Bool32 vertexAttributeAccessBeyondStride) {
  self.vertexAttributeAccessBeyondStride = vertexAttributeAccessBeyondStride;
  return self;
}
       


fn PhysicalDevicePortabilitySubsetPropertiesKHR physicalDevicePortabilitySubsetPropertiesKHRBuilder() {
  PhysicalDevicePortabilitySubsetPropertiesKHR defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDevicePortabilitySubsetPropertiesKHR PhysicalDevicePortabilitySubsetPropertiesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDevicePortabilitySubsetPropertiesKHR PhysicalDevicePortabilitySubsetPropertiesKHR.setMinVertexInputBindingStrideAlignment(self, uint minVertexInputBindingStrideAlignment) {
  self.minVertexInputBindingStrideAlignment = minVertexInputBindingStrideAlignment;
  return self;
}
       


fn PhysicalDeviceDescriptorBufferPropertiesEXT physicalDeviceDescriptorBufferPropertiesEXTBuilder() {
  PhysicalDeviceDescriptorBufferPropertiesEXT defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setCombinedImageSamplerDescriptorSingleArray(self, Bool32 combinedImageSamplerDescriptorSingleArray) {
  self.combinedImageSamplerDescriptorSingleArray = combinedImageSamplerDescriptorSingleArray;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setBufferlessPushDescriptors(self, Bool32 bufferlessPushDescriptors) {
  self.bufferlessPushDescriptors = bufferlessPushDescriptors;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setAllowSamplerImageViewPostSubmitCreation(self, Bool32 allowSamplerImageViewPostSubmitCreation) {
  self.allowSamplerImageViewPostSubmitCreation = allowSamplerImageViewPostSubmitCreation;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setDescriptorBufferOffsetAlignment(self, DeviceSize descriptorBufferOffsetAlignment) {
  self.descriptorBufferOffsetAlignment = descriptorBufferOffsetAlignment;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxDescriptorBufferBindings(self, uint maxDescriptorBufferBindings) {
  self.maxDescriptorBufferBindings = maxDescriptorBufferBindings;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxResourceDescriptorBufferBindings(self, uint maxResourceDescriptorBufferBindings) {
  self.maxResourceDescriptorBufferBindings = maxResourceDescriptorBufferBindings;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxSamplerDescriptorBufferBindings(self, uint maxSamplerDescriptorBufferBindings) {
  self.maxSamplerDescriptorBufferBindings = maxSamplerDescriptorBufferBindings;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxEmbeddedImmutableSamplerBindings(self, uint maxEmbeddedImmutableSamplerBindings) {
  self.maxEmbeddedImmutableSamplerBindings = maxEmbeddedImmutableSamplerBindings;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxEmbeddedImmutableSamplers(self, uint maxEmbeddedImmutableSamplers) {
  self.maxEmbeddedImmutableSamplers = maxEmbeddedImmutableSamplers;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setBufferCaptureReplayDescriptorDataSize(self, usz bufferCaptureReplayDescriptorDataSize) {
  self.bufferCaptureReplayDescriptorDataSize = bufferCaptureReplayDescriptorDataSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setImageCaptureReplayDescriptorDataSize(self, usz imageCaptureReplayDescriptorDataSize) {
  self.imageCaptureReplayDescriptorDataSize = imageCaptureReplayDescriptorDataSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setImageViewCaptureReplayDescriptorDataSize(self, usz imageViewCaptureReplayDescriptorDataSize) {
  self.imageViewCaptureReplayDescriptorDataSize = imageViewCaptureReplayDescriptorDataSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSamplerCaptureReplayDescriptorDataSize(self, usz samplerCaptureReplayDescriptorDataSize) {
  self.samplerCaptureReplayDescriptorDataSize = samplerCaptureReplayDescriptorDataSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setAccelerationStructureCaptureReplayDescriptorDataSize(self, usz accelerationStructureCaptureReplayDescriptorDataSize) {
  self.accelerationStructureCaptureReplayDescriptorDataSize = accelerationStructureCaptureReplayDescriptorDataSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSamplerDescriptorSize(self, usz samplerDescriptorSize) {
  self.samplerDescriptorSize = samplerDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setCombinedImageSamplerDescriptorSize(self, usz combinedImageSamplerDescriptorSize) {
  self.combinedImageSamplerDescriptorSize = combinedImageSamplerDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSampledImageDescriptorSize(self, usz sampledImageDescriptorSize) {
  self.sampledImageDescriptorSize = sampledImageDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setStorageImageDescriptorSize(self, usz storageImageDescriptorSize) {
  self.storageImageDescriptorSize = storageImageDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setUniformTexelBufferDescriptorSize(self, usz uniformTexelBufferDescriptorSize) {
  self.uniformTexelBufferDescriptorSize = uniformTexelBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustUniformTexelBufferDescriptorSize(self, usz robustUniformTexelBufferDescriptorSize) {
  self.robustUniformTexelBufferDescriptorSize = robustUniformTexelBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setStorageTexelBufferDescriptorSize(self, usz storageTexelBufferDescriptorSize) {
  self.storageTexelBufferDescriptorSize = storageTexelBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustStorageTexelBufferDescriptorSize(self, usz robustStorageTexelBufferDescriptorSize) {
  self.robustStorageTexelBufferDescriptorSize = robustStorageTexelBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setUniformBufferDescriptorSize(self, usz uniformBufferDescriptorSize) {
  self.uniformBufferDescriptorSize = uniformBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustUniformBufferDescriptorSize(self, usz robustUniformBufferDescriptorSize) {
  self.robustUniformBufferDescriptorSize = robustUniformBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setStorageBufferDescriptorSize(self, usz storageBufferDescriptorSize) {
  self.storageBufferDescriptorSize = storageBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setRobustStorageBufferDescriptorSize(self, usz robustStorageBufferDescriptorSize) {
  self.robustStorageBufferDescriptorSize = robustStorageBufferDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setInputAttachmentDescriptorSize(self, usz inputAttachmentDescriptorSize) {
  self.inputAttachmentDescriptorSize = inputAttachmentDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setAccelerationStructureDescriptorSize(self, usz accelerationStructureDescriptorSize) {
  self.accelerationStructureDescriptorSize = accelerationStructureDescriptorSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxSamplerDescriptorBufferRange(self, DeviceSize maxSamplerDescriptorBufferRange) {
  self.maxSamplerDescriptorBufferRange = maxSamplerDescriptorBufferRange;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setMaxResourceDescriptorBufferRange(self, DeviceSize maxResourceDescriptorBufferRange) {
  self.maxResourceDescriptorBufferRange = maxResourceDescriptorBufferRange;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setSamplerDescriptorBufferAddressSpaceSize(self, DeviceSize samplerDescriptorBufferAddressSpaceSize) {
  self.samplerDescriptorBufferAddressSpaceSize = samplerDescriptorBufferAddressSpaceSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setResourceDescriptorBufferAddressSpaceSize(self, DeviceSize resourceDescriptorBufferAddressSpaceSize) {
  self.resourceDescriptorBufferAddressSpaceSize = resourceDescriptorBufferAddressSpaceSize;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferPropertiesEXT PhysicalDeviceDescriptorBufferPropertiesEXT.setDescriptorBufferAddressSpaceSize(self, DeviceSize descriptorBufferAddressSpaceSize) {
  self.descriptorBufferAddressSpaceSize = descriptorBufferAddressSpaceSize;
  return self;
}
       


fn PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT physicalDeviceDescriptorBufferDensityMapPropertiesEXTBuilder() {
  PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT.setCombinedImageSamplerDensityMapDescriptorSize(self, usz combinedImageSamplerDensityMapDescriptorSize) {
  self.combinedImageSamplerDensityMapDescriptorSize = combinedImageSamplerDensityMapDescriptorSize;
  return self;
}
       


fn PhysicalDeviceDescriptorBufferFeaturesEXT physicalDeviceDescriptorBufferFeaturesEXTBuilder() {
  PhysicalDeviceDescriptorBufferFeaturesEXT defaultValue = {
    .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBuffer(self, Bool32 descriptorBuffer) {
  self.descriptorBuffer = descriptorBuffer;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBufferCaptureReplay(self, Bool32 descriptorBufferCaptureReplay) {
  self.descriptorBufferCaptureReplay = descriptorBufferCaptureReplay;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBufferImageLayoutIgnored(self, Bool32 descriptorBufferImageLayoutIgnored) {
  self.descriptorBufferImageLayoutIgnored = descriptorBufferImageLayoutIgnored;
  return self;
}
       
fn PhysicalDeviceDescriptorBufferFeaturesEXT PhysicalDeviceDescriptorBufferFeaturesEXT.setDescriptorBufferPushDescriptors(self, Bool32 descriptorBufferPushDescriptors) {
  self.descriptorBufferPushDescriptors = descriptorBufferPushDescriptors;
  return self;
}
       


fn DescriptorAddressInfoEXT descriptorAddressInfoEXTBuilder() {
  DescriptorAddressInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_ADDRESS_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setAddress(self, DeviceAddress address) {
  self.address = address;
  return self;
}
       
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setRange(self, DeviceSize range) {
  self.range = range;
  return self;
}
       
fn DescriptorAddressInfoEXT DescriptorAddressInfoEXT.setFormat(self, Format format) {
  self.format = format;
  return self;
}
       


fn DescriptorBufferBindingInfoEXT descriptorBufferBindingInfoEXTBuilder() {
  DescriptorBufferBindingInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorBufferBindingInfoEXT DescriptorBufferBindingInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorBufferBindingInfoEXT DescriptorBufferBindingInfoEXT.setAddress(self, DeviceAddress address) {
  self.address = address;
  return self;
}
       
fn DescriptorBufferBindingInfoEXT DescriptorBufferBindingInfoEXT.setUsage(self, BufferUsageFlags usage) {
  self.usage = usage;
  return self;
}
       


fn DescriptorBufferBindingPushDescriptorBufferHandleEXT descriptorBufferBindingPushDescriptorBufferHandleEXTBuilder() {
  DescriptorBufferBindingPushDescriptorBufferHandleEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorBufferBindingPushDescriptorBufferHandleEXT DescriptorBufferBindingPushDescriptorBufferHandleEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorBufferBindingPushDescriptorBufferHandleEXT DescriptorBufferBindingPushDescriptorBufferHandleEXT.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn DescriptorGetInfoEXT descriptorGetInfoEXTBuilder() {
  DescriptorGetInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_DESCRIPTOR_GET_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn DescriptorGetInfoEXT DescriptorGetInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn DescriptorGetInfoEXT DescriptorGetInfoEXT.setType(self, DescriptorType type) {
  self.type = type;
  return self;
}
       
fn DescriptorGetInfoEXT DescriptorGetInfoEXT.setData(self, DescriptorDataEXT data) {
  self.data = data;
  return self;
}
       


fn BufferCaptureDescriptorDataInfoEXT bufferCaptureDescriptorDataInfoEXTBuilder() {
  BufferCaptureDescriptorDataInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn BufferCaptureDescriptorDataInfoEXT BufferCaptureDescriptorDataInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn BufferCaptureDescriptorDataInfoEXT BufferCaptureDescriptorDataInfoEXT.setBuffer(self, Buffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn ImageCaptureDescriptorDataInfoEXT imageCaptureDescriptorDataInfoEXTBuilder() {
  ImageCaptureDescriptorDataInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageCaptureDescriptorDataInfoEXT ImageCaptureDescriptorDataInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageCaptureDescriptorDataInfoEXT ImageCaptureDescriptorDataInfoEXT.setImage(self, Image image) {
  self.image = image;
  return self;
}
       


fn ImageViewCaptureDescriptorDataInfoEXT imageViewCaptureDescriptorDataInfoEXTBuilder() {
  ImageViewCaptureDescriptorDataInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn ImageViewCaptureDescriptorDataInfoEXT ImageViewCaptureDescriptorDataInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn ImageViewCaptureDescriptorDataInfoEXT ImageViewCaptureDescriptorDataInfoEXT.setImageView(self, ImageView imageView) {
  self.imageView = imageView;
  return self;
}
       


fn SamplerCaptureDescriptorDataInfoEXT samplerCaptureDescriptorDataInfoEXTBuilder() {
  SamplerCaptureDescriptorDataInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn SamplerCaptureDescriptorDataInfoEXT SamplerCaptureDescriptorDataInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn SamplerCaptureDescriptorDataInfoEXT SamplerCaptureDescriptorDataInfoEXT.setSampler(self, Sampler sampler) {
  self.sampler = sampler;
  return self;
}
       


fn OpaqueCaptureDescriptorDataCreateInfoEXT opaqueCaptureDescriptorDataCreateInfoEXTBuilder() {
  OpaqueCaptureDescriptorDataCreateInfoEXT defaultValue = {
    .sType = STRUCTURE_TYPE_OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn OpaqueCaptureDescriptorDataCreateInfoEXT OpaqueCaptureDescriptorDataCreateInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn OpaqueCaptureDescriptorDataCreateInfoEXT OpaqueCaptureDescriptorDataCreateInfoEXT.setPaqueCaptureDescriptorData(self, void* opaqueCaptureDescriptorData) {
  self.opaqueCaptureDescriptorData = opaqueCaptureDescriptorData;
  return self;
}
       
