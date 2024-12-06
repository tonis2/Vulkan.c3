module vk;
const MAX_PHYSICAL_DEVICE_NAME_SIZE = 256;
const UUID_SIZE = 16;
const LUID_SIZE = 8;
const MAX_EXTENSION_NAME_SIZE = 256;
const MAX_DESCRIPTION_SIZE = 256;
const MAX_MEMORY_TYPES = 32;
const MAX_MEMORY_HEAPS = 16;
const LOD_CLAMP_NONE = 1000.0F;
const REMAINING_MIP_LEVELS = (~0U);
const REMAINING_ARRAY_LAYERS = (~0U);
const REMAINING_3D_SLICES_EXT = (~0U);
const WHOLE_SIZE = (~0UL);
const ATTACHMENT_UNUSED = (~0U);
const TRUE = 1;
const FALSE = 0;
const QUEUE_FAMILY_IGNORED = (~0U);
const QUEUE_FAMILY_EXTERNAL = (~1U);
const QUEUE_FAMILY_FOREIGN_EXT = (~2U);
const SUBPASS_EXTERNAL = (~0U);
const MAX_DEVICE_GROUP_SIZE = 32;
const MAX_DRIVER_NAME_SIZE = 256;
const MAX_DRIVER_INFO_SIZE = 256;
const SHADER_UNUSED_KHR = (~0U);
const MAX_GLOBAL_PRIORITY_SIZE = 16;
const MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT = 32;
const MAX_PIPELINE_BINARY_KEY_SIZE_KHR = 32;
const MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR = 7;
const SHADER_INDEX_UNUSED_AMDX = (~0U);

distinct Instance = inline void*;
distinct PhysicalDevice = inline void*;
distinct Device = inline void*;
distinct Queue = inline void*;
distinct CommandBuffer = inline void*;
distinct DeviceMemory = inline void*;
distinct CommandPool = inline void*;
distinct Buffer = inline void*;
distinct BufferView = inline void*;
distinct Image = inline void*;
distinct ImageView = inline void*;
distinct ShaderModule = inline void*;
distinct Pipeline = inline void*;
distinct PipelineLayout = inline void*;
distinct Sampler = inline void*;
distinct DescriptorSet = inline void*;
distinct DescriptorSetLayout = inline void*;
distinct DescriptorPool = inline void*;
distinct Fence = inline void*;
distinct Semaphore = inline void*;
distinct Event = inline void*;
distinct QueryPool = inline void*;
distinct Framebuffer = inline void*;
distinct RenderPass = inline void*;
distinct PipelineCache = inline void*;
distinct PipelineBinaryKHR = inline void*;
distinct IndirectCommandsLayoutNV = inline void*;
distinct IndirectCommandsLayoutEXT = inline void*;
distinct IndirectExecutionSetEXT = inline void*;
distinct DescriptorUpdateTemplate = inline void*;
distinct SamplerYcbcrConversion = inline void*;
distinct ValidationCacheEXT = inline void*;
distinct AccelerationStructureKHR = inline void*;
distinct AccelerationStructureNV = inline void*;
distinct PerformanceConfigurationINTEL = inline void*;
distinct BufferCollectionFUCHSIA = inline void*;
distinct DeferredOperationKHR = inline void*;
distinct PrivateDataSlot = inline void*;
distinct CuModuleNVX = inline void*;
distinct CuFunctionNVX = inline void*;
distinct OpticalFlowSessionNV = inline void*;
distinct MicromapEXT = inline void*;
distinct ShaderEXT = inline void*;
distinct DisplayKHR = inline void*;
distinct DisplayModeKHR = inline void*;
distinct SurfaceKHR = inline void*;
distinct SwapchainKHR = inline void*;
distinct DebugReportCallbackEXT = inline void*;
distinct DebugUtilsMessengerEXT = inline void*;
distinct VideoSessionKHR = inline void*;
distinct VideoSessionParametersKHR = inline void*;
distinct SemaphoreSciSyncPoolNV = inline void*;
distinct CudaModuleNV = inline void*;
distinct CudaFunctionNV = inline void*;

def SampleMask = uint;
def Bool32 = uint;
def Flags = uint;
def Flags64 = ulong;
def DeviceSize = ulong;
def DeviceAddress = ulong;
def FramebufferCreateFlags = Flags;
def QueryPoolCreateFlags = Flags;
def RenderPassCreateFlags = Flags;
def SamplerCreateFlags = Flags;
def PipelineLayoutCreateFlags = Flags;
def PipelineCacheCreateFlags = Flags;
def PipelineDepthStencilStateCreateFlags = Flags;
def PipelineDynamicStateCreateFlags = Flags;
def PipelineColorBlendStateCreateFlags = Flags;
def PipelineMultisampleStateCreateFlags = Flags;
def PipelineRasterizationStateCreateFlags = Flags;
def PipelineViewportStateCreateFlags = Flags;
def PipelineTessellationStateCreateFlags = Flags;
def PipelineInputAssemblyStateCreateFlags = Flags;
def PipelineVertexInputStateCreateFlags = Flags;
def PipelineShaderStageCreateFlags = Flags;
def DescriptorSetLayoutCreateFlags = Flags;
def BufferViewCreateFlags = Flags;
def InstanceCreateFlags = Flags;
def DeviceCreateFlags = Flags;
def DeviceQueueCreateFlags = Flags;
def QueueFlags = Flags;
def MemoryPropertyFlags = Flags;
def MemoryHeapFlags = Flags;
def AccessFlags = Flags;
def BufferUsageFlags = Flags;
def BufferCreateFlags = Flags;
def ShaderStageFlags = Flags;
def ImageUsageFlags = Flags;
def ImageCreateFlags = Flags;
def ImageViewCreateFlags = Flags;
def PipelineCreateFlags = Flags;
def ColorComponentFlags = Flags;
def FenceCreateFlags = Flags;
def SemaphoreCreateFlags = Flags;
def FormatFeatureFlags = Flags;
def QueryControlFlags = Flags;
def QueryResultFlags = Flags;
def ShaderModuleCreateFlags = Flags;
def EventCreateFlags = Flags;
def CommandPoolCreateFlags = Flags;
def CommandPoolResetFlags = Flags;
def CommandBufferResetFlags = Flags;
def CommandBufferUsageFlags = Flags;
def QueryPipelineStatisticFlags = Flags;
def MemoryMapFlags = Flags;
def MemoryUnmapFlags = Flags;
def ImageAspectFlags = Flags;
def SparseMemoryBindFlags = Flags;
def SparseImageFormatFlags = Flags;
def SubpassDescriptionFlags = Flags;
def PipelineStageFlags = Flags;
def SampleCountFlags = Flags;
def AttachmentDescriptionFlags = Flags;
def StencilFaceFlags = Flags;
def CullModeFlags = Flags;
def DescriptorPoolCreateFlags = Flags;
def DescriptorPoolResetFlags = Flags;
def DependencyFlags = Flags;
def SubgroupFeatureFlags = Flags;
def IndirectCommandsLayoutUsageFlagsNV = Flags;
def IndirectStateFlagsNV = Flags;
def GeometryFlagsKHR = Flags;
def GeometryInstanceFlagsKHR = Flags;
def BuildAccelerationStructureFlagsKHR = Flags;
def PrivateDataSlotCreateFlags = Flags;
def AccelerationStructureCreateFlagsKHR = Flags;
def DescriptorUpdateTemplateCreateFlags = Flags;
def PipelineCreationFeedbackFlags = Flags;
def PerformanceCounterDescriptionFlagsKHR = Flags;
def AcquireProfilingLockFlagsKHR = Flags;
def SemaphoreWaitFlags = Flags;
def PipelineCompilerControlFlagsAMD = Flags;
def ShaderCorePropertiesFlagsAMD = Flags;
def DeviceDiagnosticsConfigFlagsNV = Flags;
def RefreshObjectFlagsKHR = Flags;
def AccessFlags2 = Flags64;
def PipelineStageFlags2 = Flags64;
def AccelerationStructureMotionInfoFlagsNV = Flags;
def AccelerationStructureMotionInstanceFlagsNV = Flags;
def FormatFeatureFlags2 = Flags64;
def RenderingFlags = Flags;
def MemoryDecompressionMethodFlagsNV = Flags64;
def BuildMicromapFlagsEXT = Flags;
def MicromapCreateFlagsEXT = Flags;
def IndirectCommandsLayoutUsageFlagsEXT = Flags;
def IndirectCommandsInputModeFlagsEXT = Flags;
def DirectDriverLoadingFlagsLUNARG = Flags;
def PipelineCreateFlags2 = Flags64;
def BufferUsageFlags2 = Flags64;
def CompositeAlphaFlagsKHR = Flags;
def DisplayPlaneAlphaFlagsKHR = Flags;
def SurfaceTransformFlagsKHR = Flags;
def SwapchainCreateFlagsKHR = Flags;
def DisplayModeCreateFlagsKHR = Flags;
def DisplaySurfaceCreateFlagsKHR = Flags;
def AndroidSurfaceCreateFlagsKHR = Flags;
def ViSurfaceCreateFlagsNN = Flags;
def WaylandSurfaceCreateFlagsKHR = Flags;
def Win32SurfaceCreateFlagsKHR = Flags;
def XlibSurfaceCreateFlagsKHR = Flags;
def XcbSurfaceCreateFlagsKHR = Flags;
def DirectFBSurfaceCreateFlagsEXT = Flags;
def IOSSurfaceCreateFlagsMVK = Flags;
def MacOSSurfaceCreateFlagsMVK = Flags;
def MetalSurfaceCreateFlagsEXT = Flags;
def ImagePipeSurfaceCreateFlagsFUCHSIA = Flags;
def StreamDescriptorSurfaceCreateFlagsGGP = Flags;
def HeadlessSurfaceCreateFlagsEXT = Flags;
def ScreenSurfaceCreateFlagsQNX = Flags;
def PeerMemoryFeatureFlags = Flags;
def MemoryAllocateFlags = Flags;
def DeviceGroupPresentModeFlagsKHR = Flags;
def DebugReportFlagsEXT = Flags;
def CommandPoolTrimFlags = Flags;
def ExternalMemoryHandleTypeFlagsNV = Flags;
def ExternalMemoryFeatureFlagsNV = Flags;
def ExternalMemoryHandleTypeFlags = Flags;
def ExternalMemoryFeatureFlags = Flags;
def ExternalSemaphoreHandleTypeFlags = Flags;
def ExternalSemaphoreFeatureFlags = Flags;
def SemaphoreImportFlags = Flags;
def ExternalFenceHandleTypeFlags = Flags;
def ExternalFenceFeatureFlags = Flags;
def FenceImportFlags = Flags;
def SurfaceCounterFlagsEXT = Flags;
def PipelineViewportSwizzleStateCreateFlagsNV = Flags;
def PipelineDiscardRectangleStateCreateFlagsEXT = Flags;
def PipelineCoverageToColorStateCreateFlagsNV = Flags;
def PipelineCoverageModulationStateCreateFlagsNV = Flags;
def PipelineCoverageReductionStateCreateFlagsNV = Flags;
def ValidationCacheCreateFlagsEXT = Flags;
def DebugUtilsMessageSeverityFlagsEXT = Flags;
def DebugUtilsMessageTypeFlagsEXT = Flags;
def DebugUtilsMessengerCreateFlagsEXT = Flags;
def DebugUtilsMessengerCallbackDataFlagsEXT = Flags;
def DeviceMemoryReportFlagsEXT = Flags;
def PipelineRasterizationConservativeStateCreateFlagsEXT = Flags;
def DescriptorBindingFlags = Flags;
def ConditionalRenderingFlagsEXT = Flags;
def ResolveModeFlags = Flags;
def PipelineRasterizationStateStreamCreateFlagsEXT = Flags;
def PipelineRasterizationDepthClipStateCreateFlagsEXT = Flags;
def SwapchainImageUsageFlagsANDROID = Flags;
def ToolPurposeFlags = Flags;
def SubmitFlags = Flags;
def ImageFormatConstraintsFlagsFUCHSIA = Flags;
def HostImageCopyFlags = Flags;
def ImageConstraintsInfoFlagsFUCHSIA = Flags;
def GraphicsPipelineLibraryFlagsEXT = Flags;
def ImageCompressionFlagsEXT = Flags;
def ImageCompressionFixedRateFlagsEXT = Flags;
def ExportMetalObjectTypeFlagsEXT = Flags;
def DeviceAddressBindingFlagsEXT = Flags;
def OpticalFlowGridSizeFlagsNV = Flags;
def OpticalFlowUsageFlagsNV = Flags;
def OpticalFlowSessionCreateFlagsNV = Flags;
def OpticalFlowExecuteFlagsNV = Flags;
def FrameBoundaryFlagsEXT = Flags;
def PresentScalingFlagsEXT = Flags;
def PresentGravityFlagsEXT = Flags;
def ShaderCreateFlagsEXT = Flags;
def PhysicalDeviceSchedulingControlsFlagsARM = Flags64;
def VideoCodecOperationFlagsKHR = Flags;
def VideoCapabilityFlagsKHR = Flags;
def VideoSessionCreateFlagsKHR = Flags;
def VideoSessionParametersCreateFlagsKHR = Flags;
def VideoBeginCodingFlagsKHR = Flags;
def VideoEndCodingFlagsKHR = Flags;
def VideoCodingControlFlagsKHR = Flags;
def VideoDecodeUsageFlagsKHR = Flags;
def VideoDecodeCapabilityFlagsKHR = Flags;
def VideoDecodeFlagsKHR = Flags;
def VideoDecodeH264PictureLayoutFlagsKHR = Flags;
def VideoEncodeFlagsKHR = Flags;
def VideoEncodeUsageFlagsKHR = Flags;
def VideoEncodeContentFlagsKHR = Flags;
def VideoEncodeCapabilityFlagsKHR = Flags;
def VideoEncodeFeedbackFlagsKHR = Flags;
def VideoEncodeRateControlFlagsKHR = Flags;
def VideoEncodeRateControlModeFlagsKHR = Flags;
def VideoChromaSubsamplingFlagsKHR = Flags;
def VideoComponentBitDepthFlagsKHR = Flags;
def VideoEncodeH264CapabilityFlagsKHR = Flags;
def VideoEncodeH264StdFlagsKHR = Flags;
def VideoEncodeH264RateControlFlagsKHR = Flags;
def VideoEncodeH265CapabilityFlagsKHR = Flags;
def VideoEncodeH265StdFlagsKHR = Flags;
def VideoEncodeH265RateControlFlagsKHR = Flags;
def VideoEncodeH265CtbSizeFlagsKHR = Flags;
def VideoEncodeH265TransformBlockSizeFlagsKHR = Flags;
def VideoEncodeAV1CapabilityFlagsKHR = Flags;
def VideoEncodeAV1StdFlagsKHR = Flags;
def VideoEncodeAV1RateControlFlagsKHR = Flags;
def VideoEncodeAV1SuperblockSizeFlagsKHR = Flags;
def RemoteAddressNV = void;

distinct ImageLayout = inline uint;
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
const ImageLayout IMAGE_LAYOUT_RENDERING_LOCAL_READ = 1000232000;
const ImageLayout IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002;
const ImageLayout IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR = 1000024000;
const ImageLayout IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR = 1000024001;
const ImageLayout IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR = 1000024002;
const ImageLayout IMAGE_LAYOUT_SHARED_PRESENT_KHR = 1000111000;
const ImageLayout IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000117000;
const ImageLayout IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000117001;
const ImageLayout IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT = 1000218000;
const ImageLayout IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR = 1000164003;
const ImageLayout IMAGE_LAYOUT_RENDERING_LOCAL_READ_KHR = 1000232000;
const ImageLayout IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR = 1000241000;
const ImageLayout IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR = 1000241001;
const ImageLayout IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000241002;
const ImageLayout IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000241003;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR = 1000299000;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR = 1000299001;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR = 1000299002;
const ImageLayout IMAGE_LAYOUT_READ_ONLY_OPTIMAL_KHR = 1000314000;
const ImageLayout IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR = 1000314001;
const ImageLayout IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT = 1000339000;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_QUANTIZATION_MAP_KHR = 1000553000;

distinct AttachmentLoadOp = inline uint;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_LOAD = 0;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_CLEAR = 1;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_DONT_CARE = 2;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_NONE = 1000400000;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_NONE_EXT = 1000400000;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_NONE_KHR = 1000400000;

distinct AttachmentStoreOp = inline uint;
const AttachmentStoreOp ATTACHMENT_STORE_OP_STORE = 0;
const AttachmentStoreOp ATTACHMENT_STORE_OP_DONT_CARE = 1;
const AttachmentStoreOp ATTACHMENT_STORE_OP_NONE = 1000301000;
const AttachmentStoreOp ATTACHMENT_STORE_OP_NONE_KHR = 1000301000;
const AttachmentStoreOp ATTACHMENT_STORE_OP_NONE_QCOM = 1000301000;
const AttachmentStoreOp ATTACHMENT_STORE_OP_NONE_EXT = 1000301000;

distinct ImageType = inline uint;
const ImageType IMAGE_TYPE_1D = 0;
const ImageType IMAGE_TYPE_2D = 1;
const ImageType IMAGE_TYPE_3D = 2;

distinct ImageTiling = inline uint;
const ImageTiling IMAGE_TILING_OPTIMAL = 0;
const ImageTiling IMAGE_TILING_LINEAR = 1;
const ImageTiling IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT = 1000158000;

distinct ImageViewType = inline uint;
const ImageViewType IMAGE_VIEW_TYPE_1D = 0;
const ImageViewType IMAGE_VIEW_TYPE_2D = 1;
const ImageViewType IMAGE_VIEW_TYPE_3D = 2;
const ImageViewType IMAGE_VIEW_TYPE_CUBE = 3;
const ImageViewType IMAGE_VIEW_TYPE_1D_ARRAY = 4;
const ImageViewType IMAGE_VIEW_TYPE_2D_ARRAY = 5;
const ImageViewType IMAGE_VIEW_TYPE_CUBE_ARRAY = 6;

distinct CommandBufferLevel = inline uint;
const CommandBufferLevel COMMAND_BUFFER_LEVEL_PRIMARY = 0;
const CommandBufferLevel COMMAND_BUFFER_LEVEL_SECONDARY = 1;

distinct ComponentSwizzle = inline uint;
const ComponentSwizzle COMPONENT_SWIZZLE_IDENTITY = 0;
const ComponentSwizzle COMPONENT_SWIZZLE_ZERO = 1;
const ComponentSwizzle COMPONENT_SWIZZLE_ONE = 2;
const ComponentSwizzle COMPONENT_SWIZZLE_R = 3;
const ComponentSwizzle COMPONENT_SWIZZLE_G = 4;
const ComponentSwizzle COMPONENT_SWIZZLE_B = 5;
const ComponentSwizzle COMPONENT_SWIZZLE_A = 6;

distinct DescriptorType = inline uint;
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
const DescriptorType DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT = 1000138000;
const DescriptorType DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000;
const DescriptorType DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000;
const DescriptorType DESCRIPTOR_TYPE_SAMPLE_WEIGHT_IMAGE_QCOM = 1000440000;
const DescriptorType DESCRIPTOR_TYPE_BLOCK_MATCH_IMAGE_QCOM = 1000440001;
const DescriptorType DESCRIPTOR_TYPE_MUTABLE_EXT = 1000351000;

distinct QueryType = inline uint;
const QueryType QUERY_TYPE_OCCLUSION = 0;
const QueryType QUERY_TYPE_PIPELINE_STATISTICS = 1;
const QueryType QUERY_TYPE_TIMESTAMP = 2;
const QueryType QUERY_TYPE_RESULT_STATUS_ONLY_KHR = 1000023000;
const QueryType QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT = 1000028004;
const QueryType QUERY_TYPE_PERFORMANCE_QUERY_KHR = 1000116000;
const QueryType QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR = 1000150000;
const QueryType QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR = 1000150001;
const QueryType QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV = 1000165000;
const QueryType QUERY_TYPE_PERFORMANCE_QUERY_INTEL = 1000210000;
const QueryType QUERY_TYPE_VIDEO_ENCODE_FEEDBACK_KHR = 1000299000;
const QueryType QUERY_TYPE_MESH_PRIMITIVES_GENERATED_EXT = 1000328000;
const QueryType QUERY_TYPE_PRIMITIVES_GENERATED_EXT = 1000382000;
const QueryType QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_BOTTOM_LEVEL_POINTERS_KHR = 1000386000;
const QueryType QUERY_TYPE_ACCELERATION_STRUCTURE_SIZE_KHR = 1000386001;
const QueryType QUERY_TYPE_MICROMAP_SERIALIZATION_SIZE_EXT = 1000396000;
const QueryType QUERY_TYPE_MICROMAP_COMPACTED_SIZE_EXT = 1000396001;

distinct BorderColor = inline uint;
const BorderColor BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0;
const BorderColor BORDER_COLOR_INT_TRANSPARENT_BLACK = 1;
const BorderColor BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2;
const BorderColor BORDER_COLOR_INT_OPAQUE_BLACK = 3;
const BorderColor BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4;
const BorderColor BORDER_COLOR_INT_OPAQUE_WHITE = 5;
const BorderColor BORDER_COLOR_FLOAT_CUSTOM_EXT = 1000287003;
const BorderColor BORDER_COLOR_INT_CUSTOM_EXT = 1000287004;

distinct PipelineBindPoint = inline uint;
const PipelineBindPoint PIPELINE_BIND_POINT_GRAPHICS = 0;
const PipelineBindPoint PIPELINE_BIND_POINT_COMPUTE = 1;
const PipelineBindPoint PIPELINE_BIND_POINT_EXECUTION_GRAPH_AMDX = 1000134000;
const PipelineBindPoint PIPELINE_BIND_POINT_RAY_TRACING_KHR = 1000165000;
const PipelineBindPoint PIPELINE_BIND_POINT_RAY_TRACING_NV = 1000165000;
const PipelineBindPoint PIPELINE_BIND_POINT_SUBPASS_SHADING_HUAWEI = 1000369003;

distinct PipelineCacheHeaderVersion = inline uint;
const PipelineCacheHeaderVersion PIPELINE_CACHE_HEADER_VERSION_ONE = 1;

distinct PrimitiveTopology = inline uint;
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

distinct SharingMode = inline uint;
const SharingMode SHARING_MODE_EXCLUSIVE = 0;
const SharingMode SHARING_MODE_CONCURRENT = 1;

distinct IndexType = inline uint;
const IndexType INDEX_TYPE_UINT16 = 0;
const IndexType INDEX_TYPE_UINT32 = 1;
const IndexType INDEX_TYPE_UINT8 = 1000265000;
const IndexType INDEX_TYPE_NONE_KHR = 1000165000;
const IndexType INDEX_TYPE_NONE_NV = 1000165000;
const IndexType INDEX_TYPE_UINT8_EXT = 1000265000;
const IndexType INDEX_TYPE_UINT8_KHR = 1000265000;

distinct Filter = inline uint;
const Filter FILTER_NEAREST = 0;
const Filter FILTER_LINEAR = 1;
const Filter FILTER_CUBIC_EXT = 1000015000;

distinct SamplerMipmapMode = inline uint;
const SamplerMipmapMode SAMPLER_MIPMAP_MODE_NEAREST = 0;
const SamplerMipmapMode SAMPLER_MIPMAP_MODE_LINEAR = 1;

distinct SamplerAddressMode = inline uint;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_REPEAT = 0;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR = 4;

distinct CompareOp = inline uint;
const CompareOp COMPARE_OP_NEVER = 0;
const CompareOp COMPARE_OP_LESS = 1;
const CompareOp COMPARE_OP_EQUAL = 2;
const CompareOp COMPARE_OP_LESS_OR_EQUAL = 3;
const CompareOp COMPARE_OP_GREATER = 4;
const CompareOp COMPARE_OP_NOT_EQUAL = 5;
const CompareOp COMPARE_OP_GREATER_OR_EQUAL = 6;
const CompareOp COMPARE_OP_ALWAYS = 7;

distinct PolygonMode = inline uint;
const PolygonMode POLYGON_MODE_FILL = 0;
const PolygonMode POLYGON_MODE_LINE = 1;
const PolygonMode POLYGON_MODE_POINT = 2;
const PolygonMode POLYGON_MODE_FILL_RECTANGLE_NV = 1000153000;

distinct FrontFace = inline uint;
const FrontFace FRONT_FACE_COUNTER_CLOCKWISE = 0;
const FrontFace FRONT_FACE_CLOCKWISE = 1;

distinct BlendFactor = inline uint;
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

distinct BlendOp = inline uint;
const BlendOp BLEND_OP_ADD = 0;
const BlendOp BLEND_OP_SUBTRACT = 1;
const BlendOp BLEND_OP_REVERSE_SUBTRACT = 2;
const BlendOp BLEND_OP_MIN = 3;
const BlendOp BLEND_OP_MAX = 4;
const BlendOp BLEND_OP_ZERO_EXT = 1000148000;
const BlendOp BLEND_OP_SRC_EXT = 1000148001;
const BlendOp BLEND_OP_DST_EXT = 1000148002;
const BlendOp BLEND_OP_SRC_OVER_EXT = 1000148003;
const BlendOp BLEND_OP_DST_OVER_EXT = 1000148004;
const BlendOp BLEND_OP_SRC_IN_EXT = 1000148005;
const BlendOp BLEND_OP_DST_IN_EXT = 1000148006;
const BlendOp BLEND_OP_SRC_OUT_EXT = 1000148007;
const BlendOp BLEND_OP_DST_OUT_EXT = 1000148008;
const BlendOp BLEND_OP_SRC_ATOP_EXT = 1000148009;
const BlendOp BLEND_OP_DST_ATOP_EXT = 1000148010;
const BlendOp BLEND_OP_XOR_EXT = 1000148011;
const BlendOp BLEND_OP_MULTIPLY_EXT = 1000148012;
const BlendOp BLEND_OP_SCREEN_EXT = 1000148013;
const BlendOp BLEND_OP_OVERLAY_EXT = 1000148014;
const BlendOp BLEND_OP_DARKEN_EXT = 1000148015;
const BlendOp BLEND_OP_LIGHTEN_EXT = 1000148016;
const BlendOp BLEND_OP_COLORDODGE_EXT = 1000148017;
const BlendOp BLEND_OP_COLORBURN_EXT = 1000148018;
const BlendOp BLEND_OP_HARDLIGHT_EXT = 1000148019;
const BlendOp BLEND_OP_SOFTLIGHT_EXT = 1000148020;
const BlendOp BLEND_OP_DIFFERENCE_EXT = 1000148021;
const BlendOp BLEND_OP_EXCLUSION_EXT = 1000148022;
const BlendOp BLEND_OP_INVERT_EXT = 1000148023;
const BlendOp BLEND_OP_INVERT_RGB_EXT = 1000148024;
const BlendOp BLEND_OP_LINEARDODGE_EXT = 1000148025;
const BlendOp BLEND_OP_LINEARBURN_EXT = 1000148026;
const BlendOp BLEND_OP_VIVIDLIGHT_EXT = 1000148027;
const BlendOp BLEND_OP_LINEARLIGHT_EXT = 1000148028;
const BlendOp BLEND_OP_PINLIGHT_EXT = 1000148029;
const BlendOp BLEND_OP_HARDMIX_EXT = 1000148030;
const BlendOp BLEND_OP_HSL_HUE_EXT = 1000148031;
const BlendOp BLEND_OP_HSL_SATURATION_EXT = 1000148032;
const BlendOp BLEND_OP_HSL_COLOR_EXT = 1000148033;
const BlendOp BLEND_OP_HSL_LUMINOSITY_EXT = 1000148034;
const BlendOp BLEND_OP_PLUS_EXT = 1000148035;
const BlendOp BLEND_OP_PLUS_CLAMPED_EXT = 1000148036;
const BlendOp BLEND_OP_PLUS_CLAMPED_ALPHA_EXT = 1000148037;
const BlendOp BLEND_OP_PLUS_DARKER_EXT = 1000148038;
const BlendOp BLEND_OP_MINUS_EXT = 1000148039;
const BlendOp BLEND_OP_MINUS_CLAMPED_EXT = 1000148040;
const BlendOp BLEND_OP_CONTRAST_EXT = 1000148041;
const BlendOp BLEND_OP_INVERT_OVG_EXT = 1000148042;
const BlendOp BLEND_OP_RED_EXT = 1000148043;
const BlendOp BLEND_OP_GREEN_EXT = 1000148044;
const BlendOp BLEND_OP_BLUE_EXT = 1000148045;

distinct StencilOp = inline uint;
const StencilOp STENCIL_OP_KEEP = 0;
const StencilOp STENCIL_OP_ZERO = 1;
const StencilOp STENCIL_OP_REPLACE = 2;
const StencilOp STENCIL_OP_INCREMENT_AND_CLAMP = 3;
const StencilOp STENCIL_OP_DECREMENT_AND_CLAMP = 4;
const StencilOp STENCIL_OP_INVERT = 5;
const StencilOp STENCIL_OP_INCREMENT_AND_WRAP = 6;
const StencilOp STENCIL_OP_DECREMENT_AND_WRAP = 7;

distinct LogicOp = inline uint;
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

distinct InternalAllocationType = inline uint;
const InternalAllocationType INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0;

distinct SystemAllocationScope = inline uint;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_COMMAND = 0;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_OBJECT = 1;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_CACHE = 2;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_DEVICE = 3;
const SystemAllocationScope SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4;

distinct PhysicalDeviceType = inline uint;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_OTHER = 0;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3;
const PhysicalDeviceType PHYSICAL_DEVICE_TYPE_CPU = 4;

distinct VertexInputRate = inline uint;
const VertexInputRate VERTEX_INPUT_RATE_VERTEX = 0;
const VertexInputRate VERTEX_INPUT_RATE_INSTANCE = 1;

distinct Format = inline uint;
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
const Format FORMAT_A1B5G5R5_UNORM_PACK16 = 1000470000;
const Format FORMAT_A8_UNORM = 1000470001;
const Format FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG = 1000054000;
const Format FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG = 1000054001;
const Format FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG = 1000054002;
const Format FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG = 1000054003;
const Format FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG = 1000054004;
const Format FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG = 1000054005;
const Format FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG = 1000054006;
const Format FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG = 1000054007;
const Format FORMAT_ASTC_4X4_SFLOAT_BLOCK_EXT = 1000066000;
const Format FORMAT_ASTC_5X4_SFLOAT_BLOCK_EXT = 1000066001;
const Format FORMAT_ASTC_5X5_SFLOAT_BLOCK_EXT = 1000066002;
const Format FORMAT_ASTC_6X5_SFLOAT_BLOCK_EXT = 1000066003;
const Format FORMAT_ASTC_6X6_SFLOAT_BLOCK_EXT = 1000066004;
const Format FORMAT_ASTC_8X5_SFLOAT_BLOCK_EXT = 1000066005;
const Format FORMAT_ASTC_8X6_SFLOAT_BLOCK_EXT = 1000066006;
const Format FORMAT_ASTC_8X8_SFLOAT_BLOCK_EXT = 1000066007;
const Format FORMAT_ASTC_10X5_SFLOAT_BLOCK_EXT = 1000066008;
const Format FORMAT_ASTC_10X6_SFLOAT_BLOCK_EXT = 1000066009;
const Format FORMAT_ASTC_10X8_SFLOAT_BLOCK_EXT = 1000066010;
const Format FORMAT_ASTC_10X10_SFLOAT_BLOCK_EXT = 1000066011;
const Format FORMAT_ASTC_12X10_SFLOAT_BLOCK_EXT = 1000066012;
const Format FORMAT_ASTC_12X12_SFLOAT_BLOCK_EXT = 1000066013;
const Format FORMAT_G8B8G8R8_422_UNORM_KHR = 1000156000;
const Format FORMAT_B8G8R8G8_422_UNORM_KHR = 1000156001;
const Format FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR = 1000156002;
const Format FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR = 1000156003;
const Format FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR = 1000156004;
const Format FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR = 1000156005;
const Format FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR = 1000156006;
const Format FORMAT_R10X6_UNORM_PACK16_KHR = 1000156007;
const Format FORMAT_R10X6G10X6_UNORM_2PACK16_KHR = 1000156008;
const Format FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR = 1000156009;
const Format FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR = 1000156010;
const Format FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR = 1000156011;
const Format FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR = 1000156012;
const Format FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR = 1000156013;
const Format FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR = 1000156014;
const Format FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR = 1000156015;
const Format FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR = 1000156016;
const Format FORMAT_R12X4_UNORM_PACK16_KHR = 1000156017;
const Format FORMAT_R12X4G12X4_UNORM_2PACK16_KHR = 1000156018;
const Format FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR = 1000156019;
const Format FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR = 1000156020;
const Format FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR = 1000156021;
const Format FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR = 1000156022;
const Format FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR = 1000156023;
const Format FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR = 1000156024;
const Format FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR = 1000156025;
const Format FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR = 1000156026;
const Format FORMAT_G16B16G16R16_422_UNORM_KHR = 1000156027;
const Format FORMAT_B16G16R16G16_422_UNORM_KHR = 1000156028;
const Format FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR = 1000156029;
const Format FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR = 1000156030;
const Format FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR = 1000156031;
const Format FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR = 1000156032;
const Format FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR = 1000156033;
const Format FORMAT_ASTC_3X3X3_UNORM_BLOCK_EXT = 1000288000;
const Format FORMAT_ASTC_3X3X3_SRGB_BLOCK_EXT = 1000288001;
const Format FORMAT_ASTC_3X3X3_SFLOAT_BLOCK_EXT = 1000288002;
const Format FORMAT_ASTC_4X3X3_UNORM_BLOCK_EXT = 1000288003;
const Format FORMAT_ASTC_4X3X3_SRGB_BLOCK_EXT = 1000288004;
const Format FORMAT_ASTC_4X3X3_SFLOAT_BLOCK_EXT = 1000288005;
const Format FORMAT_ASTC_4X4X3_UNORM_BLOCK_EXT = 1000288006;
const Format FORMAT_ASTC_4X4X3_SRGB_BLOCK_EXT = 1000288007;
const Format FORMAT_ASTC_4X4X3_SFLOAT_BLOCK_EXT = 1000288008;
const Format FORMAT_ASTC_4X4X4_UNORM_BLOCK_EXT = 1000288009;
const Format FORMAT_ASTC_4X4X4_SRGB_BLOCK_EXT = 1000288010;
const Format FORMAT_ASTC_4X4X4_SFLOAT_BLOCK_EXT = 1000288011;
const Format FORMAT_ASTC_5X4X4_UNORM_BLOCK_EXT = 1000288012;
const Format FORMAT_ASTC_5X4X4_SRGB_BLOCK_EXT = 1000288013;
const Format FORMAT_ASTC_5X4X4_SFLOAT_BLOCK_EXT = 1000288014;
const Format FORMAT_ASTC_5X5X4_UNORM_BLOCK_EXT = 1000288015;
const Format FORMAT_ASTC_5X5X4_SRGB_BLOCK_EXT = 1000288016;
const Format FORMAT_ASTC_5X5X4_SFLOAT_BLOCK_EXT = 1000288017;
const Format FORMAT_ASTC_5X5X5_UNORM_BLOCK_EXT = 1000288018;
const Format FORMAT_ASTC_5X5X5_SRGB_BLOCK_EXT = 1000288019;
const Format FORMAT_ASTC_5X5X5_SFLOAT_BLOCK_EXT = 1000288020;
const Format FORMAT_ASTC_6X5X5_UNORM_BLOCK_EXT = 1000288021;
const Format FORMAT_ASTC_6X5X5_SRGB_BLOCK_EXT = 1000288022;
const Format FORMAT_ASTC_6X5X5_SFLOAT_BLOCK_EXT = 1000288023;
const Format FORMAT_ASTC_6X6X5_UNORM_BLOCK_EXT = 1000288024;
const Format FORMAT_ASTC_6X6X5_SRGB_BLOCK_EXT = 1000288025;
const Format FORMAT_ASTC_6X6X5_SFLOAT_BLOCK_EXT = 1000288026;
const Format FORMAT_ASTC_6X6X6_UNORM_BLOCK_EXT = 1000288027;
const Format FORMAT_ASTC_6X6X6_SRGB_BLOCK_EXT = 1000288028;
const Format FORMAT_ASTC_6X6X6_SFLOAT_BLOCK_EXT = 1000288029;
const Format FORMAT_G8_B8R8_2PLANE_444_UNORM_EXT = 1000330000;
const Format FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT = 1000330001;
const Format FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT = 1000330002;
const Format FORMAT_G16_B16R16_2PLANE_444_UNORM_EXT = 1000330003;
const Format FORMAT_A4R4G4B4_UNORM_PACK16_EXT = 1000340000;
const Format FORMAT_A4B4G4R4_UNORM_PACK16_EXT = 1000340001;
const Format FORMAT_R16G16_SFIXED5_NV = 1000464000;
const Format FORMAT_R16G16_S10_5_NV = 1000464000;
const Format FORMAT_A1B5G5R5_UNORM_PACK16_KHR = 1000470000;
const Format FORMAT_A8_UNORM_KHR = 1000470001;

