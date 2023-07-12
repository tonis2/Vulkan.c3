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
def VkFlags64 = ulong;
def VkDeviceSize = ulong;
def VkDeviceAddress = ulong;
def VkRemoteAddressNV = null;

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
  int x;
  int y;
}

struct VkOffset3D {
  int x;
  int y;
  int z;
}

struct VkExtent2D {
  uint width;
  uint height;
}

struct VkExtent3D {
  uint width;
  uint height;
  uint depth;
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
  uint baseArrayLayer;
  uint layerCount;
}

struct VkComponentMapping {
  VkComponentSwizzle r;
  VkComponentSwizzle g;
  VkComponentSwizzle b;
  VkComponentSwizzle a;
}

struct VkPhysicalDeviceProperties {
  uint apiVersion;
  uint driverVersion;
  uint vendorID;
  uint deviceID;
  VkPhysicalDeviceType deviceType;
  char deviceName;
  uint8_t pipelineCacheUUID;
  VkPhysicalDeviceLimits limits;
  VkPhysicalDeviceSparseProperties sparseProperties;
}

struct VkExtensionProperties {
  char extensionName;
  uint specVersion;
}

struct VkLayerProperties {
  char layerName;
  uint specVersion;
  uint implementationVersion;
  char description;
}

struct VkApplicationInfo {
  VkStructureType sType;
  void pNext;
  char pApplicationName;
  uint applicationVersion;
  char pEngineName;
  uint engineVersion;
  uint apiVersion;
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
  uint queueFamilyIndex;
  uint queueCount;
  float pQueuePriorities;
}

struct VkDeviceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceCreateFlags flags;
  uint queueCreateInfoCount;
  VkDeviceQueueCreateInfo pQueueCreateInfos;
  uint enabledLayerCount;
  char ppEnabledLayerNames;
  uint enabledExtensionCount;
  char ppEnabledExtensionNames;
  VkPhysicalDeviceFeatures pEnabledFeatures;
}

struct VkInstanceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkInstanceCreateFlags flags;
  VkApplicationInfo pApplicationInfo;
  uint enabledLayerCount;
  char ppEnabledLayerNames;
  uint enabledExtensionCount;
  char ppEnabledExtensionNames;
}

struct VkQueueFamilyProperties {
  VkQueueFlags queueFlags;
  uint queueCount;
  uint timestampValidBits;
  VkExtent3D minImageTransferGranularity;
}

struct VkPhysicalDeviceMemoryProperties {
  uint memoryTypeCount;
  VkMemoryType memoryTypes;
  uint memoryHeapCount;
  VkMemoryHeap memoryHeaps;
}

struct VkMemoryAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceSize allocationSize;
  uint memoryTypeIndex;
}

struct VkMemoryRequirements {
  VkDeviceSize size;
  VkDeviceSize alignment;
  uint memoryTypeBits;
}

struct VkSparseImageFormatProperties {
  VkImageAspectFlags aspectMask;
  VkExtent3D imageGranularity;
  VkSparseImageFormatFlags flags;
}

struct VkSparseImageMemoryRequirements {
  VkSparseImageFormatProperties formatProperties;
  uint imageMipTailFirstLod;
  VkDeviceSize imageMipTailSize;
  VkDeviceSize imageMipTailOffset;
  VkDeviceSize imageMipTailStride;
}

struct VkMemoryType {
  VkMemoryPropertyFlags propertyFlags;
  uint heapIndex;
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
  uint maxMipLevels;
  uint maxArrayLayers;
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
  uint dstBinding;
  uint dstArrayElement;
  uint descriptorCount;
  VkDescriptorType descriptorType;
  VkDescriptorImageInfo pImageInfo;
  VkDescriptorBufferInfo pBufferInfo;
  VkBufferView pTexelBufferView;
}

struct VkCopyDescriptorSet {
  VkStructureType sType;
  void pNext;
  VkDescriptorSet srcSet;
  uint srcBinding;
  uint srcArrayElement;
  VkDescriptorSet dstSet;
  uint dstBinding;
  uint dstArrayElement;
  uint descriptorCount;
}

struct VkBufferCreateInfo {
  VkStructureType sType;
  void pNext;
  VkBufferCreateFlags flags;
  VkDeviceSize size;
  VkBufferUsageFlags usage;
  VkSharingMode sharingMode;
  uint queueFamilyIndexCount;
  uint pQueueFamilyIndices;
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
  uint mipLevel;
  uint arrayLayer;
}

struct VkImageSubresourceLayers {
  VkImageAspectFlags aspectMask;
  uint mipLevel;
  uint baseArrayLayer;
  uint layerCount;
}

struct VkImageSubresourceRange {
  VkImageAspectFlags aspectMask;
  uint baseMipLevel;
  uint levelCount;
  uint baseArrayLayer;
  uint layerCount;
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
  uint srcQueueFamilyIndex;
  uint dstQueueFamilyIndex;
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
  uint srcQueueFamilyIndex;
  uint dstQueueFamilyIndex;
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
  uint mipLevels;
  uint arrayLayers;
  VkSampleCountFlagBits samples;
  VkImageTiling tiling;
  VkImageUsageFlags usage;
  VkSharingMode sharingMode;
  uint queueFamilyIndexCount;
  uint pQueueFamilyIndices;
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
  uint bindCount;
  VkSparseMemoryBind pBinds;
}

struct VkSparseImageOpaqueMemoryBindInfo {
  VkImage image;
  uint bindCount;
  VkSparseMemoryBind pBinds;
}

struct VkSparseImageMemoryBindInfo {
  VkImage image;
  uint bindCount;
  VkSparseImageMemoryBind pBinds;
}

struct VkBindSparseInfo {
  VkStructureType sType;
  void pNext;
  uint waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  uint bufferBindCount;
  VkSparseBufferMemoryBindInfo pBufferBinds;
  uint imageOpaqueBindCount;
  VkSparseImageOpaqueMemoryBindInfo pImageOpaqueBinds;
  uint imageBindCount;
  VkSparseImageMemoryBindInfo pImageBinds;
  uint signalSemaphoreCount;
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
  uint bufferRowLength;
  uint bufferImageHeight;
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
  uint bufferRowLength;
  uint bufferImageHeight;
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
  uint pCode;
}

struct VkDescriptorSetLayoutBinding {
  uint binding;
  VkDescriptorType descriptorType;
  uint descriptorCount;
  VkShaderStageFlags stageFlags;
  VkSampler pImmutableSamplers;
}

struct VkDescriptorSetLayoutCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorSetLayoutCreateFlags flags;
  uint bindingCount;
  VkDescriptorSetLayoutBinding pBindings;
}

struct VkDescriptorPoolSize {
  VkDescriptorType type;
  uint descriptorCount;
}

struct VkDescriptorPoolCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorPoolCreateFlags flags;
  uint maxSets;
  uint poolSizeCount;
  VkDescriptorPoolSize pPoolSizes;
}

struct VkDescriptorSetAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorPool descriptorPool;
  uint descriptorSetCount;
  VkDescriptorSetLayout pSetLayouts;
}

struct VkSpecializationMapEntry {
  uint constantID;
  uint offset;
  size_t size;
}

struct VkSpecializationInfo {
  uint mapEntryCount;
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
  int basePipelineIndex;
}

struct VkVertexInputBindingDescription {
  uint binding;
  uint stride;
  VkVertexInputRate inputRate;
}

struct VkVertexInputAttributeDescription {
  uint location;
  uint binding;
  VkFormat format;
  uint offset;
}

struct VkPipelineVertexInputStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineVertexInputStateCreateFlags flags;
  uint vertexBindingDescriptionCount;
  VkVertexInputBindingDescription pVertexBindingDescriptions;
  uint vertexAttributeDescriptionCount;
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
  uint patchControlPoints;
}

struct VkPipelineViewportStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineViewportStateCreateFlags flags;
  uint viewportCount;
  VkViewport pViewports;
  uint scissorCount;
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
  uint attachmentCount;
  VkPipelineColorBlendAttachmentState pAttachments;
  float blendConstants;
}

struct VkPipelineDynamicStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineDynamicStateCreateFlags flags;
  uint dynamicStateCount;
  VkDynamicState pDynamicStates;
}

struct VkStencilOpState {
  VkStencilOp failOp;
  VkStencilOp passOp;
  VkStencilOp depthFailOp;
  VkCompareOp compareOp;
  uint compareMask;
  uint writeMask;
  uint reference;
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
  uint stageCount;
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
  uint subpass;
  VkPipeline basePipelineHandle;
  int basePipelineIndex;
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
  uint headerSize;
  VkPipelineCacheHeaderVersion headerVersion;
  uint vendorID;
  uint deviceID;
  uint8_t pipelineCacheUUID;
}

struct VkPipelineCacheStageValidationIndexEntry {
  ulong codeSize;
  ulong codeOffset;
}

struct VkPipelineCacheSafetyCriticalIndexEntry {
  uint8_t pipelineIdentifier;
  ulong pipelineMemorySize;
  ulong jsonSize;
  ulong jsonOffset;
  uint stageIndexCount;
  uint stageIndexStride;
  ulong stageIndexOffset;
}

struct VkPipelineCacheHeaderVersionSafetyCriticalOne {
  VkPipelineCacheHeaderVersionOne headerVersionOne;
  VkPipelineCacheValidationVersion validationVersion;
  uint implementationData;
  uint pipelineIndexCount;
  uint pipelineIndexStride;
  ulong pipelineIndexOffset;
}

struct VkPushConstantRange {
  VkShaderStageFlags stageFlags;
  uint offset;
  uint size;
}

struct VkPipelineLayoutCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineLayoutCreateFlags flags;
  uint setLayoutCount;
  VkDescriptorSetLayout pSetLayouts;
  uint pushConstantRangeCount;
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
  uint queueFamilyIndex;
}

struct VkCommandBufferAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkCommandPool commandPool;
  VkCommandBufferLevel level;
  uint commandBufferCount;
}

struct VkCommandBufferInheritanceInfo {
  VkStructureType sType;
  void pNext;
  VkRenderPass renderPass;
  uint subpass;
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
  uint clearValueCount;
  VkClearValue pClearValues;
}

struct VkClearDepthStencilValue {
  float depth;
  uint stencil;
}

struct VkClearAttachment {
  VkImageAspectFlags aspectMask;
  uint colorAttachment;
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
  uint attachment;
  VkImageLayout layout;
}

struct VkSubpassDescription {
  VkSubpassDescriptionFlags flags;
  VkPipelineBindPoint pipelineBindPoint;
  uint inputAttachmentCount;
  VkAttachmentReference pInputAttachments;
  uint colorAttachmentCount;
  VkAttachmentReference pColorAttachments;
  VkAttachmentReference pResolveAttachments;
  VkAttachmentReference pDepthStencilAttachment;
  uint preserveAttachmentCount;
  uint pPreserveAttachments;
}

struct VkSubpassDependency {
  uint srcSubpass;
  uint dstSubpass;
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
  uint attachmentCount;
  VkAttachmentDescription pAttachments;
  uint subpassCount;
  VkSubpassDescription pSubpasses;
  uint dependencyCount;
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
  uint maxImageDimension1D;
  uint maxImageDimension2D;
  uint maxImageDimension3D;
  uint maxImageDimensionCube;
  uint maxImageArrayLayers;
  uint maxTexelBufferElements;
  uint maxUniformBufferRange;
  uint maxStorageBufferRange;
  uint maxPushConstantsSize;
  uint maxMemoryAllocationCount;
  uint maxSamplerAllocationCount;
  VkDeviceSize bufferImageGranularity;
  VkDeviceSize sparseAddressSpaceSize;
  uint maxBoundDescriptorSets;
  uint maxPerStageDescriptorSamplers;
  uint maxPerStageDescriptorUniformBuffers;
  uint maxPerStageDescriptorStorageBuffers;
  uint maxPerStageDescriptorSampledImages;
  uint maxPerStageDescriptorStorageImages;
  uint maxPerStageDescriptorInputAttachments;
  uint maxPerStageResources;
  uint maxDescriptorSetSamplers;
  uint maxDescriptorSetUniformBuffers;
  uint maxDescriptorSetUniformBuffersDynamic;
  uint maxDescriptorSetStorageBuffers;
  uint maxDescriptorSetStorageBuffersDynamic;
  uint maxDescriptorSetSampledImages;
  uint maxDescriptorSetStorageImages;
  uint maxDescriptorSetInputAttachments;
  uint maxVertexInputAttributes;
  uint maxVertexInputBindings;
  uint maxVertexInputAttributeOffset;
  uint maxVertexInputBindingStride;
  uint maxVertexOutputComponents;
  uint maxTessellationGenerationLevel;
  uint maxTessellationPatchSize;
  uint maxTessellationControlPerVertexInputComponents;
  uint maxTessellationControlPerVertexOutputComponents;
  uint maxTessellationControlPerPatchOutputComponents;
  uint maxTessellationControlTotalOutputComponents;
  uint maxTessellationEvaluationInputComponents;
  uint maxTessellationEvaluationOutputComponents;
  uint maxGeometryShaderInvocations;
  uint maxGeometryInputComponents;
  uint maxGeometryOutputComponents;
  uint maxGeometryOutputVertices;
  uint maxGeometryTotalOutputComponents;
  uint maxFragmentInputComponents;
  uint maxFragmentOutputAttachments;
  uint maxFragmentDualSrcAttachments;
  uint maxFragmentCombinedOutputResources;
  uint maxComputeSharedMemorySize;
  uint maxComputeWorkGroupCount;
  uint maxComputeWorkGroupInvocations;
  uint maxComputeWorkGroupSize;
  uint subPixelPrecisionBits;
  uint subTexelPrecisionBits;
  uint mipmapPrecisionBits;
  uint maxDrawIndexedIndexValue;
  uint maxDrawIndirectCount;
  float maxSamplerLodBias;
  float maxSamplerAnisotropy;
  uint maxViewports;
  uint maxViewportDimensions;
  float viewportBoundsRange;
  uint viewportSubPixelBits;
  size_t minMemoryMapAlignment;
  VkDeviceSize minTexelBufferOffsetAlignment;
  VkDeviceSize minUniformBufferOffsetAlignment;
  VkDeviceSize minStorageBufferOffsetAlignment;
  int minTexelOffset;
  uint maxTexelOffset;
  int minTexelGatherOffset;
  uint maxTexelGatherOffset;
  float minInterpolationOffset;
  float maxInterpolationOffset;
  uint subPixelInterpolationOffsetBits;
  uint maxFramebufferWidth;
  uint maxFramebufferHeight;
  uint maxFramebufferLayers;
  VkSampleCountFlags framebufferColorSampleCounts;
  VkSampleCountFlags framebufferDepthSampleCounts;
  VkSampleCountFlags framebufferStencilSampleCounts;
  VkSampleCountFlags framebufferNoAttachmentsSampleCounts;
  uint maxColorAttachments;
  VkSampleCountFlags sampledImageColorSampleCounts;
  VkSampleCountFlags sampledImageIntegerSampleCounts;
  VkSampleCountFlags sampledImageDepthSampleCounts;
  VkSampleCountFlags sampledImageStencilSampleCounts;
  VkSampleCountFlags storageImageSampleCounts;
  uint maxSampleMaskWords;
  VkBool32 timestampComputeAndGraphics;
  float timestampPeriod;
  uint maxClipDistances;
  uint maxCullDistances;
  uint maxCombinedClipAndCullDistances;
  uint discreteQueuePriorities;
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
  uint queryCount;
  VkQueryPipelineStatisticFlags pipelineStatistics;
}

struct VkFramebufferCreateInfo {
  VkStructureType sType;
  void pNext;
  VkFramebufferCreateFlags flags;
  VkRenderPass renderPass;
  uint attachmentCount;
  VkImageView pAttachments;
  uint width;
  uint height;
  uint layers;
}

struct VkDrawIndirectCommand {
  uint vertexCount;
  uint instanceCount;
  uint firstVertex;
  uint firstInstance;
}

struct VkDrawIndexedIndirectCommand {
  uint indexCount;
  uint instanceCount;
  uint firstIndex;
  int vertexOffset;
  uint firstInstance;
}

struct VkDispatchIndirectCommand {
  uint x;
  uint y;
  uint z;
}

struct VkMultiDrawInfoEXT {
  uint firstVertex;
  uint vertexCount;
}

struct VkMultiDrawIndexedInfoEXT {
  uint firstIndex;
  uint indexCount;
  int vertexOffset;
}

struct VkSubmitInfo {
  VkStructureType sType;
  void pNext;
  uint waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  VkPipelineStageFlags pWaitDstStageMask;
  uint commandBufferCount;
  VkCommandBuffer pCommandBuffers;
  uint signalSemaphoreCount;
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
  uint currentStackIndex;
}

struct VkDisplayModeParametersKHR {
  VkExtent2D visibleRegion;
  uint refreshRate;
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
  uint planeIndex;
  uint planeStackIndex;
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
  uint minImageCount;
  uint maxImageCount;
  VkExtent2D currentExtent;
  VkExtent2D minImageExtent;
  VkExtent2D maxImageExtent;
  uint maxImageArrayLayers;
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
  uint minImageCount;
  VkFormat imageFormat;
  VkColorSpaceKHR imageColorSpace;
  VkExtent2D imageExtent;
  uint imageArrayLayers;
  VkImageUsageFlags imageUsage;
  VkSharingMode imageSharingMode;
  uint queueFamilyIndexCount;
  uint pQueueFamilyIndices;
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
  uint waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  uint swapchainCount;
  VkSwapchainKHR pSwapchains;
  uint pImageIndices;
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
  uint disabledValidationCheckCount;
  VkValidationCheckEXT pDisabledValidationChecks;
}

struct VkValidationFeaturesEXT {
  VkStructureType sType;
  void pNext;
  uint enabledValidationFeatureCount;
  VkValidationFeatureEnableEXT pEnabledValidationFeatures;
  uint disabledValidationFeatureCount;
  VkValidationFeatureDisableEXT pDisabledValidationFeatures;
}

struct VkApplicationParametersEXT {
  VkStructureType sType;
  void pNext;
  uint vendorID;
  uint deviceID;
  uint key;
  ulong value;
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
  ulong object;
  char pObjectName;
}

struct VkDebugMarkerObjectTagInfoEXT {
  VkStructureType sType;
  void pNext;
  VkDebugReportObjectTypeEXT objectType;
  ulong object;
  ulong tagName;
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
  uint memoryTypeBits;
}

