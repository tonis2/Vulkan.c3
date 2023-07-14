module vk;

// Platform type 
def Rroutput = ulong;
def Visualid = uint;
def Display = void*;
def Window = ulong;
def Xcbconnection = void*;
def Xcbwindow = uint;
def Xcbvisualid = uint;
def Mirconnection = void*;
def Mirsurface = void*;
def Hinstance = void*;
def Hwnd = void*;
def Wldisplay = void*;
def Wlsurface = void*;
def Handle = void*;
def Hmonitor = Handle;
def Dword = ulong;
def Lpcwstr = uint*;
def Zxhandle = uint;
def Screenbuffer = void*;
def Screencontext = void*;
def Screenwindow = void*;
def Securityattributes = void*;
def Anativewindow = void*;
def Ahardwarebuffer = void*;
def Cametallayer = void*;
def Ggpstreamdescriptor = uint;
def Ggpframetoken = ulong;
def Idirectfb = void*;
def Idirectfbsurface = void*;
def Iosurface = void*;
def Iosurfaceref = __IOSurface;
def Mtlbufferid = void*;
def Mtlcommandqueueid = void*;
def Mtldeviceid = void*;
def Mtlsharedeventid = void*;
def Mtltextureid = void*;

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
def VkRemoteAddressNV = void*;

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
  VkStructureType vkBaseOutStructure;
  VkBaseOutStructure vkBaseOutStructure;
}

struct VkBaseInStructure {
  VkStructureType vkBaseInStructure;
  VkBaseInStructure vkBaseInStructure;
}

struct VkOffset2D {
  int vkOffset2D;
  int vkOffset2D;
}

struct VkOffset3D {
  int vkOffset3D;
  int vkOffset3D;
  int vkOffset3D;
}

struct VkExtent2D {
  uint vkExtent2D;
  uint vkExtent2D;
}

struct VkExtent3D {
  uint vkExtent3D;
  uint vkExtent3D;
  uint vkExtent3D;
}

struct VkViewport {
  float vkViewport;
  float vkViewport;
  float vkViewport;
  float vkViewport;
  float vkViewport;
  float vkViewport;
}

struct VkRect2D {
  VkOffset2D vkRect2D;
  VkExtent2D vkRect2D;
}

struct VkClearRect {
  VkRect2D vkClearRect;
  uint vkClearRect;
  uint vkClearRect;
}

struct VkComponentMapping {
  VkComponentSwizzle vkComponentMapping;
  VkComponentSwizzle vkComponentMapping;
  VkComponentSwizzle vkComponentMapping;
  VkComponentSwizzle vkComponentMapping;
}

struct VkPhysicalDeviceProperties {
  uint vkPhysicalDeviceProperties;
  uint vkPhysicalDeviceProperties;
  uint vkPhysicalDeviceProperties;
  uint vkPhysicalDeviceProperties;
  VkPhysicalDeviceType vkPhysicalDeviceProperties;
  char vkPhysicalDeviceProperties;
  char vkPhysicalDeviceProperties;
  VkPhysicalDeviceLimits vkPhysicalDeviceProperties;
  VkPhysicalDeviceSparseProperties vkPhysicalDeviceProperties;
}

struct VkExtensionProperties {
  char vkExtensionProperties;
  uint vkExtensionProperties;
}

struct VkLayerProperties {
  char vkLayerProperties;
  uint vkLayerProperties;
  uint vkLayerProperties;
  char vkLayerProperties;
}

struct VkApplicationInfo {
  VkStructureType vkApplicationInfo;
  void vkApplicationInfo;
  char vkApplicationInfo;
  uint vkApplicationInfo;
  char vkApplicationInfo;
  uint vkApplicationInfo;
  uint vkApplicationInfo;
}

struct VkAllocationCallbacks {
  void vkAllocationCallbacks;
  PFN_vkAllocationFunction vkAllocationCallbacks;
  PFN_vkReallocationFunction vkAllocationCallbacks;
  PFN_vkFreeFunction vkAllocationCallbacks;
  PFN_vkInternalAllocationNotification vkAllocationCallbacks;
  PFN_vkInternalFreeNotification vkAllocationCallbacks;
}

struct VkDeviceQueueCreateInfo {
  VkStructureType vkDeviceQueueCreateInfo;
  void vkDeviceQueueCreateInfo;
  VkDeviceQueueCreateFlags vkDeviceQueueCreateInfo;
  uint vkDeviceQueueCreateInfo;
  uint vkDeviceQueueCreateInfo;
  float vkDeviceQueueCreateInfo;
}

struct VkDeviceCreateInfo {
  VkStructureType vkDeviceCreateInfo;
  void vkDeviceCreateInfo;
  VkDeviceCreateFlags vkDeviceCreateInfo;
  uint vkDeviceCreateInfo;
  VkDeviceQueueCreateInfo vkDeviceCreateInfo;
  uint vkDeviceCreateInfo;
  char vkDeviceCreateInfo;
  uint vkDeviceCreateInfo;
  char vkDeviceCreateInfo;
  VkPhysicalDeviceFeatures vkDeviceCreateInfo;
}

struct VkInstanceCreateInfo {
  VkStructureType vkInstanceCreateInfo;
  void vkInstanceCreateInfo;
  VkInstanceCreateFlags vkInstanceCreateInfo;
  VkApplicationInfo vkInstanceCreateInfo;
  uint vkInstanceCreateInfo;
  char vkInstanceCreateInfo;
  uint vkInstanceCreateInfo;
  char vkInstanceCreateInfo;
}

struct VkQueueFamilyProperties {
  VkQueueFlags vkQueueFamilyProperties;
  uint vkQueueFamilyProperties;
  uint vkQueueFamilyProperties;
  VkExtent3D vkQueueFamilyProperties;
}

struct VkPhysicalDeviceMemoryProperties {
  uint vkPhysicalDeviceMemoryProperties;
  VkMemoryType vkPhysicalDeviceMemoryProperties;
  uint vkPhysicalDeviceMemoryProperties;
  VkMemoryHeap vkPhysicalDeviceMemoryProperties;
}

struct VkMemoryAllocateInfo {
  VkStructureType vkMemoryAllocateInfo;
  void vkMemoryAllocateInfo;
  VkDeviceSize vkMemoryAllocateInfo;
  uint vkMemoryAllocateInfo;
}

struct VkMemoryRequirements {
  VkDeviceSize vkMemoryRequirements;
  VkDeviceSize vkMemoryRequirements;
  uint vkMemoryRequirements;
}

struct VkSparseImageFormatProperties {
  VkImageAspectFlags vkSparseImageFormatProperties;
  VkExtent3D vkSparseImageFormatProperties;
  VkSparseImageFormatFlags vkSparseImageFormatProperties;
}

struct VkSparseImageMemoryRequirements {
  VkSparseImageFormatProperties vkSparseImageMemoryRequirements;
  uint vkSparseImageMemoryRequirements;
  VkDeviceSize vkSparseImageMemoryRequirements;
  VkDeviceSize vkSparseImageMemoryRequirements;
  VkDeviceSize vkSparseImageMemoryRequirements;
}

struct VkMemoryType {
  VkMemoryPropertyFlags vkMemoryType;
  uint vkMemoryType;
}

struct VkMemoryHeap {
  VkDeviceSize vkMemoryHeap;
  VkMemoryHeapFlags vkMemoryHeap;
}

struct VkMappedMemoryRange {
  VkStructureType vkMappedMemoryRange;
  void vkMappedMemoryRange;
  VkDeviceMemory vkMappedMemoryRange;
  VkDeviceSize vkMappedMemoryRange;
  VkDeviceSize vkMappedMemoryRange;
}

struct VkFormatProperties {
  VkFormatFeatureFlags vkFormatProperties;
  VkFormatFeatureFlags vkFormatProperties;
  VkFormatFeatureFlags vkFormatProperties;
}

struct VkImageFormatProperties {
  VkExtent3D vkImageFormatProperties;
  uint vkImageFormatProperties;
  uint vkImageFormatProperties;
  VkSampleCountFlags vkImageFormatProperties;
  VkDeviceSize vkImageFormatProperties;
}

struct VkDescriptorBufferInfo {
  VkBuffer vkDescriptorBufferInfo;
  VkDeviceSize vkDescriptorBufferInfo;
  VkDeviceSize vkDescriptorBufferInfo;
}

struct VkDescriptorImageInfo {
  VkSampler vkDescriptorImageInfo;
  VkImageView vkDescriptorImageInfo;
  VkImageLayout vkDescriptorImageInfo;
}

struct VkWriteDescriptorSet {
  VkStructureType vkWriteDescriptorSet;
  void vkWriteDescriptorSet;
  VkDescriptorSet vkWriteDescriptorSet;
  uint vkWriteDescriptorSet;
  uint vkWriteDescriptorSet;
  uint vkWriteDescriptorSet;
  VkDescriptorType vkWriteDescriptorSet;
  VkDescriptorImageInfo vkWriteDescriptorSet;
  VkDescriptorBufferInfo vkWriteDescriptorSet;
  VkBufferView vkWriteDescriptorSet;
}

struct VkCopyDescriptorSet {
  VkStructureType vkCopyDescriptorSet;
  void vkCopyDescriptorSet;
  VkDescriptorSet vkCopyDescriptorSet;
  uint vkCopyDescriptorSet;
  uint vkCopyDescriptorSet;
  VkDescriptorSet vkCopyDescriptorSet;
  uint vkCopyDescriptorSet;
  uint vkCopyDescriptorSet;
  uint vkCopyDescriptorSet;
}

struct VkBufferCreateInfo {
  VkStructureType vkBufferCreateInfo;
  void vkBufferCreateInfo;
  VkBufferCreateFlags vkBufferCreateInfo;
  VkDeviceSize vkBufferCreateInfo;
  VkBufferUsageFlags vkBufferCreateInfo;
  VkSharingMode vkBufferCreateInfo;
  uint vkBufferCreateInfo;
  uint vkBufferCreateInfo;
}

struct VkBufferViewCreateInfo {
  VkStructureType vkBufferViewCreateInfo;
  void vkBufferViewCreateInfo;
  VkBufferViewCreateFlags vkBufferViewCreateInfo;
  VkBuffer vkBufferViewCreateInfo;
  VkFormat vkBufferViewCreateInfo;
  VkDeviceSize vkBufferViewCreateInfo;
  VkDeviceSize vkBufferViewCreateInfo;
}

struct VkImageSubresource {
  VkImageAspectFlags vkImageSubresource;
  uint vkImageSubresource;
  uint vkImageSubresource;
}

struct VkImageSubresourceLayers {
  VkImageAspectFlags vkImageSubresourceLayers;
  uint vkImageSubresourceLayers;
  uint vkImageSubresourceLayers;
  uint vkImageSubresourceLayers;
}

struct VkImageSubresourceRange {
  VkImageAspectFlags vkImageSubresourceRange;
  uint vkImageSubresourceRange;
  uint vkImageSubresourceRange;
  uint vkImageSubresourceRange;
  uint vkImageSubresourceRange;
}

struct VkMemoryBarrier {
  VkStructureType vkMemoryBarrier;
  void vkMemoryBarrier;
  VkAccessFlags vkMemoryBarrier;
  VkAccessFlags vkMemoryBarrier;
}

struct VkBufferMemoryBarrier {
  VkStructureType vkBufferMemoryBarrier;
  void vkBufferMemoryBarrier;
  VkAccessFlags vkBufferMemoryBarrier;
  VkAccessFlags vkBufferMemoryBarrier;
  uint vkBufferMemoryBarrier;
  uint vkBufferMemoryBarrier;
  VkBuffer vkBufferMemoryBarrier;
  VkDeviceSize vkBufferMemoryBarrier;
  VkDeviceSize vkBufferMemoryBarrier;
}

struct VkImageMemoryBarrier {
  VkStructureType vkImageMemoryBarrier;
  void vkImageMemoryBarrier;
  VkAccessFlags vkImageMemoryBarrier;
  VkAccessFlags vkImageMemoryBarrier;
  VkImageLayout vkImageMemoryBarrier;
  VkImageLayout vkImageMemoryBarrier;
  uint vkImageMemoryBarrier;
  uint vkImageMemoryBarrier;
  VkImage vkImageMemoryBarrier;
  VkImageSubresourceRange vkImageMemoryBarrier;
}

struct VkImageCreateInfo {
  VkStructureType vkImageCreateInfo;
  void vkImageCreateInfo;
  VkImageCreateFlags vkImageCreateInfo;
  VkImageType vkImageCreateInfo;
  VkFormat vkImageCreateInfo;
  VkExtent3D vkImageCreateInfo;
  uint vkImageCreateInfo;
  uint vkImageCreateInfo;
  VkSampleCountFlagBits vkImageCreateInfo;
  VkImageTiling vkImageCreateInfo;
  VkImageUsageFlags vkImageCreateInfo;
  VkSharingMode vkImageCreateInfo;
  uint vkImageCreateInfo;
  uint vkImageCreateInfo;
  VkImageLayout vkImageCreateInfo;
}

struct VkSubresourceLayout {
  VkDeviceSize vkSubresourceLayout;
  VkDeviceSize vkSubresourceLayout;
  VkDeviceSize vkSubresourceLayout;
  VkDeviceSize vkSubresourceLayout;
  VkDeviceSize vkSubresourceLayout;
}

struct VkImageViewCreateInfo {
  VkStructureType vkImageViewCreateInfo;
  void vkImageViewCreateInfo;
  VkImageViewCreateFlags vkImageViewCreateInfo;
  VkImage vkImageViewCreateInfo;
  VkImageViewType vkImageViewCreateInfo;
  VkFormat vkImageViewCreateInfo;
  VkComponentMapping vkImageViewCreateInfo;
  VkImageSubresourceRange vkImageViewCreateInfo;
}

struct VkBufferCopy {
  VkDeviceSize vkBufferCopy;
  VkDeviceSize vkBufferCopy;
  VkDeviceSize vkBufferCopy;
}

struct VkSparseMemoryBind {
  VkDeviceSize vkSparseMemoryBind;
  VkDeviceSize vkSparseMemoryBind;
  VkDeviceMemory vkSparseMemoryBind;
  VkDeviceSize vkSparseMemoryBind;
  VkSparseMemoryBindFlags vkSparseMemoryBind;
}

struct VkSparseImageMemoryBind {
  VkImageSubresource vkSparseImageMemoryBind;
  VkOffset3D vkSparseImageMemoryBind;
  VkExtent3D vkSparseImageMemoryBind;
  VkDeviceMemory vkSparseImageMemoryBind;
  VkDeviceSize vkSparseImageMemoryBind;
  VkSparseMemoryBindFlags vkSparseImageMemoryBind;
}

struct VkSparseBufferMemoryBindInfo {
  VkBuffer vkSparseBufferMemoryBindInfo;
  uint vkSparseBufferMemoryBindInfo;
  VkSparseMemoryBind vkSparseBufferMemoryBindInfo;
}

struct VkSparseImageOpaqueMemoryBindInfo {
  VkImage vkSparseImageOpaqueMemoryBindInfo;
  uint vkSparseImageOpaqueMemoryBindInfo;
  VkSparseMemoryBind vkSparseImageOpaqueMemoryBindInfo;
}

struct VkSparseImageMemoryBindInfo {
  VkImage vkSparseImageMemoryBindInfo;
  uint vkSparseImageMemoryBindInfo;
  VkSparseImageMemoryBind vkSparseImageMemoryBindInfo;
}

struct VkBindSparseInfo {
  VkStructureType vkBindSparseInfo;
  void vkBindSparseInfo;
  uint vkBindSparseInfo;
  VkSemaphore vkBindSparseInfo;
  uint vkBindSparseInfo;
  VkSparseBufferMemoryBindInfo vkBindSparseInfo;
  uint vkBindSparseInfo;
  VkSparseImageOpaqueMemoryBindInfo vkBindSparseInfo;
  uint vkBindSparseInfo;
  VkSparseImageMemoryBindInfo vkBindSparseInfo;
  uint vkBindSparseInfo;
  VkSemaphore vkBindSparseInfo;
}

struct VkImageCopy {
  VkImageSubresourceLayers vkImageCopy;
  VkOffset3D vkImageCopy;
  VkImageSubresourceLayers vkImageCopy;
  VkOffset3D vkImageCopy;
  VkExtent3D vkImageCopy;
}

struct VkImageBlit {
  VkImageSubresourceLayers vkImageBlit;
  VkOffset3D vkImageBlit;
  VkImageSubresourceLayers vkImageBlit;
  VkOffset3D vkImageBlit;
}

struct VkBufferImageCopy {
  VkDeviceSize vkBufferImageCopy;
  uint vkBufferImageCopy;
  uint vkBufferImageCopy;
  VkImageSubresourceLayers vkBufferImageCopy;
  VkOffset3D vkBufferImageCopy;
  VkExtent3D vkBufferImageCopy;
}

struct VkCopyMemoryIndirectCommandNV {
  VkDeviceAddress vkCopyMemoryIndirectCommandNV;
  VkDeviceAddress vkCopyMemoryIndirectCommandNV;
  VkDeviceSize vkCopyMemoryIndirectCommandNV;
}

struct VkCopyMemoryToImageIndirectCommandNV {
  VkDeviceAddress vkCopyMemoryToImageIndirectCommandNV;
  uint vkCopyMemoryToImageIndirectCommandNV;
  uint vkCopyMemoryToImageIndirectCommandNV;
  VkImageSubresourceLayers vkCopyMemoryToImageIndirectCommandNV;
  VkOffset3D vkCopyMemoryToImageIndirectCommandNV;
  VkExtent3D vkCopyMemoryToImageIndirectCommandNV;
}

struct VkImageResolve {
  VkImageSubresourceLayers vkImageResolve;
  VkOffset3D vkImageResolve;
  VkImageSubresourceLayers vkImageResolve;
  VkOffset3D vkImageResolve;
  VkExtent3D vkImageResolve;
}

struct VkDescriptorSetLayoutBinding {
  uint vkDescriptorSetLayoutBinding;
  VkDescriptorType vkDescriptorSetLayoutBinding;
  uint vkDescriptorSetLayoutBinding;
  VkShaderStageFlags vkDescriptorSetLayoutBinding;
  VkSampler vkDescriptorSetLayoutBinding;
}

struct VkDescriptorSetLayoutCreateInfo {
  VkStructureType vkDescriptorSetLayoutCreateInfo;
  void vkDescriptorSetLayoutCreateInfo;
  VkDescriptorSetLayoutCreateFlags vkDescriptorSetLayoutCreateInfo;
  uint vkDescriptorSetLayoutCreateInfo;
  VkDescriptorSetLayoutBinding vkDescriptorSetLayoutCreateInfo;
}

struct VkDescriptorPoolSize {
  VkDescriptorType vkDescriptorPoolSize;
  uint vkDescriptorPoolSize;
}

struct VkDescriptorPoolCreateInfo {
  VkStructureType vkDescriptorPoolCreateInfo;
  void vkDescriptorPoolCreateInfo;
  VkDescriptorPoolCreateFlags vkDescriptorPoolCreateInfo;
  uint vkDescriptorPoolCreateInfo;
  uint vkDescriptorPoolCreateInfo;
  VkDescriptorPoolSize vkDescriptorPoolCreateInfo;
}

struct VkDescriptorSetAllocateInfo {
  VkStructureType vkDescriptorSetAllocateInfo;
  void vkDescriptorSetAllocateInfo;
  VkDescriptorPool vkDescriptorSetAllocateInfo;
  uint vkDescriptorSetAllocateInfo;
  VkDescriptorSetLayout vkDescriptorSetAllocateInfo;
}

struct VkSpecializationMapEntry {
  uint vkSpecializationMapEntry;
  uint vkSpecializationMapEntry;
  usz vkSpecializationMapEntry;
}

struct VkSpecializationInfo {
  uint vkSpecializationInfo;
  VkSpecializationMapEntry vkSpecializationInfo;
  usz vkSpecializationInfo;
  void vkSpecializationInfo;
}

struct VkPipelineShaderStageCreateInfo {
  VkStructureType vkPipelineShaderStageCreateInfo;
  void vkPipelineShaderStageCreateInfo;
  VkPipelineShaderStageCreateFlags vkPipelineShaderStageCreateInfo;
  VkShaderStageFlagBits vkPipelineShaderStageCreateInfo;
  VkShaderModule mod;
  char vkPipelineShaderStageCreateInfo;
  char vkPipelineShaderStageCreateInfo;
  VkSpecializationInfo vkPipelineShaderStageCreateInfo;
}

struct VkComputePipelineCreateInfo {
  VkStructureType vkComputePipelineCreateInfo;
  void vkComputePipelineCreateInfo;
  VkPipelineCreateFlags vkComputePipelineCreateInfo;
  VkPipelineShaderStageCreateInfo vkComputePipelineCreateInfo;
  VkPipelineLayout vkComputePipelineCreateInfo;
  VkPipeline vkComputePipelineCreateInfo;
  int vkComputePipelineCreateInfo;
}

struct VkVertexInputBindingDescription {
  uint vkVertexInputBindingDescription;
  uint vkVertexInputBindingDescription;
  VkVertexInputRate vkVertexInputBindingDescription;
}

struct VkVertexInputAttributeDescription {
  uint vkVertexInputAttributeDescription;
  uint vkVertexInputAttributeDescription;
  VkFormat vkVertexInputAttributeDescription;
  uint vkVertexInputAttributeDescription;
}

struct VkPipelineVertexInputStateCreateInfo {
  VkStructureType vkPipelineVertexInputStateCreateInfo;
  void vkPipelineVertexInputStateCreateInfo;
  VkPipelineVertexInputStateCreateFlags vkPipelineVertexInputStateCreateInfo;
  uint vkPipelineVertexInputStateCreateInfo;
  VkVertexInputBindingDescription vkPipelineVertexInputStateCreateInfo;
  uint vkPipelineVertexInputStateCreateInfo;
  VkVertexInputAttributeDescription vkPipelineVertexInputStateCreateInfo;
}

struct VkPipelineInputAssemblyStateCreateInfo {
  VkStructureType vkPipelineInputAssemblyStateCreateInfo;
  void vkPipelineInputAssemblyStateCreateInfo;
  VkPipelineInputAssemblyStateCreateFlags vkPipelineInputAssemblyStateCreateInfo;
  VkPrimitiveTopology vkPipelineInputAssemblyStateCreateInfo;
  VkBool32 vkPipelineInputAssemblyStateCreateInfo;
}

struct VkPipelineTessellationStateCreateInfo {
  VkStructureType vkPipelineTessellationStateCreateInfo;
  void vkPipelineTessellationStateCreateInfo;
  VkPipelineTessellationStateCreateFlags vkPipelineTessellationStateCreateInfo;
  uint vkPipelineTessellationStateCreateInfo;
}

struct VkPipelineViewportStateCreateInfo {
  VkStructureType vkPipelineViewportStateCreateInfo;
  void vkPipelineViewportStateCreateInfo;
  VkPipelineViewportStateCreateFlags vkPipelineViewportStateCreateInfo;
  uint vkPipelineViewportStateCreateInfo;
  VkViewport vkPipelineViewportStateCreateInfo;
  uint vkPipelineViewportStateCreateInfo;
  VkRect2D vkPipelineViewportStateCreateInfo;
}

struct VkPipelineRasterizationStateCreateInfo {
  VkStructureType vkPipelineRasterizationStateCreateInfo;
  void vkPipelineRasterizationStateCreateInfo;
  VkPipelineRasterizationStateCreateFlags vkPipelineRasterizationStateCreateInfo;
  VkBool32 vkPipelineRasterizationStateCreateInfo;
  VkBool32 vkPipelineRasterizationStateCreateInfo;
  VkPolygonMode vkPipelineRasterizationStateCreateInfo;
  VkCullModeFlags vkPipelineRasterizationStateCreateInfo;
  VkFrontFace vkPipelineRasterizationStateCreateInfo;
  VkBool32 vkPipelineRasterizationStateCreateInfo;
  float vkPipelineRasterizationStateCreateInfo;
  float vkPipelineRasterizationStateCreateInfo;
  float vkPipelineRasterizationStateCreateInfo;
  float vkPipelineRasterizationStateCreateInfo;
}

struct VkPipelineMultisampleStateCreateInfo {
  VkStructureType vkPipelineMultisampleStateCreateInfo;
  void vkPipelineMultisampleStateCreateInfo;
  VkPipelineMultisampleStateCreateFlags vkPipelineMultisampleStateCreateInfo;
  VkSampleCountFlagBits vkPipelineMultisampleStateCreateInfo;
  VkBool32 vkPipelineMultisampleStateCreateInfo;
  float vkPipelineMultisampleStateCreateInfo;
  VkSampleMask vkPipelineMultisampleStateCreateInfo;
  VkBool32 vkPipelineMultisampleStateCreateInfo;
  VkBool32 vkPipelineMultisampleStateCreateInfo;
}

struct VkPipelineColorBlendAttachmentState {
  VkBool32 vkPipelineColorBlendAttachmentState;
  VkBlendFactor vkPipelineColorBlendAttachmentState;
  VkBlendFactor vkPipelineColorBlendAttachmentState;
  VkBlendOp vkPipelineColorBlendAttachmentState;
  VkBlendFactor vkPipelineColorBlendAttachmentState;
  VkBlendFactor vkPipelineColorBlendAttachmentState;
  VkBlendOp vkPipelineColorBlendAttachmentState;
  VkColorComponentFlags vkPipelineColorBlendAttachmentState;
}

struct VkPipelineColorBlendStateCreateInfo {
  VkStructureType vkPipelineColorBlendStateCreateInfo;
  void vkPipelineColorBlendStateCreateInfo;
  VkPipelineColorBlendStateCreateFlags vkPipelineColorBlendStateCreateInfo;
  VkBool32 vkPipelineColorBlendStateCreateInfo;
  VkLogicOp vkPipelineColorBlendStateCreateInfo;
  uint vkPipelineColorBlendStateCreateInfo;
  VkPipelineColorBlendAttachmentState vkPipelineColorBlendStateCreateInfo;
  float vkPipelineColorBlendStateCreateInfo;
}

struct VkPipelineDynamicStateCreateInfo {
  VkStructureType vkPipelineDynamicStateCreateInfo;
  void vkPipelineDynamicStateCreateInfo;
  VkPipelineDynamicStateCreateFlags vkPipelineDynamicStateCreateInfo;
  uint vkPipelineDynamicStateCreateInfo;
  VkDynamicState vkPipelineDynamicStateCreateInfo;
}

struct VkStencilOpState {
  VkStencilOp vkStencilOpState;
  VkStencilOp vkStencilOpState;
  VkStencilOp vkStencilOpState;
  VkCompareOp vkStencilOpState;
  uint vkStencilOpState;
  uint vkStencilOpState;
  uint vkStencilOpState;
}

struct VkPipelineDepthStencilStateCreateInfo {
  VkStructureType vkPipelineDepthStencilStateCreateInfo;
  void vkPipelineDepthStencilStateCreateInfo;
  VkPipelineDepthStencilStateCreateFlags vkPipelineDepthStencilStateCreateInfo;
  VkBool32 vkPipelineDepthStencilStateCreateInfo;
  VkBool32 vkPipelineDepthStencilStateCreateInfo;
  VkCompareOp vkPipelineDepthStencilStateCreateInfo;
  VkBool32 vkPipelineDepthStencilStateCreateInfo;
  VkBool32 vkPipelineDepthStencilStateCreateInfo;
  VkStencilOpState vkPipelineDepthStencilStateCreateInfo;
  VkStencilOpState vkPipelineDepthStencilStateCreateInfo;
  float vkPipelineDepthStencilStateCreateInfo;
  float vkPipelineDepthStencilStateCreateInfo;
}

struct VkGraphicsPipelineCreateInfo {
  VkStructureType vkGraphicsPipelineCreateInfo;
  void vkGraphicsPipelineCreateInfo;
  VkPipelineCreateFlags vkGraphicsPipelineCreateInfo;
  uint vkGraphicsPipelineCreateInfo;
  VkPipelineShaderStageCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineShaderStageCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineVertexInputStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineInputAssemblyStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineTessellationStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineViewportStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineRasterizationStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineMultisampleStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineDepthStencilStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineColorBlendStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineDynamicStateCreateInfo vkGraphicsPipelineCreateInfo;
  VkPipelineLayout vkGraphicsPipelineCreateInfo;
  VkRenderPass vkGraphicsPipelineCreateInfo;
  uint vkGraphicsPipelineCreateInfo;
  VkPipeline vkGraphicsPipelineCreateInfo;
  int vkGraphicsPipelineCreateInfo;
}

struct VkPipelineCacheCreateInfo {
  VkStructureType vkPipelineCacheCreateInfo;
  void vkPipelineCacheCreateInfo;
  VkPipelineCacheCreateFlags vkPipelineCacheCreateInfo;
  usz vkPipelineCacheCreateInfo;
  usz vkPipelineCacheCreateInfo;
  void vkPipelineCacheCreateInfo;
}