distinct StructureType = inline uint;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES = 1000120000;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES = 1000063000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES = 49;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES = 50;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES = 51;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES = 52;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES = 53;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES = 54;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_4_FEATURES = 55;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_4_PROPERTIES = 56;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO = 1000174000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES = 1000388000;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES = 1000388001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES = 1000416000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES = 1000528000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES = 1000544000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES = 1000259000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO = 1000259001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES = 1000259002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES = 1000525000;
const StructureType STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO = 1000190001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES = 1000190002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES = 1000265000;
const StructureType STRUCTURE_TYPE_MEMORY_MAP_INFO = 1000271000;
const StructureType STRUCTURE_TYPE_MEMORY_UNMAP_INFO = 1000271001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES = 1000470000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES = 1000470001;
const StructureType STRUCTURE_TYPE_RENDERING_AREA_INFO = 1000470003;
const StructureType STRUCTURE_TYPE_DEVICE_IMAGE_SUBRESOURCE_INFO = 1000470004;
const StructureType STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2 = 1000338002;
const StructureType STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2 = 1000338003;
const StructureType STRUCTURE_TYPE_PIPELINE_CREATE_FLAGS_2_CREATE_INFO = 1000470005;
const StructureType STRUCTURE_TYPE_BUFFER_USAGE_FLAGS_2_CREATE_INFO = 1000470006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES = 1000080000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES = 1000232000;
const StructureType STRUCTURE_TYPE_RENDERING_ATTACHMENT_LOCATION_INFO = 1000232001;
const StructureType STRUCTURE_TYPE_RENDERING_INPUT_ATTACHMENT_INDEX_INFO = 1000232002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES = 1000545000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES = 1000545001;
const StructureType STRUCTURE_TYPE_BIND_MEMORY_STATUS = 1000545002;
const StructureType STRUCTURE_TYPE_BIND_DESCRIPTOR_SETS_INFO = 1000545003;
const StructureType STRUCTURE_TYPE_PUSH_CONSTANTS_INFO = 1000545004;
const StructureType STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_INFO = 1000545005;
const StructureType STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO = 1000545006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES = 1000466000;
const StructureType STRUCTURE_TYPE_PIPELINE_ROBUSTNESS_CREATE_INFO = 1000068000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES = 1000068001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES = 1000068002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES = 1000270000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES = 1000270001;
const StructureType STRUCTURE_TYPE_MEMORY_TO_IMAGE_COPY = 1000270002;
const StructureType STRUCTURE_TYPE_IMAGE_TO_MEMORY_COPY = 1000270003;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_TO_MEMORY_INFO = 1000270004;
const StructureType STRUCTURE_TYPE_COPY_MEMORY_TO_IMAGE_INFO = 1000270005;
const StructureType STRUCTURE_TYPE_HOST_IMAGE_LAYOUT_TRANSITION_INFO = 1000270006;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_TO_IMAGE_INFO = 1000270007;
const StructureType STRUCTURE_TYPE_SUBRESOURCE_HOST_MEMCPY_SIZE = 1000270008;
const StructureType STRUCTURE_TYPE_HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY = 1000270009;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR = 1000001000;
const StructureType STRUCTURE_TYPE_PRESENT_INFO_KHR = 1000001001;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR = 1000060007;
const StructureType STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR = 1000060008;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR = 1000060009;
const StructureType STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR = 1000060010;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR = 1000060011;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR = 1000060012;
const StructureType STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR = 1000002000;
const StructureType STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR = 1000002001;
const StructureType STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR = 1000003000;
const StructureType STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = 1000004000;
const StructureType STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = 1000005000;
const StructureType STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR = 1000006000;
const StructureType STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR = 1000008000;
const StructureType STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR = 100009000;
const StructureType STRUCTURE_TYPE_NATIVE_BUFFER_ANDROID = 1000010000;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_IMAGE_CREATE_INFO_ANDROID = 1000010001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENTATION_PROPERTIES_ANDROID = 1000010002;
const StructureType STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT = 1000011000;
const StructureType STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT = 1000011000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD = 1000018000;
const StructureType STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT = 1000022000;
const StructureType STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT = 1000022001;
const StructureType STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT = 1000022002;
const StructureType STRUCTURE_TYPE_VIDEO_PROFILE_INFO_KHR = 1000023000;
const StructureType STRUCTURE_TYPE_VIDEO_CAPABILITIES_KHR = 1000023001;
const StructureType STRUCTURE_TYPE_VIDEO_PICTURE_RESOURCE_INFO_KHR = 1000023002;
const StructureType STRUCTURE_TYPE_VIDEO_SESSION_MEMORY_REQUIREMENTS_KHR = 1000023003;
const StructureType STRUCTURE_TYPE_BIND_VIDEO_SESSION_MEMORY_INFO_KHR = 1000023004;
const StructureType STRUCTURE_TYPE_VIDEO_SESSION_CREATE_INFO_KHR = 1000023005;
const StructureType STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000023006;
const StructureType STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR = 1000023007;
const StructureType STRUCTURE_TYPE_VIDEO_BEGIN_CODING_INFO_KHR = 1000023008;
const StructureType STRUCTURE_TYPE_VIDEO_END_CODING_INFO_KHR = 1000023009;
const StructureType STRUCTURE_TYPE_VIDEO_CODING_CONTROL_INFO_KHR = 1000023010;
const StructureType STRUCTURE_TYPE_VIDEO_REFERENCE_SLOT_INFO_KHR = 1000023011;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_VIDEO_PROPERTIES_KHR = 1000023012;
const StructureType STRUCTURE_TYPE_VIDEO_PROFILE_LIST_INFO_KHR = 1000023013;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR = 1000023014;
const StructureType STRUCTURE_TYPE_VIDEO_FORMAT_PROPERTIES_KHR = 1000023015;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR = 1000023016;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_INFO_KHR = 1000024000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_CAPABILITIES_KHR = 1000024001;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_USAGE_INFO_KHR = 1000024002;
const StructureType STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV = 1000026000;
const StructureType STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV = 1000026001;
const StructureType STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV = 1000026002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT = 1000028000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT = 1000028001;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT = 1000028002;
const StructureType STRUCTURE_TYPE_CU_MODULE_CREATE_INFO_NVX = 1000029000;
const StructureType STRUCTURE_TYPE_CU_FUNCTION_CREATE_INFO_NVX = 1000029001;
const StructureType STRUCTURE_TYPE_CU_LAUNCH_INFO_NVX = 1000029002;
const StructureType STRUCTURE_TYPE_CU_MODULE_TEXTURING_MODE_CREATE_INFO_NVX = 1000029004;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX = 1000030000;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX = 1000030001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_CAPABILITIES_KHR = 1000038000;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000038001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR = 1000038002;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_PICTURE_INFO_KHR = 1000038003;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_DPB_SLOT_INFO_KHR = 1000038004;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_NALU_SLICE_INFO_KHR = 1000038005;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_GOP_REMAINING_FRAME_INFO_KHR = 1000038006;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_PROFILE_INFO_KHR = 1000038007;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_INFO_KHR = 1000038008;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_LAYER_INFO_KHR = 1000038009;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_CREATE_INFO_KHR = 1000038010;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_QUALITY_LEVEL_PROPERTIES_KHR = 1000038011;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_GET_INFO_KHR = 1000038012;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_FEEDBACK_INFO_KHR = 1000038013;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_CAPABILITIES_KHR = 1000039000;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000039001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR = 1000039002;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_PICTURE_INFO_KHR = 1000039003;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_DPB_SLOT_INFO_KHR = 1000039004;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_INFO_KHR = 1000039005;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_GOP_REMAINING_FRAME_INFO_KHR = 1000039006;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_PROFILE_INFO_KHR = 1000039007;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_INFO_KHR = 1000039009;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_KHR = 1000039010;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_CREATE_INFO_KHR = 1000039011;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_QUALITY_LEVEL_PROPERTIES_KHR = 1000039012;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_GET_INFO_KHR = 1000039013;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_FEEDBACK_INFO_KHR = 1000039014;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H264_CAPABILITIES_KHR = 1000040000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H264_PICTURE_INFO_KHR = 1000040001;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H264_PROFILE_INFO_KHR = 1000040003;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000040004;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR = 1000040005;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H264_DPB_SLOT_INFO_KHR = 1000040006;
const StructureType STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD = 1000041000;
const StructureType STRUCTURE_TYPE_RENDERING_INFO_KHR = 1000044000;
const StructureType STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO_KHR = 1000044001;
const StructureType STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO_KHR = 1000044002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES_KHR = 1000044003;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO_KHR = 1000044004;
const StructureType STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP = 1000049000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV = 1000050000;
const StructureType STRUCTURE_TYPE_PRIVATE_VENDOR_INFO_PLACEHOLDER_OFFSET_0_NV = 1000051000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR = 1000053000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR = 1000053001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR = 1000053002;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV = 1000056000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV = 1000056001;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057001;
const StructureType STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV = 1000058000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR = 1000059000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR = 1000059001;
const StructureType STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR = 1000059002;
const StructureType STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR = 1000059004;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR = 1000059005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR = 1000059006;
const StructureType STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR = 1000059008;
const StructureType STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR = 1000060000;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR = 1000060003;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR = 1000060004;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR = 1000060005;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR = 1000060006;
const StructureType STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060013;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060014;
const StructureType STRUCTURE_TYPE_VALIDATION_FLAGS_EXT = 1000061000;
const StructureType STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN = 1000062000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT = 1000066000;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT = 1000067000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT = 1000067001;
const StructureType STRUCTURE_TYPE_PIPELINE_ROBUSTNESS_CREATE_INFO_EXT = 1000068000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES_EXT = 1000068001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES_EXT = 1000068002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR = 1000070000;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR = 1000070001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR = 1000071000;
const StructureType STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR = 1000071001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR = 1000071002;
const StructureType STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR = 1000071003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR = 1000071004;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR = 1000072000;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR = 1000072001;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR = 1000072002;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073001;
const StructureType STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR = 1000073002;
const StructureType STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR = 1000073003;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR = 1000074000;
const StructureType STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR = 1000074001;
const StructureType STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR = 1000074002;
const StructureType STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR = 1000075000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR = 1000076000;
const StructureType STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR = 1000076001;
const StructureType STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR = 1000077000;
const StructureType STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078000;
const StructureType STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078001;
const StructureType STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR = 1000078002;
const StructureType STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR = 1000078003;
const StructureType STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR = 1000079000;
const StructureType STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR = 1000079001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR = 1000080000;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT = 1000081000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT = 1000081001;
const StructureType STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT = 1000081002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR = 1000082000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR = 1000082000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR = 1000083000;
const StructureType STRUCTURE_TYPE_PRESENT_REGIONS_KHR = 1000084000;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR = 1000085000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV = 1000087000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT = 1000090000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT = 1000090000;
const StructureType STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT = 1000091000;
const StructureType STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT = 1000091001;
const StructureType STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT = 1000091002;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT = 1000091003;
const StructureType STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE = 1000092000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX = 1000097000;
const StructureType STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX = 1000044009;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV = 1000098000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT = 100099000;
const StructureType STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT = 100099001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT = 1000101000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT = 1000101001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT = 1000102000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT = 1000102001;
const StructureType STRUCTURE_TYPE_HDR_METADATA_EXT = 1000105000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR = 1000108000;
const StructureType STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR = 1000108001;
const StructureType STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR = 1000108002;
const StructureType STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR = 1000108003;
const StructureType STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR = 1000109000;
const StructureType STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR = 1000109001;
const StructureType STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR = 1000109002;
const StructureType STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR = 1000109003;
const StructureType STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR = 1000109004;
const StructureType STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR = 1000109005;
const StructureType STRUCTURE_TYPE_SUBPASS_END_INFO_KHR = 1000109006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RELAXED_LINE_RASTERIZATION_FEATURES_IMG = 1000110000;
const StructureType STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR = 1000111000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR = 1000112000;
const StructureType STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR = 1000112001;
const StructureType STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR = 1000113000;
const StructureType STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114000;
const StructureType STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114001;
const StructureType STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR = 1000114002;
const StructureType STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR = 1000115000;
const StructureType STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR = 1000115001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR = 1000116000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR = 1000116001;
const StructureType STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR = 1000116002;
const StructureType STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR = 1000116003;
const StructureType STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR = 1000116004;
const StructureType STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR = 1000116005;
const StructureType STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR = 1000116006;
const StructureType STRUCTURE_TYPE_PERFORMANCE_QUERY_RESERVATION_INFO_KHR = 1000116007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR = 1000117000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR = 1000117001;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR = 1000117002;
const StructureType STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR = 1000117003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR = 1000119000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR = 1000119001;
const StructureType STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR = 1000119002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR = 1000120000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR = 1000120000;
const StructureType STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR = 1000121000;
const StructureType STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR = 1000121001;
const StructureType STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR = 1000121002;
const StructureType STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR = 1000121003;
const StructureType STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR = 1000121004;
const StructureType STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK = 1000122000;
const StructureType STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK = 1000123000;
const StructureType STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR = 1000127000;
const StructureType STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR = 1000127001;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000128000;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT = 1000128001;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT = 1000128002;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000128003;
const StructureType STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000128004;
const StructureType STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID = 1000129000;
const StructureType STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID = 1000129001;
const StructureType STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID = 1000129002;
const StructureType STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129003;
const StructureType STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129004;
const StructureType STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID = 1000129005;
const StructureType STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID = 1000129006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT = 1000130000;
const StructureType STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT = 1000130001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_FEATURES_AMDX = 1000134000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_PROPERTIES_AMDX = 1000134001;
const StructureType STRUCTURE_TYPE_EXECUTION_GRAPH_PIPELINE_SCRATCH_SIZE_AMDX = 1000134002;
const StructureType STRUCTURE_TYPE_EXECUTION_GRAPH_PIPELINE_CREATE_INFO_AMDX = 1000134003;
const StructureType STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_NODE_CREATE_INFO_AMDX = 1000134004;
const StructureType STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_AMD = 1000044008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT = 1000138000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT = 1000138001;
const StructureType STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT = 1000138002;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT = 1000138003;
const StructureType STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT = 1000143000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT = 1000143001;
const StructureType STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT = 1000143002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT = 1000143003;
const StructureType STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT = 1000143004;
const StructureType STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146000;
const StructureType STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146001;
const StructureType STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146002;
const StructureType STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR = 1000146003;
const StructureType STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR = 1000146004;
const StructureType STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR = 1000147000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT = 1000148000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT = 1000148001;
const StructureType STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT = 1000148002;
const StructureType STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV = 1000149000;
const StructureType STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR = 1000150007;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR = 1000150000;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR = 1000150002;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR = 1000150003;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR = 1000150004;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR = 1000150005;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR = 1000150006;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_INFO_KHR = 1000150009;
const StructureType STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR = 1000150010;
const StructureType STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR = 1000150011;
const StructureType STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR = 1000150012;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR = 1000150013;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR = 1000150014;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR = 1000150017;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR = 1000150020;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR = 1000347000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR = 1000347001;
const StructureType STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR = 1000150015;
const StructureType STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR = 1000150016;
const StructureType STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR = 1000150018;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR = 1000348013;
const StructureType STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV = 1000152000;
const StructureType STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_NV = 1000044008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV = 1000154000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV = 1000154001;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR = 1000156000;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR = 1000156001;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR = 1000156002;
const StructureType STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR = 1000156003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR = 1000156004;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR = 1000156005;
const StructureType STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR = 1000157000;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR = 1000157001;
const StructureType STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT = 1000158000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT = 1000158002;
const StructureType STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT = 1000158003;
const StructureType STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT = 1000158004;
const StructureType STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158005;
const StructureType STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT = 1000158006;
const StructureType STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160000;
const StructureType STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160001;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT = 1000161000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT = 1000161001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT = 1000161002;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT = 1000161003;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT = 1000161004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR = 1000163000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR = 1000163001;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV = 1000164000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV = 1000164001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV = 1000164002;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV = 1000164005;
const StructureType STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV = 1000165000;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV = 1000165001;
const StructureType STRUCTURE_TYPE_GEOMETRY_NV = 1000165003;
const StructureType STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV = 1000165004;
const StructureType STRUCTURE_TYPE_GEOMETRY_AABB_NV = 1000165005;
const StructureType STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV = 1000165006;
const StructureType STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV = 1000165007;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV = 1000165008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV = 1000165009;
const StructureType STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV = 1000165011;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV = 1000165012;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV = 1000166000;
const StructureType STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV = 1000166001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR = 1000168000;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR = 1000168001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT = 1000170000;
const StructureType STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT = 1000170001;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT = 1000174000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR = 1000175000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR = 1000177000;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT = 1000178000;
const StructureType STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT = 1000178001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT = 1000178002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR = 1000180000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR = 1000181000;
const StructureType STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD = 1000183000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD = 1000185000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_CAPABILITIES_KHR = 1000187000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000187001;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR = 1000187002;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_PROFILE_INFO_KHR = 1000187003;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_PICTURE_INFO_KHR = 1000187004;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_DPB_SLOT_INFO_KHR = 1000187005;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR = 1000174000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR = 1000388000;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR = 1000388001;
const StructureType STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD = 1000189000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT = 1000190000;
const StructureType STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT = 1000190001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT = 1000190002;
const StructureType STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP = 1000191000;
const StructureType STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT = 1000192000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR = 1000196000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR = 1000197000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR = 1000199000;
const StructureType STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR = 1000199001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV = 1000202000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV = 1000202001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV = 1000204000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV = 1000205000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV = 1000205002;
const StructureType STRUCTURE_TYPE_CHECKPOINT_DATA_NV = 1000206000;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV = 1000206001;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV = 1000314008;
const StructureType STRUCTURE_TYPE_CHECKPOINT_DATA_2_NV = 1000314009;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR = 1000207000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR = 1000207001;
const StructureType STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR = 1000207002;
const StructureType STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR = 1000207003;
const StructureType STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR = 1000207004;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR = 1000207005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL = 1000209000;
const StructureType STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL = 1000210000;
const StructureType STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL = 1000210000;
const StructureType STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL = 1000210001;
const StructureType STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL = 1000210002;
const StructureType STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL = 1000210003;
const StructureType STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL = 1000210004;
const StructureType STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL = 1000210005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR = 1000211000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT = 1000212000;
const StructureType STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD = 1000213000;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD = 1000213001;
const StructureType STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA = 1000214000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES_KHR = 1000215000;
const StructureType STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT = 1000217000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT = 1000218000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT = 1000218001;
const StructureType STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT = 1000218002;
const StructureType STRUCTURE_TYPE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT = 1000044007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT = 1000221000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT = 1000225000;
const StructureType STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT = 1000225001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT = 1000225002;
const StructureType STRUCTURE_TYPE_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR = 1000226000;
const StructureType STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR = 1000226001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR = 1000226002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR = 1000226003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR = 1000226004;
const StructureType STRUCTURE_TYPE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR = 1000044006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD = 1000227000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD = 1000229000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES_KHR = 1000232000;
const StructureType STRUCTURE_TYPE_RENDERING_ATTACHMENT_LOCATION_INFO_KHR = 1000232001;
const StructureType STRUCTURE_TYPE_RENDERING_INPUT_ATTACHMENT_INDEX_INFO_KHR = 1000232002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT = 1000234000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_QUAD_CONTROL_FEATURES_KHR = 1000235000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT = 1000237000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT = 1000238000;
const StructureType STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT = 1000238001;
const StructureType STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR = 1000239000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV = 1000240000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR = 1000241000;
const StructureType STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR = 1000241001;
const StructureType STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR = 1000241002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT = 1000244000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT = 1000244000;
const StructureType STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT = 1000244001;
const StructureType STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT = 1000244002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT = 1000245000;
const StructureType STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT = 1000246000;
const StructureType STRUCTURE_TYPE_VALIDATION_FEATURES_EXT = 1000247000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR = 1000248000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV = 1000249000;
const StructureType STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV = 1000250000;
const StructureType STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV = 1000250001;
const StructureType STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV = 1000250002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT = 1000251000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT = 1000252000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR = 1000253000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT = 1000254000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT = 1000254001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT = 1000254002;
const StructureType STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT = 1000255000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT = 1000255002;
const StructureType STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT = 1000255001;
const StructureType STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT = 1000256000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR = 1000257000;
const StructureType STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR = 1000244001;
const StructureType STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR = 1000257002;
const StructureType STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR = 1000257003;
const StructureType STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR = 1000257004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT = 1000259000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT = 1000259001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT = 1000259002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT = 1000260000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT = 1000261000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT = 1000265000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT = 1000267000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR = 1000269000;
const StructureType STRUCTURE_TYPE_PIPELINE_INFO_KHR = 1000269001;
const StructureType STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR = 1000269002;
const StructureType STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR = 1000269003;
const StructureType STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR = 1000269004;
const StructureType STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR = 1000269005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES_EXT = 1000270000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES_EXT = 1000270001;
const StructureType STRUCTURE_TYPE_MEMORY_TO_IMAGE_COPY_EXT = 1000270002;
const StructureType STRUCTURE_TYPE_IMAGE_TO_MEMORY_COPY_EXT = 1000270003;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_TO_MEMORY_INFO_EXT = 1000270004;
const StructureType STRUCTURE_TYPE_COPY_MEMORY_TO_IMAGE_INFO_EXT = 1000270005;
const StructureType STRUCTURE_TYPE_HOST_IMAGE_LAYOUT_TRANSITION_INFO_EXT = 1000270006;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_TO_IMAGE_INFO_EXT = 1000270007;
const StructureType STRUCTURE_TYPE_SUBRESOURCE_HOST_MEMCPY_SIZE_EXT = 1000270008;
const StructureType STRUCTURE_TYPE_HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY_EXT = 1000270009;
const StructureType STRUCTURE_TYPE_MEMORY_MAP_INFO_KHR = 1000271000;
const StructureType STRUCTURE_TYPE_MEMORY_UNMAP_INFO_KHR = 1000271001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAP_MEMORY_PLACED_FEATURES_EXT = 1000272000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAP_MEMORY_PLACED_PROPERTIES_EXT = 1000272001;
const StructureType STRUCTURE_TYPE_MEMORY_MAP_PLACED_INFO_EXT = 1000272002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT = 1000273000;
const StructureType STRUCTURE_TYPE_SURFACE_PRESENT_MODE_EXT = 1000274000;
const StructureType STRUCTURE_TYPE_SURFACE_PRESENT_SCALING_CAPABILITIES_EXT = 1000274001;
const StructureType STRUCTURE_TYPE_SURFACE_PRESENT_MODE_COMPATIBILITY_EXT = 1000274002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_EXT = 1000275000;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_PRESENT_FENCE_INFO_EXT = 1000275001;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_PRESENT_MODES_CREATE_INFO_EXT = 1000275002;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_PRESENT_MODE_INFO_EXT = 1000275003;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_EXT = 1000275004;
const StructureType STRUCTURE_TYPE_RELEASE_SWAPCHAIN_IMAGES_INFO_EXT = 1000275005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT = 1000276000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV = 1000277000;
const StructureType STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV = 1000277001;
const StructureType STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV = 1000277002;
const StructureType STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV = 1000277003;
const StructureType STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV = 1000277004;
const StructureType STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV = 1000277005;
const StructureType STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV = 1000277006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV = 1000277007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV = 1000278000;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV = 1000278001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES_KHR = 1000280000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES_KHR = 1000280001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT = 1000281000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT = 1000281001;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM = 1000282000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM = 1000282001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_BIAS_CONTROL_FEATURES_EXT = 1000283000;
const StructureType STRUCTURE_TYPE_DEPTH_BIAS_INFO_EXT = 1000283001;
const StructureType STRUCTURE_TYPE_DEPTH_BIAS_REPRESENTATION_INFO_EXT = 1000283002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT = 1000284000;
const StructureType STRUCTURE_TYPE_DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT = 1000284001;
const StructureType STRUCTURE_TYPE_DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT = 1000284002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT = 1000286000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT = 1000286001;
const StructureType STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT = 1000287000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT = 1000287001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT = 1000287002;
const StructureType STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR = 1000290000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_BARRIER_FEATURES_NV = 1000292000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_PRESENT_BARRIER_NV = 1000292001;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_PRESENT_BARRIER_CREATE_INFO_NV = 1000292002;
const StructureType STRUCTURE_TYPE_PRESENT_ID_KHR = 1000294000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR = 1000294001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT = 1000295000;
const StructureType STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT = 1000295001;
const StructureType STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT = 1000295002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT = 1000297000;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_INFO_KHR = 1000299000;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_INFO_KHR = 1000299001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR = 1000299002;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_CAPABILITIES_KHR = 1000299003;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_USAGE_INFO_KHR = 1000299004;
const StructureType STRUCTURE_TYPE_QUERY_POOL_VIDEO_ENCODE_FEEDBACK_CREATE_INFO_KHR = 1000299005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR = 1000299006;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_QUALITY_LEVEL_PROPERTIES_KHR = 1000299007;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR = 1000299008;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_SESSION_PARAMETERS_GET_INFO_KHR = 1000299009;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_SESSION_PARAMETERS_FEEDBACK_INFO_KHR = 1000299010;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV = 1000300000;
const StructureType STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV = 1000300001;
const StructureType STRUCTURE_TYPE_CUDA_MODULE_CREATE_INFO_NV = 1000307000;
const StructureType STRUCTURE_TYPE_CUDA_FUNCTION_CREATE_INFO_NV = 1000307001;
const StructureType STRUCTURE_TYPE_CUDA_LAUNCH_INFO_NV = 1000307002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_FEATURES_NV = 1000307003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_PROPERTIES_NV = 1000307004;
const StructureType STRUCTURE_TYPE_REFRESH_OBJECT_LIST_KHR = 1000308000;
const StructureType STRUCTURE_TYPE_QUERY_LOW_LATENCY_SUPPORT_NV = 1000310000;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_OBJECT_CREATE_INFO_EXT = 1000311000;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_OBJECTS_INFO_EXT = 1000311001;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_DEVICE_INFO_EXT = 1000311002;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_COMMAND_QUEUE_INFO_EXT = 1000311003;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_BUFFER_INFO_EXT = 1000311004;
const StructureType STRUCTURE_TYPE_IMPORT_METAL_BUFFER_INFO_EXT = 1000311005;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_TEXTURE_INFO_EXT = 1000311006;
const StructureType STRUCTURE_TYPE_IMPORT_METAL_TEXTURE_INFO_EXT = 1000311007;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_IO_SURFACE_INFO_EXT = 1000311008;
const StructureType STRUCTURE_TYPE_IMPORT_METAL_IO_SURFACE_INFO_EXT = 1000311009;
const StructureType STRUCTURE_TYPE_EXPORT_METAL_SHARED_EVENT_INFO_EXT = 1000311010;
const StructureType STRUCTURE_TYPE_IMPORT_METAL_SHARED_EVENT_INFO_EXT = 1000311011;
const StructureType STRUCTURE_TYPE_MEMORY_BARRIER_2_KHR = 1000314000;
const StructureType STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2_KHR = 1000314001;
const StructureType STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2_KHR = 1000314002;
const StructureType STRUCTURE_TYPE_DEPENDENCY_INFO_KHR = 1000314003;
const StructureType STRUCTURE_TYPE_SUBMIT_INFO_2_KHR = 1000314004;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO_KHR = 1000314005;
const StructureType STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO_KHR = 1000314006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES_KHR = 1000314007;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT = 1000316000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT = 1000316001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT = 1000316002;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_ADDRESS_INFO_EXT = 1000316003;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_GET_INFO_EXT = 1000316004;
const StructureType STRUCTURE_TYPE_BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316005;
const StructureType STRUCTURE_TYPE_IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316006;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316007;
const StructureType STRUCTURE_TYPE_SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316008;
const StructureType STRUCTURE_TYPE_OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT = 1000316010;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_INFO_EXT = 1000316011;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT = 1000316012;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316009;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT = 1000320000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT = 1000320001;
const StructureType STRUCTURE_TYPE_GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT = 1000320002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD = 1000321000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR = 1000203000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR = 1000322000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR = 1000323000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES_KHR = 1000325000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV = 1000326000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV = 1000326001;
const StructureType STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV = 1000326002;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV = 1000327000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV = 1000327001;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MOTION_INFO_NV = 1000327002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT = 1000328000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT = 1000328001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT = 1000330000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT = 1000332000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT = 1000332001;
const StructureType STRUCTURE_TYPE_COPY_COMMAND_TRANSFORM_INFO_QCOM = 1000333000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT = 1000335000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR = 1000336000;
const StructureType STRUCTURE_TYPE_COPY_BUFFER_INFO_2_KHR = 1000337000;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_INFO_2_KHR = 1000337001;
const StructureType STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2_KHR = 1000337002;
const StructureType STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2_KHR = 1000337003;
const StructureType STRUCTURE_TYPE_BLIT_IMAGE_INFO_2_KHR = 1000337004;
const StructureType STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2_KHR = 1000337005;
const StructureType STRUCTURE_TYPE_BUFFER_COPY_2_KHR = 1000337006;
const StructureType STRUCTURE_TYPE_IMAGE_COPY_2_KHR = 1000337007;
const StructureType STRUCTURE_TYPE_IMAGE_BLIT_2_KHR = 1000337008;
const StructureType STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2_KHR = 1000337009;
const StructureType STRUCTURE_TYPE_IMAGE_RESOLVE_2_KHR = 1000337010;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT = 1000338000;
const StructureType STRUCTURE_TYPE_IMAGE_COMPRESSION_CONTROL_EXT = 1000338001;
const StructureType STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_EXT = 1000338002;
const StructureType STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_EXT = 1000338003;
const StructureType STRUCTURE_TYPE_IMAGE_COMPRESSION_PROPERTIES_EXT = 1000338004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT = 1000339000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT = 1000340000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FAULT_FEATURES_EXT = 1000341000;
const StructureType STRUCTURE_TYPE_DEVICE_FAULT_COUNTS_EXT = 1000341001;
const StructureType STRUCTURE_TYPE_DEVICE_FAULT_INFO_EXT = 1000341002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT = 1000344000;
const StructureType STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT = 1000346000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT = 1000352000;
const StructureType STRUCTURE_TYPE_VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT = 1000352001;
const StructureType STRUCTURE_TYPE_VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT = 1000352002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DRM_PROPERTIES_EXT = 1000353000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ADDRESS_BINDING_REPORT_FEATURES_EXT = 1000354000;
const StructureType STRUCTURE_TYPE_DEVICE_ADDRESS_BINDING_CALLBACK_DATA_EXT = 1000354001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT = 1000355000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT = 1000355001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT = 1000356000;
const StructureType STRUCTURE_TYPE_FORMAT_PROPERTIES_3_KHR = 1000360000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_EXT = 1000361000;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA = 1000364000;
const StructureType STRUCTURE_TYPE_MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA = 1000364001;
const StructureType STRUCTURE_TYPE_MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA = 1000364002;
const StructureType STRUCTURE_TYPE_IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA = 1000365000;
const StructureType STRUCTURE_TYPE_SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA = 1000365001;
const StructureType STRUCTURE_TYPE_BUFFER_COLLECTION_CREATE_INFO_FUCHSIA = 1000366000;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA = 1000366001;
const StructureType STRUCTURE_TYPE_BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA = 1000366002;
const StructureType STRUCTURE_TYPE_BUFFER_COLLECTION_PROPERTIES_FUCHSIA = 1000366003;
const StructureType STRUCTURE_TYPE_BUFFER_CONSTRAINTS_INFO_FUCHSIA = 1000366004;
const StructureType STRUCTURE_TYPE_BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA = 1000366005;
const StructureType STRUCTURE_TYPE_IMAGE_CONSTRAINTS_INFO_FUCHSIA = 1000366006;
const StructureType STRUCTURE_TYPE_IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA = 1000366007;
const StructureType STRUCTURE_TYPE_SYSMEM_COLOR_SPACE_FUCHSIA = 1000366008;
const StructureType STRUCTURE_TYPE_BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA = 1000366009;
const StructureType STRUCTURE_TYPE_SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI = 1000369000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI = 1000369001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI = 1000369002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI = 1000370000;
const StructureType STRUCTURE_TYPE_MEMORY_GET_REMOTE_ADDRESS_INFO_NV = 1000371000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV = 1000371001;
const StructureType STRUCTURE_TYPE_PIPELINE_PROPERTIES_IDENTIFIER_EXT = 1000372000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT = 1000372001;
const StructureType STRUCTURE_TYPE_PIPELINE_INFO_EXT = 1000269001;
const StructureType STRUCTURE_TYPE_IMPORT_FENCE_SCI_SYNC_INFO_NV = 1000373000;
const StructureType STRUCTURE_TYPE_EXPORT_FENCE_SCI_SYNC_INFO_NV = 1000373001;
const StructureType STRUCTURE_TYPE_FENCE_GET_SCI_SYNC_INFO_NV = 1000373002;
const StructureType STRUCTURE_TYPE_SCI_SYNC_ATTRIBUTES_INFO_NV = 1000373003;
const StructureType STRUCTURE_TYPE_IMPORT_SEMAPHORE_SCI_SYNC_INFO_NV = 1000373004;
const StructureType STRUCTURE_TYPE_EXPORT_SEMAPHORE_SCI_SYNC_INFO_NV = 1000373005;
const StructureType STRUCTURE_TYPE_SEMAPHORE_GET_SCI_SYNC_INFO_NV = 1000373006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_FEATURES_NV = 1000373007;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_SCI_BUF_INFO_NV = 1000374000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_SCI_BUF_INFO_NV = 1000374001;
const StructureType STRUCTURE_TYPE_MEMORY_GET_SCI_BUF_INFO_NV = 1000374002;
const StructureType STRUCTURE_TYPE_MEMORY_SCI_BUF_PROPERTIES_NV = 1000374003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCI_BUF_FEATURES_NV = 1000374004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SCI_BUF_FEATURES_NV = 1000374004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAME_BOUNDARY_FEATURES_EXT = 1000375000;
const StructureType STRUCTURE_TYPE_FRAME_BOUNDARY_EXT = 1000375001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT = 1000376000;
const StructureType STRUCTURE_TYPE_SUBPASS_RESOLVE_PERFORMANCE_QUERY_EXT = 1000376001;
const StructureType STRUCTURE_TYPE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_INFO_EXT = 1000376002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT = 1000377000;
const StructureType STRUCTURE_TYPE_SCREEN_SURFACE_CREATE_INFO_QNX = 1000378000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT = 1000381000;
const StructureType STRUCTURE_TYPE_PIPELINE_COLOR_WRITE_CREATE_INFO_EXT = 1000381001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT = 1000382000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR = 1000386000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_EXT = 1000388000;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_EXT = 1000388001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT = 1000391000;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT = 1000391001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT = 1000392000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT = 1000392001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT = 1000393000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TILE_IMAGE_FEATURES_EXT = 1000395000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TILE_IMAGE_PROPERTIES_EXT = 1000395001;
const StructureType STRUCTURE_TYPE_MICROMAP_BUILD_INFO_EXT = 1000396000;
const StructureType STRUCTURE_TYPE_MICROMAP_VERSION_INFO_EXT = 1000396001;
const StructureType STRUCTURE_TYPE_COPY_MICROMAP_INFO_EXT = 1000396002;
const StructureType STRUCTURE_TYPE_COPY_MICROMAP_TO_MEMORY_INFO_EXT = 1000396003;
const StructureType STRUCTURE_TYPE_COPY_MEMORY_TO_MICROMAP_INFO_EXT = 1000396004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_FEATURES_EXT = 1000396005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_PROPERTIES_EXT = 1000396006;
const StructureType STRUCTURE_TYPE_MICROMAP_CREATE_INFO_EXT = 1000396007;
const StructureType STRUCTURE_TYPE_MICROMAP_BUILD_SIZES_INFO_EXT = 1000396008;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_TRIANGLES_OPACITY_MICROMAP_EXT = 1000396009;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_FEATURES_NV = 1000397000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_PROPERTIES_NV = 1000397001;
const StructureType STRUCTURE_TYPE_ACCELERATION_STRUCTURE_TRIANGLES_DISPLACEMENT_MICROMAP_NV = 1000397002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_FEATURES_HUAWEI = 1000404000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI = 1000404001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_VRS_FEATURES_HUAWEI = 1000404002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT = 1000411000;
const StructureType STRUCTURE_TYPE_SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT = 1000411001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT = 1000412000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES_KHR = 1000413000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES_KHR = 1000413001;
const StructureType STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS_KHR = 1000413002;
const StructureType STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS_KHR = 1000413003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_ARM = 1000415000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES_KHR = 1000416000;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_SHADER_CORE_CONTROL_CREATE_INFO_ARM = 1000417000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_FEATURES_ARM = 1000417001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_PROPERTIES_ARM = 1000417002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT = 1000418000;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_SLICED_CREATE_INFO_EXT = 1000418001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE = 1000420000;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_BINDING_REFERENCE_VALVE = 1000420001;
const StructureType STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE = 1000420002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_EXT = 1000421000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT = 1000422000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RENDER_PASS_STRIPED_FEATURES_ARM = 1000424000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RENDER_PASS_STRIPED_PROPERTIES_ARM = 1000424001;
const StructureType STRUCTURE_TYPE_RENDER_PASS_STRIPE_BEGIN_INFO_ARM = 1000424002;
const StructureType STRUCTURE_TYPE_RENDER_PASS_STRIPE_INFO_ARM = 1000424003;
const StructureType STRUCTURE_TYPE_RENDER_PASS_STRIPE_SUBMIT_INFO_ARM = 1000424004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM = 1000425000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM = 1000425001;
const StructureType STRUCTURE_TYPE_SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM = 1000425002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_NV = 1000426000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_NV = 1000426001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_NV = 1000427000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_NV = 1000427001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_COMPUTE_FEATURES_NV = 1000428000;
const StructureType STRUCTURE_TYPE_COMPUTE_PIPELINE_INDIRECT_BUFFER_INFO_NV = 1000428001;
const StructureType STRUCTURE_TYPE_PIPELINE_INDIRECT_DEVICE_ADDRESS_INFO_NV = 1000428002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV = 1000430000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MAXIMAL_RECONVERGENCE_FEATURES_KHR = 1000434000;
const StructureType STRUCTURE_TYPE_APPLICATION_PARAMETERS_EXT = 1000435000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT = 1000437000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_FEATURES_QCOM = 1000440000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_PROPERTIES_QCOM = 1000440001;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_SAMPLE_WEIGHT_CREATE_INFO_QCOM = 1000440002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_FEATURES_EXT = 1000451000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_PROPERTIES_EXT = 1000451001;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_ACQUIRE_UNMODIFIED_EXT = 1000453000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT = 1000455000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT = 1000455001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT = 1000458000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_CREATION_CONTROL_EXT = 1000458001;
const StructureType STRUCTURE_TYPE_RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT = 1000458002;
const StructureType STRUCTURE_TYPE_RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT = 1000458003;
const StructureType STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_INFO_LUNARG = 1000459000;
const StructureType STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_LIST_LUNARG = 1000459001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_FEATURES_EXT = 1000462000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT = 1000462001;
const StructureType STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_MODULE_IDENTIFIER_CREATE_INFO_EXT = 1000462002;
const StructureType STRUCTURE_TYPE_SHADER_MODULE_IDENTIFIER_EXT = 1000462003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT = 1000342000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_FEATURES_NV = 1000464000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_PROPERTIES_NV = 1000464001;
const StructureType STRUCTURE_TYPE_OPTICAL_FLOW_IMAGE_FORMAT_INFO_NV = 1000464002;
const StructureType STRUCTURE_TYPE_OPTICAL_FLOW_IMAGE_FORMAT_PROPERTIES_NV = 1000464003;
const StructureType STRUCTURE_TYPE_OPTICAL_FLOW_SESSION_CREATE_INFO_NV = 1000464004;
const StructureType STRUCTURE_TYPE_OPTICAL_FLOW_EXECUTE_INFO_NV = 1000464005;
const StructureType STRUCTURE_TYPE_OPTICAL_FLOW_SESSION_CREATE_PRIVATE_DATA_INFO_NV = 1000464010;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_DITHERING_FEATURES_EXT = 1000465000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES_EXT = 1000466000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_FEATURES_ANDROID = 1000468000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_PROPERTIES_ANDROID = 1000468001;
const StructureType STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_RESOLVE_PROPERTIES_ANDROID = 1000468002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES_KHR = 1000470000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES_KHR = 1000470001;
const StructureType STRUCTURE_TYPE_RENDERING_AREA_INFO_KHR = 1000470003;
const StructureType STRUCTURE_TYPE_DEVICE_IMAGE_SUBRESOURCE_INFO_KHR = 1000470004;
const StructureType STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_KHR = 1000338002;
const StructureType STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_KHR = 1000338003;
const StructureType STRUCTURE_TYPE_PIPELINE_CREATE_FLAGS_2_CREATE_INFO_KHR = 1000470005;
const StructureType STRUCTURE_TYPE_BUFFER_USAGE_FLAGS_2_CREATE_INFO_KHR = 1000470006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ANTI_LAG_FEATURES_AMD = 1000476000;
const StructureType STRUCTURE_TYPE_ANTI_LAG_DATA_AMD = 1000476001;
const StructureType STRUCTURE_TYPE_ANTI_LAG_PRESENTATION_INFO_AMD = 1000476002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_POSITION_FETCH_FEATURES_KHR = 1000481000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_FEATURES_EXT = 1000482000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_PROPERTIES_EXT = 1000482001;
const StructureType STRUCTURE_TYPE_SHADER_CREATE_INFO_EXT = 1000482002;
const StructureType STRUCTURE_TYPE_SHADER_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT = 1000225001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_BINARY_FEATURES_KHR = 1000483000;
const StructureType STRUCTURE_TYPE_PIPELINE_BINARY_CREATE_INFO_KHR = 1000483001;
const StructureType STRUCTURE_TYPE_PIPELINE_BINARY_INFO_KHR = 1000483002;
const StructureType STRUCTURE_TYPE_PIPELINE_BINARY_KEY_KHR = 1000483003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_BINARY_PROPERTIES_KHR = 1000483004;
const StructureType STRUCTURE_TYPE_RELEASE_CAPTURED_PIPELINE_DATA_INFO_KHR = 1000483005;
const StructureType STRUCTURE_TYPE_PIPELINE_BINARY_DATA_INFO_KHR = 1000483006;
const StructureType STRUCTURE_TYPE_PIPELINE_CREATE_INFO_KHR = 1000483007;
const StructureType STRUCTURE_TYPE_DEVICE_PIPELINE_BINARY_INTERNAL_CACHE_CONTROL_KHR = 1000483008;
const StructureType STRUCTURE_TYPE_PIPELINE_BINARY_HANDLES_INFO_KHR = 1000483009;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM = 1000484000;
const StructureType STRUCTURE_TYPE_TILE_PROPERTIES_QCOM = 1000484001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC = 1000485000;
const StructureType STRUCTURE_TYPE_AMIGO_PROFILING_SUBMIT_INFO_SEC = 1000485001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM = 1000488000;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SCI_SYNC_POOL_CREATE_INFO_NV = 1000489000;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SCI_SYNC_CREATE_INFO_NV = 1000489001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_2_FEATURES_NV = 1000489002;
const StructureType STRUCTURE_TYPE_DEVICE_SEMAPHORE_SCI_SYNC_POOL_RESERVATION_CREATE_INFO_NV = 1000489003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV = 1000490000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV = 1000490001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV = 1000492000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV = 1000492001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT = 1000351000;
const StructureType STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT = 1000351002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_FEATURES_EXT = 1000495000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_PROPERTIES_EXT = 1000495001;
const StructureType STRUCTURE_TYPE_LAYER_SETTINGS_CREATE_INFO_EXT = 1000496000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_FEATURES_ARM = 1000497000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_PROPERTIES_ARM = 1000497001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT = 1000498000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_FEATURES_EXT = 1000499000;
const StructureType STRUCTURE_TYPE_LATENCY_SLEEP_MODE_INFO_NV = 1000505000;
const StructureType STRUCTURE_TYPE_LATENCY_SLEEP_INFO_NV = 1000505001;
const StructureType STRUCTURE_TYPE_SET_LATENCY_MARKER_INFO_NV = 1000505002;
const StructureType STRUCTURE_TYPE_GET_LATENCY_MARKER_INFO_NV = 1000505003;
const StructureType STRUCTURE_TYPE_LATENCY_TIMINGS_FRAME_REPORT_NV = 1000505004;
const StructureType STRUCTURE_TYPE_LATENCY_SUBMISSION_PRESENT_ID_NV = 1000505005;
const StructureType STRUCTURE_TYPE_OUT_OF_BAND_QUEUE_TYPE_INFO_NV = 1000505006;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_LATENCY_CREATE_INFO_NV = 1000505007;
const StructureType STRUCTURE_TYPE_LATENCY_SURFACE_CAPABILITIES_NV = 1000505008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_KHR = 1000506000;
const StructureType STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_KHR = 1000506001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_KHR = 1000506002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_RENDER_AREAS_FEATURES_QCOM = 1000510000;
const StructureType STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_RENDER_AREAS_RENDER_PASS_BEGIN_INFO_QCOM = 1000510001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR = 1000201000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_PROPERTIES_KHR = 1000511000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_CAPABILITIES_KHR = 1000512000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_PICTURE_INFO_KHR = 1000512001;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_PROFILE_INFO_KHR = 1000512003;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000512004;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_DPB_SLOT_INFO_KHR = 1000512005;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_CAPABILITIES_KHR = 1000513000;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000513001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_PICTURE_INFO_KHR = 1000513002;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_DPB_SLOT_INFO_KHR = 1000513003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_AV1_FEATURES_KHR = 1000513004;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_PROFILE_INFO_KHR = 1000513005;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_RATE_CONTROL_INFO_KHR = 1000513006;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_RATE_CONTROL_LAYER_INFO_KHR = 1000513007;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_QUALITY_LEVEL_PROPERTIES_KHR = 1000513008;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_SESSION_CREATE_INFO_KHR = 1000513009;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_GOP_REMAINING_FRAME_INFO_KHR = 1000513010;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_MAINTENANCE_1_FEATURES_KHR = 1000515000;
const StructureType STRUCTURE_TYPE_VIDEO_INLINE_QUERY_INFO_KHR = 1000515001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PER_STAGE_DESCRIPTOR_SET_FEATURES_NV = 1000516000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_2_FEATURES_QCOM = 1000518000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_2_PROPERTIES_QCOM = 1000518001;
const StructureType STRUCTURE_TYPE_SAMPLER_BLOCK_MATCH_WINDOW_CREATE_INFO_QCOM = 1000518002;
const StructureType STRUCTURE_TYPE_SAMPLER_CUBIC_WEIGHTS_CREATE_INFO_QCOM = 1000519000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CUBIC_WEIGHTS_FEATURES_QCOM = 1000519001;
const StructureType STRUCTURE_TYPE_BLIT_IMAGE_CUBIC_WEIGHTS_INFO_QCOM = 1000519002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_DEGAMMA_FEATURES_QCOM = 1000520000;
const StructureType STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_YCBCR_DEGAMMA_CREATE_INFO_QCOM = 1000520001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CUBIC_CLAMP_FEATURES_QCOM = 1000521000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_FEATURES_EXT = 1000524000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_KHR = 1000525000;
const StructureType STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_KHR = 1000190001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_KHR = 1000190002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES_KHR = 1000528000;
const StructureType STRUCTURE_TYPE_SCREEN_BUFFER_PROPERTIES_QNX = 1000529000;
const StructureType STRUCTURE_TYPE_SCREEN_BUFFER_FORMAT_PROPERTIES_QNX = 1000529001;
const StructureType STRUCTURE_TYPE_IMPORT_SCREEN_BUFFER_INFO_QNX = 1000529002;
const StructureType STRUCTURE_TYPE_EXTERNAL_FORMAT_QNX = 1000529003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX = 1000529004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_DRIVER_PROPERTIES_MSFT = 1000530000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_KHR = 1000265000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_KHR = 1000259000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_KHR = 1000259001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_KHR = 1000259002;
const StructureType STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_KHR = 1000184000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES_KHR = 1000544000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES_KHR = 1000545000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES_KHR = 1000545001;
const StructureType STRUCTURE_TYPE_BIND_MEMORY_STATUS_KHR = 1000545002;
const StructureType STRUCTURE_TYPE_BIND_DESCRIPTOR_SETS_INFO_KHR = 1000545003;
const StructureType STRUCTURE_TYPE_PUSH_CONSTANTS_INFO_KHR = 1000545004;
const StructureType STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_INFO_KHR = 1000545005;
const StructureType STRUCTURE_TYPE_PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO_KHR = 1000545006;
const StructureType STRUCTURE_TYPE_SET_DESCRIPTOR_BUFFER_OFFSETS_INFO_EXT = 1000545007;
const StructureType STRUCTURE_TYPE_BIND_DESCRIPTOR_BUFFER_EMBEDDED_SAMPLERS_INFO_EXT = 1000545008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_POOL_OVERALLOCATION_FEATURES_NV = 1000546000;
const StructureType STRUCTURE_TYPE_DISPLAY_SURFACE_STEREO_CREATE_INFO_NV = 1000551000;
const StructureType STRUCTURE_TYPE_DISPLAY_MODE_STEREO_PROPERTIES_NV = 1000551001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_QUANTIZATION_MAP_CAPABILITIES_KHR = 1000553000;
const StructureType STRUCTURE_TYPE_VIDEO_FORMAT_QUANTIZATION_MAP_PROPERTIES_KHR = 1000553001;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_QUANTIZATION_MAP_INFO_KHR = 1000553002;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_QUANTIZATION_MAP_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000553005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_ENCODE_QUANTIZATION_MAP_FEATURES_KHR = 1000553009;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H264_QUANTIZATION_MAP_CAPABILITIES_KHR = 1000553003;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_H265_QUANTIZATION_MAP_CAPABILITIES_KHR = 1000553004;
const StructureType STRUCTURE_TYPE_VIDEO_FORMAT_H265_QUANTIZATION_MAP_PROPERTIES_KHR = 1000553006;
const StructureType STRUCTURE_TYPE_VIDEO_ENCODE_AV1_QUANTIZATION_MAP_CAPABILITIES_KHR = 1000553007;
const StructureType STRUCTURE_TYPE_VIDEO_FORMAT_AV1_QUANTIZATION_MAP_PROPERTIES_KHR = 1000553008;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAW_ACCESS_CHAINS_FEATURES_NV = 1000555000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR = 1000558000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COMMAND_BUFFER_INHERITANCE_FEATURES_NV = 1000559000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_FEATURES_KHR = 1000562000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_PROPERTIES_KHR = 1000562001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_LIST_KHR = 1000562002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_KHR = 1000562003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_VULKAN_PROPERTIES_KHR = 1000562004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV = 1000563000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_REPLICATED_COMPOSITES_FEATURES_EXT = 1000564000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_VALIDATION_FEATURES_NV = 1000568000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_EXT = 1000572000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_EXT = 1000572001;
const StructureType STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_EXT = 1000572002;
const StructureType STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_CREATE_INFO_EXT = 1000572003;
const StructureType STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_EXT = 1000572004;
const StructureType STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_EXT = 1000572006;
const StructureType STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_EXT = 1000572007;
const StructureType STRUCTURE_TYPE_WRITE_INDIRECT_EXECUTION_SET_PIPELINE_EXT = 1000572008;
const StructureType STRUCTURE_TYPE_WRITE_INDIRECT_EXECUTION_SET_SHADER_EXT = 1000572009;
const StructureType STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_PIPELINE_INFO_EXT = 1000572010;
const StructureType STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_SHADER_INFO_EXT = 1000572011;
const StructureType STRUCTURE_TYPE_INDIRECT_EXECUTION_SET_SHADER_LAYOUT_INFO_EXT = 1000572012;
const StructureType STRUCTURE_TYPE_GENERATED_COMMANDS_PIPELINE_INFO_EXT = 1000572013;
const StructureType STRUCTURE_TYPE_GENERATED_COMMANDS_SHADER_INFO_EXT = 1000572014;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA = 1000575000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA = 1000575001;
const StructureType STRUCTURE_TYPE_IMAGE_ALIGNMENT_CONTROL_CREATE_INFO_MESA = 1000575002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_CONTROL_FEATURES_EXT = 1000582000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLAMP_CONTROL_CREATE_INFO_EXT = 1000582001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_HDR_VIVID_FEATURES_HUAWEI = 1000590000;
const StructureType STRUCTURE_TYPE_HDR_VIVID_DYNAMIC_METADATA_HUAWEI = 1000590001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_FEATURES_NV = 1000593000;
const StructureType STRUCTURE_TYPE_COOPERATIVE_MATRIX_FLEXIBLE_DIMENSIONS_PROPERTIES_NV = 1000593001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_PROPERTIES_NV = 1000593002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_ROBUSTNESS_FEATURES_EXT = 1000608000;

