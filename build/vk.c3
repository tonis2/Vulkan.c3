module vk;

// Base types
def ANativeWindow = void*;
def AHardwareBuffer = void*;
def CAMetalLayer = void*;
def MTLDevice_id = void*;
def MTLCommandQueue_id = void*;
def MTLBuffer_id = void*;
def MTLTexture_id = void*;
def MTLSharedEvent_id = void*;
def IOSurfaceRef = void*;
def VkSampleMask = uint;
def VkBool32 = uint;
def VkFlags = uint;
def VkFlags64 = long;
def VkDeviceSize = long;
def VkDeviceAddress = long;
def VkRemoteAddressNV = void;

// Bitmasks
def VkFramebufferCreateFlags = VkFlags;
def VkQueryPoolCreateFlags = VkFlags;
def VkRenderPassCreateFlags = VkFlags;
def VkSamplerCreateFlags = VkFlags;
def VkPipelineLayoutCreateFlags = VkFlags;
def VkPipelineCacheCreateFlags = VkFlags;
def VkPipelineDepthStencilStateCreateFlags = VkFlags;
def VkPipelineDepthStencilStateCreateFlags = VkFlags;
def VkPipelineDynamicStateCreateFlags = VkFlags;
def VkPipelineColorBlendStateCreateFlags = VkFlags;
def VkPipelineColorBlendStateCreateFlags = VkFlags;
def VkPipelineMultisampleStateCreateFlags = VkFlags;
def VkPipelineRasterizationStateCreateFlags = VkFlags;
def VkPipelineViewportStateCreateFlags = VkFlags;
def VkPipelineTessellationStateCreateFlags = VkFlags;
def VkPipelineInputAssemblyStateCreateFlags = VkFlags;
def VkPipelineVertexInputStateCreateFlags = VkFlags;
def VkPipelineShaderStageCreateFlags = VkFlags;
def VkDescriptorSetLayoutCreateFlags = VkFlags;
def VkBufferViewCreateFlags = VkFlags;
def VkInstanceCreateFlags = VkFlags;
def VkDeviceCreateFlags = VkFlags;
def VkDeviceQueueCreateFlags = VkFlags;
def VkQueueFlags = VkFlags;
def VkMemoryPropertyFlags = VkFlags;
def VkMemoryHeapFlags = VkFlags;
def VkAccessFlags = VkFlags;
def VkBufferUsageFlags = VkFlags;
def VkBufferCreateFlags = VkFlags;
def VkShaderStageFlags = VkFlags;
def VkImageUsageFlags = VkFlags;
def VkImageCreateFlags = VkFlags;
def VkImageViewCreateFlags = VkFlags;
def VkPipelineCreateFlags = VkFlags;
def VkColorComponentFlags = VkFlags;
def VkFenceCreateFlags = VkFlags;
def VkSemaphoreCreateFlags = VkFlags;
def VkFormatFeatureFlags = VkFlags;
def VkQueryControlFlags = VkFlags;
def VkQueryResultFlags = VkFlags;
def VkShaderModuleCreateFlags = VkFlags;
def VkEventCreateFlags = VkFlags;
def VkCommandPoolCreateFlags = VkFlags;
def VkCommandPoolResetFlags = VkFlags;
def VkCommandBufferResetFlags = VkFlags;
def VkCommandBufferUsageFlags = VkFlags;
def VkQueryPipelineStatisticFlags = VkFlags;
def VkMemoryMapFlags = VkFlags;
def VkMemoryUnmapFlagsKHR = VkFlags;
def VkImageAspectFlags = VkFlags;
def VkSparseMemoryBindFlags = VkFlags;
def VkSparseImageFormatFlags = VkFlags;
def VkSubpassDescriptionFlags = VkFlags;
def VkPipelineStageFlags = VkFlags;
def VkSampleCountFlags = VkFlags;
def VkAttachmentDescriptionFlags = VkFlags;
def VkStencilFaceFlags = VkFlags;
def VkCullModeFlags = VkFlags;
def VkDescriptorPoolCreateFlags = VkFlags;
def VkDescriptorPoolResetFlags = VkFlags;
def VkDependencyFlags = VkFlags;
def VkSubgroupFeatureFlags = VkFlags;
def VkIndirectCommandsLayoutUsageFlagsNV = VkFlags;
def VkIndirectStateFlagsNV = VkFlags;
def VkGeometryFlagsKHR = VkFlags;
def VkGeometryInstanceFlagsKHR = VkFlags;
def VkBuildAccelerationStructureFlagsKHR = VkFlags;
def VkPrivateDataSlotCreateFlags = VkFlags;
def VkAccelerationStructureCreateFlagsKHR = VkFlags;
def VkDescriptorUpdateTemplateCreateFlags = VkFlags;
def VkPipelineCreationFeedbackFlags = VkFlags;
def VkPerformanceCounterDescriptionFlagsKHR = VkFlags;
def VkAcquireProfilingLockFlagsKHR = VkFlags;
def VkSemaphoreWaitFlags = VkFlags;
def VkPipelineCompilerControlFlagsAMD = VkFlags;
def VkShaderCorePropertiesFlagsAMD = VkFlags;
def VkDeviceDiagnosticsConfigFlagsNV = VkFlags;
def VkRefreshObjectFlagsKHR = VkFlags;
def VkAccessFlags2 = VkFlags64;
def VkPipelineStageFlags2 = VkFlags64;
def VkAccelerationStructureMotionInfoFlagsNV = VkFlags;
def VkAccelerationStructureMotionInstanceFlagsNV = VkFlags;
def VkFormatFeatureFlags2 = VkFlags64;
def VkRenderingFlags = VkFlags;
def VkMemoryDecompressionMethodFlagsNV = VkFlags64;
def VkBuildMicromapFlagsEXT = VkFlags;
def VkMicromapCreateFlagsEXT = VkFlags;
def VkDirectDriverLoadingFlagsLUNARG = VkFlags;
def VkCompositeAlphaFlagsKHR = VkFlags;
def VkDisplayPlaneAlphaFlagsKHR = VkFlags;
def VkSurfaceTransformFlagsKHR = VkFlags;
def VkSwapchainCreateFlagsKHR = VkFlags;
def VkDisplayModeCreateFlagsKHR = VkFlags;
def VkDisplaySurfaceCreateFlagsKHR = VkFlags;
def VkAndroidSurfaceCreateFlagsKHR = VkFlags;
def VkViSurfaceCreateFlagsNN = VkFlags;
def VkWaylandSurfaceCreateFlagsKHR = VkFlags;
def VkWin32SurfaceCreateFlagsKHR = VkFlags;
def VkXlibSurfaceCreateFlagsKHR = VkFlags;
def VkXcbSurfaceCreateFlagsKHR = VkFlags;
def VkDirectFBSurfaceCreateFlagsEXT = VkFlags;
def VkIOSSurfaceCreateFlagsMVK = VkFlags;
def VkMacOSSurfaceCreateFlagsMVK = VkFlags;
def VkMetalSurfaceCreateFlagsEXT = VkFlags;
def VkImagePipeSurfaceCreateFlagsFUCHSIA = VkFlags;
def VkStreamDescriptorSurfaceCreateFlagsGGP = VkFlags;
def VkHeadlessSurfaceCreateFlagsEXT = VkFlags;
def VkScreenSurfaceCreateFlagsQNX = VkFlags;
def VkPeerMemoryFeatureFlags = VkFlags;
def VkMemoryAllocateFlags = VkFlags;
def VkDeviceGroupPresentModeFlagsKHR = VkFlags;
def VkDebugReportFlagsEXT = VkFlags;
def VkCommandPoolTrimFlags = VkFlags;
def VkExternalMemoryHandleTypeFlagsNV = VkFlags;
def VkExternalMemoryFeatureFlagsNV = VkFlags;
def VkExternalMemoryHandleTypeFlags = VkFlags;
def VkExternalMemoryFeatureFlags = VkFlags;
def VkExternalSemaphoreHandleTypeFlags = VkFlags;
def VkExternalSemaphoreFeatureFlags = VkFlags;
def VkSemaphoreImportFlags = VkFlags;
def VkExternalFenceHandleTypeFlags = VkFlags;
def VkExternalFenceFeatureFlags = VkFlags;
def VkFenceImportFlags = VkFlags;
def VkSurfaceCounterFlagsEXT = VkFlags;
def VkPipelineViewportSwizzleStateCreateFlagsNV = VkFlags;
def VkPipelineDiscardRectangleStateCreateFlagsEXT = VkFlags;
def VkPipelineCoverageToColorStateCreateFlagsNV = VkFlags;
def VkPipelineCoverageModulationStateCreateFlagsNV = VkFlags;
def VkPipelineCoverageReductionStateCreateFlagsNV = VkFlags;
def VkValidationCacheCreateFlagsEXT = VkFlags;
def VkDebugUtilsMessageSeverityFlagsEXT = VkFlags;
def VkDebugUtilsMessageTypeFlagsEXT = VkFlags;
def VkDebugUtilsMessengerCreateFlagsEXT = VkFlags;
def VkDebugUtilsMessengerCallbackDataFlagsEXT = VkFlags;
def VkDeviceMemoryReportFlagsEXT = VkFlags;
def VkPipelineRasterizationConservativeStateCreateFlagsEXT = VkFlags;
def VkDescriptorBindingFlags = VkFlags;
def VkConditionalRenderingFlagsEXT = VkFlags;
def VkResolveModeFlags = VkFlags;
def VkPipelineRasterizationStateStreamCreateFlagsEXT = VkFlags;
def VkPipelineRasterizationDepthClipStateCreateFlagsEXT = VkFlags;
def VkSwapchainImageUsageFlagsANDROID = VkFlags;
def VkToolPurposeFlags = VkFlags;
def VkSubmitFlags = VkFlags;
def VkImageFormatConstraintsFlagsFUCHSIA = VkFlags;
def VkImageConstraintsInfoFlagsFUCHSIA = VkFlags;
def VkGraphicsPipelineLibraryFlagsEXT = VkFlags;
def VkImageCompressionFlagsEXT = VkFlags;
def VkImageCompressionFixedRateFlagsEXT = VkFlags;
def VkExportMetalObjectTypeFlagsEXT = VkFlags;
def VkDeviceAddressBindingFlagsEXT = VkFlags;
def VkOpticalFlowGridSizeFlagsNV = VkFlags;
def VkOpticalFlowUsageFlagsNV = VkFlags;
def VkOpticalFlowSessionCreateFlagsNV = VkFlags;
def VkOpticalFlowExecuteFlagsNV = VkFlags;
def VkPresentScalingFlagsEXT = VkFlags;
def VkPresentGravityFlagsEXT = VkFlags;
def VkShaderCreateFlagsEXT = VkFlags;
def VkVideoCodecOperationFlagsKHR = VkFlags;
def VkVideoCapabilityFlagsKHR = VkFlags;
def VkVideoSessionCreateFlagsKHR = VkFlags;
def VkVideoSessionParametersCreateFlagsKHR = VkFlags;
def VkVideoBeginCodingFlagsKHR = VkFlags;
def VkVideoEndCodingFlagsKHR = VkFlags;
def VkVideoCodingControlFlagsKHR = VkFlags;
def VkVideoDecodeUsageFlagsKHR = VkFlags;
def VkVideoDecodeCapabilityFlagsKHR = VkFlags;
def VkVideoDecodeFlagsKHR = VkFlags;
def VkVideoDecodeH264PictureLayoutFlagsKHR = VkFlags;
def VkVideoEncodeFlagsKHR = VkFlags;
def VkVideoEncodeUsageFlagsKHR = VkFlags;
def VkVideoEncodeContentFlagsKHR = VkFlags;
def VkVideoEncodeCapabilityFlagsKHR = VkFlags;
def VkVideoEncodeFeedbackFlagsKHR = VkFlags;
def VkVideoEncodeRateControlFlagsKHR = VkFlags;
def VkVideoEncodeRateControlModeFlagsKHR = VkFlags;
def VkVideoChromaSubsamplingFlagsKHR = VkFlags;
def VkVideoComponentBitDepthFlagsKHR = VkFlags;
def VkVideoEncodeH264CapabilityFlagsEXT = VkFlags;
def VkVideoEncodeH264StdFlagsEXT = VkFlags;
def VkVideoEncodeH264RateControlFlagsEXT = VkFlags;
def VkVideoEncodeH265CapabilityFlagsEXT = VkFlags;
def VkVideoEncodeH265StdFlagsEXT = VkFlags;
def VkVideoEncodeH265RateControlFlagsEXT = VkFlags;
def VkVideoEncodeH265CtbSizeFlagsEXT = VkFlags;
def VkVideoEncodeH265TransformBlockSizeFlagsEXT = VkFlags;

// Handles
def VkInstance = void*;
def VkPhysicalDevice = void*;
def VkDevice = void*;
def VkQueue = void*;
def VkCommandBuffer = void*;
def VkDeviceMemory = void*;
def VkCommandPool = void*;
def VkBuffer = void*;
def VkBufferView = void*;
def VkImage = void*;
def VkImageView = void*;
def VkShaderModule = void*;
def VkPipeline = void*;
def VkPipelineLayout = void*;
def VkSampler = void*;
def VkDescriptorSet = void*;
def VkDescriptorSetLayout = void*;
def VkDescriptorPool = void*;
def VkFence = void*;
def VkSemaphore = void*;
def VkEvent = void*;
def VkQueryPool = void*;
def VkFramebuffer = void*;
def VkRenderPass = void*;
def VkPipelineCache = void*;
def VkIndirectCommandsLayoutNV = void*;
def VkDescriptorUpdateTemplate = void*;
def VkSamplerYcbcrConversion = void*;
def VkValidationCacheEXT = void*;
def VkAccelerationStructureKHR = void*;
def VkAccelerationStructureNV = void*;
def VkPerformanceConfigurationINTEL = void*;
def VkBufferCollectionFUCHSIA = void*;
def VkDeferredOperationKHR = void*;
def VkPrivateDataSlot = void*;
def VkCuModuleNVX = void*;
def VkCuFunctionNVX = void*;
def VkOpticalFlowSessionNV = void*;
def VkMicromapEXT = void*;
def VkShaderEXT = void*;
def VkDisplayKHR = void*;
def VkDisplayModeKHR = void*;
def VkSurfaceKHR = void*;
def VkSwapchainKHR = void*;
def VkDebugReportCallbackEXT = void*;
def VkDebugUtilsMessengerEXT = void*;
def VkVideoSessionKHR = void*;
def VkVideoSessionParametersKHR = void*;
def VkSemaphoreSciSyncPoolNV = void*;

// Structs
struct VkBaseOutStructure {
  VkStructureType sType;
  VkBaseOutStructure pNext;
}

struct VkBaseInStructure {
  VkStructureType sType;
  VkBaseInStructure pNext;
}

struct VkOffset2D {
  int32_t x;
  int32_t y;
}

struct VkOffset3D {
  int32_t x;
  int32_t y;
  int32_t z;
}

struct VkExtent2D {
  uint32_t width;
  uint32_t height;
}

struct VkExtent3D {
  uint32_t width;
  uint32_t height;
  uint32_t depth;
}

struct VkViewport {
  float x;
  float y;
  float width;
  float height;
  float minDepth;
  float maxDepth;
}

struct VkRect2D {
  VkOffset2D offset;
  VkExtent2D extent;
}

struct VkClearRect {
  VkRect2D rect;
  uint32_t baseArrayLayer;
  uint32_t layerCount;
}

struct VkComponentMapping {
  VkComponentSwizzle r;
  VkComponentSwizzle g;
  VkComponentSwizzle b;
  VkComponentSwizzle a;
}

struct VkPhysicalDeviceProperties {
  uint32_t apiVersion;
  uint32_t driverVersion;
  uint32_t vendorID;
  uint32_t deviceID;
  VkPhysicalDeviceType deviceType;
  char deviceName;
  uint8_t pipelineCacheUUID;
  VkPhysicalDeviceLimits limits;
  VkPhysicalDeviceSparseProperties sparseProperties;
}

struct VkExtensionProperties {
  char extensionName;
  uint32_t specVersion;
}

struct VkLayerProperties {
  char layerName;
  uint32_t specVersion;
  uint32_t implementationVersion;
  char description;
}

struct VkApplicationInfo {
  VkStructureType sType;
  void pNext;
  char pApplicationName;
  uint32_t applicationVersion;
  char pEngineName;
  uint32_t engineVersion;
  uint32_t apiVersion;
}

struct VkAllocationCallbacks {
  void pUserData;
  PFN_vkAllocationFunction pfnAllocation;
  PFN_vkReallocationFunction pfnReallocation;
  PFN_vkFreeFunction pfnFree;
  PFN_vkInternalAllocationNotification pfnInternalAllocation;
  PFN_vkInternalFreeNotification pfnInternalFree;
}

struct VkDeviceQueueCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceQueueCreateFlags flags;
  uint32_t queueFamilyIndex;
  uint32_t queueCount;
  float pQueuePriorities;
}

struct VkDeviceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceCreateFlags flags;
  uint32_t queueCreateInfoCount;
  VkDeviceQueueCreateInfo pQueueCreateInfos;
  uint32_t enabledLayerCount;
  char ppEnabledLayerNames;
  uint32_t enabledExtensionCount;
  char ppEnabledExtensionNames;
  VkPhysicalDeviceFeatures pEnabledFeatures;
}

struct VkInstanceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkInstanceCreateFlags flags;
  VkApplicationInfo pApplicationInfo;
  uint32_t enabledLayerCount;
  char ppEnabledLayerNames;
  uint32_t enabledExtensionCount;
  char ppEnabledExtensionNames;
}

struct VkQueueFamilyProperties {
  VkQueueFlags queueFlags;
  uint32_t queueCount;
  uint32_t timestampValidBits;
  VkExtent3D minImageTransferGranularity;
}

struct VkPhysicalDeviceMemoryProperties {
  uint32_t memoryTypeCount;
  VkMemoryType memoryTypes;
  uint32_t memoryHeapCount;
  VkMemoryHeap memoryHeaps;
}

struct VkMemoryAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceSize allocationSize;
  uint32_t memoryTypeIndex;
}

struct VkMemoryRequirements {
  VkDeviceSize size;
  VkDeviceSize alignment;
  uint32_t memoryTypeBits;
}

struct VkSparseImageFormatProperties {
  VkImageAspectFlags aspectMask;
  VkExtent3D imageGranularity;
  VkSparseImageFormatFlags flags;
}

struct VkSparseImageMemoryRequirements {
  VkSparseImageFormatProperties formatProperties;
  uint32_t imageMipTailFirstLod;
  VkDeviceSize imageMipTailSize;
  VkDeviceSize imageMipTailOffset;
  VkDeviceSize imageMipTailStride;
}

struct VkMemoryType {
  VkMemoryPropertyFlags propertyFlags;
  uint32_t heapIndex;
}

struct VkMemoryHeap {
  VkDeviceSize size;
  VkMemoryHeapFlags flags;
}

struct VkMappedMemoryRange {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  VkDeviceSize offset;
  VkDeviceSize size;
}

struct VkFormatProperties {
  VkFormatFeatureFlags linearTilingFeatures;
  VkFormatFeatureFlags optimalTilingFeatures;
  VkFormatFeatureFlags bufferFeatures;
}

struct VkImageFormatProperties {
  VkExtent3D maxExtent;
  uint32_t maxMipLevels;
  uint32_t maxArrayLayers;
  VkSampleCountFlags sampleCounts;
  VkDeviceSize maxResourceSize;
}

struct VkDescriptorBufferInfo {
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize range;
}

struct VkDescriptorImageInfo {
  VkSampler sampler;
  VkImageView imageView;
  VkImageLayout imageLayout;
}

struct VkWriteDescriptorSet {
  VkStructureType sType;
  void pNext;
  VkDescriptorSet dstSet;
  uint32_t dstBinding;
  uint32_t dstArrayElement;
  uint32_t descriptorCount;
  VkDescriptorType descriptorType;
  VkDescriptorImageInfo pImageInfo;
  VkDescriptorBufferInfo pBufferInfo;
  VkBufferView pTexelBufferView;
}

struct VkCopyDescriptorSet {
  VkStructureType sType;
  void pNext;
  VkDescriptorSet srcSet;
  uint32_t srcBinding;
  uint32_t srcArrayElement;
  VkDescriptorSet dstSet;
  uint32_t dstBinding;
  uint32_t dstArrayElement;
  uint32_t descriptorCount;
}

struct VkBufferCreateInfo {
  VkStructureType sType;
  void pNext;
  VkBufferCreateFlags flags;
  VkDeviceSize size;
  VkBufferUsageFlags usage;
  VkSharingMode sharingMode;
  uint32_t queueFamilyIndexCount;
  uint32_t pQueueFamilyIndices;
}

struct VkBufferViewCreateInfo {
  VkStructureType sType;
  void pNext;
  VkBufferViewCreateFlags flags;
  VkBuffer buffer;
  VkFormat format;
  VkDeviceSize offset;
  VkDeviceSize range;
}

struct VkImageSubresource {
  VkImageAspectFlags aspectMask;
  uint32_t mipLevel;
  uint32_t arrayLayer;
}

struct VkImageSubresourceLayers {
  VkImageAspectFlags aspectMask;
  uint32_t mipLevel;
  uint32_t baseArrayLayer;
  uint32_t layerCount;
}

struct VkImageSubresourceRange {
  VkImageAspectFlags aspectMask;
  uint32_t baseMipLevel;
  uint32_t levelCount;
  uint32_t baseArrayLayer;
  uint32_t layerCount;
}

struct VkMemoryBarrier {
  VkStructureType sType;
  void pNext;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
}

struct VkBufferMemoryBarrier {
  VkStructureType sType;
  void pNext;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  uint32_t srcQueueFamilyIndex;
  uint32_t dstQueueFamilyIndex;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize size;
}

struct VkImageMemoryBarrier {
  VkStructureType sType;
  void pNext;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  VkImageLayout oldLayout;
  VkImageLayout newLayout;
  uint32_t srcQueueFamilyIndex;
  uint32_t dstQueueFamilyIndex;
  VkImage image;
  VkImageSubresourceRange subresourceRange;
}

struct VkImageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkImageCreateFlags flags;
  VkImageType imageType;
  VkFormat format;
  VkExtent3D extent;
  uint32_t mipLevels;
  uint32_t arrayLayers;
  VkSampleCountFlagBits samples;
  VkImageTiling tiling;
  VkImageUsageFlags usage;
  VkSharingMode sharingMode;
  uint32_t queueFamilyIndexCount;
  uint32_t pQueueFamilyIndices;
  VkImageLayout initialLayout;
}

struct VkSubresourceLayout {
  VkDeviceSize offset;
  VkDeviceSize size;
  VkDeviceSize rowPitch;
  VkDeviceSize arrayPitch;
  VkDeviceSize depthPitch;
}

struct VkImageViewCreateInfo {
  VkStructureType sType;
  void pNext;
  VkImageViewCreateFlags flags;
  VkImage image;
  VkImageViewType viewType;
  VkFormat format;
  VkComponentMapping components;
  VkImageSubresourceRange subresourceRange;
}

struct VkBufferCopy {
  VkDeviceSize srcOffset;
  VkDeviceSize dstOffset;
  VkDeviceSize size;
}

struct VkSparseMemoryBind {
  VkDeviceSize resourceOffset;
  VkDeviceSize size;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  VkSparseMemoryBindFlags flags;
}

struct VkSparseImageMemoryBind {
  VkImageSubresource subresource;
  VkOffset3D offset;
  VkExtent3D extent;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  VkSparseMemoryBindFlags flags;
}

struct VkSparseBufferMemoryBindInfo {
  VkBuffer buffer;
  uint32_t bindCount;
  VkSparseMemoryBind pBinds;
}

struct VkSparseImageOpaqueMemoryBindInfo {
  VkImage image;
  uint32_t bindCount;
  VkSparseMemoryBind pBinds;
}

struct VkSparseImageMemoryBindInfo {
  VkImage image;
  uint32_t bindCount;
  VkSparseImageMemoryBind pBinds;
}

struct VkBindSparseInfo {
  VkStructureType sType;
  void pNext;
  uint32_t waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  uint32_t bufferBindCount;
  VkSparseBufferMemoryBindInfo pBufferBinds;
  uint32_t imageOpaqueBindCount;
  VkSparseImageOpaqueMemoryBindInfo pImageOpaqueBinds;
  uint32_t imageBindCount;
  VkSparseImageMemoryBindInfo pImageBinds;
  uint32_t signalSemaphoreCount;
  VkSemaphore pSignalSemaphores;
}

struct VkImageCopy {
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}

struct VkImageBlit {
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffsets;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffsets;
}

struct VkBufferImageCopy {
  VkDeviceSize bufferOffset;
  uint32_t bufferRowLength;
  uint32_t bufferImageHeight;
  VkImageSubresourceLayers imageSubresource;
  VkOffset3D imageOffset;
  VkExtent3D imageExtent;
}

struct VkCopyMemoryIndirectCommandNV {
  VkDeviceAddress srcAddress;
  VkDeviceAddress dstAddress;
  VkDeviceSize size;
}

struct VkCopyMemoryToImageIndirectCommandNV {
  VkDeviceAddress srcAddress;
  uint32_t bufferRowLength;
  uint32_t bufferImageHeight;
  VkImageSubresourceLayers imageSubresource;
  VkOffset3D imageOffset;
  VkExtent3D imageExtent;
}

struct VkImageResolve {
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}

struct VkShaderModuleCreateInfo {
  VkStructureType sType;
  void pNext;
  VkShaderModuleCreateFlags flags;
  size_t codeSize;
  uint32_t pCode;
}

struct VkDescriptorSetLayoutBinding {
  uint32_t binding;
  VkDescriptorType descriptorType;
  uint32_t descriptorCount;
  VkShaderStageFlags stageFlags;
  VkSampler pImmutableSamplers;
}

struct VkDescriptorSetLayoutCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorSetLayoutCreateFlags flags;
  uint32_t bindingCount;
  VkDescriptorSetLayoutBinding pBindings;
}

struct VkDescriptorPoolSize {
  VkDescriptorType type;
  uint32_t descriptorCount;
}

struct VkDescriptorPoolCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorPoolCreateFlags flags;
  uint32_t maxSets;
  uint32_t poolSizeCount;
  VkDescriptorPoolSize pPoolSizes;
}

struct VkDescriptorSetAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorPool descriptorPool;
  uint32_t descriptorSetCount;
  VkDescriptorSetLayout pSetLayouts;
}

struct VkSpecializationMapEntry {
  uint32_t constantID;
  uint32_t offset;
  size_t size;
}

struct VkSpecializationInfo {
  uint32_t mapEntryCount;
  VkSpecializationMapEntry pMapEntries;
  size_t dataSize;
  void pData;
}

struct VkPipelineShaderStageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineShaderStageCreateFlags flags;
  VkShaderStageFlagBits stage;
  VkShaderModule module;
  char pName;
  char pName;
  VkSpecializationInfo pSpecializationInfo;
}

struct VkComputePipelineCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineCreateFlags flags;
  VkPipelineShaderStageCreateInfo stage;
  VkPipelineLayout layout;
  VkPipeline basePipelineHandle;
  int32_t basePipelineIndex;
}

struct VkVertexInputBindingDescription {
  uint32_t binding;
  uint32_t stride;
  VkVertexInputRate inputRate;
}

struct VkVertexInputAttributeDescription {
  uint32_t location;
  uint32_t binding;
  VkFormat format;
  uint32_t offset;
}

struct VkPipelineVertexInputStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineVertexInputStateCreateFlags flags;
  uint32_t vertexBindingDescriptionCount;
  VkVertexInputBindingDescription pVertexBindingDescriptions;
  uint32_t vertexAttributeDescriptionCount;
  VkVertexInputAttributeDescription pVertexAttributeDescriptions;
}

struct VkPipelineInputAssemblyStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineInputAssemblyStateCreateFlags flags;
  VkPrimitiveTopology topology;
  VkBool32 primitiveRestartEnable;
}

struct VkPipelineTessellationStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineTessellationStateCreateFlags flags;
  uint32_t patchControlPoints;
}

struct VkPipelineViewportStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineViewportStateCreateFlags flags;
  uint32_t viewportCount;
  VkViewport pViewports;
  uint32_t scissorCount;
  VkRect2D pScissors;
}

struct VkPipelineRasterizationStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineRasterizationStateCreateFlags flags;
  VkBool32 depthClampEnable;
  VkBool32 rasterizerDiscardEnable;
  VkPolygonMode polygonMode;
  VkCullModeFlags cullMode;
  VkFrontFace frontFace;
  VkBool32 depthBiasEnable;
  float depthBiasConstantFactor;
  float depthBiasClamp;
  float depthBiasSlopeFactor;
  float lineWidth;
}

struct VkPipelineMultisampleStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineMultisampleStateCreateFlags flags;
  VkSampleCountFlagBits rasterizationSamples;
  VkBool32 sampleShadingEnable;
  float minSampleShading;
  VkSampleMask pSampleMask;
  VkBool32 alphaToCoverageEnable;
  VkBool32 alphaToOneEnable;
}

struct VkPipelineColorBlendAttachmentState {
  VkBool32 blendEnable;
  VkBlendFactor srcColorBlendFactor;
  VkBlendFactor dstColorBlendFactor;
  VkBlendOp colorBlendOp;
  VkBlendFactor srcAlphaBlendFactor;
  VkBlendFactor dstAlphaBlendFactor;
  VkBlendOp alphaBlendOp;
  VkColorComponentFlags colorWriteMask;
}

