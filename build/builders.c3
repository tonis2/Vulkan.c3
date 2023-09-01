module vk; 


fn VkBufferMemoryBarrier bufferMemoryBarrierBuilder() {
  VkBufferMemoryBarrier defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setSrcAccessMask(self, VkAccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setDstAccessMask(self, VkAccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setOffset(self, VkDeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn VkBufferMemoryBarrier VkBufferMemoryBarrier.setSize(self, VkDeviceSize size) {
  self.size = size;
  return self;
}
       


fn VkImageMemoryBarrier imageMemoryBarrierBuilder() {
  VkImageMemoryBarrier defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageMemoryBarrier VkImageMemoryBarrier.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setSrcAccessMask(self, VkAccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setDstAccessMask(self, VkAccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setOldLayout(self, VkImageLayout oldLayout) {
  self.oldLayout = oldLayout;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setNewLayout(self, VkImageLayout newLayout) {
  self.newLayout = newLayout;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       
fn VkImageMemoryBarrier VkImageMemoryBarrier.setSubresourceRange(self, VkImageSubresourceRange subresourceRange) {
  self.subresourceRange = subresourceRange;
  return self;
}
       


fn VkMemoryBarrier memoryBarrierBuilder() {
  VkMemoryBarrier defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryBarrier VkMemoryBarrier.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryBarrier VkMemoryBarrier.setSrcAccessMask(self, VkAccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkMemoryBarrier VkMemoryBarrier.setDstAccessMask(self, VkAccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       


fn VkApplicationInfo applicationInfoBuilder() {
  VkApplicationInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_APPLICATION_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkApplicationInfo VkApplicationInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkApplicationInfo VkApplicationInfo.setApplicationName(self, char* pApplicationName) {
  self.pApplicationName = pApplicationName;
  return self;
}
       
fn VkApplicationInfo VkApplicationInfo.setApplicationVersion(self, uint applicationVersion) {
  self.applicationVersion = applicationVersion;
  return self;
}
       
fn VkApplicationInfo VkApplicationInfo.setEngineName(self, char* pEngineName) {
  self.pEngineName = pEngineName;
  return self;
}
       
fn VkApplicationInfo VkApplicationInfo.setEngineVersion(self, uint engineVersion) {
  self.engineVersion = engineVersion;
  return self;
}
       
fn VkApplicationInfo VkApplicationInfo.setApiVersion(self, uint apiVersion) {
  self.apiVersion = apiVersion;
  return self;
}
       


fn VkInstanceCreateInfo instanceCreateInfoBuilder() {
  VkInstanceCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkInstanceCreateInfo VkInstanceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkInstanceCreateInfo VkInstanceCreateInfo.setFlags(self, VkInstanceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkInstanceCreateInfo VkInstanceCreateInfo.setApplicationInfo(self, VkApplicationInfo* pApplicationInfo) {
  self.pApplicationInfo = pApplicationInfo;
  return self;
}
       
fn VkInstanceCreateInfo VkInstanceCreateInfo.setEnabledLayerCount(self, uint enabledLayerCount) {
  self.enabledLayerCount = enabledLayerCount;
  return self;
}
       
fn VkInstanceCreateInfo VkInstanceCreateInfo.setEnabledLayerNames(self, ZString[] ppEnabledLayerNames) {
  self.enabledLayerCount = (uint)ppEnabledLayerNames.len;
  self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
  return self;
}

fn VkInstanceCreateInfo VkInstanceCreateInfo.setEnabledExtensionCount(self, uint enabledExtensionCount) {
  self.enabledExtensionCount = enabledExtensionCount;
  return self;
}
       
fn VkInstanceCreateInfo VkInstanceCreateInfo.setEnabledExtensionNames(self, ZString[] ppEnabledExtensionNames) {
  self.enabledExtensionCount = (uint)ppEnabledExtensionNames.len;
  self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
  return self;
}



fn VkDeviceCreateInfo deviceCreateInfoBuilder() {
  VkDeviceCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceCreateInfo VkDeviceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceCreateInfo VkDeviceCreateInfo.setFlags(self, VkDeviceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkDeviceCreateInfo VkDeviceCreateInfo.setQueueCreateInfoCount(self, uint queueCreateInfoCount) {
  self.queueCreateInfoCount = queueCreateInfoCount;
  return self;
}
       
fn VkDeviceCreateInfo VkDeviceCreateInfo.setQueueCreateInfos(self, VkDeviceQueueCreateInfo[] pQueueCreateInfos) {
  self.queueCreateInfoCount = (uint)pQueueCreateInfos.len;
  self.pQueueCreateInfos = &pQueueCreateInfos[0];
  return self;
}

fn VkDeviceCreateInfo VkDeviceCreateInfo.setEnabledLayerCount(self, uint enabledLayerCount) {
  self.enabledLayerCount = enabledLayerCount;
  return self;
}
       
fn VkDeviceCreateInfo VkDeviceCreateInfo.setEnabledLayerNames(self, ZString[] ppEnabledLayerNames) {
  self.enabledLayerCount = (uint)ppEnabledLayerNames.len;
  self.ppEnabledLayerNames = (char*)&ppEnabledLayerNames[0];
  return self;
}

fn VkDeviceCreateInfo VkDeviceCreateInfo.setEnabledExtensionCount(self, uint enabledExtensionCount) {
  self.enabledExtensionCount = enabledExtensionCount;
  return self;
}
       
fn VkDeviceCreateInfo VkDeviceCreateInfo.setEnabledExtensionNames(self, ZString[] ppEnabledExtensionNames) {
  self.enabledExtensionCount = (uint)ppEnabledExtensionNames.len;
  self.ppEnabledExtensionNames = (char*)&ppEnabledExtensionNames[0];
  return self;
}

fn VkDeviceCreateInfo VkDeviceCreateInfo.setEnabledFeatures(self, VkPhysicalDeviceFeatures* pEnabledFeatures) {
  self.pEnabledFeatures = pEnabledFeatures;
  return self;
}
       


fn VkDeviceQueueCreateInfo deviceQueueCreateInfoBuilder() {
  VkDeviceQueueCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceQueueCreateInfo VkDeviceQueueCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceQueueCreateInfo VkDeviceQueueCreateInfo.setFlags(self, VkDeviceQueueCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkDeviceQueueCreateInfo VkDeviceQueueCreateInfo.setQueueFamilyIndex(self, uint queueFamilyIndex) {
  self.queueFamilyIndex = queueFamilyIndex;
  return self;
}
       
fn VkDeviceQueueCreateInfo VkDeviceQueueCreateInfo.setQueueCount(self, uint queueCount) {
  self.queueCount = queueCount;
  return self;
}
       
fn VkDeviceQueueCreateInfo VkDeviceQueueCreateInfo.setQueuePriorities(self, float[] pQueuePriorities) {
  self.queueCount = (uint)pQueuePriorities.len;
  self.pQueuePriorities = &pQueuePriorities[0];
  return self;
}



fn VkSubmitInfo submitInfoBuilder() {
  VkSubmitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubmitInfo VkSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSubmitInfo VkSubmitInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn VkSubmitInfo VkSubmitInfo.setWaitSemaphores(self, VkSemaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn VkSubmitInfo VkSubmitInfo.setWaitDstStageMask(self, VkPipelineStageFlags[] pWaitDstStageMask) {
  self.waitSemaphoreCount = (uint)pWaitDstStageMask.len;
  self.pWaitDstStageMask = &pWaitDstStageMask[0];
  return self;
}

fn VkSubmitInfo VkSubmitInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       
fn VkSubmitInfo VkSubmitInfo.setCommandBuffers(self, VkCommandBuffer[] pCommandBuffers) {
  self.commandBufferCount = (uint)pCommandBuffers.len;
  self.pCommandBuffers = &pCommandBuffers[0];
  return self;
}

fn VkSubmitInfo VkSubmitInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn VkSubmitInfo VkSubmitInfo.setSignalSemaphores(self, VkSemaphore[] pSignalSemaphores) {
  self.signalSemaphoreCount = (uint)pSignalSemaphores.len;
  self.pSignalSemaphores = &pSignalSemaphores[0];
  return self;
}



fn VkMappedMemoryRange mappedMemoryRangeBuilder() {
  VkMappedMemoryRange defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMappedMemoryRange VkMappedMemoryRange.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMappedMemoryRange VkMappedMemoryRange.setMemory(self, VkDeviceMemory memory) {
  self.memory = memory;
  return self;
}
       
fn VkMappedMemoryRange VkMappedMemoryRange.setOffset(self, VkDeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn VkMappedMemoryRange VkMappedMemoryRange.setSize(self, VkDeviceSize size) {
  self.size = size;
  return self;
}
       


fn VkMemoryAllocateInfo memoryAllocateInfoBuilder() {
  VkMemoryAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryAllocateInfo VkMemoryAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryAllocateInfo VkMemoryAllocateInfo.setAllocationSize(self, VkDeviceSize allocationSize) {
  self.allocationSize = allocationSize;
  return self;
}
       
fn VkMemoryAllocateInfo VkMemoryAllocateInfo.setMemoryTypeIndex(self, uint memoryTypeIndex) {
  self.memoryTypeIndex = memoryTypeIndex;
  return self;
}
       


fn VkBindSparseInfo bindSparseInfoBuilder() {
  VkBindSparseInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_SPARSE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindSparseInfo VkBindSparseInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindSparseInfo VkBindSparseInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn VkBindSparseInfo VkBindSparseInfo.setWaitSemaphores(self, VkSemaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn VkBindSparseInfo VkBindSparseInfo.setBufferBindCount(self, uint bufferBindCount) {
  self.bufferBindCount = bufferBindCount;
  return self;
}
       
fn VkBindSparseInfo VkBindSparseInfo.setBufferBinds(self, VkSparseBufferMemoryBindInfo[] pBufferBinds) {
  self.bufferBindCount = (uint)pBufferBinds.len;
  self.pBufferBinds = &pBufferBinds[0];
  return self;
}

fn VkBindSparseInfo VkBindSparseInfo.setImageOpaqueBindCount(self, uint imageOpaqueBindCount) {
  self.imageOpaqueBindCount = imageOpaqueBindCount;
  return self;
}
       
fn VkBindSparseInfo VkBindSparseInfo.setImageOpaqueBinds(self, VkSparseImageOpaqueMemoryBindInfo[] pImageOpaqueBinds) {
  self.imageOpaqueBindCount = (uint)pImageOpaqueBinds.len;
  self.pImageOpaqueBinds = &pImageOpaqueBinds[0];
  return self;
}

fn VkBindSparseInfo VkBindSparseInfo.setImageBindCount(self, uint imageBindCount) {
  self.imageBindCount = imageBindCount;
  return self;
}
       
fn VkBindSparseInfo VkBindSparseInfo.setImageBinds(self, VkSparseImageMemoryBindInfo[] pImageBinds) {
  self.imageBindCount = (uint)pImageBinds.len;
  self.pImageBinds = &pImageBinds[0];
  return self;
}

fn VkBindSparseInfo VkBindSparseInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn VkBindSparseInfo VkBindSparseInfo.setSignalSemaphores(self, VkSemaphore[] pSignalSemaphores) {
  self.signalSemaphoreCount = (uint)pSignalSemaphores.len;
  self.pSignalSemaphores = &pSignalSemaphores[0];
  return self;
}



fn VkFenceCreateInfo fenceCreateInfoBuilder() {
  VkFenceCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkFenceCreateInfo VkFenceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkFenceCreateInfo VkFenceCreateInfo.setFlags(self, VkFenceCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn VkSemaphoreCreateInfo semaphoreCreateInfoBuilder() {
  VkSemaphoreCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSemaphoreCreateInfo VkSemaphoreCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSemaphoreCreateInfo VkSemaphoreCreateInfo.setFlags(self, VkSemaphoreCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn VkEventCreateInfo eventCreateInfoBuilder() {
  VkEventCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EVENT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkEventCreateInfo VkEventCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkEventCreateInfo VkEventCreateInfo.setFlags(self, VkEventCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn VkQueryPoolCreateInfo queryPoolCreateInfoBuilder() {
  VkQueryPoolCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkQueryPoolCreateInfo VkQueryPoolCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkQueryPoolCreateInfo VkQueryPoolCreateInfo.setFlags(self, VkQueryPoolCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkQueryPoolCreateInfo VkQueryPoolCreateInfo.setQueryType(self, VkQueryType queryType) {
  self.queryType = queryType;
  return self;
}
       
fn VkQueryPoolCreateInfo VkQueryPoolCreateInfo.setQueryCount(self, uint queryCount) {
  self.queryCount = queryCount;
  return self;
}
       
fn VkQueryPoolCreateInfo VkQueryPoolCreateInfo.setPipelineStatistics(self, VkQueryPipelineStatisticFlags pipelineStatistics) {
  self.pipelineStatistics = pipelineStatistics;
  return self;
}
       


fn VkBufferCreateInfo bufferCreateInfoBuilder() {
  VkBufferCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferCreateInfo VkBufferCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferCreateInfo VkBufferCreateInfo.setFlags(self, VkBufferCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkBufferCreateInfo VkBufferCreateInfo.setSize(self, VkDeviceSize size) {
  self.size = size;
  return self;
}
       
fn VkBufferCreateInfo VkBufferCreateInfo.setUsage(self, VkBufferUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn VkBufferCreateInfo VkBufferCreateInfo.setSharingMode(self, VkSharingMode sharingMode) {
  self.sharingMode = sharingMode;
  return self;
}
       
fn VkBufferCreateInfo VkBufferCreateInfo.setQueueFamilyIndexCount(self, uint queueFamilyIndexCount) {
  self.queueFamilyIndexCount = queueFamilyIndexCount;
  return self;
}
       
fn VkBufferCreateInfo VkBufferCreateInfo.setQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
  self.queueFamilyIndexCount = (uint)pQueueFamilyIndices.len;
  self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
  return self;
}



fn VkBufferViewCreateInfo bufferViewCreateInfoBuilder() {
  VkBufferViewCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferViewCreateInfo VkBufferViewCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferViewCreateInfo VkBufferViewCreateInfo.setFlags(self, VkBufferViewCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkBufferViewCreateInfo VkBufferViewCreateInfo.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn VkBufferViewCreateInfo VkBufferViewCreateInfo.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkBufferViewCreateInfo VkBufferViewCreateInfo.setOffset(self, VkDeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn VkBufferViewCreateInfo VkBufferViewCreateInfo.setRange(self, VkDeviceSize range) {
  self.range = range;
  return self;
}
       


fn VkImageCreateInfo imageCreateInfoBuilder() {
  VkImageCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageCreateInfo VkImageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setFlags(self, VkImageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setImageType(self, VkImageType imageType) {
  self.imageType = imageType;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setExtent(self, VkExtent3D extent) {
  self.extent = extent;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setMipLevels(self, uint mipLevels) {
  self.mipLevels = mipLevels;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setArrayLayers(self, uint arrayLayers) {
  self.arrayLayers = arrayLayers;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setSamples(self, VkSampleCountFlagBits samples) {
  self.samples = samples;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setTiling(self, VkImageTiling tiling) {
  self.tiling = tiling;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setUsage(self, VkImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setSharingMode(self, VkSharingMode sharingMode) {
  self.sharingMode = sharingMode;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setQueueFamilyIndexCount(self, uint queueFamilyIndexCount) {
  self.queueFamilyIndexCount = queueFamilyIndexCount;
  return self;
}
       
fn VkImageCreateInfo VkImageCreateInfo.setQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
  self.queueFamilyIndexCount = (uint)pQueueFamilyIndices.len;
  self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
  return self;
}

fn VkImageCreateInfo VkImageCreateInfo.setInitialLayout(self, VkImageLayout initialLayout) {
  self.initialLayout = initialLayout;
  return self;
}
       


fn VkImageViewCreateInfo imageViewCreateInfoBuilder() {
  VkImageViewCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageViewCreateInfo VkImageViewCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageViewCreateInfo VkImageViewCreateInfo.setFlags(self, VkImageViewCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkImageViewCreateInfo VkImageViewCreateInfo.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       
fn VkImageViewCreateInfo VkImageViewCreateInfo.setViewType(self, VkImageViewType viewType) {
  self.viewType = viewType;
  return self;
}
       
fn VkImageViewCreateInfo VkImageViewCreateInfo.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkImageViewCreateInfo VkImageViewCreateInfo.setComponents(self, VkComponentMapping components) {
  self.components = components;
  return self;
}
       
fn VkImageViewCreateInfo VkImageViewCreateInfo.setSubresourceRange(self, VkImageSubresourceRange subresourceRange) {
  self.subresourceRange = subresourceRange;
  return self;
}
       


fn VkShaderModuleCreateInfo shaderModuleCreateInfoBuilder() {
  VkShaderModuleCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkShaderModuleCreateInfo VkShaderModuleCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkShaderModuleCreateInfo VkShaderModuleCreateInfo.setFlags(self, VkShaderModuleCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkShaderModuleCreateInfo VkShaderModuleCreateInfo.setCodeSize(self, usz codeSize) {
  self.codeSize = codeSize;
  return self;
}
       


fn VkPipelineCacheCreateInfo pipelineCacheCreateInfoBuilder() {
  VkPipelineCacheCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineCacheCreateInfo VkPipelineCacheCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineCacheCreateInfo VkPipelineCacheCreateInfo.setFlags(self, VkPipelineCacheCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineCacheCreateInfo VkPipelineCacheCreateInfo.setInitialDataSize(self, usz initialDataSize) {
  self.initialDataSize = initialDataSize;
  return self;
}
       
fn VkPipelineCacheCreateInfo VkPipelineCacheCreateInfo.setInitialData(self, void* pInitialData) {
  self.pInitialData = pInitialData;
  return self;
}
       


fn VkComputePipelineCreateInfo computePipelineCreateInfoBuilder() {
  VkComputePipelineCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkComputePipelineCreateInfo VkComputePipelineCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkComputePipelineCreateInfo VkComputePipelineCreateInfo.setFlags(self, VkPipelineCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkComputePipelineCreateInfo VkComputePipelineCreateInfo.setStage(self, VkPipelineShaderStageCreateInfo stage) {
  self.stage = stage;
  return self;
}
       
fn VkComputePipelineCreateInfo VkComputePipelineCreateInfo.setLayout(self, VkPipelineLayout layout) {
  self.layout = layout;
  return self;
}
       
fn VkComputePipelineCreateInfo VkComputePipelineCreateInfo.setBasePipelineHandle(self, VkPipeline basePipelineHandle) {
  self.basePipelineHandle = basePipelineHandle;
  return self;
}
       
fn VkComputePipelineCreateInfo VkComputePipelineCreateInfo.setBasePipelineIndex(self, int basePipelineIndex) {
  self.basePipelineIndex = basePipelineIndex;
  return self;
}
       


fn VkGraphicsPipelineCreateInfo graphicsPipelineCreateInfoBuilder() {
  VkGraphicsPipelineCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setFlags(self, VkPipelineCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setStageCount(self, uint stageCount) {
  self.stageCount = stageCount;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setStages(self, VkPipelineShaderStageCreateInfo[] pStages) {
  self.stageCount = (uint)pStages.len;
  self.pStages = &pStages[0];
  return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setVertexInputState(self, VkPipelineVertexInputStateCreateInfo* pVertexInputState) {
  self.pVertexInputState = pVertexInputState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setInputAssemblyState(self, VkPipelineInputAssemblyStateCreateInfo* pInputAssemblyState) {
  self.pInputAssemblyState = pInputAssemblyState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setTessellationState(self, VkPipelineTessellationStateCreateInfo* pTessellationState) {
  self.pTessellationState = pTessellationState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setViewportState(self, VkPipelineViewportStateCreateInfo* pViewportState) {
  self.pViewportState = pViewportState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setRasterizationState(self, VkPipelineRasterizationStateCreateInfo* pRasterizationState) {
  self.pRasterizationState = pRasterizationState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setMultisampleState(self, VkPipelineMultisampleStateCreateInfo* pMultisampleState) {
  self.pMultisampleState = pMultisampleState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setDepthStencilState(self, VkPipelineDepthStencilStateCreateInfo* pDepthStencilState) {
  self.pDepthStencilState = pDepthStencilState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setColorBlendState(self, VkPipelineColorBlendStateCreateInfo* pColorBlendState) {
  self.pColorBlendState = pColorBlendState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setDynamicState(self, VkPipelineDynamicStateCreateInfo* pDynamicState) {
  self.pDynamicState = pDynamicState;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setLayout(self, VkPipelineLayout layout) {
  self.layout = layout;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setRenderPass(self, VkRenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setSubpass(self, uint subpass) {
  self.subpass = subpass;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setBasePipelineHandle(self, VkPipeline basePipelineHandle) {
  self.basePipelineHandle = basePipelineHandle;
  return self;
}
       
fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setBasePipelineIndex(self, int basePipelineIndex) {
  self.basePipelineIndex = basePipelineIndex;
  return self;
}
       


fn VkPipelineColorBlendStateCreateInfo pipelineColorBlendStateCreateInfoBuilder() {
  VkPipelineColorBlendStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setFlags(self, VkPipelineColorBlendStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setLogicOpEnable(self, VkBool32 logicOpEnable) {
  self.logicOpEnable = logicOpEnable;
  return self;
}
       
fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setLogicOp(self, VkLogicOp logicOp) {
  self.logicOp = logicOp;
  return self;
}
       
fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setAttachments(self, VkPipelineColorBlendAttachmentState[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.setBlendConstants(self, float[4] blendConstants) {
  self.blendConstants = blendConstants;
  return self;
}
       


fn VkPipelineDepthStencilStateCreateInfo pipelineDepthStencilStateCreateInfoBuilder() {
  VkPipelineDepthStencilStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setFlags(self, VkPipelineDepthStencilStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setDepthTestEnable(self, VkBool32 depthTestEnable) {
  self.depthTestEnable = depthTestEnable;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setDepthWriteEnable(self, VkBool32 depthWriteEnable) {
  self.depthWriteEnable = depthWriteEnable;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setDepthCompareOp(self, VkCompareOp depthCompareOp) {
  self.depthCompareOp = depthCompareOp;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setDepthBoundsTestEnable(self, VkBool32 depthBoundsTestEnable) {
  self.depthBoundsTestEnable = depthBoundsTestEnable;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setStencilTestEnable(self, VkBool32 stencilTestEnable) {
  self.stencilTestEnable = stencilTestEnable;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setFront(self, VkStencilOpState front) {
  self.front = front;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setBack(self, VkStencilOpState back) {
  self.back = back;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setMinDepthBounds(self, float minDepthBounds) {
  self.minDepthBounds = minDepthBounds;
  return self;
}
       
fn VkPipelineDepthStencilStateCreateInfo VkPipelineDepthStencilStateCreateInfo.setMaxDepthBounds(self, float maxDepthBounds) {
  self.maxDepthBounds = maxDepthBounds;
  return self;
}
       


fn VkPipelineDynamicStateCreateInfo pipelineDynamicStateCreateInfoBuilder() {
  VkPipelineDynamicStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineDynamicStateCreateInfo VkPipelineDynamicStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineDynamicStateCreateInfo VkPipelineDynamicStateCreateInfo.setFlags(self, VkPipelineDynamicStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineDynamicStateCreateInfo VkPipelineDynamicStateCreateInfo.setDynamicStateCount(self, uint dynamicStateCount) {
  self.dynamicStateCount = dynamicStateCount;
  return self;
}
       
fn VkPipelineDynamicStateCreateInfo VkPipelineDynamicStateCreateInfo.setDynamicStates(self, VkDynamicState[] pDynamicStates) {
  self.dynamicStateCount = (uint)pDynamicStates.len;
  self.pDynamicStates = &pDynamicStates[0];
  return self;
}



fn VkPipelineInputAssemblyStateCreateInfo pipelineInputAssemblyStateCreateInfoBuilder() {
  VkPipelineInputAssemblyStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineInputAssemblyStateCreateInfo VkPipelineInputAssemblyStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineInputAssemblyStateCreateInfo VkPipelineInputAssemblyStateCreateInfo.setFlags(self, VkPipelineInputAssemblyStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineInputAssemblyStateCreateInfo VkPipelineInputAssemblyStateCreateInfo.setTopology(self, VkPrimitiveTopology topology) {
  self.topology = topology;
  return self;
}
       
fn VkPipelineInputAssemblyStateCreateInfo VkPipelineInputAssemblyStateCreateInfo.setPrimitiveRestartEnable(self, VkBool32 primitiveRestartEnable) {
  self.primitiveRestartEnable = primitiveRestartEnable;
  return self;
}
       


fn VkPipelineMultisampleStateCreateInfo pipelineMultisampleStateCreateInfoBuilder() {
  VkPipelineMultisampleStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setFlags(self, VkPipelineMultisampleStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setRasterizationSamples(self, VkSampleCountFlagBits rasterizationSamples) {
  self.rasterizationSamples = rasterizationSamples;
  return self;
}
       
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setSampleShadingEnable(self, VkBool32 sampleShadingEnable) {
  self.sampleShadingEnable = sampleShadingEnable;
  return self;
}
       
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setMinSampleShading(self, float minSampleShading) {
  self.minSampleShading = minSampleShading;
  return self;
}
       
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setAlphaToCoverageEnable(self, VkBool32 alphaToCoverageEnable) {
  self.alphaToCoverageEnable = alphaToCoverageEnable;
  return self;
}
       
fn VkPipelineMultisampleStateCreateInfo VkPipelineMultisampleStateCreateInfo.setAlphaToOneEnable(self, VkBool32 alphaToOneEnable) {
  self.alphaToOneEnable = alphaToOneEnable;
  return self;
}
       


fn VkPipelineRasterizationStateCreateInfo pipelineRasterizationStateCreateInfoBuilder() {
  VkPipelineRasterizationStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setFlags(self, VkPipelineRasterizationStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setDepthClampEnable(self, VkBool32 depthClampEnable) {
  self.depthClampEnable = depthClampEnable;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setRasterizerDiscardEnable(self, VkBool32 rasterizerDiscardEnable) {
  self.rasterizerDiscardEnable = rasterizerDiscardEnable;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setPolygonMode(self, VkPolygonMode polygonMode) {
  self.polygonMode = polygonMode;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setCullMode(self, VkCullModeFlags cullMode) {
  self.cullMode = cullMode;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setFrontFace(self, VkFrontFace frontFace) {
  self.frontFace = frontFace;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setDepthBiasEnable(self, VkBool32 depthBiasEnable) {
  self.depthBiasEnable = depthBiasEnable;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setDepthBiasConstantFactor(self, float depthBiasConstantFactor) {
  self.depthBiasConstantFactor = depthBiasConstantFactor;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setDepthBiasClamp(self, float depthBiasClamp) {
  self.depthBiasClamp = depthBiasClamp;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setDepthBiasSlopeFactor(self, float depthBiasSlopeFactor) {
  self.depthBiasSlopeFactor = depthBiasSlopeFactor;
  return self;
}
       
fn VkPipelineRasterizationStateCreateInfo VkPipelineRasterizationStateCreateInfo.setLineWidth(self, float lineWidth) {
  self.lineWidth = lineWidth;
  return self;
}
       


fn VkPipelineShaderStageCreateInfo pipelineShaderStageCreateInfoBuilder() {
  VkPipelineShaderStageCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineShaderStageCreateInfo VkPipelineShaderStageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineShaderStageCreateInfo VkPipelineShaderStageCreateInfo.setFlags(self, VkPipelineShaderStageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineShaderStageCreateInfo VkPipelineShaderStageCreateInfo.setStage(self, VkShaderStageFlagBits stage) {
  self.stage = stage;
  return self;
}
       
fn VkPipelineShaderStageCreateInfo VkPipelineShaderStageCreateInfo.setMod(self, VkShaderModule mod) {
  self.mod = mod;
  return self;
}
       
fn VkPipelineShaderStageCreateInfo VkPipelineShaderStageCreateInfo.setName(self, char* pName) {
  self.pName = pName;
  return self;
}
       
fn VkPipelineShaderStageCreateInfo VkPipelineShaderStageCreateInfo.setSpecializationInfo(self, VkSpecializationInfo* pSpecializationInfo) {
  self.pSpecializationInfo = pSpecializationInfo;
  return self;
}
       


fn VkPipelineTessellationStateCreateInfo pipelineTessellationStateCreateInfoBuilder() {
  VkPipelineTessellationStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineTessellationStateCreateInfo VkPipelineTessellationStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineTessellationStateCreateInfo VkPipelineTessellationStateCreateInfo.setFlags(self, VkPipelineTessellationStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineTessellationStateCreateInfo VkPipelineTessellationStateCreateInfo.setPatchControlPoints(self, uint patchControlPoints) {
  self.patchControlPoints = patchControlPoints;
  return self;
}
       


fn VkPipelineVertexInputStateCreateInfo pipelineVertexInputStateCreateInfoBuilder() {
  VkPipelineVertexInputStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineVertexInputStateCreateInfo VkPipelineVertexInputStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineVertexInputStateCreateInfo VkPipelineVertexInputStateCreateInfo.setFlags(self, VkPipelineVertexInputStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineVertexInputStateCreateInfo VkPipelineVertexInputStateCreateInfo.setVertexBindingDescriptionCount(self, uint vertexBindingDescriptionCount) {
  self.vertexBindingDescriptionCount = vertexBindingDescriptionCount;
  return self;
}
       
fn VkPipelineVertexInputStateCreateInfo VkPipelineVertexInputStateCreateInfo.setVertexBindingDescriptions(self, VkVertexInputBindingDescription[] pVertexBindingDescriptions) {
  self.vertexBindingDescriptionCount = (uint)pVertexBindingDescriptions.len;
  self.pVertexBindingDescriptions = &pVertexBindingDescriptions[0];
  return self;
}

fn VkPipelineVertexInputStateCreateInfo VkPipelineVertexInputStateCreateInfo.setVertexAttributeDescriptionCount(self, uint vertexAttributeDescriptionCount) {
  self.vertexAttributeDescriptionCount = vertexAttributeDescriptionCount;
  return self;
}
       
fn VkPipelineVertexInputStateCreateInfo VkPipelineVertexInputStateCreateInfo.setVertexAttributeDescriptions(self, VkVertexInputAttributeDescription[] pVertexAttributeDescriptions) {
  self.vertexAttributeDescriptionCount = (uint)pVertexAttributeDescriptions.len;
  self.pVertexAttributeDescriptions = &pVertexAttributeDescriptions[0];
  return self;
}



fn VkPipelineViewportStateCreateInfo pipelineViewportStateCreateInfoBuilder() {
  VkPipelineViewportStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineViewportStateCreateInfo VkPipelineViewportStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineViewportStateCreateInfo VkPipelineViewportStateCreateInfo.setFlags(self, VkPipelineViewportStateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineViewportStateCreateInfo VkPipelineViewportStateCreateInfo.setViewportCount(self, uint viewportCount) {
  self.viewportCount = viewportCount;
  return self;
}
       
fn VkPipelineViewportStateCreateInfo VkPipelineViewportStateCreateInfo.setViewports(self, VkViewport[] pViewports) {
  self.viewportCount = (uint)pViewports.len;
  self.pViewports = &pViewports[0];
  return self;
}

fn VkPipelineViewportStateCreateInfo VkPipelineViewportStateCreateInfo.setScissorCount(self, uint scissorCount) {
  self.scissorCount = scissorCount;
  return self;
}
       
fn VkPipelineViewportStateCreateInfo VkPipelineViewportStateCreateInfo.setScissors(self, VkRect2D[] pScissors) {
  self.scissorCount = (uint)pScissors.len;
  self.pScissors = &pScissors[0];
  return self;
}



fn VkPipelineLayoutCreateInfo pipelineLayoutCreateInfoBuilder() {
  VkPipelineLayoutCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineLayoutCreateInfo VkPipelineLayoutCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineLayoutCreateInfo VkPipelineLayoutCreateInfo.setFlags(self, VkPipelineLayoutCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPipelineLayoutCreateInfo VkPipelineLayoutCreateInfo.setSetLayoutCount(self, uint setLayoutCount) {
  self.setLayoutCount = setLayoutCount;
  return self;
}
       
fn VkPipelineLayoutCreateInfo VkPipelineLayoutCreateInfo.setSetLayouts(self, VkDescriptorSetLayout[] pSetLayouts) {
  self.setLayoutCount = (uint)pSetLayouts.len;
  self.pSetLayouts = &pSetLayouts[0];
  return self;
}

fn VkPipelineLayoutCreateInfo VkPipelineLayoutCreateInfo.setPushConstantRangeCount(self, uint pushConstantRangeCount) {
  self.pushConstantRangeCount = pushConstantRangeCount;
  return self;
}
       
fn VkPipelineLayoutCreateInfo VkPipelineLayoutCreateInfo.setPushConstantRanges(self, VkPushConstantRange[] pPushConstantRanges) {
  self.pushConstantRangeCount = (uint)pPushConstantRanges.len;
  self.pPushConstantRanges = &pPushConstantRanges[0];
  return self;
}



fn VkSamplerCreateInfo samplerCreateInfoBuilder() {
  VkSamplerCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSamplerCreateInfo VkSamplerCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setFlags(self, VkSamplerCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMagFilter(self, VkFilter magFilter) {
  self.magFilter = magFilter;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMinFilter(self, VkFilter minFilter) {
  self.minFilter = minFilter;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMipmapMode(self, VkSamplerMipmapMode mipmapMode) {
  self.mipmapMode = mipmapMode;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setAddressModeU(self, VkSamplerAddressMode addressModeU) {
  self.addressModeU = addressModeU;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setAddressModeV(self, VkSamplerAddressMode addressModeV) {
  self.addressModeV = addressModeV;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setAddressModeW(self, VkSamplerAddressMode addressModeW) {
  self.addressModeW = addressModeW;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMipLodBias(self, float mipLodBias) {
  self.mipLodBias = mipLodBias;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setAnisotropyEnable(self, VkBool32 anisotropyEnable) {
  self.anisotropyEnable = anisotropyEnable;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMaxAnisotropy(self, float maxAnisotropy) {
  self.maxAnisotropy = maxAnisotropy;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setCompareEnable(self, VkBool32 compareEnable) {
  self.compareEnable = compareEnable;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setCompareOp(self, VkCompareOp compareOp) {
  self.compareOp = compareOp;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMinLod(self, float minLod) {
  self.minLod = minLod;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setMaxLod(self, float maxLod) {
  self.maxLod = maxLod;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setBorderColor(self, VkBorderColor borderColor) {
  self.borderColor = borderColor;
  return self;
}
       
fn VkSamplerCreateInfo VkSamplerCreateInfo.setUnnormalizedCoordinates(self, VkBool32 unnormalizedCoordinates) {
  self.unnormalizedCoordinates = unnormalizedCoordinates;
  return self;
}
       


fn VkCopyDescriptorSet copyDescriptorSetBuilder() {
  VkCopyDescriptorSet defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCopyDescriptorSet VkCopyDescriptorSet.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setSrcSet(self, VkDescriptorSet srcSet) {
  self.srcSet = srcSet;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setSrcBinding(self, uint srcBinding) {
  self.srcBinding = srcBinding;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setSrcArrayElement(self, uint srcArrayElement) {
  self.srcArrayElement = srcArrayElement;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setDstSet(self, VkDescriptorSet dstSet) {
  self.dstSet = dstSet;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setDstBinding(self, uint dstBinding) {
  self.dstBinding = dstBinding;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setDstArrayElement(self, uint dstArrayElement) {
  self.dstArrayElement = dstArrayElement;
  return self;
}
       
fn VkCopyDescriptorSet VkCopyDescriptorSet.setDescriptorCount(self, uint descriptorCount) {
  self.descriptorCount = descriptorCount;
  return self;
}
       


fn VkDescriptorPoolCreateInfo descriptorPoolCreateInfoBuilder() {
  VkDescriptorPoolCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorPoolCreateInfo VkDescriptorPoolCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorPoolCreateInfo VkDescriptorPoolCreateInfo.setFlags(self, VkDescriptorPoolCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkDescriptorPoolCreateInfo VkDescriptorPoolCreateInfo.setMaxSets(self, uint maxSets) {
  self.maxSets = maxSets;
  return self;
}
       
fn VkDescriptorPoolCreateInfo VkDescriptorPoolCreateInfo.setPoolSizeCount(self, uint poolSizeCount) {
  self.poolSizeCount = poolSizeCount;
  return self;
}
       
fn VkDescriptorPoolCreateInfo VkDescriptorPoolCreateInfo.setPoolSizes(self, VkDescriptorPoolSize[] pPoolSizes) {
  self.poolSizeCount = (uint)pPoolSizes.len;
  self.pPoolSizes = &pPoolSizes[0];
  return self;
}



fn VkDescriptorSetAllocateInfo descriptorSetAllocateInfoBuilder() {
  VkDescriptorSetAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorSetAllocateInfo VkDescriptorSetAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorSetAllocateInfo VkDescriptorSetAllocateInfo.setDescriptorPool(self, VkDescriptorPool descriptorPool) {
  self.descriptorPool = descriptorPool;
  return self;
}
       
fn VkDescriptorSetAllocateInfo VkDescriptorSetAllocateInfo.setDescriptorSetCount(self, uint descriptorSetCount) {
  self.descriptorSetCount = descriptorSetCount;
  return self;
}
       
fn VkDescriptorSetAllocateInfo VkDescriptorSetAllocateInfo.setSetLayouts(self, VkDescriptorSetLayout[] pSetLayouts) {
  self.descriptorSetCount = (uint)pSetLayouts.len;
  self.pSetLayouts = &pSetLayouts[0];
  return self;
}



fn VkDescriptorSetLayoutCreateInfo descriptorSetLayoutCreateInfoBuilder() {
  VkDescriptorSetLayoutCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorSetLayoutCreateInfo VkDescriptorSetLayoutCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorSetLayoutCreateInfo VkDescriptorSetLayoutCreateInfo.setFlags(self, VkDescriptorSetLayoutCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkDescriptorSetLayoutCreateInfo VkDescriptorSetLayoutCreateInfo.setBindingCount(self, uint bindingCount) {
  self.bindingCount = bindingCount;
  return self;
}
       
fn VkDescriptorSetLayoutCreateInfo VkDescriptorSetLayoutCreateInfo.setBindings(self, VkDescriptorSetLayoutBinding[] pBindings) {
  self.bindingCount = (uint)pBindings.len;
  self.pBindings = &pBindings[0];
  return self;
}



fn VkWriteDescriptorSet writeDescriptorSetBuilder() {
  VkWriteDescriptorSet defaultValue = {
    .sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkWriteDescriptorSet VkWriteDescriptorSet.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkWriteDescriptorSet VkWriteDescriptorSet.setDstSet(self, VkDescriptorSet dstSet) {
  self.dstSet = dstSet;
  return self;
}
       
fn VkWriteDescriptorSet VkWriteDescriptorSet.setDstBinding(self, uint dstBinding) {
  self.dstBinding = dstBinding;
  return self;
}
       
fn VkWriteDescriptorSet VkWriteDescriptorSet.setDstArrayElement(self, uint dstArrayElement) {
  self.dstArrayElement = dstArrayElement;
  return self;
}
       
fn VkWriteDescriptorSet VkWriteDescriptorSet.setDescriptorCount(self, uint descriptorCount) {
  self.descriptorCount = descriptorCount;
  return self;
}
       
fn VkWriteDescriptorSet VkWriteDescriptorSet.setDescriptorType(self, VkDescriptorType descriptorType) {
  self.descriptorType = descriptorType;
  return self;
}
       
fn VkWriteDescriptorSet VkWriteDescriptorSet.setImageInfo(self, VkDescriptorImageInfo[] pImageInfo) {
  self.descriptorCount = (uint)pImageInfo.len;
  self.pImageInfo = &pImageInfo[0];
  return self;
}

fn VkWriteDescriptorSet VkWriteDescriptorSet.setBufferInfo(self, VkDescriptorBufferInfo[] pBufferInfo) {
  self.descriptorCount = (uint)pBufferInfo.len;
  self.pBufferInfo = &pBufferInfo[0];
  return self;
}

fn VkWriteDescriptorSet VkWriteDescriptorSet.setTexelBufferView(self, VkBufferView[] pTexelBufferView) {
  self.descriptorCount = (uint)pTexelBufferView.len;
  self.pTexelBufferView = &pTexelBufferView[0];
  return self;
}



fn VkFramebufferCreateInfo framebufferCreateInfoBuilder() {
  VkFramebufferCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setFlags(self, VkFramebufferCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setRenderPass(self, VkRenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setAttachments(self, VkImageView[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setWidth(self, uint width) {
  self.width = width;
  return self;
}
       
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setHeight(self, uint height) {
  self.height = height;
  return self;
}
       
fn VkFramebufferCreateInfo VkFramebufferCreateInfo.setLayers(self, uint layers) {
  self.layers = layers;
  return self;
}
       


fn VkRenderPassCreateInfo renderPassCreateInfoBuilder() {
  VkRenderPassCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setFlags(self, VkRenderPassCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setAttachments(self, VkAttachmentDescription[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setSubpasses(self, VkSubpassDescription[] pSubpasses) {
  self.subpassCount = (uint)pSubpasses.len;
  self.pSubpasses = &pSubpasses[0];
  return self;
}

fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn VkRenderPassCreateInfo VkRenderPassCreateInfo.setDependencies(self, VkSubpassDependency[] pDependencies) {
  self.dependencyCount = (uint)pDependencies.len;
  self.pDependencies = &pDependencies[0];
  return self;
}



fn VkCommandPoolCreateInfo commandPoolCreateInfoBuilder() {
  VkCommandPoolCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCommandPoolCreateInfo VkCommandPoolCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCommandPoolCreateInfo VkCommandPoolCreateInfo.setFlags(self, VkCommandPoolCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkCommandPoolCreateInfo VkCommandPoolCreateInfo.setQueueFamilyIndex(self, uint queueFamilyIndex) {
  self.queueFamilyIndex = queueFamilyIndex;
  return self;
}
       


fn VkCommandBufferAllocateInfo commandBufferAllocateInfoBuilder() {
  VkCommandBufferAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCommandBufferAllocateInfo VkCommandBufferAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCommandBufferAllocateInfo VkCommandBufferAllocateInfo.setCommandPool(self, VkCommandPool commandPool) {
  self.commandPool = commandPool;
  return self;
}
       
fn VkCommandBufferAllocateInfo VkCommandBufferAllocateInfo.setLevel(self, VkCommandBufferLevel level) {
  self.level = level;
  return self;
}
       
fn VkCommandBufferAllocateInfo VkCommandBufferAllocateInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       


fn VkCommandBufferBeginInfo commandBufferBeginInfoBuilder() {
  VkCommandBufferBeginInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCommandBufferBeginInfo VkCommandBufferBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCommandBufferBeginInfo VkCommandBufferBeginInfo.setFlags(self, VkCommandBufferUsageFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkCommandBufferBeginInfo VkCommandBufferBeginInfo.setInheritanceInfo(self, VkCommandBufferInheritanceInfo* pInheritanceInfo) {
  self.pInheritanceInfo = pInheritanceInfo;
  return self;
}
       


fn VkCommandBufferInheritanceInfo commandBufferInheritanceInfoBuilder() {
  VkCommandBufferInheritanceInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setRenderPass(self, VkRenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setSubpass(self, uint subpass) {
  self.subpass = subpass;
  return self;
}
       
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setFramebuffer(self, VkFramebuffer framebuffer) {
  self.framebuffer = framebuffer;
  return self;
}
       
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setOcclusionQueryEnable(self, VkBool32 occlusionQueryEnable) {
  self.occlusionQueryEnable = occlusionQueryEnable;
  return self;
}
       
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setQueryFlags(self, VkQueryControlFlags queryFlags) {
  self.queryFlags = queryFlags;
  return self;
}
       
fn VkCommandBufferInheritanceInfo VkCommandBufferInheritanceInfo.setPipelineStatistics(self, VkQueryPipelineStatisticFlags pipelineStatistics) {
  self.pipelineStatistics = pipelineStatistics;
  return self;
}
       


fn VkRenderPassBeginInfo renderPassBeginInfoBuilder() {
  VkRenderPassBeginInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderPassBeginInfo VkRenderPassBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderPassBeginInfo VkRenderPassBeginInfo.setRenderPass(self, VkRenderPass renderPass) {
  self.renderPass = renderPass;
  return self;
}
       
fn VkRenderPassBeginInfo VkRenderPassBeginInfo.setFramebuffer(self, VkFramebuffer framebuffer) {
  self.framebuffer = framebuffer;
  return self;
}
       
fn VkRenderPassBeginInfo VkRenderPassBeginInfo.setRenderArea(self, VkRect2D renderArea) {
  self.renderArea = renderArea;
  return self;
}
       
fn VkRenderPassBeginInfo VkRenderPassBeginInfo.setClearValueCount(self, uint clearValueCount) {
  self.clearValueCount = clearValueCount;
  return self;
}
       
fn VkRenderPassBeginInfo VkRenderPassBeginInfo.setClearValues(self, VkClearValue[] pClearValues) {
  self.clearValueCount = (uint)pClearValues.len;
  self.pClearValues = &pClearValues[0];
  return self;
}



fn VkPhysicalDeviceSubgroupProperties physicalDeviceSubgroupPropertiesBuilder() {
  VkPhysicalDeviceSubgroupProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSubgroupProperties VkPhysicalDeviceSubgroupProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSubgroupProperties VkPhysicalDeviceSubgroupProperties.setSubgroupSize(self, uint subgroupSize) {
  self.subgroupSize = subgroupSize;
  return self;
}
       
fn VkPhysicalDeviceSubgroupProperties VkPhysicalDeviceSubgroupProperties.setSupportedStages(self, VkShaderStageFlags supportedStages) {
  self.supportedStages = supportedStages;
  return self;
}
       
fn VkPhysicalDeviceSubgroupProperties VkPhysicalDeviceSubgroupProperties.setSupportedOperations(self, VkSubgroupFeatureFlags supportedOperations) {
  self.supportedOperations = supportedOperations;
  return self;
}
       
fn VkPhysicalDeviceSubgroupProperties VkPhysicalDeviceSubgroupProperties.setQuadOperationsInAllStages(self, VkBool32 quadOperationsInAllStages) {
  self.quadOperationsInAllStages = quadOperationsInAllStages;
  return self;
}
       


fn VkBindBufferMemoryInfo bindBufferMemoryInfoBuilder() {
  VkBindBufferMemoryInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindBufferMemoryInfo VkBindBufferMemoryInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindBufferMemoryInfo VkBindBufferMemoryInfo.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn VkBindBufferMemoryInfo VkBindBufferMemoryInfo.setMemory(self, VkDeviceMemory memory) {
  self.memory = memory;
  return self;
}
       
fn VkBindBufferMemoryInfo VkBindBufferMemoryInfo.setMemoryOffset(self, VkDeviceSize memoryOffset) {
  self.memoryOffset = memoryOffset;
  return self;
}
       


fn VkBindImageMemoryInfo bindImageMemoryInfoBuilder() {
  VkBindImageMemoryInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindImageMemoryInfo VkBindImageMemoryInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindImageMemoryInfo VkBindImageMemoryInfo.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       
fn VkBindImageMemoryInfo VkBindImageMemoryInfo.setMemory(self, VkDeviceMemory memory) {
  self.memory = memory;
  return self;
}
       
fn VkBindImageMemoryInfo VkBindImageMemoryInfo.setMemoryOffset(self, VkDeviceSize memoryOffset) {
  self.memoryOffset = memoryOffset;
  return self;
}
       


fn VkPhysicalDevice16BitStorageFeatures physicalDevice16BitStorageFeaturesBuilder() {
  VkPhysicalDevice16BitStorageFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevice16BitStorageFeatures VkPhysicalDevice16BitStorageFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevice16BitStorageFeatures VkPhysicalDevice16BitStorageFeatures.setStorageBuffer16BitAccess(self, VkBool32 storageBuffer16BitAccess) {
  self.storageBuffer16BitAccess = storageBuffer16BitAccess;
  return self;
}
       
fn VkPhysicalDevice16BitStorageFeatures VkPhysicalDevice16BitStorageFeatures.setUniformAndStorageBuffer16BitAccess(self, VkBool32 uniformAndStorageBuffer16BitAccess) {
  self.uniformAndStorageBuffer16BitAccess = uniformAndStorageBuffer16BitAccess;
  return self;
}
       
fn VkPhysicalDevice16BitStorageFeatures VkPhysicalDevice16BitStorageFeatures.setStoragePushConstant16(self, VkBool32 storagePushConstant16) {
  self.storagePushConstant16 = storagePushConstant16;
  return self;
}
       
fn VkPhysicalDevice16BitStorageFeatures VkPhysicalDevice16BitStorageFeatures.setStorageInputOutput16(self, VkBool32 storageInputOutput16) {
  self.storageInputOutput16 = storageInputOutput16;
  return self;
}
       


fn VkMemoryDedicatedRequirements memoryDedicatedRequirementsBuilder() {
  VkMemoryDedicatedRequirements defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryDedicatedRequirements VkMemoryDedicatedRequirements.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryDedicatedRequirements VkMemoryDedicatedRequirements.setPrefersDedicatedAllocation(self, VkBool32 prefersDedicatedAllocation) {
  self.prefersDedicatedAllocation = prefersDedicatedAllocation;
  return self;
}
       
fn VkMemoryDedicatedRequirements VkMemoryDedicatedRequirements.setRequiresDedicatedAllocation(self, VkBool32 requiresDedicatedAllocation) {
  self.requiresDedicatedAllocation = requiresDedicatedAllocation;
  return self;
}
       


fn VkMemoryDedicatedAllocateInfo memoryDedicatedAllocateInfoBuilder() {
  VkMemoryDedicatedAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryDedicatedAllocateInfo VkMemoryDedicatedAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryDedicatedAllocateInfo VkMemoryDedicatedAllocateInfo.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       
fn VkMemoryDedicatedAllocateInfo VkMemoryDedicatedAllocateInfo.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn VkMemoryAllocateFlagsInfo memoryAllocateFlagsInfoBuilder() {
  VkMemoryAllocateFlagsInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryAllocateFlagsInfo VkMemoryAllocateFlagsInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryAllocateFlagsInfo VkMemoryAllocateFlagsInfo.setFlags(self, VkMemoryAllocateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkMemoryAllocateFlagsInfo VkMemoryAllocateFlagsInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn VkDeviceGroupRenderPassBeginInfo deviceGroupRenderPassBeginInfoBuilder() {
  VkDeviceGroupRenderPassBeginInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupRenderPassBeginInfo VkDeviceGroupRenderPassBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupRenderPassBeginInfo VkDeviceGroupRenderPassBeginInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       
fn VkDeviceGroupRenderPassBeginInfo VkDeviceGroupRenderPassBeginInfo.setDeviceRenderAreaCount(self, uint deviceRenderAreaCount) {
  self.deviceRenderAreaCount = deviceRenderAreaCount;
  return self;
}
       
fn VkDeviceGroupRenderPassBeginInfo VkDeviceGroupRenderPassBeginInfo.setDeviceRenderAreas(self, VkRect2D[] pDeviceRenderAreas) {
  self.deviceRenderAreaCount = (uint)pDeviceRenderAreas.len;
  self.pDeviceRenderAreas = &pDeviceRenderAreas[0];
  return self;
}



fn VkDeviceGroupCommandBufferBeginInfo deviceGroupCommandBufferBeginInfoBuilder() {
  VkDeviceGroupCommandBufferBeginInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupCommandBufferBeginInfo VkDeviceGroupCommandBufferBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupCommandBufferBeginInfo VkDeviceGroupCommandBufferBeginInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn VkDeviceGroupSubmitInfo deviceGroupSubmitInfoBuilder() {
  VkDeviceGroupSubmitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setWaitSemaphoreDeviceIndices(self, uint[] pWaitSemaphoreDeviceIndices) {
  self.waitSemaphoreCount = (uint)pWaitSemaphoreDeviceIndices.len;
  self.pWaitSemaphoreDeviceIndices = &pWaitSemaphoreDeviceIndices[0];
  return self;
}

fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setCommandBufferCount(self, uint commandBufferCount) {
  self.commandBufferCount = commandBufferCount;
  return self;
}
       
fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setCommandBufferDeviceMasks(self, uint[] pCommandBufferDeviceMasks) {
  self.commandBufferCount = (uint)pCommandBufferDeviceMasks.len;
  self.pCommandBufferDeviceMasks = &pCommandBufferDeviceMasks[0];
  return self;
}

fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setSignalSemaphoreCount(self, uint signalSemaphoreCount) {
  self.signalSemaphoreCount = signalSemaphoreCount;
  return self;
}
       
fn VkDeviceGroupSubmitInfo VkDeviceGroupSubmitInfo.setSignalSemaphoreDeviceIndices(self, uint[] pSignalSemaphoreDeviceIndices) {
  self.signalSemaphoreCount = (uint)pSignalSemaphoreDeviceIndices.len;
  self.pSignalSemaphoreDeviceIndices = &pSignalSemaphoreDeviceIndices[0];
  return self;
}



fn VkDeviceGroupBindSparseInfo deviceGroupBindSparseInfoBuilder() {
  VkDeviceGroupBindSparseInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupBindSparseInfo VkDeviceGroupBindSparseInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupBindSparseInfo VkDeviceGroupBindSparseInfo.setResourceDeviceIndex(self, uint resourceDeviceIndex) {
  self.resourceDeviceIndex = resourceDeviceIndex;
  return self;
}
       
fn VkDeviceGroupBindSparseInfo VkDeviceGroupBindSparseInfo.setMemoryDeviceIndex(self, uint memoryDeviceIndex) {
  self.memoryDeviceIndex = memoryDeviceIndex;
  return self;
}
       


fn VkBindBufferMemoryDeviceGroupInfo bindBufferMemoryDeviceGroupInfoBuilder() {
  VkBindBufferMemoryDeviceGroupInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindBufferMemoryDeviceGroupInfo VkBindBufferMemoryDeviceGroupInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindBufferMemoryDeviceGroupInfo VkBindBufferMemoryDeviceGroupInfo.setDeviceIndexCount(self, uint deviceIndexCount) {
  self.deviceIndexCount = deviceIndexCount;
  return self;
}
       
fn VkBindBufferMemoryDeviceGroupInfo VkBindBufferMemoryDeviceGroupInfo.setDeviceIndices(self, uint[] pDeviceIndices) {
  self.deviceIndexCount = (uint)pDeviceIndices.len;
  self.pDeviceIndices = &pDeviceIndices[0];
  return self;
}



fn VkBindImageMemoryDeviceGroupInfo bindImageMemoryDeviceGroupInfoBuilder() {
  VkBindImageMemoryDeviceGroupInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindImageMemoryDeviceGroupInfo VkBindImageMemoryDeviceGroupInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindImageMemoryDeviceGroupInfo VkBindImageMemoryDeviceGroupInfo.setDeviceIndexCount(self, uint deviceIndexCount) {
  self.deviceIndexCount = deviceIndexCount;
  return self;
}
       
fn VkBindImageMemoryDeviceGroupInfo VkBindImageMemoryDeviceGroupInfo.setDeviceIndices(self, uint[] pDeviceIndices) {
  self.deviceIndexCount = (uint)pDeviceIndices.len;
  self.pDeviceIndices = &pDeviceIndices[0];
  return self;
}

fn VkBindImageMemoryDeviceGroupInfo VkBindImageMemoryDeviceGroupInfo.setSplitInstanceBindRegionCount(self, uint splitInstanceBindRegionCount) {
  self.splitInstanceBindRegionCount = splitInstanceBindRegionCount;
  return self;
}
       
fn VkBindImageMemoryDeviceGroupInfo VkBindImageMemoryDeviceGroupInfo.setSplitInstanceBindRegions(self, VkRect2D[] pSplitInstanceBindRegions) {
  self.splitInstanceBindRegionCount = (uint)pSplitInstanceBindRegions.len;
  self.pSplitInstanceBindRegions = &pSplitInstanceBindRegions[0];
  return self;
}



fn VkPhysicalDeviceGroupProperties physicalDeviceGroupPropertiesBuilder() {
  VkPhysicalDeviceGroupProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceGroupProperties VkPhysicalDeviceGroupProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceGroupProperties VkPhysicalDeviceGroupProperties.setPhysicalDeviceCount(self, uint physicalDeviceCount) {
  self.physicalDeviceCount = physicalDeviceCount;
  return self;
}
       
fn VkPhysicalDeviceGroupProperties VkPhysicalDeviceGroupProperties.setPhysicalDevices(self, VkPhysicalDevice[VK_MAX_DEVICE_GROUP_SIZE] physicalDevices) {
  self.physicalDevices = physicalDevices;
  return self;
}
       
fn VkPhysicalDeviceGroupProperties VkPhysicalDeviceGroupProperties.setSubsetAllocation(self, VkBool32 subsetAllocation) {
  self.subsetAllocation = subsetAllocation;
  return self;
}
       


fn VkDeviceGroupDeviceCreateInfo deviceGroupDeviceCreateInfoBuilder() {
  VkDeviceGroupDeviceCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupDeviceCreateInfo VkDeviceGroupDeviceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupDeviceCreateInfo VkDeviceGroupDeviceCreateInfo.setPhysicalDeviceCount(self, uint physicalDeviceCount) {
  self.physicalDeviceCount = physicalDeviceCount;
  return self;
}
       
fn VkDeviceGroupDeviceCreateInfo VkDeviceGroupDeviceCreateInfo.setPhysicalDevices(self, VkPhysicalDevice[] pPhysicalDevices) {
  self.physicalDeviceCount = (uint)pPhysicalDevices.len;
  self.pPhysicalDevices = &pPhysicalDevices[0];
  return self;
}



fn VkBufferMemoryRequirementsInfo2 bufferMemoryRequirementsInfo2Builder() {
  VkBufferMemoryRequirementsInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferMemoryRequirementsInfo2 VkBufferMemoryRequirementsInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferMemoryRequirementsInfo2 VkBufferMemoryRequirementsInfo2.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn VkImageMemoryRequirementsInfo2 imageMemoryRequirementsInfo2Builder() {
  VkImageMemoryRequirementsInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageMemoryRequirementsInfo2 VkImageMemoryRequirementsInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageMemoryRequirementsInfo2 VkImageMemoryRequirementsInfo2.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       


fn VkImageSparseMemoryRequirementsInfo2 imageSparseMemoryRequirementsInfo2Builder() {
  VkImageSparseMemoryRequirementsInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageSparseMemoryRequirementsInfo2 VkImageSparseMemoryRequirementsInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageSparseMemoryRequirementsInfo2 VkImageSparseMemoryRequirementsInfo2.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       


fn VkMemoryRequirements2 memoryRequirements2Builder() {
  VkMemoryRequirements2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryRequirements2 VkMemoryRequirements2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryRequirements2 VkMemoryRequirements2.setMemoryRequirements(self, VkMemoryRequirements memoryRequirements) {
  self.memoryRequirements = memoryRequirements;
  return self;
}
       


fn VkSparseImageMemoryRequirements2 sparseImageMemoryRequirements2Builder() {
  VkSparseImageMemoryRequirements2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSparseImageMemoryRequirements2 VkSparseImageMemoryRequirements2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSparseImageMemoryRequirements2 VkSparseImageMemoryRequirements2.setMemoryRequirements(self, VkSparseImageMemoryRequirements memoryRequirements) {
  self.memoryRequirements = memoryRequirements;
  return self;
}
       


fn VkPhysicalDeviceFeatures2 physicalDeviceFeatures2Builder() {
  VkPhysicalDeviceFeatures2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceFeatures2 VkPhysicalDeviceFeatures2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceFeatures2 VkPhysicalDeviceFeatures2.setFeatures(self, VkPhysicalDeviceFeatures features) {
  self.features = features;
  return self;
}
       


fn VkPhysicalDeviceProperties2 physicalDeviceProperties2Builder() {
  VkPhysicalDeviceProperties2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceProperties2 VkPhysicalDeviceProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceProperties2 VkPhysicalDeviceProperties2.setProperties(self, VkPhysicalDeviceProperties properties) {
  self.properties = properties;
  return self;
}
       


fn VkFormatProperties2 formatProperties2Builder() {
  VkFormatProperties2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkFormatProperties2 VkFormatProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkFormatProperties2 VkFormatProperties2.setFormatProperties(self, VkFormatProperties formatProperties) {
  self.formatProperties = formatProperties;
  return self;
}
       


fn VkImageFormatProperties2 imageFormatProperties2Builder() {
  VkImageFormatProperties2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageFormatProperties2 VkImageFormatProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageFormatProperties2 VkImageFormatProperties2.setImageFormatProperties(self, VkImageFormatProperties imageFormatProperties) {
  self.imageFormatProperties = imageFormatProperties;
  return self;
}
       


fn VkPhysicalDeviceImageFormatInfo2 physicalDeviceImageFormatInfo2Builder() {
  VkPhysicalDeviceImageFormatInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceImageFormatInfo2 VkPhysicalDeviceImageFormatInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceImageFormatInfo2 VkPhysicalDeviceImageFormatInfo2.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkPhysicalDeviceImageFormatInfo2 VkPhysicalDeviceImageFormatInfo2.setType(self, VkImageType type) {
  self.type = type;
  return self;
}
       
fn VkPhysicalDeviceImageFormatInfo2 VkPhysicalDeviceImageFormatInfo2.setTiling(self, VkImageTiling tiling) {
  self.tiling = tiling;
  return self;
}
       
fn VkPhysicalDeviceImageFormatInfo2 VkPhysicalDeviceImageFormatInfo2.setUsage(self, VkImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn VkPhysicalDeviceImageFormatInfo2 VkPhysicalDeviceImageFormatInfo2.setFlags(self, VkImageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn VkQueueFamilyProperties2 queueFamilyProperties2Builder() {
  VkQueueFamilyProperties2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkQueueFamilyProperties2 VkQueueFamilyProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkQueueFamilyProperties2 VkQueueFamilyProperties2.setQueueFamilyProperties(self, VkQueueFamilyProperties queueFamilyProperties) {
  self.queueFamilyProperties = queueFamilyProperties;
  return self;
}
       


fn VkPhysicalDeviceMemoryProperties2 physicalDeviceMemoryProperties2Builder() {
  VkPhysicalDeviceMemoryProperties2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceMemoryProperties2 VkPhysicalDeviceMemoryProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceMemoryProperties2 VkPhysicalDeviceMemoryProperties2.setMemoryProperties(self, VkPhysicalDeviceMemoryProperties memoryProperties) {
  self.memoryProperties = memoryProperties;
  return self;
}
       


fn VkSparseImageFormatProperties2 sparseImageFormatProperties2Builder() {
  VkSparseImageFormatProperties2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSparseImageFormatProperties2 VkSparseImageFormatProperties2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSparseImageFormatProperties2 VkSparseImageFormatProperties2.setProperties(self, VkSparseImageFormatProperties properties) {
  self.properties = properties;
  return self;
}
       


fn VkPhysicalDeviceSparseImageFormatInfo2 physicalDeviceSparseImageFormatInfo2Builder() {
  VkPhysicalDeviceSparseImageFormatInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSparseImageFormatInfo2 VkPhysicalDeviceSparseImageFormatInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSparseImageFormatInfo2 VkPhysicalDeviceSparseImageFormatInfo2.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkPhysicalDeviceSparseImageFormatInfo2 VkPhysicalDeviceSparseImageFormatInfo2.setType(self, VkImageType type) {
  self.type = type;
  return self;
}
       
fn VkPhysicalDeviceSparseImageFormatInfo2 VkPhysicalDeviceSparseImageFormatInfo2.setSamples(self, VkSampleCountFlagBits samples) {
  self.samples = samples;
  return self;
}
       
fn VkPhysicalDeviceSparseImageFormatInfo2 VkPhysicalDeviceSparseImageFormatInfo2.setUsage(self, VkImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn VkPhysicalDeviceSparseImageFormatInfo2 VkPhysicalDeviceSparseImageFormatInfo2.setTiling(self, VkImageTiling tiling) {
  self.tiling = tiling;
  return self;
}
       


fn VkPhysicalDevicePointClippingProperties physicalDevicePointClippingPropertiesBuilder() {
  VkPhysicalDevicePointClippingProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevicePointClippingProperties VkPhysicalDevicePointClippingProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevicePointClippingProperties VkPhysicalDevicePointClippingProperties.setPointClippingBehavior(self, VkPointClippingBehavior pointClippingBehavior) {
  self.pointClippingBehavior = pointClippingBehavior;
  return self;
}
       


fn VkRenderPassInputAttachmentAspectCreateInfo renderPassInputAttachmentAspectCreateInfoBuilder() {
  VkRenderPassInputAttachmentAspectCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderPassInputAttachmentAspectCreateInfo VkRenderPassInputAttachmentAspectCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderPassInputAttachmentAspectCreateInfo VkRenderPassInputAttachmentAspectCreateInfo.setAspectReferenceCount(self, uint aspectReferenceCount) {
  self.aspectReferenceCount = aspectReferenceCount;
  return self;
}
       
fn VkRenderPassInputAttachmentAspectCreateInfo VkRenderPassInputAttachmentAspectCreateInfo.setAspectReferences(self, VkInputAttachmentAspectReference[] pAspectReferences) {
  self.aspectReferenceCount = (uint)pAspectReferences.len;
  self.pAspectReferences = &pAspectReferences[0];
  return self;
}



fn VkImageViewUsageCreateInfo imageViewUsageCreateInfoBuilder() {
  VkImageViewUsageCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageViewUsageCreateInfo VkImageViewUsageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageViewUsageCreateInfo VkImageViewUsageCreateInfo.setUsage(self, VkImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       


fn VkPipelineTessellationDomainOriginStateCreateInfo pipelineTessellationDomainOriginStateCreateInfoBuilder() {
  VkPipelineTessellationDomainOriginStateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineTessellationDomainOriginStateCreateInfo VkPipelineTessellationDomainOriginStateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineTessellationDomainOriginStateCreateInfo VkPipelineTessellationDomainOriginStateCreateInfo.setDomainOrigin(self, VkTessellationDomainOrigin domainOrigin) {
  self.domainOrigin = domainOrigin;
  return self;
}
       


fn VkRenderPassMultiviewCreateInfo renderPassMultiviewCreateInfoBuilder() {
  VkRenderPassMultiviewCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setViewMasks(self, uint[] pViewMasks) {
  self.subpassCount = (uint)pViewMasks.len;
  self.pViewMasks = &pViewMasks[0];
  return self;
}

fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setViewOffsets(self, int[] pViewOffsets) {
  self.dependencyCount = (uint)pViewOffsets.len;
  self.pViewOffsets = &pViewOffsets[0];
  return self;
}

fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setCorrelationMaskCount(self, uint correlationMaskCount) {
  self.correlationMaskCount = correlationMaskCount;
  return self;
}
       
fn VkRenderPassMultiviewCreateInfo VkRenderPassMultiviewCreateInfo.setCorrelationMasks(self, uint[] pCorrelationMasks) {
  self.correlationMaskCount = (uint)pCorrelationMasks.len;
  self.pCorrelationMasks = &pCorrelationMasks[0];
  return self;
}



fn VkPhysicalDeviceMultiviewFeatures physicalDeviceMultiviewFeaturesBuilder() {
  VkPhysicalDeviceMultiviewFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceMultiviewFeatures VkPhysicalDeviceMultiviewFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceMultiviewFeatures VkPhysicalDeviceMultiviewFeatures.setMultiview(self, VkBool32 multiview) {
  self.multiview = multiview;
  return self;
}
       
fn VkPhysicalDeviceMultiviewFeatures VkPhysicalDeviceMultiviewFeatures.setMultiviewGeometryShader(self, VkBool32 multiviewGeometryShader) {
  self.multiviewGeometryShader = multiviewGeometryShader;
  return self;
}
       
fn VkPhysicalDeviceMultiviewFeatures VkPhysicalDeviceMultiviewFeatures.setMultiviewTessellationShader(self, VkBool32 multiviewTessellationShader) {
  self.multiviewTessellationShader = multiviewTessellationShader;
  return self;
}
       


fn VkPhysicalDeviceMultiviewProperties physicalDeviceMultiviewPropertiesBuilder() {
  VkPhysicalDeviceMultiviewProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceMultiviewProperties VkPhysicalDeviceMultiviewProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceMultiviewProperties VkPhysicalDeviceMultiviewProperties.setMaxMultiviewViewCount(self, uint maxMultiviewViewCount) {
  self.maxMultiviewViewCount = maxMultiviewViewCount;
  return self;
}
       
fn VkPhysicalDeviceMultiviewProperties VkPhysicalDeviceMultiviewProperties.setMaxMultiviewInstanceIndex(self, uint maxMultiviewInstanceIndex) {
  self.maxMultiviewInstanceIndex = maxMultiviewInstanceIndex;
  return self;
}
       


fn VkPhysicalDeviceVariablePointersFeatures physicalDeviceVariablePointersFeaturesBuilder() {
  VkPhysicalDeviceVariablePointersFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceVariablePointersFeatures VkPhysicalDeviceVariablePointersFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceVariablePointersFeatures VkPhysicalDeviceVariablePointersFeatures.setVariablePointersStorageBuffer(self, VkBool32 variablePointersStorageBuffer) {
  self.variablePointersStorageBuffer = variablePointersStorageBuffer;
  return self;
}
       
fn VkPhysicalDeviceVariablePointersFeatures VkPhysicalDeviceVariablePointersFeatures.setVariablePointers(self, VkBool32 variablePointers) {
  self.variablePointers = variablePointers;
  return self;
}
       


fn VkPhysicalDeviceProtectedMemoryFeatures physicalDeviceProtectedMemoryFeaturesBuilder() {
  VkPhysicalDeviceProtectedMemoryFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceProtectedMemoryFeatures VkPhysicalDeviceProtectedMemoryFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceProtectedMemoryFeatures VkPhysicalDeviceProtectedMemoryFeatures.setProtectedMemory(self, VkBool32 protectedMemory) {
  self.protectedMemory = protectedMemory;
  return self;
}
       


fn VkPhysicalDeviceProtectedMemoryProperties physicalDeviceProtectedMemoryPropertiesBuilder() {
  VkPhysicalDeviceProtectedMemoryProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceProtectedMemoryProperties VkPhysicalDeviceProtectedMemoryProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceProtectedMemoryProperties VkPhysicalDeviceProtectedMemoryProperties.setProtectedNoFault(self, VkBool32 protectedNoFault) {
  self.protectedNoFault = protectedNoFault;
  return self;
}
       


fn VkDeviceQueueInfo2 deviceQueueInfo2Builder() {
  VkDeviceQueueInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceQueueInfo2 VkDeviceQueueInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceQueueInfo2 VkDeviceQueueInfo2.setFlags(self, VkDeviceQueueCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkDeviceQueueInfo2 VkDeviceQueueInfo2.setQueueFamilyIndex(self, uint queueFamilyIndex) {
  self.queueFamilyIndex = queueFamilyIndex;
  return self;
}
       
fn VkDeviceQueueInfo2 VkDeviceQueueInfo2.setQueueIndex(self, uint queueIndex) {
  self.queueIndex = queueIndex;
  return self;
}
       


fn VkProtectedSubmitInfo protectedSubmitInfoBuilder() {
  VkProtectedSubmitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkProtectedSubmitInfo VkProtectedSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkProtectedSubmitInfo VkProtectedSubmitInfo.setProtectedSubmit(self, VkBool32 protectedSubmit) {
  self.protectedSubmit = protectedSubmit;
  return self;
}
       


fn VkSamplerYcbcrConversionCreateInfo samplerYcbcrConversionCreateInfoBuilder() {
  VkSamplerYcbcrConversionCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setYcbcrModel(self, VkSamplerYcbcrModelConversion ycbcrModel) {
  self.ycbcrModel = ycbcrModel;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setYcbcrRange(self, VkSamplerYcbcrRange ycbcrRange) {
  self.ycbcrRange = ycbcrRange;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setComponents(self, VkComponentMapping components) {
  self.components = components;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setXChromaOffset(self, VkChromaLocation xChromaOffset) {
  self.xChromaOffset = xChromaOffset;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setYChromaOffset(self, VkChromaLocation yChromaOffset) {
  self.yChromaOffset = yChromaOffset;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setChromaFilter(self, VkFilter chromaFilter) {
  self.chromaFilter = chromaFilter;
  return self;
}
       
fn VkSamplerYcbcrConversionCreateInfo VkSamplerYcbcrConversionCreateInfo.setForceExplicitReconstruction(self, VkBool32 forceExplicitReconstruction) {
  self.forceExplicitReconstruction = forceExplicitReconstruction;
  return self;
}
       


fn VkSamplerYcbcrConversionInfo samplerYcbcrConversionInfoBuilder() {
  VkSamplerYcbcrConversionInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSamplerYcbcrConversionInfo VkSamplerYcbcrConversionInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSamplerYcbcrConversionInfo VkSamplerYcbcrConversionInfo.setConversion(self, VkSamplerYcbcrConversion conversion) {
  self.conversion = conversion;
  return self;
}
       


fn VkBindImagePlaneMemoryInfo bindImagePlaneMemoryInfoBuilder() {
  VkBindImagePlaneMemoryInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindImagePlaneMemoryInfo VkBindImagePlaneMemoryInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindImagePlaneMemoryInfo VkBindImagePlaneMemoryInfo.setPlaneAspect(self, VkImageAspectFlagBits planeAspect) {
  self.planeAspect = planeAspect;
  return self;
}
       


fn VkImagePlaneMemoryRequirementsInfo imagePlaneMemoryRequirementsInfoBuilder() {
  VkImagePlaneMemoryRequirementsInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImagePlaneMemoryRequirementsInfo VkImagePlaneMemoryRequirementsInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImagePlaneMemoryRequirementsInfo VkImagePlaneMemoryRequirementsInfo.setPlaneAspect(self, VkImageAspectFlagBits planeAspect) {
  self.planeAspect = planeAspect;
  return self;
}
       


fn VkPhysicalDeviceSamplerYcbcrConversionFeatures physicalDeviceSamplerYcbcrConversionFeaturesBuilder() {
  VkPhysicalDeviceSamplerYcbcrConversionFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSamplerYcbcrConversionFeatures VkPhysicalDeviceSamplerYcbcrConversionFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSamplerYcbcrConversionFeatures VkPhysicalDeviceSamplerYcbcrConversionFeatures.setSamplerYcbcrConversion(self, VkBool32 samplerYcbcrConversion) {
  self.samplerYcbcrConversion = samplerYcbcrConversion;
  return self;
}
       


fn VkSamplerYcbcrConversionImageFormatProperties samplerYcbcrConversionImageFormatPropertiesBuilder() {
  VkSamplerYcbcrConversionImageFormatProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSamplerYcbcrConversionImageFormatProperties VkSamplerYcbcrConversionImageFormatProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSamplerYcbcrConversionImageFormatProperties VkSamplerYcbcrConversionImageFormatProperties.setCombinedImageSamplerDescriptorCount(self, uint combinedImageSamplerDescriptorCount) {
  self.combinedImageSamplerDescriptorCount = combinedImageSamplerDescriptorCount;
  return self;
}
       


fn VkDescriptorUpdateTemplateCreateInfo descriptorUpdateTemplateCreateInfoBuilder() {
  VkDescriptorUpdateTemplateCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setFlags(self, VkDescriptorUpdateTemplateCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setDescriptorUpdateEntryCount(self, uint descriptorUpdateEntryCount) {
  self.descriptorUpdateEntryCount = descriptorUpdateEntryCount;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setDescriptorUpdateEntries(self, VkDescriptorUpdateTemplateEntry[] pDescriptorUpdateEntries) {
  self.descriptorUpdateEntryCount = (uint)pDescriptorUpdateEntries.len;
  self.pDescriptorUpdateEntries = &pDescriptorUpdateEntries[0];
  return self;
}

fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setTemplateType(self, VkDescriptorUpdateTemplateType templateType) {
  self.templateType = templateType;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setDescriptorSetLayout(self, VkDescriptorSetLayout descriptorSetLayout) {
  self.descriptorSetLayout = descriptorSetLayout;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setPipelineBindPoint(self, VkPipelineBindPoint pipelineBindPoint) {
  self.pipelineBindPoint = pipelineBindPoint;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setPipelineLayout(self, VkPipelineLayout pipelineLayout) {
  self.pipelineLayout = pipelineLayout;
  return self;
}
       
fn VkDescriptorUpdateTemplateCreateInfo VkDescriptorUpdateTemplateCreateInfo.setSet(self, uint set) {
  self.set = set;
  return self;
}
       


fn VkPhysicalDeviceExternalImageFormatInfo physicalDeviceExternalImageFormatInfoBuilder() {
  VkPhysicalDeviceExternalImageFormatInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceExternalImageFormatInfo VkPhysicalDeviceExternalImageFormatInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceExternalImageFormatInfo VkPhysicalDeviceExternalImageFormatInfo.setHandleType(self, VkExternalMemoryHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn VkExternalImageFormatProperties externalImageFormatPropertiesBuilder() {
  VkExternalImageFormatProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExternalImageFormatProperties VkExternalImageFormatProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExternalImageFormatProperties VkExternalImageFormatProperties.setExternalMemoryProperties(self, VkExternalMemoryProperties externalMemoryProperties) {
  self.externalMemoryProperties = externalMemoryProperties;
  return self;
}
       


fn VkPhysicalDeviceExternalBufferInfo physicalDeviceExternalBufferInfoBuilder() {
  VkPhysicalDeviceExternalBufferInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceExternalBufferInfo VkPhysicalDeviceExternalBufferInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceExternalBufferInfo VkPhysicalDeviceExternalBufferInfo.setFlags(self, VkBufferCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkPhysicalDeviceExternalBufferInfo VkPhysicalDeviceExternalBufferInfo.setUsage(self, VkBufferUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn VkPhysicalDeviceExternalBufferInfo VkPhysicalDeviceExternalBufferInfo.setHandleType(self, VkExternalMemoryHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn VkExternalBufferProperties externalBufferPropertiesBuilder() {
  VkExternalBufferProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExternalBufferProperties VkExternalBufferProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExternalBufferProperties VkExternalBufferProperties.setExternalMemoryProperties(self, VkExternalMemoryProperties externalMemoryProperties) {
  self.externalMemoryProperties = externalMemoryProperties;
  return self;
}
       


fn VkPhysicalDeviceIDProperties physicalDeviceIDPropertiesBuilder() {
  VkPhysicalDeviceIDProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceIDProperties VkPhysicalDeviceIDProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceIDProperties VkPhysicalDeviceIDProperties.setDeviceUUID(self, uint[VK_UUID_SIZE] deviceUUID) {
  self.deviceUUID = deviceUUID;
  return self;
}
       
fn VkPhysicalDeviceIDProperties VkPhysicalDeviceIDProperties.setDriverUUID(self, uint[VK_UUID_SIZE] driverUUID) {
  self.driverUUID = driverUUID;
  return self;
}
       
fn VkPhysicalDeviceIDProperties VkPhysicalDeviceIDProperties.setDeviceLUID(self, uint[VK_LUID_SIZE] deviceLUID) {
  self.deviceLUID = deviceLUID;
  return self;
}
       
fn VkPhysicalDeviceIDProperties VkPhysicalDeviceIDProperties.setDeviceNodeMask(self, uint deviceNodeMask) {
  self.deviceNodeMask = deviceNodeMask;
  return self;
}
       
fn VkPhysicalDeviceIDProperties VkPhysicalDeviceIDProperties.setDeviceLUIDValid(self, VkBool32 deviceLUIDValid) {
  self.deviceLUIDValid = deviceLUIDValid;
  return self;
}
       


fn VkExternalMemoryImageCreateInfo externalMemoryImageCreateInfoBuilder() {
  VkExternalMemoryImageCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExternalMemoryImageCreateInfo VkExternalMemoryImageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExternalMemoryImageCreateInfo VkExternalMemoryImageCreateInfo.setHandleTypes(self, VkExternalMemoryHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn VkExternalMemoryBufferCreateInfo externalMemoryBufferCreateInfoBuilder() {
  VkExternalMemoryBufferCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExternalMemoryBufferCreateInfo VkExternalMemoryBufferCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExternalMemoryBufferCreateInfo VkExternalMemoryBufferCreateInfo.setHandleTypes(self, VkExternalMemoryHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn VkExportMemoryAllocateInfo exportMemoryAllocateInfoBuilder() {
  VkExportMemoryAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExportMemoryAllocateInfo VkExportMemoryAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExportMemoryAllocateInfo VkExportMemoryAllocateInfo.setHandleTypes(self, VkExternalMemoryHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn VkPhysicalDeviceExternalFenceInfo physicalDeviceExternalFenceInfoBuilder() {
  VkPhysicalDeviceExternalFenceInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceExternalFenceInfo VkPhysicalDeviceExternalFenceInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceExternalFenceInfo VkPhysicalDeviceExternalFenceInfo.setHandleType(self, VkExternalFenceHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn VkExternalFenceProperties externalFencePropertiesBuilder() {
  VkExternalFenceProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExternalFenceProperties VkExternalFenceProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExternalFenceProperties VkExternalFenceProperties.setExportFromImportedHandleTypes(self, VkExternalFenceHandleTypeFlags exportFromImportedHandleTypes) {
  self.exportFromImportedHandleTypes = exportFromImportedHandleTypes;
  return self;
}
       
fn VkExternalFenceProperties VkExternalFenceProperties.setCompatibleHandleTypes(self, VkExternalFenceHandleTypeFlags compatibleHandleTypes) {
  self.compatibleHandleTypes = compatibleHandleTypes;
  return self;
}
       
fn VkExternalFenceProperties VkExternalFenceProperties.setExternalFenceFeatures(self, VkExternalFenceFeatureFlags externalFenceFeatures) {
  self.externalFenceFeatures = externalFenceFeatures;
  return self;
}
       


fn VkExportFenceCreateInfo exportFenceCreateInfoBuilder() {
  VkExportFenceCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExportFenceCreateInfo VkExportFenceCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExportFenceCreateInfo VkExportFenceCreateInfo.setHandleTypes(self, VkExternalFenceHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn VkExportSemaphoreCreateInfo exportSemaphoreCreateInfoBuilder() {
  VkExportSemaphoreCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExportSemaphoreCreateInfo VkExportSemaphoreCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExportSemaphoreCreateInfo VkExportSemaphoreCreateInfo.setHandleTypes(self, VkExternalSemaphoreHandleTypeFlags handleTypes) {
  self.handleTypes = handleTypes;
  return self;
}
       


fn VkPhysicalDeviceExternalSemaphoreInfo physicalDeviceExternalSemaphoreInfoBuilder() {
  VkPhysicalDeviceExternalSemaphoreInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceExternalSemaphoreInfo VkPhysicalDeviceExternalSemaphoreInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceExternalSemaphoreInfo VkPhysicalDeviceExternalSemaphoreInfo.setHandleType(self, VkExternalSemaphoreHandleTypeFlagBits handleType) {
  self.handleType = handleType;
  return self;
}
       


fn VkExternalSemaphoreProperties externalSemaphorePropertiesBuilder() {
  VkExternalSemaphoreProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkExternalSemaphoreProperties VkExternalSemaphoreProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkExternalSemaphoreProperties VkExternalSemaphoreProperties.setExportFromImportedHandleTypes(self, VkExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes) {
  self.exportFromImportedHandleTypes = exportFromImportedHandleTypes;
  return self;
}
       
fn VkExternalSemaphoreProperties VkExternalSemaphoreProperties.setCompatibleHandleTypes(self, VkExternalSemaphoreHandleTypeFlags compatibleHandleTypes) {
  self.compatibleHandleTypes = compatibleHandleTypes;
  return self;
}
       
fn VkExternalSemaphoreProperties VkExternalSemaphoreProperties.setExternalSemaphoreFeatures(self, VkExternalSemaphoreFeatureFlags externalSemaphoreFeatures) {
  self.externalSemaphoreFeatures = externalSemaphoreFeatures;
  return self;
}
       


fn VkPhysicalDeviceMaintenance3Properties physicalDeviceMaintenance3PropertiesBuilder() {
  VkPhysicalDeviceMaintenance3Properties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceMaintenance3Properties VkPhysicalDeviceMaintenance3Properties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceMaintenance3Properties VkPhysicalDeviceMaintenance3Properties.setMaxPerSetDescriptors(self, uint maxPerSetDescriptors) {
  self.maxPerSetDescriptors = maxPerSetDescriptors;
  return self;
}
       
fn VkPhysicalDeviceMaintenance3Properties VkPhysicalDeviceMaintenance3Properties.setMaxMemoryAllocationSize(self, VkDeviceSize maxMemoryAllocationSize) {
  self.maxMemoryAllocationSize = maxMemoryAllocationSize;
  return self;
}
       


fn VkDescriptorSetLayoutSupport descriptorSetLayoutSupportBuilder() {
  VkDescriptorSetLayoutSupport defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorSetLayoutSupport VkDescriptorSetLayoutSupport.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorSetLayoutSupport VkDescriptorSetLayoutSupport.setSupported(self, VkBool32 supported) {
  self.supported = supported;
  return self;
}
       


fn VkPhysicalDeviceShaderDrawParametersFeatures physicalDeviceShaderDrawParametersFeaturesBuilder() {
  VkPhysicalDeviceShaderDrawParametersFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderDrawParametersFeatures VkPhysicalDeviceShaderDrawParametersFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderDrawParametersFeatures VkPhysicalDeviceShaderDrawParametersFeatures.setShaderDrawParameters(self, VkBool32 shaderDrawParameters) {
  self.shaderDrawParameters = shaderDrawParameters;
  return self;
}
       


fn VkImageFormatListCreateInfo imageFormatListCreateInfoBuilder() {
  VkImageFormatListCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageFormatListCreateInfo VkImageFormatListCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageFormatListCreateInfo VkImageFormatListCreateInfo.setViewFormatCount(self, uint viewFormatCount) {
  self.viewFormatCount = viewFormatCount;
  return self;
}
       
fn VkImageFormatListCreateInfo VkImageFormatListCreateInfo.setViewFormats(self, VkFormat[] pViewFormats) {
  self.viewFormatCount = (uint)pViewFormats.len;
  self.pViewFormats = &pViewFormats[0];
  return self;
}



fn VkRenderPassCreateInfo2 renderPassCreateInfo2Builder() {
  VkRenderPassCreateInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setFlags(self, VkRenderPassCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setAttachments(self, VkAttachmentDescription2[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}

fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setSubpassCount(self, uint subpassCount) {
  self.subpassCount = subpassCount;
  return self;
}
       
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setSubpasses(self, VkSubpassDescription2[] pSubpasses) {
  self.subpassCount = (uint)pSubpasses.len;
  self.pSubpasses = &pSubpasses[0];
  return self;
}

fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setDependencyCount(self, uint dependencyCount) {
  self.dependencyCount = dependencyCount;
  return self;
}
       
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setDependencies(self, VkSubpassDependency2[] pDependencies) {
  self.dependencyCount = (uint)pDependencies.len;
  self.pDependencies = &pDependencies[0];
  return self;
}

fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setCorrelatedViewMaskCount(self, uint correlatedViewMaskCount) {
  self.correlatedViewMaskCount = correlatedViewMaskCount;
  return self;
}
       
fn VkRenderPassCreateInfo2 VkRenderPassCreateInfo2.setCorrelatedViewMasks(self, uint[] pCorrelatedViewMasks) {
  self.correlatedViewMaskCount = (uint)pCorrelatedViewMasks.len;
  self.pCorrelatedViewMasks = &pCorrelatedViewMasks[0];
  return self;
}



fn VkAttachmentDescription2 attachmentDescription2Builder() {
  VkAttachmentDescription2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkAttachmentDescription2 VkAttachmentDescription2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setFlags(self, VkAttachmentDescriptionFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setFormat(self, VkFormat format) {
  self.format = format;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setSamples(self, VkSampleCountFlagBits samples) {
  self.samples = samples;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setLoadOp(self, VkAttachmentLoadOp loadOp) {
  self.loadOp = loadOp;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setStoreOp(self, VkAttachmentStoreOp storeOp) {
  self.storeOp = storeOp;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setStencilLoadOp(self, VkAttachmentLoadOp stencilLoadOp) {
  self.stencilLoadOp = stencilLoadOp;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setStencilStoreOp(self, VkAttachmentStoreOp stencilStoreOp) {
  self.stencilStoreOp = stencilStoreOp;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setInitialLayout(self, VkImageLayout initialLayout) {
  self.initialLayout = initialLayout;
  return self;
}
       
fn VkAttachmentDescription2 VkAttachmentDescription2.setFinalLayout(self, VkImageLayout finalLayout) {
  self.finalLayout = finalLayout;
  return self;
}
       


fn VkAttachmentReference2 attachmentReference2Builder() {
  VkAttachmentReference2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkAttachmentReference2 VkAttachmentReference2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkAttachmentReference2 VkAttachmentReference2.setAttachment(self, uint attachment) {
  self.attachment = attachment;
  return self;
}
       
fn VkAttachmentReference2 VkAttachmentReference2.setLayout(self, VkImageLayout layout) {
  self.layout = layout;
  return self;
}
       
fn VkAttachmentReference2 VkAttachmentReference2.setAspectMask(self, VkImageAspectFlags aspectMask) {
  self.aspectMask = aspectMask;
  return self;
}
       


fn VkSubpassDescription2 subpassDescription2Builder() {
  VkSubpassDescription2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubpassDescription2 VkSubpassDescription2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setFlags(self, VkSubpassDescriptionFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setPipelineBindPoint(self, VkPipelineBindPoint pipelineBindPoint) {
  self.pipelineBindPoint = pipelineBindPoint;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setInputAttachmentCount(self, uint inputAttachmentCount) {
  self.inputAttachmentCount = inputAttachmentCount;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setInputAttachments(self, VkAttachmentReference2[] pInputAttachments) {
  self.inputAttachmentCount = (uint)pInputAttachments.len;
  self.pInputAttachments = &pInputAttachments[0];
  return self;
}

fn VkSubpassDescription2 VkSubpassDescription2.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setColorAttachments(self, VkAttachmentReference2[] pColorAttachments) {
  self.colorAttachmentCount = (uint)pColorAttachments.len;
  self.pColorAttachments = &pColorAttachments[0];
  return self;
}

fn VkSubpassDescription2 VkSubpassDescription2.setResolveAttachments(self, VkAttachmentReference2[] pResolveAttachments) {
  self.colorAttachmentCount = (uint)pResolveAttachments.len;
  self.pResolveAttachments = &pResolveAttachments[0];
  return self;
}

fn VkSubpassDescription2 VkSubpassDescription2.setDepthStencilAttachment(self, VkAttachmentReference2* pDepthStencilAttachment) {
  self.pDepthStencilAttachment = pDepthStencilAttachment;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setPreserveAttachmentCount(self, uint preserveAttachmentCount) {
  self.preserveAttachmentCount = preserveAttachmentCount;
  return self;
}
       
fn VkSubpassDescription2 VkSubpassDescription2.setPreserveAttachments(self, uint[] pPreserveAttachments) {
  self.preserveAttachmentCount = (uint)pPreserveAttachments.len;
  self.pPreserveAttachments = &pPreserveAttachments[0];
  return self;
}



fn VkSubpassDependency2 subpassDependency2Builder() {
  VkSubpassDependency2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubpassDependency2 VkSubpassDependency2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setSrcSubpass(self, uint srcSubpass) {
  self.srcSubpass = srcSubpass;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setDstSubpass(self, uint dstSubpass) {
  self.dstSubpass = dstSubpass;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setSrcStageMask(self, VkPipelineStageFlags srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setDstStageMask(self, VkPipelineStageFlags dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setSrcAccessMask(self, VkAccessFlags srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setDstAccessMask(self, VkAccessFlags dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setDependencyFlags(self, VkDependencyFlags dependencyFlags) {
  self.dependencyFlags = dependencyFlags;
  return self;
}
       
fn VkSubpassDependency2 VkSubpassDependency2.setViewOffset(self, int viewOffset) {
  self.viewOffset = viewOffset;
  return self;
}
       


fn VkSubpassBeginInfo subpassBeginInfoBuilder() {
  VkSubpassBeginInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubpassBeginInfo VkSubpassBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSubpassBeginInfo VkSubpassBeginInfo.setContents(self, VkSubpassContents contents) {
  self.contents = contents;
  return self;
}
       


fn VkSubpassEndInfo subpassEndInfoBuilder() {
  VkSubpassEndInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBPASS_END_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubpassEndInfo VkSubpassEndInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       


fn VkPhysicalDevice8BitStorageFeatures physicalDevice8BitStorageFeaturesBuilder() {
  VkPhysicalDevice8BitStorageFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevice8BitStorageFeatures VkPhysicalDevice8BitStorageFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevice8BitStorageFeatures VkPhysicalDevice8BitStorageFeatures.setStorageBuffer8BitAccess(self, VkBool32 storageBuffer8BitAccess) {
  self.storageBuffer8BitAccess = storageBuffer8BitAccess;
  return self;
}
       
fn VkPhysicalDevice8BitStorageFeatures VkPhysicalDevice8BitStorageFeatures.setUniformAndStorageBuffer8BitAccess(self, VkBool32 uniformAndStorageBuffer8BitAccess) {
  self.uniformAndStorageBuffer8BitAccess = uniformAndStorageBuffer8BitAccess;
  return self;
}
       
fn VkPhysicalDevice8BitStorageFeatures VkPhysicalDevice8BitStorageFeatures.setStoragePushConstant8(self, VkBool32 storagePushConstant8) {
  self.storagePushConstant8 = storagePushConstant8;
  return self;
}
       


fn VkPhysicalDeviceDriverProperties physicalDeviceDriverPropertiesBuilder() {
  VkPhysicalDeviceDriverProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceDriverProperties VkPhysicalDeviceDriverProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceDriverProperties VkPhysicalDeviceDriverProperties.setDriverID(self, VkDriverId driverID) {
  self.driverID = driverID;
  return self;
}
       
fn VkPhysicalDeviceDriverProperties VkPhysicalDeviceDriverProperties.setDriverName(self, char[VK_MAX_DRIVER_NAME_SIZE] driverName) {
  self.driverName = driverName;
  return self;
}
       
fn VkPhysicalDeviceDriverProperties VkPhysicalDeviceDriverProperties.setDriverInfo(self, char[VK_MAX_DRIVER_INFO_SIZE] driverInfo) {
  self.driverInfo = driverInfo;
  return self;
}
       
fn VkPhysicalDeviceDriverProperties VkPhysicalDeviceDriverProperties.setConformanceVersion(self, VkConformanceVersion conformanceVersion) {
  self.conformanceVersion = conformanceVersion;
  return self;
}
       


fn VkPhysicalDeviceShaderAtomicInt64Features physicalDeviceShaderAtomicInt64FeaturesBuilder() {
  VkPhysicalDeviceShaderAtomicInt64Features defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderAtomicInt64Features VkPhysicalDeviceShaderAtomicInt64Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderAtomicInt64Features VkPhysicalDeviceShaderAtomicInt64Features.setShaderBufferInt64Atomics(self, VkBool32 shaderBufferInt64Atomics) {
  self.shaderBufferInt64Atomics = shaderBufferInt64Atomics;
  return self;
}
       
fn VkPhysicalDeviceShaderAtomicInt64Features VkPhysicalDeviceShaderAtomicInt64Features.setShaderSharedInt64Atomics(self, VkBool32 shaderSharedInt64Atomics) {
  self.shaderSharedInt64Atomics = shaderSharedInt64Atomics;
  return self;
}
       


fn VkPhysicalDeviceShaderFloat16Int8Features physicalDeviceShaderFloat16Int8FeaturesBuilder() {
  VkPhysicalDeviceShaderFloat16Int8Features defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderFloat16Int8Features VkPhysicalDeviceShaderFloat16Int8Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderFloat16Int8Features VkPhysicalDeviceShaderFloat16Int8Features.setShaderFloat16(self, VkBool32 shaderFloat16) {
  self.shaderFloat16 = shaderFloat16;
  return self;
}
       
fn VkPhysicalDeviceShaderFloat16Int8Features VkPhysicalDeviceShaderFloat16Int8Features.setShaderInt8(self, VkBool32 shaderInt8) {
  self.shaderInt8 = shaderInt8;
  return self;
}
       


fn VkPhysicalDeviceFloatControlsProperties physicalDeviceFloatControlsPropertiesBuilder() {
  VkPhysicalDeviceFloatControlsProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setDenormBehaviorIndependence(self, VkShaderFloatControlsIndependence denormBehaviorIndependence) {
  self.denormBehaviorIndependence = denormBehaviorIndependence;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setRoundingModeIndependence(self, VkShaderFloatControlsIndependence roundingModeIndependence) {
  self.roundingModeIndependence = roundingModeIndependence;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat16(self, VkBool32 shaderSignedZeroInfNanPreserveFloat16) {
  self.shaderSignedZeroInfNanPreserveFloat16 = shaderSignedZeroInfNanPreserveFloat16;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat32(self, VkBool32 shaderSignedZeroInfNanPreserveFloat32) {
  self.shaderSignedZeroInfNanPreserveFloat32 = shaderSignedZeroInfNanPreserveFloat32;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderSignedZeroInfNanPreserveFloat64(self, VkBool32 shaderSignedZeroInfNanPreserveFloat64) {
  self.shaderSignedZeroInfNanPreserveFloat64 = shaderSignedZeroInfNanPreserveFloat64;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat16(self, VkBool32 shaderDenormPreserveFloat16) {
  self.shaderDenormPreserveFloat16 = shaderDenormPreserveFloat16;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat32(self, VkBool32 shaderDenormPreserveFloat32) {
  self.shaderDenormPreserveFloat32 = shaderDenormPreserveFloat32;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderDenormPreserveFloat64(self, VkBool32 shaderDenormPreserveFloat64) {
  self.shaderDenormPreserveFloat64 = shaderDenormPreserveFloat64;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat16(self, VkBool32 shaderDenormFlushToZeroFloat16) {
  self.shaderDenormFlushToZeroFloat16 = shaderDenormFlushToZeroFloat16;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat32(self, VkBool32 shaderDenormFlushToZeroFloat32) {
  self.shaderDenormFlushToZeroFloat32 = shaderDenormFlushToZeroFloat32;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderDenormFlushToZeroFloat64(self, VkBool32 shaderDenormFlushToZeroFloat64) {
  self.shaderDenormFlushToZeroFloat64 = shaderDenormFlushToZeroFloat64;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat16(self, VkBool32 shaderRoundingModeRTEFloat16) {
  self.shaderRoundingModeRTEFloat16 = shaderRoundingModeRTEFloat16;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat32(self, VkBool32 shaderRoundingModeRTEFloat32) {
  self.shaderRoundingModeRTEFloat32 = shaderRoundingModeRTEFloat32;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTEFloat64(self, VkBool32 shaderRoundingModeRTEFloat64) {
  self.shaderRoundingModeRTEFloat64 = shaderRoundingModeRTEFloat64;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat16(self, VkBool32 shaderRoundingModeRTZFloat16) {
  self.shaderRoundingModeRTZFloat16 = shaderRoundingModeRTZFloat16;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat32(self, VkBool32 shaderRoundingModeRTZFloat32) {
  self.shaderRoundingModeRTZFloat32 = shaderRoundingModeRTZFloat32;
  return self;
}
       
fn VkPhysicalDeviceFloatControlsProperties VkPhysicalDeviceFloatControlsProperties.setShaderRoundingModeRTZFloat64(self, VkBool32 shaderRoundingModeRTZFloat64) {
  self.shaderRoundingModeRTZFloat64 = shaderRoundingModeRTZFloat64;
  return self;
}
       


fn VkDescriptorSetLayoutBindingFlagsCreateInfo descriptorSetLayoutBindingFlagsCreateInfoBuilder() {
  VkDescriptorSetLayoutBindingFlagsCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorSetLayoutBindingFlagsCreateInfo VkDescriptorSetLayoutBindingFlagsCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorSetLayoutBindingFlagsCreateInfo VkDescriptorSetLayoutBindingFlagsCreateInfo.setBindingCount(self, uint bindingCount) {
  self.bindingCount = bindingCount;
  return self;
}
       
fn VkDescriptorSetLayoutBindingFlagsCreateInfo VkDescriptorSetLayoutBindingFlagsCreateInfo.setBindingFlags(self, VkDescriptorBindingFlags[] pBindingFlags) {
  self.bindingCount = (uint)pBindingFlags.len;
  self.pBindingFlags = &pBindingFlags[0];
  return self;
}



fn VkPhysicalDeviceDescriptorIndexingFeatures physicalDeviceDescriptorIndexingFeaturesBuilder() {
  VkPhysicalDeviceDescriptorIndexingFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderInputAttachmentArrayDynamicIndexing(self, VkBool32 shaderInputAttachmentArrayDynamicIndexing) {
  self.shaderInputAttachmentArrayDynamicIndexing = shaderInputAttachmentArrayDynamicIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderUniformTexelBufferArrayDynamicIndexing(self, VkBool32 shaderUniformTexelBufferArrayDynamicIndexing) {
  self.shaderUniformTexelBufferArrayDynamicIndexing = shaderUniformTexelBufferArrayDynamicIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderStorageTexelBufferArrayDynamicIndexing(self, VkBool32 shaderStorageTexelBufferArrayDynamicIndexing) {
  self.shaderStorageTexelBufferArrayDynamicIndexing = shaderStorageTexelBufferArrayDynamicIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderUniformBufferArrayNonUniformIndexing(self, VkBool32 shaderUniformBufferArrayNonUniformIndexing) {
  self.shaderUniformBufferArrayNonUniformIndexing = shaderUniformBufferArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderSampledImageArrayNonUniformIndexing(self, VkBool32 shaderSampledImageArrayNonUniformIndexing) {
  self.shaderSampledImageArrayNonUniformIndexing = shaderSampledImageArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderStorageBufferArrayNonUniformIndexing(self, VkBool32 shaderStorageBufferArrayNonUniformIndexing) {
  self.shaderStorageBufferArrayNonUniformIndexing = shaderStorageBufferArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderStorageImageArrayNonUniformIndexing(self, VkBool32 shaderStorageImageArrayNonUniformIndexing) {
  self.shaderStorageImageArrayNonUniformIndexing = shaderStorageImageArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderInputAttachmentArrayNonUniformIndexing(self, VkBool32 shaderInputAttachmentArrayNonUniformIndexing) {
  self.shaderInputAttachmentArrayNonUniformIndexing = shaderInputAttachmentArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderUniformTexelBufferArrayNonUniformIndexing(self, VkBool32 shaderUniformTexelBufferArrayNonUniformIndexing) {
  self.shaderUniformTexelBufferArrayNonUniformIndexing = shaderUniformTexelBufferArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setShaderStorageTexelBufferArrayNonUniformIndexing(self, VkBool32 shaderStorageTexelBufferArrayNonUniformIndexing) {
  self.shaderStorageTexelBufferArrayNonUniformIndexing = shaderStorageTexelBufferArrayNonUniformIndexing;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUniformBufferUpdateAfterBind(self, VkBool32 descriptorBindingUniformBufferUpdateAfterBind) {
  self.descriptorBindingUniformBufferUpdateAfterBind = descriptorBindingUniformBufferUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingSampledImageUpdateAfterBind(self, VkBool32 descriptorBindingSampledImageUpdateAfterBind) {
  self.descriptorBindingSampledImageUpdateAfterBind = descriptorBindingSampledImageUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageImageUpdateAfterBind(self, VkBool32 descriptorBindingStorageImageUpdateAfterBind) {
  self.descriptorBindingStorageImageUpdateAfterBind = descriptorBindingStorageImageUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageBufferUpdateAfterBind(self, VkBool32 descriptorBindingStorageBufferUpdateAfterBind) {
  self.descriptorBindingStorageBufferUpdateAfterBind = descriptorBindingStorageBufferUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUniformTexelBufferUpdateAfterBind(self, VkBool32 descriptorBindingUniformTexelBufferUpdateAfterBind) {
  self.descriptorBindingUniformTexelBufferUpdateAfterBind = descriptorBindingUniformTexelBufferUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingStorageTexelBufferUpdateAfterBind(self, VkBool32 descriptorBindingStorageTexelBufferUpdateAfterBind) {
  self.descriptorBindingStorageTexelBufferUpdateAfterBind = descriptorBindingStorageTexelBufferUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingUpdateUnusedWhilePending(self, VkBool32 descriptorBindingUpdateUnusedWhilePending) {
  self.descriptorBindingUpdateUnusedWhilePending = descriptorBindingUpdateUnusedWhilePending;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingPartiallyBound(self, VkBool32 descriptorBindingPartiallyBound) {
  self.descriptorBindingPartiallyBound = descriptorBindingPartiallyBound;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setDescriptorBindingVariableDescriptorCount(self, VkBool32 descriptorBindingVariableDescriptorCount) {
  self.descriptorBindingVariableDescriptorCount = descriptorBindingVariableDescriptorCount;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingFeatures VkPhysicalDeviceDescriptorIndexingFeatures.setRuntimeDescriptorArray(self, VkBool32 runtimeDescriptorArray) {
  self.runtimeDescriptorArray = runtimeDescriptorArray;
  return self;
}
       


fn VkPhysicalDeviceDescriptorIndexingProperties physicalDeviceDescriptorIndexingPropertiesBuilder() {
  VkPhysicalDeviceDescriptorIndexingProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxUpdateAfterBindDescriptorsInAllPools(self, uint maxUpdateAfterBindDescriptorsInAllPools) {
  self.maxUpdateAfterBindDescriptorsInAllPools = maxUpdateAfterBindDescriptorsInAllPools;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setShaderUniformBufferArrayNonUniformIndexingNative(self, VkBool32 shaderUniformBufferArrayNonUniformIndexingNative) {
  self.shaderUniformBufferArrayNonUniformIndexingNative = shaderUniformBufferArrayNonUniformIndexingNative;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setShaderSampledImageArrayNonUniformIndexingNative(self, VkBool32 shaderSampledImageArrayNonUniformIndexingNative) {
  self.shaderSampledImageArrayNonUniformIndexingNative = shaderSampledImageArrayNonUniformIndexingNative;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setShaderStorageBufferArrayNonUniformIndexingNative(self, VkBool32 shaderStorageBufferArrayNonUniformIndexingNative) {
  self.shaderStorageBufferArrayNonUniformIndexingNative = shaderStorageBufferArrayNonUniformIndexingNative;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setShaderStorageImageArrayNonUniformIndexingNative(self, VkBool32 shaderStorageImageArrayNonUniformIndexingNative) {
  self.shaderStorageImageArrayNonUniformIndexingNative = shaderStorageImageArrayNonUniformIndexingNative;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setShaderInputAttachmentArrayNonUniformIndexingNative(self, VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative) {
  self.shaderInputAttachmentArrayNonUniformIndexingNative = shaderInputAttachmentArrayNonUniformIndexingNative;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setRobustBufferAccessUpdateAfterBind(self, VkBool32 robustBufferAccessUpdateAfterBind) {
  self.robustBufferAccessUpdateAfterBind = robustBufferAccessUpdateAfterBind;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setQuadDivergentImplicitLod(self, VkBool32 quadDivergentImplicitLod) {
  self.quadDivergentImplicitLod = quadDivergentImplicitLod;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindSamplers(self, uint maxPerStageDescriptorUpdateAfterBindSamplers) {
  self.maxPerStageDescriptorUpdateAfterBindSamplers = maxPerStageDescriptorUpdateAfterBindSamplers;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindUniformBuffers(self, uint maxPerStageDescriptorUpdateAfterBindUniformBuffers) {
  self.maxPerStageDescriptorUpdateAfterBindUniformBuffers = maxPerStageDescriptorUpdateAfterBindUniformBuffers;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindStorageBuffers(self, uint maxPerStageDescriptorUpdateAfterBindStorageBuffers) {
  self.maxPerStageDescriptorUpdateAfterBindStorageBuffers = maxPerStageDescriptorUpdateAfterBindStorageBuffers;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindSampledImages(self, uint maxPerStageDescriptorUpdateAfterBindSampledImages) {
  self.maxPerStageDescriptorUpdateAfterBindSampledImages = maxPerStageDescriptorUpdateAfterBindSampledImages;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindStorageImages(self, uint maxPerStageDescriptorUpdateAfterBindStorageImages) {
  self.maxPerStageDescriptorUpdateAfterBindStorageImages = maxPerStageDescriptorUpdateAfterBindStorageImages;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageDescriptorUpdateAfterBindInputAttachments(self, uint maxPerStageDescriptorUpdateAfterBindInputAttachments) {
  self.maxPerStageDescriptorUpdateAfterBindInputAttachments = maxPerStageDescriptorUpdateAfterBindInputAttachments;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxPerStageUpdateAfterBindResources(self, uint maxPerStageUpdateAfterBindResources) {
  self.maxPerStageUpdateAfterBindResources = maxPerStageUpdateAfterBindResources;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindSamplers(self, uint maxDescriptorSetUpdateAfterBindSamplers) {
  self.maxDescriptorSetUpdateAfterBindSamplers = maxDescriptorSetUpdateAfterBindSamplers;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindUniformBuffers(self, uint maxDescriptorSetUpdateAfterBindUniformBuffers) {
  self.maxDescriptorSetUpdateAfterBindUniformBuffers = maxDescriptorSetUpdateAfterBindUniformBuffers;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindUniformBuffersDynamic(self, uint maxDescriptorSetUpdateAfterBindUniformBuffersDynamic) {
  self.maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageBuffers(self, uint maxDescriptorSetUpdateAfterBindStorageBuffers) {
  self.maxDescriptorSetUpdateAfterBindStorageBuffers = maxDescriptorSetUpdateAfterBindStorageBuffers;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageBuffersDynamic(self, uint maxDescriptorSetUpdateAfterBindStorageBuffersDynamic) {
  self.maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindSampledImages(self, uint maxDescriptorSetUpdateAfterBindSampledImages) {
  self.maxDescriptorSetUpdateAfterBindSampledImages = maxDescriptorSetUpdateAfterBindSampledImages;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindStorageImages(self, uint maxDescriptorSetUpdateAfterBindStorageImages) {
  self.maxDescriptorSetUpdateAfterBindStorageImages = maxDescriptorSetUpdateAfterBindStorageImages;
  return self;
}
       
fn VkPhysicalDeviceDescriptorIndexingProperties VkPhysicalDeviceDescriptorIndexingProperties.setMaxDescriptorSetUpdateAfterBindInputAttachments(self, uint maxDescriptorSetUpdateAfterBindInputAttachments) {
  self.maxDescriptorSetUpdateAfterBindInputAttachments = maxDescriptorSetUpdateAfterBindInputAttachments;
  return self;
}
       


fn VkDescriptorSetVariableDescriptorCountAllocateInfo descriptorSetVariableDescriptorCountAllocateInfoBuilder() {
  VkDescriptorSetVariableDescriptorCountAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorSetVariableDescriptorCountAllocateInfo VkDescriptorSetVariableDescriptorCountAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorSetVariableDescriptorCountAllocateInfo VkDescriptorSetVariableDescriptorCountAllocateInfo.setDescriptorSetCount(self, uint descriptorSetCount) {
  self.descriptorSetCount = descriptorSetCount;
  return self;
}
       
fn VkDescriptorSetVariableDescriptorCountAllocateInfo VkDescriptorSetVariableDescriptorCountAllocateInfo.setDescriptorCounts(self, uint[] pDescriptorCounts) {
  self.descriptorSetCount = (uint)pDescriptorCounts.len;
  self.pDescriptorCounts = &pDescriptorCounts[0];
  return self;
}



fn VkDescriptorSetVariableDescriptorCountLayoutSupport descriptorSetVariableDescriptorCountLayoutSupportBuilder() {
  VkDescriptorSetVariableDescriptorCountLayoutSupport defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorSetVariableDescriptorCountLayoutSupport VkDescriptorSetVariableDescriptorCountLayoutSupport.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorSetVariableDescriptorCountLayoutSupport VkDescriptorSetVariableDescriptorCountLayoutSupport.setMaxVariableDescriptorCount(self, uint maxVariableDescriptorCount) {
  self.maxVariableDescriptorCount = maxVariableDescriptorCount;
  return self;
}
       


fn VkSubpassDescriptionDepthStencilResolve subpassDescriptionDepthStencilResolveBuilder() {
  VkSubpassDescriptionDepthStencilResolve defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubpassDescriptionDepthStencilResolve VkSubpassDescriptionDepthStencilResolve.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSubpassDescriptionDepthStencilResolve VkSubpassDescriptionDepthStencilResolve.setDepthResolveMode(self, VkResolveModeFlagBits depthResolveMode) {
  self.depthResolveMode = depthResolveMode;
  return self;
}
       
fn VkSubpassDescriptionDepthStencilResolve VkSubpassDescriptionDepthStencilResolve.setStencilResolveMode(self, VkResolveModeFlagBits stencilResolveMode) {
  self.stencilResolveMode = stencilResolveMode;
  return self;
}
       
fn VkSubpassDescriptionDepthStencilResolve VkSubpassDescriptionDepthStencilResolve.setDepthStencilResolveAttachment(self, VkAttachmentReference2* pDepthStencilResolveAttachment) {
  self.pDepthStencilResolveAttachment = pDepthStencilResolveAttachment;
  return self;
}
       


fn VkPhysicalDeviceDepthStencilResolveProperties physicalDeviceDepthStencilResolvePropertiesBuilder() {
  VkPhysicalDeviceDepthStencilResolveProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceDepthStencilResolveProperties VkPhysicalDeviceDepthStencilResolveProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceDepthStencilResolveProperties VkPhysicalDeviceDepthStencilResolveProperties.setSupportedDepthResolveModes(self, VkResolveModeFlags supportedDepthResolveModes) {
  self.supportedDepthResolveModes = supportedDepthResolveModes;
  return self;
}
       
fn VkPhysicalDeviceDepthStencilResolveProperties VkPhysicalDeviceDepthStencilResolveProperties.setSupportedStencilResolveModes(self, VkResolveModeFlags supportedStencilResolveModes) {
  self.supportedStencilResolveModes = supportedStencilResolveModes;
  return self;
}
       
fn VkPhysicalDeviceDepthStencilResolveProperties VkPhysicalDeviceDepthStencilResolveProperties.setIndependentResolveNone(self, VkBool32 independentResolveNone) {
  self.independentResolveNone = independentResolveNone;
  return self;
}
       
fn VkPhysicalDeviceDepthStencilResolveProperties VkPhysicalDeviceDepthStencilResolveProperties.setIndependentResolve(self, VkBool32 independentResolve) {
  self.independentResolve = independentResolve;
  return self;
}
       


fn VkPhysicalDeviceScalarBlockLayoutFeatures physicalDeviceScalarBlockLayoutFeaturesBuilder() {
  VkPhysicalDeviceScalarBlockLayoutFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceScalarBlockLayoutFeatures VkPhysicalDeviceScalarBlockLayoutFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceScalarBlockLayoutFeatures VkPhysicalDeviceScalarBlockLayoutFeatures.setScalarBlockLayout(self, VkBool32 scalarBlockLayout) {
  self.scalarBlockLayout = scalarBlockLayout;
  return self;
}
       


fn VkImageStencilUsageCreateInfo imageStencilUsageCreateInfoBuilder() {
  VkImageStencilUsageCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageStencilUsageCreateInfo VkImageStencilUsageCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageStencilUsageCreateInfo VkImageStencilUsageCreateInfo.setStencilUsage(self, VkImageUsageFlags stencilUsage) {
  self.stencilUsage = stencilUsage;
  return self;
}
       


fn VkSamplerReductionModeCreateInfo samplerReductionModeCreateInfoBuilder() {
  VkSamplerReductionModeCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSamplerReductionModeCreateInfo VkSamplerReductionModeCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSamplerReductionModeCreateInfo VkSamplerReductionModeCreateInfo.setReductionMode(self, VkSamplerReductionMode reductionMode) {
  self.reductionMode = reductionMode;
  return self;
}
       


fn VkPhysicalDeviceSamplerFilterMinmaxProperties physicalDeviceSamplerFilterMinmaxPropertiesBuilder() {
  VkPhysicalDeviceSamplerFilterMinmaxProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSamplerFilterMinmaxProperties VkPhysicalDeviceSamplerFilterMinmaxProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSamplerFilterMinmaxProperties VkPhysicalDeviceSamplerFilterMinmaxProperties.setFilterMinmaxSingleComponentFormats(self, VkBool32 filterMinmaxSingleComponentFormats) {
  self.filterMinmaxSingleComponentFormats = filterMinmaxSingleComponentFormats;
  return self;
}
       
fn VkPhysicalDeviceSamplerFilterMinmaxProperties VkPhysicalDeviceSamplerFilterMinmaxProperties.setFilterMinmaxImageComponentMapping(self, VkBool32 filterMinmaxImageComponentMapping) {
  self.filterMinmaxImageComponentMapping = filterMinmaxImageComponentMapping;
  return self;
}
       


fn VkPhysicalDeviceVulkanMemoryModelFeatures physicalDeviceVulkanMemoryModelFeaturesBuilder() {
  VkPhysicalDeviceVulkanMemoryModelFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceVulkanMemoryModelFeatures VkPhysicalDeviceVulkanMemoryModelFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceVulkanMemoryModelFeatures VkPhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModel(self, VkBool32 vulkanMemoryModel) {
  self.vulkanMemoryModel = vulkanMemoryModel;
  return self;
}
       
fn VkPhysicalDeviceVulkanMemoryModelFeatures VkPhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModelDeviceScope(self, VkBool32 vulkanMemoryModelDeviceScope) {
  self.vulkanMemoryModelDeviceScope = vulkanMemoryModelDeviceScope;
  return self;
}
       
fn VkPhysicalDeviceVulkanMemoryModelFeatures VkPhysicalDeviceVulkanMemoryModelFeatures.setVulkanMemoryModelAvailabilityVisibilityChains(self, VkBool32 vulkanMemoryModelAvailabilityVisibilityChains) {
  self.vulkanMemoryModelAvailabilityVisibilityChains = vulkanMemoryModelAvailabilityVisibilityChains;
  return self;
}
       


fn VkPhysicalDeviceImagelessFramebufferFeatures physicalDeviceImagelessFramebufferFeaturesBuilder() {
  VkPhysicalDeviceImagelessFramebufferFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceImagelessFramebufferFeatures VkPhysicalDeviceImagelessFramebufferFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceImagelessFramebufferFeatures VkPhysicalDeviceImagelessFramebufferFeatures.setImagelessFramebuffer(self, VkBool32 imagelessFramebuffer) {
  self.imagelessFramebuffer = imagelessFramebuffer;
  return self;
}
       


fn VkFramebufferAttachmentsCreateInfo framebufferAttachmentsCreateInfoBuilder() {
  VkFramebufferAttachmentsCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkFramebufferAttachmentsCreateInfo VkFramebufferAttachmentsCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkFramebufferAttachmentsCreateInfo VkFramebufferAttachmentsCreateInfo.setAttachmentImageInfoCount(self, uint attachmentImageInfoCount) {
  self.attachmentImageInfoCount = attachmentImageInfoCount;
  return self;
}
       
fn VkFramebufferAttachmentsCreateInfo VkFramebufferAttachmentsCreateInfo.setAttachmentImageInfos(self, VkFramebufferAttachmentImageInfo[] pAttachmentImageInfos) {
  self.attachmentImageInfoCount = (uint)pAttachmentImageInfos.len;
  self.pAttachmentImageInfos = &pAttachmentImageInfos[0];
  return self;
}



fn VkFramebufferAttachmentImageInfo framebufferAttachmentImageInfoBuilder() {
  VkFramebufferAttachmentImageInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setFlags(self, VkImageCreateFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setUsage(self, VkImageUsageFlags usage) {
  self.usage = usage;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setWidth(self, uint width) {
  self.width = width;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setHeight(self, uint height) {
  self.height = height;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setLayerCount(self, uint layerCount) {
  self.layerCount = layerCount;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setViewFormatCount(self, uint viewFormatCount) {
  self.viewFormatCount = viewFormatCount;
  return self;
}
       
fn VkFramebufferAttachmentImageInfo VkFramebufferAttachmentImageInfo.setViewFormats(self, VkFormat[] pViewFormats) {
  self.viewFormatCount = (uint)pViewFormats.len;
  self.pViewFormats = &pViewFormats[0];
  return self;
}



fn VkRenderPassAttachmentBeginInfo renderPassAttachmentBeginInfoBuilder() {
  VkRenderPassAttachmentBeginInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderPassAttachmentBeginInfo VkRenderPassAttachmentBeginInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderPassAttachmentBeginInfo VkRenderPassAttachmentBeginInfo.setAttachmentCount(self, uint attachmentCount) {
  self.attachmentCount = attachmentCount;
  return self;
}
       
fn VkRenderPassAttachmentBeginInfo VkRenderPassAttachmentBeginInfo.setAttachments(self, VkImageView[] pAttachments) {
  self.attachmentCount = (uint)pAttachments.len;
  self.pAttachments = &pAttachments[0];
  return self;
}



fn VkPhysicalDeviceUniformBufferStandardLayoutFeatures physicalDeviceUniformBufferStandardLayoutFeaturesBuilder() {
  VkPhysicalDeviceUniformBufferStandardLayoutFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceUniformBufferStandardLayoutFeatures VkPhysicalDeviceUniformBufferStandardLayoutFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceUniformBufferStandardLayoutFeatures VkPhysicalDeviceUniformBufferStandardLayoutFeatures.setUniformBufferStandardLayout(self, VkBool32 uniformBufferStandardLayout) {
  self.uniformBufferStandardLayout = uniformBufferStandardLayout;
  return self;
}
       


fn VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures physicalDeviceShaderSubgroupExtendedTypesFeaturesBuilder() {
  VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures.setShaderSubgroupExtendedTypes(self, VkBool32 shaderSubgroupExtendedTypes) {
  self.shaderSubgroupExtendedTypes = shaderSubgroupExtendedTypes;
  return self;
}
       


fn VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures physicalDeviceSeparateDepthStencilLayoutsFeaturesBuilder() {
  VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures.setSeparateDepthStencilLayouts(self, VkBool32 separateDepthStencilLayouts) {
  self.separateDepthStencilLayouts = separateDepthStencilLayouts;
  return self;
}
       


fn VkAttachmentReferenceStencilLayout attachmentReferenceStencilLayoutBuilder() {
  VkAttachmentReferenceStencilLayout defaultValue = {
    .sType = VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkAttachmentReferenceStencilLayout VkAttachmentReferenceStencilLayout.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkAttachmentReferenceStencilLayout VkAttachmentReferenceStencilLayout.setStencilLayout(self, VkImageLayout stencilLayout) {
  self.stencilLayout = stencilLayout;
  return self;
}
       


fn VkAttachmentDescriptionStencilLayout attachmentDescriptionStencilLayoutBuilder() {
  VkAttachmentDescriptionStencilLayout defaultValue = {
    .sType = VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkAttachmentDescriptionStencilLayout VkAttachmentDescriptionStencilLayout.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkAttachmentDescriptionStencilLayout VkAttachmentDescriptionStencilLayout.setStencilInitialLayout(self, VkImageLayout stencilInitialLayout) {
  self.stencilInitialLayout = stencilInitialLayout;
  return self;
}
       
fn VkAttachmentDescriptionStencilLayout VkAttachmentDescriptionStencilLayout.setStencilFinalLayout(self, VkImageLayout stencilFinalLayout) {
  self.stencilFinalLayout = stencilFinalLayout;
  return self;
}
       


fn VkPhysicalDeviceHostQueryResetFeatures physicalDeviceHostQueryResetFeaturesBuilder() {
  VkPhysicalDeviceHostQueryResetFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceHostQueryResetFeatures VkPhysicalDeviceHostQueryResetFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceHostQueryResetFeatures VkPhysicalDeviceHostQueryResetFeatures.setHostQueryReset(self, VkBool32 hostQueryReset) {
  self.hostQueryReset = hostQueryReset;
  return self;
}
       


fn VkPhysicalDeviceTimelineSemaphoreFeatures physicalDeviceTimelineSemaphoreFeaturesBuilder() {
  VkPhysicalDeviceTimelineSemaphoreFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceTimelineSemaphoreFeatures VkPhysicalDeviceTimelineSemaphoreFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceTimelineSemaphoreFeatures VkPhysicalDeviceTimelineSemaphoreFeatures.setTimelineSemaphore(self, VkBool32 timelineSemaphore) {
  self.timelineSemaphore = timelineSemaphore;
  return self;
}
       


fn VkPhysicalDeviceTimelineSemaphoreProperties physicalDeviceTimelineSemaphorePropertiesBuilder() {
  VkPhysicalDeviceTimelineSemaphoreProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceTimelineSemaphoreProperties VkPhysicalDeviceTimelineSemaphoreProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceTimelineSemaphoreProperties VkPhysicalDeviceTimelineSemaphoreProperties.setMaxTimelineSemaphoreValueDifference(self, ulong maxTimelineSemaphoreValueDifference) {
  self.maxTimelineSemaphoreValueDifference = maxTimelineSemaphoreValueDifference;
  return self;
}
       


fn VkSemaphoreTypeCreateInfo semaphoreTypeCreateInfoBuilder() {
  VkSemaphoreTypeCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSemaphoreTypeCreateInfo VkSemaphoreTypeCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSemaphoreTypeCreateInfo VkSemaphoreTypeCreateInfo.setSemaphoreType(self, VkSemaphoreType semaphoreType) {
  self.semaphoreType = semaphoreType;
  return self;
}
       
fn VkSemaphoreTypeCreateInfo VkSemaphoreTypeCreateInfo.setInitialValue(self, ulong initialValue) {
  self.initialValue = initialValue;
  return self;
}
       


fn VkTimelineSemaphoreSubmitInfo timelineSemaphoreSubmitInfoBuilder() {
  VkTimelineSemaphoreSubmitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkTimelineSemaphoreSubmitInfo VkTimelineSemaphoreSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkTimelineSemaphoreSubmitInfo VkTimelineSemaphoreSubmitInfo.setWaitSemaphoreValueCount(self, uint waitSemaphoreValueCount) {
  self.waitSemaphoreValueCount = waitSemaphoreValueCount;
  return self;
}
       
fn VkTimelineSemaphoreSubmitInfo VkTimelineSemaphoreSubmitInfo.setWaitSemaphoreValues(self, ulong[] pWaitSemaphoreValues) {
  self.waitSemaphoreValueCount = (uint)pWaitSemaphoreValues.len;
  self.pWaitSemaphoreValues = &pWaitSemaphoreValues[0];
  return self;
}

fn VkTimelineSemaphoreSubmitInfo VkTimelineSemaphoreSubmitInfo.setSignalSemaphoreValueCount(self, uint signalSemaphoreValueCount) {
  self.signalSemaphoreValueCount = signalSemaphoreValueCount;
  return self;
}
       
fn VkTimelineSemaphoreSubmitInfo VkTimelineSemaphoreSubmitInfo.setSignalSemaphoreValues(self, ulong[] pSignalSemaphoreValues) {
  self.signalSemaphoreValueCount = (uint)pSignalSemaphoreValues.len;
  self.pSignalSemaphoreValues = &pSignalSemaphoreValues[0];
  return self;
}



fn VkSemaphoreWaitInfo semaphoreWaitInfoBuilder() {
  VkSemaphoreWaitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSemaphoreWaitInfo VkSemaphoreWaitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSemaphoreWaitInfo VkSemaphoreWaitInfo.setFlags(self, VkSemaphoreWaitFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkSemaphoreWaitInfo VkSemaphoreWaitInfo.setSemaphoreCount(self, uint semaphoreCount) {
  self.semaphoreCount = semaphoreCount;
  return self;
}
       
fn VkSemaphoreWaitInfo VkSemaphoreWaitInfo.setSemaphores(self, VkSemaphore[] pSemaphores) {
  self.semaphoreCount = (uint)pSemaphores.len;
  self.pSemaphores = &pSemaphores[0];
  return self;
}

fn VkSemaphoreWaitInfo VkSemaphoreWaitInfo.setValues(self, ulong[] pValues) {
  self.semaphoreCount = (uint)pValues.len;
  self.pValues = &pValues[0];
  return self;
}



fn VkSemaphoreSignalInfo semaphoreSignalInfoBuilder() {
  VkSemaphoreSignalInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSemaphoreSignalInfo VkSemaphoreSignalInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSemaphoreSignalInfo VkSemaphoreSignalInfo.setSemaphore(self, VkSemaphore semaphore) {
  self.semaphore = semaphore;
  return self;
}
       
fn VkSemaphoreSignalInfo VkSemaphoreSignalInfo.setValue(self, ulong value) {
  self.value = value;
  return self;
}
       


fn VkPhysicalDeviceBufferDeviceAddressFeatures physicalDeviceBufferDeviceAddressFeaturesBuilder() {
  VkPhysicalDeviceBufferDeviceAddressFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceBufferDeviceAddressFeatures VkPhysicalDeviceBufferDeviceAddressFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceBufferDeviceAddressFeatures VkPhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddress(self, VkBool32 bufferDeviceAddress) {
  self.bufferDeviceAddress = bufferDeviceAddress;
  return self;
}
       
fn VkPhysicalDeviceBufferDeviceAddressFeatures VkPhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddressCaptureReplay(self, VkBool32 bufferDeviceAddressCaptureReplay) {
  self.bufferDeviceAddressCaptureReplay = bufferDeviceAddressCaptureReplay;
  return self;
}
       
fn VkPhysicalDeviceBufferDeviceAddressFeatures VkPhysicalDeviceBufferDeviceAddressFeatures.setBufferDeviceAddressMultiDevice(self, VkBool32 bufferDeviceAddressMultiDevice) {
  self.bufferDeviceAddressMultiDevice = bufferDeviceAddressMultiDevice;
  return self;
}
       


fn VkBufferDeviceAddressInfo bufferDeviceAddressInfoBuilder() {
  VkBufferDeviceAddressInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferDeviceAddressInfo VkBufferDeviceAddressInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferDeviceAddressInfo VkBufferDeviceAddressInfo.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       


fn VkBufferOpaqueCaptureAddressCreateInfo bufferOpaqueCaptureAddressCreateInfoBuilder() {
  VkBufferOpaqueCaptureAddressCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferOpaqueCaptureAddressCreateInfo VkBufferOpaqueCaptureAddressCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferOpaqueCaptureAddressCreateInfo VkBufferOpaqueCaptureAddressCreateInfo.setOpaqueCaptureAddress(self, ulong opaqueCaptureAddress) {
  self.opaqueCaptureAddress = opaqueCaptureAddress;
  return self;
}
       


fn VkMemoryOpaqueCaptureAddressAllocateInfo memoryOpaqueCaptureAddressAllocateInfoBuilder() {
  VkMemoryOpaqueCaptureAddressAllocateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryOpaqueCaptureAddressAllocateInfo VkMemoryOpaqueCaptureAddressAllocateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryOpaqueCaptureAddressAllocateInfo VkMemoryOpaqueCaptureAddressAllocateInfo.setOpaqueCaptureAddress(self, ulong opaqueCaptureAddress) {
  self.opaqueCaptureAddress = opaqueCaptureAddress;
  return self;
}
       


fn VkDeviceMemoryOpaqueCaptureAddressInfo deviceMemoryOpaqueCaptureAddressInfoBuilder() {
  VkDeviceMemoryOpaqueCaptureAddressInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceMemoryOpaqueCaptureAddressInfo VkDeviceMemoryOpaqueCaptureAddressInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceMemoryOpaqueCaptureAddressInfo VkDeviceMemoryOpaqueCaptureAddressInfo.setMemory(self, VkDeviceMemory memory) {
  self.memory = memory;
  return self;
}
       


fn VkPhysicalDeviceShaderTerminateInvocationFeatures physicalDeviceShaderTerminateInvocationFeaturesBuilder() {
  VkPhysicalDeviceShaderTerminateInvocationFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderTerminateInvocationFeatures VkPhysicalDeviceShaderTerminateInvocationFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderTerminateInvocationFeatures VkPhysicalDeviceShaderTerminateInvocationFeatures.setShaderTerminateInvocation(self, VkBool32 shaderTerminateInvocation) {
  self.shaderTerminateInvocation = shaderTerminateInvocation;
  return self;
}
       


fn VkPhysicalDeviceToolProperties physicalDeviceToolPropertiesBuilder() {
  VkPhysicalDeviceToolProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceToolProperties VkPhysicalDeviceToolProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceToolProperties VkPhysicalDeviceToolProperties.setName(self, char[VK_MAX_EXTENSION_NAME_SIZE] name) {
  self.name = name;
  return self;
}
       
fn VkPhysicalDeviceToolProperties VkPhysicalDeviceToolProperties.setVersion(self, char[VK_MAX_EXTENSION_NAME_SIZE] version) {
  self.version = version;
  return self;
}
       
fn VkPhysicalDeviceToolProperties VkPhysicalDeviceToolProperties.setPurposes(self, VkToolPurposeFlags purposes) {
  self.purposes = purposes;
  return self;
}
       
fn VkPhysicalDeviceToolProperties VkPhysicalDeviceToolProperties.setDescription(self, char[VK_MAX_DESCRIPTION_SIZE] description) {
  self.description = description;
  return self;
}
       
fn VkPhysicalDeviceToolProperties VkPhysicalDeviceToolProperties.setLayer(self, char[VK_MAX_EXTENSION_NAME_SIZE] layer) {
  self.layer = layer;
  return self;
}
       


fn VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures physicalDeviceShaderDemoteToHelperInvocationFeaturesBuilder() {
  VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures.setShaderDemoteToHelperInvocation(self, VkBool32 shaderDemoteToHelperInvocation) {
  self.shaderDemoteToHelperInvocation = shaderDemoteToHelperInvocation;
  return self;
}
       


fn VkPhysicalDevicePrivateDataFeatures physicalDevicePrivateDataFeaturesBuilder() {
  VkPhysicalDevicePrivateDataFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevicePrivateDataFeatures VkPhysicalDevicePrivateDataFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevicePrivateDataFeatures VkPhysicalDevicePrivateDataFeatures.setPrivateData(self, VkBool32 privateData) {
  self.privateData = privateData;
  return self;
}
       


fn VkDevicePrivateDataCreateInfo devicePrivateDataCreateInfoBuilder() {
  VkDevicePrivateDataCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDevicePrivateDataCreateInfo VkDevicePrivateDataCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDevicePrivateDataCreateInfo VkDevicePrivateDataCreateInfo.setPrivateDataSlotRequestCount(self, uint privateDataSlotRequestCount) {
  self.privateDataSlotRequestCount = privateDataSlotRequestCount;
  return self;
}
       


fn VkPrivateDataSlotCreateInfo privateDataSlotCreateInfoBuilder() {
  VkPrivateDataSlotCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPrivateDataSlotCreateInfo VkPrivateDataSlotCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPrivateDataSlotCreateInfo VkPrivateDataSlotCreateInfo.setFlags(self, VkPrivateDataSlotCreateFlags flags) {
  self.flags = flags;
  return self;
}
       


fn VkPhysicalDevicePipelineCreationCacheControlFeatures physicalDevicePipelineCreationCacheControlFeaturesBuilder() {
  VkPhysicalDevicePipelineCreationCacheControlFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevicePipelineCreationCacheControlFeatures VkPhysicalDevicePipelineCreationCacheControlFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevicePipelineCreationCacheControlFeatures VkPhysicalDevicePipelineCreationCacheControlFeatures.setPipelineCreationCacheControl(self, VkBool32 pipelineCreationCacheControl) {
  self.pipelineCreationCacheControl = pipelineCreationCacheControl;
  return self;
}
       


fn VkMemoryBarrier2 memoryBarrier2Builder() {
  VkMemoryBarrier2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkMemoryBarrier2 VkMemoryBarrier2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkMemoryBarrier2 VkMemoryBarrier2.setSrcStageMask(self, VkPipelineStageFlags2 srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn VkMemoryBarrier2 VkMemoryBarrier2.setSrcAccessMask(self, VkAccessFlags2 srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkMemoryBarrier2 VkMemoryBarrier2.setDstStageMask(self, VkPipelineStageFlags2 dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn VkMemoryBarrier2 VkMemoryBarrier2.setDstAccessMask(self, VkAccessFlags2 dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       


fn VkBufferMemoryBarrier2 bufferMemoryBarrier2Builder() {
  VkBufferMemoryBarrier2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setSrcStageMask(self, VkPipelineStageFlags2 srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setSrcAccessMask(self, VkAccessFlags2 srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setDstStageMask(self, VkPipelineStageFlags2 dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setDstAccessMask(self, VkAccessFlags2 dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setBuffer(self, VkBuffer buffer) {
  self.buffer = buffer;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setOffset(self, VkDeviceSize offset) {
  self.offset = offset;
  return self;
}
       
fn VkBufferMemoryBarrier2 VkBufferMemoryBarrier2.setSize(self, VkDeviceSize size) {
  self.size = size;
  return self;
}
       


fn VkImageMemoryBarrier2 imageMemoryBarrier2Builder() {
  VkImageMemoryBarrier2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setSrcStageMask(self, VkPipelineStageFlags2 srcStageMask) {
  self.srcStageMask = srcStageMask;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setSrcAccessMask(self, VkAccessFlags2 srcAccessMask) {
  self.srcAccessMask = srcAccessMask;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setDstStageMask(self, VkPipelineStageFlags2 dstStageMask) {
  self.dstStageMask = dstStageMask;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setDstAccessMask(self, VkAccessFlags2 dstAccessMask) {
  self.dstAccessMask = dstAccessMask;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setOldLayout(self, VkImageLayout oldLayout) {
  self.oldLayout = oldLayout;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setNewLayout(self, VkImageLayout newLayout) {
  self.newLayout = newLayout;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setSrcQueueFamilyIndex(self, uint srcQueueFamilyIndex) {
  self.srcQueueFamilyIndex = srcQueueFamilyIndex;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setDstQueueFamilyIndex(self, uint dstQueueFamilyIndex) {
  self.dstQueueFamilyIndex = dstQueueFamilyIndex;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setImage(self, VkImage image) {
  self.image = image;
  return self;
}
       
fn VkImageMemoryBarrier2 VkImageMemoryBarrier2.setSubresourceRange(self, VkImageSubresourceRange subresourceRange) {
  self.subresourceRange = subresourceRange;
  return self;
}
       


fn VkDependencyInfo dependencyInfoBuilder() {
  VkDependencyInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEPENDENCY_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDependencyInfo VkDependencyInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDependencyInfo VkDependencyInfo.setDependencyFlags(self, VkDependencyFlags dependencyFlags) {
  self.dependencyFlags = dependencyFlags;
  return self;
}
       
fn VkDependencyInfo VkDependencyInfo.setMemoryBarrierCount(self, uint memoryBarrierCount) {
  self.memoryBarrierCount = memoryBarrierCount;
  return self;
}
       
fn VkDependencyInfo VkDependencyInfo.setMemoryBarriers(self, VkMemoryBarrier2[] pMemoryBarriers) {
  self.memoryBarrierCount = (uint)pMemoryBarriers.len;
  self.pMemoryBarriers = &pMemoryBarriers[0];
  return self;
}

fn VkDependencyInfo VkDependencyInfo.setBufferMemoryBarrierCount(self, uint bufferMemoryBarrierCount) {
  self.bufferMemoryBarrierCount = bufferMemoryBarrierCount;
  return self;
}
       
fn VkDependencyInfo VkDependencyInfo.setBufferMemoryBarriers(self, VkBufferMemoryBarrier2[] pBufferMemoryBarriers) {
  self.bufferMemoryBarrierCount = (uint)pBufferMemoryBarriers.len;
  self.pBufferMemoryBarriers = &pBufferMemoryBarriers[0];
  return self;
}

fn VkDependencyInfo VkDependencyInfo.setImageMemoryBarrierCount(self, uint imageMemoryBarrierCount) {
  self.imageMemoryBarrierCount = imageMemoryBarrierCount;
  return self;
}
       
fn VkDependencyInfo VkDependencyInfo.setImageMemoryBarriers(self, VkImageMemoryBarrier2[] pImageMemoryBarriers) {
  self.imageMemoryBarrierCount = (uint)pImageMemoryBarriers.len;
  self.pImageMemoryBarriers = &pImageMemoryBarriers[0];
  return self;
}



fn VkSubmitInfo2 submitInfo2Builder() {
  VkSubmitInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SUBMIT_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSubmitInfo2 VkSubmitInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSubmitInfo2 VkSubmitInfo2.setFlags(self, VkSubmitFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkSubmitInfo2 VkSubmitInfo2.setWaitSemaphoreInfoCount(self, uint waitSemaphoreInfoCount) {
  self.waitSemaphoreInfoCount = waitSemaphoreInfoCount;
  return self;
}
       
fn VkSubmitInfo2 VkSubmitInfo2.setWaitSemaphoreInfos(self, VkSemaphoreSubmitInfo[] pWaitSemaphoreInfos) {
  self.waitSemaphoreInfoCount = (uint)pWaitSemaphoreInfos.len;
  self.pWaitSemaphoreInfos = &pWaitSemaphoreInfos[0];
  return self;
}

fn VkSubmitInfo2 VkSubmitInfo2.setCommandBufferInfoCount(self, uint commandBufferInfoCount) {
  self.commandBufferInfoCount = commandBufferInfoCount;
  return self;
}
       
fn VkSubmitInfo2 VkSubmitInfo2.setCommandBufferInfos(self, VkCommandBufferSubmitInfo[] pCommandBufferInfos) {
  self.commandBufferInfoCount = (uint)pCommandBufferInfos.len;
  self.pCommandBufferInfos = &pCommandBufferInfos[0];
  return self;
}

fn VkSubmitInfo2 VkSubmitInfo2.setSignalSemaphoreInfoCount(self, uint signalSemaphoreInfoCount) {
  self.signalSemaphoreInfoCount = signalSemaphoreInfoCount;
  return self;
}
       
fn VkSubmitInfo2 VkSubmitInfo2.setSignalSemaphoreInfos(self, VkSemaphoreSubmitInfo[] pSignalSemaphoreInfos) {
  self.signalSemaphoreInfoCount = (uint)pSignalSemaphoreInfos.len;
  self.pSignalSemaphoreInfos = &pSignalSemaphoreInfos[0];
  return self;
}



fn VkSemaphoreSubmitInfo semaphoreSubmitInfoBuilder() {
  VkSemaphoreSubmitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSemaphoreSubmitInfo VkSemaphoreSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSemaphoreSubmitInfo VkSemaphoreSubmitInfo.setSemaphore(self, VkSemaphore semaphore) {
  self.semaphore = semaphore;
  return self;
}
       
fn VkSemaphoreSubmitInfo VkSemaphoreSubmitInfo.setValue(self, ulong value) {
  self.value = value;
  return self;
}
       
fn VkSemaphoreSubmitInfo VkSemaphoreSubmitInfo.setStageMask(self, VkPipelineStageFlags2 stageMask) {
  self.stageMask = stageMask;
  return self;
}
       
fn VkSemaphoreSubmitInfo VkSemaphoreSubmitInfo.setDeviceIndex(self, uint deviceIndex) {
  self.deviceIndex = deviceIndex;
  return self;
}
       


fn VkCommandBufferSubmitInfo commandBufferSubmitInfoBuilder() {
  VkCommandBufferSubmitInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCommandBufferSubmitInfo VkCommandBufferSubmitInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCommandBufferSubmitInfo VkCommandBufferSubmitInfo.setCommandBuffer(self, VkCommandBuffer commandBuffer) {
  self.commandBuffer = commandBuffer;
  return self;
}
       
fn VkCommandBufferSubmitInfo VkCommandBufferSubmitInfo.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn VkPhysicalDeviceSynchronization2Features physicalDeviceSynchronization2FeaturesBuilder() {
  VkPhysicalDeviceSynchronization2Features defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSynchronization2Features VkPhysicalDeviceSynchronization2Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSynchronization2Features VkPhysicalDeviceSynchronization2Features.setSynchronization2(self, VkBool32 synchronization2) {
  self.synchronization2 = synchronization2;
  return self;
}
       


fn VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures physicalDeviceZeroInitializeWorkgroupMemoryFeaturesBuilder() {
  VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures.setShaderZeroInitializeWorkgroupMemory(self, VkBool32 shaderZeroInitializeWorkgroupMemory) {
  self.shaderZeroInitializeWorkgroupMemory = shaderZeroInitializeWorkgroupMemory;
  return self;
}
       


fn VkPhysicalDeviceImageRobustnessFeatures physicalDeviceImageRobustnessFeaturesBuilder() {
  VkPhysicalDeviceImageRobustnessFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceImageRobustnessFeatures VkPhysicalDeviceImageRobustnessFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceImageRobustnessFeatures VkPhysicalDeviceImageRobustnessFeatures.setRobustImageAccess(self, VkBool32 robustImageAccess) {
  self.robustImageAccess = robustImageAccess;
  return self;
}
       


fn VkCopyBufferInfo2 copyBufferInfo2Builder() {
  VkCopyBufferInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCopyBufferInfo2 VkCopyBufferInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCopyBufferInfo2 VkCopyBufferInfo2.setSrcBuffer(self, VkBuffer srcBuffer) {
  self.srcBuffer = srcBuffer;
  return self;
}
       
fn VkCopyBufferInfo2 VkCopyBufferInfo2.setDstBuffer(self, VkBuffer dstBuffer) {
  self.dstBuffer = dstBuffer;
  return self;
}
       
fn VkCopyBufferInfo2 VkCopyBufferInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn VkCopyBufferInfo2 VkCopyBufferInfo2.setRegions(self, VkBufferCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn VkCopyImageInfo2 copyImageInfo2Builder() {
  VkCopyImageInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCopyImageInfo2 VkCopyImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCopyImageInfo2 VkCopyImageInfo2.setSrcImage(self, VkImage srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn VkCopyImageInfo2 VkCopyImageInfo2.setSrcImageLayout(self, VkImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn VkCopyImageInfo2 VkCopyImageInfo2.setDstImage(self, VkImage dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn VkCopyImageInfo2 VkCopyImageInfo2.setDstImageLayout(self, VkImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn VkCopyImageInfo2 VkCopyImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn VkCopyImageInfo2 VkCopyImageInfo2.setRegions(self, VkImageCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn VkCopyBufferToImageInfo2 copyBufferToImageInfo2Builder() {
  VkCopyBufferToImageInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCopyBufferToImageInfo2 VkCopyBufferToImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCopyBufferToImageInfo2 VkCopyBufferToImageInfo2.setSrcBuffer(self, VkBuffer srcBuffer) {
  self.srcBuffer = srcBuffer;
  return self;
}
       
fn VkCopyBufferToImageInfo2 VkCopyBufferToImageInfo2.setDstImage(self, VkImage dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn VkCopyBufferToImageInfo2 VkCopyBufferToImageInfo2.setDstImageLayout(self, VkImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn VkCopyBufferToImageInfo2 VkCopyBufferToImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn VkCopyBufferToImageInfo2 VkCopyBufferToImageInfo2.setRegions(self, VkBufferImageCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn VkCopyImageToBufferInfo2 copyImageToBufferInfo2Builder() {
  VkCopyImageToBufferInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCopyImageToBufferInfo2 VkCopyImageToBufferInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCopyImageToBufferInfo2 VkCopyImageToBufferInfo2.setSrcImage(self, VkImage srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn VkCopyImageToBufferInfo2 VkCopyImageToBufferInfo2.setSrcImageLayout(self, VkImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn VkCopyImageToBufferInfo2 VkCopyImageToBufferInfo2.setDstBuffer(self, VkBuffer dstBuffer) {
  self.dstBuffer = dstBuffer;
  return self;
}
       
fn VkCopyImageToBufferInfo2 VkCopyImageToBufferInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn VkCopyImageToBufferInfo2 VkCopyImageToBufferInfo2.setRegions(self, VkBufferImageCopy2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn VkBlitImageInfo2 blitImageInfo2Builder() {
  VkBlitImageInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBlitImageInfo2 VkBlitImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBlitImageInfo2 VkBlitImageInfo2.setSrcImage(self, VkImage srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn VkBlitImageInfo2 VkBlitImageInfo2.setSrcImageLayout(self, VkImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn VkBlitImageInfo2 VkBlitImageInfo2.setDstImage(self, VkImage dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn VkBlitImageInfo2 VkBlitImageInfo2.setDstImageLayout(self, VkImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn VkBlitImageInfo2 VkBlitImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn VkBlitImageInfo2 VkBlitImageInfo2.setRegions(self, VkImageBlit2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}

fn VkBlitImageInfo2 VkBlitImageInfo2.setFilter(self, VkFilter filter) {
  self.filter = filter;
  return self;
}
       


fn VkResolveImageInfo2 resolveImageInfo2Builder() {
  VkResolveImageInfo2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkResolveImageInfo2 VkResolveImageInfo2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkResolveImageInfo2 VkResolveImageInfo2.setSrcImage(self, VkImage srcImage) {
  self.srcImage = srcImage;
  return self;
}
       
fn VkResolveImageInfo2 VkResolveImageInfo2.setSrcImageLayout(self, VkImageLayout srcImageLayout) {
  self.srcImageLayout = srcImageLayout;
  return self;
}
       
fn VkResolveImageInfo2 VkResolveImageInfo2.setDstImage(self, VkImage dstImage) {
  self.dstImage = dstImage;
  return self;
}
       
fn VkResolveImageInfo2 VkResolveImageInfo2.setDstImageLayout(self, VkImageLayout dstImageLayout) {
  self.dstImageLayout = dstImageLayout;
  return self;
}
       
fn VkResolveImageInfo2 VkResolveImageInfo2.setRegionCount(self, uint regionCount) {
  self.regionCount = regionCount;
  return self;
}
       
fn VkResolveImageInfo2 VkResolveImageInfo2.setRegions(self, VkImageResolve2[] pRegions) {
  self.regionCount = (uint)pRegions.len;
  self.pRegions = &pRegions[0];
  return self;
}



fn VkBufferCopy2 bufferCopy2Builder() {
  VkBufferCopy2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_COPY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferCopy2 VkBufferCopy2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferCopy2 VkBufferCopy2.setSrcOffset(self, VkDeviceSize srcOffset) {
  self.srcOffset = srcOffset;
  return self;
}
       
fn VkBufferCopy2 VkBufferCopy2.setDstOffset(self, VkDeviceSize dstOffset) {
  self.dstOffset = dstOffset;
  return self;
}
       
fn VkBufferCopy2 VkBufferCopy2.setSize(self, VkDeviceSize size) {
  self.size = size;
  return self;
}
       


fn VkImageCopy2 imageCopy2Builder() {
  VkImageCopy2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_COPY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageCopy2 VkImageCopy2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageCopy2 VkImageCopy2.setSrcSubresource(self, VkImageSubresourceLayers srcSubresource) {
  self.srcSubresource = srcSubresource;
  return self;
}
       
fn VkImageCopy2 VkImageCopy2.setSrcOffset(self, VkOffset3D srcOffset) {
  self.srcOffset = srcOffset;
  return self;
}
       
fn VkImageCopy2 VkImageCopy2.setDstSubresource(self, VkImageSubresourceLayers dstSubresource) {
  self.dstSubresource = dstSubresource;
  return self;
}
       
fn VkImageCopy2 VkImageCopy2.setDstOffset(self, VkOffset3D dstOffset) {
  self.dstOffset = dstOffset;
  return self;
}
       
fn VkImageCopy2 VkImageCopy2.setExtent(self, VkExtent3D extent) {
  self.extent = extent;
  return self;
}
       


fn VkImageBlit2 imageBlit2Builder() {
  VkImageBlit2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_BLIT_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageBlit2 VkImageBlit2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageBlit2 VkImageBlit2.setSrcSubresource(self, VkImageSubresourceLayers srcSubresource) {
  self.srcSubresource = srcSubresource;
  return self;
}
       
fn VkImageBlit2 VkImageBlit2.setSrcOffsets(self, VkOffset3D[2] srcOffsets) {
  self.srcOffsets = srcOffsets;
  return self;
}
       
fn VkImageBlit2 VkImageBlit2.setDstSubresource(self, VkImageSubresourceLayers dstSubresource) {
  self.dstSubresource = dstSubresource;
  return self;
}
       
fn VkImageBlit2 VkImageBlit2.setDstOffsets(self, VkOffset3D[2] dstOffsets) {
  self.dstOffsets = dstOffsets;
  return self;
}
       


fn VkBufferImageCopy2 bufferImageCopy2Builder() {
  VkBufferImageCopy2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBufferImageCopy2 VkBufferImageCopy2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBufferImageCopy2 VkBufferImageCopy2.setBufferOffset(self, VkDeviceSize bufferOffset) {
  self.bufferOffset = bufferOffset;
  return self;
}
       
fn VkBufferImageCopy2 VkBufferImageCopy2.setBufferRowLength(self, uint bufferRowLength) {
  self.bufferRowLength = bufferRowLength;
  return self;
}
       
fn VkBufferImageCopy2 VkBufferImageCopy2.setBufferImageHeight(self, uint bufferImageHeight) {
  self.bufferImageHeight = bufferImageHeight;
  return self;
}
       
fn VkBufferImageCopy2 VkBufferImageCopy2.setImageSubresource(self, VkImageSubresourceLayers imageSubresource) {
  self.imageSubresource = imageSubresource;
  return self;
}
       
fn VkBufferImageCopy2 VkBufferImageCopy2.setImageOffset(self, VkOffset3D imageOffset) {
  self.imageOffset = imageOffset;
  return self;
}
       
fn VkBufferImageCopy2 VkBufferImageCopy2.setImageExtent(self, VkExtent3D imageExtent) {
  self.imageExtent = imageExtent;
  return self;
}
       


fn VkImageResolve2 imageResolve2Builder() {
  VkImageResolve2 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageResolve2 VkImageResolve2.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageResolve2 VkImageResolve2.setSrcSubresource(self, VkImageSubresourceLayers srcSubresource) {
  self.srcSubresource = srcSubresource;
  return self;
}
       
fn VkImageResolve2 VkImageResolve2.setSrcOffset(self, VkOffset3D srcOffset) {
  self.srcOffset = srcOffset;
  return self;
}
       
fn VkImageResolve2 VkImageResolve2.setDstSubresource(self, VkImageSubresourceLayers dstSubresource) {
  self.dstSubresource = dstSubresource;
  return self;
}
       
fn VkImageResolve2 VkImageResolve2.setDstOffset(self, VkOffset3D dstOffset) {
  self.dstOffset = dstOffset;
  return self;
}
       
fn VkImageResolve2 VkImageResolve2.setExtent(self, VkExtent3D extent) {
  self.extent = extent;
  return self;
}
       


fn VkPhysicalDeviceSubgroupSizeControlFeatures physicalDeviceSubgroupSizeControlFeaturesBuilder() {
  VkPhysicalDeviceSubgroupSizeControlFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSubgroupSizeControlFeatures VkPhysicalDeviceSubgroupSizeControlFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSubgroupSizeControlFeatures VkPhysicalDeviceSubgroupSizeControlFeatures.setSubgroupSizeControl(self, VkBool32 subgroupSizeControl) {
  self.subgroupSizeControl = subgroupSizeControl;
  return self;
}
       
fn VkPhysicalDeviceSubgroupSizeControlFeatures VkPhysicalDeviceSubgroupSizeControlFeatures.setComputeFullSubgroups(self, VkBool32 computeFullSubgroups) {
  self.computeFullSubgroups = computeFullSubgroups;
  return self;
}
       


fn VkPhysicalDeviceSubgroupSizeControlProperties physicalDeviceSubgroupSizeControlPropertiesBuilder() {
  VkPhysicalDeviceSubgroupSizeControlProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceSubgroupSizeControlProperties VkPhysicalDeviceSubgroupSizeControlProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceSubgroupSizeControlProperties VkPhysicalDeviceSubgroupSizeControlProperties.setMinSubgroupSize(self, uint minSubgroupSize) {
  self.minSubgroupSize = minSubgroupSize;
  return self;
}
       
fn VkPhysicalDeviceSubgroupSizeControlProperties VkPhysicalDeviceSubgroupSizeControlProperties.setMaxSubgroupSize(self, uint maxSubgroupSize) {
  self.maxSubgroupSize = maxSubgroupSize;
  return self;
}
       
fn VkPhysicalDeviceSubgroupSizeControlProperties VkPhysicalDeviceSubgroupSizeControlProperties.setMaxComputeWorkgroupSubgroups(self, uint maxComputeWorkgroupSubgroups) {
  self.maxComputeWorkgroupSubgroups = maxComputeWorkgroupSubgroups;
  return self;
}
       
fn VkPhysicalDeviceSubgroupSizeControlProperties VkPhysicalDeviceSubgroupSizeControlProperties.setRequiredSubgroupSizeStages(self, VkShaderStageFlags requiredSubgroupSizeStages) {
  self.requiredSubgroupSizeStages = requiredSubgroupSizeStages;
  return self;
}
       


fn VkPipelineShaderStageRequiredSubgroupSizeCreateInfo pipelineShaderStageRequiredSubgroupSizeCreateInfoBuilder() {
  VkPipelineShaderStageRequiredSubgroupSizeCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineShaderStageRequiredSubgroupSizeCreateInfo VkPipelineShaderStageRequiredSubgroupSizeCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineShaderStageRequiredSubgroupSizeCreateInfo VkPipelineShaderStageRequiredSubgroupSizeCreateInfo.setRequiredSubgroupSize(self, uint requiredSubgroupSize) {
  self.requiredSubgroupSize = requiredSubgroupSize;
  return self;
}
       


fn VkPhysicalDeviceInlineUniformBlockFeatures physicalDeviceInlineUniformBlockFeaturesBuilder() {
  VkPhysicalDeviceInlineUniformBlockFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceInlineUniformBlockFeatures VkPhysicalDeviceInlineUniformBlockFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockFeatures VkPhysicalDeviceInlineUniformBlockFeatures.setInlineUniformBlock(self, VkBool32 inlineUniformBlock) {
  self.inlineUniformBlock = inlineUniformBlock;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockFeatures VkPhysicalDeviceInlineUniformBlockFeatures.setDescriptorBindingInlineUniformBlockUpdateAfterBind(self, VkBool32 descriptorBindingInlineUniformBlockUpdateAfterBind) {
  self.descriptorBindingInlineUniformBlockUpdateAfterBind = descriptorBindingInlineUniformBlockUpdateAfterBind;
  return self;
}
       


fn VkPhysicalDeviceInlineUniformBlockProperties physicalDeviceInlineUniformBlockPropertiesBuilder() {
  VkPhysicalDeviceInlineUniformBlockProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceInlineUniformBlockProperties VkPhysicalDeviceInlineUniformBlockProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockProperties VkPhysicalDeviceInlineUniformBlockProperties.setMaxInlineUniformBlockSize(self, uint maxInlineUniformBlockSize) {
  self.maxInlineUniformBlockSize = maxInlineUniformBlockSize;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockProperties VkPhysicalDeviceInlineUniformBlockProperties.setMaxPerStageDescriptorInlineUniformBlocks(self, uint maxPerStageDescriptorInlineUniformBlocks) {
  self.maxPerStageDescriptorInlineUniformBlocks = maxPerStageDescriptorInlineUniformBlocks;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockProperties VkPhysicalDeviceInlineUniformBlockProperties.setMaxPerStageDescriptorUpdateAfterBindInlineUniformBlocks(self, uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks) {
  self.maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks = maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockProperties VkPhysicalDeviceInlineUniformBlockProperties.setMaxDescriptorSetInlineUniformBlocks(self, uint maxDescriptorSetInlineUniformBlocks) {
  self.maxDescriptorSetInlineUniformBlocks = maxDescriptorSetInlineUniformBlocks;
  return self;
}
       
fn VkPhysicalDeviceInlineUniformBlockProperties VkPhysicalDeviceInlineUniformBlockProperties.setMaxDescriptorSetUpdateAfterBindInlineUniformBlocks(self, uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks) {
  self.maxDescriptorSetUpdateAfterBindInlineUniformBlocks = maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
  return self;
}
       


fn VkWriteDescriptorSetInlineUniformBlock writeDescriptorSetInlineUniformBlockBuilder() {
  VkWriteDescriptorSetInlineUniformBlock defaultValue = {
    .sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkWriteDescriptorSetInlineUniformBlock VkWriteDescriptorSetInlineUniformBlock.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkWriteDescriptorSetInlineUniformBlock VkWriteDescriptorSetInlineUniformBlock.setDataSize(self, uint dataSize) {
  self.dataSize = dataSize;
  return self;
}
       
fn VkWriteDescriptorSetInlineUniformBlock VkWriteDescriptorSetInlineUniformBlock.setData(self, void* pData) {
  self.pData = pData;
  return self;
}
       


fn VkDescriptorPoolInlineUniformBlockCreateInfo descriptorPoolInlineUniformBlockCreateInfoBuilder() {
  VkDescriptorPoolInlineUniformBlockCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDescriptorPoolInlineUniformBlockCreateInfo VkDescriptorPoolInlineUniformBlockCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDescriptorPoolInlineUniformBlockCreateInfo VkDescriptorPoolInlineUniformBlockCreateInfo.setMaxInlineUniformBlockBindings(self, uint maxInlineUniformBlockBindings) {
  self.maxInlineUniformBlockBindings = maxInlineUniformBlockBindings;
  return self;
}
       


fn VkPhysicalDeviceTextureCompressionASTCHDRFeatures physicalDeviceTextureCompressionASTCHDRFeaturesBuilder() {
  VkPhysicalDeviceTextureCompressionASTCHDRFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceTextureCompressionASTCHDRFeatures VkPhysicalDeviceTextureCompressionASTCHDRFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceTextureCompressionASTCHDRFeatures VkPhysicalDeviceTextureCompressionASTCHDRFeatures.setTextureCompressionASTC_HDR(self, VkBool32 textureCompressionASTC_HDR) {
  self.textureCompressionASTC_HDR = textureCompressionASTC_HDR;
  return self;
}
       


fn VkRenderingInfo renderingInfoBuilder() {
  VkRenderingInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDERING_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderingInfo VkRenderingInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setFlags(self, VkRenderingFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setRenderArea(self, VkRect2D renderArea) {
  self.renderArea = renderArea;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setLayerCount(self, uint layerCount) {
  self.layerCount = layerCount;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setColorAttachments(self, VkRenderingAttachmentInfo[] pColorAttachments) {
  self.colorAttachmentCount = (uint)pColorAttachments.len;
  self.pColorAttachments = &pColorAttachments[0];
  return self;
}

fn VkRenderingInfo VkRenderingInfo.setDepthAttachment(self, VkRenderingAttachmentInfo* pDepthAttachment) {
  self.pDepthAttachment = pDepthAttachment;
  return self;
}
       
fn VkRenderingInfo VkRenderingInfo.setStencilAttachment(self, VkRenderingAttachmentInfo* pStencilAttachment) {
  self.pStencilAttachment = pStencilAttachment;
  return self;
}
       


fn VkRenderingAttachmentInfo renderingAttachmentInfoBuilder() {
  VkRenderingAttachmentInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setImageView(self, VkImageView imageView) {
  self.imageView = imageView;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setImageLayout(self, VkImageLayout imageLayout) {
  self.imageLayout = imageLayout;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setResolveMode(self, VkResolveModeFlagBits resolveMode) {
  self.resolveMode = resolveMode;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setResolveImageView(self, VkImageView resolveImageView) {
  self.resolveImageView = resolveImageView;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setResolveImageLayout(self, VkImageLayout resolveImageLayout) {
  self.resolveImageLayout = resolveImageLayout;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setLoadOp(self, VkAttachmentLoadOp loadOp) {
  self.loadOp = loadOp;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setStoreOp(self, VkAttachmentStoreOp storeOp) {
  self.storeOp = storeOp;
  return self;
}
       
fn VkRenderingAttachmentInfo VkRenderingAttachmentInfo.setClearValue(self, VkClearValue clearValue) {
  self.clearValue = clearValue;
  return self;
}
       


fn VkPipelineRenderingCreateInfo pipelineRenderingCreateInfoBuilder() {
  VkPipelineRenderingCreateInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPipelineRenderingCreateInfo VkPipelineRenderingCreateInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPipelineRenderingCreateInfo VkPipelineRenderingCreateInfo.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn VkPipelineRenderingCreateInfo VkPipelineRenderingCreateInfo.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn VkPipelineRenderingCreateInfo VkPipelineRenderingCreateInfo.setColorAttachmentFormats(self, VkFormat[] pColorAttachmentFormats) {
  self.colorAttachmentCount = (uint)pColorAttachmentFormats.len;
  self.pColorAttachmentFormats = &pColorAttachmentFormats[0];
  return self;
}

fn VkPipelineRenderingCreateInfo VkPipelineRenderingCreateInfo.setDepthAttachmentFormat(self, VkFormat depthAttachmentFormat) {
  self.depthAttachmentFormat = depthAttachmentFormat;
  return self;
}
       
fn VkPipelineRenderingCreateInfo VkPipelineRenderingCreateInfo.setStencilAttachmentFormat(self, VkFormat stencilAttachmentFormat) {
  self.stencilAttachmentFormat = stencilAttachmentFormat;
  return self;
}
       


fn VkPhysicalDeviceDynamicRenderingFeatures physicalDeviceDynamicRenderingFeaturesBuilder() {
  VkPhysicalDeviceDynamicRenderingFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceDynamicRenderingFeatures VkPhysicalDeviceDynamicRenderingFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceDynamicRenderingFeatures VkPhysicalDeviceDynamicRenderingFeatures.setDynamicRendering(self, VkBool32 dynamicRendering) {
  self.dynamicRendering = dynamicRendering;
  return self;
}
       


fn VkCommandBufferInheritanceRenderingInfo commandBufferInheritanceRenderingInfoBuilder() {
  VkCommandBufferInheritanceRenderingInfo defaultValue = {
    .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setFlags(self, VkRenderingFlags flags) {
  self.flags = flags;
  return self;
}
       
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setViewMask(self, uint viewMask) {
  self.viewMask = viewMask;
  return self;
}
       
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setColorAttachmentCount(self, uint colorAttachmentCount) {
  self.colorAttachmentCount = colorAttachmentCount;
  return self;
}
       
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setColorAttachmentFormats(self, VkFormat[] pColorAttachmentFormats) {
  self.colorAttachmentCount = (uint)pColorAttachmentFormats.len;
  self.pColorAttachmentFormats = &pColorAttachmentFormats[0];
  return self;
}

fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setDepthAttachmentFormat(self, VkFormat depthAttachmentFormat) {
  self.depthAttachmentFormat = depthAttachmentFormat;
  return self;
}
       
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setStencilAttachmentFormat(self, VkFormat stencilAttachmentFormat) {
  self.stencilAttachmentFormat = stencilAttachmentFormat;
  return self;
}
       
fn VkCommandBufferInheritanceRenderingInfo VkCommandBufferInheritanceRenderingInfo.setRasterizationSamples(self, VkSampleCountFlagBits rasterizationSamples) {
  self.rasterizationSamples = rasterizationSamples;
  return self;
}
       


fn VkPhysicalDeviceShaderIntegerDotProductFeatures physicalDeviceShaderIntegerDotProductFeaturesBuilder() {
  VkPhysicalDeviceShaderIntegerDotProductFeatures defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderIntegerDotProductFeatures VkPhysicalDeviceShaderIntegerDotProductFeatures.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductFeatures VkPhysicalDeviceShaderIntegerDotProductFeatures.setShaderIntegerDotProduct(self, VkBool32 shaderIntegerDotProduct) {
  self.shaderIntegerDotProduct = shaderIntegerDotProduct;
  return self;
}
       


fn VkPhysicalDeviceShaderIntegerDotProductProperties physicalDeviceShaderIntegerDotProductPropertiesBuilder() {
  VkPhysicalDeviceShaderIntegerDotProductProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitUnsignedAccelerated(self, VkBool32 integerDotProduct8BitUnsignedAccelerated) {
  self.integerDotProduct8BitUnsignedAccelerated = integerDotProduct8BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitSignedAccelerated(self, VkBool32 integerDotProduct8BitSignedAccelerated) {
  self.integerDotProduct8BitSignedAccelerated = integerDotProduct8BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct8BitMixedSignednessAccelerated(self, VkBool32 integerDotProduct8BitMixedSignednessAccelerated) {
  self.integerDotProduct8BitMixedSignednessAccelerated = integerDotProduct8BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedUnsignedAccelerated(self, VkBool32 integerDotProduct4x8BitPackedUnsignedAccelerated) {
  self.integerDotProduct4x8BitPackedUnsignedAccelerated = integerDotProduct4x8BitPackedUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedSignedAccelerated(self, VkBool32 integerDotProduct4x8BitPackedSignedAccelerated) {
  self.integerDotProduct4x8BitPackedSignedAccelerated = integerDotProduct4x8BitPackedSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct4x8BitPackedMixedSignednessAccelerated(self, VkBool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated) {
  self.integerDotProduct4x8BitPackedMixedSignednessAccelerated = integerDotProduct4x8BitPackedMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitUnsignedAccelerated(self, VkBool32 integerDotProduct16BitUnsignedAccelerated) {
  self.integerDotProduct16BitUnsignedAccelerated = integerDotProduct16BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitSignedAccelerated(self, VkBool32 integerDotProduct16BitSignedAccelerated) {
  self.integerDotProduct16BitSignedAccelerated = integerDotProduct16BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct16BitMixedSignednessAccelerated(self, VkBool32 integerDotProduct16BitMixedSignednessAccelerated) {
  self.integerDotProduct16BitMixedSignednessAccelerated = integerDotProduct16BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitUnsignedAccelerated(self, VkBool32 integerDotProduct32BitUnsignedAccelerated) {
  self.integerDotProduct32BitUnsignedAccelerated = integerDotProduct32BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitSignedAccelerated(self, VkBool32 integerDotProduct32BitSignedAccelerated) {
  self.integerDotProduct32BitSignedAccelerated = integerDotProduct32BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct32BitMixedSignednessAccelerated(self, VkBool32 integerDotProduct32BitMixedSignednessAccelerated) {
  self.integerDotProduct32BitMixedSignednessAccelerated = integerDotProduct32BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitUnsignedAccelerated(self, VkBool32 integerDotProduct64BitUnsignedAccelerated) {
  self.integerDotProduct64BitUnsignedAccelerated = integerDotProduct64BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitSignedAccelerated(self, VkBool32 integerDotProduct64BitSignedAccelerated) {
  self.integerDotProduct64BitSignedAccelerated = integerDotProduct64BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProduct64BitMixedSignednessAccelerated(self, VkBool32 integerDotProduct64BitMixedSignednessAccelerated) {
  self.integerDotProduct64BitMixedSignednessAccelerated = integerDotProduct64BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitUnsignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating8BitUnsignedAccelerated = integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitSignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating8BitSignedAccelerated = integerDotProductAccumulatingSaturating8BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitUnsignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating16BitUnsignedAccelerated = integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitSignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating16BitSignedAccelerated = integerDotProductAccumulatingSaturating16BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitUnsignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating32BitUnsignedAccelerated = integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitSignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating32BitSignedAccelerated = integerDotProductAccumulatingSaturating32BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitUnsignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated) {
  self.integerDotProductAccumulatingSaturating64BitUnsignedAccelerated = integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitSignedAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated) {
  self.integerDotProductAccumulatingSaturating64BitSignedAccelerated = integerDotProductAccumulatingSaturating64BitSignedAccelerated;
  return self;
}
       
fn VkPhysicalDeviceShaderIntegerDotProductProperties VkPhysicalDeviceShaderIntegerDotProductProperties.setIntegerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated(self, VkBool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated) {
  self.integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated = integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
  return self;
}
       


fn VkPhysicalDeviceTexelBufferAlignmentProperties physicalDeviceTexelBufferAlignmentPropertiesBuilder() {
  VkPhysicalDeviceTexelBufferAlignmentProperties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceTexelBufferAlignmentProperties VkPhysicalDeviceTexelBufferAlignmentProperties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceTexelBufferAlignmentProperties VkPhysicalDeviceTexelBufferAlignmentProperties.setStorageTexelBufferOffsetAlignmentBytes(self, VkDeviceSize storageTexelBufferOffsetAlignmentBytes) {
  self.storageTexelBufferOffsetAlignmentBytes = storageTexelBufferOffsetAlignmentBytes;
  return self;
}
       
fn VkPhysicalDeviceTexelBufferAlignmentProperties VkPhysicalDeviceTexelBufferAlignmentProperties.setStorageTexelBufferOffsetSingleTexelAlignment(self, VkBool32 storageTexelBufferOffsetSingleTexelAlignment) {
  self.storageTexelBufferOffsetSingleTexelAlignment = storageTexelBufferOffsetSingleTexelAlignment;
  return self;
}
       
fn VkPhysicalDeviceTexelBufferAlignmentProperties VkPhysicalDeviceTexelBufferAlignmentProperties.setUniformTexelBufferOffsetAlignmentBytes(self, VkDeviceSize uniformTexelBufferOffsetAlignmentBytes) {
  self.uniformTexelBufferOffsetAlignmentBytes = uniformTexelBufferOffsetAlignmentBytes;
  return self;
}
       
fn VkPhysicalDeviceTexelBufferAlignmentProperties VkPhysicalDeviceTexelBufferAlignmentProperties.setUniformTexelBufferOffsetSingleTexelAlignment(self, VkBool32 uniformTexelBufferOffsetSingleTexelAlignment) {
  self.uniformTexelBufferOffsetSingleTexelAlignment = uniformTexelBufferOffsetSingleTexelAlignment;
  return self;
}
       


fn VkFormatProperties3 formatProperties3Builder() {
  VkFormatProperties3 defaultValue = {
    .sType = VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkFormatProperties3 VkFormatProperties3.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkFormatProperties3 VkFormatProperties3.setLinearTilingFeatures(self, VkFormatFeatureFlags2 linearTilingFeatures) {
  self.linearTilingFeatures = linearTilingFeatures;
  return self;
}
       
fn VkFormatProperties3 VkFormatProperties3.setOptimalTilingFeatures(self, VkFormatFeatureFlags2 optimalTilingFeatures) {
  self.optimalTilingFeatures = optimalTilingFeatures;
  return self;
}
       
fn VkFormatProperties3 VkFormatProperties3.setBufferFeatures(self, VkFormatFeatureFlags2 bufferFeatures) {
  self.bufferFeatures = bufferFeatures;
  return self;
}
       


fn VkPhysicalDeviceMaintenance4Features physicalDeviceMaintenance4FeaturesBuilder() {
  VkPhysicalDeviceMaintenance4Features defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceMaintenance4Features VkPhysicalDeviceMaintenance4Features.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceMaintenance4Features VkPhysicalDeviceMaintenance4Features.setMaintenance4(self, VkBool32 maintenance4) {
  self.maintenance4 = maintenance4;
  return self;
}
       


fn VkPhysicalDeviceMaintenance4Properties physicalDeviceMaintenance4PropertiesBuilder() {
  VkPhysicalDeviceMaintenance4Properties defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDeviceMaintenance4Properties VkPhysicalDeviceMaintenance4Properties.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDeviceMaintenance4Properties VkPhysicalDeviceMaintenance4Properties.setMaxBufferSize(self, VkDeviceSize maxBufferSize) {
  self.maxBufferSize = maxBufferSize;
  return self;
}
       


fn VkDeviceBufferMemoryRequirements deviceBufferMemoryRequirementsBuilder() {
  VkDeviceBufferMemoryRequirements defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceBufferMemoryRequirements VkDeviceBufferMemoryRequirements.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceBufferMemoryRequirements VkDeviceBufferMemoryRequirements.setCreateInfo(self, VkBufferCreateInfo* pCreateInfo) {
  self.pCreateInfo = pCreateInfo;
  return self;
}
       


fn VkDeviceImageMemoryRequirements deviceImageMemoryRequirementsBuilder() {
  VkDeviceImageMemoryRequirements defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceImageMemoryRequirements VkDeviceImageMemoryRequirements.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceImageMemoryRequirements VkDeviceImageMemoryRequirements.setCreateInfo(self, VkImageCreateInfo* pCreateInfo) {
  self.pCreateInfo = pCreateInfo;
  return self;
}
       
fn VkDeviceImageMemoryRequirements VkDeviceImageMemoryRequirements.setPlaneAspect(self, VkImageAspectFlagBits planeAspect) {
  self.planeAspect = planeAspect;
  return self;
}
       


fn VkXcbSurfaceCreateInfoKHR xcbSurfaceCreateInfoKHRBuilder() {
  VkXcbSurfaceCreateInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkXcbSurfaceCreateInfoKHR VkXcbSurfaceCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkXcbSurfaceCreateInfoKHR VkXcbSurfaceCreateInfoKHR.setFlags(self, VkXcbSurfaceCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn VkXcbSurfaceCreateInfoKHR VkXcbSurfaceCreateInfoKHR.setOnnection(self, void** connection) {
  self.connection = connection;
  return self;
}
       
fn VkXcbSurfaceCreateInfoKHR VkXcbSurfaceCreateInfoKHR.setWindow(self, uint window) {
  self.window = window;
  return self;
}
       


fn VkSwapchainCreateInfoKHR swapchainCreateInfoKHRBuilder() {
  VkSwapchainCreateInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setFlags(self, VkSwapchainCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setSurface(self, VkSurfaceKHR surface) {
  self.surface = surface;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setMinImageCount(self, uint minImageCount) {
  self.minImageCount = minImageCount;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setImageFormat(self, VkFormat imageFormat) {
  self.imageFormat = imageFormat;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setImageColorSpace(self, VkColorSpaceKHR imageColorSpace) {
  self.imageColorSpace = imageColorSpace;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setImageExtent(self, VkExtent2D imageExtent) {
  self.imageExtent = imageExtent;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setImageArrayLayers(self, uint imageArrayLayers) {
  self.imageArrayLayers = imageArrayLayers;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setImageUsage(self, VkImageUsageFlags imageUsage) {
  self.imageUsage = imageUsage;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setImageSharingMode(self, VkSharingMode imageSharingMode) {
  self.imageSharingMode = imageSharingMode;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setQueueFamilyIndexCount(self, uint queueFamilyIndexCount) {
  self.queueFamilyIndexCount = queueFamilyIndexCount;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setQueueFamilyIndices(self, uint[] pQueueFamilyIndices) {
  self.queueFamilyIndexCount = (uint)pQueueFamilyIndices.len;
  self.pQueueFamilyIndices = &pQueueFamilyIndices[0];
  return self;
}

fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setPreTransform(self, VkSurfaceTransformFlagBitsKHR preTransform) {
  self.preTransform = preTransform;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setCompositeAlpha(self, VkCompositeAlphaFlagBitsKHR compositeAlpha) {
  self.compositeAlpha = compositeAlpha;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setPresentMode(self, VkPresentModeKHR presentMode) {
  self.presentMode = presentMode;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setClipped(self, VkBool32 clipped) {
  self.clipped = clipped;
  return self;
}
       
fn VkSwapchainCreateInfoKHR VkSwapchainCreateInfoKHR.setOldSwapchain(self, VkSwapchainKHR oldSwapchain) {
  self.oldSwapchain = oldSwapchain;
  return self;
}
       


fn VkPresentInfoKHR presentInfoKHRBuilder() {
  VkPresentInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPresentInfoKHR VkPresentInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPresentInfoKHR VkPresentInfoKHR.setWaitSemaphoreCount(self, uint waitSemaphoreCount) {
  self.waitSemaphoreCount = waitSemaphoreCount;
  return self;
}
       
fn VkPresentInfoKHR VkPresentInfoKHR.setWaitSemaphores(self, VkSemaphore[] pWaitSemaphores) {
  self.waitSemaphoreCount = (uint)pWaitSemaphores.len;
  self.pWaitSemaphores = &pWaitSemaphores[0];
  return self;
}

fn VkPresentInfoKHR VkPresentInfoKHR.setSwapchainCount(self, uint swapchainCount) {
  self.swapchainCount = swapchainCount;
  return self;
}
       
fn VkPresentInfoKHR VkPresentInfoKHR.setSwapchains(self, VkSwapchainKHR[] pSwapchains) {
  self.swapchainCount = (uint)pSwapchains.len;
  self.pSwapchains = &pSwapchains[0];
  return self;
}

fn VkPresentInfoKHR VkPresentInfoKHR.setImageIndices(self, uint[] pImageIndices) {
  self.swapchainCount = (uint)pImageIndices.len;
  self.pImageIndices = &pImageIndices[0];
  return self;
}

fn VkPresentInfoKHR VkPresentInfoKHR.setResults(self, VkResult[] pResults) {
  self.swapchainCount = (uint)pResults.len;
  self.pResults = &pResults[0];
  return self;
}



fn VkImageSwapchainCreateInfoKHR imageSwapchainCreateInfoKHRBuilder() {
  VkImageSwapchainCreateInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkImageSwapchainCreateInfoKHR VkImageSwapchainCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkImageSwapchainCreateInfoKHR VkImageSwapchainCreateInfoKHR.setSwapchain(self, VkSwapchainKHR swapchain) {
  self.swapchain = swapchain;
  return self;
}
       


fn VkBindImageMemorySwapchainInfoKHR bindImageMemorySwapchainInfoKHRBuilder() {
  VkBindImageMemorySwapchainInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkBindImageMemorySwapchainInfoKHR VkBindImageMemorySwapchainInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkBindImageMemorySwapchainInfoKHR VkBindImageMemorySwapchainInfoKHR.setSwapchain(self, VkSwapchainKHR swapchain) {
  self.swapchain = swapchain;
  return self;
}
       
fn VkBindImageMemorySwapchainInfoKHR VkBindImageMemorySwapchainInfoKHR.setImageIndex(self, uint imageIndex) {
  self.imageIndex = imageIndex;
  return self;
}
       


fn VkAcquireNextImageInfoKHR acquireNextImageInfoKHRBuilder() {
  VkAcquireNextImageInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkAcquireNextImageInfoKHR VkAcquireNextImageInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkAcquireNextImageInfoKHR VkAcquireNextImageInfoKHR.setSwapchain(self, VkSwapchainKHR swapchain) {
  self.swapchain = swapchain;
  return self;
}
       
fn VkAcquireNextImageInfoKHR VkAcquireNextImageInfoKHR.setTimeout(self, ulong timeout) {
  self.timeout = timeout;
  return self;
}
       
fn VkAcquireNextImageInfoKHR VkAcquireNextImageInfoKHR.setSemaphore(self, VkSemaphore semaphore) {
  self.semaphore = semaphore;
  return self;
}
       
fn VkAcquireNextImageInfoKHR VkAcquireNextImageInfoKHR.setFence(self, VkFence fence) {
  self.fence = fence;
  return self;
}
       
fn VkAcquireNextImageInfoKHR VkAcquireNextImageInfoKHR.setDeviceMask(self, uint deviceMask) {
  self.deviceMask = deviceMask;
  return self;
}
       


fn VkDeviceGroupPresentCapabilitiesKHR deviceGroupPresentCapabilitiesKHRBuilder() {
  VkDeviceGroupPresentCapabilitiesKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupPresentCapabilitiesKHR VkDeviceGroupPresentCapabilitiesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupPresentCapabilitiesKHR VkDeviceGroupPresentCapabilitiesKHR.setPresentMask(self, uint[VK_MAX_DEVICE_GROUP_SIZE] presentMask) {
  self.presentMask = presentMask;
  return self;
}
       
fn VkDeviceGroupPresentCapabilitiesKHR VkDeviceGroupPresentCapabilitiesKHR.setModes(self, VkDeviceGroupPresentModeFlagsKHR modes) {
  self.modes = modes;
  return self;
}
       


fn VkDeviceGroupPresentInfoKHR deviceGroupPresentInfoKHRBuilder() {
  VkDeviceGroupPresentInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupPresentInfoKHR VkDeviceGroupPresentInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupPresentInfoKHR VkDeviceGroupPresentInfoKHR.setSwapchainCount(self, uint swapchainCount) {
  self.swapchainCount = swapchainCount;
  return self;
}
       
fn VkDeviceGroupPresentInfoKHR VkDeviceGroupPresentInfoKHR.setDeviceMasks(self, uint[] pDeviceMasks) {
  self.swapchainCount = (uint)pDeviceMasks.len;
  self.pDeviceMasks = &pDeviceMasks[0];
  return self;
}

fn VkDeviceGroupPresentInfoKHR VkDeviceGroupPresentInfoKHR.setMode(self, VkDeviceGroupPresentModeFlagBitsKHR mode) {
  self.mode = mode;
  return self;
}
       


fn VkDeviceGroupSwapchainCreateInfoKHR deviceGroupSwapchainCreateInfoKHRBuilder() {
  VkDeviceGroupSwapchainCreateInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDeviceGroupSwapchainCreateInfoKHR VkDeviceGroupSwapchainCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDeviceGroupSwapchainCreateInfoKHR VkDeviceGroupSwapchainCreateInfoKHR.setModes(self, VkDeviceGroupPresentModeFlagsKHR modes) {
  self.modes = modes;
  return self;
}
       


fn VkDisplayModeCreateInfoKHR displayModeCreateInfoKHRBuilder() {
  VkDisplayModeCreateInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDisplayModeCreateInfoKHR VkDisplayModeCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDisplayModeCreateInfoKHR VkDisplayModeCreateInfoKHR.setFlags(self, VkDisplayModeCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn VkDisplayModeCreateInfoKHR VkDisplayModeCreateInfoKHR.setParameters(self, VkDisplayModeParametersKHR parameters) {
  self.parameters = parameters;
  return self;
}
       


fn VkDisplaySurfaceCreateInfoKHR displaySurfaceCreateInfoKHRBuilder() {
  VkDisplaySurfaceCreateInfoKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setFlags(self, VkDisplaySurfaceCreateFlagsKHR flags) {
  self.flags = flags;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setDisplayMode(self, VkDisplayModeKHR displayMode) {
  self.displayMode = displayMode;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setPlaneIndex(self, uint planeIndex) {
  self.planeIndex = planeIndex;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setPlaneStackIndex(self, uint planeStackIndex) {
  self.planeStackIndex = planeStackIndex;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setTransform(self, VkSurfaceTransformFlagBitsKHR transform) {
  self.transform = transform;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setGlobalAlpha(self, float globalAlpha) {
  self.globalAlpha = globalAlpha;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setAlphaMode(self, VkDisplayPlaneAlphaFlagBitsKHR alphaMode) {
  self.alphaMode = alphaMode;
  return self;
}
       
fn VkDisplaySurfaceCreateInfoKHR VkDisplaySurfaceCreateInfoKHR.setImageExtent(self, VkExtent2D imageExtent) {
  self.imageExtent = imageExtent;
  return self;
}
       


fn VkPhysicalDevicePushDescriptorPropertiesKHR physicalDevicePushDescriptorPropertiesKHRBuilder() {
  VkPhysicalDevicePushDescriptorPropertiesKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevicePushDescriptorPropertiesKHR VkPhysicalDevicePushDescriptorPropertiesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevicePushDescriptorPropertiesKHR VkPhysicalDevicePushDescriptorPropertiesKHR.setMaxPushDescriptors(self, uint maxPushDescriptors) {
  self.maxPushDescriptors = maxPushDescriptors;
  return self;
}
       


fn VkDebugReportCallbackCreateInfoEXT debugReportCallbackCreateInfoEXTBuilder() {
  VkDebugReportCallbackCreateInfoEXT defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDebugReportCallbackCreateInfoEXT VkDebugReportCallbackCreateInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDebugReportCallbackCreateInfoEXT VkDebugReportCallbackCreateInfoEXT.setFlags(self, VkDebugReportFlagsEXT flags) {
  self.flags = flags;
  return self;
}
       
fn VkDebugReportCallbackCreateInfoEXT VkDebugReportCallbackCreateInfoEXT.setPfnCallback(self, PFN_vkDebugReportCallbackEXT pfnCallback) {
  self.pfnCallback = pfnCallback;
  return self;
}
       
fn VkDebugReportCallbackCreateInfoEXT VkDebugReportCallbackCreateInfoEXT.setUserData(self, void* pUserData) {
  self.pUserData = pUserData;
  return self;
}
       


fn VkDebugUtilsLabelEXT debugUtilsLabelEXTBuilder() {
  VkDebugUtilsLabelEXT defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDebugUtilsLabelEXT VkDebugUtilsLabelEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDebugUtilsLabelEXT VkDebugUtilsLabelEXT.setLabelName(self, char* pLabelName) {
  self.pLabelName = pLabelName;
  return self;
}
       
fn VkDebugUtilsLabelEXT VkDebugUtilsLabelEXT.setColor(self, float[4] color) {
  self.color = color;
  return self;
}
       


fn VkDebugUtilsMessengerCallbackDataEXT debugUtilsMessengerCallbackDataEXTBuilder() {
  VkDebugUtilsMessengerCallbackDataEXT defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setFlags(self, VkDebugUtilsMessengerCallbackDataFlagsEXT flags) {
  self.flags = flags;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setMessageIdName(self, char* pMessageIdName) {
  self.pMessageIdName = pMessageIdName;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setMessageIdNumber(self, int messageIdNumber) {
  self.messageIdNumber = messageIdNumber;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setMessage(self, char* pMessage) {
  self.pMessage = pMessage;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setQueueLabelCount(self, uint queueLabelCount) {
  self.queueLabelCount = queueLabelCount;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setQueueLabels(self, VkDebugUtilsLabelEXT[] pQueueLabels) {
  self.queueLabelCount = (uint)pQueueLabels.len;
  self.pQueueLabels = &pQueueLabels[0];
  return self;
}

fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setCmdBufLabelCount(self, uint cmdBufLabelCount) {
  self.cmdBufLabelCount = cmdBufLabelCount;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setCmdBufLabels(self, VkDebugUtilsLabelEXT[] pCmdBufLabels) {
  self.cmdBufLabelCount = (uint)pCmdBufLabels.len;
  self.pCmdBufLabels = &pCmdBufLabels[0];
  return self;
}

fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setObjectCount(self, uint objectCount) {
  self.objectCount = objectCount;
  return self;
}
       
fn VkDebugUtilsMessengerCallbackDataEXT VkDebugUtilsMessengerCallbackDataEXT.setObjects(self, VkDebugUtilsObjectNameInfoEXT[] pObjects) {
  self.objectCount = (uint)pObjects.len;
  self.pObjects = &pObjects[0];
  return self;
}



fn VkDebugUtilsMessengerCreateInfoEXT debugUtilsMessengerCreateInfoEXTBuilder() {
  VkDebugUtilsMessengerCreateInfoEXT defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDebugUtilsMessengerCreateInfoEXT VkDebugUtilsMessengerCreateInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDebugUtilsMessengerCreateInfoEXT VkDebugUtilsMessengerCreateInfoEXT.setFlags(self, VkDebugUtilsMessengerCreateFlagsEXT flags) {
  self.flags = flags;
  return self;
}
       
fn VkDebugUtilsMessengerCreateInfoEXT VkDebugUtilsMessengerCreateInfoEXT.setMessageSeverity(self, VkDebugUtilsMessageSeverityFlagsEXT messageSeverity) {
  self.messageSeverity = messageSeverity;
  return self;
}
       
fn VkDebugUtilsMessengerCreateInfoEXT VkDebugUtilsMessengerCreateInfoEXT.setMessageType(self, VkDebugUtilsMessageTypeFlagsEXT messageType) {
  self.messageType = messageType;
  return self;
}
       
fn VkDebugUtilsMessengerCreateInfoEXT VkDebugUtilsMessengerCreateInfoEXT.setPfnUserCallback(self, PFN_vkDebugUtilsMessengerCallbackEXT pfnUserCallback) {
  self.pfnUserCallback = pfnUserCallback;
  return self;
}
       
fn VkDebugUtilsMessengerCreateInfoEXT VkDebugUtilsMessengerCreateInfoEXT.setUserData(self, void* pUserData) {
  self.pUserData = pUserData;
  return self;
}
       


fn VkDebugUtilsObjectNameInfoEXT debugUtilsObjectNameInfoEXTBuilder() {
  VkDebugUtilsObjectNameInfoEXT defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDebugUtilsObjectNameInfoEXT VkDebugUtilsObjectNameInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDebugUtilsObjectNameInfoEXT VkDebugUtilsObjectNameInfoEXT.setObjectType(self, VkObjectType objectType) {
  self.objectType = objectType;
  return self;
}
       
fn VkDebugUtilsObjectNameInfoEXT VkDebugUtilsObjectNameInfoEXT.setObjectHandle(self, ulong objectHandle) {
  self.objectHandle = objectHandle;
  return self;
}
       
fn VkDebugUtilsObjectNameInfoEXT VkDebugUtilsObjectNameInfoEXT.setObjectName(self, char* pObjectName) {
  self.pObjectName = pObjectName;
  return self;
}
       


fn VkDebugUtilsObjectTagInfoEXT debugUtilsObjectTagInfoEXTBuilder() {
  VkDebugUtilsObjectTagInfoEXT defaultValue = {
    .sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkDebugUtilsObjectTagInfoEXT VkDebugUtilsObjectTagInfoEXT.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkDebugUtilsObjectTagInfoEXT VkDebugUtilsObjectTagInfoEXT.setObjectType(self, VkObjectType objectType) {
  self.objectType = objectType;
  return self;
}
       
fn VkDebugUtilsObjectTagInfoEXT VkDebugUtilsObjectTagInfoEXT.setObjectHandle(self, ulong objectHandle) {
  self.objectHandle = objectHandle;
  return self;
}
       
fn VkDebugUtilsObjectTagInfoEXT VkDebugUtilsObjectTagInfoEXT.setTagName(self, ulong tagName) {
  self.tagName = tagName;
  return self;
}
       
fn VkDebugUtilsObjectTagInfoEXT VkDebugUtilsObjectTagInfoEXT.setTagSize(self, usz tagSize) {
  self.tagSize = tagSize;
  return self;
}
       
fn VkDebugUtilsObjectTagInfoEXT VkDebugUtilsObjectTagInfoEXT.setTag(self, void* pTag) {
  self.pTag = pTag;
  return self;
}
       


fn VkPhysicalDevicePortabilitySubsetFeaturesKHR physicalDevicePortabilitySubsetFeaturesKHRBuilder() {
  VkPhysicalDevicePortabilitySubsetFeaturesKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setConstantAlphaColorBlendFactors(self, VkBool32 constantAlphaColorBlendFactors) {
  self.constantAlphaColorBlendFactors = constantAlphaColorBlendFactors;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setEvents(self, VkBool32 events) {
  self.events = events;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setImageViewFormatReinterpretation(self, VkBool32 imageViewFormatReinterpretation) {
  self.imageViewFormatReinterpretation = imageViewFormatReinterpretation;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setImageViewFormatSwizzle(self, VkBool32 imageViewFormatSwizzle) {
  self.imageViewFormatSwizzle = imageViewFormatSwizzle;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setImageView2DOn3DImage(self, VkBool32 imageView2DOn3DImage) {
  self.imageView2DOn3DImage = imageView2DOn3DImage;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setMultisampleArrayImage(self, VkBool32 multisampleArrayImage) {
  self.multisampleArrayImage = multisampleArrayImage;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setMutableComparisonSamplers(self, VkBool32 mutableComparisonSamplers) {
  self.mutableComparisonSamplers = mutableComparisonSamplers;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setPointPolygons(self, VkBool32 pointPolygons) {
  self.pointPolygons = pointPolygons;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setSamplerMipLodBias(self, VkBool32 samplerMipLodBias) {
  self.samplerMipLodBias = samplerMipLodBias;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setSeparateStencilMaskRef(self, VkBool32 separateStencilMaskRef) {
  self.separateStencilMaskRef = separateStencilMaskRef;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setShaderSampleRateInterpolationFunctions(self, VkBool32 shaderSampleRateInterpolationFunctions) {
  self.shaderSampleRateInterpolationFunctions = shaderSampleRateInterpolationFunctions;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setTessellationIsolines(self, VkBool32 tessellationIsolines) {
  self.tessellationIsolines = tessellationIsolines;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setTessellationPointMode(self, VkBool32 tessellationPointMode) {
  self.tessellationPointMode = tessellationPointMode;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setTriangleFans(self, VkBool32 triangleFans) {
  self.triangleFans = triangleFans;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetFeaturesKHR VkPhysicalDevicePortabilitySubsetFeaturesKHR.setVertexAttributeAccessBeyondStride(self, VkBool32 vertexAttributeAccessBeyondStride) {
  self.vertexAttributeAccessBeyondStride = vertexAttributeAccessBeyondStride;
  return self;
}
       


fn VkPhysicalDevicePortabilitySubsetPropertiesKHR physicalDevicePortabilitySubsetPropertiesKHRBuilder() {
  VkPhysicalDevicePortabilitySubsetPropertiesKHR defaultValue = {
    .sType = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR,
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
fn VkPhysicalDevicePortabilitySubsetPropertiesKHR VkPhysicalDevicePortabilitySubsetPropertiesKHR.setNext(self, void* pNext) {
  self.pNext = pNext;
  return self;
}
       
fn VkPhysicalDevicePortabilitySubsetPropertiesKHR VkPhysicalDevicePortabilitySubsetPropertiesKHR.setMinVertexInputBindingStrideAlignment(self, uint minVertexInputBindingStrideAlignment) {
  self.minVertexInputBindingStrideAlignment = minVertexInputBindingStrideAlignment;
  return self;
}
       