distinct SubpassContents = inline uint;
const SubpassContents SUBPASS_CONTENTS_INLINE = 0;
const SubpassContents SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;
const SubpassContents SUBPASS_CONTENTS_INLINE_AND_SECONDARY_COMMAND_BUFFERS_KHR = 1000451000;

distinct Result = inline int;
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
const Result ERROR_NOT_PERMITTED = -1000174001;
const Result ERROR_SURFACE_LOST_KHR = -1000000000;
const Result ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001;
const Result SUBOPTIMAL_KHR = 1000001003;
const Result ERROR_OUT_OF_DATE_KHR = -1000001004;
const Result ERROR_INCOMPATIBLE_DISPLAY_KHR = -1000003001;
const Result ERROR_VALIDATION_FAILED_EXT = -1000011001;
const Result ERROR_INVALID_SHADER_NV = -1000012000;
const Result ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR = -1000023000;
const Result ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR = -1000023001;
const Result ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR = -1000023002;
const Result ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR = -1000023003;
const Result ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR = -1000023004;
const Result ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR = -1000023005;
const Result ERROR_OUT_OF_POOL_MEMORY_KHR = -1000069000;
const Result ERROR_INVALID_EXTERNAL_HANDLE_KHR = -1000072003;
const Result ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT = -1000158000;
const Result ERROR_FRAGMENTATION_EXT = -1000161000;
const Result ERROR_NOT_PERMITTED_EXT = -1000174001;
const Result ERROR_NOT_PERMITTED_KHR = -1000174001;
const Result ERROR_INVALID_DEVICE_ADDRESS_EXT = -1000257000;
const Result ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT = -1000255000;
const Result ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR = -1000257000;
const Result THREAD_IDLE_KHR = 1000268000;
const Result THREAD_DONE_KHR = 1000268001;
const Result OPERATION_DEFERRED_KHR = 1000268002;
const Result OPERATION_NOT_DEFERRED_KHR = 1000268003;
const Result PIPELINE_COMPILE_REQUIRED_EXT = 1000297000;
const Result ERROR_PIPELINE_COMPILE_REQUIRED_EXT = 1000297000;
const Result ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR = -1000299000;
const Result ERROR_COMPRESSION_EXHAUSTED_EXT = -1000338000;
const Result INCOMPATIBLE_SHADER_BINARY_EXT = 1000482000;
const Result ERROR_INCOMPATIBLE_SHADER_BINARY_EXT = 1000482000;
const Result PIPELINE_BINARY_MISSING_KHR = 1000483000;
const Result ERROR_NOT_ENOUGH_SPACE_KHR = -1000483000;

distinct DynamicState = inline uint;
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
const DynamicState DYNAMIC_STATE_LINE_STIPPLE = 1000259000;
const DynamicState DYNAMIC_STATE_VIEWPORT_W_SCALING_NV = 1000087000;
const DynamicState DYNAMIC_STATE_DISCARD_RECTANGLE_EXT = 100099000;
const DynamicState DYNAMIC_STATE_DISCARD_RECTANGLE_ENABLE_EXT = 100099001;
const DynamicState DYNAMIC_STATE_DISCARD_RECTANGLE_MODE_EXT = 100099002;
const DynamicState DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT = 1000143000;
const DynamicState DYNAMIC_STATE_RAY_TRACING_PIPELINE_STACK_SIZE_KHR = 1000347000;
const DynamicState DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV = 1000164004;
const DynamicState DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV = 1000164006;
const DynamicState DYNAMIC_STATE_EXCLUSIVE_SCISSOR_ENABLE_NV = 1000205000;
const DynamicState DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV = 1000205001;
const DynamicState DYNAMIC_STATE_FRAGMENT_SHADING_RATE_KHR = 1000226000;
const DynamicState DYNAMIC_STATE_LINE_STIPPLE_EXT = 1000259000;
const DynamicState DYNAMIC_STATE_CULL_MODE_EXT = 1000267000;
const DynamicState DYNAMIC_STATE_FRONT_FACE_EXT = 1000267001;
const DynamicState DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT = 1000267002;
const DynamicState DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT = 1000267003;
const DynamicState DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT = 1000267004;
const DynamicState DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT = 1000267005;
const DynamicState DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT = 1000267006;
const DynamicState DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT = 1000267007;
const DynamicState DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT = 1000267008;
const DynamicState DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT = 1000267009;
const DynamicState DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT = 1000267010;
const DynamicState DYNAMIC_STATE_STENCIL_OP_EXT = 1000267011;
const DynamicState DYNAMIC_STATE_VERTEX_INPUT_EXT = 1000352000;
const DynamicState DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT = 1000377000;
const DynamicState DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE_EXT = 1000377001;
const DynamicState DYNAMIC_STATE_DEPTH_BIAS_ENABLE_EXT = 1000377002;
const DynamicState DYNAMIC_STATE_LOGIC_OP_EXT = 1000377003;
const DynamicState DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE_EXT = 1000377004;
const DynamicState DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT = 1000381000;
const DynamicState DYNAMIC_STATE_DEPTH_CLAMP_ENABLE_EXT = 1000455003;
const DynamicState DYNAMIC_STATE_POLYGON_MODE_EXT = 1000455004;
const DynamicState DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT = 1000455005;
const DynamicState DYNAMIC_STATE_SAMPLE_MASK_EXT = 1000455006;
const DynamicState DYNAMIC_STATE_ALPHA_TO_COVERAGE_ENABLE_EXT = 1000455007;
const DynamicState DYNAMIC_STATE_ALPHA_TO_ONE_ENABLE_EXT = 1000455008;
const DynamicState DYNAMIC_STATE_LOGIC_OP_ENABLE_EXT = 1000455009;
const DynamicState DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT = 1000455010;
const DynamicState DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT = 1000455011;
const DynamicState DYNAMIC_STATE_COLOR_WRITE_MASK_EXT = 1000455012;
const DynamicState DYNAMIC_STATE_TESSELLATION_DOMAIN_ORIGIN_EXT = 1000455002;
const DynamicState DYNAMIC_STATE_RASTERIZATION_STREAM_EXT = 1000455013;
const DynamicState DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT = 1000455014;
const DynamicState DYNAMIC_STATE_EXTRA_PRIMITIVE_OVERESTIMATION_SIZE_EXT = 1000455015;
const DynamicState DYNAMIC_STATE_DEPTH_CLIP_ENABLE_EXT = 1000455016;
const DynamicState DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT = 1000455017;
const DynamicState DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT = 1000455018;
const DynamicState DYNAMIC_STATE_PROVOKING_VERTEX_MODE_EXT = 1000455019;
const DynamicState DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT = 1000455020;
const DynamicState DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT = 1000455021;
const DynamicState DYNAMIC_STATE_DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT = 1000455022;
const DynamicState DYNAMIC_STATE_VIEWPORT_W_SCALING_ENABLE_NV = 1000455023;
const DynamicState DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV = 1000455024;
const DynamicState DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV = 1000455025;
const DynamicState DYNAMIC_STATE_COVERAGE_TO_COLOR_LOCATION_NV = 1000455026;
const DynamicState DYNAMIC_STATE_COVERAGE_MODULATION_MODE_NV = 1000455027;
const DynamicState DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV = 1000455028;
const DynamicState DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_NV = 1000455029;
const DynamicState DYNAMIC_STATE_SHADING_RATE_IMAGE_ENABLE_NV = 1000455030;
const DynamicState DYNAMIC_STATE_REPRESENTATIVE_FRAGMENT_TEST_ENABLE_NV = 1000455031;
const DynamicState DYNAMIC_STATE_COVERAGE_REDUCTION_MODE_NV = 1000455032;
const DynamicState DYNAMIC_STATE_ATTACHMENT_FEEDBACK_LOOP_ENABLE_EXT = 1000524000;
const DynamicState DYNAMIC_STATE_LINE_STIPPLE_KHR = 1000259000;
const DynamicState DYNAMIC_STATE_DEPTH_CLAMP_RANGE_EXT = 1000582000;

distinct DescriptorUpdateTemplateType = inline uint;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS = 1;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR = 0;

distinct ObjectType = inline uint;
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
const ObjectType OBJECT_TYPE_VIDEO_SESSION_KHR = 1000023000;
const ObjectType OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR = 1000023001;
const ObjectType OBJECT_TYPE_CU_MODULE_NVX = 1000029000;
const ObjectType OBJECT_TYPE_CU_FUNCTION_NVX = 1000029001;
const ObjectType OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR = 1000085000;
const ObjectType OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000;
const ObjectType OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000;
const ObjectType OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR = 1000156000;
const ObjectType OBJECT_TYPE_VALIDATION_CACHE_EXT = 1000160000;
const ObjectType OBJECT_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000;
const ObjectType OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL = 1000210000;
const ObjectType OBJECT_TYPE_DEFERRED_OPERATION_KHR = 1000268000;
const ObjectType OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV = 1000277000;
const ObjectType OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT = 1000295000;
const ObjectType OBJECT_TYPE_CUDA_MODULE_NV = 1000307000;
const ObjectType OBJECT_TYPE_CUDA_FUNCTION_NV = 1000307001;
const ObjectType OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA = 1000366000;
const ObjectType OBJECT_TYPE_MICROMAP_EXT = 1000396000;
const ObjectType OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV = 1000464000;
const ObjectType OBJECT_TYPE_SHADER_EXT = 1000482000;
const ObjectType OBJECT_TYPE_PIPELINE_BINARY_KHR = 1000483000;
const ObjectType OBJECT_TYPE_SEMAPHORE_SCI_SYNC_POOL_NV = 1000489000;
const ObjectType OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_EXT = 1000572000;
const ObjectType OBJECT_TYPE_INDIRECT_EXECUTION_SET_EXT = 1000572001;

distinct RayTracingInvocationReorderModeNV = inline uint;
const RayTracingInvocationReorderModeNV RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV = 0;
const RayTracingInvocationReorderModeNV RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV = 1;

distinct DirectDriverLoadingModeLUNARG = inline uint;
const DirectDriverLoadingModeLUNARG DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG = 0;
const DirectDriverLoadingModeLUNARG DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG = 1;

distinct AntiLagModeAMD = inline uint;
const AntiLagModeAMD ANTI_LAG_MODE_DRIVER_CONTROL_AMD = 0;
const AntiLagModeAMD ANTI_LAG_MODE_ON_AMD = 1;
const AntiLagModeAMD ANTI_LAG_MODE_OFF_AMD = 2;

distinct AntiLagStageAMD = inline uint;
const AntiLagStageAMD ANTI_LAG_STAGE_INPUT_AMD = 0;
const AntiLagStageAMD ANTI_LAG_STAGE_PRESENT_AMD = 1;

distinct QueueFlagBits = inline uint;
const QueueFlagBits QUEUE_GRAPHICS_BIT = 0x00000001;
const QueueFlagBits QUEUE_COMPUTE_BIT = 0x00000002;
const QueueFlagBits QUEUE_TRANSFER_BIT = 0x00000004;
const QueueFlagBits QUEUE_SPARSE_BINDING_BIT = 0x00000008;
const QueueFlagBits QUEUE_PROTECTED_BIT = 0x00000010;
const QueueFlagBits QUEUE_VIDEO_DECODE_BIT_KHR = 0x00000020;
const QueueFlagBits QUEUE_RESERVED_9_BIT_EXT = 0x00000200;
const QueueFlagBits QUEUE_VIDEO_ENCODE_BIT_KHR = 0x00000040;
const QueueFlagBits QUEUE_RESERVED_7_BIT_QCOM = 0x00000080;
const QueueFlagBits QUEUE_RESERVED_11_BIT_ARM = 0x00000800;
const QueueFlagBits QUEUE_OPTICAL_FLOW_BIT_NV = 0x00000100;
const QueueFlagBits QUEUE_RESERVED_10_BIT_EXT = 0x00000400;

distinct CullModeFlagBits = inline uint;
const CullModeFlagBits CULL_MODE_NONE = 0;
const CullModeFlagBits CULL_MODE_FRONT_BIT = 0x00000001;
const CullModeFlagBits CULL_MODE_BACK_BIT = 0x00000002;
const CullModeFlagBits CULL_MODE_FRONT_AND_BACK = 0x00000003;

distinct MemoryPropertyFlagBits = inline uint;
const MemoryPropertyFlagBits MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 0x00000001;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_VISIBLE_BIT = 0x00000002;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_COHERENT_BIT = 0x00000004;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_CACHED_BIT = 0x00000008;
const MemoryPropertyFlagBits MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 0x00000010;
const MemoryPropertyFlagBits MEMORY_PROPERTY_PROTECTED_BIT = 0x00000020;
const MemoryPropertyFlagBits MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD = 0x00000040;
const MemoryPropertyFlagBits MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD = 0x00000080;
const MemoryPropertyFlagBits MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV = 0x00000100;

distinct MemoryHeapFlagBits = inline uint;
const MemoryHeapFlagBits MEMORY_HEAP_DEVICE_LOCAL_BIT = 0x00000001;
const MemoryHeapFlagBits MEMORY_HEAP_MULTI_INSTANCE_BIT = 0x00000002;
const MemoryHeapFlagBits MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR = 0x00000002;

distinct AccessFlagBits = inline uint;
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
const AccessFlagBits ACCESS_NONE = 0;
const AccessFlagBits ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 0x02000000;
const AccessFlagBits ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 0x04000000;
const AccessFlagBits ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 0x08000000;
const AccessFlagBits ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT = 0x00100000;
const AccessFlagBits ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 0x00080000;
const AccessFlagBits ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR = 0x00200000;
const AccessFlagBits ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 0x00400000;
const AccessFlagBits ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV = 0x00200000;
const AccessFlagBits ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV = 0x00400000;
const AccessFlagBits ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 0x01000000;
const AccessFlagBits ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR = 0x00800000;
const AccessFlagBits ACCESS_COMMAND_PREPROCESS_READ_BIT_NV = 0x00020000;
const AccessFlagBits ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV = 0x00040000;
const AccessFlagBits ACCESS_NONE_KHR = 0;
const AccessFlagBits ACCESS_COMMAND_PREPROCESS_READ_BIT_EXT = 0x00020000;
const AccessFlagBits ACCESS_COMMAND_PREPROCESS_WRITE_BIT_EXT = 0x00040000;

distinct BufferUsageFlagBits = inline uint;
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
const BufferUsageFlagBits BUFFER_USAGE_VIDEO_DECODE_SRC_BIT_KHR = 0x00002000;
const BufferUsageFlagBits BUFFER_USAGE_VIDEO_DECODE_DST_BIT_KHR = 0x00004000;
const BufferUsageFlagBits BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT = 0x00000800;
const BufferUsageFlagBits BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT = 0x00001000;
const BufferUsageFlagBits BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT = 0x00000200;
const BufferUsageFlagBits BUFFER_USAGE_EXECUTION_GRAPH_SCRATCH_BIT_AMDX = 0x02000000;
const BufferUsageFlagBits BUFFER_USAGE_RESERVED_28_BIT_KHR = 0x10000000;
const BufferUsageFlagBits BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR = 0x00080000;
const BufferUsageFlagBits BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR = 0x00100000;
const BufferUsageFlagBits BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR = 0x00000400;
const BufferUsageFlagBits BUFFER_USAGE_RAY_TRACING_BIT_NV = 0x00000400;
const BufferUsageFlagBits BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT = 0x00020000;
const BufferUsageFlagBits BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR = 0x00020000;
const BufferUsageFlagBits BUFFER_USAGE_VIDEO_ENCODE_DST_BIT_KHR = 0x00008000;
const BufferUsageFlagBits BUFFER_USAGE_VIDEO_ENCODE_SRC_BIT_KHR = 0x00010000;
const BufferUsageFlagBits BUFFER_USAGE_RESERVED_27_BIT_QCOM = 0x08000000;
const BufferUsageFlagBits BUFFER_USAGE_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT = 0x00200000;
const BufferUsageFlagBits BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT = 0x00400000;
const BufferUsageFlagBits BUFFER_USAGE_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT = 0x04000000;
const BufferUsageFlagBits BUFFER_USAGE_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT = 0x00800000;
const BufferUsageFlagBits BUFFER_USAGE_MICROMAP_STORAGE_BIT_EXT = 0x01000000;

distinct BufferUsageFlagBits2 = inline ulong;
const BufferUsageFlagBits2 BUFFER_USAGE_2_TRANSFER_SRC_BIT = 0x00000001;
const BufferUsageFlagBits2 BUFFER_USAGE_2_TRANSFER_DST_BIT = 0x00000002;
const BufferUsageFlagBits2 BUFFER_USAGE_2_UNIFORM_TEXEL_BUFFER_BIT = 0x00000004;
const BufferUsageFlagBits2 BUFFER_USAGE_2_STORAGE_TEXEL_BUFFER_BIT = 0x00000008;
const BufferUsageFlagBits2 BUFFER_USAGE_2_UNIFORM_BUFFER_BIT = 0x00000010;
const BufferUsageFlagBits2 BUFFER_USAGE_2_STORAGE_BUFFER_BIT = 0x00000020;
const BufferUsageFlagBits2 BUFFER_USAGE_2_INDEX_BUFFER_BIT = 0x00000040;
const BufferUsageFlagBits2 BUFFER_USAGE_2_VERTEX_BUFFER_BIT = 0x00000080;
const BufferUsageFlagBits2 BUFFER_USAGE_2_INDIRECT_BUFFER_BIT = 0x00000100;
const BufferUsageFlagBits2 BUFFER_USAGE_2_SHADER_DEVICE_ADDRESS_BIT = 0x00020000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_EXECUTION_GRAPH_SCRATCH_BIT_AMDX = 0x02000000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_RESERVED_28_BIT_KHR = 0x10000000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_RESERVED_27_BIT_QCOM = 0x08000000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_TRANSFER_SRC_BIT_KHR = 0x00000001;
const BufferUsageFlagBits2 BUFFER_USAGE_2_TRANSFER_DST_BIT_KHR = 0x00000002;
const BufferUsageFlagBits2 BUFFER_USAGE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR = 0x00000004;
const BufferUsageFlagBits2 BUFFER_USAGE_2_STORAGE_TEXEL_BUFFER_BIT_KHR = 0x00000008;
const BufferUsageFlagBits2 BUFFER_USAGE_2_UNIFORM_BUFFER_BIT_KHR = 0x00000010;
const BufferUsageFlagBits2 BUFFER_USAGE_2_STORAGE_BUFFER_BIT_KHR = 0x00000020;
const BufferUsageFlagBits2 BUFFER_USAGE_2_INDEX_BUFFER_BIT_KHR = 0x00000040;
const BufferUsageFlagBits2 BUFFER_USAGE_2_VERTEX_BUFFER_BIT_KHR = 0x00000080;
const BufferUsageFlagBits2 BUFFER_USAGE_2_INDIRECT_BUFFER_BIT_KHR = 0x00000100;
const BufferUsageFlagBits2 BUFFER_USAGE_2_CONDITIONAL_RENDERING_BIT_EXT = 0x00000200;
const BufferUsageFlagBits2 BUFFER_USAGE_2_SHADER_BINDING_TABLE_BIT_KHR = 0x00000400;
const BufferUsageFlagBits2 BUFFER_USAGE_2_RAY_TRACING_BIT_NV = 0x00000400;
const BufferUsageFlagBits2 BUFFER_USAGE_2_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT = 0x00000800;
const BufferUsageFlagBits2 BUFFER_USAGE_2_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT = 0x00001000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_VIDEO_DECODE_SRC_BIT_KHR = 0x00002000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_VIDEO_DECODE_DST_BIT_KHR = 0x00004000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_VIDEO_ENCODE_DST_BIT_KHR = 0x00008000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_VIDEO_ENCODE_SRC_BIT_KHR = 0x00010000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_SHADER_DEVICE_ADDRESS_BIT_KHR = 0x00020000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR = 0x00080000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR = 0x00100000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT = 0x00200000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT = 0x00400000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT = 0x04000000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT = 0x00800000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_MICROMAP_STORAGE_BIT_EXT = 0x01000000;
const BufferUsageFlagBits2 BUFFER_USAGE_2_PREPROCESS_BUFFER_BIT_EXT = 0x80000000;

distinct BufferCreateFlagBits = inline uint;
const BufferCreateFlagBits BUFFER_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const BufferCreateFlagBits BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const BufferCreateFlagBits BUFFER_CREATE_SPARSE_ALIASED_BIT = 0x00000004;
const BufferCreateFlagBits BUFFER_CREATE_PROTECTED_BIT = 0x00000008;
const BufferCreateFlagBits BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 0x00000010;
const BufferCreateFlagBits BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = 0x00000010;
const BufferCreateFlagBits BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 0x00000010;
const BufferCreateFlagBits BUFFER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 0x00000020;
const BufferCreateFlagBits BUFFER_CREATE_VIDEO_PROFILE_INDEPENDENT_BIT_KHR = 0x00000040;

distinct ShaderStageFlagBits = inline uint;
const ShaderStageFlagBits SHADER_STAGE_VERTEX_BIT = 0x00000001;
const ShaderStageFlagBits SHADER_STAGE_TESSELLATION_CONTROL_BIT = 0x00000002;
const ShaderStageFlagBits SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 0x00000004;
const ShaderStageFlagBits SHADER_STAGE_GEOMETRY_BIT = 0x00000008;
const ShaderStageFlagBits SHADER_STAGE_FRAGMENT_BIT = 0x00000010;
const ShaderStageFlagBits SHADER_STAGE_COMPUTE_BIT = 0x00000020;
const ShaderStageFlagBits SHADER_STAGE_ALL_GRAPHICS = 0x0000001F;
const ShaderStageFlagBits SHADER_STAGE_ALL = 0x7FFFFFFF;
const ShaderStageFlagBits SHADER_STAGE_RAYGEN_BIT_KHR = 0x00000100;
const ShaderStageFlagBits SHADER_STAGE_ANY_HIT_BIT_KHR = 0x00000200;
const ShaderStageFlagBits SHADER_STAGE_CLOSEST_HIT_BIT_KHR = 0x00000400;
const ShaderStageFlagBits SHADER_STAGE_MISS_BIT_KHR = 0x00000800;
const ShaderStageFlagBits SHADER_STAGE_INTERSECTION_BIT_KHR = 0x00001000;
const ShaderStageFlagBits SHADER_STAGE_CALLABLE_BIT_KHR = 0x00002000;
const ShaderStageFlagBits SHADER_STAGE_RAYGEN_BIT_NV = 0x00000100;
const ShaderStageFlagBits SHADER_STAGE_ANY_HIT_BIT_NV = 0x00000200;
const ShaderStageFlagBits SHADER_STAGE_CLOSEST_HIT_BIT_NV = 0x00000400;
const ShaderStageFlagBits SHADER_STAGE_MISS_BIT_NV = 0x00000800;
const ShaderStageFlagBits SHADER_STAGE_INTERSECTION_BIT_NV = 0x00001000;
const ShaderStageFlagBits SHADER_STAGE_CALLABLE_BIT_NV = 0x00002000;
const ShaderStageFlagBits SHADER_STAGE_TASK_BIT_EXT = 0x00000040;
const ShaderStageFlagBits SHADER_STAGE_MESH_BIT_EXT = 0x00000080;
const ShaderStageFlagBits SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI = 0x00004000;
const ShaderStageFlagBits SHADER_STAGE_CLUSTER_CULLING_BIT_HUAWEI = 0x00080000;
const ShaderStageFlagBits SHADER_STAGE_RESERVED_15_BIT_NV = 0x00008000;