struct VkPipelineColorBlendStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineColorBlendStateCreateFlags flags;
  VkBool32 logicOpEnable;
  VkLogicOp logicOp;
  uint32_t attachmentCount;
  VkPipelineColorBlendAttachmentState pAttachments;
  float blendConstants;
}

struct VkPipelineDynamicStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineDynamicStateCreateFlags flags;
  uint32_t dynamicStateCount;
  VkDynamicState pDynamicStates;
}

struct VkStencilOpState {
  VkStencilOp failOp;
  VkStencilOp passOp;
  VkStencilOp depthFailOp;
  VkCompareOp compareOp;
  uint32_t compareMask;
  uint32_t writeMask;
  uint32_t reference;
}

struct VkPipelineDepthStencilStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineDepthStencilStateCreateFlags flags;
  VkBool32 depthTestEnable;
  VkBool32 depthWriteEnable;
  VkCompareOp depthCompareOp;
  VkBool32 depthBoundsTestEnable;
  VkBool32 stencilTestEnable;
  VkStencilOpState front;
  VkStencilOpState back;
  float minDepthBounds;
  float maxDepthBounds;
}

struct VkGraphicsPipelineCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineCreateFlags flags;
  uint32_t stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  VkPipelineShaderStageCreateInfo pStages;
  VkPipelineVertexInputStateCreateInfo pVertexInputState;
  VkPipelineInputAssemblyStateCreateInfo pInputAssemblyState;
  VkPipelineTessellationStateCreateInfo pTessellationState;
  VkPipelineViewportStateCreateInfo pViewportState;
  VkPipelineRasterizationStateCreateInfo pRasterizationState;
  VkPipelineMultisampleStateCreateInfo pMultisampleState;
  VkPipelineDepthStencilStateCreateInfo pDepthStencilState;
  VkPipelineColorBlendStateCreateInfo pColorBlendState;
  VkPipelineDynamicStateCreateInfo pDynamicState;
  VkPipelineLayout layout;
  VkRenderPass renderPass;
  uint32_t subpass;
  VkPipeline basePipelineHandle;
  int32_t basePipelineIndex;
}

struct VkPipelineCacheCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineCacheCreateFlags flags;
  size_t initialDataSize;
  size_t initialDataSize;
  void pInitialData;
}

struct VkPipelineCacheHeaderVersionOne {
  uint32_t headerSize;
  VkPipelineCacheHeaderVersion headerVersion;
  uint32_t vendorID;
  uint32_t deviceID;
  uint8_t pipelineCacheUUID;
}

struct VkPipelineCacheStageValidationIndexEntry {
  uint64_t codeSize;
  uint64_t codeOffset;
}

struct VkPipelineCacheSafetyCriticalIndexEntry {
  uint8_t pipelineIdentifier;
  uint64_t pipelineMemorySize;
  uint64_t jsonSize;
  uint64_t jsonOffset;
  uint32_t stageIndexCount;
  uint32_t stageIndexStride;
  uint64_t stageIndexOffset;
}

struct VkPipelineCacheHeaderVersionSafetyCriticalOne {
  VkPipelineCacheHeaderVersionOne headerVersionOne;
  VkPipelineCacheValidationVersion validationVersion;
  uint32_t implementationData;
  uint32_t pipelineIndexCount;
  uint32_t pipelineIndexStride;
  uint64_t pipelineIndexOffset;
}

struct VkPushConstantRange {
  VkShaderStageFlags stageFlags;
  uint32_t offset;
  uint32_t size;
}

struct VkPipelineLayoutCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineLayoutCreateFlags flags;
  uint32_t setLayoutCount;
  VkDescriptorSetLayout pSetLayouts;
  uint32_t pushConstantRangeCount;
  VkPushConstantRange pPushConstantRanges;
}

struct VkSamplerCreateInfo {
  VkStructureType sType;
  void pNext;
  VkSamplerCreateFlags flags;
  VkFilter magFilter;
  VkFilter minFilter;
  VkSamplerMipmapMode mipmapMode;
  VkSamplerAddressMode addressModeU;
  VkSamplerAddressMode addressModeV;
  VkSamplerAddressMode addressModeW;
  float mipLodBias;
  VkBool32 anisotropyEnable;
  float maxAnisotropy;
  VkBool32 compareEnable;
  VkCompareOp compareOp;
  float minLod;
  float maxLod;
  VkBorderColor borderColor;
  VkBool32 unnormalizedCoordinates;
}

struct VkCommandPoolCreateInfo {
  VkStructureType sType;
  void pNext;
  VkCommandPoolCreateFlags flags;
  uint32_t queueFamilyIndex;
}

struct VkCommandBufferAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkCommandPool commandPool;
  VkCommandBufferLevel level;
  uint32_t commandBufferCount;
}

struct VkCommandBufferInheritanceInfo {
  VkStructureType sType;
  void pNext;
  VkRenderPass renderPass;
  uint32_t subpass;
  VkFramebuffer framebuffer;
  VkBool32 occlusionQueryEnable;
  VkQueryControlFlags queryFlags;
  VkQueryPipelineStatisticFlags pipelineStatistics;
}

struct VkCommandBufferBeginInfo {
  VkStructureType sType;
  void pNext;
  VkCommandBufferUsageFlags flags;
  VkCommandBufferInheritanceInfo pInheritanceInfo;
}

struct VkRenderPassBeginInfo {
  VkStructureType sType;
  void pNext;
  VkRenderPass renderPass;
  VkFramebuffer framebuffer;
  VkRect2D renderArea;
  uint32_t clearValueCount;
  VkClearValue pClearValues;
}

struct VkClearDepthStencilValue {
  float depth;
  uint32_t stencil;
}

struct VkClearAttachment {
  VkImageAspectFlags aspectMask;
  uint32_t colorAttachment;
  VkClearValue clearValue;
}

struct VkAttachmentDescription {
  VkAttachmentDescriptionFlags flags;
  VkFormat format;
  VkSampleCountFlagBits samples;
  VkAttachmentLoadOp loadOp;
  VkAttachmentStoreOp storeOp;
  VkAttachmentLoadOp stencilLoadOp;
  VkAttachmentStoreOp stencilStoreOp;
  VkImageLayout initialLayout;
  VkImageLayout finalLayout;
}

struct VkAttachmentReference {
  uint32_t attachment;
  VkImageLayout layout;
}

struct VkSubpassDescription {
  VkSubpassDescriptionFlags flags;
  VkPipelineBindPoint pipelineBindPoint;
  uint32_t inputAttachmentCount;
  VkAttachmentReference pInputAttachments;
  uint32_t colorAttachmentCount;
  VkAttachmentReference pColorAttachments;
  VkAttachmentReference pResolveAttachments;
  VkAttachmentReference pDepthStencilAttachment;
  uint32_t preserveAttachmentCount;
  uint32_t pPreserveAttachments;
}

struct VkSubpassDependency {
  uint32_t srcSubpass;
  uint32_t dstSubpass;
  VkPipelineStageFlags srcStageMask;
  VkPipelineStageFlags dstStageMask;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  VkDependencyFlags dependencyFlags;
}

struct VkRenderPassCreateInfo {
  VkStructureType sType;
  void pNext;
  VkRenderPassCreateFlags flags;
  uint32_t attachmentCount;
  VkAttachmentDescription pAttachments;
  uint32_t subpassCount;
  VkSubpassDescription pSubpasses;
  uint32_t dependencyCount;
  VkSubpassDependency pDependencies;
}

struct VkEventCreateInfo {
  VkStructureType sType;
  void pNext;
  VkEventCreateFlags flags;
}

struct VkFenceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkFenceCreateFlags flags;
}

struct VkPhysicalDeviceFeatures {
  VkBool32 robustBufferAccess;
  VkBool32 fullDrawIndexUint32;
  VkBool32 imageCubeArray;
  VkBool32 independentBlend;
  VkBool32 geometryShader;
  VkBool32 tessellationShader;
  VkBool32 sampleRateShading;
  VkBool32 dualSrcBlend;
  VkBool32 logicOp;
  VkBool32 multiDrawIndirect;
  VkBool32 drawIndirectFirstInstance;
  VkBool32 depthClamp;
  VkBool32 depthBiasClamp;
  VkBool32 fillModeNonSolid;
  VkBool32 depthBounds;
  VkBool32 wideLines;
  VkBool32 largePoints;
  VkBool32 alphaToOne;
  VkBool32 multiViewport;
  VkBool32 samplerAnisotropy;
  VkBool32 textureCompressionETC2;
  VkBool32 textureCompressionASTC_LDR;
  VkBool32 textureCompressionBC;
  VkBool32 occlusionQueryPrecise;
  VkBool32 pipelineStatisticsQuery;
  VkBool32 vertexPipelineStoresAndAtomics;
  VkBool32 fragmentStoresAndAtomics;
  VkBool32 shaderTessellationAndGeometryPointSize;
  VkBool32 shaderImageGatherExtended;
  VkBool32 shaderStorageImageExtendedFormats;
  VkBool32 shaderStorageImageMultisample;
  VkBool32 shaderStorageImageReadWithoutFormat;
  VkBool32 shaderStorageImageWriteWithoutFormat;
  VkBool32 shaderUniformBufferArrayDynamicIndexing;
  VkBool32 shaderSampledImageArrayDynamicIndexing;
  VkBool32 shaderStorageBufferArrayDynamicIndexing;
  VkBool32 shaderStorageImageArrayDynamicIndexing;
  VkBool32 shaderClipDistance;
  VkBool32 shaderCullDistance;
  VkBool32 shaderFloat64;
  VkBool32 shaderInt64;
  VkBool32 shaderInt16;
  VkBool32 shaderResourceResidency;
  VkBool32 shaderResourceMinLod;
  VkBool32 sparseBinding;
  VkBool32 sparseResidencyBuffer;
  VkBool32 sparseResidencyImage2D;
  VkBool32 sparseResidencyImage3D;
  VkBool32 sparseResidency2Samples;
  VkBool32 sparseResidency4Samples;
  VkBool32 sparseResidency8Samples;
  VkBool32 sparseResidency16Samples;
  VkBool32 sparseResidencyAliased;
  VkBool32 variableMultisampleRate;
  VkBool32 inheritedQueries;
}

struct VkPhysicalDeviceSparseProperties {
  VkBool32 residencyStandard2DBlockShape;
  VkBool32 residencyStandard2DMultisampleBlockShape;
  VkBool32 residencyStandard3DBlockShape;
  VkBool32 residencyAlignedMipSize;
  VkBool32 residencyNonResidentStrict;
}

struct VkPhysicalDeviceLimits {
  uint32_t maxImageDimension1D;
  uint32_t maxImageDimension2D;
  uint32_t maxImageDimension3D;
  uint32_t maxImageDimensionCube;
  uint32_t maxImageArrayLayers;
  uint32_t maxTexelBufferElements;
  uint32_t maxUniformBufferRange;
  uint32_t maxStorageBufferRange;
  uint32_t maxPushConstantsSize;
  uint32_t maxMemoryAllocationCount;
  uint32_t maxSamplerAllocationCount;
  VkDeviceSize bufferImageGranularity;
  VkDeviceSize sparseAddressSpaceSize;
  uint32_t maxBoundDescriptorSets;
  uint32_t maxPerStageDescriptorSamplers;
  uint32_t maxPerStageDescriptorUniformBuffers;
  uint32_t maxPerStageDescriptorStorageBuffers;
  uint32_t maxPerStageDescriptorSampledImages;
  uint32_t maxPerStageDescriptorStorageImages;
  uint32_t maxPerStageDescriptorInputAttachments;
  uint32_t maxPerStageResources;
  uint32_t maxDescriptorSetSamplers;
  uint32_t maxDescriptorSetUniformBuffers;
  uint32_t maxDescriptorSetUniformBuffersDynamic;
  uint32_t maxDescriptorSetStorageBuffers;
  uint32_t maxDescriptorSetStorageBuffersDynamic;
  uint32_t maxDescriptorSetSampledImages;
  uint32_t maxDescriptorSetStorageImages;
  uint32_t maxDescriptorSetInputAttachments;
  uint32_t maxVertexInputAttributes;
  uint32_t maxVertexInputBindings;
  uint32_t maxVertexInputAttributeOffset;
  uint32_t maxVertexInputBindingStride;
  uint32_t maxVertexOutputComponents;
  uint32_t maxTessellationGenerationLevel;
  uint32_t maxTessellationPatchSize;
  uint32_t maxTessellationControlPerVertexInputComponents;
  uint32_t maxTessellationControlPerVertexOutputComponents;
  uint32_t maxTessellationControlPerPatchOutputComponents;
  uint32_t maxTessellationControlTotalOutputComponents;
  uint32_t maxTessellationEvaluationInputComponents;
  uint32_t maxTessellationEvaluationOutputComponents;
  uint32_t maxGeometryShaderInvocations;
  uint32_t maxGeometryInputComponents;
  uint32_t maxGeometryOutputComponents;
  uint32_t maxGeometryOutputVertices;
  uint32_t maxGeometryTotalOutputComponents;
  uint32_t maxFragmentInputComponents;
  uint32_t maxFragmentOutputAttachments;
  uint32_t maxFragmentDualSrcAttachments;
  uint32_t maxFragmentCombinedOutputResources;
  uint32_t maxComputeSharedMemorySize;
  uint32_t maxComputeWorkGroupCount;
  uint32_t maxComputeWorkGroupInvocations;
  uint32_t maxComputeWorkGroupSize;
  uint32_t subPixelPrecisionBits;
  uint32_t subTexelPrecisionBits;
  uint32_t mipmapPrecisionBits;
  uint32_t maxDrawIndexedIndexValue;
  uint32_t maxDrawIndirectCount;
  float maxSamplerLodBias;
  float maxSamplerAnisotropy;
  uint32_t maxViewports;
  uint32_t maxViewportDimensions;
  float viewportBoundsRange;
  uint32_t viewportSubPixelBits;
  size_t minMemoryMapAlignment;
  VkDeviceSize minTexelBufferOffsetAlignment;
  VkDeviceSize minUniformBufferOffsetAlignment;
  VkDeviceSize minStorageBufferOffsetAlignment;
  int32_t minTexelOffset;
  uint32_t maxTexelOffset;
  int32_t minTexelGatherOffset;
  uint32_t maxTexelGatherOffset;
  float minInterpolationOffset;
  float maxInterpolationOffset;
  uint32_t subPixelInterpolationOffsetBits;
  uint32_t maxFramebufferWidth;
  uint32_t maxFramebufferHeight;
  uint32_t maxFramebufferLayers;
  VkSampleCountFlags framebufferColorSampleCounts;
  VkSampleCountFlags framebufferDepthSampleCounts;
  VkSampleCountFlags framebufferStencilSampleCounts;
  VkSampleCountFlags framebufferNoAttachmentsSampleCounts;
  uint32_t maxColorAttachments;
  VkSampleCountFlags sampledImageColorSampleCounts;
  VkSampleCountFlags sampledImageIntegerSampleCounts;
  VkSampleCountFlags sampledImageDepthSampleCounts;
  VkSampleCountFlags sampledImageStencilSampleCounts;
  VkSampleCountFlags storageImageSampleCounts;
  uint32_t maxSampleMaskWords;
  VkBool32 timestampComputeAndGraphics;
  float timestampPeriod;
  uint32_t maxClipDistances;
  uint32_t maxCullDistances;
  uint32_t maxCombinedClipAndCullDistances;
  uint32_t discreteQueuePriorities;
  float pointSizeRange;
  float lineWidthRange;
  float pointSizeGranularity;
  float lineWidthGranularity;
  VkBool32 strictLines;
  VkBool32 standardSampleLocations;
  VkDeviceSize optimalBufferCopyOffsetAlignment;
  VkDeviceSize optimalBufferCopyRowPitchAlignment;
  VkDeviceSize nonCoherentAtomSize;
}

struct VkSemaphoreCreateInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphoreCreateFlags flags;
}

struct VkQueryPoolCreateInfo {
  VkStructureType sType;
  void pNext;
  VkQueryPoolCreateFlags flags;
  VkQueryType queryType;
  uint32_t queryCount;
  VkQueryPipelineStatisticFlags pipelineStatistics;
}

struct VkFramebufferCreateInfo {
  VkStructureType sType;
  void pNext;
  VkFramebufferCreateFlags flags;
  VkRenderPass renderPass;
  uint32_t attachmentCount;
  VkImageView pAttachments;
  uint32_t width;
  uint32_t height;
  uint32_t layers;
}

struct VkDrawIndirectCommand {
  uint32_t vertexCount;
  uint32_t instanceCount;
  uint32_t firstVertex;
  uint32_t firstInstance;
}

struct VkDrawIndexedIndirectCommand {
  uint32_t indexCount;
  uint32_t instanceCount;
  uint32_t firstIndex;
  int32_t vertexOffset;
  uint32_t firstInstance;
}

struct VkDispatchIndirectCommand {
  uint32_t x;
  uint32_t y;
  uint32_t z;
}

struct VkMultiDrawInfoEXT {
  uint32_t firstVertex;
  uint32_t vertexCount;
}

struct VkMultiDrawIndexedInfoEXT {
  uint32_t firstIndex;
  uint32_t indexCount;
  int32_t vertexOffset;
}

struct VkSubmitInfo {
  VkStructureType sType;
  void pNext;
  uint32_t waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  VkPipelineStageFlags pWaitDstStageMask;
  uint32_t commandBufferCount;
  VkCommandBuffer pCommandBuffers;
  uint32_t signalSemaphoreCount;
  VkSemaphore pSignalSemaphores;
}

struct VkDisplayPropertiesKHR {
  VkDisplayKHR display;
  char displayName;
  VkExtent2D physicalDimensions;
  VkExtent2D physicalResolution;
  VkSurfaceTransformFlagsKHR supportedTransforms;
  VkBool32 planeReorderPossible;
  VkBool32 persistentContent;
}

struct VkDisplayPlanePropertiesKHR {
  VkDisplayKHR currentDisplay;
  uint32_t currentStackIndex;
}

struct VkDisplayModeParametersKHR {
  VkExtent2D visibleRegion;
  uint32_t refreshRate;
}

struct VkDisplayModePropertiesKHR {
  VkDisplayModeKHR displayMode;
  VkDisplayModeParametersKHR parameters;
}

struct VkDisplayModeCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDisplayModeCreateFlagsKHR flags;
  VkDisplayModeParametersKHR parameters;
}

struct VkDisplayPlaneCapabilitiesKHR {
  VkDisplayPlaneAlphaFlagsKHR supportedAlpha;
  VkOffset2D minSrcPosition;
  VkOffset2D maxSrcPosition;
  VkExtent2D minSrcExtent;
  VkExtent2D maxSrcExtent;
  VkOffset2D minDstPosition;
  VkOffset2D maxDstPosition;
  VkExtent2D minDstExtent;
  VkExtent2D maxDstExtent;
}

struct VkDisplaySurfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDisplaySurfaceCreateFlagsKHR flags;
  VkDisplayModeKHR displayMode;
  uint32_t planeIndex;
  uint32_t planeStackIndex;
  VkSurfaceTransformFlagBitsKHR transform;
  float globalAlpha;
  VkDisplayPlaneAlphaFlagBitsKHR alphaMode;
  VkExtent2D imageExtent;
}

struct VkDisplayPresentInfoKHR {
  VkStructureType sType;
  void pNext;
  VkRect2D srcRect;
  VkRect2D dstRect;
  VkBool32 persistent;
}

struct VkSurfaceCapabilitiesKHR {
  uint32_t minImageCount;
  uint32_t maxImageCount;
  VkExtent2D currentExtent;
  VkExtent2D minImageExtent;
  VkExtent2D maxImageExtent;
  uint32_t maxImageArrayLayers;
  VkSurfaceTransformFlagsKHR supportedTransforms;
  VkSurfaceTransformFlagBitsKHR currentTransform;
  VkCompositeAlphaFlagsKHR supportedCompositeAlpha;
  VkImageUsageFlags supportedUsageFlags;
}

struct VkAndroidSurfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAndroidSurfaceCreateFlagsKHR flags;
  ANativeWindow window;
}

struct VkViSurfaceCreateInfoNN {
  VkStructureType sType;
  void pNext;
  VkViSurfaceCreateFlagsNN flags;
  void window;
}

struct VkWaylandSurfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkWaylandSurfaceCreateFlagsKHR flags;
  wl_display display;
  wl_surface surface;
}

struct VkWin32SurfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkWin32SurfaceCreateFlagsKHR flags;
  HINSTANCE hinstance;
  HWND hwnd;
}

struct VkXlibSurfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkXlibSurfaceCreateFlagsKHR flags;
  Display dpy;
  Window window;
}

struct VkXcbSurfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkXcbSurfaceCreateFlagsKHR flags;
  xcb_connection_t connection;
  xcb_window_t window;
}

struct VkDirectFBSurfaceCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDirectFBSurfaceCreateFlagsEXT flags;
  IDirectFB dfb;
  IDirectFBSurface surface;
}

struct VkImagePipeSurfaceCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkImagePipeSurfaceCreateFlagsFUCHSIA flags;
  zx_handle_t imagePipeHandle;
}

struct VkStreamDescriptorSurfaceCreateInfoGGP {
  VkStructureType sType;
  void pNext;
  VkStreamDescriptorSurfaceCreateFlagsGGP flags;
  GgpStreamDescriptor streamDescriptor;
}

struct VkScreenSurfaceCreateInfoQNX {
  VkStructureType sType;
  void pNext;
  VkScreenSurfaceCreateFlagsQNX flags;
  _screen_context context;
  _screen_window window;
}

struct VkSurfaceFormatKHR {
  VkFormat format;
  VkColorSpaceKHR colorSpace;
}

struct VkSwapchainCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSwapchainCreateFlagsKHR flags;
  VkSurfaceKHR surface;
  uint32_t minImageCount;
  VkFormat imageFormat;
  VkColorSpaceKHR imageColorSpace;
  VkExtent2D imageExtent;
  uint32_t imageArrayLayers;
  VkImageUsageFlags imageUsage;
  VkSharingMode imageSharingMode;
  uint32_t queueFamilyIndexCount;
  uint32_t pQueueFamilyIndices;
  VkSurfaceTransformFlagBitsKHR preTransform;
  VkCompositeAlphaFlagBitsKHR compositeAlpha;
  VkPresentModeKHR presentMode;
  VkBool32 clipped;
  VkSwapchainKHR oldSwapchain;
  VkSwapchainKHR oldSwapchain;
}

struct VkPresentInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  uint32_t swapchainCount;
  VkSwapchainKHR pSwapchains;
  uint32_t pImageIndices;
  VkResult pResults;
}

struct VkDebugReportCallbackCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDebugReportFlagsEXT flags;
  PFN_vkDebugReportCallbackEXT pfnCallback;
  void pUserData;
}

struct VkValidationFlagsEXT {
  VkStructureType sType;
  void pNext;
  uint32_t disabledValidationCheckCount;
  VkValidationCheckEXT pDisabledValidationChecks;
}

struct VkValidationFeaturesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t enabledValidationFeatureCount;
  VkValidationFeatureEnableEXT pEnabledValidationFeatures;
  uint32_t disabledValidationFeatureCount;
  VkValidationFeatureDisableEXT pDisabledValidationFeatures;
}

struct VkApplicationParametersEXT {
  VkStructureType sType;
  void pNext;
  uint32_t vendorID;
  uint32_t deviceID;
  uint32_t key;
  uint64_t value;
}

struct VkPipelineRasterizationStateRasterizationOrderAMD {
  VkStructureType sType;
  void pNext;
  VkRasterizationOrderAMD rasterizationOrder;
}

struct VkDebugMarkerObjectNameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDebugReportObjectTypeEXT objectType;
  uint64_t object;
  char pObjectName;
}

struct VkDebugMarkerObjectTagInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDebugReportObjectTypeEXT objectType;
  uint64_t object;
  uint64_t tagName;
  size_t tagSize;
  void pTag;
}

struct VkDebugMarkerMarkerInfoEXT {
  VkStructureType sType;
  void pNext;
  char pMarkerName;
  float color;
}

struct VkDedicatedAllocationImageCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 dedicatedAllocation;
}

struct VkDedicatedAllocationBufferCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 dedicatedAllocation;
}

struct VkDedicatedAllocationMemoryAllocateInfoNV {
  VkStructureType sType;
  void pNext;
  VkImage image;
  VkBuffer buffer;
}

struct VkExternalImageFormatPropertiesNV {
  VkImageFormatProperties imageFormatProperties;
  VkExternalMemoryFeatureFlagsNV externalMemoryFeatures;
  VkExternalMemoryHandleTypeFlagsNV exportFromImportedHandleTypes;
  VkExternalMemoryHandleTypeFlagsNV compatibleHandleTypes;
}

struct VkExternalMemoryImageCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagsNV handleTypes;
}

struct VkExportMemoryAllocateInfoNV {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagsNV handleTypes;
}

struct VkImportMemoryWin32HandleInfoNV {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagsNV handleType;
  HANDLE handle;
}

struct VkExportMemoryWin32HandleInfoNV {
  VkStructureType sType;
  void pNext;
  SECURITY_ATTRIBUTES pAttributes;
  DWORD dwAccess;
}

struct VkExportMemorySciBufInfoNV {
  VkStructureType sType;
  void pNext;
  NvSciBufAttrList pAttributes;
}

struct VkImportMemorySciBufInfoNV {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
  NvSciBufObj handle;
}

struct VkMemoryGetSciBufInfoNV {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkMemorySciBufPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t memoryTypeBits;
}

struct VkPhysicalDeviceExternalMemorySciBufFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 sciBufImport;
  VkBool32 sciBufExport;
}

struct VkPhysicalDeviceExternalSciBufFeaturesNV {
  
}

struct VkWin32KeyedMutexAcquireReleaseInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t acquireCount;
  VkDeviceMemory pAcquireSyncs;
  uint64_t pAcquireKeys;
  uint32_t pAcquireTimeoutMilliseconds;
  uint32_t releaseCount;
  VkDeviceMemory pReleaseSyncs;
  uint64_t pReleaseKeys;
}

struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 deviceGeneratedCommands;
}

struct VkDevicePrivateDataCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t privateDataSlotRequestCount;
}

struct VkDevicePrivateDataCreateInfoEXT {
  
}

struct VkPrivateDataSlotCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPrivateDataSlotCreateFlags flags;
}

struct VkPrivateDataSlotCreateInfoEXT {
  
}

struct VkPhysicalDevicePrivateDataFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 privateData;
}

struct VkPhysicalDevicePrivateDataFeaturesEXT {
  
}

struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t maxGraphicsShaderGroupCount;
  uint32_t maxIndirectSequenceCount;
  uint32_t maxIndirectCommandsTokenCount;
  uint32_t maxIndirectCommandsStreamCount;
  uint32_t maxIndirectCommandsTokenOffset;
  uint32_t maxIndirectCommandsStreamStride;
  uint32_t minSequencesCountBufferOffsetAlignment;
  uint32_t minSequencesIndexBufferOffsetAlignment;
  uint32_t minIndirectCommandsBufferOffsetAlignment;
}

struct VkPhysicalDeviceMultiDrawPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxMultiDrawCount;
}

struct VkGraphicsShaderGroupCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  VkPipelineVertexInputStateCreateInfo pVertexInputState;
  VkPipelineTessellationStateCreateInfo pTessellationState;
}

struct VkGraphicsPipelineShaderGroupsCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t groupCount;
  VkGraphicsShaderGroupCreateInfoNV pGroups;
  uint32_t pipelineCount;
  VkPipeline pPipelines;
}

struct VkBindShaderGroupIndirectCommandNV {
  uint32_t groupIndex;
}

struct VkBindIndexBufferIndirectCommandNV {
  VkDeviceAddress bufferAddress;
  uint32_t size;
  VkIndexType indexType;
}

struct VkBindVertexBufferIndirectCommandNV {
  VkDeviceAddress bufferAddress;
  uint32_t size;
  uint32_t stride;
}

struct VkSetStateFlagsIndirectCommandNV {
  uint32_t data;
}

struct VkIndirectCommandsStreamNV {
  VkBuffer buffer;
  VkDeviceSize offset;
}

struct VkIndirectCommandsLayoutTokenNV {
  VkStructureType sType;
  void pNext;
  VkIndirectCommandsTokenTypeNV tokenType;
  uint32_t stream;
  uint32_t offset;
  uint32_t vertexBindingUnit;
  VkBool32 vertexDynamicStride;
  VkPipelineLayout pushconstantPipelineLayout;
  VkShaderStageFlags pushconstantShaderStageFlags;
  uint32_t pushconstantOffset;
  uint32_t pushconstantSize;
  VkIndirectStateFlagsNV indirectStateFlags;
  uint32_t indexTypeCount;
  VkIndexType pIndexTypes;
  uint32_t pIndexTypeValues;
}

struct VkIndirectCommandsLayoutCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkIndirectCommandsLayoutUsageFlagsNV flags;
  VkPipelineBindPoint pipelineBindPoint;
  uint32_t tokenCount;
  VkIndirectCommandsLayoutTokenNV pTokens;
  uint32_t streamCount;
  uint32_t pStreamStrides;
}

struct VkGeneratedCommandsInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineBindPoint pipelineBindPoint;
  VkPipeline pipeline;
  VkIndirectCommandsLayoutNV indirectCommandsLayout;
  uint32_t streamCount;
  VkIndirectCommandsStreamNV pStreams;
  uint32_t sequencesCount;
  VkBuffer preprocessBuffer;
  VkDeviceSize preprocessOffset;
  VkDeviceSize preprocessSize;
  VkBuffer sequencesCountBuffer;
  VkDeviceSize sequencesCountOffset;
  VkBuffer sequencesIndexBuffer;
  VkDeviceSize sequencesIndexOffset;
}