struct VkPipelineCacheHeaderVersionOne {
  uint vkPipelineCacheHeaderVersionOne;
  VkPipelineCacheHeaderVersion vkPipelineCacheHeaderVersionOne;
  uint vkPipelineCacheHeaderVersionOne;
  uint vkPipelineCacheHeaderVersionOne;
  char vkPipelineCacheHeaderVersionOne;
}

struct VkPipelineCacheStageValidationIndexEntry {
  ulong vkPipelineCacheStageValidationIndexEntry;
  ulong vkPipelineCacheStageValidationIndexEntry;
}

struct VkPipelineCacheSafetyCriticalIndexEntry {
  char vkPipelineCacheSafetyCriticalIndexEntry;
  ulong vkPipelineCacheSafetyCriticalIndexEntry;
  ulong vkPipelineCacheSafetyCriticalIndexEntry;
  ulong vkPipelineCacheSafetyCriticalIndexEntry;
  uint vkPipelineCacheSafetyCriticalIndexEntry;
  uint vkPipelineCacheSafetyCriticalIndexEntry;
  ulong vkPipelineCacheSafetyCriticalIndexEntry;
}

struct VkPipelineCacheHeaderVersionSafetyCriticalOne {
  VkPipelineCacheHeaderVersionOne vkPipelineCacheHeaderVersionSafetyCriticalOne;
  VkPipelineCacheValidationVersion vkPipelineCacheHeaderVersionSafetyCriticalOne;
  uint vkPipelineCacheHeaderVersionSafetyCriticalOne;
  uint vkPipelineCacheHeaderVersionSafetyCriticalOne;
  uint vkPipelineCacheHeaderVersionSafetyCriticalOne;
  ulong vkPipelineCacheHeaderVersionSafetyCriticalOne;
}

struct VkPushConstantRange {
  VkShaderStageFlags vkPushConstantRange;
  uint vkPushConstantRange;
  uint vkPushConstantRange;
}

struct VkPipelineLayoutCreateInfo {
  VkStructureType vkPipelineLayoutCreateInfo;
  void vkPipelineLayoutCreateInfo;
  VkPipelineLayoutCreateFlags vkPipelineLayoutCreateInfo;
  uint vkPipelineLayoutCreateInfo;
  VkDescriptorSetLayout vkPipelineLayoutCreateInfo;
  uint vkPipelineLayoutCreateInfo;
  VkPushConstantRange vkPipelineLayoutCreateInfo;
}

struct VkSamplerCreateInfo {
  VkStructureType vkSamplerCreateInfo;
  void vkSamplerCreateInfo;
  VkSamplerCreateFlags vkSamplerCreateInfo;
  VkFilter vkSamplerCreateInfo;
  VkFilter vkSamplerCreateInfo;
  VkSamplerMipmapMode vkSamplerCreateInfo;
  VkSamplerAddressMode vkSamplerCreateInfo;
  VkSamplerAddressMode vkSamplerCreateInfo;
  VkSamplerAddressMode vkSamplerCreateInfo;
  float vkSamplerCreateInfo;
  VkBool32 vkSamplerCreateInfo;
  float vkSamplerCreateInfo;
  VkBool32 vkSamplerCreateInfo;
  VkCompareOp vkSamplerCreateInfo;
  float vkSamplerCreateInfo;
  float vkSamplerCreateInfo;
  VkBorderColor vkSamplerCreateInfo;
  VkBool32 vkSamplerCreateInfo;
}

struct VkCommandPoolCreateInfo {
  VkStructureType vkCommandPoolCreateInfo;
  void vkCommandPoolCreateInfo;
  VkCommandPoolCreateFlags vkCommandPoolCreateInfo;
  uint vkCommandPoolCreateInfo;
}

struct VkCommandBufferAllocateInfo {
  VkStructureType vkCommandBufferAllocateInfo;
  void vkCommandBufferAllocateInfo;
  VkCommandPool vkCommandBufferAllocateInfo;
  VkCommandBufferLevel vkCommandBufferAllocateInfo;
  uint vkCommandBufferAllocateInfo;
}

struct VkCommandBufferInheritanceInfo {
  VkStructureType vkCommandBufferInheritanceInfo;
  void vkCommandBufferInheritanceInfo;
  VkRenderPass vkCommandBufferInheritanceInfo;
  uint vkCommandBufferInheritanceInfo;
  VkFramebuffer vkCommandBufferInheritanceInfo;
  VkBool32 vkCommandBufferInheritanceInfo;
  VkQueryControlFlags vkCommandBufferInheritanceInfo;
  VkQueryPipelineStatisticFlags vkCommandBufferInheritanceInfo;
}

struct VkCommandBufferBeginInfo {
  VkStructureType vkCommandBufferBeginInfo;
  void vkCommandBufferBeginInfo;
  VkCommandBufferUsageFlags vkCommandBufferBeginInfo;
  VkCommandBufferInheritanceInfo vkCommandBufferBeginInfo;
}

struct VkRenderPassBeginInfo {
  VkStructureType vkRenderPassBeginInfo;
  void vkRenderPassBeginInfo;
  VkRenderPass vkRenderPassBeginInfo;
  VkFramebuffer vkRenderPassBeginInfo;
  VkRect2D vkRenderPassBeginInfo;
  uint vkRenderPassBeginInfo;
  VkClearValue vkRenderPassBeginInfo;
}

struct VkClearDepthStencilValue {
  float vkClearDepthStencilValue;
  uint vkClearDepthStencilValue;
}

struct VkClearAttachment {
  VkImageAspectFlags vkClearAttachment;
  uint vkClearAttachment;
  VkClearValue vkClearAttachment;
}

struct VkAttachmentDescription {
  VkAttachmentDescriptionFlags vkAttachmentDescription;
  VkFormat vkAttachmentDescription;
  VkSampleCountFlagBits vkAttachmentDescription;
  VkAttachmentLoadOp vkAttachmentDescription;
  VkAttachmentStoreOp vkAttachmentDescription;
  VkAttachmentLoadOp vkAttachmentDescription;
  VkAttachmentStoreOp vkAttachmentDescription;
  VkImageLayout vkAttachmentDescription;
  VkImageLayout vkAttachmentDescription;
}

struct VkAttachmentReference {
  uint vkAttachmentReference;
  VkImageLayout vkAttachmentReference;
}

struct VkSubpassDescription {
  VkSubpassDescriptionFlags vkSubpassDescription;
  VkPipelineBindPoint vkSubpassDescription;
  uint vkSubpassDescription;
  VkAttachmentReference vkSubpassDescription;
  uint vkSubpassDescription;
  VkAttachmentReference vkSubpassDescription;
  VkAttachmentReference vkSubpassDescription;
  VkAttachmentReference vkSubpassDescription;
  uint vkSubpassDescription;
  uint vkSubpassDescription;
}

struct VkSubpassDependency {
  uint vkSubpassDependency;
  uint vkSubpassDependency;
  VkPipelineStageFlags vkSubpassDependency;
  VkPipelineStageFlags vkSubpassDependency;
  VkAccessFlags vkSubpassDependency;
  VkAccessFlags vkSubpassDependency;
  VkDependencyFlags vkSubpassDependency;
}

struct VkRenderPassCreateInfo {
  VkStructureType vkRenderPassCreateInfo;
  void vkRenderPassCreateInfo;
  VkRenderPassCreateFlags vkRenderPassCreateInfo;
  uint vkRenderPassCreateInfo;
  VkAttachmentDescription vkRenderPassCreateInfo;
  uint vkRenderPassCreateInfo;
  VkSubpassDescription vkRenderPassCreateInfo;
  uint vkRenderPassCreateInfo;
  VkSubpassDependency vkRenderPassCreateInfo;
}

struct VkEventCreateInfo {
  VkStructureType vkEventCreateInfo;
  void vkEventCreateInfo;
  VkEventCreateFlags vkEventCreateInfo;
}

struct VkFenceCreateInfo {
  VkStructureType vkFenceCreateInfo;
  void vkFenceCreateInfo;
  VkFenceCreateFlags vkFenceCreateInfo;
}

struct VkPhysicalDeviceFeatures {
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
  VkBool32 vkPhysicalDeviceFeatures;
}

struct VkPhysicalDeviceSparseProperties {
  VkBool32 vkPhysicalDeviceSparseProperties;
  VkBool32 vkPhysicalDeviceSparseProperties;
  VkBool32 vkPhysicalDeviceSparseProperties;
  VkBool32 vkPhysicalDeviceSparseProperties;
  VkBool32 vkPhysicalDeviceSparseProperties;
}

struct VkPhysicalDeviceLimits {
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  usz vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  int vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  int vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  VkSampleCountFlags vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  VkBool32 vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  uint vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  float vkPhysicalDeviceLimits;
  VkBool32 vkPhysicalDeviceLimits;
  VkBool32 vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
  VkDeviceSize vkPhysicalDeviceLimits;
}

struct VkSemaphoreCreateInfo {
  VkStructureType vkSemaphoreCreateInfo;
  void vkSemaphoreCreateInfo;
  VkSemaphoreCreateFlags vkSemaphoreCreateInfo;
}

struct VkQueryPoolCreateInfo {
  VkStructureType vkQueryPoolCreateInfo;
  void vkQueryPoolCreateInfo;
  VkQueryPoolCreateFlags vkQueryPoolCreateInfo;
  VkQueryType vkQueryPoolCreateInfo;
  uint vkQueryPoolCreateInfo;
  VkQueryPipelineStatisticFlags vkQueryPoolCreateInfo;
}

struct VkFramebufferCreateInfo {
  VkStructureType vkFramebufferCreateInfo;
  void vkFramebufferCreateInfo;
  VkFramebufferCreateFlags vkFramebufferCreateInfo;
  VkRenderPass vkFramebufferCreateInfo;
  uint vkFramebufferCreateInfo;
  VkImageView vkFramebufferCreateInfo;
  uint vkFramebufferCreateInfo;
  uint vkFramebufferCreateInfo;
  uint vkFramebufferCreateInfo;
}

struct VkDrawIndirectCommand {
  uint vkDrawIndirectCommand;
  uint vkDrawIndirectCommand;
  uint vkDrawIndirectCommand;
  uint vkDrawIndirectCommand;
}

struct VkDrawIndexedIndirectCommand {
  uint vkDrawIndexedIndirectCommand;
  uint vkDrawIndexedIndirectCommand;
  uint vkDrawIndexedIndirectCommand;
  int vkDrawIndexedIndirectCommand;
  uint vkDrawIndexedIndirectCommand;
}

struct VkDispatchIndirectCommand {
  uint vkDispatchIndirectCommand;
  uint vkDispatchIndirectCommand;
  uint vkDispatchIndirectCommand;
}

struct VkMultiDrawInfoEXT {
  uint vkMultiDrawInfoEXT;
  uint vkMultiDrawInfoEXT;
}

struct VkMultiDrawIndexedInfoEXT {
  uint vkMultiDrawIndexedInfoEXT;
  uint vkMultiDrawIndexedInfoEXT;
  int vkMultiDrawIndexedInfoEXT;
}

struct VkSubmitInfo {
  VkStructureType vkSubmitInfo;
  void vkSubmitInfo;
  uint vkSubmitInfo;
  VkSemaphore vkSubmitInfo;
  VkPipelineStageFlags vkSubmitInfo;
  uint vkSubmitInfo;
  VkCommandBuffer vkSubmitInfo;
  uint vkSubmitInfo;
  VkSemaphore vkSubmitInfo;
}

struct VkDisplayPropertiesKHR {
  VkDisplayKHR vkDisplayPropertiesKHR;
  char vkDisplayPropertiesKHR;
  VkExtent2D vkDisplayPropertiesKHR;
  VkExtent2D vkDisplayPropertiesKHR;
  VkSurfaceTransformFlagsKHR vkDisplayPropertiesKHR;
  VkBool32 vkDisplayPropertiesKHR;
  VkBool32 vkDisplayPropertiesKHR;
}

struct VkDisplayPlanePropertiesKHR {
  VkDisplayKHR vkDisplayPlanePropertiesKHR;
  uint vkDisplayPlanePropertiesKHR;
}

struct VkDisplayModeParametersKHR {
  VkExtent2D vkDisplayModeParametersKHR;
  uint vkDisplayModeParametersKHR;
}

struct VkDisplayModePropertiesKHR {
  VkDisplayModeKHR vkDisplayModePropertiesKHR;
  VkDisplayModeParametersKHR vkDisplayModePropertiesKHR;
}

struct VkDisplayModeCreateInfoKHR {
  VkStructureType vkDisplayModeCreateInfoKHR;
  void vkDisplayModeCreateInfoKHR;
  VkDisplayModeCreateFlagsKHR vkDisplayModeCreateInfoKHR;
  VkDisplayModeParametersKHR vkDisplayModeCreateInfoKHR;
}

struct VkDisplayPlaneCapabilitiesKHR {
  VkDisplayPlaneAlphaFlagsKHR vkDisplayPlaneCapabilitiesKHR;
  VkOffset2D vkDisplayPlaneCapabilitiesKHR;
  VkOffset2D vkDisplayPlaneCapabilitiesKHR;
  VkExtent2D vkDisplayPlaneCapabilitiesKHR;
  VkExtent2D vkDisplayPlaneCapabilitiesKHR;
  VkOffset2D vkDisplayPlaneCapabilitiesKHR;
  VkOffset2D vkDisplayPlaneCapabilitiesKHR;
  VkExtent2D vkDisplayPlaneCapabilitiesKHR;
  VkExtent2D vkDisplayPlaneCapabilitiesKHR;
}

struct VkDisplaySurfaceCreateInfoKHR {
  VkStructureType vkDisplaySurfaceCreateInfoKHR;
  void vkDisplaySurfaceCreateInfoKHR;
  VkDisplaySurfaceCreateFlagsKHR vkDisplaySurfaceCreateInfoKHR;
  VkDisplayModeKHR vkDisplaySurfaceCreateInfoKHR;
  uint vkDisplaySurfaceCreateInfoKHR;
  uint vkDisplaySurfaceCreateInfoKHR;
  VkSurfaceTransformFlagBitsKHR vkDisplaySurfaceCreateInfoKHR;
  float vkDisplaySurfaceCreateInfoKHR;
  VkDisplayPlaneAlphaFlagBitsKHR vkDisplaySurfaceCreateInfoKHR;
  VkExtent2D vkDisplaySurfaceCreateInfoKHR;
}

struct VkSurfaceCapabilitiesKHR {
  uint vkSurfaceCapabilitiesKHR;
  uint vkSurfaceCapabilitiesKHR;
  VkExtent2D vkSurfaceCapabilitiesKHR;
  VkExtent2D vkSurfaceCapabilitiesKHR;
  VkExtent2D vkSurfaceCapabilitiesKHR;
  uint vkSurfaceCapabilitiesKHR;
  VkSurfaceTransformFlagsKHR vkSurfaceCapabilitiesKHR;
  VkSurfaceTransformFlagBitsKHR vkSurfaceCapabilitiesKHR;
  VkCompositeAlphaFlagsKHR vkSurfaceCapabilitiesKHR;
  VkImageUsageFlags vkSurfaceCapabilitiesKHR;
}

struct VkAndroidSurfaceCreateInfoKHR {
  VkStructureType vkAndroidSurfaceCreateInfoKHR;
  void vkAndroidSurfaceCreateInfoKHR;
  VkAndroidSurfaceCreateFlagsKHR vkAndroidSurfaceCreateInfoKHR;
  Anativewindow vkAndroidSurfaceCreateInfoKHR;
}

struct VkViSurfaceCreateInfoNN {
  VkStructureType vkViSurfaceCreateInfoNN;
  void vkViSurfaceCreateInfoNN;
  VkViSurfaceCreateFlagsNN vkViSurfaceCreateInfoNN;
  void vkViSurfaceCreateInfoNN;
}

struct VkWaylandSurfaceCreateInfoKHR {
  VkStructureType vkWaylandSurfaceCreateInfoKHR;
  void vkWaylandSurfaceCreateInfoKHR;
  VkWaylandSurfaceCreateFlagsKHR vkWaylandSurfaceCreateInfoKHR;
  Wldisplay vkWaylandSurfaceCreateInfoKHR;
  Wlsurface vkWaylandSurfaceCreateInfoKHR;
}

struct VkWin32SurfaceCreateInfoKHR {
  VkStructureType vkWin32SurfaceCreateInfoKHR;
  void vkWin32SurfaceCreateInfoKHR;
  VkWin32SurfaceCreateFlagsKHR vkWin32SurfaceCreateInfoKHR;
  Hinstance vkWin32SurfaceCreateInfoKHR;
  Hwnd vkWin32SurfaceCreateInfoKHR;
}

struct VkXlibSurfaceCreateInfoKHR {
  VkStructureType vkXlibSurfaceCreateInfoKHR;
  void vkXlibSurfaceCreateInfoKHR;
  VkXlibSurfaceCreateFlagsKHR vkXlibSurfaceCreateInfoKHR;
  Display vkXlibSurfaceCreateInfoKHR;
  Window vkXlibSurfaceCreateInfoKHR;
}

struct VkXcbSurfaceCreateInfoKHR {
  VkStructureType vkXcbSurfaceCreateInfoKHR;
  void vkXcbSurfaceCreateInfoKHR;
  VkXcbSurfaceCreateFlagsKHR vkXcbSurfaceCreateInfoKHR;
  Xcbconnection vkXcbSurfaceCreateInfoKHR;
  Xcbwindow vkXcbSurfaceCreateInfoKHR;
}

struct VkDirectFBSurfaceCreateInfoEXT {
  VkStructureType vkDirectFBSurfaceCreateInfoEXT;
  void vkDirectFBSurfaceCreateInfoEXT;
  VkDirectFBSurfaceCreateFlagsEXT vkDirectFBSurfaceCreateInfoEXT;
  Idirectfb vkDirectFBSurfaceCreateInfoEXT;
  Idirectfbsurface vkDirectFBSurfaceCreateInfoEXT;
}

struct VkImagePipeSurfaceCreateInfoFUCHSIA {
  VkStructureType vkImagePipeSurfaceCreateInfoFUCHSIA;
  void vkImagePipeSurfaceCreateInfoFUCHSIA;
  VkImagePipeSurfaceCreateFlagsFUCHSIA vkImagePipeSurfaceCreateInfoFUCHSIA;
  Zxhandle vkImagePipeSurfaceCreateInfoFUCHSIA;
}

struct VkStreamDescriptorSurfaceCreateInfoGGP {
  VkStructureType vkStreamDescriptorSurfaceCreateInfoGGP;
  void vkStreamDescriptorSurfaceCreateInfoGGP;
  VkStreamDescriptorSurfaceCreateFlagsGGP vkStreamDescriptorSurfaceCreateInfoGGP;
  Ggpstreamdescriptor vkStreamDescriptorSurfaceCreateInfoGGP;
}

struct VkScreenSurfaceCreateInfoQNX {
  VkStructureType vkScreenSurfaceCreateInfoQNX;
  void vkScreenSurfaceCreateInfoQNX;
  VkScreenSurfaceCreateFlagsQNX vkScreenSurfaceCreateInfoQNX;
  Screencontext vkScreenSurfaceCreateInfoQNX;
  Screenwindow vkScreenSurfaceCreateInfoQNX;
}

struct VkSurfaceFormatKHR {
  VkFormat vkSurfaceFormatKHR;
  VkColorSpaceKHR vkSurfaceFormatKHR;
}

struct VkSwapchainCreateInfoKHR {
  VkStructureType vkSwapchainCreateInfoKHR;
  void vkSwapchainCreateInfoKHR;
  VkSwapchainCreateFlagsKHR vkSwapchainCreateInfoKHR;
  VkSurfaceKHR vkSwapchainCreateInfoKHR;
  uint vkSwapchainCreateInfoKHR;
  VkFormat vkSwapchainCreateInfoKHR;
  VkColorSpaceKHR vkSwapchainCreateInfoKHR;
  VkExtent2D vkSwapchainCreateInfoKHR;
  uint vkSwapchainCreateInfoKHR;
  VkImageUsageFlags vkSwapchainCreateInfoKHR;
  VkSharingMode vkSwapchainCreateInfoKHR;
  uint vkSwapchainCreateInfoKHR;
  uint vkSwapchainCreateInfoKHR;
  VkSurfaceTransformFlagBitsKHR vkSwapchainCreateInfoKHR;
  VkCompositeAlphaFlagBitsKHR vkSwapchainCreateInfoKHR;
  VkPresentModeKHR vkSwapchainCreateInfoKHR;
  VkBool32 vkSwapchainCreateInfoKHR;
  VkSwapchainKHR vkSwapchainCreateInfoKHR;
  VkSwapchainKHR vkSwapchainCreateInfoKHR;
}

struct VkPresentInfoKHR {
  VkStructureType vkPresentInfoKHR;
  void vkPresentInfoKHR;
  uint vkPresentInfoKHR;
  VkSemaphore vkPresentInfoKHR;
  uint vkPresentInfoKHR;
  VkSwapchainKHR vkPresentInfoKHR;
  uint vkPresentInfoKHR;
  VkResult vkPresentInfoKHR;
}

struct VkDebugMarkerObjectNameInfoEXT {
  VkStructureType vkDebugMarkerObjectNameInfoEXT;
  void vkDebugMarkerObjectNameInfoEXT;
  VkDebugReportObjectTypeEXT vkDebugMarkerObjectNameInfoEXT;
  ulong vkDebugMarkerObjectNameInfoEXT;
  char vkDebugMarkerObjectNameInfoEXT;
}

struct VkDebugMarkerObjectTagInfoEXT {
  VkStructureType vkDebugMarkerObjectTagInfoEXT;
  void vkDebugMarkerObjectTagInfoEXT;
  VkDebugReportObjectTypeEXT vkDebugMarkerObjectTagInfoEXT;
  ulong vkDebugMarkerObjectTagInfoEXT;
  ulong vkDebugMarkerObjectTagInfoEXT;
  usz vkDebugMarkerObjectTagInfoEXT;
  void vkDebugMarkerObjectTagInfoEXT;
}

struct VkDebugMarkerMarkerInfoEXT {
  VkStructureType vkDebugMarkerMarkerInfoEXT;
  void vkDebugMarkerMarkerInfoEXT;
  char vkDebugMarkerMarkerInfoEXT;
  float vkDebugMarkerMarkerInfoEXT;
}

struct VkExternalImageFormatPropertiesNV {
  VkImageFormatProperties vkExternalImageFormatPropertiesNV;
  VkExternalMemoryFeatureFlagsNV vkExternalImageFormatPropertiesNV;
  VkExternalMemoryHandleTypeFlagsNV vkExternalImageFormatPropertiesNV;
  VkExternalMemoryHandleTypeFlagsNV vkExternalImageFormatPropertiesNV;
}

struct VkMemoryGetSciBufInfoNV {
  VkStructureType vkMemoryGetSciBufInfoNV;
  void vkMemoryGetSciBufInfoNV;
  VkDeviceMemory vkMemoryGetSciBufInfoNV;
  VkExternalMemoryHandleTypeFlagBits vkMemoryGetSciBufInfoNV;
}

struct VkMemorySciBufPropertiesNV {
  VkStructureType vkMemorySciBufPropertiesNV;
  void vkMemorySciBufPropertiesNV;
  uint vkMemorySciBufPropertiesNV;
}

struct VkPrivateDataSlotCreateInfo {
  VkStructureType vkPrivateDataSlotCreateInfo;
  void vkPrivateDataSlotCreateInfo;
  VkPrivateDataSlotCreateFlags vkPrivateDataSlotCreateInfo;
}

struct VkGraphicsShaderGroupCreateInfoNV {
  VkStructureType vkGraphicsShaderGroupCreateInfoNV;
  void vkGraphicsShaderGroupCreateInfoNV;
  uint vkGraphicsShaderGroupCreateInfoNV;
  VkPipelineShaderStageCreateInfo vkGraphicsShaderGroupCreateInfoNV;
  VkPipelineVertexInputStateCreateInfo vkGraphicsShaderGroupCreateInfoNV;
  VkPipelineTessellationStateCreateInfo vkGraphicsShaderGroupCreateInfoNV;
}

struct VkBindShaderGroupIndirectCommandNV {
  uint vkBindShaderGroupIndirectCommandNV;
}

struct VkBindIndexBufferIndirectCommandNV {
  VkDeviceAddress vkBindIndexBufferIndirectCommandNV;
  uint vkBindIndexBufferIndirectCommandNV;
  VkIndexType vkBindIndexBufferIndirectCommandNV;
}

struct VkBindVertexBufferIndirectCommandNV {
  VkDeviceAddress vkBindVertexBufferIndirectCommandNV;
  uint vkBindVertexBufferIndirectCommandNV;
  uint vkBindVertexBufferIndirectCommandNV;
}

struct VkSetStateFlagsIndirectCommandNV {
  uint vkSetStateFlagsIndirectCommandNV;
}

struct VkIndirectCommandsStreamNV {
  VkBuffer vkIndirectCommandsStreamNV;
  VkDeviceSize vkIndirectCommandsStreamNV;
}

struct VkIndirectCommandsLayoutTokenNV {
  VkStructureType vkIndirectCommandsLayoutTokenNV;
  void vkIndirectCommandsLayoutTokenNV;
  VkIndirectCommandsTokenTypeNV vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
  VkBool32 vkIndirectCommandsLayoutTokenNV;
  VkPipelineLayout vkIndirectCommandsLayoutTokenNV;
  VkShaderStageFlags vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
  VkIndirectStateFlagsNV vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
  VkIndexType vkIndirectCommandsLayoutTokenNV;
  uint vkIndirectCommandsLayoutTokenNV;
}

struct VkIndirectCommandsLayoutCreateInfoNV {
  VkStructureType vkIndirectCommandsLayoutCreateInfoNV;
  void vkIndirectCommandsLayoutCreateInfoNV;
  VkIndirectCommandsLayoutUsageFlagsNV vkIndirectCommandsLayoutCreateInfoNV;
  VkPipelineBindPoint vkIndirectCommandsLayoutCreateInfoNV;
  uint vkIndirectCommandsLayoutCreateInfoNV;
  VkIndirectCommandsLayoutTokenNV vkIndirectCommandsLayoutCreateInfoNV;
  uint vkIndirectCommandsLayoutCreateInfoNV;
  uint vkIndirectCommandsLayoutCreateInfoNV;
}

struct VkGeneratedCommandsInfoNV {
  VkStructureType vkGeneratedCommandsInfoNV;
  void vkGeneratedCommandsInfoNV;
  VkPipelineBindPoint vkGeneratedCommandsInfoNV;
  VkPipeline vkGeneratedCommandsInfoNV;
  VkIndirectCommandsLayoutNV vkGeneratedCommandsInfoNV;
  uint vkGeneratedCommandsInfoNV;
  VkIndirectCommandsStreamNV vkGeneratedCommandsInfoNV;
  uint vkGeneratedCommandsInfoNV;
  VkBuffer vkGeneratedCommandsInfoNV;
  VkDeviceSize vkGeneratedCommandsInfoNV;
  VkDeviceSize vkGeneratedCommandsInfoNV;
  VkBuffer vkGeneratedCommandsInfoNV;
  VkDeviceSize vkGeneratedCommandsInfoNV;
  VkBuffer vkGeneratedCommandsInfoNV;
  VkDeviceSize vkGeneratedCommandsInfoNV;
}

struct VkGeneratedCommandsMemoryRequirementsInfoNV {
  VkStructureType vkGeneratedCommandsMemoryRequirementsInfoNV;
  void vkGeneratedCommandsMemoryRequirementsInfoNV;
  VkPipelineBindPoint vkGeneratedCommandsMemoryRequirementsInfoNV;
  VkPipeline vkGeneratedCommandsMemoryRequirementsInfoNV;
  VkIndirectCommandsLayoutNV vkGeneratedCommandsMemoryRequirementsInfoNV;
  uint vkGeneratedCommandsMemoryRequirementsInfoNV;
}

struct VkPhysicalDeviceProperties2 {
  VkStructureType vkPhysicalDeviceProperties2;
  void vkPhysicalDeviceProperties2;
  VkPhysicalDeviceProperties vkPhysicalDeviceProperties2;
}

struct VkFormatProperties2 {
  VkStructureType vkFormatProperties2;
  void vkFormatProperties2;
  VkFormatProperties vkFormatProperties2;
}

struct VkImageFormatProperties2 {
  VkStructureType vkImageFormatProperties2;
  void vkImageFormatProperties2;
  VkImageFormatProperties vkImageFormatProperties2;
}

struct VkPhysicalDeviceImageFormatInfo2 {
  VkStructureType vkPhysicalDeviceImageFormatInfo2;
  void vkPhysicalDeviceImageFormatInfo2;
  VkFormat vkPhysicalDeviceImageFormatInfo2;
  VkImageType vkPhysicalDeviceImageFormatInfo2;
  VkImageTiling vkPhysicalDeviceImageFormatInfo2;
  VkImageUsageFlags vkPhysicalDeviceImageFormatInfo2;
  VkImageCreateFlags vkPhysicalDeviceImageFormatInfo2;
}

struct VkQueueFamilyProperties2 {
  VkStructureType vkQueueFamilyProperties2;
  void vkQueueFamilyProperties2;
  VkQueueFamilyProperties vkQueueFamilyProperties2;
}