distinct ImageUsageFlagBits = inline uint;
const ImageUsageFlagBits IMAGE_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const ImageUsageFlagBits IMAGE_USAGE_TRANSFER_DST_BIT = 0x00000002;
const ImageUsageFlagBits IMAGE_USAGE_SAMPLED_BIT = 0x00000004;
const ImageUsageFlagBits IMAGE_USAGE_STORAGE_BIT = 0x00000008;
const ImageUsageFlagBits IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 0x00000010;
const ImageUsageFlagBits IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000020;
const ImageUsageFlagBits IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 0x00000040;
const ImageUsageFlagBits IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 0x00000080;
const ImageUsageFlagBits IMAGE_USAGE_HOST_TRANSFER_BIT = 0x00400000;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_DECODE_DST_BIT_KHR = 0x00000400;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_DECODE_SRC_BIT_KHR = 0x00000800;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_DECODE_DPB_BIT_KHR = 0x00001000;
const ImageUsageFlagBits IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT = 0x00000200;
const ImageUsageFlagBits IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00000100;
const ImageUsageFlagBits IMAGE_USAGE_HOST_TRANSFER_BIT_EXT = 0x00400000;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_ENCODE_DST_BIT_KHR = 0x00002000;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_ENCODE_SRC_BIT_KHR = 0x00004000;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_ENCODE_DPB_BIT_KHR = 0x00008000;
const ImageUsageFlagBits IMAGE_USAGE_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 0x00080000;
const ImageUsageFlagBits IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI = 0x00040000;
const ImageUsageFlagBits IMAGE_USAGE_SAMPLE_WEIGHT_BIT_QCOM = 0x00100000;
const ImageUsageFlagBits IMAGE_USAGE_SAMPLE_BLOCK_MATCH_BIT_QCOM = 0x00200000;
const ImageUsageFlagBits IMAGE_USAGE_RESERVED_24_BIT_COREAVI = 0x01000000;
const ImageUsageFlagBits IMAGE_USAGE_RESERVED_23_BIT_EXT = 0x00800000;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_ENCODE_QUANTIZATION_DELTA_MAP_BIT_KHR = 0x02000000;
const ImageUsageFlagBits IMAGE_USAGE_VIDEO_ENCODE_EMPHASIS_MAP_BIT_KHR = 0x04000000;

distinct ImageCreateFlagBits = inline uint;
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
const ImageCreateFlagBits IMAGE_CREATE_CORNER_SAMPLED_BIT_NV = 0x00002000;
const ImageCreateFlagBits IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 0x00000040;
const ImageCreateFlagBits IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR = 0x00000020;
const ImageCreateFlagBits IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR = 0x00000080;
const ImageCreateFlagBits IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR = 0x00000100;
const ImageCreateFlagBits IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT = 0x00001000;
const ImageCreateFlagBits IMAGE_CREATE_DISJOINT_BIT_KHR = 0x00000200;
const ImageCreateFlagBits IMAGE_CREATE_ALIAS_BIT_KHR = 0x00000400;
const ImageCreateFlagBits IMAGE_CREATE_SUBSAMPLED_BIT_EXT = 0x00004000;
const ImageCreateFlagBits IMAGE_CREATE_RESERVED_19_BIT_EXT = 0x00080000;
const ImageCreateFlagBits IMAGE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 0x00010000;
const ImageCreateFlagBits IMAGE_CREATE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_BIT_EXT = 0x00040000;
const ImageCreateFlagBits IMAGE_CREATE_2D_VIEW_COMPATIBLE_BIT_EXT = 0x00020000;
const ImageCreateFlagBits IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM = 0x00008000;
const ImageCreateFlagBits IMAGE_CREATE_VIDEO_PROFILE_INDEPENDENT_BIT_KHR = 0x00100000;

distinct PipelineCreateFlagBits = inline uint;
const PipelineCreateFlagBits PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 0x00000001;
const PipelineCreateFlagBits PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 0x00000002;
const PipelineCreateFlagBits PIPELINE_CREATE_DERIVATIVE_BIT = 0x00000004;
const PipelineCreateFlagBits PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT = 0x00000008;
const PipelineCreateFlagBits PIPELINE_CREATE_DISPATCH_BASE_BIT = 0x00000010;
const PipelineCreateFlagBits PIPELINE_CREATE_DISPATCH_BASE = 0x00000010;
const PipelineCreateFlagBits PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT = 0x00000100;
const PipelineCreateFlagBits PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT = 0x00000200;
const PipelineCreateFlagBits PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT = 0x08000000;
const PipelineCreateFlagBits PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT = 0x40000000;
const PipelineCreateFlagBits PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR = 0x00000008;
const PipelineCreateFlagBits PIPELINE_CREATE_DISPATCH_BASE_KHR = 0x00000010;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR = 0x00004000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR = 0x00008000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR = 0x00010000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR = 0x00020000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR = 0x00001000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR = 0x00002000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR = 0x00080000;
const PipelineCreateFlagBits PIPELINE_CREATE_DEFER_COMPILE_BIT_NV = 0x00000020;
const PipelineCreateFlagBits PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT = 0x00400000;
const PipelineCreateFlagBits PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT = 0x00400000;
const PipelineCreateFlagBits PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00200000;
const PipelineCreateFlagBits PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00200000;
const PipelineCreateFlagBits PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR = 0x00000040;
const PipelineCreateFlagBits PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR = 0x00000080;
const PipelineCreateFlagBits PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV = 0x00040000;
const PipelineCreateFlagBits PIPELINE_CREATE_LIBRARY_BIT_KHR = 0x00000800;
const PipelineCreateFlagBits PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT = 0x00000100;
const PipelineCreateFlagBits PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT = 0x00000200;
const PipelineCreateFlagBits PIPELINE_CREATE_DESCRIPTOR_BUFFER_BIT_EXT = 0x20000000;
const PipelineCreateFlagBits PIPELINE_CREATE_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT = 0x00800000;
const PipelineCreateFlagBits PIPELINE_CREATE_LINK_TIME_OPTIMIZATION_BIT_EXT = 0x00000400;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV = 0x00100000;
const PipelineCreateFlagBits PIPELINE_CREATE_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 0x02000000;
const PipelineCreateFlagBits PIPELINE_CREATE_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 0x04000000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT = 0x01000000;
const PipelineCreateFlagBits PIPELINE_CREATE_RAY_TRACING_DISPLACEMENT_MICROMAP_BIT_NV = 0x10000000;
const PipelineCreateFlagBits PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT_EXT = 0x08000000;
const PipelineCreateFlagBits PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT_EXT = 0x40000000;

distinct PipelineCreateFlagBits2 = inline ulong;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DISABLE_OPTIMIZATION_BIT = 0x00000001;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_ALLOW_DERIVATIVES_BIT = 0x00000002;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DERIVATIVE_BIT = 0x00000004;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_VIEW_INDEX_FROM_DEVICE_INDEX_BIT = 0x00000008;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DISPATCH_BASE_BIT = 0x00000010;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT = 0x00000100;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_EARLY_RETURN_ON_FAILURE_BIT = 0x00000200;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_NO_PROTECTED_ACCESS_BIT = 0x08000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_PROTECTED_ACCESS_ONLY_BIT = 0x40000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_EXECUTION_GRAPH_BIT_AMDX = 0x100000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_RESERVED_36_BIT_KHR = 0x1000000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_RESERVED_39_BIT_KHR = 0x8000000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RESERVED_33_BIT_KHR = 0x200000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_ENABLE_LEGACY_DITHERING_BIT_EXT = 0x400000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DISABLE_OPTIMIZATION_BIT_KHR = 0x00000001;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_ALLOW_DERIVATIVES_BIT_KHR = 0x00000002;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DERIVATIVE_BIT_KHR = 0x00000004;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR = 0x00000008;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DISPATCH_BASE_BIT_KHR = 0x00000010;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DEFER_COMPILE_BIT_NV = 0x00000020;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_CAPTURE_STATISTICS_BIT_KHR = 0x00000040;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR = 0x00000080;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_KHR = 0x00000100;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_EARLY_RETURN_ON_FAILURE_BIT_KHR = 0x00000200;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_LINK_TIME_OPTIMIZATION_BIT_EXT = 0x00000400;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT = 0x00800000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_LIBRARY_BIT_KHR = 0x00000800;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR = 0x00001000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_SKIP_AABBS_BIT_KHR = 0x00002000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR = 0x00004000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR = 0x00008000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR = 0x00010000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR = 0x00020000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR = 0x00080000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_INDIRECT_BINDABLE_BIT_NV = 0x00040000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_ALLOW_MOTION_BIT_NV = 0x00100000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00200000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT = 0x00400000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT = 0x01000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 0x02000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 0x04000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_NO_PROTECTED_ACCESS_BIT_EXT = 0x08000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_PROTECTED_ACCESS_ONLY_BIT_EXT = 0x40000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RAY_TRACING_DISPLACEMENT_MICROMAP_BIT_NV = 0x10000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_DESCRIPTOR_BUFFER_BIT_EXT = 0x20000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_CAPTURE_DATA_BIT_KHR = 0x80000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_INDIRECT_BINDABLE_BIT_EXT = 0x4000000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RESERVED_35_BIT_KHR = 0x800000000;
const PipelineCreateFlagBits2 PIPELINE_CREATE_2_RESERVED_37_BIT_ARM = 0x2000000000;

distinct ColorComponentFlagBits = inline uint;
const ColorComponentFlagBits COLOR_COMPONENT_R_BIT = 0x00000001;
const ColorComponentFlagBits COLOR_COMPONENT_G_BIT = 0x00000002;
const ColorComponentFlagBits COLOR_COMPONENT_B_BIT = 0x00000004;
const ColorComponentFlagBits COLOR_COMPONENT_A_BIT = 0x00000008;

distinct FenceCreateFlagBits = inline uint;
const FenceCreateFlagBits FENCE_CREATE_SIGNALED_BIT = 0x00000001;

distinct FormatFeatureFlagBits = inline uint;
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
const FormatFeatureFlagBits FORMAT_FEATURE_VIDEO_DECODE_OUTPUT_BIT_KHR = 0x02000000;
const FormatFeatureFlagBits FORMAT_FEATURE_VIDEO_DECODE_DPB_BIT_KHR = 0x04000000;
const FormatFeatureFlagBits FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR = 0x00004000;
const FormatFeatureFlagBits FORMAT_FEATURE_TRANSFER_DST_BIT_KHR = 0x00008000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT = 0x00010000;
const FormatFeatureFlagBits FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 0x20000000;
const FormatFeatureFlagBits FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = 0x00020000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = 0x00040000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = 0x00080000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = 0x00100000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = 0x00200000;
const FormatFeatureFlagBits FORMAT_FEATURE_DISJOINT_BIT_KHR = 0x00400000;
const FormatFeatureFlagBits FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR = 0x00800000;
const FormatFeatureFlagBits FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = 0x00002000;
const FormatFeatureFlagBits FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT = 0x01000000;
const FormatFeatureFlagBits FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x40000000;
const FormatFeatureFlagBits FORMAT_FEATURE_VIDEO_ENCODE_INPUT_BIT_KHR = 0x08000000;
const FormatFeatureFlagBits FORMAT_FEATURE_VIDEO_ENCODE_DPB_BIT_KHR = 0x10000000;

distinct QueryControlFlagBits = inline uint;
const QueryControlFlagBits QUERY_CONTROL_PRECISE_BIT = 0x00000001;

distinct QueryResultFlagBits = inline uint;
const QueryResultFlagBits QUERY_RESULT_64_BIT = 0x00000001;
const QueryResultFlagBits QUERY_RESULT_WAIT_BIT = 0x00000002;
const QueryResultFlagBits QUERY_RESULT_WITH_AVAILABILITY_BIT = 0x00000004;
const QueryResultFlagBits QUERY_RESULT_PARTIAL_BIT = 0x00000008;
const QueryResultFlagBits QUERY_RESULT_WITH_STATUS_BIT_KHR = 0x00000010;

distinct CommandBufferUsageFlagBits = inline uint;
const CommandBufferUsageFlagBits COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 0x00000001;
const CommandBufferUsageFlagBits COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 0x00000002;
const CommandBufferUsageFlagBits COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 0x00000004;

distinct QueryPipelineStatisticFlagBits = inline uint;
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
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_TASK_SHADER_INVOCATIONS_BIT_EXT = 0x00000800;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_MESH_SHADER_INVOCATIONS_BIT_EXT = 0x00001000;
const QueryPipelineStatisticFlagBits QUERY_PIPELINE_STATISTIC_CLUSTER_CULLING_SHADER_INVOCATIONS_BIT_HUAWEI = 0x00002000;

distinct ImageAspectFlagBits = inline uint;
const ImageAspectFlagBits IMAGE_ASPECT_COLOR_BIT = 0x00000001;
const ImageAspectFlagBits IMAGE_ASPECT_DEPTH_BIT = 0x00000002;
const ImageAspectFlagBits IMAGE_ASPECT_STENCIL_BIT = 0x00000004;
const ImageAspectFlagBits IMAGE_ASPECT_METADATA_BIT = 0x00000008;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_0_BIT = 0x00000010;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_1_BIT = 0x00000020;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_2_BIT = 0x00000040;
const ImageAspectFlagBits IMAGE_ASPECT_NONE = 0;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_0_BIT_KHR = 0x00000010;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_1_BIT_KHR = 0x00000020;
const ImageAspectFlagBits IMAGE_ASPECT_PLANE_2_BIT_KHR = 0x00000040;
const ImageAspectFlagBits IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT = 0x00000080;
const ImageAspectFlagBits IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT = 0x00000100;
const ImageAspectFlagBits IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT = 0x00000200;
const ImageAspectFlagBits IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT = 0x00000400;
const ImageAspectFlagBits IMAGE_ASPECT_NONE_KHR = 0;

distinct SparseImageFormatFlagBits = inline uint;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 0x00000001;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 0x00000002;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 0x00000004;

distinct SparseMemoryBindFlagBits = inline uint;
const SparseMemoryBindFlagBits SPARSE_MEMORY_BIND_METADATA_BIT = 0x00000001;

distinct PipelineStageFlagBits = inline uint;
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
const PipelineStageFlagBits PIPELINE_STAGE_NONE = 0;
const PipelineStageFlagBits PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT = 0x01000000;
const PipelineStageFlagBits PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT = 0x00040000;
const PipelineStageFlagBits PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 0x02000000;
const PipelineStageFlagBits PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR = 0x00200000;
const PipelineStageFlagBits PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV = 0x00200000;
const PipelineStageFlagBits PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV = 0x02000000;
const PipelineStageFlagBits PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 0x00800000;
const PipelineStageFlagBits PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00400000;
const PipelineStageFlagBits PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV = 0x00020000;
const PipelineStageFlagBits PIPELINE_STAGE_NONE_KHR = 0;
const PipelineStageFlagBits PIPELINE_STAGE_TASK_SHADER_BIT_EXT = 0x00080000;
const PipelineStageFlagBits PIPELINE_STAGE_MESH_SHADER_BIT_EXT = 0x00100000;
const PipelineStageFlagBits PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_EXT = 0x00020000;

distinct CommandPoolCreateFlagBits = inline uint;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_TRANSIENT_BIT = 0x00000001;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 0x00000002;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_PROTECTED_BIT = 0x00000004;

distinct CommandPoolResetFlagBits = inline uint;
const CommandPoolResetFlagBits COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 0x00000001;
const CommandPoolResetFlagBits COMMAND_POOL_RESET_RESERVED_1_BIT_COREAVI = 0x00000002;

distinct CommandBufferResetFlagBits = inline uint;
const CommandBufferResetFlagBits COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

distinct SampleCountFlagBits = inline uint;
const SampleCountFlagBits SAMPLE_COUNT_1_BIT = 0x00000001;
const SampleCountFlagBits SAMPLE_COUNT_2_BIT = 0x00000002;
const SampleCountFlagBits SAMPLE_COUNT_4_BIT = 0x00000004;
const SampleCountFlagBits SAMPLE_COUNT_8_BIT = 0x00000008;
const SampleCountFlagBits SAMPLE_COUNT_16_BIT = 0x00000010;
const SampleCountFlagBits SAMPLE_COUNT_32_BIT = 0x00000020;
const SampleCountFlagBits SAMPLE_COUNT_64_BIT = 0x00000040;

distinct AttachmentDescriptionFlagBits = inline uint;
const AttachmentDescriptionFlagBits ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 0x00000001;

distinct StencilFaceFlagBits = inline uint;
const StencilFaceFlagBits STENCIL_FACE_FRONT_BIT = 0x00000001;
const StencilFaceFlagBits STENCIL_FACE_BACK_BIT = 0x00000002;
const StencilFaceFlagBits STENCIL_FACE_FRONT_AND_BACK = 0x00000003;

distinct DescriptorPoolCreateFlagBits = inline uint;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 0x00000001;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT = 0x00000002;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT = 0x00000002;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_EXT = 0x00000004;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_ALLOW_OVERALLOCATION_SETS_BIT_NV = 0x00000008;
const DescriptorPoolCreateFlagBits DESCRIPTOR_POOL_CREATE_ALLOW_OVERALLOCATION_POOLS_BIT_NV = 0x00000010;

distinct DependencyFlagBits = inline uint;
const DependencyFlagBits DEPENDENCY_BY_REGION_BIT = 0x00000001;
const DependencyFlagBits DEPENDENCY_DEVICE_GROUP_BIT = 0x00000004;
const DependencyFlagBits DEPENDENCY_VIEW_LOCAL_BIT = 0x00000002;
const DependencyFlagBits DEPENDENCY_VIEW_LOCAL_BIT_KHR = 0x00000002;
const DependencyFlagBits DEPENDENCY_DEVICE_GROUP_BIT_KHR = 0x00000004;
const DependencyFlagBits DEPENDENCY_FEEDBACK_LOOP_BIT_EXT = 0x00000008;
const DependencyFlagBits DEPENDENCY_EXTENSION_575_BIT_KHR = 0x00000020;
const DependencyFlagBits DEPENDENCY_EXTENSION_586_BIT_IMG = 0x00000010;

distinct SemaphoreType = inline uint;
const SemaphoreType SEMAPHORE_TYPE_BINARY = 0;
const SemaphoreType SEMAPHORE_TYPE_TIMELINE = 1;
const SemaphoreType SEMAPHORE_TYPE_BINARY_KHR = 0;
const SemaphoreType SEMAPHORE_TYPE_TIMELINE_KHR = 1;

distinct SemaphoreWaitFlagBits = inline uint;
const SemaphoreWaitFlagBits SEMAPHORE_WAIT_ANY_BIT = 0x00000001;
const SemaphoreWaitFlagBits SEMAPHORE_WAIT_ANY_BIT_KHR = 0x00000001;

distinct PresentModeKHR = inline uint;
const PresentModeKHR PRESENT_MODE_IMMEDIATE_KHR = 0;
const PresentModeKHR PRESENT_MODE_MAILBOX_KHR = 1;
const PresentModeKHR PRESENT_MODE_FIFO_KHR = 2;
const PresentModeKHR PRESENT_MODE_FIFO_RELAXED_KHR = 3;
const PresentModeKHR PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR = 1000111000;
const PresentModeKHR PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR = 1000111001;
const PresentModeKHR PRESENT_MODE_FIFO_LATEST_READY_EXT = 1000361000;

distinct ColorSpaceKHR = inline uint;
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
const ColorSpaceKHR COLOR_SPACE_DCI_P3_LINEAR_EXT = 1000104003;
const ColorSpaceKHR COLOR_SPACE_DISPLAY_NATIVE_AMD = 1000213000;

distinct DisplayPlaneAlphaFlagBitsKHR = inline uint;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 0x00000002;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 0x00000004;
const DisplayPlaneAlphaFlagBitsKHR DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 0x00000008;

distinct CompositeAlphaFlagBitsKHR = inline uint;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 0x00000002;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 0x00000004;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_INHERIT_BIT_KHR = 0x00000008;

distinct SurfaceTransformFlagBitsKHR = inline uint;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 0x00000001;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 0x00000002;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 0x00000004;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 0x00000008;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 0x00000010;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 0x00000020;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 0x00000040;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 0x00000080;
const SurfaceTransformFlagBitsKHR SURFACE_TRANSFORM_INHERIT_BIT_KHR = 0x00000100;

distinct DisplaySurfaceStereoTypeNV = inline uint;
const DisplaySurfaceStereoTypeNV DISPLAY_SURFACE_STEREO_TYPE_NONE_NV = 0;
const DisplaySurfaceStereoTypeNV DISPLAY_SURFACE_STEREO_TYPE_ONBOARD_DIN_NV = 1;
const DisplaySurfaceStereoTypeNV DISPLAY_SURFACE_STEREO_TYPE_HDMI_3D_NV = 2;
const DisplaySurfaceStereoTypeNV DISPLAY_SURFACE_STEREO_TYPE_INBAND_DISPLAYPORT_NV = 3;

distinct SwapchainImageUsageFlagBitsANDROID = inline uint;
const SwapchainImageUsageFlagBitsANDROID SWAPCHAIN_IMAGE_USAGE_SHARED_BIT_ANDROID = 0x00000001;

distinct TimeDomainKHR = inline uint;
const TimeDomainKHR TIME_DOMAIN_DEVICE_KHR = 0;
const TimeDomainKHR TIME_DOMAIN_CLOCK_MONOTONIC_KHR = 1;
const TimeDomainKHR TIME_DOMAIN_CLOCK_MONOTONIC_RAW_KHR = 2;
const TimeDomainKHR TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_KHR = 3;
const TimeDomainKHR TIME_DOMAIN_DEVICE_EXT = 0;
const TimeDomainKHR TIME_DOMAIN_CLOCK_MONOTONIC_EXT = 1;
const TimeDomainKHR TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT = 2;
const TimeDomainKHR TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT = 3;

distinct DebugReportFlagBitsEXT = inline uint;
const DebugReportFlagBitsEXT DEBUG_REPORT_INFORMATION_BIT_EXT = 0x00000001;
const DebugReportFlagBitsEXT DEBUG_REPORT_WARNING_BIT_EXT = 0x00000002;
const DebugReportFlagBitsEXT DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 0x00000004;
const DebugReportFlagBitsEXT DEBUG_REPORT_ERROR_BIT_EXT = 0x00000008;
const DebugReportFlagBitsEXT DEBUG_REPORT_DEBUG_BIT_EXT = 0x00000010;

distinct DebugReportObjectTypeEXT = inline uint;
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
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000156000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT = 1000085000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT = 1000029000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT = 1000029001;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT = 1000085000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT = 1000150000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT = 1000156000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT = 1000165000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_CUDA_MODULE_NV_EXT = 1000307000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_CUDA_FUNCTION_NV_EXT = 1000307001;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA_EXT = 1000366000;

distinct DeviceMemoryReportEventTypeEXT = inline uint;
const DeviceMemoryReportEventTypeEXT DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT = 0;
const DeviceMemoryReportEventTypeEXT DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT = 1;
const DeviceMemoryReportEventTypeEXT DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT = 2;
const DeviceMemoryReportEventTypeEXT DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT = 3;
const DeviceMemoryReportEventTypeEXT DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT = 4;

distinct RasterizationOrderAMD = inline uint;
const RasterizationOrderAMD RASTERIZATION_ORDER_STRICT_AMD = 0;
const RasterizationOrderAMD RASTERIZATION_ORDER_RELAXED_AMD = 1;

distinct ExternalMemoryHandleTypeFlagBitsNV = inline uint;
const ExternalMemoryHandleTypeFlagBitsNV EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV = 0x00000001;
const ExternalMemoryHandleTypeFlagBitsNV EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV = 0x00000002;
const ExternalMemoryHandleTypeFlagBitsNV EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV = 0x00000004;
const ExternalMemoryHandleTypeFlagBitsNV EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV = 0x00000008;

distinct ExternalMemoryFeatureFlagBitsNV = inline uint;
const ExternalMemoryFeatureFlagBitsNV EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV = 0x00000001;
const ExternalMemoryFeatureFlagBitsNV EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV = 0x00000002;
const ExternalMemoryFeatureFlagBitsNV EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV = 0x00000004;

distinct ValidationCheckEXT = inline uint;
const ValidationCheckEXT VALIDATION_CHECK_ALL_EXT = 0;
const ValidationCheckEXT VALIDATION_CHECK_SHADERS_EXT = 1;

distinct ValidationFeatureEnableEXT = inline uint;
const ValidationFeatureEnableEXT VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT = 0;
const ValidationFeatureEnableEXT VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT = 1;
const ValidationFeatureEnableEXT VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT = 2;
const ValidationFeatureEnableEXT VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT = 3;
const ValidationFeatureEnableEXT VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT = 4;

distinct ValidationFeatureDisableEXT = inline uint;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_ALL_EXT = 0;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_SHADERS_EXT = 1;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT = 2;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT = 3;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT = 4;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT = 5;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT = 6;
const ValidationFeatureDisableEXT VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT = 7;

distinct LayerSettingTypeEXT = inline uint;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_BOOL32_EXT = 0;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_INT32_EXT = 1;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_INT64_EXT = 2;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_UINT32_EXT = 3;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_UINT64_EXT = 4;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_FLOAT32_EXT = 5;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_FLOAT64_EXT = 6;
const LayerSettingTypeEXT LAYER_SETTING_TYPE_STRING_EXT = 7;

distinct SubgroupFeatureFlagBits = inline uint;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_BASIC_BIT = 0x00000001;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_VOTE_BIT = 0x00000002;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_ARITHMETIC_BIT = 0x00000004;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_BALLOT_BIT = 0x00000008;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_SHUFFLE_BIT = 0x00000010;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT = 0x00000020;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_CLUSTERED_BIT = 0x00000040;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_QUAD_BIT = 0x00000080;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_ROTATE_BIT = 0x00000200;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_ROTATE_CLUSTERED_BIT = 0x00000400;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_PARTITIONED_BIT_NV = 0x00000100;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_ROTATE_BIT_KHR = 0x00000200;
const SubgroupFeatureFlagBits SUBGROUP_FEATURE_ROTATE_CLUSTERED_BIT_KHR = 0x00000400;

distinct IndirectCommandsLayoutUsageFlagBitsNV = inline uint;
const IndirectCommandsLayoutUsageFlagBitsNV INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV = 0x00000001;
const IndirectCommandsLayoutUsageFlagBitsNV INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV = 0x00000002;
const IndirectCommandsLayoutUsageFlagBitsNV INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV = 0x00000004;

distinct IndirectStateFlagBitsNV = inline uint;
const IndirectStateFlagBitsNV INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV = 0x00000001;

distinct IndirectCommandsTokenTypeNV = inline uint;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV = 0;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV = 1;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV = 2;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV = 3;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV = 4;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV = 5;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV = 6;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV = 7;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV = 1000328000;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_PIPELINE_NV = 1000428003;
const IndirectCommandsTokenTypeNV INDIRECT_COMMANDS_TOKEN_TYPE_DISPATCH_NV = 1000428004;

distinct ExternalMemoryHandleTypeFlagBits = inline uint;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT = 0x00000008;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT = 0x00000010;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT = 0x00000020;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT = 0x00000040;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 0x00000001;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 0x00000002;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 0x00000004;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR = 0x00000008;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR = 0x00000010;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR = 0x00000020;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR = 0x00000040;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT = 0x00000200;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID = 0x00000400;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT = 0x00000080;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT = 0x00000100;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA = 0x00000800;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV = 0x00001000;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_SCI_BUF_BIT_NV = 0x00002000;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_SCREEN_BUFFER_BIT_QNX = 0x00004000;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_590_BIT_HUAWEI = 0x00008000;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_603_BIT_EXT = 0x00010000;
const ExternalMemoryHandleTypeFlagBits EXTERNAL_MEMORY_HANDLE_TYPE_603_BIT_2_EXT = 0x00020000;

distinct ExternalMemoryFeatureFlagBits = inline uint;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT = 0x00000001;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT = 0x00000002;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT = 0x00000004;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR = 0x00000001;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR = 0x00000002;
const ExternalMemoryFeatureFlagBits EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR = 0x00000004;

distinct ExternalSemaphoreHandleTypeFlagBits = inline uint;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT = 0x00000008;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT = 0x00000010;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 0x00000001;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 0x00000002;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 0x00000004;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR = 0x00000008;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 0x00000010;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_ZIRCON_EVENT_BIT_FUCHSIA = 0x00000080;
const ExternalSemaphoreHandleTypeFlagBits EXTERNAL_SEMAPHORE_HANDLE_TYPE_SCI_SYNC_OBJ_BIT_NV = 0x00000020;

distinct ExternalSemaphoreFeatureFlagBits = inline uint;
const ExternalSemaphoreFeatureFlagBits EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT = 0x00000001;
const ExternalSemaphoreFeatureFlagBits EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT = 0x00000002;
const ExternalSemaphoreFeatureFlagBits EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR = 0x00000001;
const ExternalSemaphoreFeatureFlagBits EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR = 0x00000002;

distinct SemaphoreImportFlagBits = inline uint;
const SemaphoreImportFlagBits SEMAPHORE_IMPORT_TEMPORARY_BIT = 0x00000001;
const SemaphoreImportFlagBits SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR = 0x00000001;

distinct ExternalFenceHandleTypeFlagBits = inline uint;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT = 0x00000008;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 0x00000001;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 0x00000002;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 0x00000004;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 0x00000008;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_SCI_SYNC_OBJ_BIT_NV = 0x00000010;
const ExternalFenceHandleTypeFlagBits EXTERNAL_FENCE_HANDLE_TYPE_SCI_SYNC_FENCE_BIT_NV = 0x00000020;

distinct ExternalFenceFeatureFlagBits = inline uint;
const ExternalFenceFeatureFlagBits EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT = 0x00000001;
const ExternalFenceFeatureFlagBits EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT = 0x00000002;
const ExternalFenceFeatureFlagBits EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR = 0x00000001;
const ExternalFenceFeatureFlagBits EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR = 0x00000002;

distinct FenceImportFlagBits = inline uint;
const FenceImportFlagBits FENCE_IMPORT_TEMPORARY_BIT = 0x00000001;
const FenceImportFlagBits FENCE_IMPORT_TEMPORARY_BIT_KHR = 0x00000001;

distinct SurfaceCounterFlagBitsEXT = inline uint;
const SurfaceCounterFlagBitsEXT SURFACE_COUNTER_VBLANK_BIT_EXT = 0x00000001;

distinct DisplayPowerStateEXT = inline uint;
const DisplayPowerStateEXT DISPLAY_POWER_STATE_OFF_EXT = 0;
const DisplayPowerStateEXT DISPLAY_POWER_STATE_SUSPEND_EXT = 1;
const DisplayPowerStateEXT DISPLAY_POWER_STATE_ON_EXT = 2;

distinct DeviceEventTypeEXT = inline uint;
const DeviceEventTypeEXT DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0;

distinct DisplayEventTypeEXT = inline uint;
const DisplayEventTypeEXT DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0;

distinct PeerMemoryFeatureFlagBits = inline uint;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_COPY_SRC_BIT = 0x00000001;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_COPY_DST_BIT = 0x00000002;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_GENERIC_SRC_BIT = 0x00000004;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_GENERIC_DST_BIT = 0x00000008;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR = 0x00000001;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR = 0x00000002;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR = 0x00000004;
const PeerMemoryFeatureFlagBits PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR = 0x00000008;

distinct MemoryAllocateFlagBits = inline uint;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_MASK_BIT = 0x00000001;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT = 0x00000002;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 0x00000004;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR = 0x00000001;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR = 0x00000002;
const MemoryAllocateFlagBits MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 0x00000004;

distinct DeviceGroupPresentModeFlagBitsKHR = inline uint;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR = 0x00000001;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR = 0x00000002;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR = 0x00000004;
const DeviceGroupPresentModeFlagBitsKHR DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR = 0x00000008;

distinct ViewportCoordinateSwizzleNV = inline uint;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV = 0;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV = 1;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV = 2;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV = 3;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV = 4;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV = 5;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV = 6;
const ViewportCoordinateSwizzleNV VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV = 7;

distinct DiscardRectangleModeEXT = inline uint;
const DiscardRectangleModeEXT DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT = 0;
const DiscardRectangleModeEXT DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT = 1;

distinct PointClippingBehavior = inline uint;
const PointClippingBehavior POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0;
const PointClippingBehavior POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1;
const PointClippingBehavior POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR = 0;
const PointClippingBehavior POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR = 1;

distinct SamplerReductionMode = inline uint;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MIN = 1;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MAX = 2;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT = 0;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MIN_EXT = 1;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MAX_EXT = 2;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_RANGECLAMP_QCOM = 1000521000;

distinct TessellationDomainOrigin = inline uint;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR = 0;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR = 1;

distinct SamplerYcbcrModelConversion = inline uint;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR = 0;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR = 1;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR = 2;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR = 3;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR = 4;

distinct SamplerYcbcrRange = inline uint;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_FULL = 0;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_NARROW = 1;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_FULL_KHR = 0;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR = 1;

distinct ChromaLocation = inline uint;
const ChromaLocation CHROMA_LOCATION_COSITED_EVEN = 0;
const ChromaLocation CHROMA_LOCATION_MIDPOINT = 1;
const ChromaLocation CHROMA_LOCATION_COSITED_EVEN_KHR = 0;
const ChromaLocation CHROMA_LOCATION_MIDPOINT_KHR = 1;

distinct BlendOverlapEXT = inline uint;
const BlendOverlapEXT BLEND_OVERLAP_UNCORRELATED_EXT = 0;
const BlendOverlapEXT BLEND_OVERLAP_DISJOINT_EXT = 1;
const BlendOverlapEXT BLEND_OVERLAP_CONJOINT_EXT = 2;

distinct CoverageModulationModeNV = inline uint;
const CoverageModulationModeNV COVERAGE_MODULATION_MODE_NONE_NV = 0;
const CoverageModulationModeNV COVERAGE_MODULATION_MODE_RGB_NV = 1;
const CoverageModulationModeNV COVERAGE_MODULATION_MODE_ALPHA_NV = 2;
const CoverageModulationModeNV COVERAGE_MODULATION_MODE_RGBA_NV = 3;

distinct CoverageReductionModeNV = inline uint;
const CoverageReductionModeNV COVERAGE_REDUCTION_MODE_MERGE_NV = 0;
const CoverageReductionModeNV COVERAGE_REDUCTION_MODE_TRUNCATE_NV = 1;

distinct ValidationCacheHeaderVersionEXT = inline uint;
const ValidationCacheHeaderVersionEXT VALIDATION_CACHE_HEADER_VERSION_ONE_EXT = 1;

distinct ShaderInfoTypeAMD = inline uint;
const ShaderInfoTypeAMD SHADER_INFO_TYPE_STATISTICS_AMD = 0;
const ShaderInfoTypeAMD SHADER_INFO_TYPE_BINARY_AMD = 1;
const ShaderInfoTypeAMD SHADER_INFO_TYPE_DISASSEMBLY_AMD = 2;

distinct QueueGlobalPriority = inline uint;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_LOW = 128;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_MEDIUM = 256;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_HIGH = 512;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_REALTIME = 1024;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_LOW_EXT = 128;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT = 256;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_HIGH_EXT = 512;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_REALTIME_EXT = 1024;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_LOW_KHR = 128;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR = 256;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_HIGH_KHR = 512;
const QueueGlobalPriority QUEUE_GLOBAL_PRIORITY_REALTIME_KHR = 1024;

distinct DebugUtilsMessageSeverityFlagBitsEXT = inline uint;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = 0x00000001;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = 0x00000010;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = 0x00000100;
const DebugUtilsMessageSeverityFlagBitsEXT DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = 0x00001000;

distinct DebugUtilsMessageTypeFlagBitsEXT = inline uint;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = 0x00000001;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = 0x00000002;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = 0x00000004;
const DebugUtilsMessageTypeFlagBitsEXT DEBUG_UTILS_MESSAGE_TYPE_DEVICE_ADDRESS_BINDING_BIT_EXT = 0x00000008;

distinct ConservativeRasterizationModeEXT = inline uint;
const ConservativeRasterizationModeEXT CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0;
const ConservativeRasterizationModeEXT CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1;
const ConservativeRasterizationModeEXT CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2;

distinct DescriptorBindingFlagBits = inline uint;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT = 0x00000001;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT = 0x00000002;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT = 0x00000004;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT = 0x00000008;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT = 0x00000001;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT = 0x00000002;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT = 0x00000004;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT = 0x00000008;
const DescriptorBindingFlagBits DESCRIPTOR_BINDING_RESERVED_4_BIT_QCOM = 0x00000010;

distinct VendorId = inline uint;
const VendorId VENDOR_ID_KHRONOS = 0x10000;
const VendorId VENDOR_ID_VIV = 0x10001;
const VendorId VENDOR_ID_VSI = 0x10002;
const VendorId VENDOR_ID_KAZAN = 0x10003;
const VendorId VENDOR_ID_CODEPLAY = 0x10004;
const VendorId VENDOR_ID_MESA = 0x10005;
const VendorId VENDOR_ID_POCL = 0x10006;
const VendorId VENDOR_ID_MOBILEYE = 0x10007;

distinct DriverId = inline uint;
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
const DriverId DRIVER_ID_MESA_HONEYKRISP = 26;
const DriverId DRIVER_ID_RESERVED_27 = 27;
const DriverId DRIVER_ID_AMD_PROPRIETARY_KHR = 1;
const DriverId DRIVER_ID_AMD_OPEN_SOURCE_KHR = 2;
const DriverId DRIVER_ID_MESA_RADV_KHR = 3;
const DriverId DRIVER_ID_NVIDIA_PROPRIETARY_KHR = 4;
const DriverId DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR = 5;
const DriverId DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR = 6;
const DriverId DRIVER_ID_IMAGINATION_PROPRIETARY_KHR = 7;
const DriverId DRIVER_ID_QUALCOMM_PROPRIETARY_KHR = 8;
const DriverId DRIVER_ID_ARM_PROPRIETARY_KHR = 9;
const DriverId DRIVER_ID_GOOGLE_SWIFTSHADER_KHR = 10;
const DriverId DRIVER_ID_GGP_PROPRIETARY_KHR = 11;
const DriverId DRIVER_ID_BROADCOM_PROPRIETARY_KHR = 12;

distinct ConditionalRenderingFlagBitsEXT = inline uint;
const ConditionalRenderingFlagBitsEXT CONDITIONAL_RENDERING_INVERTED_BIT_EXT = 0x00000001;

distinct ResolveModeFlagBits = inline uint;
const ResolveModeFlagBits RESOLVE_MODE_NONE = 0;
const ResolveModeFlagBits RESOLVE_MODE_SAMPLE_ZERO_BIT = 0x00000001;
const ResolveModeFlagBits RESOLVE_MODE_AVERAGE_BIT = 0x00000002;
const ResolveModeFlagBits RESOLVE_MODE_MIN_BIT = 0x00000004;
const ResolveModeFlagBits RESOLVE_MODE_MAX_BIT = 0x00000008;
const ResolveModeFlagBits RESOLVE_MODE_NONE_KHR = 0;
const ResolveModeFlagBits RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR = 0x00000001;
const ResolveModeFlagBits RESOLVE_MODE_AVERAGE_BIT_KHR = 0x00000002;
const ResolveModeFlagBits RESOLVE_MODE_MIN_BIT_KHR = 0x00000004;
const ResolveModeFlagBits RESOLVE_MODE_MAX_BIT_KHR = 0x00000008;
const ResolveModeFlagBits RESOLVE_MODE_EXTERNAL_FORMAT_DOWNSAMPLE_ANDROID = 0x00000010;