struct VkPhysicalDeviceExternalMemorySciBufFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 sciBufImport;
  VkBool32 sciBufExport;
}

struct VkWin32KeyedMutexAcquireReleaseInfoNV {
  VkStructureType sType;
  void pNext;
  uint acquireCount;
  VkDeviceMemory pAcquireSyncs;
  ulong pAcquireKeys;
  uint pAcquireTimeoutMilliseconds;
  uint releaseCount;
  VkDeviceMemory pReleaseSyncs;
  ulong pReleaseKeys;
}

struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV {
  VkStructureType sType;
  void pNext;
  VkBool32 deviceGeneratedCommands;
}

struct VkDevicePrivateDataCreateInfo {
  VkStructureType sType;
  void pNext;
  uint privateDataSlotRequestCount;
}

struct VkPrivateDataSlotCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPrivateDataSlotCreateFlags flags;
}

struct VkPhysicalDevicePrivateDataFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 privateData;
}

struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint maxGraphicsShaderGroupCount;
  uint maxIndirectSequenceCount;
  uint maxIndirectCommandsTokenCount;
  uint maxIndirectCommandsStreamCount;
  uint maxIndirectCommandsTokenOffset;
  uint maxIndirectCommandsStreamStride;
  uint minSequencesCountBufferOffsetAlignment;
  uint minSequencesIndexBufferOffsetAlignment;
  uint minIndirectCommandsBufferOffsetAlignment;
}

struct VkPhysicalDeviceMultiDrawPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint maxMultiDrawCount;
}

struct VkGraphicsShaderGroupCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  VkPipelineVertexInputStateCreateInfo pVertexInputState;
  VkPipelineTessellationStateCreateInfo pTessellationState;
}

struct VkGraphicsPipelineShaderGroupsCreateInfoNV {
  VkStructureType sType;
  void pNext;
  uint groupCount;
  VkGraphicsShaderGroupCreateInfoNV pGroups;
  uint pipelineCount;
  VkPipeline pPipelines;
}

struct VkBindShaderGroupIndirectCommandNV {
  uint groupIndex;
}

struct VkBindIndexBufferIndirectCommandNV {
  VkDeviceAddress bufferAddress;
  uint size;
  VkIndexType indexType;
}

struct VkBindVertexBufferIndirectCommandNV {
  VkDeviceAddress bufferAddress;
  uint size;
  uint stride;
}

struct VkSetStateFlagsIndirectCommandNV {
  uint data;
}

struct VkIndirectCommandsStreamNV {
  VkBuffer buffer;
  VkDeviceSize offset;
}

struct VkIndirectCommandsLayoutTokenNV {
  VkStructureType sType;
  void pNext;
  VkIndirectCommandsTokenTypeNV tokenType;
  uint stream;
  uint offset;
  uint vertexBindingUnit;
  VkBool32 vertexDynamicStride;
  VkPipelineLayout pushconstantPipelineLayout;
  VkShaderStageFlags pushconstantShaderStageFlags;
  uint pushconstantOffset;
  uint pushconstantSize;
  VkIndirectStateFlagsNV indirectStateFlags;
  uint indexTypeCount;
  VkIndexType pIndexTypes;
  uint pIndexTypeValues;
}

struct VkIndirectCommandsLayoutCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkIndirectCommandsLayoutUsageFlagsNV flags;
  VkPipelineBindPoint pipelineBindPoint;
  uint tokenCount;
  VkIndirectCommandsLayoutTokenNV pTokens;
  uint streamCount;
  uint pStreamStrides;
}

struct VkGeneratedCommandsInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineBindPoint pipelineBindPoint;
  VkPipeline pipeline;
  VkIndirectCommandsLayoutNV indirectCommandsLayout;
  uint streamCount;
  VkIndirectCommandsStreamNV pStreams;
  uint sequencesCount;
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
  uint maxSequencesCount;
}

struct VkPhysicalDeviceFeatures2 {
  VkStructureType sType;
  void pNext;
  VkPhysicalDeviceFeatures features;
}

struct VkPhysicalDeviceProperties2 {
  VkStructureType sType;
  void pNext;
  VkPhysicalDeviceProperties properties;
}

struct VkFormatProperties2 {
  VkStructureType sType;
  void pNext;
  VkFormatProperties formatProperties;
}

struct VkImageFormatProperties2 {
  VkStructureType sType;
  void pNext;
  VkImageFormatProperties imageFormatProperties;
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

struct VkQueueFamilyProperties2 {
  VkStructureType sType;
  void pNext;
  VkQueueFamilyProperties queueFamilyProperties;
}

struct VkPhysicalDeviceMemoryProperties2 {
  VkStructureType sType;
  void pNext;
  VkPhysicalDeviceMemoryProperties memoryProperties;
}

struct VkSparseImageFormatProperties2 {
  VkStructureType sType;
  void pNext;
  VkSparseImageFormatProperties properties;
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

struct VkPhysicalDevicePushDescriptorPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint maxPushDescriptors;
}

struct VkConformanceVersion {
  uint8_t major;
  uint8_t minor;
  uint8_t subminor;
  uint8_t patch;
}

struct VkPhysicalDeviceDriverProperties {
  VkStructureType sType;
  void pNext;
  VkDriverId driverID;
  char driverName;
  char driverInfo;
  VkConformanceVersion conformanceVersion;
}

struct VkPresentRegionsKHR {
  VkStructureType sType;
  void pNext;
  uint swapchainCount;
  VkPresentRegionKHR pRegions;
}

struct VkPresentRegionKHR {
  uint rectangleCount;
  VkRectLayerKHR pRectangles;
}

struct VkRectLayerKHR {
  VkOffset2D offset;
  VkExtent2D extent;
  uint layer;
}

struct VkPhysicalDeviceVariablePointersFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 variablePointersStorageBuffer;
  VkBool32 variablePointers;
}

struct VkExternalMemoryProperties {
  VkExternalMemoryFeatureFlags externalMemoryFeatures;
  VkExternalMemoryHandleTypeFlags exportFromImportedHandleTypes;
  VkExternalMemoryHandleTypeFlags compatibleHandleTypes;
}

struct VkPhysicalDeviceExternalImageFormatInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkExternalImageFormatProperties {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryProperties externalMemoryProperties;
}

struct VkPhysicalDeviceExternalBufferInfo {
  VkStructureType sType;
  void pNext;
  VkBufferCreateFlags flags;
  VkBufferUsageFlags usage;
  VkExternalMemoryHandleTypeFlagBits handleType;
}

struct VkExternalBufferProperties {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryProperties externalMemoryProperties;
}

struct VkPhysicalDeviceIDProperties {
  VkStructureType sType;
  void pNext;
  uint8_t deviceUUID;
  uint8_t driverUUID;
  uint8_t deviceLUID;
  uint deviceNodeMask;
  VkBool32 deviceLUIDValid;
}

struct VkExternalMemoryImageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlags handleTypes;
}

struct VkExternalMemoryBufferCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlags handleTypes;
}

struct VkExportMemoryAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalMemoryHandleTypeFlags handleTypes;
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
  uint memoryTypeBits;
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
  uint memoryTypeBits;
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
  uint memoryTypeBits;
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
  uint acquireCount;
  VkDeviceMemory pAcquireSyncs;
  ulong pAcquireKeys;
  uint pAcquireTimeouts;
  uint releaseCount;
  VkDeviceMemory pReleaseSyncs;
  ulong pReleaseKeys;
}

struct VkPhysicalDeviceExternalSemaphoreInfo {
  VkStructureType sType;
  void pNext;
  VkExternalSemaphoreHandleTypeFlagBits handleType;
}

struct VkExternalSemaphoreProperties {
  VkStructureType sType;
  void pNext;
  VkExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes;
  VkExternalSemaphoreHandleTypeFlags compatibleHandleTypes;
  VkExternalSemaphoreFeatureFlags externalSemaphoreFeatures;
}

struct VkExportSemaphoreCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalSemaphoreHandleTypeFlags handleTypes;
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
  uint waitSemaphoreValuesCount;
  ulong pWaitSemaphoreValues;
  uint signalSemaphoreValuesCount;
  ulong pSignalSemaphoreValues;
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

struct VkExternalFenceProperties {
  VkStructureType sType;
  void pNext;
  VkExternalFenceHandleTypeFlags exportFromImportedHandleTypes;
  VkExternalFenceHandleTypeFlags compatibleHandleTypes;
  VkExternalFenceFeatureFlags externalFenceFeatures;
}

struct VkExportFenceCreateInfo {
  VkStructureType sType;
  void pNext;
  VkExternalFenceHandleTypeFlags handleTypes;
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
  uint semaphoreSciSyncPoolRequestCount;
}

struct VkPhysicalDeviceMultiviewFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 multiview;
  VkBool32 multiviewGeometryShader;
  VkBool32 multiviewTessellationShader;
}

struct VkPhysicalDeviceMultiviewProperties {
  VkStructureType sType;
  void pNext;
  uint maxMultiviewViewCount;
  uint maxMultiviewInstanceIndex;
}

struct VkRenderPassMultiviewCreateInfo {
  VkStructureType sType;
  void pNext;
  uint subpassCount;
  uint pViewMasks;
  uint dependencyCount;
  int pViewOffsets;
  uint correlationMaskCount;
  uint pCorrelationMasks;
}

struct VkSurfaceCapabilities2EXT {
  VkStructureType sType;
  void pNext;
  uint minImageCount;
  uint maxImageCount;
  VkExtent2D currentExtent;
  VkExtent2D minImageExtent;
  VkExtent2D maxImageExtent;
  uint maxImageArrayLayers;
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
  uint physicalDeviceCount;
  VkPhysicalDevice physicalDevices;
  VkBool32 subsetAllocation;
}

struct VkMemoryAllocateFlagsInfo {
  VkStructureType sType;
  void pNext;
  VkMemoryAllocateFlags flags;
  uint deviceMask;
}

struct VkBindBufferMemoryInfo {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
}

struct VkBindBufferMemoryDeviceGroupInfo {
  VkStructureType sType;
  void pNext;
  uint deviceIndexCount;
  uint pDeviceIndices;
}

struct VkBindImageMemoryInfo {
  VkStructureType sType;
  void pNext;
  VkImage image;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
}

struct VkBindImageMemoryDeviceGroupInfo {
  VkStructureType sType;
  void pNext;
  uint deviceIndexCount;
  uint pDeviceIndices;
  uint splitInstanceBindRegionCount;
  VkRect2D pSplitInstanceBindRegions;
}

struct VkDeviceGroupRenderPassBeginInfo {
  VkStructureType sType;
  void pNext;
  uint deviceMask;
  uint deviceRenderAreaCount;
  VkRect2D pDeviceRenderAreas;
}

struct VkDeviceGroupCommandBufferBeginInfo {
  VkStructureType sType;
  void pNext;
  uint deviceMask;
}

struct VkDeviceGroupSubmitInfo {
  VkStructureType sType;
  void pNext;
  uint waitSemaphoreCount;
  uint pWaitSemaphoreDeviceIndices;
  uint commandBufferCount;
  uint pCommandBufferDeviceMasks;
  uint signalSemaphoreCount;
  uint pSignalSemaphoreDeviceIndices;
}

struct VkDeviceGroupBindSparseInfo {
  VkStructureType sType;
  void pNext;
  uint resourceDeviceIndex;
  uint memoryDeviceIndex;
}

struct VkDeviceGroupPresentCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  uint presentMask;
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
  uint imageIndex;
}

struct VkAcquireNextImageInfoKHR {
  VkStructureType sType;
  void pNext;
  VkSwapchainKHR swapchain;
  ulong timeout;
  VkSemaphore semaphore;
  VkFence fence;
  uint deviceMask;
}

struct VkDeviceGroupPresentInfoKHR {
  VkStructureType sType;
  void pNext;
  uint swapchainCount;
  uint pDeviceMasks;
  VkDeviceGroupPresentModeFlagBitsKHR mode;
}

struct VkDeviceGroupDeviceCreateInfo {
  VkStructureType sType;
  void pNext;
  uint physicalDeviceCount;
  VkPhysicalDevice pPhysicalDevices;
}

struct VkDeviceGroupSwapchainCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkDeviceGroupPresentModeFlagsKHR modes;
}

struct VkDescriptorUpdateTemplateEntry {
  uint dstBinding;
  uint dstArrayElement;
  uint descriptorCount;
  VkDescriptorType descriptorType;
  size_t offset;
  size_t stride;
}

struct VkDescriptorUpdateTemplateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDescriptorUpdateTemplateCreateFlags flags;
  uint descriptorUpdateEntryCount;
  VkDescriptorUpdateTemplateEntry pDescriptorUpdateEntries;
  VkDescriptorUpdateTemplateType templateType;
  VkDescriptorSetLayout descriptorSetLayout;
  VkPipelineBindPoint pipelineBindPoint;
  VkPipelineLayout pipelineLayout;
  uint set;
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
  uint swapchainCount;
  ulong pPresentIds;
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
  ulong refreshDuration;
}

struct VkPastPresentationTimingGOOGLE {
  uint presentID;
  ulong desiredPresentTime;
  ulong actualPresentTime;
  ulong earliestPresentTime;
  ulong presentMargin;
}

struct VkPresentTimesInfoGOOGLE {
  VkStructureType sType;
  void pNext;
  uint swapchainCount;
  VkPresentTimeGOOGLE pTimes;
}

struct VkPresentTimeGOOGLE {
  uint presentID;
  ulong desiredPresentTime;
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
  uint viewportCount;
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
  uint viewportCount;
  VkViewportSwizzleNV pViewportSwizzles;
}

struct VkPhysicalDeviceDiscardRectanglePropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint maxDiscardRectangles;
}

struct VkPipelineDiscardRectangleStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineDiscardRectangleStateCreateFlagsEXT flags;
  VkDiscardRectangleModeEXT discardRectangleMode;
  uint discardRectangleCount;
  VkRect2D pDiscardRectangles;
}

struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX {
  VkStructureType sType;
  void pNext;
  VkBool32 perViewPositionAllComponents;
}

struct VkInputAttachmentAspectReference {
  uint subpass;
  uint inputAttachmentIndex;
  VkImageAspectFlags aspectMask;
}

struct VkRenderPassInputAttachmentAspectCreateInfo {
  VkStructureType sType;
  void pNext;
  uint aspectReferenceCount;
  VkInputAttachmentAspectReference pAspectReferences;
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
  uint planeIndex;
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

struct VkPhysicalDeviceSubgroupProperties {
  VkStructureType sType;
  void pNext;
  uint subgroupSize;
  VkShaderStageFlags supportedStages;
  VkSubgroupFeatureFlags supportedOperations;
  VkBool32 quadOperationsInAllStages;
}

struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderSubgroupExtendedTypes;
}

struct VkBufferMemoryRequirementsInfo2 {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
}

struct VkDeviceBufferMemoryRequirements {
  VkStructureType sType;
  void pNext;
  VkBufferCreateInfo pCreateInfo;
}

struct VkImageMemoryRequirementsInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage image;
}

struct VkImageSparseMemoryRequirementsInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage image;
}

struct VkDeviceImageMemoryRequirements {
  VkStructureType sType;
  void pNext;
  VkImageCreateInfo pCreateInfo;
  VkImageAspectFlagBits planeAspect;
}

struct VkMemoryRequirements2 {
  VkStructureType sType;
  void pNext;
  VkMemoryRequirements memoryRequirements;
}

struct VkSparseImageMemoryRequirements2 {
  VkStructureType sType;
  void pNext;
  VkSparseImageMemoryRequirements memoryRequirements;
}

struct VkPhysicalDevicePointClippingProperties {
  VkStructureType sType;
  void pNext;
  VkPointClippingBehavior pointClippingBehavior;
}

struct VkMemoryDedicatedRequirements {
  VkStructureType sType;
  void pNext;
  VkBool32 prefersDedicatedAllocation;
  VkBool32 requiresDedicatedAllocation;
}

struct VkMemoryDedicatedAllocateInfo {
  VkStructureType sType;
  void pNext;
  VkImage image;
  VkBuffer buffer;
}

struct VkImageViewUsageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkImageUsageFlags usage;
}

struct VkImageViewSlicedCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint sliceOffset;
  uint sliceCount;
}

struct VkPipelineTessellationDomainOriginStateCreateInfo {
  VkStructureType sType;
  void pNext;
  VkTessellationDomainOrigin domainOrigin;
}

struct VkSamplerYcbcrConversionInfo {
  VkStructureType sType;
  void pNext;
  VkSamplerYcbcrConversion conversion;
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

struct VkBindImagePlaneMemoryInfo {
  VkStructureType sType;
  void pNext;
  VkImageAspectFlagBits planeAspect;
}

struct VkImagePlaneMemoryRequirementsInfo {
  VkStructureType sType;
  void pNext;
  VkImageAspectFlagBits planeAspect;
}

struct VkPhysicalDeviceSamplerYcbcrConversionFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 samplerYcbcrConversion;
}

struct VkSamplerYcbcrConversionImageFormatProperties {
  VkStructureType sType;
  void pNext;
  uint combinedImageSamplerDescriptorCount;
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
  uint queueFamilyIndex;
  uint queueIndex;
}

struct VkPipelineCoverageToColorStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCoverageToColorStateCreateFlagsNV flags;
  VkBool32 coverageToColorEnable;
  uint coverageToColorLocation;
}

struct VkPhysicalDeviceSamplerFilterMinmaxProperties {
  VkStructureType sType;
  void pNext;
  VkBool32 filterMinmaxSingleComponentFormats;
  VkBool32 filterMinmaxImageComponentMapping;
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
  uint sampleLocationsCount;
  VkSampleLocationEXT pSampleLocations;
}

struct VkAttachmentSampleLocationsEXT {
  uint attachmentIndex;
  VkSampleLocationsInfoEXT sampleLocationsInfo;
}

struct VkSubpassSampleLocationsEXT {
  uint subpassIndex;
  VkSampleLocationsInfoEXT sampleLocationsInfo;
}