struct VkPhysicalDeviceMemoryProperties2 {
  VkStructureType vkPhysicalDeviceMemoryProperties2;
  void vkPhysicalDeviceMemoryProperties2;
  VkPhysicalDeviceMemoryProperties vkPhysicalDeviceMemoryProperties2;
}

struct VkSparseImageFormatProperties2 {
  VkStructureType vkSparseImageFormatProperties2;
  void vkSparseImageFormatProperties2;
  VkSparseImageFormatProperties vkSparseImageFormatProperties2;
}

struct VkPhysicalDeviceSparseImageFormatInfo2 {
  VkStructureType vkPhysicalDeviceSparseImageFormatInfo2;
  void vkPhysicalDeviceSparseImageFormatInfo2;
  VkFormat vkPhysicalDeviceSparseImageFormatInfo2;
  VkImageType vkPhysicalDeviceSparseImageFormatInfo2;
  VkSampleCountFlagBits vkPhysicalDeviceSparseImageFormatInfo2;
  VkImageUsageFlags vkPhysicalDeviceSparseImageFormatInfo2;
  VkImageTiling vkPhysicalDeviceSparseImageFormatInfo2;
}

struct VkConformanceVersion {
  char vkConformanceVersion;
  char vkConformanceVersion;
  char vkConformanceVersion;
  char vkConformanceVersion;
}

struct VkPresentRegionKHR {
  uint vkPresentRegionKHR;
  VkRectLayerKHR vkPresentRegionKHR;
}

struct VkRectLayerKHR {
  VkOffset2D vkRectLayerKHR;
  VkExtent2D vkRectLayerKHR;
  uint vkRectLayerKHR;
}

struct VkExternalMemoryProperties {
  VkExternalMemoryFeatureFlags vkExternalMemoryProperties;
  VkExternalMemoryHandleTypeFlags vkExternalMemoryProperties;
  VkExternalMemoryHandleTypeFlags vkExternalMemoryProperties;
}

struct VkPhysicalDeviceExternalBufferInfo {
  VkStructureType vkPhysicalDeviceExternalBufferInfo;
  void vkPhysicalDeviceExternalBufferInfo;
  VkBufferCreateFlags vkPhysicalDeviceExternalBufferInfo;
  VkBufferUsageFlags vkPhysicalDeviceExternalBufferInfo;
  VkExternalMemoryHandleTypeFlagBits vkPhysicalDeviceExternalBufferInfo;
}

struct VkExternalBufferProperties {
  VkStructureType vkExternalBufferProperties;
  void vkExternalBufferProperties;
  VkExternalMemoryProperties vkExternalBufferProperties;
}

struct VkMemoryZirconHandlePropertiesFUCHSIA {
  VkStructureType vkMemoryZirconHandlePropertiesFUCHSIA;
  void vkMemoryZirconHandlePropertiesFUCHSIA;
  uint vkMemoryZirconHandlePropertiesFUCHSIA;
}

struct VkMemoryGetZirconHandleInfoFUCHSIA {
  VkStructureType vkMemoryGetZirconHandleInfoFUCHSIA;
  void vkMemoryGetZirconHandleInfoFUCHSIA;
  VkDeviceMemory vkMemoryGetZirconHandleInfoFUCHSIA;
  VkExternalMemoryHandleTypeFlagBits vkMemoryGetZirconHandleInfoFUCHSIA;
}

struct VkMemoryWin32HandlePropertiesKHR {
  VkStructureType vkMemoryWin32HandlePropertiesKHR;
  void vkMemoryWin32HandlePropertiesKHR;
  uint vkMemoryWin32HandlePropertiesKHR;
}

struct VkMemoryGetWin32HandleInfoKHR {
  VkStructureType vkMemoryGetWin32HandleInfoKHR;
  void vkMemoryGetWin32HandleInfoKHR;
  VkDeviceMemory vkMemoryGetWin32HandleInfoKHR;
  VkExternalMemoryHandleTypeFlagBits vkMemoryGetWin32HandleInfoKHR;
}

struct VkMemoryFdPropertiesKHR {
  VkStructureType vkMemoryFdPropertiesKHR;
  void vkMemoryFdPropertiesKHR;
  uint vkMemoryFdPropertiesKHR;
}

struct VkMemoryGetFdInfoKHR {
  VkStructureType vkMemoryGetFdInfoKHR;
  void vkMemoryGetFdInfoKHR;
  VkDeviceMemory vkMemoryGetFdInfoKHR;
  VkExternalMemoryHandleTypeFlagBits vkMemoryGetFdInfoKHR;
}

struct VkPhysicalDeviceExternalSemaphoreInfo {
  VkStructureType vkPhysicalDeviceExternalSemaphoreInfo;
  void vkPhysicalDeviceExternalSemaphoreInfo;
  VkExternalSemaphoreHandleTypeFlagBits vkPhysicalDeviceExternalSemaphoreInfo;
}

struct VkExternalSemaphoreProperties {
  VkStructureType vkExternalSemaphoreProperties;
  void vkExternalSemaphoreProperties;
  VkExternalSemaphoreHandleTypeFlags vkExternalSemaphoreProperties;
  VkExternalSemaphoreHandleTypeFlags vkExternalSemaphoreProperties;
  VkExternalSemaphoreFeatureFlags vkExternalSemaphoreProperties;
}

struct VkImportSemaphoreWin32HandleInfoKHR {
  VkStructureType vkImportSemaphoreWin32HandleInfoKHR;
  void vkImportSemaphoreWin32HandleInfoKHR;
  VkSemaphore vkImportSemaphoreWin32HandleInfoKHR;
  VkSemaphoreImportFlags vkImportSemaphoreWin32HandleInfoKHR;
  VkExternalSemaphoreHandleTypeFlagBits vkImportSemaphoreWin32HandleInfoKHR;
  void* vkImportSemaphoreWin32HandleInfoKHR;
  Lpcwstr vkImportSemaphoreWin32HandleInfoKHR;
}

struct VkSemaphoreGetWin32HandleInfoKHR {
  VkStructureType vkSemaphoreGetWin32HandleInfoKHR;
  void vkSemaphoreGetWin32HandleInfoKHR;
  VkSemaphore vkSemaphoreGetWin32HandleInfoKHR;
  VkExternalSemaphoreHandleTypeFlagBits vkSemaphoreGetWin32HandleInfoKHR;
}

struct VkImportSemaphoreFdInfoKHR {
  VkStructureType vkImportSemaphoreFdInfoKHR;
  void vkImportSemaphoreFdInfoKHR;
  VkSemaphore vkImportSemaphoreFdInfoKHR;
  VkSemaphoreImportFlags vkImportSemaphoreFdInfoKHR;
  VkExternalSemaphoreHandleTypeFlagBits vkImportSemaphoreFdInfoKHR;
  int vkImportSemaphoreFdInfoKHR;
}

struct VkSemaphoreGetFdInfoKHR {
  VkStructureType vkSemaphoreGetFdInfoKHR;
  void vkSemaphoreGetFdInfoKHR;
  VkSemaphore vkSemaphoreGetFdInfoKHR;
  VkExternalSemaphoreHandleTypeFlagBits vkSemaphoreGetFdInfoKHR;
}

struct VkImportSemaphoreZirconHandleInfoFUCHSIA {
  VkStructureType vkImportSemaphoreZirconHandleInfoFUCHSIA;
  void vkImportSemaphoreZirconHandleInfoFUCHSIA;
  VkSemaphore vkImportSemaphoreZirconHandleInfoFUCHSIA;
  VkSemaphoreImportFlags vkImportSemaphoreZirconHandleInfoFUCHSIA;
  VkExternalSemaphoreHandleTypeFlagBits vkImportSemaphoreZirconHandleInfoFUCHSIA;
  Zxhandle vkImportSemaphoreZirconHandleInfoFUCHSIA;
}

struct VkSemaphoreGetZirconHandleInfoFUCHSIA {
  VkStructureType vkSemaphoreGetZirconHandleInfoFUCHSIA;
  void vkSemaphoreGetZirconHandleInfoFUCHSIA;
  VkSemaphore vkSemaphoreGetZirconHandleInfoFUCHSIA;
  VkExternalSemaphoreHandleTypeFlagBits vkSemaphoreGetZirconHandleInfoFUCHSIA;
}

struct VkPhysicalDeviceExternalFenceInfo {
  VkStructureType vkPhysicalDeviceExternalFenceInfo;
  void vkPhysicalDeviceExternalFenceInfo;
  VkExternalFenceHandleTypeFlagBits vkPhysicalDeviceExternalFenceInfo;
}

struct VkExternalFenceProperties {
  VkStructureType vkExternalFenceProperties;
  void vkExternalFenceProperties;
  VkExternalFenceHandleTypeFlags vkExternalFenceProperties;
  VkExternalFenceHandleTypeFlags vkExternalFenceProperties;
  VkExternalFenceFeatureFlags vkExternalFenceProperties;
}

struct VkImportFenceWin32HandleInfoKHR {
  VkStructureType vkImportFenceWin32HandleInfoKHR;
  void vkImportFenceWin32HandleInfoKHR;
  VkFence vkImportFenceWin32HandleInfoKHR;
  VkFenceImportFlags vkImportFenceWin32HandleInfoKHR;
  VkExternalFenceHandleTypeFlagBits vkImportFenceWin32HandleInfoKHR;
  void* vkImportFenceWin32HandleInfoKHR;
  Lpcwstr vkImportFenceWin32HandleInfoKHR;
}

struct VkFenceGetWin32HandleInfoKHR {
  VkStructureType vkFenceGetWin32HandleInfoKHR;
  void vkFenceGetWin32HandleInfoKHR;
  VkFence vkFenceGetWin32HandleInfoKHR;
  VkExternalFenceHandleTypeFlagBits vkFenceGetWin32HandleInfoKHR;
}

struct VkImportFenceFdInfoKHR {
  VkStructureType vkImportFenceFdInfoKHR;
  void vkImportFenceFdInfoKHR;
  VkFence vkImportFenceFdInfoKHR;
  VkFenceImportFlags vkImportFenceFdInfoKHR;
  VkExternalFenceHandleTypeFlagBits vkImportFenceFdInfoKHR;
  int vkImportFenceFdInfoKHR;
}

struct VkFenceGetFdInfoKHR {
  VkStructureType vkFenceGetFdInfoKHR;
  void vkFenceGetFdInfoKHR;
  VkFence vkFenceGetFdInfoKHR;
  VkExternalFenceHandleTypeFlagBits vkFenceGetFdInfoKHR;
}

struct VkImportFenceSciSyncInfoNV {
  VkStructureType vkImportFenceSciSyncInfoNV;
  void vkImportFenceSciSyncInfoNV;
  VkFence vkImportFenceSciSyncInfoNV;
  VkExternalFenceHandleTypeFlagBits vkImportFenceSciSyncInfoNV;
  void vkImportFenceSciSyncInfoNV;
}

struct VkFenceGetSciSyncInfoNV {
  VkStructureType vkFenceGetSciSyncInfoNV;
  void vkFenceGetSciSyncInfoNV;
  VkFence vkFenceGetSciSyncInfoNV;
  VkExternalFenceHandleTypeFlagBits vkFenceGetSciSyncInfoNV;
}

struct VkImportSemaphoreSciSyncInfoNV {
  VkStructureType vkImportSemaphoreSciSyncInfoNV;
  void vkImportSemaphoreSciSyncInfoNV;
  VkSemaphore vkImportSemaphoreSciSyncInfoNV;
  VkExternalSemaphoreHandleTypeFlagBits vkImportSemaphoreSciSyncInfoNV;
  void vkImportSemaphoreSciSyncInfoNV;
}

struct VkSemaphoreGetSciSyncInfoNV {
  VkStructureType vkSemaphoreGetSciSyncInfoNV;
  void vkSemaphoreGetSciSyncInfoNV;
  VkSemaphore vkSemaphoreGetSciSyncInfoNV;
  VkExternalSemaphoreHandleTypeFlagBits vkSemaphoreGetSciSyncInfoNV;
}

struct VkSciSyncAttributesInfoNV {
  VkStructureType vkSciSyncAttributesInfoNV;
  void vkSciSyncAttributesInfoNV;
  VkSciSyncClientTypeNV vkSciSyncAttributesInfoNV;
  VkSciSyncPrimitiveTypeNV vkSciSyncAttributesInfoNV;
}

struct VkSemaphoreSciSyncPoolCreateInfoNV {
  VkStructureType vkSemaphoreSciSyncPoolCreateInfoNV;
  void vkSemaphoreSciSyncPoolCreateInfoNV;
  NvSciSyncObj vkSemaphoreSciSyncPoolCreateInfoNV;
}

struct VkSurfaceCapabilities2EXT {
  VkStructureType vkSurfaceCapabilities2EXT;
  void vkSurfaceCapabilities2EXT;
  uint vkSurfaceCapabilities2EXT;
  uint vkSurfaceCapabilities2EXT;
  VkExtent2D vkSurfaceCapabilities2EXT;
  VkExtent2D vkSurfaceCapabilities2EXT;
  VkExtent2D vkSurfaceCapabilities2EXT;
  uint vkSurfaceCapabilities2EXT;
  VkSurfaceTransformFlagsKHR vkSurfaceCapabilities2EXT;
  VkSurfaceTransformFlagBitsKHR vkSurfaceCapabilities2EXT;
  VkCompositeAlphaFlagsKHR vkSurfaceCapabilities2EXT;
  VkImageUsageFlags vkSurfaceCapabilities2EXT;
  VkSurfaceCounterFlagsEXT vkSurfaceCapabilities2EXT;
}

struct VkDisplayPowerInfoEXT {
  VkStructureType vkDisplayPowerInfoEXT;
  void vkDisplayPowerInfoEXT;
  VkDisplayPowerStateEXT vkDisplayPowerInfoEXT;
}

struct VkDeviceEventInfoEXT {
  VkStructureType vkDeviceEventInfoEXT;
  void vkDeviceEventInfoEXT;
  VkDeviceEventTypeEXT vkDeviceEventInfoEXT;
}

struct VkDisplayEventInfoEXT {
  VkStructureType vkDisplayEventInfoEXT;
  void vkDisplayEventInfoEXT;
  VkDisplayEventTypeEXT vkDisplayEventInfoEXT;
}

struct VkPhysicalDeviceGroupProperties {
  VkStructureType vkPhysicalDeviceGroupProperties;
  void vkPhysicalDeviceGroupProperties;
  uint vkPhysicalDeviceGroupProperties;
  VkPhysicalDevice vkPhysicalDeviceGroupProperties;
  VkBool32 vkPhysicalDeviceGroupProperties;
}

struct VkBindBufferMemoryInfo {
  VkStructureType vkBindBufferMemoryInfo;
  void vkBindBufferMemoryInfo;
  VkBuffer vkBindBufferMemoryInfo;
  VkDeviceMemory vkBindBufferMemoryInfo;
  VkDeviceSize vkBindBufferMemoryInfo;
}

struct VkBindImageMemoryInfo {
  VkStructureType vkBindImageMemoryInfo;
  void vkBindImageMemoryInfo;
  VkImage vkBindImageMemoryInfo;
  VkDeviceMemory vkBindImageMemoryInfo;
  VkDeviceSize vkBindImageMemoryInfo;
}

struct VkDeviceGroupPresentCapabilitiesKHR {
  VkStructureType vkDeviceGroupPresentCapabilitiesKHR;
  void vkDeviceGroupPresentCapabilitiesKHR;
  uint vkDeviceGroupPresentCapabilitiesKHR;
  VkDeviceGroupPresentModeFlagsKHR vkDeviceGroupPresentCapabilitiesKHR;
}

struct VkAcquireNextImageInfoKHR {
  VkStructureType vkAcquireNextImageInfoKHR;
  void vkAcquireNextImageInfoKHR;
  VkSwapchainKHR vkAcquireNextImageInfoKHR;
  ulong vkAcquireNextImageInfoKHR;
  VkSemaphore vkAcquireNextImageInfoKHR;
  VkFence vkAcquireNextImageInfoKHR;
  uint vkAcquireNextImageInfoKHR;
}

struct VkDescriptorUpdateTemplateEntry {
  uint vkDescriptorUpdateTemplateEntry;
  uint vkDescriptorUpdateTemplateEntry;
  uint vkDescriptorUpdateTemplateEntry;
  VkDescriptorType vkDescriptorUpdateTemplateEntry;
  usz vkDescriptorUpdateTemplateEntry;
  usz vkDescriptorUpdateTemplateEntry;
}

struct VkDescriptorUpdateTemplateCreateInfo {
  VkStructureType vkDescriptorUpdateTemplateCreateInfo;
  void vkDescriptorUpdateTemplateCreateInfo;
  VkDescriptorUpdateTemplateCreateFlags vkDescriptorUpdateTemplateCreateInfo;
  uint vkDescriptorUpdateTemplateCreateInfo;
  VkDescriptorUpdateTemplateEntry vkDescriptorUpdateTemplateCreateInfo;
  VkDescriptorUpdateTemplateType vkDescriptorUpdateTemplateCreateInfo;
  VkDescriptorSetLayout vkDescriptorUpdateTemplateCreateInfo;
  VkPipelineBindPoint vkDescriptorUpdateTemplateCreateInfo;
  VkPipelineLayout vkDescriptorUpdateTemplateCreateInfo;
  uint vkDescriptorUpdateTemplateCreateInfo;
}

struct VkXYColorEXT {
  float vkXYColorEXT;
  float vkXYColorEXT;
}

struct VkHdrMetadataEXT {
  VkStructureType vkHdrMetadataEXT;
  void vkHdrMetadataEXT;
  VkXYColorEXT vkHdrMetadataEXT;
  VkXYColorEXT vkHdrMetadataEXT;
  VkXYColorEXT vkHdrMetadataEXT;
  VkXYColorEXT vkHdrMetadataEXT;
  float vkHdrMetadataEXT;
  float vkHdrMetadataEXT;
  float vkHdrMetadataEXT;
  float vkHdrMetadataEXT;
}

struct VkRefreshCycleDurationGOOGLE {
  ulong vkRefreshCycleDurationGOOGLE;
}

struct VkPastPresentationTimingGOOGLE {
  uint vkPastPresentationTimingGOOGLE;
  ulong vkPastPresentationTimingGOOGLE;
  ulong vkPastPresentationTimingGOOGLE;
  ulong vkPastPresentationTimingGOOGLE;
  ulong vkPastPresentationTimingGOOGLE;
}

struct VkPresentTimeGOOGLE {
  uint vkPresentTimeGOOGLE;
  ulong vkPresentTimeGOOGLE;
}

struct VkIOSSurfaceCreateInfoMVK {
  VkStructureType vkIOSSurfaceCreateInfoMVK;
  void vkIOSSurfaceCreateInfoMVK;
  VkIOSSurfaceCreateFlagsMVK vkIOSSurfaceCreateInfoMVK;
  void vkIOSSurfaceCreateInfoMVK;
}

struct VkMacOSSurfaceCreateInfoMVK {
  VkStructureType vkMacOSSurfaceCreateInfoMVK;
  void vkMacOSSurfaceCreateInfoMVK;
  VkMacOSSurfaceCreateFlagsMVK vkMacOSSurfaceCreateInfoMVK;
  void vkMacOSSurfaceCreateInfoMVK;
}

struct VkMetalSurfaceCreateInfoEXT {
  VkStructureType vkMetalSurfaceCreateInfoEXT;
  void vkMetalSurfaceCreateInfoEXT;
  VkMetalSurfaceCreateFlagsEXT vkMetalSurfaceCreateInfoEXT;
  Cametallayer vkMetalSurfaceCreateInfoEXT;
}

struct VkViewportWScalingNV {
  float vkViewportWScalingNV;
  float vkViewportWScalingNV;
}

struct VkViewportSwizzleNV {
  VkViewportCoordinateSwizzleNV vkViewportSwizzleNV;
  VkViewportCoordinateSwizzleNV vkViewportSwizzleNV;
  VkViewportCoordinateSwizzleNV vkViewportSwizzleNV;
  VkViewportCoordinateSwizzleNV vkViewportSwizzleNV;
}

struct VkInputAttachmentAspectReference {
  uint vkInputAttachmentAspectReference;
  uint vkInputAttachmentAspectReference;
  VkImageAspectFlags vkInputAttachmentAspectReference;
}

struct VkPhysicalDeviceSurfaceInfo2KHR {
  VkStructureType vkPhysicalDeviceSurfaceInfo2KHR;
  void vkPhysicalDeviceSurfaceInfo2KHR;
  VkSurfaceKHR vkPhysicalDeviceSurfaceInfo2KHR;
}

struct VkSurfaceCapabilities2KHR {
  VkStructureType vkSurfaceCapabilities2KHR;
  void vkSurfaceCapabilities2KHR;
  VkSurfaceCapabilitiesKHR vkSurfaceCapabilities2KHR;
}

struct VkSurfaceFormat2KHR {
  VkStructureType vkSurfaceFormat2KHR;
  void vkSurfaceFormat2KHR;
  VkSurfaceFormatKHR vkSurfaceFormat2KHR;
}

struct VkDisplayProperties2KHR {
  VkStructureType vkDisplayProperties2KHR;
  void vkDisplayProperties2KHR;
  VkDisplayPropertiesKHR vkDisplayProperties2KHR;
}

struct VkDisplayPlaneProperties2KHR {
  VkStructureType vkDisplayPlaneProperties2KHR;
  void vkDisplayPlaneProperties2KHR;
  VkDisplayPlanePropertiesKHR vkDisplayPlaneProperties2KHR;
}

struct VkDisplayModeProperties2KHR {
  VkStructureType vkDisplayModeProperties2KHR;
  void vkDisplayModeProperties2KHR;
  VkDisplayModePropertiesKHR vkDisplayModeProperties2KHR;
}

struct VkDisplayPlaneInfo2KHR {
  VkStructureType vkDisplayPlaneInfo2KHR;
  void vkDisplayPlaneInfo2KHR;
  VkDisplayModeKHR vkDisplayPlaneInfo2KHR;
  uint vkDisplayPlaneInfo2KHR;
}

struct VkDisplayPlaneCapabilities2KHR {
  VkStructureType vkDisplayPlaneCapabilities2KHR;
  void vkDisplayPlaneCapabilities2KHR;
  VkDisplayPlaneCapabilitiesKHR vkDisplayPlaneCapabilities2KHR;
}

struct VkBufferMemoryRequirementsInfo2 {
  VkStructureType vkBufferMemoryRequirementsInfo2;
  void vkBufferMemoryRequirementsInfo2;
  VkBuffer vkBufferMemoryRequirementsInfo2;
}

struct VkDeviceBufferMemoryRequirements {
  VkStructureType vkDeviceBufferMemoryRequirements;
  void vkDeviceBufferMemoryRequirements;
  VkBufferCreateInfo vkDeviceBufferMemoryRequirements;
}

struct VkImageMemoryRequirementsInfo2 {
  VkStructureType vkImageMemoryRequirementsInfo2;
  void vkImageMemoryRequirementsInfo2;
  VkImage vkImageMemoryRequirementsInfo2;
}

struct VkImageSparseMemoryRequirementsInfo2 {
  VkStructureType vkImageSparseMemoryRequirementsInfo2;
  void vkImageSparseMemoryRequirementsInfo2;
  VkImage vkImageSparseMemoryRequirementsInfo2;
}

struct VkDeviceImageMemoryRequirements {
  VkStructureType vkDeviceImageMemoryRequirements;
  void vkDeviceImageMemoryRequirements;
  VkImageCreateInfo vkDeviceImageMemoryRequirements;
  VkImageAspectFlagBits vkDeviceImageMemoryRequirements;
}

struct VkMemoryRequirements2 {
  VkStructureType vkMemoryRequirements2;
  void vkMemoryRequirements2;
  VkMemoryRequirements vkMemoryRequirements2;
}

struct VkSparseImageMemoryRequirements2 {
  VkStructureType vkSparseImageMemoryRequirements2;
  void vkSparseImageMemoryRequirements2;
  VkSparseImageMemoryRequirements vkSparseImageMemoryRequirements2;
}

struct VkSamplerYcbcrConversionCreateInfo {
  VkStructureType vkSamplerYcbcrConversionCreateInfo;
  void vkSamplerYcbcrConversionCreateInfo;
  VkFormat vkSamplerYcbcrConversionCreateInfo;
  VkSamplerYcbcrModelConversion vkSamplerYcbcrConversionCreateInfo;
  VkSamplerYcbcrRange vkSamplerYcbcrConversionCreateInfo;
  VkComponentMapping vkSamplerYcbcrConversionCreateInfo;
  VkChromaLocation vkSamplerYcbcrConversionCreateInfo;
  VkChromaLocation vkSamplerYcbcrConversionCreateInfo;
  VkFilter vkSamplerYcbcrConversionCreateInfo;
  VkBool32 vkSamplerYcbcrConversionCreateInfo;
}

struct VkConditionalRenderingBeginInfoEXT {
  VkStructureType vkConditionalRenderingBeginInfoEXT;
  void vkConditionalRenderingBeginInfoEXT;
  VkBuffer vkConditionalRenderingBeginInfoEXT;
  VkDeviceSize vkConditionalRenderingBeginInfoEXT;
  VkConditionalRenderingFlagsEXT vkConditionalRenderingBeginInfoEXT;
}

struct VkDeviceQueueInfo2 {
  VkStructureType vkDeviceQueueInfo2;
  void vkDeviceQueueInfo2;
  VkDeviceQueueCreateFlags vkDeviceQueueInfo2;
  uint vkDeviceQueueInfo2;
  uint vkDeviceQueueInfo2;
}

struct VkSampleLocationEXT {
  float vkSampleLocationEXT;
  float vkSampleLocationEXT;
}

struct VkAttachmentSampleLocationsEXT {
  uint vkAttachmentSampleLocationsEXT;
  VkSampleLocationsInfoEXT vkAttachmentSampleLocationsEXT;
}

struct VkSubpassSampleLocationsEXT {
  uint vkSubpassSampleLocationsEXT;
  VkSampleLocationsInfoEXT vkSubpassSampleLocationsEXT;
}

struct VkMultisamplePropertiesEXT {
  VkStructureType vkMultisamplePropertiesEXT;
  void vkMultisamplePropertiesEXT;
  VkExtent2D vkMultisamplePropertiesEXT;
}

struct VkValidationCacheCreateInfoEXT {
  VkStructureType vkValidationCacheCreateInfoEXT;
  void vkValidationCacheCreateInfoEXT;
  VkValidationCacheCreateFlagsEXT vkValidationCacheCreateInfoEXT;
  usz vkValidationCacheCreateInfoEXT;
  void vkValidationCacheCreateInfoEXT;
}

struct VkDescriptorSetLayoutSupport {
  VkStructureType vkDescriptorSetLayoutSupport;
  void vkDescriptorSetLayoutSupport;
  VkBool32 vkDescriptorSetLayoutSupport;
}

struct VkNativeBufferUsage2ANDROID {
  ulong vkNativeBufferUsage2ANDROID;
  ulong vkNativeBufferUsage2ANDROID;
}

struct VkNativeBufferANDROID {
  VkStructureType vkNativeBufferANDROID;
  void vkNativeBufferANDROID;
  void vkNativeBufferANDROID;
  int vkNativeBufferANDROID;
  int vkNativeBufferANDROID;
  int vkNativeBufferANDROID;
  VkNativeBufferUsage2ANDROID vkNativeBufferANDROID;
}

struct VkSwapchainImageCreateInfoANDROID {
  VkStructureType vkSwapchainImageCreateInfoANDROID;
  void vkSwapchainImageCreateInfoANDROID;
  VkSwapchainImageUsageFlagsANDROID vkSwapchainImageCreateInfoANDROID;
}

struct VkPhysicalDevicePresentationPropertiesANDROID {
  VkStructureType vkPhysicalDevicePresentationPropertiesANDROID;
  void vkPhysicalDevicePresentationPropertiesANDROID;
  VkBool32 vkPhysicalDevicePresentationPropertiesANDROID;
}

struct VkShaderResourceUsageAMD {
  uint vkShaderResourceUsageAMD;
  uint vkShaderResourceUsageAMD;
  uint vkShaderResourceUsageAMD;
  usz vkShaderResourceUsageAMD;
  usz vkShaderResourceUsageAMD;
}

struct VkShaderStatisticsInfoAMD {
  VkShaderStageFlags vkShaderStatisticsInfoAMD;
  VkShaderResourceUsageAMD vkShaderStatisticsInfoAMD;
  uint vkShaderStatisticsInfoAMD;
  uint vkShaderStatisticsInfoAMD;
  uint vkShaderStatisticsInfoAMD;
  uint vkShaderStatisticsInfoAMD;
  uint vkShaderStatisticsInfoAMD;
}

struct VkDebugUtilsObjectTagInfoEXT {
  VkStructureType vkDebugUtilsObjectTagInfoEXT;
  void vkDebugUtilsObjectTagInfoEXT;
  VkObjectType vkDebugUtilsObjectTagInfoEXT;
  ulong vkDebugUtilsObjectTagInfoEXT;
  ulong vkDebugUtilsObjectTagInfoEXT;
  usz vkDebugUtilsObjectTagInfoEXT;
  void vkDebugUtilsObjectTagInfoEXT;
}