distinct ShadingRatePaletteEntryNV = inline uint;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV = 0;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV = 1;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV = 2;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV = 3;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV = 4;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV = 5;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV = 6;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV = 7;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV = 8;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV = 9;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV = 10;
const ShadingRatePaletteEntryNV SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV = 11;

distinct CoarseSampleOrderTypeNV = inline uint;
const CoarseSampleOrderTypeNV COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV = 0;
const CoarseSampleOrderTypeNV COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV = 1;
const CoarseSampleOrderTypeNV COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV = 2;
const CoarseSampleOrderTypeNV COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV = 3;

distinct GeometryInstanceFlagBitsKHR = inline uint;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR = 0x00000001;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR = 0x00000002;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR = 0x00000004;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR = 0x00000008;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV = 0x00000001;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV = 0x00000004;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV = 0x00000008;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_FORCE_OPACITY_MICROMAP_2_STATE_EXT = 0x00000010;
const GeometryInstanceFlagBitsKHR GEOMETRY_INSTANCE_DISABLE_OPACITY_MICROMAPS_EXT = 0x00000020;

distinct GeometryFlagBitsKHR = inline uint;
const GeometryFlagBitsKHR GEOMETRY_OPAQUE_BIT_KHR = 0x00000001;
const GeometryFlagBitsKHR GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR = 0x00000002;
const GeometryFlagBitsKHR GEOMETRY_OPAQUE_BIT_NV = 0x00000001;
const GeometryFlagBitsKHR GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV = 0x00000002;

distinct BuildAccelerationStructureFlagBitsKHR = inline uint;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR = 0x00000001;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR = 0x00000002;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR = 0x00000004;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR = 0x00000008;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR = 0x00000010;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV = 0x00000001;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV = 0x00000002;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV = 0x00000004;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV = 0x00000008;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV = 0x00000010;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_MOTION_BIT_NV = 0x00000020;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_OPACITY_MICROMAP_UPDATE_EXT = 0x00000040;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_DISABLE_OPACITY_MICROMAPS_EXT = 0x00000080;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_OPACITY_MICROMAP_DATA_UPDATE_EXT = 0x00000100;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_DISPLACEMENT_MICROMAP_UPDATE_NV = 0x00000200;
const BuildAccelerationStructureFlagBitsKHR BUILD_ACCELERATION_STRUCTURE_ALLOW_DATA_ACCESS_KHR = 0x00000800;

distinct AccelerationStructureCreateFlagBitsKHR = inline uint;
const AccelerationStructureCreateFlagBitsKHR ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 0x00000001;
const AccelerationStructureCreateFlagBitsKHR ACCELERATION_STRUCTURE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 0x00000008;
const AccelerationStructureCreateFlagBitsKHR ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV = 0x00000004;

distinct CopyAccelerationStructureModeKHR = inline uint;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV = 0;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV = 1;

distinct BuildAccelerationStructureModeKHR = inline uint;
const BuildAccelerationStructureModeKHR BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR = 0;
const BuildAccelerationStructureModeKHR BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR = 1;

distinct AccelerationStructureTypeKHR = inline uint;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR = 2;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV = 0;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV = 1;

distinct GeometryTypeKHR = inline uint;
const GeometryTypeKHR GEOMETRY_TYPE_TRIANGLES_KHR = 0;
const GeometryTypeKHR GEOMETRY_TYPE_AABBS_KHR = 1;
const GeometryTypeKHR GEOMETRY_TYPE_INSTANCES_KHR = 2;
const GeometryTypeKHR GEOMETRY_TYPE_TRIANGLES_NV = 0;
const GeometryTypeKHR GEOMETRY_TYPE_AABBS_NV = 1;

distinct AccelerationStructureMemoryRequirementsTypeNV = inline uint;
const AccelerationStructureMemoryRequirementsTypeNV ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV = 0;
const AccelerationStructureMemoryRequirementsTypeNV ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV = 1;
const AccelerationStructureMemoryRequirementsTypeNV ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV = 2;

distinct AccelerationStructureBuildTypeKHR = inline uint;
const AccelerationStructureBuildTypeKHR ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR = 0;
const AccelerationStructureBuildTypeKHR ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR = 1;
const AccelerationStructureBuildTypeKHR ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR = 2;

distinct RayTracingShaderGroupTypeKHR = inline uint;
const RayTracingShaderGroupTypeKHR RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR = 0;
const RayTracingShaderGroupTypeKHR RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR = 1;
const RayTracingShaderGroupTypeKHR RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR = 2;
const RayTracingShaderGroupTypeKHR RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV = 0;
const RayTracingShaderGroupTypeKHR RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV = 1;
const RayTracingShaderGroupTypeKHR RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV = 2;

distinct AccelerationStructureCompatibilityKHR = inline uint;
const AccelerationStructureCompatibilityKHR ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR = 0;
const AccelerationStructureCompatibilityKHR ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR = 1;

distinct ShaderGroupShaderKHR = inline uint;
const ShaderGroupShaderKHR SHADER_GROUP_SHADER_GENERAL_KHR = 0;
const ShaderGroupShaderKHR SHADER_GROUP_SHADER_CLOSEST_HIT_KHR = 1;
const ShaderGroupShaderKHR SHADER_GROUP_SHADER_ANY_HIT_KHR = 2;
const ShaderGroupShaderKHR SHADER_GROUP_SHADER_INTERSECTION_KHR = 3;

distinct MemoryOverallocationBehaviorAMD = inline uint;
const MemoryOverallocationBehaviorAMD MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD = 0;
const MemoryOverallocationBehaviorAMD MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD = 1;
const MemoryOverallocationBehaviorAMD MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD = 2;

distinct DeviceDiagnosticsConfigFlagBitsNV = inline uint;
const DeviceDiagnosticsConfigFlagBitsNV DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV = 0x00000001;
const DeviceDiagnosticsConfigFlagBitsNV DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV = 0x00000002;
const DeviceDiagnosticsConfigFlagBitsNV DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV = 0x00000004;
const DeviceDiagnosticsConfigFlagBitsNV DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV = 0x00000008;

distinct PipelineCreationFeedbackFlagBits = inline uint;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_VALID_BIT = 0x00000001;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT = 0x00000002;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT = 0x00000004;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT = 0x00000001;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT = 0x00000002;
const PipelineCreationFeedbackFlagBits PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT = 0x00000004;

distinct FullScreenExclusiveEXT = inline uint;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT = 0;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT = 1;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT = 2;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT = 3;

distinct PerformanceCounterScopeKHR = inline uint;
const PerformanceCounterScopeKHR PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0;
const PerformanceCounterScopeKHR PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1;
const PerformanceCounterScopeKHR PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2;

distinct MemoryDecompressionMethodFlagBitsNV = inline ulong;
const MemoryDecompressionMethodFlagBitsNV MEMORY_DECOMPRESSION_METHOD_GDEFLATE_1_0_BIT_NV = 0x00000001;

distinct PerformanceCounterUnitKHR = inline uint;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_GENERIC_KHR = 0;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR = 1;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR = 2;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_BYTES_KHR = 3;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR = 4;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_KELVIN_KHR = 5;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_WATTS_KHR = 6;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_VOLTS_KHR = 7;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_AMPS_KHR = 8;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_HERTZ_KHR = 9;
const PerformanceCounterUnitKHR PERFORMANCE_COUNTER_UNIT_CYCLES_KHR = 10;

distinct PerformanceCounterStorageKHR = inline uint;
const PerformanceCounterStorageKHR PERFORMANCE_COUNTER_STORAGE_INT32_KHR = 0;
const PerformanceCounterStorageKHR PERFORMANCE_COUNTER_STORAGE_INT64_KHR = 1;
const PerformanceCounterStorageKHR PERFORMANCE_COUNTER_STORAGE_UINT32_KHR = 2;
const PerformanceCounterStorageKHR PERFORMANCE_COUNTER_STORAGE_UINT64_KHR = 3;
const PerformanceCounterStorageKHR PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR = 4;
const PerformanceCounterStorageKHR PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR = 5;

distinct PerformanceCounterDescriptionFlagBitsKHR = inline uint;
const PerformanceCounterDescriptionFlagBitsKHR PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR = 0x00000001;
const PerformanceCounterDescriptionFlagBitsKHR PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR = 0x00000002;

distinct PerformanceConfigurationTypeINTEL = inline uint;
const PerformanceConfigurationTypeINTEL PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL = 0;

distinct QueryPoolSamplingModeINTEL = inline uint;
const QueryPoolSamplingModeINTEL QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL = 0;

distinct PerformanceOverrideTypeINTEL = inline uint;
const PerformanceOverrideTypeINTEL PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL = 0;
const PerformanceOverrideTypeINTEL PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL = 1;

distinct PerformanceParameterTypeINTEL = inline uint;
const PerformanceParameterTypeINTEL PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL = 0;
const PerformanceParameterTypeINTEL PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL = 1;

distinct PerformanceValueTypeINTEL = inline uint;
const PerformanceValueTypeINTEL PERFORMANCE_VALUE_TYPE_UINT32_INTEL = 0;
const PerformanceValueTypeINTEL PERFORMANCE_VALUE_TYPE_UINT64_INTEL = 1;
const PerformanceValueTypeINTEL PERFORMANCE_VALUE_TYPE_FLOAT_INTEL = 2;
const PerformanceValueTypeINTEL PERFORMANCE_VALUE_TYPE_BOOL_INTEL = 3;
const PerformanceValueTypeINTEL PERFORMANCE_VALUE_TYPE_STRING_INTEL = 4;

distinct ShaderFloatControlsIndependence = inline uint;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR = 0;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR = 1;
const ShaderFloatControlsIndependence SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR = 2;

distinct PipelineExecutableStatisticFormatKHR = inline uint;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3;

distinct LineRasterizationMode = inline uint;
const LineRasterizationMode LINE_RASTERIZATION_MODE_DEFAULT = 0;
const LineRasterizationMode LINE_RASTERIZATION_MODE_RECTANGULAR = 1;
const LineRasterizationMode LINE_RASTERIZATION_MODE_BRESENHAM = 2;
const LineRasterizationMode LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH = 3;
const LineRasterizationMode LINE_RASTERIZATION_MODE_DEFAULT_EXT = 0;
const LineRasterizationMode LINE_RASTERIZATION_MODE_RECTANGULAR_EXT = 1;
const LineRasterizationMode LINE_RASTERIZATION_MODE_BRESENHAM_EXT = 2;
const LineRasterizationMode LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT = 3;
const LineRasterizationMode LINE_RASTERIZATION_MODE_DEFAULT_KHR = 0;
const LineRasterizationMode LINE_RASTERIZATION_MODE_RECTANGULAR_KHR = 1;
const LineRasterizationMode LINE_RASTERIZATION_MODE_BRESENHAM_KHR = 2;
const LineRasterizationMode LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_KHR = 3;

distinct FaultLevel = inline uint;
const FaultLevel FAULT_LEVEL_UNASSIGNED = 0;
const FaultLevel FAULT_LEVEL_CRITICAL = 1;
const FaultLevel FAULT_LEVEL_RECOVERABLE = 2;
const FaultLevel FAULT_LEVEL_WARNING = 3;

distinct FaultType = inline uint;
const FaultType FAULT_TYPE_INVALID = 0;
const FaultType FAULT_TYPE_UNASSIGNED = 1;
const FaultType FAULT_TYPE_IMPLEMENTATION = 2;
const FaultType FAULT_TYPE_SYSTEM = 3;
const FaultType FAULT_TYPE_PHYSICAL_DEVICE = 4;
const FaultType FAULT_TYPE_COMMAND_BUFFER_FULL = 5;
const FaultType FAULT_TYPE_INVALID_API_USAGE = 6;

distinct FaultQueryBehavior = inline uint;
const FaultQueryBehavior FAULT_QUERY_BEHAVIOR_GET_AND_CLEAR_ALL_FAULTS = 0;

distinct ToolPurposeFlagBits = inline uint;
const ToolPurposeFlagBits TOOL_PURPOSE_VALIDATION_BIT = 0x00000001;
const ToolPurposeFlagBits TOOL_PURPOSE_PROFILING_BIT = 0x00000002;
const ToolPurposeFlagBits TOOL_PURPOSE_TRACING_BIT = 0x00000004;
const ToolPurposeFlagBits TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT = 0x00000008;
const ToolPurposeFlagBits TOOL_PURPOSE_MODIFYING_FEATURES_BIT = 0x00000010;
const ToolPurposeFlagBits TOOL_PURPOSE_VALIDATION_BIT_EXT = 0x00000001;
const ToolPurposeFlagBits TOOL_PURPOSE_PROFILING_BIT_EXT = 0x00000002;
const ToolPurposeFlagBits TOOL_PURPOSE_TRACING_BIT_EXT = 0x00000004;
const ToolPurposeFlagBits TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT = 0x00000008;
const ToolPurposeFlagBits TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT = 0x00000010;
const ToolPurposeFlagBits TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT = 0x00000020;
const ToolPurposeFlagBits TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT = 0x00000040;

distinct PipelineMatchControl = inline uint;
const PipelineMatchControl PIPELINE_MATCH_CONTROL_APPLICATION_UUID_EXACT_MATCH = 0;

distinct FragmentShadingRateCombinerOpKHR = inline uint;
const FragmentShadingRateCombinerOpKHR FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR = 0;
const FragmentShadingRateCombinerOpKHR FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR = 1;
const FragmentShadingRateCombinerOpKHR FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR = 2;
const FragmentShadingRateCombinerOpKHR FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR = 3;
const FragmentShadingRateCombinerOpKHR FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR = 4;

distinct FragmentShadingRateNV = inline uint;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV = 0;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV = 1;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV = 4;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV = 5;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV = 6;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV = 9;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV = 10;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV = 11;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV = 12;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV = 13;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV = 14;
const FragmentShadingRateNV FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV = 15;

distinct FragmentShadingRateTypeNV = inline uint;
const FragmentShadingRateTypeNV FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV = 0;
const FragmentShadingRateTypeNV FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV = 1;

distinct SubpassMergeStatusEXT = inline uint;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_MERGED_EXT = 0;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_DISALLOWED_EXT = 1;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT = 2;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT = 3;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT = 4;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT = 5;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT = 6;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT = 7;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT = 8;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT = 9;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT = 10;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT = 11;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT = 12;
const SubpassMergeStatusEXT SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT = 13;

distinct AccessFlagBits2 = inline ulong;
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
const AccessFlagBits2 ACCESS_2_VIDEO_DECODE_READ_BIT_KHR = 0x800000000;
const AccessFlagBits2 ACCESS_2_VIDEO_DECODE_WRITE_BIT_KHR = 0x1000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_57_BIT_KHR = 0x200000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_58_BIT_KHR = 0x400000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_59_BIT_KHR = 0x800000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_46_BIT_INTEL = 0x400000000000;
const AccessFlagBits2 ACCESS_2_VIDEO_ENCODE_READ_BIT_KHR = 0x2000000000;
const AccessFlagBits2 ACCESS_2_VIDEO_ENCODE_WRITE_BIT_KHR = 0x4000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_51_BIT_QCOM = 0x8000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_52_BIT_QCOM = 0x10000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_53_BIT_QCOM = 0x20000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_54_BIT_QCOM = 0x40000000000000;
const AccessFlagBits2 ACCESS_2_NONE_KHR = 0;
const AccessFlagBits2 ACCESS_2_INDIRECT_COMMAND_READ_BIT_KHR = 0x00000001;
const AccessFlagBits2 ACCESS_2_INDEX_READ_BIT_KHR = 0x00000002;
const AccessFlagBits2 ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT_KHR = 0x00000004;
const AccessFlagBits2 ACCESS_2_UNIFORM_READ_BIT_KHR = 0x00000008;
const AccessFlagBits2 ACCESS_2_INPUT_ATTACHMENT_READ_BIT_KHR = 0x00000010;
const AccessFlagBits2 ACCESS_2_SHADER_READ_BIT_KHR = 0x00000020;
const AccessFlagBits2 ACCESS_2_SHADER_WRITE_BIT_KHR = 0x00000040;
const AccessFlagBits2 ACCESS_2_COLOR_ATTACHMENT_READ_BIT_KHR = 0x00000080;
const AccessFlagBits2 ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT_KHR = 0x00000100;
const AccessFlagBits2 ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT_KHR = 0x00000200;
const AccessFlagBits2 ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT_KHR = 0x00000400;
const AccessFlagBits2 ACCESS_2_TRANSFER_READ_BIT_KHR = 0x00000800;
const AccessFlagBits2 ACCESS_2_TRANSFER_WRITE_BIT_KHR = 0x00001000;
const AccessFlagBits2 ACCESS_2_HOST_READ_BIT_KHR = 0x00002000;
const AccessFlagBits2 ACCESS_2_HOST_WRITE_BIT_KHR = 0x00004000;
const AccessFlagBits2 ACCESS_2_MEMORY_READ_BIT_KHR = 0x00008000;
const AccessFlagBits2 ACCESS_2_MEMORY_WRITE_BIT_KHR = 0x00010000;
const AccessFlagBits2 ACCESS_2_SHADER_SAMPLED_READ_BIT_KHR = 0x100000000;
const AccessFlagBits2 ACCESS_2_SHADER_STORAGE_READ_BIT_KHR = 0x200000000;
const AccessFlagBits2 ACCESS_2_SHADER_STORAGE_WRITE_BIT_KHR = 0x400000000;
const AccessFlagBits2 ACCESS_2_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 0x02000000;
const AccessFlagBits2 ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 0x04000000;
const AccessFlagBits2 ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 0x08000000;
const AccessFlagBits2 ACCESS_2_CONDITIONAL_RENDERING_READ_BIT_EXT = 0x00100000;
const AccessFlagBits2 ACCESS_2_COMMAND_PREPROCESS_READ_BIT_NV = 0x00020000;
const AccessFlagBits2 ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_NV = 0x00040000;
const AccessFlagBits2 ACCESS_2_COMMAND_PREPROCESS_READ_BIT_EXT = 0x00020000;
const AccessFlagBits2 ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_EXT = 0x00040000;
const AccessFlagBits2 ACCESS_2_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR = 0x00800000;
const AccessFlagBits2 ACCESS_2_SHADING_RATE_IMAGE_READ_BIT_NV = 0x00800000;
const AccessFlagBits2 ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_KHR = 0x00200000;
const AccessFlagBits2 ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 0x00400000;
const AccessFlagBits2 ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_NV = 0x00200000;
const AccessFlagBits2 ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_NV = 0x00400000;
const AccessFlagBits2 ACCESS_2_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 0x01000000;
const AccessFlagBits2 ACCESS_2_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 0x00080000;
const AccessFlagBits2 ACCESS_2_DESCRIPTOR_BUFFER_READ_BIT_EXT = 0x20000000000;
const AccessFlagBits2 ACCESS_2_INVOCATION_MASK_READ_BIT_HUAWEI = 0x8000000000;
const AccessFlagBits2 ACCESS_2_SHADER_BINDING_TABLE_READ_BIT_KHR = 0x10000000000;
const AccessFlagBits2 ACCESS_2_MICROMAP_READ_BIT_EXT = 0x100000000000;
const AccessFlagBits2 ACCESS_2_MICROMAP_WRITE_BIT_EXT = 0x200000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_49_BIT_ARM = 0x2000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_50_BIT_ARM = 0x4000000000000;
const AccessFlagBits2 ACCESS_2_OPTICAL_FLOW_READ_BIT_NV = 0x40000000000;
const AccessFlagBits2 ACCESS_2_OPTICAL_FLOW_WRITE_BIT_NV = 0x80000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_47_BIT_EXT = 0x800000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_48_BIT_EXT = 0x1000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_55_BIT_NV = 0x80000000000000;
const AccessFlagBits2 ACCESS_2_RESERVED_56_BIT_NV = 0x100000000000000;

distinct PipelineStageFlagBits2 = inline ulong;
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
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VIDEO_DECODE_BIT_KHR = 0x04000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VIDEO_ENCODE_BIT_KHR = 0x08000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_NONE_KHR = 0;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TOP_OF_PIPE_BIT_KHR = 0x00000001;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_DRAW_INDIRECT_BIT_KHR = 0x00000002;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VERTEX_INPUT_BIT_KHR = 0x00000004;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VERTEX_SHADER_BIT_KHR = 0x00000008;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT_KHR = 0x00000010;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT_KHR = 0x00000020;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT_KHR = 0x00000040;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT_KHR = 0x00000080;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT_KHR = 0x00000100;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT_KHR = 0x00000200;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT_KHR = 0x00000400;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COMPUTE_SHADER_BIT_KHR = 0x00000800;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ALL_TRANSFER_BIT_KHR = 0x00001000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TRANSFER_BIT_KHR = 0x00001000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT_KHR = 0x00002000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_HOST_BIT_KHR = 0x00004000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ALL_GRAPHICS_BIT_KHR = 0x00008000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ALL_COMMANDS_BIT_KHR = 0x00010000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COPY_BIT_KHR = 0x100000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESOLVE_BIT_KHR = 0x200000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_BLIT_BIT_KHR = 0x400000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_CLEAR_BIT_KHR = 0x800000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_INDEX_INPUT_BIT_KHR = 0x1000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT_KHR = 0x2000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT_KHR = 0x4000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TRANSFORM_FEEDBACK_BIT_EXT = 0x01000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_CONDITIONAL_RENDERING_BIT_EXT = 0x00040000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_NV = 0x00020000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_EXT = 0x00020000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00400000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_SHADING_RATE_IMAGE_BIT_NV = 0x00400000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 0x02000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR = 0x00200000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_NV = 0x00200000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_NV = 0x02000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 0x00800000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_TASK_SHADER_BIT_EXT = 0x00080000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_MESH_SHADER_BIT_EXT = 0x00100000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_SUBPASS_SHADER_BIT_HUAWEI = 0x8000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_SUBPASS_SHADING_BIT_HUAWEI = 0x8000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_INVOCATION_MASK_BIT_HUAWEI = 0x10000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_COPY_BIT_KHR = 0x10000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_MICROMAP_BUILD_BIT_EXT = 0x40000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_CLUSTER_CULLING_SHADER_BIT_HUAWEI = 0x20000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESERVED_43_BIT_ARM = 0x80000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_OPTICAL_FLOW_BIT_NV = 0x20000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESERVED_44_BIT_NV = 0x100000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESERVED_42_BIT_EXT = 0x40000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESERVED_46_BIT_NV = 0x400000000000;
const PipelineStageFlagBits2 PIPELINE_STAGE_2_RESERVED_45_BIT_NV = 0x200000000000;

distinct SubmitFlagBits = inline uint;
const SubmitFlagBits SUBMIT_PROTECTED_BIT = 0x00000001;
const SubmitFlagBits SUBMIT_PROTECTED_BIT_KHR = 0x00000001;

distinct SciSyncClientTypeNV = inline uint;
const SciSyncClientTypeNV SCI_SYNC_CLIENT_TYPE_SIGNALER_NV = 0;
const SciSyncClientTypeNV SCI_SYNC_CLIENT_TYPE_WAITER_NV = 1;
const SciSyncClientTypeNV SCI_SYNC_CLIENT_TYPE_SIGNALER_WAITER_NV = 2;

distinct SciSyncPrimitiveTypeNV = inline uint;
const SciSyncPrimitiveTypeNV SCI_SYNC_PRIMITIVE_TYPE_FENCE_NV = 0;
const SciSyncPrimitiveTypeNV SCI_SYNC_PRIMITIVE_TYPE_SEMAPHORE_NV = 1;

distinct ProvokingVertexModeEXT = inline uint;
const ProvokingVertexModeEXT PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT = 0;
const ProvokingVertexModeEXT PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT = 1;

distinct PipelineCacheValidationVersion = inline uint;
const PipelineCacheValidationVersion PIPELINE_CACHE_VALIDATION_VERSION_SAFETY_CRITICAL_ONE = 1;

distinct AccelerationStructureMotionInstanceTypeNV = inline uint;
const AccelerationStructureMotionInstanceTypeNV ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV = 0;
const AccelerationStructureMotionInstanceTypeNV ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV = 1;
const AccelerationStructureMotionInstanceTypeNV ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV = 2;

distinct GraphicsPipelineLibraryFlagBitsEXT = inline uint;
const GraphicsPipelineLibraryFlagBitsEXT GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT = 0x00000001;
const GraphicsPipelineLibraryFlagBitsEXT GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT = 0x00000002;
const GraphicsPipelineLibraryFlagBitsEXT GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT = 0x00000004;
const GraphicsPipelineLibraryFlagBitsEXT GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT = 0x00000008;

distinct DeviceAddressBindingFlagBitsEXT = inline uint;
const DeviceAddressBindingFlagBitsEXT DEVICE_ADDRESS_BINDING_INTERNAL_OBJECT_BIT_EXT = 0x00000001;

distinct DeviceAddressBindingTypeEXT = inline uint;
const DeviceAddressBindingTypeEXT DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT = 0;
const DeviceAddressBindingTypeEXT DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT = 1;

distinct FrameBoundaryFlagBitsEXT = inline uint;
const FrameBoundaryFlagBitsEXT FRAME_BOUNDARY_FRAME_END_BIT_EXT = 0x00000001;

distinct PresentScalingFlagBitsEXT = inline uint;
const PresentScalingFlagBitsEXT PRESENT_SCALING_ONE_TO_ONE_BIT_EXT = 0x00000001;
const PresentScalingFlagBitsEXT PRESENT_SCALING_ASPECT_RATIO_STRETCH_BIT_EXT = 0x00000002;
const PresentScalingFlagBitsEXT PRESENT_SCALING_STRETCH_BIT_EXT = 0x00000004;

distinct PresentGravityFlagBitsEXT = inline uint;
const PresentGravityFlagBitsEXT PRESENT_GRAVITY_MIN_BIT_EXT = 0x00000001;
const PresentGravityFlagBitsEXT PRESENT_GRAVITY_MAX_BIT_EXT = 0x00000002;
const PresentGravityFlagBitsEXT PRESENT_GRAVITY_CENTERED_BIT_EXT = 0x00000004;

distinct PhysicalDeviceSchedulingControlsFlagBitsARM = inline ulong;
const PhysicalDeviceSchedulingControlsFlagBitsARM PHYSICAL_DEVICE_SCHEDULING_CONTROLS_SHADER_CORE_COUNT_ARM = 0x00000001;

distinct VideoCodecOperationFlagBitsKHR = inline uint;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_NONE_KHR = 0;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_ENCODE_H264_BIT_KHR = 0x00010000;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_ENCODE_H265_BIT_KHR = 0x00020000;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_DECODE_H264_BIT_KHR = 0x00000001;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_DECODE_H265_BIT_KHR = 0x00000002;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_DECODE_AV1_BIT_KHR = 0x00000004;
const VideoCodecOperationFlagBitsKHR VIDEO_CODEC_OPERATION_ENCODE_AV1_BIT_KHR = 0x00040000;

distinct VideoChromaSubsamplingFlagBitsKHR = inline uint;
const VideoChromaSubsamplingFlagBitsKHR VIDEO_CHROMA_SUBSAMPLING_INVALID_KHR = 0;
const VideoChromaSubsamplingFlagBitsKHR VIDEO_CHROMA_SUBSAMPLING_MONOCHROME_BIT_KHR = 0x00000001;
const VideoChromaSubsamplingFlagBitsKHR VIDEO_CHROMA_SUBSAMPLING_420_BIT_KHR = 0x00000002;
const VideoChromaSubsamplingFlagBitsKHR VIDEO_CHROMA_SUBSAMPLING_422_BIT_KHR = 0x00000004;
const VideoChromaSubsamplingFlagBitsKHR VIDEO_CHROMA_SUBSAMPLING_444_BIT_KHR = 0x00000008;

distinct VideoComponentBitDepthFlagBitsKHR = inline uint;
const VideoComponentBitDepthFlagBitsKHR VIDEO_COMPONENT_BIT_DEPTH_INVALID_KHR = 0;
const VideoComponentBitDepthFlagBitsKHR VIDEO_COMPONENT_BIT_DEPTH_8_BIT_KHR = 0x00000001;
const VideoComponentBitDepthFlagBitsKHR VIDEO_COMPONENT_BIT_DEPTH_10_BIT_KHR = 0x00000004;
const VideoComponentBitDepthFlagBitsKHR VIDEO_COMPONENT_BIT_DEPTH_12_BIT_KHR = 0x00000010;

distinct VideoCapabilityFlagBitsKHR = inline uint;
const VideoCapabilityFlagBitsKHR VIDEO_CAPABILITY_PROTECTED_CONTENT_BIT_KHR = 0x00000001;
const VideoCapabilityFlagBitsKHR VIDEO_CAPABILITY_SEPARATE_REFERENCE_IMAGES_BIT_KHR = 0x00000002;

distinct VideoSessionCreateFlagBitsKHR = inline uint;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_PROTECTED_CONTENT_BIT_KHR = 0x00000001;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_ALLOW_ENCODE_PARAMETER_OPTIMIZATIONS_BIT_KHR = 0x00000002;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_INLINE_QUERIES_BIT_KHR = 0x00000004;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_ALLOW_ENCODE_QUANTIZATION_DELTA_MAP_BIT_KHR = 0x00000008;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_ALLOW_ENCODE_EMPHASIS_MAP_BIT_KHR = 0x00000010;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_RESERVED_5_BIT_KHR = 0x00000020;
const VideoSessionCreateFlagBitsKHR VIDEO_SESSION_CREATE_RESERVED_6_BIT_KHR = 0x00000040;

distinct VideoDecodeH264PictureLayoutFlagBitsKHR = inline uint;
const VideoDecodeH264PictureLayoutFlagBitsKHR VIDEO_DECODE_H264_PICTURE_LAYOUT_PROGRESSIVE_KHR = 0;
const VideoDecodeH264PictureLayoutFlagBitsKHR VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_INTERLEAVED_LINES_BIT_KHR = 0x00000001;
const VideoDecodeH264PictureLayoutFlagBitsKHR VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_SEPARATE_PLANES_BIT_KHR = 0x00000002;

distinct VideoCodingControlFlagBitsKHR = inline uint;
const VideoCodingControlFlagBitsKHR VIDEO_CODING_CONTROL_RESET_BIT_KHR = 0x00000001;
const VideoCodingControlFlagBitsKHR VIDEO_CODING_CONTROL_ENCODE_RATE_CONTROL_BIT_KHR = 0x00000002;
const VideoCodingControlFlagBitsKHR VIDEO_CODING_CONTROL_ENCODE_QUALITY_LEVEL_BIT_KHR = 0x00000004;

distinct QueryResultStatusKHR = inline int;
const QueryResultStatusKHR QUERY_RESULT_STATUS_ERROR_KHR = -1;
const QueryResultStatusKHR QUERY_RESULT_STATUS_NOT_READY_KHR = 0;
const QueryResultStatusKHR QUERY_RESULT_STATUS_COMPLETE_KHR = 1;
const QueryResultStatusKHR QUERY_RESULT_STATUS_INSUFFICIENT_BITSTREAM_BUFFER_RANGE_KHR = -1000299000;

distinct VideoDecodeUsageFlagBitsKHR = inline uint;
const VideoDecodeUsageFlagBitsKHR VIDEO_DECODE_USAGE_DEFAULT_KHR = 0;
const VideoDecodeUsageFlagBitsKHR VIDEO_DECODE_USAGE_TRANSCODING_BIT_KHR = 0x00000001;
const VideoDecodeUsageFlagBitsKHR VIDEO_DECODE_USAGE_OFFLINE_BIT_KHR = 0x00000002;
const VideoDecodeUsageFlagBitsKHR VIDEO_DECODE_USAGE_STREAMING_BIT_KHR = 0x00000004;

distinct VideoDecodeCapabilityFlagBitsKHR = inline uint;
const VideoDecodeCapabilityFlagBitsKHR VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_COINCIDE_BIT_KHR = 0x00000001;
const VideoDecodeCapabilityFlagBitsKHR VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_DISTINCT_BIT_KHR = 0x00000002;

distinct VideoEncodeUsageFlagBitsKHR = inline uint;
const VideoEncodeUsageFlagBitsKHR VIDEO_ENCODE_USAGE_DEFAULT_KHR = 0;
const VideoEncodeUsageFlagBitsKHR VIDEO_ENCODE_USAGE_TRANSCODING_BIT_KHR = 0x00000001;
const VideoEncodeUsageFlagBitsKHR VIDEO_ENCODE_USAGE_STREAMING_BIT_KHR = 0x00000002;
const VideoEncodeUsageFlagBitsKHR VIDEO_ENCODE_USAGE_RECORDING_BIT_KHR = 0x00000004;
const VideoEncodeUsageFlagBitsKHR VIDEO_ENCODE_USAGE_CONFERENCING_BIT_KHR = 0x00000008;

distinct VideoEncodeContentFlagBitsKHR = inline uint;
const VideoEncodeContentFlagBitsKHR VIDEO_ENCODE_CONTENT_DEFAULT_KHR = 0;
const VideoEncodeContentFlagBitsKHR VIDEO_ENCODE_CONTENT_CAMERA_BIT_KHR = 0x00000001;
const VideoEncodeContentFlagBitsKHR VIDEO_ENCODE_CONTENT_DESKTOP_BIT_KHR = 0x00000002;
const VideoEncodeContentFlagBitsKHR VIDEO_ENCODE_CONTENT_RENDERED_BIT_KHR = 0x00000004;

distinct VideoEncodeTuningModeKHR = inline uint;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR = 0;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR = 1;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR = 2;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR = 3;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR = 4;

distinct VideoEncodeCapabilityFlagBitsKHR = inline uint;
const VideoEncodeCapabilityFlagBitsKHR VIDEO_ENCODE_CAPABILITY_PRECEDING_EXTERNALLY_ENCODED_BYTES_BIT_KHR = 0x00000001;
const VideoEncodeCapabilityFlagBitsKHR VIDEO_ENCODE_CAPABILITY_INSUFFICIENT_BITSTREAM_BUFFER_RANGE_DETECTION_BIT_KHR = 0x00000002;
const VideoEncodeCapabilityFlagBitsKHR VIDEO_ENCODE_CAPABILITY_QUANTIZATION_DELTA_MAP_BIT_KHR = 0x00000004;
const VideoEncodeCapabilityFlagBitsKHR VIDEO_ENCODE_CAPABILITY_EMPHASIS_MAP_BIT_KHR = 0x00000008;

distinct VideoEncodeFeedbackFlagBitsKHR = inline uint;
const VideoEncodeFeedbackFlagBitsKHR VIDEO_ENCODE_FEEDBACK_BITSTREAM_BUFFER_OFFSET_BIT_KHR = 0x00000001;
const VideoEncodeFeedbackFlagBitsKHR VIDEO_ENCODE_FEEDBACK_BITSTREAM_BYTES_WRITTEN_BIT_KHR = 0x00000002;
const VideoEncodeFeedbackFlagBitsKHR VIDEO_ENCODE_FEEDBACK_BITSTREAM_HAS_OVERRIDES_BIT_KHR = 0x00000004;

distinct VideoEncodeRateControlModeFlagBitsKHR = inline uint;
const VideoEncodeRateControlModeFlagBitsKHR VIDEO_ENCODE_RATE_CONTROL_MODE_DEFAULT_KHR = 0;
const VideoEncodeRateControlModeFlagBitsKHR VIDEO_ENCODE_RATE_CONTROL_MODE_DISABLED_BIT_KHR = 0x00000001;
const VideoEncodeRateControlModeFlagBitsKHR VIDEO_ENCODE_RATE_CONTROL_MODE_CBR_BIT_KHR = 0x00000002;
const VideoEncodeRateControlModeFlagBitsKHR VIDEO_ENCODE_RATE_CONTROL_MODE_VBR_BIT_KHR = 0x00000004;

distinct VideoEncodeH264CapabilityFlagBitsKHR = inline uint;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_PREDICTION_WEIGHT_TABLE_GENERATED_BIT_KHR = 0x00000002;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_ROW_UNALIGNED_SLICE_BIT_KHR = 0x00000004;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_KHR = 0x00000008;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L0_LIST_BIT_KHR = 0x00000010;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_KHR = 0x00000020;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_PER_PICTURE_TYPE_MIN_MAX_QP_BIT_KHR = 0x00000040;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_PER_SLICE_CONSTANT_QP_BIT_KHR = 0x00000080;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_GENERATE_PREFIX_NALU_BIT_KHR = 0x00000100;
const VideoEncodeH264CapabilityFlagBitsKHR VIDEO_ENCODE_H264_CAPABILITY_MB_QP_DIFF_WRAPAROUND_BIT_KHR = 0x00000200;

distinct VideoEncodeH264StdFlagBitsKHR = inline uint;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_SEPARATE_COLOR_PLANE_FLAG_SET_BIT_KHR = 0x00000001;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG_SET_BIT_KHR = 0x00000002;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_SCALING_MATRIX_PRESENT_FLAG_SET_BIT_KHR = 0x00000004;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_CHROMA_QP_INDEX_OFFSET_BIT_KHR = 0x00000008;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_SECOND_CHROMA_QP_INDEX_OFFSET_BIT_KHR = 0x00000010;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_PIC_INIT_QP_MINUS26_BIT_KHR = 0x00000020;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_WEIGHTED_PRED_FLAG_SET_BIT_KHR = 0x00000040;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_WEIGHTED_BIPRED_IDC_EXPLICIT_BIT_KHR = 0x00000080;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_WEIGHTED_BIPRED_IDC_IMPLICIT_BIT_KHR = 0x00000100;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_TRANSFORM_8X8_MODE_FLAG_SET_BIT_KHR = 0x00000200;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_DIRECT_SPATIAL_MV_PRED_FLAG_UNSET_BIT_KHR = 0x00000400;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_ENTROPY_CODING_MODE_FLAG_UNSET_BIT_KHR = 0x00000800;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_ENTROPY_CODING_MODE_FLAG_SET_BIT_KHR = 0x00001000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_DIRECT_8X8_INFERENCE_FLAG_UNSET_BIT_KHR = 0x00002000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_CONSTRAINED_INTRA_PRED_FLAG_SET_BIT_KHR = 0x00004000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_DISABLED_BIT_KHR = 0x00008000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_ENABLED_BIT_KHR = 0x00010000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_PARTIAL_BIT_KHR = 0x00020000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_SLICE_QP_DELTA_BIT_KHR = 0x00080000;
const VideoEncodeH264StdFlagBitsKHR VIDEO_ENCODE_H264_STD_DIFFERENT_SLICE_QP_DELTA_BIT_KHR = 0x00100000;