struct VkGeneratedCommandsMemoryRequirementsInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineBindPoint pipelineBindPoint;
  VkPipeline pipeline;
  VkIndirectCommandsLayoutNV indirectCommandsLayout;
  uint32_t maxSequencesCount;
}

struct VkPhysicalDeviceFeatures2 {
  VkStructureType sType;
  void pNext;
  VkPhysicalDeviceFeatures features;
}

struct VkPhysicalDeviceFeatures2KHR {
  
}

struct VkPhysicalDeviceProperties2 {
  VkStructureType sType;
  void pNext;
  VkPhysicalDeviceProperties properties;
}

struct VkPhysicalDeviceProperties2KHR {
  
}

struct VkFormatProperties2 {
  VkStructureType sType;
  void pNext;
  VkFormatProperties formatProperties;
}

struct VkFormatProperties2KHR {
  
}

struct VkImageFormatProperties2 {
  VkStructureType sType;
  void pNext;
  VkImageFormatProperties imageFormatProperties;
}

struct VkImageFormatProperties2KHR {
  
}

struct VkPhysicalDeviceImageFormatInfo2 {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  VkImageType type;
  VkImageTiling tiling;
  VkImageUsageFlags usage;
  VkImageCreateFlags flags;
}

struct VkPhysicalDeviceImageFormatInfo2KHR {
  
}

struct VkQueueFamilyProperties2 {
  VkStructureType sType;
  void pNext;
  VkQueueFamilyProperties queueFamilyProperties;
}

struct VkQueueFamilyProperties2KHR {
  
}

struct VkPhysicalDeviceMemoryProperties2 {
  VkStructureType sType;
  void pNext;
  VkPhysicalDeviceMemoryProperties memoryProperties;
}

struct VkPhysicalDeviceMemoryProperties2KHR {
  
}

struct VkSparseImageFormatProperties2 {
  VkStructureType sType;
  void pNext;
  VkSparseImageFormatProperties properties;
}

struct VkSparseImageFormatProperties2KHR {
  
}

struct VkPhysicalDeviceSparseImageFormatInfo2 {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  VkImageType type;
  VkSampleCountFlagBits samples;
  VkImageUsageFlags usage;
  VkImageTiling tiling;
}

struct VkPhysicalDeviceSparseImageFormatInfo2KHR {
  
}

struct VkPhysicalDevicePushDescriptorPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t maxPushDescriptors;
}

struct VkConformanceVersion {
  uint8_t major;
  uint8_t minor;
  uint8_t subminor;
  uint8_t patch;
}

struct VkConformanceVersionKHR {
  
}

struct VkPhysicalDeviceDriverProperties {
  VkStructureType sType;
  void pNext;
  VkDriverId driverID;
  char driverName;
  char driverInfo;
  VkConformanceVersion conformanceVersion;
}

struct VkPhysicalDeviceDriverPropertiesKHR {
  
}

struct VkPresentRegionsKHR {
  VkStructureType sType;
  void pNext;
  uint32_t swapchainCount;
  VkPresentRegionKHR pRegions;
}

struct VkPresentRegionKHR {
  uint32_t rectangleCount;
  VkRectLayerKHR pRectangles;
}

struct VkRectLayerKHR {
  VkOffset2D offset;
  VkExtent2D extent;
  uint32_t layer;
}

struct VkPhysicalDeviceVariablePointersFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 variablePointersStorageBuffer;
  VkBool32 variablePointers;
}

struct VkPhysicalDeviceVariablePointersFeaturesKHR {
  
}

struct VkPhysicalDeviceVariablePointerFeaturesKHR {
  
}

struct VkPhysicalDeviceVariablePointerFeatures {
  
}

struct VkExternalMemoryProperties {
  VkExternalMemoryFeatureFlags externalMemoryFeatures;
  VkExternalMemoryHandleTypeFlags exportFromImportedHandleTypes;
  VkExternalMemoryHandleTypeFlags compatibleHandleTypes;
}

struct VkExternalMemoryPropertiesKHR {
  
}

struct VkPhysicalDeviceExternalImageFormatInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkPhysicalDeviceExternalImageFormatInfoKHR {
  
}

struct VkExternalImageFormatProperties {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryProperties externalMemoryProperties;
}

struct VkExternalImageFormatPropertiesKHR {
  
}

struct VkPhysicalDeviceExternalBufferInfo {
  VkStructureType sType;
  void pNext;
  VkBufferCreateFlags flags;
  VkBufferUsageFlags usage;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkPhysicalDeviceExternalBufferInfoKHR {
  
}

struct VkExternalBufferProperties {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryProperties externalMemoryProperties;
}

struct VkExternalBufferPropertiesKHR {
  
}

struct VkPhysicalDeviceIDProperties {
  VkStructureType sType;
  void pNext;
  uint8_t deviceUUID;
  uint8_t driverUUID;
  uint8_t deviceLUID;
  uint32_t deviceNodeMask;
  VkBool32 deviceLUIDValid;
}

struct VkPhysicalDeviceIDPropertiesKHR {
  
}

struct VkExternalMemoryImageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlags handleTypes;
}

struct VkExternalMemoryImageCreateInfoKHR {
  
}

struct VkExternalMemoryBufferCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlags handleTypes;
}

struct VkExternalMemoryBufferCreateInfoKHR {
  
}

struct VkExportMemoryAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlags handleTypes;
}

struct VkExportMemoryAllocateInfoKHR {
  
}

struct VkImportMemoryWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
  HANDLE handle;
  LPCWSTR name;
}

struct VkExportMemoryWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  SECURITY_ATTRIBUTES pAttributes;
  DWORD dwAccess;
  LPCWSTR name;
}

struct VkImportMemoryZirconHandleInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
  zx_handle_t handle;
}

struct VkMemoryZirconHandlePropertiesFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint32_t memoryTypeBits;
}

struct VkMemoryGetZirconHandleInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkMemoryWin32HandlePropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t memoryTypeBits;
}

struct VkMemoryGetWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkImportMemoryFdInfoKHR {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
  int fd;
}

struct VkMemoryFdPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t memoryTypeBits;
}

struct VkMemoryGetFdInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkWin32KeyedMutexAcquireReleaseInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t acquireCount;
  VkDeviceMemory pAcquireSyncs;
  uint64_t pAcquireKeys;
  uint32_t pAcquireTimeouts;
  uint32_t releaseCount;
  VkDeviceMemory pReleaseSyncs;
  uint64_t pReleaseKeys;
}

struct VkPhysicalDeviceExternalSemaphoreInfo {
  VkStructureType sType;
  void pNext;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
}

struct VkPhysicalDeviceExternalSemaphoreInfoKHR {
  
}

struct VkExternalSemaphoreProperties {
  VkStructureType sType;
  void pNext;
  VkExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes;
  VkExternalSemaphoreHandleTypeFlags compatibleHandleTypes;
  VkExternalSemaphoreFeatureFlags externalSemaphoreFeatures;
}

struct VkExternalSemaphorePropertiesKHR {
  
}

struct VkExportSemaphoreCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalSemaphoreHandleTypeFlags handleTypes;
}

struct VkExportSemaphoreCreateInfoKHR {
  
}

struct VkImportSemaphoreWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkSemaphoreImportFlags flags;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
  HANDLE handle;
  LPCWSTR name;
}

struct VkExportSemaphoreWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  SECURITY_ATTRIBUTES pAttributes;
  DWORD dwAccess;
  LPCWSTR name;
}

struct VkD3D12FenceSubmitInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t waitSemaphoreValuesCount;
  uint64_t pWaitSemaphoreValues;
  uint32_t signalSemaphoreValuesCount;
  uint64_t pSignalSemaphoreValues;
}

struct VkSemaphoreGetWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
}

struct VkImportSemaphoreFdInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkSemaphoreImportFlags flags;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
  int fd;
}

struct VkSemaphoreGetFdInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
}

struct VkImportSemaphoreZirconHandleInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkSemaphoreImportFlags flags;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
  zx_handle_t zirconHandle;
}

struct VkSemaphoreGetZirconHandleInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
}

struct VkPhysicalDeviceExternalFenceInfo {
  VkStructureType sType;
  void pNext;
  VkExternalFenceHandleTypeFlagBits handleType;
}

struct VkPhysicalDeviceExternalFenceInfoKHR {
  
}

struct VkExternalFenceProperties {
  VkStructureType sType;
  void pNext;
  VkExternalFenceHandleTypeFlags exportFromImportedHandleTypes;
  VkExternalFenceHandleTypeFlags compatibleHandleTypes;
  VkExternalFenceFeatureFlags externalFenceFeatures;
}

struct VkExternalFencePropertiesKHR {
  
}

struct VkExportFenceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalFenceHandleTypeFlags handleTypes;
}

struct VkExportFenceCreateInfoKHR {
  
}

struct VkImportFenceWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  VkFence fence;
  VkFenceImportFlags flags;
  VkExternalFenceHandleTypeFlagBits handleType;
  HANDLE handle;
  LPCWSTR name;
}

struct VkExportFenceWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  SECURITY_ATTRIBUTES pAttributes;
  DWORD dwAccess;
  LPCWSTR name;
}

struct VkFenceGetWin32HandleInfoKHR {
  VkStructureType sType;
  void pNext;
  VkFence fence;
  VkExternalFenceHandleTypeFlagBits handleType;
}

struct VkImportFenceFdInfoKHR {
  VkStructureType sType;
  void pNext;
  VkFence fence;
  VkFenceImportFlags flags;
  VkExternalFenceHandleTypeFlagBits handleType;
  int fd;
}

struct VkFenceGetFdInfoKHR {
  VkStructureType sType;
  void pNext;
  VkFence fence;
  VkExternalFenceHandleTypeFlagBits handleType;
}

struct VkExportFenceSciSyncInfoNV {
  VkStructureType sType;
  void pNext;
  NvSciSyncAttrList pAttributes;
}

struct VkImportFenceSciSyncInfoNV {
  VkStructureType sType;
  void pNext;
  VkFence fence;
  VkExternalFenceHandleTypeFlagBits handleType;
  void handle;
}

struct VkFenceGetSciSyncInfoNV {
  VkStructureType sType;
  void pNext;
  VkFence fence;
  VkExternalFenceHandleTypeFlagBits handleType;
}

struct VkExportSemaphoreSciSyncInfoNV {
  VkStructureType sType;
  void pNext;
  NvSciSyncAttrList pAttributes;
}

struct VkImportSemaphoreSciSyncInfoNV {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
  void handle;
}

struct VkSemaphoreGetSciSyncInfoNV {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
}

struct VkSciSyncAttributesInfoNV {
  VkStructureType sType;
  void pNext;
  VkSciSyncClientTypeNV clientType;
  VkSciSyncPrimitiveTypeNV primitiveType;
}

struct VkPhysicalDeviceExternalSciSyncFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 sciSyncFence;
  VkBool32 sciSyncSemaphore;
  VkBool32 sciSyncImport;
  VkBool32 sciSyncExport;
}

struct VkPhysicalDeviceExternalSciSync2FeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 sciSyncFence;
  VkBool32 sciSyncSemaphore2;
  VkBool32 sciSyncImport;
  VkBool32 sciSyncExport;
}

struct VkSemaphoreSciSyncPoolCreateInfoNV {
  VkStructureType sType;
  void pNext;
  NvSciSyncObj handle;
}

struct VkSemaphoreSciSyncCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkSemaphoreSciSyncPoolNV semaphorePool;
  NvSciSyncFence pFence;
}

struct VkDeviceSemaphoreSciSyncPoolReservationCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t semaphoreSciSyncPoolRequestCount;
}

struct VkPhysicalDeviceMultiviewFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 multiview;
  VkBool32 multiviewGeometryShader;
  VkBool32 multiviewTessellationShader;
}

struct VkPhysicalDeviceMultiviewFeaturesKHR {
  
}

struct VkPhysicalDeviceMultiviewProperties {
  VkStructureType sType;
  void pNext;
  uint32_t maxMultiviewViewCount;
  uint32_t maxMultiviewInstanceIndex;
}

struct VkPhysicalDeviceMultiviewPropertiesKHR {
  
}

struct VkRenderPassMultiviewCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t subpassCount;
  uint32_t pViewMasks;
  uint32_t dependencyCount;
  int32_t pViewOffsets;
  uint32_t correlationMaskCount;
  uint32_t pCorrelationMasks;
}

struct VkRenderPassMultiviewCreateInfoKHR {
  
}

struct VkSurfaceCapabilities2EXT {
  VkStructureType sType;
  void pNext;
  uint32_t minImageCount;
  uint32_t maxImageCount;
  VkExtent2D currentExtent;
  VkExtent2D minImageExtent;
  VkExtent2D maxImageExtent;
  uint32_t maxImageArrayLayers;
  VkSurfaceTransformFlagsKHR supportedTransforms;
  VkSurfaceTransformFlagBitsKHR currentTransform;
  VkCompositeAlphaFlagsKHR supportedCompositeAlpha;
  VkImageUsageFlags supportedUsageFlags;
  VkSurfaceCounterFlagsEXT supportedSurfaceCounters;
}

struct VkDisplayPowerInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDisplayPowerStateEXT powerState;
}

struct VkDeviceEventInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceEventTypeEXT deviceEvent;
}

struct VkDisplayEventInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDisplayEventTypeEXT displayEvent;
}

struct VkSwapchainCounterCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkSurfaceCounterFlagsEXT surfaceCounters;
}

struct VkPhysicalDeviceGroupProperties {
  VkStructureType sType;
  void pNext;
  uint32_t physicalDeviceCount;
  VkPhysicalDevice physicalDevices;
  VkBool32 subsetAllocation;
}

struct VkPhysicalDeviceGroupPropertiesKHR {
  
}

struct VkMemoryAllocateFlagsInfo {
  VkStructureType sType;
  void pNext;
  VkMemoryAllocateFlags flags;
  uint32_t deviceMask;
}

struct VkMemoryAllocateFlagsInfoKHR {
  
}

struct VkBindBufferMemoryInfo {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
}

struct VkBindBufferMemoryInfoKHR {
  
}

struct VkBindBufferMemoryDeviceGroupInfo {
  VkStructureType sType;
  void pNext;
  uint32_t deviceIndexCount;
  uint32_t pDeviceIndices;
}

struct VkBindBufferMemoryDeviceGroupInfoKHR {
  
}

struct VkBindImageMemoryInfo {
  VkStructureType sType;
  void pNext;
  VkImage image;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
}

struct VkBindImageMemoryInfoKHR {
  
}

struct VkBindImageMemoryDeviceGroupInfo {
  VkStructureType sType;
  void pNext;
  uint32_t deviceIndexCount;
  uint32_t pDeviceIndices;
  uint32_t splitInstanceBindRegionCount;
  VkRect2D pSplitInstanceBindRegions;
}

struct VkBindImageMemoryDeviceGroupInfoKHR {
  
}

struct VkDeviceGroupRenderPassBeginInfo {
  VkStructureType sType;
  void pNext;
  uint32_t deviceMask;
  uint32_t deviceRenderAreaCount;
  VkRect2D pDeviceRenderAreas;
}

struct VkDeviceGroupRenderPassBeginInfoKHR {
  
}

struct VkDeviceGroupCommandBufferBeginInfo {
  VkStructureType sType;
  void pNext;
  uint32_t deviceMask;
}

struct VkDeviceGroupCommandBufferBeginInfoKHR {
  
}

struct VkDeviceGroupSubmitInfo {
  VkStructureType sType;
  void pNext;
  uint32_t waitSemaphoreCount;
  uint32_t pWaitSemaphoreDeviceIndices;
  uint32_t commandBufferCount;
  uint32_t pCommandBufferDeviceMasks;
  uint32_t signalSemaphoreCount;
  uint32_t pSignalSemaphoreDeviceIndices;
}

struct VkDeviceGroupSubmitInfoKHR {
  
}

struct VkDeviceGroupBindSparseInfo {
  VkStructureType sType;
  void pNext;
  uint32_t resourceDeviceIndex;
  uint32_t memoryDeviceIndex;
}

struct VkDeviceGroupBindSparseInfoKHR {
  
}

struct VkDeviceGroupPresentCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t presentMask;
  VkDeviceGroupPresentModeFlagsKHR modes;
}

struct VkImageSwapchainCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSwapchainKHR swapchain;
}

struct VkBindImageMemorySwapchainInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSwapchainKHR swapchain;
  uint32_t imageIndex;
}

struct VkAcquireNextImageInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSwapchainKHR swapchain;
  uint64_t timeout;
  VkSemaphore semaphore;
  VkFence fence;
  uint32_t deviceMask;
}

struct VkDeviceGroupPresentInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t swapchainCount;
  uint32_t pDeviceMasks;
  VkDeviceGroupPresentModeFlagBitsKHR mode;
}

struct VkDeviceGroupDeviceCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t physicalDeviceCount;
  VkPhysicalDevice pPhysicalDevices;
}

struct VkDeviceGroupDeviceCreateInfoKHR {
  
}

struct VkDeviceGroupSwapchainCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceGroupPresentModeFlagsKHR modes;
}

struct VkDescriptorUpdateTemplateEntry {
  uint32_t dstBinding;
  uint32_t dstArrayElement;
  uint32_t descriptorCount;
  VkDescriptorType descriptorType;
  size_t offset;
  size_t stride;
}

struct VkDescriptorUpdateTemplateEntryKHR {
  
}

struct VkDescriptorUpdateTemplateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorUpdateTemplateCreateFlags flags;
  uint32_t descriptorUpdateEntryCount;
  VkDescriptorUpdateTemplateEntry pDescriptorUpdateEntries;
  VkDescriptorUpdateTemplateType templateType;
  VkDescriptorSetLayout descriptorSetLayout;
  VkPipelineBindPoint pipelineBindPoint;
  VkPipelineLayout pipelineLayout;
  uint32_t set;
}

struct VkDescriptorUpdateTemplateCreateInfoKHR {
  
}

struct VkXYColorEXT {
  float x;
  float y;
}

struct VkPhysicalDevicePresentIdFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 presentId;
}

struct VkPresentIdKHR {
  VkStructureType sType;
  void pNext;
  uint32_t swapchainCount;
  uint64_t pPresentIds;
}

struct VkPhysicalDevicePresentWaitFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 presentWait;
}

struct VkHdrMetadataEXT {
  VkStructureType sType;
  void pNext;
  VkXYColorEXT displayPrimaryRed;
  VkXYColorEXT displayPrimaryGreen;
  VkXYColorEXT displayPrimaryBlue;
  VkXYColorEXT whitePoint;
  float maxLuminance;
  float minLuminance;
  float maxContentLightLevel;
  float maxFrameAverageLightLevel;
}

struct VkDisplayNativeHdrSurfaceCapabilitiesAMD {
  VkStructureType sType;
  void pNext;
  VkBool32 localDimmingSupport;
}

struct VkSwapchainDisplayNativeHdrCreateInfoAMD {
  VkStructureType sType;
  void pNext;
  VkBool32 localDimmingEnable;
}

struct VkRefreshCycleDurationGOOGLE {
  uint64_t refreshDuration;
}

struct VkPastPresentationTimingGOOGLE {
  uint32_t presentID;
  uint64_t desiredPresentTime;
  uint64_t actualPresentTime;
  uint64_t earliestPresentTime;
  uint64_t presentMargin;
}

struct VkPresentTimesInfoGOOGLE {
  VkStructureType sType;
  void pNext;
  uint32_t swapchainCount;
  VkPresentTimeGOOGLE pTimes;
}

struct VkPresentTimeGOOGLE {
  uint32_t presentID;
  uint64_t desiredPresentTime;
}

struct VkIOSSurfaceCreateInfoMVK {
  VkStructureType sType;
  void pNext;
  VkIOSSurfaceCreateFlagsMVK flags;
  void pView;
}

struct VkMacOSSurfaceCreateInfoMVK {
  VkStructureType sType;
  void pNext;
  VkMacOSSurfaceCreateFlagsMVK flags;
  void pView;
}

struct VkMetalSurfaceCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkMetalSurfaceCreateFlagsEXT flags;
  CAMetalLayer pLayer;
}

struct VkViewportWScalingNV {
  float xcoeff;
  float ycoeff;
}

struct VkPipelineViewportWScalingStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 viewportWScalingEnable;
  uint32_t viewportCount;
  VkViewportWScalingNV pViewportWScalings;
}

struct VkViewportSwizzleNV {
  VkViewportCoordinateSwizzleNV x;
  VkViewportCoordinateSwizzleNV y;
  VkViewportCoordinateSwizzleNV z;
  VkViewportCoordinateSwizzleNV w;
}

struct VkPipelineViewportSwizzleStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineViewportSwizzleStateCreateFlagsNV flags;
  uint32_t viewportCount;
  VkViewportSwizzleNV pViewportSwizzles;
}

struct VkPhysicalDeviceDiscardRectanglePropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxDiscardRectangles;
}

struct VkPipelineDiscardRectangleStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineDiscardRectangleStateCreateFlagsEXT flags;
  VkDiscardRectangleModeEXT discardRectangleMode;
  uint32_t discardRectangleCount;
  VkRect2D pDiscardRectangles;
}

struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX {
  VkStructureType sType;
  void pNext;
  VkBool32 perViewPositionAllComponents;
}

struct VkInputAttachmentAspectReference {
  uint32_t subpass;
  uint32_t inputAttachmentIndex;
  VkImageAspectFlags aspectMask;
}

struct VkInputAttachmentAspectReferenceKHR {
  
}

struct VkRenderPassInputAttachmentAspectCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t aspectReferenceCount;
  VkInputAttachmentAspectReference pAspectReferences;
}

struct VkRenderPassInputAttachmentAspectCreateInfoKHR {
  
}

struct VkPhysicalDeviceSurfaceInfo2KHR {
  VkStructureType sType;
  void pNext;
  VkSurfaceKHR surface;
}

struct VkSurfaceCapabilities2KHR {
  VkStructureType sType;
  void pNext;
  VkSurfaceCapabilitiesKHR surfaceCapabilities;
}

struct VkSurfaceFormat2KHR {
  VkStructureType sType;
  void pNext;
  VkSurfaceFormatKHR surfaceFormat;
}

struct VkDisplayProperties2KHR {
  VkStructureType sType;
  void pNext;
  VkDisplayPropertiesKHR displayProperties;
}

struct VkDisplayPlaneProperties2KHR {
  VkStructureType sType;
  void pNext;
  VkDisplayPlanePropertiesKHR displayPlaneProperties;
}

struct VkDisplayModeProperties2KHR {
  VkStructureType sType;
  void pNext;
  VkDisplayModePropertiesKHR displayModeProperties;
}

struct VkDisplayPlaneInfo2KHR {
  VkStructureType sType;
  void pNext;
  VkDisplayModeKHR mode;
  uint32_t planeIndex;
}

struct VkDisplayPlaneCapabilities2KHR {
  VkStructureType sType;
  void pNext;
  VkDisplayPlaneCapabilitiesKHR capabilities;
}

struct VkSharedPresentSurfaceCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  VkImageUsageFlags sharedPresentSupportedUsageFlags;
}

struct VkPhysicalDevice16BitStorageFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 storageBuffer16BitAccess;
  VkBool32 uniformAndStorageBuffer16BitAccess;
  VkBool32 storagePushConstant16;
  VkBool32 storageInputOutput16;
}

struct VkPhysicalDevice16BitStorageFeaturesKHR {
  
}

struct VkPhysicalDeviceSubgroupProperties {
  VkStructureType sType;
  void pNext;
  uint32_t subgroupSize;
  VkShaderStageFlags supportedStages;
  VkSubgroupFeatureFlags supportedOperations;
  VkBool32 quadOperationsInAllStages;
}

struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderSubgroupExtendedTypes;
}

struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR {
  
}

struct VkBufferMemoryRequirementsInfo2 {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
}

struct VkBufferMemoryRequirementsInfo2KHR {
  
}

struct VkDeviceBufferMemoryRequirements {
  VkStructureType sType;
  void pNext;
  VkBufferCreateInfo pCreateInfo;
}

struct VkDeviceBufferMemoryRequirementsKHR {
  
}

struct VkImageMemoryRequirementsInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage image;
}

struct VkImageMemoryRequirementsInfo2KHR {
  
}

struct VkImageSparseMemoryRequirementsInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage image;
}

struct VkImageSparseMemoryRequirementsInfo2KHR {
  
}

struct VkDeviceImageMemoryRequirements {
  VkStructureType sType;
  void pNext;
  VkImageCreateInfo pCreateInfo;
  VkImageAspectFlagBits planeAspect;
}

struct VkDeviceImageMemoryRequirementsKHR {
  
}

struct VkMemoryRequirements2 {
  VkStructureType sType;
  void pNext;
  VkMemoryRequirements memoryRequirements;
}

struct VkMemoryRequirements2KHR {
  
}

struct VkSparseImageMemoryRequirements2 {
  VkStructureType sType;
  void pNext;
  VkSparseImageMemoryRequirements memoryRequirements;
}

struct VkSparseImageMemoryRequirements2KHR {
  
}

struct VkPhysicalDevicePointClippingProperties {
  VkStructureType sType;
  void pNext;
  VkPointClippingBehavior pointClippingBehavior;
}

struct VkPhysicalDevicePointClippingPropertiesKHR {
  
}

struct VkMemoryDedicatedRequirements {
  VkStructureType sType;
  void pNext;
  VkBool32 prefersDedicatedAllocation;
  VkBool32 requiresDedicatedAllocation;
}

struct VkMemoryDedicatedRequirementsKHR {
  
}

struct VkMemoryDedicatedAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkImage image;
  VkBuffer buffer;
}

struct VkMemoryDedicatedAllocateInfoKHR {
  
}

struct VkImageViewUsageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkImageUsageFlags usage;
}

struct VkImageViewSlicedCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t sliceOffset;
  uint32_t sliceCount;
}

struct VkImageViewUsageCreateInfoKHR {
  
}

struct VkPipelineTessellationDomainOriginStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkTessellationDomainOrigin domainOrigin;
}

struct VkPipelineTessellationDomainOriginStateCreateInfoKHR {
  
}

struct VkSamplerYcbcrConversionInfo {
  VkStructureType sType;
  void pNext;
  VkSamplerYcbcrConversion conversion;
}

struct VkSamplerYcbcrConversionInfoKHR {
  
}

struct VkSamplerYcbcrConversionCreateInfo {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  VkSamplerYcbcrModelConversion ycbcrModel;
  VkSamplerYcbcrRange ycbcrRange;
  VkComponentMapping components;
  VkChromaLocation xChromaOffset;
  VkChromaLocation yChromaOffset;
  VkFilter chromaFilter;
  VkBool32 forceExplicitReconstruction;
}

struct VkSamplerYcbcrConversionCreateInfoKHR {
  
}

struct VkBindImagePlaneMemoryInfo {
  VkStructureType sType;
  void pNext;
  VkImageAspectFlagBits planeAspect;
}

struct VkBindImagePlaneMemoryInfoKHR {
  
}

struct VkImagePlaneMemoryRequirementsInfo {
  VkStructureType sType;
  void pNext;
  VkImageAspectFlagBits planeAspect;
}

struct VkImagePlaneMemoryRequirementsInfoKHR {
  
}

struct VkPhysicalDeviceSamplerYcbcrConversionFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 samplerYcbcrConversion;
}

struct VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR {
  
}

struct VkSamplerYcbcrConversionImageFormatProperties {
  VkStructureType sType;
  void pNext;
  uint32_t combinedImageSamplerDescriptorCount;
}

struct VkSamplerYcbcrConversionImageFormatPropertiesKHR {
  
}

struct VkTextureLODGatherFormatPropertiesAMD {
  VkStructureType sType;
  void pNext;
  VkBool32 supportsTextureGatherLODBiasAMD;
}

struct VkConditionalRenderingBeginInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkConditionalRenderingFlagsEXT flags;
}

struct VkProtectedSubmitInfo {
  VkStructureType sType;
  void pNext;
  VkBool32 protectedSubmit;
}

struct VkPhysicalDeviceProtectedMemoryFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 protectedMemory;
}

struct VkPhysicalDeviceProtectedMemoryProperties {
  VkStructureType sType;
  void pNext;
  VkBool32 protectedNoFault;
}

struct VkDeviceQueueInfo2 {
  VkStructureType sType;
  void pNext;
  VkDeviceQueueCreateFlags flags;
  uint32_t queueFamilyIndex;
  uint32_t queueIndex;
}

struct VkPipelineCoverageToColorStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCoverageToColorStateCreateFlagsNV flags;
  VkBool32 coverageToColorEnable;
  uint32_t coverageToColorLocation;
}

struct VkPhysicalDeviceSamplerFilterMinmaxProperties {
  VkStructureType sType;
  void pNext;
  VkBool32 filterMinmaxSingleComponentFormats;
  VkBool32 filterMinmaxImageComponentMapping;
}

struct VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT {
  
}

struct VkSampleLocationEXT {
  float x;
  float y;
}

struct VkSampleLocationsInfoEXT {
  VkStructureType sType;
  void pNext;
  VkSampleCountFlagBits sampleLocationsPerPixel;
  VkExtent2D sampleLocationGridSize;
  uint32_t sampleLocationsCount;
  VkSampleLocationEXT pSampleLocations;
}

struct VkAttachmentSampleLocationsEXT {
  uint32_t attachmentIndex;
  VkSampleLocationsInfoEXT sampleLocationsInfo;
}