struct VkRenderPassSampleLocationsBeginInfoEXT {
  VkStructureType sType;
  void pNext;
  uint attachmentInitialSampleLocationsCount;
  VkAttachmentSampleLocationsEXT pAttachmentInitialSampleLocations;
  uint postSubpassSampleLocationsCount;
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
  uint sampleLocationSubPixelBits;
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
  uint advancedBlendMaxColorAttachments;
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

struct VkPhysicalDeviceInlineUniformBlockProperties {
  VkStructureType sType;
  void pNext;
  uint maxInlineUniformBlockSize;
  uint maxPerStageDescriptorInlineUniformBlocks;
  uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
  uint maxDescriptorSetInlineUniformBlocks;
  uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
}

struct VkWriteDescriptorSetInlineUniformBlock {
  VkStructureType sType;
  void pNext;
  uint dataSize;
  void pData;
}

struct VkDescriptorPoolInlineUniformBlockCreateInfo {
  VkStructureType sType;
  void pNext;
  uint maxInlineUniformBlockBindings;
}

struct VkPipelineCoverageModulationStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCoverageModulationStateCreateFlagsNV flags;
  VkCoverageModulationModeNV coverageModulationMode;
  VkBool32 coverageModulationTableEnable;
  uint coverageModulationTableCount;
  float pCoverageModulationTable;
}

struct VkImageFormatListCreateInfo {
  VkStructureType sType;
  void pNext;
  uint viewFormatCount;
  VkFormat pViewFormats;
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
  uint maxPerSetDescriptors;
  VkDeviceSize maxMemoryAllocationSize;
}

struct VkPhysicalDeviceMaintenance4Features {
  VkStructureType sType;
  void pNext;
  VkBool32 maintenance4;
}

struct VkPhysicalDeviceMaintenance4Properties {
  VkStructureType sType;
  void pNext;
  VkDeviceSize maxBufferSize;
}

struct VkDescriptorSetLayoutSupport {
  VkStructureType sType;
  void pNext;
  VkBool32 supported;
}

struct VkPhysicalDeviceShaderDrawParametersFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderDrawParameters;
}

struct VkPhysicalDeviceShaderFloat16Int8Features {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderFloat16;
  VkBool32 shaderInt8;
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

struct VkPhysicalDeviceHostQueryResetFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 hostQueryReset;
}

struct VkNativeBufferUsage2ANDROID {
  ulong consumer;
  ulong producer;
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
  uint numUsedVgprs;
  uint numUsedSgprs;
  uint ldsSizePerLocalWorkGroup;
  size_t ldsUsageSizeInBytes;
  size_t scratchMemUsageInBytes;
}

struct VkShaderStatisticsInfoAMD {
  VkShaderStageFlags shaderStageMask;
  VkShaderResourceUsageAMD resourceUsage;
  uint numPhysicalVgprs;
  uint numPhysicalSgprs;
  uint numAvailableVgprs;
  uint numAvailableSgprs;
  uint computeWorkGroupSize;
}

struct VkDeviceQueueGlobalPriorityCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkQueueGlobalPriorityKHR globalPriority;
}

struct VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR {
  VkStructureType sType;
  void pNext;
  VkBool32 globalPriorityQuery;
}

struct VkQueueFamilyGlobalPriorityPropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint priorityCount;
  VkQueueGlobalPriorityKHR priorities;
}

struct VkDebugUtilsObjectNameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkObjectType objectType;
  ulong objectHandle;
  char pObjectName;
}

struct VkDebugUtilsObjectTagInfoEXT {
  VkStructureType sType;
  void pNext;
  VkObjectType objectType;
  ulong objectHandle;
  ulong tagName;
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
  int messageIdNumber;
  char pMessage;
  uint queueLabelCount;
  VkDebugUtilsLabelEXT pQueueLabels;
  uint cmdBufLabelCount;
  VkDebugUtilsLabelEXT pCmdBufLabels;
  uint objectCount;
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
  ulong memoryObjectId;
  VkDeviceSize size;
  VkObjectType objectType;
  ulong objectHandle;
  uint heapIndex;
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
  uint memoryTypeBits;
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
  uint shaderEngineCount;
  uint shaderArraysPerEngineCount;
  uint computeUnitsPerShaderArray;
  uint simdPerComputeUnit;
  uint wavefrontsPerSimd;
  uint wavefrontSize;
  uint sgprsPerSimd;
  uint minSgprAllocation;
  uint maxSgprAllocation;
  uint sgprAllocationGranularity;
  uint vgprsPerSimd;
  uint minVgprAllocation;
  uint maxVgprAllocation;
  uint vgprAllocationGranularity;
}

struct VkPhysicalDeviceShaderCoreProperties2AMD {
  VkStructureType sType;
  void pNext;
  VkShaderCorePropertiesFlagsAMD shaderCoreFeatures;
  uint activeComputeUnitCount;
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

struct VkPhysicalDeviceDescriptorIndexingProperties {
  VkStructureType sType;
  void pNext;
  uint maxUpdateAfterBindDescriptorsInAllPools;
  VkBool32 shaderUniformBufferArrayNonUniformIndexingNative;
  VkBool32 shaderSampledImageArrayNonUniformIndexingNative;
  VkBool32 shaderStorageBufferArrayNonUniformIndexingNative;
  VkBool32 shaderStorageImageArrayNonUniformIndexingNative;
  VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative;
  VkBool32 robustBufferAccessUpdateAfterBind;
  VkBool32 quadDivergentImplicitLod;
  uint maxPerStageDescriptorUpdateAfterBindSamplers;
  uint maxPerStageDescriptorUpdateAfterBindUniformBuffers;
  uint maxPerStageDescriptorUpdateAfterBindStorageBuffers;
  uint maxPerStageDescriptorUpdateAfterBindSampledImages;
  uint maxPerStageDescriptorUpdateAfterBindStorageImages;
  uint maxPerStageDescriptorUpdateAfterBindInputAttachments;
  uint maxPerStageUpdateAfterBindResources;
  uint maxDescriptorSetUpdateAfterBindSamplers;
  uint maxDescriptorSetUpdateAfterBindUniformBuffers;
  uint maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
  uint maxDescriptorSetUpdateAfterBindStorageBuffers;
  uint maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
  uint maxDescriptorSetUpdateAfterBindSampledImages;
  uint maxDescriptorSetUpdateAfterBindStorageImages;
  uint maxDescriptorSetUpdateAfterBindInputAttachments;
}

struct VkDescriptorSetLayoutBindingFlagsCreateInfo {
  VkStructureType sType;
  void pNext;
  uint bindingCount;
  VkDescriptorBindingFlags pBindingFlags;
}

struct VkDescriptorSetVariableDescriptorCountAllocateInfo {
  VkStructureType sType;
  void pNext;
  uint descriptorSetCount;
  uint pDescriptorCounts;
}

struct VkDescriptorSetVariableDescriptorCountLayoutSupport {
  VkStructureType sType;
  void pNext;
  uint maxVariableDescriptorCount;
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

struct VkAttachmentReference2 {
  VkStructureType sType;
  void pNext;
  uint attachment;
  VkImageLayout layout;
  VkImageAspectFlags aspectMask;
}

struct VkSubpassDescription2 {
  VkStructureType sType;
  void pNext;
  VkSubpassDescriptionFlags flags;
  VkPipelineBindPoint pipelineBindPoint;
  uint viewMask;
  uint inputAttachmentCount;
  VkAttachmentReference2 pInputAttachments;
  uint colorAttachmentCount;
  VkAttachmentReference2 pColorAttachments;
  VkAttachmentReference2 pResolveAttachments;
  VkAttachmentReference2 pDepthStencilAttachment;
  uint preserveAttachmentCount;
  uint pPreserveAttachments;
}

struct VkSubpassDependency2 {
  VkStructureType sType;
  void pNext;
  uint srcSubpass;
  uint dstSubpass;
  VkPipelineStageFlags srcStageMask;
  VkPipelineStageFlags dstStageMask;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  VkDependencyFlags dependencyFlags;
  int viewOffset;
}

struct VkRenderPassCreateInfo2 {
  VkStructureType sType;
  void pNext;
  VkRenderPassCreateFlags flags;
  uint attachmentCount;
  VkAttachmentDescription2 pAttachments;
  uint subpassCount;
  VkSubpassDescription2 pSubpasses;
  uint dependencyCount;
  VkSubpassDependency2 pDependencies;
  uint correlatedViewMaskCount;
  uint pCorrelatedViewMasks;
}

struct VkSubpassBeginInfo {
  VkStructureType sType;
  void pNext;
  VkSubpassContents contents;
}

struct VkSubpassEndInfo {
  VkStructureType sType;
  void pNext;
}

struct VkPhysicalDeviceTimelineSemaphoreFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 timelineSemaphore;
}

struct VkPhysicalDeviceTimelineSemaphoreProperties {
  VkStructureType sType;
  void pNext;
  ulong maxTimelineSemaphoreValueDifference;
}

struct VkSemaphoreTypeCreateInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphoreType semaphoreType;
  ulong initialValue;
}

struct VkTimelineSemaphoreSubmitInfo {
  VkStructureType sType;
  void pNext;
  uint waitSemaphoreValueCount;
  ulong pWaitSemaphoreValues;
  uint signalSemaphoreValueCount;
  ulong pSignalSemaphoreValues;
}

struct VkSemaphoreWaitInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphoreWaitFlags flags;
  uint semaphoreCount;
  VkSemaphore pSemaphores;
  ulong pValues;
}

struct VkSemaphoreSignalInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  ulong value;
}

struct VkVertexInputBindingDivisorDescriptionEXT {
  uint binding;
  uint divisor;
}

struct VkPipelineVertexInputDivisorStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint vertexBindingDivisorCount;
  VkVertexInputBindingDivisorDescriptionEXT pVertexBindingDivisors;
}

struct VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint maxVertexAttribDivisor;
}

struct VkPhysicalDevicePCIBusInfoPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint pciDomain;
  uint pciBus;
  uint pciDevice;
  uint pciFunction;
}

struct VkImportAndroidHardwareBufferInfoANDROID {
  VkStructureType sType;
  void pNext;
  AHardwareBuffer buffer;
}

struct VkAndroidHardwareBufferUsageANDROID {
  VkStructureType sType;
  void pNext;
  ulong androidHardwareBufferUsage;
}

struct VkAndroidHardwareBufferPropertiesANDROID {
  VkStructureType sType;
  void pNext;
  VkDeviceSize allocationSize;
  uint memoryTypeBits;
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
  ulong externalFormat;
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
  ulong externalFormat;
}

struct VkPhysicalDevice8BitStorageFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 storageBuffer8BitAccess;
  VkBool32 uniformAndStorageBuffer8BitAccess;
  VkBool32 storagePushConstant8;
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

struct VkPhysicalDeviceShaderAtomicInt64Features {
  VkStructureType sType;
  void pNext;
  VkBool32 shaderBufferInt64Atomics;
  VkBool32 shaderSharedInt64Atomics;
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

struct VkSubpassDescriptionDepthStencilResolve {
  VkStructureType sType;
  void pNext;
  VkResolveModeFlagBits depthResolveMode;
  VkResolveModeFlagBits stencilResolveMode;
  VkAttachmentReference2 pDepthStencilResolveAttachment;
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
  uint maxTransformFeedbackStreams;
  uint maxTransformFeedbackBuffers;
  VkDeviceSize maxTransformFeedbackBufferSize;
  uint maxTransformFeedbackStreamDataSize;
  uint maxTransformFeedbackBufferDataSize;
  uint maxTransformFeedbackBufferDataStride;
  VkBool32 transformFeedbackQueries;
  VkBool32 transformFeedbackStreamsLinesTriangles;
  VkBool32 transformFeedbackRasterizationStreamSelect;
  VkBool32 transformFeedbackDraw;
}

struct VkPipelineRasterizationStateStreamCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkPipelineRasterizationStateStreamCreateFlagsEXT flags;
  uint rasterizationStream;
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
  uint exclusiveScissorCount;
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
  ulong maxDecompressionIndirectCount;
}

struct VkShadingRatePaletteNV {
  uint shadingRatePaletteEntryCount;
  VkShadingRatePaletteEntryNV pShadingRatePaletteEntries;
}

struct VkPipelineViewportShadingRateImageStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkBool32 shadingRateImageEnable;
  uint viewportCount;
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
  uint shadingRatePaletteSize;
  uint shadingRateMaxCoarseSamples;
}

struct VkPhysicalDeviceInvocationMaskFeaturesHUAWEI {
  VkStructureType sType;
  void pNext;
  VkBool32 invocationMask;
}

struct VkCoarseSampleLocationNV {
  uint pixelX;
  uint pixelY;
  uint sample;
}

struct VkCoarseSampleOrderCustomNV {
  VkShadingRatePaletteEntryNV shadingRate;
  uint sampleCount;
  uint sampleLocationCount;
  VkCoarseSampleLocationNV pSampleLocations;
}

struct VkPipelineViewportCoarseSampleOrderStateCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkCoarseSampleOrderTypeNV sampleOrderType;
  uint customSampleOrderCount;
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
  uint maxDrawMeshTasksCount;
  uint maxTaskWorkGroupInvocations;
  uint maxTaskWorkGroupSize;
  uint maxTaskTotalMemorySize;
  uint maxTaskOutputCount;
  uint maxMeshWorkGroupInvocations;
  uint maxMeshWorkGroupSize;
  uint maxMeshTotalMemorySize;
  uint maxMeshOutputVertices;
  uint maxMeshOutputPrimitives;
  uint maxMeshMultiviewViewCount;
  uint meshOutputPerVertexGranularity;
  uint meshOutputPerPrimitiveGranularity;
}

struct VkDrawMeshTasksIndirectCommandNV {
  uint taskCount;
  uint firstTask;
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
  uint maxTaskWorkGroupTotalCount;
  uint maxTaskWorkGroupCount;
  uint maxTaskWorkGroupInvocations;
  uint maxTaskWorkGroupSize;
  uint maxTaskPayloadSize;
  uint maxTaskSharedMemorySize;
  uint maxTaskPayloadAndSharedMemorySize;
  uint maxMeshWorkGroupTotalCount;
  uint maxMeshWorkGroupCount;
  uint maxMeshWorkGroupInvocations;
  uint maxMeshWorkGroupSize;
  uint maxMeshSharedMemorySize;
  uint maxMeshPayloadAndSharedMemorySize;
  uint maxMeshOutputMemorySize;
  uint maxMeshPayloadAndOutputMemorySize;
  uint maxMeshOutputComponents;
  uint maxMeshOutputVertices;
  uint maxMeshOutputPrimitives;
  uint maxMeshOutputLayers;
  uint maxMeshMultiviewViewCount;
  uint meshOutputPerVertexGranularity;
  uint meshOutputPerPrimitiveGranularity;
  uint maxPreferredTaskWorkGroupInvocations;
  uint maxPreferredMeshWorkGroupInvocations;
  VkBool32 prefersLocalInvocationVertexOutput;
  VkBool32 prefersLocalInvocationPrimitiveOutput;
  VkBool32 prefersCompactVertexOutput;
  VkBool32 prefersCompactPrimitiveOutput;
}

struct VkDrawMeshTasksIndirectCommandEXT {
  uint groupCountX;
  uint groupCountY;
  uint groupCountZ;
}

struct VkRayTracingShaderGroupCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkRayTracingShaderGroupTypeKHR type;
  uint generalShader;
  uint closestHitShader;
  uint anyHitShader;
  uint intersectionShader;
}

struct VkRayTracingShaderGroupCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkRayTracingShaderGroupTypeKHR type;
  uint generalShader;
  uint closestHitShader;
  uint anyHitShader;
  uint intersectionShader;
  void pShaderGroupCaptureReplayHandle;
}

struct VkRayTracingPipelineCreateInfoNV {
  VkStructureType sType;
  void pNext;
  VkPipelineCreateFlags flags;
  uint stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  uint groupCount;
  VkRayTracingShaderGroupCreateInfoNV pGroups;
  uint maxRecursionDepth;
  VkPipelineLayout layout;
  VkPipeline basePipelineHandle;
  int basePipelineIndex;
}

struct VkRayTracingPipelineCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkPipelineCreateFlags flags;
  uint stageCount;
  VkPipelineShaderStageCreateInfo pStages;
  uint groupCount;
  VkRayTracingShaderGroupCreateInfoKHR pGroups;
  uint maxPipelineRayRecursionDepth;
  VkPipelineLibraryCreateInfoKHR pLibraryInfo;
  VkRayTracingPipelineInterfaceCreateInfoKHR pLibraryInterface;
  VkPipelineDynamicStateCreateInfo pDynamicState;
  VkPipelineLayout layout;
  VkPipeline basePipelineHandle;
  int basePipelineIndex;
}

struct VkGeometryTrianglesNV {
  VkStructureType sType;
  void pNext;
  VkBuffer vertexData;
  VkDeviceSize vertexOffset;
  uint vertexCount;
  VkDeviceSize vertexStride;
  VkFormat vertexFormat;
  VkBuffer indexData;
  VkDeviceSize indexOffset;
  uint indexCount;
  VkIndexType indexType;
  VkBuffer transformData;
  VkDeviceSize transformOffset;
}

struct VkGeometryAABBNV {
  VkStructureType sType;
  void pNext;
  VkBuffer aabbData;
  uint numAABBs;
  uint stride;
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
  uint instanceCount;
  uint geometryCount;
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
  uint deviceIndexCount;
  uint pDeviceIndices;
}

struct VkWriteDescriptorSetAccelerationStructureKHR {
  VkStructureType sType;
  void pNext;
  uint accelerationStructureCount;
  VkAccelerationStructureKHR pAccelerationStructures;
}

struct VkWriteDescriptorSetAccelerationStructureNV {
  VkStructureType sType;
  void pNext;
  uint accelerationStructureCount;
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
  ulong maxGeometryCount;
  ulong maxInstanceCount;
  ulong maxPrimitiveCount;
  uint maxPerStageDescriptorAccelerationStructures;
  uint maxPerStageDescriptorUpdateAfterBindAccelerationStructures;
  uint maxDescriptorSetAccelerationStructures;
  uint maxDescriptorSetUpdateAfterBindAccelerationStructures;
  uint minAccelerationStructureScratchOffsetAlignment;
}

struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR {
  VkStructureType sType;
  void pNext;
  uint shaderGroupHandleSize;
  uint maxRayRecursionDepth;
  uint maxShaderGroupStride;
  uint shaderGroupBaseAlignment;
  uint shaderGroupHandleCaptureReplaySize;
  uint maxRayDispatchInvocationCount;
  uint shaderGroupHandleAlignment;
  uint maxRayHitAttributeSize;
}

struct VkPhysicalDeviceRayTracingPropertiesNV {
  VkStructureType sType;
  void pNext;
  uint shaderGroupHandleSize;
  uint maxRecursionDepth;
  uint maxShaderGroupStride;
  uint shaderGroupBaseAlignment;
  ulong maxGeometryCount;
  ulong maxInstanceCount;
  ulong maxTriangleCount;
  uint maxDescriptorSetAccelerationStructures;
}

