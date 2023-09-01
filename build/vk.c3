module vk; 
// Platform types 
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
def Hmonitor = void*;
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
def Iosurfaceref = void*;
def Mtlbufferid = void*;
def Mtlcommandqueueid = void*;
def Mtldeviceid = void*;
def Mtlsharedeventid = void*;
def Mtltextureid = void*;
fault VkErrors {
  SUCCESS,
 NOT_READY,
 TIMEOUT,
 EVENT_SET,
 EVENT_RESET,
 INCOMPLETE,
 ERROR_OUT_OF_HOST_MEMORY,
 ERROR_OUT_OF_DEVICE_MEMORY,
 ERROR_INITIALIZATION_FAILED,
 ERROR_DEVICE_LOST,
 ERROR_MEMORY_MAP_FAILED,
 ERROR_LAYER_NOT_PRESENT,
 ERROR_EXTENSION_NOT_PRESENT,
 ERROR_FEATURE_NOT_PRESENT,
 ERROR_INCOMPATIBLE_DRIVER,
 ERROR_TOO_MANY_OBJECTS,
 ERROR_FORMAT_NOT_SUPPORTED,
 ERROR_FRAGMENTED_POOL,
 ERROR_UNKNOWN,
 ERROR_OUT_OF_POOL_MEMORY,
 ERROR_INVALID_EXTERNAL_HANDLE,
 ERROR_FRAGMENTATION,
 ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS,
 PIPELINE_COMPILE_REQUIRED,
 ERROR_SURFACE_LOST_KHR,
 ERROR_NATIVE_WINDOW_IN_USE_KHR,
 SUBOPTIMAL_KHR,
 ERROR_OUT_OF_DATE_KHR,
 ERROR_VALIDATION_FAILED_EXT
}
 def FormatFeatureFlags = Flags;
