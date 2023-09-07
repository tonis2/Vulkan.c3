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
def SurfaceKHR = distinct inline void*;
def Bool32 = uint;
def DeviceAddress = ulong;
def DeviceSize = ulong;
def Flags = uint;
def SampleMask = uint;
def FormatFeatureFlags = VkFlags;
def ImageCreateFlags = VkFlags;
def ImageUsageFlags = VkFlags;
def InstanceCreateFlags = VkFlags;
def MemoryHeapFlags = VkFlags;
def MemoryPropertyFlags = VkFlags;
def QueueFlags = VkFlags;
def SampleCountFlags = VkFlags;
def DeviceCreateFlags = VkFlags;
def DeviceQueueCreateFlags = VkFlags;
def PipelineStageFlags = VkFlags;
def MemoryMapFlags = VkFlags;
def ImageAspectFlags = VkFlags;
def SparseImageFormatFlags = VkFlags;
def SparseMemoryBindFlags = VkFlags;
def FenceCreateFlags = VkFlags;
def SemaphoreCreateFlags = VkFlags;
def EventCreateFlags = VkFlags;
def QueryPipelineStatisticFlags = VkFlags;
def QueryPoolCreateFlags = VkFlags;
def QueryResultFlags = VkFlags;
def BufferCreateFlags = VkFlags;
def BufferUsageFlags = VkFlags;
def BufferViewCreateFlags = VkFlags;
def ImageViewCreateFlags = VkFlags;
def ShaderModuleCreateFlags = VkFlags;
def PipelineCacheCreateFlags = VkFlags;
def ColorComponentFlags = VkFlags;
def CullModeFlags = VkFlags;
def PipelineColorBlendStateCreateFlags = VkFlags;
def PipelineCreateFlags = VkFlags;
def PipelineDepthStencilStateCreateFlags = VkFlags;
def PipelineDynamicStateCreateFlags = VkFlags;
def PipelineInputAssemblyStateCreateFlags = VkFlags;
def PipelineLayoutCreateFlags = VkFlags;
def PipelineMultisampleStateCreateFlags = VkFlags;
def PipelineRasterizationStateCreateFlags = VkFlags;
def PipelineShaderStageCreateFlags = VkFlags;
def PipelineTessellationStateCreateFlags = VkFlags;
def PipelineVertexInputStateCreateFlags = VkFlags;
def PipelineViewportStateCreateFlags = VkFlags;
def ShaderStageFlags = VkFlags;
def SamplerCreateFlags = VkFlags;
def DescriptorPoolCreateFlags = VkFlags;
def DescriptorPoolResetFlags = VkFlags;
def DescriptorSetLayoutCreateFlags = VkFlags;
def AccessFlags = VkFlags;
def AttachmentDescriptionFlags = VkFlags;
def DependencyFlags = VkFlags;
def FramebufferCreateFlags = VkFlags;
def RenderPassCreateFlags = VkFlags;
def SubpassDescriptionFlags = VkFlags;
def CommandPoolCreateFlags = VkFlags;
def CommandPoolResetFlags = VkFlags;
def CommandBufferResetFlags = VkFlags;
def CommandBufferUsageFlags = VkFlags;
def QueryControlFlags = VkFlags;
def StencilFaceFlags = VkFlags;
def CompositeAlphaFlagsKHR = VkFlags;
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