struct VkDebugUtilsLabelEXT {
  VkStructureType vkDebugUtilsLabelEXT;
  void vkDebugUtilsLabelEXT;
  char vkDebugUtilsLabelEXT;
  float vkDebugUtilsLabelEXT;
}

struct VkDebugUtilsMessengerCallbackDataEXT {
  VkStructureType vkDebugUtilsMessengerCallbackDataEXT;
  void vkDebugUtilsMessengerCallbackDataEXT;
  VkDebugUtilsMessengerCallbackDataFlagsEXT vkDebugUtilsMessengerCallbackDataEXT;
  char vkDebugUtilsMessengerCallbackDataEXT;
  int vkDebugUtilsMessengerCallbackDataEXT;
  char vkDebugUtilsMessengerCallbackDataEXT;
  uint vkDebugUtilsMessengerCallbackDataEXT;
  VkDebugUtilsLabelEXT vkDebugUtilsMessengerCallbackDataEXT;
  uint vkDebugUtilsMessengerCallbackDataEXT;
  VkDebugUtilsLabelEXT vkDebugUtilsMessengerCallbackDataEXT;
  uint vkDebugUtilsMessengerCallbackDataEXT;
  VkDebugUtilsObjectNameInfoEXT vkDebugUtilsMessengerCallbackDataEXT;
}

struct VkDeviceMemoryReportCallbackDataEXT {
  VkStructureType vkDeviceMemoryReportCallbackDataEXT;
  void vkDeviceMemoryReportCallbackDataEXT;
  VkDeviceMemoryReportFlagsEXT vkDeviceMemoryReportCallbackDataEXT;
  VkDeviceMemoryReportEventTypeEXT vkDeviceMemoryReportCallbackDataEXT;
  ulong vkDeviceMemoryReportCallbackDataEXT;
  VkDeviceSize vkDeviceMemoryReportCallbackDataEXT;
  VkObjectType vkDeviceMemoryReportCallbackDataEXT;
  ulong vkDeviceMemoryReportCallbackDataEXT;
  uint vkDeviceMemoryReportCallbackDataEXT;
}

struct VkMemoryHostPointerPropertiesEXT {
  VkStructureType vkMemoryHostPointerPropertiesEXT;
  void vkMemoryHostPointerPropertiesEXT;
  uint vkMemoryHostPointerPropertiesEXT;
}

struct VkCalibratedTimestampInfoEXT {
  VkStructureType vkCalibratedTimestampInfoEXT;
  void vkCalibratedTimestampInfoEXT;
  VkTimeDomainEXT vkCalibratedTimestampInfoEXT;
}

struct VkAttachmentDescription2 {
  VkStructureType vkAttachmentDescription2;
  void vkAttachmentDescription2;
  VkAttachmentDescriptionFlags vkAttachmentDescription2;
  VkFormat vkAttachmentDescription2;
  VkSampleCountFlagBits vkAttachmentDescription2;
  VkAttachmentLoadOp vkAttachmentDescription2;
  VkAttachmentStoreOp vkAttachmentDescription2;
  VkAttachmentLoadOp vkAttachmentDescription2;
  VkAttachmentStoreOp vkAttachmentDescription2;
  VkImageLayout vkAttachmentDescription2;
  VkImageLayout vkAttachmentDescription2;
}

struct VkAttachmentReference2 {
  VkStructureType vkAttachmentReference2;
  void vkAttachmentReference2;
  uint vkAttachmentReference2;
  VkImageLayout vkAttachmentReference2;
  VkImageAspectFlags vkAttachmentReference2;
}

struct VkSubpassDescription2 {
  VkStructureType vkSubpassDescription2;
  void vkSubpassDescription2;
  VkSubpassDescriptionFlags vkSubpassDescription2;
  VkPipelineBindPoint vkSubpassDescription2;
  uint vkSubpassDescription2;
  uint vkSubpassDescription2;
  VkAttachmentReference2 vkSubpassDescription2;
  uint vkSubpassDescription2;
  VkAttachmentReference2 vkSubpassDescription2;
  VkAttachmentReference2 vkSubpassDescription2;
  VkAttachmentReference2 vkSubpassDescription2;
  uint vkSubpassDescription2;
  uint vkSubpassDescription2;
}

struct VkSubpassDependency2 {
  VkStructureType vkSubpassDependency2;
  void vkSubpassDependency2;
  uint vkSubpassDependency2;
  uint vkSubpassDependency2;
  VkPipelineStageFlags vkSubpassDependency2;
  VkPipelineStageFlags vkSubpassDependency2;
  VkAccessFlags vkSubpassDependency2;
  VkAccessFlags vkSubpassDependency2;
  VkDependencyFlags vkSubpassDependency2;
  int vkSubpassDependency2;
}

struct VkRenderPassCreateInfo2 {
  VkStructureType vkRenderPassCreateInfo2;
  void vkRenderPassCreateInfo2;
  VkRenderPassCreateFlags vkRenderPassCreateInfo2;
  uint vkRenderPassCreateInfo2;
  VkAttachmentDescription2 vkRenderPassCreateInfo2;
  uint vkRenderPassCreateInfo2;
  VkSubpassDescription2 vkRenderPassCreateInfo2;
  uint vkRenderPassCreateInfo2;
  VkSubpassDependency2 vkRenderPassCreateInfo2;
  uint vkRenderPassCreateInfo2;
  uint vkRenderPassCreateInfo2;
}

struct VkSubpassBeginInfo {
  VkStructureType vkSubpassBeginInfo;
  void vkSubpassBeginInfo;
  VkSubpassContents vkSubpassBeginInfo;
}

struct VkSubpassEndInfo {
  VkStructureType vkSubpassEndInfo;
  void vkSubpassEndInfo;
}

struct VkSemaphoreWaitInfo {
  VkStructureType vkSemaphoreWaitInfo;
  void vkSemaphoreWaitInfo;
  VkSemaphoreWaitFlags vkSemaphoreWaitInfo;
  uint vkSemaphoreWaitInfo;
  VkSemaphore vkSemaphoreWaitInfo;
  ulong vkSemaphoreWaitInfo;
}

struct VkSemaphoreSignalInfo {
  VkStructureType vkSemaphoreSignalInfo;
  void vkSemaphoreSignalInfo;
  VkSemaphore vkSemaphoreSignalInfo;
  ulong vkSemaphoreSignalInfo;
}

struct VkVertexInputBindingDivisorDescriptionEXT {
  uint vkVertexInputBindingDivisorDescriptionEXT;
  uint vkVertexInputBindingDivisorDescriptionEXT;
}

struct VkAndroidHardwareBufferPropertiesANDROID {
  VkStructureType vkAndroidHardwareBufferPropertiesANDROID;
  void vkAndroidHardwareBufferPropertiesANDROID;
  VkDeviceSize vkAndroidHardwareBufferPropertiesANDROID;
  uint vkAndroidHardwareBufferPropertiesANDROID;
}

struct VkMemoryGetAndroidHardwareBufferInfoANDROID {
  VkStructureType vkMemoryGetAndroidHardwareBufferInfoANDROID;
  void vkMemoryGetAndroidHardwareBufferInfoANDROID;
  VkDeviceMemory vkMemoryGetAndroidHardwareBufferInfoANDROID;
}

struct VkCheckpointDataNV {
  VkStructureType vkCheckpointDataNV;
  void vkCheckpointDataNV;
  VkPipelineStageFlagBits vkCheckpointDataNV;
  void vkCheckpointDataNV;
}

struct VkShadingRatePaletteNV {
  uint vkShadingRatePaletteNV;
  VkShadingRatePaletteEntryNV vkShadingRatePaletteNV;
}

struct VkCoarseSampleLocationNV {
  uint vkCoarseSampleLocationNV;
  uint vkCoarseSampleLocationNV;
  uint vkCoarseSampleLocationNV;
}

struct VkCoarseSampleOrderCustomNV {
  VkShadingRatePaletteEntryNV vkCoarseSampleOrderCustomNV;
  uint vkCoarseSampleOrderCustomNV;
  uint vkCoarseSampleOrderCustomNV;
  VkCoarseSampleLocationNV vkCoarseSampleOrderCustomNV;
}

struct VkDrawMeshTasksIndirectCommandNV {
  uint vkDrawMeshTasksIndirectCommandNV;
  uint vkDrawMeshTasksIndirectCommandNV;
}

struct VkDrawMeshTasksIndirectCommandEXT {
  uint vkDrawMeshTasksIndirectCommandEXT;
  uint vkDrawMeshTasksIndirectCommandEXT;
  uint vkDrawMeshTasksIndirectCommandEXT;
}

struct VkRayTracingShaderGroupCreateInfoNV {
  VkStructureType vkRayTracingShaderGroupCreateInfoNV;
  void vkRayTracingShaderGroupCreateInfoNV;
  VkRayTracingShaderGroupTypeKHR vkRayTracingShaderGroupCreateInfoNV;
  uint vkRayTracingShaderGroupCreateInfoNV;
  uint vkRayTracingShaderGroupCreateInfoNV;
  uint vkRayTracingShaderGroupCreateInfoNV;
  uint vkRayTracingShaderGroupCreateInfoNV;
}

struct VkRayTracingShaderGroupCreateInfoKHR {
  VkStructureType vkRayTracingShaderGroupCreateInfoKHR;
  void vkRayTracingShaderGroupCreateInfoKHR;
  VkRayTracingShaderGroupTypeKHR vkRayTracingShaderGroupCreateInfoKHR;
  uint vkRayTracingShaderGroupCreateInfoKHR;
  uint vkRayTracingShaderGroupCreateInfoKHR;
  uint vkRayTracingShaderGroupCreateInfoKHR;
  uint vkRayTracingShaderGroupCreateInfoKHR;
  void vkRayTracingShaderGroupCreateInfoKHR;
}

struct VkRayTracingPipelineCreateInfoNV {
  VkStructureType vkRayTracingPipelineCreateInfoNV;
  void vkRayTracingPipelineCreateInfoNV;
  VkPipelineCreateFlags vkRayTracingPipelineCreateInfoNV;
  uint vkRayTracingPipelineCreateInfoNV;
  VkPipelineShaderStageCreateInfo vkRayTracingPipelineCreateInfoNV;
  uint vkRayTracingPipelineCreateInfoNV;
  VkRayTracingShaderGroupCreateInfoNV vkRayTracingPipelineCreateInfoNV;
  uint vkRayTracingPipelineCreateInfoNV;
  VkPipelineLayout vkRayTracingPipelineCreateInfoNV;
  VkPipeline vkRayTracingPipelineCreateInfoNV;
  int vkRayTracingPipelineCreateInfoNV;
}

struct VkRayTracingPipelineCreateInfoKHR {
  VkStructureType vkRayTracingPipelineCreateInfoKHR;
  void vkRayTracingPipelineCreateInfoKHR;
  VkPipelineCreateFlags vkRayTracingPipelineCreateInfoKHR;
  uint vkRayTracingPipelineCreateInfoKHR;
  VkPipelineShaderStageCreateInfo vkRayTracingPipelineCreateInfoKHR;
  uint vkRayTracingPipelineCreateInfoKHR;
  VkRayTracingShaderGroupCreateInfoKHR vkRayTracingPipelineCreateInfoKHR;
  uint vkRayTracingPipelineCreateInfoKHR;
  VkPipelineLibraryCreateInfoKHR vkRayTracingPipelineCreateInfoKHR;
  VkRayTracingPipelineInterfaceCreateInfoKHR vkRayTracingPipelineCreateInfoKHR;
  VkPipelineDynamicStateCreateInfo vkRayTracingPipelineCreateInfoKHR;
  VkPipelineLayout vkRayTracingPipelineCreateInfoKHR;
  VkPipeline vkRayTracingPipelineCreateInfoKHR;
  int vkRayTracingPipelineCreateInfoKHR;
}

struct VkGeometryTrianglesNV {
  VkStructureType vkGeometryTrianglesNV;
  void vkGeometryTrianglesNV;
  VkBuffer vkGeometryTrianglesNV;
  VkDeviceSize vkGeometryTrianglesNV;
  uint vkGeometryTrianglesNV;
  VkDeviceSize vkGeometryTrianglesNV;
  VkFormat vkGeometryTrianglesNV;
  VkBuffer vkGeometryTrianglesNV;
  VkDeviceSize vkGeometryTrianglesNV;
  uint vkGeometryTrianglesNV;
  VkIndexType vkGeometryTrianglesNV;
  VkBuffer vkGeometryTrianglesNV;
  VkDeviceSize vkGeometryTrianglesNV;
}

struct VkGeometryAABBNV {
  VkStructureType vkGeometryAABBNV;
  void vkGeometryAABBNV;
  VkBuffer vkGeometryAABBNV;
  uint vkGeometryAABBNV;
  uint vkGeometryAABBNV;
  VkDeviceSize vkGeometryAABBNV;
}

struct VkGeometryDataNV {
  VkGeometryTrianglesNV vkGeometryDataNV;
  VkGeometryAABBNV vkGeometryDataNV;
}

struct VkGeometryNV {
  VkStructureType vkGeometryNV;
  void vkGeometryNV;
  VkGeometryTypeKHR vkGeometryNV;
  VkGeometryDataNV vkGeometryNV;
  VkGeometryFlagsKHR vkGeometryNV;
}

struct VkAccelerationStructureInfoNV {
  VkStructureType vkAccelerationStructureInfoNV;
  void vkAccelerationStructureInfoNV;
  VkAccelerationStructureTypeNV vkAccelerationStructureInfoNV;
  VkBuildAccelerationStructureFlagsNV vkAccelerationStructureInfoNV;
  uint vkAccelerationStructureInfoNV;
  uint vkAccelerationStructureInfoNV;
  VkGeometryNV vkAccelerationStructureInfoNV;
}

struct VkAccelerationStructureCreateInfoNV {
  VkStructureType vkAccelerationStructureCreateInfoNV;
  void vkAccelerationStructureCreateInfoNV;
  VkDeviceSize vkAccelerationStructureCreateInfoNV;
  VkAccelerationStructureInfoNV vkAccelerationStructureCreateInfoNV;
}

struct VkBindAccelerationStructureMemoryInfoNV {
  VkStructureType vkBindAccelerationStructureMemoryInfoNV;
  void vkBindAccelerationStructureMemoryInfoNV;
  VkAccelerationStructureNV vkBindAccelerationStructureMemoryInfoNV;
  VkDeviceMemory vkBindAccelerationStructureMemoryInfoNV;
  VkDeviceSize vkBindAccelerationStructureMemoryInfoNV;
  uint vkBindAccelerationStructureMemoryInfoNV;
  uint vkBindAccelerationStructureMemoryInfoNV;
}

struct VkAccelerationStructureMemoryRequirementsInfoNV {
  VkStructureType vkAccelerationStructureMemoryRequirementsInfoNV;
  void vkAccelerationStructureMemoryRequirementsInfoNV;
  VkAccelerationStructureMemoryRequirementsTypeNV vkAccelerationStructureMemoryRequirementsInfoNV;
  VkAccelerationStructureNV vkAccelerationStructureMemoryRequirementsInfoNV;
}

struct VkStridedDeviceAddressRegionKHR {
  VkDeviceAddress vkStridedDeviceAddressRegionKHR;
  VkDeviceSize vkStridedDeviceAddressRegionKHR;
  VkDeviceSize vkStridedDeviceAddressRegionKHR;
}

struct VkTraceRaysIndirectCommandKHR {
  uint vkTraceRaysIndirectCommandKHR;
  uint vkTraceRaysIndirectCommandKHR;
  uint vkTraceRaysIndirectCommandKHR;
}

struct VkTraceRaysIndirectCommand2KHR {
  VkDeviceAddress vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  VkDeviceAddress vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  VkDeviceAddress vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  VkDeviceAddress vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  VkDeviceSize vkTraceRaysIndirectCommand2KHR;
  uint vkTraceRaysIndirectCommand2KHR;
  uint vkTraceRaysIndirectCommand2KHR;
  uint vkTraceRaysIndirectCommand2KHR;
}

struct VkDrmFormatModifierPropertiesEXT {
  ulong vkDrmFormatModifierPropertiesEXT;
  uint vkDrmFormatModifierPropertiesEXT;
  VkFormatFeatureFlags vkDrmFormatModifierPropertiesEXT;
}

struct VkImageDrmFormatModifierPropertiesEXT {
  VkStructureType vkImageDrmFormatModifierPropertiesEXT;
  void vkImageDrmFormatModifierPropertiesEXT;
  ulong vkImageDrmFormatModifierPropertiesEXT;
}

struct VkBufferDeviceAddressInfo {
  VkStructureType vkBufferDeviceAddressInfo;
  void vkBufferDeviceAddressInfo;
  VkBuffer vkBufferDeviceAddressInfo;
}

struct VkFramebufferAttachmentImageInfo {
  VkStructureType vkFramebufferAttachmentImageInfo;
  void vkFramebufferAttachmentImageInfo;
  VkImageCreateFlags vkFramebufferAttachmentImageInfo;
  VkImageUsageFlags vkFramebufferAttachmentImageInfo;
  uint vkFramebufferAttachmentImageInfo;
  uint vkFramebufferAttachmentImageInfo;
  uint vkFramebufferAttachmentImageInfo;
  uint vkFramebufferAttachmentImageInfo;
  VkFormat vkFramebufferAttachmentImageInfo;
}

struct VkCooperativeMatrixPropertiesNV {
  VkStructureType vkCooperativeMatrixPropertiesNV;
  void vkCooperativeMatrixPropertiesNV;
  uint vkCooperativeMatrixPropertiesNV;
  uint vkCooperativeMatrixPropertiesNV;
  uint vkCooperativeMatrixPropertiesNV;
  VkComponentTypeNV vkCooperativeMatrixPropertiesNV;
  VkComponentTypeNV vkCooperativeMatrixPropertiesNV;
  VkComponentTypeNV vkCooperativeMatrixPropertiesNV;
  VkComponentTypeNV vkCooperativeMatrixPropertiesNV;
  VkScopeNV vkCooperativeMatrixPropertiesNV;
}

struct VkImageViewHandleInfoNVX {
  VkStructureType vkImageViewHandleInfoNVX;
  void vkImageViewHandleInfoNVX;
  VkImageView vkImageViewHandleInfoNVX;
  VkDescriptorType vkImageViewHandleInfoNVX;
  VkSampler vkImageViewHandleInfoNVX;
}

struct VkImageViewAddressPropertiesNVX {
  VkStructureType vkImageViewAddressPropertiesNVX;
  void vkImageViewAddressPropertiesNVX;
  VkDeviceAddress vkImageViewAddressPropertiesNVX;
  VkDeviceSize vkImageViewAddressPropertiesNVX;
}

struct VkPipelineCreationFeedback {
  VkPipelineCreationFeedbackFlags vkPipelineCreationFeedback;
  ulong vkPipelineCreationFeedback;
}

struct VkPerformanceCounterKHR {
  VkStructureType vkPerformanceCounterKHR;
  void vkPerformanceCounterKHR;
  VkPerformanceCounterUnitKHR vkPerformanceCounterKHR;
  VkPerformanceCounterScopeKHR vkPerformanceCounterKHR;
  VkPerformanceCounterStorageKHR vkPerformanceCounterKHR;
  char vkPerformanceCounterKHR;
}

struct VkPerformanceCounterDescriptionKHR {
  VkStructureType vkPerformanceCounterDescriptionKHR;
  void vkPerformanceCounterDescriptionKHR;
  VkPerformanceCounterDescriptionFlagsKHR vkPerformanceCounterDescriptionKHR;
  char vkPerformanceCounterDescriptionKHR;
  char vkPerformanceCounterDescriptionKHR;
  char vkPerformanceCounterDescriptionKHR;
}

struct VkAcquireProfilingLockInfoKHR {
  VkStructureType vkAcquireProfilingLockInfoKHR;
  void vkAcquireProfilingLockInfoKHR;
  VkAcquireProfilingLockFlagsKHR vkAcquireProfilingLockInfoKHR;
  ulong vkAcquireProfilingLockInfoKHR;
}

struct VkHeadlessSurfaceCreateInfoEXT {
  VkStructureType vkHeadlessSurfaceCreateInfoEXT;
  void vkHeadlessSurfaceCreateInfoEXT;
  VkHeadlessSurfaceCreateFlagsEXT vkHeadlessSurfaceCreateInfoEXT;
}

struct VkFramebufferMixedSamplesCombinationNV {
  VkStructureType vkFramebufferMixedSamplesCombinationNV;
  void vkFramebufferMixedSamplesCombinationNV;
  VkCoverageReductionModeNV vkFramebufferMixedSamplesCombinationNV;
  VkSampleCountFlagBits vkFramebufferMixedSamplesCombinationNV;
  VkSampleCountFlags vkFramebufferMixedSamplesCombinationNV;
  VkSampleCountFlags vkFramebufferMixedSamplesCombinationNV;
}

struct VkPerformanceValueINTEL {
  VkPerformanceValueTypeINTEL vkPerformanceValueINTEL;
  VkPerformanceValueDataINTEL vkPerformanceValueINTEL;
}

struct VkInitializePerformanceApiInfoINTEL {
  VkStructureType vkInitializePerformanceApiInfoINTEL;
  void vkInitializePerformanceApiInfoINTEL;
  void vkInitializePerformanceApiInfoINTEL;
}

struct VkPerformanceMarkerInfoINTEL {
  VkStructureType vkPerformanceMarkerInfoINTEL;
  void vkPerformanceMarkerInfoINTEL;
  ulong vkPerformanceMarkerInfoINTEL;
}

struct VkPerformanceStreamMarkerInfoINTEL {
  VkStructureType vkPerformanceStreamMarkerInfoINTEL;
  void vkPerformanceStreamMarkerInfoINTEL;
  uint vkPerformanceStreamMarkerInfoINTEL;
}

struct VkPerformanceOverrideInfoINTEL {
  VkStructureType vkPerformanceOverrideInfoINTEL;
  void vkPerformanceOverrideInfoINTEL;
  VkPerformanceOverrideTypeINTEL vkPerformanceOverrideInfoINTEL;
  VkBool32 vkPerformanceOverrideInfoINTEL;
  ulong vkPerformanceOverrideInfoINTEL;
}

struct VkPerformanceConfigurationAcquireInfoINTEL {
  VkStructureType vkPerformanceConfigurationAcquireInfoINTEL;
  void vkPerformanceConfigurationAcquireInfoINTEL;
  VkPerformanceConfigurationTypeINTEL vkPerformanceConfigurationAcquireInfoINTEL;
}

struct VkPipelineInfoKHR {
  VkStructureType vkPipelineInfoKHR;
  void vkPipelineInfoKHR;
  VkPipeline vkPipelineInfoKHR;
}

struct VkPipelineExecutablePropertiesKHR {
  VkStructureType vkPipelineExecutablePropertiesKHR;
  void vkPipelineExecutablePropertiesKHR;
  VkShaderStageFlags vkPipelineExecutablePropertiesKHR;
  char vkPipelineExecutablePropertiesKHR;
  char vkPipelineExecutablePropertiesKHR;
  uint vkPipelineExecutablePropertiesKHR;
}

struct VkPipelineExecutableInfoKHR {
  VkStructureType vkPipelineExecutableInfoKHR;
  void vkPipelineExecutableInfoKHR;
  VkPipeline vkPipelineExecutableInfoKHR;
  uint vkPipelineExecutableInfoKHR;
}

struct VkPipelineExecutableStatisticKHR {
  VkStructureType vkPipelineExecutableStatisticKHR;
  void vkPipelineExecutableStatisticKHR;
  char vkPipelineExecutableStatisticKHR;
  char vkPipelineExecutableStatisticKHR;
  VkPipelineExecutableStatisticFormatKHR vkPipelineExecutableStatisticKHR;
  VkPipelineExecutableStatisticValueKHR vkPipelineExecutableStatisticKHR;
}

struct VkPipelineExecutableInternalRepresentationKHR {
  VkStructureType vkPipelineExecutableInternalRepresentationKHR;
  void vkPipelineExecutableInternalRepresentationKHR;
  char vkPipelineExecutableInternalRepresentationKHR;
  char vkPipelineExecutableInternalRepresentationKHR;
  VkBool32 vkPipelineExecutableInternalRepresentationKHR;
  usz vkPipelineExecutableInternalRepresentationKHR;
  void vkPipelineExecutableInternalRepresentationKHR;
}

struct VkDeviceMemoryOpaqueCaptureAddressInfo {
  VkStructureType vkDeviceMemoryOpaqueCaptureAddressInfo;
  void vkDeviceMemoryOpaqueCaptureAddressInfo;
  VkDeviceMemory vkDeviceMemoryOpaqueCaptureAddressInfo;
}

struct VkFaultData {
  VkStructureType vkFaultData;
  void vkFaultData;
  VkFaultLevel vkFaultData;
  VkFaultType vkFaultData;
}

struct VkPhysicalDeviceToolProperties {
  VkStructureType vkPhysicalDeviceToolProperties;
  void vkPhysicalDeviceToolProperties;
  char vkPhysicalDeviceToolProperties;
  char vkPhysicalDeviceToolProperties;
  VkToolPurposeFlags vkPhysicalDeviceToolProperties;
  char vkPhysicalDeviceToolProperties;
  char vkPhysicalDeviceToolProperties;
}

struct VkAccelerationStructureGeometryTrianglesDataKHR {
  VkStructureType vkAccelerationStructureGeometryTrianglesDataKHR;
  void vkAccelerationStructureGeometryTrianglesDataKHR;
  VkFormat vkAccelerationStructureGeometryTrianglesDataKHR;
  VkDeviceOrHostAddressConstKHR vkAccelerationStructureGeometryTrianglesDataKHR;
  VkDeviceSize vkAccelerationStructureGeometryTrianglesDataKHR;
  uint vkAccelerationStructureGeometryTrianglesDataKHR;
  VkIndexType vkAccelerationStructureGeometryTrianglesDataKHR;
  VkDeviceOrHostAddressConstKHR vkAccelerationStructureGeometryTrianglesDataKHR;
  VkDeviceOrHostAddressConstKHR vkAccelerationStructureGeometryTrianglesDataKHR;
}

struct VkAccelerationStructureGeometryAabbsDataKHR {
  VkStructureType vkAccelerationStructureGeometryAabbsDataKHR;
  void vkAccelerationStructureGeometryAabbsDataKHR;
  VkDeviceOrHostAddressConstKHR vkAccelerationStructureGeometryAabbsDataKHR;
  VkDeviceSize vkAccelerationStructureGeometryAabbsDataKHR;
}

struct VkAccelerationStructureGeometryInstancesDataKHR {
  VkStructureType vkAccelerationStructureGeometryInstancesDataKHR;
  void vkAccelerationStructureGeometryInstancesDataKHR;
  VkBool32 vkAccelerationStructureGeometryInstancesDataKHR;
  VkDeviceOrHostAddressConstKHR vkAccelerationStructureGeometryInstancesDataKHR;
}

struct VkAccelerationStructureGeometryKHR {
  VkStructureType vkAccelerationStructureGeometryKHR;
  void vkAccelerationStructureGeometryKHR;
  VkGeometryTypeKHR vkAccelerationStructureGeometryKHR;
  VkAccelerationStructureGeometryDataKHR vkAccelerationStructureGeometryKHR;
  VkGeometryFlagsKHR vkAccelerationStructureGeometryKHR;
}

struct VkAccelerationStructureBuildGeometryInfoKHR {
  VkStructureType vkAccelerationStructureBuildGeometryInfoKHR;
  void vkAccelerationStructureBuildGeometryInfoKHR;
  VkAccelerationStructureTypeKHR vkAccelerationStructureBuildGeometryInfoKHR;
  VkBuildAccelerationStructureFlagsKHR vkAccelerationStructureBuildGeometryInfoKHR;
  VkBuildAccelerationStructureModeKHR vkAccelerationStructureBuildGeometryInfoKHR;
  VkAccelerationStructureKHR vkAccelerationStructureBuildGeometryInfoKHR;
  VkAccelerationStructureKHR vkAccelerationStructureBuildGeometryInfoKHR;
  uint vkAccelerationStructureBuildGeometryInfoKHR;
  VkAccelerationStructureGeometryKHR vkAccelerationStructureBuildGeometryInfoKHR;
  VkAccelerationStructureGeometryKHR vkAccelerationStructureBuildGeometryInfoKHR;
  VkDeviceOrHostAddressKHR vkAccelerationStructureBuildGeometryInfoKHR;
}

struct VkAccelerationStructureBuildRangeInfoKHR {
  uint vkAccelerationStructureBuildRangeInfoKHR;
  uint vkAccelerationStructureBuildRangeInfoKHR;
  uint vkAccelerationStructureBuildRangeInfoKHR;
  uint vkAccelerationStructureBuildRangeInfoKHR;
}

struct VkAccelerationStructureCreateInfoKHR {
  VkStructureType vkAccelerationStructureCreateInfoKHR;
  void vkAccelerationStructureCreateInfoKHR;
  VkAccelerationStructureCreateFlagsKHR vkAccelerationStructureCreateInfoKHR;
  VkBuffer vkAccelerationStructureCreateInfoKHR;
  VkDeviceSize vkAccelerationStructureCreateInfoKHR;
  VkDeviceSize vkAccelerationStructureCreateInfoKHR;
  VkAccelerationStructureTypeKHR vkAccelerationStructureCreateInfoKHR;
  VkDeviceAddress vkAccelerationStructureCreateInfoKHR;
}