def ImageCreateFlags = Flags;
def ImageUsageFlags = Flags;
def InstanceCreateFlags = Flags;
def MemoryHeapFlags = Flags;
def MemoryPropertyFlags = Flags;
def QueueFlags = Flags;
def SampleCountFlags = Flags;
def DeviceCreateFlags = Flags;
def DeviceQueueCreateFlags = Flags;
def PipelineStageFlags = Flags;
def MemoryMapFlags = Flags;
def ImageAspectFlags = Flags;
def SparseImageFormatFlags = Flags;
def SparseMemoryBindFlags = Flags;
def FenceCreateFlags = Flags;
def SemaphoreCreateFlags = Flags;
def EventCreateFlags = Flags;
def QueryPipelineStatisticFlags = Flags;
def QueryPoolCreateFlags = Flags;
def QueryResultFlags = Flags;
def BufferCreateFlags = Flags;
def BufferUsageFlags = Flags;
def BufferViewCreateFlags = Flags;
def ImageViewCreateFlags = Flags;
def ShaderModuleCreateFlags = Flags;
def PipelineCacheCreateFlags = Flags;
def ColorComponentFlags = Flags;
def CullModeFlags = Flags;
def PipelineColorBlendStateCreateFlags = Flags;
def PipelineCreateFlags = Flags;
def PipelineDepthStencilStateCreateFlags = Flags;
def PipelineDynamicStateCreateFlags = Flags;
def PipelineInputAssemblyStateCreateFlags = Flags;
def PipelineLayoutCreateFlags = Flags;
def PipelineMultisampleStateCreateFlags = Flags;
def PipelineRasterizationStateCreateFlags = Flags;
def PipelineShaderStageCreateFlags = Flags;
def PipelineTessellationStateCreateFlags = Flags;
def PipelineVertexInputStateCreateFlags = Flags;
def PipelineViewportStateCreateFlags = Flags;
def ShaderStageFlags = Flags;
def SamplerCreateFlags = Flags;
def DescriptorPoolCreateFlags = Flags;
def DescriptorPoolResetFlags = Flags;
def DescriptorSetLayoutCreateFlags = Flags;
def AccessFlags = Flags;
def AttachmentDescriptionFlags = Flags;
def DependencyFlags = Flags;
def FramebufferCreateFlags = Flags;
def RenderPassCreateFlags = Flags;
def SubpassDescriptionFlags = Flags;
def CommandPoolCreateFlags = Flags;
def CommandPoolResetFlags = Flags;
def CommandBufferResetFlags = Flags;
def CommandBufferUsageFlags = Flags;
def QueryControlFlags = Flags;
def StencilFaceFlags = Flags;
def SubgroupFeatureFlags = Flags;
def PeerMemoryFeatureFlags = Flags;
def MemoryAllocateFlags = Flags;
def CommandPoolTrimFlags = Flags;
def DescriptorUpdateTemplateCreateFlags = Flags;
def ExternalMemoryHandleTypeFlags = Flags;
def ExternalMemoryFeatureFlags = Flags;
def ExternalFenceHandleTypeFlags = Flags;
def ExternalFenceFeatureFlags = Flags;
def FenceImportFlags = Flags;
def SemaphoreImportFlags = Flags;
def ExternalSemaphoreHandleTypeFlags = Flags;
def ExternalSemaphoreFeatureFlags = Flags;
def DescriptorBindingFlags = Flags;
def ResolveModeFlags = Flags;
def SemaphoreWaitFlags = Flags;
def PipelineCreationFeedbackFlags = Flags;
def ToolPurposeFlags = Flags;
def PrivateDataSlotCreateFlags = Flags;
def PipelineStageFlags2 = Flags64;
def AccessFlags2 = Flags64;
def SubmitFlags = Flags;
def RenderingFlags = Flags;
def FormatFeatureFlags2 = Flags64;
def CompositeAlphaFlagsKHR = Flags;
def XcbSurfaceCreateFlagsKHR = Flags;
def SwapchainCreateFlagsKHR = Flags;
def DeviceGroupPresentModeFlagsKHR = Flags;
def DisplayModeCreateFlagsKHR = Flags;
def DisplayPlaneAlphaFlagsKHR = Flags;
def DisplaySurfaceCreateFlagsKHR = Flags;
def SurfaceTransformFlagsKHR = Flags;
def DebugReportFlagsEXT = Flags;
def DebugUtilsMessageSeverityFlagsEXT = Flags;
def DebugUtilsMessageTypeFlagsEXT = Flags;
def DebugUtilsMessengerCallbackDataFlagsEXT = Flags;
def DebugUtilsMessengerCreateFlagsEXT = Flags;
def Instance = distinct inline void*;
def PhysicalDevice = distinct inline void*;
def Device = distinct inline void*;
def Queue = distinct inline void*;
def DeviceMemory = distinct inline void*;
def Fence = distinct inline void*;
def Semaphore = distinct inline void*;
def Event = distinct inline void*;
def QueryPool = distinct inline void*;
def Buffer = distinct inline void*;
def BufferView = distinct inline void*;
def Image = distinct inline void*;
def ImageView = distinct inline void*;
def ShaderModule = distinct inline void*;
def PipelineCache = distinct inline void*;
def Pipeline = distinct inline void*;
def PipelineLayout = distinct inline void*;
def Sampler = distinct inline void*;
def DescriptorPool = distinct inline void*;
def DescriptorSet = distinct inline void*;
def DescriptorSetLayout = distinct inline void*;
def Framebuffer = distinct inline void*;
def RenderPass = distinct inline void*;
def CommandPool = distinct inline void*;
def CommandBuffer = distinct inline void*;
def SamplerYcbcrConversion = distinct inline void*;
def DescriptorUpdateTemplate = distinct inline void*;
def PrivateDataSlot = distinct inline void*;
def SurfaceKHR = distinct inline void*;
def SwapchainKHR = distinct inline void*;
def DisplayKHR = distinct inline void*;
def DisplayModeKHR = distinct inline void*;
def DebugReportCallbackEXT = distinct inline void*;
def DebugUtilsMessengerEXT = distinct inline void*;
def Bool32 = uint;
def DeviceAddress = ulong;
def DeviceSize = ulong;
def Flags = uint;
def SampleMask = uint;
def Flags64 = ulong;
const uint ATTACHMENT_UNUSED = (~0U);
const uint FALSE = 0;
const float LOD_CLAMP_NONE = 1000.0F;
const uint QUEUE_FAMILY_IGNORED = (~0U);
const uint REMAINING_ARRAY_LAYERS = (~0U);
const uint REMAINING_MIP_LEVELS = (~0U);
const uint SUBPASS_EXTERNAL = (~0U);
const uint TRUE = 1;
const ulong WHOLE_SIZE = (~0UL);
const uint MAX_MEMORY_TYPES = 32;
const uint MAX_PHYSICAL_DEVICE_NAME_SIZE = 256;
const uint UUID_SIZE = 16;
const uint MAX_EXTENSION_NAME_SIZE = 256;
const uint MAX_DESCRIPTION_SIZE = 256;
const uint MAX_MEMORY_HEAPS = 16;
const uint MAX_DEVICE_GROUP_SIZE = 32;
const uint LUID_SIZE = 8;
const uint QUEUE_FAMILY_EXTERNAL = (~1U);
const uint MAX_DRIVER_NAME_SIZE = 256;
const uint MAX_DRIVER_INFO_SIZE = 256;
const uint KHR_SURFACE_SPEC_VERSION = 25;
const String KHR_SURFACE_EXTENSION_NAME = "VK_KHR_surface";
const uint KHR_XCB_SURFACE_SPEC_VERSION = 6;
const String KHR_XCB_SURFACE_EXTENSION_NAME = "VK_KHR_xcb_surface";
const uint KHR_SWAPCHAIN_SPEC_VERSION = 70;
const String KHR_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_swapchain";
const uint KHR_DISPLAY_SPEC_VERSION = 23;
const String KHR_DISPLAY_EXTENSION_NAME = "VK_KHR_display";
const uint KHR_PORTABILITY_ENUMERATION_SPEC_VERSION = 1;
const String KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME = "VK_KHR_portability_enumeration";
const uint KHR_PUSH_DESCRIPTOR_SPEC_VERSION = 2;
const String KHR_PUSH_DESCRIPTOR_EXTENSION_NAME = "VK_KHR_push_descriptor";
const uint EXT_DEBUG_REPORT_SPEC_VERSION = 10;
const String EXT_DEBUG_REPORT_EXTENSION_NAME = "VK_EXT_debug_report";
const uint EXT_DEBUG_UTILS_SPEC_VERSION = 2;
const String EXT_DEBUG_UTILS_EXTENSION_NAME = "VK_EXT_debug_utils";
const uint EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION = 4;
const String EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME = "VK_EXT_swapchain_colorspace";
const uint KHR_PORTABILITY_SUBSET_SPEC_VERSION = 1;
const String KHR_PORTABILITY_SUBSET_EXTENSION_NAME = "VK_KHR_portability_subset";
union ClearColorValue {
  float[4] float32;
  int[4] int32;
  uint[4] uint32;
}
union ClearValue {
  ClearColorValue color;
  ClearDepthStencilValue depthStencil;
}
struct Extent2D {
 uint width;
 uint height;
}
struct Extent3D {
 uint width;
 uint height;
 uint depth;
}
struct Offset2D {
 int x;
 int y;
}
struct Offset3D {
 int x;
 int y;
 int z;
}
struct Rect2D {
 Offset2D offset;
 Extent2D extent;
}
struct BufferMemoryBarrier {
 StructureType sType;
 void* pNext;
 AccessFlags srcAccessMask;
 AccessFlags dstAccessMask;
 uint srcQueueFamilyIndex;
 uint dstQueueFamilyIndex;
 Buffer buffer;
 DeviceSize offset;
 DeviceSize size;
}
struct DispatchIndirectCommand {
 uint x;
 uint y;
 uint z;
}
struct DrawIndexedIndirectCommand {
 uint indexCount;
 uint instanceCount;
 uint firstIndex;
 int vertexOffset;
 uint firstInstance;
}
struct DrawIndirectCommand {
 uint vertexCount;
 uint instanceCount;
 uint firstVertex;
 uint firstInstance;
}
struct ImageMemoryBarrier {
 StructureType sType;
 void* pNext;
 AccessFlags srcAccessMask;
 AccessFlags dstAccessMask;
 ImageLayout oldLayout;
 ImageLayout newLayout;
 uint srcQueueFamilyIndex;
 uint dstQueueFamilyIndex;
 Image image;
 ImageSubresourceRange subresourceRange;
}
struct MemoryBarrier {
 StructureType sType;
 void* pNext;
 AccessFlags srcAccessMask;
 AccessFlags dstAccessMask;
}
struct PipelineCacheHeaderVersionOne {
 uint headerSize;
 PipelineCacheHeaderVersion headerVersion;
 uint vendorID;
 uint deviceID;
 uint[UUID_SIZE] pipelineCacheUUID;
}
struct AllocationCallbacks {
 void* pUserData;
 PFN_vkAllocationFunction pfnAllocation;
 PFN_vkReallocationFunction pfnReallocation;
 PFN_vkFreeFunction pfnFree;
 PFN_vkInternalAllocationNotification pfnInternalAllocation;
 PFN_vkInternalFreeNotification pfnInternalFree;
}
struct ApplicationInfo {
 StructureType sType;
 void* pNext;
 char* pApplicationName;
 uint applicationVersion;
 char* pEngineName;
 uint engineVersion;
 uint apiVersion;
}
struct FormatProperties {
 FormatFeatureFlags linearTilingFeatures;
 FormatFeatureFlags optimalTilingFeatures;
 FormatFeatureFlags bufferFeatures;
}
struct ImageFormatProperties {
 Extent3D maxExtent;
 uint maxMipLevels;
 uint maxArrayLayers;
 SampleCountFlags sampleCounts;
 DeviceSize maxResourceSize;
}
struct InstanceCreateInfo {
 StructureType sType;
 void* pNext;
 InstanceCreateFlags flags;
 ApplicationInfo* pApplicationInfo;
 uint enabledLayerCount;
 char* ppEnabledLayerNames;
 uint enabledExtensionCount;
 char* ppEnabledExtensionNames;
}
struct MemoryHeap {
 DeviceSize size;
 MemoryHeapFlags flags;
}
struct MemoryType {
 MemoryPropertyFlags propertyFlags;
 uint heapIndex;
}
struct PhysicalDeviceFeatures {
 Bool32 robustBufferAccess;
 Bool32 fullDrawIndexUint32;
 Bool32 imageCubeArray;
 Bool32 independentBlend;
 Bool32 geometryShader;
 Bool32 tessellationShader;
 Bool32 sampleRateShading;
 Bool32 dualSrcBlend;
 Bool32 logicOp;
 Bool32 multiDrawIndirect;
 Bool32 drawIndirectFirstInstance;
 Bool32 depthClamp;
 Bool32 depthBiasClamp;
 Bool32 fillModeNonSolid;
 Bool32 depthBounds;
 Bool32 wideLines;
 Bool32 largePoints;
 Bool32 alphaToOne;
 Bool32 multiViewport;
 Bool32 samplerAnisotropy;
 Bool32 textureCompressionETC2;
 Bool32 textureCompressionASTC_LDR;
 Bool32 textureCompressionBC;
 Bool32 occlusionQueryPrecise;
 Bool32 pipelineStatisticsQuery;
 Bool32 vertexPipelineStoresAndAtomics;
 Bool32 fragmentStoresAndAtomics;
 Bool32 shaderTessellationAndGeometryPointSize;
 Bool32 shaderImageGatherExtended;
 Bool32 shaderStorageImageExtendedFormats;
 Bool32 shaderStorageImageMultisample;
 Bool32 shaderStorageImageReadWithoutFormat;
 Bool32 shaderStorageImageWriteWithoutFormat;
 Bool32 shaderUniformBufferArrayDynamicIndexing;
 Bool32 shaderSampledImageArrayDynamicIndexing;
 Bool32 shaderStorageBufferArrayDynamicIndexing;
 Bool32 shaderStorageImageArrayDynamicIndexing;
 Bool32 shaderClipDistance;
 Bool32 shaderCullDistance;
 Bool32 shaderFloat64;
 Bool32 shaderInt64;
 Bool32 shaderInt16;
 Bool32 shaderResourceResidency;
 Bool32 shaderResourceMinLod;
 Bool32 sparseBinding;
 Bool32 sparseResidencyBuffer;
 Bool32 sparseResidencyImage2D;
 Bool32 sparseResidencyImage3D;
 Bool32 sparseResidency2Samples;
 Bool32 sparseResidency4Samples;
 Bool32 sparseResidency8Samples;
 Bool32 sparseResidency16Samples;
 Bool32 sparseResidencyAliased;
 Bool32 variableMultisampleRate;
 Bool32 inheritedQueries;
}
struct PhysicalDeviceLimits {
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
 DeviceSize bufferImageGranularity;
 DeviceSize sparseAddressSpaceSize;
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
 uint[3] maxComputeWorkGroupCount;
 uint maxComputeWorkGroupInvocations;
 uint[3] maxComputeWorkGroupSize;
 uint subPixelPrecisionBits;
 uint subTexelPrecisionBits;
 uint mipmapPrecisionBits;
 uint maxDrawIndexedIndexValue;
 uint maxDrawIndirectCount;
 float maxSamplerLodBias;
 float maxSamplerAnisotropy;
 uint maxViewports;
 uint[2] maxViewportDimensions;
 float[2] viewportBoundsRange;
 uint viewportSubPixelBits;
 usz minMemoryMapAlignment;
 DeviceSize minTexelBufferOffsetAlignment;
 DeviceSize minUniformBufferOffsetAlignment;
 DeviceSize minStorageBufferOffsetAlignment;
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
 SampleCountFlags framebufferColorSampleCounts;
 SampleCountFlags framebufferDepthSampleCounts;
 SampleCountFlags framebufferStencilSampleCounts;
 SampleCountFlags framebufferNoAttachmentsSampleCounts;
 uint maxColorAttachments;
 SampleCountFlags sampledImageColorSampleCounts;
 SampleCountFlags sampledImageIntegerSampleCounts;
 SampleCountFlags sampledImageDepthSampleCounts;
 SampleCountFlags sampledImageStencilSampleCounts;
 SampleCountFlags storageImageSampleCounts;
 uint maxSampleMaskWords;
 Bool32 timestampComputeAndGraphics;
 float timestampPeriod;
 uint maxClipDistances;
 uint maxCullDistances;
 uint maxCombinedClipAndCullDistances;
 uint discreteQueuePriorities;
 float[2] pointSizeRange;
 float[2] lineWidthRange;
 float pointSizeGranularity;
 float lineWidthGranularity;
 Bool32 strictLines;
 Bool32 standardSampleLocations;
 DeviceSize optimalBufferCopyOffsetAlignment;
 DeviceSize optimalBufferCopyRowPitchAlignment;
 DeviceSize nonCoherentAtomSize;
}
struct PhysicalDeviceMemoryProperties {
 uint memoryTypeCount;
 MemoryType[MAX_MEMORY_TYPES] memoryTypes;
 uint memoryHeapCount;
 MemoryHeap[MAX_MEMORY_HEAPS] memoryHeaps;
}
struct PhysicalDeviceProperties {
 uint apiVersion;
 uint driverVersion;
 uint vendorID;
 uint deviceID;
 PhysicalDeviceType deviceType;
 char[MAX_PHYSICAL_DEVICE_NAME_SIZE] deviceName;
 uint[UUID_SIZE] pipelineCacheUUID;
 PhysicalDeviceLimits limits;
 PhysicalDeviceSparseProperties sparseProperties;
}
struct PhysicalDeviceSparseProperties {
 Bool32 residencyStandard2DBlockShape;
 Bool32 residencyStandard2DMultisampleBlockShape;
 Bool32 residencyStandard3DBlockShape;
 Bool32 residencyAlignedMipSize;
 Bool32 residencyNonResidentStrict;
}
struct QueueFamilyProperties {
 QueueFlags queueFlags;
 uint queueCount;
 uint timestampValidBits;
 Extent3D minImageTransferGranularity;
}
struct DeviceCreateInfo {
 StructureType sType;
 void* pNext;
 DeviceCreateFlags flags;
 uint queueCreateInfoCount;
 DeviceQueueCreateInfo* pQueueCreateInfos;
 uint enabledLayerCount;
 char* ppEnabledLayerNames;
 uint enabledExtensionCount;
 char* ppEnabledExtensionNames;
 PhysicalDeviceFeatures* pEnabledFeatures;
}
struct DeviceQueueCreateInfo {
 StructureType sType;
 void* pNext;
 DeviceQueueCreateFlags flags;
 uint queueFamilyIndex;
 uint queueCount;
 float* pQueuePriorities;
}
struct ExtensionProperties {
 char[MAX_EXTENSION_NAME_SIZE] extensionName;
 uint specVersion;
}
struct LayerProperties {
 char[MAX_EXTENSION_NAME_SIZE] layerName;
 uint specVersion;
 uint implementationVersion;
 char[MAX_DESCRIPTION_SIZE] description;
}
struct SubmitInfo {
 StructureType sType;
 void* pNext;
 uint waitSemaphoreCount;
 Semaphore* pWaitSemaphores;
 PipelineStageFlags* pWaitDstStageMask;
 uint commandBufferCount;
 CommandBuffer* pCommandBuffers;
 uint signalSemaphoreCount;
 Semaphore* pSignalSemaphores;
}
struct MappedMemoryRange {
 StructureType sType;
 void* pNext;
 DeviceMemory memory;
 DeviceSize offset;
 DeviceSize size;
}
struct MemoryAllocateInfo {
 StructureType sType;
 void* pNext;
 DeviceSize allocationSize;
 uint memoryTypeIndex;
}
struct MemoryRequirements {
 DeviceSize size;
 DeviceSize alignment;
 uint memoryTypeBits;
}
struct BindSparseInfo {
 StructureType sType;
 void* pNext;
 uint waitSemaphoreCount;
 Semaphore* pWaitSemaphores;
 uint bufferBindCount;
 SparseBufferMemoryBindInfo* pBufferBinds;
 uint imageOpaqueBindCount;
 SparseImageOpaqueMemoryBindInfo* pImageOpaqueBinds;
 uint imageBindCount;
 SparseImageMemoryBindInfo* pImageBinds;
 uint signalSemaphoreCount;
 Semaphore* pSignalSemaphores;
}
struct ImageSubresource {
 ImageAspectFlags aspectMask;
 uint mipLevel;
 uint arrayLayer;
}
struct SparseBufferMemoryBindInfo {
 Buffer buffer;
 uint bindCount;
 SparseMemoryBind* pBinds;
}
struct SparseImageFormatProperties {
 ImageAspectFlags aspectMask;
 Extent3D imageGranularity;
 SparseImageFormatFlags flags;
}
struct SparseImageMemoryBind {
 ImageSubresource subresource;
 Offset3D offset;
 Extent3D extent;
 DeviceMemory memory;
 DeviceSize memoryOffset;
 SparseMemoryBindFlags flags;
}
struct SparseImageMemoryBindInfo {
 Image image;
 uint bindCount;
 SparseImageMemoryBind* pBinds;
}
struct SparseImageMemoryRequirements {
 SparseImageFormatProperties formatProperties;
 uint imageMipTailFirstLod;
 DeviceSize imageMipTailSize;
 DeviceSize imageMipTailOffset;
 DeviceSize imageMipTailStride;
}
struct SparseImageOpaqueMemoryBindInfo {
 Image image;
 uint bindCount;
 SparseMemoryBind* pBinds;
}
struct SparseMemoryBind {
 DeviceSize resourceOffset;
 DeviceSize size;
 DeviceMemory memory;
 DeviceSize memoryOffset;
 SparseMemoryBindFlags flags;
}
struct FenceCreateInfo {
 StructureType sType;
 void* pNext;
 FenceCreateFlags flags;
}
struct SemaphoreCreateInfo {
 StructureType sType;
 void* pNext;
 SemaphoreCreateFlags flags;
}
struct EventCreateInfo {
 StructureType sType;
 void* pNext;
 EventCreateFlags flags;
}
struct QueryPoolCreateInfo {
 StructureType sType;
 void* pNext;
 QueryPoolCreateFlags flags;
 QueryType queryType;
 uint queryCount;
 QueryPipelineStatisticFlags pipelineStatistics;
}
struct BufferCreateInfo {
 StructureType sType;
 void* pNext;
 BufferCreateFlags flags;
 DeviceSize size;
 BufferUsageFlags usage;
 SharingMode sharingMode;
 uint queueFamilyIndexCount;
 uint* pQueueFamilyIndices;
}
struct BufferViewCreateInfo {
 StructureType sType;
 void* pNext;
 BufferViewCreateFlags flags;
 Buffer buffer;
 Format format;
 DeviceSize offset;
 DeviceSize range;
}
struct ImageCreateInfo {
 StructureType sType;
 void* pNext;
 ImageCreateFlags flags;
 ImageType imageType;
 Format format;
 Extent3D extent;
 uint mipLevels;
 uint arrayLayers;
 SampleCountFlagBits samples;
 ImageTiling tiling;
 ImageUsageFlags usage;
 SharingMode sharingMode;
 uint queueFamilyIndexCount;
 uint* pQueueFamilyIndices;
 ImageLayout initialLayout;
}
struct SubresourceLayout {
 DeviceSize offset;
 DeviceSize size;
 DeviceSize rowPitch;
 DeviceSize arrayPitch;
 DeviceSize depthPitch;
}
struct ComponentMapping {
 ComponentSwizzle r;
 ComponentSwizzle g;
 ComponentSwizzle b;
 ComponentSwizzle a;
}
struct ImageSubresourceRange {
 ImageAspectFlags aspectMask;
 uint baseMipLevel;
 uint levelCount;
 uint baseArrayLayer;
 uint layerCount;
}
struct ImageViewCreateInfo {
 StructureType sType;
 void* pNext;
 ImageViewCreateFlags flags;
 Image image;
 ImageViewType viewType;
 Format format;
 ComponentMapping components;
 ImageSubresourceRange subresourceRange;
}
struct ShaderModuleCreateInfo {
 StructureType sType;
 void* pNext;
 ShaderModuleCreateFlags flags;
 usz codeSize;
 uint* pCode;
}
struct PipelineCacheCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineCacheCreateFlags flags;
 usz initialDataSize;
 void* pInitialData;
}
struct ComputePipelineCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineCreateFlags flags;
 PipelineShaderStageCreateInfo stage;
 PipelineLayout layout;
 Pipeline basePipelineHandle;
 int basePipelineIndex;
}
struct GraphicsPipelineCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineCreateFlags flags;
 uint stageCount;
 PipelineShaderStageCreateInfo* pStages;
 PipelineVertexInputStateCreateInfo* pVertexInputState;
 PipelineInputAssemblyStateCreateInfo* pInputAssemblyState;
 PipelineTessellationStateCreateInfo* pTessellationState;
 PipelineViewportStateCreateInfo* pViewportState;
 PipelineRasterizationStateCreateInfo* pRasterizationState;
 PipelineMultisampleStateCreateInfo* pMultisampleState;
 PipelineDepthStencilStateCreateInfo* pDepthStencilState;
 PipelineColorBlendStateCreateInfo* pColorBlendState;
 PipelineDynamicStateCreateInfo* pDynamicState;
 PipelineLayout layout;
 RenderPass renderPass;
 uint subpass;
 Pipeline basePipelineHandle;
 int basePipelineIndex;
}
struct PipelineColorBlendAttachmentState {
 Bool32 blendEnable;
 BlendFactor srcColorBlendFactor;
 BlendFactor dstColorBlendFactor;
 BlendOp colorBlendOp;
 BlendFactor srcAlphaBlendFactor;
 BlendFactor dstAlphaBlendFactor;
 BlendOp alphaBlendOp;
 ColorComponentFlags colorWriteMask;
}
struct PipelineColorBlendStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineColorBlendStateCreateFlags flags;
 Bool32 logicOpEnable;
 LogicOp logicOp;
 uint attachmentCount;
 PipelineColorBlendAttachmentState* pAttachments;
 float[4] blendConstants;
}
struct PipelineDepthStencilStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineDepthStencilStateCreateFlags flags;
 Bool32 depthTestEnable;
 Bool32 depthWriteEnable;
 CompareOp depthCompareOp;
 Bool32 depthBoundsTestEnable;
 Bool32 stencilTestEnable;
 StencilOpState front;
 StencilOpState back;
 float minDepthBounds;
 float maxDepthBounds;
}
struct PipelineDynamicStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineDynamicStateCreateFlags flags;
 uint dynamicStateCount;
 DynamicState* pDynamicStates;
}
struct PipelineInputAssemblyStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineInputAssemblyStateCreateFlags flags;
 PrimitiveTopology topology;
 Bool32 primitiveRestartEnable;
}
struct PipelineMultisampleStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineMultisampleStateCreateFlags flags;
 SampleCountFlagBits rasterizationSamples;
 Bool32 sampleShadingEnable;
 float minSampleShading;
 SampleMask* pSampleMask;
 Bool32 alphaToCoverageEnable;
 Bool32 alphaToOneEnable;
}
struct PipelineRasterizationStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineRasterizationStateCreateFlags flags;
 Bool32 depthClampEnable;
 Bool32 rasterizerDiscardEnable;
 PolygonMode polygonMode;
 CullModeFlags cullMode;
 FrontFace frontFace;
 Bool32 depthBiasEnable;
 float depthBiasConstantFactor;
 float depthBiasClamp;
 float depthBiasSlopeFactor;
 float lineWidth;
}
struct PipelineShaderStageCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineShaderStageCreateFlags flags;
 ShaderStageFlagBits stage;
 ShaderModule mod;
 char* pName;
 SpecializationInfo* pSpecializationInfo;
}
struct PipelineTessellationStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineTessellationStateCreateFlags flags;
 uint patchControlPoints;
}
struct PipelineVertexInputStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineVertexInputStateCreateFlags flags;
 uint vertexBindingDescriptionCount;
 VertexInputBindingDescription* pVertexBindingDescriptions;
 uint vertexAttributeDescriptionCount;
 VertexInputAttributeDescription* pVertexAttributeDescriptions;
}
struct PipelineViewportStateCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineViewportStateCreateFlags flags;
 uint viewportCount;
 Viewport* pViewports;
 uint scissorCount;
 Rect2D* pScissors;
}
struct SpecializationInfo {
 uint mapEntryCount;
 SpecializationMapEntry* pMapEntries;
 usz dataSize;
 void* pData;
}
struct SpecializationMapEntry {
 uint constantID;
 uint offset;
 usz size;
}
struct StencilOpState {
 StencilOp failOp;
 StencilOp passOp;
 StencilOp depthFailOp;
 CompareOp compareOp;
 uint compareMask;
 uint writeMask;
 uint reference;
}
struct VertexInputAttributeDescription {
 uint location;
 uint binding;
 Format format;
 uint offset;
}
struct VertexInputBindingDescription {
 uint binding;
 uint stride;
 VertexInputRate inputRate;
}
struct Viewport {
 float x;
 float y;
 float width;
 float height;
 float minDepth;
 float maxDepth;
}
struct PipelineLayoutCreateInfo {
 StructureType sType;
 void* pNext;
 PipelineLayoutCreateFlags flags;
 uint setLayoutCount;
 DescriptorSetLayout* pSetLayouts;
 uint pushConstantRangeCount;
 PushConstantRange* pPushConstantRanges;
}
struct PushConstantRange {
 ShaderStageFlags stageFlags;
 uint offset;
 uint size;
}
struct SamplerCreateInfo {
 StructureType sType;
 void* pNext;
 SamplerCreateFlags flags;
 Filter magFilter;
 Filter minFilter;
 SamplerMipmapMode mipmapMode;
 SamplerAddressMode addressModeU;
 SamplerAddressMode addressModeV;
 SamplerAddressMode addressModeW;
 float mipLodBias;
 Bool32 anisotropyEnable;
 float maxAnisotropy;
 Bool32 compareEnable;
 CompareOp compareOp;
 float minLod;
 float maxLod;
 BorderColor borderColor;
 Bool32 unnormalizedCoordinates;
}
struct CopyDescriptorSet {
 StructureType sType;
 void* pNext;
 DescriptorSet srcSet;
 uint srcBinding;
 uint srcArrayElement;
 DescriptorSet dstSet;
 uint dstBinding;
 uint dstArrayElement;
 uint descriptorCount;
}
struct DescriptorBufferInfo {
 Buffer buffer;
 DeviceSize offset;
 DeviceSize range;
}
struct DescriptorImageInfo {
 Sampler sampler;
 ImageView imageView;
 ImageLayout imageLayout;
}
struct DescriptorPoolCreateInfo {
 StructureType sType;
 void* pNext;
 DescriptorPoolCreateFlags flags;
 uint maxSets;
 uint poolSizeCount;
 DescriptorPoolSize* pPoolSizes;
}
struct DescriptorPoolSize {
 DescriptorType type;
 uint descriptorCount;
}
struct DescriptorSetAllocateInfo {
 StructureType sType;
 void* pNext;
 DescriptorPool descriptorPool;
 uint descriptorSetCount;
 DescriptorSetLayout* pSetLayouts;
}
struct DescriptorSetLayoutBinding {
 uint binding;
 DescriptorType descriptorType;
 uint descriptorCount;
 ShaderStageFlags stageFlags;
 Sampler* pImmutableSamplers;
}
struct DescriptorSetLayoutCreateInfo {
 StructureType sType;
 void* pNext;
 DescriptorSetLayoutCreateFlags flags;
 uint bindingCount;
 DescriptorSetLayoutBinding* pBindings;
}
struct WriteDescriptorSet {
 StructureType sType;
 void* pNext;
 DescriptorSet dstSet;
 uint dstBinding;
 uint dstArrayElement;
 uint descriptorCount;
 DescriptorType descriptorType;
 DescriptorImageInfo* pImageInfo;
 DescriptorBufferInfo* pBufferInfo;
 BufferView* pTexelBufferView;
}
struct AttachmentDescription {
 AttachmentDescriptionFlags flags;
 Format format;
 SampleCountFlagBits samples;
 AttachmentLoadOp loadOp;
 AttachmentStoreOp storeOp;
 AttachmentLoadOp stencilLoadOp;
 AttachmentStoreOp stencilStoreOp;
 ImageLayout initialLayout;
 ImageLayout finalLayout;
}
struct AttachmentReference {
 uint attachment;
 ImageLayout layout;
}
struct FramebufferCreateInfo {
 StructureType sType;
 void* pNext;
 FramebufferCreateFlags flags;
 RenderPass renderPass;
 uint attachmentCount;
 ImageView* pAttachments;
 uint width;
 uint height;
 uint layers;
}
struct RenderPassCreateInfo {
 StructureType sType;
 void* pNext;
 RenderPassCreateFlags flags;
 uint attachmentCount;
 AttachmentDescription* pAttachments;
 uint subpassCount;
 SubpassDescription* pSubpasses;
 uint dependencyCount;
 SubpassDependency* pDependencies;
}
struct SubpassDependency {
 uint srcSubpass;
 uint dstSubpass;
 PipelineStageFlags srcStageMask;
 PipelineStageFlags dstStageMask;
 AccessFlags srcAccessMask;
 AccessFlags dstAccessMask;
 DependencyFlags dependencyFlags;
}
struct SubpassDescription {
 SubpassDescriptionFlags flags;
 PipelineBindPoint pipelineBindPoint;
 uint inputAttachmentCount;
 AttachmentReference* pInputAttachments;
 uint colorAttachmentCount;
 AttachmentReference* pColorAttachments;
 AttachmentReference* pResolveAttachments;
 AttachmentReference* pDepthStencilAttachment;
 uint preserveAttachmentCount;
 uint* pPreserveAttachments;
}
struct CommandPoolCreateInfo {
 StructureType sType;
 void* pNext;
 CommandPoolCreateFlags flags;
 uint queueFamilyIndex;
}
struct CommandBufferAllocateInfo {
 StructureType sType;
 void* pNext;
 CommandPool commandPool;
 CommandBufferLevel level;
 uint commandBufferCount;
}
struct CommandBufferBeginInfo {
 StructureType sType;
 void* pNext;
 CommandBufferUsageFlags flags;
 CommandBufferInheritanceInfo* pInheritanceInfo;
}
struct CommandBufferInheritanceInfo {
 StructureType sType;
 void* pNext;
 RenderPass renderPass;
 uint subpass;
 Framebuffer framebuffer;
 Bool32 occlusionQueryEnable;
 QueryControlFlags queryFlags;
 QueryPipelineStatisticFlags pipelineStatistics;
}
struct BufferCopy {
 DeviceSize srcOffset;
 DeviceSize dstOffset;
 DeviceSize size;
}
struct BufferImageCopy {
 DeviceSize bufferOffset;
 uint bufferRowLength;
 uint bufferImageHeight;
 ImageSubresourceLayers imageSubresource;
 Offset3D imageOffset;
 Extent3D imageExtent;
}
struct ClearAttachment {
 ImageAspectFlags aspectMask;
 uint colorAttachment;
 ClearValue clearValue;
}
struct ClearDepthStencilValue {
 float depth;
 uint stencil;
}
struct ClearRect {
 Rect2D rect;
 uint baseArrayLayer;
 uint layerCount;
}
struct ImageBlit {
 ImageSubresourceLayers srcSubresource;
 Offset3D[2] srcOffsets;
 ImageSubresourceLayers dstSubresource;
 Offset3D[2] dstOffsets;
}
struct ImageCopy {
 ImageSubresourceLayers srcSubresource;
 Offset3D srcOffset;
 ImageSubresourceLayers dstSubresource;
 Offset3D dstOffset;
 Extent3D extent;
}
struct ImageResolve {
 ImageSubresourceLayers srcSubresource;
 Offset3D srcOffset;
 ImageSubresourceLayers dstSubresource;
 Offset3D dstOffset;
 Extent3D extent;
}
struct ImageSubresourceLayers {
 ImageAspectFlags aspectMask;
 uint mipLevel;
 uint baseArrayLayer;
 uint layerCount;
}
struct RenderPassBeginInfo {
 StructureType sType;
 void* pNext;
 RenderPass renderPass;
 Framebuffer framebuffer;
 Rect2D renderArea;
 uint clearValueCount;
 ClearValue* pClearValues;
}
struct PhysicalDeviceSubgroupProperties {
 StructureType sType;
 void* pNext;
 uint subgroupSize;
 ShaderStageFlags supportedStages;
 SubgroupFeatureFlags supportedOperations;
 Bool32 quadOperationsInAllStages;
}
struct BindBufferMemoryInfo {
 StructureType sType;
 void* pNext;
 Buffer buffer;
 DeviceMemory memory;
 DeviceSize memoryOffset;
}
struct BindImageMemoryInfo {
 StructureType sType;
 void* pNext;
 Image image;
 DeviceMemory memory;
 DeviceSize memoryOffset;
}
struct PhysicalDevice16BitStorageFeatures {
 StructureType sType;
 void* pNext;
 Bool32 storageBuffer16BitAccess;
 Bool32 uniformAndStorageBuffer16BitAccess;
 Bool32 storagePushConstant16;
 Bool32 storageInputOutput16;
}
struct MemoryDedicatedRequirements {
 StructureType sType;
 void* pNext;
 Bool32 prefersDedicatedAllocation;
 Bool32 requiresDedicatedAllocation;
}
struct MemoryDedicatedAllocateInfo {
 StructureType sType;
 void* pNext;
 Image image;
 Buffer buffer;
}
struct MemoryAllocateFlagsInfo {
 StructureType sType;
 void* pNext;
 MemoryAllocateFlags flags;
 uint deviceMask;
}
struct DeviceGroupRenderPassBeginInfo {
 StructureType sType;
 void* pNext;
 uint deviceMask;
 uint deviceRenderAreaCount;
 Rect2D* pDeviceRenderAreas;
}
struct DeviceGroupCommandBufferBeginInfo {
 StructureType sType;
 void* pNext;
 uint deviceMask;
}
struct DeviceGroupSubmitInfo {
 StructureType sType;
 void* pNext;
 uint waitSemaphoreCount;
 uint* pWaitSemaphoreDeviceIndices;
 uint commandBufferCount;
 uint* pCommandBufferDeviceMasks;
 uint signalSemaphoreCount;
 uint* pSignalSemaphoreDeviceIndices;
}
struct DeviceGroupBindSparseInfo {
 StructureType sType;
 void* pNext;
 uint resourceDeviceIndex;
 uint memoryDeviceIndex;
}
struct BindBufferMemoryDeviceGroupInfo {
 StructureType sType;
 void* pNext;
 uint deviceIndexCount;
 uint* pDeviceIndices;
}
struct BindImageMemoryDeviceGroupInfo {
 StructureType sType;
 void* pNext;
 uint deviceIndexCount;
 uint* pDeviceIndices;
 uint splitInstanceBindRegionCount;
 Rect2D* pSplitInstanceBindRegions;
}
struct PhysicalDeviceGroupProperties {
 StructureType sType;
 void* pNext;
 uint physicalDeviceCount;
 PhysicalDevice[MAX_DEVICE_GROUP_SIZE] physicalDevices;
 Bool32 subsetAllocation;
}
struct DeviceGroupDeviceCreateInfo {
 StructureType sType;
 void* pNext;
 uint physicalDeviceCount;
 PhysicalDevice* pPhysicalDevices;
}
struct BufferMemoryRequirementsInfo2 {
 StructureType sType;
 void* pNext;
 Buffer buffer;
}
struct ImageMemoryRequirementsInfo2 {
 StructureType sType;
 void* pNext;
 Image image;
}
struct ImageSparseMemoryRequirementsInfo2 {
 StructureType sType;
 void* pNext;
 Image image;
}
struct MemoryRequirements2 {
 StructureType sType;
 void* pNext;
 MemoryRequirements memoryRequirements;
}
struct SparseImageMemoryRequirements2 {
 StructureType sType;
 void* pNext;
 SparseImageMemoryRequirements memoryRequirements;
}
struct PhysicalDeviceFeatures2 {
 StructureType sType;
 void* pNext;
 PhysicalDeviceFeatures features;
}
struct PhysicalDeviceProperties2 {
 StructureType sType;
 void* pNext;
 PhysicalDeviceProperties properties;
}
struct FormatProperties2 {
 StructureType sType;
 void* pNext;
 FormatProperties formatProperties;
}
struct ImageFormatProperties2 {
 StructureType sType;
 void* pNext;
 ImageFormatProperties imageFormatProperties;
}
struct PhysicalDeviceImageFormatInfo2 {
 StructureType sType;
 void* pNext;
 Format format;
 ImageType type;
 ImageTiling tiling;
 ImageUsageFlags usage;
 ImageCreateFlags flags;
}
struct QueueFamilyProperties2 {
 StructureType sType;
 void* pNext;
 QueueFamilyProperties queueFamilyProperties;
}
struct PhysicalDeviceMemoryProperties2 {
 StructureType sType;
 void* pNext;
 PhysicalDeviceMemoryProperties memoryProperties;
}
struct SparseImageFormatProperties2 {
 StructureType sType;
 void* pNext;
 SparseImageFormatProperties properties;
}
struct PhysicalDeviceSparseImageFormatInfo2 {
 StructureType sType;
 void* pNext;
 Format format;
 ImageType type;
 SampleCountFlagBits samples;
 ImageUsageFlags usage;
 ImageTiling tiling;
}
struct PhysicalDevicePointClippingProperties {
 StructureType sType;
 void* pNext;
 PointClippingBehavior pointClippingBehavior;
}
struct RenderPassInputAttachmentAspectCreateInfo {
 StructureType sType;
 void* pNext;
 uint aspectReferenceCount;
 InputAttachmentAspectReference* pAspectReferences;
}
struct InputAttachmentAspectReference {
 uint subpass;
 uint inputAttachmentIndex;
 ImageAspectFlags aspectMask;
}
struct ImageViewUsageCreateInfo {
 StructureType sType;
 void* pNext;
 ImageUsageFlags usage;
}
struct PipelineTessellationDomainOriginStateCreateInfo {
 StructureType sType;
 void* pNext;
 TessellationDomainOrigin domainOrigin;
}
struct RenderPassMultiviewCreateInfo {
 StructureType sType;
 void* pNext;
 uint subpassCount;
 uint* pViewMasks;
 uint dependencyCount;
 int* pViewOffsets;
 uint correlationMaskCount;
 uint* pCorrelationMasks;
}
struct PhysicalDeviceMultiviewFeatures {
 StructureType sType;
 void* pNext;
 Bool32 multiview;
 Bool32 multiviewGeometryShader;
 Bool32 multiviewTessellationShader;
}
struct PhysicalDeviceMultiviewProperties {
 StructureType sType;
 void* pNext;
 uint maxMultiviewViewCount;
 uint maxMultiviewInstanceIndex;
}
struct PhysicalDeviceVariablePointersFeatures {
 StructureType sType;
 void* pNext;
 Bool32 variablePointersStorageBuffer;
 Bool32 variablePointers;
}
struct PhysicalDeviceProtectedMemoryFeatures {
 StructureType sType;
 void* pNext;
 Bool32 protectedMemory;
}
struct PhysicalDeviceProtectedMemoryProperties {
 StructureType sType;
 void* pNext;
 Bool32 protectedNoFault;
}
struct DeviceQueueInfo2 {
 StructureType sType;
 void* pNext;
 DeviceQueueCreateFlags flags;
 uint queueFamilyIndex;
 uint queueIndex;
}
struct ProtectedSubmitInfo {
 StructureType sType;
 void* pNext;
 Bool32 protectedSubmit;
}
struct SamplerYcbcrConversionCreateInfo {
 StructureType sType;
 void* pNext;
 Format format;
 SamplerYcbcrModelConversion ycbcrModel;
 SamplerYcbcrRange ycbcrRange;
 ComponentMapping components;
 ChromaLocation xChromaOffset;
 ChromaLocation yChromaOffset;
 Filter chromaFilter;
 Bool32 forceExplicitReconstruction;
}
struct SamplerYcbcrConversionInfo {
 StructureType sType;
 void* pNext;
 SamplerYcbcrConversion conversion;
}
struct BindImagePlaneMemoryInfo {
 StructureType sType;
 void* pNext;
 ImageAspectFlagBits planeAspect;
}
struct ImagePlaneMemoryRequirementsInfo {
 StructureType sType;
 void* pNext;
 ImageAspectFlagBits planeAspect;
}
struct PhysicalDeviceSamplerYcbcrConversionFeatures {
 StructureType sType;
 void* pNext;
 Bool32 samplerYcbcrConversion;
}
struct SamplerYcbcrConversionImageFormatProperties {
 StructureType sType;
 void* pNext;
 uint combinedImageSamplerDescriptorCount;
}
struct DescriptorUpdateTemplateEntry {
 uint dstBinding;
 uint dstArrayElement;
 uint descriptorCount;
 DescriptorType descriptorType;
 usz offset;
 usz stride;
}
struct DescriptorUpdateTemplateCreateInfo {
 StructureType sType;
 void* pNext;
 DescriptorUpdateTemplateCreateFlags flags;
 uint descriptorUpdateEntryCount;
 DescriptorUpdateTemplateEntry* pDescriptorUpdateEntries;
 DescriptorUpdateTemplateType templateType;
 DescriptorSetLayout descriptorSetLayout;
 PipelineBindPoint pipelineBindPoint;
 PipelineLayout pipelineLayout;
 uint set;
}
struct ExternalMemoryProperties {
 ExternalMemoryFeatureFlags externalMemoryFeatures;
 ExternalMemoryHandleTypeFlags exportFromImportedHandleTypes;
 ExternalMemoryHandleTypeFlags compatibleHandleTypes;
}
struct PhysicalDeviceExternalImageFormatInfo {
 StructureType sType;
 void* pNext;
 ExternalMemoryHandleTypeFlagBits handleType;
}
struct ExternalImageFormatProperties {
 StructureType sType;
 void* pNext;
 ExternalMemoryProperties externalMemoryProperties;
}
struct PhysicalDeviceExternalBufferInfo {
 StructureType sType;
 void* pNext;
 BufferCreateFlags flags;
 BufferUsageFlags usage;
 ExternalMemoryHandleTypeFlagBits handleType;
}
struct ExternalBufferProperties {
 StructureType sType;
 void* pNext;
 ExternalMemoryProperties externalMemoryProperties;
}
struct PhysicalDeviceIDProperties {
 StructureType sType;
 void* pNext;
 uint[UUID_SIZE] deviceUUID;
 uint[UUID_SIZE] driverUUID;
 uint[LUID_SIZE] deviceLUID;
 uint deviceNodeMask;
 Bool32 deviceLUIDValid;
}
struct ExternalMemoryImageCreateInfo {
 StructureType sType;
 void* pNext;
 ExternalMemoryHandleTypeFlags handleTypes;
}
struct ExternalMemoryBufferCreateInfo {
 StructureType sType;
 void* pNext;
 ExternalMemoryHandleTypeFlags handleTypes;
}
struct ExportMemoryAllocateInfo {
 StructureType sType;
 void* pNext;
 ExternalMemoryHandleTypeFlags handleTypes;
}
struct PhysicalDeviceExternalFenceInfo {
 StructureType sType;
 void* pNext;
 ExternalFenceHandleTypeFlagBits handleType;
}
struct ExternalFenceProperties {
 StructureType sType;
 void* pNext;
 ExternalFenceHandleTypeFlags exportFromImportedHandleTypes;
 ExternalFenceHandleTypeFlags compatibleHandleTypes;
 ExternalFenceFeatureFlags externalFenceFeatures;
}
struct ExportFenceCreateInfo {
 StructureType sType;
 void* pNext;
 ExternalFenceHandleTypeFlags handleTypes;
}
struct ExportSemaphoreCreateInfo {
 StructureType sType;
 void* pNext;
 ExternalSemaphoreHandleTypeFlags handleTypes;
}
struct PhysicalDeviceExternalSemaphoreInfo {
 StructureType sType;
 void* pNext;
 ExternalSemaphoreHandleTypeFlagBits handleType;
}
struct ExternalSemaphoreProperties {
 StructureType sType;
 void* pNext;
 ExternalSemaphoreHandleTypeFlags exportFromImportedHandleTypes;
 ExternalSemaphoreHandleTypeFlags compatibleHandleTypes;
 ExternalSemaphoreFeatureFlags externalSemaphoreFeatures;
}
struct PhysicalDeviceMaintenance3Properties {
 StructureType sType;
 void* pNext;
 uint maxPerSetDescriptors;
 DeviceSize maxMemoryAllocationSize;
}
struct DescriptorSetLayoutSupport {
 StructureType sType;
 void* pNext;
 Bool32 supported;
}
struct PhysicalDeviceShaderDrawParametersFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderDrawParameters;
}
struct ImageFormatListCreateInfo {
 StructureType sType;
 void* pNext;
 uint viewFormatCount;
 Format* pViewFormats;
}
struct RenderPassCreateInfo2 {
 StructureType sType;
 void* pNext;
 RenderPassCreateFlags flags;
 uint attachmentCount;
 AttachmentDescription2* pAttachments;
 uint subpassCount;
 SubpassDescription2* pSubpasses;
 uint dependencyCount;
 SubpassDependency2* pDependencies;
 uint correlatedViewMaskCount;
 uint* pCorrelatedViewMasks;
}
struct AttachmentDescription2 {
 StructureType sType;
 void* pNext;
 AttachmentDescriptionFlags flags;
 Format format;
 SampleCountFlagBits samples;
 AttachmentLoadOp loadOp;
 AttachmentStoreOp storeOp;
 AttachmentLoadOp stencilLoadOp;
 AttachmentStoreOp stencilStoreOp;
 ImageLayout initialLayout;
 ImageLayout finalLayout;
}
struct AttachmentReference2 {
 StructureType sType;
 void* pNext;
 uint attachment;
 ImageLayout layout;
 ImageAspectFlags aspectMask;
}
struct SubpassDescription2 {
 StructureType sType;
 void* pNext;
 SubpassDescriptionFlags flags;
 PipelineBindPoint pipelineBindPoint;
 uint viewMask;
 uint inputAttachmentCount;
 AttachmentReference2* pInputAttachments;
 uint colorAttachmentCount;
 AttachmentReference2* pColorAttachments;
 AttachmentReference2* pResolveAttachments;
 AttachmentReference2* pDepthStencilAttachment;
 uint preserveAttachmentCount;
 uint* pPreserveAttachments;
}
struct SubpassDependency2 {
 StructureType sType;
 void* pNext;
 uint srcSubpass;
 uint dstSubpass;
 PipelineStageFlags srcStageMask;
 PipelineStageFlags dstStageMask;
 AccessFlags srcAccessMask;
 AccessFlags dstAccessMask;
 DependencyFlags dependencyFlags;
 int viewOffset;
}
struct SubpassBeginInfo {
 StructureType sType;
 void* pNext;
 SubpassContents contents;
}
struct SubpassEndInfo {
 StructureType sType;
 void* pNext;
}
struct PhysicalDevice8BitStorageFeatures {
 StructureType sType;
 void* pNext;
 Bool32 storageBuffer8BitAccess;
 Bool32 uniformAndStorageBuffer8BitAccess;
 Bool32 storagePushConstant8;
}
struct ConformanceVersion {
 uint major;
 uint minor;
 uint subminor;
 uint patch;
}
struct PhysicalDeviceDriverProperties {
 StructureType sType;
 void* pNext;
 DriverId driverID;
 char[MAX_DRIVER_NAME_SIZE] driverName;
 char[MAX_DRIVER_INFO_SIZE] driverInfo;
 ConformanceVersion conformanceVersion;
}
struct PhysicalDeviceShaderAtomicInt64Features {
 StructureType sType;
 void* pNext;
 Bool32 shaderBufferInt64Atomics;
 Bool32 shaderSharedInt64Atomics;
}
struct PhysicalDeviceShaderFloat16Int8Features {
 StructureType sType;
 void* pNext;
 Bool32 shaderFloat16;
 Bool32 shaderInt8;
}
struct PhysicalDeviceFloatControlsProperties {
 StructureType sType;
 void* pNext;
 ShaderFloatControlsIndependence denormBehaviorIndependence;
 ShaderFloatControlsIndependence roundingModeIndependence;
 Bool32 shaderSignedZeroInfNanPreserveFloat16;
 Bool32 shaderSignedZeroInfNanPreserveFloat32;
 Bool32 shaderSignedZeroInfNanPreserveFloat64;
 Bool32 shaderDenormPreserveFloat16;
 Bool32 shaderDenormPreserveFloat32;
 Bool32 shaderDenormPreserveFloat64;
 Bool32 shaderDenormFlushToZeroFloat16;
 Bool32 shaderDenormFlushToZeroFloat32;
 Bool32 shaderDenormFlushToZeroFloat64;
 Bool32 shaderRoundingModeRTEFloat16;
 Bool32 shaderRoundingModeRTEFloat32;
 Bool32 shaderRoundingModeRTEFloat64;
 Bool32 shaderRoundingModeRTZFloat16;
 Bool32 shaderRoundingModeRTZFloat32;
 Bool32 shaderRoundingModeRTZFloat64;
}
struct DescriptorSetLayoutBindingFlagsCreateInfo {
 StructureType sType;
 void* pNext;
 uint bindingCount;
 DescriptorBindingFlags* pBindingFlags;
}
struct PhysicalDeviceDescriptorIndexingFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderInputAttachmentArrayDynamicIndexing;
 Bool32 shaderUniformTexelBufferArrayDynamicIndexing;
 Bool32 shaderStorageTexelBufferArrayDynamicIndexing;
 Bool32 shaderUniformBufferArrayNonUniformIndexing;
 Bool32 shaderSampledImageArrayNonUniformIndexing;
 Bool32 shaderStorageBufferArrayNonUniformIndexing;
 Bool32 shaderStorageImageArrayNonUniformIndexing;
 Bool32 shaderInputAttachmentArrayNonUniformIndexing;
 Bool32 shaderUniformTexelBufferArrayNonUniformIndexing;
 Bool32 shaderStorageTexelBufferArrayNonUniformIndexing;
 Bool32 descriptorBindingUniformBufferUpdateAfterBind;
 Bool32 descriptorBindingSampledImageUpdateAfterBind;
 Bool32 descriptorBindingStorageImageUpdateAfterBind;
 Bool32 descriptorBindingStorageBufferUpdateAfterBind;
 Bool32 descriptorBindingUniformTexelBufferUpdateAfterBind;
 Bool32 descriptorBindingStorageTexelBufferUpdateAfterBind;
 Bool32 descriptorBindingUpdateUnusedWhilePending;
 Bool32 descriptorBindingPartiallyBound;
 Bool32 descriptorBindingVariableDescriptorCount;
 Bool32 runtimeDescriptorArray;
}
struct PhysicalDeviceDescriptorIndexingProperties {
 StructureType sType;
 void* pNext;
 uint maxUpdateAfterBindDescriptorsInAllPools;
 Bool32 shaderUniformBufferArrayNonUniformIndexingNative;
 Bool32 shaderSampledImageArrayNonUniformIndexingNative;
 Bool32 shaderStorageBufferArrayNonUniformIndexingNative;
 Bool32 shaderStorageImageArrayNonUniformIndexingNative;
 Bool32 shaderInputAttachmentArrayNonUniformIndexingNative;
 Bool32 robustBufferAccessUpdateAfterBind;
 Bool32 quadDivergentImplicitLod;
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
struct DescriptorSetVariableDescriptorCountAllocateInfo {
 StructureType sType;
 void* pNext;
 uint descriptorSetCount;
 uint* pDescriptorCounts;
}
struct DescriptorSetVariableDescriptorCountLayoutSupport {
 StructureType sType;
 void* pNext;
 uint maxVariableDescriptorCount;
}
struct SubpassDescriptionDepthStencilResolve {
 StructureType sType;
 void* pNext;
 ResolveModeFlagBits depthResolveMode;
 ResolveModeFlagBits stencilResolveMode;
 AttachmentReference2* pDepthStencilResolveAttachment;
}
struct PhysicalDeviceDepthStencilResolveProperties {
 StructureType sType;
 void* pNext;
 ResolveModeFlags supportedDepthResolveModes;
 ResolveModeFlags supportedStencilResolveModes;
 Bool32 independentResolveNone;
 Bool32 independentResolve;
}
struct PhysicalDeviceScalarBlockLayoutFeatures {
 StructureType sType;
 void* pNext;
 Bool32 scalarBlockLayout;
}
struct ImageStencilUsageCreateInfo {
 StructureType sType;
 void* pNext;
 ImageUsageFlags stencilUsage;
}
struct SamplerReductionModeCreateInfo {
 StructureType sType;
 void* pNext;
 SamplerReductionMode reductionMode;
}
struct PhysicalDeviceSamplerFilterMinmaxProperties {
 StructureType sType;
 void* pNext;
 Bool32 filterMinmaxSingleComponentFormats;
 Bool32 filterMinmaxImageComponentMapping;
}
struct PhysicalDeviceVulkanMemoryModelFeatures {
 StructureType sType;
 void* pNext;
 Bool32 vulkanMemoryModel;
 Bool32 vulkanMemoryModelDeviceScope;
 Bool32 vulkanMemoryModelAvailabilityVisibilityChains;
}
struct PhysicalDeviceImagelessFramebufferFeatures {
 StructureType sType;
 void* pNext;
 Bool32 imagelessFramebuffer;
}
struct FramebufferAttachmentsCreateInfo {
 StructureType sType;
 void* pNext;
 uint attachmentImageInfoCount;
 FramebufferAttachmentImageInfo* pAttachmentImageInfos;
}
struct FramebufferAttachmentImageInfo {
 StructureType sType;
 void* pNext;
 ImageCreateFlags flags;
 ImageUsageFlags usage;
 uint width;
 uint height;
 uint layerCount;
 uint viewFormatCount;
 Format* pViewFormats;
}
struct RenderPassAttachmentBeginInfo {
 StructureType sType;
 void* pNext;
 uint attachmentCount;
 ImageView* pAttachments;
}
struct PhysicalDeviceUniformBufferStandardLayoutFeatures {
 StructureType sType;
 void* pNext;
 Bool32 uniformBufferStandardLayout;
}
struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderSubgroupExtendedTypes;
}
struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures {
 StructureType sType;
 void* pNext;
 Bool32 separateDepthStencilLayouts;
}
struct AttachmentReferenceStencilLayout {
 StructureType sType;
 void* pNext;
 ImageLayout stencilLayout;
}
struct AttachmentDescriptionStencilLayout {
 StructureType sType;
 void* pNext;
 ImageLayout stencilInitialLayout;
 ImageLayout stencilFinalLayout;
}
struct PhysicalDeviceHostQueryResetFeatures {
 StructureType sType;
 void* pNext;
 Bool32 hostQueryReset;
}
struct PhysicalDeviceTimelineSemaphoreFeatures {
 StructureType sType;
 void* pNext;
 Bool32 timelineSemaphore;
}
struct PhysicalDeviceTimelineSemaphoreProperties {
 StructureType sType;
 void* pNext;
 ulong maxTimelineSemaphoreValueDifference;
}
struct SemaphoreTypeCreateInfo {
 StructureType sType;
 void* pNext;
 SemaphoreType semaphoreType;
 ulong initialValue;
}
struct TimelineSemaphoreSubmitInfo {
 StructureType sType;
 void* pNext;
 uint waitSemaphoreValueCount;
 ulong* pWaitSemaphoreValues;
 uint signalSemaphoreValueCount;
 ulong* pSignalSemaphoreValues;
}
struct SemaphoreWaitInfo {
 StructureType sType;
 void* pNext;
 SemaphoreWaitFlags flags;
 uint semaphoreCount;
 Semaphore* pSemaphores;
 ulong* pValues;
}
struct SemaphoreSignalInfo {
 StructureType sType;
 void* pNext;
 Semaphore semaphore;
 ulong value;
}
struct PhysicalDeviceBufferDeviceAddressFeatures {
 StructureType sType;
 void* pNext;
 Bool32 bufferDeviceAddress;
 Bool32 bufferDeviceAddressCaptureReplay;
 Bool32 bufferDeviceAddressMultiDevice;
}
struct BufferDeviceAddressInfo {
 StructureType sType;
 void* pNext;
 Buffer buffer;
}
struct BufferOpaqueCaptureAddressCreateInfo {
 StructureType sType;
 void* pNext;
 ulong opaqueCaptureAddress;
}
struct MemoryOpaqueCaptureAddressAllocateInfo {
 StructureType sType;
 void* pNext;
 ulong opaqueCaptureAddress;
}
struct DeviceMemoryOpaqueCaptureAddressInfo {
 StructureType sType;
 void* pNext;
 DeviceMemory memory;
}
struct PipelineCreationFeedback {
 PipelineCreationFeedbackFlags flags;
 ulong duration;
}
struct PhysicalDeviceShaderTerminateInvocationFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderTerminateInvocation;
}
struct PhysicalDeviceToolProperties {
 StructureType sType;
 void* pNext;
 char[MAX_EXTENSION_NAME_SIZE] name;
 char[MAX_EXTENSION_NAME_SIZE] version;
 ToolPurposeFlags purposes;
 char[MAX_DESCRIPTION_SIZE] description;
 char[MAX_EXTENSION_NAME_SIZE] layer;
}
struct PhysicalDeviceShaderDemoteToHelperInvocationFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderDemoteToHelperInvocation;
}
struct PhysicalDevicePrivateDataFeatures {
 StructureType sType;
 void* pNext;
 Bool32 privateData;
}
struct DevicePrivateDataCreateInfo {
 StructureType sType;
 void* pNext;
 uint privateDataSlotRequestCount;
}
struct PrivateDataSlotCreateInfo {
 StructureType sType;
 void* pNext;
 PrivateDataSlotCreateFlags flags;
}
struct PhysicalDevicePipelineCreationCacheControlFeatures {
 StructureType sType;
 void* pNext;
 Bool32 pipelineCreationCacheControl;
}
struct MemoryBarrier2 {
 StructureType sType;
 void* pNext;
 PipelineStageFlags2 srcStageMask;
 AccessFlags2 srcAccessMask;
 PipelineStageFlags2 dstStageMask;
 AccessFlags2 dstAccessMask;
}
struct BufferMemoryBarrier2 {
 StructureType sType;
 void* pNext;
 PipelineStageFlags2 srcStageMask;
 AccessFlags2 srcAccessMask;
 PipelineStageFlags2 dstStageMask;
 AccessFlags2 dstAccessMask;
 uint srcQueueFamilyIndex;
 uint dstQueueFamilyIndex;
 Buffer buffer;
 DeviceSize offset;
 DeviceSize size;
}
struct ImageMemoryBarrier2 {
 StructureType sType;
 void* pNext;
 PipelineStageFlags2 srcStageMask;
 AccessFlags2 srcAccessMask;
 PipelineStageFlags2 dstStageMask;
 AccessFlags2 dstAccessMask;
 ImageLayout oldLayout;
 ImageLayout newLayout;
 uint srcQueueFamilyIndex;
 uint dstQueueFamilyIndex;
 Image image;
 ImageSubresourceRange subresourceRange;
}
struct DependencyInfo {
 StructureType sType;
 void* pNext;
 DependencyFlags dependencyFlags;
 uint memoryBarrierCount;
 MemoryBarrier2* pMemoryBarriers;
 uint bufferMemoryBarrierCount;
 BufferMemoryBarrier2* pBufferMemoryBarriers;
 uint imageMemoryBarrierCount;
 ImageMemoryBarrier2* pImageMemoryBarriers;
}
struct SubmitInfo2 {
 StructureType sType;
 void* pNext;
 SubmitFlags flags;
 uint waitSemaphoreInfoCount;
 SemaphoreSubmitInfo* pWaitSemaphoreInfos;
 uint commandBufferInfoCount;
 CommandBufferSubmitInfo* pCommandBufferInfos;
 uint signalSemaphoreInfoCount;
 SemaphoreSubmitInfo* pSignalSemaphoreInfos;
}
struct SemaphoreSubmitInfo {
 StructureType sType;
 void* pNext;
 Semaphore semaphore;
 ulong value;
 PipelineStageFlags2 stageMask;
 uint deviceIndex;
}
struct CommandBufferSubmitInfo {
 StructureType sType;
 void* pNext;
 CommandBuffer commandBuffer;
 uint deviceMask;
}
struct PhysicalDeviceSynchronization2Features {
 StructureType sType;
 void* pNext;
 Bool32 synchronization2;
}
struct PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderZeroInitializeWorkgroupMemory;
}
struct PhysicalDeviceImageRobustnessFeatures {
 StructureType sType;
 void* pNext;
 Bool32 robustImageAccess;
}
struct CopyBufferInfo2 {
 StructureType sType;
 void* pNext;
 Buffer srcBuffer;
 Buffer dstBuffer;
 uint regionCount;
 BufferCopy2* pRegions;
}
struct CopyImageInfo2 {
 StructureType sType;
 void* pNext;
 Image srcImage;
 ImageLayout srcImageLayout;
 Image dstImage;
 ImageLayout dstImageLayout;
 uint regionCount;
 ImageCopy2* pRegions;
}
struct CopyBufferToImageInfo2 {
 StructureType sType;
 void* pNext;
 Buffer srcBuffer;
 Image dstImage;
 ImageLayout dstImageLayout;
 uint regionCount;
 BufferImageCopy2* pRegions;
}
struct CopyImageToBufferInfo2 {
 StructureType sType;
 void* pNext;
 Image srcImage;
 ImageLayout srcImageLayout;
 Buffer dstBuffer;
 uint regionCount;
 BufferImageCopy2* pRegions;
}
struct BlitImageInfo2 {
 StructureType sType;
 void* pNext;
 Image srcImage;
 ImageLayout srcImageLayout;
 Image dstImage;
 ImageLayout dstImageLayout;
 uint regionCount;
 ImageBlit2* pRegions;
 Filter filter;
}
struct ResolveImageInfo2 {
 StructureType sType;
 void* pNext;
 Image srcImage;
 ImageLayout srcImageLayout;
 Image dstImage;
 ImageLayout dstImageLayout;
 uint regionCount;
 ImageResolve2* pRegions;
}
struct BufferCopy2 {
 StructureType sType;
 void* pNext;
 DeviceSize srcOffset;
 DeviceSize dstOffset;
 DeviceSize size;
}
struct ImageCopy2 {
 StructureType sType;
 void* pNext;
 ImageSubresourceLayers srcSubresource;
 Offset3D srcOffset;
 ImageSubresourceLayers dstSubresource;
 Offset3D dstOffset;
 Extent3D extent;
}
struct ImageBlit2 {
 StructureType sType;
 void* pNext;
 ImageSubresourceLayers srcSubresource;
 Offset3D[2] srcOffsets;
 ImageSubresourceLayers dstSubresource;
 Offset3D[2] dstOffsets;
}
struct BufferImageCopy2 {
 StructureType sType;
 void* pNext;
 DeviceSize bufferOffset;
 uint bufferRowLength;
 uint bufferImageHeight;
 ImageSubresourceLayers imageSubresource;
 Offset3D imageOffset;
 Extent3D imageExtent;
}
struct ImageResolve2 {
 StructureType sType;
 void* pNext;
 ImageSubresourceLayers srcSubresource;
 Offset3D srcOffset;
 ImageSubresourceLayers dstSubresource;
 Offset3D dstOffset;
 Extent3D extent;
}
struct PhysicalDeviceSubgroupSizeControlFeatures {
 StructureType sType;
 void* pNext;
 Bool32 subgroupSizeControl;
 Bool32 computeFullSubgroups;
}
struct PhysicalDeviceSubgroupSizeControlProperties {
 StructureType sType;
 void* pNext;
 uint minSubgroupSize;
 uint maxSubgroupSize;
 uint maxComputeWorkgroupSubgroups;
 ShaderStageFlags requiredSubgroupSizeStages;
}
struct PipelineShaderStageRequiredSubgroupSizeCreateInfo {
 StructureType sType;
 void* pNext;
 uint requiredSubgroupSize;
}
struct PhysicalDeviceInlineUniformBlockFeatures {
 StructureType sType;
 void* pNext;
 Bool32 inlineUniformBlock;
 Bool32 descriptorBindingInlineUniformBlockUpdateAfterBind;
}
struct PhysicalDeviceInlineUniformBlockProperties {
 StructureType sType;
 void* pNext;
 uint maxInlineUniformBlockSize;
 uint maxPerStageDescriptorInlineUniformBlocks;
 uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
 uint maxDescriptorSetInlineUniformBlocks;
 uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
}
struct WriteDescriptorSetInlineUniformBlock {
 StructureType sType;
 void* pNext;
 uint dataSize;
 void* pData;
}
struct DescriptorPoolInlineUniformBlockCreateInfo {
 StructureType sType;
 void* pNext;
 uint maxInlineUniformBlockBindings;
}
struct PhysicalDeviceTextureCompressionASTCHDRFeatures {
 StructureType sType;
 void* pNext;
 Bool32 textureCompressionASTC_HDR;
}
struct RenderingInfo {
 StructureType sType;
 void* pNext;
 RenderingFlags flags;
 Rect2D renderArea;
 uint layerCount;
 uint viewMask;
 uint colorAttachmentCount;
 RenderingAttachmentInfo* pColorAttachments;
 RenderingAttachmentInfo* pDepthAttachment;
 RenderingAttachmentInfo* pStencilAttachment;
}
struct RenderingAttachmentInfo {
 StructureType sType;
 void* pNext;
 ImageView imageView;
 ImageLayout imageLayout;
 ResolveModeFlagBits resolveMode;
 ImageView resolveImageView;
 ImageLayout resolveImageLayout;
 AttachmentLoadOp loadOp;
 AttachmentStoreOp storeOp;
 ClearValue clearValue;
}
struct PipelineRenderingCreateInfo {
 StructureType sType;
 void* pNext;
 uint viewMask;
 uint colorAttachmentCount;
 Format* pColorAttachmentFormats;
 Format depthAttachmentFormat;
 Format stencilAttachmentFormat;
}
struct PhysicalDeviceDynamicRenderingFeatures {
 StructureType sType;
 void* pNext;
 Bool32 dynamicRendering;
}
struct CommandBufferInheritanceRenderingInfo {
 StructureType sType;
 void* pNext;
 RenderingFlags flags;
 uint viewMask;
 uint colorAttachmentCount;
 Format* pColorAttachmentFormats;
 Format depthAttachmentFormat;
 Format stencilAttachmentFormat;
 SampleCountFlagBits rasterizationSamples;
}
struct PhysicalDeviceShaderIntegerDotProductFeatures {
 StructureType sType;
 void* pNext;
 Bool32 shaderIntegerDotProduct;
}
struct PhysicalDeviceShaderIntegerDotProductProperties {
 StructureType sType;
 void* pNext;
 Bool32 integerDotProduct8BitUnsignedAccelerated;
 Bool32 integerDotProduct8BitSignedAccelerated;
 Bool32 integerDotProduct8BitMixedSignednessAccelerated;
 Bool32 integerDotProduct4x8BitPackedUnsignedAccelerated;
 Bool32 integerDotProduct4x8BitPackedSignedAccelerated;
 Bool32 integerDotProduct4x8BitPackedMixedSignednessAccelerated;
 Bool32 integerDotProduct16BitUnsignedAccelerated;
 Bool32 integerDotProduct16BitSignedAccelerated;
 Bool32 integerDotProduct16BitMixedSignednessAccelerated;
 Bool32 integerDotProduct32BitUnsignedAccelerated;
 Bool32 integerDotProduct32BitSignedAccelerated;
 Bool32 integerDotProduct32BitMixedSignednessAccelerated;
 Bool32 integerDotProduct64BitUnsignedAccelerated;
 Bool32 integerDotProduct64BitSignedAccelerated;
 Bool32 integerDotProduct64BitMixedSignednessAccelerated;
 Bool32 integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating8BitSignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
 Bool32 integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
 Bool32 integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating16BitSignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
 Bool32 integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating32BitSignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
 Bool32 integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating64BitSignedAccelerated;
 Bool32 integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
}
struct PhysicalDeviceTexelBufferAlignmentProperties {
 StructureType sType;
 void* pNext;
 DeviceSize storageTexelBufferOffsetAlignmentBytes;
 Bool32 storageTexelBufferOffsetSingleTexelAlignment;
 DeviceSize uniformTexelBufferOffsetAlignmentBytes;
 Bool32 uniformTexelBufferOffsetSingleTexelAlignment;
}
struct FormatProperties3 {
 StructureType sType;
 void* pNext;
 FormatFeatureFlags2 linearTilingFeatures;
 FormatFeatureFlags2 optimalTilingFeatures;
 FormatFeatureFlags2 bufferFeatures;
}
struct PhysicalDeviceMaintenance4Features {
 StructureType sType;
 void* pNext;
 Bool32 maintenance4;
}
struct PhysicalDeviceMaintenance4Properties {
 StructureType sType;
 void* pNext;
 DeviceSize maxBufferSize;
}
struct DeviceBufferMemoryRequirements {
 StructureType sType;
 void* pNext;
 BufferCreateInfo* pCreateInfo;
}
struct DeviceImageMemoryRequirements {
 StructureType sType;
 void* pNext;
 ImageCreateInfo* pCreateInfo;
 ImageAspectFlagBits planeAspect;
}
struct SurfaceCapabilitiesKHR {
 uint minImageCount;
 uint maxImageCount;
 Extent2D currentExtent;
 Extent2D minImageExtent;
 Extent2D maxImageExtent;
 uint maxImageArrayLayers;
 SurfaceTransformFlagsKHR supportedTransforms;
 SurfaceTransformFlagBitsKHR currentTransform;
 CompositeAlphaFlagsKHR supportedCompositeAlpha;
 ImageUsageFlags supportedUsageFlags;
}
struct SurfaceFormatKHR {
 Format format;
 ColorSpaceKHR colorSpace;
}
struct XcbSurfaceCreateInfoKHR {
 StructureType sType;
 void* pNext;
 XcbSurfaceCreateFlagsKHR flags;
 void** connection;
 uint window;
}
struct SwapchainCreateInfoKHR {
 StructureType sType;
 void* pNext;
 SwapchainCreateFlagsKHR flags;
 SurfaceKHR surface;
 uint minImageCount;
 Format imageFormat;
 ColorSpaceKHR imageColorSpace;
 Extent2D imageExtent;
 uint imageArrayLayers;
 ImageUsageFlags imageUsage;
 SharingMode imageSharingMode;
 uint queueFamilyIndexCount;
 uint* pQueueFamilyIndices;
 SurfaceTransformFlagBitsKHR preTransform;
 CompositeAlphaFlagBitsKHR compositeAlpha;
 PresentModeKHR presentMode;
 Bool32 clipped;
 SwapchainKHR oldSwapchain;
}
struct PresentInfoKHR {
 StructureType sType;
 void* pNext;
 uint waitSemaphoreCount;
 Semaphore* pWaitSemaphores;
 uint swapchainCount;
 SwapchainKHR* pSwapchains;
 uint* pImageIndices;
 Result* pResults;
}
struct ImageSwapchainCreateInfoKHR {
 StructureType sType;
 void* pNext;
 SwapchainKHR swapchain;
}
struct BindImageMemorySwapchainInfoKHR {
 StructureType sType;
 void* pNext;
 SwapchainKHR swapchain;
 uint imageIndex;
}
struct AcquireNextImageInfoKHR {
 StructureType sType;
 void* pNext;
 SwapchainKHR swapchain;
 ulong timeout;
 Semaphore semaphore;
 Fence fence;
 uint deviceMask;
}
struct DeviceGroupPresentCapabilitiesKHR {
 StructureType sType;
 void* pNext;
 uint[MAX_DEVICE_GROUP_SIZE] presentMask;
 DeviceGroupPresentModeFlagsKHR modes;
}
struct DeviceGroupPresentInfoKHR {
 StructureType sType;
 void* pNext;
 uint swapchainCount;
 uint* pDeviceMasks;
 DeviceGroupPresentModeFlagBitsKHR mode;
}
struct DeviceGroupSwapchainCreateInfoKHR {
 StructureType sType;
 void* pNext;
 DeviceGroupPresentModeFlagsKHR modes;
}
struct DisplayModeCreateInfoKHR {
 StructureType sType;
 void* pNext;
 DisplayModeCreateFlagsKHR flags;
 DisplayModeParametersKHR parameters;
}
struct DisplayModeParametersKHR {
 Extent2D visibleRegion;
 uint refreshRate;
}
struct DisplayModePropertiesKHR {
 DisplayModeKHR displayMode;
 DisplayModeParametersKHR parameters;
}
struct DisplayPlaneCapabilitiesKHR {
 DisplayPlaneAlphaFlagsKHR supportedAlpha;
 Offset2D minSrcPosition;
 Offset2D maxSrcPosition;
 Extent2D minSrcExtent;
 Extent2D maxSrcExtent;
 Offset2D minDstPosition;
 Offset2D maxDstPosition;
 Extent2D minDstExtent;
 Extent2D maxDstExtent;
}
struct DisplayPlanePropertiesKHR {
 DisplayKHR currentDisplay;
 uint currentStackIndex;
}
struct DisplayPropertiesKHR {
 DisplayKHR display;
 char* displayName;
 Extent2D physicalDimensions;
 Extent2D physicalResolution;
 SurfaceTransformFlagsKHR supportedTransforms;
 Bool32 planeReorderPossible;
 Bool32 persistentContent;
}
struct DisplaySurfaceCreateInfoKHR {
 StructureType sType;
 void* pNext;
 DisplaySurfaceCreateFlagsKHR flags;
 DisplayModeKHR displayMode;
 uint planeIndex;
 uint planeStackIndex;
 SurfaceTransformFlagBitsKHR transform;
 float globalAlpha;
 DisplayPlaneAlphaFlagBitsKHR alphaMode;
 Extent2D imageExtent;
}
struct PhysicalDevicePushDescriptorPropertiesKHR {
 StructureType sType;
 void* pNext;
 uint maxPushDescriptors;
}
struct DebugReportCallbackCreateInfoEXT {
 StructureType sType;
 void* pNext;
 DebugReportFlagsEXT flags;
 PFN_vkDebugReportCallbackEXT pfnCallback;
 void* pUserData;
}
struct DebugUtilsLabelEXT {
 StructureType sType;
 void* pNext;
 char* pLabelName;
 float[4] color;
}
struct DebugUtilsMessengerCallbackDataEXT {
 StructureType sType;
 void* pNext;
 DebugUtilsMessengerCallbackDataFlagsEXT flags;
 char* pMessageIdName;
 int messageIdNumber;
 char* pMessage;
 uint queueLabelCount;
 DebugUtilsLabelEXT* pQueueLabels;
 uint cmdBufLabelCount;
 DebugUtilsLabelEXT* pCmdBufLabels;
 uint objectCount;
 DebugUtilsObjectNameInfoEXT* pObjects;
}
struct DebugUtilsMessengerCreateInfoEXT {
 StructureType sType;
 void* pNext;
 DebugUtilsMessengerCreateFlagsEXT flags;
 DebugUtilsMessageSeverityFlagsEXT messageSeverity;
 DebugUtilsMessageTypeFlagsEXT messageType;
 PFN_vkDebugUtilsMessengerCallbackEXT pfnUserCallback;
 void* pUserData;
}
struct DebugUtilsObjectNameInfoEXT {
 StructureType sType;
 void* pNext;
 ObjectType objectType;
 ulong objectHandle;
 char* pObjectName;
}
struct DebugUtilsObjectTagInfoEXT {
 StructureType sType;
 void* pNext;
 ObjectType objectType;
 ulong objectHandle;
 ulong tagName;
 usz tagSize;
 void* pTag;
}
struct PhysicalDevicePortabilitySubsetFeaturesKHR {
 StructureType sType;
 void* pNext;
 Bool32 constantAlphaColorBlendFactors;
 Bool32 events;
 Bool32 imageViewFormatReinterpretation;
 Bool32 imageViewFormatSwizzle;
 Bool32 imageView2DOn3DImage;
 Bool32 multisampleArrayImage;
 Bool32 mutableComparisonSamplers;
 Bool32 pointPolygons;
 Bool32 samplerMipLodBias;
 Bool32 separateStencilMaskRef;
 Bool32 shaderSampleRateInterpolationFunctions;
 Bool32 tessellationIsolines;
 Bool32 tessellationPointMode;
 Bool32 triangleFans;
 Bool32 vertexAttributeAccessBeyondStride;
}
struct PhysicalDevicePortabilitySubsetPropertiesKHR {
 StructureType sType;
 void* pNext;
 uint minVertexInputBindingStrideAlignment;
}
def PFN_vkAllocationFunction = fn void* (void*, usz, usz, SystemAllocationScope);
def PFN_vkFreeFunction = fn void (void*, void*);
def PFN_vkInternalAllocationNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
def PFN_vkInternalFreeNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
def PFN_vkReallocationFunction = fn void* (void*, void*, usz, usz, SystemAllocationScope);
def PFN_vkVoidFunction = fn void ();
def PFN_DestroySurfaceKHR = fn void (Instance, SurfaceKHR, AllocationCallbacks*);
def PFN_GetPhysicalDeviceSurfaceSupportKHR = fn Result (PhysicalDevice, uint, SurfaceKHR, Bool32*);
def PFN_GetPhysicalDeviceSurfaceCapabilitiesKHR = fn Result (PhysicalDevice, SurfaceKHR, SurfaceCapabilitiesKHR*);
def PFN_GetPhysicalDeviceSurfaceFormatsKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, SurfaceFormatKHR*);
def PFN_GetPhysicalDeviceSurfacePresentModesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, PresentModeKHR*);
def PFN_CreateXcbSurfaceKHR = fn Result (Instance, XcbSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_GetPhysicalDeviceXcbPresentationSupportKHR = fn Bool32 (PhysicalDevice, uint, void**, uint);
def PFN_CreateSwapchainKHR = fn Result (Device, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
def PFN_DestroySwapchainKHR = fn void (Device, SwapchainKHR, AllocationCallbacks*);
def PFN_GetSwapchainImagesKHR = fn Result (Device, SwapchainKHR, uint*, Image*);
def PFN_AcquireNextImageKHR = fn Result (Device, SwapchainKHR, ulong, Semaphore, Fence, uint*);
def PFN_QueuePresentKHR = fn Result (Queue, PresentInfoKHR*);
def PFN_GetDeviceGroupPresentCapabilitiesKHR = fn Result (Device, DeviceGroupPresentCapabilitiesKHR*);
def PFN_GetDeviceGroupSurfacePresentModesKHR = fn Result (Device, SurfaceKHR, DeviceGroupPresentModeFlagsKHR*);
def PFN_GetPhysicalDevicePresentRectanglesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, Rect2D*);
def PFN_AcquireNextImage2KHR = fn Result (Device, AcquireNextImageInfoKHR*, uint*);
def PFN_GetPhysicalDeviceDisplayPropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPropertiesKHR*);
def PFN_GetPhysicalDeviceDisplayPlanePropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPlanePropertiesKHR*);
def PFN_GetDisplayPlaneSupportedDisplaysKHR = fn Result (PhysicalDevice, uint, uint*, DisplayKHR*);
def PFN_GetDisplayModePropertiesKHR = fn Result (PhysicalDevice, DisplayKHR, uint*, DisplayModePropertiesKHR*);
def PFN_CreateDisplayModeKHR = fn Result (PhysicalDevice, DisplayKHR, DisplayModeCreateInfoKHR*, AllocationCallbacks*, DisplayModeKHR*);
def PFN_GetDisplayPlaneCapabilitiesKHR = fn Result (PhysicalDevice, DisplayModeKHR, uint, DisplayPlaneCapabilitiesKHR*);
def PFN_CreateDisplayPlaneSurfaceKHR = fn Result (Instance, DisplaySurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_CmdPushDescriptorSetKHR = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*);
def PFN_CmdPushDescriptorSetWithTemplateKHR = fn void (CommandBuffer, DescriptorUpdateTemplate, PipelineLayout, uint, void*);
def PFN_vkDebugReportCallbackEXT = fn Bool32 (DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*, void*);
def PFN_CreateDebugReportCallbackEXT = fn Result (Instance, DebugReportCallbackCreateInfoEXT*, AllocationCallbacks*, DebugReportCallbackEXT*);
def PFN_DestroyDebugReportCallbackEXT = fn void (Instance, DebugReportCallbackEXT, AllocationCallbacks*);
def PFN_DebugReportMessageEXT = fn void (Instance, DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*);
def PFN_vkDebugUtilsMessengerCallbackEXT = fn Bool32 (DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT*, void*);
def PFN_SetDebugUtilsObjectNameEXT = fn Result (Device, DebugUtilsObjectNameInfoEXT*);
def PFN_SetDebugUtilsObjectTagEXT = fn Result (Device, DebugUtilsObjectTagInfoEXT*);
def PFN_QueueBeginDebugUtilsLabelEXT = fn void (Queue, DebugUtilsLabelEXT*);
def PFN_QueueEndDebugUtilsLabelEXT = fn void (Queue);
def PFN_QueueInsertDebugUtilsLabelEXT = fn void (Queue, DebugUtilsLabelEXT*);
def PFN_CmdBeginDebugUtilsLabelEXT = fn void (CommandBuffer, DebugUtilsLabelEXT*);
def PFN_CmdEndDebugUtilsLabelEXT = fn void (CommandBuffer);
def PFN_CmdInsertDebugUtilsLabelEXT = fn void (CommandBuffer, DebugUtilsLabelEXT*);
def PFN_CreateDebugUtilsMessengerEXT = fn Result (Instance, DebugUtilsMessengerCreateInfoEXT*, AllocationCallbacks*, DebugUtilsMessengerEXT*);
def PFN_DestroyDebugUtilsMessengerEXT = fn void (Instance, DebugUtilsMessengerEXT, AllocationCallbacks*);
def PFN_SubmitDebugUtilsMessageEXT = fn void (Instance, DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT*);
extern fn void destroyInstance (Instance instance, AllocationCallbacks* pallocator) @extern("vkDestroyInstance");
extern fn void getPhysicalDeviceFeatures (PhysicalDevice physicaldevice, PhysicalDeviceFeatures* pfeatures) @extern("vkGetPhysicalDeviceFeatures");
extern fn void getPhysicalDeviceFormatProperties (PhysicalDevice physicaldevice, Format format, FormatProperties* pformatproperties) @extern("vkGetPhysicalDeviceFormatProperties");
extern fn void getPhysicalDeviceProperties (PhysicalDevice physicaldevice, PhysicalDeviceProperties* pproperties) @extern("vkGetPhysicalDeviceProperties");
extern fn void getPhysicalDeviceQueueFamilyProperties (PhysicalDevice physicaldevice, uint* pqueuefamilypropertycount, QueueFamilyProperties* pqueuefamilyproperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties");
extern fn void getPhysicalDeviceMemoryProperties (PhysicalDevice physicaldevice, PhysicalDeviceMemoryProperties* pmemoryproperties) @extern("vkGetPhysicalDeviceMemoryProperties");
extern fn PFN_vkVoidFunction getInstanceProcAddr (Instance instance, char* pname) @extern("vkGetInstanceProcAddr");
extern fn PFN_vkVoidFunction getDeviceProcAddr (Device device, char* pname) @extern("vkGetDeviceProcAddr");
extern fn void destroyDevice (Device device, AllocationCallbacks* pallocator) @extern("vkDestroyDevice");
extern fn void getDeviceQueue (Device device, uint queuefamilyindex, uint queueindex, Queue* pqueue) @extern("vkGetDeviceQueue");
extern fn void freeMemory (Device device, DeviceMemory memory, AllocationCallbacks* pallocator) @extern("vkFreeMemory");
extern fn void unmapMemory (Device device, DeviceMemory memory) @extern("vkUnmapMemory");
extern fn void getDeviceMemoryCommitment (Device device, DeviceMemory memory, DeviceSize* pcommittedmemoryinbytes) @extern("vkGetDeviceMemoryCommitment");
extern fn void getBufferMemoryRequirements (Device device, Buffer buffer, MemoryRequirements* pmemoryrequirements) @extern("vkGetBufferMemoryRequirements");
extern fn void getImageMemoryRequirements (Device device, Image image, MemoryRequirements* pmemoryrequirements) @extern("vkGetImageMemoryRequirements");
extern fn void getImageSparseMemoryRequirements (Device device, Image image, uint* psparsememoryrequirementcount, SparseImageMemoryRequirements* psparsememoryrequirements) @extern("vkGetImageSparseMemoryRequirements");
extern fn void getPhysicalDeviceSparseImageFormatProperties (PhysicalDevice physicaldevice, Format format, ImageType type, SampleCountFlagBits samples, ImageUsageFlags usage, ImageTiling tiling, uint* ppropertycount, SparseImageFormatProperties* pproperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties");
extern fn void destroyFence (Device device, Fence fence, AllocationCallbacks* pallocator) @extern("vkDestroyFence");
extern fn void destroySemaphore (Device device, Semaphore semaphore, AllocationCallbacks* pallocator) @extern("vkDestroySemaphore");
extern fn void destroyEvent (Device device, Event event, AllocationCallbacks* pallocator) @extern("vkDestroyEvent");
extern fn void destroyQueryPool (Device device, QueryPool querypool, AllocationCallbacks* pallocator) @extern("vkDestroyQueryPool");
extern fn void destroyBuffer (Device device, Buffer buffer, AllocationCallbacks* pallocator) @extern("vkDestroyBuffer");
extern fn void destroyBufferView (Device device, BufferView bufferview, AllocationCallbacks* pallocator) @extern("vkDestroyBufferView");
extern fn void destroyImage (Device device, Image image, AllocationCallbacks* pallocator) @extern("vkDestroyImage");
extern fn void getImageSubresourceLayout (Device device, Image image, ImageSubresource* psubresource, SubresourceLayout* playout) @extern("vkGetImageSubresourceLayout");
extern fn void destroyImageView (Device device, ImageView imageview, AllocationCallbacks* pallocator) @extern("vkDestroyImageView");
extern fn void destroyShaderModule (Device device, ShaderModule shadermodule, AllocationCallbacks* pallocator) @extern("vkDestroyShaderModule");
extern fn void destroyPipelineCache (Device device, PipelineCache pipelinecache, AllocationCallbacks* pallocator) @extern("vkDestroyPipelineCache");
extern fn void destroyPipeline (Device device, Pipeline pipeline, AllocationCallbacks* pallocator) @extern("vkDestroyPipeline");
extern fn void destroyPipelineLayout (Device device, PipelineLayout pipelinelayout, AllocationCallbacks* pallocator) @extern("vkDestroyPipelineLayout");
extern fn void destroySampler (Device device, Sampler sampler, AllocationCallbacks* pallocator) @extern("vkDestroySampler");
extern fn void destroyDescriptorSetLayout (Device device, DescriptorSetLayout descriptorsetlayout, AllocationCallbacks* pallocator) @extern("vkDestroyDescriptorSetLayout");
extern fn void destroyDescriptorPool (Device device, DescriptorPool descriptorpool, AllocationCallbacks* pallocator) @extern("vkDestroyDescriptorPool");
extern fn Result resetDescriptorPool (Device device, DescriptorPool descriptorpool, DescriptorPoolResetFlags flags) @extern("vkResetDescriptorPool");
extern fn Result freeDescriptorSets (Device device, DescriptorPool descriptorpool, uint descriptorsetcount, DescriptorSet* pdescriptorsets) @extern("vkFreeDescriptorSets");
extern fn void updateDescriptorSets (Device device, uint descriptorwritecount, WriteDescriptorSet* pdescriptorwrites, uint descriptorcopycount, CopyDescriptorSet* pdescriptorcopies) @extern("vkUpdateDescriptorSets");
extern fn void destroyFramebuffer (Device device, Framebuffer framebuffer, AllocationCallbacks* pallocator) @extern("vkDestroyFramebuffer");
extern fn void destroyRenderPass (Device device, RenderPass renderpass, AllocationCallbacks* pallocator) @extern("vkDestroyRenderPass");
extern fn void getRenderAreaGranularity (Device device, RenderPass renderpass, Extent2D* pgranularity) @extern("vkGetRenderAreaGranularity");
extern fn void destroyCommandPool (Device device, CommandPool commandpool, AllocationCallbacks* pallocator) @extern("vkDestroyCommandPool");
extern fn void freeCommandBuffers (Device device, CommandPool commandpool, uint commandbuffercount, CommandBuffer* pcommandbuffers) @extern("vkFreeCommandBuffers");
extern fn void cmdBindPipeline (CommandBuffer commandbuffer, PipelineBindPoint pipelinebindpoint, Pipeline pipeline) @extern("vkCmdBindPipeline");
extern fn void cmdSetViewport (CommandBuffer commandbuffer, uint firstviewport, uint viewportcount, Viewport* pviewports) @extern("vkCmdSetViewport");
extern fn void cmdSetScissor (CommandBuffer commandbuffer, uint firstscissor, uint scissorcount, Rect2D* pscissors) @extern("vkCmdSetScissor");
extern fn void cmdSetLineWidth (CommandBuffer commandbuffer, float linewidth) @extern("vkCmdSetLineWidth");
extern fn void cmdSetDepthBias (CommandBuffer commandbuffer, float depthbiasconstantfactor, float depthbiasclamp, float depthbiasslopefactor) @extern("vkCmdSetDepthBias");
extern fn void cmdSetBlendConstants (CommandBuffer commandbuffer, float[4] blendconstants) @extern("vkCmdSetBlendConstants");
extern fn void cmdSetDepthBounds (CommandBuffer commandbuffer, float mindepthbounds, float maxdepthbounds) @extern("vkCmdSetDepthBounds");
extern fn void cmdSetStencilCompareMask (CommandBuffer commandbuffer, StencilFaceFlags facemask, uint comparemask) @extern("vkCmdSetStencilCompareMask");
extern fn void cmdSetStencilWriteMask (CommandBuffer commandbuffer, StencilFaceFlags facemask, uint writemask) @extern("vkCmdSetStencilWriteMask");
extern fn void cmdSetStencilReference (CommandBuffer commandbuffer, StencilFaceFlags facemask, uint reference) @extern("vkCmdSetStencilReference");
extern fn void cmdBindDescriptorSets (CommandBuffer commandbuffer, PipelineBindPoint pipelinebindpoint, PipelineLayout layout, uint firstset, uint descriptorsetcount, DescriptorSet* pdescriptorsets, uint dynamicoffsetcount, uint* pdynamicoffsets) @extern("vkCmdBindDescriptorSets");
extern fn void cmdBindIndexBuffer (CommandBuffer commandbuffer, Buffer buffer, DeviceSize offset, IndexType indextype) @extern("vkCmdBindIndexBuffer");
extern fn void cmdBindVertexBuffers (CommandBuffer commandbuffer, uint firstbinding, uint bindingcount, Buffer* pbuffers, DeviceSize* poffsets) @extern("vkCmdBindVertexBuffers");
extern fn void cmdDraw (CommandBuffer commandbuffer, uint vertexcount, uint instancecount, uint firstvertex, uint firstinstance) @extern("vkCmdDraw");
extern fn void cmdDrawIndexed (CommandBuffer commandbuffer, uint indexcount, uint instancecount, uint firstindex, int vertexoffset, uint firstinstance) @extern("vkCmdDrawIndexed");
extern fn void cmdDrawIndirect (CommandBuffer commandbuffer, Buffer buffer, DeviceSize offset, uint drawcount, uint stride) @extern("vkCmdDrawIndirect");
extern fn void cmdDrawIndexedIndirect (CommandBuffer commandbuffer, Buffer buffer, DeviceSize offset, uint drawcount, uint stride) @extern("vkCmdDrawIndexedIndirect");
extern fn void cmdDispatch (CommandBuffer commandbuffer, uint groupcountx, uint groupcounty, uint groupcountz) @extern("vkCmdDispatch");
extern fn void cmdDispatchIndirect (CommandBuffer commandbuffer, Buffer buffer, DeviceSize offset) @extern("vkCmdDispatchIndirect");
extern fn void cmdCopyBuffer (CommandBuffer commandbuffer, Buffer srcbuffer, Buffer dstbuffer, uint regioncount, BufferCopy* pregions) @extern("vkCmdCopyBuffer");
extern fn void cmdCopyImage (CommandBuffer commandbuffer, Image srcimage, ImageLayout srcimagelayout, Image dstimage, ImageLayout dstimagelayout, uint regioncount, ImageCopy* pregions) @extern("vkCmdCopyImage");
extern fn void cmdBlitImage (CommandBuffer commandbuffer, Image srcimage, ImageLayout srcimagelayout, Image dstimage, ImageLayout dstimagelayout, uint regioncount, ImageBlit* pregions, Filter filter) @extern("vkCmdBlitImage");
extern fn void cmdCopyBufferToImage (CommandBuffer commandbuffer, Buffer srcbuffer, Image dstimage, ImageLayout dstimagelayout, uint regioncount, BufferImageCopy* pregions) @extern("vkCmdCopyBufferToImage");
extern fn void cmdCopyImageToBuffer (CommandBuffer commandbuffer, Image srcimage, ImageLayout srcimagelayout, Buffer dstbuffer, uint regioncount, BufferImageCopy* pregions) @extern("vkCmdCopyImageToBuffer");
extern fn void cmdUpdateBuffer (CommandBuffer commandbuffer, Buffer dstbuffer, DeviceSize dstoffset, DeviceSize datasize, void* pdata) @extern("vkCmdUpdateBuffer");
extern fn void cmdFillBuffer (CommandBuffer commandbuffer, Buffer dstbuffer, DeviceSize dstoffset, DeviceSize size, uint data) @extern("vkCmdFillBuffer");
extern fn void cmdClearColorImage (CommandBuffer commandbuffer, Image image, ImageLayout imagelayout, ClearColorValue* pcolor, uint rangecount, ImageSubresourceRange* pranges) @extern("vkCmdClearColorImage");
extern fn void cmdClearDepthStencilImage (CommandBuffer commandbuffer, Image image, ImageLayout imagelayout, ClearDepthStencilValue* pdepthstencil, uint rangecount, ImageSubresourceRange* pranges) @extern("vkCmdClearDepthStencilImage");
extern fn void cmdClearAttachments (CommandBuffer commandbuffer, uint attachmentcount, ClearAttachment* pattachments, uint rectcount, ClearRect* prects) @extern("vkCmdClearAttachments");
extern fn void cmdResolveImage (CommandBuffer commandbuffer, Image srcimage, ImageLayout srcimagelayout, Image dstimage, ImageLayout dstimagelayout, uint regioncount, ImageResolve* pregions) @extern("vkCmdResolveImage");
extern fn void cmdSetEvent (CommandBuffer commandbuffer, Event event, PipelineStageFlags stagemask) @extern("vkCmdSetEvent");
extern fn void cmdResetEvent (CommandBuffer commandbuffer, Event event, PipelineStageFlags stagemask) @extern("vkCmdResetEvent");
extern fn void cmdWaitEvents (CommandBuffer commandbuffer, uint eventcount, Event* pevents, PipelineStageFlags srcstagemask, PipelineStageFlags dststagemask, uint memorybarriercount, MemoryBarrier* pmemorybarriers, uint buffermemorybarriercount, BufferMemoryBarrier* pbuffermemorybarriers, uint imagememorybarriercount, ImageMemoryBarrier* pimagememorybarriers) @extern("vkCmdWaitEvents");
extern fn void cmdPipelineBarrier (CommandBuffer commandbuffer, PipelineStageFlags srcstagemask, PipelineStageFlags dststagemask, DependencyFlags dependencyflags, uint memorybarriercount, MemoryBarrier* pmemorybarriers, uint buffermemorybarriercount, BufferMemoryBarrier* pbuffermemorybarriers, uint imagememorybarriercount, ImageMemoryBarrier* pimagememorybarriers) @extern("vkCmdPipelineBarrier");
extern fn void cmdBeginQuery (CommandBuffer commandbuffer, QueryPool querypool, uint query, QueryControlFlags flags) @extern("vkCmdBeginQuery");
extern fn void cmdEndQuery (CommandBuffer commandbuffer, QueryPool querypool, uint query) @extern("vkCmdEndQuery");
extern fn void cmdResetQueryPool (CommandBuffer commandbuffer, QueryPool querypool, uint firstquery, uint querycount) @extern("vkCmdResetQueryPool");
extern fn void cmdWriteTimestamp (CommandBuffer commandbuffer, PipelineStageFlagBits pipelinestage, QueryPool querypool, uint query) @extern("vkCmdWriteTimestamp");
extern fn void cmdCopyQueryPoolResults (CommandBuffer commandbuffer, QueryPool querypool, uint firstquery, uint querycount, Buffer dstbuffer, DeviceSize dstoffset, DeviceSize stride, QueryResultFlags flags) @extern("vkCmdCopyQueryPoolResults");
extern fn void cmdPushConstants (CommandBuffer commandbuffer, PipelineLayout layout, ShaderStageFlags stageflags, uint offset, uint size, void* pvalues) @extern("vkCmdPushConstants");
extern fn void cmdBeginRenderPass (CommandBuffer commandbuffer, RenderPassBeginInfo* prenderpassbegin, SubpassContents contents) @extern("vkCmdBeginRenderPass");
extern fn void cmdNextSubpass (CommandBuffer commandbuffer, SubpassContents contents) @extern("vkCmdNextSubpass");
extern fn void cmdEndRenderPass (CommandBuffer commandbuffer) @extern("vkCmdEndRenderPass");
extern fn void cmdExecuteCommands (CommandBuffer commandbuffer, uint commandbuffercount, CommandBuffer* pcommandbuffers) @extern("vkCmdExecuteCommands");
extern fn void getDeviceGroupPeerMemoryFeatures (Device device, uint heapindex, uint localdeviceindex, uint remotedeviceindex, PeerMemoryFeatureFlags* ppeermemoryfeatures) @extern("vkGetDeviceGroupPeerMemoryFeatures");
extern fn void cmdSetDeviceMask (CommandBuffer commandbuffer, uint devicemask) @extern("vkCmdSetDeviceMask");
extern fn void cmdDispatchBase (CommandBuffer commandbuffer, uint basegroupx, uint basegroupy, uint basegroupz, uint groupcountx, uint groupcounty, uint groupcountz) @extern("vkCmdDispatchBase");
extern fn void getImageMemoryRequirements2 (Device device, ImageMemoryRequirementsInfo2* pinfo, MemoryRequirements2* pmemoryrequirements) @extern("vkGetImageMemoryRequirements2");
extern fn void getBufferMemoryRequirements2 (Device device, BufferMemoryRequirementsInfo2* pinfo, MemoryRequirements2* pmemoryrequirements) @extern("vkGetBufferMemoryRequirements2");
extern fn void getImageSparseMemoryRequirements2 (Device device, ImageSparseMemoryRequirementsInfo2* pinfo, uint* psparsememoryrequirementcount, SparseImageMemoryRequirements2* psparsememoryrequirements) @extern("vkGetImageSparseMemoryRequirements2");
extern fn void getPhysicalDeviceFeatures2 (PhysicalDevice physicaldevice, PhysicalDeviceFeatures2* pfeatures) @extern("vkGetPhysicalDeviceFeatures2");
extern fn void getPhysicalDeviceProperties2 (PhysicalDevice physicaldevice, PhysicalDeviceProperties2* pproperties) @extern("vkGetPhysicalDeviceProperties2");
extern fn void getPhysicalDeviceFormatProperties2 (PhysicalDevice physicaldevice, Format format, FormatProperties2* pformatproperties) @extern("vkGetPhysicalDeviceFormatProperties2");
extern fn void getPhysicalDeviceQueueFamilyProperties2 (PhysicalDevice physicaldevice, uint* pqueuefamilypropertycount, QueueFamilyProperties2* pqueuefamilyproperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties2");
extern fn void getPhysicalDeviceMemoryProperties2 (PhysicalDevice physicaldevice, PhysicalDeviceMemoryProperties2* pmemoryproperties) @extern("vkGetPhysicalDeviceMemoryProperties2");
extern fn void getPhysicalDeviceSparseImageFormatProperties2 (PhysicalDevice physicaldevice, PhysicalDeviceSparseImageFormatInfo2* pformatinfo, uint* ppropertycount, SparseImageFormatProperties2* pproperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties2");
extern fn void trimCommandPool (Device device, CommandPool commandpool, CommandPoolTrimFlags flags) @extern("vkTrimCommandPool");
extern fn void getDeviceQueue2 (Device device, DeviceQueueInfo2* pqueueinfo, Queue* pqueue) @extern("vkGetDeviceQueue2");
extern fn void destroySamplerYcbcrConversion (Device device, SamplerYcbcrConversion ycbcrconversion, AllocationCallbacks* pallocator) @extern("vkDestroySamplerYcbcrConversion");
extern fn void destroyDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplate descriptorupdatetemplate, AllocationCallbacks* pallocator) @extern("vkDestroyDescriptorUpdateTemplate");
extern fn void updateDescriptorSetWithTemplate (Device device, DescriptorSet descriptorset, DescriptorUpdateTemplate descriptorupdatetemplate, void* pdata) @extern("vkUpdateDescriptorSetWithTemplate");
extern fn void getPhysicalDeviceExternalBufferProperties (PhysicalDevice physicaldevice, PhysicalDeviceExternalBufferInfo* pexternalbufferinfo, ExternalBufferProperties* pexternalbufferproperties) @extern("vkGetPhysicalDeviceExternalBufferProperties");
extern fn void getPhysicalDeviceExternalFenceProperties (PhysicalDevice physicaldevice, PhysicalDeviceExternalFenceInfo* pexternalfenceinfo, ExternalFenceProperties* pexternalfenceproperties) @extern("vkGetPhysicalDeviceExternalFenceProperties");
extern fn void getPhysicalDeviceExternalSemaphoreProperties (PhysicalDevice physicaldevice, PhysicalDeviceExternalSemaphoreInfo* pexternalsemaphoreinfo, ExternalSemaphoreProperties* pexternalsemaphoreproperties) @extern("vkGetPhysicalDeviceExternalSemaphoreProperties");
extern fn void getDescriptorSetLayoutSupport (Device device, DescriptorSetLayoutCreateInfo* pcreateinfo, DescriptorSetLayoutSupport* psupport) @extern("vkGetDescriptorSetLayoutSupport");
extern fn void cmdDrawIndirectCount (CommandBuffer commandbuffer, Buffer buffer, DeviceSize offset, Buffer countbuffer, DeviceSize countbufferoffset, uint maxdrawcount, uint stride) @extern("vkCmdDrawIndirectCount");
extern fn void cmdDrawIndexedIndirectCount (CommandBuffer commandbuffer, Buffer buffer, DeviceSize offset, Buffer countbuffer, DeviceSize countbufferoffset, uint maxdrawcount, uint stride) @extern("vkCmdDrawIndexedIndirectCount");
extern fn void cmdBeginRenderPass2 (CommandBuffer commandbuffer, RenderPassBeginInfo* prenderpassbegin, SubpassBeginInfo* psubpassbegininfo) @extern("vkCmdBeginRenderPass2");
extern fn void cmdNextSubpass2 (CommandBuffer commandbuffer, SubpassBeginInfo* psubpassbegininfo, SubpassEndInfo* psubpassendinfo) @extern("vkCmdNextSubpass2");
extern fn void cmdEndRenderPass2 (CommandBuffer commandbuffer, SubpassEndInfo* psubpassendinfo) @extern("vkCmdEndRenderPass2");
extern fn void resetQueryPool (Device device, QueryPool querypool, uint firstquery, uint querycount) @extern("vkResetQueryPool");
extern fn DeviceAddress getBufferDeviceAddress (Device device, BufferDeviceAddressInfo* pinfo) @extern("vkGetBufferDeviceAddress");
extern fn ulong getBufferOpaqueCaptureAddress (Device device, BufferDeviceAddressInfo* pinfo) @extern("vkGetBufferOpaqueCaptureAddress");
extern fn ulong getDeviceMemoryOpaqueCaptureAddress (Device device, DeviceMemoryOpaqueCaptureAddressInfo* pinfo) @extern("vkGetDeviceMemoryOpaqueCaptureAddress");
extern fn void destroyPrivateDataSlot (Device device, PrivateDataSlot privatedataslot, AllocationCallbacks* pallocator) @extern("vkDestroyPrivateDataSlot");
extern fn void getPrivateData (Device device, ObjectType objecttype, ulong objecthandle, PrivateDataSlot privatedataslot, ulong* pdata) @extern("vkGetPrivateData");
extern fn void cmdSetEvent2 (CommandBuffer commandbuffer, Event event, DependencyInfo* pdependencyinfo) @extern("vkCmdSetEvent2");
extern fn void cmdResetEvent2 (CommandBuffer commandbuffer, Event event, PipelineStageFlags2 stagemask) @extern("vkCmdResetEvent2");
extern fn void cmdWaitEvents2 (CommandBuffer commandbuffer, uint eventcount, Event* pevents, DependencyInfo* pdependencyinfos) @extern("vkCmdWaitEvents2");
extern fn void cmdPipelineBarrier2 (CommandBuffer commandbuffer, DependencyInfo* pdependencyinfo) @extern("vkCmdPipelineBarrier2");
extern fn void cmdWriteTimestamp2 (CommandBuffer commandbuffer, PipelineStageFlags2 stage, QueryPool querypool, uint query) @extern("vkCmdWriteTimestamp2");
extern fn void cmdCopyBuffer2 (CommandBuffer commandbuffer, CopyBufferInfo2* pcopybufferinfo) @extern("vkCmdCopyBuffer2");
extern fn void cmdCopyImage2 (CommandBuffer commandbuffer, CopyImageInfo2* pcopyimageinfo) @extern("vkCmdCopyImage2");
extern fn void cmdCopyBufferToImage2 (CommandBuffer commandbuffer, CopyBufferToImageInfo2* pcopybuffertoimageinfo) @extern("vkCmdCopyBufferToImage2");
extern fn void cmdCopyImageToBuffer2 (CommandBuffer commandbuffer, CopyImageToBufferInfo2* pcopyimagetobufferinfo) @extern("vkCmdCopyImageToBuffer2");
extern fn void cmdBlitImage2 (CommandBuffer commandbuffer, BlitImageInfo2* pblitimageinfo) @extern("vkCmdBlitImage2");
extern fn void cmdResolveImage2 (CommandBuffer commandbuffer, ResolveImageInfo2* presolveimageinfo) @extern("vkCmdResolveImage2");
extern fn void cmdBeginRendering (CommandBuffer commandbuffer, RenderingInfo* prenderinginfo) @extern("vkCmdBeginRendering");
extern fn void cmdEndRendering (CommandBuffer commandbuffer) @extern("vkCmdEndRendering");
extern fn void cmdSetCullMode (CommandBuffer commandbuffer, CullModeFlags cullmode) @extern("vkCmdSetCullMode");
extern fn void cmdSetFrontFace (CommandBuffer commandbuffer, FrontFace frontface) @extern("vkCmdSetFrontFace");
extern fn void cmdSetPrimitiveTopology (CommandBuffer commandbuffer, PrimitiveTopology primitivetopology) @extern("vkCmdSetPrimitiveTopology");
extern fn void cmdSetViewportWithCount (CommandBuffer commandbuffer, uint viewportcount, Viewport* pviewports) @extern("vkCmdSetViewportWithCount");
extern fn void cmdSetScissorWithCount (CommandBuffer commandbuffer, uint scissorcount, Rect2D* pscissors) @extern("vkCmdSetScissorWithCount");
extern fn void cmdBindVertexBuffers2 (CommandBuffer commandbuffer, uint firstbinding, uint bindingcount, Buffer* pbuffers, DeviceSize* poffsets, DeviceSize* psizes, DeviceSize* pstrides) @extern("vkCmdBindVertexBuffers2");
extern fn void cmdSetDepthTestEnable (CommandBuffer commandbuffer, Bool32 depthtestenable) @extern("vkCmdSetDepthTestEnable");
extern fn void cmdSetDepthWriteEnable (CommandBuffer commandbuffer, Bool32 depthwriteenable) @extern("vkCmdSetDepthWriteEnable");
extern fn void cmdSetDepthCompareOp (CommandBuffer commandbuffer, CompareOp depthcompareop) @extern("vkCmdSetDepthCompareOp");
extern fn void cmdSetDepthBoundsTestEnable (CommandBuffer commandbuffer, Bool32 depthboundstestenable) @extern("vkCmdSetDepthBoundsTestEnable");
extern fn void cmdSetStencilTestEnable (CommandBuffer commandbuffer, Bool32 stenciltestenable) @extern("vkCmdSetStencilTestEnable");
extern fn void cmdSetStencilOp (CommandBuffer commandbuffer, StencilFaceFlags facemask, StencilOp failop, StencilOp passop, StencilOp depthfailop, CompareOp compareop) @extern("vkCmdSetStencilOp");
extern fn void cmdSetRasterizerDiscardEnable (CommandBuffer commandbuffer, Bool32 rasterizerdiscardenable) @extern("vkCmdSetRasterizerDiscardEnable");
extern fn void cmdSetDepthBiasEnable (CommandBuffer commandbuffer, Bool32 depthbiasenable) @extern("vkCmdSetDepthBiasEnable");
extern fn void cmdSetPrimitiveRestartEnable (CommandBuffer commandbuffer, Bool32 primitiverestartenable) @extern("vkCmdSetPrimitiveRestartEnable");
extern fn void getDeviceBufferMemoryRequirements (Device device, DeviceBufferMemoryRequirements* pinfo, MemoryRequirements2* pmemoryrequirements) @extern("vkGetDeviceBufferMemoryRequirements");
extern fn void getDeviceImageMemoryRequirements (Device device, DeviceImageMemoryRequirements* pinfo, MemoryRequirements2* pmemoryrequirements) @extern("vkGetDeviceImageMemoryRequirements");
extern fn void getDeviceImageSparseMemoryRequirements (Device device, DeviceImageMemoryRequirements* pinfo, uint* psparsememoryrequirementcount, SparseImageMemoryRequirements2* psparsememoryrequirements) @extern("vkGetDeviceImageSparseMemoryRequirements");
extern fn Result vkCreateInstance (InstanceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Instance* pinstance) @extern("vkCreateInstance");
extern fn Result vkEnumeratePhysicalDevices (Instance instance, uint* pphysicaldevicecount, PhysicalDevice* pphysicaldevices) @extern("vkEnumeratePhysicalDevices");
extern fn Result vkGetPhysicalDeviceImageFormatProperties (PhysicalDevice physicaldevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pimageformatproperties) @extern("vkGetPhysicalDeviceImageFormatProperties");
extern fn Result vkCreateDevice (PhysicalDevice physicaldevice, DeviceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Device* pdevice) @extern("vkCreateDevice");
extern fn Result vkEnumerateInstanceExtensionProperties (char* playername, uint* ppropertycount, ExtensionProperties* pproperties) @extern("vkEnumerateInstanceExtensionProperties");
extern fn Result vkEnumerateDeviceExtensionProperties (PhysicalDevice physicaldevice, char* playername, uint* ppropertycount, ExtensionProperties* pproperties) @extern("vkEnumerateDeviceExtensionProperties");
extern fn Result vkEnumerateInstanceLayerProperties (uint* ppropertycount, LayerProperties* pproperties) @extern("vkEnumerateInstanceLayerProperties");
extern fn Result vkEnumerateDeviceLayerProperties (PhysicalDevice physicaldevice, uint* ppropertycount, LayerProperties* pproperties) @extern("vkEnumerateDeviceLayerProperties");
extern fn Result vkQueueSubmit (Queue queue, uint submitcount, SubmitInfo* psubmits, Fence fence) @extern("vkQueueSubmit");
extern fn Result vkQueueWaitIdle (Queue queue) @extern("vkQueueWaitIdle");
extern fn Result vkDeviceWaitIdle (Device device) @extern("vkDeviceWaitIdle");
extern fn Result vkAllocateMemory (Device device, MemoryAllocateInfo* pallocateinfo, AllocationCallbacks* pallocator, DeviceMemory* pmemory) @extern("vkAllocateMemory");
extern fn Result vkMapMemory (Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void* ppdata) @extern("vkMapMemory");
extern fn Result vkFlushMappedMemoryRanges (Device device, uint memoryrangecount, MappedMemoryRange* pmemoryranges) @extern("vkFlushMappedMemoryRanges");
extern fn Result vkInvalidateMappedMemoryRanges (Device device, uint memoryrangecount, MappedMemoryRange* pmemoryranges) @extern("vkInvalidateMappedMemoryRanges");
extern fn Result vkBindBufferMemory (Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryoffset) @extern("vkBindBufferMemory");
extern fn Result vkBindImageMemory (Device device, Image image, DeviceMemory memory, DeviceSize memoryoffset) @extern("vkBindImageMemory");
extern fn Result vkQueueBindSparse (Queue queue, uint bindinfocount, BindSparseInfo* pbindinfo, Fence fence) @extern("vkQueueBindSparse");
extern fn Result vkCreateFence (Device device, FenceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Fence* pfence) @extern("vkCreateFence");
extern fn Result vkResetFences (Device device, uint fencecount, Fence* pfences) @extern("vkResetFences");
extern fn Result vkGetFenceStatus (Device device, Fence fence) @extern("vkGetFenceStatus");
extern fn Result vkWaitForFences (Device device, uint fencecount, Fence* pfences, Bool32 waitall, ulong timeout) @extern("vkWaitForFences");
extern fn Result vkCreateSemaphore (Device device, SemaphoreCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Semaphore* psemaphore) @extern("vkCreateSemaphore");
extern fn Result vkCreateEvent (Device device, EventCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Event* pevent) @extern("vkCreateEvent");
extern fn Result vkGetEventStatus (Device device, Event event) @extern("vkGetEventStatus");
extern fn Result vkSetEvent (Device device, Event event) @extern("vkSetEvent");
extern fn Result vkResetEvent (Device device, Event event) @extern("vkResetEvent");
extern fn Result vkCreateQueryPool (Device device, QueryPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, QueryPool* pquerypool) @extern("vkCreateQueryPool");
extern fn Result vkGetQueryPoolResults (Device device, QueryPool querypool, uint firstquery, uint querycount, usz datasize, void* pdata, DeviceSize stride, QueryResultFlags flags) @extern("vkGetQueryPoolResults");
extern fn Result vkCreateBuffer (Device device, BufferCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Buffer* pbuffer) @extern("vkCreateBuffer");
extern fn Result vkCreateBufferView (Device device, BufferViewCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, BufferView* pview) @extern("vkCreateBufferView");
extern fn Result vkCreateImage (Device device, ImageCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Image* pimage) @extern("vkCreateImage");
extern fn Result vkCreateImageView (Device device, ImageViewCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, ImageView* pview) @extern("vkCreateImageView");
extern fn Result vkCreateShaderModule (Device device, ShaderModuleCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, ShaderModule* pshadermodule) @extern("vkCreateShaderModule");
extern fn Result vkCreatePipelineCache (Device device, PipelineCacheCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PipelineCache* ppipelinecache) @extern("vkCreatePipelineCache");
extern fn Result vkGetPipelineCacheData (Device device, PipelineCache pipelinecache, usz* pdatasize, void* pdata) @extern("vkGetPipelineCacheData");
extern fn Result vkMergePipelineCaches (Device device, PipelineCache dstcache, uint srccachecount, PipelineCache* psrccaches) @extern("vkMergePipelineCaches");
extern fn Result vkCreateGraphicsPipelines (Device device, PipelineCache pipelinecache, uint createinfocount, GraphicsPipelineCreateInfo* pcreateinfos, AllocationCallbacks* pallocator, Pipeline* ppipelines) @extern("vkCreateGraphicsPipelines");
extern fn Result vkCreateComputePipelines (Device device, PipelineCache pipelinecache, uint createinfocount, ComputePipelineCreateInfo* pcreateinfos, AllocationCallbacks* pallocator, Pipeline* ppipelines) @extern("vkCreateComputePipelines");
extern fn Result vkCreatePipelineLayout (Device device, PipelineLayoutCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PipelineLayout* ppipelinelayout) @extern("vkCreatePipelineLayout");
extern fn Result vkCreateSampler (Device device, SamplerCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Sampler* psampler) @extern("vkCreateSampler");
extern fn Result vkCreateDescriptorSetLayout (Device device, DescriptorSetLayoutCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorSetLayout* psetlayout) @extern("vkCreateDescriptorSetLayout");
extern fn Result vkCreateDescriptorPool (Device device, DescriptorPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorPool* pdescriptorpool) @extern("vkCreateDescriptorPool");
extern fn Result vkAllocateDescriptorSets (Device device, DescriptorSetAllocateInfo* pallocateinfo, DescriptorSet* pdescriptorsets) @extern("vkAllocateDescriptorSets");
extern fn Result vkCreateFramebuffer (Device device, FramebufferCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Framebuffer* pframebuffer) @extern("vkCreateFramebuffer");
extern fn Result vkCreateRenderPass (Device device, RenderPassCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, RenderPass* prenderpass) @extern("vkCreateRenderPass");
extern fn Result vkCreateCommandPool (Device device, CommandPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, CommandPool* pcommandpool) @extern("vkCreateCommandPool");
extern fn Result vkResetCommandPool (Device device, CommandPool commandpool, CommandPoolResetFlags flags) @extern("vkResetCommandPool");
extern fn Result vkAllocateCommandBuffers (Device device, CommandBufferAllocateInfo* pallocateinfo, CommandBuffer* pcommandbuffers) @extern("vkAllocateCommandBuffers");
extern fn Result vkBeginCommandBuffer (CommandBuffer commandbuffer, CommandBufferBeginInfo* pbegininfo) @extern("vkBeginCommandBuffer");
extern fn Result vkEndCommandBuffer (CommandBuffer commandbuffer) @extern("vkEndCommandBuffer");
extern fn Result vkResetCommandBuffer (CommandBuffer commandbuffer, CommandBufferResetFlags flags) @extern("vkResetCommandBuffer");
extern fn Result vkEnumerateInstanceVersion (uint* papiversion) @extern("vkEnumerateInstanceVersion");
extern fn Result vkBindBufferMemory2 (Device device, uint bindinfocount, BindBufferMemoryInfo* pbindinfos) @extern("vkBindBufferMemory2");
extern fn Result vkBindImageMemory2 (Device device, uint bindinfocount, BindImageMemoryInfo* pbindinfos) @extern("vkBindImageMemory2");
extern fn Result vkEnumeratePhysicalDeviceGroups (Instance instance, uint* pphysicaldevicegroupcount, PhysicalDeviceGroupProperties* pphysicaldevicegroupproperties) @extern("vkEnumeratePhysicalDeviceGroups");
extern fn Result vkGetPhysicalDeviceImageFormatProperties2 (PhysicalDevice physicaldevice, PhysicalDeviceImageFormatInfo2* pimageformatinfo, ImageFormatProperties2* pimageformatproperties) @extern("vkGetPhysicalDeviceImageFormatProperties2");
extern fn Result vkCreateSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, SamplerYcbcrConversion* pycbcrconversion) @extern("vkCreateSamplerYcbcrConversion");
extern fn Result vkCreateDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplateCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorUpdateTemplate* pdescriptorupdatetemplate) @extern("vkCreateDescriptorUpdateTemplate");
extern fn Result vkCreateRenderPass2 (Device device, RenderPassCreateInfo2* pcreateinfo, AllocationCallbacks* pallocator, RenderPass* prenderpass) @extern("vkCreateRenderPass2");
extern fn Result vkGetSemaphoreCounterValue (Device device, Semaphore semaphore, ulong* pvalue) @extern("vkGetSemaphoreCounterValue");
extern fn Result vkWaitSemaphores (Device device, SemaphoreWaitInfo* pwaitinfo, ulong timeout) @extern("vkWaitSemaphores");
extern fn Result vkSignalSemaphore (Device device, SemaphoreSignalInfo* psignalinfo) @extern("vkSignalSemaphore");
extern fn Result vkGetPhysicalDeviceToolProperties (PhysicalDevice physicaldevice, uint* ptoolcount, PhysicalDeviceToolProperties* ptoolproperties) @extern("vkGetPhysicalDeviceToolProperties");
extern fn Result vkCreatePrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PrivateDataSlot* pprivatedataslot) @extern("vkCreatePrivateDataSlot");
extern fn Result vkSetPrivateData (Device device, ObjectType objecttype, ulong objecthandle, PrivateDataSlot privatedataslot, ulong data) @extern("vkSetPrivateData");
extern fn Result vkQueueSubmit2 (Queue queue, uint submitcount, SubmitInfo2* psubmits, Fence fence) @extern("vkQueueSubmit2");
fn void! createInstance (InstanceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Instance* pinstance) {
  Result result = vkCreateInstance(pcreateinfo, pallocator, pinstance);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
    case ERROR_LAYER_NOT_PRESENT: 
        return VkErrors.ERROR_LAYER_NOT_PRESENT?;
    case ERROR_EXTENSION_NOT_PRESENT: 
        return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
    case ERROR_INCOMPATIBLE_DRIVER: 
        return VkErrors.ERROR_INCOMPATIBLE_DRIVER?;
  }
}
fn void! enumeratePhysicalDevices (Instance instance, uint* pphysicaldevicecount, PhysicalDevice* pphysicaldevices) {
  Result result = vkEnumeratePhysicalDevices(instance, pphysicaldevicecount, pphysicaldevices);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties (PhysicalDevice physicaldevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pimageformatproperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties(physicaldevice, format, type, tiling, usage, flags, pimageformatproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FORMAT_NOT_SUPPORTED: 
        return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createDevice (PhysicalDevice physicaldevice, DeviceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Device* pdevice) {
  Result result = vkCreateDevice(physicaldevice, pcreateinfo, pallocator, pdevice);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
    case ERROR_EXTENSION_NOT_PRESENT: 
        return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
    case ERROR_FEATURE_NOT_PRESENT: 
        return VkErrors.ERROR_FEATURE_NOT_PRESENT?;
    case ERROR_TOO_MANY_OBJECTS: 
        return VkErrors.ERROR_TOO_MANY_OBJECTS?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! enumerateInstanceExtensionProperties (char* playername, uint* ppropertycount, ExtensionProperties* pproperties) {
  Result result = vkEnumerateInstanceExtensionProperties(playername, ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_LAYER_NOT_PRESENT: 
        return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! enumerateDeviceExtensionProperties (PhysicalDevice physicaldevice, char* playername, uint* ppropertycount, ExtensionProperties* pproperties) {
  Result result = vkEnumerateDeviceExtensionProperties(physicaldevice, playername, ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_LAYER_NOT_PRESENT: 
        return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! enumerateInstanceLayerProperties (uint* ppropertycount, LayerProperties* pproperties) {
  Result result = vkEnumerateInstanceLayerProperties(ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateDeviceLayerProperties (PhysicalDevice physicaldevice, uint* ppropertycount, LayerProperties* pproperties) {
  Result result = vkEnumerateDeviceLayerProperties(physicaldevice, ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! queueSubmit (Queue queue, uint submitcount, SubmitInfo* psubmits, Fence fence) {
  Result result = vkQueueSubmit(queue, submitcount, psubmits, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! queueWaitIdle (Queue queue) {
  Result result = vkQueueWaitIdle(queue);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! deviceWaitIdle (Device device) {
  Result result = vkDeviceWaitIdle(device);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! allocateMemory (Device device, MemoryAllocateInfo* pallocateinfo, AllocationCallbacks* pallocator, DeviceMemory* pmemory) {
  Result result = vkAllocateMemory(device, pallocateinfo, pallocator, pmemory);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INVALID_EXTERNAL_HANDLE: 
        return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! mapMemory (Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void* ppdata) {
  Result result = vkMapMemory(device, memory, offset, size, flags, ppdata);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_MEMORY_MAP_FAILED: 
        return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! flushMappedMemoryRanges (Device device, uint memoryrangecount, MappedMemoryRange* pmemoryranges) {
  Result result = vkFlushMappedMemoryRanges(device, memoryrangecount, pmemoryranges);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! invalidateMappedMemoryRanges (Device device, uint memoryrangecount, MappedMemoryRange* pmemoryranges) {
  Result result = vkInvalidateMappedMemoryRanges(device, memoryrangecount, pmemoryranges);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindBufferMemory (Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryoffset) {
  Result result = vkBindBufferMemory(device, buffer, memory, memoryoffset);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindImageMemory (Device device, Image image, DeviceMemory memory, DeviceSize memoryoffset) {
  Result result = vkBindImageMemory(device, image, memory, memoryoffset);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! queueBindSparse (Queue queue, uint bindinfocount, BindSparseInfo* pbindinfo, Fence fence) {
  Result result = vkQueueBindSparse(queue, bindinfocount, pbindinfo, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createFence (Device device, FenceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Fence* pfence) {
  Result result = vkCreateFence(device, pcreateinfo, pallocator, pfence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetFences (Device device, uint fencecount, Fence* pfences) {
  Result result = vkResetFences(device, fencecount, pfences);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getFenceStatus (Device device, Fence fence) {
  Result result = vkGetFenceStatus(device, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitForFences (Device device, uint fencecount, Fence* pfences, Bool32 waitall, ulong timeout) {
  Result result = vkWaitForFences(device, fencecount, pfences, waitall, timeout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createSemaphore (Device device, SemaphoreCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Semaphore* psemaphore) {
  Result result = vkCreateSemaphore(device, pcreateinfo, pallocator, psemaphore);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createEvent (Device device, EventCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Event* pevent) {
  Result result = vkCreateEvent(device, pcreateinfo, pallocator, pevent);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getEventStatus (Device device, Event event) {
  Result result = vkGetEventStatus(device, event);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! setEvent (Device device, Event event) {
  Result result = vkSetEvent(device, event);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetEvent (Device device, Event event) {
  Result result = vkResetEvent(device, event);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createQueryPool (Device device, QueryPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, QueryPool* pquerypool) {
  Result result = vkCreateQueryPool(device, pcreateinfo, pallocator, pquerypool);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getQueryPoolResults (Device device, QueryPool querypool, uint firstquery, uint querycount, usz datasize, void* pdata, DeviceSize stride, QueryResultFlags flags) {
  Result result = vkGetQueryPoolResults(device, querypool, firstquery, querycount, datasize, pdata, stride, flags);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createBuffer (Device device, BufferCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Buffer* pbuffer) {
  Result result = vkCreateBuffer(device, pcreateinfo, pallocator, pbuffer);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createBufferView (Device device, BufferViewCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, BufferView* pview) {
  Result result = vkCreateBufferView(device, pcreateinfo, pallocator, pview);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImage (Device device, ImageCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Image* pimage) {
  Result result = vkCreateImage(device, pcreateinfo, pallocator, pimage);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImageView (Device device, ImageViewCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, ImageView* pview) {
  Result result = vkCreateImageView(device, pcreateinfo, pallocator, pview);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createShaderModule (Device device, ShaderModuleCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, ShaderModule* pshadermodule) {
  Result result = vkCreateShaderModule(device, pcreateinfo, pallocator, pshadermodule);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createPipelineCache (Device device, PipelineCacheCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PipelineCache* ppipelinecache) {
  Result result = vkCreatePipelineCache(device, pcreateinfo, pallocator, ppipelinecache);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelineCacheData (Device device, PipelineCache pipelinecache, usz* pdatasize, void* pdata) {
  Result result = vkGetPipelineCacheData(device, pipelinecache, pdatasize, pdata);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! mergePipelineCaches (Device device, PipelineCache dstcache, uint srccachecount, PipelineCache* psrccaches) {
  Result result = vkMergePipelineCaches(device, dstcache, srccachecount, psrccaches);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createGraphicsPipelines (Device device, PipelineCache pipelinecache, uint createinfocount, GraphicsPipelineCreateInfo* pcreateinfos, AllocationCallbacks* pallocator, Pipeline* ppipelines) {
  Result result = vkCreateGraphicsPipelines(device, pipelinecache, createinfocount, pcreateinfos, pallocator, ppipelines);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createComputePipelines (Device device, PipelineCache pipelinecache, uint createinfocount, ComputePipelineCreateInfo* pcreateinfos, AllocationCallbacks* pallocator, Pipeline* ppipelines) {
  Result result = vkCreateComputePipelines(device, pipelinecache, createinfocount, pcreateinfos, pallocator, ppipelines);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createPipelineLayout (Device device, PipelineLayoutCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PipelineLayout* ppipelinelayout) {
  Result result = vkCreatePipelineLayout(device, pcreateinfo, pallocator, ppipelinelayout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createSampler (Device device, SamplerCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Sampler* psampler) {
  Result result = vkCreateSampler(device, pcreateinfo, pallocator, psampler);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorSetLayout (Device device, DescriptorSetLayoutCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorSetLayout* psetlayout) {
  Result result = vkCreateDescriptorSetLayout(device, pcreateinfo, pallocator, psetlayout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorPool (Device device, DescriptorPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorPool* pdescriptorpool) {
  Result result = vkCreateDescriptorPool(device, pcreateinfo, pallocator, pdescriptorpool);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! allocateDescriptorSets (Device device, DescriptorSetAllocateInfo* pallocateinfo, DescriptorSet* pdescriptorsets) {
  Result result = vkAllocateDescriptorSets(device, pallocateinfo, pdescriptorsets);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FRAGMENTED_POOL: 
        return VkErrors.ERROR_FRAGMENTED_POOL?;
    case ERROR_OUT_OF_POOL_MEMORY: 
        return VkErrors.ERROR_OUT_OF_POOL_MEMORY?;
  }
}
fn void! createFramebuffer (Device device, FramebufferCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Framebuffer* pframebuffer) {
  Result result = vkCreateFramebuffer(device, pcreateinfo, pallocator, pframebuffer);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRenderPass (Device device, RenderPassCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, RenderPass* prenderpass) {
  Result result = vkCreateRenderPass(device, pcreateinfo, pallocator, prenderpass);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createCommandPool (Device device, CommandPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, CommandPool* pcommandpool) {
  Result result = vkCreateCommandPool(device, pcreateinfo, pallocator, pcommandpool);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetCommandPool (Device device, CommandPool commandpool, CommandPoolResetFlags flags) {
  Result result = vkResetCommandPool(device, commandpool, flags);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! allocateCommandBuffers (Device device, CommandBufferAllocateInfo* pallocateinfo, CommandBuffer* pcommandbuffers) {
  Result result = vkAllocateCommandBuffers(device, pallocateinfo, pcommandbuffers);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! beginCommandBuffer (CommandBuffer commandbuffer, CommandBufferBeginInfo* pbegininfo) {
  Result result = vkBeginCommandBuffer(commandbuffer, pbegininfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! endCommandBuffer (CommandBuffer commandbuffer) {
  Result result = vkEndCommandBuffer(commandbuffer);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetCommandBuffer (CommandBuffer commandbuffer, CommandBufferResetFlags flags) {
  Result result = vkResetCommandBuffer(commandbuffer, flags);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateInstanceVersion (uint* papiversion) {
  Result result = vkEnumerateInstanceVersion(papiversion);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! bindBufferMemory2 (Device device, uint bindinfocount, BindBufferMemoryInfo* pbindinfos) {
  Result result = vkBindBufferMemory2(device, bindinfocount, pbindinfos);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindImageMemory2 (Device device, uint bindinfocount, BindImageMemoryInfo* pbindinfos) {
  Result result = vkBindImageMemory2(device, bindinfocount, pbindinfos);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumeratePhysicalDeviceGroups (Instance instance, uint* pphysicaldevicegroupcount, PhysicalDeviceGroupProperties* pphysicaldevicegroupproperties) {
  Result result = vkEnumeratePhysicalDeviceGroups(instance, pphysicaldevicegroupcount, pphysicaldevicegroupproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties2 (PhysicalDevice physicaldevice, PhysicalDeviceImageFormatInfo2* pimageformatinfo, ImageFormatProperties2* pimageformatproperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties2(physicaldevice, pimageformatinfo, pimageformatproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FORMAT_NOT_SUPPORTED: 
        return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, SamplerYcbcrConversion* pycbcrconversion) {
  Result result = vkCreateSamplerYcbcrConversion(device, pcreateinfo, pallocator, pycbcrconversion);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplateCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorUpdateTemplate* pdescriptorupdatetemplate) {
  Result result = vkCreateDescriptorUpdateTemplate(device, pcreateinfo, pallocator, pdescriptorupdatetemplate);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRenderPass2 (Device device, RenderPassCreateInfo2* pcreateinfo, AllocationCallbacks* pallocator, RenderPass* prenderpass) {
  Result result = vkCreateRenderPass2(device, pcreateinfo, pallocator, prenderpass);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSemaphoreCounterValue (Device device, Semaphore semaphore, ulong* pvalue) {
  Result result = vkGetSemaphoreCounterValue(device, semaphore, pvalue);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitSemaphores (Device device, SemaphoreWaitInfo* pwaitinfo, ulong timeout) {
  Result result = vkWaitSemaphores(device, pwaitinfo, timeout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! signalSemaphore (Device device, SemaphoreSignalInfo* psignalinfo) {
  Result result = vkSignalSemaphore(device, psignalinfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceToolProperties (PhysicalDevice physicaldevice, uint* ptoolcount, PhysicalDeviceToolProperties* ptoolproperties) {
  Result result = vkGetPhysicalDeviceToolProperties(physicaldevice, ptoolcount, ptoolproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createPrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PrivateDataSlot* pprivatedataslot) {
  Result result = vkCreatePrivateDataSlot(device, pcreateinfo, pallocator, pprivatedataslot);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! setPrivateData (Device device, ObjectType objecttype, ulong objecthandle, PrivateDataSlot privatedataslot, ulong data) {
  Result result = vkSetPrivateData(device, objecttype, objecthandle, privatedataslot, data);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! queueSubmit2 (Queue queue, uint submitcount, SubmitInfo2* psubmits, Fence fence) {
  Result result = vkQueueSubmit2(queue, submitcount, psubmits, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
struct VK_extension_bindings {
 PFN_DestroySurfaceKHR destroySurfaceKHR;
 PFN_GetPhysicalDeviceSurfaceSupportKHR getPhysicalDeviceSurfaceSupportKHR;
 PFN_GetPhysicalDeviceSurfaceCapabilitiesKHR getPhysicalDeviceSurfaceCapabilitiesKHR;
 PFN_GetPhysicalDeviceSurfaceFormatsKHR getPhysicalDeviceSurfaceFormatsKHR;
 PFN_GetPhysicalDeviceSurfacePresentModesKHR getPhysicalDeviceSurfacePresentModesKHR;
 PFN_CreateXcbSurfaceKHR createXcbSurfaceKHR;
 PFN_GetPhysicalDeviceXcbPresentationSupportKHR getPhysicalDeviceXcbPresentationSupportKHR;
 PFN_CreateSwapchainKHR createSwapchainKHR;
 PFN_DestroySwapchainKHR destroySwapchainKHR;
 PFN_GetSwapchainImagesKHR getSwapchainImagesKHR;
 PFN_AcquireNextImageKHR acquireNextImageKHR;
 PFN_QueuePresentKHR queuePresentKHR;
 PFN_GetDeviceGroupPresentCapabilitiesKHR getDeviceGroupPresentCapabilitiesKHR;
 PFN_GetDeviceGroupSurfacePresentModesKHR getDeviceGroupSurfacePresentModesKHR;
 PFN_GetPhysicalDevicePresentRectanglesKHR getPhysicalDevicePresentRectanglesKHR;
 PFN_AcquireNextImage2KHR acquireNextImage2KHR;
 PFN_GetPhysicalDeviceDisplayPropertiesKHR getPhysicalDeviceDisplayPropertiesKHR;
 PFN_GetPhysicalDeviceDisplayPlanePropertiesKHR getPhysicalDeviceDisplayPlanePropertiesKHR;
 PFN_GetDisplayPlaneSupportedDisplaysKHR getDisplayPlaneSupportedDisplaysKHR;
 PFN_GetDisplayModePropertiesKHR getDisplayModePropertiesKHR;
 PFN_CreateDisplayModeKHR createDisplayModeKHR;
 PFN_GetDisplayPlaneCapabilitiesKHR getDisplayPlaneCapabilitiesKHR;
 PFN_CreateDisplayPlaneSurfaceKHR createDisplayPlaneSurfaceKHR;
 PFN_CmdPushDescriptorSetKHR cmdPushDescriptorSetKHR;
 PFN_CmdPushDescriptorSetWithTemplateKHR cmdPushDescriptorSetWithTemplateKHR;
 PFN_CreateDebugReportCallbackEXT createDebugReportCallbackEXT;
 PFN_DestroyDebugReportCallbackEXT destroyDebugReportCallbackEXT;
 PFN_DebugReportMessageEXT debugReportMessageEXT;
 PFN_SetDebugUtilsObjectNameEXT setDebugUtilsObjectNameEXT;
 PFN_SetDebugUtilsObjectTagEXT setDebugUtilsObjectTagEXT;
 PFN_QueueBeginDebugUtilsLabelEXT queueBeginDebugUtilsLabelEXT;
 PFN_QueueEndDebugUtilsLabelEXT queueEndDebugUtilsLabelEXT;
 PFN_QueueInsertDebugUtilsLabelEXT queueInsertDebugUtilsLabelEXT;
 PFN_CmdBeginDebugUtilsLabelEXT cmdBeginDebugUtilsLabelEXT;
 PFN_CmdEndDebugUtilsLabelEXT cmdEndDebugUtilsLabelEXT;
 PFN_CmdInsertDebugUtilsLabelEXT cmdInsertDebugUtilsLabelEXT;
 PFN_CreateDebugUtilsMessengerEXT createDebugUtilsMessengerEXT;
 PFN_DestroyDebugUtilsMessengerEXT destroyDebugUtilsMessengerEXT;
 PFN_SubmitDebugUtilsMessageEXT submitDebugUtilsMessageEXT;
}
VK_extension_bindings extensions;
fn void loadExtensions(Instance instance) {
  extensions.destroySurfaceKHR = (PFN_DestroySurfaceKHR)getInstanceProcAddr(instance, "vkDestroySurfaceKHR");
  extensions.getPhysicalDeviceSurfaceSupportKHR = (PFN_GetPhysicalDeviceSurfaceSupportKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR");
  extensions.getPhysicalDeviceSurfaceCapabilitiesKHR = (PFN_GetPhysicalDeviceSurfaceCapabilitiesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
  extensions.getPhysicalDeviceSurfaceFormatsKHR = (PFN_GetPhysicalDeviceSurfaceFormatsKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR");
  extensions.getPhysicalDeviceSurfacePresentModesKHR = (PFN_GetPhysicalDeviceSurfacePresentModesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR");
  extensions.createXcbSurfaceKHR = (PFN_CreateXcbSurfaceKHR)getInstanceProcAddr(instance, "vkCreateXcbSurfaceKHR");
  extensions.getPhysicalDeviceXcbPresentationSupportKHR = (PFN_GetPhysicalDeviceXcbPresentationSupportKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceXcbPresentationSupportKHR");
  extensions.createSwapchainKHR = (PFN_CreateSwapchainKHR)getInstanceProcAddr(instance, "vkCreateSwapchainKHR");
  extensions.destroySwapchainKHR = (PFN_DestroySwapchainKHR)getInstanceProcAddr(instance, "vkDestroySwapchainKHR");
  extensions.getSwapchainImagesKHR = (PFN_GetSwapchainImagesKHR)getInstanceProcAddr(instance, "vkGetSwapchainImagesKHR");
  extensions.acquireNextImageKHR = (PFN_AcquireNextImageKHR)getInstanceProcAddr(instance, "vkAcquireNextImageKHR");
  extensions.queuePresentKHR = (PFN_QueuePresentKHR)getInstanceProcAddr(instance, "vkQueuePresentKHR");
  extensions.getDeviceGroupPresentCapabilitiesKHR = (PFN_GetDeviceGroupPresentCapabilitiesKHR)getInstanceProcAddr(instance, "vkGetDeviceGroupPresentCapabilitiesKHR");
  extensions.getDeviceGroupSurfacePresentModesKHR = (PFN_GetDeviceGroupSurfacePresentModesKHR)getInstanceProcAddr(instance, "vkGetDeviceGroupSurfacePresentModesKHR");
  extensions.getPhysicalDevicePresentRectanglesKHR = (PFN_GetPhysicalDevicePresentRectanglesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDevicePresentRectanglesKHR");
  extensions.acquireNextImage2KHR = (PFN_AcquireNextImage2KHR)getInstanceProcAddr(instance, "vkAcquireNextImage2KHR");
  extensions.getPhysicalDeviceDisplayPropertiesKHR = (PFN_GetPhysicalDeviceDisplayPropertiesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPropertiesKHR");
  extensions.getPhysicalDeviceDisplayPlanePropertiesKHR = (PFN_GetPhysicalDeviceDisplayPlanePropertiesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR");
  extensions.getDisplayPlaneSupportedDisplaysKHR = (PFN_GetDisplayPlaneSupportedDisplaysKHR)getInstanceProcAddr(instance, "vkGetDisplayPlaneSupportedDisplaysKHR");
  extensions.getDisplayModePropertiesKHR = (PFN_GetDisplayModePropertiesKHR)getInstanceProcAddr(instance, "vkGetDisplayModePropertiesKHR");
  extensions.createDisplayModeKHR = (PFN_CreateDisplayModeKHR)getInstanceProcAddr(instance, "vkCreateDisplayModeKHR");
  extensions.getDisplayPlaneCapabilitiesKHR = (PFN_GetDisplayPlaneCapabilitiesKHR)getInstanceProcAddr(instance, "vkGetDisplayPlaneCapabilitiesKHR");
  extensions.createDisplayPlaneSurfaceKHR = (PFN_CreateDisplayPlaneSurfaceKHR)getInstanceProcAddr(instance, "vkCreateDisplayPlaneSurfaceKHR");
  extensions.cmdPushDescriptorSetKHR = (PFN_CmdPushDescriptorSetKHR)getInstanceProcAddr(instance, "vkCmdPushDescriptorSetKHR");
  extensions.cmdPushDescriptorSetWithTemplateKHR = (PFN_CmdPushDescriptorSetWithTemplateKHR)getInstanceProcAddr(instance, "vkCmdPushDescriptorSetWithTemplateKHR");
  extensions.createDebugReportCallbackEXT = (PFN_CreateDebugReportCallbackEXT)getInstanceProcAddr(instance, "vkCreateDebugReportCallbackEXT");
  extensions.destroyDebugReportCallbackEXT = (PFN_DestroyDebugReportCallbackEXT)getInstanceProcAddr(instance, "vkDestroyDebugReportCallbackEXT");
  extensions.debugReportMessageEXT = (PFN_DebugReportMessageEXT)getInstanceProcAddr(instance, "vkDebugReportMessageEXT");
  extensions.setDebugUtilsObjectNameEXT = (PFN_SetDebugUtilsObjectNameEXT)getInstanceProcAddr(instance, "vkSetDebugUtilsObjectNameEXT");
  extensions.setDebugUtilsObjectTagEXT = (PFN_SetDebugUtilsObjectTagEXT)getInstanceProcAddr(instance, "vkSetDebugUtilsObjectTagEXT");
  extensions.queueBeginDebugUtilsLabelEXT = (PFN_QueueBeginDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkQueueBeginDebugUtilsLabelEXT");
  extensions.queueEndDebugUtilsLabelEXT = (PFN_QueueEndDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkQueueEndDebugUtilsLabelEXT");
  extensions.queueInsertDebugUtilsLabelEXT = (PFN_QueueInsertDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkQueueInsertDebugUtilsLabelEXT");
  extensions.cmdBeginDebugUtilsLabelEXT = (PFN_CmdBeginDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkCmdBeginDebugUtilsLabelEXT");
  extensions.cmdEndDebugUtilsLabelEXT = (PFN_CmdEndDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkCmdEndDebugUtilsLabelEXT");
  extensions.cmdInsertDebugUtilsLabelEXT = (PFN_CmdInsertDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkCmdInsertDebugUtilsLabelEXT");
  extensions.createDebugUtilsMessengerEXT = (PFN_CreateDebugUtilsMessengerEXT)getInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT");
  extensions.destroyDebugUtilsMessengerEXT = (PFN_DestroyDebugUtilsMessengerEXT)getInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT");
  extensions.submitDebugUtilsMessageEXT = (PFN_SubmitDebugUtilsMessageEXT)getInstanceProcAddr(instance, "vkSubmitDebugUtilsMessageEXT");
}
fn void destroySurfaceKHR (Instance instance, SurfaceKHR surface, AllocationCallbacks* pallocator) => extensions.destroySurfaceKHR(instance,surface,pallocator);
fn Bool32 getPhysicalDeviceXcbPresentationSupportKHR (PhysicalDevice physicaldevice, uint queuefamilyindex, void** connection, uint visualid) => extensions.getPhysicalDeviceXcbPresentationSupportKHR(physicaldevice,queuefamilyindex,connection,visualid);
fn void destroySwapchainKHR (Device device, SwapchainKHR swapchain, AllocationCallbacks* pallocator) => extensions.destroySwapchainKHR(device,swapchain,pallocator);
fn void cmdPushDescriptorSetKHR (CommandBuffer commandbuffer, PipelineBindPoint pipelinebindpoint, PipelineLayout layout, uint set, uint descriptorwritecount, WriteDescriptorSet* pdescriptorwrites) => extensions.cmdPushDescriptorSetKHR(commandbuffer,pipelinebindpoint,layout,set,descriptorwritecount,pdescriptorwrites);
fn void cmdPushDescriptorSetWithTemplateKHR (CommandBuffer commandbuffer, DescriptorUpdateTemplate descriptorupdatetemplate, PipelineLayout layout, uint set, void* pdata) => extensions.cmdPushDescriptorSetWithTemplateKHR(commandbuffer,descriptorupdatetemplate,layout,set,pdata);
fn void destroyDebugReportCallbackEXT (Instance instance, DebugReportCallbackEXT callback, AllocationCallbacks* pallocator) => extensions.destroyDebugReportCallbackEXT(instance,callback,pallocator);
fn void debugReportMessageEXT (Instance instance, DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objecttype, ulong object, usz location, int messagecode, char* playerprefix, char* pmessage) => extensions.debugReportMessageEXT(instance,flags,objecttype,object,location,messagecode,playerprefix,pmessage);
fn void queueBeginDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* plabelinfo) => extensions.queueBeginDebugUtilsLabelEXT(queue,plabelinfo);
fn void queueEndDebugUtilsLabelEXT (Queue queue) => extensions.queueEndDebugUtilsLabelEXT(queue);
fn void queueInsertDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* plabelinfo) => extensions.queueInsertDebugUtilsLabelEXT(queue,plabelinfo);
fn void cmdBeginDebugUtilsLabelEXT (CommandBuffer commandbuffer, DebugUtilsLabelEXT* plabelinfo) => extensions.cmdBeginDebugUtilsLabelEXT(commandbuffer,plabelinfo);
fn void cmdEndDebugUtilsLabelEXT (CommandBuffer commandbuffer) => extensions.cmdEndDebugUtilsLabelEXT(commandbuffer);
fn void cmdInsertDebugUtilsLabelEXT (CommandBuffer commandbuffer, DebugUtilsLabelEXT* plabelinfo) => extensions.cmdInsertDebugUtilsLabelEXT(commandbuffer,plabelinfo);
fn void destroyDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerEXT messenger, AllocationCallbacks* pallocator) => extensions.destroyDebugUtilsMessengerEXT(instance,messenger,pallocator);
fn void submitDebugUtilsMessageEXT (Instance instance, DebugUtilsMessageSeverityFlagBitsEXT messageseverity, DebugUtilsMessageTypeFlagsEXT messagetypes, DebugUtilsMessengerCallbackDataEXT* pcallbackdata) => extensions.submitDebugUtilsMessageEXT(instance,messageseverity,messagetypes,pcallbackdata);
fn void! getPhysicalDeviceSurfaceSupportKHR (PhysicalDevice physicaldevice, uint queuefamilyindex, SurfaceKHR surface, Bool32* psupported) {
  Result result = extensions.getPhysicalDeviceSurfaceSupportKHR(physicaldevice, queuefamilyindex, surface, psupported);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDeviceSurfaceCapabilitiesKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, SurfaceCapabilitiesKHR* psurfacecapabilities) {
  Result result = extensions.getPhysicalDeviceSurfaceCapabilitiesKHR(physicaldevice, surface, psurfacecapabilities);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDeviceSurfaceFormatsKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, uint* psurfaceformatcount, SurfaceFormatKHR* psurfaceformats) {
  Result result = extensions.getPhysicalDeviceSurfaceFormatsKHR(physicaldevice, surface, psurfaceformatcount, psurfaceformats);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDeviceSurfacePresentModesKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, uint* ppresentmodecount, PresentModeKHR* ppresentmodes) {
  Result result = extensions.getPhysicalDeviceSurfacePresentModesKHR(physicaldevice, surface, ppresentmodecount, ppresentmodes);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! createXcbSurfaceKHR (Instance instance, XcbSurfaceCreateInfoKHR* pcreateinfo, AllocationCallbacks* pallocator, SurfaceKHR* psurface) {
  Result result = extensions.createXcbSurfaceKHR(instance, pcreateinfo, pallocator, psurface);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createSwapchainKHR (Device device, SwapchainCreateInfoKHR* pcreateinfo, AllocationCallbacks* pallocator, SwapchainKHR* pswapchain) {
  Result result = extensions.createSwapchainKHR(device, pcreateinfo, pallocator, pswapchain);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
    case ERROR_NATIVE_WINDOW_IN_USE_KHR: 
        return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}

fn void! getSwapchainImagesKHR (Device device, SwapchainKHR swapchain, uint* pswapchainimagecount, Image* pswapchainimages) {
  Result result = extensions.getSwapchainImagesKHR(device, swapchain, pswapchainimagecount, pswapchainimages);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! acquireNextImageKHR (Device device, SwapchainKHR swapchain, ulong timeout, Semaphore semaphore, Fence fence, uint* pimageindex) {
  Result result = extensions.acquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pimageindex);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_OUT_OF_DATE_KHR: 
        return VkErrors.ERROR_OUT_OF_DATE_KHR?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! queuePresentKHR (Queue queue, PresentInfoKHR* ppresentinfo) {
  Result result = extensions.queuePresentKHR(queue, ppresentinfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_OUT_OF_DATE_KHR: 
        return VkErrors.ERROR_OUT_OF_DATE_KHR?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getDeviceGroupPresentCapabilitiesKHR (Device device, DeviceGroupPresentCapabilitiesKHR* pdevicegrouppresentcapabilities) {
  Result result = extensions.getDeviceGroupPresentCapabilitiesKHR(device, pdevicegrouppresentcapabilities);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getDeviceGroupSurfacePresentModesKHR (Device device, SurfaceKHR surface, DeviceGroupPresentModeFlagsKHR* pmodes) {
  Result result = extensions.getDeviceGroupSurfacePresentModesKHR(device, surface, pmodes);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDevicePresentRectanglesKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, uint* prectcount, Rect2D* prects) {
  Result result = extensions.getPhysicalDevicePresentRectanglesKHR(physicaldevice, surface, prectcount, prects);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! acquireNextImage2KHR (Device device, AcquireNextImageInfoKHR* pacquireinfo, uint* pimageindex) {
  Result result = extensions.acquireNextImage2KHR(device, pacquireinfo, pimageindex);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_OUT_OF_DATE_KHR: 
        return VkErrors.ERROR_OUT_OF_DATE_KHR?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDeviceDisplayPropertiesKHR (PhysicalDevice physicaldevice, uint* ppropertycount, DisplayPropertiesKHR* pproperties) {
  Result result = extensions.getPhysicalDeviceDisplayPropertiesKHR(physicaldevice, ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getPhysicalDeviceDisplayPlanePropertiesKHR (PhysicalDevice physicaldevice, uint* ppropertycount, DisplayPlanePropertiesKHR* pproperties) {
  Result result = extensions.getPhysicalDeviceDisplayPlanePropertiesKHR(physicaldevice, ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getDisplayPlaneSupportedDisplaysKHR (PhysicalDevice physicaldevice, uint planeindex, uint* pdisplaycount, DisplayKHR* pdisplays) {
  Result result = extensions.getDisplayPlaneSupportedDisplaysKHR(physicaldevice, planeindex, pdisplaycount, pdisplays);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getDisplayModePropertiesKHR (PhysicalDevice physicaldevice, DisplayKHR display, uint* ppropertycount, DisplayModePropertiesKHR* pproperties) {
  Result result = extensions.getDisplayModePropertiesKHR(physicaldevice, display, ppropertycount, pproperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDisplayModeKHR (PhysicalDevice physicaldevice, DisplayKHR display, DisplayModeCreateInfoKHR* pcreateinfo, AllocationCallbacks* pallocator, DisplayModeKHR* pmode) {
  Result result = extensions.createDisplayModeKHR(physicaldevice, display, pcreateinfo, pallocator, pmode);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}

fn void! getDisplayPlaneCapabilitiesKHR (PhysicalDevice physicaldevice, DisplayModeKHR mode, uint planeindex, DisplayPlaneCapabilitiesKHR* pcapabilities) {
  Result result = extensions.getDisplayPlaneCapabilitiesKHR(physicaldevice, mode, planeindex, pcapabilities);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDisplayPlaneSurfaceKHR (Instance instance, DisplaySurfaceCreateInfoKHR* pcreateinfo, AllocationCallbacks* pallocator, SurfaceKHR* psurface) {
  Result result = extensions.createDisplayPlaneSurfaceKHR(instance, pcreateinfo, pallocator, psurface);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDebugReportCallbackEXT (Instance instance, DebugReportCallbackCreateInfoEXT* pcreateinfo, AllocationCallbacks* pallocator, DebugReportCallbackEXT* pcallback) {
  Result result = extensions.createDebugReportCallbackEXT(instance, pcreateinfo, pallocator, pcallback);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}

fn void! setDebugUtilsObjectNameEXT (Device device, DebugUtilsObjectNameInfoEXT* pnameinfo) {
  Result result = extensions.setDebugUtilsObjectNameEXT(device, pnameinfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! setDebugUtilsObjectTagEXT (Device device, DebugUtilsObjectTagInfoEXT* ptaginfo) {
  Result result = extensions.setDebugUtilsObjectTagEXT(device, ptaginfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerCreateInfoEXT* pcreateinfo, AllocationCallbacks* pallocator, DebugUtilsMessengerEXT* pmessenger) {
  Result result = extensions.createDebugUtilsMessengerEXT(instance, pcreateinfo, pallocator, pmessenger);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}


def Result = distinct inline int;
const Result SUCCESS = 0;
const Result NOT_READY = 1;
const Result TIMEOUT = 2;
const Result EVENT_SET = 3;
const Result EVENT_RESET = 4;
const Result INCOMPLETE = 5;
const Result ERROR_OUT_OF_HOST_MEMORY = -1;
const Result ERROR_OUT_OF_DEVICE_MEMORY = -2;
const Result ERROR_INITIALIZATION_FAILED = -3;
const Result ERROR_DEVICE_LOST = -4;
const Result ERROR_MEMORY_MAP_FAILED = -5;
const Result ERROR_LAYER_NOT_PRESENT = -6;
const Result ERROR_EXTENSION_NOT_PRESENT = -7;
const Result ERROR_FEATURE_NOT_PRESENT = -8;
const Result ERROR_INCOMPATIBLE_DRIVER = -9;
const Result ERROR_TOO_MANY_OBJECTS = -10;
const Result ERROR_FORMAT_NOT_SUPPORTED = -11;
const Result ERROR_FRAGMENTED_POOL = -12;
const Result ERROR_UNKNOWN = -13;
const Result ERROR_OUT_OF_POOL_MEMORY = -1000069000;
const Result ERROR_INVALID_EXTERNAL_HANDLE = -1000072003;
const Result ERROR_FRAGMENTATION = -1000161000;
const Result ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS = -1000257000;
const Result PIPELINE_COMPILE_REQUIRED = 1000297000;
const Result ERROR_SURFACE_LOST_KHR = -1000000000;
const Result ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001;
const Result SUBOPTIMAL_KHR = 1000001003;
const Result ERROR_OUT_OF_DATE_KHR = -1000001004;
const Result ERROR_VALIDATION_FAILED_EXT = -1000011001;

def StructureType = distinct inline int;
const StructureType STRUCTURE_TYPE_APPLICATION_INFO = 0;
const StructureType STRUCTURE_TYPE_INSTANCE_CREATE_INFO = 1;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO = 2;
const StructureType STRUCTURE_TYPE_DEVICE_CREATE_INFO = 3;
const StructureType STRUCTURE_TYPE_SUBMIT_INFO = 4;
const StructureType STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = 5;
const StructureType STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = 6;
const StructureType STRUCTURE_TYPE_BIND_SPARSE_INFO = 7;
const StructureType STRUCTURE_TYPE_FENCE_CREATE_INFO = 8;
const StructureType STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = 9;
const StructureType STRUCTURE_TYPE_EVENT_CREATE_INFO = 10;
const StructureType STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO = 11;
const StructureType STRUCTURE_TYPE_BUFFER_CREATE_INFO = 12;
const StructureType STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO = 13;
const StructureType STRUCTURE_TYPE_IMAGE_CREATE_INFO = 14;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO = 15;
const StructureType STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO = 16;
const StructureType STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO = 17;
const StructureType STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO = 18;
const StructureType STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO = 19;
const StructureType STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO = 20;
const StructureType STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO = 21;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO = 22;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO = 23;
const StructureType STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO = 24;
const StructureType STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO = 25;
const StructureType STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO = 26;
const StructureType STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO = 27;
const StructureType STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO = 28;
const StructureType STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO = 29;
const StructureType STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO = 30;
const StructureType STRUCTURE_TYPE_SAMPLER_CREATE_INFO = 31;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO = 32;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO = 33;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO = 34;
const StructureType STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = 35;
const StructureType STRUCTURE_TYPE_COPY_DESCRIPTOR_SET = 36;
const StructureType STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO = 37;
const StructureType STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO = 38;
const StructureType STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO = 39;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO = 40;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO = 41;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = 42;
const StructureType STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO = 43;
const StructureType STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER = 44;
const StructureType STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER = 45;
const StructureType STRUCTURE_TYPE_MEMORY_BARRIER = 46;
const StructureType STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO = 47;
const StructureType STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO = 48;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES = 1000094000;
const StructureType STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO = 1000157000;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO = 1000157001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES = 1000083000;
const StructureType STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS = 1000127000;
const StructureType STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO = 1000127001;
const StructureType STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO = 1000060000;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO = 1000060003;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO = 1000060004;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO = 1000060005;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO = 1000060006;
const StructureType STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO = 1000060013;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO = 1000060014;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES = 1000070000;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO = 1000070001;
const StructureType STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2 = 1000146000;
const StructureType STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2 = 1000146001;
const StructureType STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2 = 1000146002;
const StructureType STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2 = 1000146003;
const StructureType STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2 = 1000146004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2 = 1000059000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2 = 1000059001;
const StructureType STRUCTURE_TYPE_FORMAT_PROPERTIES_2 = 1000059002;
const StructureType STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2 = 1000059003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2 = 1000059004;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2 = 1000059005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2 = 1000059006;
const StructureType STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2 = 1000059007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2 = 1000059008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES = 1000117000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO = 1000117001;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO = 1000117002;
const StructureType STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO = 1000117003;
const StructureType STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO = 1000053000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES = 1000053001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES = 1000053002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES = 1000120000;
const StructureType STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO = 1000145000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES = 1000145001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES = 1000145002;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2 = 1000145003;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO = 1000156000;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO = 1000156001;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO = 1000156002;
const StructureType STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO = 1000156003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES = 1000156004;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES = 1000156005;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO = 1000085000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO = 1000071000;
const StructureType STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES = 1000071001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO = 1000071002;
const StructureType STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES = 1000071003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES = 1000071004;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO = 1000072000;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO = 1000072001;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO = 1000072002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO = 1000112000;
const StructureType STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES = 1000112001;
const StructureType STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO = 1000113000;
const StructureType STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO = 1000077000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO = 1000076000;
const StructureType STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES = 1000076001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES = 1000168000;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT = 1000168001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES = 1000063000;
const StructureType STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO = 1000147000;
const StructureType STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2 = 1000109000;
const StructureType STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2 = 1000109001;
const StructureType STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2 = 1000109002;
const StructureType STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2 = 1000109003;
const StructureType STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2 = 1000109004;
const StructureType STRUCTURE_TYPE_SUBPASS_BEGIN_INFO = 1000109005;
const StructureType STRUCTURE_TYPE_SUBPASS_END_INFO = 1000109006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES = 1000177000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES = 1000196000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES = 1000180000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES = 1000082000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES = 1000197000;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO = 1000161000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES = 1000161001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES = 1000161002;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO = 1000161003;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT = 1000161004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES = 1000199000;
const StructureType STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE = 1000199001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES = 1000221000;
const StructureType STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO = 1000246000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES = 1000130000;
const StructureType STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO = 1000130001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES = 1000211000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES = 1000108000;
const StructureType STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO = 1000108001;
const StructureType STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO = 1000108002;
const StructureType STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO = 1000108003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES = 1000253000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES = 1000175000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES = 1000241000;
const StructureType STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT = 1000241001;
const StructureType STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT = 1000241002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES = 1000261000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES = 1000207000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES = 1000207001;
const StructureType STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO = 1000207002;
const StructureType STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO = 1000207003;
const StructureType STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO = 1000207004;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO = 1000207005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES = 1000257000;
const StructureType STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO = 1000244001;
const StructureType STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO = 1000257002;
const StructureType STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO = 1000257003;
const StructureType STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO = 1000257004;
const StructureType STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO = 1000192000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES = 1000215000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES = 1000245000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES = 1000276000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES = 1000295000;
const StructureType STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO = 1000295001;
const StructureType STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO = 1000295002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES = 1000297000;
const StructureType STRUCTURE_TYPE_MEMORY_BARRIER_2 = 1000314000;
const StructureType STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2 = 1000314001;
const StructureType STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2 = 1000314002;
const StructureType STRUCTURE_TYPE_DEPENDENCY_INFO = 1000314003;
const StructureType STRUCTURE_TYPE_SUBMIT_INFO_2 = 1000314004;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO = 1000314005;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO = 1000314006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES = 1000314007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES = 1000325000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES = 1000335000;
const StructureType STRUCTURE_TYPE_COPY_BUFFER_INFO_2 = 1000337000;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_INFO_2 = 1000337001;
const StructureType STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2 = 1000337002;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2 = 1000337003;
const StructureType STRUCTURE_TYPE_BLIT_IMAGE_INFO_2 = 1000337004;
const StructureType STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2 = 1000337005;
const StructureType STRUCTURE_TYPE_BUFFER_COPY_2 = 1000337006;
const StructureType STRUCTURE_TYPE_IMAGE_COPY_2 = 1000337007;
const StructureType STRUCTURE_TYPE_IMAGE_BLIT_2 = 1000337008;
const StructureType STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2 = 1000337009;
const StructureType STRUCTURE_TYPE_IMAGE_RESOLVE_2 = 1000337010;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES = 1000225000;
const StructureType STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO = 1000225001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES = 1000225002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES = 1000138000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES = 1000138001;
const StructureType STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK = 1000138002;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO = 1000138003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES = 1000066000;
const StructureType STRUCTURE_TYPE_RENDERING_INFO = 1000044000;
const StructureType STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO = 1000044001;
const StructureType STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO = 1000044002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES = 1000044003;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO = 1000044004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES = 1000280000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES = 1000280001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES = 1000281001;
const StructureType STRUCTURE_TYPE_FORMAT_PROPERTIES_3 = 1000360000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES = 1000413000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES = 1000413001;
const StructureType STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS = 1000413002;
const StructureType STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS = 1000413003;
const StructureType STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = 1000005000;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR = 1000001000;
const StructureType STRUCTURE_TYPE_PRESENT_INFO_KHR = 1000001001;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR = 1000001007;
const StructureType STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR = 1000001008;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR = 1000001009;
const StructureType STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR = 1000001010;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR = 1000001011;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR = 1000001012;
const StructureType STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR = 1000002000;
const StructureType STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR = 1000002001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR = 1000080000;
const StructureType STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT = 1000011000;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000128000;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT = 1000128001;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT = 1000128002;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000128003;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000128004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR = 1000163000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR = 1000163001;

def PipelineCacheHeaderVersion = distinct inline int;
const PipelineCacheHeaderVersion PIPELINE_CACHE_HEADER_VERSION_ONE = 1;

def ObjectType = distinct inline int;
const ObjectType OBJECT_TYPE_UNKNOWN = 0;
const ObjectType OBJECT_TYPE_INSTANCE = 1;
const ObjectType OBJECT_TYPE_PHYSICAL_DEVICE = 2;
const ObjectType OBJECT_TYPE_DEVICE = 3;
const ObjectType OBJECT_TYPE_QUEUE = 4;
const ObjectType OBJECT_TYPE_SEMAPHORE = 5;
const ObjectType OBJECT_TYPE_COMMAND_BUFFER = 6;
const ObjectType OBJECT_TYPE_FENCE = 7;
const ObjectType OBJECT_TYPE_DEVICE_MEMORY = 8;
const ObjectType OBJECT_TYPE_BUFFER = 9;
const ObjectType OBJECT_TYPE_IMAGE = 10;
const ObjectType OBJECT_TYPE_EVENT = 11;
const ObjectType OBJECT_TYPE_QUERY_POOL = 12;
const ObjectType OBJECT_TYPE_BUFFER_VIEW = 13;
const ObjectType OBJECT_TYPE_IMAGE_VIEW = 14;
const ObjectType OBJECT_TYPE_SHADER_MODULE = 15;
const ObjectType OBJECT_TYPE_PIPELINE_CACHE = 16;
const ObjectType OBJECT_TYPE_PIPELINE_LAYOUT = 17;
const ObjectType OBJECT_TYPE_RENDER_PASS = 18;
const ObjectType OBJECT_TYPE_PIPELINE = 19;
const ObjectType OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT = 20;
const ObjectType OBJECT_TYPE_SAMPLER = 21;
const ObjectType OBJECT_TYPE_DESCRIPTOR_POOL = 22;
const ObjectType OBJECT_TYPE_DESCRIPTOR_SET = 23;
const ObjectType OBJECT_TYPE_FRAMEBUFFER = 24;
const ObjectType OBJECT_TYPE_COMMAND_POOL = 25;
const ObjectType OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION = 1000156000;
const ObjectType OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE = 1000085000;
const ObjectType OBJECT_TYPE_PRIVATE_DATA_SLOT = 1000295000;
const ObjectType OBJECT_TYPE_SURFACE_KHR = 1000000000;
const ObjectType OBJECT_TYPE_SWAPCHAIN_KHR = 1000001000;
const ObjectType OBJECT_TYPE_DISPLAY_KHR = 1000002000;
const ObjectType OBJECT_TYPE_DISPLAY_MODE_KHR = 1000002001;
const ObjectType OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT = 1000011000;
const ObjectType OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000;

def VendorId = distinct inline int;
const VendorId VENDOR_ID_VIV = 0x10001;
const VendorId VENDOR_ID_VSI = 0x10002;
const VendorId VENDOR_ID_KAZAN = 0x10003;
const VendorId VENDOR_ID_CODEPLAY = 0x10004;
const VendorId VENDOR_ID_MESA = 0x10005;
const VendorId VENDOR_ID_POCL = 0x10006;
const VendorId VENDOR_ID_MOBILEYE = 0x10007;

def Format = distinct inline int;
const Format FORMAT_UNDEFINED = 0;
const Format FORMAT_R4G4_UNORM_PACK8 = 1;
const Format FORMAT_R4G4B4A4_UNORM_PACK16 = 2;
const Format FORMAT_B4G4R4A4_UNORM_PACK16 = 3;
const Format FORMAT_R5G6B5_UNORM_PACK16 = 4;
const Format FORMAT_B5G6R5_UNORM_PACK16 = 5;
const Format FORMAT_R5G5B5A1_UNORM_PACK16 = 6;
const Format FORMAT_B5G5R5A1_UNORM_PACK16 = 7;
const Format FORMAT_A1R5G5B5_UNORM_PACK16 = 8;
const Format FORMAT_R8_UNORM = 9;
const Format FORMAT_R8_SNORM = 10;
const Format FORMAT_R8_USCALED = 11;
const Format FORMAT_R8_SSCALED = 12;
const Format FORMAT_R8_UINT = 13;
const Format FORMAT_R8_SINT = 14;
const Format FORMAT_R8_SRGB = 15;
const Format FORMAT_R8G8_UNORM = 16;
const Format FORMAT_R8G8_SNORM = 17;
const Format FORMAT_R8G8_USCALED = 18;
const Format FORMAT_R8G8_SSCALED = 19;
const Format FORMAT_R8G8_UINT = 20;
const Format FORMAT_R8G8_SINT = 21;
const Format FORMAT_R8G8_SRGB = 22;
const Format FORMAT_R8G8B8_UNORM = 23;
const Format FORMAT_R8G8B8_SNORM = 24;
const Format FORMAT_R8G8B8_USCALED = 25;
const Format FORMAT_R8G8B8_SSCALED = 26;
const Format FORMAT_R8G8B8_UINT = 27;
const Format FORMAT_R8G8B8_SINT = 28;
const Format FORMAT_R8G8B8_SRGB = 29;
const Format FORMAT_B8G8R8_UNORM = 30;
const Format FORMAT_B8G8R8_SNORM = 31;
const Format FORMAT_B8G8R8_USCALED = 32;
const Format FORMAT_B8G8R8_SSCALED = 33;
const Format FORMAT_B8G8R8_UINT = 34;
const Format FORMAT_B8G8R8_SINT = 35;
const Format FORMAT_B8G8R8_SRGB = 36;
const Format FORMAT_R8G8B8A8_UNORM = 37;
const Format FORMAT_R8G8B8A8_SNORM = 38;
const Format FORMAT_R8G8B8A8_USCALED = 39;
const Format FORMAT_R8G8B8A8_SSCALED = 40;
const Format FORMAT_R8G8B8A8_UINT = 41;
const Format FORMAT_R8G8B8A8_SINT = 42;
const Format FORMAT_R8G8B8A8_SRGB = 43;
const Format FORMAT_B8G8R8A8_UNORM = 44;
const Format FORMAT_B8G8R8A8_SNORM = 45;
const Format FORMAT_B8G8R8A8_USCALED = 46;
const Format FORMAT_B8G8R8A8_SSCALED = 47;
const Format FORMAT_B8G8R8A8_UINT = 48;
const Format FORMAT_B8G8R8A8_SINT = 49;
const Format FORMAT_B8G8R8A8_SRGB = 50;
const Format FORMAT_A8B8G8R8_UNORM_PACK32 = 51;
const Format FORMAT_A8B8G8R8_SNORM_PACK32 = 52;
const Format FORMAT_A8B8G8R8_USCALED_PACK32 = 53;
const Format FORMAT_A8B8G8R8_SSCALED_PACK32 = 54;
const Format FORMAT_A8B8G8R8_UINT_PACK32 = 55;
const Format FORMAT_A8B8G8R8_SINT_PACK32 = 56;
const Format FORMAT_A8B8G8R8_SRGB_PACK32 = 57;
const Format FORMAT_A2R10G10B10_UNORM_PACK32 = 58;
const Format FORMAT_A2R10G10B10_SNORM_PACK32 = 59;
const Format FORMAT_A2R10G10B10_USCALED_PACK32 = 60;
const Format FORMAT_A2R10G10B10_SSCALED_PACK32 = 61;
const Format FORMAT_A2R10G10B10_UINT_PACK32 = 62;
const Format FORMAT_A2R10G10B10_SINT_PACK32 = 63;
const Format FORMAT_A2B10G10R10_UNORM_PACK32 = 64;
const Format FORMAT_A2B10G10R10_SNORM_PACK32 = 65;
const Format FORMAT_A2B10G10R10_USCALED_PACK32 = 66;
const Format FORMAT_A2B10G10R10_SSCALED_PACK32 = 67;
const Format FORMAT_A2B10G10R10_UINT_PACK32 = 68;
const Format FORMAT_A2B10G10R10_SINT_PACK32 = 69;
const Format FORMAT_R16_UNORM = 70;
const Format FORMAT_R16_SNORM = 71;
const Format FORMAT_R16_USCALED = 72;
const Format FORMAT_R16_SSCALED = 73;
const Format FORMAT_R16_UINT = 74;
const Format FORMAT_R16_SINT = 75;
const Format FORMAT_R16_SFLOAT = 76;
const Format FORMAT_R16G16_UNORM = 77;
const Format FORMAT_R16G16_SNORM = 78;
const Format FORMAT_R16G16_USCALED = 79;
const Format FORMAT_R16G16_SSCALED = 80;
const Format FORMAT_R16G16_UINT = 81;
const Format FORMAT_R16G16_SINT = 82;
const Format FORMAT_R16G16_SFLOAT = 83;
const Format FORMAT_R16G16B16_UNORM = 84;
const Format FORMAT_R16G16B16_SNORM = 85;
const Format FORMAT_R16G16B16_USCALED = 86;
const Format FORMAT_R16G16B16_SSCALED = 87;
const Format FORMAT_R16G16B16_UINT = 88;
const Format FORMAT_R16G16B16_SINT = 89;
const Format FORMAT_R16G16B16_SFLOAT = 90;
const Format FORMAT_R16G16B16A16_UNORM = 91;
const Format FORMAT_R16G16B16A16_SNORM = 92;
const Format FORMAT_R16G16B16A16_USCALED = 93;
const Format FORMAT_R16G16B16A16_SSCALED = 94;
const Format FORMAT_R16G16B16A16_UINT = 95;
const Format FORMAT_R16G16B16A16_SINT = 96;
const Format FORMAT_R16G16B16A16_SFLOAT = 97;
const Format FORMAT_R32_UINT = 98;
const Format FORMAT_R32_SINT = 99;
const Format FORMAT_R32_SFLOAT = 100;
const Format FORMAT_R32G32_UINT = 101;
const Format FORMAT_R32G32_SINT = 102;
const Format FORMAT_R32G32_SFLOAT = 103;
const Format FORMAT_R32G32B32_UINT = 104;
const Format FORMAT_R32G32B32_SINT = 105;
const Format FORMAT_R32G32B32_SFLOAT = 106;
const Format FORMAT_R32G32B32A32_UINT = 107;
const Format FORMAT_R32G32B32A32_SINT = 108;
const Format FORMAT_R32G32B32A32_SFLOAT = 109;
const Format FORMAT_R64_UINT = 110;
const Format FORMAT_R64_SINT = 111;
const Format FORMAT_R64_SFLOAT = 112;
const Format FORMAT_R64G64_UINT = 113;
const Format FORMAT_R64G64_SINT = 114;
const Format FORMAT_R64G64_SFLOAT = 115;
const Format FORMAT_R64G64B64_UINT = 116;
const Format FORMAT_R64G64B64_SINT = 117;
const Format FORMAT_R64G64B64_SFLOAT = 118;
const Format FORMAT_R64G64B64A64_UINT = 119;
const Format FORMAT_R64G64B64A64_SINT = 120;
const Format FORMAT_R64G64B64A64_SFLOAT = 121;
const Format FORMAT_B10G11R11_UFLOAT_PACK32 = 122;
const Format FORMAT_E5B9G9R9_UFLOAT_PACK32 = 123;
const Format FORMAT_D16_UNORM = 124;
const Format FORMAT_X8_D24_UNORM_PACK32 = 125;
const Format FORMAT_D32_SFLOAT = 126;
const Format FORMAT_S8_UINT = 127;
const Format FORMAT_D16_UNORM_S8_UINT = 128;
const Format FORMAT_D24_UNORM_S8_UINT = 129;
const Format FORMAT_D32_SFLOAT_S8_UINT = 130;
const Format FORMAT_BC1_RGB_UNORM_BLOCK = 131;
const Format FORMAT_BC1_RGB_SRGB_BLOCK = 132;
const Format FORMAT_BC1_RGBA_UNORM_BLOCK = 133;
const Format FORMAT_BC1_RGBA_SRGB_BLOCK = 134;
const Format FORMAT_BC2_UNORM_BLOCK = 135;
const Format FORMAT_BC2_SRGB_BLOCK = 136;
const Format FORMAT_BC3_UNORM_BLOCK = 137;
const Format FORMAT_BC3_SRGB_BLOCK = 138;
const Format FORMAT_BC4_UNORM_BLOCK = 139;
const Format FORMAT_BC4_SNORM_BLOCK = 140;
const Format FORMAT_BC5_UNORM_BLOCK = 141;
const Format FORMAT_BC5_SNORM_BLOCK = 142;
const Format FORMAT_BC6H_UFLOAT_BLOCK = 143;
const Format FORMAT_BC6H_SFLOAT_BLOCK = 144;
const Format FORMAT_BC7_UNORM_BLOCK = 145;
const Format FORMAT_BC7_SRGB_BLOCK = 146;
const Format FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 147;
const Format FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 148;
const Format FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 149;
const Format FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 150;
const Format FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 151;
const Format FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 152;
const Format FORMAT_EAC_R11_UNORM_BLOCK = 153;
const Format FORMAT_EAC_R11_SNORM_BLOCK = 154;
const Format FORMAT_EAC_R11G11_UNORM_BLOCK = 155;
const Format FORMAT_EAC_R11G11_SNORM_BLOCK = 156;
const Format FORMAT_ASTC_4X4_UNORM_BLOCK = 157;
const Format FORMAT_ASTC_4X4_SRGB_BLOCK = 158;
const Format FORMAT_ASTC_5X4_UNORM_BLOCK = 159;
const Format FORMAT_ASTC_5X4_SRGB_BLOCK = 160;
const Format FORMAT_ASTC_5X5_UNORM_BLOCK = 161;
const Format FORMAT_ASTC_5X5_SRGB_BLOCK = 162;
const Format FORMAT_ASTC_6X5_UNORM_BLOCK = 163;
const Format FORMAT_ASTC_6X5_SRGB_BLOCK = 164;
const Format FORMAT_ASTC_6X6_UNORM_BLOCK = 165;
const Format FORMAT_ASTC_6X6_SRGB_BLOCK = 166;
const Format FORMAT_ASTC_8X5_UNORM_BLOCK = 167;
const Format FORMAT_ASTC_8X5_SRGB_BLOCK = 168;
const Format FORMAT_ASTC_8X6_UNORM_BLOCK = 169;
const Format FORMAT_ASTC_8X6_SRGB_BLOCK = 170;
const Format FORMAT_ASTC_8X8_UNORM_BLOCK = 171;
const Format FORMAT_ASTC_8X8_SRGB_BLOCK = 172;
const Format FORMAT_ASTC_10X5_UNORM_BLOCK = 173;
const Format FORMAT_ASTC_10X5_SRGB_BLOCK = 174;
const Format FORMAT_ASTC_10X6_UNORM_BLOCK = 175;
const Format FORMAT_ASTC_10X6_SRGB_BLOCK = 176;
const Format FORMAT_ASTC_10X8_UNORM_BLOCK = 177;
const Format FORMAT_ASTC_10X8_SRGB_BLOCK = 178;
const Format FORMAT_ASTC_10X10_UNORM_BLOCK = 179;
const Format FORMAT_ASTC_10X10_SRGB_BLOCK = 180;
const Format FORMAT_ASTC_12X10_UNORM_BLOCK = 181;
const Format FORMAT_ASTC_12X10_SRGB_BLOCK = 182;
const Format FORMAT_ASTC_12X12_UNORM_BLOCK = 183;
const Format FORMAT_ASTC_12X12_SRGB_BLOCK = 184;
const Format FORMAT_G8B8G8R8_422_UNORM = 1000156000;
const Format FORMAT_B8G8R8G8_422_UNORM = 1000156001;
const Format FORMAT_G8_B8_R8_3PLANE_420_UNORM = 1000156002;
const Format FORMAT_G8_B8R8_2PLANE_420_UNORM = 1000156003;
const Format FORMAT_G8_B8_R8_3PLANE_422_UNORM = 1000156004;
const Format FORMAT_G8_B8R8_2PLANE_422_UNORM = 1000156005;
const Format FORMAT_G8_B8_R8_3PLANE_444_UNORM = 1000156006;
const Format FORMAT_R10X6_UNORM_PACK16 = 1000156007;
const Format FORMAT_R10X6G10X6_UNORM_2PACK16 = 1000156008;
const Format FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 = 1000156009;
const Format FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 = 1000156010;
const Format FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 = 1000156011;
const Format FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 = 1000156012;
const Format FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 = 1000156013;
const Format FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 = 1000156014;
const Format FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 = 1000156015;
const Format FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 = 1000156016;
const Format FORMAT_R12X4_UNORM_PACK16 = 1000156017;
const Format FORMAT_R12X4G12X4_UNORM_2PACK16 = 1000156018;
const Format FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 = 1000156019;
const Format FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 = 1000156020;
const Format FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 = 1000156021;
const Format FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 = 1000156022;
const Format FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 = 1000156023;
const Format FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 = 1000156024;
const Format FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 = 1000156025;
const Format FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 = 1000156026;
const Format FORMAT_G16B16G16R16_422_UNORM = 1000156027;
const Format FORMAT_B16G16R16G16_422_UNORM = 1000156028;
const Format FORMAT_G16_B16_R16_3PLANE_420_UNORM = 1000156029;
const Format FORMAT_G16_B16R16_2PLANE_420_UNORM = 1000156030;
const Format FORMAT_G16_B16_R16_3PLANE_422_UNORM = 1000156031;
const Format FORMAT_G16_B16R16_2PLANE_422_UNORM = 1000156032;
const Format FORMAT_G16_B16_R16_3PLANE_444_UNORM = 1000156033;
const Format FORMAT_G8_B8R8_2PLANE_444_UNORM = 1000330000;
const Format FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16 = 1000330001;
const Format FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16 = 1000330002;
const Format FORMAT_G16_B16R16_2PLANE_444_UNORM = 1000330003;
const Format FORMAT_A4R4G4B4_UNORM_PACK16 = 1000340000;
const Format FORMAT_A4B4G4R4_UNORM_PACK16 = 1000340001;
const Format FORMAT_ASTC_4X4_SFLOAT_BLOCK = 1000066000;
const Format FORMAT_ASTC_5X4_SFLOAT_BLOCK = 1000066001;
const Format FORMAT_ASTC_5X5_SFLOAT_BLOCK = 1000066002;
const Format FORMAT_ASTC_6X5_SFLOAT_BLOCK = 1000066003;
const Format FORMAT_ASTC_6X6_SFLOAT_BLOCK = 1000066004;
const Format FORMAT_ASTC_8X5_SFLOAT_BLOCK = 1000066005;
const Format FORMAT_ASTC_8X6_SFLOAT_BLOCK = 1000066006;
const Format FORMAT_ASTC_8X8_SFLOAT_BLOCK = 1000066007;
const Format FORMAT_ASTC_10X5_SFLOAT_BLOCK = 1000066008;
const Format FORMAT_ASTC_10X6_SFLOAT_BLOCK = 1000066009;
const Format FORMAT_ASTC_10X8_SFLOAT_BLOCK = 1000066010;
const Format FORMAT_ASTC_10X10_SFLOAT_BLOCK = 1000066011;
const Format FORMAT_ASTC_12X10_SFLOAT_BLOCK = 1000066012;
const Format FORMAT_ASTC_12X12_SFLOAT_BLOCK = 1000066013;

def FormatFeatureFlagBits = distinct inline int;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_BIT = 0x00000001;
const FormatFeatureFlagBits FORMAT_FEATURE_STORAGE_IMAGE_BIT = 0x00000002;
const FormatFeatureFlagBits FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT = 0x00000004;
const FormatFeatureFlagBits FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000008;
const FormatFeatureFlagBits FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT = 0x00000010;
const FormatFeatureFlagBits FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 0x00000020;
const FormatFeatureFlagBits FORMAT_FEATURE_VERTEX_BUFFER_BIT = 0x00000040;
const FormatFeatureFlagBits FORMAT_FEATURE_COLOR_ATTACHMENT_BIT = 0x00000080;
const FormatFeatureFlagBits FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT = 0x00000100;
const FormatFeatureFlagBits FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000200;
const FormatFeatureFlagBits FORMAT_FEATURE_BLIT_SRC_BIT = 0x00000400;
const FormatFeatureFlagBits FORMAT_FEATURE_BLIT_DST_BIT = 0x00000800;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 0x00001000;
const FormatFeatureFlagBits FORMAT_FEATURE_TRANSFER_SRC_BIT = 0x00004000;
const FormatFeatureFlagBits FORMAT_FEATURE_TRANSFER_DST_BIT = 0x00008000;
const FormatFeatureFlagBits FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT = 0x00020000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 0x00040000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 0x00080000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 0x00100000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 0x00200000;
const FormatFeatureFlagBits FORMAT_FEATURE_DISJOINT_BIT = 0x00400000;
const FormatFeatureFlagBits FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT = 0x00800000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 0x00010000;

def ImageCreateFlagBits = distinct inline int;
const ImageCreateFlagBits IMAGE_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const ImageCreateFlagBits IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const ImageCreateFlagBits IMAGE_CREATE_SPARSE_ALIASED_BIT = 0x00000004;
const ImageCreateFlagBits IMAGE_CREATE_MUTABLE_FORMAT_BIT = 0x00000008;
const ImageCreateFlagBits IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 0x00000010;
const ImageCreateFlagBits IMAGE_CREATE_ALIAS_BIT = 0x00000400;
const ImageCreateFlagBits IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT = 0x00000040;
const ImageCreateFlagBits IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT = 0x00000020;
const ImageCreateFlagBits IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT = 0x00000080;
const ImageCreateFlagBits IMAGE_CREATE_EXTENDED_USAGE_BIT = 0x00000100;
const ImageCreateFlagBits IMAGE_CREATE_PROTECTED_BIT = 0x00000800;
const ImageCreateFlagBits IMAGE_CREATE_DISJOINT_BIT = 0x00000200;

def ImageTiling = distinct inline int;
const ImageTiling IMAGE_TILING_OPTIMAL = 0;
const ImageTiling IMAGE_TILING_LINEAR = 1;

def ImageType = distinct inline int;
const ImageType IMAGE_TYPE_1D = 0;
const ImageType IMAGE_TYPE_2D = 1;
const ImageType IMAGE_TYPE_3D = 2;

def ImageUsageFlagBits = distinct inline int;
const ImageUsageFlagBits IMAGE_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const ImageUsageFlagBits IMAGE_USAGE_TRANSFER_DST_BIT = 0x00000002;
const ImageUsageFlagBits IMAGE_USAGE_SAMPLED_BIT = 0x00000004;
const ImageUsageFlagBits IMAGE_USAGE_STORAGE_BIT = 0x00000008;
const ImageUsageFlagBits IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 0x00000010;
const ImageUsageFlagBits IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000020;
const ImageUsageFlagBits IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 0x00000040;
const ImageUsageFlagBits IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 0x00000080;

def InstanceCreateFlagBits = distinct inline int;
const InstanceCreateFlagBits INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR = 0x00000001;

def InternalAllocationType = distinct inline int;
const InternalAllocationType INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0;

def MemoryHeapFlagBits = distinct inline int;
const MemoryHeapFlagBits MEMORY_HEAP_DEVICE_LOCAL_BIT = 0x00000001;
const MemoryHeapFlagBits MEMORY_HEAP_MULTI_INSTANCE_BIT = 0x00000002;

def MemoryPropertyFlagBits = distinct inline int;
const MemoryPropertyFlagBits MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 0x00000001;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_VISIBLE_BIT = 0x00000002;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_COHERENT_BIT = 0x00000004;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_CACHED_BIT = 0x00000008;
const MemoryPropertyFlagBits MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 0x00000010;
const MemoryPropertyFlagBits MEMORY_PROPERTY_PROTECTED_BIT = 0x00000020;

def PhysicalDeviceType = distinct inline int;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_OTHER = 0;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_CPU = 4;

def QueueFlagBits = distinct inline int;
const QueueFlagBits QUEUE_GRAPHICS_BIT = 0x00000001;
const QueueFlagBits QUEUE_COMPUTE_BIT = 0x00000002;
const QueueFlagBits QUEUE_TRANSFER_BIT = 0x00000004;
const QueueFlagBits QUEUE_SPARSE_BINDING_BIT = 0x00000008;
const QueueFlagBits QUEUE_PROTECTED_BIT = 0x00000010;

def SampleCountFlagBits = distinct inline int;
const SampleCountFlagBits SAMPLE_COUNT_1_BIT = 0x00000001;
const SampleCountFlagBits SAMPLE_COUNT_2_BIT = 0x00000002;
const SampleCountFlagBits SAMPLE_COUNT_4_BIT = 0x00000004;
const SampleCountFlagBits SAMPLE_COUNT_8_BIT = 0x00000008;
const SampleCountFlagBits SAMPLE_COUNT_16_BIT = 0x00000010;
const SampleCountFlagBits SAMPLE_COUNT_32_BIT = 0x00000020;
const SampleCountFlagBits SAMPLE_COUNT_64_BIT = 0x00000040;

def SystemAllocationScope = distinct inline int;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_COMMAND = 0;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_OBJECT = 1;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_CACHE = 2;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_DEVICE = 3;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4;

def PipelineStageFlagBits = distinct inline int;
const PipelineStageFlagBits PIPELINE_STAGE_TOP_OF_PIPE_BIT = 0x00000001;
const PipelineStageFlagBits PIPELINE_STAGE_DRAW_INDIRECT_BIT = 0x00000002;
const PipelineStageFlagBits PIPELINE_STAGE_VERTEX_INPUT_BIT = 0x00000004;
const PipelineStageFlagBits PIPELINE_STAGE_VERTEX_SHADER_BIT = 0x00000008;
const PipelineStageFlagBits PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT = 0x00000010;
const PipelineStageFlagBits PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT = 0x00000020;
const PipelineStageFlagBits PIPELINE_STAGE_GEOMETRY_SHADER_BIT = 0x00000040;
const PipelineStageFlagBits PIPELINE_STAGE_FRAGMENT_SHADER_BIT = 0x00000080;
const PipelineStageFlagBits PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT = 0x00000100;
const PipelineStageFlagBits PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT = 0x00000200;
const PipelineStageFlagBits PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT = 0x00000400;
const PipelineStageFlagBits PIPELINE_STAGE_COMPUTE_SHADER_BIT = 0x00000800;
const PipelineStageFlagBits PIPELINE_STAGE_TRANSFER_BIT = 0x00001000;
const PipelineStageFlagBits PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = 0x00002000;
const PipelineStageFlagBits PIPELINE_STAGE_HOST_BIT = 0x00004000;
const PipelineStageFlagBits PIPELINE_STAGE_ALL_GRAPHICS_BIT = 0x00008000;
const PipelineStageFlagBits PIPELINE_STAGE_ALL_COMMANDS_BIT = 0x00010000;

def ImageAspectFlagBits = distinct inline int;
const ImageAspectFlagBits IMAGE_ASPECT_COLOR_BIT = 0x00000001;
const ImageAspectFlagBits IMAGE_ASPECT_DEPTH_BIT = 0x00000002;
const ImageAspectFlagBits IMAGE_ASPECT_STENCIL_BIT = 0x00000004;
const ImageAspectFlagBits IMAGE_ASPECT_METADATA_BIT = 0x00000008;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_0_BIT = 0x00000010;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_1_BIT = 0x00000020;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_2_BIT = 0x00000040;

def SparseImageFormatFlagBits = distinct inline int;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 0x00000001;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 0x00000002;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 0x00000004;

def SparseMemoryBindFlagBits = distinct inline int;
const SparseMemoryBindFlagBits SPARSE_MEMORY_BIND_METADATA_BIT = 0x00000001;

def FenceCreateFlagBits = distinct inline int;
const FenceCreateFlagBits FENCE_CREATE_SIGNALED_BIT = 0x00000001;

def EventCreateFlagBits = distinct inline int;
const EventCreateFlagBits EVENT_CREATE_DEVICE_ONLY_BIT = 0x00000001;

def QueryPipelineStatisticFlagBits = distinct inline int;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT = 0x00000001;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT = 0x00000002;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT = 0x00000004;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT = 0x00000008;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT = 0x00000010;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT = 0x00000020;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT = 0x00000040;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT = 0x00000080;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT = 0x00000100;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT = 0x00000200;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT = 0x00000400;

def QueryResultFlagBits = distinct inline int;
const QueryResultFlagBits QUERY_RESULT_64_BIT = 0x00000001;
const QueryResultFlagBits QUERY_RESULT_WAIT_BIT = 0x00000002;
const QueryResultFlagBits QUERY_RESULT_WITH_AVAILABILITY_BIT = 0x00000004;
const QueryResultFlagBits QUERY_RESULT_PARTIAL_BIT = 0x00000008;

def QueryType = distinct inline int;
const QueryType QUERY_TYPE_OCCLUSION = 0;
const QueryType QUERY_TYPE_PIPELINE_STATISTICS = 1;
const QueryType QUERY_TYPE_TIMESTAMP = 2;

def BufferCreateFlagBits = distinct inline int;
const BufferCreateFlagBits BUFFER_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const BufferCreateFlagBits BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const BufferCreateFlagBits BUFFER_CREATE_SPARSE_ALIASED_BIT = 0x00000004;
const BufferCreateFlagBits BUFFER_CREATE_PROTECTED_BIT = 0x00000008;
const BufferCreateFlagBits BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 0x00000010;

def BufferUsageFlagBits = distinct inline int;
const BufferUsageFlagBits BUFFER_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const BufferUsageFlagBits BUFFER_USAGE_TRANSFER_DST_BIT = 0x00000002;
const BufferUsageFlagBits BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000004;
const BufferUsageFlagBits BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 0x00000008;
const BufferUsageFlagBits BUFFER_USAGE_UNIFORM_BUFFER_BIT = 0x00000010;
const BufferUsageFlagBits BUFFER_USAGE_STORAGE_BUFFER_BIT = 0x00000020;
const BufferUsageFlagBits BUFFER_USAGE_INDEX_BUFFER_BIT = 0x00000040;
const BufferUsageFlagBits BUFFER_USAGE_VERTEX_BUFFER_BIT = 0x00000080;
const BufferUsageFlagBits BUFFER_USAGE_INDIRECT_BUFFER_BIT = 0x00000100;
const BufferUsageFlagBits BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT = 0x00020000;

def SharingMode = distinct inline int;
const SharingMode SHARING_MODE_EXCLUSIVE = 0;
const SharingMode SHARING_MODE_CONCURRENT = 1;

def ImageLayout = distinct inline int;
const ImageLayout IMAGE_LAYOUT_UNDEFINED = 0;
const ImageLayout IMAGE_LAYOUT_GENERAL = 1;
const ImageLayout IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2;
const ImageLayout IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3;
const ImageLayout IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4;
const ImageLayout IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5;
const ImageLayout IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6;
const ImageLayout IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7;
const ImageLayout IMAGE_LAYOUT_PREINITIALIZED = 8;
const ImageLayout IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL = 1000117000;
const ImageLayout IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL = 1000117001;
const ImageLayout IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL = 1000241000;
const ImageLayout IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL = 1000241001;
const ImageLayout IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL = 1000241002;
const ImageLayout IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL = 1000241003;
const ImageLayout IMAGE_LAYOUT_READ_ONLY_OPTIMAL = 1000314000;
const ImageLayout IMAGE_LAYOUT_ATTACHMENT_OPTIMAL = 1000314001;
const ImageLayout IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002;

def ComponentSwizzle = distinct inline int;
const ComponentSwizzle COMPONENT_SWIZZLE_IDENTITY = 0;
const ComponentSwizzle COMPONENT_SWIZZLE_ZERO = 1;
const ComponentSwizzle COMPONENT_SWIZZLE_ONE = 2;
const ComponentSwizzle COMPONENT_SWIZZLE_R = 3;
const ComponentSwizzle COMPONENT_SWIZZLE_G = 4;
const ComponentSwizzle COMPONENT_SWIZZLE_B = 5;
const ComponentSwizzle COMPONENT_SWIZZLE_A = 6;

def ImageViewCreateFlagBits = distinct inline int;


def ImageViewType = distinct inline int;
const ImageViewType IMAGE_VIEW_TYPE_1D = 0;
const ImageViewType IMAGE_VIEW_TYPE_2D = 1;
const ImageViewType IMAGE_VIEW_TYPE_3D = 2;
const ImageViewType IMAGE_VIEW_TYPE_CUBE = 3;
const ImageViewType IMAGE_VIEW_TYPE_1D_ARRAY = 4;
const ImageViewType IMAGE_VIEW_TYPE_2D_ARRAY = 5;
const ImageViewType IMAGE_VIEW_TYPE_CUBE_ARRAY = 6;

def BlendFactor = distinct inline int;
const BlendFactor BLEND_FACTOR_ZERO = 0;
const BlendFactor BLEND_FACTOR_ONE = 1;
const BlendFactor BLEND_FACTOR_SRC_COLOR = 2;
const BlendFactor BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3;
const BlendFactor BLEND_FACTOR_DST_COLOR = 4;
const BlendFactor BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5;
const BlendFactor BLEND_FACTOR_SRC_ALPHA = 6;
const BlendFactor BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7;
const BlendFactor BLEND_FACTOR_DST_ALPHA = 8;
const BlendFactor BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9;
const BlendFactor BLEND_FACTOR_CONSTANT_COLOR = 10;
const BlendFactor BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11;
const BlendFactor BLEND_FACTOR_CONSTANT_ALPHA = 12;
const BlendFactor BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13;
const BlendFactor BLEND_FACTOR_SRC_ALPHA_SATURATE = 14;
const BlendFactor BLEND_FACTOR_SRC1_COLOR = 15;
const BlendFactor BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16;
const BlendFactor BLEND_FACTOR_SRC1_ALPHA = 17;
const BlendFactor BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18;

def BlendOp = distinct inline int;
const BlendOp BLEND_OP_ADD = 0;
const BlendOp BLEND_OP_SUBTRACT = 1;
const BlendOp BLEND_OP_REVERSE_SUBTRACT = 2;
const BlendOp BLEND_OP_MIN = 3;
const BlendOp BLEND_OP_MAX = 4;

def ColorComponentFlagBits = distinct inline int;
const ColorComponentFlagBits COLOR_COMPONENT_R_BIT = 0x00000001;
const ColorComponentFlagBits COLOR_COMPONENT_G_BIT = 0x00000002;
const ColorComponentFlagBits COLOR_COMPONENT_B_BIT = 0x00000004;
const ColorComponentFlagBits COLOR_COMPONENT_A_BIT = 0x00000008;

def CompareOp = distinct inline int;
const CompareOp COMPARE_OP_NEVER = 0;
const CompareOp COMPARE_OP_LESS = 1;
const CompareOp COMPARE_OP_EQUAL = 2;
const CompareOp COMPARE_OP_LESS_OR_EQUAL = 3;
const CompareOp COMPARE_OP_GREATER = 4;
const CompareOp COMPARE_OP_NOT_EQUAL = 5;
const CompareOp COMPARE_OP_GREATER_OR_EQUAL = 6;
const CompareOp COMPARE_OP_ALWAYS = 7;

def CullModeFlagBits = distinct inline int;
const CullModeFlagBits CULL_MODE_NONE = 0;
const CullModeFlagBits CULL_MODE_FRONT_BIT = 0x00000001;
const CullModeFlagBits CULL_MODE_BACK_BIT = 0x00000002;
const CullModeFlagBits CULL_MODE_FRONT_AND_BACK = 0x00000003;

def DynamicState = distinct inline int;
const DynamicState DYNAMIC_STATE_VIEWPORT = 0;
const DynamicState DYNAMIC_STATE_SCISSOR = 1;
const DynamicState DYNAMIC_STATE_LINE_WIDTH = 2;
const DynamicState DYNAMIC_STATE_DEPTH_BIAS = 3;
const DynamicState DYNAMIC_STATE_BLEND_CONSTANTS = 4;
const DynamicState DYNAMIC_STATE_DEPTH_BOUNDS = 5;
const DynamicState DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6;
const DynamicState DYNAMIC_STATE_STENCIL_WRITE_MASK = 7;
const DynamicState DYNAMIC_STATE_STENCIL_REFERENCE = 8;
const DynamicState DYNAMIC_STATE_CULL_MODE = 1000267000;
const DynamicState DYNAMIC_STATE_FRONT_FACE = 1000267001;
const DynamicState DYNAMIC_STATE_PRIMITIVE_TOPOLOGY = 1000267002;
const DynamicState DYNAMIC_STATE_VIEWPORT_WITH_COUNT = 1000267003;
const DynamicState DYNAMIC_STATE_SCISSOR_WITH_COUNT = 1000267004;
const DynamicState DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE = 1000267005;
const DynamicState DYNAMIC_STATE_DEPTH_TEST_ENABLE = 1000267006;
const DynamicState DYNAMIC_STATE_DEPTH_WRITE_ENABLE = 1000267007;
const DynamicState DYNAMIC_STATE_DEPTH_COMPARE_OP = 1000267008;
const DynamicState DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE = 1000267009;
const DynamicState DYNAMIC_STATE_STENCIL_TEST_ENABLE = 1000267010;
const DynamicState DYNAMIC_STATE_STENCIL_OP = 1000267011;
const DynamicState DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE = 1000377001;
const DynamicState DYNAMIC_STATE_DEPTH_BIAS_ENABLE = 1000377002;
const DynamicState DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE = 1000377004;

def FrontFace = distinct inline int;
const FrontFace FRONT_FACE_COUNTER_CLOCKWISE = 0;
const FrontFace FRONT_FACE_CLOCKWISE = 1;

def LogicOp = distinct inline int;
const LogicOp LOGIC_OP_CLEAR = 0;
const LogicOp LOGIC_OP_AND = 1;
const LogicOp LOGIC_OP_AND_REVERSE = 2;
const LogicOp LOGIC_OP_COPY = 3;
const LogicOp LOGIC_OP_AND_INVERTED = 4;
const LogicOp LOGIC_OP_NO_OP = 5;
const LogicOp LOGIC_OP_XOR = 6;
const LogicOp LOGIC_OP_OR = 7;
const LogicOp LOGIC_OP_NOR = 8;
const LogicOp LOGIC_OP_EQUIVALENT = 9;
const LogicOp LOGIC_OP_INVERT = 10;
const LogicOp LOGIC_OP_OR_REVERSE = 11;
const LogicOp LOGIC_OP_COPY_INVERTED = 12;
const LogicOp LOGIC_OP_OR_INVERTED = 13;
const LogicOp LOGIC_OP_NAND = 14;
const LogicOp LOGIC_OP_SET = 15;

def PipelineCreateFlagBits = distinct inline int;
const PipelineCreateFlagBits PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 0x00000001;
const PipelineCreateFlagBits PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 0x00000002;
const PipelineCreateFlagBits PIPELINE_CREATE_DERIVATIVE_BIT = 0x00000004;
const PipelineCreateFlagBits PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT = 0x00000008;
const PipelineCreateFlagBits PIPELINE_CREATE_DISPATCH_BASE_BIT = 0x00000010;
const PipelineCreateFlagBits PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT = 0x00000100;
const PipelineCreateFlagBits PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT = 0x00000200;

def PipelineShaderStageCreateFlagBits = distinct inline int;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT = 0x00000001;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT = 0x00000002;

def PolygonMode = distinct inline int;
const PolygonMode POLYGON_MODE_FILL = 0;
const PolygonMode POLYGON_MODE_LINE = 1;
const PolygonMode POLYGON_MODE_POINT = 2;

def PrimitiveTopology = distinct inline int;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_POINT_LIST = 0;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_LINE_LIST = 1;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_LINE_STRIP = 2;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_TRIANGLE_LIST = 3;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP = 4;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_TRIANGLE_FAN = 5;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY = 6;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY = 7;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY = 8;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY = 9;
const PrimitiveTopology PRIMITIVE_TOPOLOGY_PATCH_LIST = 10;

def ShaderStageFlagBits = distinct inline int;
const ShaderStageFlagBits SHADER_STAGE_VERTEX_BIT = 0x00000001;
const ShaderStageFlagBits SHADER_STAGE_TESSELLATION_CONTROL_BIT = 0x00000002;
const ShaderStageFlagBits SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 0x00000004;
const ShaderStageFlagBits SHADER_STAGE_GEOMETRY_BIT = 0x00000008;
const ShaderStageFlagBits SHADER_STAGE_FRAGMENT_BIT = 0x00000010;
const ShaderStageFlagBits SHADER_STAGE_COMPUTE_BIT = 0x00000020;
const ShaderStageFlagBits SHADER_STAGE_ALL_GRAPHICS = 0x0000001F;
const ShaderStageFlagBits SHADER_STAGE_ALL = 0x7FFFFFFF;

def StencilOp = distinct inline int;
const StencilOp STENCIL_OP_KEEP = 0;
const StencilOp STENCIL_OP_ZERO = 1;
const StencilOp STENCIL_OP_REPLACE = 2;
const StencilOp STENCIL_OP_INCREMENT_AND_CLAMP = 3;
const StencilOp STENCIL_OP_DECREMENT_AND_CLAMP = 4;
const StencilOp STENCIL_OP_INVERT = 5;
const StencilOp STENCIL_OP_INCREMENT_AND_WRAP = 6;
const StencilOp STENCIL_OP_DECREMENT_AND_WRAP = 7;

def VertexInputRate = distinct inline int;
const VertexInputRate VERTEX_INPUT_RATE_VERTEX = 0;
const VertexInputRate VERTEX_INPUT_RATE_INSTANCE = 1;

def BorderColor = distinct inline int;
const BorderColor BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0;
const BorderColor BORDER_COLOR_INT_TRANSPARENT_BLACK = 1;
const BorderColor BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2;
const BorderColor BORDER_COLOR_INT_OPAQUE_BLACK = 3;
const BorderColor BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4;
const BorderColor BORDER_COLOR_INT_OPAQUE_WHITE = 5;

def Filter = distinct inline int;
const Filter FILTER_NEAREST = 0;
const Filter FILTER_LINEAR = 1;

def SamplerAddressMode = distinct inline int;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_REPEAT = 0;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3;

def SamplerCreateFlagBits = distinct inline int;


def SamplerMipmapMode = distinct inline int;
const SamplerMipmapMode SAMPLER_MIPMAP_MODE_NEAREST = 0;
const SamplerMipmapMode SAMPLER_MIPMAP_MODE_LINEAR = 1;

def DescriptorPoolCreateFlagBits = distinct inline int;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 0x00000001;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT = 0x00000002;

def DescriptorSetLayoutCreateFlagBits = distinct inline int;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT = 0x00000002;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR = 0x00000001;

def DescriptorType = distinct inline int;
const DescriptorType DESCRIPTOR_TYPE_SAMPLER = 0;
const DescriptorType DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1;
const DescriptorType DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2;
const DescriptorType DESCRIPTOR_TYPE_STORAGE_IMAGE = 3;
const DescriptorType DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4;
const DescriptorType DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5;
const DescriptorType DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6;
const DescriptorType DESCRIPTOR_TYPE_STORAGE_BUFFER = 7;
const DescriptorType DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8;
const DescriptorType DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9;
const DescriptorType DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10;
const DescriptorType DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK = 1000138000;

def AccessFlagBits = distinct inline int;
const AccessFlagBits ACCESS_INDIRECT_COMMAND_READ_BIT = 0x00000001;
const AccessFlagBits ACCESS_INDEX_READ_BIT = 0x00000002;
const AccessFlagBits ACCESS_VERTEX_ATTRIBUTE_READ_BIT = 0x00000004;
const AccessFlagBits ACCESS_UNIFORM_READ_BIT = 0x00000008;
const AccessFlagBits ACCESS_INPUT_ATTACHMENT_READ_BIT = 0x00000010;
const AccessFlagBits ACCESS_SHADER_READ_BIT = 0x00000020;
const AccessFlagBits ACCESS_SHADER_WRITE_BIT = 0x00000040;
const AccessFlagBits ACCESS_COLOR_ATTACHMENT_READ_BIT = 0x00000080;
const AccessFlagBits ACCESS_COLOR_ATTACHMENT_WRITE_BIT = 0x00000100;
const AccessFlagBits ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 0x00000200;
const AccessFlagBits ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 0x00000400;
const AccessFlagBits ACCESS_TRANSFER_READ_BIT = 0x00000800;
const AccessFlagBits ACCESS_TRANSFER_WRITE_BIT = 0x00001000;
const AccessFlagBits ACCESS_HOST_READ_BIT = 0x00002000;
const AccessFlagBits ACCESS_HOST_WRITE_BIT = 0x00004000;
const AccessFlagBits ACCESS_MEMORY_READ_BIT = 0x00008000;
const AccessFlagBits ACCESS_MEMORY_WRITE_BIT = 0x00010000;

def AttachmentDescriptionFlagBits = distinct inline int;
const AttachmentDescriptionFlagBits ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 0x00000001;

def AttachmentLoadOp = distinct inline int;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_LOAD = 0;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_CLEAR = 1;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_DONT_CARE = 2;

def AttachmentStoreOp = distinct inline int;
const AttachmentStoreOp ATTACHMENT_STORE_OP_STORE = 0;
const AttachmentStoreOp ATTACHMENT_STORE_OP_DONT_CARE = 1;
const AttachmentStoreOp ATTACHMENT_STORE_OP_NONE = 1000301000;

def DependencyFlagBits = distinct inline int;
const DependencyFlagBits DEPENDENCY_BY_REGION_BIT = 0x00000001;
const DependencyFlagBits DEPENDENCY_DEVICE_GROUP_BIT = 0x00000004;
const DependencyFlagBits DEPENDENCY_VIEW_LOCAL_BIT = 0x00000002;

def FramebufferCreateFlagBits = distinct inline int;
const FramebufferCreateFlagBits FRAMEBUFFER_CREATE_IMAGELESS_BIT = 0x00000001;

def PipelineBindPoint = distinct inline int;
const PipelineBindPoint PIPELINE_BIND_POINT_GRAPHICS = 0;
const PipelineBindPoint PIPELINE_BIND_POINT_COMPUTE = 1;

def RenderPassCreateFlagBits = distinct inline int;


def SubpassDescriptionFlagBits = distinct inline int;


def CommandPoolCreateFlagBits = distinct inline int;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_TRANSIENT_BIT = 0x00000001;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 0x00000002;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_PROTECTED_BIT = 0x00000004;

def CommandPoolResetFlagBits = distinct inline int;
const CommandPoolResetFlagBits COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

def CommandBufferLevel = distinct inline int;
const CommandBufferLevel COMMAND_BUFFER_LEVEL_PRIMARY = 0;
const CommandBufferLevel COMMAND_BUFFER_LEVEL_SECONDARY = 1;

def CommandBufferResetFlagBits = distinct inline int;
const CommandBufferResetFlagBits COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

def CommandBufferUsageFlagBits = distinct inline int;
const CommandBufferUsageFlagBits COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 0x00000001;
const CommandBufferUsageFlagBits COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 0x00000002;
const CommandBufferUsageFlagBits COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 0x00000004;

def QueryControlFlagBits = distinct inline int;
const QueryControlFlagBits QUERY_CONTROL_PRECISE_BIT = 0x00000001;

def IndexType = distinct inline int;
const IndexType INDEX_TYPE_UINT16 = 0;
const IndexType INDEX_TYPE_UINT32 = 1;

def StencilFaceFlagBits = distinct inline int;
const StencilFaceFlagBits STENCIL_FACE_FRONT_BIT = 0x00000001;
const StencilFaceFlagBits STENCIL_FACE_BACK_BIT = 0x00000002;
const StencilFaceFlagBits STENCIL_FACE_FRONT_AND_BACK = 0x00000003;

def SubpassContents = distinct inline int;
const SubpassContents SUBPASS_CONTENTS_INLINE = 0;
const SubpassContents SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;

def SubgroupFeatureFlagBits = distinct inline int;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_BASIC_BIT = 0x00000001;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_VOTE_BIT = 0x00000002;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_ARITHMETIC_BIT = 0x00000004;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_BALLOT_BIT = 0x00000008;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_SHUFFLE_BIT = 0x00000010;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT = 0x00000020;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_CLUSTERED_BIT = 0x00000040;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_QUAD_BIT = 0x00000080;

def PeerMemoryFeatureFlagBits = distinct inline int;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_COPY_SRC_BIT = 0x00000001;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_COPY_DST_BIT = 0x00000002;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_GENERIC_SRC_BIT = 0x00000004;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_GENERIC_DST_BIT = 0x00000008;

def MemoryAllocateFlagBits = distinct inline int;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_MASK_BIT = 0x00000001;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT = 0x00000002;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 0x00000004;

def PointClippingBehavior = distinct inline int;
const PointClippingBehavior POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0;
const PointClippingBehavior POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1;

def TessellationDomainOrigin = distinct inline int;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1;

def DeviceQueueCreateFlagBits = distinct inline int;


def SamplerYcbcrModelConversion = distinct inline int;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4;

def SamplerYcbcrRange = distinct inline int;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_FULL = 0;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_NARROW = 1;

def ChromaLocation = distinct inline int;
const ChromaLocation CHROMA_LOCATION_COSITED_EVEN = 0;
const ChromaLocation CHROMA_LOCATION_MIDPOINT = 1;

def DescriptorUpdateTemplateType = distinct inline int;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0;

def ExternalMemoryHandleTypeFlagBits = distinct inline int;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT = 0x00000008;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT = 0x00000010;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT = 0x00000020;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT = 0x00000040;

def ExternalMemoryFeatureFlagBits = distinct inline int;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT = 0x00000001;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT = 0x00000002;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT = 0x00000004;

def ExternalFenceHandleTypeFlagBits = distinct inline int;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT = 0x00000008;

def ExternalFenceFeatureFlagBits = distinct inline int;
const ExternalFenceFeatureFlagBits EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT = 0x00000001;
const ExternalFenceFeatureFlagBits EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT = 0x00000002;

def FenceImportFlagBits = distinct inline int;
const FenceImportFlagBits FENCE_IMPORT_TEMPORARY_BIT = 0x00000001;

def SemaphoreImportFlagBits = distinct inline int;
const SemaphoreImportFlagBits SEMAPHORE_IMPORT_TEMPORARY_BIT = 0x00000001;

def ExternalSemaphoreHandleTypeFlagBits = distinct inline int;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT = 0x00000008;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT = 0x00000010;

def ExternalSemaphoreFeatureFlagBits = distinct inline int;
const ExternalSemaphoreFeatureFlagBits EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT = 0x00000001;
const ExternalSemaphoreFeatureFlagBits EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT = 0x00000002;

def DriverId = distinct inline int;
const DriverId DRIVER_ID_AMD_PROPRIETARY = 1;
const DriverId DRIVER_ID_AMD_OPEN_SOURCE = 2;
const DriverId DRIVER_ID_MESA_RADV = 3;
const DriverId DRIVER_ID_NVIDIA_PROPRIETARY = 4;
const DriverId DRIVER_ID_INTEL_PROPRIETARY_WINDOWS = 5;
const DriverId DRIVER_ID_INTEL_OPEN_SOURCE_MESA = 6;
const DriverId DRIVER_ID_IMAGINATION_PROPRIETARY = 7;
const DriverId DRIVER_ID_QUALCOMM_PROPRIETARY = 8;
const DriverId DRIVER_ID_ARM_PROPRIETARY = 9;
const DriverId DRIVER_ID_GOOGLE_SWIFTSHADER = 10;
const DriverId DRIVER_ID_GGP_PROPRIETARY = 11;
const DriverId DRIVER_ID_BROADCOM_PROPRIETARY = 12;
const DriverId DRIVER_ID_MESA_LLVMPIPE = 13;
const DriverId DRIVER_ID_MOLTENVK = 14;
const DriverId DRIVER_ID_COREAVI_PROPRIETARY = 15;
const DriverId DRIVER_ID_JUICE_PROPRIETARY = 16;
const DriverId DRIVER_ID_VERISILICON_PROPRIETARY = 17;
const DriverId DRIVER_ID_MESA_TURNIP = 18;
const DriverId DRIVER_ID_MESA_V3DV = 19;
const DriverId DRIVER_ID_MESA_PANVK = 20;
const DriverId DRIVER_ID_SAMSUNG_PROPRIETARY = 21;
const DriverId DRIVER_ID_MESA_VENUS = 22;
const DriverId DRIVER_ID_MESA_DOZEN = 23;
const DriverId DRIVER_ID_MESA_NVK = 24;
const DriverId DRIVER_ID_IMAGINATION_OPEN_SOURCE_MESA = 25;

def ShaderFloatControlsIndependence = distinct inline int;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2;

def DescriptorBindingFlagBits = distinct inline int;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT = 0x00000001;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT = 0x00000002;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT = 0x00000004;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT = 0x00000008;

def ResolveModeFlagBits = distinct inline int;
const ResolveModeFlagBits RESOLVE_MODE_NONE = 0;
const ResolveModeFlagBits RESOLVE_MODE_SAMPLE_ZERO_BIT = 0x00000001;
const ResolveModeFlagBits RESOLVE_MODE_AVERAGE_BIT = 0x00000002;
const ResolveModeFlagBits RESOLVE_MODE_MIN_BIT = 0x00000004;
const ResolveModeFlagBits RESOLVE_MODE_MAX_BIT = 0x00000008;

def SamplerReductionMode = distinct inline int;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MIN = 1;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MAX = 2;

def SemaphoreType = distinct inline int;
const SemaphoreType SEMAPHORE_TYPE_BINARY = 0;
const SemaphoreType SEMAPHORE_TYPE_TIMELINE = 1;

def SemaphoreWaitFlagBits = distinct inline int;
const SemaphoreWaitFlagBits SEMAPHORE_WAIT_ANY_BIT = 0x00000001;

def PipelineCreationFeedbackFlagBits = distinct inline int;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_VALID_BIT = 0x00000001;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT = 0x00000002;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT = 0x00000004;

def ToolPurposeFlagBits = distinct inline int;
const ToolPurposeFlagBits TOOL_PURPOSE_VALIDATION_BIT = 0x00000001;
const ToolPurposeFlagBits TOOL_PURPOSE_PROFILING_BIT = 0x00000002;
const ToolPurposeFlagBits TOOL_PURPOSE_TRACING_BIT = 0x00000004;
const ToolPurposeFlagBits TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT = 0x00000008;
const ToolPurposeFlagBits TOOL_PURPOSE_MODIFYING_FEATURES_BIT = 0x00000010;

def PipelineStageFlagBits2 = distinct inline ulong;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_NONE = 0;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TOP_OF_PIPE_BIT = 0x00000001;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_DRAW_INDIRECT_BIT = 0x00000002;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VERTEX_INPUT_BIT = 0x00000004;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VERTEX_SHADER_BIT = 0x00000008;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT = 0x00000010;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT = 0x00000020;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT = 0x00000040;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT = 0x00000080;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT = 0x00000100;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT = 0x00000200;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT = 0x00000400;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COMPUTE_SHADER_BIT = 0x00000800;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ALL_TRANSFER_BIT = 0x00001000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT = 0x00002000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_HOST_BIT = 0x00004000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ALL_GRAPHICS_BIT = 0x00008000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ALL_COMMANDS_BIT = 0x00010000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COPY_BIT = 0x100000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESOLVE_BIT = 0x200000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_BLIT_BIT = 0x400000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_CLEAR_BIT = 0x800000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_INDEX_INPUT_BIT = 0x1000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT = 0x2000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT = 0x4000000000;

def AccessFlagBits2 = distinct inline ulong;
const AccessFlagBits2 ACCESS_2_NONE = 0;
const AccessFlagBits2 ACCESS_2_INDIRECT_COMMAND_READ_BIT = 0x00000001;
const AccessFlagBits2 ACCESS_2_INDEX_READ_BIT = 0x00000002;
const AccessFlagBits2 ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT = 0x00000004;
const AccessFlagBits2 ACCESS_2_UNIFORM_READ_BIT = 0x00000008;
const AccessFlagBits2 ACCESS_2_INPUT_ATTACHMENT_READ_BIT = 0x00000010;
const AccessFlagBits2 ACCESS_2_SHADER_READ_BIT = 0x00000020;
const AccessFlagBits2 ACCESS_2_SHADER_WRITE_BIT = 0x00000040;
const AccessFlagBits2 ACCESS_2_COLOR_ATTACHMENT_READ_BIT = 0x00000080;
const AccessFlagBits2 ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT = 0x00000100;
const AccessFlagBits2 ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 0x00000200;
const AccessFlagBits2 ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 0x00000400;
const AccessFlagBits2 ACCESS_2_TRANSFER_READ_BIT = 0x00000800;
const AccessFlagBits2 ACCESS_2_TRANSFER_WRITE_BIT = 0x00001000;
const AccessFlagBits2 ACCESS_2_HOST_READ_BIT = 0x00002000;
const AccessFlagBits2 ACCESS_2_HOST_WRITE_BIT = 0x00004000;
const AccessFlagBits2 ACCESS_2_MEMORY_READ_BIT = 0x00008000;
const AccessFlagBits2 ACCESS_2_MEMORY_WRITE_BIT = 0x00010000;
const AccessFlagBits2 ACCESS_2_SHADER_SAMPLED_READ_BIT = 0x100000000;
const AccessFlagBits2 ACCESS_2_SHADER_STORAGE_READ_BIT = 0x200000000;
const AccessFlagBits2 ACCESS_2_SHADER_STORAGE_WRITE_BIT = 0x400000000;

def SubmitFlagBits = distinct inline int;
const SubmitFlagBits SUBMIT_PROTECTED_BIT = 0x00000001;

def RenderingFlagBits = distinct inline int;
const RenderingFlagBits RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT = 0x00000001;
const RenderingFlagBits RENDERING_SUSPENDING_BIT = 0x00000002;
const RenderingFlagBits RENDERING_RESUMING_BIT = 0x00000004;

def FormatFeatureFlagBits2 = distinct inline ulong;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT = 0x00000001;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_IMAGE_BIT = 0x00000002;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT = 0x00000004;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT = 0x00000008;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT = 0x00000010;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 0x00000020;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VERTEX_BUFFER_BIT = 0x00000040;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT = 0x00000080;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT = 0x00000100;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000200;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_BLIT_SRC_BIT = 0x00000400;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_BLIT_DST_BIT = 0x00000800;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 0x00001000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT = 0x00002000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_TRANSFER_SRC_BIT = 0x00004000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_TRANSFER_DST_BIT = 0x00008000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 0x00010000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT = 0x00020000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 0x00040000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 0x00080000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 0x00100000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 0x00200000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_DISJOINT_BIT = 0x00400000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT = 0x00800000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT = 0x80000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT = 0x100000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT = 0x200000000;

def SurfaceTransformFlagBitsKHR = distinct inline int;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 0x00000001;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 0x00000002;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 0x00000004;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 0x00000008;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 0x00000010;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 0x00000020;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 0x00000040;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 0x00000080;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_INHERIT_BIT_KHR = 0x00000100;

def PresentModeKHR = distinct inline int;
const PresentModeKHR PRESENT_MODE_IMMEDIATE_KHR = 0;
const PresentModeKHR PRESENT_MODE_MAILBOX_KHR = 1;
const PresentModeKHR PRESENT_MODE_FIFO_KHR = 2;
const PresentModeKHR PRESENT_MODE_FIFO_RELAXED_KHR = 3;

def ColorSpaceKHR = distinct inline int;
const ColorSpaceKHR COLOR_SPACE_SRGB_NONLINEAR_KHR = 0;
const ColorSpaceKHR COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT = 1000104001;
const ColorSpaceKHR COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT = 1000104002;
const ColorSpaceKHR COLOR_SPACE_DISPLAY_P3_LINEAR_EXT = 1000104003;
const ColorSpaceKHR COLOR_SPACE_DCI_P3_NONLINEAR_EXT = 1000104004;
const ColorSpaceKHR COLOR_SPACE_BT709_LINEAR_EXT = 1000104005;
const ColorSpaceKHR COLOR_SPACE_BT709_NONLINEAR_EXT = 1000104006;
const ColorSpaceKHR COLOR_SPACE_BT2020_LINEAR_EXT = 1000104007;
const ColorSpaceKHR COLOR_SPACE_HDR10_ST2084_EXT = 1000104008;
const ColorSpaceKHR COLOR_SPACE_DOLBYVISION_EXT = 1000104009;
const ColorSpaceKHR COLOR_SPACE_HDR10_HLG_EXT = 1000104010;
const ColorSpaceKHR COLOR_SPACE_ADOBERGB_LINEAR_EXT = 1000104011;
const ColorSpaceKHR COLOR_SPACE_ADOBERGB_NONLINEAR_EXT = 1000104012;
const ColorSpaceKHR COLOR_SPACE_PASS_THROUGH_EXT = 1000104013;
const ColorSpaceKHR COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT = 1000104014;

def CompositeAlphaFlagBitsKHR = distinct inline int;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 0x00000002;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 0x00000004;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_INHERIT_BIT_KHR = 0x00000008;

def SwapchainCreateFlagBitsKHR = distinct inline int;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 0x00000001;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_PROTECTED_BIT_KHR = 0x00000002;

def DeviceGroupPresentModeFlagBitsKHR = distinct inline int;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR = 0x00000001;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR = 0x00000002;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR = 0x00000004;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR = 0x00000008;

def DisplayPlaneAlphaFlagBitsKHR = distinct inline int;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 0x00000002;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 0x00000004;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 0x00000008;

def DebugReportFlagBitsEXT = distinct inline int;
const DebugReportFlagBitsEXT DEBUG_REPORT_INFORMATION_BIT_EXT = 0x00000001;
const DebugReportFlagBitsEXT DEBUG_REPORT_WARNING_BIT_EXT = 0x00000002;
const DebugReportFlagBitsEXT DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 0x00000004;
const DebugReportFlagBitsEXT DEBUG_REPORT_ERROR_BIT_EXT = 0x00000008;
const DebugReportFlagBitsEXT DEBUG_REPORT_DEBUG_BIT_EXT = 0x00000010;

def DebugReportObjectTypeEXT = distinct inline int;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT = 0;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT = 1;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT = 2;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT = 3;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT = 4;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT = 5;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT = 6;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT = 7;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT = 8;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT = 9;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT = 10;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT = 11;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT = 12;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT = 13;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT = 14;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT = 15;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT = 16;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT = 17;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT = 18;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT = 19;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT = 20;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT = 21;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT = 22;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT = 23;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT = 24;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT = 25;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT = 26;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT = 27;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT = 28;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT = 29;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT = 30;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT = 33;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000011000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT = 1000011000;

def DebugUtilsMessageSeverityFlagBitsEXT = distinct inline int;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = 0x00000001;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = 0x00000010;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = 0x00000100;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = 0x00001000;

def DebugUtilsMessageTypeFlagBitsEXT = distinct inline int;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = 0x00000001;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = 0x00000002;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = 0x00000004;
macro uint @makeApiVersion(uint $variant, uint $major, uint $minor, uint $patch) => (($variant << 29) | ($major << 22) | ($minor << 12) | $patch);