struct VkStridedDeviceAddressRegionKHR {
  VkDeviceAddress deviceAddress;
  VkDeviceSize stride;
  VkDeviceSize size;
}

struct VkTraceRaysIndirectCommandKHR {
  uint width;
  uint height;
  uint depth;
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
  uint width;
  uint height;
  uint depth;
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
  uint drmFormatModifierCount;
  VkDrmFormatModifierPropertiesEXT pDrmFormatModifierProperties;
}

struct VkDrmFormatModifierPropertiesEXT {
  ulong drmFormatModifier;
  uint drmFormatModifierPlaneCount;
  VkFormatFeatureFlags drmFormatModifierTilingFeatures;
}

struct VkPhysicalDeviceImageDrmFormatModifierInfoEXT {
  VkStructureType sType;
  void pNext;
  ulong drmFormatModifier;
  VkSharingMode sharingMode;
  uint queueFamilyIndexCount;
  uint pQueueFamilyIndices;
}

struct VkImageDrmFormatModifierListCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint drmFormatModifierCount;
  ulong pDrmFormatModifiers;
}

struct VkImageDrmFormatModifierExplicitCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  ulong drmFormatModifier;
  uint drmFormatModifierPlaneCount;
  VkSubresourceLayout pPlaneLayouts;
}

struct VkImageDrmFormatModifierPropertiesEXT {
  VkStructureType sType;
  void pNext;
  ulong drmFormatModifier;
}

struct VkImageStencilUsageCreateInfo {
  VkStructureType sType;
  void pNext;
  VkImageUsageFlags stencilUsage;
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
  uint maxSubsampledArrayLayers;
  uint maxDescriptorSetSubsampledSamplers;
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
  uint fragmentDensityOffsetCount;
  VkOffset2D pFragmentDensityOffsets;
}

struct VkPhysicalDeviceScalarBlockLayoutFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 scalarBlockLayout;
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

struct VkPhysicalDeviceBufferDeviceAddressFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 bufferDeviceAddress;
  VkBool32 bufferDeviceAddressCaptureReplay;
  VkBool32 bufferDeviceAddressMultiDevice;
}

struct VkBufferDeviceAddressInfo {
  VkStructureType sType;
  void pNext;
  VkBuffer buffer;
}

struct VkBufferOpaqueCaptureAddressCreateInfo {
  VkStructureType sType;
  void pNext;
  ulong opaqueCaptureAddress;
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

struct VkFramebufferAttachmentsCreateInfo {
  VkStructureType sType;
  void pNext;
  uint attachmentImageInfoCount;
  VkFramebufferAttachmentImageInfo pAttachmentImageInfos;
}

struct VkFramebufferAttachmentImageInfo {
  VkStructureType sType;
  void pNext;
  VkImageCreateFlags flags;
  VkImageUsageFlags usage;
  uint width;
  uint height;
  uint layerCount;
  uint viewFormatCount;
  VkFormat pViewFormats;
}

struct VkRenderPassAttachmentBeginInfo {
  VkStructureType sType;
  void pNext;
  uint attachmentCount;
  VkImageView pAttachments;
}

struct VkPhysicalDeviceTextureCompressionASTCHDRFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 textureCompressionASTC_HDR;
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
  uint MSize;
  uint NSize;
  uint KSize;
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
  ulong duration;
}

struct VkPipelineCreationFeedbackCreateInfo {
  VkStructureType sType;
  void pNext;
  VkPipelineCreationFeedback pPipelineCreationFeedback;
  uint pipelineStageCreationFeedbackCount;
  VkPipelineCreationFeedback pPipelineStageCreationFeedbacks;
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
  uint queueFamilyIndex;
  uint counterIndexCount;
  uint pCounterIndices;
}

struct VkAcquireProfilingLockInfoKHR {
  VkStructureType sType;
  void pNext;
  VkAcquireProfilingLockFlagsKHR flags;
  ulong timeout;
}

struct VkPerformanceQuerySubmitInfoKHR {
  VkStructureType sType;
  void pNext;
  uint counterPassIndex;
}

struct VkPerformanceQueryReservationInfoKHR {
  VkStructureType sType;
  void pNext;
  uint maxPerformanceQueriesPerPool;
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

struct VkPerformanceMarkerInfoINTEL {
  VkStructureType sType;
  void pNext;
  ulong marker;
}

struct VkPerformanceStreamMarkerInfoINTEL {
  VkStructureType sType;
  void pNext;
  uint marker;
}

struct VkPerformanceOverrideInfoINTEL {
  VkStructureType sType;
  void pNext;
  VkPerformanceOverrideTypeINTEL type;
  VkBool32 enable;
  ulong parameter;
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
  uint shaderSMCount;
  uint shaderWarpsPerSM;
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

struct VkAttachmentDescriptionStencilLayout {
  VkStructureType sType;
  void pNext;
  VkImageLayout stencilInitialLayout;
  VkImageLayout stencilFinalLayout;
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

struct VkPipelineExecutablePropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkShaderStageFlags stages;
  char name;
  char description;
  uint subgroupSize;
}

struct VkPipelineExecutableInfoKHR {
  VkStructureType sType;
  void pNext;
  VkPipeline pipeline;
  uint executableIndex;
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

struct VkPhysicalDeviceSubgroupSizeControlFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 subgroupSizeControl;
  VkBool32 computeFullSubgroups;
}

struct VkPhysicalDeviceSubgroupSizeControlProperties {
  VkStructureType sType;
  void pNext;
  uint minSubgroupSize;
  uint maxSubgroupSize;
  uint maxComputeWorkgroupSubgroups;
  VkShaderStageFlags requiredSubgroupSizeStages;
}

struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo {
  VkStructureType sType;
  void pNext;
  uint requiredSubgroupSize;
}

struct VkSubpassShadingPipelineCreateInfoHUAWEI {
  VkStructureType sType;
  void pNext;
  VkRenderPass renderPass;
  uint subpass;
}

struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI {
  VkStructureType sType;
  void pNext;
  uint maxSubpassShadingWorkgroupSizeAspectRatio;
}

struct VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI {
  VkStructureType sType;
  void pNext;
  uint maxWorkGroupCount;
  uint maxWorkGroupSize;
  uint maxOutputClusterCount;
  VkDeviceSize indirectBufferOffsetAlignment;
}

struct VkMemoryOpaqueCaptureAddressAllocateInfo {
  VkStructureType sType;
  void pNext;
  ulong opaqueCaptureAddress;
}

struct VkDeviceMemoryOpaqueCaptureAddressInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceMemory memory;
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
  uint lineSubPixelPrecisionBits;
}

struct VkPipelineRasterizationLineStateCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkLineRasterizationModeEXT lineRasterizationMode;
  VkBool32 stippledLineEnable;
  uint lineStippleFactor;
  uint16_t lineStipplePattern;
}

struct VkPhysicalDevicePipelineCreationCacheControlFeatures {
  VkStructureType sType;
  void pNext;
  VkBool32 pipelineCreationCacheControl;
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
  uint deviceNodeMask;
  VkBool32 deviceLUIDValid;
  uint subgroupSize;
  VkShaderStageFlags subgroupSupportedStages;
  VkSubgroupFeatureFlags subgroupSupportedOperations;
  VkBool32 subgroupQuadOperationsInAllStages;
  VkPointClippingBehavior pointClippingBehavior;
  uint maxMultiviewViewCount;
  uint maxMultiviewInstanceIndex;
  VkBool32 protectedNoFault;
  uint maxPerSetDescriptors;
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
  uint maxUpdateAfterBindDescriptorsInAllPools;
  VkBool32 shaderUniformBufferArrayNonUniformIndexingNative;
  VkBool32 shaderSampledImageArrayNonUniformIndexingNative;
  VkBool32 shaderStorageBufferArrayNonUniformIndexingNative;
  VkBool32 shaderStorageImageArrayNonUniformIndexingNative;
  VkBool32 shaderInputAttachmentArrayNonUniformIndexingNative;
  VkBool32 robustBufferAccessUpdateAfterBind;
  VkBool32 quadDivergentImplicitLod;
  uint maxPerStageDescriptorUpdateAfterBindSamplers;
  uint maxPerStageDescriptorUpdateAfterBindUniformBuffers;
  uint maxPerStageDescriptorUpdateAfterBindStorageBuffers;
  uint maxPerStageDescriptorUpdateAfterBindSampledImages;
  uint maxPerStageDescriptorUpdateAfterBindStorageImages;
  uint maxPerStageDescriptorUpdateAfterBindInputAttachments;
  uint maxPerStageUpdateAfterBindResources;
  uint maxDescriptorSetUpdateAfterBindSamplers;
  uint maxDescriptorSetUpdateAfterBindUniformBuffers;
  uint maxDescriptorSetUpdateAfterBindUniformBuffersDynamic;
  uint maxDescriptorSetUpdateAfterBindStorageBuffers;
  uint maxDescriptorSetUpdateAfterBindStorageBuffersDynamic;
  uint maxDescriptorSetUpdateAfterBindSampledImages;
  uint maxDescriptorSetUpdateAfterBindStorageImages;
  uint maxDescriptorSetUpdateAfterBindInputAttachments;
  VkResolveModeFlags supportedDepthResolveModes;
  VkResolveModeFlags supportedStencilResolveModes;
  VkBool32 independentResolveNone;
  VkBool32 independentResolve;
  VkBool32 filterMinmaxSingleComponentFormats;
  VkBool32 filterMinmaxImageComponentMapping;
  ulong maxTimelineSemaphoreValueDifference;
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
  uint minSubgroupSize;
  uint maxSubgroupSize;
  uint maxComputeWorkgroupSubgroups;
  VkShaderStageFlags requiredSubgroupSizeStages;
  uint maxInlineUniformBlockSize;
  uint maxPerStageDescriptorInlineUniformBlocks;
  uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
  uint maxDescriptorSetInlineUniformBlocks;
  uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
  uint maxInlineUniformTotalSize;
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
  uint faultCount;
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

struct VkSamplerCustomBorderColorCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkClearColorValue customBorderColor;
  VkFormat format;
}

struct VkPhysicalDeviceCustomBorderColorPropertiesEXT {
  VkStructureType sType;
  void pNext;
  uint maxCustomBorderColorSamplers;
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
  uint maxVertex;
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
  uint geometryCount;
  VkAccelerationStructureGeometryKHR pGeometries;
  VkAccelerationStructureGeometryKHR ppGeometries;
  VkDeviceOrHostAddressKHR scratchData;
}

struct VkAccelerationStructureBuildRangeInfoKHR {
  uint primitiveCount;
  uint primitiveOffset;
  uint firstVertex;
  uint transformOffset;
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

struct VkTransformMatrixKHR {
  float matrix;
}

struct VkAccelerationStructureInstanceKHR {
  VkTransformMatrixKHR transform;
  uint instanceCustomIndex;
  uint mask;
  uint instanceShaderBindingTableRecordOffset;
  VkGeometryInstanceFlagsKHR flags;
  ulong accelerationStructureReference;
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
  uint maxPipelineRayPayloadSize;
  uint maxPipelineRayHitAttributeSize;
}

struct VkPipelineLibraryCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint libraryCount;
  VkPipeline pLibraries;
}

struct VkRefreshObjectKHR {
  VkObjectType objectType;
  ulong objectHandle;
  VkRefreshObjectFlagsKHR flags;
}

struct VkRefreshObjectListKHR {
  VkStructureType sType;
  void pNext;
  uint objectCount;
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
  uint minVertexInputBindingStrideAlignment;
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

struct VkImageCopy2 {
  VkStructureType sType;
  void pNext;
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}

struct VkImageBlit2 {
  VkStructureType sType;
  void pNext;
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffsets;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffsets;
}

struct VkBufferImageCopy2 {
  VkStructureType sType;
  void pNext;
  VkDeviceSize bufferOffset;
  uint bufferRowLength;
  uint bufferImageHeight;
  VkImageSubresourceLayers imageSubresource;
  VkOffset3D imageOffset;
  VkExtent3D imageExtent;
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

struct VkCopyBufferInfo2 {
  VkStructureType sType;
  void pNext;
  VkBuffer srcBuffer;
  VkBuffer dstBuffer;
  uint regionCount;
  VkBufferCopy2 pRegions;
}

struct VkCopyImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint regionCount;
  VkImageCopy2 pRegions;
}

struct VkBlitImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint regionCount;
  VkImageBlit2 pRegions;
  VkFilter filter;
}

struct VkCopyBufferToImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkBuffer srcBuffer;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint regionCount;
  VkBufferImageCopy2 pRegions;
}

struct VkCopyImageToBufferInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkBuffer dstBuffer;
  uint regionCount;
  VkBufferImageCopy2 pRegions;
}

struct VkResolveImageInfo2 {
  VkStructureType sType;
  void pNext;
  VkImage srcImage;
  VkImageLayout srcImageLayout;
  VkImage dstImage;
  VkImageLayout dstImageLayout;
  uint regionCount;
  VkImageResolve2 pRegions;
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
  uint maxFragmentShadingRateAttachmentTexelSizeAspectRatio;
  VkBool32 primitiveFragmentShadingRateWithMultipleViewports;
  VkBool32 layeredShadingRateAttachments;
  VkBool32 fragmentShadingRateNonTrivialCombinerOps;
  VkExtent2D maxFragmentSize;
  uint maxFragmentSizeAspectRatio;
  uint maxFragmentShadingRateCoverageSamples;
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

struct VkMutableDescriptorTypeListEXT {
  uint descriptorTypeCount;
  VkDescriptorType pDescriptorTypes;
}

struct VkMutableDescriptorTypeCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint mutableDescriptorTypeListCount;
  VkMutableDescriptorTypeListEXT pMutableDescriptorTypeLists;
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
  uint binding;
  uint stride;
  VkVertexInputRate inputRate;
  uint divisor;
}

struct VkVertexInputAttributeDescription2EXT {
  VkStructureType sType;
  void pNext;
  uint location;
  uint binding;
  VkFormat format;
  uint offset;
}

struct VkPhysicalDeviceColorWriteEnableFeaturesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 colorWriteEnable;
}

struct VkPipelineColorWriteCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint attachmentCount;
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

struct VkImageMemoryBarrier2 {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 srcStageMask;
  VkAccessFlags2 srcAccessMask;
  VkPipelineStageFlags2 dstStageMask;
  VkAccessFlags2 dstAccessMask;
  VkImageLayout oldLayout;
  VkImageLayout newLayout;
  uint srcQueueFamilyIndex;
  uint dstQueueFamilyIndex;
  VkImage image;
  VkImageSubresourceRange subresourceRange;
}

struct VkBufferMemoryBarrier2 {
  VkStructureType sType;
  void pNext;
  VkPipelineStageFlags2 srcStageMask;
  VkAccessFlags2 srcAccessMask;
  VkPipelineStageFlags2 dstStageMask;
  VkAccessFlags2 dstAccessMask;
  uint srcQueueFamilyIndex;
  uint dstQueueFamilyIndex;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize size;
}

struct VkDependencyInfo {
  VkStructureType sType;
  void pNext;
  VkDependencyFlags dependencyFlags;
  uint memoryBarrierCount;
  VkMemoryBarrier2 pMemoryBarriers;
  uint bufferMemoryBarrierCount;
  VkBufferMemoryBarrier2 pBufferMemoryBarriers;
  uint imageMemoryBarrierCount;
  VkImageMemoryBarrier2 pImageMemoryBarriers;
}

struct VkSemaphoreSubmitInfo {
  VkStructureType sType;
  void pNext;
  VkSemaphore semaphore;
  ulong value;
  VkPipelineStageFlags2 stageMask;
  uint deviceIndex;
}

struct VkCommandBufferSubmitInfo {
  VkStructureType sType;
  void pNext;
  VkCommandBuffer commandBuffer;
  uint deviceMask;
}

struct VkSubmitInfo2 {
  VkStructureType sType;
  void pNext;
  VkSubmitFlags flags;
  uint waitSemaphoreInfoCount;
  VkSemaphoreSubmitInfo pWaitSemaphoreInfos;
  uint commandBufferInfoCount;
  VkCommandBufferSubmitInfo pCommandBufferInfos;
  uint signalSemaphoreInfoCount;
  VkSemaphoreSubmitInfo pSignalSemaphoreInfos;
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
  uint maxRenderPassSubpasses;
  uint maxRenderPassDependencies;
  uint maxSubpassInputAttachments;
  uint maxSubpassPreserveAttachments;
  uint maxFramebufferAttachments;
  uint maxDescriptorSetLayoutBindings;
  uint maxQueryFaultCount;
  uint maxCallbackFaultCount;
  uint maxCommandPoolCommandBuffers;
  VkDeviceSize maxCommandBufferSize;
}

struct VkPipelinePoolSize {
  VkStructureType sType;
  void pNext;
  VkDeviceSize poolEntrySize;
  uint poolEntryCount;
}

struct VkDeviceObjectReservationCreateInfo {
  VkStructureType sType;
  void pNext;
  uint pipelineCacheCreateInfoCount;
  VkPipelineCacheCreateInfo pPipelineCacheCreateInfos;
  uint pipelinePoolSizeCount;
  VkPipelinePoolSize pPipelinePoolSizes;
  uint semaphoreRequestCount;
  uint commandBufferRequestCount;
  uint fenceRequestCount;
  uint deviceMemoryRequestCount;
  uint bufferRequestCount;
  uint imageRequestCount;
  uint eventRequestCount;
  uint queryPoolRequestCount;
  uint bufferViewRequestCount;
  uint imageViewRequestCount;
  uint layeredImageViewRequestCount;
  uint pipelineCacheRequestCount;
  uint pipelineLayoutRequestCount;
  uint renderPassRequestCount;
  uint graphicsPipelineRequestCount;
  uint computePipelineRequestCount;
  uint descriptorSetLayoutRequestCount;
  uint samplerRequestCount;
  uint descriptorPoolRequestCount;
  uint descriptorSetRequestCount;
  uint framebufferRequestCount;
  uint commandPoolRequestCount;
  uint samplerYcbcrConversionRequestCount;
  uint surfaceRequestCount;
  uint swapchainRequestCount;
  uint displayModeRequestCount;
  uint subpassDescriptionRequestCount;
  uint attachmentDescriptionRequestCount;
  uint descriptorSetLayoutBindingRequestCount;
  uint descriptorSetLayoutBindingLimit;
  uint maxImageViewMipLevels;
  uint maxImageViewArrayLayers;
  uint maxLayeredImageViewMipLevels;
  uint maxOcclusionQueriesPerPool;
  uint maxPipelineStatisticsQueriesPerPool;
  uint maxTimestampQueriesPerPool;
  uint maxImmutableSamplersPerDescriptorSetLayout;
}