distinct VideoEncodeH264RateControlFlagBitsKHR = inline uint;
const VideoEncodeH264RateControlFlagBitsKHR VIDEO_ENCODE_H264_RATE_CONTROL_ATTEMPT_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VideoEncodeH264RateControlFlagBitsKHR VIDEO_ENCODE_H264_RATE_CONTROL_REGULAR_GOP_BIT_KHR = 0x00000002;
const VideoEncodeH264RateControlFlagBitsKHR VIDEO_ENCODE_H264_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR = 0x00000004;
const VideoEncodeH264RateControlFlagBitsKHR VIDEO_ENCODE_H264_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR = 0x00000008;
const VideoEncodeH264RateControlFlagBitsKHR VIDEO_ENCODE_H264_RATE_CONTROL_TEMPORAL_LAYER_PATTERN_DYADIC_BIT_KHR = 0x00000010;

distinct HostImageCopyFlagBits = inline uint;
const HostImageCopyFlagBits HOST_IMAGE_COPY_MEMCPY = 0x00000001;
const HostImageCopyFlagBits HOST_IMAGE_COPY_MEMCPY_EXT = 0x00000001;

distinct ImageConstraintsInfoFlagBitsFUCHSIA = inline uint;
const ImageConstraintsInfoFlagBitsFUCHSIA IMAGE_CONSTRAINTS_INFO_CPU_READ_RARELY_FUCHSIA = 0x00000001;
const ImageConstraintsInfoFlagBitsFUCHSIA IMAGE_CONSTRAINTS_INFO_CPU_READ_OFTEN_FUCHSIA = 0x00000002;
const ImageConstraintsInfoFlagBitsFUCHSIA IMAGE_CONSTRAINTS_INFO_CPU_WRITE_RARELY_FUCHSIA = 0x00000004;
const ImageConstraintsInfoFlagBitsFUCHSIA IMAGE_CONSTRAINTS_INFO_CPU_WRITE_OFTEN_FUCHSIA = 0x00000008;
const ImageConstraintsInfoFlagBitsFUCHSIA IMAGE_CONSTRAINTS_INFO_PROTECTED_OPTIONAL_FUCHSIA = 0x00000010;

distinct FormatFeatureFlagBits2 = inline ulong;
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
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT = 0x00002000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_HOST_IMAGE_TRANSFER_BIT = 0x400000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VIDEO_DECODE_OUTPUT_BIT_KHR = 0x02000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VIDEO_DECODE_DPB_BIT_KHR = 0x04000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 0x20000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_FRAGMENT_DENSITY_MAP_BIT_EXT = 0x01000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x40000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_RESERVED_44_BIT_EXT = 0x100000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_RESERVED_45_BIT_EXT = 0x200000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_HOST_IMAGE_TRANSFER_BIT_EXT = 0x400000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VIDEO_ENCODE_INPUT_BIT_KHR = 0x08000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VIDEO_ENCODE_DPB_BIT_KHR = 0x10000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT_KHR = 0x00000001;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_IMAGE_BIT_KHR = 0x00000002;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT_KHR = 0x00000004;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR = 0x00000008;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT_KHR = 0x00000010;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT_KHR = 0x00000020;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VERTEX_BUFFER_BIT_KHR = 0x00000040;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT_KHR = 0x00000080;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT_KHR = 0x00000100;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT_KHR = 0x00000200;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_BLIT_SRC_BIT_KHR = 0x00000400;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_BLIT_DST_BIT_KHR = 0x00000800;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT_KHR = 0x00001000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_TRANSFER_SRC_BIT_KHR = 0x00004000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_TRANSFER_DST_BIT_KHR = 0x00008000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = 0x00020000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = 0x00040000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = 0x00080000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = 0x00100000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = 0x00200000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_DISJOINT_BIT_KHR = 0x00400000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT_KHR = 0x00800000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT_KHR = 0x80000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT_KHR = 0x100000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT_KHR = 0x200000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT_KHR = 0x00010000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = 0x00002000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_RESERVED_51_BIT_EXT = 0x8000000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_LINEAR_COLOR_ATTACHMENT_BIT_NV = 0x4000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM = 0x400000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM = 0x800000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM = 0x1000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM = 0x2000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_RESERVED_47_BIT_ARM = 0x800000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_RESERVED_39_BIT_EXT = 0x8000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_OPTICAL_FLOW_IMAGE_BIT_NV = 0x10000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_OPTICAL_FLOW_VECTOR_BIT_NV = 0x20000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_OPTICAL_FLOW_COST_BIT_NV = 0x40000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_RESERVED_48_BIT_EXT = 0x1000000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VIDEO_ENCODE_QUANTIZATION_DELTA_MAP_BIT_KHR = 0x2000000000000;
const FormatFeatureFlagBits2 FORMAT_FEATURE_2_VIDEO_ENCODE_EMPHASIS_MAP_BIT_KHR = 0x4000000000000;

distinct RenderingFlagBits = inline uint;
const RenderingFlagBits RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT = 0x00000001;
const RenderingFlagBits RENDERING_SUSPENDING_BIT = 0x00000002;
const RenderingFlagBits RENDERING_RESUMING_BIT = 0x00000004;
const RenderingFlagBits RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT_KHR = 0x00000001;
const RenderingFlagBits RENDERING_SUSPENDING_BIT_KHR = 0x00000002;
const RenderingFlagBits RENDERING_RESUMING_BIT_KHR = 0x00000004;
const RenderingFlagBits RENDERING_ENABLE_LEGACY_DITHERING_BIT_EXT = 0x00000008;
const RenderingFlagBits RENDERING_EXTENSION_505_BIT_EXT = 0x00000020;
const RenderingFlagBits RENDERING_CONTENTS_INLINE_BIT_KHR = 0x00000010;

distinct VideoEncodeH265CapabilityFlagBitsKHR = inline uint;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_PREDICTION_WEIGHT_TABLE_GENERATED_BIT_KHR = 0x00000002;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_ROW_UNALIGNED_SLICE_SEGMENT_BIT_KHR = 0x00000004;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_DIFFERENT_SLICE_SEGMENT_TYPE_BIT_KHR = 0x00000008;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L0_LIST_BIT_KHR = 0x00000010;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_KHR = 0x00000020;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_PER_PICTURE_TYPE_MIN_MAX_QP_BIT_KHR = 0x00000040;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_PER_SLICE_SEGMENT_CONSTANT_QP_BIT_KHR = 0x00000080;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILES_PER_SLICE_SEGMENT_BIT_KHR = 0x00000100;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_SLICE_SEGMENTS_PER_TILE_BIT_KHR = 0x00000200;
const VideoEncodeH265CapabilityFlagBitsKHR VIDEO_ENCODE_H265_CAPABILITY_CU_QP_DIFF_WRAPAROUND_BIT_KHR = 0x00000400;

distinct VideoEncodeH265StdFlagBitsKHR = inline uint;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_SEPARATE_COLOR_PLANE_FLAG_SET_BIT_KHR = 0x00000001;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_SAMPLE_ADAPTIVE_OFFSET_ENABLED_FLAG_SET_BIT_KHR = 0x00000002;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_SCALING_LIST_DATA_PRESENT_FLAG_SET_BIT_KHR = 0x00000004;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_PCM_ENABLED_FLAG_SET_BIT_KHR = 0x00000008;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_SPS_TEMPORAL_MVP_ENABLED_FLAG_SET_BIT_KHR = 0x00000010;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_INIT_QP_MINUS26_BIT_KHR = 0x00000020;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_WEIGHTED_PRED_FLAG_SET_BIT_KHR = 0x00000040;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_WEIGHTED_BIPRED_FLAG_SET_BIT_KHR = 0x00000080;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_LOG2_PARALLEL_MERGE_LEVEL_MINUS2_BIT_KHR = 0x00000100;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_SIGN_DATA_HIDING_ENABLED_FLAG_SET_BIT_KHR = 0x00000200;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_TRANSFORM_SKIP_ENABLED_FLAG_SET_BIT_KHR = 0x00000400;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_TRANSFORM_SKIP_ENABLED_FLAG_UNSET_BIT_KHR = 0x00000800;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_FLAG_SET_BIT_KHR = 0x00001000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_TRANSQUANT_BYPASS_ENABLED_FLAG_SET_BIT_KHR = 0x00002000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_CONSTRAINED_INTRA_PRED_FLAG_SET_BIT_KHR = 0x00004000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_ENTROPY_CODING_SYNC_ENABLED_FLAG_SET_BIT_KHR = 0x00008000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_DEBLOCKING_FILTER_OVERRIDE_ENABLED_FLAG_SET_BIT_KHR = 0x00010000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_DEPENDENT_SLICE_SEGMENTS_ENABLED_FLAG_SET_BIT_KHR = 0x00020000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_DEPENDENT_SLICE_SEGMENT_FLAG_SET_BIT_KHR = 0x00040000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_SLICE_QP_DELTA_BIT_KHR = 0x00080000;
const VideoEncodeH265StdFlagBitsKHR VIDEO_ENCODE_H265_STD_DIFFERENT_SLICE_QP_DELTA_BIT_KHR = 0x00100000;

distinct VideoEncodeH265RateControlFlagBitsKHR = inline uint;
const VideoEncodeH265RateControlFlagBitsKHR VIDEO_ENCODE_H265_RATE_CONTROL_ATTEMPT_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VideoEncodeH265RateControlFlagBitsKHR VIDEO_ENCODE_H265_RATE_CONTROL_REGULAR_GOP_BIT_KHR = 0x00000002;
const VideoEncodeH265RateControlFlagBitsKHR VIDEO_ENCODE_H265_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR = 0x00000004;
const VideoEncodeH265RateControlFlagBitsKHR VIDEO_ENCODE_H265_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR = 0x00000008;
const VideoEncodeH265RateControlFlagBitsKHR VIDEO_ENCODE_H265_RATE_CONTROL_TEMPORAL_SUB_LAYER_PATTERN_DYADIC_BIT_KHR = 0x00000010;

distinct VideoEncodeH265CtbSizeFlagBitsKHR = inline uint;
const VideoEncodeH265CtbSizeFlagBitsKHR VIDEO_ENCODE_H265_CTB_SIZE_16_BIT_KHR = 0x00000001;
const VideoEncodeH265CtbSizeFlagBitsKHR VIDEO_ENCODE_H265_CTB_SIZE_32_BIT_KHR = 0x00000002;
const VideoEncodeH265CtbSizeFlagBitsKHR VIDEO_ENCODE_H265_CTB_SIZE_64_BIT_KHR = 0x00000004;

distinct VideoEncodeH265TransformBlockSizeFlagBitsKHR = inline uint;
const VideoEncodeH265TransformBlockSizeFlagBitsKHR VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_4_BIT_KHR = 0x00000001;
const VideoEncodeH265TransformBlockSizeFlagBitsKHR VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_8_BIT_KHR = 0x00000002;
const VideoEncodeH265TransformBlockSizeFlagBitsKHR VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_16_BIT_KHR = 0x00000004;
const VideoEncodeH265TransformBlockSizeFlagBitsKHR VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_32_BIT_KHR = 0x00000008;

distinct VideoEncodeAV1CapabilityFlagBitsKHR = inline uint;
const VideoEncodeAV1CapabilityFlagBitsKHR VIDEO_ENCODE_AV1_CAPABILITY_PER_RATE_CONTROL_GROUP_MIN_MAX_Q_INDEX_BIT_KHR = 0x00000001;
const VideoEncodeAV1CapabilityFlagBitsKHR VIDEO_ENCODE_AV1_CAPABILITY_GENERATE_OBU_EXTENSION_HEADER_BIT_KHR = 0x00000002;
const VideoEncodeAV1CapabilityFlagBitsKHR VIDEO_ENCODE_AV1_CAPABILITY_PRIMARY_REFERENCE_CDF_ONLY_BIT_KHR = 0x00000004;
const VideoEncodeAV1CapabilityFlagBitsKHR VIDEO_ENCODE_AV1_CAPABILITY_FRAME_SIZE_OVERRIDE_BIT_KHR = 0x00000008;
const VideoEncodeAV1CapabilityFlagBitsKHR VIDEO_ENCODE_AV1_CAPABILITY_MOTION_VECTOR_SCALING_BIT_KHR = 0x00000010;

distinct VideoEncodeAV1StdFlagBitsKHR = inline uint;
const VideoEncodeAV1StdFlagBitsKHR VIDEO_ENCODE_AV1_STD_UNIFORM_TILE_SPACING_FLAG_SET_BIT_KHR = 0x00000001;
const VideoEncodeAV1StdFlagBitsKHR VIDEO_ENCODE_AV1_STD_SKIP_MODE_PRESENT_UNSET_BIT_KHR = 0x00000002;
const VideoEncodeAV1StdFlagBitsKHR VIDEO_ENCODE_AV1_STD_PRIMARY_REF_FRAME_BIT_KHR = 0x00000004;
const VideoEncodeAV1StdFlagBitsKHR VIDEO_ENCODE_AV1_STD_DELTA_Q_BIT_KHR = 0x00000008;

distinct VideoEncodeAV1RateControlFlagBitsKHR = inline uint;
const VideoEncodeAV1RateControlFlagBitsKHR VIDEO_ENCODE_AV1_RATE_CONTROL_REGULAR_GOP_BIT_KHR = 0x00000001;
const VideoEncodeAV1RateControlFlagBitsKHR VIDEO_ENCODE_AV1_RATE_CONTROL_TEMPORAL_LAYER_PATTERN_DYADIC_BIT_KHR = 0x00000002;
const VideoEncodeAV1RateControlFlagBitsKHR VIDEO_ENCODE_AV1_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR = 0x00000004;
const VideoEncodeAV1RateControlFlagBitsKHR VIDEO_ENCODE_AV1_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR = 0x00000008;

distinct VideoEncodeAV1SuperblockSizeFlagBitsKHR = inline uint;
const VideoEncodeAV1SuperblockSizeFlagBitsKHR VIDEO_ENCODE_AV1_SUPERBLOCK_SIZE_64_BIT_KHR = 0x00000001;
const VideoEncodeAV1SuperblockSizeFlagBitsKHR VIDEO_ENCODE_AV1_SUPERBLOCK_SIZE_128_BIT_KHR = 0x00000002;

distinct VideoEncodeAV1PredictionModeKHR = inline uint;
const VideoEncodeAV1PredictionModeKHR VIDEO_ENCODE_AV1_PREDICTION_MODE_INTRA_ONLY_KHR = 0;
const VideoEncodeAV1PredictionModeKHR VIDEO_ENCODE_AV1_PREDICTION_MODE_SINGLE_REFERENCE_KHR = 1;
const VideoEncodeAV1PredictionModeKHR VIDEO_ENCODE_AV1_PREDICTION_MODE_UNIDIRECTIONAL_COMPOUND_KHR = 2;
const VideoEncodeAV1PredictionModeKHR VIDEO_ENCODE_AV1_PREDICTION_MODE_BIDIRECTIONAL_COMPOUND_KHR = 3;

distinct VideoEncodeAV1RateControlGroupKHR = inline uint;
const VideoEncodeAV1RateControlGroupKHR VIDEO_ENCODE_AV1_RATE_CONTROL_GROUP_INTRA_KHR = 0;
const VideoEncodeAV1RateControlGroupKHR VIDEO_ENCODE_AV1_RATE_CONTROL_GROUP_PREDICTIVE_KHR = 1;
const VideoEncodeAV1RateControlGroupKHR VIDEO_ENCODE_AV1_RATE_CONTROL_GROUP_BIPREDICTIVE_KHR = 2;

distinct ExportMetalObjectTypeFlagBitsEXT = inline uint;
const ExportMetalObjectTypeFlagBitsEXT EXPORT_METAL_OBJECT_TYPE_METAL_DEVICE_BIT_EXT = 0x00000001;
const ExportMetalObjectTypeFlagBitsEXT EXPORT_METAL_OBJECT_TYPE_METAL_COMMAND_QUEUE_BIT_EXT = 0x00000002;
const ExportMetalObjectTypeFlagBitsEXT EXPORT_METAL_OBJECT_TYPE_METAL_BUFFER_BIT_EXT = 0x00000004;
const ExportMetalObjectTypeFlagBitsEXT EXPORT_METAL_OBJECT_TYPE_METAL_TEXTURE_BIT_EXT = 0x00000008;
const ExportMetalObjectTypeFlagBitsEXT EXPORT_METAL_OBJECT_TYPE_METAL_IOSURFACE_BIT_EXT = 0x00000010;
const ExportMetalObjectTypeFlagBitsEXT EXPORT_METAL_OBJECT_TYPE_METAL_SHARED_EVENT_BIT_EXT = 0x00000020;

distinct ImageCompressionFlagBitsEXT = inline uint;
const ImageCompressionFlagBitsEXT IMAGE_COMPRESSION_DEFAULT_EXT = 0;
const ImageCompressionFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT = 0x00000001;
const ImageCompressionFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT = 0x00000002;
const ImageCompressionFlagBitsEXT IMAGE_COMPRESSION_DISABLED_EXT = 0x00000004;

distinct ImageCompressionFixedRateFlagBitsEXT = inline uint;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT = 0;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT = 0x00000001;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT = 0x00000002;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT = 0x00000004;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT = 0x00000008;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT = 0x00000010;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT = 0x00000020;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT = 0x00000040;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT = 0x00000080;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT = 0x00000100;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT = 0x00000200;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT = 0x00000400;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT = 0x00000800;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT = 0x00001000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT = 0x00002000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT = 0x00004000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT = 0x00008000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT = 0x00010000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT = 0x00020000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT = 0x00040000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT = 0x00080000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT = 0x00100000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT = 0x00200000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT = 0x00400000;
const ImageCompressionFixedRateFlagBitsEXT IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT = 0x00800000;

distinct PipelineRobustnessBufferBehavior = inline uint;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT = 0;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED = 1;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS = 2;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2 = 3;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT = 1;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT = 2;
const PipelineRobustnessBufferBehavior PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT = 3;

distinct PipelineRobustnessImageBehavior = inline uint;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT = 0;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED = 1;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS = 2;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2 = 3;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT = 1;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT = 2;
const PipelineRobustnessImageBehavior PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT = 3;

distinct OpticalFlowGridSizeFlagBitsNV = inline uint;
const OpticalFlowGridSizeFlagBitsNV OPTICAL_FLOW_GRID_SIZE_UNKNOWN_NV = 0;
const OpticalFlowGridSizeFlagBitsNV OPTICAL_FLOW_GRID_SIZE_1X1_BIT_NV = 0x00000001;
const OpticalFlowGridSizeFlagBitsNV OPTICAL_FLOW_GRID_SIZE_2X2_BIT_NV = 0x00000002;
const OpticalFlowGridSizeFlagBitsNV OPTICAL_FLOW_GRID_SIZE_4X4_BIT_NV = 0x00000004;
const OpticalFlowGridSizeFlagBitsNV OPTICAL_FLOW_GRID_SIZE_8X8_BIT_NV = 0x00000008;

distinct OpticalFlowUsageFlagBitsNV = inline uint;
const OpticalFlowUsageFlagBitsNV OPTICAL_FLOW_USAGE_UNKNOWN_NV = 0;
const OpticalFlowUsageFlagBitsNV OPTICAL_FLOW_USAGE_INPUT_BIT_NV = 0x00000001;
const OpticalFlowUsageFlagBitsNV OPTICAL_FLOW_USAGE_OUTPUT_BIT_NV = 0x00000002;
const OpticalFlowUsageFlagBitsNV OPTICAL_FLOW_USAGE_HINT_BIT_NV = 0x00000004;
const OpticalFlowUsageFlagBitsNV OPTICAL_FLOW_USAGE_COST_BIT_NV = 0x00000008;
const OpticalFlowUsageFlagBitsNV OPTICAL_FLOW_USAGE_GLOBAL_FLOW_BIT_NV = 0x00000010;

distinct OpticalFlowPerformanceLevelNV = inline uint;
const OpticalFlowPerformanceLevelNV OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV = 0;
const OpticalFlowPerformanceLevelNV OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV = 1;
const OpticalFlowPerformanceLevelNV OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV = 2;
const OpticalFlowPerformanceLevelNV OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV = 3;

distinct OpticalFlowSessionBindingPointNV = inline uint;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV = 0;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV = 1;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV = 2;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV = 3;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV = 4;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV = 5;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV = 6;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV = 7;
const OpticalFlowSessionBindingPointNV OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV = 8;

distinct OpticalFlowSessionCreateFlagBitsNV = inline uint;
const OpticalFlowSessionCreateFlagBitsNV OPTICAL_FLOW_SESSION_CREATE_ENABLE_HINT_BIT_NV = 0x00000001;
const OpticalFlowSessionCreateFlagBitsNV OPTICAL_FLOW_SESSION_CREATE_ENABLE_COST_BIT_NV = 0x00000002;
const OpticalFlowSessionCreateFlagBitsNV OPTICAL_FLOW_SESSION_CREATE_ENABLE_GLOBAL_FLOW_BIT_NV = 0x00000004;
const OpticalFlowSessionCreateFlagBitsNV OPTICAL_FLOW_SESSION_CREATE_ALLOW_REGIONS_BIT_NV = 0x00000008;
const OpticalFlowSessionCreateFlagBitsNV OPTICAL_FLOW_SESSION_CREATE_BOTH_DIRECTIONS_BIT_NV = 0x00000010;

distinct OpticalFlowExecuteFlagBitsNV = inline uint;
const OpticalFlowExecuteFlagBitsNV OPTICAL_FLOW_EXECUTE_DISABLE_TEMPORAL_HINTS_BIT_NV = 0x00000001;

distinct MicromapTypeEXT = inline uint;
const MicromapTypeEXT MICROMAP_TYPE_OPACITY_MICROMAP_EXT = 0;
const MicromapTypeEXT MICROMAP_TYPE_DISPLACEMENT_MICROMAP_NV = 1000397000;

distinct BuildMicromapFlagBitsEXT = inline uint;
const BuildMicromapFlagBitsEXT BUILD_MICROMAP_PREFER_FAST_TRACE_BIT_EXT = 0x00000001;
const BuildMicromapFlagBitsEXT BUILD_MICROMAP_PREFER_FAST_BUILD_BIT_EXT = 0x00000002;
const BuildMicromapFlagBitsEXT BUILD_MICROMAP_ALLOW_COMPACTION_BIT_EXT = 0x00000004;

distinct MicromapCreateFlagBitsEXT = inline uint;
const MicromapCreateFlagBitsEXT MICROMAP_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = 0x00000001;

distinct CopyMicromapModeEXT = inline uint;
const CopyMicromapModeEXT COPY_MICROMAP_MODE_CLONE_EXT = 0;
const CopyMicromapModeEXT COPY_MICROMAP_MODE_SERIALIZE_EXT = 1;
const CopyMicromapModeEXT COPY_MICROMAP_MODE_DESERIALIZE_EXT = 2;
const CopyMicromapModeEXT COPY_MICROMAP_MODE_COMPACT_EXT = 3;

distinct BuildMicromapModeEXT = inline uint;
const BuildMicromapModeEXT BUILD_MICROMAP_MODE_BUILD_EXT = 0;

distinct OpacityMicromapFormatEXT = inline uint;
const OpacityMicromapFormatEXT OPACITY_MICROMAP_FORMAT_2_STATE_EXT = 1;
const OpacityMicromapFormatEXT OPACITY_MICROMAP_FORMAT_4_STATE_EXT = 2;

distinct OpacityMicromapSpecialIndexEXT = inline int;
const OpacityMicromapSpecialIndexEXT OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT = -1;
const OpacityMicromapSpecialIndexEXT OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT = -2;
const OpacityMicromapSpecialIndexEXT OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT = -3;
const OpacityMicromapSpecialIndexEXT OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT = -4;

distinct DepthBiasRepresentationEXT = inline uint;
const DepthBiasRepresentationEXT DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORMAT_EXT = 0;
const DepthBiasRepresentationEXT DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORCE_UNORM_EXT = 1;
const DepthBiasRepresentationEXT DEPTH_BIAS_REPRESENTATION_FLOAT_EXT = 2;

distinct DeviceFaultAddressTypeEXT = inline uint;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT = 0;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT = 1;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT = 2;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT = 3;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT = 4;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT = 5;
const DeviceFaultAddressTypeEXT DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT = 6;

distinct DeviceFaultVendorBinaryHeaderVersionEXT = inline uint;
const DeviceFaultVendorBinaryHeaderVersionEXT DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT = 1;

distinct IndirectCommandsLayoutUsageFlagBitsEXT = inline uint;
const IndirectCommandsLayoutUsageFlagBitsEXT INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_EXT = 0x00000001;
const IndirectCommandsLayoutUsageFlagBitsEXT INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_EXT = 0x00000002;

distinct IndirectExecutionSetInfoTypeEXT = inline uint;
const IndirectExecutionSetInfoTypeEXT INDIRECT_EXECUTION_SET_INFO_TYPE_PIPELINES_EXT = 0;
const IndirectExecutionSetInfoTypeEXT INDIRECT_EXECUTION_SET_INFO_TYPE_SHADER_OBJECTS_EXT = 1;

distinct IndirectCommandsInputModeFlagBitsEXT = inline uint;
const IndirectCommandsInputModeFlagBitsEXT INDIRECT_COMMANDS_INPUT_MODE_VULKAN_INDEX_BUFFER_EXT = 0x00000001;
const IndirectCommandsInputModeFlagBitsEXT INDIRECT_COMMANDS_INPUT_MODE_DXGI_INDEX_BUFFER_EXT = 0x00000002;

distinct IndirectCommandsTokenTypeEXT = inline uint;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_EXECUTION_SET_EXT = 0;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_EXT = 1;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_SEQUENCE_INDEX_EXT = 2;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_EXT = 3;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_EXT = 4;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_EXT = 5;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_EXT = 6;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_COUNT_EXT = 7;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_COUNT_EXT = 8;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DISPATCH_EXT = 9;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV_EXT = 1000202002;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_COUNT_NV_EXT = 1000202003;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_EXT = 1000328000;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_COUNT_EXT = 1000328001;
const IndirectCommandsTokenTypeEXT INDIRECT_COMMANDS_TOKEN_TYPE_TRACE_RAYS2_EXT = 1000386004;

distinct DisplacementMicromapFormatNV = inline uint;
const DisplacementMicromapFormatNV DISPLACEMENT_MICROMAP_FORMAT_64_TRIANGLES_64_BYTES_NV = 1;
const DisplacementMicromapFormatNV DISPLACEMENT_MICROMAP_FORMAT_256_TRIANGLES_128_BYTES_NV = 2;
const DisplacementMicromapFormatNV DISPLACEMENT_MICROMAP_FORMAT_1024_TRIANGLES_128_BYTES_NV = 3;

distinct ShaderCreateFlagBitsEXT = inline uint;
const ShaderCreateFlagBitsEXT SHADER_CREATE_LINK_STAGE_BIT_EXT = 0x00000001;
const ShaderCreateFlagBitsEXT SHADER_CREATE_RESERVED_10_BIT_KHR = 0x00000400;
const ShaderCreateFlagBitsEXT SHADER_CREATE_RESERVED_11_BIT_KHR = 0x00000800;
const ShaderCreateFlagBitsEXT SHADER_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT = 0x00000002;
const ShaderCreateFlagBitsEXT SHADER_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT = 0x00000004;
const ShaderCreateFlagBitsEXT SHADER_CREATE_NO_TASK_SHADER_BIT_EXT = 0x00000008;
const ShaderCreateFlagBitsEXT SHADER_CREATE_DISPATCH_BASE_BIT_EXT = 0x00000010;
const ShaderCreateFlagBitsEXT SHADER_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_EXT = 0x00000020;
const ShaderCreateFlagBitsEXT SHADER_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT = 0x00000040;
const ShaderCreateFlagBitsEXT SHADER_CREATE_INDIRECT_BINDABLE_BIT_EXT = 0x00000080;
const ShaderCreateFlagBitsEXT SHADER_CREATE_RESERVED_8_BIT_EXT = 0x00000100;
const ShaderCreateFlagBitsEXT SHADER_CREATE_RESERVED_9_BIT_EXT = 0x00000200;

distinct ShaderCodeTypeEXT = inline uint;
const ShaderCodeTypeEXT SHADER_CODE_TYPE_BINARY_EXT = 0;
const ShaderCodeTypeEXT SHADER_CODE_TYPE_SPIRV_EXT = 1;

distinct ScopeKHR = inline uint;
const ScopeKHR SCOPE_DEVICE_KHR = 1;
const ScopeKHR SCOPE_WORKGROUP_KHR = 2;
const ScopeKHR SCOPE_SUBGROUP_KHR = 3;
const ScopeKHR SCOPE_QUEUE_FAMILY_KHR = 5;
const ScopeKHR SCOPE_DEVICE_NV = 1;
const ScopeKHR SCOPE_WORKGROUP_NV = 2;
const ScopeKHR SCOPE_SUBGROUP_NV = 3;
const ScopeKHR SCOPE_QUEUE_FAMILY_NV = 5;

distinct ComponentTypeKHR = inline uint;
const ComponentTypeKHR COMPONENT_TYPE_FLOAT16_KHR = 0;
const ComponentTypeKHR COMPONENT_TYPE_FLOAT32_KHR = 1;
const ComponentTypeKHR COMPONENT_TYPE_FLOAT64_KHR = 2;
const ComponentTypeKHR COMPONENT_TYPE_SINT8_KHR = 3;
const ComponentTypeKHR COMPONENT_TYPE_SINT16_KHR = 4;
const ComponentTypeKHR COMPONENT_TYPE_SINT32_KHR = 5;
const ComponentTypeKHR COMPONENT_TYPE_SINT64_KHR = 6;
const ComponentTypeKHR COMPONENT_TYPE_UINT8_KHR = 7;
const ComponentTypeKHR COMPONENT_TYPE_UINT16_KHR = 8;
const ComponentTypeKHR COMPONENT_TYPE_UINT32_KHR = 9;
const ComponentTypeKHR COMPONENT_TYPE_UINT64_KHR = 10;
const ComponentTypeKHR COMPONENT_TYPE_FLOAT16_NV = 0;
const ComponentTypeKHR COMPONENT_TYPE_FLOAT32_NV = 1;
const ComponentTypeKHR COMPONENT_TYPE_FLOAT64_NV = 2;
const ComponentTypeKHR COMPONENT_TYPE_SINT8_NV = 3;
const ComponentTypeKHR COMPONENT_TYPE_SINT16_NV = 4;
const ComponentTypeKHR COMPONENT_TYPE_SINT32_NV = 5;
const ComponentTypeKHR COMPONENT_TYPE_SINT64_NV = 6;
const ComponentTypeKHR COMPONENT_TYPE_UINT8_NV = 7;
const ComponentTypeKHR COMPONENT_TYPE_UINT16_NV = 8;
const ComponentTypeKHR COMPONENT_TYPE_UINT32_NV = 9;
const ComponentTypeKHR COMPONENT_TYPE_UINT64_NV = 10;

distinct CubicFilterWeightsQCOM = inline uint;
const CubicFilterWeightsQCOM CUBIC_FILTER_WEIGHTS_CATMULL_ROM_QCOM = 0;
const CubicFilterWeightsQCOM CUBIC_FILTER_WEIGHTS_ZERO_TANGENT_CARDINAL_QCOM = 1;
const CubicFilterWeightsQCOM CUBIC_FILTER_WEIGHTS_B_SPLINE_QCOM = 2;
const CubicFilterWeightsQCOM CUBIC_FILTER_WEIGHTS_MITCHELL_NETRAVALI_QCOM = 3;

distinct BlockMatchWindowCompareModeQCOM = inline uint;
const BlockMatchWindowCompareModeQCOM BLOCK_MATCH_WINDOW_COMPARE_MODE_MIN_QCOM = 0;
const BlockMatchWindowCompareModeQCOM BLOCK_MATCH_WINDOW_COMPARE_MODE_MAX_QCOM = 1;

distinct PhysicalDeviceLayeredApiKHR = inline uint;
const PhysicalDeviceLayeredApiKHR PHYSICAL_DEVICE_LAYERED_API_VULKAN_KHR = 0;
const PhysicalDeviceLayeredApiKHR PHYSICAL_DEVICE_LAYERED_API_D3D12_KHR = 1;
const PhysicalDeviceLayeredApiKHR PHYSICAL_DEVICE_LAYERED_API_METAL_KHR = 2;
const PhysicalDeviceLayeredApiKHR PHYSICAL_DEVICE_LAYERED_API_OPENGL_KHR = 3;
const PhysicalDeviceLayeredApiKHR PHYSICAL_DEVICE_LAYERED_API_OPENGLES_KHR = 4;

distinct LayeredDriverUnderlyingApiMSFT = inline uint;
const LayeredDriverUnderlyingApiMSFT LAYERED_DRIVER_UNDERLYING_API_NONE_MSFT = 0;
const LayeredDriverUnderlyingApiMSFT LAYERED_DRIVER_UNDERLYING_API_D3D12_MSFT = 1;

distinct LatencyMarkerNV = inline uint;
const LatencyMarkerNV LATENCY_MARKER_SIMULATION_START_NV = 0;
const LatencyMarkerNV LATENCY_MARKER_SIMULATION_END_NV = 1;
const LatencyMarkerNV LATENCY_MARKER_RENDERSUBMIT_START_NV = 2;
const LatencyMarkerNV LATENCY_MARKER_RENDERSUBMIT_END_NV = 3;
const LatencyMarkerNV LATENCY_MARKER_PRESENT_START_NV = 4;
const LatencyMarkerNV LATENCY_MARKER_PRESENT_END_NV = 5;
const LatencyMarkerNV LATENCY_MARKER_INPUT_SAMPLE_NV = 6;
const LatencyMarkerNV LATENCY_MARKER_TRIGGER_FLASH_NV = 7;
const LatencyMarkerNV LATENCY_MARKER_OUT_OF_BAND_RENDERSUBMIT_START_NV = 8;
const LatencyMarkerNV LATENCY_MARKER_OUT_OF_BAND_RENDERSUBMIT_END_NV = 9;
const LatencyMarkerNV LATENCY_MARKER_OUT_OF_BAND_PRESENT_START_NV = 10;
const LatencyMarkerNV LATENCY_MARKER_OUT_OF_BAND_PRESENT_END_NV = 11;

distinct OutOfBandQueueTypeNV = inline uint;
const OutOfBandQueueTypeNV OUT_OF_BAND_QUEUE_TYPE_RENDER_NV = 0;
const OutOfBandQueueTypeNV OUT_OF_BAND_QUEUE_TYPE_PRESENT_NV = 1;

distinct DepthClampModeEXT = inline uint;
const DepthClampModeEXT DEPTH_CLAMP_MODE_VIEWPORT_RANGE_EXT = 0;
const DepthClampModeEXT DEPTH_CLAMP_MODE_USER_DEFINED_RANGE_EXT = 1;

distinct DeviceQueueCreateFlagBits = inline uint;
const DeviceQueueCreateFlagBits DEVICE_QUEUE_CREATE_PROTECTED_BIT = 0x00000001;
const DeviceQueueCreateFlagBits DEVICE_QUEUE_CREATE_RESERVED_1_BIT_QCOM = 0x00000002;

distinct DescriptorSetLayoutCreateFlagBits = inline uint;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT = 0x00000002;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT = 0x00000001;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR = 0x00000001;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT = 0x00000002;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_DESCRIPTOR_BUFFER_BIT_EXT = 0x00000010;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_EMBEDDED_IMMUTABLE_SAMPLERS_BIT_EXT = 0x00000020;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_RESERVED_3_BIT_AMD = 0x00000008;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_INDIRECT_BINDABLE_BIT_NV = 0x00000080;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_EXT = 0x00000004;
const DescriptorSetLayoutCreateFlagBits DESCRIPTOR_SET_LAYOUT_CREATE_PER_STAGE_BIT_NV = 0x00000040;

distinct FramebufferCreateFlagBits = inline uint;
const FramebufferCreateFlagBits FRAMEBUFFER_CREATE_IMAGELESS_BIT = 0x00000001;
const FramebufferCreateFlagBits FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR = 0x00000001;

distinct PipelineCacheCreateFlagBits = inline uint;
const PipelineCacheCreateFlagBits PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT = 0x00000001;
const PipelineCacheCreateFlagBits PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT = 0x00000001;

distinct EventCreateFlagBits = inline uint;
const EventCreateFlagBits EVENT_CREATE_DEVICE_ONLY_BIT = 0x00000001;
const EventCreateFlagBits EVENT_CREATE_DEVICE_ONLY_BIT_KHR = 0x00000001;

distinct PipelineShaderStageCreateFlagBits = inline uint;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT = 0x00000001;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT = 0x00000002;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT = 0x00000001;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT = 0x00000002;
const PipelineShaderStageCreateFlagBits PIPELINE_SHADER_STAGE_CREATE_RESERVED_3_BIT_KHR = 0x00000008;

distinct SwapchainCreateFlagBitsKHR = inline uint;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 0x00000001;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_PROTECTED_BIT_KHR = 0x00000002;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR = 0x00000004;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_DEFERRED_MEMORY_ALLOCATION_BIT_EXT = 0x00000008;
const SwapchainCreateFlagBitsKHR SWAPCHAIN_CREATE_RESERVED_4_BIT_EXT = 0x00000010;

distinct SubpassDescriptionFlagBits = inline uint;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX = 0x00000001;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX = 0x00000002;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM = 0x00000004;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM = 0x00000008;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_BIT_EXT = 0x00000010;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_EXT = 0x00000020;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_EXT = 0x00000040;
const SubpassDescriptionFlagBits SUBPASS_DESCRIPTION_ENABLE_LEGACY_DITHERING_BIT_EXT = 0x00000080;

