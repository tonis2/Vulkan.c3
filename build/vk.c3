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
def VkBool32 = uint;
def VkDeviceAddress = ulong;
def VkDeviceSize = ulong;
def VkFlags = uint;
def VkFormatFeatureFlags = VkFlags;
def VkImageCreateFlags = VkFlags;
def VkImageUsageFlags = VkFlags;
def VkInstance = void*;
def VkInstanceCreateFlags = VkFlags;
def VkMemoryHeapFlags = VkFlags;
def VkMemoryPropertyFlags = VkFlags;
def VkPhysicalDevice = void*;
def VkQueueFlags = VkFlags;
def VkSampleCountFlags = VkFlags;
def VkDevice = void*;
def VkDeviceCreateFlags = VkFlags;
def VkDeviceQueueCreateFlags = VkFlags;
def VkPipelineStageFlags = VkFlags;
def VkQueue = void*;
def VkMemoryMapFlags = VkFlags;
def VkDeviceMemory = void*;
def VkImageAspectFlags = VkFlags;
def VkSparseImageFormatFlags = VkFlags;
def VkSparseMemoryBindFlags = VkFlags;
def VkFence = void*;
def VkFenceCreateFlags = VkFlags;
def VkSemaphore = void*;
def VkSemaphoreCreateFlags = VkFlags;
def VkEvent = void*;
def VkEventCreateFlags = VkFlags;
def VkQueryPipelineStatisticFlags = VkFlags;
def VkQueryPool = void*;
def VkQueryPoolCreateFlags = VkFlags;
def VkQueryResultFlags = VkFlags;
def VkBuffer = void*;
def VkBufferCreateFlags = VkFlags;
def VkBufferUsageFlags = VkFlags;
def VkBufferView = void*;
def VkBufferViewCreateFlags = VkFlags;
def VkImage = void*;
def VkImageView = void*;
def VkImageViewCreateFlags = VkFlags;
def VkShaderModule = void*;
def VkShaderModuleCreateFlags = VkFlags;
def VkPipelineCache = void*;
def VkPipelineCacheCreateFlags = VkFlags;
def VkColorComponentFlags = VkFlags;
def VkCullModeFlags = VkFlags;
def VkPipeline = void*;
def VkPipelineColorBlendStateCreateFlags = VkFlags;
def VkPipelineCreateFlags = VkFlags;
def VkPipelineDepthStencilStateCreateFlags = VkFlags;
def VkPipelineDynamicStateCreateFlags = VkFlags;
def VkPipelineInputAssemblyStateCreateFlags = VkFlags;
def VkPipelineLayoutCreateFlags = VkFlags;
def VkPipelineMultisampleStateCreateFlags = VkFlags;
def VkPipelineRasterizationStateCreateFlags = VkFlags;
def VkPipelineShaderStageCreateFlags = VkFlags;
def VkPipelineTessellationStateCreateFlags = VkFlags;
def VkPipelineVertexInputStateCreateFlags = VkFlags;
def VkPipelineViewportStateCreateFlags = VkFlags;
def VkSampleMask = uint;
def VkShaderStageFlags = VkFlags;
def VkPipelineLayout = void*;
def VkSampler = void*;
def VkSamplerCreateFlags = VkFlags;
def VkDescriptorPool = void*;
def VkDescriptorPoolCreateFlags = VkFlags;
def VkDescriptorPoolResetFlags = VkFlags;
def VkDescriptorSet = void*;
def VkDescriptorSetLayout = void*;
def VkDescriptorSetLayoutCreateFlags = VkFlags;
def VkAccessFlags = VkFlags;
def VkAttachmentDescriptionFlags = VkFlags;
def VkDependencyFlags = VkFlags;
def VkFramebuffer = void*;
def VkFramebufferCreateFlags = VkFlags;
def VkRenderPass = void*;
def VkRenderPassCreateFlags = VkFlags;
def VkSubpassDescriptionFlags = VkFlags;
def VkCommandPool = void*;
def VkCommandPoolCreateFlags = VkFlags;
def VkCommandPoolResetFlags = VkFlags;
def VkCommandBuffer = void*;
def VkCommandBufferResetFlags = VkFlags;
def VkCommandBufferUsageFlags = VkFlags;
def VkQueryControlFlags = VkFlags;
def VkStencilFaceFlags = VkFlags;
struct VkExtent2D {
  uint width;
  uint height;
}
struct VkExtent3D {
  uint width;
  uint height;
  uint depth;
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
struct VkRect2D {
  VkOffset2D offset;
  VkExtent2D extent;
}
struct VkBufferMemoryBarrier {
  VkStructureType sType;
  void* pNext;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  uint srcQueueFamilyIndex;
  uint dstQueueFamilyIndex;
  VkBuffer buffer;
  VkDeviceSize offset;
  VkDeviceSize size;
}
struct VkDispatchIndirectCommand {
  uint x;
  uint y;
  uint z;
}
struct VkDrawIndexedIndirectCommand {
  uint indexCount;
  uint instanceCount;
  uint firstIndex;
  int vertexOffset;
  uint firstInstance;
}
struct VkDrawIndirectCommand {
  uint vertexCount;
  uint instanceCount;
  uint firstVertex;
  uint firstInstance;
}
struct VkImageMemoryBarrier {
  VkStructureType sType;
  void* pNext;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
  VkImageLayout oldLayout;
  VkImageLayout newLayout;
  uint srcQueueFamilyIndex;
  uint dstQueueFamilyIndex;
  VkImage image;
  VkImageSubresourceRange subresourceRange;
}
struct VkMemoryBarrier {
  VkStructureType sType;
  void* pNext;
  VkAccessFlags srcAccessMask;
  VkAccessFlags dstAccessMask;
}
struct VkPipelineCacheHeaderVersionOne {
  uint headerSize;
  VkPipelineCacheHeaderVersion headerVersion;
  uint vendorID;
  uint deviceID;
  char pipelineCacheUUID;
}
struct VkAllocationCallbacks {
  void* pUserData;
  PFN_vkAllocationFunction pfnAllocation;
  PFN_vkReallocationFunction pfnReallocation;
  PFN_vkFreeFunction pfnFree;
  PFN_vkInternalAllocationNotification pfnInternalAllocation;
  PFN_vkInternalFreeNotification pfnInternalFree;
}
struct VkApplicationInfo {
  VkStructureType sType;
  void* pNext;
  char* pApplicationName;
  uint applicationVersion;
  char* pEngineName;
  uint engineVersion;
  uint apiVersion;
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
struct VkInstanceCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkInstanceCreateFlags flags;
  VkApplicationInfo pApplicationInfo;
  uint enabledLayerCount;
  char* ppEnabledLayerNames;
  uint enabledExtensionCount;
  char* ppEnabledExtensionNames;
}
struct VkMemoryHeap {
  VkDeviceSize size;
  VkMemoryHeapFlags flags;
}
struct VkMemoryType {
  VkMemoryPropertyFlags propertyFlags;
  uint heapIndex;
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
  usz minMemoryMapAlignment;
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
struct VkPhysicalDeviceMemoryProperties {
  uint memoryTypeCount;
  VkMemoryType memoryTypes;
  uint memoryHeapCount;
  VkMemoryHeap memoryHeaps;
}
struct VkPhysicalDeviceProperties {
  uint apiVersion;
  uint driverVersion;
  uint vendorID;
  uint deviceID;
  VkPhysicalDeviceType deviceType;
  char* deviceName;
  char pipelineCacheUUID;
  VkPhysicalDeviceLimits limits;
  VkPhysicalDeviceSparseProperties sparseProperties;
}
struct VkPhysicalDeviceSparseProperties {
  VkBool32 residencyStandard2DBlockShape;
  VkBool32 residencyStandard2DMultisampleBlockShape;
  VkBool32 residencyStandard3DBlockShape;
  VkBool32 residencyAlignedMipSize;
  VkBool32 residencyNonResidentStrict;
}
struct VkQueueFamilyProperties {
  VkQueueFlags queueFlags;
  uint queueCount;
  uint timestampValidBits;
  VkExtent3D minImageTransferGranularity;
}
struct VkDeviceCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkDeviceCreateFlags flags;
  uint queueCreateInfoCount;
  VkDeviceQueueCreateInfo pQueueCreateInfos;
  uint enabledLayerCount;
  char* ppEnabledLayerNames;
  uint enabledExtensionCount;
  char* ppEnabledExtensionNames;
  VkPhysicalDeviceFeatures pEnabledFeatures;
}
struct VkDeviceQueueCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkDeviceQueueCreateFlags flags;
  uint queueFamilyIndex;
  uint queueCount;
  float pQueuePriorities;
}
struct VkExtensionProperties {
  char* extensionName;
  uint specVersion;
}
struct VkLayerProperties {
  char* layerName;
  uint specVersion;
  uint implementationVersion;
  char* description;
}
struct VkSubmitInfo {
  VkStructureType sType;
  void* pNext;
  uint waitSemaphoreCount;
  VkSemaphore pWaitSemaphores;
  VkPipelineStageFlags pWaitDstStageMask;
  uint commandBufferCount;
  VkCommandBuffer pCommandBuffers;
  uint signalSemaphoreCount;
  VkSemaphore pSignalSemaphores;
}
struct VkMappedMemoryRange {
  VkStructureType sType;
  void* pNext;
  VkDeviceMemory memory;
  VkDeviceSize offset;
  VkDeviceSize size;
}
struct VkMemoryAllocateInfo {
  VkStructureType sType;
  void* pNext;
  VkDeviceSize allocationSize;
  uint memoryTypeIndex;
}
struct VkMemoryRequirements {
  VkDeviceSize size;
  VkDeviceSize alignment;
  uint memoryTypeBits;
}
struct VkBindSparseInfo {
  VkStructureType sType;
  void* pNext;
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
struct VkImageSubresource {
  VkImageAspectFlags aspectMask;
  uint mipLevel;
  uint arrayLayer;
}
struct VkSparseBufferMemoryBindInfo {
  VkBuffer buffer;
  uint bindCount;
  VkSparseMemoryBind pBinds;
}
struct VkSparseImageFormatProperties {
  VkImageAspectFlags aspectMask;
  VkExtent3D imageGranularity;
  VkSparseImageFormatFlags flags;
}
struct VkSparseImageMemoryBind {
  VkImageSubresource subresource;
  VkOffset3D offset;
  VkExtent3D extent;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  VkSparseMemoryBindFlags flags;
}
struct VkSparseImageMemoryBindInfo {
  VkImage image;
  uint bindCount;
  VkSparseImageMemoryBind pBinds;
}
struct VkSparseImageMemoryRequirements {
  VkSparseImageFormatProperties formatProperties;
  uint imageMipTailFirstLod;
  VkDeviceSize imageMipTailSize;
  VkDeviceSize imageMipTailOffset;
  VkDeviceSize imageMipTailStride;
}
struct VkSparseImageOpaqueMemoryBindInfo {
  VkImage image;
  uint bindCount;
  VkSparseMemoryBind pBinds;
}
struct VkSparseMemoryBind {
  VkDeviceSize resourceOffset;
  VkDeviceSize size;
  VkDeviceMemory memory;
  VkDeviceSize memoryOffset;
  VkSparseMemoryBindFlags flags;
}
struct VkFenceCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkFenceCreateFlags flags;
}
struct VkSemaphoreCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkSemaphoreCreateFlags flags;
}
struct VkEventCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkEventCreateFlags flags;
}
struct VkQueryPoolCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkQueryPoolCreateFlags flags;
  VkQueryType queryType;
  uint queryCount;
  VkQueryPipelineStatisticFlags pipelineStatistics;
}
struct VkBufferCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkBufferCreateFlags flags;
  VkDeviceSize size;
  VkBufferUsageFlags usage;
  VkSharingMode sharingMode;
  uint queueFamilyIndexCount;
  uint pQueueFamilyIndices;
}
struct VkBufferViewCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkBufferViewCreateFlags flags;
  VkBuffer buffer;
  VkFormat format;
  VkDeviceSize offset;
  VkDeviceSize range;
}
struct VkImageCreateInfo {
  VkStructureType sType;
  void* pNext;
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
struct VkComponentMapping {
  VkComponentSwizzle r;
  VkComponentSwizzle g;
  VkComponentSwizzle b;
  VkComponentSwizzle a;
}
struct VkImageSubresourceRange {
  VkImageAspectFlags aspectMask;
  uint baseMipLevel;
  uint levelCount;
  uint baseArrayLayer;
  uint layerCount;
}
struct VkImageViewCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkImageViewCreateFlags flags;
  VkImage image;
  VkImageViewType viewType;
  VkFormat format;
  VkComponentMapping components;
  VkImageSubresourceRange subresourceRange;
}
struct VkShaderModuleCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkShaderModuleCreateFlags flags;
  usz codeSize;
  uint pCode;
}
struct VkPipelineCacheCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineCacheCreateFlags flags;
  usz initialDataSize;
  void* pInitialData;
}
struct VkComputePipelineCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineCreateFlags flags;
  VkPipelineShaderStageCreateInfo stage;
  VkPipelineLayout layout;
  VkPipeline basePipelineHandle;
  int basePipelineIndex;
}
struct VkGraphicsPipelineCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineCreateFlags flags;
  uint stageCount;
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
  void* pNext;
  VkPipelineColorBlendStateCreateFlags flags;
  VkBool32 logicOpEnable;
  VkLogicOp logicOp;
  uint attachmentCount;
  VkPipelineColorBlendAttachmentState pAttachments;
  float blendConstants;
}
struct VkPipelineDepthStencilStateCreateInfo {
  VkStructureType sType;
  void* pNext;
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
struct VkPipelineDynamicStateCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineDynamicStateCreateFlags flags;
  uint dynamicStateCount;
  VkDynamicState pDynamicStates;
}
struct VkPipelineInputAssemblyStateCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineInputAssemblyStateCreateFlags flags;
  VkPrimitiveTopology topology;
  VkBool32 primitiveRestartEnable;
}
struct VkPipelineMultisampleStateCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineMultisampleStateCreateFlags flags;
  VkSampleCountFlagBits rasterizationSamples;
  VkBool32 sampleShadingEnable;
  float minSampleShading;
  VkSampleMask pSampleMask;
  VkBool32 alphaToCoverageEnable;
  VkBool32 alphaToOneEnable;
}
struct VkPipelineRasterizationStateCreateInfo {
  VkStructureType sType;
  void* pNext;
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
struct VkPipelineShaderStageCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineShaderStageCreateFlags flags;
  VkShaderStageFlagBits stage;
  VkShaderModule mod;
  char* pName;
  VkSpecializationInfo pSpecializationInfo;
}
struct VkPipelineTessellationStateCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineTessellationStateCreateFlags flags;
  uint patchControlPoints;
}
struct VkPipelineVertexInputStateCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineVertexInputStateCreateFlags flags;
  uint vertexBindingDescriptionCount;
  VkVertexInputBindingDescription pVertexBindingDescriptions;
  uint vertexAttributeDescriptionCount;
  VkVertexInputAttributeDescription pVertexAttributeDescriptions;
}
struct VkPipelineViewportStateCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineViewportStateCreateFlags flags;
  uint viewportCount;
  VkViewport pViewports;
  uint scissorCount;
  VkRect2D pScissors;
}
struct VkSpecializationInfo {
  uint mapEntryCount;
  VkSpecializationMapEntry pMapEntries;
  usz dataSize;
  void* pData;
}
struct VkSpecializationMapEntry {
  uint constantID;
  uint offset;
  usz size;
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
struct VkVertexInputAttributeDescription {
  uint location;
  uint binding;
  VkFormat format;
  uint offset;
}
struct VkVertexInputBindingDescription {
  uint binding;
  uint stride;
  VkVertexInputRate inputRate;
}
struct VkViewport {
  float x;
  float y;
  float width;
  float height;
  float minDepth;
  float maxDepth;
}
struct VkPipelineLayoutCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkPipelineLayoutCreateFlags flags;
  uint setLayoutCount;
  VkDescriptorSetLayout pSetLayouts;
  uint pushConstantRangeCount;
  VkPushConstantRange pPushConstantRanges;
}
struct VkPushConstantRange {
  VkShaderStageFlags stageFlags;
  uint offset;
  uint size;
}
struct VkSamplerCreateInfo {
  VkStructureType sType;
  void* pNext;
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
struct VkCopyDescriptorSet {
  VkStructureType sType;
  void* pNext;
  VkDescriptorSet srcSet;
  uint srcBinding;
  uint srcArrayElement;
  VkDescriptorSet dstSet;
  uint dstBinding;
  uint dstArrayElement;
  uint descriptorCount;
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
struct VkDescriptorPoolCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkDescriptorPoolCreateFlags flags;
  uint maxSets;
  uint poolSizeCount;
  VkDescriptorPoolSize pPoolSizes;
}
struct VkDescriptorPoolSize {
  VkDescriptorType type;
  uint descriptorCount;
}
struct VkDescriptorSetAllocateInfo {
  VkStructureType sType;
  void* pNext;
  VkDescriptorPool descriptorPool;
  uint descriptorSetCount;
  VkDescriptorSetLayout pSetLayouts;
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
  void* pNext;
  VkDescriptorSetLayoutCreateFlags flags;
  uint bindingCount;
  VkDescriptorSetLayoutBinding pBindings;
}
struct VkWriteDescriptorSet {
  VkStructureType sType;
  void* pNext;
  VkDescriptorSet dstSet;
  uint dstBinding;
  uint dstArrayElement;
  uint descriptorCount;
  VkDescriptorType descriptorType;
  VkDescriptorImageInfo pImageInfo;
  VkDescriptorBufferInfo pBufferInfo;
  VkBufferView pTexelBufferView;
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
struct VkFramebufferCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkFramebufferCreateFlags flags;
  VkRenderPass renderPass;
  uint attachmentCount;
  VkImageView pAttachments;
  uint width;
  uint height;
  uint layers;
}
struct VkRenderPassCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkRenderPassCreateFlags flags;
  uint attachmentCount;
  VkAttachmentDescription pAttachments;
  uint subpassCount;
  VkSubpassDescription pSubpasses;
  uint dependencyCount;
  VkSubpassDependency pDependencies;
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
struct VkCommandPoolCreateInfo {
  VkStructureType sType;
  void* pNext;
  VkCommandPoolCreateFlags flags;
  uint queueFamilyIndex;
}
struct VkCommandBufferAllocateInfo {
  VkStructureType sType;
  void* pNext;
  VkCommandPool commandPool;
  VkCommandBufferLevel level;
  uint commandBufferCount;
}
struct VkCommandBufferBeginInfo {
  VkStructureType sType;
  void* pNext;
  VkCommandBufferUsageFlags flags;
  VkCommandBufferInheritanceInfo pInheritanceInfo;
}
struct VkCommandBufferInheritanceInfo {
  VkStructureType sType;
  void* pNext;
  VkRenderPass renderPass;
  uint subpass;
  VkFramebuffer framebuffer;
  VkBool32 occlusionQueryEnable;
  VkQueryControlFlags queryFlags;
  VkQueryPipelineStatisticFlags pipelineStatistics;
}
struct VkBufferCopy {
  VkDeviceSize srcOffset;
  VkDeviceSize dstOffset;
  VkDeviceSize size;
}
struct VkBufferImageCopy {
  VkDeviceSize bufferOffset;
  uint bufferRowLength;
  uint bufferImageHeight;
  VkImageSubresourceLayers imageSubresource;
  VkOffset3D imageOffset;
  VkExtent3D imageExtent;
}
struct VkClearAttachment {
  VkImageAspectFlags aspectMask;
  uint colorAttachment;
  VkClearValue clearValue;
}
union VkClearColorValue {
  float float32;
  int int32;
  uint uint32;
}
struct VkClearDepthStencilValue {
  float depth;
  uint stencil;
}
struct VkClearRect {
  VkRect2D rect;
  uint baseArrayLayer;
  uint layerCount;
}
union VkClearValue {
  VkClearColorValue color;
  VkClearDepthStencilValue depthStencil;
}
struct VkImageBlit {
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffsets;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffsets;
}
struct VkImageCopy {
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}
struct VkImageResolve {
  VkImageSubresourceLayers srcSubresource;
  VkOffset3D srcOffset;
  VkImageSubresourceLayers dstSubresource;
  VkOffset3D dstOffset;
  VkExtent3D extent;
}
struct VkImageSubresourceLayers {
  VkImageAspectFlags aspectMask;
  uint mipLevel;
  uint baseArrayLayer;
  uint layerCount;
}
struct VkRenderPassBeginInfo {
  VkStructureType sType;
  void* pNext;
  VkRenderPass renderPass;
  VkFramebuffer framebuffer;
  VkRect2D renderArea;
  uint clearValueCount;
  VkClearValue pClearValues;
}
struct VkDeviceObjectReservationCreateInfo {
  VkStructureType sType;
  void* pNext;
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
  void* pNext;
  VkDeviceSize commandPoolReservedSize;
  uint commandPoolMaxCommandBuffers;
}
struct VkCommandPoolMemoryConsumption {
  VkStructureType sType;
  void* pNext;
  VkDeviceSize commandPoolAllocated;
  VkDeviceSize commandPoolReservedSize;
  VkDeviceSize commandBufferAllocated;
}
struct VkPipelinePoolSize {
  VkStructureType sType;
  void* pNext;
  VkDeviceSize poolEntrySize;
  uint poolEntryCount;
}
struct VkFaultData {
  VkStructureType sType;
  void* pNext;
  VkFaultLevel faultLevel;
  VkFaultType faultType;
}
struct VkFaultCallbackInfo {
  VkStructureType sType;
  void* pNext;
  uint faultCount;
  VkFaultData pFaults;
  PFN_vkFaultCallbackFunction pfnFaultCallback;
}
struct VkPipelineOfflineCreateInfo {
  VkStructureType sType;
  void* pNext;
  char pipelineIdentifier;
  VkPipelineMatchControl matchControl;
  VkDeviceSize poolEntrySize;
}
struct VkPipelineCacheStageValidationIndexEntry {
  ulong codeSize;
  ulong codeOffset;
}
struct VkPipelineCacheSafetyCriticalIndexEntry {
  char pipelineIdentifier;
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
def PFN_vkAllocationFunction = fn void* (void*, usz, usz, VkSystemAllocationScope);
def PFN_vkFreeFunction = fn void* (void*, void*);
def PFN_vkInternalAllocationNotification = fn void* (void*, usz, VkInternalAllocationType, VkSystemAllocationScope);
def PFN_vkInternalFreeNotification = fn void* (void*, usz, VkInternalAllocationType, VkSystemAllocationScope);
def PFN_vkReallocationFunction = fn void* (void*, void*, usz, usz, VkSystemAllocationScope);
def PFN_vkVoidFunction = fn void* ();
def PFN_vkFaultCallbackFunction = fn void* (VkBool32, uint, VkFaultData);
extern fn VkResult createInstance (VkInstanceCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkInstance pinstance) @extern("vkCreateInstance");
extern fn void* destroyInstance (VkInstance instance, VkAllocationCallbacks pallocator) @extern("vkDestroyInstance");
extern fn VkResult enumeratePhysicalDevices (VkInstance instance, uint pphysicaldevicecount, VkPhysicalDevice pphysicaldevices) @extern("vkEnumeratePhysicalDevices");
extern fn void* getPhysicalDeviceFeatures (VkPhysicalDevice physicaldevice, VkPhysicalDeviceFeatures pfeatures) @extern("vkGetPhysicalDeviceFeatures");
extern fn void* getPhysicalDeviceFormatProperties (VkPhysicalDevice physicaldevice, VkFormat format, VkFormatProperties pformatproperties) @extern("vkGetPhysicalDeviceFormatProperties");
extern fn VkResult getPhysicalDeviceImageFormatProperties (VkPhysicalDevice physicaldevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkImageFormatProperties pimageformatproperties) @extern("vkGetPhysicalDeviceImageFormatProperties");
extern fn void* getPhysicalDeviceProperties (VkPhysicalDevice physicaldevice, VkPhysicalDeviceProperties pproperties) @extern("vkGetPhysicalDeviceProperties");
extern fn void* getPhysicalDeviceQueueFamilyProperties (VkPhysicalDevice physicaldevice, uint pqueuefamilypropertycount, VkQueueFamilyProperties pqueuefamilyproperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties");
extern fn void* getPhysicalDeviceMemoryProperties (VkPhysicalDevice physicaldevice, VkPhysicalDeviceMemoryProperties pmemoryproperties) @extern("vkGetPhysicalDeviceMemoryProperties");
extern fn PFN_vkVoidFunction getInstanceProcAddr (VkInstance instance, char* pname) @extern("vkGetInstanceProcAddr");
extern fn PFN_vkVoidFunction getDeviceProcAddr (VkDevice device, char* pname) @extern("vkGetDeviceProcAddr");
extern fn VkResult createDevice (VkPhysicalDevice physicaldevice, VkDeviceCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkDevice pdevice) @extern("vkCreateDevice");
extern fn void* destroyDevice (VkDevice device, VkAllocationCallbacks pallocator) @extern("vkDestroyDevice");
extern fn VkResult enumerateInstanceExtensionProperties (char* playername, uint ppropertycount, VkExtensionProperties pproperties) @extern("vkEnumerateInstanceExtensionProperties");
extern fn VkResult enumerateDeviceExtensionProperties (VkPhysicalDevice physicaldevice, char* playername, uint ppropertycount, VkExtensionProperties pproperties) @extern("vkEnumerateDeviceExtensionProperties");
extern fn VkResult enumerateInstanceLayerProperties (uint ppropertycount, VkLayerProperties pproperties) @extern("vkEnumerateInstanceLayerProperties");
extern fn VkResult enumerateDeviceLayerProperties (VkPhysicalDevice physicaldevice, uint ppropertycount, VkLayerProperties pproperties) @extern("vkEnumerateDeviceLayerProperties");
extern fn void* getDeviceQueue (VkDevice device, uint queuefamilyindex, uint queueindex, VkQueue pqueue) @extern("vkGetDeviceQueue");
extern fn VkResult queueSubmit (VkQueue queue, uint submitcount, VkSubmitInfo psubmits, VkFence fence) @extern("vkQueueSubmit");
extern fn VkResult queueWaitIdle (VkQueue queue) @extern("vkQueueWaitIdle");
extern fn VkResult deviceWaitIdle (VkDevice device) @extern("vkDeviceWaitIdle");
extern fn VkResult allocateMemory (VkDevice device, VkMemoryAllocateInfo pallocateinfo, VkAllocationCallbacks pallocator, VkDeviceMemory pmemory) @extern("vkAllocateMemory");
extern fn void* freeMemory (VkDevice device, VkDeviceMemory memory, VkAllocationCallbacks pallocator) @extern("vkFreeMemory");
extern fn VkResult mapMemory (VkDevice device, VkDeviceMemory memory, VkDeviceSize offset, VkDeviceSize size, VkMemoryMapFlags flags, void* ppdata) @extern("vkMapMemory");
extern fn void* unmapMemory (VkDevice device, VkDeviceMemory memory) @extern("vkUnmapMemory");
extern fn VkResult flushMappedMemoryRanges (VkDevice device, uint memoryrangecount, VkMappedMemoryRange pmemoryranges) @extern("vkFlushMappedMemoryRanges");
extern fn VkResult invalidateMappedMemoryRanges (VkDevice device, uint memoryrangecount, VkMappedMemoryRange pmemoryranges) @extern("vkInvalidateMappedMemoryRanges");
extern fn void* getDeviceMemoryCommitment (VkDevice device, VkDeviceMemory memory, VkDeviceSize pcommittedmemoryinbytes) @extern("vkGetDeviceMemoryCommitment");
extern fn VkResult bindBufferMemory (VkDevice device, VkBuffer buffer, VkDeviceMemory memory, VkDeviceSize memoryoffset) @extern("vkBindBufferMemory");
extern fn VkResult bindImageMemory (VkDevice device, VkImage image, VkDeviceMemory memory, VkDeviceSize memoryoffset) @extern("vkBindImageMemory");
extern fn void* getBufferMemoryRequirements (VkDevice device, VkBuffer buffer, VkMemoryRequirements pmemoryrequirements) @extern("vkGetBufferMemoryRequirements");
extern fn void* getImageMemoryRequirements (VkDevice device, VkImage image, VkMemoryRequirements pmemoryrequirements) @extern("vkGetImageMemoryRequirements");
extern fn void* getImageSparseMemoryRequirements (VkDevice device, VkImage image, uint psparsememoryrequirementcount, VkSparseImageMemoryRequirements psparsememoryrequirements) @extern("vkGetImageSparseMemoryRequirements");
extern fn void* getPhysicalDeviceSparseImageFormatProperties (VkPhysicalDevice physicaldevice, VkFormat format, VkImageType type, VkSampleCountFlagBits samples, VkImageUsageFlags usage, VkImageTiling tiling, uint ppropertycount, VkSparseImageFormatProperties pproperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties");
extern fn VkResult queueBindSparse (VkQueue queue, uint bindinfocount, VkBindSparseInfo pbindinfo, VkFence fence) @extern("vkQueueBindSparse");
extern fn VkResult createFence (VkDevice device, VkFenceCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkFence pfence) @extern("vkCreateFence");
extern fn void* destroyFence (VkDevice device, VkFence fence, VkAllocationCallbacks pallocator) @extern("vkDestroyFence");
extern fn VkResult resetFences (VkDevice device, uint fencecount, VkFence pfences) @extern("vkResetFences");
extern fn VkResult getFenceStatus (VkDevice device, VkFence fence) @extern("vkGetFenceStatus");
extern fn VkResult waitForFences (VkDevice device, uint fencecount, VkFence pfences, VkBool32 waitall, ulong timeout) @extern("vkWaitForFences");
extern fn VkResult createSemaphore (VkDevice device, VkSemaphoreCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkSemaphore psemaphore) @extern("vkCreateSemaphore");
extern fn void* destroySemaphore (VkDevice device, VkSemaphore semaphore, VkAllocationCallbacks pallocator) @extern("vkDestroySemaphore");
extern fn VkResult createEvent (VkDevice device, VkEventCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkEvent pevent) @extern("vkCreateEvent");
extern fn void* destroyEvent (VkDevice device, VkEvent event, VkAllocationCallbacks pallocator) @extern("vkDestroyEvent");
extern fn VkResult getEventStatus (VkDevice device, VkEvent event) @extern("vkGetEventStatus");
extern fn VkResult setEvent (VkDevice device, VkEvent event) @extern("vkSetEvent");
extern fn VkResult resetEvent (VkDevice device, VkEvent event) @extern("vkResetEvent");
extern fn VkResult createQueryPool (VkDevice device, VkQueryPoolCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkQueryPool pquerypool) @extern("vkCreateQueryPool");
extern fn void* destroyQueryPool (VkDevice device, VkQueryPool querypool, VkAllocationCallbacks pallocator) @extern("vkDestroyQueryPool");
extern fn VkResult getQueryPoolResults (VkDevice device, VkQueryPool querypool, uint firstquery, uint querycount, usz datasize, void* pdata, VkDeviceSize stride, VkQueryResultFlags flags) @extern("vkGetQueryPoolResults");
extern fn VkResult createBuffer (VkDevice device, VkBufferCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkBuffer pbuffer) @extern("vkCreateBuffer");
extern fn void* destroyBuffer (VkDevice device, VkBuffer buffer, VkAllocationCallbacks pallocator) @extern("vkDestroyBuffer");
extern fn VkResult createBufferView (VkDevice device, VkBufferViewCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkBufferView pview) @extern("vkCreateBufferView");
extern fn void* destroyBufferView (VkDevice device, VkBufferView bufferview, VkAllocationCallbacks pallocator) @extern("vkDestroyBufferView");
extern fn VkResult createImage (VkDevice device, VkImageCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkImage pimage) @extern("vkCreateImage");
extern fn void* destroyImage (VkDevice device, VkImage image, VkAllocationCallbacks pallocator) @extern("vkDestroyImage");
extern fn void* getImageSubresourceLayout (VkDevice device, VkImage image, VkImageSubresource psubresource, VkSubresourceLayout playout) @extern("vkGetImageSubresourceLayout");
extern fn VkResult createImageView (VkDevice device, VkImageViewCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkImageView pview) @extern("vkCreateImageView");
extern fn void* destroyImageView (VkDevice device, VkImageView imageview, VkAllocationCallbacks pallocator) @extern("vkDestroyImageView");
extern fn VkResult createShaderModule (VkDevice device, VkShaderModuleCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkShaderModule pshadermodule) @extern("vkCreateShaderModule");
extern fn void* destroyShaderModule (VkDevice device, VkShaderModule shadermodule, VkAllocationCallbacks pallocator) @extern("vkDestroyShaderModule");
extern fn VkResult createPipelineCache (VkDevice device, VkPipelineCacheCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkPipelineCache ppipelinecache) @extern("vkCreatePipelineCache");
extern fn void* destroyPipelineCache (VkDevice device, VkPipelineCache pipelinecache, VkAllocationCallbacks pallocator) @extern("vkDestroyPipelineCache");
extern fn VkResult getPipelineCacheData (VkDevice device, VkPipelineCache pipelinecache, usz pdatasize, void* pdata) @extern("vkGetPipelineCacheData");
extern fn VkResult mergePipelineCaches (VkDevice device, VkPipelineCache dstcache, uint srccachecount, VkPipelineCache psrccaches) @extern("vkMergePipelineCaches");
extern fn VkResult createGraphicsPipelines (VkDevice device, VkPipelineCache pipelinecache, uint createinfocount, VkGraphicsPipelineCreateInfo pcreateinfos, VkAllocationCallbacks pallocator, VkPipeline ppipelines) @extern("vkCreateGraphicsPipelines");
extern fn VkResult createComputePipelines (VkDevice device, VkPipelineCache pipelinecache, uint createinfocount, VkComputePipelineCreateInfo pcreateinfos, VkAllocationCallbacks pallocator, VkPipeline ppipelines) @extern("vkCreateComputePipelines");
extern fn void* destroyPipeline (VkDevice device, VkPipeline pipeline, VkAllocationCallbacks pallocator) @extern("vkDestroyPipeline");
extern fn VkResult createPipelineLayout (VkDevice device, VkPipelineLayoutCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkPipelineLayout ppipelinelayout) @extern("vkCreatePipelineLayout");
extern fn void* destroyPipelineLayout (VkDevice device, VkPipelineLayout pipelinelayout, VkAllocationCallbacks pallocator) @extern("vkDestroyPipelineLayout");
extern fn VkResult createSampler (VkDevice device, VkSamplerCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkSampler psampler) @extern("vkCreateSampler");
extern fn void* destroySampler (VkDevice device, VkSampler sampler, VkAllocationCallbacks pallocator) @extern("vkDestroySampler");
extern fn VkResult createDescriptorSetLayout (VkDevice device, VkDescriptorSetLayoutCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkDescriptorSetLayout psetlayout) @extern("vkCreateDescriptorSetLayout");
extern fn void* destroyDescriptorSetLayout (VkDevice device, VkDescriptorSetLayout descriptorsetlayout, VkAllocationCallbacks pallocator) @extern("vkDestroyDescriptorSetLayout");
extern fn VkResult createDescriptorPool (VkDevice device, VkDescriptorPoolCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkDescriptorPool pdescriptorpool) @extern("vkCreateDescriptorPool");
extern fn void* destroyDescriptorPool (VkDevice device, VkDescriptorPool descriptorpool, VkAllocationCallbacks pallocator) @extern("vkDestroyDescriptorPool");
extern fn VkResult resetDescriptorPool (VkDevice device, VkDescriptorPool descriptorpool, VkDescriptorPoolResetFlags flags) @extern("vkResetDescriptorPool");
extern fn VkResult allocateDescriptorSets (VkDevice device, VkDescriptorSetAllocateInfo pallocateinfo, VkDescriptorSet pdescriptorsets) @extern("vkAllocateDescriptorSets");
extern fn VkResult freeDescriptorSets (VkDevice device, VkDescriptorPool descriptorpool, uint descriptorsetcount, VkDescriptorSet pdescriptorsets) @extern("vkFreeDescriptorSets");
extern fn void* updateDescriptorSets (VkDevice device, uint descriptorwritecount, VkWriteDescriptorSet pdescriptorwrites, uint descriptorcopycount, VkCopyDescriptorSet pdescriptorcopies) @extern("vkUpdateDescriptorSets");
extern fn VkResult createFramebuffer (VkDevice device, VkFramebufferCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkFramebuffer pframebuffer) @extern("vkCreateFramebuffer");
extern fn void* destroyFramebuffer (VkDevice device, VkFramebuffer framebuffer, VkAllocationCallbacks pallocator) @extern("vkDestroyFramebuffer");
extern fn VkResult createRenderPass (VkDevice device, VkRenderPassCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkRenderPass prenderpass) @extern("vkCreateRenderPass");
extern fn void* destroyRenderPass (VkDevice device, VkRenderPass renderpass, VkAllocationCallbacks pallocator) @extern("vkDestroyRenderPass");
extern fn void* getRenderAreaGranularity (VkDevice device, VkRenderPass renderpass, VkExtent2D pgranularity) @extern("vkGetRenderAreaGranularity");
extern fn VkResult createCommandPool (VkDevice device, VkCommandPoolCreateInfo pcreateinfo, VkAllocationCallbacks pallocator, VkCommandPool pcommandpool) @extern("vkCreateCommandPool");
extern fn void* destroyCommandPool (VkDevice device, VkCommandPool commandpool, VkAllocationCallbacks pallocator) @extern("vkDestroyCommandPool");
extern fn VkResult resetCommandPool (VkDevice device, VkCommandPool commandpool, VkCommandPoolResetFlags flags) @extern("vkResetCommandPool");
extern fn VkResult allocateCommandBuffers (VkDevice device, VkCommandBufferAllocateInfo pallocateinfo, VkCommandBuffer pcommandbuffers) @extern("vkAllocateCommandBuffers");
extern fn void* freeCommandBuffers (VkDevice device, VkCommandPool commandpool, uint commandbuffercount, VkCommandBuffer pcommandbuffers) @extern("vkFreeCommandBuffers");
extern fn VkResult beginCommandBuffer (VkCommandBuffer commandbuffer, VkCommandBufferBeginInfo pbegininfo) @extern("vkBeginCommandBuffer");
extern fn VkResult endCommandBuffer (VkCommandBuffer commandbuffer) @extern("vkEndCommandBuffer");
extern fn VkResult resetCommandBuffer (VkCommandBuffer commandbuffer, VkCommandBufferResetFlags flags) @extern("vkResetCommandBuffer");
extern fn void* cmdBindPipeline (VkCommandBuffer commandbuffer, VkPipelineBindPoint pipelinebindpoint, VkPipeline pipeline) @extern("vkCmdBindPipeline");
extern fn void* cmdSetViewport (VkCommandBuffer commandbuffer, uint firstviewport, uint viewportcount, VkViewport pviewports) @extern("vkCmdSetViewport");
extern fn void* cmdSetScissor (VkCommandBuffer commandbuffer, uint firstscissor, uint scissorcount, VkRect2D pscissors) @extern("vkCmdSetScissor");
extern fn void* cmdSetLineWidth (VkCommandBuffer commandbuffer, float linewidth) @extern("vkCmdSetLineWidth");
extern fn void* cmdSetDepthBias (VkCommandBuffer commandbuffer, float depthbiasconstantfactor, float depthbiasclamp, float depthbiasslopefactor) @extern("vkCmdSetDepthBias");
extern fn void* cmdSetBlendConstants (VkCommandBuffer commandbuffer, float blendconstants) @extern("vkCmdSetBlendConstants");
extern fn void* cmdSetDepthBounds (VkCommandBuffer commandbuffer, float mindepthbounds, float maxdepthbounds) @extern("vkCmdSetDepthBounds");
extern fn void* cmdSetStencilCompareMask (VkCommandBuffer commandbuffer, VkStencilFaceFlags facemask, uint comparemask) @extern("vkCmdSetStencilCompareMask");
extern fn void* cmdSetStencilWriteMask (VkCommandBuffer commandbuffer, VkStencilFaceFlags facemask, uint writemask) @extern("vkCmdSetStencilWriteMask");
extern fn void* cmdSetStencilReference (VkCommandBuffer commandbuffer, VkStencilFaceFlags facemask, uint reference) @extern("vkCmdSetStencilReference");
extern fn void* cmdBindDescriptorSets (VkCommandBuffer commandbuffer, VkPipelineBindPoint pipelinebindpoint, VkPipelineLayout layout, uint firstset, uint descriptorsetcount, VkDescriptorSet pdescriptorsets, uint dynamicoffsetcount, uint pdynamicoffsets) @extern("vkCmdBindDescriptorSets");
extern fn void* cmdBindIndexBuffer (VkCommandBuffer commandbuffer, VkBuffer buffer, VkDeviceSize offset, VkIndexType indextype) @extern("vkCmdBindIndexBuffer");
extern fn void* cmdBindVertexBuffers (VkCommandBuffer commandbuffer, uint firstbinding, uint bindingcount, VkBuffer pbuffers, VkDeviceSize poffsets) @extern("vkCmdBindVertexBuffers");
extern fn void* cmdDraw (VkCommandBuffer commandbuffer, uint vertexcount, uint instancecount, uint firstvertex, uint firstinstance) @extern("vkCmdDraw");
extern fn void* cmdDrawIndexed (VkCommandBuffer commandbuffer, uint indexcount, uint instancecount, uint firstindex, int vertexoffset, uint firstinstance) @extern("vkCmdDrawIndexed");
extern fn void* cmdDrawIndirect (VkCommandBuffer commandbuffer, VkBuffer buffer, VkDeviceSize offset, uint drawcount, uint stride) @extern("vkCmdDrawIndirect");
extern fn void* cmdDrawIndexedIndirect (VkCommandBuffer commandbuffer, VkBuffer buffer, VkDeviceSize offset, uint drawcount, uint stride) @extern("vkCmdDrawIndexedIndirect");
extern fn void* cmdDispatch (VkCommandBuffer commandbuffer, uint groupcountx, uint groupcounty, uint groupcountz) @extern("vkCmdDispatch");
extern fn void* cmdDispatchIndirect (VkCommandBuffer commandbuffer, VkBuffer buffer, VkDeviceSize offset) @extern("vkCmdDispatchIndirect");
extern fn void* cmdCopyBuffer (VkCommandBuffer commandbuffer, VkBuffer srcbuffer, VkBuffer dstbuffer, uint regioncount, VkBufferCopy pregions) @extern("vkCmdCopyBuffer");
extern fn void* cmdCopyImage (VkCommandBuffer commandbuffer, VkImage srcimage, VkImageLayout srcimagelayout, VkImage dstimage, VkImageLayout dstimagelayout, uint regioncount, VkImageCopy pregions) @extern("vkCmdCopyImage");
extern fn void* cmdBlitImage (VkCommandBuffer commandbuffer, VkImage srcimage, VkImageLayout srcimagelayout, VkImage dstimage, VkImageLayout dstimagelayout, uint regioncount, VkImageBlit pregions, VkFilter filter) @extern("vkCmdBlitImage");
extern fn void* cmdCopyBufferToImage (VkCommandBuffer commandbuffer, VkBuffer srcbuffer, VkImage dstimage, VkImageLayout dstimagelayout, uint regioncount, VkBufferImageCopy pregions) @extern("vkCmdCopyBufferToImage");
extern fn void* cmdCopyImageToBuffer (VkCommandBuffer commandbuffer, VkImage srcimage, VkImageLayout srcimagelayout, VkBuffer dstbuffer, uint regioncount, VkBufferImageCopy pregions) @extern("vkCmdCopyImageToBuffer");
extern fn void* cmdUpdateBuffer (VkCommandBuffer commandbuffer, VkBuffer dstbuffer, VkDeviceSize dstoffset, VkDeviceSize datasize, void* pdata) @extern("vkCmdUpdateBuffer");
extern fn void* cmdFillBuffer (VkCommandBuffer commandbuffer, VkBuffer dstbuffer, VkDeviceSize dstoffset, VkDeviceSize size, uint data) @extern("vkCmdFillBuffer");
extern fn void* cmdClearColorImage (VkCommandBuffer commandbuffer, VkImage image, VkImageLayout imagelayout, VkClearColorValue pcolor, uint rangecount, VkImageSubresourceRange pranges) @extern("vkCmdClearColorImage");
extern fn void* cmdClearDepthStencilImage (VkCommandBuffer commandbuffer, VkImage image, VkImageLayout imagelayout, VkClearDepthStencilValue pdepthstencil, uint rangecount, VkImageSubresourceRange pranges) @extern("vkCmdClearDepthStencilImage");
extern fn void* cmdClearAttachments (VkCommandBuffer commandbuffer, uint attachmentcount, VkClearAttachment pattachments, uint rectcount, VkClearRect prects) @extern("vkCmdClearAttachments");
extern fn void* cmdResolveImage (VkCommandBuffer commandbuffer, VkImage srcimage, VkImageLayout srcimagelayout, VkImage dstimage, VkImageLayout dstimagelayout, uint regioncount, VkImageResolve pregions) @extern("vkCmdResolveImage");
extern fn void* cmdSetEvent (VkCommandBuffer commandbuffer, VkEvent event, VkPipelineStageFlags stagemask) @extern("vkCmdSetEvent");
extern fn void* cmdResetEvent (VkCommandBuffer commandbuffer, VkEvent event, VkPipelineStageFlags stagemask) @extern("vkCmdResetEvent");
extern fn void* cmdWaitEvents (VkCommandBuffer commandbuffer, uint eventcount, VkEvent pevents, VkPipelineStageFlags srcstagemask, VkPipelineStageFlags dststagemask, uint memorybarriercount, VkMemoryBarrier pmemorybarriers, uint buffermemorybarriercount, VkBufferMemoryBarrier pbuffermemorybarriers, uint imagememorybarriercount, VkImageMemoryBarrier pimagememorybarriers) @extern("vkCmdWaitEvents");
extern fn void* cmdPipelineBarrier (VkCommandBuffer commandbuffer, VkPipelineStageFlags srcstagemask, VkPipelineStageFlags dststagemask, VkDependencyFlags dependencyflags, uint memorybarriercount, VkMemoryBarrier pmemorybarriers, uint buffermemorybarriercount, VkBufferMemoryBarrier pbuffermemorybarriers, uint imagememorybarriercount, VkImageMemoryBarrier pimagememorybarriers) @extern("vkCmdPipelineBarrier");
extern fn void* cmdBeginQuery (VkCommandBuffer commandbuffer, VkQueryPool querypool, uint query, VkQueryControlFlags flags) @extern("vkCmdBeginQuery");
extern fn void* cmdEndQuery (VkCommandBuffer commandbuffer, VkQueryPool querypool, uint query) @extern("vkCmdEndQuery");
extern fn void* cmdResetQueryPool (VkCommandBuffer commandbuffer, VkQueryPool querypool, uint firstquery, uint querycount) @extern("vkCmdResetQueryPool");
extern fn void* cmdWriteTimestamp (VkCommandBuffer commandbuffer, VkPipelineStageFlagBits pipelinestage, VkQueryPool querypool, uint query) @extern("vkCmdWriteTimestamp");
extern fn void* cmdCopyQueryPoolResults (VkCommandBuffer commandbuffer, VkQueryPool querypool, uint firstquery, uint querycount, VkBuffer dstbuffer, VkDeviceSize dstoffset, VkDeviceSize stride, VkQueryResultFlags flags) @extern("vkCmdCopyQueryPoolResults");
extern fn void* cmdPushConstants (VkCommandBuffer commandbuffer, VkPipelineLayout layout, VkShaderStageFlags stageflags, uint offset, uint size, void* pvalues) @extern("vkCmdPushConstants");
extern fn void* cmdBeginRenderPass (VkCommandBuffer commandbuffer, VkRenderPassBeginInfo prenderpassbegin, VkSubpassContents contents) @extern("vkCmdBeginRenderPass");
extern fn void* cmdNextSubpass (VkCommandBuffer commandbuffer, VkSubpassContents contents) @extern("vkCmdNextSubpass");
extern fn void* cmdEndRenderPass (VkCommandBuffer commandbuffer) @extern("vkCmdEndRenderPass");
extern fn void* cmdExecuteCommands (VkCommandBuffer commandbuffer, uint commandbuffercount, VkCommandBuffer pcommandbuffers) @extern("vkCmdExecuteCommands");
extern fn void* getCommandPoolMemoryConsumption (VkDevice device, VkCommandPool commandpool, VkCommandBuffer commandbuffer, VkCommandPoolMemoryConsumption pconsumption) @extern("vkGetCommandPoolMemoryConsumption");
extern fn VkResult getFaultData (VkDevice device, VkFaultQueryBehavior faultquerybehavior, VkBool32 punrecordedfaults, uint pfaultcount, VkFaultData pfaults) @extern("vkGetFaultData");

def VkResult = distinct inline long;
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

def VkStructureType = distinct inline long;
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

def VkPipelineCacheHeaderVersion = distinct inline long;
const VkPipelineCacheHeaderVersion VK_PIPELINE_CACHE_HEADER_VERSION_ONE = 1;

def VkObjectType = distinct inline long;
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

def VkVendorId = distinct inline long;
const VkVendorId VK_VENDOR_ID_VIV = 0x10001;
const VkVendorId VK_VENDOR_ID_VSI = 0x10002;
const VkVendorId VK_VENDOR_ID_KAZAN = 0x10003;
const VkVendorId VK_VENDOR_ID_CODEPLAY = 0x10004;
const VkVendorId VK_VENDOR_ID_MESA = 0x10005;
const VkVendorId VK_VENDOR_ID_POCL = 0x10006;
const VkVendorId VK_VENDOR_ID_MOBILEYE = 0x10007;

def VkFormat = distinct inline long;
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

def VkFormatFeatureFlagBits = distinct inline long;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT = 0x00000001;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT = 0x00000002;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT = 0x00000004;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000008;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT = 0x00000010;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 0x00000020;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT = 0x00000040;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT = 0x00000080;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT = 0x00000100;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000200;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_BLIT_SRC_BIT = 0x00000400;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_BLIT_DST_BIT = 0x00000800;
const VkFormatFeatureFlagBits VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 0x00001000;

def VkImageCreateFlagBits = distinct inline long;
const VkImageCreateFlagBits VK_IMAGE_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const VkImageCreateFlagBits VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const VkImageCreateFlagBits VK_IMAGE_CREATE_SPARSE_ALIASED_BIT = 0x00000004;
const VkImageCreateFlagBits VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT = 0x00000008;
const VkImageCreateFlagBits VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 0x00000010;

def VkImageTiling = distinct inline long;
const VkImageTiling VK_IMAGE_TILING_OPTIMAL = 0;
const VkImageTiling VK_IMAGE_TILING_LINEAR = 1;

def VkImageType = distinct inline long;
const VkImageType VK_IMAGE_TYPE_1D = 0;
const VkImageType VK_IMAGE_TYPE_2D = 1;
const VkImageType VK_IMAGE_TYPE_3D = 2;

def VkImageUsageFlagBits = distinct inline long;
const VkImageUsageFlagBits VK_IMAGE_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const VkImageUsageFlagBits VK_IMAGE_USAGE_TRANSFER_DST_BIT = 0x00000002;
const VkImageUsageFlagBits VK_IMAGE_USAGE_SAMPLED_BIT = 0x00000004;
const VkImageUsageFlagBits VK_IMAGE_USAGE_STORAGE_BIT = 0x00000008;
const VkImageUsageFlagBits VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 0x00000010;
const VkImageUsageFlagBits VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000020;
const VkImageUsageFlagBits VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 0x00000040;
const VkImageUsageFlagBits VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 0x00000080;

def VkInstanceCreateFlagBits = distinct inline long;


def VkInternalAllocationType = distinct inline long;
const VkInternalAllocationType VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0;

def VkMemoryHeapFlagBits = distinct inline long;
const VkMemoryHeapFlagBits VK_MEMORY_HEAP_DEVICE_LOCAL_BIT = 0x00000001;

def VkMemoryPropertyFlagBits = distinct inline long;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 0x00000001;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT = 0x00000002;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_HOST_COHERENT_BIT = 0x00000004;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_HOST_CACHED_BIT = 0x00000008;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 0x00000010;

def VkPhysicalDeviceType = distinct inline long;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_OTHER = 0;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_CPU = 4;

def VkQueueFlagBits = distinct inline long;
const VkQueueFlagBits VK_QUEUE_GRAPHICS_BIT = 0x00000001;
const VkQueueFlagBits VK_QUEUE_COMPUTE_BIT = 0x00000002;
const VkQueueFlagBits VK_QUEUE_TRANSFER_BIT = 0x00000004;
const VkQueueFlagBits VK_QUEUE_SPARSE_BINDING_BIT = 0x00000008;

def VkSampleCountFlagBits = distinct inline long;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_1_BIT = 0x00000001;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_2_BIT = 0x00000002;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_4_BIT = 0x00000004;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_8_BIT = 0x00000008;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_16_BIT = 0x00000010;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_32_BIT = 0x00000020;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_64_BIT = 0x00000040;

def VkSystemAllocationScope = distinct inline long;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_COMMAND = 0;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_OBJECT = 1;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_CACHE = 2;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_DEVICE = 3;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4;

def VkPipelineStageFlagBits = distinct inline long;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT = 0x00000001;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT = 0x00000002;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_VERTEX_INPUT_BIT = 0x00000004;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_VERTEX_SHADER_BIT = 0x00000008;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT = 0x00000010;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT = 0x00000020;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT = 0x00000040;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT = 0x00000080;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT = 0x00000100;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT = 0x00000200;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT = 0x00000400;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT = 0x00000800;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_TRANSFER_BIT = 0x00001000;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = 0x00002000;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_HOST_BIT = 0x00004000;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT = 0x00008000;
const VkPipelineStageFlagBits VK_PIPELINE_STAGE_ALL_COMMANDS_BIT = 0x00010000;

def VkImageAspectFlagBits = distinct inline long;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_COLOR_BIT = 0x00000001;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_DEPTH_BIT = 0x00000002;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_STENCIL_BIT = 0x00000004;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_METADATA_BIT = 0x00000008;

def VkSparseImageFormatFlagBits = distinct inline long;
const VkSparseImageFormatFlagBits VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 0x00000001;
const VkSparseImageFormatFlagBits VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 0x00000002;
const VkSparseImageFormatFlagBits VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 0x00000004;

def VkSparseMemoryBindFlagBits = distinct inline long;
const VkSparseMemoryBindFlagBits VK_SPARSE_MEMORY_BIND_METADATA_BIT = 0x00000001;

def VkFenceCreateFlagBits = distinct inline long;
const VkFenceCreateFlagBits VK_FENCE_CREATE_SIGNALED_BIT = 0x00000001;

def VkEventCreateFlagBits = distinct inline long;


def VkQueryPipelineStatisticFlagBits = distinct inline long;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT = 0x00000001;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT = 0x00000002;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT = 0x00000004;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT = 0x00000008;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT = 0x00000010;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT = 0x00000020;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT = 0x00000040;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT = 0x00000080;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT = 0x00000100;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT = 0x00000200;
const VkQueryPipelineStatisticFlagBits VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT = 0x00000400;

def VkQueryResultFlagBits = distinct inline long;
const VkQueryResultFlagBits VK_QUERY_RESULT_64_BIT = 0x00000001;
const VkQueryResultFlagBits VK_QUERY_RESULT_WAIT_BIT = 0x00000002;
const VkQueryResultFlagBits VK_QUERY_RESULT_WITH_AVAILABILITY_BIT = 0x00000004;
const VkQueryResultFlagBits VK_QUERY_RESULT_PARTIAL_BIT = 0x00000008;

def VkQueryType = distinct inline long;
const VkQueryType VK_QUERY_TYPE_OCCLUSION = 0;
const VkQueryType VK_QUERY_TYPE_PIPELINE_STATISTICS = 1;
const VkQueryType VK_QUERY_TYPE_TIMESTAMP = 2;

def VkBufferCreateFlagBits = distinct inline long;
const VkBufferCreateFlagBits VK_BUFFER_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const VkBufferCreateFlagBits VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const VkBufferCreateFlagBits VK_BUFFER_CREATE_SPARSE_ALIASED_BIT = 0x00000004;

def VkBufferUsageFlagBits = distinct inline long;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_TRANSFER_DST_BIT = 0x00000002;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000004;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 0x00000008;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT = 0x00000010;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_STORAGE_BUFFER_BIT = 0x00000020;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_INDEX_BUFFER_BIT = 0x00000040;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_VERTEX_BUFFER_BIT = 0x00000080;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT = 0x00000100;

def VkSharingMode = distinct inline long;
const VkSharingMode VK_SHARING_MODE_EXCLUSIVE = 0;
const VkSharingMode VK_SHARING_MODE_CONCURRENT = 1;

def VkImageLayout = distinct inline long;
const VkImageLayout VK_IMAGE_LAYOUT_UNDEFINED = 0;
const VkImageLayout VK_IMAGE_LAYOUT_GENERAL = 1;
const VkImageLayout VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2;
const VkImageLayout VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3;
const VkImageLayout VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4;
const VkImageLayout VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5;
const VkImageLayout VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6;
const VkImageLayout VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7;
const VkImageLayout VK_IMAGE_LAYOUT_PREINITIALIZED = 8;

def VkComponentSwizzle = distinct inline long;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY = 0;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_ZERO = 1;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_ONE = 2;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_R = 3;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_G = 4;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_B = 5;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_A = 6;

def VkImageViewCreateFlagBits = distinct inline long;


def VkImageViewType = distinct inline long;
const VkImageViewType VK_IMAGE_VIEW_TYPE_1D = 0;
const VkImageViewType VK_IMAGE_VIEW_TYPE_2D = 1;
const VkImageViewType VK_IMAGE_VIEW_TYPE_3D = 2;
const VkImageViewType VK_IMAGE_VIEW_TYPE_CUBE = 3;
const VkImageViewType VK_IMAGE_VIEW_TYPE_1D_ARRAY = 4;
const VkImageViewType VK_IMAGE_VIEW_TYPE_2D_ARRAY = 5;
const VkImageViewType VK_IMAGE_VIEW_TYPE_CUBE_ARRAY = 6;

def VkBlendFactor = distinct inline long;
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

def VkBlendOp = distinct inline long;
const VkBlendOp VK_BLEND_OP_ADD = 0;
const VkBlendOp VK_BLEND_OP_SUBTRACT = 1;
const VkBlendOp VK_BLEND_OP_REVERSE_SUBTRACT = 2;
const VkBlendOp VK_BLEND_OP_MIN = 3;
const VkBlendOp VK_BLEND_OP_MAX = 4;

def VkColorComponentFlagBits = distinct inline long;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_R_BIT = 0x00000001;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_G_BIT = 0x00000002;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_B_BIT = 0x00000004;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_A_BIT = 0x00000008;

def VkCompareOp = distinct inline long;
const VkCompareOp VK_COMPARE_OP_NEVER = 0;
const VkCompareOp VK_COMPARE_OP_LESS = 1;
const VkCompareOp VK_COMPARE_OP_EQUAL = 2;
const VkCompareOp VK_COMPARE_OP_LESS_OR_EQUAL = 3;
const VkCompareOp VK_COMPARE_OP_GREATER = 4;
const VkCompareOp VK_COMPARE_OP_NOT_EQUAL = 5;
const VkCompareOp VK_COMPARE_OP_GREATER_OR_EQUAL = 6;
const VkCompareOp VK_COMPARE_OP_ALWAYS = 7;

def VkCullModeFlagBits = distinct inline long;
const VkCullModeFlagBits VK_CULL_MODE_NONE = 0;
const VkCullModeFlagBits VK_CULL_MODE_FRONT_BIT = 0x00000001;
const VkCullModeFlagBits VK_CULL_MODE_BACK_BIT = 0x00000002;
const VkCullModeFlagBits VK_CULL_MODE_FRONT_AND_BACK = 0x00000003;

def VkDynamicState = distinct inline long;
const VkDynamicState VK_DYNAMIC_STATE_VIEWPORT = 0;
const VkDynamicState VK_DYNAMIC_STATE_SCISSOR = 1;
const VkDynamicState VK_DYNAMIC_STATE_LINE_WIDTH = 2;
const VkDynamicState VK_DYNAMIC_STATE_DEPTH_BIAS = 3;
const VkDynamicState VK_DYNAMIC_STATE_BLEND_CONSTANTS = 4;
const VkDynamicState VK_DYNAMIC_STATE_DEPTH_BOUNDS = 5;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_WRITE_MASK = 7;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_REFERENCE = 8;

def VkFrontFace = distinct inline long;
const VkFrontFace VK_FRONT_FACE_COUNTER_CLOCKWISE = 0;
const VkFrontFace VK_FRONT_FACE_CLOCKWISE = 1;

def VkLogicOp = distinct inline long;
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

def VkPipelineCreateFlagBits = distinct inline long;
const VkPipelineCreateFlagBits VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 0x00000001;
const VkPipelineCreateFlagBits VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 0x00000002;
const VkPipelineCreateFlagBits VK_PIPELINE_CREATE_DERIVATIVE_BIT = 0x00000004;

def VkPipelineShaderStageCreateFlagBits = distinct inline long;


def VkPolygonMode = distinct inline long;
const VkPolygonMode VK_POLYGON_MODE_FILL = 0;
const VkPolygonMode VK_POLYGON_MODE_LINE = 1;
const VkPolygonMode VK_POLYGON_MODE_POINT = 2;

def VkPrimitiveTopology = distinct inline long;
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

def VkShaderStageFlagBits = distinct inline long;
const VkShaderStageFlagBits VK_SHADER_STAGE_VERTEX_BIT = 0x00000001;
const VkShaderStageFlagBits VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT = 0x00000002;
const VkShaderStageFlagBits VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 0x00000004;
const VkShaderStageFlagBits VK_SHADER_STAGE_GEOMETRY_BIT = 0x00000008;
const VkShaderStageFlagBits VK_SHADER_STAGE_FRAGMENT_BIT = 0x00000010;
const VkShaderStageFlagBits VK_SHADER_STAGE_COMPUTE_BIT = 0x00000020;
const VkShaderStageFlagBits VK_SHADER_STAGE_ALL_GRAPHICS = 0x0000001F;
const VkShaderStageFlagBits VK_SHADER_STAGE_ALL = 0x7FFFFFFF;

def VkStencilOp = distinct inline long;
const VkStencilOp VK_STENCIL_OP_KEEP = 0;
const VkStencilOp VK_STENCIL_OP_ZERO = 1;
const VkStencilOp VK_STENCIL_OP_REPLACE = 2;
const VkStencilOp VK_STENCIL_OP_INCREMENT_AND_CLAMP = 3;
const VkStencilOp VK_STENCIL_OP_DECREMENT_AND_CLAMP = 4;
const VkStencilOp VK_STENCIL_OP_INVERT = 5;
const VkStencilOp VK_STENCIL_OP_INCREMENT_AND_WRAP = 6;
const VkStencilOp VK_STENCIL_OP_DECREMENT_AND_WRAP = 7;

def VkVertexInputRate = distinct inline long;
const VkVertexInputRate VK_VERTEX_INPUT_RATE_VERTEX = 0;
const VkVertexInputRate VK_VERTEX_INPUT_RATE_INSTANCE = 1;

def VkBorderColor = distinct inline long;
const VkBorderColor VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0;
const VkBorderColor VK_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1;
const VkBorderColor VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2;
const VkBorderColor VK_BORDER_COLOR_INT_OPAQUE_BLACK = 3;
const VkBorderColor VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4;
const VkBorderColor VK_BORDER_COLOR_INT_OPAQUE_WHITE = 5;

def VkFilter = distinct inline long;
const VkFilter VK_FILTER_NEAREST = 0;
const VkFilter VK_FILTER_LINEAR = 1;

def VkSamplerAddressMode = distinct inline long;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_REPEAT = 0;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3;

def VkSamplerCreateFlagBits = distinct inline long;


def VkSamplerMipmapMode = distinct inline long;
const VkSamplerMipmapMode VK_SAMPLER_MIPMAP_MODE_NEAREST = 0;
const VkSamplerMipmapMode VK_SAMPLER_MIPMAP_MODE_LINEAR = 1;

def VkDescriptorPoolCreateFlagBits = distinct inline long;
const VkDescriptorPoolCreateFlagBits VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 0x00000001;

def VkDescriptorSetLayoutCreateFlagBits = distinct inline long;


def VkDescriptorType = distinct inline long;
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

def VkAccessFlagBits = distinct inline long;
const VkAccessFlagBits VK_ACCESS_INDIRECT_COMMAND_READ_BIT = 0x00000001;
const VkAccessFlagBits VK_ACCESS_INDEX_READ_BIT = 0x00000002;
const VkAccessFlagBits VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT = 0x00000004;
const VkAccessFlagBits VK_ACCESS_UNIFORM_READ_BIT = 0x00000008;
const VkAccessFlagBits VK_ACCESS_INPUT_ATTACHMENT_READ_BIT = 0x00000010;
const VkAccessFlagBits VK_ACCESS_SHADER_READ_BIT = 0x00000020;
const VkAccessFlagBits VK_ACCESS_SHADER_WRITE_BIT = 0x00000040;
const VkAccessFlagBits VK_ACCESS_COLOR_ATTACHMENT_READ_BIT = 0x00000080;
const VkAccessFlagBits VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT = 0x00000100;
const VkAccessFlagBits VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 0x00000200;
const VkAccessFlagBits VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 0x00000400;
const VkAccessFlagBits VK_ACCESS_TRANSFER_READ_BIT = 0x00000800;
const VkAccessFlagBits VK_ACCESS_TRANSFER_WRITE_BIT = 0x00001000;
const VkAccessFlagBits VK_ACCESS_HOST_READ_BIT = 0x00002000;
const VkAccessFlagBits VK_ACCESS_HOST_WRITE_BIT = 0x00004000;
const VkAccessFlagBits VK_ACCESS_MEMORY_READ_BIT = 0x00008000;
const VkAccessFlagBits VK_ACCESS_MEMORY_WRITE_BIT = 0x00010000;

def VkAttachmentDescriptionFlagBits = distinct inline long;
const VkAttachmentDescriptionFlagBits VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 0x00000001;

def VkAttachmentLoadOp = distinct inline long;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_LOAD = 0;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_CLEAR = 1;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_DONT_CARE = 2;

def VkAttachmentStoreOp = distinct inline long;
const VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_STORE = 0;
const VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_DONT_CARE = 1;

def VkDependencyFlagBits = distinct inline long;
const VkDependencyFlagBits VK_DEPENDENCY_BY_REGION_BIT = 0x00000001;

def VkFramebufferCreateFlagBits = distinct inline long;


def VkPipelineBindPoint = distinct inline long;
const VkPipelineBindPoint VK_PIPELINE_BIND_POINT_GRAPHICS = 0;
const VkPipelineBindPoint VK_PIPELINE_BIND_POINT_COMPUTE = 1;

def VkRenderPassCreateFlagBits = distinct inline long;


def VkSubpassDescriptionFlagBits = distinct inline long;


def VkCommandPoolCreateFlagBits = distinct inline long;
const VkCommandPoolCreateFlagBits VK_COMMAND_POOL_CREATE_TRANSIENT_BIT = 0x00000001;
const VkCommandPoolCreateFlagBits VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 0x00000002;

def VkCommandPoolResetFlagBits = distinct inline long;
const VkCommandPoolResetFlagBits VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

def VkCommandBufferLevel = distinct inline long;
const VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_PRIMARY = 0;
const VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_SECONDARY = 1;

def VkCommandBufferResetFlagBits = distinct inline long;
const VkCommandBufferResetFlagBits VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

def VkCommandBufferUsageFlagBits = distinct inline long;
const VkCommandBufferUsageFlagBits VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 0x00000001;
const VkCommandBufferUsageFlagBits VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 0x00000002;
const VkCommandBufferUsageFlagBits VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 0x00000004;

def VkQueryControlFlagBits = distinct inline long;
const VkQueryControlFlagBits VK_QUERY_CONTROL_PRECISE_BIT = 0x00000001;

def VkIndexType = distinct inline long;
const VkIndexType VK_INDEX_TYPE_UINT16 = 0;
const VkIndexType VK_INDEX_TYPE_UINT32 = 1;

def VkStencilFaceFlagBits = distinct inline long;
const VkStencilFaceFlagBits VK_STENCIL_FACE_FRONT_BIT = 0x00000001;
const VkStencilFaceFlagBits VK_STENCIL_FACE_BACK_BIT = 0x00000002;
const VkStencilFaceFlagBits VK_STENCIL_FACE_FRONT_AND_BACK = 0x00000003;

def VkSubpassContents = distinct inline long;
const VkSubpassContents VK_SUBPASS_CONTENTS_INLINE = 0;
const VkSubpassContents VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;

def VkFaultLevel = distinct inline long;
const VkFaultLevel VK_FAULT_LEVEL_UNASSIGNED = 0;
const VkFaultLevel VK_FAULT_LEVEL_CRITICAL = 1;
const VkFaultLevel VK_FAULT_LEVEL_RECOVERABLE = 2;
const VkFaultLevel VK_FAULT_LEVEL_WARNING = 3;

def VkFaultType = distinct inline long;
const VkFaultType VK_FAULT_TYPE_INVALID = 0;
const VkFaultType VK_FAULT_TYPE_UNASSIGNED = 1;
const VkFaultType VK_FAULT_TYPE_IMPLEMENTATION = 2;
const VkFaultType VK_FAULT_TYPE_SYSTEM = 3;
const VkFaultType VK_FAULT_TYPE_PHYSICAL_DEVICE = 4;
const VkFaultType VK_FAULT_TYPE_COMMAND_BUFFER_FULL = 5;
const VkFaultType VK_FAULT_TYPE_INVALID_API_USAGE = 6;

def VkFaultQueryBehavior = distinct inline long;
const VkFaultQueryBehavior VK_FAULT_QUERY_BEHAVIOR_GET_AND_CLEAR_ALL_FAULTS = 0;

def VkPipelineMatchControl = distinct inline long;
const VkPipelineMatchControl VK_PIPELINE_MATCH_CONTROL_APPLICATION_UUID_EXACT_MATCH = 0;

def VkPipelineCacheCreateFlagBits = distinct inline long;


def VkPipelineCacheValidationVersion = distinct inline long;
const VkPipelineCacheValidationVersion VK_PIPELINE_CACHE_VALIDATION_VERSION_SAFETY_CRITICAL_ONE = 1;
macro uint @makeApiVersion(uint $variant, uint $major, uint $minor, uint $patch) => (($variant << 29) | ($major << 22) | ($minor << 12) | $patch);