struct VkSubpassSampleLocationsEXT {
  uint32_t subpassIndex;
  VkSampleLocationsInfoEXT sampleLocationsInfo;
}

struct VkRenderPassSampleLocationsBeginInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t attachmentInitialSampleLocationsCount;
  VkAttachmentSampleLocationsEXT pAttachmentInitialSampleLocations;
  uint32_t postSubpassSampleLocationsCount;
  VkSubpassSampleLocationsEXT pPostSubpassSampleLocations;
}

struct VkPipelineSampleLocationsStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 sampleLocationsEnable;
  VkSampleLocationsInfoEXT sampleLocationsInfo;
}

struct VkPhysicalDeviceSampleLocationsPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkSampleCountFlags sampleLocationSampleCounts;
  VkExtent2D maxSampleLocationGridSize;
  float sampleLocationCoordinateRange;
  uint32_t sampleLocationSubPixelBits;
  VkBool32 variableSampleLocations;
}

struct VkMultisamplePropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkExtent2D maxSampleLocationGridSize;
}

struct VkSamplerReductionModeCreateInfo {
  VkStructureType sType;
  void pNext;
  VkSamplerReductionMode reductionMode;
}

struct VkSamplerReductionModeCreateInfoEXT {
  
}

struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 advancedBlendCoherentOperations;
}

struct VkPhysicalDeviceMultiDrawFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 multiDraw;
}

struct VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t advancedBlendMaxColorAttachments;
  VkBool32 advancedBlendIndependentBlend;
  VkBool32 advancedBlendNonPremultipliedSrcColor;
  VkBool32 advancedBlendNonPremultipliedDstColor;
  VkBool32 advancedBlendCorrelatedOverlap;
  VkBool32 advancedBlendAllOperations;
}

struct VkPipelineColorBlendAdvancedStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 srcPremultiplied;
  VkBool32 dstPremultiplied;
  VkBlendOverlapEXT blendOverlap;
}

struct VkPhysicalDeviceInlineUniformBlockFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 inlineUniformBlock;
  VkBool32 descriptorBindingInlineUniformBlockUpdateAfterBind;
}

struct VkPhysicalDeviceInlineUniformBlockFeaturesEXT {
  
}

struct VkPhysicalDeviceInlineUniformBlockProperties {
  VkStructureType sType;
  void pNext;
  uint32_t maxInlineUniformBlockSize;
  uint32_t maxPerStageDescriptorInlineUniformBlocks;
  uint32_t maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
  uint32_t maxDescriptorSetInlineUniformBlocks;
  uint32_t maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
}

struct VkPhysicalDeviceInlineUniformBlockPropertiesEXT {
  
}

struct VkWriteDescriptorSetInlineUniformBlock {
  VkStructureType sType;
  void pNext;
  uint32_t dataSize;
  void pData;
}

struct VkWriteDescriptorSetInlineUniformBlockEXT {
  
}

struct VkDescriptorPoolInlineUniformBlockCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t maxInlineUniformBlockBindings;
}

struct VkDescriptorPoolInlineUniformBlockCreateInfoEXT {
  
}

struct VkPipelineCoverageModulationStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCoverageModulationStateCreateFlagsNV flags;
  VkCoverageModulationModeNV coverageModulationMode;
  VkBool32 coverageModulationTableEnable;
  uint32_t coverageModulationTableCount;
  float pCoverageModulationTable;
}

struct VkImageFormatListCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t viewFormatCount;
  VkFormat pViewFormats;
}

struct VkImageFormatListCreateInfoKHR {
  
}

struct VkValidationCacheCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkValidationCacheCreateFlagsEXT flags;
  size_t initialDataSize;
  void pInitialData;
}

struct VkShaderModuleValidationCacheCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkValidationCacheEXT validationCache;
}

struct VkPhysicalDeviceMaintenance3Properties {
  VkStructureType sType;
  void pNext;
  uint32_t maxPerSetDescriptors;
  VkDeviceSize maxMemoryAllocationSize;
}

struct VkPhysicalDeviceMaintenance3PropertiesKHR {
  
}

struct VkPhysicalDeviceMaintenance4Features {
  VkStructureType sType;
  void pNext;
  VkBool32 maintenance4;
}

struct VkPhysicalDeviceMaintenance4FeaturesKHR {
  
}

struct VkPhysicalDeviceMaintenance4Properties {
  VkStructureType sType;
  void pNext;
  VkDeviceSize maxBufferSize;
}

struct VkPhysicalDeviceMaintenance4PropertiesKHR {
  
}

struct VkDescriptorSetLayoutSupport {
  VkStructureType sType;
  void pNext;
  VkBool32 supported;
}

struct VkDescriptorSetLayoutSupportKHR {
  
}

struct VkPhysicalDeviceShaderDrawParametersFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderDrawParameters;
}

struct VkPhysicalDeviceShaderDrawParameterFeatures {
  
}

struct VkPhysicalDeviceShaderFloat16Int8Features {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderFloat16;
  VkBool32 shaderInt8;
}

struct VkPhysicalDeviceShaderFloat16Int8FeaturesKHR {
  
}

struct VkPhysicalDeviceFloat16Int8FeaturesKHR {
  
}

struct VkPhysicalDeviceFloatControlsProperties {
  VkStructureType sType;
  void pNext;
  VkShaderFloatControlsIndependence denormBehaviorIndependence;
  VkShaderFloatControlsIndependence roundingModeIndependence;
  VkBool32 shaderSignedZeroInfNanPreserveFloat16;
  VkBool32 shaderSignedZeroInfNanPreserveFloat32;
  VkBool32 shaderSignedZeroInfNanPreserveFloat64;
  VkBool32 shaderDenormPreserveFloat16;
  VkBool32 shaderDenormPreserveFloat32;
  VkBool32 shaderDenormPreserveFloat64;
  VkBool32 shaderDenormFlushToZeroFloat16;
  VkBool32 shaderDenormFlushToZeroFloat32;
  VkBool32 shaderDenormFlushToZeroFloat64;
  VkBool32 shaderRoundingModeRTEFloat16;
  VkBool32 shaderRoundingModeRTEFloat32;
  VkBool32 shaderRoundingModeRTEFloat64;
  VkBool32 shaderRoundingModeRTZFloat16;
  VkBool32 shaderRoundingModeRTZFloat32;
  VkBool32 shaderRoundingModeRTZFloat64;
}

struct VkPhysicalDeviceFloatControlsPropertiesKHR {
  
}

struct VkPhysicalDeviceHostQueryResetFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 hostQueryReset;
}

struct VkPhysicalDeviceHostQueryResetFeaturesEXT {
  
}

struct VkNativeBufferUsage2ANDROID {
  uint64_t consumer;
  uint64_t producer;
}

struct VkNativeBufferANDROID {
  VkStructureType sType;
  void pNext;
  void handle;
  int stride;
  int format;
  int usage;
  VkNativeBufferUsage2ANDROID usage2;
}

struct VkSwapchainImageCreateInfoANDROID {
  VkStructureType sType;
  void pNext;
  VkSwapchainImageUsageFlagsANDROID usage;
}

struct VkPhysicalDevicePresentationPropertiesANDROID {
  VkStructureType sType;
  void pNext;
  VkBool32 sharedImage;
}

struct VkShaderResourceUsageAMD {
  uint32_t numUsedVgprs;
  uint32_t numUsedSgprs;
  uint32_t ldsSizePerLocalWorkGroup;
  size_t ldsUsageSizeInBytes;
  size_t scratchMemUsageInBytes;
}

struct VkShaderStatisticsInfoAMD {
  VkShaderStageFlags shaderStageMask;
  VkShaderResourceUsageAMD resourceUsage;
  uint32_t numPhysicalVgprs;
  uint32_t numPhysicalSgprs;
  uint32_t numAvailableVgprs;
  uint32_t numAvailableSgprs;
  uint32_t computeWorkGroupSize;
}

struct VkDeviceQueueGlobalPriorityCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkQueueGlobalPriorityKHR globalPriority;
}

struct VkDeviceQueueGlobalPriorityCreateInfoEXT {
  
}

struct VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 globalPriorityQuery;
}

struct VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT {
  
}

struct VkQueueFamilyGlobalPriorityPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t priorityCount;
  VkQueueGlobalPriorityKHR priorities;
}

struct VkQueueFamilyGlobalPriorityPropertiesEXT {
  
}

struct VkDebugUtilsObjectNameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkObjectType objectType;
  uint64_t objectHandle;
  char pObjectName;
}

struct VkDebugUtilsObjectTagInfoEXT {
  VkStructureType sType;
  void pNext;
  VkObjectType objectType;
  uint64_t objectHandle;
  uint64_t tagName;
  size_t tagSize;
  void pTag;
}

struct VkDebugUtilsLabelEXT {
  VkStructureType sType;
  void pNext;
  char pLabelName;
  float color;
}

struct VkDebugUtilsMessengerCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDebugUtilsMessengerCreateFlagsEXT flags;
  VkDebugUtilsMessageSeverityFlagsEXT messageSeverity;
  VkDebugUtilsMessageTypeFlagsEXT messageType;
  PFN_vkDebugUtilsMessengerCallbackEXT pfnUserCallback;
  void pUserData;
}

struct VkDebugUtilsMessengerCallbackDataEXT {
  VkStructureType sType;
  void pNext;
  VkDebugUtilsMessengerCallbackDataFlagsEXT flags;
  char pMessageIdName;
  int32_t messageIdNumber;
  char pMessage;
  uint32_t queueLabelCount;
  VkDebugUtilsLabelEXT pQueueLabels;
  uint32_t cmdBufLabelCount;
  VkDebugUtilsLabelEXT pCmdBufLabels;
  uint32_t objectCount;
  VkDebugUtilsObjectNameInfoEXT pObjects;
}

struct VkPhysicalDeviceDeviceMemoryReportFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 deviceMemoryReport;
}

struct VkDeviceDeviceMemoryReportCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceMemoryReportFlagsEXT flags;
  PFN_vkDeviceMemoryReportCallbackEXT pfnUserCallback;
  void pUserData;
}

struct VkDeviceMemoryReportCallbackDataEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceMemoryReportFlagsEXT flags;
  VkDeviceMemoryReportEventTypeEXT type;
  uint64_t memoryObjectId;
  VkDeviceSize size;
  VkObjectType objectType;
  uint64_t objectHandle;
  uint32_t heapIndex;
}

struct VkImportMemoryHostPointerInfoEXT {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
  void pHostPointer;
}

struct VkMemoryHostPointerPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t memoryTypeBits;
}

struct VkPhysicalDeviceExternalMemoryHostPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceSize minImportedHostPointerAlignment;
}

struct VkPhysicalDeviceConservativeRasterizationPropertiesEXT {
  VkStructureType sType;
  void pNext;
  float primitiveOverestimationSize;
  float maxExtraPrimitiveOverestimationSize;
  float extraPrimitiveOverestimationSizeGranularity;
  VkBool32 primitiveUnderestimation;
  VkBool32 conservativePointAndLineRasterization;
  VkBool32 degenerateTrianglesRasterized;
  VkBool32 degenerateLinesRasterized;
  VkBool32 fullyCoveredFragmentShaderInputVariable;
  VkBool32 conservativeRasterizationPostDepthCoverage;
}

struct VkCalibratedTimestampInfoEXT {
  VkStructureType sType;
  void pNext;
  VkTimeDomainEXT timeDomain;
}

struct VkPhysicalDeviceShaderCorePropertiesAMD {
  VkStructureType sType;
  void pNext;
  uint32_t shaderEngineCount;
  uint32_t shaderArraysPerEngineCount;
  uint32_t computeUnitsPerShaderArray;
  uint32_t simdPerComputeUnit;
  uint32_t wavefrontsPerSimd;
  uint32_t wavefrontSize;
  uint32_t sgprsPerSimd;
  uint32_t minSgprAllocation;
  uint32_t maxSgprAllocation;
  uint32_t sgprAllocationGranularity;
  uint32_t vgprsPerSimd;
  uint32_t minVgprAllocation;
  uint32_t maxVgprAllocation;
  uint32_t vgprAllocationGranularity;
}

struct VkPhysicalDeviceShaderCoreProperties2AMD {
  VkStructureType sType;
  void pNext;
  VkShaderCorePropertiesFlagsAMD shaderCoreFeatures;
  uint32_t activeComputeUnitCount;
}

struct VkPipelineRasterizationConservativeStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineRasterizationConservativeStateCreateFlagsEXT flags;
  VkConservativeRasterizationModeEXT conservativeRasterizationMode;
  float extraPrimitiveOverestimationSize;
}

struct VkPhysicalDeviceDescriptorIndexingFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderInputAttachmentArrayDynamicIndexing;
  VkBool32 shaderUniformTexelBufferArrayDynamicIndexing;
  VkBool32 shaderStorageTexelBufferArrayDynamicIndexing;
  VkBool32 shaderUniformBufferArrayNonUniformIndexing;
  VkBool32 shaderSampledImageArrayNonUniformIndexing;
  VkBool32 shaderStorageBufferArrayNonUniformIndexing;
  VkBool32 shaderStorageImageArrayNonUniformIndexing;
  VkBool32 shaderInputAttachmentArrayNonUniformIndexing;
  VkBool32 shaderUniformTexelBufferArrayNonUniformIndexing;
  VkBool32 shaderStorageTexelBufferArrayNonUniformIndexing;
  VkBool32 descriptorBindingUniformBufferUpdateAfterBind;
  VkBool32 descriptorBindingSampledImageUpdateAfterBind;
  VkBool32 descriptorBindingStorageImageUpdateAfterBind;
  VkBool32 descriptorBindingStorageBufferUpdateAfterBind;
  VkBool32 descriptorBindingUniformTexelBufferUpdateAfterBind;
  VkBool32 descriptorBindingStorageTexelBufferUpdateAfterBind;
  VkBool32 descriptorBindingUpdateUnusedWhilePending;
  VkBool32 descriptorBindingPartiallyBound;
  VkBool32 descriptorBindingVariableDescriptorCount;
  VkBool32 runtimeDescriptorArray;
}

struct VkPhysicalDeviceDescriptorIndexingFeaturesEXT {
  
}

struct VkPhysicalDeviceDescriptorIndexingProperties {
  VkStructureType sType;
  void pNext;
  uint32_t maxUpdateAfterBindDescriptorsInAllPools;
  VkBool32 shaderUniformBufferArrayNonUniformIndexingNative;
  VkBool32 shaderSampledImageArrayNonUniformIndexingNative;
  VkBool32 shaderStorageBufferArrayNonUniformIndexingNative;
  VkBool32 shaderStorageImageArrayNonUniformIndexingNative;
  VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative;
  VkBool32 robustBufferAccessUpdateAfterBind;
  VkBool32 quadDivergentImplicitLod;
  uint32_t maxPerStageDescriptorUpdateAfterBindSamplers;
  uint32_t maxPerStageDescriptorUpdateAfterBindUniformBuffers;
  uint32_t maxPerStageDescriptorUpdateAfterBindStorageBuffers;
  uint32_t maxPerStageDescriptorUpdateAfterBindSampledImages;
  uint32_t maxPerStageDescriptorUpdateAfterBindStorageImages;
  uint32_t maxPerStageDescriptorUpdateAfterBindInputAttachments;
  uint32_t maxPerStageUpdateAfterBindResources;
  uint32_t maxDescriptorSetUpdateAfterBindSamplers;
  uint32_t maxDescriptorSetUpdateAfterBindUniformBuffers;
  uint32_t maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
  uint32_t maxDescriptorSetUpdateAfterBindStorageBuffers;
  uint32_t maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
  uint32_t maxDescriptorSetUpdateAfterBindSampledImages;
  uint32_t maxDescriptorSetUpdateAfterBindStorageImages;
  uint32_t maxDescriptorSetUpdateAfterBindInputAttachments;
}

struct VkPhysicalDeviceDescriptorIndexingPropertiesEXT {
  
}

struct VkDescriptorSetLayoutBindingFlagsCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t bindingCount;
  VkDescriptorBindingFlags pBindingFlags;
}

struct VkDescriptorSetLayoutBindingFlagsCreateInfoEXT {
  
}

struct VkDescriptorSetVariableDescriptorCountAllocateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t descriptorSetCount;
  uint32_t pDescriptorCounts;
}

struct VkDescriptorSetVariableDescriptorCountAllocateInfoEXT {
  
}

struct VkDescriptorSetVariableDescriptorCountLayoutSupport {
  VkStructureType sType;
  void pNext;
  uint32_t maxVariableDescriptorCount;
}

struct VkDescriptorSetVariableDescriptorCountLayoutSupportEXT {
  
}

struct VkAttachmentDescription2 {
  VkStructureType sType;
  void pNext;
  VkAttachmentDescriptionFlags flags;
  VkFormat format;
  VkSampleCountFlagBits samples;
  VkAttachmentLoadOp loadOp;
  VkAttachmentStoreOp storeOp;
  VkAttachmentLoadOp stencilLoadOp;
  VkAttachmentStoreOp stencilStoreOp;
  VkImageLayout initialLayout;
  VkImageLayout finalLayout;
}

struct VkAttachmentDescription2KHR {
  
}

struct VkAttachmentReference2 {
  VkStructureType sType;
  void pNext;
  uint32_t attachment;
  VkImageLayout layout;
  VkImageAspectFlags aspectMask;
}

struct VkAttachmentReference2KHR {
  
}

struct VkSubpassDescription2 {
  VkStructureType sType;
  void pNext;
  VkSubpassDescriptionFlags flags;
  VkPipelineBindPoint pipelineBindPoint;
  uint32_t viewMask;
  uint32_t inputAttachmentCount;
  VkAttachmentReference2 pInputAttachments;
  uint32_t colorAttachmentCount;
  VkAttachmentReference2 pColorAttachments;
  VkAttachmentReference2 pResolveAttachments;
  VkAttachmentReference2 pDepthStencilAttachment;
  uint32_t preserveAttachmentCount;
  uint32_t pPreserveAttachments;
}

struct VkSubpassDescription2KHR {
  
}

struct VkSubpassDependency2 {
  VkStructureType sType;
  void pNext;
  uint32_t srcSubpass;
  uint32_t dstSubpass;
  VkPipelineStageFlags srcStageMask;
  VkPipelineStageFlags dstStageMask;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  VkDependencyFlags dependencyFlags;
  int32_t viewOffset;
}

struct VkSubpassDependency2KHR {
  
}

struct VkRenderPassCreateInfo2 {
  VkStructureType sType;
  void pNext;
  VkRenderPassCreateFlags flags;
  uint32_t attachmentCount;
  VkAttachmentDescription2 pAttachments;
  uint32_t subpassCount;
  VkSubpassDescription2 pSubpasses;
  uint32_t dependencyCount;
  VkSubpassDependency2 pDependencies;
  uint32_t correlatedViewMaskCount;
  uint32_t pCorrelatedViewMasks;
}

struct VkRenderPassCreateInfo2KHR {
  
}

struct VkSubpassBeginInfo {
  VkStructureType sType;
  void pNext;
  VkSubpassContents contents;
}

struct VkSubpassBeginInfoKHR {
  
}

struct VkSubpassEndInfo {
  VkStructureType sType;
  void pNext;
}

struct VkSubpassEndInfoKHR {
  
}

struct VkPhysicalDeviceTimelineSemaphoreFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 timelineSemaphore;
}

struct VkPhysicalDeviceTimelineSemaphoreFeaturesKHR {
  
}

struct VkPhysicalDeviceTimelineSemaphoreProperties {
  VkStructureType sType;
  void pNext;
  uint64_t maxTimelineSemaphoreValueDifference;
}

struct VkPhysicalDeviceTimelineSemaphorePropertiesKHR {
  
}

struct VkSemaphoreTypeCreateInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphoreType semaphoreType;
  uint64_t initialValue;
}

struct VkSemaphoreTypeCreateInfoKHR {
  
}

struct VkTimelineSemaphoreSubmitInfo {
  VkStructureType sType;
  void pNext;
  uint32_t waitSemaphoreValueCount;
  uint64_t pWaitSemaphoreValues;
  uint32_t signalSemaphoreValueCount;
  uint64_t pSignalSemaphoreValues;
}

struct VkTimelineSemaphoreSubmitInfoKHR {
  
}

struct VkSemaphoreWaitInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphoreWaitFlags flags;
  uint32_t semaphoreCount;
  VkSemaphore pSemaphores;
  uint64_t pValues;
}

struct VkSemaphoreWaitInfoKHR {
  
}

struct VkSemaphoreSignalInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  uint64_t value;
}

struct VkSemaphoreSignalInfoKHR {
  
}

struct VkVertexInputBindingDivisorDescriptionEXT {
  uint32_t binding;
  uint32_t divisor;
}

struct VkPipelineVertexInputDivisorStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t vertexBindingDivisorCount;
  VkVertexInputBindingDivisorDescriptionEXT pVertexBindingDivisors;
}

struct VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxVertexAttribDivisor;
}

struct VkPhysicalDevicePCIBusInfoPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t pciDomain;
  uint32_t pciBus;
  uint32_t pciDevice;
  uint32_t pciFunction;
}

struct VkImportAndroidHardwareBufferInfoANDROID {
  VkStructureType sType;
  void pNext;
  AHardwareBuffer buffer;
}

struct VkAndroidHardwareBufferUsageANDROID {
  VkStructureType sType;
  void pNext;
  uint64_t androidHardwareBufferUsage;
}

struct VkAndroidHardwareBufferPropertiesANDROID {
  VkStructureType sType;
  void pNext;
  VkDeviceSize allocationSize;
  uint32_t memoryTypeBits;
}

struct VkMemoryGetAndroidHardwareBufferInfoANDROID {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
}

struct VkAndroidHardwareBufferFormatPropertiesANDROID {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  uint64_t externalFormat;
  VkFormatFeatureFlags formatFeatures;
  VkComponentMapping samplerYcbcrConversionComponents;
  VkSamplerYcbcrModelConversion suggestedYcbcrModel;
  VkSamplerYcbcrRange suggestedYcbcrRange;
  VkChromaLocation suggestedXChromaOffset;
  VkChromaLocation suggestedYChromaOffset;
}

struct VkCommandBufferInheritanceConditionalRenderingInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 conditionalRenderingEnable;
}

struct VkExternalFormatANDROID {
  VkStructureType sType;
  void pNext;
  uint64_t externalFormat;
}

struct VkPhysicalDevice8BitStorageFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 storageBuffer8BitAccess;
  VkBool32 uniformAndStorageBuffer8BitAccess;
  VkBool32 storagePushConstant8;
}

struct VkPhysicalDevice8BitStorageFeaturesKHR {
  
}

struct VkPhysicalDeviceConditionalRenderingFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 conditionalRendering;
  VkBool32 inheritedConditionalRendering;
}

struct VkPhysicalDeviceVulkanMemoryModelFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 vulkanMemoryModel;
  VkBool32 vulkanMemoryModelDeviceScope;
  VkBool32 vulkanMemoryModelAvailabilityVisibilityChains;
}

struct VkPhysicalDeviceVulkanMemoryModelFeaturesKHR {
  
}

struct VkPhysicalDeviceShaderAtomicInt64Features {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderBufferInt64Atomics;
  VkBool32 shaderSharedInt64Atomics;
}

struct VkPhysicalDeviceShaderAtomicInt64FeaturesKHR {
  
}

struct VkPhysicalDeviceShaderAtomicFloatFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderBufferFloat32Atomics;
  VkBool32 shaderBufferFloat32AtomicAdd;
  VkBool32 shaderBufferFloat64Atomics;
  VkBool32 shaderBufferFloat64AtomicAdd;
  VkBool32 shaderSharedFloat32Atomics;
  VkBool32 shaderSharedFloat32AtomicAdd;
  VkBool32 shaderSharedFloat64Atomics;
  VkBool32 shaderSharedFloat64AtomicAdd;
  VkBool32 shaderImageFloat32Atomics;
  VkBool32 shaderImageFloat32AtomicAdd;
  VkBool32 sparseImageFloat32Atomics;
  VkBool32 sparseImageFloat32AtomicAdd;
}

struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderBufferFloat16Atomics;
  VkBool32 shaderBufferFloat16AtomicAdd;
  VkBool32 shaderBufferFloat16AtomicMinMax;
  VkBool32 shaderBufferFloat32AtomicMinMax;
  VkBool32 shaderBufferFloat64AtomicMinMax;
  VkBool32 shaderSharedFloat16Atomics;
  VkBool32 shaderSharedFloat16AtomicAdd;
  VkBool32 shaderSharedFloat16AtomicMinMax;
  VkBool32 shaderSharedFloat32AtomicMinMax;
  VkBool32 shaderSharedFloat64AtomicMinMax;
  VkBool32 shaderImageFloat32AtomicMinMax;
  VkBool32 sparseImageFloat32AtomicMinMax;
}

struct VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 vertexAttributeInstanceRateDivisor;
  VkBool32 vertexAttributeInstanceRateZeroDivisor;
}

struct VkQueueFamilyCheckpointPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags checkpointExecutionStageMask;
}

struct VkCheckpointDataNV {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlagBits stage;
  void pCheckpointMarker;
}

struct VkPhysicalDeviceDepthStencilResolveProperties {
  VkStructureType sType;
  void pNext;
  VkResolveModeFlags supportedDepthResolveModes;
  VkResolveModeFlags supportedStencilResolveModes;
  VkBool32 independentResolveNone;
  VkBool32 independentResolve;
}

struct VkPhysicalDeviceDepthStencilResolvePropertiesKHR {
  
}

struct VkSubpassDescriptionDepthStencilResolve {
  VkStructureType sType;
  void pNext;
  VkResolveModeFlagBits depthResolveMode;
  VkResolveModeFlagBits stencilResolveMode;
  VkAttachmentReference2 pDepthStencilResolveAttachment;
}

struct VkSubpassDescriptionDepthStencilResolveKHR {
  
}

struct VkImageViewASTCDecodeModeEXT {
  VkStructureType sType;
  void pNext;
  VkFormat decodeMode;
}

struct VkPhysicalDeviceASTCDecodeFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 decodeModeSharedExponent;
}

struct VkPhysicalDeviceTransformFeedbackFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 transformFeedback;
  VkBool32 geometryStreams;
}

struct VkPhysicalDeviceTransformFeedbackPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxTransformFeedbackStreams;
  uint32_t maxTransformFeedbackBuffers;
  VkDeviceSize maxTransformFeedbackBufferSize;
  uint32_t maxTransformFeedbackStreamDataSize;
  uint32_t maxTransformFeedbackBufferDataSize;
  uint32_t maxTransformFeedbackBufferDataStride;
  VkBool32 transformFeedbackQueries;
  VkBool32 transformFeedbackStreamsLinesTriangles;
  VkBool32 transformFeedbackRasterizationStreamSelect;
  VkBool32 transformFeedbackDraw;
}

struct VkPipelineRasterizationStateStreamCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineRasterizationStateStreamCreateFlagsEXT flags;
  uint32_t rasterizationStream;
}

struct VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 representativeFragmentTest;
}

struct VkPipelineRepresentativeFragmentTestStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 representativeFragmentTestEnable;
}

struct VkPhysicalDeviceExclusiveScissorFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 exclusiveScissor;
}

struct VkPipelineViewportExclusiveScissorStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t exclusiveScissorCount;
  VkRect2D pExclusiveScissors;
}

struct VkPhysicalDeviceCornerSampledImageFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 cornerSampledImage;
}

struct VkPhysicalDeviceComputeShaderDerivativesFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 computeDerivativeGroupQuads;
  VkBool32 computeDerivativeGroupLinear;
}

struct VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV {
  
}

struct VkPhysicalDeviceShaderImageFootprintFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 imageFootprint;
}

struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 dedicatedAllocationImageAliasing;
}

struct VkPhysicalDeviceCopyMemoryIndirectFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 indirectCopy;
}

struct VkPhysicalDeviceCopyMemoryIndirectPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkQueueFlags supportedQueues;
}

struct VkPhysicalDeviceMemoryDecompressionFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 memoryDecompression;
}

struct VkPhysicalDeviceMemoryDecompressionPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkMemoryDecompressionMethodFlagsNV decompressionMethods;
  uint64_t maxDecompressionIndirectCount;
}

struct VkShadingRatePaletteNV {
  uint32_t shadingRatePaletteEntryCount;
  VkShadingRatePaletteEntryNV pShadingRatePaletteEntries;
}

struct VkPipelineViewportShadingRateImageStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 shadingRateImageEnable;
  uint32_t viewportCount;
  VkShadingRatePaletteNV pShadingRatePalettes;
}

struct VkPhysicalDeviceShadingRateImageFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 shadingRateImage;
  VkBool32 shadingRateCoarseSampleOrder;
}

struct VkPhysicalDeviceShadingRateImagePropertiesNV {
  VkStructureType sType;
  void pNext;
  VkExtent2D shadingRateTexelSize;
  uint32_t shadingRatePaletteSize;
  uint32_t shadingRateMaxCoarseSamples;
}

struct VkPhysicalDeviceInvocationMaskFeaturesHUAWEI {
  VkStructureType sType;
  void pNext;
  VkBool32 invocationMask;
}

struct VkCoarseSampleLocationNV {
  uint32_t pixelX;
  uint32_t pixelY;
  uint32_t sample;
}

struct VkCoarseSampleOrderCustomNV {
  VkShadingRatePaletteEntryNV shadingRate;
  uint32_t sampleCount;
  uint32_t sampleLocationCount;
  VkCoarseSampleLocationNV pSampleLocations;
}

struct VkPipelineViewportCoarseSampleOrderStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkCoarseSampleOrderTypeNV sampleOrderType;
  uint32_t customSampleOrderCount;
  VkCoarseSampleOrderCustomNV pCustomSampleOrders;
}

struct VkPhysicalDeviceMeshShaderFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 taskShader;
  VkBool32 meshShader;
}

struct VkPhysicalDeviceMeshShaderPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t maxDrawMeshTasksCount;
  uint32_t maxTaskWorkGroupInvocations;
  uint32_t maxTaskWorkGroupSize;
  uint32_t maxTaskTotalMemorySize;
  uint32_t maxTaskOutputCount;
  uint32_t maxMeshWorkGroupInvocations;
  uint32_t maxMeshWorkGroupSize;
  uint32_t maxMeshTotalMemorySize;
  uint32_t maxMeshOutputVertices;
  uint32_t maxMeshOutputPrimitives;
  uint32_t maxMeshMultiviewViewCount;
  uint32_t meshOutputPerVertexGranularity;
  uint32_t meshOutputPerPrimitiveGranularity;
}

struct VkDrawMeshTasksIndirectCommandNV {
  uint32_t taskCount;
  uint32_t firstTask;
}

struct VkPhysicalDeviceMeshShaderFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 taskShader;
  VkBool32 meshShader;
  VkBool32 multiviewMeshShader;
  VkBool32 primitiveFragmentShadingRateMeshShader;
  VkBool32 meshShaderQueries;
}

struct VkPhysicalDeviceMeshShaderPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxTaskWorkGroupTotalCount;
  uint32_t maxTaskWorkGroupCount;
  uint32_t maxTaskWorkGroupInvocations;
  uint32_t maxTaskWorkGroupSize;
  uint32_t maxTaskPayloadSize;
  uint32_t maxTaskSharedMemorySize;
  uint32_t maxTaskPayloadAndSharedMemorySize;
  uint32_t maxMeshWorkGroupTotalCount;
  uint32_t maxMeshWorkGroupCount;
  uint32_t maxMeshWorkGroupInvocations;
  uint32_t maxMeshWorkGroupSize;
  uint32_t maxMeshSharedMemorySize;
  uint32_t maxMeshPayloadAndSharedMemorySize;
  uint32_t maxMeshOutputMemorySize;
  uint32_t maxMeshPayloadAndOutputMemorySize;
  uint32_t maxMeshOutputComponents;
  uint32_t maxMeshOutputVertices;
  uint32_t maxMeshOutputPrimitives;
  uint32_t maxMeshOutputLayers;
  uint32_t maxMeshMultiviewViewCount;
  uint32_t meshOutputPerVertexGranularity;
  uint32_t meshOutputPerPrimitiveGranularity;
  uint32_t maxPreferredTaskWorkGroupInvocations;
  uint32_t maxPreferredMeshWorkGroupInvocations;
  VkBool32 prefersLocalInvocationVertexOutput;
  VkBool32 prefersLocalInvocationPrimitiveOutput;
  VkBool32 prefersCompactVertexOutput;
  VkBool32 prefersCompactPrimitiveOutput;
}

struct VkDrawMeshTasksIndirectCommandEXT {
  uint32_t groupCountX;
  uint32_t groupCountY;
  uint32_t groupCountZ;
}

struct VkRayTracingShaderGroupCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkRayTracingShaderGroupTypeKHR type;
  uint32_t generalShader;
  uint32_t closestHitShader;
  uint32_t anyHitShader;
  uint32_t intersectionShader;
}

struct VkRayTracingShaderGroupCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkRayTracingShaderGroupTypeKHR type;
  uint32_t generalShader;
  uint32_t closestHitShader;
  uint32_t anyHitShader;
  uint32_t intersectionShader;
  void pShaderGroupCaptureReplayHandle;
}

struct VkRayTracingPipelineCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCreateFlags flags;
  uint32_t stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  uint32_t groupCount;
  VkRayTracingShaderGroupCreateInfoNV pGroups;
  uint32_t maxRecursionDepth;
  VkPipelineLayout layout;
  VkPipeline basePipelineHandle;
  int32_t basePipelineIndex;
}

struct VkRayTracingPipelineCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkPipelineCreateFlags flags;
  uint32_t stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  uint32_t groupCount;
  VkRayTracingShaderGroupCreateInfoKHR pGroups;
  uint32_t maxPipelineRayRecursionDepth;
  VkPipelineLibraryCreateInfoKHR pLibraryInfo;
  VkRayTracingPipelineInterfaceCreateInfoKHR pLibraryInterface;
  VkPipelineDynamicStateCreateInfo pDynamicState;
  VkPipelineLayout layout;
  VkPipeline basePipelineHandle;
  int32_t basePipelineIndex;
}

struct VkGeometryTrianglesNV {
  VkStructureType sType;
  void pNext;
  VkBuffer vertexData;
  VkDeviceSize vertexOffset;
  uint32_t vertexCount;
  VkDeviceSize vertexStride;
  VkFormat vertexFormat;
  VkBuffer indexData;
  VkDeviceSize indexOffset;
  uint32_t indexCount;
  VkIndexType indexType;
  VkBuffer transformData;
  VkDeviceSize transformOffset;
}

struct VkGeometryAABBNV {
  VkStructureType sType;
  void pNext;
  VkBuffer aabbData;
  uint32_t numAABBs;
  uint32_t stride;
  VkDeviceSize offset;
}

struct VkGeometryDataNV {
  VkGeometryTrianglesNV triangles;
  VkGeometryAABBNV aabbs;
}

struct VkGeometryNV {
  VkStructureType sType;
  void pNext;
  VkGeometryTypeKHR geometryType;
  VkGeometryDataNV geometry;
  VkGeometryFlagsKHR flags;
}

struct VkAccelerationStructureInfoNV {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureTypeNV type;
  VkBuildAccelerationStructureFlagsNV flags;
  uint32_t instanceCount;
  uint32_t geometryCount;
  VkGeometryNV pGeometries;
}

struct VkAccelerationStructureCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkDeviceSize compactedSize;
  VkAccelerationStructureInfoNV info;
}

struct VkBindAccelerationStructureMemoryInfoNV {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureNV accelerationStructure;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  uint32_t deviceIndexCount;
  uint32_t pDeviceIndices;
}

struct VkWriteDescriptorSetAccelerationStructureKHR {
  VkStructureType sType;
  void pNext;
  uint32_t accelerationStructureCount;
  VkAccelerationStructureKHR pAccelerationStructures;
}

struct VkWriteDescriptorSetAccelerationStructureNV {
  VkStructureType sType;
  void pNext;
  uint32_t accelerationStructureCount;
  VkAccelerationStructureNV pAccelerationStructures;
}

struct VkAccelerationStructureMemoryRequirementsInfoNV {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureMemoryRequirementsTypeNV type;
  VkAccelerationStructureNV accelerationStructure;
}

struct VkPhysicalDeviceAccelerationStructureFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 accelerationStructure;
  VkBool32 accelerationStructureCaptureReplay;
  VkBool32 accelerationStructureIndirectBuild;
  VkBool32 accelerationStructureHostCommands;
  VkBool32 descriptorBindingAccelerationStructureUpdateAfterBind;
}

struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 rayTracingPipeline;
  VkBool32 rayTracingPipelineShaderGroupHandleCaptureReplay;
  VkBool32 rayTracingPipelineShaderGroupHandleCaptureReplayMixed;
  VkBool32 rayTracingPipelineTraceRaysIndirect;
  VkBool32 rayTraversalPrimitiveCulling;
}

struct VkPhysicalDeviceRayQueryFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 rayQuery;
}

struct VkPhysicalDeviceAccelerationStructurePropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint64_t maxGeometryCount;
  uint64_t maxInstanceCount;
  uint64_t maxPrimitiveCount;
  uint32_t maxPerStageDescriptorAccelerationStructures;
  uint32_t maxPerStageDescriptorUpdateAfterBindAccelerationStructures;
  uint32_t maxDescriptorSetAccelerationStructures;
  uint32_t maxDescriptorSetUpdateAfterBindAccelerationStructures;
  uint32_t minAccelerationStructureScratchOffsetAlignment;
}

struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t shaderGroupHandleSize;
  uint32_t maxRayRecursionDepth;
  uint32_t maxShaderGroupStride;
  uint32_t shaderGroupBaseAlignment;
  uint32_t shaderGroupHandleCaptureReplaySize;
  uint32_t maxRayDispatchInvocationCount;
  uint32_t shaderGroupHandleAlignment;
  uint32_t maxRayHitAttributeSize;
}

struct VkPhysicalDeviceRayTracingPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t shaderGroupHandleSize;
  uint32_t maxRecursionDepth;
  uint32_t maxShaderGroupStride;
  uint32_t shaderGroupBaseAlignment;
  uint64_t maxGeometryCount;
  uint64_t maxInstanceCount;
  uint64_t maxTriangleCount;
  uint32_t maxDescriptorSetAccelerationStructures;
}

struct VkStridedDeviceAddressRegionKHR {
  VkDeviceAddress deviceAddress;
  VkDeviceSize stride;
  VkDeviceSize size;
}

struct VkTraceRaysIndirectCommandKHR {
  uint32_t width;
  uint32_t height;
  uint32_t depth;
}

struct VkTraceRaysIndirectCommand2KHR {
  VkDeviceAddress raygenShaderRecordAddress;
  VkDeviceSize raygenShaderRecordSize;
  VkDeviceAddress missShaderBindingTableAddress;
  VkDeviceSize missShaderBindingTableSize;
  VkDeviceSize missShaderBindingTableStride;
  VkDeviceAddress hitShaderBindingTableAddress;
  VkDeviceSize hitShaderBindingTableSize;
  VkDeviceSize hitShaderBindingTableStride;
  VkDeviceAddress callableShaderBindingTableAddress;
  VkDeviceSize callableShaderBindingTableSize;
  VkDeviceSize callableShaderBindingTableStride;
  uint32_t width;
  uint32_t height;
  uint32_t depth;
}

struct VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 rayTracingMaintenance1;
  VkBool32 rayTracingPipelineTraceRaysIndirect2;
}

struct VkDrmFormatModifierPropertiesListEXT {
  VkStructureType sType;
  void pNext;
  uint32_t drmFormatModifierCount;
  VkDrmFormatModifierPropertiesEXT pDrmFormatModifierProperties;
}

struct VkDrmFormatModifierPropertiesEXT {
  uint64_t drmFormatModifier;
  uint32_t drmFormatModifierPlaneCount;
  VkFormatFeatureFlags drmFormatModifierTilingFeatures;
}

struct VkPhysicalDeviceImageDrmFormatModifierInfoEXT {
  VkStructureType sType;
  void pNext;
  uint64_t drmFormatModifier;
  VkSharingMode sharingMode;
  uint32_t queueFamilyIndexCount;
  uint32_t pQueueFamilyIndices;
}

struct VkImageDrmFormatModifierListCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t drmFormatModifierCount;
  uint64_t pDrmFormatModifiers;
}

struct VkImageDrmFormatModifierExplicitCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint64_t drmFormatModifier;
  uint32_t drmFormatModifierPlaneCount;
  VkSubresourceLayout pPlaneLayouts;
}

struct VkImageDrmFormatModifierPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint64_t drmFormatModifier;
}

struct VkImageStencilUsageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkImageUsageFlags stencilUsage;
}

struct VkImageStencilUsageCreateInfoEXT {
  
}

struct VkDeviceMemoryOverallocationCreateInfoAMD {
  VkStructureType sType;
  void pNext;
  VkMemoryOverallocationBehaviorAMD overallocationBehavior;
}

struct VkPhysicalDeviceFragmentDensityMapFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 fragmentDensityMap;
  VkBool32 fragmentDensityMapDynamic;
  VkBool32 fragmentDensityMapNonSubsampledImages;
}

struct VkPhysicalDeviceFragmentDensityMap2FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 fragmentDensityMapDeferred;
}

struct VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM {
  VkStructureType sType;
  void pNext;
  VkBool32 fragmentDensityMapOffset;
}

struct VkPhysicalDeviceFragmentDensityMapPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkExtent2D minFragmentDensityTexelSize;
  VkExtent2D maxFragmentDensityTexelSize;
  VkBool32 fragmentDensityInvocations;
}

struct VkPhysicalDeviceFragmentDensityMap2PropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 subsampledLoads;
  VkBool32 subsampledCoarseReconstructionEarlyAccess;
  uint32_t maxSubsampledArrayLayers;
  uint32_t maxDescriptorSetSubsampledSamplers;
}

struct VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM {
  VkStructureType sType;
  void pNext;
  VkExtent2D fragmentDensityOffsetGranularity;
}

struct VkRenderPassFragmentDensityMapCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkAttachmentReference fragmentDensityMapAttachment;
}

struct VkSubpassFragmentDensityMapOffsetEndInfoQCOM {
  VkStructureType sType;
  void pNext;
  uint32_t fragmentDensityOffsetCount;
  VkOffset2D pFragmentDensityOffsets;
}

struct VkPhysicalDeviceScalarBlockLayoutFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 scalarBlockLayout;
}

struct VkPhysicalDeviceScalarBlockLayoutFeaturesEXT {
  
}

struct VkSurfaceProtectedCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 supportsProtected;
}

struct VkPhysicalDeviceUniformBufferStandardLayoutFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 uniformBufferStandardLayout;
}

struct VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR {
  
}

struct VkPhysicalDeviceDepthClipEnableFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 depthClipEnable;
}

struct VkPipelineRasterizationDepthClipStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineRasterizationDepthClipStateCreateFlagsEXT flags;
  VkBool32 depthClipEnable;
}

struct VkPhysicalDeviceMemoryBudgetPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceSize heapBudget;
  VkDeviceSize heapUsage;
}

struct VkPhysicalDeviceMemoryPriorityFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 memoryPriority;
}

struct VkMemoryPriorityAllocateInfoEXT {
  VkStructureType sType;
  void pNext;
  float priority;
}

struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 pageableDeviceLocalMemory;
}

struct VkPhysicalDeviceBufferDeviceAddressFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 bufferDeviceAddress;
  VkBool32 bufferDeviceAddressCaptureReplay;
  VkBool32 bufferDeviceAddressMultiDevice;
}

struct VkPhysicalDeviceBufferDeviceAddressFeaturesKHR {
  
}

struct VkPhysicalDeviceBufferDeviceAddressFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 bufferDeviceAddress;
  VkBool32 bufferDeviceAddressCaptureReplay;
  VkBool32 bufferDeviceAddressMultiDevice;
}

struct VkPhysicalDeviceBufferAddressFeaturesEXT {
  
}

struct VkBufferDeviceAddressInfo {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
}

struct VkBufferDeviceAddressInfoKHR {
  
}

struct VkBufferDeviceAddressInfoEXT {
  
}

struct VkBufferOpaqueCaptureAddressCreateInfo {
  VkStructureType sType;
  void pNext;
  uint64_t opaqueCaptureAddress;
}

struct VkBufferOpaqueCaptureAddressCreateInfoKHR {
  
}

struct VkBufferDeviceAddressCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceAddress deviceAddress;
}

struct VkPhysicalDeviceImageViewImageFormatInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImageViewType imageViewType;
}

struct VkFilterCubicImageViewImageFormatPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 filterCubic;
  VkBool32 filterCubicMinmax;
}

struct VkPhysicalDeviceImagelessFramebufferFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 imagelessFramebuffer;
}

struct VkPhysicalDeviceImagelessFramebufferFeaturesKHR {
  
}

struct VkFramebufferAttachmentsCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t attachmentImageInfoCount;
  VkFramebufferAttachmentImageInfo pAttachmentImageInfos;
}

struct VkFramebufferAttachmentsCreateInfoKHR {
  
}

struct VkFramebufferAttachmentImageInfo {
  VkStructureType sType;
  void pNext;
  VkImageCreateFlags flags;
  VkImageUsageFlags usage;
  uint32_t width;
  uint32_t height;
  uint32_t layerCount;
  uint32_t viewFormatCount;
  VkFormat pViewFormats;
}

struct VkFramebufferAttachmentImageInfoKHR {
  
}

struct VkRenderPassAttachmentBeginInfo {
  VkStructureType sType;
  void pNext;
  uint32_t attachmentCount;
  VkImageView pAttachments;
}

struct VkRenderPassAttachmentBeginInfoKHR {
  
}

struct VkPhysicalDeviceTextureCompressionASTCHDRFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 textureCompressionASTC_HDR;
}

struct VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT {
  
}

struct VkPhysicalDeviceCooperativeMatrixFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 cooperativeMatrix;
  VkBool32 cooperativeMatrixRobustBufferAccess;
}

struct VkPhysicalDeviceCooperativeMatrixPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkShaderStageFlags cooperativeMatrixSupportedStages;
}

struct VkCooperativeMatrixPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t MSize;
  uint32_t NSize;
  uint32_t KSize;
  VkComponentTypeNV AType;
  VkComponentTypeNV BType;
  VkComponentTypeNV CType;
  VkComponentTypeNV DType;
  VkScopeNV scope;
}

struct VkPhysicalDeviceYcbcrImageArraysFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 ycbcrImageArrays;
}

struct VkImageViewHandleInfoNVX {
  VkStructureType sType;
  void pNext;
  VkImageView imageView;
  VkDescriptorType descriptorType;
  VkSampler sampler;
}

struct VkImageViewAddressPropertiesNVX {
  VkStructureType sType;
  void pNext;
  VkDeviceAddress deviceAddress;
  VkDeviceSize size;
}

struct VkPresentFrameTokenGGP {
  VkStructureType sType;
  void pNext;
  GgpFrameToken frameToken;
}

struct VkPipelineCreationFeedback {
  VkPipelineCreationFeedbackFlags flags;
  uint64_t duration;
}

struct VkPipelineCreationFeedbackEXT {
  
}

struct VkPipelineCreationFeedbackCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineCreationFeedback pPipelineCreationFeedback;
  uint32_t pipelineStageCreationFeedbackCount;
  VkPipelineCreationFeedback pPipelineStageCreationFeedbacks;
}

struct VkPipelineCreationFeedbackCreateInfoEXT {
  
}

struct VkSurfaceFullScreenExclusiveInfoEXT {
  VkStructureType sType;
  void pNext;
  VkFullScreenExclusiveEXT fullScreenExclusive;
}

struct VkSurfaceFullScreenExclusiveWin32InfoEXT {
  VkStructureType sType;
  void pNext;
  HMONITOR hmonitor;
}

struct VkSurfaceCapabilitiesFullScreenExclusiveEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 fullScreenExclusiveSupported;
}

struct VkPhysicalDevicePresentBarrierFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 presentBarrier;
}

struct VkSurfaceCapabilitiesPresentBarrierNV {
  VkStructureType sType;
  void pNext;
  VkBool32 presentBarrierSupported;
}

struct VkSwapchainPresentBarrierCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 presentBarrierEnable;
}

struct VkPhysicalDevicePerformanceQueryFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 performanceCounterQueryPools;
  VkBool32 performanceCounterMultipleQueryPools;
}

struct VkPhysicalDevicePerformanceQueryPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 allowCommandBufferQueryCopies;
}

struct VkPerformanceCounterKHR {
  VkStructureType sType;
  void pNext;
  VkPerformanceCounterUnitKHR unit;
  VkPerformanceCounterScopeKHR scope;
  VkPerformanceCounterStorageKHR storage;
  uint8_t uuid;
}

struct VkPerformanceCounterDescriptionKHR {
  VkStructureType sType;
  void pNext;
  VkPerformanceCounterDescriptionFlagsKHR flags;
  char name;
  char category;
  char description;
}

struct VkQueryPoolPerformanceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t queueFamilyIndex;
  uint32_t counterIndexCount;
  uint32_t pCounterIndices;
}

struct VkAcquireProfilingLockInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAcquireProfilingLockFlagsKHR flags;
  uint64_t timeout;
}

struct VkPerformanceQuerySubmitInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t counterPassIndex;
}

struct VkPerformanceQueryReservationInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t maxPerformanceQueriesPerPool;
}

struct VkHeadlessSurfaceCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkHeadlessSurfaceCreateFlagsEXT flags;
}

struct VkPhysicalDeviceCoverageReductionModeFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 coverageReductionMode;
}

struct VkPipelineCoverageReductionStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCoverageReductionStateCreateFlagsNV flags;
  VkCoverageReductionModeNV coverageReductionMode;
}

struct VkFramebufferMixedSamplesCombinationNV {
  VkStructureType sType;
  void pNext;
  VkCoverageReductionModeNV coverageReductionMode;
  VkSampleCountFlagBits rasterizationSamples;
  VkSampleCountFlags depthStencilSamples;
  VkSampleCountFlags colorSamples;
}

struct VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderIntegerFunctions2;
}

struct VkPerformanceValueINTEL {
  VkPerformanceValueTypeINTEL type;
  VkPerformanceValueDataINTEL data;
}

struct VkInitializePerformanceApiInfoINTEL {
  VkStructureType sType;
  void pNext;
  void pUserData;
}

struct VkQueryPoolPerformanceQueryCreateInfoINTEL {
  VkStructureType sType;
  void pNext;
  VkQueryPoolSamplingModeINTEL performanceCountersSampling;
}

struct VkQueryPoolCreateInfoINTEL {
  
}

struct VkPerformanceMarkerInfoINTEL {
  VkStructureType sType;
  void pNext;
  uint64_t marker;
}

struct VkPerformanceStreamMarkerInfoINTEL {
  VkStructureType sType;
  void pNext;
  uint32_t marker;
}

struct VkPerformanceOverrideInfoINTEL {
  VkStructureType sType;
  void pNext;
  VkPerformanceOverrideTypeINTEL type;
  VkBool32 enable;
  uint64_t parameter;
}

struct VkPerformanceConfigurationAcquireInfoINTEL {
  VkStructureType sType;
  void pNext;
  VkPerformanceConfigurationTypeINTEL type;
}

struct VkPhysicalDeviceShaderClockFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderSubgroupClock;
  VkBool32 shaderDeviceClock;
}

struct VkPhysicalDeviceIndexTypeUint8FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 indexTypeUint8;
}

struct VkPhysicalDeviceShaderSMBuiltinsPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t shaderSMCount;
  uint32_t shaderWarpsPerSM;
}

struct VkPhysicalDeviceShaderSMBuiltinsFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderSMBuiltins;
}

struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 fragmentShaderSampleInterlock;
  VkBool32 fragmentShaderPixelInterlock;
  VkBool32 fragmentShaderShadingRateInterlock;
}

struct VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 separateDepthStencilLayouts;
}

struct VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR {
  
}

struct VkAttachmentReferenceStencilLayout {
  VkStructureType sType;
  void pNext;
  VkImageLayout stencilLayout;
}

struct VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 primitiveTopologyListRestart;
  VkBool32 primitiveTopologyPatchListRestart;
}

struct VkAttachmentReferenceStencilLayoutKHR {
  
}

struct VkAttachmentDescriptionStencilLayout {
  VkStructureType sType;
  void pNext;
  VkImageLayout stencilInitialLayout;
  VkImageLayout stencilFinalLayout;
}

struct VkAttachmentDescriptionStencilLayoutKHR {
  
}

struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineExecutableInfo;
}

struct VkPipelineInfoKHR {
  VkStructureType sType;
  void pNext;
  VkPipeline pipeline;
}

struct VkPipelineInfoEXT {
  
}

struct VkPipelineExecutablePropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkShaderStageFlags stages;
  char name;
  char description;
  uint32_t subgroupSize;
}

struct VkPipelineExecutableInfoKHR {
  VkStructureType sType;
  void pNext;
  VkPipeline pipeline;
  uint32_t executableIndex;
}

struct VkPipelineExecutableStatisticKHR {
  VkStructureType sType;
  void pNext;
  char name;
  char description;
  VkPipelineExecutableStatisticFormatKHR format;
  VkPipelineExecutableStatisticValueKHR value;
}

struct VkPipelineExecutableInternalRepresentationKHR {
  VkStructureType sType;
  void pNext;
  char name;
  char description;
  VkBool32 isText;
  size_t dataSize;
  void pData;
}

struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderDemoteToHelperInvocation;
}

struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT {
  
}

struct VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 texelBufferAlignment;
}

struct VkPhysicalDeviceTexelBufferAlignmentProperties {
  VkStructureType sType;
  void pNext;
  VkDeviceSize storageTexelBufferOffsetAlignmentBytes;
  VkBool32 storageTexelBufferOffsetSingleTexelAlignment;
  VkDeviceSize uniformTexelBufferOffsetAlignmentBytes;
  VkBool32 uniformTexelBufferOffsetSingleTexelAlignment;
}

struct VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT {
  
}

struct VkPhysicalDeviceSubgroupSizeControlFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 subgroupSizeControl;
  VkBool32 computeFullSubgroups;
}

struct VkPhysicalDeviceSubgroupSizeControlFeaturesEXT {
  
}

struct VkPhysicalDeviceSubgroupSizeControlProperties {
  VkStructureType sType;
  void pNext;
  uint32_t minSubgroupSize;
  uint32_t maxSubgroupSize;
  uint32_t maxComputeWorkgroupSubgroups;
  VkShaderStageFlags requiredSubgroupSizeStages;
}

struct VkPhysicalDeviceSubgroupSizeControlPropertiesEXT {
  
}

struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t requiredSubgroupSize;
}

struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT {
  
}

struct VkShaderRequiredSubgroupSizeCreateInfoEXT {
  
}

struct VkSubpassShadingPipelineCreateInfoHUAWEI {
  VkStructureType sType;
  void pNext;
  VkRenderPass renderPass;
  uint32_t subpass;
}

struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI {
  VkStructureType sType;
  void pNext;
  uint32_t maxSubpassShadingWorkgroupSizeAspectRatio;
}

struct VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI {
  VkStructureType sType;
  void pNext;
  uint32_t maxWorkGroupCount;
  uint32_t maxWorkGroupSize;
  uint32_t maxOutputClusterCount;
  VkDeviceSize indirectBufferOffsetAlignment;
}

struct VkMemoryOpaqueCaptureAddressAllocateInfo {
  VkStructureType sType;
  void pNext;
  uint64_t opaqueCaptureAddress;
}

struct VkMemoryOpaqueCaptureAddressAllocateInfoKHR {
  
}

struct VkDeviceMemoryOpaqueCaptureAddressInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
}

struct VkDeviceMemoryOpaqueCaptureAddressInfoKHR {
  
}

struct VkPhysicalDeviceLineRasterizationFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 rectangularLines;
  VkBool32 bresenhamLines;
  VkBool32 smoothLines;
  VkBool32 stippledRectangularLines;
  VkBool32 stippledBresenhamLines;
  VkBool32 stippledSmoothLines;
}

struct VkPhysicalDeviceLineRasterizationPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t lineSubPixelPrecisionBits;
}

struct VkPipelineRasterizationLineStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkLineRasterizationModeEXT lineRasterizationMode;
  VkBool32 stippledLineEnable;
  uint32_t lineStippleFactor;
  uint16_t lineStipplePattern;
}

struct VkPhysicalDevicePipelineCreationCacheControlFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineCreationCacheControl;
}

struct VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT {
  
}

struct VkPhysicalDeviceVulkan11Features {
  VkStructureType sType;
  void pNext;
  VkBool32 storageBuffer16BitAccess;
  VkBool32 uniformAndStorageBuffer16BitAccess;
  VkBool32 storagePushConstant16;
  VkBool32 storageInputOutput16;
  VkBool32 multiview;
  VkBool32 multiviewGeometryShader;
  VkBool32 multiviewTessellationShader;
  VkBool32 variablePointersStorageBuffer;
  VkBool32 variablePointers;
  VkBool32 protectedMemory;
  VkBool32 samplerYcbcrConversion;
  VkBool32 shaderDrawParameters;
}

struct VkPhysicalDeviceVulkan11Properties {
  VkStructureType sType;
  void pNext;
  uint8_t deviceUUID;
  uint8_t driverUUID;
  uint8_t deviceLUID;
  uint32_t deviceNodeMask;
  VkBool32 deviceLUIDValid;
  uint32_t subgroupSize;
  VkShaderStageFlags subgroupSupportedStages;
  VkSubgroupFeatureFlags subgroupSupportedOperations;
  VkBool32 subgroupQuadOperationsInAllStages;
  VkPointClippingBehavior pointClippingBehavior;
  uint32_t maxMultiviewViewCount;
  uint32_t maxMultiviewInstanceIndex;
  VkBool32 protectedNoFault;
  uint32_t maxPerSetDescriptors;
  VkDeviceSize maxMemoryAllocationSize;
}