struct VkAabbPositionsKHR {
  float vkAabbPositionsKHR;
  float vkAabbPositionsKHR;
  float vkAabbPositionsKHR;
  float vkAabbPositionsKHR;
  float vkAabbPositionsKHR;
  float vkAabbPositionsKHR;
}

struct VkTransformMatrixKHR {
  float vkTransformMatrixKHR;
}

struct VkAccelerationStructureInstanceKHR {
  VkTransformMatrixKHR vkAccelerationStructureInstanceKHR;
  uint vkAccelerationStructureInstanceKHR;
  uint vkAccelerationStructureInstanceKHR;
  uint vkAccelerationStructureInstanceKHR;
  VkGeometryInstanceFlagsKHR vkAccelerationStructureInstanceKHR;
  ulong vkAccelerationStructureInstanceKHR;
}

struct VkAccelerationStructureDeviceAddressInfoKHR {
  VkStructureType vkAccelerationStructureDeviceAddressInfoKHR;
  void vkAccelerationStructureDeviceAddressInfoKHR;
  VkAccelerationStructureKHR vkAccelerationStructureDeviceAddressInfoKHR;
}

struct VkAccelerationStructureVersionInfoKHR {
  VkStructureType vkAccelerationStructureVersionInfoKHR;
  void vkAccelerationStructureVersionInfoKHR;
  char vkAccelerationStructureVersionInfoKHR;
}

struct VkCopyAccelerationStructureInfoKHR {
  VkStructureType vkCopyAccelerationStructureInfoKHR;
  void vkCopyAccelerationStructureInfoKHR;
  VkAccelerationStructureKHR vkCopyAccelerationStructureInfoKHR;
  VkAccelerationStructureKHR vkCopyAccelerationStructureInfoKHR;
  VkCopyAccelerationStructureModeKHR vkCopyAccelerationStructureInfoKHR;
}

struct VkCopyAccelerationStructureToMemoryInfoKHR {
  VkStructureType vkCopyAccelerationStructureToMemoryInfoKHR;
  void vkCopyAccelerationStructureToMemoryInfoKHR;
  VkAccelerationStructureKHR vkCopyAccelerationStructureToMemoryInfoKHR;
  VkDeviceOrHostAddressKHR vkCopyAccelerationStructureToMemoryInfoKHR;
  VkCopyAccelerationStructureModeKHR vkCopyAccelerationStructureToMemoryInfoKHR;
}

struct VkCopyMemoryToAccelerationStructureInfoKHR {
  VkStructureType vkCopyMemoryToAccelerationStructureInfoKHR;
  void vkCopyMemoryToAccelerationStructureInfoKHR;
  VkDeviceOrHostAddressConstKHR vkCopyMemoryToAccelerationStructureInfoKHR;
  VkAccelerationStructureKHR vkCopyMemoryToAccelerationStructureInfoKHR;
  VkCopyAccelerationStructureModeKHR vkCopyMemoryToAccelerationStructureInfoKHR;
}

struct VkRayTracingPipelineInterfaceCreateInfoKHR {
  VkStructureType vkRayTracingPipelineInterfaceCreateInfoKHR;
  void vkRayTracingPipelineInterfaceCreateInfoKHR;
  uint vkRayTracingPipelineInterfaceCreateInfoKHR;
  uint vkRayTracingPipelineInterfaceCreateInfoKHR;
}

struct VkRefreshObjectKHR {
  VkObjectType vkRefreshObjectKHR;
  ulong vkRefreshObjectKHR;
  VkRefreshObjectFlagsKHR vkRefreshObjectKHR;
}

struct VkRefreshObjectListKHR {
  VkStructureType vkRefreshObjectListKHR;
  void vkRefreshObjectListKHR;
  uint vkRefreshObjectListKHR;
  VkRefreshObjectKHR vkRefreshObjectListKHR;
}

struct VkColorBlendEquationEXT {
  VkBlendFactor vkColorBlendEquationEXT;
  VkBlendFactor vkColorBlendEquationEXT;
  VkBlendOp vkColorBlendEquationEXT;
  VkBlendFactor vkColorBlendEquationEXT;
  VkBlendFactor vkColorBlendEquationEXT;
  VkBlendOp vkColorBlendEquationEXT;
}

struct VkColorBlendAdvancedEXT {
  VkBlendOp vkColorBlendAdvancedEXT;
  VkBool32 vkColorBlendAdvancedEXT;
  VkBool32 vkColorBlendAdvancedEXT;
  VkBlendOverlapEXT vkColorBlendAdvancedEXT;
  VkBool32 vkColorBlendAdvancedEXT;
}

struct VkBufferCopy2 {
  VkStructureType vkBufferCopy2;
  void vkBufferCopy2;
  VkDeviceSize vkBufferCopy2;
  VkDeviceSize vkBufferCopy2;
  VkDeviceSize vkBufferCopy2;
}

struct VkImageCopy2 {
  VkStructureType vkImageCopy2;
  void vkImageCopy2;
  VkImageSubresourceLayers vkImageCopy2;
  VkOffset3D vkImageCopy2;
  VkImageSubresourceLayers vkImageCopy2;
  VkOffset3D vkImageCopy2;
  VkExtent3D vkImageCopy2;
}

struct VkImageBlit2 {
  VkStructureType vkImageBlit2;
  void vkImageBlit2;
  VkImageSubresourceLayers vkImageBlit2;
  VkOffset3D vkImageBlit2;
  VkImageSubresourceLayers vkImageBlit2;
  VkOffset3D vkImageBlit2;
}

struct VkBufferImageCopy2 {
  VkStructureType vkBufferImageCopy2;
  void vkBufferImageCopy2;
  VkDeviceSize vkBufferImageCopy2;
  uint vkBufferImageCopy2;
  uint vkBufferImageCopy2;
  VkImageSubresourceLayers vkBufferImageCopy2;
  VkOffset3D vkBufferImageCopy2;
  VkExtent3D vkBufferImageCopy2;
}

struct VkImageResolve2 {
  VkStructureType vkImageResolve2;
  void vkImageResolve2;
  VkImageSubresourceLayers vkImageResolve2;
  VkOffset3D vkImageResolve2;
  VkImageSubresourceLayers vkImageResolve2;
  VkOffset3D vkImageResolve2;
  VkExtent3D vkImageResolve2;
}

struct VkCopyBufferInfo2 {
  VkStructureType vkCopyBufferInfo2;
  void vkCopyBufferInfo2;
  VkBuffer vkCopyBufferInfo2;
  VkBuffer vkCopyBufferInfo2;
  uint vkCopyBufferInfo2;
  VkBufferCopy2 vkCopyBufferInfo2;
}

struct VkCopyImageInfo2 {
  VkStructureType vkCopyImageInfo2;
  void vkCopyImageInfo2;
  VkImage vkCopyImageInfo2;
  VkImageLayout vkCopyImageInfo2;
  VkImage vkCopyImageInfo2;
  VkImageLayout vkCopyImageInfo2;
  uint vkCopyImageInfo2;
  VkImageCopy2 vkCopyImageInfo2;
}

struct VkBlitImageInfo2 {
  VkStructureType vkBlitImageInfo2;
  void vkBlitImageInfo2;
  VkImage vkBlitImageInfo2;
  VkImageLayout vkBlitImageInfo2;
  VkImage vkBlitImageInfo2;
  VkImageLayout vkBlitImageInfo2;
  uint vkBlitImageInfo2;
  VkImageBlit2 vkBlitImageInfo2;
  VkFilter vkBlitImageInfo2;
}

struct VkCopyBufferToImageInfo2 {
  VkStructureType vkCopyBufferToImageInfo2;
  void vkCopyBufferToImageInfo2;
  VkBuffer vkCopyBufferToImageInfo2;
  VkImage vkCopyBufferToImageInfo2;
  VkImageLayout vkCopyBufferToImageInfo2;
  uint vkCopyBufferToImageInfo2;
  VkBufferImageCopy2 vkCopyBufferToImageInfo2;
}

struct VkCopyImageToBufferInfo2 {
  VkStructureType vkCopyImageToBufferInfo2;
  void vkCopyImageToBufferInfo2;
  VkImage vkCopyImageToBufferInfo2;
  VkImageLayout vkCopyImageToBufferInfo2;
  VkBuffer vkCopyImageToBufferInfo2;
  uint vkCopyImageToBufferInfo2;
  VkBufferImageCopy2 vkCopyImageToBufferInfo2;
}

struct VkResolveImageInfo2 {
  VkStructureType vkResolveImageInfo2;
  void vkResolveImageInfo2;
  VkImage vkResolveImageInfo2;
  VkImageLayout vkResolveImageInfo2;
  VkImage vkResolveImageInfo2;
  VkImageLayout vkResolveImageInfo2;
  uint vkResolveImageInfo2;
  VkImageResolve2 vkResolveImageInfo2;
}

struct VkPhysicalDeviceFragmentShadingRateKHR {
  VkStructureType vkPhysicalDeviceFragmentShadingRateKHR;
  void vkPhysicalDeviceFragmentShadingRateKHR;
  VkSampleCountFlags vkPhysicalDeviceFragmentShadingRateKHR;
  VkExtent2D vkPhysicalDeviceFragmentShadingRateKHR;
}

struct VkAccelerationStructureBuildSizesInfoKHR {
  VkStructureType vkAccelerationStructureBuildSizesInfoKHR;
  void vkAccelerationStructureBuildSizesInfoKHR;
  VkDeviceSize vkAccelerationStructureBuildSizesInfoKHR;
  VkDeviceSize vkAccelerationStructureBuildSizesInfoKHR;
  VkDeviceSize vkAccelerationStructureBuildSizesInfoKHR;
}

struct VkMutableDescriptorTypeListEXT {
  uint vkMutableDescriptorTypeListEXT;
  VkDescriptorType vkMutableDescriptorTypeListEXT;
}

struct VkVertexInputBindingDescription2EXT {
  VkStructureType vkVertexInputBindingDescription2EXT;
  void vkVertexInputBindingDescription2EXT;
  uint vkVertexInputBindingDescription2EXT;
  uint vkVertexInputBindingDescription2EXT;
  VkVertexInputRate vkVertexInputBindingDescription2EXT;
  uint vkVertexInputBindingDescription2EXT;
}

struct VkVertexInputAttributeDescription2EXT {
  VkStructureType vkVertexInputAttributeDescription2EXT;
  void vkVertexInputAttributeDescription2EXT;
  uint vkVertexInputAttributeDescription2EXT;
  uint vkVertexInputAttributeDescription2EXT;
  VkFormat vkVertexInputAttributeDescription2EXT;
  uint vkVertexInputAttributeDescription2EXT;
}

struct VkImageMemoryBarrier2 {
  VkStructureType vkImageMemoryBarrier2;
  void vkImageMemoryBarrier2;
  VkPipelineStageFlags2 vkImageMemoryBarrier2;
  VkAccessFlags2 vkImageMemoryBarrier2;
  VkPipelineStageFlags2 vkImageMemoryBarrier2;
  VkAccessFlags2 vkImageMemoryBarrier2;
  VkImageLayout vkImageMemoryBarrier2;
  VkImageLayout vkImageMemoryBarrier2;
  uint vkImageMemoryBarrier2;
  uint vkImageMemoryBarrier2;
  VkImage vkImageMemoryBarrier2;
  VkImageSubresourceRange vkImageMemoryBarrier2;
}

struct VkBufferMemoryBarrier2 {
  VkStructureType vkBufferMemoryBarrier2;
  void vkBufferMemoryBarrier2;
  VkPipelineStageFlags2 vkBufferMemoryBarrier2;
  VkAccessFlags2 vkBufferMemoryBarrier2;
  VkPipelineStageFlags2 vkBufferMemoryBarrier2;
  VkAccessFlags2 vkBufferMemoryBarrier2;
  uint vkBufferMemoryBarrier2;
  uint vkBufferMemoryBarrier2;
  VkBuffer vkBufferMemoryBarrier2;
  VkDeviceSize vkBufferMemoryBarrier2;
  VkDeviceSize vkBufferMemoryBarrier2;
}

struct VkDependencyInfo {
  VkStructureType vkDependencyInfo;
  void vkDependencyInfo;
  VkDependencyFlags vkDependencyInfo;
  uint vkDependencyInfo;
  VkMemoryBarrier2 vkDependencyInfo;
  uint vkDependencyInfo;
  VkBufferMemoryBarrier2 vkDependencyInfo;
  uint vkDependencyInfo;
  VkImageMemoryBarrier2 vkDependencyInfo;
}

struct VkSemaphoreSubmitInfo {
  VkStructureType vkSemaphoreSubmitInfo;
  void vkSemaphoreSubmitInfo;
  VkSemaphore vkSemaphoreSubmitInfo;
  ulong vkSemaphoreSubmitInfo;
  VkPipelineStageFlags2 vkSemaphoreSubmitInfo;
  uint vkSemaphoreSubmitInfo;
}

struct VkCommandBufferSubmitInfo {
  VkStructureType vkCommandBufferSubmitInfo;
  void vkCommandBufferSubmitInfo;
  VkCommandBuffer vkCommandBufferSubmitInfo;
  uint vkCommandBufferSubmitInfo;
}

struct VkSubmitInfo2 {
  VkStructureType vkSubmitInfo2;
  void vkSubmitInfo2;
  VkSubmitFlags vkSubmitInfo2;
  uint vkSubmitInfo2;
  VkSemaphoreSubmitInfo vkSubmitInfo2;
  uint vkSubmitInfo2;
  VkCommandBufferSubmitInfo vkSubmitInfo2;
  uint vkSubmitInfo2;
  VkSemaphoreSubmitInfo vkSubmitInfo2;
}

struct VkCheckpointData2NV {
  VkStructureType vkCheckpointData2NV;
  void vkCheckpointData2NV;
  VkPipelineStageFlags2 vkCheckpointData2NV;
  void vkCheckpointData2NV;
}

struct VkPipelinePoolSize {
  VkStructureType vkPipelinePoolSize;
  void vkPipelinePoolSize;
  VkDeviceSize vkPipelinePoolSize;
  uint vkPipelinePoolSize;
}

struct VkCommandPoolMemoryConsumption {
  VkStructureType vkCommandPoolMemoryConsumption;
  void vkCommandPoolMemoryConsumption;
  VkDeviceSize vkCommandPoolMemoryConsumption;
  VkDeviceSize vkCommandPoolMemoryConsumption;
  VkDeviceSize vkCommandPoolMemoryConsumption;
}

struct VkPhysicalDeviceVideoFormatInfoKHR {
  VkStructureType vkPhysicalDeviceVideoFormatInfoKHR;
  void vkPhysicalDeviceVideoFormatInfoKHR;
  VkImageUsageFlags vkPhysicalDeviceVideoFormatInfoKHR;
}

struct VkVideoFormatPropertiesKHR {
  VkStructureType vkVideoFormatPropertiesKHR;
  void vkVideoFormatPropertiesKHR;
  VkFormat vkVideoFormatPropertiesKHR;
  VkComponentMapping vkVideoFormatPropertiesKHR;
  VkImageCreateFlags vkVideoFormatPropertiesKHR;
  VkImageType vkVideoFormatPropertiesKHR;
  VkImageTiling vkVideoFormatPropertiesKHR;
  VkImageUsageFlags vkVideoFormatPropertiesKHR;
}

struct VkVideoCapabilitiesKHR {
  VkStructureType vkVideoCapabilitiesKHR;
  void vkVideoCapabilitiesKHR;
  VkVideoCapabilityFlagsKHR vkVideoCapabilitiesKHR;
  VkDeviceSize vkVideoCapabilitiesKHR;
  VkDeviceSize vkVideoCapabilitiesKHR;
  VkExtent2D vkVideoCapabilitiesKHR;
  VkExtent2D vkVideoCapabilitiesKHR;
  VkExtent2D vkVideoCapabilitiesKHR;
  uint vkVideoCapabilitiesKHR;
  uint vkVideoCapabilitiesKHR;
  VkExtensionProperties vkVideoCapabilitiesKHR;
}

struct VkVideoSessionMemoryRequirementsKHR {
  VkStructureType vkVideoSessionMemoryRequirementsKHR;
  void vkVideoSessionMemoryRequirementsKHR;
  uint vkVideoSessionMemoryRequirementsKHR;
  VkMemoryRequirements vkVideoSessionMemoryRequirementsKHR;
}

struct VkBindVideoSessionMemoryInfoKHR {
  VkStructureType vkBindVideoSessionMemoryInfoKHR;
  void vkBindVideoSessionMemoryInfoKHR;
  uint vkBindVideoSessionMemoryInfoKHR;
  VkDeviceMemory vkBindVideoSessionMemoryInfoKHR;
  VkDeviceSize vkBindVideoSessionMemoryInfoKHR;
  VkDeviceSize vkBindVideoSessionMemoryInfoKHR;
}

struct VkVideoPictureResourceInfoKHR {
  VkStructureType vkVideoPictureResourceInfoKHR;
  void vkVideoPictureResourceInfoKHR;
  VkOffset2D vkVideoPictureResourceInfoKHR;
  VkExtent2D vkVideoPictureResourceInfoKHR;
  uint vkVideoPictureResourceInfoKHR;
  VkImageView vkVideoPictureResourceInfoKHR;
}

struct VkVideoReferenceSlotInfoKHR {
  VkStructureType vkVideoReferenceSlotInfoKHR;
  void vkVideoReferenceSlotInfoKHR;
  int vkVideoReferenceSlotInfoKHR;
  VkVideoPictureResourceInfoKHR vkVideoReferenceSlotInfoKHR;
}

struct VkVideoDecodeInfoKHR {
  VkStructureType vkVideoDecodeInfoKHR;
  void vkVideoDecodeInfoKHR;
  VkVideoDecodeFlagsKHR vkVideoDecodeInfoKHR;
  VkBuffer vkVideoDecodeInfoKHR;
  VkDeviceSize vkVideoDecodeInfoKHR;
  VkDeviceSize vkVideoDecodeInfoKHR;
  VkVideoPictureResourceInfoKHR vkVideoDecodeInfoKHR;
  VkVideoReferenceSlotInfoKHR vkVideoDecodeInfoKHR;
  uint vkVideoDecodeInfoKHR;
  VkVideoReferenceSlotInfoKHR vkVideoDecodeInfoKHR;
}

struct VkVideoSessionCreateInfoKHR {
  VkStructureType vkVideoSessionCreateInfoKHR;
  void vkVideoSessionCreateInfoKHR;
  uint vkVideoSessionCreateInfoKHR;
  VkVideoSessionCreateFlagsKHR vkVideoSessionCreateInfoKHR;
  VkVideoProfileInfoKHR vkVideoSessionCreateInfoKHR;
  VkFormat vkVideoSessionCreateInfoKHR;
  VkExtent2D vkVideoSessionCreateInfoKHR;
  VkFormat vkVideoSessionCreateInfoKHR;
  uint vkVideoSessionCreateInfoKHR;
  uint vkVideoSessionCreateInfoKHR;
  VkExtensionProperties vkVideoSessionCreateInfoKHR;
}

struct VkVideoSessionParametersCreateInfoKHR {
  VkStructureType vkVideoSessionParametersCreateInfoKHR;
  void vkVideoSessionParametersCreateInfoKHR;
  VkVideoSessionParametersCreateFlagsKHR vkVideoSessionParametersCreateInfoKHR;
  VkVideoSessionParametersKHR vkVideoSessionParametersCreateInfoKHR;
  VkVideoSessionKHR vkVideoSessionParametersCreateInfoKHR;
}

struct VkVideoSessionParametersUpdateInfoKHR {
  VkStructureType vkVideoSessionParametersUpdateInfoKHR;
  void vkVideoSessionParametersUpdateInfoKHR;
  uint vkVideoSessionParametersUpdateInfoKHR;
}

struct VkVideoEncodeSessionParametersGetInfoKHR {
  VkStructureType vkVideoEncodeSessionParametersGetInfoKHR;
  void vkVideoEncodeSessionParametersGetInfoKHR;
  VkVideoSessionParametersKHR vkVideoEncodeSessionParametersGetInfoKHR;
}

struct VkVideoEncodeSessionParametersFeedbackInfoKHR {
  VkStructureType vkVideoEncodeSessionParametersFeedbackInfoKHR;
  void vkVideoEncodeSessionParametersFeedbackInfoKHR;
  VkBool32 vkVideoEncodeSessionParametersFeedbackInfoKHR;
}

struct VkVideoBeginCodingInfoKHR {
  VkStructureType vkVideoBeginCodingInfoKHR;
  void vkVideoBeginCodingInfoKHR;
  VkVideoBeginCodingFlagsKHR vkVideoBeginCodingInfoKHR;
  VkVideoSessionKHR vkVideoBeginCodingInfoKHR;
  VkVideoSessionParametersKHR vkVideoBeginCodingInfoKHR;
  uint vkVideoBeginCodingInfoKHR;
  VkVideoReferenceSlotInfoKHR vkVideoBeginCodingInfoKHR;
}

struct VkVideoEndCodingInfoKHR {
  VkStructureType vkVideoEndCodingInfoKHR;
  void vkVideoEndCodingInfoKHR;
  VkVideoEndCodingFlagsKHR vkVideoEndCodingInfoKHR;
}

struct VkVideoCodingControlInfoKHR {
  VkStructureType vkVideoCodingControlInfoKHR;
  void vkVideoCodingControlInfoKHR;
  VkVideoCodingControlFlagsKHR vkVideoCodingControlInfoKHR;
}

struct VkVideoEncodeInfoKHR {
  VkStructureType vkVideoEncodeInfoKHR;
  void vkVideoEncodeInfoKHR;
  VkVideoEncodeFlagsKHR vkVideoEncodeInfoKHR;
  VkBuffer vkVideoEncodeInfoKHR;
  VkDeviceSize vkVideoEncodeInfoKHR;
  VkDeviceSize vkVideoEncodeInfoKHR;
  VkVideoPictureResourceInfoKHR vkVideoEncodeInfoKHR;
  VkVideoReferenceSlotInfoKHR vkVideoEncodeInfoKHR;
  uint vkVideoEncodeInfoKHR;
  VkVideoReferenceSlotInfoKHR vkVideoEncodeInfoKHR;
  uint vkVideoEncodeInfoKHR;
}

struct VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR {
  VkStructureType vkPhysicalDeviceVideoEncodeQualityLevelInfoKHR;
  void vkPhysicalDeviceVideoEncodeQualityLevelInfoKHR;
  VkVideoProfileInfoKHR vkPhysicalDeviceVideoEncodeQualityLevelInfoKHR;
  uint vkPhysicalDeviceVideoEncodeQualityLevelInfoKHR;
}

struct VkVideoEncodeQualityLevelPropertiesKHR {
  VkStructureType vkVideoEncodeQualityLevelPropertiesKHR;
  void vkVideoEncodeQualityLevelPropertiesKHR;
  VkVideoEncodeRateControlModeFlagBitsKHR vkVideoEncodeQualityLevelPropertiesKHR;
  uint vkVideoEncodeQualityLevelPropertiesKHR;
}

struct VkVideoEncodeRateControlLayerInfoKHR {
  VkStructureType vkVideoEncodeRateControlLayerInfoKHR;
  void vkVideoEncodeRateControlLayerInfoKHR;
  ulong vkVideoEncodeRateControlLayerInfoKHR;
  ulong vkVideoEncodeRateControlLayerInfoKHR;
  uint vkVideoEncodeRateControlLayerInfoKHR;
  uint vkVideoEncodeRateControlLayerInfoKHR;
}

struct VkVideoEncodeH264NaluSliceInfoEXT {
  VkStructureType vkVideoEncodeH264NaluSliceInfoEXT;
  void vkVideoEncodeH264NaluSliceInfoEXT;
  int vkVideoEncodeH264NaluSliceInfoEXT;
  StdVideoEncodeH264SliceHeader vkVideoEncodeH264NaluSliceInfoEXT;
}

struct VkVideoEncodeH264QpEXT {
  int vkVideoEncodeH264QpEXT;
  int vkVideoEncodeH264QpEXT;
  int vkVideoEncodeH264QpEXT;
}

struct VkVideoEncodeH264FrameSizeEXT {
  uint vkVideoEncodeH264FrameSizeEXT;
  uint vkVideoEncodeH264FrameSizeEXT;
  uint vkVideoEncodeH264FrameSizeEXT;
}

struct VkVideoEncodeH265NaluSliceSegmentInfoEXT {
  VkStructureType vkVideoEncodeH265NaluSliceSegmentInfoEXT;
  void vkVideoEncodeH265NaluSliceSegmentInfoEXT;
  int vkVideoEncodeH265NaluSliceSegmentInfoEXT;
  StdVideoEncodeH265SliceSegmentHeader vkVideoEncodeH265NaluSliceSegmentInfoEXT;
}

struct VkVideoEncodeH265QpEXT {
  int vkVideoEncodeH265QpEXT;
  int vkVideoEncodeH265QpEXT;
  int vkVideoEncodeH265QpEXT;
}

struct VkVideoEncodeH265FrameSizeEXT {
  uint vkVideoEncodeH265FrameSizeEXT;
  uint vkVideoEncodeH265FrameSizeEXT;
  uint vkVideoEncodeH265FrameSizeEXT;
}

struct VkCuModuleCreateInfoNVX {
  VkStructureType vkCuModuleCreateInfoNVX;
  void vkCuModuleCreateInfoNVX;
  usz vkCuModuleCreateInfoNVX;
  void vkCuModuleCreateInfoNVX;
}

struct VkCuFunctionCreateInfoNVX {
  VkStructureType vkCuFunctionCreateInfoNVX;
  void vkCuFunctionCreateInfoNVX;
  VkCuModuleNVX mod;
  char vkCuFunctionCreateInfoNVX;
}

struct VkCuLaunchInfoNVX {
  VkStructureType vkCuLaunchInfoNVX;
  void vkCuLaunchInfoNVX;
  VkCuFunctionNVX vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  uint vkCuLaunchInfoNVX;
  usz vkCuLaunchInfoNVX;
  void vkCuLaunchInfoNVX;
  usz vkCuLaunchInfoNVX;
  void vkCuLaunchInfoNVX;
}

struct VkDescriptorAddressInfoEXT {
  VkStructureType vkDescriptorAddressInfoEXT;
  void vkDescriptorAddressInfoEXT;
  VkDeviceAddress vkDescriptorAddressInfoEXT;
  VkDeviceSize vkDescriptorAddressInfoEXT;
  VkFormat vkDescriptorAddressInfoEXT;
}

struct VkDescriptorBufferBindingInfoEXT {
  VkStructureType vkDescriptorBufferBindingInfoEXT;
  void vkDescriptorBufferBindingInfoEXT;
  VkDeviceAddress vkDescriptorBufferBindingInfoEXT;
  VkBufferUsageFlags vkDescriptorBufferBindingInfoEXT;
}

struct VkDescriptorGetInfoEXT {
  VkStructureType vkDescriptorGetInfoEXT;
  void vkDescriptorGetInfoEXT;
  VkDescriptorType vkDescriptorGetInfoEXT;
  VkDescriptorDataEXT vkDescriptorGetInfoEXT;
}

struct VkBufferCaptureDescriptorDataInfoEXT {
  VkStructureType vkBufferCaptureDescriptorDataInfoEXT;
  void vkBufferCaptureDescriptorDataInfoEXT;
  VkBuffer vkBufferCaptureDescriptorDataInfoEXT;
}

struct VkImageCaptureDescriptorDataInfoEXT {
  VkStructureType vkImageCaptureDescriptorDataInfoEXT;
  void vkImageCaptureDescriptorDataInfoEXT;
  VkImage vkImageCaptureDescriptorDataInfoEXT;
}

struct VkImageViewCaptureDescriptorDataInfoEXT {
  VkStructureType vkImageViewCaptureDescriptorDataInfoEXT;
  void vkImageViewCaptureDescriptorDataInfoEXT;
  VkImageView vkImageViewCaptureDescriptorDataInfoEXT;
}

struct VkSamplerCaptureDescriptorDataInfoEXT {
  VkStructureType vkSamplerCaptureDescriptorDataInfoEXT;
  void vkSamplerCaptureDescriptorDataInfoEXT;
  VkSampler vkSamplerCaptureDescriptorDataInfoEXT;
}

struct VkAccelerationStructureCaptureDescriptorDataInfoEXT {
  VkStructureType vkAccelerationStructureCaptureDescriptorDataInfoEXT;
  void vkAccelerationStructureCaptureDescriptorDataInfoEXT;
  VkAccelerationStructureKHR vkAccelerationStructureCaptureDescriptorDataInfoEXT;
  VkAccelerationStructureNV vkAccelerationStructureCaptureDescriptorDataInfoEXT;
}

struct VkSRTDataNV {
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
  float vkSRTDataNV;
}