distinct PrivateDataSlotCreateFlagBits = inline uint;
const PrivateDataSlotCreateFlagBits PRIVATE_DATA_SLOT_CREATE_RESERVED_0_BIT_NV = 0x00000001;

distinct ImageViewCreateFlagBits = inline uint;
const ImageViewCreateFlagBits IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT = 0x00000001;
const ImageViewCreateFlagBits IMAGE_VIEW_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 0x00000004;
const ImageViewCreateFlagBits IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT = 0x00000002;

distinct SamplerCreateFlagBits = inline uint;
const SamplerCreateFlagBits SAMPLER_CREATE_SUBSAMPLED_BIT_EXT = 0x00000001;
const SamplerCreateFlagBits SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT = 0x00000002;
const SamplerCreateFlagBits SAMPLER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 0x00000008;
const SamplerCreateFlagBits SAMPLER_CREATE_NON_SEAMLESS_CUBE_MAP_BIT_EXT = 0x00000004;
const SamplerCreateFlagBits SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM = 0x00000010;

distinct RenderPassCreateFlagBits = inline uint;
const RenderPassCreateFlagBits RENDER_PASS_CREATE_RESERVED_0_BIT_KHR = 0x00000001;
const RenderPassCreateFlagBits RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM = 0x00000002;

distinct MemoryMapFlagBits = inline uint;
const MemoryMapFlagBits MEMORY_MAP_PLACED_BIT_EXT = 0x00000001;

distinct MemoryUnmapFlagBits = inline uint;
const MemoryUnmapFlagBits MEMORY_UNMAP_RESERVE_BIT_EXT = 0x00000001;

distinct PipelineLayoutCreateFlagBits = inline uint;
const PipelineLayoutCreateFlagBits PIPELINE_LAYOUT_CREATE_RESERVED_0_BIT_AMD = 0x00000001;
const PipelineLayoutCreateFlagBits PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT = 0x00000002;

distinct PipelineColorBlendStateCreateFlagBits = inline uint;
const PipelineColorBlendStateCreateFlagBits PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_EXT = 0x00000001;

distinct PipelineDepthStencilStateCreateFlagBits = inline uint;
const PipelineDepthStencilStateCreateFlagBits PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_EXT = 0x00000001;
const PipelineDepthStencilStateCreateFlagBits PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_EXT = 0x00000002;

distinct InstanceCreateFlagBits = inline uint;
const InstanceCreateFlagBits INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR = 0x00000001;

distinct VideoSessionParametersCreateFlagBitsKHR = inline uint;
const VideoSessionParametersCreateFlagBitsKHR VIDEO_SESSION_PARAMETERS_CREATE_QUANTIZATION_MAP_COMPATIBLE_BIT_KHR = 0x00000001;

distinct VideoEncodeFlagBitsKHR = inline uint;
const VideoEncodeFlagBitsKHR VIDEO_ENCODE_WITH_QUANTIZATION_DELTA_MAP_BIT_KHR = 0x00000001;
const VideoEncodeFlagBitsKHR VIDEO_ENCODE_WITH_EMPHASIS_MAP_BIT_KHR = 0x00000002;

distinct WaylandSurfaceCreateFlagBitsKHR = inline uint;
const WaylandSurfaceCreateFlagBitsKHR WAYLAND_SURFACE_CREATE_DISABLE_COLOR_MANAGEMENT = 0x00000001;

fault VkErrors {
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
 ERROR_NOT_PERMITTED,
 ERROR_SURFACE_LOST_KHR,
 ERROR_NATIVE_WINDOW_IN_USE_KHR,
 ERROR_OUT_OF_DATE_KHR,
 ERROR_INCOMPATIBLE_DISPLAY_KHR,
 ERROR_VALIDATION_FAILED_EXT,
 ERROR_INVALID_SHADER_NV,
 ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR,
 ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR,
 ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR,
 ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR,
 ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR,
 ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR,
 ERROR_OUT_OF_POOL_MEMORY_KHR,
 ERROR_INVALID_EXTERNAL_HANDLE_KHR,
 ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT,
 ERROR_FRAGMENTATION_EXT,
 ERROR_NOT_PERMITTED_EXT,
 ERROR_NOT_PERMITTED_KHR,
 ERROR_INVALID_DEVICE_ADDRESS_EXT,
 ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT,
 ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR,
 ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR,
 ERROR_COMPRESSION_EXHAUSTED_EXT,
 ERROR_NOT_ENOUGH_SPACE_KHR,
}