struct VkPhysicalDeviceVulkan12Features {
  VkStructureType sType;
  void pNext;
  VkBool32 samplerMirrorClampToEdge;
  VkBool32 drawIndirectCount;
  VkBool32 storageBuffer8BitAccess;
  VkBool32 uniformAndStorageBuffer8BitAccess;
  VkBool32 storagePushConstant8;
  VkBool32 shaderBufferInt64Atomics;
  VkBool32 shaderSharedInt64Atomics;
  VkBool32 shaderFloat16;
  VkBool32 shaderInt8;
  VkBool32 descriptorIndexing;
  VkBool32 shaderInputAttachmentArrayDynamicIndexing;
  VkBool32 shaderUniformTexelBufferArrayDynamicIndexing;
  VkBool32 shaderStorageTexelBufferArrayDynamicIndexing;
  VkBool32 shaderUniformBufferArrayNonUniformIndexing;
  VkBool32 shaderSampledImageArrayNonUniformIndexing;
  VkBool32 shaderStorageBufferArrayNonUniformIndexing;
  VkBool32 shaderStorageImageArrayNonUniformIndexing;
  VkBool32 shaderInputAttachmentArrayNonUniformIndexing;
  VkBool32 shaderUniformTexelBufferArrayNonUniformIndexing;
  VkBool32 shaderStorageTexelBufferArrayNonUniformIndexing;
  VkBool32 descriptorBindingUniformBufferUpdateAfterBind;
  VkBool32 descriptorBindingSampledImageUpdateAfterBind;
  VkBool32 descriptorBindingStorageImageUpdateAfterBind;
  VkBool32 descriptorBindingStorageBufferUpdateAfterBind;
  VkBool32 descriptorBindingUniformTexelBufferUpdateAfterBind;
  VkBool32 descriptorBindingStorageTexelBufferUpdateAfterBind;
  VkBool32 descriptorBindingUpdateUnusedWhilePending;
  VkBool32 descriptorBindingPartiallyBound;
  VkBool32 descriptorBindingVariableDescriptorCount;
  VkBool32 runtimeDescriptorArray;
  VkBool32 samplerFilterMinmax;
  VkBool32 scalarBlockLayout;
  VkBool32 imagelessFramebuffer;
  VkBool32 uniformBufferStandardLayout;
  VkBool32 shaderSubgroupExtendedTypes;
  VkBool32 separateDepthStencilLayouts;
  VkBool32 hostQueryReset;
  VkBool32 timelineSemaphore;
  VkBool32 bufferDeviceAddress;
  VkBool32 bufferDeviceAddressCaptureReplay;
  VkBool32 bufferDeviceAddressMultiDevice;
  VkBool32 vulkanMemoryModel;
  VkBool32 vulkanMemoryModelDeviceScope;
  VkBool32 vulkanMemoryModelAvailabilityVisibilityChains;
  VkBool32 shaderOutputViewportIndex;
  VkBool32 shaderOutputLayer;
  VkBool32 subgroupBroadcastDynamicId;
}

struct VkPhysicalDeviceVulkan12Properties {
  VkStructureType sType;
  void pNext;
  VkDriverId driverID;
  char driverName;
  char driverInfo;
  VkConformanceVersion conformanceVersion;
  VkShaderFloatControlsIndependence denormBehaviorIndependence;
  VkShaderFloatControlsIndependence roundingModeIndependence;
  VkBool32 shaderSignedZeroInfNanPreserveFloat16;
  VkBool32 shaderSignedZeroInfNanPreserveFloat32;
  VkBool32 shaderSignedZeroInfNanPreserveFloat64;
  VkBool32 shaderDenormPreserveFloat16;
  VkBool32 shaderDenormPreserveFloat32;
  VkBool32 shaderDenormPreserveFloat64;
  VkBool32 shaderDenormFlushToZeroFloat16;
  VkBool32 shaderDenormFlushToZeroFloat32;
  VkBool32 shaderDenormFlushToZeroFloat64;
  VkBool32 shaderRoundingModeRTEFloat16;
  VkBool32 shaderRoundingModeRTEFloat32;
  VkBool32 shaderRoundingModeRTEFloat64;
  VkBool32 shaderRoundingModeRTZFloat16;
  VkBool32 shaderRoundingModeRTZFloat32;
  VkBool32 shaderRoundingModeRTZFloat64;
  uint32_t maxUpdateAfterBindDescriptorsInAllPools;
  VkBool32 shaderUniformBufferArrayNonUniformIndexingNative;
  VkBool32 shaderSampledImageArrayNonUniformIndexingNative;
  VkBool32 shaderStorageBufferArrayNonUniformIndexingNative;
  VkBool32 shaderStorageImageArrayNonUniformIndexingNative;
  VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative;
  VkBool32 robustBufferAccessUpdateAfterBind;
  VkBool32 quadDivergentImplicitLod;
  uint32_t maxPerStageDescriptorUpdateAfterBindSamplers;
  uint32_t maxPerStageDescriptorUpdateAfterBindUniformBuffers;
  uint32_t maxPerStageDescriptorUpdateAfterBindStorageBuffers;
  uint32_t maxPerStageDescriptorUpdateAfterBindSampledImages;
  uint32_t maxPerStageDescriptorUpdateAfterBindStorageImages;
  uint32_t maxPerStageDescriptorUpdateAfterBindInputAttachments;
  uint32_t maxPerStageUpdateAfterBindResources;
  uint32_t maxDescriptorSetUpdateAfterBindSamplers;
  uint32_t maxDescriptorSetUpdateAfterBindUniformBuffers;
  uint32_t maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
  uint32_t maxDescriptorSetUpdateAfterBindStorageBuffers;
  uint32_t maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
  uint32_t maxDescriptorSetUpdateAfterBindSampledImages;
  uint32_t maxDescriptorSetUpdateAfterBindStorageImages;
  uint32_t maxDescriptorSetUpdateAfterBindInputAttachments;
  VkResolveModeFlags supportedDepthResolveModes;
  VkResolveModeFlags supportedStencilResolveModes;
  VkBool32 independentResolveNone;
  VkBool32 independentResolve;
  VkBool32 filterMinmaxSingleComponentFormats;
  VkBool32 filterMinmaxImageComponentMapping;
  uint64_t maxTimelineSemaphoreValueDifference;
  VkSampleCountFlags framebufferIntegerColorSampleCounts;
}

struct VkPhysicalDeviceVulkan13Features {
  VkStructureType sType;
  void pNext;
  VkBool32 robustImageAccess;
  VkBool32 inlineUniformBlock;
  VkBool32 descriptorBindingInlineUniformBlockUpdateAfterBind;
  VkBool32 pipelineCreationCacheControl;
  VkBool32 privateData;
  VkBool32 shaderDemoteToHelperInvocation;
  VkBool32 shaderTerminateInvocation;
  VkBool32 subgroupSizeControl;
  VkBool32 computeFullSubgroups;
  VkBool32 synchronization2;
  VkBool32 textureCompressionASTC_HDR;
  VkBool32 shaderZeroInitializeWorkgroupMemory;
  VkBool32 dynamicRendering;
  VkBool32 shaderIntegerDotProduct;
  VkBool32 maintenance4;
}

struct VkPhysicalDeviceVulkan13Properties {
  VkStructureType sType;
  void pNext;
  uint32_t minSubgroupSize;
  uint32_t maxSubgroupSize;
  uint32_t maxComputeWorkgroupSubgroups;
  VkShaderStageFlags requiredSubgroupSizeStages;
  uint32_t maxInlineUniformBlockSize;
  uint32_t maxPerStageDescriptorInlineUniformBlocks;
  uint32_t maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
  uint32_t maxDescriptorSetInlineUniformBlocks;
  uint32_t maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
  uint32_t maxInlineUniformTotalSize;
  VkBool32 integerDotProduct8BitUnsignedAccelerated;
  VkBool32 integerDotProduct8BitSignedAccelerated;
  VkBool32 integerDotProduct8BitMixedSignednessAccelerated;
  VkBool32 integerDotProduct4x8BitPackedUnsignedAccelerated;
  VkBool32 integerDotProduct4x8BitPackedSignedAccelerated;
  VkBool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated;
  VkBool32 integerDotProduct16BitUnsignedAccelerated;
  VkBool32 integerDotProduct16BitSignedAccelerated;
  VkBool32 integerDotProduct16BitMixedSignednessAccelerated;
  VkBool32 integerDotProduct32BitUnsignedAccelerated;
  VkBool32 integerDotProduct32BitSignedAccelerated;
  VkBool32 integerDotProduct32BitMixedSignednessAccelerated;
  VkBool32 integerDotProduct64BitUnsignedAccelerated;
  VkBool32 integerDotProduct64BitSignedAccelerated;
  VkBool32 integerDotProduct64BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
  VkDeviceSize storageTexelBufferOffsetAlignmentBytes;
  VkBool32 storageTexelBufferOffsetSingleTexelAlignment;
  VkDeviceSize uniformTexelBufferOffsetAlignmentBytes;
  VkBool32 uniformTexelBufferOffsetSingleTexelAlignment;
  VkDeviceSize maxBufferSize;
}

struct VkPipelineCompilerControlCreateInfoAMD {
  VkStructureType sType;
  void pNext;
  VkPipelineCompilerControlFlagsAMD compilerControlFlags;
}

struct VkPhysicalDeviceCoherentMemoryFeaturesAMD {
  VkStructureType sType;
  void pNext;
  VkBool32 deviceCoherentMemory;
}

struct VkFaultData {
  VkStructureType sType;
  void pNext;
  VkFaultLevel faultLevel;
  VkFaultType faultType;
}

struct VkFaultCallbackInfo {
  VkStructureType sType;
  void pNext;
  uint32_t faultCount;
  VkFaultData pFaults;
  PFN_vkFaultCallbackFunction pfnFaultCallback;
}

struct VkPhysicalDeviceToolProperties {
  VkStructureType sType;
  void pNext;
  char name;
  char version;
  VkToolPurposeFlags purposes;
  char description;
  char layer;
}

struct VkPhysicalDeviceToolPropertiesEXT {
  
}

struct VkSamplerCustomBorderColorCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkClearColorValue customBorderColor;
  VkFormat format;
}

struct VkPhysicalDeviceCustomBorderColorPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxCustomBorderColorSamplers;
}

struct VkPhysicalDeviceCustomBorderColorFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 customBorderColors;
  VkBool32 customBorderColorWithoutFormat;
}

struct VkSamplerBorderColorComponentMappingCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkComponentMapping components;
  VkBool32 srgb;
}

struct VkPhysicalDeviceBorderColorSwizzleFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 borderColorSwizzle;
  VkBool32 borderColorSwizzleFromImage;
}

struct VkAccelerationStructureGeometryTrianglesDataKHR {
  VkStructureType sType;
  void pNext;
  VkFormat vertexFormat;
  VkDeviceOrHostAddressConstKHR vertexData;
  VkDeviceSize vertexStride;
  uint32_t maxVertex;
  VkIndexType indexType;
  VkDeviceOrHostAddressConstKHR indexData;
  VkDeviceOrHostAddressConstKHR transformData;
}

struct VkAccelerationStructureGeometryAabbsDataKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceOrHostAddressConstKHR data;
  VkDeviceSize stride;
}

struct VkAccelerationStructureGeometryInstancesDataKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 arrayOfPointers;
  VkDeviceOrHostAddressConstKHR data;
}

struct VkAccelerationStructureGeometryKHR {
  VkStructureType sType;
  void pNext;
  VkGeometryTypeKHR geometryType;
  VkAccelerationStructureGeometryDataKHR geometry;
  VkGeometryFlagsKHR flags;
}

struct VkAccelerationStructureBuildGeometryInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureTypeKHR type;
  VkBuildAccelerationStructureFlagsKHR flags;
  VkBuildAccelerationStructureModeKHR mode;
  VkAccelerationStructureKHR srcAccelerationStructure;
  VkAccelerationStructureKHR dstAccelerationStructure;
  uint32_t geometryCount;
  VkAccelerationStructureGeometryKHR pGeometries;
  VkAccelerationStructureGeometryKHR ppGeometries;
  VkDeviceOrHostAddressKHR scratchData;
}

struct VkAccelerationStructureBuildRangeInfoKHR {
  uint32_t primitiveCount;
  uint32_t primitiveOffset;
  uint32_t firstVertex;
  uint32_t transformOffset;
}

struct VkAccelerationStructureCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureCreateFlagsKHR createFlags;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize size;
  VkAccelerationStructureTypeKHR type;
  VkDeviceAddress deviceAddress;
}

struct VkAabbPositionsKHR {
  float minX;
  float minY;
  float minZ;
  float maxX;
  float maxY;
  float maxZ;
}

struct VkAabbPositionsNV {
  
}

struct VkTransformMatrixKHR {
  float matrix;
}

struct VkTransformMatrixNV {
  
}

struct VkAccelerationStructureInstanceKHR {
  VkTransformMatrixKHR transform;
  uint32_t instanceCustomIndex;
  uint32_t mask;
  uint32_t instanceShaderBindingTableRecordOffset;
  VkGeometryInstanceFlagsKHR flags;
  uint64_t accelerationStructureReference;
}

struct VkAccelerationStructureInstanceNV {
  
}

struct VkAccelerationStructureDeviceAddressInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureKHR accelerationStructure;
}

struct VkAccelerationStructureVersionInfoKHR {
  VkStructureType sType;
  void pNext;
  uint8_t pVersionData;
}

struct VkCopyAccelerationStructureInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureKHR src;
  VkAccelerationStructureKHR dst;
  VkCopyAccelerationStructureModeKHR mode;
}

struct VkCopyAccelerationStructureToMemoryInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureKHR src;
  VkDeviceOrHostAddressKHR dst;
  VkCopyAccelerationStructureModeKHR mode;
}

struct VkCopyMemoryToAccelerationStructureInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceOrHostAddressConstKHR src;
  VkAccelerationStructureKHR dst;
  VkCopyAccelerationStructureModeKHR mode;
}

struct VkRayTracingPipelineInterfaceCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t maxPipelineRayPayloadSize;
  uint32_t maxPipelineRayHitAttributeSize;
}

struct VkPipelineLibraryCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t libraryCount;
  VkPipeline pLibraries;
}

struct VkRefreshObjectKHR {
  VkObjectType objectType;
  uint64_t objectHandle;
  VkRefreshObjectFlagsKHR flags;
}

struct VkRefreshObjectListKHR {
  VkStructureType sType;
  void pNext;
  uint32_t objectCount;
  VkRefreshObjectKHR pObjects;
}

struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 extendedDynamicState;
}

struct VkPhysicalDeviceExtendedDynamicState2FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 extendedDynamicState2;
  VkBool32 extendedDynamicState2LogicOp;
  VkBool32 extendedDynamicState2PatchControlPoints;
}

struct VkPhysicalDeviceExtendedDynamicState3FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 extendedDynamicState3TessellationDomainOrigin;
  VkBool32 extendedDynamicState3DepthClampEnable;
  VkBool32 extendedDynamicState3PolygonMode;
  VkBool32 extendedDynamicState3RasterizationSamples;
  VkBool32 extendedDynamicState3SampleMask;
  VkBool32 extendedDynamicState3AlphaToCoverageEnable;
  VkBool32 extendedDynamicState3AlphaToOneEnable;
  VkBool32 extendedDynamicState3LogicOpEnable;
  VkBool32 extendedDynamicState3ColorBlendEnable;
  VkBool32 extendedDynamicState3ColorBlendEquation;
  VkBool32 extendedDynamicState3ColorWriteMask;
  VkBool32 extendedDynamicState3RasterizationStream;
  VkBool32 extendedDynamicState3ConservativeRasterizationMode;
  VkBool32 extendedDynamicState3ExtraPrimitiveOverestimationSize;
  VkBool32 extendedDynamicState3DepthClipEnable;
  VkBool32 extendedDynamicState3SampleLocationsEnable;
  VkBool32 extendedDynamicState3ColorBlendAdvanced;
  VkBool32 extendedDynamicState3ProvokingVertexMode;
  VkBool32 extendedDynamicState3LineRasterizationMode;
  VkBool32 extendedDynamicState3LineStippleEnable;
  VkBool32 extendedDynamicState3DepthClipNegativeOneToOne;
  VkBool32 extendedDynamicState3ViewportWScalingEnable;
  VkBool32 extendedDynamicState3ViewportSwizzle;
  VkBool32 extendedDynamicState3CoverageToColorEnable;
  VkBool32 extendedDynamicState3CoverageToColorLocation;
  VkBool32 extendedDynamicState3CoverageModulationMode;
  VkBool32 extendedDynamicState3CoverageModulationTableEnable;
  VkBool32 extendedDynamicState3CoverageModulationTable;
  VkBool32 extendedDynamicState3CoverageReductionMode;
  VkBool32 extendedDynamicState3RepresentativeFragmentTestEnable;
  VkBool32 extendedDynamicState3ShadingRateImageEnable;
}

struct VkPhysicalDeviceExtendedDynamicState3PropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 dynamicPrimitiveTopologyUnrestricted;
}

struct VkColorBlendEquationEXT {
  VkBlendFactor srcColorBlendFactor;
  VkBlendFactor dstColorBlendFactor;
  VkBlendOp colorBlendOp;
  VkBlendFactor srcAlphaBlendFactor;
  VkBlendFactor dstAlphaBlendFactor;
  VkBlendOp alphaBlendOp;
}

struct VkColorBlendAdvancedEXT {
  VkBlendOp advancedBlendOp;
  VkBool32 srcPremultiplied;
  VkBool32 dstPremultiplied;
  VkBlendOverlapEXT blendOverlap;
  VkBool32 clampResults;
}

struct VkRenderPassTransformBeginInfoQCOM {
  VkStructureType sType;
  void pNext;
  VkSurfaceTransformFlagBitsKHR transform;
}

struct VkCopyCommandTransformInfoQCOM {
  VkStructureType sType;
  void pNext;
  VkSurfaceTransformFlagBitsKHR transform;
}

struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM {
  VkStructureType sType;
  void pNext;
  VkSurfaceTransformFlagBitsKHR transform;
  VkRect2D renderArea;
}

struct VkPhysicalDeviceDiagnosticsConfigFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 diagnosticsConfig;
}

struct VkDeviceDiagnosticsConfigCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkDeviceDiagnosticsConfigFlagsNV flags;
}

struct VkPipelineOfflineCreateInfo {
  VkStructureType sType;
  void pNext;
  uint8_t pipelineIdentifier;
  VkPipelineMatchControl matchControl;
  VkDeviceSize poolEntrySize;
}

struct VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderZeroInitializeWorkgroupMemory;
}

struct VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR {
  
}

struct VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderSubgroupUniformControlFlow;
}

struct VkPhysicalDeviceRobustness2FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 robustBufferAccess2;
  VkBool32 robustImageAccess2;
  VkBool32 nullDescriptor;
}

struct VkPhysicalDeviceRobustness2PropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceSize robustStorageBufferAccessSizeAlignment;
  VkDeviceSize robustUniformBufferAccessSizeAlignment;
}

struct VkPhysicalDeviceImageRobustnessFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 robustImageAccess;
}

struct VkPhysicalDeviceImageRobustnessFeaturesEXT {
  
}

struct VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 workgroupMemoryExplicitLayout;
  VkBool32 workgroupMemoryExplicitLayoutScalarBlockLayout;
  VkBool32 workgroupMemoryExplicitLayout8BitAccess;
  VkBool32 workgroupMemoryExplicitLayout16BitAccess;
}

struct VkPhysicalDevicePortabilitySubsetFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 constantAlphaColorBlendFactors;
  VkBool32 events;
  VkBool32 imageViewFormatReinterpretation;
  VkBool32 imageViewFormatSwizzle;
  VkBool32 imageView2DOn3DImage;
  VkBool32 multisampleArrayImage;
  VkBool32 mutableComparisonSamplers;
  VkBool32 pointPolygons;
  VkBool32 samplerMipLodBias;
  VkBool32 separateStencilMaskRef;
  VkBool32 shaderSampleRateInterpolationFunctions;
  VkBool32 tessellationIsolines;
  VkBool32 tessellationPointMode;
  VkBool32 triangleFans;
  VkBool32 vertexAttributeAccessBeyondStride;
}

struct VkPhysicalDevicePortabilitySubsetPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t minVertexInputBindingStrideAlignment;
}

struct VkPhysicalDevice4444FormatsFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 formatA4R4G4B4;
  VkBool32 formatA4B4G4R4;
}

struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI {
  VkStructureType sType;
  void pNext;
  VkBool32 subpassShading;
}

struct VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI {
  VkStructureType sType;
  void pNext;
  VkBool32 clustercullingShader;
  VkBool32 multiviewClusterCullingShader;
}

struct VkBufferCopy2 {
  VkStructureType sType;
  void pNext;
  VkDeviceSize srcOffset;
  VkDeviceSize dstOffset;
  VkDeviceSize size;
}

struct VkBufferCopy2KHR {
  
}

struct VkImageCopy2 {
  VkStructureType sType;
  void pNext;
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}

struct VkImageCopy2KHR {
  
}

struct VkImageBlit2 {
  VkStructureType sType;
  void pNext;
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffsets;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffsets;
}

struct VkImageBlit2KHR {
  
}

struct VkBufferImageCopy2 {
  VkStructureType sType;
  void pNext;
  VkDeviceSize bufferOffset;
  uint32_t bufferRowLength;
  uint32_t bufferImageHeight;
  VkImageSubresourceLayers imageSubresource;
  VkOffset3D imageOffset;
  VkExtent3D imageExtent;
}

struct VkBufferImageCopy2KHR {
  
}

struct VkImageResolve2 {
  VkStructureType sType;
  void pNext;
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}

struct VkImageResolve2KHR {
  
}

struct VkCopyBufferInfo2 {
  VkStructureType sType;
  void pNext;
  VkBuffer srcBuffer;
  VkBuffer dstBuffer;
  uint32_t regionCount;
  VkBufferCopy2 pRegions;
}

struct VkCopyBufferInfo2KHR {
  
}

struct VkCopyImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint32_t regionCount;
  VkImageCopy2 pRegions;
}

struct VkCopyImageInfo2KHR {
  
}

struct VkBlitImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint32_t regionCount;
  VkImageBlit2 pRegions;
  VkFilter filter;
}

struct VkBlitImageInfo2KHR {
  
}

struct VkCopyBufferToImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkBuffer srcBuffer;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint32_t regionCount;
  VkBufferImageCopy2 pRegions;
}

struct VkCopyBufferToImageInfo2KHR {
  
}

struct VkCopyImageToBufferInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkBuffer dstBuffer;
  uint32_t regionCount;
  VkBufferImageCopy2 pRegions;
}

struct VkCopyImageToBufferInfo2KHR {
  
}

struct VkResolveImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint32_t regionCount;
  VkImageResolve2 pRegions;
}

struct VkResolveImageInfo2KHR {
  
}

struct VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderImageInt64Atomics;
  VkBool32 sparseImageInt64Atomics;
}

struct VkFragmentShadingRateAttachmentInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAttachmentReference2 pFragmentShadingRateAttachment;
  VkExtent2D shadingRateAttachmentTexelSize;
}

struct VkPipelineFragmentShadingRateStateCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkExtent2D fragmentSize;
  VkFragmentShadingRateCombinerOpKHR combinerOps;
}

struct VkPhysicalDeviceFragmentShadingRateFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineFragmentShadingRate;
  VkBool32 primitiveFragmentShadingRate;
  VkBool32 attachmentFragmentShadingRate;
}

struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkExtent2D minFragmentShadingRateAttachmentTexelSize;
  VkExtent2D maxFragmentShadingRateAttachmentTexelSize;
  uint32_t maxFragmentShadingRateAttachmentTexelSizeAspectRatio;
  VkBool32 primitiveFragmentShadingRateWithMultipleViewports;
  VkBool32 layeredShadingRateAttachments;
  VkBool32 fragmentShadingRateNonTrivialCombinerOps;
  VkExtent2D maxFragmentSize;
  uint32_t maxFragmentSizeAspectRatio;
  uint32_t maxFragmentShadingRateCoverageSamples;
  VkSampleCountFlagBits maxFragmentShadingRateRasterizationSamples;
  VkBool32 fragmentShadingRateWithShaderDepthStencilWrites;
  VkBool32 fragmentShadingRateWithSampleMask;
  VkBool32 fragmentShadingRateWithShaderSampleMask;
  VkBool32 fragmentShadingRateWithConservativeRasterization;
  VkBool32 fragmentShadingRateWithFragmentShaderInterlock;
  VkBool32 fragmentShadingRateWithCustomSampleLocations;
  VkBool32 fragmentShadingRateStrictMultiplyCombiner;
}

struct VkPhysicalDeviceFragmentShadingRateKHR {
  VkStructureType sType;
  void pNext;
  VkSampleCountFlags sampleCounts;
  VkExtent2D fragmentSize;
}

struct VkPhysicalDeviceShaderTerminateInvocationFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderTerminateInvocation;
}

struct VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR {
  
}

struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 fragmentShadingRateEnums;
  VkBool32 supersampleFragmentShadingRates;
  VkBool32 noInvocationFragmentShadingRates;
}

struct VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkSampleCountFlagBits maxFragmentShadingRateInvocationCount;
}

struct VkPipelineFragmentShadingRateEnumStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkFragmentShadingRateTypeNV shadingRateType;
  VkFragmentShadingRateNV shadingRate;
  VkFragmentShadingRateCombinerOpKHR combinerOps;
}

struct VkAccelerationStructureBuildSizesInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceSize accelerationStructureSize;
  VkDeviceSize updateScratchSize;
  VkDeviceSize buildScratchSize;
}

struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 image2DViewOf3D;
  VkBool32 sampler2DViewOf3D;
}

struct VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 imageSlicedViewOf3D;
}

struct VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 attachmentFeedbackLoopDynamicState;
}

struct VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 mutableDescriptorType;
}

struct VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE {
  
}

struct VkMutableDescriptorTypeListEXT {
  uint32_t descriptorTypeCount;
  VkDescriptorType pDescriptorTypes;
}

struct VkMutableDescriptorTypeListVALVE {
  
}

struct VkMutableDescriptorTypeCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t mutableDescriptorTypeListCount;
  VkMutableDescriptorTypeListEXT pMutableDescriptorTypeLists;
}

struct VkMutableDescriptorTypeCreateInfoVALVE {
  
}

struct VkPhysicalDeviceDepthClipControlFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 depthClipControl;
}

struct VkPipelineViewportDepthClipControlCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 negativeOneToOne;
}

struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 vertexInputDynamicState;
}

struct VkPhysicalDeviceExternalMemoryRDMAFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 externalMemoryRDMA;
}

struct VkVertexInputBindingDescription2EXT {
  VkStructureType sType;
  void pNext;
  uint32_t binding;
  uint32_t stride;
  VkVertexInputRate inputRate;
  uint32_t divisor;
}

struct VkVertexInputAttributeDescription2EXT {
  VkStructureType sType;
  void pNext;
  uint32_t location;
  uint32_t binding;
  VkFormat format;
  uint32_t offset;
}

struct VkPhysicalDeviceColorWriteEnableFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 colorWriteEnable;
}

struct VkPipelineColorWriteCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t attachmentCount;
  VkBool32 pColorWriteEnables;
}

struct VkMemoryBarrier2 {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 srcStageMask;
  VkAccessFlags2 srcAccessMask;
  VkPipelineStageFlags2 dstStageMask;
  VkAccessFlags2 dstAccessMask;
}

struct VkMemoryBarrier2KHR {
  
}

struct VkImageMemoryBarrier2 {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 srcStageMask;
  VkAccessFlags2 srcAccessMask;
  VkPipelineStageFlags2 dstStageMask;
  VkAccessFlags2 dstAccessMask;
  VkImageLayout oldLayout;
  VkImageLayout newLayout;
  uint32_t srcQueueFamilyIndex;
  uint32_t dstQueueFamilyIndex;
  VkImage image;
  VkImageSubresourceRange subresourceRange;
}

struct VkImageMemoryBarrier2KHR {
  
}

struct VkBufferMemoryBarrier2 {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 srcStageMask;
  VkAccessFlags2 srcAccessMask;
  VkPipelineStageFlags2 dstStageMask;
  VkAccessFlags2 dstAccessMask;
  uint32_t srcQueueFamilyIndex;
  uint32_t dstQueueFamilyIndex;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize size;
}

struct VkBufferMemoryBarrier2KHR {
  
}

struct VkDependencyInfo {
  VkStructureType sType;
  void pNext;
  VkDependencyFlags dependencyFlags;
  uint32_t memoryBarrierCount;
  VkMemoryBarrier2 pMemoryBarriers;
  uint32_t bufferMemoryBarrierCount;
  VkBufferMemoryBarrier2 pBufferMemoryBarriers;
  uint32_t imageMemoryBarrierCount;
  VkImageMemoryBarrier2 pImageMemoryBarriers;
}

struct VkDependencyInfoKHR {
  
}

struct VkSemaphoreSubmitInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  uint64_t value;
  VkPipelineStageFlags2 stageMask;
  uint32_t deviceIndex;
}

struct VkSemaphoreSubmitInfoKHR {
  
}

struct VkCommandBufferSubmitInfo {
  VkStructureType sType;
  void pNext;
  VkCommandBuffer commandBuffer;
  uint32_t deviceMask;
}

struct VkCommandBufferSubmitInfoKHR {
  
}

struct VkSubmitInfo2 {
  VkStructureType sType;
  void pNext;
  VkSubmitFlags flags;
  uint32_t waitSemaphoreInfoCount;
  VkSemaphoreSubmitInfo pWaitSemaphoreInfos;
  uint32_t commandBufferInfoCount;
  VkCommandBufferSubmitInfo pCommandBufferInfos;
  uint32_t signalSemaphoreInfoCount;
  VkSemaphoreSubmitInfo pSignalSemaphoreInfos;
}

struct VkSubmitInfo2KHR {
  
}

struct VkQueueFamilyCheckpointProperties2NV {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 checkpointExecutionStageMask;
}

struct VkCheckpointData2NV {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 stage;
  void pCheckpointMarker;
}

struct VkPhysicalDeviceSynchronization2Features {
  VkStructureType sType;
  void pNext;
  VkBool32 synchronization2;
}

struct VkPhysicalDeviceSynchronization2FeaturesKHR {
  
}