struct VkAccelerationStructureSRTMotionInstanceNV {
  VkSRTDataNV vkAccelerationStructureSRTMotionInstanceNV;
  VkSRTDataNV vkAccelerationStructureSRTMotionInstanceNV;
  uint vkAccelerationStructureSRTMotionInstanceNV;
  uint vkAccelerationStructureSRTMotionInstanceNV;
  uint vkAccelerationStructureSRTMotionInstanceNV;
  VkGeometryInstanceFlagsKHR vkAccelerationStructureSRTMotionInstanceNV;
  ulong vkAccelerationStructureSRTMotionInstanceNV;
}

struct VkAccelerationStructureMatrixMotionInstanceNV {
  VkTransformMatrixKHR vkAccelerationStructureMatrixMotionInstanceNV;
  VkTransformMatrixKHR vkAccelerationStructureMatrixMotionInstanceNV;
  uint vkAccelerationStructureMatrixMotionInstanceNV;
  uint vkAccelerationStructureMatrixMotionInstanceNV;
  uint vkAccelerationStructureMatrixMotionInstanceNV;
  VkGeometryInstanceFlagsKHR vkAccelerationStructureMatrixMotionInstanceNV;
  ulong vkAccelerationStructureMatrixMotionInstanceNV;
}

struct VkAccelerationStructureMotionInstanceNV {
  VkAccelerationStructureMotionInstanceTypeNV vkAccelerationStructureMotionInstanceNV;
  VkAccelerationStructureMotionInstanceFlagsNV vkAccelerationStructureMotionInstanceNV;
  VkAccelerationStructureMotionInstanceDataNV vkAccelerationStructureMotionInstanceNV;
}

struct VkMemoryGetRemoteAddressInfoNV {
  VkStructureType vkMemoryGetRemoteAddressInfoNV;
  void vkMemoryGetRemoteAddressInfoNV;
  VkDeviceMemory vkMemoryGetRemoteAddressInfoNV;
  VkExternalMemoryHandleTypeFlagBits vkMemoryGetRemoteAddressInfoNV;
}

struct VkBufferCollectionCreateInfoFUCHSIA {
  VkStructureType vkBufferCollectionCreateInfoFUCHSIA;
  void vkBufferCollectionCreateInfoFUCHSIA;
  Zxhandle vkBufferCollectionCreateInfoFUCHSIA;
}

struct VkBufferCollectionPropertiesFUCHSIA {
  VkStructureType vkBufferCollectionPropertiesFUCHSIA;
  void vkBufferCollectionPropertiesFUCHSIA;
  uint vkBufferCollectionPropertiesFUCHSIA;
  uint vkBufferCollectionPropertiesFUCHSIA;
  uint vkBufferCollectionPropertiesFUCHSIA;
  ulong vkBufferCollectionPropertiesFUCHSIA;
  VkFormatFeatureFlags vkBufferCollectionPropertiesFUCHSIA;
  VkSysmemColorSpaceFUCHSIA vkBufferCollectionPropertiesFUCHSIA;
  VkComponentMapping vkBufferCollectionPropertiesFUCHSIA;
  VkSamplerYcbcrModelConversion vkBufferCollectionPropertiesFUCHSIA;
  VkSamplerYcbcrRange vkBufferCollectionPropertiesFUCHSIA;
  VkChromaLocation vkBufferCollectionPropertiesFUCHSIA;
  VkChromaLocation vkBufferCollectionPropertiesFUCHSIA;
}

struct VkBufferConstraintsInfoFUCHSIA {
  VkStructureType vkBufferConstraintsInfoFUCHSIA;
  void vkBufferConstraintsInfoFUCHSIA;
  VkBufferCreateInfo vkBufferConstraintsInfoFUCHSIA;
  VkFormatFeatureFlags vkBufferConstraintsInfoFUCHSIA;
  VkBufferCollectionConstraintsInfoFUCHSIA vkBufferConstraintsInfoFUCHSIA;
}

struct VkSysmemColorSpaceFUCHSIA {
  VkStructureType vkSysmemColorSpaceFUCHSIA;
  void vkSysmemColorSpaceFUCHSIA;
  uint vkSysmemColorSpaceFUCHSIA;
}

struct VkImageFormatConstraintsInfoFUCHSIA {
  VkStructureType vkImageFormatConstraintsInfoFUCHSIA;
  void vkImageFormatConstraintsInfoFUCHSIA;
  VkImageCreateInfo vkImageFormatConstraintsInfoFUCHSIA;
  VkFormatFeatureFlags vkImageFormatConstraintsInfoFUCHSIA;
  VkImageFormatConstraintsFlagsFUCHSIA vkImageFormatConstraintsInfoFUCHSIA;
  ulong vkImageFormatConstraintsInfoFUCHSIA;
  uint vkImageFormatConstraintsInfoFUCHSIA;
  VkSysmemColorSpaceFUCHSIA vkImageFormatConstraintsInfoFUCHSIA;
}

struct VkImageConstraintsInfoFUCHSIA {
  VkStructureType vkImageConstraintsInfoFUCHSIA;
  void vkImageConstraintsInfoFUCHSIA;
  uint vkImageConstraintsInfoFUCHSIA;
  VkImageFormatConstraintsInfoFUCHSIA vkImageConstraintsInfoFUCHSIA;
  VkBufferCollectionConstraintsInfoFUCHSIA vkImageConstraintsInfoFUCHSIA;
  VkImageConstraintsInfoFlagsFUCHSIA vkImageConstraintsInfoFUCHSIA;
}

struct VkBufferCollectionConstraintsInfoFUCHSIA {
  VkStructureType vkBufferCollectionConstraintsInfoFUCHSIA;
  void vkBufferCollectionConstraintsInfoFUCHSIA;
  uint vkBufferCollectionConstraintsInfoFUCHSIA;
  uint vkBufferCollectionConstraintsInfoFUCHSIA;
  uint vkBufferCollectionConstraintsInfoFUCHSIA;
  uint vkBufferCollectionConstraintsInfoFUCHSIA;
  uint vkBufferCollectionConstraintsInfoFUCHSIA;
}

struct VkDrmFormatModifierProperties2EXT {
  ulong vkDrmFormatModifierProperties2EXT;
  uint vkDrmFormatModifierProperties2EXT;
  VkFormatFeatureFlags2 vkDrmFormatModifierProperties2EXT;
}

struct VkRenderingInfo {
  VkStructureType vkRenderingInfo;
  void vkRenderingInfo;
  VkRenderingFlags vkRenderingInfo;
  VkRect2D vkRenderingInfo;
  uint vkRenderingInfo;
  uint vkRenderingInfo;
  uint vkRenderingInfo;
  VkRenderingAttachmentInfo vkRenderingInfo;
  VkRenderingAttachmentInfo vkRenderingInfo;
  VkRenderingAttachmentInfo vkRenderingInfo;
}

struct VkRenderingAttachmentInfo {
  VkStructureType vkRenderingAttachmentInfo;
  void vkRenderingAttachmentInfo;
  VkImageView vkRenderingAttachmentInfo;
  VkImageLayout vkRenderingAttachmentInfo;
  VkResolveModeFlagBits vkRenderingAttachmentInfo;
  VkImageView vkRenderingAttachmentInfo;
  VkImageLayout vkRenderingAttachmentInfo;
  VkAttachmentLoadOp vkRenderingAttachmentInfo;
  VkAttachmentStoreOp vkRenderingAttachmentInfo;
  VkClearValue vkRenderingAttachmentInfo;
}

struct VkDescriptorSetBindingReferenceVALVE {
  VkStructureType vkDescriptorSetBindingReferenceVALVE;
  void vkDescriptorSetBindingReferenceVALVE;
  VkDescriptorSetLayout vkDescriptorSetBindingReferenceVALVE;
  uint vkDescriptorSetBindingReferenceVALVE;
}

struct VkDescriptorSetLayoutHostMappingInfoVALVE {
  VkStructureType vkDescriptorSetLayoutHostMappingInfoVALVE;
  void vkDescriptorSetLayoutHostMappingInfoVALVE;
  usz vkDescriptorSetLayoutHostMappingInfoVALVE;
  uint vkDescriptorSetLayoutHostMappingInfoVALVE;
}

struct VkShaderModuleIdentifierEXT {
  VkStructureType vkShaderModuleIdentifierEXT;
  void vkShaderModuleIdentifierEXT;
  uint vkShaderModuleIdentifierEXT;
  char vkShaderModuleIdentifierEXT;
}

struct VkImageSubresource2EXT {
  VkStructureType vkImageSubresource2EXT;
  void vkImageSubresource2EXT;
  VkImageSubresource vkImageSubresource2EXT;
}

struct VkSubresourceLayout2EXT {
  VkStructureType vkSubresourceLayout2EXT;
  void vkSubresourceLayout2EXT;
  VkSubresourceLayout vkSubresourceLayout2EXT;
}

struct VkRenderPassCreationFeedbackInfoEXT {
  uint vkRenderPassCreationFeedbackInfoEXT;
}

struct VkRenderPassSubpassFeedbackInfoEXT {
  VkSubpassMergeStatusEXT vkRenderPassSubpassFeedbackInfoEXT;
  char vkRenderPassSubpassFeedbackInfoEXT;
  uint vkRenderPassSubpassFeedbackInfoEXT;
}

struct VkMicromapBuildInfoEXT {
  VkStructureType vkMicromapBuildInfoEXT;
  void vkMicromapBuildInfoEXT;
  VkMicromapTypeEXT vkMicromapBuildInfoEXT;
  VkBuildMicromapFlagsEXT vkMicromapBuildInfoEXT;
  VkBuildMicromapModeEXT vkMicromapBuildInfoEXT;
  VkMicromapEXT vkMicromapBuildInfoEXT;
  uint vkMicromapBuildInfoEXT;
  VkMicromapUsageEXT vkMicromapBuildInfoEXT;
  VkMicromapUsageEXT vkMicromapBuildInfoEXT;
  VkDeviceOrHostAddressConstKHR vkMicromapBuildInfoEXT;
  VkDeviceOrHostAddressKHR vkMicromapBuildInfoEXT;
  VkDeviceOrHostAddressConstKHR vkMicromapBuildInfoEXT;
  VkDeviceSize vkMicromapBuildInfoEXT;
}

struct VkMicromapCreateInfoEXT {
  VkStructureType vkMicromapCreateInfoEXT;
  void vkMicromapCreateInfoEXT;
  VkMicromapCreateFlagsEXT vkMicromapCreateInfoEXT;
  VkBuffer vkMicromapCreateInfoEXT;
  VkDeviceSize vkMicromapCreateInfoEXT;
  VkDeviceSize vkMicromapCreateInfoEXT;
  VkMicromapTypeEXT vkMicromapCreateInfoEXT;
  VkDeviceAddress vkMicromapCreateInfoEXT;
}

struct VkMicromapVersionInfoEXT {
  VkStructureType vkMicromapVersionInfoEXT;
  void vkMicromapVersionInfoEXT;
  char vkMicromapVersionInfoEXT;
}

struct VkCopyMicromapInfoEXT {
  VkStructureType vkCopyMicromapInfoEXT;
  void vkCopyMicromapInfoEXT;
  VkMicromapEXT vkCopyMicromapInfoEXT;
  VkMicromapEXT vkCopyMicromapInfoEXT;
  VkCopyMicromapModeEXT vkCopyMicromapInfoEXT;
}

struct VkCopyMicromapToMemoryInfoEXT {
  VkStructureType vkCopyMicromapToMemoryInfoEXT;
  void vkCopyMicromapToMemoryInfoEXT;
  VkMicromapEXT vkCopyMicromapToMemoryInfoEXT;
  VkDeviceOrHostAddressKHR vkCopyMicromapToMemoryInfoEXT;
  VkCopyMicromapModeEXT vkCopyMicromapToMemoryInfoEXT;
}

struct VkCopyMemoryToMicromapInfoEXT {
  VkStructureType vkCopyMemoryToMicromapInfoEXT;
  void vkCopyMemoryToMicromapInfoEXT;
  VkDeviceOrHostAddressConstKHR vkCopyMemoryToMicromapInfoEXT;
  VkMicromapEXT vkCopyMemoryToMicromapInfoEXT;
  VkCopyMicromapModeEXT vkCopyMemoryToMicromapInfoEXT;
}

struct VkMicromapBuildSizesInfoEXT {
  VkStructureType vkMicromapBuildSizesInfoEXT;
  void vkMicromapBuildSizesInfoEXT;
  VkDeviceSize vkMicromapBuildSizesInfoEXT;
  VkDeviceSize vkMicromapBuildSizesInfoEXT;
  VkBool32 vkMicromapBuildSizesInfoEXT;
}

struct VkMicromapUsageEXT {
  uint vkMicromapUsageEXT;
  uint vkMicromapUsageEXT;
  uint vkMicromapUsageEXT;
}

struct VkMicromapTriangleEXT {
  uint vkMicromapTriangleEXT;
  uint vkMicromapTriangleEXT;
  uint vkMicromapTriangleEXT;
}

struct VkPipelinePropertiesIdentifierEXT {
  VkStructureType vkPipelinePropertiesIdentifierEXT;
  void vkPipelinePropertiesIdentifierEXT;
  char vkPipelinePropertiesIdentifierEXT;
}

struct VkExportMetalObjectsInfoEXT {
  VkStructureType vkExportMetalObjectsInfoEXT;
  void vkExportMetalObjectsInfoEXT;
}

struct VkTilePropertiesQCOM {
  VkStructureType vkTilePropertiesQCOM;
  void vkTilePropertiesQCOM;
  VkExtent3D vkTilePropertiesQCOM;
  VkExtent2D vkTilePropertiesQCOM;
  VkOffset2D vkTilePropertiesQCOM;
}

struct VkOpticalFlowImageFormatPropertiesNV {
  VkStructureType vkOpticalFlowImageFormatPropertiesNV;
  void vkOpticalFlowImageFormatPropertiesNV;
  VkFormat vkOpticalFlowImageFormatPropertiesNV;
}

struct VkOpticalFlowSessionCreateInfoNV {
  VkStructureType vkOpticalFlowSessionCreateInfoNV;
  void vkOpticalFlowSessionCreateInfoNV;
  uint vkOpticalFlowSessionCreateInfoNV;
  uint vkOpticalFlowSessionCreateInfoNV;
  VkFormat vkOpticalFlowSessionCreateInfoNV;
  VkFormat vkOpticalFlowSessionCreateInfoNV;
  VkFormat vkOpticalFlowSessionCreateInfoNV;
  VkOpticalFlowGridSizeFlagsNV vkOpticalFlowSessionCreateInfoNV;
  VkOpticalFlowGridSizeFlagsNV vkOpticalFlowSessionCreateInfoNV;
  VkOpticalFlowPerformanceLevelNV vkOpticalFlowSessionCreateInfoNV;
  VkOpticalFlowSessionCreateFlagsNV vkOpticalFlowSessionCreateInfoNV;
}

struct VkOpticalFlowExecuteInfoNV {
  VkStructureType vkOpticalFlowExecuteInfoNV;
  void vkOpticalFlowExecuteInfoNV;
  VkOpticalFlowExecuteFlagsNV vkOpticalFlowExecuteInfoNV;
  uint vkOpticalFlowExecuteInfoNV;
  VkRect2D vkOpticalFlowExecuteInfoNV;
}

struct VkDeviceFaultAddressInfoEXT {
  VkDeviceFaultAddressTypeEXT vkDeviceFaultAddressInfoEXT;
  VkDeviceAddress vkDeviceFaultAddressInfoEXT;
  VkDeviceSize vkDeviceFaultAddressInfoEXT;
}

struct VkDeviceFaultVendorInfoEXT {
  char vkDeviceFaultVendorInfoEXT;
  ulong vkDeviceFaultVendorInfoEXT;
  ulong vkDeviceFaultVendorInfoEXT;
}

struct VkDeviceFaultCountsEXT {
  VkStructureType vkDeviceFaultCountsEXT;
  void vkDeviceFaultCountsEXT;
  uint vkDeviceFaultCountsEXT;
  uint vkDeviceFaultCountsEXT;
  VkDeviceSize vkDeviceFaultCountsEXT;
}

struct VkDeviceFaultInfoEXT {
  VkStructureType vkDeviceFaultInfoEXT;
  void vkDeviceFaultInfoEXT;
  char vkDeviceFaultInfoEXT;
  VkDeviceFaultAddressInfoEXT vkDeviceFaultInfoEXT;
  VkDeviceFaultVendorInfoEXT vkDeviceFaultInfoEXT;
  void vkDeviceFaultInfoEXT;
}

struct VkDeviceFaultVendorBinaryHeaderVersionOneEXT {
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  VkDeviceFaultVendorBinaryHeaderVersionEXT vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  char vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
  uint vkDeviceFaultVendorBinaryHeaderVersionOneEXT;
}

struct VkDepthBiasInfoEXT {
  VkStructureType vkDepthBiasInfoEXT;
  void vkDepthBiasInfoEXT;
  float vkDepthBiasInfoEXT;
  float vkDepthBiasInfoEXT;
  float vkDepthBiasInfoEXT;
}

struct VkDecompressMemoryRegionNV {
  VkDeviceAddress vkDecompressMemoryRegionNV;
  VkDeviceAddress vkDecompressMemoryRegionNV;
  VkDeviceSize vkDecompressMemoryRegionNV;
  VkDeviceSize vkDecompressMemoryRegionNV;
  VkMemoryDecompressionMethodFlagsNV vkDecompressMemoryRegionNV;
}

struct VkReleaseSwapchainImagesInfoEXT {
  VkStructureType vkReleaseSwapchainImagesInfoEXT;
  void vkReleaseSwapchainImagesInfoEXT;
  VkSwapchainKHR vkReleaseSwapchainImagesInfoEXT;
  uint vkReleaseSwapchainImagesInfoEXT;
  uint vkReleaseSwapchainImagesInfoEXT;
}

struct VkDirectDriverLoadingInfoLUNARG {
  VkStructureType vkDirectDriverLoadingInfoLUNARG;
  void vkDirectDriverLoadingInfoLUNARG;
  VkDirectDriverLoadingFlagsLUNARG vkDirectDriverLoadingInfoLUNARG;
  PFN_vkGetInstanceProcAddrLUNARG vkDirectDriverLoadingInfoLUNARG;
}

struct VkMemoryMapInfoKHR {
  VkStructureType vkMemoryMapInfoKHR;
  void vkMemoryMapInfoKHR;
  VkMemoryMapFlags vkMemoryMapInfoKHR;
  VkDeviceMemory vkMemoryMapInfoKHR;
  VkDeviceSize vkMemoryMapInfoKHR;
  VkDeviceSize vkMemoryMapInfoKHR;
}

struct VkMemoryUnmapInfoKHR {
  VkStructureType vkMemoryUnmapInfoKHR;
  void vkMemoryUnmapInfoKHR;
  VkMemoryUnmapFlagsKHR vkMemoryUnmapInfoKHR;
  VkDeviceMemory vkMemoryUnmapInfoKHR;
}

struct VkShaderCreateInfoEXT {
  VkStructureType vkShaderCreateInfoEXT;
  void vkShaderCreateInfoEXT;
  VkShaderCreateFlagsEXT vkShaderCreateInfoEXT;
  VkShaderStageFlagBits vkShaderCreateInfoEXT;
  VkShaderStageFlags vkShaderCreateInfoEXT;
  VkShaderCodeTypeEXT vkShaderCreateInfoEXT;
  usz vkShaderCreateInfoEXT;
  void vkShaderCreateInfoEXT;
  char vkShaderCreateInfoEXT;
  uint vkShaderCreateInfoEXT;
  VkDescriptorSetLayout vkShaderCreateInfoEXT;
  uint vkShaderCreateInfoEXT;
  VkPushConstantRange vkShaderCreateInfoEXT;
  VkSpecializationInfo vkShaderCreateInfoEXT;
}

struct VkScreenBufferPropertiesQNX {
  VkStructureType vkScreenBufferPropertiesQNX;
  void vkScreenBufferPropertiesQNX;
  VkDeviceSize vkScreenBufferPropertiesQNX;
  uint vkScreenBufferPropertiesQNX;
}

struct VkCooperativeMatrixPropertiesKHR {
  VkStructureType vkCooperativeMatrixPropertiesKHR;
  void vkCooperativeMatrixPropertiesKHR;
  uint vkCooperativeMatrixPropertiesKHR;
  uint vkCooperativeMatrixPropertiesKHR;
  uint vkCooperativeMatrixPropertiesKHR;
  VkComponentTypeKHR vkCooperativeMatrixPropertiesKHR;
  VkComponentTypeKHR vkCooperativeMatrixPropertiesKHR;
  VkComponentTypeKHR vkCooperativeMatrixPropertiesKHR;
  VkComponentTypeKHR vkCooperativeMatrixPropertiesKHR;
  VkBool32 vkCooperativeMatrixPropertiesKHR;
  VkScopeKHR vkCooperativeMatrixPropertiesKHR;
}


// Enums
const VK_MAX_PHYSICAL_DEVICE_NAME_SIZE = 256;
const VK_UUID_SIZE = 16;
const VK_LUID_SIZE = 8;
const VK_LUID_SIZE_KHR = null;
const VK_MAX_EXTENSION_NAME_SIZE = 256;
const VK_MAX_DESCRIPTION_SIZE = 256;
const VK_MAX_MEMORY_TYPES = 32;
const VK_MAX_MEMORY_HEAPS = 16;
const VK_LOD_CLAMP_NONE = 1000.0F;
const VK_REMAINING_MIP_LEVELS = (~0U);
const VK_REMAINING_ARRAY_LAYERS = (~0U);
const VK_REMAINING_3D_SLICES_EXT = (~0U);
const VK_WHOLE_SIZE = (~0);
const VK_ATTACHMENT_UNUSED = (~0U);
const VK_TRUE = 1;
const VK_FALSE = 0;
const VK_QUEUE_FAMILY_IGNORED = (~0U);
const VK_QUEUE_FAMILY_EXTERNAL = (~1U);
const VK_QUEUE_FAMILY_EXTERNAL_KHR = null;
const VK_QUEUE_FAMILY_FOREIGN_EXT = (~2U);
const VK_SUBPASS_EXTERNAL = (~0U);
const VK_MAX_DEVICE_GROUP_SIZE = 32;
const VK_MAX_DEVICE_GROUP_SIZE_KHR = null;
const VK_MAX_DRIVER_NAME_SIZE = 256;
const VK_MAX_DRIVER_NAME_SIZE_KHR = null;
const VK_MAX_DRIVER_INFO_SIZE = 256;
const VK_MAX_DRIVER_INFO_SIZE_KHR = null;
const VK_SHADER_UNUSED_KHR = (~0U);
const VK_SHADER_UNUSED_NV = null;
const VK_MAX_GLOBAL_PRIORITY_SIZE_KHR = 16;
const VK_MAX_GLOBAL_PRIORITY_SIZE_EXT = null;
const VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT = 32;
def VkImageLayout = distinct inline int;
 const VkImageLayout VK_IMAGE_LAYOUT_UNDEFINED = 0;
const VkImageLayout VK_IMAGE_LAYOUT_GENERAL = 1;
const VkImageLayout VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2;
const VkImageLayout VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3;
const VkImageLayout VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4;
const VkImageLayout VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5;
const VkImageLayout VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6;
const VkImageLayout VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7;
const VkImageLayout VK_IMAGE_LAYOUT_PREINITIALIZED = 8;
def VkAttachmentLoadOp = distinct inline int;
 const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_LOAD = 0;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_CLEAR = 1;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_DONT_CARE = 2;
def VkAttachmentStoreOp = distinct inline int;
 const VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_STORE = 0;
const VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_DONT_CARE = 1;
def VkImageType = distinct inline int;
 const VkImageType VK_IMAGE_TYPE_1D = 0;
const VkImageType VK_IMAGE_TYPE_2D = 1;
const VkImageType VK_IMAGE_TYPE_3D = 2;
def VkImageTiling = distinct inline int;
 const VkImageTiling VK_IMAGE_TILING_OPTIMAL = 0;
const VkImageTiling VK_IMAGE_TILING_LINEAR = 1;
def VkImageViewType = distinct inline int;
 const VkImageViewType VK_IMAGE_VIEW_TYPE_1D = 0;
const VkImageViewType VK_IMAGE_VIEW_TYPE_2D = 1;
const VkImageViewType VK_IMAGE_VIEW_TYPE_3D = 2;
const VkImageViewType VK_IMAGE_VIEW_TYPE_CUBE = 3;
const VkImageViewType VK_IMAGE_VIEW_TYPE_1D_ARRAY = 4;
const VkImageViewType VK_IMAGE_VIEW_TYPE_2D_ARRAY = 5;
const VkImageViewType VK_IMAGE_VIEW_TYPE_CUBE_ARRAY = 6;
def VkCommandBufferLevel = distinct inline int;
 const VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_PRIMARY = 0;
const VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_SECONDARY = 1;
def VkComponentSwizzle = distinct inline int;
 const VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY = 0;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_ZERO = 1;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_ONE = 2;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_R = 3;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_G = 4;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_B = 5;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_A = 6;
def VkDescriptorType = distinct inline int;
 const VkDescriptorType VK_DESCRIPTOR_TYPE_SAMPLER = 0;
const VkDescriptorType VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1;
const VkDescriptorType VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2;
const VkDescriptorType VK_DESCRIPTOR_TYPE_STORAGE_IMAGE = 3;
const VkDescriptorType VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4;
const VkDescriptorType VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5;
const VkDescriptorType VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6;
const VkDescriptorType VK_DESCRIPTOR_TYPE_STORAGE_BUFFER = 7;
const VkDescriptorType VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8;
const VkDescriptorType VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9;
const VkDescriptorType VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10;
def VkQueryType = distinct inline int;
 const VkQueryType VK_QUERY_TYPE_OCCLUSION = 0;
const VkQueryType VK_QUERY_TYPE_PIPELINE_STATISTICS = 1;
const VkQueryType VK_QUERY_TYPE_TIMESTAMP = 2;
def VkBorderColor = distinct inline int;
 const VkBorderColor VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0;
const VkBorderColor VK_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1;
const VkBorderColor VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2;
const VkBorderColor VK_BORDER_COLOR_INT_OPAQUE_BLACK = 3;
const VkBorderColor VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4;
const VkBorderColor VK_BORDER_COLOR_INT_OPAQUE_WHITE = 5;
def VkPipelineBindPoint = distinct inline int;
 const VkPipelineBindPoint VK_PIPELINE_BIND_POINT_GRAPHICS = 0;
const VkPipelineBindPoint VK_PIPELINE_BIND_POINT_COMPUTE = 1;
def VkPipelineCacheHeaderVersion = distinct inline int;
 const VkPipelineCacheHeaderVersion VK_PIPELINE_CACHE_HEADER_VERSION_ONE = 1;
def VkPipelineCacheCreateFlagBits = int;
def VkPrimitiveTopology = distinct inline int;
 const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_POINT_LIST = 0;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_LINE_LIST = 1;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_LINE_STRIP = 2;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST = 3;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP = 4;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN = 5;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY = 6;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY = 7;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY = 8;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY = 9;
const VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_PATCH_LIST = 10;
def VkSharingMode = distinct inline int;
 const VkSharingMode VK_SHARING_MODE_EXCLUSIVE = 0;
const VkSharingMode VK_SHARING_MODE_CONCURRENT = 1;
def VkIndexType = distinct inline int;
 const VkIndexType VK_INDEX_TYPE_UINT16 = 0;
const VkIndexType VK_INDEX_TYPE_UINT32 = 1;
def VkFilter = distinct inline int;
 const VkFilter VK_FILTER_NEAREST = 0;
const VkFilter VK_FILTER_LINEAR = 1;
def VkSamplerMipmapMode = distinct inline int;
 const VkSamplerMipmapMode VK_SAMPLER_MIPMAP_MODE_NEAREST = 0;
const VkSamplerMipmapMode VK_SAMPLER_MIPMAP_MODE_LINEAR = 1;
def VkSamplerAddressMode = distinct inline int;
 const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_REPEAT = 0;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3;
def VkCompareOp = distinct inline int;
 const VkCompareOp VK_COMPARE_OP_NEVER = 0;
const VkCompareOp VK_COMPARE_OP_LESS = 1;
const VkCompareOp VK_COMPARE_OP_EQUAL = 2;
const VkCompareOp VK_COMPARE_OP_LESS_OR_EQUAL = 3;
const VkCompareOp VK_COMPARE_OP_GREATER = 4;
const VkCompareOp VK_COMPARE_OP_NOT_EQUAL = 5;
const VkCompareOp VK_COMPARE_OP_GREATER_OR_EQUAL = 6;
const VkCompareOp VK_COMPARE_OP_ALWAYS = 7;
def VkPolygonMode = distinct inline int;
 const VkPolygonMode VK_POLYGON_MODE_FILL = 0;
const VkPolygonMode VK_POLYGON_MODE_LINE = 1;
const VkPolygonMode VK_POLYGON_MODE_POINT = 2;
def VkFrontFace = distinct inline int;
 const VkFrontFace VK_FRONT_FACE_COUNTER_CLOCKWISE = 0;
const VkFrontFace VK_FRONT_FACE_CLOCKWISE = 1;
def VkBlendFactor = distinct inline int;
 const VkBlendFactor VK_BLEND_FACTOR_ZERO = 0;