struct VkCommandPoolMemoryReservationCreateInfo {
  VkStructureType sType;
  void pNext;
  VkDeviceSize commandPoolReservedSize;
  uint commandPoolMaxCommandBuffers;
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
  uint profileCount;
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
  uint maxDpbSlots;
  uint maxActiveReferencePictures;
  VkExtensionProperties stdHeaderVersion;
}

struct VkVideoSessionMemoryRequirementsKHR {
  VkStructureType sType;
  void pNext;
  uint memoryBindIndex;
  VkMemoryRequirements memoryRequirements;
}

struct VkBindVideoSessionMemoryInfoKHR {
  VkStructureType sType;
  void pNext;
  uint memoryBindIndex;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  VkDeviceSize memorySize;
}

struct VkVideoPictureResourceInfoKHR {
  VkStructureType sType;
  void pNext;
  VkOffset2D codedOffset;
  VkExtent2D codedExtent;
  uint baseArrayLayer;
  VkImageView imageViewBinding;
}

struct VkVideoReferenceSlotInfoKHR {
  VkStructureType sType;
  void pNext;
  int slotIndex;
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
  uint referenceSlotCount;
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
  uint stdSPSCount;
  StdVideoH264SequenceParameterSet pStdSPSs;
  uint stdPPSCount;
  StdVideoH264PictureParameterSet pStdPPSs;
}

struct VkVideoDecodeH264SessionParametersCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint maxStdSPSCount;
  uint maxStdPPSCount;
  VkVideoDecodeH264SessionParametersAddInfoKHR pParametersAddInfo;
}

struct VkVideoDecodeH264PictureInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH264PictureInfo pStdPictureInfo;
  uint sliceCount;
  uint pSliceOffsets;
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
  uint stdVPSCount;
  StdVideoH265VideoParameterSet pStdVPSs;
  uint stdSPSCount;
  StdVideoH265SequenceParameterSet pStdSPSs;
  uint stdPPSCount;
  StdVideoH265PictureParameterSet pStdPPSs;
}

struct VkVideoDecodeH265SessionParametersCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint maxStdVPSCount;
  uint maxStdSPSCount;
  uint maxStdPPSCount;
  VkVideoDecodeH265SessionParametersAddInfoKHR pParametersAddInfo;
}

struct VkVideoDecodeH265PictureInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH265PictureInfo pStdPictureInfo;
  uint sliceSegmentCount;
  uint pSliceSegmentOffsets;
}

struct VkVideoDecodeH265DpbSlotInfoKHR {
  VkStructureType sType;
  void pNext;
  StdVideoDecodeH265ReferenceInfo pStdReferenceInfo;
}

struct VkVideoSessionCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  uint queueFamilyIndex;
  VkVideoSessionCreateFlagsKHR flags;
  VkVideoProfileInfoKHR pVideoProfile;
  VkFormat pictureFormat;
  VkExtent2D maxCodedExtent;
  VkFormat referencePictureFormat;
  uint maxDpbSlots;
  uint maxActiveReferencePictures;
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
  uint updateSequenceCount;
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
  uint referenceSlotCount;
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
  uint referenceSlotCount;
  VkVideoReferenceSlotInfoKHR pReferenceSlots;
  uint precedingExternallyEncodedBytes;
}

struct VkQueryPoolVideoEncodeFeedbackCreateInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeFeedbackFlagsKHR encodeFeedbackFlags;
}

struct VkVideoEncodeQualityLevelInfoKHR {
  VkStructureType sType;
  void pNext;
  uint qualityLevel;
}

struct VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoProfileInfoKHR pVideoProfile;
  uint qualityLevel;
}

struct VkVideoEncodeQualityLevelPropertiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeRateControlModeFlagBitsKHR preferredRateControlMode;
  uint preferredRateControlLayerCount;
}

struct VkVideoEncodeRateControlInfoKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeRateControlFlagsKHR flags;
  VkVideoEncodeRateControlModeFlagBitsKHR rateControlMode;
  uint layerCount;
  VkVideoEncodeRateControlLayerInfoKHR pLayers;
  uint virtualBufferSizeInMs;
  uint initialVirtualBufferSizeInMs;
}

struct VkVideoEncodeRateControlLayerInfoKHR {
  VkStructureType sType;
  void pNext;
  ulong averageBitrate;
  ulong maxBitrate;
  uint frameRateNumerator;
  uint frameRateDenominator;
}

struct VkVideoEncodeCapabilitiesKHR {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeCapabilityFlagsKHR flags;
  VkVideoEncodeRateControlModeFlagsKHR rateControlModes;
  uint maxRateControlLayers;
  ulong maxBitrate;
  uint maxQualityLevels;
  VkExtent2D encodeInputPictureGranularity;
  VkVideoEncodeFeedbackFlagsKHR supportedEncodeFeedbackFlags;
}

struct VkVideoEncodeH264CapabilitiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH264CapabilityFlagsEXT flags;
  StdVideoH264LevelIdc maxLevelIdc;
  uint maxSliceCount;
  uint maxPPictureL0ReferenceCount;
  uint maxBPictureL0ReferenceCount;
  uint maxL1ReferenceCount;
  uint maxTemporalLayerCount;
  VkBool32 expectDyadicTemporalLayerPattern;
  int minQp;
  int maxQp;
  VkBool32 prefersGopRemainingFrames;
  VkBool32 requiresGopRemainingFrames;
  VkVideoEncodeH264StdFlagsEXT stdSyntaxFlags;
}

struct VkVideoEncodeH264QualityLevelPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH264RateControlFlagsEXT preferredRateControlFlags;
  uint preferredGopFrameCount;
  uint preferredIdrPeriod;
  uint preferredConsecutiveBFrameCount;
  uint preferredTemporalLayerCount;
  VkVideoEncodeH264QpEXT preferredConstantQp;
  uint preferredMaxL0ReferenceCount;
  uint preferredMaxL1ReferenceCount;
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
  uint stdSPSCount;
  StdVideoH264SequenceParameterSet pStdSPSs;
  uint stdPPSCount;
  StdVideoH264PictureParameterSet pStdPPSs;
}

struct VkVideoEncodeH264SessionParametersCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint maxStdSPSCount;
  uint maxStdPPSCount;
  VkVideoEncodeH264SessionParametersAddInfoEXT pParametersAddInfo;
}

struct VkVideoEncodeH264SessionParametersGetInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 writeStdSPS;
  VkBool32 writeStdPPS;
  uint stdSPSId;
  uint stdPPSId;
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
  uint naluSliceEntryCount;
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
  int constantQp;
  StdVideoEncodeH264SliceHeader pStdSliceHeader;
}

struct VkVideoEncodeH264RateControlInfoEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH264RateControlFlagsEXT flags;
  uint gopFrameCount;
  uint idrPeriod;
  uint consecutiveBFrameCount;
  uint temporalLayerCount;
}

struct VkVideoEncodeH264QpEXT {
  int qpI;
  int qpP;
  int qpB;
}

struct VkVideoEncodeH264FrameSizeEXT {
  uint frameISize;
  uint framePSize;
  uint frameBSize;
}

struct VkVideoEncodeH264GopRemainingFrameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useGopRemainingFrames;
  uint gopRemainingI;
  uint gopRemainingP;
  uint gopRemainingB;
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
  uint maxSliceSegmentCount;
  VkExtent2D maxTiles;
  VkVideoEncodeH265CtbSizeFlagsEXT ctbSizes;
  VkVideoEncodeH265TransformBlockSizeFlagsEXT transformBlockSizes;
  uint maxPPictureL0ReferenceCount;
  uint maxBPictureL0ReferenceCount;
  uint maxL1ReferenceCount;
  uint maxSubLayerCount;
  VkBool32 expectDyadicTemporalSubLayerPattern;
  int minQp;
  int maxQp;
  VkBool32 prefersGopRemainingFrames;
  VkBool32 requiresGopRemainingFrames;
  VkVideoEncodeH265StdFlagsEXT stdSyntaxFlags;
}

struct VkVideoEncodeH265QualityLevelPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH265RateControlFlagsEXT preferredRateControlFlags;
  uint preferredGopFrameCount;
  uint preferredIdrPeriod;
  uint preferredConsecutiveBFrameCount;
  uint preferredSubLayerCount;
  VkVideoEncodeH265QpEXT preferredConstantQp;
  uint preferredMaxL0ReferenceCount;
  uint preferredMaxL1ReferenceCount;
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
  uint stdVPSCount;
  StdVideoH265VideoParameterSet pStdVPSs;
  uint stdSPSCount;
  StdVideoH265SequenceParameterSet pStdSPSs;
  uint stdPPSCount;
  StdVideoH265PictureParameterSet pStdPPSs;
}

struct VkVideoEncodeH265SessionParametersCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint maxStdVPSCount;
  uint maxStdSPSCount;
  uint maxStdPPSCount;
  VkVideoEncodeH265SessionParametersAddInfoEXT pParametersAddInfo;
}

struct VkVideoEncodeH265SessionParametersGetInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 writeStdVPS;
  VkBool32 writeStdSPS;
  VkBool32 writeStdPPS;
  uint stdVPSId;
  uint stdSPSId;
  uint stdPPSId;
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
  uint naluSliceSegmentEntryCount;
  VkVideoEncodeH265NaluSliceSegmentInfoEXT pNaluSliceSegmentEntries;
  StdVideoEncodeH265PictureInfo pStdPictureInfo;
}

struct VkVideoEncodeH265NaluSliceSegmentInfoEXT {
  VkStructureType sType;
  void pNext;
  int constantQp;
  StdVideoEncodeH265SliceSegmentHeader pStdSliceSegmentHeader;
}

struct VkVideoEncodeH265RateControlInfoEXT {
  VkStructureType sType;
  void pNext;
  VkVideoEncodeH265RateControlFlagsEXT flags;
  uint gopFrameCount;
  uint idrPeriod;
  uint consecutiveBFrameCount;
  uint subLayerCount;
}

struct VkVideoEncodeH265QpEXT {
  int qpI;
  int qpP;
  int qpB;
}

struct VkVideoEncodeH265FrameSizeEXT {
  uint frameISize;
  uint framePSize;
  uint frameBSize;
}

struct VkVideoEncodeH265GopRemainingFrameInfoEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 useGopRemainingFrames;
  uint gopRemainingI;
  uint gopRemainingP;
  uint gopRemainingB;
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
  uint viewportDepthCount;
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
  uint gridDimX;
  uint gridDimY;
  uint gridDimZ;
  uint blockDimX;
  uint blockDimY;
  uint blockDimZ;
  uint sharedMemBytes;
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
  uint maxDescriptorBufferBindings;
  uint maxResourceDescriptorBufferBindings;
  uint maxSamplerDescriptorBufferBindings;
  uint maxEmbeddedImmutableSamplerBindings;
  uint maxEmbeddedImmutableSamplers;
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

struct VkPhysicalDeviceDrmPropertiesEXT {
  VkStructureType sType;
  void pNext;
  VkBool32 hasPrimary;
  VkBool32 hasRender;
  long primaryMajor;
  long primaryMinor;
  long renderMajor;
  long renderMinor;
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
  uint maxInstances;
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
  uint instanceCustomIndex;
  uint mask;
  uint instanceShaderBindingTableRecordOffset;
  VkGeometryInstanceFlagsKHR flags;
  ulong accelerationStructureReference;
}

struct VkAccelerationStructureMatrixMotionInstanceNV {
  VkTransformMatrixKHR transformT0;
  VkTransformMatrixKHR transformT1;
  uint instanceCustomIndex;
  uint mask;
  uint instanceShaderBindingTableRecordOffset;
  VkGeometryInstanceFlagsKHR flags;
  ulong accelerationStructureReference;
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
  uint index;
}

struct VkBufferCollectionImageCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkBufferCollectionFUCHSIA collection;
  uint index;
}

struct VkBufferCollectionBufferCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkBufferCollectionFUCHSIA collection;
  uint index;
}

struct VkBufferCollectionCreateInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  zx_handle_t collectionToken;
}

struct VkBufferCollectionPropertiesFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint memoryTypeBits;
  uint bufferCount;
  uint createInfoIndex;
  ulong sysmemPixelFormat;
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
  uint colorSpace;
}

struct VkImageFormatConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  VkImageCreateInfo imageCreateInfo;
  VkFormatFeatureFlags requiredFormatFeatures;
  VkImageFormatConstraintsFlagsFUCHSIA flags;
  ulong sysmemPixelFormat;
  uint colorSpaceCount;
  VkSysmemColorSpaceFUCHSIA pColorSpaces;
}

struct VkImageConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint formatConstraintsCount;
  VkImageFormatConstraintsInfoFUCHSIA pFormatConstraints;
  VkBufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;
  VkImageConstraintsInfoFlagsFUCHSIA flags;
}