struct VkPhysicalDeviceVulkanSC10Properties {
  VkStructureType sType;
  void pNext;
  VkBool32 deviceNoDynamicHostAllocations;
  VkBool32 deviceDestroyFreesMemory;
  VkBool32 commandPoolMultipleCommandBuffersRecording;
  VkBool32 commandPoolResetCommandBuffer;
  VkBool32 commandBufferSimultaneousUse;
  VkBool32 secondaryCommandBufferNullOrImagelessFramebuffer;
  VkBool32 recycleDescriptorSetMemory;
  VkBool32 recyclePipelineMemory;
  uint32_t maxRenderPassSubpasses;
  uint32_t maxRenderPassDependencies;
  uint32_t maxSubpassInputAttachments;
  uint32_t maxSubpassPreserveAttachments;
  uint32_t maxFramebufferAttachments;
  uint32_t maxDescriptorSetLayoutBindings;
  uint32_t maxQueryFaultCount;
  uint32_t maxCallbackFaultCount;
  uint32_t maxCommandPoolCommandBuffers;
  VkDeviceSize maxCommandBufferSize;
}

struct VkPipelinePoolSize {
  VkStructureType sType;
  void pNext;
  VkDeviceSize poolEntrySize;
  uint32_t poolEntryCount;
}

struct VkDeviceObjectReservationCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t pipelineCacheCreateInfoCount;
  VkPipelineCacheCreateInfo pPipelineCacheCreateInfos;
  uint32_t pipelinePoolSizeCount;
  VkPipelinePoolSize pPipelinePoolSizes;
  uint32_t semaphoreRequestCount;
  uint32_t commandBufferRequestCount;
  uint32_t fenceRequestCount;
  uint32_t deviceMemoryRequestCount;
  uint32_t bufferRequestCount;
  uint32_t imageRequestCount;
  uint32_t eventRequestCount;
  uint32_t queryPoolRequestCount;
  uint32_t bufferViewRequestCount;
  uint32_t imageViewRequestCount;
  uint32_t layeredImageViewRequestCount;
  uint32_t pipelineCacheRequestCount;
  uint32_t pipelineLayoutRequestCount;
  uint32_t renderPassRequestCount;
  uint32_t graphicsPipelineRequestCount;
  uint32_t computePipelineRequestCount;
  uint32_t descriptorSetLayoutRequestCount;
  uint32_t samplerRequestCount;
  uint32_t descriptorPoolRequestCount;
  uint32_t descriptorSetRequestCount;
  uint32_t framebufferRequestCount;
  uint32_t commandPoolRequestCount;
  uint32_t samplerYcbcrConversionRequestCount;
  uint32_t surfaceRequestCount;
  uint32_t swapchainRequestCount;
  uint32_t displayModeRequestCount;
  uint32_t subpassDescriptionRequestCount;
  uint32_t attachmentDescriptionRequestCount;
  uint32_t descriptorSetLayoutBindingRequestCount;
  uint32_t descriptorSetLayoutBindingLimit;
  uint32_t maxImageViewMipLevels;
  uint32_t maxImageViewArrayLayers;
  uint32_t maxLayeredImageViewMipLevels;
  uint32_t maxOcclusionQueriesPerPool;
  uint32_t maxPipelineStatisticsQueriesPerPool;
  uint32_t maxTimestampQueriesPerPool;
  uint32_t maxImmutableSamplersPerDescriptorSetLayout;
}

struct VkCommandPoolMemoryReservationCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceSize commandPoolReservedSize;
  uint32_t commandPoolMaxCommandBuffers;
}

struct VkCommandPoolMemoryConsumption {
  VkStructureType sType;
  void pNext;
  VkDeviceSize commandPoolAllocated;
  VkDeviceSize commandPoolReservedSize;
  VkDeviceSize commandBufferAllocated;
}

struct VkPhysicalDeviceVulkanSC10Features {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderAtomicInstructions;
}

struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 primitivesGeneratedQuery;
  VkBool32 primitivesGeneratedQueryWithRasterizerDiscard;
  VkBool32 primitivesGeneratedQueryWithNonZeroStreams;
}

struct VkPhysicalDeviceLegacyDitheringFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 legacyDithering;
}

struct VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 multisampledRenderToSingleSampled;
}

struct VkSubpassResolvePerformanceQueryEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 optimal;
}

struct VkMultisampledRenderToSingleSampledInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 multisampledRenderToSingleSampledEnable;
  VkSampleCountFlagBits rasterizationSamples;
}

struct VkPhysicalDevicePipelineProtectedAccessFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineProtectedAccess;
}

struct VkQueueFamilyVideoPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoCodecOperationFlagsKHR videoCodecOperations;
}

struct VkQueueFamilyQueryResultStatusPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 queryResultStatusSupport;
}

struct VkVideoProfileListInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t profileCount;
  VkVideoProfileInfoKHR pProfiles;
}

struct VkPhysicalDeviceVideoFormatInfoKHR {
  VkStructureType sType;
  void pNext;
  VkImageUsageFlags imageUsage;
}

struct VkVideoFormatPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  VkComponentMapping componentMapping;
  VkImageCreateFlags imageCreateFlags;
  VkImageType imageType;
  VkImageTiling imageTiling;
  VkImageUsageFlags imageUsageFlags;
}

struct VkVideoProfileInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoCodecOperationFlagBitsKHR videoCodecOperation;
  VkVideoChromaSubsamplingFlagsKHR chromaSubsampling;
  VkVideoComponentBitDepthFlagsKHR lumaBitDepth;
  VkVideoComponentBitDepthFlagsKHR chromaBitDepth;
}

struct VkVideoCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoCapabilityFlagsKHR flags;
  VkDeviceSize minBitstreamBufferOffsetAlignment;
  VkDeviceSize minBitstreamBufferSizeAlignment;
  VkExtent2D pictureAccessGranularity;
  VkExtent2D minCodedExtent;
  VkExtent2D maxCodedExtent;
  uint32_t maxDpbSlots;
  uint32_t maxActiveReferencePictures;
  VkExtensionProperties stdHeaderVersion;
}

struct VkVideoSessionMemoryRequirementsKHR {
  VkStructureType sType;
  void pNext;
  uint32_t memoryBindIndex;
  VkMemoryRequirements memoryRequirements;
}

struct VkBindVideoSessionMemoryInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t memoryBindIndex;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  VkDeviceSize memorySize;
}

struct VkVideoPictureResourceInfoKHR {
  VkStructureType sType;
  void pNext;
  VkOffset2D codedOffset;
  VkExtent2D codedExtent;
  uint32_t baseArrayLayer;
  VkImageView imageViewBinding;
}

struct VkVideoReferenceSlotInfoKHR {
  VkStructureType sType;
  void pNext;
  int32_t slotIndex;
  VkVideoPictureResourceInfoKHR pPictureResource;
}

struct VkVideoDecodeCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoDecodeCapabilityFlagsKHR flags;
}

struct VkVideoDecodeUsageInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoDecodeUsageFlagsKHR videoUsageHints;
}

struct VkVideoDecodeInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoDecodeFlagsKHR flags;
  VkBuffer srcBuffer;
  VkDeviceSize srcBufferOffset;
  VkDeviceSize srcBufferRange;
  VkVideoPictureResourceInfoKHR dstPictureResource;
  VkVideoReferenceSlotInfoKHR pSetupReferenceSlot;
  uint32_t referenceSlotCount;
  VkVideoReferenceSlotInfoKHR pReferenceSlots;
}

struct VkVideoDecodeH264ProfileInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoH264ProfileIdc stdProfileIdc;
  VkVideoDecodeH264PictureLayoutFlagBitsKHR pictureLayout;
}

struct VkVideoDecodeH264CapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  StdVideoH264LevelIdc maxLevelIdc;
  VkOffset2D fieldOffsetGranularity;
}

struct VkVideoDecodeH264SessionParametersAddInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t stdSPSCount;
  StdVideoH264SequenceParameterSet pStdSPSs;
  uint32_t stdPPSCount;
  StdVideoH264PictureParameterSet pStdPPSs;
}

struct VkVideoDecodeH264SessionParametersCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t maxStdSPSCount;
  uint32_t maxStdPPSCount;
  VkVideoDecodeH264SessionParametersAddInfoKHR pParametersAddInfo;
}

struct VkVideoDecodeH264PictureInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH264PictureInfo pStdPictureInfo;
  uint32_t sliceCount;
  uint32_t pSliceOffsets;
}

struct VkVideoDecodeH264DpbSlotInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH264ReferenceInfo pStdReferenceInfo;
}

struct VkVideoDecodeH265ProfileInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoH265ProfileIdc stdProfileIdc;
}

struct VkVideoDecodeH265CapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  StdVideoH265LevelIdc maxLevelIdc;
}

struct VkVideoDecodeH265SessionParametersAddInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t stdVPSCount;
  StdVideoH265VideoParameterSet pStdVPSs;
  uint32_t stdSPSCount;
  StdVideoH265SequenceParameterSet pStdSPSs;
  uint32_t stdPPSCount;
  StdVideoH265PictureParameterSet pStdPPSs;
}

struct VkVideoDecodeH265SessionParametersCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t maxStdVPSCount;
  uint32_t maxStdSPSCount;
  uint32_t maxStdPPSCount;
  VkVideoDecodeH265SessionParametersAddInfoKHR pParametersAddInfo;
}

struct VkVideoDecodeH265PictureInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH265PictureInfo pStdPictureInfo;
  uint32_t sliceSegmentCount;
  uint32_t pSliceSegmentOffsets;
}

struct VkVideoDecodeH265DpbSlotInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH265ReferenceInfo pStdReferenceInfo;
}

struct VkVideoSessionCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t queueFamilyIndex;
  VkVideoSessionCreateFlagsKHR flags;
  VkVideoProfileInfoKHR pVideoProfile;
  VkFormat pictureFormat;
  VkExtent2D maxCodedExtent;
  VkFormat referencePictureFormat;
  uint32_t maxDpbSlots;
  uint32_t maxActiveReferencePictures;
  VkExtensionProperties pStdHeaderVersion;
}

struct VkVideoSessionParametersCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoSessionParametersCreateFlagsKHR flags;
  VkVideoSessionParametersKHR videoSessionParametersTemplate;
  VkVideoSessionKHR videoSession;
}

struct VkVideoSessionParametersUpdateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t updateSequenceCount;
}

struct VkVideoEncodeSessionParametersGetInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoSessionParametersKHR videoSessionParameters;
}

struct VkVideoEncodeSessionParametersFeedbackInfoKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 hasOverrides;
}

struct VkVideoBeginCodingInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoBeginCodingFlagsKHR flags;
  VkVideoSessionKHR videoSession;
  VkVideoSessionParametersKHR videoSessionParameters;
  uint32_t referenceSlotCount;
  VkVideoReferenceSlotInfoKHR pReferenceSlots;
}

struct VkVideoEndCodingInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEndCodingFlagsKHR flags;
}

struct VkVideoCodingControlInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoCodingControlFlagsKHR flags;
}

struct VkVideoEncodeUsageInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeUsageFlagsKHR videoUsageHints;
  VkVideoEncodeContentFlagsKHR videoContentHints;
  VkVideoEncodeTuningModeKHR tuningMode;
}

struct VkVideoEncodeInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeFlagsKHR flags;
  VkBuffer dstBuffer;
  VkDeviceSize dstBufferOffset;
  VkDeviceSize dstBufferRange;
  VkVideoPictureResourceInfoKHR srcPictureResource;
  VkVideoReferenceSlotInfoKHR pSetupReferenceSlot;
  uint32_t referenceSlotCount;
  VkVideoReferenceSlotInfoKHR pReferenceSlots;
  uint32_t precedingExternallyEncodedBytes;
}

struct VkQueryPoolVideoEncodeFeedbackCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeFeedbackFlagsKHR encodeFeedbackFlags;
}

struct VkVideoEncodeQualityLevelInfoKHR {
  VkStructureType sType;
  void pNext;
  uint32_t qualityLevel;
}

struct VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoProfileInfoKHR pVideoProfile;
  uint32_t qualityLevel;
}

struct VkVideoEncodeQualityLevelPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeRateControlModeFlagBitsKHR preferredRateControlMode;
  uint32_t preferredRateControlLayerCount;
}

struct VkVideoEncodeRateControlInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeRateControlFlagsKHR flags;
  VkVideoEncodeRateControlModeFlagBitsKHR rateControlMode;
  uint32_t layerCount;
  VkVideoEncodeRateControlLayerInfoKHR pLayers;
  uint32_t virtualBufferSizeInMs;
  uint32_t initialVirtualBufferSizeInMs;
}

struct VkVideoEncodeRateControlLayerInfoKHR {
  VkStructureType sType;
  void pNext;
  uint64_t averageBitrate;
  uint64_t maxBitrate;
  uint32_t frameRateNumerator;
  uint32_t frameRateDenominator;
}

struct VkVideoEncodeCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeCapabilityFlagsKHR flags;
  VkVideoEncodeRateControlModeFlagsKHR rateControlModes;
  uint32_t maxRateControlLayers;
  uint64_t maxBitrate;
  uint32_t maxQualityLevels;
  VkExtent2D encodeInputPictureGranularity;
  VkVideoEncodeFeedbackFlagsKHR supportedEncodeFeedbackFlags;
}

struct VkVideoEncodeH264CapabilitiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH264CapabilityFlagsEXT flags;
  StdVideoH264LevelIdc maxLevelIdc;
  uint32_t maxSliceCount;
  uint32_t maxPPictureL0ReferenceCount;
  uint32_t maxBPictureL0ReferenceCount;
  uint32_t maxL1ReferenceCount;
  uint32_t maxTemporalLayerCount;
  VkBool32 expectDyadicTemporalLayerPattern;
  int32_t minQp;
  int32_t maxQp;
  VkBool32 prefersGopRemainingFrames;
  VkBool32 requiresGopRemainingFrames;
  VkVideoEncodeH264StdFlagsEXT stdSyntaxFlags;
}

struct VkVideoEncodeH264QualityLevelPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH264RateControlFlagsEXT preferredRateControlFlags;
  uint32_t preferredGopFrameCount;
  uint32_t preferredIdrPeriod;
  uint32_t preferredConsecutiveBFrameCount;
  uint32_t preferredTemporalLayerCount;
  VkVideoEncodeH264QpEXT preferredConstantQp;
  uint32_t preferredMaxL0ReferenceCount;
  uint32_t preferredMaxL1ReferenceCount;
  VkBool32 preferredStdEntropyCodingModeFlag;
}

struct VkVideoEncodeH264SessionCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useMaxLevelIdc;
  StdVideoH264LevelIdc maxLevelIdc;
}

struct VkVideoEncodeH264SessionParametersAddInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t stdSPSCount;
  StdVideoH264SequenceParameterSet pStdSPSs;
  uint32_t stdPPSCount;
  StdVideoH264PictureParameterSet pStdPPSs;
}

struct VkVideoEncodeH264SessionParametersCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxStdSPSCount;
  uint32_t maxStdPPSCount;
  VkVideoEncodeH264SessionParametersAddInfoEXT pParametersAddInfo;
}

struct VkVideoEncodeH264SessionParametersGetInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 writeStdSPS;
  VkBool32 writeStdPPS;
  uint32_t stdSPSId;
  uint32_t stdPPSId;
}

struct VkVideoEncodeH264SessionParametersFeedbackInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 hasStdSPSOverrides;
  VkBool32 hasStdPPSOverrides;
}

struct VkVideoEncodeH264DpbSlotInfoEXT {
  VkStructureType sType;
  void pNext;
  StdVideoEncodeH264ReferenceInfo pStdReferenceInfo;
}

struct VkVideoEncodeH264PictureInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t naluSliceEntryCount;
  VkVideoEncodeH264NaluSliceInfoEXT pNaluSliceEntries;
  StdVideoEncodeH264PictureInfo pStdPictureInfo;
  VkBool32 generatePrefixNalu;
}

struct VkVideoEncodeH264ProfileInfoEXT {
  VkStructureType sType;
  void pNext;
  StdVideoH264ProfileIdc stdProfileIdc;
}

struct VkVideoEncodeH264NaluSliceInfoEXT {
  VkStructureType sType;
  void pNext;
  int32_t constantQp;
  StdVideoEncodeH264SliceHeader pStdSliceHeader;
}

struct VkVideoEncodeH264RateControlInfoEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH264RateControlFlagsEXT flags;
  uint32_t gopFrameCount;
  uint32_t idrPeriod;
  uint32_t consecutiveBFrameCount;
  uint32_t temporalLayerCount;
}

struct VkVideoEncodeH264QpEXT {
  int32_t qpI;
  int32_t qpP;
  int32_t qpB;
}

struct VkVideoEncodeH264FrameSizeEXT {
  uint32_t frameISize;
  uint32_t framePSize;
  uint32_t frameBSize;
}

struct VkVideoEncodeH264GopRemainingFrameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useGopRemainingFrames;
  uint32_t gopRemainingI;
  uint32_t gopRemainingP;
  uint32_t gopRemainingB;
}

struct VkVideoEncodeH264RateControlLayerInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useMinQp;
  VkVideoEncodeH264QpEXT minQp;
  VkBool32 useMaxQp;
  VkVideoEncodeH264QpEXT maxQp;
  VkBool32 useMaxFrameSize;
  VkVideoEncodeH264FrameSizeEXT maxFrameSize;
}

struct VkVideoEncodeH265CapabilitiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH265CapabilityFlagsEXT flags;
  StdVideoH265LevelIdc maxLevelIdc;
  uint32_t maxSliceSegmentCount;
  VkExtent2D maxTiles;
  VkVideoEncodeH265CtbSizeFlagsEXT ctbSizes;
  VkVideoEncodeH265TransformBlockSizeFlagsEXT transformBlockSizes;
  uint32_t maxPPictureL0ReferenceCount;
  uint32_t maxBPictureL0ReferenceCount;
  uint32_t maxL1ReferenceCount;
  uint32_t maxSubLayerCount;
  VkBool32 expectDyadicTemporalSubLayerPattern;
  int32_t minQp;
  int32_t maxQp;
  VkBool32 prefersGopRemainingFrames;
  VkBool32 requiresGopRemainingFrames;
  VkVideoEncodeH265StdFlagsEXT stdSyntaxFlags;
}

struct VkVideoEncodeH265QualityLevelPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH265RateControlFlagsEXT preferredRateControlFlags;
  uint32_t preferredGopFrameCount;
  uint32_t preferredIdrPeriod;
  uint32_t preferredConsecutiveBFrameCount;
  uint32_t preferredSubLayerCount;
  VkVideoEncodeH265QpEXT preferredConstantQp;
  uint32_t preferredMaxL0ReferenceCount;
  uint32_t preferredMaxL1ReferenceCount;
}

struct VkVideoEncodeH265SessionCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useMaxLevelIdc;
  StdVideoH265LevelIdc maxLevelIdc;
}

struct VkVideoEncodeH265SessionParametersAddInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t stdVPSCount;
  StdVideoH265VideoParameterSet pStdVPSs;
  uint32_t stdSPSCount;
  StdVideoH265SequenceParameterSet pStdSPSs;
  uint32_t stdPPSCount;
  StdVideoH265PictureParameterSet pStdPPSs;
}

struct VkVideoEncodeH265SessionParametersCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxStdVPSCount;
  uint32_t maxStdSPSCount;
  uint32_t maxStdPPSCount;
  VkVideoEncodeH265SessionParametersAddInfoEXT pParametersAddInfo;
}

struct VkVideoEncodeH265SessionParametersGetInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 writeStdVPS;
  VkBool32 writeStdSPS;
  VkBool32 writeStdPPS;
  uint32_t stdVPSId;
  uint32_t stdSPSId;
  uint32_t stdPPSId;
}

struct VkVideoEncodeH265SessionParametersFeedbackInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 hasStdVPSOverrides;
  VkBool32 hasStdSPSOverrides;
  VkBool32 hasStdPPSOverrides;
}

struct VkVideoEncodeH265PictureInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t naluSliceSegmentEntryCount;
  VkVideoEncodeH265NaluSliceSegmentInfoEXT pNaluSliceSegmentEntries;
  StdVideoEncodeH265PictureInfo pStdPictureInfo;
}

struct VkVideoEncodeH265NaluSliceSegmentInfoEXT {
  VkStructureType sType;
  void pNext;
  int32_t constantQp;
  StdVideoEncodeH265SliceSegmentHeader pStdSliceSegmentHeader;
}

struct VkVideoEncodeH265RateControlInfoEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH265RateControlFlagsEXT flags;
  uint32_t gopFrameCount;
  uint32_t idrPeriod;
  uint32_t consecutiveBFrameCount;
  uint32_t subLayerCount;
}

struct VkVideoEncodeH265QpEXT {
  int32_t qpI;
  int32_t qpP;
  int32_t qpB;
}

struct VkVideoEncodeH265FrameSizeEXT {
  uint32_t frameISize;
  uint32_t framePSize;
  uint32_t frameBSize;
}

struct VkVideoEncodeH265GopRemainingFrameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useGopRemainingFrames;
  uint32_t gopRemainingI;
  uint32_t gopRemainingP;
  uint32_t gopRemainingB;
}

struct VkVideoEncodeH265RateControlLayerInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useMinQp;
  VkVideoEncodeH265QpEXT minQp;
  VkBool32 useMaxQp;
  VkVideoEncodeH265QpEXT maxQp;
  VkBool32 useMaxFrameSize;
  VkVideoEncodeH265FrameSizeEXT maxFrameSize;
}

struct VkVideoEncodeH265ProfileInfoEXT {
  VkStructureType sType;
  void pNext;
  StdVideoH265ProfileIdc stdProfileIdc;
}

struct VkVideoEncodeH265DpbSlotInfoEXT {
  VkStructureType sType;
  void pNext;
  StdVideoEncodeH265ReferenceInfo pStdReferenceInfo;
}

struct VkPhysicalDeviceInheritedViewportScissorFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 inheritedViewportScissor2D;
}

struct VkCommandBufferInheritanceViewportScissorInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 viewportScissor2D;
  uint32_t viewportDepthCount;
  VkViewport pViewportDepths;
}

struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 ycbcr2plane444Formats;
}

struct VkPhysicalDeviceProvokingVertexFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 provokingVertexLast;
  VkBool32 transformFeedbackPreservesProvokingVertex;
}

struct VkPhysicalDeviceProvokingVertexPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 provokingVertexModePerPipeline;
  VkBool32 transformFeedbackPreservesTriangleFanProvokingVertex;
}

struct VkPipelineRasterizationProvokingVertexStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkProvokingVertexModeEXT provokingVertexMode;
}

struct VkCuModuleCreateInfoNVX {
  VkStructureType sType;
  void pNext;
  size_t dataSize;
  void pData;
}

struct VkCuFunctionCreateInfoNVX {
  VkStructureType sType;
  void pNext;
  VkCuModuleNVX module;
  char pName;
}

struct VkCuLaunchInfoNVX {
  VkStructureType sType;
  void pNext;
  VkCuFunctionNVX function;
  uint32_t gridDimX;
  uint32_t gridDimY;
  uint32_t gridDimZ;
  uint32_t blockDimX;
  uint32_t blockDimY;
  uint32_t blockDimZ;
  uint32_t sharedMemBytes;
  size_t paramCount;
  void pParams;
  size_t extraCount;
  void pExtras;
}

struct VkPhysicalDeviceDescriptorBufferFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 descriptorBuffer;
  VkBool32 descriptorBufferCaptureReplay;
  VkBool32 descriptorBufferImageLayoutIgnored;
  VkBool32 descriptorBufferPushDescriptors;
}

struct VkPhysicalDeviceDescriptorBufferPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 combinedImageSamplerDescriptorSingleArray;
  VkBool32 bufferlessPushDescriptors;
  VkBool32 allowSamplerImageViewPostSubmitCreation;
  VkDeviceSize descriptorBufferOffsetAlignment;
  uint32_t maxDescriptorBufferBindings;
  uint32_t maxResourceDescriptorBufferBindings;
  uint32_t maxSamplerDescriptorBufferBindings;
  uint32_t maxEmbeddedImmutableSamplerBindings;
  uint32_t maxEmbeddedImmutableSamplers;
  size_t bufferCaptureReplayDescriptorDataSize;
  size_t imageCaptureReplayDescriptorDataSize;
  size_t imageViewCaptureReplayDescriptorDataSize;
  size_t samplerCaptureReplayDescriptorDataSize;
  size_t accelerationStructureCaptureReplayDescriptorDataSize;
  size_t samplerDescriptorSize;
  size_t combinedImageSamplerDescriptorSize;
  size_t sampledImageDescriptorSize;
  size_t storageImageDescriptorSize;
  size_t uniformTexelBufferDescriptorSize;
  size_t robustUniformTexelBufferDescriptorSize;
  size_t storageTexelBufferDescriptorSize;
  size_t robustStorageTexelBufferDescriptorSize;
  size_t uniformBufferDescriptorSize;
  size_t robustUniformBufferDescriptorSize;
  size_t storageBufferDescriptorSize;
  size_t robustStorageBufferDescriptorSize;
  size_t inputAttachmentDescriptorSize;
  size_t accelerationStructureDescriptorSize;
  VkDeviceSize maxSamplerDescriptorBufferRange;
  VkDeviceSize maxResourceDescriptorBufferRange;
  VkDeviceSize samplerDescriptorBufferAddressSpaceSize;
  VkDeviceSize resourceDescriptorBufferAddressSpaceSize;
  VkDeviceSize descriptorBufferAddressSpaceSize;
}

struct VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT {
  VkStructureType sType;
  void pNext;
  size_t combinedImageSamplerDensityMapDescriptorSize;
}

struct VkDescriptorAddressInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceAddress address;
  VkDeviceSize range;
  VkFormat format;
}

struct VkDescriptorBufferBindingInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceAddress address;
  VkBufferUsageFlags usage;
}

struct VkDescriptorBufferBindingPushDescriptorBufferHandleEXT {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
}

struct VkDescriptorGetInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDescriptorType type;
  VkDescriptorDataEXT data;
}

struct VkBufferCaptureDescriptorDataInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
}

struct VkImageCaptureDescriptorDataInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImage image;
}

struct VkImageViewCaptureDescriptorDataInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImageView imageView;
}

struct VkSamplerCaptureDescriptorDataInfoEXT {
  VkStructureType sType;
  void pNext;
  VkSampler sampler;
}

struct VkAccelerationStructureCaptureDescriptorDataInfoEXT {
  VkStructureType sType;
  void pNext;
  VkAccelerationStructureKHR accelerationStructure;
  VkAccelerationStructureNV accelerationStructureNV;
}

struct VkOpaqueCaptureDescriptorDataCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  void opaqueCaptureDescriptorData;
}

struct VkPhysicalDeviceShaderIntegerDotProductFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderIntegerDotProduct;
}

struct VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR {
  
}

struct VkPhysicalDeviceShaderIntegerDotProductProperties {
  VkStructureType sType;
  void pNext;
  VkBool32 integerDotProduct8BitUnsignedAccelerated;
  VkBool32 integerDotProduct8BitSignedAccelerated;
  VkBool32 integerDotProduct8BitMixedSignednessAccelerated;
  VkBool32 integerDotProduct4x8BitPackedUnsignedAccelerated;
  VkBool32 integerDotProduct4x8BitPackedSignedAccelerated;
  VkBool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated;
  VkBool32 integerDotProduct16BitUnsignedAccelerated;
  VkBool32 integerDotProduct16BitSignedAccelerated;
  VkBool32 integerDotProduct16BitMixedSignednessAccelerated;
  VkBool32 integerDotProduct32BitUnsignedAccelerated;
  VkBool32 integerDotProduct32BitSignedAccelerated;
  VkBool32 integerDotProduct32BitMixedSignednessAccelerated;
  VkBool32 integerDotProduct64BitUnsignedAccelerated;
  VkBool32 integerDotProduct64BitSignedAccelerated;
  VkBool32 integerDotProduct64BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated;
  VkBool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
}

struct VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR {
  
}

struct VkPhysicalDeviceDrmPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 hasPrimary;
  VkBool32 hasRender;
  int64_t primaryMajor;
  int64_t primaryMinor;
  int64_t renderMajor;
  int64_t renderMinor;
}

struct VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 fragmentShaderBarycentric;
}

struct VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 triStripVertexOrderIndependentOfProvokingVertex;
}

struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 rayTracingMotionBlur;
  VkBool32 rayTracingMotionBlurPipelineTraceRaysIndirect;
}

struct VkAccelerationStructureGeometryMotionTrianglesDataNV {
  VkStructureType sType;
  void pNext;
  VkDeviceOrHostAddressConstKHR vertexData;
}

struct VkAccelerationStructureMotionInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t maxInstances;
  VkAccelerationStructureMotionInfoFlagsNV flags;
}

struct VkSRTDataNV {
  float sx;
  float a;
  float b;
  float pvx;
  float sy;
  float c;
  float pvy;
  float sz;
  float pvz;
  float qx;
  float qy;
  float qz;
  float qw;
  float tx;
  float ty;
  float tz;
}

struct VkAccelerationStructureSRTMotionInstanceNV {
  VkSRTDataNV transformT0;
  VkSRTDataNV transformT1;
  uint32_t instanceCustomIndex;
  uint32_t mask;
  uint32_t instanceShaderBindingTableRecordOffset;
  VkGeometryInstanceFlagsKHR flags;
  uint64_t accelerationStructureReference;
}

struct VkAccelerationStructureMatrixMotionInstanceNV {
  VkTransformMatrixKHR transformT0;
  VkTransformMatrixKHR transformT1;
  uint32_t instanceCustomIndex;
  uint32_t mask;
  uint32_t instanceShaderBindingTableRecordOffset;
  VkGeometryInstanceFlagsKHR flags;
  uint64_t accelerationStructureReference;
}