const VkBlendFactor VK_BLEND_FACTOR_ONE = 1;
const VkBlendFactor VK_BLEND_FACTOR_SRC_COLOR = 2;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3;
const VkBlendFactor VK_BLEND_FACTOR_DST_COLOR = 4;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5;
const VkBlendFactor VK_BLEND_FACTOR_SRC_ALPHA = 6;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7;
const VkBlendFactor VK_BLEND_FACTOR_DST_ALPHA = 8;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9;
const VkBlendFactor VK_BLEND_FACTOR_CONSTANT_COLOR = 10;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11;
const VkBlendFactor VK_BLEND_FACTOR_CONSTANT_ALPHA = 12;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13;
const VkBlendFactor VK_BLEND_FACTOR_SRC_ALPHA_SATURATE = 14;
const VkBlendFactor VK_BLEND_FACTOR_SRC1_COLOR = 15;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16;
const VkBlendFactor VK_BLEND_FACTOR_SRC1_ALPHA = 17;
const VkBlendFactor VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18;
def VkBlendOp = distinct inline int;
 const VkBlendOp VK_BLEND_OP_ADD = 0;
const VkBlendOp VK_BLEND_OP_SUBTRACT = 1;
const VkBlendOp VK_BLEND_OP_REVERSE_SUBTRACT = 2;
const VkBlendOp VK_BLEND_OP_MIN = 3;
const VkBlendOp VK_BLEND_OP_MAX = 4;
def VkStencilOp = distinct inline int;
 const VkStencilOp VK_STENCIL_OP_KEEP = 0;
const VkStencilOp VK_STENCIL_OP_ZERO = 1;
const VkStencilOp VK_STENCIL_OP_REPLACE = 2;
const VkStencilOp VK_STENCIL_OP_INCREMENT_AND_CLAMP = 3;
const VkStencilOp VK_STENCIL_OP_DECREMENT_AND_CLAMP = 4;
const VkStencilOp VK_STENCIL_OP_INVERT = 5;
const VkStencilOp VK_STENCIL_OP_INCREMENT_AND_WRAP = 6;
const VkStencilOp VK_STENCIL_OP_DECREMENT_AND_WRAP = 7;
def VkLogicOp = distinct inline int;
 const VkLogicOp VK_LOGIC_OP_CLEAR = 0;
const VkLogicOp VK_LOGIC_OP_AND = 1;
const VkLogicOp VK_LOGIC_OP_AND_REVERSE = 2;
const VkLogicOp VK_LOGIC_OP_COPY = 3;
const VkLogicOp VK_LOGIC_OP_AND_INVERTED = 4;
const VkLogicOp VK_LOGIC_OP_NO_OP = 5;
const VkLogicOp VK_LOGIC_OP_XOR = 6;
const VkLogicOp VK_LOGIC_OP_OR = 7;
const VkLogicOp VK_LOGIC_OP_NOR = 8;
const VkLogicOp VK_LOGIC_OP_EQUIVALENT = 9;
const VkLogicOp VK_LOGIC_OP_INVERT = 10;
const VkLogicOp VK_LOGIC_OP_OR_REVERSE = 11;
const VkLogicOp VK_LOGIC_OP_COPY_INVERTED = 12;
const VkLogicOp VK_LOGIC_OP_OR_INVERTED = 13;
const VkLogicOp VK_LOGIC_OP_NAND = 14;
const VkLogicOp VK_LOGIC_OP_SET = 15;
def VkInternalAllocationType = distinct inline int;
 const VkInternalAllocationType VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0;
def VkSystemAllocationScope = distinct inline int;
 const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_COMMAND = 0;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_OBJECT = 1;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_CACHE = 2;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_DEVICE = 3;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4;
def VkPhysicalDeviceType = distinct inline int;
 const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_OTHER = 0;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_CPU = 4;
def VkVertexInputRate = distinct inline int;
 const VkVertexInputRate VK_VERTEX_INPUT_RATE_VERTEX = 0;
const VkVertexInputRate VK_VERTEX_INPUT_RATE_INSTANCE = 1;
def VkFormat = distinct inline int;
 const VkFormat VK_FORMAT_UNDEFINED = 0;
const VkFormat VK_FORMAT_R4G4_UNORM_PACK8 = 1;
const VkFormat VK_FORMAT_R4G4B4A4_UNORM_PACK16 = 2;
const VkFormat VK_FORMAT_B4G4R4A4_UNORM_PACK16 = 3;
const VkFormat VK_FORMAT_R5G6B5_UNORM_PACK16 = 4;
const VkFormat VK_FORMAT_B5G6R5_UNORM_PACK16 = 5;
const VkFormat VK_FORMAT_R5G5B5A1_UNORM_PACK16 = 6;
const VkFormat VK_FORMAT_B5G5R5A1_UNORM_PACK16 = 7;
const VkFormat VK_FORMAT_A1R5G5B5_UNORM_PACK16 = 8;
const VkFormat VK_FORMAT_R8_UNORM = 9;
const VkFormat VK_FORMAT_R8_SNORM = 10;
const VkFormat VK_FORMAT_R8_USCALED = 11;
const VkFormat VK_FORMAT_R8_SSCALED = 12;
const VkFormat VK_FORMAT_R8_UINT = 13;
const VkFormat VK_FORMAT_R8_SINT = 14;
const VkFormat VK_FORMAT_R8_SRGB = 15;
const VkFormat VK_FORMAT_R8G8_UNORM = 16;
const VkFormat VK_FORMAT_R8G8_SNORM = 17;
const VkFormat VK_FORMAT_R8G8_USCALED = 18;
const VkFormat VK_FORMAT_R8G8_SSCALED = 19;
const VkFormat VK_FORMAT_R8G8_UINT = 20;
const VkFormat VK_FORMAT_R8G8_SINT = 21;
const VkFormat VK_FORMAT_R8G8_SRGB = 22;
const VkFormat VK_FORMAT_R8G8B8_UNORM = 23;
const VkFormat VK_FORMAT_R8G8B8_SNORM = 24;
const VkFormat VK_FORMAT_R8G8B8_USCALED = 25;
const VkFormat VK_FORMAT_R8G8B8_SSCALED = 26;
const VkFormat VK_FORMAT_R8G8B8_UINT = 27;
const VkFormat VK_FORMAT_R8G8B8_SINT = 28;
const VkFormat VK_FORMAT_R8G8B8_SRGB = 29;
const VkFormat VK_FORMAT_B8G8R8_UNORM = 30;
const VkFormat VK_FORMAT_B8G8R8_SNORM = 31;
const VkFormat VK_FORMAT_B8G8R8_USCALED = 32;
const VkFormat VK_FORMAT_B8G8R8_SSCALED = 33;
const VkFormat VK_FORMAT_B8G8R8_UINT = 34;
const VkFormat VK_FORMAT_B8G8R8_SINT = 35;
const VkFormat VK_FORMAT_B8G8R8_SRGB = 36;
const VkFormat VK_FORMAT_R8G8B8A8_UNORM = 37;
const VkFormat VK_FORMAT_R8G8B8A8_SNORM = 38;
const VkFormat VK_FORMAT_R8G8B8A8_USCALED = 39;
const VkFormat VK_FORMAT_R8G8B8A8_SSCALED = 40;
const VkFormat VK_FORMAT_R8G8B8A8_UINT = 41;
const VkFormat VK_FORMAT_R8G8B8A8_SINT = 42;
const VkFormat VK_FORMAT_R8G8B8A8_SRGB = 43;
const VkFormat VK_FORMAT_B8G8R8A8_UNORM = 44;
const VkFormat VK_FORMAT_B8G8R8A8_SNORM = 45;
const VkFormat VK_FORMAT_B8G8R8A8_USCALED = 46;
const VkFormat VK_FORMAT_B8G8R8A8_SSCALED = 47;
const VkFormat VK_FORMAT_B8G8R8A8_UINT = 48;
const VkFormat VK_FORMAT_B8G8R8A8_SINT = 49;
const VkFormat VK_FORMAT_B8G8R8A8_SRGB = 50;
const VkFormat VK_FORMAT_A8B8G8R8_UNORM_PACK32 = 51;
const VkFormat VK_FORMAT_A8B8G8R8_SNORM_PACK32 = 52;
const VkFormat VK_FORMAT_A8B8G8R8_USCALED_PACK32 = 53;
const VkFormat VK_FORMAT_A8B8G8R8_SSCALED_PACK32 = 54;
const VkFormat VK_FORMAT_A8B8G8R8_UINT_PACK32 = 55;
const VkFormat VK_FORMAT_A8B8G8R8_SINT_PACK32 = 56;
const VkFormat VK_FORMAT_A8B8G8R8_SRGB_PACK32 = 57;
const VkFormat VK_FORMAT_A2R10G10B10_UNORM_PACK32 = 58;
const VkFormat VK_FORMAT_A2R10G10B10_SNORM_PACK32 = 59;
const VkFormat VK_FORMAT_A2R10G10B10_USCALED_PACK32 = 60;
const VkFormat VK_FORMAT_A2R10G10B10_SSCALED_PACK32 = 61;
const VkFormat VK_FORMAT_A2R10G10B10_UINT_PACK32 = 62;
const VkFormat VK_FORMAT_A2R10G10B10_SINT_PACK32 = 63;
const VkFormat VK_FORMAT_A2B10G10R10_UNORM_PACK32 = 64;
const VkFormat VK_FORMAT_A2B10G10R10_SNORM_PACK32 = 65;
const VkFormat VK_FORMAT_A2B10G10R10_USCALED_PACK32 = 66;
const VkFormat VK_FORMAT_A2B10G10R10_SSCALED_PACK32 = 67;
const VkFormat VK_FORMAT_A2B10G10R10_UINT_PACK32 = 68;
const VkFormat VK_FORMAT_A2B10G10R10_SINT_PACK32 = 69;
const VkFormat VK_FORMAT_R16_UNORM = 70;
const VkFormat VK_FORMAT_R16_SNORM = 71;
const VkFormat VK_FORMAT_R16_USCALED = 72;
const VkFormat VK_FORMAT_R16_SSCALED = 73;
const VkFormat VK_FORMAT_R16_UINT = 74;
const VkFormat VK_FORMAT_R16_SINT = 75;
const VkFormat VK_FORMAT_R16_SFLOAT = 76;
const VkFormat VK_FORMAT_R16G16_UNORM = 77;
const VkFormat VK_FORMAT_R16G16_SNORM = 78;
const VkFormat VK_FORMAT_R16G16_USCALED = 79;
const VkFormat VK_FORMAT_R16G16_SSCALED = 80;
const VkFormat VK_FORMAT_R16G16_UINT = 81;
const VkFormat VK_FORMAT_R16G16_SINT = 82;
const VkFormat VK_FORMAT_R16G16_SFLOAT = 83;
const VkFormat VK_FORMAT_R16G16B16_UNORM = 84;
const VkFormat VK_FORMAT_R16G16B16_SNORM = 85;
const VkFormat VK_FORMAT_R16G16B16_USCALED = 86;
const VkFormat VK_FORMAT_R16G16B16_SSCALED = 87;
const VkFormat VK_FORMAT_R16G16B16_UINT = 88;
const VkFormat VK_FORMAT_R16G16B16_SINT = 89;
const VkFormat VK_FORMAT_R16G16B16_SFLOAT = 90;
const VkFormat VK_FORMAT_R16G16B16A16_UNORM = 91;
const VkFormat VK_FORMAT_R16G16B16A16_SNORM = 92;
const VkFormat VK_FORMAT_R16G16B16A16_USCALED = 93;
const VkFormat VK_FORMAT_R16G16B16A16_SSCALED = 94;
const VkFormat VK_FORMAT_R16G16B16A16_UINT = 95;
const VkFormat VK_FORMAT_R16G16B16A16_SINT = 96;
const VkFormat VK_FORMAT_R16G16B16A16_SFLOAT = 97;
const VkFormat VK_FORMAT_R32_UINT = 98;
const VkFormat VK_FORMAT_R32_SINT = 99;
const VkFormat VK_FORMAT_R32_SFLOAT = 100;
const VkFormat VK_FORMAT_R32G32_UINT = 101;
const VkFormat VK_FORMAT_R32G32_SINT = 102;
const VkFormat VK_FORMAT_R32G32_SFLOAT = 103;
const VkFormat VK_FORMAT_R32G32B32_UINT = 104;
const VkFormat VK_FORMAT_R32G32B32_SINT = 105;
const VkFormat VK_FORMAT_R32G32B32_SFLOAT = 106;
const VkFormat VK_FORMAT_R32G32B32A32_UINT = 107;
const VkFormat VK_FORMAT_R32G32B32A32_SINT = 108;
const VkFormat VK_FORMAT_R32G32B32A32_SFLOAT = 109;
const VkFormat VK_FORMAT_R64_UINT = 110;
const VkFormat VK_FORMAT_R64_SINT = 111;
const VkFormat VK_FORMAT_R64_SFLOAT = 112;
const VkFormat VK_FORMAT_R64G64_UINT = 113;
const VkFormat VK_FORMAT_R64G64_SINT = 114;
const VkFormat VK_FORMAT_R64G64_SFLOAT = 115;
const VkFormat VK_FORMAT_R64G64B64_UINT = 116;
const VkFormat VK_FORMAT_R64G64B64_SINT = 117;
const VkFormat VK_FORMAT_R64G64B64_SFLOAT = 118;
const VkFormat VK_FORMAT_R64G64B64A64_UINT = 119;
const VkFormat VK_FORMAT_R64G64B64A64_SINT = 120;
const VkFormat VK_FORMAT_R64G64B64A64_SFLOAT = 121;
const VkFormat VK_FORMAT_B10G11R11_UFLOAT_PACK32 = 122;
const VkFormat VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 = 123;
const VkFormat VK_FORMAT_D16_UNORM = 124;
const VkFormat VK_FORMAT_X8_D24_UNORM_PACK32 = 125;
const VkFormat VK_FORMAT_D32_SFLOAT = 126;
const VkFormat VK_FORMAT_S8_UINT = 127;
const VkFormat VK_FORMAT_D16_UNORM_S8_UINT = 128;
const VkFormat VK_FORMAT_D24_UNORM_S8_UINT = 129;
const VkFormat VK_FORMAT_D32_SFLOAT_S8_UINT = 130;
const VkFormat VK_FORMAT_BC1_RGB_UNORM_BLOCK = 131;
const VkFormat VK_FORMAT_BC1_RGB_SRGB_BLOCK = 132;
const VkFormat VK_FORMAT_BC1_RGBA_UNORM_BLOCK = 133;
const VkFormat VK_FORMAT_BC1_RGBA_SRGB_BLOCK = 134;
const VkFormat VK_FORMAT_BC2_UNORM_BLOCK = 135;
const VkFormat VK_FORMAT_BC2_SRGB_BLOCK = 136;
const VkFormat VK_FORMAT_BC3_UNORM_BLOCK = 137;
const VkFormat VK_FORMAT_BC3_SRGB_BLOCK = 138;
const VkFormat VK_FORMAT_BC4_UNORM_BLOCK = 139;
const VkFormat VK_FORMAT_BC4_SNORM_BLOCK = 140;
const VkFormat VK_FORMAT_BC5_UNORM_BLOCK = 141;
const VkFormat VK_FORMAT_BC5_SNORM_BLOCK = 142;
const VkFormat VK_FORMAT_BC6H_UFLOAT_BLOCK = 143;
const VkFormat VK_FORMAT_BC6H_SFLOAT_BLOCK = 144;
const VkFormat VK_FORMAT_BC7_UNORM_BLOCK = 145;
const VkFormat VK_FORMAT_BC7_SRGB_BLOCK = 146;
const VkFormat VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 147;
const VkFormat VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 148;
const VkFormat VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 149;
const VkFormat VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 150;
const VkFormat VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 151;
const VkFormat VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 152;
const VkFormat VK_FORMAT_EAC_R11_UNORM_BLOCK = 153;
const VkFormat VK_FORMAT_EAC_R11_SNORM_BLOCK = 154;
const VkFormat VK_FORMAT_EAC_R11G11_UNORM_BLOCK = 155;
const VkFormat VK_FORMAT_EAC_R11G11_SNORM_BLOCK = 156;
const VkFormat VK_FORMAT_ASTC_4X4_UNORM_BLOCK = 157;
const VkFormat VK_FORMAT_ASTC_4X4_SRGB_BLOCK = 158;
const VkFormat VK_FORMAT_ASTC_5X4_UNORM_BLOCK = 159;
const VkFormat VK_FORMAT_ASTC_5X4_SRGB_BLOCK = 160;
const VkFormat VK_FORMAT_ASTC_5X5_UNORM_BLOCK = 161;
const VkFormat VK_FORMAT_ASTC_5X5_SRGB_BLOCK = 162;
const VkFormat VK_FORMAT_ASTC_6X5_UNORM_BLOCK = 163;
const VkFormat VK_FORMAT_ASTC_6X5_SRGB_BLOCK = 164;
const VkFormat VK_FORMAT_ASTC_6X6_UNORM_BLOCK = 165;
const VkFormat VK_FORMAT_ASTC_6X6_SRGB_BLOCK = 166;
const VkFormat VK_FORMAT_ASTC_8X5_UNORM_BLOCK = 167;
const VkFormat VK_FORMAT_ASTC_8X5_SRGB_BLOCK = 168;
const VkFormat VK_FORMAT_ASTC_8X6_UNORM_BLOCK = 169;
const VkFormat VK_FORMAT_ASTC_8X6_SRGB_BLOCK = 170;
const VkFormat VK_FORMAT_ASTC_8X8_UNORM_BLOCK = 171;
const VkFormat VK_FORMAT_ASTC_8X8_SRGB_BLOCK = 172;
const VkFormat VK_FORMAT_ASTC_10X5_UNORM_BLOCK = 173;
const VkFormat VK_FORMAT_ASTC_10X5_SRGB_BLOCK = 174;
const VkFormat VK_FORMAT_ASTC_10X6_UNORM_BLOCK = 175;
const VkFormat VK_FORMAT_ASTC_10X6_SRGB_BLOCK = 176;
const VkFormat VK_FORMAT_ASTC_10X8_UNORM_BLOCK = 177;
const VkFormat VK_FORMAT_ASTC_10X8_SRGB_BLOCK = 178;
const VkFormat VK_FORMAT_ASTC_10X10_UNORM_BLOCK = 179;
const VkFormat VK_FORMAT_ASTC_10X10_SRGB_BLOCK = 180;
const VkFormat VK_FORMAT_ASTC_12X10_UNORM_BLOCK = 181;
const VkFormat VK_FORMAT_ASTC_12X10_SRGB_BLOCK = 182;
const VkFormat VK_FORMAT_ASTC_12X12_UNORM_BLOCK = 183;
const VkFormat VK_FORMAT_ASTC_12X12_SRGB_BLOCK = 184;
def VkStructureType = distinct inline int;
 const VkStructureType VK_STRUCTURE_TYPE_APPLICATION_INFO = 0;
const VkStructureType VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO = 1;
const VkStructureType VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO = 2;
const VkStructureType VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO = 3;
const VkStructureType VK_STRUCTURE_TYPE_SUBMIT_INFO = 4;
const VkStructureType VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = 5;
const VkStructureType VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = 6;
const VkStructureType VK_STRUCTURE_TYPE_BIND_SPARSE_INFO = 7;
const VkStructureType VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = 8;
const VkStructureType VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = 9;
const VkStructureType VK_STRUCTURE_TYPE_EVENT_CREATE_INFO = 10;
const VkStructureType VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO = 11;
const VkStructureType VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO = 12;
const VkStructureType VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO = 13;
const VkStructureType VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO = 14;
const VkStructureType VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO = 15;
const VkStructureType VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO = 16;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO = 17;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO = 18;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO = 19;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO = 20;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO = 21;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO = 22;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO = 23;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO = 24;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO = 25;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO = 26;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO = 27;
const VkStructureType VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO = 28;
const VkStructureType VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO = 29;
const VkStructureType VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO = 30;
const VkStructureType VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO = 31;
const VkStructureType VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO = 32;
const VkStructureType VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO = 33;
const VkStructureType VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO = 34;
const VkStructureType VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = 35;
const VkStructureType VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET = 36;
const VkStructureType VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO = 37;
const VkStructureType VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO = 38;
const VkStructureType VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO = 39;
const VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO = 40;
const VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO = 41;
const VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = 42;
const VkStructureType VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO = 43;
const VkStructureType VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER = 44;
const VkStructureType VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER = 45;
const VkStructureType VK_STRUCTURE_TYPE_MEMORY_BARRIER = 46;
const VkStructureType VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO = 47;
const VkStructureType VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO = 48;
def VkSubpassContents = distinct inline int;
 const VkSubpassContents VK_SUBPASS_CONTENTS_INLINE = 0;
const VkSubpassContents VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;
def VkResult = distinct inline int;
 const VkResult VK_SUCCESS = 0;
const VkResult VK_NOT_READY = 1;
const VkResult VK_TIMEOUT = 2;
const VkResult VK_EVENT_SET = 3;
const VkResult VK_EVENT_RESET = 4;
const VkResult VK_INCOMPLETE = 5;
const VkResult VK_ERROR_OUT_OF_HOST_MEMORY = -1;
const VkResult VK_ERROR_OUT_OF_DEVICE_MEMORY = -2;
const VkResult VK_ERROR_INITIALIZATION_FAILED = -3;
const VkResult VK_ERROR_DEVICE_LOST = -4;
const VkResult VK_ERROR_MEMORY_MAP_FAILED = -5;
const VkResult VK_ERROR_LAYER_NOT_PRESENT = -6;
const VkResult VK_ERROR_EXTENSION_NOT_PRESENT = -7;
const VkResult VK_ERROR_FEATURE_NOT_PRESENT = -8;
const VkResult VK_ERROR_INCOMPATIBLE_DRIVER = -9;
const VkResult VK_ERROR_TOO_MANY_OBJECTS = -10;
const VkResult VK_ERROR_FORMAT_NOT_SUPPORTED = -11;
const VkResult VK_ERROR_FRAGMENTED_POOL = -12;
const VkResult VK_ERROR_UNKNOWN = -13;
def VkDynamicState = distinct inline int;
 const VkDynamicState VK_DYNAMIC_STATE_VIEWPORT = 0;
const VkDynamicState VK_DYNAMIC_STATE_SCISSOR = 1;
const VkDynamicState VK_DYNAMIC_STATE_LINE_WIDTH = 2;
const VkDynamicState VK_DYNAMIC_STATE_DEPTH_BIAS = 3;
const VkDynamicState VK_DYNAMIC_STATE_BLEND_CONSTANTS = 4;
const VkDynamicState VK_DYNAMIC_STATE_DEPTH_BOUNDS = 5;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_WRITE_MASK = 7;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_REFERENCE = 8;
def VkDescriptorUpdateTemplateType = distinct inline int;
 const VkDescriptorUpdateTemplateType VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0;
def VkObjectType = distinct inline int;
 const VkObjectType VK_OBJECT_TYPE_UNKNOWN = 0;
const VkObjectType VK_OBJECT_TYPE_INSTANCE = 1;
const VkObjectType VK_OBJECT_TYPE_PHYSICAL_DEVICE = 2;
const VkObjectType VK_OBJECT_TYPE_DEVICE = 3;
const VkObjectType VK_OBJECT_TYPE_QUEUE = 4;
const VkObjectType VK_OBJECT_TYPE_SEMAPHORE = 5;
const VkObjectType VK_OBJECT_TYPE_COMMAND_BUFFER = 6;
const VkObjectType VK_OBJECT_TYPE_FENCE = 7;
const VkObjectType VK_OBJECT_TYPE_DEVICE_MEMORY = 8;
const VkObjectType VK_OBJECT_TYPE_BUFFER = 9;
const VkObjectType VK_OBJECT_TYPE_IMAGE = 10;
const VkObjectType VK_OBJECT_TYPE_EVENT = 11;
const VkObjectType VK_OBJECT_TYPE_QUERY_POOL = 12;
const VkObjectType VK_OBJECT_TYPE_BUFFER_VIEW = 13;
const VkObjectType VK_OBJECT_TYPE_IMAGE_VIEW = 14;
const VkObjectType VK_OBJECT_TYPE_SHADER_MODULE = 15;
const VkObjectType VK_OBJECT_TYPE_PIPELINE_CACHE = 16;
const VkObjectType VK_OBJECT_TYPE_PIPELINE_LAYOUT = 17;
const VkObjectType VK_OBJECT_TYPE_RENDER_PASS = 18;
const VkObjectType VK_OBJECT_TYPE_PIPELINE = 19;
const VkObjectType VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT = 20;
const VkObjectType VK_OBJECT_TYPE_SAMPLER = 21;
const VkObjectType VK_OBJECT_TYPE_DESCRIPTOR_POOL = 22;
const VkObjectType VK_OBJECT_TYPE_DESCRIPTOR_SET = 23;
const VkObjectType VK_OBJECT_TYPE_FRAMEBUFFER = 24;
const VkObjectType VK_OBJECT_TYPE_COMMAND_POOL = 25;
def VkRayTracingInvocationReorderModeNV = distinct inline int;
 const VkRayTracingInvocationReorderModeNV VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV = 0;
const VkRayTracingInvocationReorderModeNV VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV = 1;
def VkDirectDriverLoadingModeLUNARG = distinct inline int;
 const VkDirectDriverLoadingModeLUNARG VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG = 0;
const VkDirectDriverLoadingModeLUNARG VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG = 1;
def VkQueueFlagBits = int;
def VkCullModeFlagBits = int;
def VkRenderPassCreateFlagBits = int;
def VkDeviceQueueCreateFlagBits = int;
def VkMemoryPropertyFlagBits = int;
def VkMemoryHeapFlagBits = int;
def VkAccessFlagBits = int;
def VkBufferUsageFlagBits = int;
def VkBufferCreateFlagBits = int;
def VkShaderStageFlagBits = int;
def VkImageUsageFlagBits = int;
def VkImageCreateFlagBits = int;
def VkImageViewCreateFlagBits = int;
def VkSamplerCreateFlagBits = int;
def VkPipelineCreateFlagBits = int;
def VkPipelineShaderStageCreateFlagBits = int;
def VkColorComponentFlagBits = int;
def VkFenceCreateFlagBits = int;
def VkSemaphoreCreateFlagBits = int;
def VkFormatFeatureFlagBits = int;
def VkQueryControlFlagBits = int;
def VkQueryResultFlagBits = int;
def VkCommandBufferUsageFlagBits = int;
def VkQueryPipelineStatisticFlagBits = int;
def VkImageAspectFlagBits = int;
def VkSparseImageFormatFlagBits = int;
def VkSparseMemoryBindFlagBits = int;
def VkPipelineStageFlagBits = int;
def VkCommandPoolCreateFlagBits = int;
def VkCommandPoolResetFlagBits = int;
def VkCommandBufferResetFlagBits = int;
def VkSampleCountFlagBits = int;
def VkAttachmentDescriptionFlagBits = int;
def VkStencilFaceFlagBits = int;
def VkDescriptorPoolCreateFlagBits = int;
def VkDependencyFlagBits = int;
def VkSemaphoreType = distinct inline int;
 const VkSemaphoreType VK_SEMAPHORE_TYPE_BINARY = 0;
const VkSemaphoreType VK_SEMAPHORE_TYPE_TIMELINE = 1;
def VkSemaphoreWaitFlagBits = int;
def VkPresentModeKHR = distinct inline int;
 const VkPresentModeKHR VK_PRESENT_MODE_IMMEDIATE_KHR = 0;
const VkPresentModeKHR VK_PRESENT_MODE_MAILBOX_KHR = 1;
const VkPresentModeKHR VK_PRESENT_MODE_FIFO_KHR = 2;
const VkPresentModeKHR VK_PRESENT_MODE_FIFO_RELAXED_KHR = 3;
def VkColorSpaceKHR = distinct inline int;
 const VkColorSpaceKHR VK_COLOR_SPACE_SRGB_NONLINEAR_KHR = 0;
const VkColorSpaceKHR VK_COLORSPACE_SRGB_NONLINEAR_KHR = null;
def VkDisplayPlaneAlphaFlagBitsKHR = int;
def VkCompositeAlphaFlagBitsKHR = int;
def VkSurfaceTransformFlagBitsKHR = int;
def VkSwapchainImageUsageFlagBitsANDROID = int;
def VkTimeDomainEXT = distinct inline int;
 const VkTimeDomainEXT VK_TIME_DOMAIN_DEVICE_EXT = 0;
const VkTimeDomainEXT VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT = 1;
const VkTimeDomainEXT VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT = 2;
const VkTimeDomainEXT VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT = 3;
def VkDebugReportFlagBitsEXT = int;
def VkDebugReportObjectTypeEXT = distinct inline int;
 const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT = 0;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT = 1;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT = 2;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT = 3;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT = 4;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT = 5;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT = 6;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT = 7;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT = 8;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT = 9;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT = 10;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT = 11;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT = 12;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT = 13;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT = 14;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT = 15;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT = 16;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT = 17;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT = 18;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT = 19;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT = 20;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT = 21;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT = 22;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT = 23;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT = 24;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT = 25;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT = 26;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT = 27;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT = 28;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT = null;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT = 29;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT = 30;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT = 33;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT = null;