struct VkBufferCollectionConstraintsInfoFUCHSIA {
  VkStructureType sType;
  void pNext;
  uint minBufferCount;
  uint maxBufferCount;
  uint minBufferCountForCamping;
  uint minBufferCountForDedicatedSlack;
  uint minBufferCountForSharedSlack;
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

struct VkDrmFormatModifierPropertiesList2EXT {
  VkStructureType sType;
  void pNext;
  uint drmFormatModifierCount;
  VkDrmFormatModifierProperties2EXT pDrmFormatModifierProperties;
}

struct VkDrmFormatModifierProperties2EXT {
  ulong drmFormatModifier;
  uint drmFormatModifierPlaneCount;
  VkFormatFeatureFlags2 drmFormatModifierTilingFeatures;
}

struct VkAndroidHardwareBufferFormatProperties2ANDROID {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  ulong externalFormat;
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
  uint viewMask;
  uint colorAttachmentCount;
  VkFormat pColorAttachmentFormats;
  VkFormat depthAttachmentFormat;
  VkFormat stencilAttachmentFormat;
}

struct VkRenderingInfo {
  VkStructureType sType;
  void pNext;
  VkRenderingFlags flags;
  VkRect2D renderArea;
  uint layerCount;
  uint viewMask;
  uint colorAttachmentCount;
  VkRenderingAttachmentInfo pColorAttachments;
  VkRenderingAttachmentInfo pDepthAttachment;
  VkRenderingAttachmentInfo pStencilAttachment;
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

struct VkCommandBufferInheritanceRenderingInfo {
  VkStructureType sType;
  void pNext;
  VkRenderingFlags flags;
  uint viewMask;
  uint colorAttachmentCount;
  uint colorAttachmentCount;
  VkFormat pColorAttachmentFormats;
  VkFormat depthAttachmentFormat;
  VkFormat stencilAttachmentFormat;
  VkSampleCountFlagBits rasterizationSamples;
}

struct VkAttachmentSampleCountInfoAMD {
  VkStructureType sType;
  void pNext;
  uint colorAttachmentCount;
  VkSampleCountFlagBits pColorAttachmentSamples;
  VkSampleCountFlagBits depthStencilAttachmentSamples;
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
  uint binding;
}

struct VkDescriptorSetLayoutHostMappingInfoVALVE {
  VkStructureType sType;
  void pNext;
  size_t descriptorOffset;
  uint descriptorSize;
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
  uint identifierSize;
  uint8_t pIdentifier;
}

struct VkShaderModuleIdentifierEXT {
  VkStructureType sType;
  void pNext;
  uint identifierSize;
  uint8_t identifier;
}

struct VkImageCompressionControlEXT {
  VkStructureType sType;
  void pNext;
  VkImageCompressionFlagsEXT flags;
  uint compressionControlPlaneCount;
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
  uint postMergeSubpassCount;
}

struct VkRenderPassCreationFeedbackCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  VkRenderPassCreationFeedbackInfoEXT pRenderPassFeedback;
}

struct VkRenderPassSubpassFeedbackInfoEXT {
  VkSubpassMergeStatusEXT subpassMergeStatus;
  char description;
  uint postMergeIndex;
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
  uint usageCountsCount;
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
  uint count;
  uint subdivisionLevel;
  uint format;
}

struct VkMicromapTriangleEXT {
  uint dataOffset;
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
  uint maxOpacity2StateSubdivisionLevel;
  uint maxOpacity4StateSubdivisionLevel;
}

struct VkAccelerationStructureTrianglesOpacityMicromapEXT {
  VkStructureType sType;
  void pNext;
  VkIndexType indexType;
  VkDeviceOrHostAddressConstKHR indexBuffer;
  VkDeviceSize indexStride;
  uint baseTriangle;
  uint usageCountsCount;
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
  uint maxDisplacementMicromapSubdivisionLevel;
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
  uint baseTriangle;
  uint usageCountsCount;
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
  uint numPhases;
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
  uint maxWeightFilterPhases;
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
  ulong firstDrawTimestamp;
  ulong swapBufferTimestamp;
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
  uint minWidth;
  uint minHeight;
  uint maxWidth;
  uint maxHeight;
  uint maxNumRegionsOfInterest;
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
  uint width;
  uint height;
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
  uint id;
  uint size;
  void pPrivateData;
}

struct VkOpticalFlowExecuteInfoNV {
  VkStructureType sType;
  void pNext;
  VkOpticalFlowExecuteFlagsNV flags;
  uint regionCount;
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
  ulong vendorFaultCode;
  ulong vendorFaultData;
}

struct VkDeviceFaultCountsEXT {
  VkStructureType sType;
  void pNext;
  uint addressInfoCount;
  uint vendorInfoCount;
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
  uint headerSize;
  VkDeviceFaultVendorBinaryHeaderVersionEXT headerVersion;
  uint vendorID;
  uint deviceID;
  uint driverVersion;
  uint8_t pipelineCacheUUID;
  uint applicationNameOffset;
  uint applicationVersion;
  uint engineNameOffset;
  uint engineVersion;
  uint apiVersion;
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
  ulong shaderCoreMask;
  uint shaderCoreCount;
  uint shaderWarpsPerCore;
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
  uint presentModeCount;
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
  uint swapchainCount;
  VkFence pFences;
}

struct VkSwapchainPresentModesCreateInfoEXT {
  VkStructureType sType;
  void pNext;
  uint presentModeCount;
  VkPresentModeKHR pPresentModes;
}

struct VkSwapchainPresentModeInfoEXT {
  VkStructureType sType;
  void pNext;
  uint swapchainCount;
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
  uint imageIndexCount;
  uint pImageIndices;
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
  uint driverCount;
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
  uint pixelRate;
  uint texelRate;
  uint fmaRate;
}

struct VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM {
  VkStructureType sType;
  void pNext;
  VkBool32 multiviewPerViewRenderAreas;
}

struct VkMultiviewPerViewRenderAreasRenderPassBeginInfoQCOM {
  VkStructureType sType;
  void pNext;
  uint perViewRenderAreaCount;
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
  uint shaderBinaryVersion;
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
  uint setLayoutCount;
  VkDescriptorSetLayout pSetLayouts;
  uint pushConstantRangeCount;
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
  uint memoryTypeBits;
}

struct VkScreenBufferFormatPropertiesQNX {
  VkStructureType sType;
  void pNext;
  VkFormat format;
  ulong externalFormat;
  ulong screenUsage;
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
  ulong externalFormat;
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
  uint MSize;
  uint NSize;
  uint KSize;
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


// Enums
null
enum VkImageLayout : int {
 VK_IMAGE_LAYOUT_UNDEFINED : 0
 VK_IMAGE_LAYOUT_GENERAL : 1
 VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL : 2
 VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL : 3
 VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL : 4
 VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL : 5
 VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL : 6
 VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL : 7
 VK_IMAGE_LAYOUT_PREINITIALIZED : 8
}

enum VkAttachmentLoadOp : int {
 VK_ATTACHMENT_LOAD_OP_LOAD : 0
 VK_ATTACHMENT_LOAD_OP_CLEAR : 1
 VK_ATTACHMENT_LOAD_OP_DONT_CARE : 2
}

enum VkAttachmentStoreOp : int {
 VK_ATTACHMENT_STORE_OP_STORE : 0
 VK_ATTACHMENT_STORE_OP_DONT_CARE : 1
}

enum VkImageType : int {
 VK_IMAGE_TYPE_1D : 0
 VK_IMAGE_TYPE_2D : 1
 VK_IMAGE_TYPE_3D : 2
}

enum VkImageTiling : int {
 VK_IMAGE_TILING_OPTIMAL : 0
 VK_IMAGE_TILING_LINEAR : 1
}

enum VkImageViewType : int {
 VK_IMAGE_VIEW_TYPE_1D : 0
 VK_IMAGE_VIEW_TYPE_2D : 1
 VK_IMAGE_VIEW_TYPE_3D : 2
 VK_IMAGE_VIEW_TYPE_CUBE : 3
 VK_IMAGE_VIEW_TYPE_1D_ARRAY : 4
 VK_IMAGE_VIEW_TYPE_2D_ARRAY : 5
 VK_IMAGE_VIEW_TYPE_CUBE_ARRAY : 6
}

enum VkCommandBufferLevel : int {
 VK_COMMAND_BUFFER_LEVEL_PRIMARY : 0
 VK_COMMAND_BUFFER_LEVEL_SECONDARY : 1
}

enum VkComponentSwizzle : int {
 VK_COMPONENT_SWIZZLE_IDENTITY : 0
 VK_COMPONENT_SWIZZLE_ZERO : 1
 VK_COMPONENT_SWIZZLE_ONE : 2
 VK_COMPONENT_SWIZZLE_R : 3
 VK_COMPONENT_SWIZZLE_G : 4
 VK_COMPONENT_SWIZZLE_B : 5
 VK_COMPONENT_SWIZZLE_A : 6
}

enum VkDescriptorType : int {
 VK_DESCRIPTOR_TYPE_SAMPLER : 0
 VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER : 1
 VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE : 2
 VK_DESCRIPTOR_TYPE_STORAGE_IMAGE : 3
 VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER : 4
 VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER : 5
 VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER : 6
 VK_DESCRIPTOR_TYPE_STORAGE_BUFFER : 7
 VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC : 8
 VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC : 9
 VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT : 10
}

enum VkQueryType : int {
 VK_QUERY_TYPE_OCCLUSION : 0
 VK_QUERY_TYPE_PIPELINE_STATISTICS : 1
 VK_QUERY_TYPE_TIMESTAMP : 2
}

enum VkBorderColor : int {
 VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK : 0
 VK_BORDER_COLOR_INT_TRANSPARENT_BLACK : 1
 VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK : 2
 VK_BORDER_COLOR_INT_OPAQUE_BLACK : 3
 VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE : 4
 VK_BORDER_COLOR_INT_OPAQUE_WHITE : 5
}

enum VkPipelineBindPoint : int {
 VK_PIPELINE_BIND_POINT_GRAPHICS : 0
 VK_PIPELINE_BIND_POINT_COMPUTE : 1
}

enum VkPipelineCacheHeaderVersion : int {
 VK_PIPELINE_CACHE_HEADER_VERSION_ONE : 1
}

const VkPipelineCacheCreateFlagBits = int;
enum VkPrimitiveTopology : int {
 VK_PRIMITIVE_TOPOLOGY_POINT_LIST : 0
 VK_PRIMITIVE_TOPOLOGY_LINE_LIST : 1
 VK_PRIMITIVE_TOPOLOGY_LINE_STRIP : 2
 VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST : 3
 VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP : 4
 VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN : 5
 VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY : 6
 VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY : 7
 VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY : 8
 VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY : 9
 VK_PRIMITIVE_TOPOLOGY_PATCH_LIST : 10
}

enum VkSharingMode : int {
 VK_SHARING_MODE_EXCLUSIVE : 0
 VK_SHARING_MODE_CONCURRENT : 1
}

enum VkIndexType : int {
 VK_INDEX_TYPE_UINT16 : 0
 VK_INDEX_TYPE_UINT32 : 1
}

enum VkFilter : int {
 VK_FILTER_NEAREST : 0
 VK_FILTER_LINEAR : 1
}

enum VkSamplerMipmapMode : int {
 VK_SAMPLER_MIPMAP_MODE_NEAREST : 0
 VK_SAMPLER_MIPMAP_MODE_LINEAR : 1
}

enum VkSamplerAddressMode : int {
 VK_SAMPLER_ADDRESS_MODE_REPEAT : 0
 VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT : 1
 VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE : 2
 VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER : 3
}

enum VkCompareOp : int {
 VK_COMPARE_OP_NEVER : 0
 VK_COMPARE_OP_LESS : 1
 VK_COMPARE_OP_EQUAL : 2
 VK_COMPARE_OP_LESS_OR_EQUAL : 3
 VK_COMPARE_OP_GREATER : 4
 VK_COMPARE_OP_NOT_EQUAL : 5
 VK_COMPARE_OP_GREATER_OR_EQUAL : 6
 VK_COMPARE_OP_ALWAYS : 7
}

enum VkPolygonMode : int {
 VK_POLYGON_MODE_FILL : 0
 VK_POLYGON_MODE_LINE : 1
 VK_POLYGON_MODE_POINT : 2
}

enum VkFrontFace : int {
 VK_FRONT_FACE_COUNTER_CLOCKWISE : 0
 VK_FRONT_FACE_CLOCKWISE : 1
}

enum VkBlendFactor : int {
 VK_BLEND_FACTOR_ZERO : 0
 VK_BLEND_FACTOR_ONE : 1
 VK_BLEND_FACTOR_SRC_COLOR : 2
 VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR : 3
 VK_BLEND_FACTOR_DST_COLOR : 4
 VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR : 5
 VK_BLEND_FACTOR_SRC_ALPHA : 6
 VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA : 7
 VK_BLEND_FACTOR_DST_ALPHA : 8
 VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA : 9
 VK_BLEND_FACTOR_CONSTANT_COLOR : 10
 VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR : 11
 VK_BLEND_FACTOR_CONSTANT_ALPHA : 12
 VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA : 13
 VK_BLEND_FACTOR_SRC_ALPHA_SATURATE : 14
 VK_BLEND_FACTOR_SRC1_COLOR : 15
 VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR : 16
 VK_BLEND_FACTOR_SRC1_ALPHA : 17
 VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA : 18
}

enum VkBlendOp : int {
 VK_BLEND_OP_ADD : 0
 VK_BLEND_OP_SUBTRACT : 1
 VK_BLEND_OP_REVERSE_SUBTRACT : 2
 VK_BLEND_OP_MIN : 3
 VK_BLEND_OP_MAX : 4
}

enum VkStencilOp : int {
 VK_STENCIL_OP_KEEP : 0
 VK_STENCIL_OP_ZERO : 1
 VK_STENCIL_OP_REPLACE : 2
 VK_STENCIL_OP_INCREMENT_AND_CLAMP : 3
 VK_STENCIL_OP_DECREMENT_AND_CLAMP : 4
 VK_STENCIL_OP_INVERT : 5
 VK_STENCIL_OP_INCREMENT_AND_WRAP : 6
 VK_STENCIL_OP_DECREMENT_AND_WRAP : 7
}

enum VkLogicOp : int {
 VK_LOGIC_OP_CLEAR : 0
 VK_LOGIC_OP_AND : 1
 VK_LOGIC_OP_AND_REVERSE : 2
 VK_LOGIC_OP_COPY : 3
 VK_LOGIC_OP_AND_INVERTED : 4
 VK_LOGIC_OP_NO_OP : 5
 VK_LOGIC_OP_XOR : 6
 VK_LOGIC_OP_OR : 7
 VK_LOGIC_OP_NOR : 8
 VK_LOGIC_OP_EQUIVALENT : 9
 VK_LOGIC_OP_INVERT : 10
 VK_LOGIC_OP_OR_REVERSE : 11
 VK_LOGIC_OP_COPY_INVERTED : 12
 VK_LOGIC_OP_OR_INVERTED : 13
 VK_LOGIC_OP_NAND : 14
 VK_LOGIC_OP_SET : 15
}

enum VkInternalAllocationType : int {
 VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE : 0
}

enum VkSystemAllocationScope : int {
 VK_SYSTEM_ALLOCATION_SCOPE_COMMAND : 0
 VK_SYSTEM_ALLOCATION_SCOPE_OBJECT : 1
 VK_SYSTEM_ALLOCATION_SCOPE_CACHE : 2
 VK_SYSTEM_ALLOCATION_SCOPE_DEVICE : 3
 VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE : 4
}

enum VkPhysicalDeviceType : int {
 VK_PHYSICAL_DEVICE_TYPE_OTHER : 0
 VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU : 1
 VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU : 2
 VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU : 3
 VK_PHYSICAL_DEVICE_TYPE_CPU : 4
}

enum VkVertexInputRate : int {
 VK_VERTEX_INPUT_RATE_VERTEX : 0
 VK_VERTEX_INPUT_RATE_INSTANCE : 1
}

enum VkFormat : int {
 VK_FORMAT_UNDEFINED : 0
 VK_FORMAT_R4G4_UNORM_PACK8 : 1
 VK_FORMAT_R4G4B4A4_UNORM_PACK16 : 2
 VK_FORMAT_B4G4R4A4_UNORM_PACK16 : 3
 VK_FORMAT_R5G6B5_UNORM_PACK16 : 4
 VK_FORMAT_B5G6R5_UNORM_PACK16 : 5
 VK_FORMAT_R5G5B5A1_UNORM_PACK16 : 6
 VK_FORMAT_B5G5R5A1_UNORM_PACK16 : 7
 VK_FORMAT_A1R5G5B5_UNORM_PACK16 : 8
 VK_FORMAT_R8_UNORM : 9
 VK_FORMAT_R8_SNORM : 10
 VK_FORMAT_R8_USCALED : 11
 VK_FORMAT_R8_SSCALED : 12
 VK_FORMAT_R8_UINT : 13
 VK_FORMAT_R8_SINT : 14
 VK_FORMAT_R8_SRGB : 15
 VK_FORMAT_R8G8_UNORM : 16
 VK_FORMAT_R8G8_SNORM : 17
 VK_FORMAT_R8G8_USCALED : 18
 VK_FORMAT_R8G8_SSCALED : 19
 VK_FORMAT_R8G8_UINT : 20
 VK_FORMAT_R8G8_SINT : 21
 VK_FORMAT_R8G8_SRGB : 22
 VK_FORMAT_R8G8B8_UNORM : 23
 VK_FORMAT_R8G8B8_SNORM : 24
 VK_FORMAT_R8G8B8_USCALED : 25
 VK_FORMAT_R8G8B8_SSCALED : 26
 VK_FORMAT_R8G8B8_UINT : 27
 VK_FORMAT_R8G8B8_SINT : 28
 VK_FORMAT_R8G8B8_SRGB : 29
 VK_FORMAT_B8G8R8_UNORM : 30
 VK_FORMAT_B8G8R8_SNORM : 31
 VK_FORMAT_B8G8R8_USCALED : 32
 VK_FORMAT_B8G8R8_SSCALED : 33
 VK_FORMAT_B8G8R8_UINT : 34
 VK_FORMAT_B8G8R8_SINT : 35
 VK_FORMAT_B8G8R8_SRGB : 36
 VK_FORMAT_R8G8B8A8_UNORM : 37
 VK_FORMAT_R8G8B8A8_SNORM : 38
 VK_FORMAT_R8G8B8A8_USCALED : 39
 VK_FORMAT_R8G8B8A8_SSCALED : 40
 VK_FORMAT_R8G8B8A8_UINT : 41
 VK_FORMAT_R8G8B8A8_SINT : 42
 VK_FORMAT_R8G8B8A8_SRGB : 43
 VK_FORMAT_B8G8R8A8_UNORM : 44
 VK_FORMAT_B8G8R8A8_SNORM : 45
 VK_FORMAT_B8G8R8A8_USCALED : 46
 VK_FORMAT_B8G8R8A8_SSCALED : 47
 VK_FORMAT_B8G8R8A8_UINT : 48
 VK_FORMAT_B8G8R8A8_SINT : 49
 VK_FORMAT_B8G8R8A8_SRGB : 50
 VK_FORMAT_A8B8G8R8_UNORM_PACK32 : 51
 VK_FORMAT_A8B8G8R8_SNORM_PACK32 : 52
 VK_FORMAT_A8B8G8R8_USCALED_PACK32 : 53
 VK_FORMAT_A8B8G8R8_SSCALED_PACK32 : 54
 VK_FORMAT_A8B8G8R8_UINT_PACK32 : 55
 VK_FORMAT_A8B8G8R8_SINT_PACK32 : 56
 VK_FORMAT_A8B8G8R8_SRGB_PACK32 : 57
 VK_FORMAT_A2R10G10B10_UNORM_PACK32 : 58
 VK_FORMAT_A2R10G10B10_SNORM_PACK32 : 59
 VK_FORMAT_A2R10G10B10_USCALED_PACK32 : 60
 VK_FORMAT_A2R10G10B10_SSCALED_PACK32 : 61
 VK_FORMAT_A2R10G10B10_UINT_PACK32 : 62
 VK_FORMAT_A2R10G10B10_SINT_PACK32 : 63
 VK_FORMAT_A2B10G10R10_UNORM_PACK32 : 64
 VK_FORMAT_A2B10G10R10_SNORM_PACK32 : 65
 VK_FORMAT_A2B10G10R10_USCALED_PACK32 : 66
 VK_FORMAT_A2B10G10R10_SSCALED_PACK32 : 67
 VK_FORMAT_A2B10G10R10_UINT_PACK32 : 68
 VK_FORMAT_A2B10G10R10_SINT_PACK32 : 69
 VK_FORMAT_R16_UNORM : 70
 VK_FORMAT_R16_SNORM : 71
 VK_FORMAT_R16_USCALED : 72
 VK_FORMAT_R16_SSCALED : 73
 VK_FORMAT_R16_UINT : 74
 VK_FORMAT_R16_SINT : 75
 VK_FORMAT_R16_SFLOAT : 76
 VK_FORMAT_R16G16_UNORM : 77
 VK_FORMAT_R16G16_SNORM : 78
 VK_FORMAT_R16G16_USCALED : 79
 VK_FORMAT_R16G16_SSCALED : 80
 VK_FORMAT_R16G16_UINT : 81
 VK_FORMAT_R16G16_SINT : 82
 VK_FORMAT_R16G16_SFLOAT : 83
 VK_FORMAT_R16G16B16_UNORM : 84
 VK_FORMAT_R16G16B16_SNORM : 85
 VK_FORMAT_R16G16B16_USCALED : 86
 VK_FORMAT_R16G16B16_SSCALED : 87
 VK_FORMAT_R16G16B16_UINT : 88
 VK_FORMAT_R16G16B16_SINT : 89
 VK_FORMAT_R16G16B16_SFLOAT : 90
 VK_FORMAT_R16G16B16A16_UNORM : 91
 VK_FORMAT_R16G16B16A16_SNORM : 92
 VK_FORMAT_R16G16B16A16_USCALED : 93
 VK_FORMAT_R16G16B16A16_SSCALED : 94
 VK_FORMAT_R16G16B16A16_UINT : 95
 VK_FORMAT_R16G16B16A16_SINT : 96
 VK_FORMAT_R16G16B16A16_SFLOAT : 97
 VK_FORMAT_R32_UINT : 98
 VK_FORMAT_R32_SINT : 99
 VK_FORMAT_R32_SFLOAT : 100
 VK_FORMAT_R32G32_UINT : 101
 VK_FORMAT_R32G32_SINT : 102
 VK_FORMAT_R32G32_SFLOAT : 103
 VK_FORMAT_R32G32B32_UINT : 104
 VK_FORMAT_R32G32B32_SINT : 105
 VK_FORMAT_R32G32B32_SFLOAT : 106
 VK_FORMAT_R32G32B32A32_UINT : 107
 VK_FORMAT_R32G32B32A32_SINT : 108
 VK_FORMAT_R32G32B32A32_SFLOAT : 109
 VK_FORMAT_R64_UINT : 110
 VK_FORMAT_R64_SINT : 111
 VK_FORMAT_R64_SFLOAT : 112
 VK_FORMAT_R64G64_UINT : 113
 VK_FORMAT_R64G64_SINT : 114
 VK_FORMAT_R64G64_SFLOAT : 115
 VK_FORMAT_R64G64B64_UINT : 116
 VK_FORMAT_R64G64B64_SINT : 117
 VK_FORMAT_R64G64B64_SFLOAT : 118
 VK_FORMAT_R64G64B64A64_UINT : 119
 VK_FORMAT_R64G64B64A64_SINT : 120
 VK_FORMAT_R64G64B64A64_SFLOAT : 121
 VK_FORMAT_B10G11R11_UFLOAT_PACK32 : 122
 VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 : 123
 VK_FORMAT_D16_UNORM : 124
 VK_FORMAT_X8_D24_UNORM_PACK32 : 125
 VK_FORMAT_D32_SFLOAT : 126
 VK_FORMAT_S8_UINT : 127
 VK_FORMAT_D16_UNORM_S8_UINT : 128
 VK_FORMAT_D24_UNORM_S8_UINT : 129
 VK_FORMAT_D32_SFLOAT_S8_UINT : 130
 VK_FORMAT_BC1_RGB_UNORM_BLOCK : 131
 VK_FORMAT_BC1_RGB_SRGB_BLOCK : 132
 VK_FORMAT_BC1_RGBA_UNORM_BLOCK : 133
 VK_FORMAT_BC1_RGBA_SRGB_BLOCK : 134
 VK_FORMAT_BC2_UNORM_BLOCK : 135
 VK_FORMAT_BC2_SRGB_BLOCK : 136
 VK_FORMAT_BC3_UNORM_BLOCK : 137
 VK_FORMAT_BC3_SRGB_BLOCK : 138
 VK_FORMAT_BC4_UNORM_BLOCK : 139
 VK_FORMAT_BC4_SNORM_BLOCK : 140
 VK_FORMAT_BC5_UNORM_BLOCK : 141
 VK_FORMAT_BC5_SNORM_BLOCK : 142
 VK_FORMAT_BC6H_UFLOAT_BLOCK : 143
 VK_FORMAT_BC6H_SFLOAT_BLOCK : 144
 VK_FORMAT_BC7_UNORM_BLOCK : 145
 VK_FORMAT_BC7_SRGB_BLOCK : 146
 VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK : 147
 VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK : 148
 VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK : 149
 VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK : 150
 VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK : 151
 VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK : 152
 VK_FORMAT_EAC_R11_UNORM_BLOCK : 153
 VK_FORMAT_EAC_R11_SNORM_BLOCK : 154
 VK_FORMAT_EAC_R11G11_UNORM_BLOCK : 155
 VK_FORMAT_EAC_R11G11_SNORM_BLOCK : 156
 VK_FORMAT_ASTC_4x4_UNORM_BLOCK : 157
 VK_FORMAT_ASTC_4x4_SRGB_BLOCK : 158
 VK_FORMAT_ASTC_5x4_UNORM_BLOCK : 159
 VK_FORMAT_ASTC_5x4_SRGB_BLOCK : 160
 VK_FORMAT_ASTC_5x5_UNORM_BLOCK : 161
 VK_FORMAT_ASTC_5x5_SRGB_BLOCK : 162
 VK_FORMAT_ASTC_6x5_UNORM_BLOCK : 163
 VK_FORMAT_ASTC_6x5_SRGB_BLOCK : 164
 VK_FORMAT_ASTC_6x6_UNORM_BLOCK : 165
 VK_FORMAT_ASTC_6x6_SRGB_BLOCK : 166
 VK_FORMAT_ASTC_8x5_UNORM_BLOCK : 167
 VK_FORMAT_ASTC_8x5_SRGB_BLOCK : 168
 VK_FORMAT_ASTC_8x6_UNORM_BLOCK : 169
 VK_FORMAT_ASTC_8x6_SRGB_BLOCK : 170
 VK_FORMAT_ASTC_8x8_UNORM_BLOCK : 171
 VK_FORMAT_ASTC_8x8_SRGB_BLOCK : 172
 VK_FORMAT_ASTC_10x5_UNORM_BLOCK : 173
 VK_FORMAT_ASTC_10x5_SRGB_BLOCK : 174
 VK_FORMAT_ASTC_10x6_UNORM_BLOCK : 175
 VK_FORMAT_ASTC_10x6_SRGB_BLOCK : 176
 VK_FORMAT_ASTC_10x8_UNORM_BLOCK : 177
 VK_FORMAT_ASTC_10x8_SRGB_BLOCK : 178
 VK_FORMAT_ASTC_10x10_UNORM_BLOCK : 179
 VK_FORMAT_ASTC_10x10_SRGB_BLOCK : 180
 VK_FORMAT_ASTC_12x10_UNORM_BLOCK : 181
 VK_FORMAT_ASTC_12x10_SRGB_BLOCK : 182
 VK_FORMAT_ASTC_12x12_UNORM_BLOCK : 183
 VK_FORMAT_ASTC_12x12_SRGB_BLOCK : 184
}

enum VkStructureType : int {
 VK_STRUCTURE_TYPE_APPLICATION_INFO : 0
 VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO : 1
 VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO : 2
 VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO : 3
 VK_STRUCTURE_TYPE_SUBMIT_INFO : 4
 VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO : 5
 VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE : 6
 VK_STRUCTURE_TYPE_BIND_SPARSE_INFO : 7
 VK_STRUCTURE_TYPE_FENCE_CREATE_INFO : 8
 VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO : 9
 VK_STRUCTURE_TYPE_EVENT_CREATE_INFO : 10
 VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO : 11
 VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO : 12
 VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO : 13
 VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO : 14
 VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO : 15
 VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO : 16
 VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO : 17
 VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO : 18
 VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO : 19
 VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO : 20
 VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO : 21
 VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO : 22
 VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO : 23
 VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO : 24
 VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO : 25
 VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO : 26
 VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO : 27
 VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO : 28
 VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO : 29
 VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO : 30
 VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO : 31
 VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO : 32
 VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO : 33
 VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO : 34
 VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET : 35
 VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET : 36
 VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO : 37
 VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO : 38
 VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO : 39
 VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO : 40
 VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO : 41
 VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO : 42
 VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO : 43
 VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER : 44
 VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER : 45
 VK_STRUCTURE_TYPE_MEMORY_BARRIER : 46
 VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO : 47
 VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO : 48
}

enum VkSubpassContents : int {
 VK_SUBPASS_CONTENTS_INLINE : 0
 VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS : 1
}

enum VkResult : int {
 VK_SUCCESS : 0
 VK_NOT_READY : 1
 VK_TIMEOUT : 2
 VK_EVENT_SET : 3
 VK_EVENT_RESET : 4
 VK_INCOMPLETE : 5
 VK_ERROR_OUT_OF_HOST_MEMORY : -1
 VK_ERROR_OUT_OF_DEVICE_MEMORY : -2
 VK_ERROR_INITIALIZATION_FAILED : -3
 VK_ERROR_DEVICE_LOST : -4
 VK_ERROR_MEMORY_MAP_FAILED : -5
 VK_ERROR_LAYER_NOT_PRESENT : -6
 VK_ERROR_EXTENSION_NOT_PRESENT : -7
 VK_ERROR_FEATURE_NOT_PRESENT : -8
 VK_ERROR_INCOMPATIBLE_DRIVER : -9
 VK_ERROR_TOO_MANY_OBJECTS : -10
 VK_ERROR_FORMAT_NOT_SUPPORTED : -11
 VK_ERROR_FRAGMENTED_POOL : -12
 VK_ERROR_UNKNOWN : -13
}

enum VkDynamicState : int {
 VK_DYNAMIC_STATE_VIEWPORT : 0
 VK_DYNAMIC_STATE_SCISSOR : 1
 VK_DYNAMIC_STATE_LINE_WIDTH : 2
 VK_DYNAMIC_STATE_DEPTH_BIAS : 3
 VK_DYNAMIC_STATE_BLEND_CONSTANTS : 4
 VK_DYNAMIC_STATE_DEPTH_BOUNDS : 5
 VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK : 6
 VK_DYNAMIC_STATE_STENCIL_WRITE_MASK : 7
 VK_DYNAMIC_STATE_STENCIL_REFERENCE : 8
}

enum VkDescriptorUpdateTemplateType : int {
 VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET : 0
}

enum VkObjectType : int {
 VK_OBJECT_TYPE_UNKNOWN : 0
 VK_OBJECT_TYPE_INSTANCE : 1
 VK_OBJECT_TYPE_PHYSICAL_DEVICE : 2
 VK_OBJECT_TYPE_DEVICE : 3
 VK_OBJECT_TYPE_QUEUE : 4
 VK_OBJECT_TYPE_SEMAPHORE : 5
 VK_OBJECT_TYPE_COMMAND_BUFFER : 6
 VK_OBJECT_TYPE_FENCE : 7
 VK_OBJECT_TYPE_DEVICE_MEMORY : 8
 VK_OBJECT_TYPE_BUFFER : 9
 VK_OBJECT_TYPE_IMAGE : 10
 VK_OBJECT_TYPE_EVENT : 11
 VK_OBJECT_TYPE_QUERY_POOL : 12
 VK_OBJECT_TYPE_BUFFER_VIEW : 13
 VK_OBJECT_TYPE_IMAGE_VIEW : 14
 VK_OBJECT_TYPE_SHADER_MODULE : 15
 VK_OBJECT_TYPE_PIPELINE_CACHE : 16
 VK_OBJECT_TYPE_PIPELINE_LAYOUT : 17
 VK_OBJECT_TYPE_RENDER_PASS : 18
 VK_OBJECT_TYPE_PIPELINE : 19
 VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT : 20
 VK_OBJECT_TYPE_SAMPLER : 21
 VK_OBJECT_TYPE_DESCRIPTOR_POOL : 22
 VK_OBJECT_TYPE_DESCRIPTOR_SET : 23
 VK_OBJECT_TYPE_FRAMEBUFFER : 24
 VK_OBJECT_TYPE_COMMAND_POOL : 25
}

enum VkRayTracingInvocationReorderModeNV : int {
 VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV : 0
 VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV : 1
}

enum VkDirectDriverLoadingModeLUNARG : int {
 VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG : 0
 VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG : 1
}

const VkQueueFlagBits = int;
const VkCullModeFlagBits = int;
const VkRenderPassCreateFlagBits = int;
const VkDeviceQueueCreateFlagBits = int;
const VkMemoryPropertyFlagBits = int;
const VkMemoryHeapFlagBits = int;
const VkAccessFlagBits = int;
const VkBufferUsageFlagBits = int;
const VkBufferCreateFlagBits = int;
const VkShaderStageFlagBits = int;
const VkImageUsageFlagBits = int;
const VkImageCreateFlagBits = int;
const VkImageViewCreateFlagBits = int;
const VkSamplerCreateFlagBits = int;
const VkPipelineCreateFlagBits = int;
const VkPipelineShaderStageCreateFlagBits = int;
const VkColorComponentFlagBits = int;
const VkFenceCreateFlagBits = int;
const VkSemaphoreCreateFlagBits = int;
const VkFormatFeatureFlagBits = int;
const VkQueryControlFlagBits = int;
const VkQueryResultFlagBits = int;
const VkCommandBufferUsageFlagBits = int;
const VkQueryPipelineStatisticFlagBits = int;
const VkImageAspectFlagBits = int;
const VkSparseImageFormatFlagBits = int;
const VkSparseMemoryBindFlagBits = int;
const VkPipelineStageFlagBits = int;
const VkCommandPoolCreateFlagBits = int;
const VkCommandPoolResetFlagBits = int;
const VkCommandBufferResetFlagBits = int;
const VkSampleCountFlagBits = int;
const VkAttachmentDescriptionFlagBits = int;
const VkStencilFaceFlagBits = int;
const VkDescriptorPoolCreateFlagBits = int;
const VkDependencyFlagBits = int;
enum VkSemaphoreType : int {
 VK_SEMAPHORE_TYPE_BINARY : 0
 VK_SEMAPHORE_TYPE_TIMELINE : 1
}

const VkSemaphoreWaitFlagBits = int;
enum VkPresentModeKHR : int {
 VK_PRESENT_MODE_IMMEDIATE_KHR : 0
 VK_PRESENT_MODE_MAILBOX_KHR : 1
 VK_PRESENT_MODE_FIFO_KHR : 2
 VK_PRESENT_MODE_FIFO_RELAXED_KHR : 3
}

enum VkColorSpaceKHR : int {
 VK_COLOR_SPACE_SRGB_NONLINEAR_KHR : 0
 VK_COLORSPACE_SRGB_NONLINEAR_KHR : null
}

const VkDisplayPlaneAlphaFlagBitsKHR = int;
const VkCompositeAlphaFlagBitsKHR = int;
const VkSurfaceTransformFlagBitsKHR = int;
const VkSwapchainImageUsageFlagBitsANDROID = int;
enum VkTimeDomainEXT : int {
 VK_TIME_DOMAIN_DEVICE_EXT : 0
 VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT : 1
 VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT : 2
 VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT : 3
}

const VkDebugReportFlagBitsEXT = int;
enum VkDebugReportObjectTypeEXT : int {
 VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT : 0
 VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT : 1
 VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT : 2
 VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT : 3
 VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT : 4
 VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT : 5
 VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT : 6
 VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT : 7
 VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT : 8
 VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT : 9
 VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT : 10
 VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT : 11
 VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT : 12
 VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT : 13
 VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT : 14
 VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT : 15
 VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT : 16
 VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT : 17
 VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT : 18
 VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT : 19
 VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT : 20
 VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT : 21
 VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT : 22
 VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT : 23
 VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT : 24
 VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT : 25
 VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT : 26
 VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT : 27
 VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT : 28
 VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT : null
 VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT : 29
 VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT : 30
 VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT : 33
 VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT : null
}

enum VkDeviceMemoryReportEventTypeEXT : int {
 VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT : 0
 VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT : 1
 VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT : 2
 VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT : 3
 VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT : 4
}

enum VkRasterizationOrderAMD : int {
 VK_RASTERIZATION_ORDER_STRICT_AMD : 0
 VK_RASTERIZATION_ORDER_RELAXED_AMD : 1
}

const VkExternalMemoryHandleTypeFlagBitsNV = int;
const VkExternalMemoryFeatureFlagBitsNV = int;
enum VkValidationCheckEXT : int {
 VK_VALIDATION_CHECK_ALL_EXT : 0
 VK_VALIDATION_CHECK_SHADERS_EXT : 1
}

enum VkValidationFeatureEnableEXT : int {
 VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT : 0
 VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT : 1
 VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT : 2
 VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT : 3
 VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT : 4
}

enum VkValidationFeatureDisableEXT : int {
 VK_VALIDATION_FEATURE_DISABLE_ALL_EXT : 0
 VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT : 1
 VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT : 2
 VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT : 3
 VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT : 4
 VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT : 5
 VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT : 6
 VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT : 7
}

const VkSubgroupFeatureFlagBits = int;
const VkIndirectCommandsLayoutUsageFlagBitsNV = int;
const VkIndirectStateFlagBitsNV = int;
enum VkIndirectCommandsTokenTypeNV : int {
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV : 0
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV : 1
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV : 2
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV : 3
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV : 4
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV : 5
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV : 6
 VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV : 7
}

const VkPrivateDataSlotCreateFlagBits = int;
const VkDescriptorSetLayoutCreateFlagBits = int;
const VkExternalMemoryHandleTypeFlagBits = int;
const VkExternalMemoryFeatureFlagBits = int;
const VkExternalSemaphoreHandleTypeFlagBits = int;
const VkExternalSemaphoreFeatureFlagBits = int;
const VkSemaphoreImportFlagBits = int;
const VkExternalFenceHandleTypeFlagBits = int;
const VkExternalFenceFeatureFlagBits = int;
const VkFenceImportFlagBits = int;
const VkSurfaceCounterFlagBitsEXT = int;
enum VkDisplayPowerStateEXT : int {
 VK_DISPLAY_POWER_STATE_OFF_EXT : 0
 VK_DISPLAY_POWER_STATE_SUSPEND_EXT : 1
 VK_DISPLAY_POWER_STATE_ON_EXT : 2
}

enum VkDeviceEventTypeEXT : int {
 VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT : 0
}

enum VkDisplayEventTypeEXT : int {
 VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT : 0
}

const VkPeerMemoryFeatureFlagBits = int;
const VkMemoryAllocateFlagBits = int;
const VkDeviceGroupPresentModeFlagBitsKHR = int;
const VkSwapchainCreateFlagBitsKHR = int;
enum VkViewportCoordinateSwizzleNV : int {
 VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV : 0
 VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV : 1
 VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV : 2
 VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV : 3
 VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV : 4
 VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV : 5
 VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV : 6
 VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV : 7
}

enum VkDiscardRectangleModeEXT : int {
 VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT : 0
 VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT : 1
}

const VkSubpassDescriptionFlagBits = int;
enum VkPointClippingBehavior : int {
 VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES : 0
 VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY : 1
}

enum VkSamplerReductionMode : int {
 VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE : 0
 VK_SAMPLER_REDUCTION_MODE_MIN : 1
 VK_SAMPLER_REDUCTION_MODE_MAX : 2
}

enum VkTessellationDomainOrigin : int {
 VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT : 0
 VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT : 1
}

enum VkSamplerYcbcrModelConversion : int {
 VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY : 0
 VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY : 1
 VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 : 2
 VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 : 3
 VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 : 4
}

enum VkSamplerYcbcrRange : int {
 VK_SAMPLER_YCBCR_RANGE_ITU_FULL : 0
 VK_SAMPLER_YCBCR_RANGE_ITU_NARROW : 1
}

enum VkChromaLocation : int {
 VK_CHROMA_LOCATION_COSITED_EVEN : 0
 VK_CHROMA_LOCATION_MIDPOINT : 1
}

enum VkBlendOverlapEXT : int {
 VK_BLEND_OVERLAP_UNCORRELATED_EXT : 0
 VK_BLEND_OVERLAP_DISJOINT_EXT : 1
 VK_BLEND_OVERLAP_CONJOINT_EXT : 2
}

enum VkCoverageModulationModeNV : int {
 VK_COVERAGE_MODULATION_MODE_NONE_NV : 0
 VK_COVERAGE_MODULATION_MODE_RGB_NV : 1
 VK_COVERAGE_MODULATION_MODE_ALPHA_NV : 2
 VK_COVERAGE_MODULATION_MODE_RGBA_NV : 3
}

enum VkCoverageReductionModeNV : int {
 VK_COVERAGE_REDUCTION_MODE_MERGE_NV : 0
 VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV : 1
}

enum VkValidationCacheHeaderVersionEXT : int {
 VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT : 1
}

enum VkShaderInfoTypeAMD : int {
 VK_SHADER_INFO_TYPE_STATISTICS_AMD : 0
 VK_SHADER_INFO_TYPE_BINARY_AMD : 1
 VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD : 2
}

enum VkQueueGlobalPriorityKHR : int {
 VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR : 128
 VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR : 256
 VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR : 512
 VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR : 1024
 VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT : null
 VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT : null
 VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT : null
 VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT : null
}

const VkDebugUtilsMessageSeverityFlagBitsEXT = int;
const VkDebugUtilsMessageTypeFlagBitsEXT = int;
enum VkConservativeRasterizationModeEXT : int {
 VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT : 0
 VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT : 1
 VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT : 2
}

const VkDescriptorBindingFlagBits = int;
enum VkVendorId : int {
 VK_VENDOR_ID_VIV : 0x10001
 VK_VENDOR_ID_VSI : 0x10002
 VK_VENDOR_ID_KAZAN : 0x10003
 VK_VENDOR_ID_CODEPLAY : 0x10004
 VK_VENDOR_ID_MESA : 0x10005
 VK_VENDOR_ID_POCL : 0x10006
 VK_VENDOR_ID_MOBILEYE : 0x10007
}

enum VkDriverId : int {
 VK_DRIVER_ID_AMD_PROPRIETARY : 1
 VK_DRIVER_ID_AMD_OPEN_SOURCE : 2
 VK_DRIVER_ID_MESA_RADV : 3
 VK_DRIVER_ID_NVIDIA_PROPRIETARY : 4
 VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS : 5
 VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA : 6
 VK_DRIVER_ID_IMAGINATION_PROPRIETARY : 7
 VK_DRIVER_ID_QUALCOMM_PROPRIETARY : 8
 VK_DRIVER_ID_ARM_PROPRIETARY : 9
 VK_DRIVER_ID_GOOGLE_SWIFTSHADER : 10
 VK_DRIVER_ID_GGP_PROPRIETARY : 11
 VK_DRIVER_ID_BROADCOM_PROPRIETARY : 12
 VK_DRIVER_ID_MESA_LLVMPIPE : 13
 VK_DRIVER_ID_MOLTENVK : 14
 VK_DRIVER_ID_COREAVI_PROPRIETARY : 15
 VK_DRIVER_ID_JUICE_PROPRIETARY : 16
 VK_DRIVER_ID_VERISILICON_PROPRIETARY : 17
 VK_DRIVER_ID_MESA_TURNIP : 18
 VK_DRIVER_ID_MESA_V3DV : 19
 VK_DRIVER_ID_MESA_PANVK : 20
 VK_DRIVER_ID_SAMSUNG_PROPRIETARY : 21
 VK_DRIVER_ID_MESA_VENUS : 22
 VK_DRIVER_ID_MESA_DOZEN : 23
 VK_DRIVER_ID_MESA_NVK : 24
 VK_DRIVER_ID_IMAGINATION_OPEN_SOURCE_MESA : 25
}

const VkConditionalRenderingFlagBitsEXT = int;
const VkResolveModeFlagBits = int;
enum VkShadingRatePaletteEntryNV : int {
 VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV : 0
 VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV : 1
 VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV : 2
 VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV : 3
 VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV : 4
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV : 5
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV : 6
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV : 7
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV : 8
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV : 9
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV : 10
 VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV : 11
}

enum VkCoarseSampleOrderTypeNV : int {
 VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV : 0
 VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV : 1
 VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV : 2
 VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV : 3
}

const VkGeometryInstanceFlagBitsKHR = int;
const VkGeometryFlagBitsKHR = int;
const VkBuildAccelerationStructureFlagBitsKHR = int;
const VkAccelerationStructureCreateFlagBitsKHR = int;
enum VkCopyAccelerationStructureModeKHR : int {
 VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR : 0
 VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR : 1
 VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR : 2
 VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR : 3
}

enum VkBuildAccelerationStructureModeKHR : int {
 VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR : 0
 VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR : 1
}

enum VkAccelerationStructureTypeKHR : int {
 VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR : 0
 VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR : 1
 VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR : 2
}

enum VkGeometryTypeKHR : int {
 VK_GEOMETRY_TYPE_TRIANGLES_KHR : 0
 VK_GEOMETRY_TYPE_AABBS_KHR : 1
 VK_GEOMETRY_TYPE_INSTANCES_KHR : 2
}

enum VkAccelerationStructureMemoryRequirementsTypeNV : int {
 VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV : 0
 VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV : 1
 VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV : 2
}

enum VkAccelerationStructureBuildTypeKHR : int {
 VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR : 0
 VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR : 1
 VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR : 2
}

enum VkRayTracingShaderGroupTypeKHR : int {
 VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR : 0
 VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR : 1
 VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR : 2
}

enum VkAccelerationStructureCompatibilityKHR : int {
 VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR : 0
 VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR : 1
}

enum VkShaderGroupShaderKHR : int {
 VK_SHADER_GROUP_SHADER_GENERAL_KHR : 0
 VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR : 1
 VK_SHADER_GROUP_SHADER_ANY_HIT_KHR : 2
 VK_SHADER_GROUP_SHADER_INTERSECTION_KHR : 3
}

enum VkMemoryOverallocationBehaviorAMD : int {
 VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD : 0
 VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD : 1
 VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD : 2
}

const VkFramebufferCreateFlagBits = int;
enum VkScopeNV : int {
 VK_SCOPE_DEVICE_NV : 1
 VK_SCOPE_WORKGROUP_NV : 2
 VK_SCOPE_SUBGROUP_NV : 3
 VK_SCOPE_QUEUE_FAMILY_NV : 5
}

enum VkComponentTypeNV : int {
 VK_COMPONENT_TYPE_FLOAT16_NV : 0
 VK_COMPONENT_TYPE_FLOAT32_NV : 1
 VK_COMPONENT_TYPE_FLOAT64_NV : 2
 VK_COMPONENT_TYPE_SINT8_NV : 3
 VK_COMPONENT_TYPE_SINT16_NV : 4
 VK_COMPONENT_TYPE_SINT32_NV : 5
 VK_COMPONENT_TYPE_SINT64_NV : 6
 VK_COMPONENT_TYPE_UINT8_NV : 7
 VK_COMPONENT_TYPE_UINT16_NV : 8
 VK_COMPONENT_TYPE_UINT32_NV : 9
 VK_COMPONENT_TYPE_UINT64_NV : 10
}

const VkDeviceDiagnosticsConfigFlagBitsNV = int;
const VkPipelineCreationFeedbackFlagBits = int;
enum VkFullScreenExclusiveEXT : int {
 VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT : 0
 VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT : 1
 VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT : 2
 VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT : 3
}

enum VkPerformanceCounterScopeKHR : int {
 VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR : 0
 VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR : 1
 VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR : 2
 VK_QUERY_SCOPE_COMMAND_BUFFER_KHR : null
 VK_QUERY_SCOPE_RENDER_PASS_KHR : null
 VK_QUERY_SCOPE_COMMAND_KHR : null
}

const VkMemoryDecompressionMethodFlagBitsNV = int;
enum VkPerformanceCounterUnitKHR : int {
 VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR : 0
 VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR : 1
 VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR : 2
 VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR : 3
 VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR : 4
 VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR : 5
 VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR : 6
 VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR : 7
 VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR : 8
 VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR : 9
 VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR : 10
}

enum VkPerformanceCounterStorageKHR : int {
 VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR : 0
 VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR : 1
 VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR : 2
 VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR : 3
 VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR : 4
 VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR : 5
}

const VkPerformanceCounterDescriptionFlagBitsKHR = int;
const VkAcquireProfilingLockFlagBitsKHR = int;
const VkShaderCorePropertiesFlagBitsAMD = int;
const VkRefreshObjectFlagBitsKHR = int;
enum VkPerformanceConfigurationTypeINTEL : int {
 VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL : 0
}

enum VkQueryPoolSamplingModeINTEL : int {
 VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL : 0
}

enum VkPerformanceOverrideTypeINTEL : int {
 VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL : 0
 VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL : 1
}

enum VkPerformanceParameterTypeINTEL : int {
 VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL : 0
 VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL : 1
}

enum VkPerformanceValueTypeINTEL : int {
 VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL : 0
 VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL : 1
 VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL : 2
 VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL : 3
 VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL : 4
}

enum VkShaderFloatControlsIndependence : int {
 VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY : 0
 VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL : 1
 VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE : 2
}

enum VkPipelineExecutableStatisticFormatKHR : int {
 VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR : 0
 VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR : 1
 VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR : 2
 VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR : 3
}

enum VkLineRasterizationModeEXT : int {
 VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT : 0
 VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT : 1
 VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT : 2
 VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT : 3
}

const VkShaderModuleCreateFlagBits = int;
const VkPipelineCompilerControlFlagBitsAMD = int;
enum VkFaultLevel : int {
 VK_FAULT_LEVEL_UNASSIGNED : 0
 VK_FAULT_LEVEL_CRITICAL : 1
 VK_FAULT_LEVEL_RECOVERABLE : 2
 VK_FAULT_LEVEL_WARNING : 3
}

enum VkFaultType : int {
 VK_FAULT_TYPE_INVALID : 0
 VK_FAULT_TYPE_UNASSIGNED : 1
 VK_FAULT_TYPE_IMPLEMENTATION : 2
 VK_FAULT_TYPE_SYSTEM : 3
 VK_FAULT_TYPE_PHYSICAL_DEVICE : 4
 VK_FAULT_TYPE_COMMAND_BUFFER_FULL : 5
 VK_FAULT_TYPE_INVALID_API_USAGE : 6
}

enum VkFaultQueryBehavior : int {
 VK_FAULT_QUERY_BEHAVIOR_GET_AND_CLEAR_ALL_FAULTS : 0
}

const VkToolPurposeFlagBits = int;
enum VkPipelineMatchControl : int {
 VK_PIPELINE_MATCH_CONTROL_APPLICATION_UUID_EXACT_MATCH : 0
}

enum VkFragmentShadingRateCombinerOpKHR : int {
 VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR : 0
 VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR : 1
 VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR : 2
 VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR : 3
 VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR : 4
}

enum VkFragmentShadingRateNV : int {
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV : 0
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV : 1
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV : 4
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV : 5
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV : 6
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV : 9
 VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV : 10
 VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV : 11
 VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV : 12
 VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV : 13
 VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV : 14
 VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV : 15
}

enum VkFragmentShadingRateTypeNV : int {
 VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV : 0
 VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV : 1
}

enum VkSubpassMergeStatusEXT : int {
 VK_SUBPASS_MERGE_STATUS_MERGED_EXT : 0
 VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT : 1
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT : 2
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT : 3
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT : 4
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT : 5
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT : 6
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT : 7
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT : 8
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT : 9
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT : 10
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT : 11
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT : 12
 VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT : 13
}

const VkAccessFlagBits2 = int;
const VkPipelineStageFlagBits2 = int;
const VkSubmitFlagBits = int;
const VkEventCreateFlagBits = int;
const VkPipelineLayoutCreateFlagBits = int;
enum VkSciSyncClientTypeNV : int {
 VK_SCI_SYNC_CLIENT_TYPE_SIGNALER_NV : 0
 VK_SCI_SYNC_CLIENT_TYPE_WAITER_NV : 1
 VK_SCI_SYNC_CLIENT_TYPE_SIGNALER_WAITER_NV : 2
}

enum VkSciSyncPrimitiveTypeNV : int {
 VK_SCI_SYNC_PRIMITIVE_TYPE_FENCE_NV : 0
 VK_SCI_SYNC_PRIMITIVE_TYPE_SEMAPHORE_NV : 1
}

enum VkProvokingVertexModeEXT : int {
 VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT : 0
 VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT : 1
}

enum VkPipelineCacheValidationVersion : int {
 VK_PIPELINE_CACHE_VALIDATION_VERSION_SAFETY_CRITICAL_ONE : 1
}

enum VkAccelerationStructureMotionInstanceTypeNV : int {
 VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV : 0
 VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV : 1
 VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV : 2
}

const VkPipelineColorBlendStateCreateFlagBits = int;
const VkPipelineDepthStencilStateCreateFlagBits = int;
const VkGraphicsPipelineLibraryFlagBitsEXT = int;
const VkDeviceAddressBindingFlagBitsEXT = int;
enum VkDeviceAddressBindingTypeEXT : int {
 VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT : 0
 VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT : 1
}

const VkPresentScalingFlagBitsEXT = int;
const VkPresentGravityFlagBitsEXT = int;
const VkVideoCodecOperationFlagBitsKHR = int;
const VkVideoChromaSubsamplingFlagBitsKHR = int;
const VkVideoComponentBitDepthFlagBitsKHR = int;
const VkVideoCapabilityFlagBitsKHR = int;
const VkVideoSessionCreateFlagBitsKHR = int;
const VkVideoDecodeH264PictureLayoutFlagBitsKHR = int;
const VkVideoCodingControlFlagBitsKHR = int;
enum VkQueryResultStatusKHR : int {
 VK_QUERY_RESULT_STATUS_ERROR_KHR : -1
 VK_QUERY_RESULT_STATUS_NOT_READY_KHR : 0
 VK_QUERY_RESULT_STATUS_COMPLETE_KHR : 1
}

const VkVideoDecodeUsageFlagBitsKHR = int;
const VkVideoDecodeCapabilityFlagBitsKHR = int;
const VkVideoEncodeUsageFlagBitsKHR = int;
const VkVideoEncodeContentFlagBitsKHR = int;
enum VkVideoEncodeTuningModeKHR : int {
 VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR : 0
 VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR : 1
 VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR : 2
 VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR : 3
 VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR : 4
}

const VkVideoEncodeCapabilityFlagBitsKHR = int;
const VkVideoEncodeFeedbackFlagBitsKHR = int;
const VkVideoEncodeRateControlModeFlagBitsKHR = int;
const VkVideoEncodeH264CapabilityFlagBitsEXT = int;
const VkVideoEncodeH264StdFlagBitsEXT = int;
const VkVideoEncodeH264RateControlFlagBitsEXT = int;
const VkImageFormatConstraintsFlagBitsFUCHSIA = int;
const VkImageConstraintsInfoFlagBitsFUCHSIA = int;
const VkFormatFeatureFlagBits2 = int;
const VkRenderingFlagBits = int;
const VkVideoEncodeH265CapabilityFlagBitsEXT = int;
const VkVideoEncodeH265StdFlagBitsEXT = int;
const VkVideoEncodeH265RateControlFlagBitsEXT = int;
const VkVideoEncodeH265CtbSizeFlagBitsEXT = int;
const VkVideoEncodeH265TransformBlockSizeFlagBitsEXT = int;
const VkExportMetalObjectTypeFlagBitsEXT = int;
const VkInstanceCreateFlagBits = int;
const VkImageCompressionFlagBitsEXT = int;
const VkImageCompressionFixedRateFlagBitsEXT = int;
enum VkPipelineRobustnessBufferBehaviorEXT : int {
 VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT : 0
 VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT : 1
 VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT : 2
 VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT : 3
}

enum VkPipelineRobustnessImageBehaviorEXT : int {
 VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT : 0
 VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT : 1
 VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT : 2
 VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT : 3
}

const VkOpticalFlowGridSizeFlagBitsNV = int;
const VkOpticalFlowUsageFlagBitsNV = int;
enum VkOpticalFlowPerformanceLevelNV : int {
 VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV : 0
 VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV : 1
 VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV : 2
 VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV : 3
}

enum VkOpticalFlowSessionBindingPointNV : int {
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV : 0
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV : 1
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV : 2
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV : 3
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV : 4
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV : 5
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV : 6
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV : 7
 VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV : 8
}

const VkOpticalFlowSessionCreateFlagBitsNV = int;
const VkOpticalFlowExecuteFlagBitsNV = int;
enum VkMicromapTypeEXT : int {
 VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT : 0
}

const VkBuildMicromapFlagBitsEXT = int;
const VkMicromapCreateFlagBitsEXT = int;
enum VkCopyMicromapModeEXT : int {
 VK_COPY_MICROMAP_MODE_CLONE_EXT : 0
 VK_COPY_MICROMAP_MODE_SERIALIZE_EXT : 1
 VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT : 2
 VK_COPY_MICROMAP_MODE_COMPACT_EXT : 3
}

enum VkBuildMicromapModeEXT : int {
 VK_BUILD_MICROMAP_MODE_BUILD_EXT : 0
}

enum VkOpacityMicromapFormatEXT : int {
 VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT : 1
 VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT : 2
}

enum VkOpacityMicromapSpecialIndexEXT : int {
 VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT : -1
 VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT : -2
 VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT : -3
 VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT : -4
}

enum VkDepthBiasRepresentationEXT : int {
 VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORMAT_EXT : 0
 VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORCE_UNORM_EXT : 1
 VK_DEPTH_BIAS_REPRESENTATION_FLOAT_EXT : 2
}

enum VkDeviceFaultAddressTypeEXT : int {
 VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT : 0
 VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT : 1
 VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT : 2
 VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT : 3
 VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT : 4
 VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT : 5
 VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT : 6
}

enum VkDeviceFaultVendorBinaryHeaderVersionEXT : int {
 VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT : 1
}

enum VkDisplacementMicromapFormatNV : int {
 VK_DISPLACEMENT_MICROMAP_FORMAT_64_TRIANGLES_64_BYTES_NV : 1
 VK_DISPLACEMENT_MICROMAP_FORMAT_256_TRIANGLES_128_BYTES_NV : 2
 VK_DISPLACEMENT_MICROMAP_FORMAT_1024_TRIANGLES_128_BYTES_NV : 3
}

const VkShaderCreateFlagBitsEXT = int;
enum VkShaderCodeTypeEXT : int {
 VK_SHADER_CODE_TYPE_BINARY_EXT : 0
 VK_SHADER_CODE_TYPE_SPIRV_EXT : 1
}

enum VkScopeKHR : int {
 VK_SCOPE_DEVICE_KHR : 1
 VK_SCOPE_WORKGROUP_KHR : 2
 VK_SCOPE_SUBGROUP_KHR : 3
 VK_SCOPE_QUEUE_FAMILY_KHR : 5
}

enum VkComponentTypeKHR : int {
 VK_COMPONENT_TYPE_FLOAT16_KHR : 0
 VK_COMPONENT_TYPE_FLOAT32_KHR : 1
 VK_COMPONENT_TYPE_FLOAT64_KHR : 2
 VK_COMPONENT_TYPE_SINT8_KHR : 3
 VK_COMPONENT_TYPE_SINT16_KHR : 4
 VK_COMPONENT_TYPE_SINT32_KHR : 5
 VK_COMPONENT_TYPE_SINT64_KHR : 6
 VK_COMPONENT_TYPE_UINT8_KHR : 7
 VK_COMPONENT_TYPE_UINT16_KHR : 8
 VK_COMPONENT_TYPE_UINT32_KHR : 9
 VK_COMPONENT_TYPE_UINT64_KHR : 10
}