struct VkAccelerationStructureMotionInstanceNV {
  VkAccelerationStructureMotionInstanceTypeNV type;
  VkAccelerationStructureMotionInstanceFlagsNV flags;
  VkAccelerationStructureMotionInstanceDataNV data;
}

struct VkMemoryGetRemoteAddressInfoNV {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkImportMemoryBufferCollectionFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkBufferCollectionFUCHSIA collection;
  uint32_t index;
}

struct VkBufferCollectionImageCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkBufferCollectionFUCHSIA collection;
  uint32_t index;
}

struct VkBufferCollectionBufferCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkBufferCollectionFUCHSIA collection;
  uint32_t index;
}

struct VkBufferCollectionCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  zx_handle_t collectionToken;
}

struct VkBufferCollectionPropertiesFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint32_t memoryTypeBits;
  uint32_t bufferCount;
  uint32_t createInfoIndex;
  uint64_t sysmemPixelFormat;
  VkFormatFeatureFlags formatFeatures;
  VkSysmemColorSpaceFUCHSIA sysmemColorSpaceIndex;
  VkComponentMapping samplerYcbcrConversionComponents;
  VkSamplerYcbcrModelConversion suggestedYcbcrModel;
  VkSamplerYcbcrRange suggestedYcbcrRange;
  VkChromaLocation suggestedXChromaOffset;
  VkChromaLocation suggestedYChromaOffset;
}

struct VkBufferConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkBufferCreateInfo createInfo;
  VkFormatFeatureFlags requiredFormatFeatures;
  VkBufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;
}

struct VkSysmemColorSpaceFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint32_t colorSpace;
}

struct VkImageFormatConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkImageCreateInfo imageCreateInfo;
  VkFormatFeatureFlags requiredFormatFeatures;
  VkImageFormatConstraintsFlagsFUCHSIA flags;
  uint64_t sysmemPixelFormat;
  uint32_t colorSpaceCount;
  VkSysmemColorSpaceFUCHSIA pColorSpaces;
}

struct VkImageConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint32_t formatConstraintsCount;
  VkImageFormatConstraintsInfoFUCHSIA pFormatConstraints;
  VkBufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;
  VkImageConstraintsInfoFlagsFUCHSIA flags;
}

struct VkBufferCollectionConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint32_t minBufferCount;
  uint32_t maxBufferCount;
  uint32_t minBufferCountForCamping;
  uint32_t minBufferCountForDedicatedSlack;
  uint32_t minBufferCountForSharedSlack;
}

struct VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 formatRgba10x6WithoutYCbCrSampler;
}

struct VkFormatProperties3 {
  VkStructureType sType;
  void pNext;
  VkFormatFeatureFlags2 linearTilingFeatures;
  VkFormatFeatureFlags2 optimalTilingFeatures;
  VkFormatFeatureFlags2 bufferFeatures;
}

struct VkFormatProperties3KHR {
  
}

struct VkDrmFormatModifierPropertiesList2EXT {
  VkStructureType sType;
  void pNext;
  uint32_t drmFormatModifierCount;
  VkDrmFormatModifierProperties2EXT pDrmFormatModifierProperties;
}

struct VkDrmFormatModifierProperties2EXT {
  uint64_t drmFormatModifier;
  uint32_t drmFormatModifierPlaneCount;
  VkFormatFeatureFlags2 drmFormatModifierTilingFeatures;
}

struct VkAndroidHardwareBufferFormatProperties2ANDROID {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  uint64_t externalFormat;
  VkFormatFeatureFlags2 formatFeatures;
  VkComponentMapping samplerYcbcrConversionComponents;
  VkSamplerYcbcrModelConversion suggestedYcbcrModel;
  VkSamplerYcbcrRange suggestedYcbcrRange;
  VkChromaLocation suggestedXChromaOffset;
  VkChromaLocation suggestedYChromaOffset;
}

struct VkPipelineRenderingCreateInfo {
  VkStructureType sType;
  void pNext;
  uint32_t viewMask;
  uint32_t colorAttachmentCount;
  VkFormat pColorAttachmentFormats;
  VkFormat depthAttachmentFormat;
  VkFormat stencilAttachmentFormat;
}

struct VkPipelineRenderingCreateInfoKHR {
  
}

struct VkRenderingInfo {
  VkStructureType sType;
  void pNext;
  VkRenderingFlags flags;
  VkRect2D renderArea;
  uint32_t layerCount;
  uint32_t viewMask;
  uint32_t colorAttachmentCount;
  VkRenderingAttachmentInfo pColorAttachments;
  VkRenderingAttachmentInfo pDepthAttachment;
  VkRenderingAttachmentInfo pStencilAttachment;
}

struct VkRenderingInfoKHR {
  
}

struct VkRenderingAttachmentInfo {
  VkStructureType sType;
  void pNext;
  VkImageView imageView;
  VkImageLayout imageLayout;
  VkResolveModeFlagBits resolveMode;
  VkImageView resolveImageView;
  VkImageLayout resolveImageLayout;
  VkAttachmentLoadOp loadOp;
  VkAttachmentStoreOp storeOp;
  VkClearValue clearValue;
}

struct VkRenderingAttachmentInfoKHR {
  
}

struct VkRenderingFragmentShadingRateAttachmentInfoKHR {
  VkStructureType sType;
  void pNext;
  VkImageView imageView;
  VkImageLayout imageLayout;
  VkExtent2D shadingRateAttachmentTexelSize;
}

struct VkRenderingFragmentDensityMapAttachmentInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImageView imageView;
  VkImageLayout imageLayout;
}

struct VkPhysicalDeviceDynamicRenderingFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 dynamicRendering;
}

struct VkPhysicalDeviceDynamicRenderingFeaturesKHR {
  
}

struct VkCommandBufferInheritanceRenderingInfo {
  VkStructureType sType;
  void pNext;
  VkRenderingFlags flags;
  uint32_t viewMask;
  uint32_t colorAttachmentCount;
  uint32_t colorAttachmentCount;
  VkFormat pColorAttachmentFormats;
  VkFormat depthAttachmentFormat;
  VkFormat stencilAttachmentFormat;
  VkSampleCountFlagBits rasterizationSamples;
}

struct VkCommandBufferInheritanceRenderingInfoKHR {
  
}

struct VkAttachmentSampleCountInfoAMD {
  VkStructureType sType;
  void pNext;
  uint32_t colorAttachmentCount;
  VkSampleCountFlagBits pColorAttachmentSamples;
  VkSampleCountFlagBits depthStencilAttachmentSamples;
}

struct VkAttachmentSampleCountInfoNV {
  
}

struct VkMultiviewPerViewAttributesInfoNVX {
  VkStructureType sType;
  void pNext;
  VkBool32 perViewAttributes;
  VkBool32 perViewAttributesPositionXOnly;
}

struct VkPhysicalDeviceImageViewMinLodFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 minLod;
}

struct VkImageViewMinLodCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  float minLod;
}

struct VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 rasterizationOrderColorAttachmentAccess;
  VkBool32 rasterizationOrderDepthAttachmentAccess;
  VkBool32 rasterizationOrderStencilAttachmentAccess;
}

struct VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM {
  
}

struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 linearColorAttachment;
}

struct VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 graphicsPipelineLibrary;
}

struct VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 graphicsPipelineLibraryFastLinking;
  VkBool32 graphicsPipelineLibraryIndependentInterpolationDecoration;
}

struct VkGraphicsPipelineLibraryCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkGraphicsPipelineLibraryFlagsEXT flags;
}

struct VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE {
  VkStructureType sType;
  void pNext;
  VkBool32 descriptorSetHostMapping;
}

struct VkDescriptorSetBindingReferenceVALVE {
  VkStructureType sType;
  void pNext;
  VkDescriptorSetLayout descriptorSetLayout;
  uint32_t binding;
}

struct VkDescriptorSetLayoutHostMappingInfoVALVE {
  VkStructureType sType;
  void pNext;
  size_t descriptorOffset;
  uint32_t descriptorSize;
}

struct VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderModuleIdentifier;
}

struct VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint8_t shaderModuleIdentifierAlgorithmUUID;
}

struct VkPipelineShaderStageModuleIdentifierCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t identifierSize;
  uint8_t pIdentifier;
}

struct VkShaderModuleIdentifierEXT {
  VkStructureType sType;
  void pNext;
  uint32_t identifierSize;
  uint8_t identifier;
}

struct VkImageCompressionControlEXT {
  VkStructureType sType;
  void pNext;
  VkImageCompressionFlagsEXT flags;
  uint32_t compressionControlPlaneCount;
  VkImageCompressionFixedRateFlagsEXT pFixedRateFlags;
}

struct VkPhysicalDeviceImageCompressionControlFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 imageCompressionControl;
}

struct VkImageCompressionPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkImageCompressionFlagsEXT imageCompressionFlags;
  VkImageCompressionFixedRateFlagsEXT imageCompressionFixedRateFlags;
}

struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 imageCompressionControlSwapchain;
}

struct VkImageSubresource2EXT {
  VkStructureType sType;
  void pNext;
  VkImageSubresource imageSubresource;
}

struct VkSubresourceLayout2EXT {
  VkStructureType sType;
  void pNext;
  VkSubresourceLayout subresourceLayout;
}

struct VkRenderPassCreationControlEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 disallowMerging;
}

struct VkRenderPassCreationFeedbackInfoEXT {
  uint32_t postMergeSubpassCount;
}

struct VkRenderPassCreationFeedbackCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkRenderPassCreationFeedbackInfoEXT pRenderPassFeedback;
}

struct VkRenderPassSubpassFeedbackInfoEXT {
  VkSubpassMergeStatusEXT subpassMergeStatus;
  char description;
  uint32_t postMergeIndex;
}

struct VkRenderPassSubpassFeedbackCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkRenderPassSubpassFeedbackInfoEXT pSubpassFeedback;
}

struct VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 subpassMergeFeedback;
}

struct VkMicromapBuildInfoEXT {
  VkStructureType sType;
  void pNext;
  VkMicromapTypeEXT type;
  VkBuildMicromapFlagsEXT flags;
  VkBuildMicromapModeEXT mode;
  VkMicromapEXT dstMicromap;
  uint32_t usageCountsCount;
  VkMicromapUsageEXT pUsageCounts;
  VkMicromapUsageEXT ppUsageCounts;
  VkDeviceOrHostAddressConstKHR data;
  VkDeviceOrHostAddressKHR scratchData;
  VkDeviceOrHostAddressConstKHR triangleArray;
  VkDeviceSize triangleArrayStride;
}

struct VkMicromapCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkMicromapCreateFlagsEXT createFlags;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize size;
  VkMicromapTypeEXT type;
  VkDeviceAddress deviceAddress;
}

struct VkMicromapVersionInfoEXT {
  VkStructureType sType;
  void pNext;
  uint8_t pVersionData;
}

struct VkCopyMicromapInfoEXT {
  VkStructureType sType;
  void pNext;
  VkMicromapEXT src;
  VkMicromapEXT dst;
  VkCopyMicromapModeEXT mode;
}

struct VkCopyMicromapToMemoryInfoEXT {
  VkStructureType sType;
  void pNext;
  VkMicromapEXT src;
  VkDeviceOrHostAddressKHR dst;
  VkCopyMicromapModeEXT mode;
}

struct VkCopyMemoryToMicromapInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceOrHostAddressConstKHR src;
  VkMicromapEXT dst;
  VkCopyMicromapModeEXT mode;
}

struct VkMicromapBuildSizesInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceSize micromapSize;
  VkDeviceSize buildScratchSize;
  VkBool32 discardable;
}

struct VkMicromapUsageEXT {
  uint32_t count;
  uint32_t subdivisionLevel;
  uint32_t format;
}

struct VkMicromapTriangleEXT {
  uint32_t dataOffset;
  uint16_t subdivisionLevel;
  uint16_t format;
}

struct VkPhysicalDeviceOpacityMicromapFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 micromap;
  VkBool32 micromapCaptureReplay;
  VkBool32 micromapHostCommands;
}

struct VkPhysicalDeviceOpacityMicromapPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint32_t maxOpacity2StateSubdivisionLevel;
  uint32_t maxOpacity4StateSubdivisionLevel;
}

struct VkAccelerationStructureTrianglesOpacityMicromapEXT {
  VkStructureType sType;
  void pNext;
  VkIndexType indexType;
  VkDeviceOrHostAddressConstKHR indexBuffer;
  VkDeviceSize indexStride;
  uint32_t baseTriangle;
  uint32_t usageCountsCount;
  VkMicromapUsageEXT pUsageCounts;
  VkMicromapUsageEXT ppUsageCounts;
  VkMicromapEXT micromap;
}

struct VkPhysicalDeviceDisplacementMicromapFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 displacementMicromap;
}

struct VkPhysicalDeviceDisplacementMicromapPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint32_t maxDisplacementMicromapSubdivisionLevel;
}

struct VkAccelerationStructureTrianglesDisplacementMicromapNV {
  VkStructureType sType;
  void pNext;
  VkFormat displacementBiasAndScaleFormat;
  VkFormat displacementVectorFormat;
  VkDeviceOrHostAddressConstKHR displacementBiasAndScaleBuffer;
  VkDeviceSize displacementBiasAndScaleStride;
  VkDeviceOrHostAddressConstKHR displacementVectorBuffer;
  VkDeviceSize displacementVectorStride;
  VkDeviceOrHostAddressConstKHR displacedMicromapPrimitiveFlags;
  VkDeviceSize displacedMicromapPrimitiveFlagsStride;
  VkIndexType indexType;
  VkDeviceOrHostAddressConstKHR indexBuffer;
  VkDeviceSize indexStride;
  uint32_t baseTriangle;
  uint32_t usageCountsCount;
  VkMicromapUsageEXT pUsageCounts;
  VkMicromapUsageEXT ppUsageCounts;
  VkMicromapEXT micromap;
}

struct VkPipelinePropertiesIdentifierEXT {
  VkStructureType sType;
  void pNext;
  uint8_t pipelineIdentifier;
}

struct VkPhysicalDevicePipelinePropertiesFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelinePropertiesIdentifier;
}

struct VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderEarlyAndLateFragmentTests;
}

struct VkExternalMemoryAcquireUnmodifiedEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 acquireUnmodifiedMemory;
}

struct VkExportMetalObjectCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkExportMetalObjectTypeFlagBitsEXT exportObjectType;
}

struct VkExportMetalObjectsInfoEXT {
  VkStructureType sType;
  void pNext;
}

struct VkExportMetalDeviceInfoEXT {
  VkStructureType sType;
  void pNext;
  MTLDevice_id mtlDevice;
}

struct VkExportMetalCommandQueueInfoEXT {
  VkStructureType sType;
  void pNext;
  VkQueue queue;
  MTLCommandQueue_id mtlCommandQueue;
}

struct VkExportMetalBufferInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
  MTLBuffer_id mtlBuffer;
}

struct VkImportMetalBufferInfoEXT {
  VkStructureType sType;
  void pNext;
  MTLBuffer_id mtlBuffer;
}

struct VkExportMetalTextureInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImage image;
  VkImageView imageView;
  VkBufferView bufferView;
  VkImageAspectFlagBits plane;
  MTLTexture_id mtlTexture;
}

struct VkImportMetalTextureInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImageAspectFlagBits plane;
  MTLTexture_id mtlTexture;
}

struct VkExportMetalIOSurfaceInfoEXT {
  VkStructureType sType;
  void pNext;
  VkImage image;
  IOSurfaceRef ioSurface;
}

struct VkImportMetalIOSurfaceInfoEXT {
  VkStructureType sType;
  void pNext;
  IOSurfaceRef ioSurface;
}

struct VkExportMetalSharedEventInfoEXT {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  VkEvent event;
  MTLSharedEvent_id mtlSharedEvent;
}

struct VkImportMetalSharedEventInfoEXT {
  VkStructureType sType;
  void pNext;
  MTLSharedEvent_id mtlSharedEvent;
}

struct VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 nonSeamlessCubeMap;
}

struct VkPhysicalDevicePipelineRobustnessFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineRobustness;
}

struct VkPipelineRobustnessCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineRobustnessBufferBehaviorEXT storageBuffers;
  VkPipelineRobustnessBufferBehaviorEXT uniformBuffers;
  VkPipelineRobustnessBufferBehaviorEXT vertexInputs;
  VkPipelineRobustnessImageBehaviorEXT images;
}

struct VkPhysicalDevicePipelineRobustnessPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineRobustnessBufferBehaviorEXT defaultRobustnessStorageBuffers;
  VkPipelineRobustnessBufferBehaviorEXT defaultRobustnessUniformBuffers;
  VkPipelineRobustnessBufferBehaviorEXT defaultRobustnessVertexInputs;
  VkPipelineRobustnessImageBehaviorEXT defaultRobustnessImages;
}

struct VkImageViewSampleWeightCreateInfoQCOM {
  VkStructureType sType;
  void pNext;
  VkOffset2D filterCenter;
  VkExtent2D filterSize;
  uint32_t numPhases;
}

struct VkPhysicalDeviceImageProcessingFeaturesQCOM {
  VkStructureType sType;
  void pNext;
  VkBool32 textureSampleWeighted;
  VkBool32 textureBoxFilter;
  VkBool32 textureBlockMatch;
}

struct VkPhysicalDeviceImageProcessingPropertiesQCOM {
  VkStructureType sType;
  void pNext;
  uint32_t maxWeightFilterPhases;
  VkExtent2D maxWeightFilterDimension;
  VkExtent2D maxBlockMatchRegion;
  VkExtent2D maxBoxFilterBlockSize;
}

struct VkPhysicalDeviceTilePropertiesFeaturesQCOM {
  VkStructureType sType;
  void pNext;
  VkBool32 tileProperties;
}

struct VkTilePropertiesQCOM {
  VkStructureType sType;
  void pNext;
  VkExtent3D tileSize;
  VkExtent2D apronSize;
  VkOffset2D origin;
}

struct VkPhysicalDeviceAmigoProfilingFeaturesSEC {
  VkStructureType sType;
  void pNext;
  VkBool32 amigoProfiling;
}

struct VkAmigoProfilingSubmitInfoSEC {
  VkStructureType sType;
  void pNext;
  uint64_t firstDrawTimestamp;
  uint64_t swapBufferTimestamp;
}

struct VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 attachmentFeedbackLoopLayout;
}

struct VkPhysicalDeviceDepthClampZeroOneFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 depthClampZeroOne;
}

struct VkPhysicalDeviceAddressBindingReportFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 reportAddressBinding;
}

struct VkDeviceAddressBindingCallbackDataEXT {
  VkStructureType sType;
  void pNext;
  VkDeviceAddressBindingFlagsEXT flags;
  VkDeviceAddress baseAddress;
  VkDeviceSize size;
  VkDeviceAddressBindingTypeEXT bindingType;
}

struct VkPhysicalDeviceOpticalFlowFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 opticalFlow;
}

struct VkPhysicalDeviceOpticalFlowPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkOpticalFlowGridSizeFlagsNV supportedOutputGridSizes;
  VkOpticalFlowGridSizeFlagsNV supportedHintGridSizes;
  VkBool32 hintSupported;
  VkBool32 costSupported;
  VkBool32 bidirectionalFlowSupported;
  VkBool32 globalFlowSupported;
  uint32_t minWidth;
  uint32_t minHeight;
  uint32_t maxWidth;
  uint32_t maxHeight;
  uint32_t maxNumRegionsOfInterest;
}

struct VkOpticalFlowImageFormatInfoNV {
  VkStructureType sType;
  void pNext;
  VkOpticalFlowUsageFlagsNV usage;
}

struct VkOpticalFlowImageFormatPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkFormat format;
}

struct VkOpticalFlowSessionCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t width;
  uint32_t height;
  VkFormat imageFormat;
  VkFormat flowVectorFormat;
  VkFormat costFormat;
  VkOpticalFlowGridSizeFlagsNV outputGridSize;
  VkOpticalFlowGridSizeFlagsNV hintGridSize;
  VkOpticalFlowPerformanceLevelNV performanceLevel;
  VkOpticalFlowSessionCreateFlagsNV flags;
}

struct VkOpticalFlowSessionCreatePrivateDataInfoNV {
  VkStructureType sType;
  void pNext;
  uint32_t id;
  uint32_t size;
  void pPrivateData;
}

struct VkOpticalFlowExecuteInfoNV {
  VkStructureType sType;
  void pNext;
  VkOpticalFlowExecuteFlagsNV flags;
  uint32_t regionCount;
  VkRect2D pRegions;
}

struct VkPhysicalDeviceFaultFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 deviceFault;
  VkBool32 deviceFaultVendorBinary;
}

struct VkDeviceFaultAddressInfoEXT {
  VkDeviceFaultAddressTypeEXT addressType;
  VkDeviceAddress reportedAddress;
  VkDeviceSize addressPrecision;
}

struct VkDeviceFaultVendorInfoEXT {
  char description;
  uint64_t vendorFaultCode;
  uint64_t vendorFaultData;
}

struct VkDeviceFaultCountsEXT {
  VkStructureType sType;
  void pNext;
  uint32_t addressInfoCount;
  uint32_t vendorInfoCount;
  VkDeviceSize vendorBinarySize;
}

struct VkDeviceFaultInfoEXT {
  VkStructureType sType;
  void pNext;
  char description;
  VkDeviceFaultAddressInfoEXT pAddressInfos;
  VkDeviceFaultVendorInfoEXT pVendorInfos;
  void pVendorBinaryData;
}

struct VkDeviceFaultVendorBinaryHeaderVersionOneEXT {
  uint32_t headerSize;
  VkDeviceFaultVendorBinaryHeaderVersionEXT headerVersion;
  uint32_t vendorID;
  uint32_t deviceID;
  uint32_t driverVersion;
  uint8_t pipelineCacheUUID;
  uint32_t applicationNameOffset;
  uint32_t applicationVersion;
  uint32_t engineNameOffset;
  uint32_t engineVersion;
  uint32_t apiVersion;
}

struct VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineLibraryGroupHandles;
}

struct VkDepthBiasInfoEXT {
  VkStructureType sType;
  void pNext;
  float depthBiasConstantFactor;
  float depthBiasClamp;
  float depthBiasSlopeFactor;
}

struct VkDepthBiasRepresentationInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDepthBiasRepresentationEXT depthBiasRepresentation;
  VkBool32 depthBiasExact;
}

struct VkDecompressMemoryRegionNV {
  VkDeviceAddress srcAddress;
  VkDeviceAddress dstAddress;
  VkDeviceSize compressedSize;
  VkDeviceSize decompressedSize;
  VkMemoryDecompressionMethodFlagsNV decompressionMethod;
}

struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM {
  VkStructureType sType;
  void pNext;
  uint64_t shaderCoreMask;
  uint32_t shaderCoreCount;
  uint32_t shaderWarpsPerCore;
}

struct VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderCoreBuiltins;
}

struct VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 dynamicRenderingUnusedAttachments;
}

struct VkSurfacePresentModeEXT {
  VkStructureType sType;
  void pNext;
  VkPresentModeKHR presentMode;
}

struct VkSurfacePresentScalingCapabilitiesEXT {
  VkStructureType sType;
  void pNext;
  VkPresentScalingFlagsEXT supportedPresentScaling;
  VkPresentGravityFlagsEXT supportedPresentGravityX;
  VkPresentGravityFlagsEXT supportedPresentGravityY;
  VkExtent2D minScaledImageExtent;
  VkExtent2D maxScaledImageExtent;
}

struct VkSurfacePresentModeCompatibilityEXT {
  VkStructureType sType;
  void pNext;
  uint32_t presentModeCount;
  VkPresentModeKHR pPresentModes;
}

struct VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 swapchainMaintenance1;
}

struct VkSwapchainPresentFenceInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t swapchainCount;
  VkFence pFences;
}

struct VkSwapchainPresentModesCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t presentModeCount;
  VkPresentModeKHR pPresentModes;
}

struct VkSwapchainPresentModeInfoEXT {
  VkStructureType sType;
  void pNext;
  uint32_t swapchainCount;
  VkPresentModeKHR pPresentModes;
}

struct VkSwapchainPresentScalingCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPresentScalingFlagsEXT scalingBehavior;
  VkPresentGravityFlagsEXT presentGravityX;
  VkPresentGravityFlagsEXT presentGravityY;
}

struct VkReleaseSwapchainImagesInfoEXT {
  VkStructureType sType;
  void pNext;
  VkSwapchainKHR swapchain;
  uint32_t imageIndexCount;
  uint32_t pImageIndices;
}

struct VkPhysicalDeviceDepthBiasControlFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 depthBiasControl;
  VkBool32 leastRepresentableValueForceUnormRepresentation;
  VkBool32 floatRepresentation;
  VkBool32 depthBiasExact;
}

struct VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 rayTracingInvocationReorder;
}

struct VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV {
  VkStructureType sType;
  void pNext;
  VkRayTracingInvocationReorderModeNV rayTracingInvocationReorderReorderingHint;
}

struct VkDirectDriverLoadingInfoLUNARG {
  VkStructureType sType;
  void pNext;
  VkDirectDriverLoadingFlagsLUNARG flags;
  PFN_vkGetInstanceProcAddrLUNARG pfnGetInstanceProcAddr;
}

struct VkDirectDriverLoadingListLUNARG {
  VkStructureType sType;
  void pNext;
  VkDirectDriverLoadingModeLUNARG mode;
  uint32_t driverCount;
  VkDirectDriverLoadingInfoLUNARG pDrivers;
}

struct VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM {
  VkStructureType sType;
  void pNext;
  VkBool32 multiviewPerViewViewports;
}

struct VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 rayTracingPositionFetch;
}

struct VkPhysicalDeviceShaderCorePropertiesARM {
  VkStructureType sType;
  void pNext;
  uint32_t pixelRate;
  uint32_t texelRate;
  uint32_t fmaRate;
}

struct VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM {
  VkStructureType sType;
  void pNext;
  VkBool32 multiviewPerViewRenderAreas;
}

struct VkMultiviewPerViewRenderAreasRenderPassBeginInfoQCOM {
  VkStructureType sType;
  void pNext;
  uint32_t perViewRenderAreaCount;
  VkRect2D pPerViewRenderAreas;
}

struct VkQueryLowLatencySupportNV {
  VkStructureType sType;
  void pNext;
  void pQueriedLowLatencyData;
}

struct VkMemoryMapInfoKHR {
  VkStructureType sType;
  void pNext;
  VkMemoryMapFlags flags;
  VkDeviceMemory memory;
  VkDeviceSize offset;
  VkDeviceSize size;
}

struct VkMemoryUnmapInfoKHR {
  VkStructureType sType;
  void pNext;
  VkMemoryUnmapFlagsKHR flags;
  VkDeviceMemory memory;
}

struct VkPhysicalDeviceShaderObjectFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderObject;
}

struct VkPhysicalDeviceShaderObjectPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint8_t shaderBinaryUUID;
  uint32_t shaderBinaryVersion;
}

struct VkShaderCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkShaderCreateFlagsEXT flags;
  VkShaderStageFlagBits stage;
  VkShaderStageFlags nextStage;
  VkShaderCodeTypeEXT codeType;
  size_t codeSize;
  void pCode;
  char pName;
  uint32_t setLayoutCount;
  VkDescriptorSetLayout pSetLayouts;
  uint32_t pushConstantRangeCount;
  VkPushConstantRange pPushConstantRanges;
  VkSpecializationInfo pSpecializationInfo;
}

struct VkPhysicalDeviceShaderTileImageFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderTileImageColorReadAccess;
  VkBool32 shaderTileImageDepthReadAccess;
  VkBool32 shaderTileImageStencilReadAccess;
}

struct VkPhysicalDeviceShaderTileImagePropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderTileImageCoherentReadAccelerated;
  VkBool32 shaderTileImageReadSampleFromPixelRateInvocation;
  VkBool32 shaderTileImageReadFromHelperInvocation;
}

struct VkImportScreenBufferInfoQNX {
  VkStructureType sType;
  void pNext;
  _screen_buffer buffer;
}

struct VkScreenBufferPropertiesQNX {
  VkStructureType sType;
  void pNext;
  VkDeviceSize allocationSize;
  uint32_t memoryTypeBits;
}

struct VkScreenBufferFormatPropertiesQNX {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  uint64_t externalFormat;
  uint64_t screenUsage;
  VkFormatFeatureFlags formatFeatures;
  VkComponentMapping samplerYcbcrConversionComponents;
  VkSamplerYcbcrModelConversion suggestedYcbcrModel;
  VkSamplerYcbcrRange suggestedYcbcrRange;
  VkChromaLocation suggestedXChromaOffset;
  VkChromaLocation suggestedYChromaOffset;
}

struct VkExternalFormatQNX {
  VkStructureType sType;
  void pNext;
  uint64_t externalFormat;
}

struct VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX {
  VkStructureType sType;
  void pNext;
  VkBool32 screenBufferImport;
}

struct VkPhysicalDeviceCooperativeMatrixFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 cooperativeMatrix;
  VkBool32 cooperativeMatrixRobustBufferAccess;
}

struct VkCooperativeMatrixPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint32_t MSize;
  uint32_t NSize;
  uint32_t KSize;
  VkComponentTypeKHR AType;
  VkComponentTypeKHR BType;
  VkComponentTypeKHR CType;
  VkComponentTypeKHR ResultType;
  VkBool32 saturatingAccumulation;
  VkScopeKHR scope;
}

struct VkPhysicalDeviceCooperativeMatrixPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkShaderStageFlags cooperativeMatrixSupportedStages;
}