def VkDeviceMemoryReportEventTypeEXT = distinct inline int;
 const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT = 0;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT = 1;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT = 2;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT = 3;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT = 4;
def VkRasterizationOrderAMD = distinct inline int;
 const VkRasterizationOrderAMD VK_RASTERIZATION_ORDER_STRICT_AMD = 0;
const VkRasterizationOrderAMD VK_RASTERIZATION_ORDER_RELAXED_AMD = 1;
def VkExternalMemoryHandleTypeFlagBitsNV = int;
def VkExternalMemoryFeatureFlagBitsNV = int;
def VkValidationCheckEXT = distinct inline int;
 const VkValidationCheckEXT VK_VALIDATION_CHECK_ALL_EXT = 0;
const VkValidationCheckEXT VK_VALIDATION_CHECK_SHADERS_EXT = 1;
def VkValidationFeatureEnableEXT = distinct inline int;
 const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT = 0;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT = 1;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT = 2;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT = 3;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT = 4;
def VkValidationFeatureDisableEXT = distinct inline int;
 const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_ALL_EXT = 0;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT = 1;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT = 2;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT = 3;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT = 4;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT = 5;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT = 6;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT = 7;
def VkSubgroupFeatureFlagBits = int;
def VkIndirectCommandsLayoutUsageFlagBitsNV = int;
def VkIndirectStateFlagBitsNV = int;
def VkIndirectCommandsTokenTypeNV = distinct inline int;
 const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV = 0;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV = 1;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV = 2;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV = 3;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV = 4;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV = 5;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV = 6;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV = 7;
def VkPrivateDataSlotCreateFlagBits = int;
def VkDescriptorSetLayoutCreateFlagBits = int;
def VkExternalMemoryHandleTypeFlagBits = int;
def VkExternalMemoryFeatureFlagBits = int;
def VkExternalSemaphoreHandleTypeFlagBits = int;
def VkExternalSemaphoreFeatureFlagBits = int;
def VkSemaphoreImportFlagBits = int;
def VkExternalFenceHandleTypeFlagBits = int;
def VkExternalFenceFeatureFlagBits = int;
def VkFenceImportFlagBits = int;
def VkSurfaceCounterFlagBitsEXT = int;
def VkDisplayPowerStateEXT = distinct inline int;
 const VkDisplayPowerStateEXT VK_DISPLAY_POWER_STATE_OFF_EXT = 0;
const VkDisplayPowerStateEXT VK_DISPLAY_POWER_STATE_SUSPEND_EXT = 1;
const VkDisplayPowerStateEXT VK_DISPLAY_POWER_STATE_ON_EXT = 2;
def VkDeviceEventTypeEXT = distinct inline int;
 const VkDeviceEventTypeEXT VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0;
def VkDisplayEventTypeEXT = distinct inline int;
 const VkDisplayEventTypeEXT VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0;
def VkPeerMemoryFeatureFlagBits = int;
def VkMemoryAllocateFlagBits = int;
def VkDeviceGroupPresentModeFlagBitsKHR = int;
def VkSwapchainCreateFlagBitsKHR = int;
def VkViewportCoordinateSwizzleNV = distinct inline int;
 const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV = 0;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV = 1;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV = 2;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV = 3;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV = 4;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV = 5;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV = 6;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV = 7;
def VkDiscardRectangleModeEXT = distinct inline int;
 const VkDiscardRectangleModeEXT VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT = 0;
const VkDiscardRectangleModeEXT VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT = 1;
def VkSubpassDescriptionFlagBits = int;
def VkPointClippingBehavior = distinct inline int;
 const VkPointClippingBehavior VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0;
const VkPointClippingBehavior VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1;
def VkSamplerReductionMode = distinct inline int;
 const VkSamplerReductionMode VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0;
const VkSamplerReductionMode VK_SAMPLER_REDUCTION_MODE_MIN = 1;
const VkSamplerReductionMode VK_SAMPLER_REDUCTION_MODE_MAX = 2;
def VkTessellationDomainOrigin = distinct inline int;
 const VkTessellationDomainOrigin VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0;
const VkTessellationDomainOrigin VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1;
def VkSamplerYcbcrModelConversion = distinct inline int;
 const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4;
def VkSamplerYcbcrRange = distinct inline int;
 const VkSamplerYcbcrRange VK_SAMPLER_YCBCR_RANGE_ITU_FULL = 0;
const VkSamplerYcbcrRange VK_SAMPLER_YCBCR_RANGE_ITU_NARROW = 1;
def VkChromaLocation = distinct inline int;
 const VkChromaLocation VK_CHROMA_LOCATION_COSITED_EVEN = 0;
const VkChromaLocation VK_CHROMA_LOCATION_MIDPOINT = 1;
def VkBlendOverlapEXT = distinct inline int;
 const VkBlendOverlapEXT VK_BLEND_OVERLAP_UNCORRELATED_EXT = 0;
const VkBlendOverlapEXT VK_BLEND_OVERLAP_DISJOINT_EXT = 1;
const VkBlendOverlapEXT VK_BLEND_OVERLAP_CONJOINT_EXT = 2;
def VkCoverageModulationModeNV = distinct inline int;
 const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_NONE_NV = 0;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_RGB_NV = 1;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_ALPHA_NV = 2;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_RGBA_NV = 3;
def VkCoverageReductionModeNV = distinct inline int;
 const VkCoverageReductionModeNV VK_COVERAGE_REDUCTION_MODE_MERGE_NV = 0;
const VkCoverageReductionModeNV VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV = 1;
def VkValidationCacheHeaderVersionEXT = distinct inline int;
 const VkValidationCacheHeaderVersionEXT VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT = 1;
def VkShaderInfoTypeAMD = distinct inline int;
 const VkShaderInfoTypeAMD VK_SHADER_INFO_TYPE_STATISTICS_AMD = 0;
const VkShaderInfoTypeAMD VK_SHADER_INFO_TYPE_BINARY_AMD = 1;
const VkShaderInfoTypeAMD VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD = 2;
def VkQueueGlobalPriorityKHR = distinct inline int;
 const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR = 128;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR = 256;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR = 512;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR = 1024;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT = null;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT = null;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT = null;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT = null;
def VkDebugUtilsMessageSeverityFlagBitsEXT = int;
def VkDebugUtilsMessageTypeFlagBitsEXT = int;
def VkConservativeRasterizationModeEXT = distinct inline int;
 const VkConservativeRasterizationModeEXT VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0;
const VkConservativeRasterizationModeEXT VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1;
const VkConservativeRasterizationModeEXT VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2;
def VkDescriptorBindingFlagBits = int;
def VkVendorId = distinct inline int;
 const VkVendorId VK_VENDOR_ID_VIV = 0x10001;
const VkVendorId VK_VENDOR_ID_VSI = 0x10002;
const VkVendorId VK_VENDOR_ID_KAZAN = 0x10003;
const VkVendorId VK_VENDOR_ID_CODEPLAY = 0x10004;
const VkVendorId VK_VENDOR_ID_MESA = 0x10005;
const VkVendorId VK_VENDOR_ID_POCL = 0x10006;
const VkVendorId VK_VENDOR_ID_MOBILEYE = 0x10007;
def VkDriverId = distinct inline int;
 const VkDriverId VK_DRIVER_ID_AMD_PROPRIETARY = 1;
const VkDriverId VK_DRIVER_ID_AMD_OPEN_SOURCE = 2;
const VkDriverId VK_DRIVER_ID_MESA_RADV = 3;
const VkDriverId VK_DRIVER_ID_NVIDIA_PROPRIETARY = 4;
const VkDriverId VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS = 5;
const VkDriverId VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA = 6;
const VkDriverId VK_DRIVER_ID_IMAGINATION_PROPRIETARY = 7;
const VkDriverId VK_DRIVER_ID_QUALCOMM_PROPRIETARY = 8;
const VkDriverId VK_DRIVER_ID_ARM_PROPRIETARY = 9;
const VkDriverId VK_DRIVER_ID_GOOGLE_SWIFTSHADER = 10;
const VkDriverId VK_DRIVER_ID_GGP_PROPRIETARY = 11;
const VkDriverId VK_DRIVER_ID_BROADCOM_PROPRIETARY = 12;
const VkDriverId VK_DRIVER_ID_MESA_LLVMPIPE = 13;
const VkDriverId VK_DRIVER_ID_MOLTENVK = 14;
const VkDriverId VK_DRIVER_ID_COREAVI_PROPRIETARY = 15;
const VkDriverId VK_DRIVER_ID_JUICE_PROPRIETARY = 16;
const VkDriverId VK_DRIVER_ID_VERISILICON_PROPRIETARY = 17;
const VkDriverId VK_DRIVER_ID_MESA_TURNIP = 18;
const VkDriverId VK_DRIVER_ID_MESA_V3DV = 19;
const VkDriverId VK_DRIVER_ID_MESA_PANVK = 20;
const VkDriverId VK_DRIVER_ID_SAMSUNG_PROPRIETARY = 21;
const VkDriverId VK_DRIVER_ID_MESA_VENUS = 22;
const VkDriverId VK_DRIVER_ID_MESA_DOZEN = 23;
const VkDriverId VK_DRIVER_ID_MESA_NVK = 24;
const VkDriverId VK_DRIVER_ID_IMAGINATION_OPEN_SOURCE_MESA = 25;
def VkConditionalRenderingFlagBitsEXT = int;
def VkResolveModeFlagBits = int;
def VkShadingRatePaletteEntryNV = distinct inline int;
 const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV = 0;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV = 1;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV = 2;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV = 3;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV = 4;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV = 5;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV = 6;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV = 7;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV = 8;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV = 9;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV = 10;
const VkShadingRatePaletteEntryNV VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV = 11;
def VkCoarseSampleOrderTypeNV = distinct inline int;
 const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV = 0;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV = 1;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV = 2;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV = 3;
def VkGeometryInstanceFlagBitsKHR = int;
def VkGeometryFlagBitsKHR = int;
def VkBuildAccelerationStructureFlagBitsKHR = int;
def VkAccelerationStructureCreateFlagBitsKHR = int;
def VkCopyAccelerationStructureModeKHR = distinct inline int;
 const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3;
def VkBuildAccelerationStructureModeKHR = distinct inline int;
 const VkBuildAccelerationStructureModeKHR VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR = 0;
const VkBuildAccelerationStructureModeKHR VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR = 1;
def VkAccelerationStructureTypeKHR = distinct inline int;
 const VkAccelerationStructureTypeKHR VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0;
const VkAccelerationStructureTypeKHR VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1;
const VkAccelerationStructureTypeKHR VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR = 2;
def VkGeometryTypeKHR = distinct inline int;
 const VkGeometryTypeKHR VK_GEOMETRY_TYPE_TRIANGLES_KHR = 0;
const VkGeometryTypeKHR VK_GEOMETRY_TYPE_AABBS_KHR = 1;
const VkGeometryTypeKHR VK_GEOMETRY_TYPE_INSTANCES_KHR = 2;
def VkAccelerationStructureMemoryRequirementsTypeNV = distinct inline int;
 const VkAccelerationStructureMemoryRequirementsTypeNV VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV = 0;
const VkAccelerationStructureMemoryRequirementsTypeNV VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV = 1;
const VkAccelerationStructureMemoryRequirementsTypeNV VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV = 2;
def VkAccelerationStructureBuildTypeKHR = distinct inline int;
 const VkAccelerationStructureBuildTypeKHR VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR = 0;
const VkAccelerationStructureBuildTypeKHR VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR = 1;
const VkAccelerationStructureBuildTypeKHR VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR = 2;
def VkRayTracingShaderGroupTypeKHR = distinct inline int;
 const VkRayTracingShaderGroupTypeKHR VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR = 0;
const VkRayTracingShaderGroupTypeKHR VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR = 1;
const VkRayTracingShaderGroupTypeKHR VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR = 2;
def VkAccelerationStructureCompatibilityKHR = distinct inline int;
 const VkAccelerationStructureCompatibilityKHR VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR = 0;
const VkAccelerationStructureCompatibilityKHR VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR = 1;
def VkShaderGroupShaderKHR = distinct inline int;
 const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_GENERAL_KHR = 0;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR = 1;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_ANY_HIT_KHR = 2;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_INTERSECTION_KHR = 3;
def VkMemoryOverallocationBehaviorAMD = distinct inline int;
 const VkMemoryOverallocationBehaviorAMD VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD = 0;
const VkMemoryOverallocationBehaviorAMD VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD = 1;
const VkMemoryOverallocationBehaviorAMD VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD = 2;
def VkFramebufferCreateFlagBits = int;
def VkScopeNV = distinct inline int;
 const VkScopeNV VK_SCOPE_DEVICE_NV = 1;
const VkScopeNV VK_SCOPE_WORKGROUP_NV = 2;
const VkScopeNV VK_SCOPE_SUBGROUP_NV = 3;
const VkScopeNV VK_SCOPE_QUEUE_FAMILY_NV = 5;
def VkComponentTypeNV = distinct inline int;
 const VkComponentTypeNV VK_COMPONENT_TYPE_FLOAT16_NV = 0;
const VkComponentTypeNV VK_COMPONENT_TYPE_FLOAT32_NV = 1;
const VkComponentTypeNV VK_COMPONENT_TYPE_FLOAT64_NV = 2;
const VkComponentTypeNV VK_COMPONENT_TYPE_SINT8_NV = 3;
const VkComponentTypeNV VK_COMPONENT_TYPE_SINT16_NV = 4;
const VkComponentTypeNV VK_COMPONENT_TYPE_SINT32_NV = 5;
const VkComponentTypeNV VK_COMPONENT_TYPE_SINT64_NV = 6;
const VkComponentTypeNV VK_COMPONENT_TYPE_UINT8_NV = 7;
const VkComponentTypeNV VK_COMPONENT_TYPE_UINT16_NV = 8;
const VkComponentTypeNV VK_COMPONENT_TYPE_UINT32_NV = 9;
const VkComponentTypeNV VK_COMPONENT_TYPE_UINT64_NV = 10;
def VkDeviceDiagnosticsConfigFlagBitsNV = int;
def VkPipelineCreationFeedbackFlagBits = int;
def VkFullScreenExclusiveEXT = distinct inline int;
 const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT = 0;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT = 1;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT = 2;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT = 3;
def VkPerformanceCounterScopeKHR = distinct inline int;
 const VkPerformanceCounterScopeKHR VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0;
const VkPerformanceCounterScopeKHR VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1;
const VkPerformanceCounterScopeKHR VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2;
const VkPerformanceCounterScopeKHR VK_QUERY_SCOPE_COMMAND_BUFFER_KHR = null;
const VkPerformanceCounterScopeKHR VK_QUERY_SCOPE_RENDER_PASS_KHR = null;
const VkPerformanceCounterScopeKHR VK_QUERY_SCOPE_COMMAND_KHR = null;
def VkMemoryDecompressionMethodFlagBitsNV = int;
def VkPerformanceCounterUnitKHR = distinct inline int;
 const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR = 0;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR = 1;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR = 2;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR = 3;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR = 4;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR = 5;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR = 6;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR = 7;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR = 8;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR = 9;
const VkPerformanceCounterUnitKHR VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR = 10;
def VkPerformanceCounterStorageKHR = distinct inline int;
 const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR = 0;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR = 1;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR = 2;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR = 3;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR = 4;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR = 5;
def VkPerformanceCounterDescriptionFlagBitsKHR = int;
def VkAcquireProfilingLockFlagBitsKHR = int;
def VkShaderCorePropertiesFlagBitsAMD = int;
def VkRefreshObjectFlagBitsKHR = int;
def VkPerformanceConfigurationTypeINTEL = distinct inline int;
 const VkPerformanceConfigurationTypeINTEL VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL = 0;
def VkQueryPoolSamplingModeINTEL = distinct inline int;
 const VkQueryPoolSamplingModeINTEL VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL = 0;
def VkPerformanceOverrideTypeINTEL = distinct inline int;
 const VkPerformanceOverrideTypeINTEL VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL = 0;
const VkPerformanceOverrideTypeINTEL VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL = 1;
def VkPerformanceParameterTypeINTEL = distinct inline int;
 const VkPerformanceParameterTypeINTEL VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL = 0;
const VkPerformanceParameterTypeINTEL VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL = 1;
def VkPerformanceValueTypeINTEL = distinct inline int;
 const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL = 0;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL = 1;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL = 2;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL = 3;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL = 4;
def VkShaderFloatControlsIndependence = distinct inline int;
 const VkShaderFloatControlsIndependence VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0;
const VkShaderFloatControlsIndependence VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1;
const VkShaderFloatControlsIndependence VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2;
def VkPipelineExecutableStatisticFormatKHR = distinct inline int;
 const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3;
def VkLineRasterizationModeEXT = distinct inline int;
 const VkLineRasterizationModeEXT VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT = 0;
const VkLineRasterizationModeEXT VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT = 1;
const VkLineRasterizationModeEXT VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT = 2;
const VkLineRasterizationModeEXT VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT = 3;
def VkShaderModuleCreateFlagBits = int;
def VkPipelineCompilerControlFlagBitsAMD = int;
def VkFaultLevel = distinct inline int;
 const VkFaultLevel VK_FAULT_LEVEL_UNASSIGNED = 0;
const VkFaultLevel VK_FAULT_LEVEL_CRITICAL = 1;
const VkFaultLevel VK_FAULT_LEVEL_RECOVERABLE = 2;
const VkFaultLevel VK_FAULT_LEVEL_WARNING = 3;
def VkFaultType = distinct inline int;
 const VkFaultType VK_FAULT_TYPE_INVALID = 0;
const VkFaultType VK_FAULT_TYPE_UNASSIGNED = 1;
const VkFaultType VK_FAULT_TYPE_IMPLEMENTATION = 2;
const VkFaultType VK_FAULT_TYPE_SYSTEM = 3;
const VkFaultType VK_FAULT_TYPE_PHYSICAL_DEVICE = 4;
const VkFaultType VK_FAULT_TYPE_COMMAND_BUFFER_FULL = 5;
const VkFaultType VK_FAULT_TYPE_INVALID_API_USAGE = 6;
def VkFaultQueryBehavior = distinct inline int;
 const VkFaultQueryBehavior VK_FAULT_QUERY_BEHAVIOR_GET_AND_CLEAR_ALL_FAULTS = 0;
def VkToolPurposeFlagBits = int;
def VkPipelineMatchControl = distinct inline int;
 const VkPipelineMatchControl VK_PIPELINE_MATCH_CONTROL_APPLICATION_UUID_EXACT_MATCH = 0;
def VkFragmentShadingRateCombinerOpKHR = distinct inline int;
 const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR = 0;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR = 1;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR = 2;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR = 3;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR = 4;
def VkFragmentShadingRateNV = distinct inline int;
 const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV = 0;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV = 1;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV = 4;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV = 5;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV = 6;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV = 9;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV = 10;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV = 11;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV = 12;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV = 13;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV = 14;
const VkFragmentShadingRateNV VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV = 15;
def VkFragmentShadingRateTypeNV = distinct inline int;
 const VkFragmentShadingRateTypeNV VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV = 0;
const VkFragmentShadingRateTypeNV VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV = 1;
def VkSubpassMergeStatusEXT = distinct inline int;
 const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_MERGED_EXT = 0;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT = 1;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT = 2;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT = 3;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT = 4;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT = 5;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT = 6;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT = 7;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT = 8;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT = 9;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT = 10;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT = 11;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT = 12;
const VkSubpassMergeStatusEXT VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT = 13;
def VkAccessFlagBits2 = int;
def VkPipelineStageFlagBits2 = int;
def VkSubmitFlagBits = int;
def VkEventCreateFlagBits = int;
def VkPipelineLayoutCreateFlagBits = int;
def VkSciSyncClientTypeNV = distinct inline int;
 const VkSciSyncClientTypeNV VK_SCI_SYNC_CLIENT_TYPE_SIGNALER_NV = 0;
const VkSciSyncClientTypeNV VK_SCI_SYNC_CLIENT_TYPE_WAITER_NV = 1;
const VkSciSyncClientTypeNV VK_SCI_SYNC_CLIENT_TYPE_SIGNALER_WAITER_NV = 2;
def VkSciSyncPrimitiveTypeNV = distinct inline int;
 const VkSciSyncPrimitiveTypeNV VK_SCI_SYNC_PRIMITIVE_TYPE_FENCE_NV = 0;
const VkSciSyncPrimitiveTypeNV VK_SCI_SYNC_PRIMITIVE_TYPE_SEMAPHORE_NV = 1;
def VkProvokingVertexModeEXT = distinct inline int;
 const VkProvokingVertexModeEXT VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT = 0;
const VkProvokingVertexModeEXT VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT = 1;
def VkPipelineCacheValidationVersion = distinct inline int;
 const VkPipelineCacheValidationVersion VK_PIPELINE_CACHE_VALIDATION_VERSION_SAFETY_CRITICAL_ONE = 1;
def VkAccelerationStructureMotionInstanceTypeNV = distinct inline int;
 const VkAccelerationStructureMotionInstanceTypeNV VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV = 0;
const VkAccelerationStructureMotionInstanceTypeNV VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV = 1;
const VkAccelerationStructureMotionInstanceTypeNV VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV = 2;
def VkPipelineColorBlendStateCreateFlagBits = int;
def VkPipelineDepthStencilStateCreateFlagBits = int;
def VkGraphicsPipelineLibraryFlagBitsEXT = int;
def VkDeviceAddressBindingFlagBitsEXT = int;
def VkDeviceAddressBindingTypeEXT = distinct inline int;
 const VkDeviceAddressBindingTypeEXT VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT = 0;
const VkDeviceAddressBindingTypeEXT VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT = 1;
def VkPresentScalingFlagBitsEXT = int;
def VkPresentGravityFlagBitsEXT = int;
def VkVideoCodecOperationFlagBitsKHR = int;
def VkVideoChromaSubsamplingFlagBitsKHR = int;
def VkVideoComponentBitDepthFlagBitsKHR = int;
def VkVideoCapabilityFlagBitsKHR = int;
def VkVideoSessionCreateFlagBitsKHR = int;
def VkVideoDecodeH264PictureLayoutFlagBitsKHR = int;
def VkVideoCodingControlFlagBitsKHR = int;
def VkQueryResultStatusKHR = distinct inline int;
 const VkQueryResultStatusKHR VK_QUERY_RESULT_STATUS_ERROR_KHR = -1;
const VkQueryResultStatusKHR VK_QUERY_RESULT_STATUS_NOT_READY_KHR = 0;
const VkQueryResultStatusKHR VK_QUERY_RESULT_STATUS_COMPLETE_KHR = 1;
def VkVideoDecodeUsageFlagBitsKHR = int;
def VkVideoDecodeCapabilityFlagBitsKHR = int;
def VkVideoEncodeUsageFlagBitsKHR = int;
def VkVideoEncodeContentFlagBitsKHR = int;
def VkVideoEncodeTuningModeKHR = distinct inline int;
 const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR = 0;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR = 1;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR = 2;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR = 3;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR = 4;
def VkVideoEncodeCapabilityFlagBitsKHR = int;
def VkVideoEncodeFeedbackFlagBitsKHR = int;
def VkVideoEncodeRateControlModeFlagBitsKHR = int;
def VkVideoEncodeH264CapabilityFlagBitsEXT = int;
def VkVideoEncodeH264StdFlagBitsEXT = int;
def VkVideoEncodeH264RateControlFlagBitsEXT = int;
def VkImageFormatConstraintsFlagBitsFUCHSIA = int;
def VkImageConstraintsInfoFlagBitsFUCHSIA = int;
def VkFormatFeatureFlagBits2 = int;
def VkRenderingFlagBits = int;
def VkVideoEncodeH265CapabilityFlagBitsEXT = int;
def VkVideoEncodeH265StdFlagBitsEXT = int;
def VkVideoEncodeH265RateControlFlagBitsEXT = int;
def VkVideoEncodeH265CtbSizeFlagBitsEXT = int;
def VkVideoEncodeH265TransformBlockSizeFlagBitsEXT = int;
def VkExportMetalObjectTypeFlagBitsEXT = int;
def VkInstanceCreateFlagBits = int;
def VkImageCompressionFlagBitsEXT = int;
def VkImageCompressionFixedRateFlagBitsEXT = int;
def VkPipelineRobustnessBufferBehaviorEXT = distinct inline int;
 const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT = 1;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT = 2;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT = 3;
def VkPipelineRobustnessImageBehaviorEXT = distinct inline int;
 const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT = 1;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT = 2;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT = 3;
def VkOpticalFlowGridSizeFlagBitsNV = int;
def VkOpticalFlowUsageFlagBitsNV = int;
def VkOpticalFlowPerformanceLevelNV = distinct inline int;
 const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV = 0;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV = 1;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV = 2;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV = 3;
def VkOpticalFlowSessionBindingPointNV = distinct inline int;
 const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV = 0;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV = 1;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV = 2;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV = 3;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV = 4;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV = 5;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV = 6;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV = 7;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV = 8;
def VkOpticalFlowSessionCreateFlagBitsNV = int;
def VkOpticalFlowExecuteFlagBitsNV = int;
def VkMicromapTypeEXT = distinct inline int;
 const VkMicromapTypeEXT VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT = 0;
def VkBuildMicromapFlagBitsEXT = int;
def VkMicromapCreateFlagBitsEXT = int;
def VkCopyMicromapModeEXT = distinct inline int;
 const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_CLONE_EXT = 0;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_SERIALIZE_EXT = 1;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT = 2;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_COMPACT_EXT = 3;
def VkBuildMicromapModeEXT = distinct inline int;
 const VkBuildMicromapModeEXT VK_BUILD_MICROMAP_MODE_BUILD_EXT = 0;
def VkOpacityMicromapFormatEXT = distinct inline int;
 const VkOpacityMicromapFormatEXT VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT = 1;
const VkOpacityMicromapFormatEXT VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT = 2;
def VkOpacityMicromapSpecialIndexEXT = distinct inline int;
 const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT = -1;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT = -2;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT = -3;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT = -4;
def VkDepthBiasRepresentationEXT = distinct inline int;
 const VkDepthBiasRepresentationEXT VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORMAT_EXT = 0;
const VkDepthBiasRepresentationEXT VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORCE_UNORM_EXT = 1;
const VkDepthBiasRepresentationEXT VK_DEPTH_BIAS_REPRESENTATION_FLOAT_EXT = 2;
def VkDeviceFaultAddressTypeEXT = distinct inline int;
 const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT = 0;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT = 1;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT = 2;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT = 3;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT = 4;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT = 5;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT = 6;
def VkDeviceFaultVendorBinaryHeaderVersionEXT = distinct inline int;
 const VkDeviceFaultVendorBinaryHeaderVersionEXT VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT = 1;
def VkDisplacementMicromapFormatNV = distinct inline int;
 const VkDisplacementMicromapFormatNV VK_DISPLACEMENT_MICROMAP_FORMAT_64_TRIANGLES_64_BYTES_NV = 1;
const VkDisplacementMicromapFormatNV VK_DISPLACEMENT_MICROMAP_FORMAT_256_TRIANGLES_128_BYTES_NV = 2;
const VkDisplacementMicromapFormatNV VK_DISPLACEMENT_MICROMAP_FORMAT_1024_TRIANGLES_128_BYTES_NV = 3;
def VkShaderCreateFlagBitsEXT = int;
def VkShaderCodeTypeEXT = distinct inline int;
 const VkShaderCodeTypeEXT VK_SHADER_CODE_TYPE_BINARY_EXT = 0;
const VkShaderCodeTypeEXT VK_SHADER_CODE_TYPE_SPIRV_EXT = 1;
def VkScopeKHR = distinct inline int;
 const VkScopeKHR VK_SCOPE_DEVICE_KHR = 1;
const VkScopeKHR VK_SCOPE_WORKGROUP_KHR = 2;
const VkScopeKHR VK_SCOPE_SUBGROUP_KHR = 3;
const VkScopeKHR VK_SCOPE_QUEUE_FAMILY_KHR = 5;
def VkComponentTypeKHR = distinct inline int;
 const VkComponentTypeKHR VK_COMPONENT_TYPE_FLOAT16_KHR = 0;
const VkComponentTypeKHR VK_COMPONENT_TYPE_FLOAT32_KHR = 1;
const VkComponentTypeKHR VK_COMPONENT_TYPE_FLOAT64_KHR = 2;
const VkComponentTypeKHR VK_COMPONENT_TYPE_SINT8_KHR = 3;
const VkComponentTypeKHR VK_COMPONENT_TYPE_SINT16_KHR = 4;
const VkComponentTypeKHR VK_COMPONENT_TYPE_SINT32_KHR = 5;
const VkComponentTypeKHR VK_COMPONENT_TYPE_SINT64_KHR = 6;
const VkComponentTypeKHR VK_COMPONENT_TYPE_UINT8_KHR = 7;
const VkComponentTypeKHR VK_COMPONENT_TYPE_UINT16_KHR = 8;
const VkComponentTypeKHR VK_COMPONENT_TYPE_UINT32_KHR = 9;
const VkComponentTypeKHR VK_COMPONENT_TYPE_UINT64_KHR = 10;