struct BaseOutStructure {
   StructureType sType;
   BaseOutStructure* pNext;
}
struct BaseInStructure {
   StructureType sType;
   BaseInStructure* pNext;
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
struct Extent2D {
   uint width;
   uint height;
}
struct Extent3D {
   uint width;
   uint height;
   uint depth;
}
struct Viewport {
   float x;
   float y;
   float width;
   float height;
   float minDepth;
   float maxDepth;
}
struct Rect2D {
   Offset2D offset;
   Extent2D extent;
}
struct ClearRect {
   Rect2D rect;
   uint baseArrayLayer;
   uint layerCount;
}
struct ComponentMapping {
   ComponentSwizzle r;
   ComponentSwizzle g;
   ComponentSwizzle b;
   ComponentSwizzle a;
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
struct ApplicationInfo {
   StructureType sType;
   void* pNext;
   char* pApplicationName;
   uint applicationVersion;
   char* pEngineName;
   uint engineVersion;
   uint apiVersion;
}
struct AllocationCallbacks {
   void* pUserData;
   PFN_vkAllocationFunction pfnAllocation;
   PFN_vkReallocationFunction pfnReallocation;
   PFN_vkFreeFunction pfnFree;
   PFN_vkInternalAllocationNotification pfnInternalAllocation;
   PFN_vkInternalFreeNotification pfnInternalFree;
}
struct DeviceQueueCreateInfo {
   StructureType sType;
   void* pNext;
   DeviceQueueCreateFlags flags;
   uint queueFamilyIndex;
   uint queueCount;
   float* pQueuePriorities;
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
struct QueueFamilyProperties {
   QueueFlags queueFlags;
   uint queueCount;
   uint timestampValidBits;
   Extent3D minImageTransferGranularity;
}
struct PhysicalDeviceMemoryProperties {
   uint memoryTypeCount;
   MemoryType[MAX_MEMORY_TYPES] memoryTypes;
   uint memoryHeapCount;
   MemoryHeap[MAX_MEMORY_HEAPS] memoryHeaps;
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
struct SparseImageFormatProperties {
   ImageAspectFlags aspectMask;
   Extent3D imageGranularity;
   SparseImageFormatFlags flags;
}
struct SparseImageMemoryRequirements {
   SparseImageFormatProperties formatProperties;
   uint imageMipTailFirstLod;
   DeviceSize imageMipTailSize;
   DeviceSize imageMipTailOffset;
   DeviceSize imageMipTailStride;
}
struct MemoryType {
   MemoryPropertyFlags propertyFlags;
   uint heapIndex;
}
struct MemoryHeap {
   DeviceSize size;
   MemoryHeapFlags flags;
}
struct MappedMemoryRange {
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   DeviceSize offset;
   DeviceSize size;
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
struct BufferUsageFlags2CreateInfo {
   StructureType sType;
   void* pNext;
   BufferUsageFlags2 usage;
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
struct ImageSubresource {
   ImageAspectFlags aspectMask;
   uint mipLevel;
   uint arrayLayer;
}
struct ImageSubresourceLayers {
   ImageAspectFlags aspectMask;
   uint mipLevel;
   uint baseArrayLayer;
   uint layerCount;
}
struct ImageSubresourceRange {
   ImageAspectFlags aspectMask;
   uint baseMipLevel;
   uint levelCount;
   uint baseArrayLayer;
   uint layerCount;
}
struct MemoryBarrier {
   StructureType sType;
   void* pNext;
   AccessFlags srcAccessMask;
   AccessFlags dstAccessMask;
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
struct BufferCopy {
   DeviceSize srcOffset;
   DeviceSize dstOffset;
   DeviceSize size;
}
struct SparseMemoryBind {
   DeviceSize resourceOffset;
   DeviceSize size;
   DeviceMemory memory;
   DeviceSize memoryOffset;
   SparseMemoryBindFlags flags;
}
struct SparseImageMemoryBind {
   ImageSubresource subresource;
   Offset3D offset;
   Extent3D extent;
   DeviceMemory memory;
   DeviceSize memoryOffset;
   SparseMemoryBindFlags flags;
}
struct SparseBufferMemoryBindInfo {
   Buffer buffer;
   uint bindCount;
   SparseMemoryBind* pBinds;
}
struct SparseImageOpaqueMemoryBindInfo {
   Image image;
   uint bindCount;
   SparseMemoryBind* pBinds;
}
struct SparseImageMemoryBindInfo {
   Image image;
   uint bindCount;
   SparseImageMemoryBind* pBinds;
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
struct ImageCopy {
   ImageSubresourceLayers srcSubresource;
   Offset3D srcOffset;
   ImageSubresourceLayers dstSubresource;
   Offset3D dstOffset;
   Extent3D extent;
}
struct ImageBlit {
   ImageSubresourceLayers srcSubresource;
   Offset3D[2] srcOffsets;
   ImageSubresourceLayers dstSubresource;
   Offset3D[2] dstOffsets;
}
struct BufferImageCopy {
   DeviceSize bufferOffset;
   uint bufferRowLength;
   uint bufferImageHeight;
   ImageSubresourceLayers imageSubresource;
   Offset3D imageOffset;
   Extent3D imageExtent;
}
struct ImageResolve {
   ImageSubresourceLayers srcSubresource;
   Offset3D srcOffset;
   ImageSubresourceLayers dstSubresource;
   Offset3D dstOffset;
   Extent3D extent;
}
struct ShaderModuleCreateInfo {
   StructureType sType;
   void* pNext;
   ShaderModuleCreateFlags flags;
   usz codeSize;
   uint* pCode;
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
struct DescriptorPoolSize {
   DescriptorType type;
   uint descriptorCount;
}
struct DescriptorPoolCreateInfo {
   StructureType sType;
   void* pNext;
   DescriptorPoolCreateFlags flags;
   uint maxSets;
   uint poolSizeCount;
   DescriptorPoolSize* pPoolSizes;
}
struct DescriptorSetAllocateInfo {
   StructureType sType;
   void* pNext;
   DescriptorPool descriptorPool;
   uint descriptorSetCount;
   DescriptorSetLayout* pSetLayouts;
}
struct SpecializationMapEntry {
   uint constantID;
   uint offset;
   usz size;
}
struct SpecializationInfo {
   uint mapEntryCount;
   SpecializationMapEntry* pMapEntries;
   usz dataSize;
   void* pData;
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
struct ComputePipelineCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineCreateFlags flags;
   PipelineShaderStageCreateInfo stage;
   PipelineLayout layout;
   Pipeline basePipelineHandle;
   int basePipelineIndex;
}
struct PipelineCreateFlags2CreateInfo {
   StructureType sType;
   void* pNext;
   PipelineCreateFlags2 flags;
}
struct VertexInputBindingDescription {
   uint binding;
   uint stride;
   VertexInputRate inputRate;
}
struct VertexInputAttributeDescription {
   uint location;
   uint binding;
   Format format;
   uint offset;
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
struct PipelineInputAssemblyStateCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineInputAssemblyStateCreateFlags flags;
   PrimitiveTopology topology;
   uint primitiveRestartEnable;
}
struct PipelineTessellationStateCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineTessellationStateCreateFlags flags;
   uint patchControlPoints;
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
struct PipelineRasterizationStateCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineRasterizationStateCreateFlags flags;
   uint depthClampEnable;
   uint rasterizerDiscardEnable;
   PolygonMode polygonMode;
   CullModeFlags cullMode;
   FrontFace frontFace;
   uint depthBiasEnable;
   float depthBiasConstantFactor;
   float depthBiasClamp;
   float depthBiasSlopeFactor;
   float lineWidth;
}
struct PipelineMultisampleStateCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineMultisampleStateCreateFlags flags;
   SampleCountFlagBits rasterizationSamples;
   uint sampleShadingEnable;
   float minSampleShading;
   SampleMask* pSampleMask;
   uint alphaToCoverageEnable;
   uint alphaToOneEnable;
}
struct PipelineColorBlendAttachmentState {
   uint blendEnable;
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
   uint logicOpEnable;
   LogicOp logicOp;
   uint attachmentCount;
   PipelineColorBlendAttachmentState* pAttachments;
   float[4] blendConstants;
}
struct PipelineDynamicStateCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineDynamicStateCreateFlags flags;
   uint dynamicStateCount;
   DynamicState* pDynamicStates;
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
struct PipelineDepthStencilStateCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineDepthStencilStateCreateFlags flags;
   uint depthTestEnable;
   uint depthWriteEnable;
   CompareOp depthCompareOp;
   uint depthBoundsTestEnable;
   uint stencilTestEnable;
   StencilOpState front;
   StencilOpState back;
   float minDepthBounds;
   float maxDepthBounds;
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
struct PipelineCacheCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineCacheCreateFlags flags;
   usz initialDataSize;
   void* pInitialData;
}
struct PipelineCacheHeaderVersionOne {
   uint headerSize;
   PipelineCacheHeaderVersion headerVersion;
   uint vendorID;
   uint deviceID;
   uint[UUID_SIZE] pipelineCacheUUID;
}
struct PushConstantRange {
   ShaderStageFlags stageFlags;
   uint offset;
   uint size;
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
   uint anisotropyEnable;
   float maxAnisotropy;
   uint compareEnable;
   CompareOp compareOp;
   float minLod;
   float maxLod;
   BorderColor borderColor;
   uint unnormalizedCoordinates;
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
struct CommandBufferInheritanceInfo {
   StructureType sType;
   void* pNext;
   RenderPass renderPass;
   uint subpass;
   Framebuffer framebuffer;
   uint occlusionQueryEnable;
   QueryControlFlags queryFlags;
   QueryPipelineStatisticFlags pipelineStatistics;
}
struct CommandBufferBeginInfo {
   StructureType sType;
   void* pNext;
   CommandBufferUsageFlags flags;
   CommandBufferInheritanceInfo* pInheritanceInfo;
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
struct ClearDepthStencilValue {
   float depth;
   uint stencil;
}
struct ClearAttachment {
   ImageAspectFlags aspectMask;
   uint colorAttachment;
   ClearValue clearValue;
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
struct SubpassDependency {
   uint srcSubpass;
   uint dstSubpass;
   PipelineStageFlags srcStageMask;
   PipelineStageFlags dstStageMask;
   AccessFlags srcAccessMask;
   AccessFlags dstAccessMask;
   DependencyFlags dependencyFlags;
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
struct EventCreateInfo {
   StructureType sType;
   void* pNext;
   EventCreateFlags flags;
}
struct FenceCreateInfo {
   StructureType sType;
   void* pNext;
   FenceCreateFlags flags;
}
struct PhysicalDeviceFeatures {
   uint robustBufferAccess;
   uint fullDrawIndexUint32;
   uint imageCubeArray;
   uint independentBlend;
   uint geometryShader;
   uint tessellationShader;
   uint sampleRateShading;
   uint dualSrcBlend;
   uint logicOp;
   uint multiDrawIndirect;
   uint drawIndirectFirstInstance;
   uint depthClamp;
   uint depthBiasClamp;
   uint fillModeNonSolid;
   uint depthBounds;
   uint wideLines;
   uint largePoints;
   uint alphaToOne;
   uint multiViewport;
   uint samplerAnisotropy;
   uint textureCompressionETC2;
   uint textureCompressionASTC_LDR;
   uint textureCompressionBC;
   uint occlusionQueryPrecise;
   uint pipelineStatisticsQuery;
   uint vertexPipelineStoresAndAtomics;
   uint fragmentStoresAndAtomics;
   uint shaderTessellationAndGeometryPointSize;
   uint shaderImageGatherExtended;
   uint shaderStorageImageExtendedFormats;
   uint shaderStorageImageMultisample;
   uint shaderStorageImageReadWithoutFormat;
   uint shaderStorageImageWriteWithoutFormat;
   uint shaderUniformBufferArrayDynamicIndexing;
   uint shaderSampledImageArrayDynamicIndexing;
   uint shaderStorageBufferArrayDynamicIndexing;
   uint shaderStorageImageArrayDynamicIndexing;
   uint shaderClipDistance;
   uint shaderCullDistance;
   uint shaderFloat64;
   uint shaderInt64;
   uint shaderInt16;
   uint shaderResourceResidency;
   uint shaderResourceMinLod;
   uint sparseBinding;
   uint sparseResidencyBuffer;
   uint sparseResidencyImage2D;
   uint sparseResidencyImage3D;
   uint sparseResidency2Samples;
   uint sparseResidency4Samples;
   uint sparseResidency8Samples;
   uint sparseResidency16Samples;
   uint sparseResidencyAliased;
   uint variableMultisampleRate;
   uint inheritedQueries;
}
struct PhysicalDeviceSparseProperties {
   uint residencyStandard2DBlockShape;
   uint residencyStandard2DMultisampleBlockShape;
   uint residencyStandard3DBlockShape;
   uint residencyAlignedMipSize;
   uint residencyNonResidentStrict;
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
   uint timestampComputeAndGraphics;
   float timestampPeriod;
   uint maxClipDistances;
   uint maxCullDistances;
   uint maxCombinedClipAndCullDistances;
   uint discreteQueuePriorities;
   float[2] pointSizeRange;
   float[2] lineWidthRange;
   float pointSizeGranularity;
   float lineWidthGranularity;
   uint strictLines;
   uint standardSampleLocations;
   DeviceSize optimalBufferCopyOffsetAlignment;
   DeviceSize optimalBufferCopyRowPitchAlignment;
   DeviceSize nonCoherentAtomSize;
}
struct SemaphoreCreateInfo {
   StructureType sType;
   void* pNext;
   SemaphoreCreateFlags flags;
}
struct QueryPoolCreateInfo {
   StructureType sType;
   void* pNext;
   QueryPoolCreateFlags flags;
   QueryType queryType;
   uint queryCount;
   QueryPipelineStatisticFlags pipelineStatistics;
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
struct DrawIndirectCommand {
   uint vertexCount;
   uint instanceCount;
   uint firstVertex;
   uint firstInstance;
}
struct DrawIndexedIndirectCommand {
   uint indexCount;
   uint instanceCount;
   uint firstIndex;
   int vertexOffset;
   uint firstInstance;
}
struct DispatchIndirectCommand {
   uint x;
   uint y;
   uint z;
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
struct DisplayPropertiesKHR {
   DisplayKHR display;
   char* displayName;
   Extent2D physicalDimensions;
   Extent2D physicalResolution;
   SurfaceTransformFlagsKHR supportedTransforms;
   uint planeReorderPossible;
   uint persistentContent;
}
struct DisplayPlanePropertiesKHR {
   DisplayKHR currentDisplay;
   uint currentStackIndex;
}
struct DisplayModeParametersKHR {
   Extent2D visibleRegion;
   uint refreshRate;
}
struct DisplayModePropertiesKHR {
   DisplayModeKHR displayMode;
   DisplayModeParametersKHR parameters;
}
struct DisplayModeCreateInfoKHR {
   StructureType sType;
   void* pNext;
   DisplayModeCreateFlagsKHR flags;
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
struct Win32SurfaceCreateInfoKHR {
   StructureType sType;
   void* pNext;
   Win32SurfaceCreateFlagsKHR flags;
   Hinstance hinstance;
   Hwnd hwnd;
}
struct XlibSurfaceCreateInfoKHR {
   StructureType sType;
   void* pNext;
   XlibSurfaceCreateFlagsKHR flags;
   Display* dpy;
   Window window;
}
struct XcbSurfaceCreateInfoKHR {
   StructureType sType;
   void* pNext;
   XcbSurfaceCreateFlagsKHR flags;
   Connection* connection;
   Window window;
}
struct SurfaceFormatKHR {
   Format format;
   ColorSpaceKHR colorSpace;
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
   uint clipped;
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
struct DebugReportCallbackCreateInfoEXT {
   StructureType sType;
   void* pNext;
   DebugReportFlagsEXT flags;
   PFN_vkDebugReportCallbackEXT pfnCallback;
   void* pUserData;
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
struct PhysicalDevicePrivateDataFeatures {
   StructureType sType;
   void* pNext;
   uint privateData;
}
struct PhysicalDeviceFeatures2 {
   StructureType sType;
   void* pNext;
   PhysicalDeviceFeatures features;
}
struct PhysicalDeviceFeatures2KHR {
   StructureType sType;
   void* pNext;
   PhysicalDeviceFeatures features;
}
struct PhysicalDeviceProperties2 {
   StructureType sType;
   void* pNext;
   PhysicalDeviceProperties properties;
}
struct PhysicalDeviceProperties2KHR {
   StructureType sType;
   void* pNext;
   PhysicalDeviceProperties properties;
}
struct FormatProperties2 {
   StructureType sType;
   void* pNext;
   FormatProperties formatProperties;
}
struct FormatProperties2KHR {
   StructureType sType;
   void* pNext;
   FormatProperties formatProperties;
}
struct ImageFormatProperties2 {
   StructureType sType;
   void* pNext;
   ImageFormatProperties imageFormatProperties;
}
struct ImageFormatProperties2KHR {
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
struct PhysicalDeviceImageFormatInfo2KHR {
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
struct QueueFamilyProperties2KHR {
   StructureType sType;
   void* pNext;
   QueueFamilyProperties queueFamilyProperties;
}
struct PhysicalDeviceMemoryProperties2 {
   StructureType sType;
   void* pNext;
   PhysicalDeviceMemoryProperties memoryProperties;
}
struct PhysicalDeviceMemoryProperties2KHR {
   StructureType sType;
   void* pNext;
   PhysicalDeviceMemoryProperties memoryProperties;
}
struct SparseImageFormatProperties2 {
   StructureType sType;
   void* pNext;
   SparseImageFormatProperties properties;
}
struct SparseImageFormatProperties2KHR {
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
struct PhysicalDeviceSparseImageFormatInfo2KHR {
   StructureType sType;
   void* pNext;
   Format format;
   ImageType type;
   SampleCountFlagBits samples;
   ImageUsageFlags usage;
   ImageTiling tiling;
}
struct PhysicalDevicePushDescriptorProperties {
   StructureType sType;
   void* pNext;
   uint maxPushDescriptors;
}
struct PhysicalDevicePushDescriptorPropertiesKHR {
   StructureType sType;
   void* pNext;
   uint maxPushDescriptors;
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
struct PhysicalDeviceVariablePointersFeatures {
   StructureType sType;
   void* pNext;
   uint variablePointersStorageBuffer;
   uint variablePointers;
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
   uint deviceLUIDValid;
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
struct ExportSemaphoreCreateInfo {
   StructureType sType;
   void* pNext;
   ExternalSemaphoreHandleTypeFlags handleTypes;
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
struct PhysicalDeviceMultiviewFeatures {
   StructureType sType;
   void* pNext;
   uint multiview;
   uint multiviewGeometryShader;
   uint multiviewTessellationShader;
}
struct PhysicalDeviceMultiviewFeaturesKHR {
   StructureType sType;
   void* pNext;
   uint multiview;
   uint multiviewGeometryShader;
   uint multiviewTessellationShader;
}
struct PhysicalDeviceMultiviewProperties {
   StructureType sType;
   void* pNext;
   uint maxMultiviewViewCount;
   uint maxMultiviewInstanceIndex;
}
struct PhysicalDeviceMultiviewPropertiesKHR {
   StructureType sType;
   void* pNext;
   uint maxMultiviewViewCount;
   uint maxMultiviewInstanceIndex;
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
struct RenderPassMultiviewCreateInfoKHR {
   StructureType sType;
   void* pNext;
   uint subpassCount;
   uint* pViewMasks;
   uint dependencyCount;
   int* pViewOffsets;
   uint correlationMaskCount;
   uint* pCorrelationMasks;
}
struct PhysicalDeviceGroupProperties {
   StructureType sType;
   void* pNext;
   uint physicalDeviceCount;
   PhysicalDevice[MAX_DEVICE_GROUP_SIZE] physicalDevices;
   uint subsetAllocation;
}
struct MemoryAllocateFlagsInfo {
   StructureType sType;
   void* pNext;
   MemoryAllocateFlags flags;
   uint deviceMask;
}
struct BindBufferMemoryInfo {
   StructureType sType;
   void* pNext;
   Buffer buffer;
   DeviceMemory memory;
   DeviceSize memoryOffset;
}
struct BindBufferMemoryDeviceGroupInfo {
   StructureType sType;
   void* pNext;
   uint deviceIndexCount;
   uint* pDeviceIndices;
}
struct BindImageMemoryInfo {
   StructureType sType;
   void* pNext;
   Image image;
   DeviceMemory memory;
   DeviceSize memoryOffset;
}
struct BindImageMemoryDeviceGroupInfo {
   StructureType sType;
   void* pNext;
   uint deviceIndexCount;
   uint* pDeviceIndices;
   uint splitInstanceBindRegionCount;
   Rect2D* pSplitInstanceBindRegions;
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
struct DeviceGroupDeviceCreateInfo {
   StructureType sType;
   void* pNext;
   uint physicalDeviceCount;
   PhysicalDevice* pPhysicalDevices;
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
struct MacOSSurfaceCreateInfoMVK {
   StructureType sType;
   void* pNext;
   MacOSSurfaceCreateFlagsMVK flags;
   void* pView;
}
struct InputAttachmentAspectReference {
   uint subpass;
   uint inputAttachmentIndex;
   ImageAspectFlags aspectMask;
}
struct InputAttachmentAspectReferenceKHR {
   uint subpass;
   uint inputAttachmentIndex;
   ImageAspectFlags aspectMask;
}
struct RenderPassInputAttachmentAspectCreateInfo {
   StructureType sType;
   void* pNext;
   uint aspectReferenceCount;
   InputAttachmentAspectReference* pAspectReferences;
}
struct RenderPassInputAttachmentAspectCreateInfoKHR {
   StructureType sType;
   void* pNext;
   uint aspectReferenceCount;
   InputAttachmentAspectReference* pAspectReferences;
}
struct PhysicalDevice16BitStorageFeatures {
   StructureType sType;
   void* pNext;
   uint storageBuffer16BitAccess;
   uint uniformAndStorageBuffer16BitAccess;
   uint storagePushConstant16;
   uint storageInputOutput16;
}
struct PhysicalDeviceSubgroupProperties {
   StructureType sType;
   void* pNext;
   uint subgroupSize;
   ShaderStageFlags supportedStages;
   SubgroupFeatureFlags supportedOperations;
   uint quadOperationsInAllStages;
}
struct PhysicalDeviceShaderSubgroupExtendedTypesFeatures {
   StructureType sType;
   void* pNext;
   uint shaderSubgroupExtendedTypes;
}
struct BufferMemoryRequirementsInfo2 {
   StructureType sType;
   void* pNext;
   Buffer buffer;
}
struct DeviceBufferMemoryRequirements {
   StructureType sType;
   void* pNext;
   BufferCreateInfo* pCreateInfo;
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
struct DeviceImageMemoryRequirements {
   StructureType sType;
   void* pNext;
   ImageCreateInfo* pCreateInfo;
   ImageAspectFlagBits planeAspect;
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
struct PhysicalDevicePointClippingProperties {
   StructureType sType;
   void* pNext;
   PointClippingBehavior pointClippingBehavior;
}
struct PhysicalDevicePointClippingPropertiesKHR {
   StructureType sType;
   void* pNext;
   PointClippingBehavior pointClippingBehavior;
}
struct MemoryDedicatedRequirements {
   StructureType sType;
   void* pNext;
   uint prefersDedicatedAllocation;
   uint requiresDedicatedAllocation;
}
struct MemoryDedicatedAllocateInfo {
   StructureType sType;
   void* pNext;
   Image image;
   Buffer buffer;
}
struct ImageViewUsageCreateInfo {
   StructureType sType;
   void* pNext;
   ImageUsageFlags usage;
}
struct ImageViewUsageCreateInfoKHR {
   StructureType sType;
   void* pNext;
   uint sliceOffset;
   uint sliceCount;
}
struct PipelineTessellationDomainOriginStateCreateInfo {
   StructureType sType;
   void* pNext;
   TessellationDomainOrigin domainOrigin;
}
struct PipelineTessellationDomainOriginStateCreateInfoKHR {
   StructureType sType;
   void* pNext;
   TessellationDomainOrigin domainOrigin;
}
struct SamplerYcbcrConversionInfo {
   StructureType sType;
   void* pNext;
   SamplerYcbcrConversion conversion;
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
   uint forceExplicitReconstruction;
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
   uint samplerYcbcrConversion;
}
struct SamplerYcbcrConversionImageFormatProperties {
   StructureType sType;
   void* pNext;
   uint combinedImageSamplerDescriptorCount;
}
struct ProtectedSubmitInfo {
   StructureType sType;
   void* pNext;
   uint protectedSubmit;
}
struct PhysicalDeviceProtectedMemoryFeatures {
   StructureType sType;
   void* pNext;
   uint protectedMemory;
}
struct PhysicalDeviceProtectedMemoryProperties {
   StructureType sType;
   void* pNext;
   uint protectedNoFault;
}
struct DeviceQueueInfo2 {
   StructureType sType;
   void* pNext;
   DeviceQueueCreateFlags flags;
   uint queueFamilyIndex;
   uint queueIndex;
}
struct PhysicalDeviceSamplerFilterMinmaxProperties {
   StructureType sType;
   void* pNext;
   uint filterMinmaxSingleComponentFormats;
   uint filterMinmaxImageComponentMapping;
}
struct SamplerReductionModeCreateInfo {
   StructureType sType;
   void* pNext;
   SamplerReductionMode reductionMode;
}
struct PhysicalDeviceInlineUniformBlockFeatures {
   StructureType sType;
   void* pNext;
   uint inlineUniformBlock;
   uint descriptorBindingInlineUniformBlockUpdateAfterBind;
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
struct ImageFormatListCreateInfo {
   StructureType sType;
   void* pNext;
   uint viewFormatCount;
   Format* pViewFormats;
}
struct PhysicalDeviceMaintenance3Properties {
   StructureType sType;
   void* pNext;
   uint maxPerSetDescriptors;
   DeviceSize maxMemoryAllocationSize;
}
struct PhysicalDeviceMaintenance4Features {
   StructureType sType;
   void* pNext;
   uint maintenance4;
}
struct PhysicalDeviceMaintenance4Properties {
   StructureType sType;
   void* pNext;
   DeviceSize maxBufferSize;
}
struct PhysicalDeviceMaintenance5Features {
   StructureType sType;
   void* pNext;
   uint maintenance5;
}
struct PhysicalDeviceMaintenance5Properties {
   StructureType sType;
   void* pNext;
   uint earlyFragmentMultisampleCoverageAfterSampleCounting;
   uint earlyFragmentSampleMaskTestBeforeSampleCounting;
   uint depthStencilSwizzleOneSupport;
   uint polygonModePointSize;
   uint nonStrictSinglePixelWideLinesUseParallelogram;
   uint nonStrictWideLinesUseParallelogram;
}
struct PhysicalDeviceMaintenance6Features {
   StructureType sType;
   void* pNext;
   uint maintenance6;
}
struct PhysicalDeviceMaintenance6Properties {
   StructureType sType;
   void* pNext;
   uint blockTexelViewCompatibleMultipleLayers;
   uint maxCombinedImageSamplerDescriptorCount;
   uint fragmentShadingRateClampCombinerInputs;
}
struct RenderingAreaInfo {
   StructureType sType;
   void* pNext;
   uint viewMask;
   uint colorAttachmentCount;
   Format* pColorAttachmentFormats;
   Format depthAttachmentFormat;
   Format stencilAttachmentFormat;
}
struct DescriptorSetLayoutSupport {
   StructureType sType;
   void* pNext;
   uint supported;
}
struct PhysicalDeviceShaderDrawParametersFeatures {
   StructureType sType;
   void* pNext;
   uint shaderDrawParameters;
}
struct PhysicalDeviceShaderDrawParameterFeatures {
   StructureType sType;
   void* pNext;
   uint shaderDrawParameters;
}
struct PhysicalDeviceShaderFloat16Int8Features {
   StructureType sType;
   void* pNext;
   uint shaderFloat16;
   uint shaderInt8;
}
struct PhysicalDeviceFloatControlsProperties {
   StructureType sType;
   void* pNext;
   ShaderFloatControlsIndependence denormBehaviorIndependence;
   ShaderFloatControlsIndependence roundingModeIndependence;
   uint shaderSignedZeroInfNanPreserveFloat16;
   uint shaderSignedZeroInfNanPreserveFloat32;
   uint shaderSignedZeroInfNanPreserveFloat64;
   uint shaderDenormPreserveFloat16;
   uint shaderDenormPreserveFloat32;
   uint shaderDenormPreserveFloat64;
   uint shaderDenormFlushToZeroFloat16;
   uint shaderDenormFlushToZeroFloat32;
   uint shaderDenormFlushToZeroFloat64;
   uint shaderRoundingModeRTEFloat16;
   uint shaderRoundingModeRTEFloat32;
   uint shaderRoundingModeRTEFloat64;
   uint shaderRoundingModeRTZFloat16;
   uint shaderRoundingModeRTZFloat32;
   uint shaderRoundingModeRTZFloat64;
}
struct PhysicalDeviceHostQueryResetFeatures {
   StructureType sType;
   void* pNext;
   uint hostQueryReset;
}
struct DeviceQueueGlobalPriorityCreateInfo {
   StructureType sType;
   void* pNext;
   QueueGlobalPriority globalPriority;
}
struct PhysicalDeviceGlobalPriorityQueryFeatures {
   StructureType sType;
   void* pNext;
   uint globalPriorityQuery;
}
struct QueueFamilyGlobalPriorityProperties {
   StructureType sType;
   void* pNext;
   uint priorityCount;
   QueueGlobalPriority[MAX_GLOBAL_PRIORITY_SIZE] priorities;
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
struct DebugUtilsLabelEXT {
   StructureType sType;
   void* pNext;
   char* pLabelName;
   float[4] color;
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
struct PhysicalDeviceDescriptorIndexingFeatures {
   StructureType sType;
   void* pNext;
   uint shaderInputAttachmentArrayDynamicIndexing;
   uint shaderUniformTexelBufferArrayDynamicIndexing;
   uint shaderStorageTexelBufferArrayDynamicIndexing;
   uint shaderUniformBufferArrayNonUniformIndexing;
   uint shaderSampledImageArrayNonUniformIndexing;
   uint shaderStorageBufferArrayNonUniformIndexing;
   uint shaderStorageImageArrayNonUniformIndexing;
   uint shaderInputAttachmentArrayNonUniformIndexing;
   uint shaderUniformTexelBufferArrayNonUniformIndexing;
   uint shaderStorageTexelBufferArrayNonUniformIndexing;
   uint descriptorBindingUniformBufferUpdateAfterBind;
   uint descriptorBindingSampledImageUpdateAfterBind;
   uint descriptorBindingStorageImageUpdateAfterBind;
   uint descriptorBindingStorageBufferUpdateAfterBind;
   uint descriptorBindingUniformTexelBufferUpdateAfterBind;
   uint descriptorBindingStorageTexelBufferUpdateAfterBind;
   uint descriptorBindingUpdateUnusedWhilePending;
   uint descriptorBindingPartiallyBound;
   uint descriptorBindingVariableDescriptorCount;
   uint runtimeDescriptorArray;
}
struct PhysicalDeviceDescriptorIndexingProperties {
   StructureType sType;
   void* pNext;
   uint maxUpdateAfterBindDescriptorsInAllPools;
   uint shaderUniformBufferArrayNonUniformIndexingNative;
   uint shaderSampledImageArrayNonUniformIndexingNative;
   uint shaderStorageBufferArrayNonUniformIndexingNative;
   uint shaderStorageImageArrayNonUniformIndexingNative;
   uint shaderInputAttachmentArrayNonUniformIndexingNative;
   uint robustBufferAccessUpdateAfterBind;
   uint quadDivergentImplicitLod;
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
struct DescriptorSetLayoutBindingFlagsCreateInfo {
   StructureType sType;
   void* pNext;
   uint bindingCount;
   DescriptorBindingFlags* pBindingFlags;
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
struct AttachmentDescription2KHR {
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
struct AttachmentReference2KHR {
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
struct SubpassDescription2KHR {
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
struct SubpassDependency2KHR {
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
struct RenderPassCreateInfo2KHR {
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
struct SubpassBeginInfo {
   StructureType sType;
   void* pNext;
   SubpassContents contents;
}
struct SubpassBeginInfoKHR {
   StructureType sType;
   void* pNext;
   SubpassContents contents;
}
struct SubpassEndInfo {
   StructureType sType;
   void* pNext;
}
struct SubpassEndInfoKHR {
   StructureType sType;
   void* pNext;
}
struct PhysicalDeviceTimelineSemaphoreFeatures {
   StructureType sType;
   void* pNext;
   uint timelineSemaphore;
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
struct VertexInputBindingDivisorDescription {
   uint binding;
   uint divisor;
}
struct PipelineVertexInputDivisorStateCreateInfo {
   StructureType sType;
   void* pNext;
   uint vertexBindingDivisorCount;
   VertexInputBindingDivisorDescription* pVertexBindingDivisors;
}
struct PhysicalDeviceVertexAttributeDivisorProperties {
   StructureType sType;
   void* pNext;
   uint maxVertexAttribDivisor;
   uint supportsNonZeroFirstInstance;
}
struct PhysicalDevice8BitStorageFeatures {
   StructureType sType;
   void* pNext;
   uint storageBuffer8BitAccess;
   uint uniformAndStorageBuffer8BitAccess;
   uint storagePushConstant8;
}
struct PhysicalDeviceVulkanMemoryModelFeatures {
   StructureType sType;
   void* pNext;
   uint vulkanMemoryModel;
   uint vulkanMemoryModelDeviceScope;
   uint vulkanMemoryModelAvailabilityVisibilityChains;
}
struct PhysicalDeviceShaderAtomicInt64Features {
   StructureType sType;
   void* pNext;
   uint shaderBufferInt64Atomics;
   uint shaderSharedInt64Atomics;
}
struct PhysicalDeviceVertexAttributeDivisorFeatures {
   StructureType sType;
   void* pNext;
   uint vertexAttributeInstanceRateDivisor;
   uint vertexAttributeInstanceRateZeroDivisor;
}
struct PhysicalDeviceDepthStencilResolveProperties {
   StructureType sType;
   void* pNext;
   ResolveModeFlags supportedDepthResolveModes;
   ResolveModeFlags supportedStencilResolveModes;
   uint independentResolveNone;
   uint independentResolve;
}
struct PhysicalDeviceDepthStencilResolvePropertiesKHR {
   StructureType sType;
   void* pNext;
   ResolveModeFlags supportedDepthResolveModes;
   ResolveModeFlags supportedStencilResolveModes;
   uint independentResolveNone;
   uint independentResolve;
}
struct SubpassDescriptionDepthStencilResolve {
   StructureType sType;
   void* pNext;
   ResolveModeFlagBits depthResolveMode;
   ResolveModeFlagBits stencilResolveMode;
   AttachmentReference2* pDepthStencilResolveAttachment;
}
struct SubpassDescriptionDepthStencilResolveKHR {
   StructureType sType;
   void* pNext;
   ResolveModeFlagBits depthResolveMode;
   ResolveModeFlagBits stencilResolveMode;
   AttachmentReference2* pDepthStencilResolveAttachment;
}
struct WriteDescriptorSetAccelerationStructureKHR {
   StructureType sType;
   void* pNext;
   uint accelerationStructureCount;
   AccelerationStructureKHR* pAccelerationStructures;
}
struct PhysicalDeviceAccelerationStructureFeaturesKHR {
   StructureType sType;
   void* pNext;
   uint accelerationStructure;
   uint accelerationStructureCaptureReplay;
   uint accelerationStructureIndirectBuild;
   uint accelerationStructureHostCommands;
   uint descriptorBindingAccelerationStructureUpdateAfterBind;
}
struct PhysicalDeviceAccelerationStructurePropertiesKHR {
   StructureType sType;
   void* pNext;
   ulong maxGeometryCount;
   ulong maxInstanceCount;
   ulong maxPrimitiveCount;
   uint maxPerStageDescriptorAccelerationStructures;
   uint maxPerStageDescriptorUpdateAfterBindAccelerationStructures;
   uint maxDescriptorSetAccelerationStructures;
   uint maxDescriptorSetUpdateAfterBindAccelerationStructures;
   uint minAccelerationStructureScratchOffsetAlignment;
}
struct ImageStencilUsageCreateInfo {
   StructureType sType;
   void* pNext;
   ImageUsageFlags stencilUsage;
}
struct PhysicalDeviceScalarBlockLayoutFeatures {
   StructureType sType;
   void* pNext;
   uint scalarBlockLayout;
}
struct PhysicalDeviceUniformBufferStandardLayoutFeatures {
   StructureType sType;
   void* pNext;
   uint uniformBufferStandardLayout;
}
struct PhysicalDeviceBufferDeviceAddressFeatures {
   StructureType sType;
   void* pNext;
   uint bufferDeviceAddress;
   uint bufferDeviceAddressCaptureReplay;
   uint bufferDeviceAddressMultiDevice;
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
struct PhysicalDeviceImagelessFramebufferFeatures {
   StructureType sType;
   void* pNext;
   uint imagelessFramebuffer;
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
struct PhysicalDeviceTextureCompressionASTCHDRFeatures {
   StructureType sType;
   void* pNext;
   uint textureCompressionASTC_HDR;
}
struct PipelineCreationFeedback {
   PipelineCreationFeedbackFlags flags;
   ulong duration;
}
struct PipelineCreationFeedbackCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineCreationFeedback* pPipelineCreationFeedback;
   uint pipelineStageCreationFeedbackCount;
   PipelineCreationFeedback* pPipelineStageCreationFeedbacks;
}
struct PhysicalDeviceIndexTypeUint8Features {
   StructureType sType;
   void* pNext;
   uint indexTypeUint8;
}
struct PhysicalDeviceSeparateDepthStencilLayoutsFeatures {
   StructureType sType;
   void* pNext;
   uint separateDepthStencilLayouts;
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
struct PhysicalDeviceShaderDemoteToHelperInvocationFeatures {
   StructureType sType;
   void* pNext;
   uint shaderDemoteToHelperInvocation;
}
struct PhysicalDeviceTexelBufferAlignmentProperties {
   StructureType sType;
   void* pNext;
   DeviceSize storageTexelBufferOffsetAlignmentBytes;
   uint storageTexelBufferOffsetSingleTexelAlignment;
   DeviceSize uniformTexelBufferOffsetAlignmentBytes;
   uint uniformTexelBufferOffsetSingleTexelAlignment;
}
struct PhysicalDeviceSubgroupSizeControlFeatures {
   StructureType sType;
   void* pNext;
   uint subgroupSizeControl;
   uint computeFullSubgroups;
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
struct PhysicalDeviceLineRasterizationFeatures {
   StructureType sType;
   void* pNext;
   uint rectangularLines;
   uint bresenhamLines;
   uint smoothLines;
   uint stippledRectangularLines;
   uint stippledBresenhamLines;
   uint stippledSmoothLines;
}
struct PhysicalDeviceLineRasterizationProperties {
   StructureType sType;
   void* pNext;
   uint lineSubPixelPrecisionBits;
}
struct PipelineRasterizationLineStateCreateInfo {
   StructureType sType;
   void* pNext;
   LineRasterizationMode lineRasterizationMode;
   uint stippledLineEnable;
   uint lineStippleFactor;
   uint lineStipplePattern;
}
struct PhysicalDevicePipelineCreationCacheControlFeatures {
   StructureType sType;
   void* pNext;
   uint pipelineCreationCacheControl;
}
struct PhysicalDeviceVulkan11Features {
   StructureType sType;
   void* pNext;
   uint storageBuffer16BitAccess;
   uint uniformAndStorageBuffer16BitAccess;
   uint storagePushConstant16;
   uint storageInputOutput16;
   uint multiview;
   uint multiviewGeometryShader;
   uint multiviewTessellationShader;
   uint variablePointersStorageBuffer;
   uint variablePointers;
   uint protectedMemory;
   uint samplerYcbcrConversion;
   uint shaderDrawParameters;
}
struct PhysicalDeviceVulkan11Properties {
   StructureType sType;
   void* pNext;
   uint[UUID_SIZE] deviceUUID;
   uint[UUID_SIZE] driverUUID;
   uint[LUID_SIZE] deviceLUID;
   uint deviceNodeMask;
   uint deviceLUIDValid;
   uint subgroupSize;
   ShaderStageFlags subgroupSupportedStages;
   SubgroupFeatureFlags subgroupSupportedOperations;
   uint subgroupQuadOperationsInAllStages;
   PointClippingBehavior pointClippingBehavior;
   uint maxMultiviewViewCount;
   uint maxMultiviewInstanceIndex;
   uint protectedNoFault;
   uint maxPerSetDescriptors;
   DeviceSize maxMemoryAllocationSize;
}
struct PhysicalDeviceVulkan12Features {
   StructureType sType;
   void* pNext;
   uint samplerMirrorClampToEdge;
   uint drawIndirectCount;
   uint storageBuffer8BitAccess;
   uint uniformAndStorageBuffer8BitAccess;
   uint storagePushConstant8;
   uint shaderBufferInt64Atomics;
   uint shaderSharedInt64Atomics;
   uint shaderFloat16;
   uint shaderInt8;
   uint descriptorIndexing;
   uint shaderInputAttachmentArrayDynamicIndexing;
   uint shaderUniformTexelBufferArrayDynamicIndexing;
   uint shaderStorageTexelBufferArrayDynamicIndexing;
   uint shaderUniformBufferArrayNonUniformIndexing;
   uint shaderSampledImageArrayNonUniformIndexing;
   uint shaderStorageBufferArrayNonUniformIndexing;
   uint shaderStorageImageArrayNonUniformIndexing;
   uint shaderInputAttachmentArrayNonUniformIndexing;
   uint shaderUniformTexelBufferArrayNonUniformIndexing;
   uint shaderStorageTexelBufferArrayNonUniformIndexing;
   uint descriptorBindingUniformBufferUpdateAfterBind;
   uint descriptorBindingSampledImageUpdateAfterBind;
   uint descriptorBindingStorageImageUpdateAfterBind;
   uint descriptorBindingStorageBufferUpdateAfterBind;
   uint descriptorBindingUniformTexelBufferUpdateAfterBind;
   uint descriptorBindingStorageTexelBufferUpdateAfterBind;
   uint descriptorBindingUpdateUnusedWhilePending;
   uint descriptorBindingPartiallyBound;
   uint descriptorBindingVariableDescriptorCount;
   uint runtimeDescriptorArray;
   uint samplerFilterMinmax;
   uint scalarBlockLayout;
   uint imagelessFramebuffer;
   uint uniformBufferStandardLayout;
   uint shaderSubgroupExtendedTypes;
   uint separateDepthStencilLayouts;
   uint hostQueryReset;
   uint timelineSemaphore;
   uint bufferDeviceAddress;
   uint bufferDeviceAddressCaptureReplay;
   uint bufferDeviceAddressMultiDevice;
   uint vulkanMemoryModel;
   uint vulkanMemoryModelDeviceScope;
   uint vulkanMemoryModelAvailabilityVisibilityChains;
   uint shaderOutputViewportIndex;
   uint shaderOutputLayer;
   uint subgroupBroadcastDynamicId;
}
struct PhysicalDeviceVulkan12Properties {
   StructureType sType;
   void* pNext;
   DriverId driverID;
   char[MAX_DRIVER_NAME_SIZE] driverName;
   char[MAX_DRIVER_INFO_SIZE] driverInfo;
   ConformanceVersion conformanceVersion;
   ShaderFloatControlsIndependence denormBehaviorIndependence;
   ShaderFloatControlsIndependence roundingModeIndependence;
   uint shaderSignedZeroInfNanPreserveFloat16;
   uint shaderSignedZeroInfNanPreserveFloat32;
   uint shaderSignedZeroInfNanPreserveFloat64;
   uint shaderDenormPreserveFloat16;
   uint shaderDenormPreserveFloat32;
   uint shaderDenormPreserveFloat64;
   uint shaderDenormFlushToZeroFloat16;
   uint shaderDenormFlushToZeroFloat32;
   uint shaderDenormFlushToZeroFloat64;
   uint shaderRoundingModeRTEFloat16;
   uint shaderRoundingModeRTEFloat32;
   uint shaderRoundingModeRTEFloat64;
   uint shaderRoundingModeRTZFloat16;
   uint shaderRoundingModeRTZFloat32;
   uint shaderRoundingModeRTZFloat64;
   uint maxUpdateAfterBindDescriptorsInAllPools;
   uint shaderUniformBufferArrayNonUniformIndexingNative;
   uint shaderSampledImageArrayNonUniformIndexingNative;
   uint shaderStorageBufferArrayNonUniformIndexingNative;
   uint shaderStorageImageArrayNonUniformIndexingNative;
   uint shaderInputAttachmentArrayNonUniformIndexingNative;
   uint robustBufferAccessUpdateAfterBind;
   uint quadDivergentImplicitLod;
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
   ResolveModeFlags supportedDepthResolveModes;
   ResolveModeFlags supportedStencilResolveModes;
   uint independentResolveNone;
   uint independentResolve;
   uint filterMinmaxSingleComponentFormats;
   uint filterMinmaxImageComponentMapping;
   ulong maxTimelineSemaphoreValueDifference;
   SampleCountFlags framebufferIntegerColorSampleCounts;
}
struct PhysicalDeviceVulkan13Features {
   StructureType sType;
   void* pNext;
   uint robustImageAccess;
   uint inlineUniformBlock;
   uint descriptorBindingInlineUniformBlockUpdateAfterBind;
   uint pipelineCreationCacheControl;
   uint privateData;
   uint shaderDemoteToHelperInvocation;
   uint shaderTerminateInvocation;
   uint subgroupSizeControl;
   uint computeFullSubgroups;
   uint synchronization2;
   uint textureCompressionASTC_HDR;
   uint shaderZeroInitializeWorkgroupMemory;
   uint dynamicRendering;
   uint shaderIntegerDotProduct;
   uint maintenance4;
}
struct PhysicalDeviceVulkan13Properties {
   StructureType sType;
   void* pNext;
   uint minSubgroupSize;
   uint maxSubgroupSize;
   uint maxComputeWorkgroupSubgroups;
   ShaderStageFlags requiredSubgroupSizeStages;
   uint maxInlineUniformBlockSize;
   uint maxPerStageDescriptorInlineUniformBlocks;
   uint maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks;
   uint maxDescriptorSetInlineUniformBlocks;
   uint maxDescriptorSetUpdateAfterBindInlineUniformBlocks;
   uint maxInlineUniformTotalSize;
   uint integerDotProduct8BitUnsignedAccelerated;
   uint integerDotProduct8BitSignedAccelerated;
   uint integerDotProduct8BitMixedSignednessAccelerated;
   uint integerDotProduct4x8BitPackedUnsignedAccelerated;
   uint integerDotProduct4x8BitPackedSignedAccelerated;
   uint integerDotProduct4x8BitPackedMixedSignednessAccelerated;
   uint integerDotProduct16BitUnsignedAccelerated;
   uint integerDotProduct16BitSignedAccelerated;
   uint integerDotProduct16BitMixedSignednessAccelerated;
   uint integerDotProduct32BitUnsignedAccelerated;
   uint integerDotProduct32BitSignedAccelerated;
   uint integerDotProduct32BitMixedSignednessAccelerated;
   uint integerDotProduct64BitUnsignedAccelerated;
   uint integerDotProduct64BitSignedAccelerated;
   uint integerDotProduct64BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating8BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
   uint integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating16BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating32BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating64BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
   DeviceSize storageTexelBufferOffsetAlignmentBytes;
   uint storageTexelBufferOffsetSingleTexelAlignment;
   DeviceSize uniformTexelBufferOffsetAlignmentBytes;
   uint uniformTexelBufferOffsetSingleTexelAlignment;
   DeviceSize maxBufferSize;
}
struct PhysicalDeviceVulkan14Features {
   StructureType sType;
   void* pNext;
   uint globalPriorityQuery;
   uint shaderSubgroupRotate;
   uint shaderSubgroupRotateClustered;
   uint shaderFloatControls2;
   uint shaderExpectAssume;
   uint rectangularLines;
   uint bresenhamLines;
   uint smoothLines;
   uint stippledRectangularLines;
   uint stippledBresenhamLines;
   uint stippledSmoothLines;
   uint vertexAttributeInstanceRateDivisor;
   uint vertexAttributeInstanceRateZeroDivisor;
   uint indexTypeUint8;
   uint dynamicRenderingLocalRead;
   uint maintenance5;
   uint maintenance6;
   uint pipelineProtectedAccess;
   uint pipelineRobustness;
   uint hostImageCopy;
   uint pushDescriptor;
}
struct PhysicalDeviceVulkan14Properties {
   StructureType sType;
   void* pNext;
   uint lineSubPixelPrecisionBits;
   uint maxVertexAttribDivisor;
   uint supportsNonZeroFirstInstance;
   uint maxPushDescriptors;
   uint dynamicRenderingLocalReadDepthStencilAttachments;
   uint dynamicRenderingLocalReadMultisampledAttachments;
   uint earlyFragmentMultisampleCoverageAfterSampleCounting;
   uint earlyFragmentSampleMaskTestBeforeSampleCounting;
   uint depthStencilSwizzleOneSupport;
   uint polygonModePointSize;
   uint nonStrictSinglePixelWideLinesUseParallelogram;
   uint nonStrictWideLinesUseParallelogram;
   uint blockTexelViewCompatibleMultipleLayers;
   uint maxCombinedImageSamplerDescriptorCount;
   uint fragmentShadingRateClampCombinerInputs;
   PipelineRobustnessBufferBehavior defaultRobustnessStorageBuffers;
   PipelineRobustnessBufferBehavior defaultRobustnessUniformBuffers;
   PipelineRobustnessBufferBehavior defaultRobustnessVertexInputs;
   PipelineRobustnessImageBehavior defaultRobustnessImages;
   uint copySrcLayoutCount;
   ImageLayout* pCopySrcLayouts;
   uint copyDstLayoutCount;
   ImageLayout* pCopyDstLayouts;
   uint[UUID_SIZE] optimalTilingLayoutUUID;
   uint identicalMemoryTypeRequirements;
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
struct AccelerationStructureGeometryTrianglesDataKHR {
   StructureType sType;
   void* pNext;
   Format vertexFormat;
   DeviceOrHostAddressConstKHR vertexData;
   DeviceSize vertexStride;
   uint maxVertex;
   IndexType indexType;
   DeviceOrHostAddressConstKHR indexData;
   DeviceOrHostAddressConstKHR transformData;
}
struct AccelerationStructureGeometryAabbsDataKHR {
   StructureType sType;
   void* pNext;
   DeviceOrHostAddressConstKHR data;
   DeviceSize stride;
}
struct AccelerationStructureGeometryInstancesDataKHR {
   StructureType sType;
   void* pNext;
   uint arrayOfPointers;
   DeviceOrHostAddressConstKHR data;
}
struct AccelerationStructureGeometryKHR {
   StructureType sType;
   void* pNext;
   GeometryTypeKHR geometryType;
   AccelerationStructureGeometryDataKHR geometry;
   GeometryFlagsKHR flags;
}
struct AccelerationStructureBuildGeometryInfoKHR {
   StructureType sType;
   void* pNext;
   AccelerationStructureTypeKHR type;
   BuildAccelerationStructureFlagsKHR flags;
   BuildAccelerationStructureModeKHR mode;
   AccelerationStructureKHR srcAccelerationStructure;
   AccelerationStructureKHR dstAccelerationStructure;
   uint geometryCount;
   AccelerationStructureGeometryKHR* pGeometries;
   AccelerationStructureGeometryKHR* ppGeometries;
   DeviceOrHostAddressKHR scratchData;
}
struct AccelerationStructureBuildRangeInfoKHR {
   uint primitiveCount;
   uint primitiveOffset;
   uint firstVertex;
   uint transformOffset;
}
struct AccelerationStructureCreateInfoKHR {
   StructureType sType;
   void* pNext;
   AccelerationStructureCreateFlagsKHR createFlags;
   Buffer buffer;
   DeviceSize offset;
   DeviceSize size;
   AccelerationStructureTypeKHR type;
   DeviceAddress deviceAddress;
}
struct AabbPositionsKHR {
   float minX;
   float minY;
   float minZ;
   float maxX;
   float maxY;
   float maxZ;
}
struct TransformMatrixKHR {
   float[3][4] matrix;
}
struct AccelerationStructureInstanceKHR {
   TransformMatrixKHR transform;
   uint instanceCustomIndex;
   uint mask;
   uint instanceShaderBindingTableRecordOffset;
   GeometryInstanceFlagsKHR flags;
   ulong accelerationStructureReference;
}
struct AccelerationStructureDeviceAddressInfoKHR {
   StructureType sType;
   void* pNext;
   AccelerationStructureKHR accelerationStructure;
}
struct AccelerationStructureVersionInfoKHR {
   StructureType sType;
   void* pNext;
   uint* pVersionData;
}
struct CopyAccelerationStructureInfoKHR {
   StructureType sType;
   void* pNext;
   AccelerationStructureKHR src;
   AccelerationStructureKHR dst;
   CopyAccelerationStructureModeKHR mode;
}
struct CopyAccelerationStructureToMemoryInfoKHR {
   StructureType sType;
   void* pNext;
   AccelerationStructureKHR src;
   DeviceOrHostAddressKHR dst;
   CopyAccelerationStructureModeKHR mode;
}
struct CopyMemoryToAccelerationStructureInfoKHR {
   StructureType sType;
   void* pNext;
   DeviceOrHostAddressConstKHR src;
   AccelerationStructureKHR dst;
   CopyAccelerationStructureModeKHR mode;
}
struct PhysicalDeviceExtendedDynamicState3FeaturesEXT {
   StructureType sType;
   void* pNext;
   uint extendedDynamicState3TessellationDomainOrigin;
   uint extendedDynamicState3DepthClampEnable;
   uint extendedDynamicState3PolygonMode;
   uint extendedDynamicState3RasterizationSamples;
   uint extendedDynamicState3SampleMask;
   uint extendedDynamicState3AlphaToCoverageEnable;
   uint extendedDynamicState3AlphaToOneEnable;
   uint extendedDynamicState3LogicOpEnable;
   uint extendedDynamicState3ColorBlendEnable;
   uint extendedDynamicState3ColorBlendEquation;
   uint extendedDynamicState3ColorWriteMask;
   uint extendedDynamicState3RasterizationStream;
   uint extendedDynamicState3ConservativeRasterizationMode;
   uint extendedDynamicState3ExtraPrimitiveOverestimationSize;
   uint extendedDynamicState3DepthClipEnable;
   uint extendedDynamicState3SampleLocationsEnable;
   uint extendedDynamicState3ColorBlendAdvanced;
   uint extendedDynamicState3ProvokingVertexMode;
   uint extendedDynamicState3LineRasterizationMode;
   uint extendedDynamicState3LineStippleEnable;
   uint extendedDynamicState3DepthClipNegativeOneToOne;
   uint extendedDynamicState3ViewportWScalingEnable;
   uint extendedDynamicState3ViewportSwizzle;
   uint extendedDynamicState3CoverageToColorEnable;
   uint extendedDynamicState3CoverageToColorLocation;
   uint extendedDynamicState3CoverageModulationMode;
   uint extendedDynamicState3CoverageModulationTableEnable;
   uint extendedDynamicState3CoverageModulationTable;
   uint extendedDynamicState3CoverageReductionMode;
   uint extendedDynamicState3RepresentativeFragmentTestEnable;
   uint extendedDynamicState3ShadingRateImageEnable;
}
struct PhysicalDeviceExtendedDynamicState3PropertiesEXT {
   StructureType sType;
   void* pNext;
   uint dynamicPrimitiveTopologyUnrestricted;
}
struct ColorBlendEquationEXT {
   BlendFactor srcColorBlendFactor;
   BlendFactor dstColorBlendFactor;
   BlendOp colorBlendOp;
   BlendFactor srcAlphaBlendFactor;
   BlendFactor dstAlphaBlendFactor;
   BlendOp alphaBlendOp;
}
struct ColorBlendAdvancedEXT {
   BlendOp advancedBlendOp;
   uint srcPremultiplied;
   uint dstPremultiplied;
   BlendOverlapEXT blendOverlap;
   uint clampResults;
}
struct PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures {
   StructureType sType;
   void* pNext;
   uint shaderZeroInitializeWorkgroupMemory;
}
struct PhysicalDeviceImageRobustnessFeatures {
   StructureType sType;
   void* pNext;
   uint robustImageAccess;
}
struct PhysicalDevicePortabilitySubsetFeaturesKHR {
   StructureType sType;
   void* pNext;
   uint constantAlphaColorBlendFactors;
   uint events;
   uint imageViewFormatReinterpretation;
   uint imageViewFormatSwizzle;
   uint imageView2DOn3DImage;
   uint multisampleArrayImage;
   uint mutableComparisonSamplers;
   uint pointPolygons;
   uint samplerMipLodBias;
   uint separateStencilMaskRef;
   uint shaderSampleRateInterpolationFunctions;
   uint tessellationIsolines;
   uint tessellationPointMode;
   uint triangleFans;
   uint vertexAttributeAccessBeyondStride;
}
struct PhysicalDevicePortabilitySubsetPropertiesKHR {
   StructureType sType;
   void* pNext;
   uint minVertexInputBindingStrideAlignment;
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
struct PhysicalDeviceShaderTerminateInvocationFeatures {
   StructureType sType;
   void* pNext;
   uint shaderTerminateInvocation;
}
struct AccelerationStructureBuildSizesInfoKHR {
   StructureType sType;
   void* pNext;
   DeviceSize accelerationStructureSize;
   DeviceSize updateScratchSize;
   DeviceSize buildScratchSize;
}
struct MemoryBarrier2 {
   StructureType sType;
   void* pNext;
   PipelineStageFlags2 srcStageMask;
   AccessFlags2 srcAccessMask;
   PipelineStageFlags2 dstStageMask;
   AccessFlags2 dstAccessMask;
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
struct PhysicalDeviceSynchronization2Features {
   StructureType sType;
   void* pNext;
   uint synchronization2;
}
struct PhysicalDeviceHostImageCopyFeatures {
   StructureType sType;
   void* pNext;
   uint hostImageCopy;
}
struct PhysicalDeviceHostImageCopyProperties {
   StructureType sType;
   void* pNext;
   uint copySrcLayoutCount;
   ImageLayout* pCopySrcLayouts;
   uint copyDstLayoutCount;
   ImageLayout* pCopyDstLayouts;
   uint[UUID_SIZE] optimalTilingLayoutUUID;
   uint identicalMemoryTypeRequirements;
}
struct MemoryToImageCopy {
   StructureType sType;
   void* pNext;
   void* pHostPointer;
   uint memoryRowLength;
   uint memoryImageHeight;
   ImageSubresourceLayers imageSubresource;
   Offset3D imageOffset;
   Extent3D imageExtent;
}
struct ImageToMemoryCopy {
   StructureType sType;
   void* pNext;
   void* pHostPointer;
   uint memoryRowLength;
   uint memoryImageHeight;
   ImageSubresourceLayers imageSubresource;
   Offset3D imageOffset;
   Extent3D imageExtent;
}
struct CopyMemoryToImageInfo {
   StructureType sType;
   void* pNext;
   HostImageCopyFlags flags;
   Image dstImage;
   ImageLayout dstImageLayout;
   uint regionCount;
   MemoryToImageCopy* pRegions;
}
struct CopyImageToMemoryInfo {
   StructureType sType;
   void* pNext;
   HostImageCopyFlags flags;
   Image srcImage;
   ImageLayout srcImageLayout;
   uint regionCount;
   ImageToMemoryCopy* pRegions;
}
struct CopyImageToImageInfo {
   StructureType sType;
   void* pNext;
   HostImageCopyFlags flags;
   Image srcImage;
   ImageLayout srcImageLayout;
   Image dstImage;
   ImageLayout dstImageLayout;
   uint regionCount;
   ImageCopy2* pRegions;
}
struct HostImageLayoutTransitionInfo {
   StructureType sType;
   void* pNext;
   Image image;
   ImageLayout oldLayout;
   ImageLayout newLayout;
   ImageSubresourceRange subresourceRange;
}
struct SubresourceHostMemcpySize {
   StructureType sType;
   void* pNext;
   DeviceSize size;
}
struct HostImageCopyDevicePerformanceQuery {
   StructureType sType;
   void* pNext;
   uint optimalDeviceAccess;
   uint identicalMemoryLayout;
}
struct PhysicalDevicePipelineProtectedAccessFeatures {
   StructureType sType;
   void* pNext;
   uint pipelineProtectedAccess;
}
struct PhysicalDeviceDescriptorBufferFeaturesEXT {
   StructureType sType;
   void* pNext;
   uint descriptorBuffer;
   uint descriptorBufferCaptureReplay;
   uint descriptorBufferImageLayoutIgnored;
   uint descriptorBufferPushDescriptors;
}
struct PhysicalDeviceDescriptorBufferPropertiesEXT {
   StructureType sType;
   void* pNext;
   uint combinedImageSamplerDescriptorSingleArray;
   uint bufferlessPushDescriptors;
   uint allowSamplerImageViewPostSubmitCreation;
   DeviceSize descriptorBufferOffsetAlignment;
   uint maxDescriptorBufferBindings;
   uint maxResourceDescriptorBufferBindings;
   uint maxSamplerDescriptorBufferBindings;
   uint maxEmbeddedImmutableSamplerBindings;
   uint maxEmbeddedImmutableSamplers;
   usz bufferCaptureReplayDescriptorDataSize;
   usz imageCaptureReplayDescriptorDataSize;
   usz imageViewCaptureReplayDescriptorDataSize;
   usz samplerCaptureReplayDescriptorDataSize;
   usz accelerationStructureCaptureReplayDescriptorDataSize;
   usz samplerDescriptorSize;
   usz combinedImageSamplerDescriptorSize;
   usz sampledImageDescriptorSize;
   usz storageImageDescriptorSize;
   usz uniformTexelBufferDescriptorSize;
   usz robustUniformTexelBufferDescriptorSize;
   usz storageTexelBufferDescriptorSize;
   usz robustStorageTexelBufferDescriptorSize;
   usz uniformBufferDescriptorSize;
   usz robustUniformBufferDescriptorSize;
   usz storageBufferDescriptorSize;
   usz robustStorageBufferDescriptorSize;
   usz inputAttachmentDescriptorSize;
   usz accelerationStructureDescriptorSize;
   DeviceSize maxSamplerDescriptorBufferRange;
   DeviceSize maxResourceDescriptorBufferRange;
   DeviceSize samplerDescriptorBufferAddressSpaceSize;
   DeviceSize resourceDescriptorBufferAddressSpaceSize;
   DeviceSize descriptorBufferAddressSpaceSize;
}
struct PhysicalDeviceDescriptorBufferDensityMapPropertiesEXT {
   StructureType sType;
   void* pNext;
   usz combinedImageSamplerDensityMapDescriptorSize;
}
struct DescriptorAddressInfoEXT {
   StructureType sType;
   void* pNext;
   DeviceAddress address;
   DeviceSize range;
   Format format;
}
struct DescriptorBufferBindingInfoEXT {
   StructureType sType;
   void* pNext;
   DeviceAddress address;
   BufferUsageFlags usage;
}
struct DescriptorBufferBindingPushDescriptorBufferHandleEXT {
   StructureType sType;
   void* pNext;
   Buffer buffer;
}
struct DescriptorGetInfoEXT {
   StructureType sType;
   void* pNext;
   DescriptorType type;
   DescriptorDataEXT data;
}
struct BufferCaptureDescriptorDataInfoEXT {
   StructureType sType;
   void* pNext;
   Buffer buffer;
}
struct ImageCaptureDescriptorDataInfoEXT {
   StructureType sType;
   void* pNext;
   Image image;
}
struct ImageViewCaptureDescriptorDataInfoEXT {
   StructureType sType;
   void* pNext;
   ImageView imageView;
}
struct SamplerCaptureDescriptorDataInfoEXT {
   StructureType sType;
   void* pNext;
   Sampler sampler;
}
struct OpaqueCaptureDescriptorDataCreateInfoEXT {
   StructureType sType;
   void* pNext;
   void* opaqueCaptureDescriptorData;
}
struct PhysicalDeviceShaderIntegerDotProductFeatures {
   StructureType sType;
   void* pNext;
   uint shaderIntegerDotProduct;
}
struct PhysicalDeviceShaderIntegerDotProductProperties {
   StructureType sType;
   void* pNext;
   uint integerDotProduct8BitUnsignedAccelerated;
   uint integerDotProduct8BitSignedAccelerated;
   uint integerDotProduct8BitMixedSignednessAccelerated;
   uint integerDotProduct4x8BitPackedUnsignedAccelerated;
   uint integerDotProduct4x8BitPackedSignedAccelerated;
   uint integerDotProduct4x8BitPackedMixedSignednessAccelerated;
   uint integerDotProduct16BitUnsignedAccelerated;
   uint integerDotProduct16BitSignedAccelerated;
   uint integerDotProduct16BitMixedSignednessAccelerated;
   uint integerDotProduct32BitUnsignedAccelerated;
   uint integerDotProduct32BitSignedAccelerated;
   uint integerDotProduct32BitMixedSignednessAccelerated;
   uint integerDotProduct64BitUnsignedAccelerated;
   uint integerDotProduct64BitSignedAccelerated;
   uint integerDotProduct64BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating8BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating8BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated;
   uint integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating16BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating16BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating32BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating32BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated;
   uint integerDotProductAccumulatingSaturating64BitUnsignedAccelerated;
   uint integerDotProductAccumulatingSaturating64BitSignedAccelerated;
   uint integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated;
}
struct FormatProperties3 {
   StructureType sType;
   void* pNext;
   FormatFeatureFlags2 linearTilingFeatures;
   FormatFeatureFlags2 optimalTilingFeatures;
   FormatFeatureFlags2 bufferFeatures;
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
struct PipelineRenderingCreateInfoKHR {
   StructureType sType;
   void* pNext;
   uint viewMask;
   uint colorAttachmentCount;
   Format* pColorAttachmentFormats;
   Format depthAttachmentFormat;
   Format stencilAttachmentFormat;
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
struct RenderingInfoKHR {
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
struct RenderingAttachmentInfoKHR {
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
struct PhysicalDeviceDynamicRenderingFeatures {
   StructureType sType;
   void* pNext;
   uint dynamicRendering;
}
struct PhysicalDeviceDynamicRenderingFeaturesKHR {
   StructureType sType;
   void* pNext;
   uint dynamicRendering;
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
struct CommandBufferInheritanceRenderingInfoKHR {
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
struct ImageSubresource2 {
   StructureType sType;
   void* pNext;
   ImageSubresource imageSubresource;
}
struct SubresourceLayout2 {
   StructureType sType;
   void* pNext;
   SubresourceLayout subresourceLayout;
}
struct PhysicalDevicePipelineRobustnessFeatures {
   StructureType sType;
   void* pNext;
   uint pipelineRobustness;
}
struct PipelineRobustnessCreateInfo {
   StructureType sType;
   void* pNext;
   PipelineRobustnessBufferBehavior storageBuffers;
   PipelineRobustnessBufferBehavior uniformBuffers;
   PipelineRobustnessBufferBehavior vertexInputs;
   PipelineRobustnessImageBehavior images;
}
struct PhysicalDevicePipelineRobustnessProperties {
   StructureType sType;
   void* pNext;
   PipelineRobustnessBufferBehavior defaultRobustnessStorageBuffers;
   PipelineRobustnessBufferBehavior defaultRobustnessUniformBuffers;
   PipelineRobustnessBufferBehavior defaultRobustnessVertexInputs;
   PipelineRobustnessImageBehavior defaultRobustnessImages;
}
struct PhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT {
   StructureType sType;
   void* pNext;
   uint dynamicRenderingUnusedAttachments;
}
struct DeviceImageSubresourceInfo {
   StructureType sType;
   void* pNext;
   ImageCreateInfo* pCreateInfo;
   ImageSubresource2* pSubresource;
}
struct MemoryMapInfo {
   StructureType sType;
   void* pNext;
   MemoryMapFlags flags;
   DeviceMemory memory;
   DeviceSize offset;
   DeviceSize size;
}
struct MemoryUnmapInfo {
   StructureType sType;
   void* pNext;
   MemoryUnmapFlags flags;
   DeviceMemory memory;
}
struct BindMemoryStatus {
   StructureType sType;
   void* pNext;
   Result* pResult;
}
struct BindDescriptorSetsInfo {
   StructureType sType;
   void* pNext;
   ShaderStageFlags stageFlags;
   PipelineLayout layout;
   uint firstSet;
   uint descriptorSetCount;
   DescriptorSet* pDescriptorSets;
   uint dynamicOffsetCount;
   uint* pDynamicOffsets;
}
struct PushConstantsInfo {
   StructureType sType;
   void* pNext;
   PipelineLayout layout;
   ShaderStageFlags stageFlags;
   uint offset;
   uint size;
   void* pValues;
}
struct PushDescriptorSetInfo {
   StructureType sType;
   void* pNext;
   ShaderStageFlags stageFlags;
   PipelineLayout layout;
   uint set;
   uint descriptorWriteCount;
   WriteDescriptorSet* pDescriptorWrites;
}
struct PushDescriptorSetWithTemplateInfo {
   StructureType sType;
   void* pNext;
   DescriptorUpdateTemplate descriptorUpdateTemplate;
   PipelineLayout layout;
   uint set;
   void* pData;
}
struct PhysicalDeviceShaderSubgroupRotateFeatures {
   StructureType sType;
   void* pNext;
   uint shaderSubgroupRotate;
   uint shaderSubgroupRotateClustered;
}
struct PhysicalDeviceShaderExpectAssumeFeatures {
   StructureType sType;
   void* pNext;
   uint shaderExpectAssume;
}
struct PhysicalDeviceShaderFloatControls2Features {
   StructureType sType;
   void* pNext;
   uint shaderFloatControls2;
}
struct PhysicalDeviceDynamicRenderingLocalReadFeatures {
   StructureType sType;
   void* pNext;
   uint dynamicRenderingLocalRead;
}
struct RenderingAttachmentLocationInfo {
   StructureType sType;
   void* pNext;
   uint colorAttachmentCount;
   uint* pColorAttachmentLocations;
}
struct RenderingInputAttachmentIndexInfo {
   StructureType sType;
   void* pNext;
   uint colorAttachmentCount;
   uint* pColorAttachmentInputIndices;
   uint* pDepthInputAttachmentIndex;
   uint* pStencilInputAttachmentIndex;
}

union ClearColorValue { 
   float[4] float32;
   int[4] int32;
   uint[4] uint32;
}
union ClearValue { 
   ClearColorValue color;
   ClearDepthStencilValue depthStencil;
}
union DeviceOrHostAddressKHR { 
   DeviceAddress deviceAddress;
   void* hostAddress;
}
union DeviceOrHostAddressConstKHR { 
   DeviceAddress deviceAddress;
   void* hostAddress;
}
union AccelerationStructureGeometryDataKHR { 
   AccelerationStructureGeometryTrianglesDataKHR triangles;
   AccelerationStructureGeometryAabbsDataKHR aabbs;
   AccelerationStructureGeometryInstancesDataKHR instances;
}
union DescriptorDataEXT { 
   Sampler* pSampler;
   DescriptorImageInfo* pCombinedImageSampler;
   DescriptorImageInfo* pInputAttachmentImage;
   DescriptorImageInfo* pSampledImage;
   DescriptorImageInfo* pStorageImage;
   DescriptorAddressInfoEXT* pUniformTexelBuffer;
   DescriptorAddressInfoEXT* pStorageTexelBuffer;
   DescriptorAddressInfoEXT* pUniformBuffer;
   DescriptorAddressInfoEXT* pStorageBuffer;
   DeviceAddress accelerationStructure;
}

