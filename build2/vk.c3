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
const WHOLE_SIZE = (~0ULL);
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
const MAX_GLOBAL_PRIORITY_SIZE_KHR = 16;
const MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT = 32;
const MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR = 7;
const SHADER_INDEX_UNUSED_AMDX = (~0U);

distinct Instance = void*;
distinct PhysicalDevice = void*;
distinct Device = void*;
distinct Queue = void*;
distinct CommandBuffer = void*;
distinct DeviceMemory = void*;
distinct CommandPool = void*;
distinct Buffer = void*;
distinct BufferView = void*;
distinct Image = void*;
distinct ImageView = void*;
distinct ShaderModule = void*;
distinct Pipeline = void*;
distinct PipelineLayout = void*;
distinct Sampler = void*;
distinct DescriptorSet = void*;
distinct DescriptorSetLayout = void*;
distinct DescriptorPool = void*;
distinct Fence = void*;
distinct Semaphore = void*;
distinct Event = void*;
distinct QueryPool = void*;
distinct Framebuffer = void*;
distinct RenderPass = void*;
distinct PipelineCache = void*;
distinct IndirectCommandsLayoutNV = void*;
distinct DescriptorUpdateTemplate = void*;
distinct SamplerYcbcrConversion = void*;
distinct ValidationCacheEXT = void*;
distinct AccelerationStructureKHR = void*;
distinct AccelerationStructureNV = void*;
distinct PerformanceConfigurationINTEL = void*;
distinct BufferCollectionFUCHSIA = void*;
distinct DeferredOperationKHR = void*;
distinct PrivateDataSlot = void*;
distinct CuModuleNVX = void*;
distinct CuFunctionNVX = void*;
distinct OpticalFlowSessionNV = void*;
distinct MicromapEXT = void*;
distinct ShaderEXT = void*;
distinct DisplayKHR = void*;
distinct DisplayModeKHR = void*;
distinct SurfaceKHR = void*;
distinct SwapchainKHR = void*;
distinct DebugReportCallbackEXT = void*;
distinct DebugUtilsMessengerEXT = void*;
distinct VideoSessionKHR = void*;
distinct VideoSessionParametersKHR = void*;
distinct SemaphoreSciSyncPoolNV = void*;
distinct CudaModuleNV = void*;
distinct CudaFunctionNV = void*;

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
def PipelineDepthStencilStateCreateFlags = Flags;
def PipelineDynamicStateCreateFlags = Flags;
def PipelineColorBlendStateCreateFlags = Flags;
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
def MemoryUnmapFlagsKHR = Flags;
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
def DirectDriverLoadingFlagsLUNARG = Flags;
def PipelineCreateFlags2KHR = Flags64;
def BufferUsageFlags2KHR = Flags64;
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
def HostImageCopyFlagsEXT = Flags;
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
const ImageLayout IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002;
const ImageLayout IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR = 1000024000;
const ImageLayout IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR = 1000024001;
const ImageLayout IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR = 1000024002;
const ImageLayout IMAGE_LAYOUT_SHARED_PRESENT_KHR = 1000111000;
const ImageLayout IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT = 1000218000;
const ImageLayout IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR = 1000226003;
const ImageLayout IMAGE_LAYOUT_RENDERING_LOCAL_READ_KHR = 1000232000;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR = 1000299000;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR = 1000299001;
const ImageLayout IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR = 1000299002;
const ImageLayout IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT = 1000339000;

distinct AttachmentLoadOp = inline uint;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_LOAD = 0;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_CLEAR = 1;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_DONT_CARE = 2;
const AttachmentLoadOp ATTACHMENT_LOAD_OP_NONE_KHR = 1000526000;

distinct AttachmentStoreOp = inline uint;
const AttachmentStoreOp ATTACHMENT_STORE_OP_STORE = 0;
const AttachmentStoreOp ATTACHMENT_STORE_OP_DONT_CARE = 1;
const AttachmentStoreOp ATTACHMENT_STORE_OP_NONE = 1000301000;

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
const DescriptorType DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000;
const DescriptorType DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000;
const DescriptorType DESCRIPTOR_TYPE_SAMPLE_WEIGHT_IMAGE_QCOM = 1000440000;
const DescriptorType DESCRIPTOR_TYPE_BLOCK_MATCH_IMAGE_QCOM = 1000440001;
const DescriptorType DESCRIPTOR_TYPE_MUTABLE_EXT = 1000494000;

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
const PipelineBindPoint PIPELINE_BIND_POINT_RAY_TRACING_KHR = 1000347000;
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
const IndexType INDEX_TYPE_NONE_KHR = 1000150000;
const IndexType INDEX_TYPE_UINT8_KHR = 1000533000;

distinct Filter = inline uint;
const Filter FILTER_NEAREST = 0;
const Filter FILTER_LINEAR = 1;
const Filter FILTER_CUBIC_EXT = 1000170000;

distinct SamplerMipmapMode = inline uint;
const SamplerMipmapMode SAMPLER_MIPMAP_MODE_NEAREST = 0;
const SamplerMipmapMode SAMPLER_MIPMAP_MODE_LINEAR = 1;

distinct SamplerAddressMode = inline uint;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_REPEAT = 0;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4;
const SamplerAddressMode SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4;

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
const Format FORMAT_ASTC_4x4_UNORM_BLOCK = 157;
const Format FORMAT_ASTC_4x4_SRGB_BLOCK = 158;
const Format FORMAT_ASTC_5x4_UNORM_BLOCK = 159;
const Format FORMAT_ASTC_5x4_SRGB_BLOCK = 160;
const Format FORMAT_ASTC_5x5_UNORM_BLOCK = 161;
const Format FORMAT_ASTC_5x5_SRGB_BLOCK = 162;
const Format FORMAT_ASTC_6x5_UNORM_BLOCK = 163;
const Format FORMAT_ASTC_6x5_SRGB_BLOCK = 164;
const Format FORMAT_ASTC_6x6_UNORM_BLOCK = 165;
const Format FORMAT_ASTC_6x6_SRGB_BLOCK = 166;
const Format FORMAT_ASTC_8x5_UNORM_BLOCK = 167;
const Format FORMAT_ASTC_8x5_SRGB_BLOCK = 168;
const Format FORMAT_ASTC_8x6_UNORM_BLOCK = 169;
const Format FORMAT_ASTC_8x6_SRGB_BLOCK = 170;
const Format FORMAT_ASTC_8x8_UNORM_BLOCK = 171;
const Format FORMAT_ASTC_8x8_SRGB_BLOCK = 172;
const Format FORMAT_ASTC_10x5_UNORM_BLOCK = 173;
const Format FORMAT_ASTC_10x5_SRGB_BLOCK = 174;
const Format FORMAT_ASTC_10x6_UNORM_BLOCK = 175;
const Format FORMAT_ASTC_10x6_SRGB_BLOCK = 176;
const Format FORMAT_ASTC_10x8_UNORM_BLOCK = 177;
const Format FORMAT_ASTC_10x8_SRGB_BLOCK = 178;
const Format FORMAT_ASTC_10x10_UNORM_BLOCK = 179;
const Format FORMAT_ASTC_10x10_SRGB_BLOCK = 180;
const Format FORMAT_ASTC_12x10_UNORM_BLOCK = 181;
const Format FORMAT_ASTC_12x10_SRGB_BLOCK = 182;
const Format FORMAT_ASTC_12x12_UNORM_BLOCK = 183;
const Format FORMAT_ASTC_12x12_SRGB_BLOCK = 184;
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
const Format FORMAT_ASTC_4x4_SFLOAT_BLOCK = 1000066000;
const Format FORMAT_ASTC_5x4_SFLOAT_BLOCK = 1000066001;
const Format FORMAT_ASTC_5x5_SFLOAT_BLOCK = 1000066002;
const Format FORMAT_ASTC_6x5_SFLOAT_BLOCK = 1000066003;
const Format FORMAT_ASTC_6x6_SFLOAT_BLOCK = 1000066004;
const Format FORMAT_ASTC_8x5_SFLOAT_BLOCK = 1000066005;
const Format FORMAT_ASTC_8x6_SFLOAT_BLOCK = 1000066006;
const Format FORMAT_ASTC_8x8_SFLOAT_BLOCK = 1000066007;
const Format FORMAT_ASTC_10x5_SFLOAT_BLOCK = 1000066008;
const Format FORMAT_ASTC_10x6_SFLOAT_BLOCK = 1000066009;
const Format FORMAT_ASTC_10x8_SFLOAT_BLOCK = 1000066010;
const Format FORMAT_ASTC_10x10_SFLOAT_BLOCK = 1000066011;
const Format FORMAT_ASTC_12x10_SFLOAT_BLOCK = 1000066012;
const Format FORMAT_ASTC_12x12_SFLOAT_BLOCK = 1000066013;
const Format FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG = 1000054000;
const Format FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG = 1000054001;
const Format FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG = 1000054002;
const Format FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG = 1000054003;
const Format FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG = 1000054004;
const Format FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG = 1000054005;
const Format FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG = 1000054006;
const Format FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG = 1000054007;
const Format FORMAT_ASTC_3x3x3_UNORM_BLOCK_EXT = 1000288000;
const Format FORMAT_ASTC_3x3x3_SRGB_BLOCK_EXT = 1000288001;
const Format FORMAT_ASTC_3x3x3_SFLOAT_BLOCK_EXT = 1000288002;
const Format FORMAT_ASTC_4x3x3_UNORM_BLOCK_EXT = 1000288003;
const Format FORMAT_ASTC_4x3x3_SRGB_BLOCK_EXT = 1000288004;
const Format FORMAT_ASTC_4x3x3_SFLOAT_BLOCK_EXT = 1000288005;
const Format FORMAT_ASTC_4x4x3_UNORM_BLOCK_EXT = 1000288006;
const Format FORMAT_ASTC_4x4x3_SRGB_BLOCK_EXT = 1000288007;
const Format FORMAT_ASTC_4x4x3_SFLOAT_BLOCK_EXT = 1000288008;
const Format FORMAT_ASTC_4x4x4_UNORM_BLOCK_EXT = 1000288009;
const Format FORMAT_ASTC_4x4x4_SRGB_BLOCK_EXT = 1000288010;
const Format FORMAT_ASTC_4x4x4_SFLOAT_BLOCK_EXT = 1000288011;
const Format FORMAT_ASTC_5x4x4_UNORM_BLOCK_EXT = 1000288012;
const Format FORMAT_ASTC_5x4x4_SRGB_BLOCK_EXT = 1000288013;
const Format FORMAT_ASTC_5x4x4_SFLOAT_BLOCK_EXT = 1000288014;
const Format FORMAT_ASTC_5x5x4_UNORM_BLOCK_EXT = 1000288015;
const Format FORMAT_ASTC_5x5x4_SRGB_BLOCK_EXT = 1000288016;
const Format FORMAT_ASTC_5x5x4_SFLOAT_BLOCK_EXT = 1000288017;
const Format FORMAT_ASTC_5x5x5_UNORM_BLOCK_EXT = 1000288018;
const Format FORMAT_ASTC_5x5x5_SRGB_BLOCK_EXT = 1000288019;
const Format FORMAT_ASTC_5x5x5_SFLOAT_BLOCK_EXT = 1000288020;
const Format FORMAT_ASTC_6x5x5_UNORM_BLOCK_EXT = 1000288021;
const Format FORMAT_ASTC_6x5x5_SRGB_BLOCK_EXT = 1000288022;
const Format FORMAT_ASTC_6x5x5_SFLOAT_BLOCK_EXT = 1000288023;
const Format FORMAT_ASTC_6x6x5_UNORM_BLOCK_EXT = 1000288024;
const Format FORMAT_ASTC_6x6x5_SRGB_BLOCK_EXT = 1000288025;
const Format FORMAT_ASTC_6x6x5_SFLOAT_BLOCK_EXT = 1000288026;
const Format FORMAT_ASTC_6x6x6_UNORM_BLOCK_EXT = 1000288027;
const Format FORMAT_ASTC_6x6x6_SRGB_BLOCK_EXT = 1000288028;
const Format FORMAT_ASTC_6x6x6_SFLOAT_BLOCK_EXT = 1000288029;
const Format FORMAT_R16G16_SFIXED5_NV = 1000464000;
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
const StructureType STRUCTURE_TYPE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR = 1000044006;
const StructureType STRUCTURE_TYPE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT = 1000044007;
const StructureType STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_AMD = 1000044008;
const StructureType STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX = 1000044009;
const StructureType STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP = 1000049000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV = 1000050000;
const StructureType STRUCTURE_TYPE_PRIVATE_VENDOR_INFO_PLACEHOLDER_OFFSET_0_NV = 1000051000;
const StructureType STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV = 1000056000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV = 1000056001;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057001;
const StructureType STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV = 1000058000;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR = 1000060007;
const StructureType STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR = 1000060008;
const StructureType STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR = 1000060009;
const StructureType STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR = 1000060010;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR = 1000060011;
const StructureType STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR = 1000060012;
const StructureType STRUCTURE_TYPE_VALIDATION_FLAGS_EXT = 1000061000;
const StructureType STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN = 1000062000;
const StructureType STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT = 1000067000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT = 1000067001;
const StructureType STRUCTURE_TYPE_PIPELINE_ROBUSTNESS_CREATE_INFO_EXT = 1000068000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES_EXT = 1000068001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES_EXT = 1000068002;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073000;
const StructureType STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073001;
const StructureType STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR = 1000073002;
const StructureType STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR = 1000073003;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR = 1000074000;
const StructureType STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR = 1000074001;
const StructureType STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR = 1000074002;
const StructureType STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR = 1000075000;
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
const StructureType STRUCTURE_TYPE_PRESENT_REGIONS_KHR = 1000084000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV = 1000087000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT = 1000090000;
const StructureType STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT = 1000091000;
const StructureType STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT = 1000091001;
const StructureType STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT = 1000091002;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT = 1000091003;
const StructureType STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE = 1000092000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX = 1000097000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV = 1000098000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT = 100099000;
const StructureType STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT = 100099001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT = 1000101000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT = 1000101001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT = 1000102000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT = 1000102001;
const StructureType STRUCTURE_TYPE_HDR_METADATA_EXT = 1000105000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RELAXED_LINE_RASTERIZATION_FEATURES_IMG = 1000110000;
const StructureType STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR = 1000111000;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR = 1000119000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR = 1000119001;
const StructureType STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR = 1000119002;
const StructureType STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR = 1000121000;
const StructureType STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR = 1000121001;
const StructureType STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR = 1000121002;
const StructureType STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR = 1000121003;
const StructureType STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR = 1000121004;
const StructureType STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK = 1000122000;
const StructureType STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK = 1000123000;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_FEATURES_AMDX = 1000134000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ENQUEUE_PROPERTIES_AMDX = 1000134001;
const StructureType STRUCTURE_TYPE_EXECUTION_GRAPH_PIPELINE_SCRATCH_SIZE_AMDX = 1000134002;
const StructureType STRUCTURE_TYPE_EXECUTION_GRAPH_PIPELINE_CREATE_INFO_AMDX = 1000134003;
const StructureType STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_NODE_CREATE_INFO_AMDX = 1000134004;
const StructureType STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT = 1000143000;
const StructureType STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT = 1000143001;
const StructureType STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT = 1000143002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT = 1000143003;
const StructureType STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT = 1000143004;
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
const StructureType STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR = 1000347015;
const StructureType STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR = 1000347016;
const StructureType STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR = 1000347018;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR = 1000348013;
const StructureType STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV = 1000152000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV = 1000154000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV = 1000154001;
const StructureType STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT = 1000158000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT = 1000158002;
const StructureType STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT = 1000158003;
const StructureType STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT = 1000158004;
const StructureType STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158005;
const StructureType STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT = 1000158006;
const StructureType STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160000;
const StructureType STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160001;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT = 1000170000;
const StructureType STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT = 1000170001;
const StructureType STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT = 1000178000;
const StructureType STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT = 1000178001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT = 1000178002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR = 1000181000;
const StructureType STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD = 1000183000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD = 1000185000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_CAPABILITIES_KHR = 1000187000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000187001;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR = 1000187002;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_PROFILE_INFO_KHR = 1000187003;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_PICTURE_INFO_KHR = 1000187004;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_H265_DPB_SLOT_INFO_KHR = 1000187005;
const StructureType STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR = 1000188000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR = 1000188000;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR = 1000188001;
const StructureType STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD = 1000189000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT = 1000190000;
const StructureType STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP = 1000191000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV = 1000201000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV = 1000202000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV = 1000202001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV = 1000204000;
const StructureType STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV = 1000205000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV = 1000205002;
const StructureType STRUCTURE_TYPE_CHECKPOINT_DATA_NV = 1000206000;
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV = 1000206001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL = 1000209000;
const StructureType STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL = 1000210000;
const StructureType STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL = 1000210001;
const StructureType STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL = 1000210002;
const StructureType STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL = 1000210003;
const StructureType STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL = 1000210004;
const StructureType STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL = 1000210005;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT = 1000212000;
const StructureType STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD = 1000213000;
const StructureType STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD = 1000213001;
const StructureType STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA = 1000214000;
const StructureType STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT = 1000217000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT = 1000218000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT = 1000218001;
const StructureType STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT = 1000218002;
const StructureType STRUCTURE_TYPE_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR = 1000226000;
const StructureType STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR = 1000226001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR = 1000226002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR = 1000226003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR = 1000226004;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT = 1000244000;
const StructureType STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT = 1000244002;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT = 1000254000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT = 1000254001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT = 1000254002;
const StructureType STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT = 1000255000;
const StructureType STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT = 1000255002;
const StructureType STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT = 1000255001;
const StructureType STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT = 1000256000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT = 1000260000;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT = 1000281000;
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
const StructureType STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV = 1000314008;
const StructureType STRUCTURE_TYPE_CHECKPOINT_DATA_2_NV = 1000314009;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR = 1000322000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR = 1000322000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR = 1000323000;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR = 1000336000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT = 1000338000;
const StructureType STRUCTURE_TYPE_IMAGE_COMPRESSION_CONTROL_EXT = 1000338001;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT = 1000463000;
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
const StructureType STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_KHR = 1000470002;
const StructureType STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_KHR = 1000470003;
const StructureType STRUCTURE_TYPE_PIPELINE_CREATE_FLAGS_2_CREATE_INFO_KHR = 1000470005;
const StructureType STRUCTURE_TYPE_BUFFER_USAGE_FLAGS_2_CREATE_INFO_KHR = 1000470006;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_ANTI_LAG_FEATURES_AMD = 1000476000;
const StructureType STRUCTURE_TYPE_ANTI_LAG_DATA_AMD = 1000476001;
const StructureType STRUCTURE_TYPE_ANTI_LAG_PRESENTATION_INFO_AMD = 1000476002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_POSITION_FETCH_FEATURES_KHR = 1000481000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_FEATURES_EXT = 1000482000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_OBJECT_PROPERTIES_EXT = 1000482001;
const StructureType STRUCTURE_TYPE_SHADER_CREATE_INFO_EXT = 1000482002;
const StructureType STRUCTURE_TYPE_VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT = 1000482001;
const StructureType STRUCTURE_TYPE_VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT = 1000482002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM = 1000484000;
const StructureType STRUCTURE_TYPE_TILE_PROPERTIES_QCOM = 1000484001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC = 1000485000;
const StructureType STRUCTURE_TYPE_AMIGO_PROFILING_SUBMIT_INFO_SEC = 1000485001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM = 1000488000;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SCI_SYNC_POOL_CREATE_INFO_NV = 1000489000;
const StructureType STRUCTURE_TYPE_SEMAPHORE_SCI_SYNC_CREATE_INFO_NV = 1000489001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_2_FEATURES_NV = 1000489002;
const StructureType STRUCTURE_TYPE_IMPORT_FENCE_SCI_SYNC_INFO_NV = 1000489000;
const StructureType STRUCTURE_TYPE_EXPORT_FENCE_SCI_SYNC_INFO_NV = 1000489001;
const StructureType STRUCTURE_TYPE_FENCE_GET_SCI_SYNC_INFO_NV = 1000489002;
const StructureType STRUCTURE_TYPE_SCI_SYNC_ATTRIBUTES_INFO_NV = 1000489003;
const StructureType STRUCTURE_TYPE_DEVICE_SEMAPHORE_SCI_SYNC_POOL_RESERVATION_CREATE_INFO_NV = 1000489003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV = 1000490000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV = 1000490001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV = 1000492000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV = 1000492001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT = 1000494000;
const StructureType STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT = 1000494002;
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
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_CAPABILITIES_KHR = 1000512000;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_PICTURE_INFO_KHR = 1000512001;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_PROFILE_INFO_KHR = 1000512003;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000512004;
const StructureType STRUCTURE_TYPE_VIDEO_DECODE_AV1_DPB_SLOT_INFO_KHR = 1000512005;
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
const StructureType STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_KHR = 1000525001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_KHR = 1000525002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES_KHR = 1000528000;
const StructureType STRUCTURE_TYPE_SCREEN_BUFFER_PROPERTIES_QNX = 1000529000;
const StructureType STRUCTURE_TYPE_SCREEN_BUFFER_FORMAT_PROPERTIES_QNX = 1000529001;
const StructureType STRUCTURE_TYPE_IMPORT_SCREEN_BUFFER_INFO_QNX = 1000529002;
const StructureType STRUCTURE_TYPE_EXTERNAL_FORMAT_QNX = 1000529003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX = 1000529004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_DRIVER_PROPERTIES_MSFT = 1000530000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_KHR = 1000533000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_KHR = 1000534000;
const StructureType STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_KHR = 1000534001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_KHR = 1000534002;
const StructureType STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_KHR = 1000543000;
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
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAW_ACCESS_CHAINS_FEATURES_NV = 1000555000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR = 1000558000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_FEATURES_KHR = 1000562000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_7_PROPERTIES_KHR = 1000562001;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_LIST_KHR = 1000562002;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_KHR = 1000562003;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_LAYERED_API_VULKAN_PROPERTIES_KHR = 1000562004;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV = 1000563000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_REPLICATED_COMPOSITES_FEATURES_EXT = 1000564000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_VALIDATION_FEATURES_NV = 1000568000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA = 1000575000;
const StructureType STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA = 1000575001;
const StructureType STRUCTURE_TYPE_IMAGE_ALIGNMENT_CONTROL_CREATE_INFO_MESA = 1000575002;

distinct SubpassContents = inline uint;
const SubpassContents SUBPASS_CONTENTS_INLINE = 0;
const SubpassContents SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;
const SubpassContents SUBPASS_CONTENTS_INLINE_AND_SECONDARY_COMMAND_BUFFERS_KHR = 1000562000;

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
const Result ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT = -1000158000;
const Result ERROR_NOT_PERMITTED_KHR = -1000188001;
const Result ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT = -1000255000;
const Result THREAD_IDLE_KHR = 1000268000;
const Result THREAD_DONE_KHR = 1000268001;
const Result OPERATION_DEFERRED_KHR = 1000268002;
const Result OPERATION_NOT_DEFERRED_KHR = 1000268003;
const Result ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR = -1000299000;
const Result ERROR_COMPRESSION_EXHAUSTED_EXT = -1000338000;
const Result INCOMPATIBLE_SHADER_BINARY_EXT = 1000482000;

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
const DynamicState DYNAMIC_STATE_VERTEX_INPUT_EXT = 1000352000;
const DynamicState DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT = 1000377000;
const DynamicState DYNAMIC_STATE_LOGIC_OP_EXT = 1000377003;
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
const DynamicState DYNAMIC_STATE_LINE_STIPPLE_KHR = 1000534000;

distinct DescriptorUpdateTemplateType = inline uint;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1;
const DescriptorUpdateTemplateType DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1;

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
const ObjectType OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000;
const ObjectType OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000;
const ObjectType OBJECT_TYPE_VALIDATION_CACHE_EXT = 1000160000;
const ObjectType OBJECT_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000;
const ObjectType OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL = 1000210000;
const ObjectType OBJECT_TYPE_DEFERRED_OPERATION_KHR = 1000268000;
const ObjectType OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV = 1000277000;
const ObjectType OBJECT_TYPE_CUDA_MODULE_NV = 1000307000;
const ObjectType OBJECT_TYPE_CUDA_FUNCTION_NV = 1000307001;
const ObjectType OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA = 1000366000;
const ObjectType OBJECT_TYPE_MICROMAP_EXT = 1000396000;
const ObjectType OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV = 1000464000;
const ObjectType OBJECT_TYPE_SHADER_EXT = 1000482000;
const ObjectType OBJECT_TYPE_SEMAPHORE_SCI_SYNC_POOL_NV = 1000489000;

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

distinct SemaphoreType = inline uint;
const SemaphoreType SEMAPHORE_TYPE_BINARY = 0;
const SemaphoreType SEMAPHORE_TYPE_TIMELINE = 1;

distinct PresentModeKHR = inline uint;
const PresentModeKHR PRESENT_MODE_IMMEDIATE_KHR = 0;
const PresentModeKHR PRESENT_MODE_MAILBOX_KHR = 1;
const PresentModeKHR PRESENT_MODE_FIFO_KHR = 2;
const PresentModeKHR PRESENT_MODE_FIFO_RELAXED_KHR = 3;
const PresentModeKHR PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR = 1000111000;
const PresentModeKHR PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR = 1000111001;

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
const ColorSpaceKHR COLOR_SPACE_DISPLAY_NATIVE_AMD = 1000213000;

distinct TimeDomainKHR = inline uint;
const TimeDomainKHR TIME_DOMAIN_DEVICE_KHR = 0;
const TimeDomainKHR TIME_DOMAIN_CLOCK_MONOTONIC_KHR = 1;
const TimeDomainKHR TIME_DOMAIN_CLOCK_MONOTONIC_RAW_KHR = 2;
const TimeDomainKHR TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_KHR = 3;

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
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000011000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT = 1000011000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT = 1000029000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT = 1000029001;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT = 1000150000;
const DebugReportObjectTypeEXT DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000156000;
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

distinct DisplayPowerStateEXT = inline uint;
const DisplayPowerStateEXT DISPLAY_POWER_STATE_OFF_EXT = 0;
const DisplayPowerStateEXT DISPLAY_POWER_STATE_SUSPEND_EXT = 1;
const DisplayPowerStateEXT DISPLAY_POWER_STATE_ON_EXT = 2;

distinct DeviceEventTypeEXT = inline uint;
const DeviceEventTypeEXT DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0;

distinct DisplayEventTypeEXT = inline uint;
const DisplayEventTypeEXT DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0;

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

distinct SamplerReductionMode = inline uint;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MIN = 1;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_MAX = 2;
const SamplerReductionMode SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_RANGECLAMP_QCOM = 1000521000;

distinct TessellationDomainOrigin = inline uint;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0;
const TessellationDomainOrigin TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1;

distinct SamplerYcbcrModelConversion = inline uint;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3;
const SamplerYcbcrModelConversion SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4;

distinct SamplerYcbcrRange = inline uint;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_FULL = 0;
const SamplerYcbcrRange SAMPLER_YCBCR_RANGE_ITU_NARROW = 1;

distinct ChromaLocation = inline uint;
const ChromaLocation CHROMA_LOCATION_COSITED_EVEN = 0;
const ChromaLocation CHROMA_LOCATION_MIDPOINT = 1;

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

distinct QueueGlobalPriorityKHR = inline uint;
const QueueGlobalPriorityKHR QUEUE_GLOBAL_PRIORITY_LOW_KHR = 128;
const QueueGlobalPriorityKHR QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR = 256;
const QueueGlobalPriorityKHR QUEUE_GLOBAL_PRIORITY_HIGH_KHR = 512;
const QueueGlobalPriorityKHR QUEUE_GLOBAL_PRIORITY_REALTIME_KHR = 1024;

distinct ConservativeRasterizationModeEXT = inline uint;
const ConservativeRasterizationModeEXT CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0;
const ConservativeRasterizationModeEXT CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1;
const ConservativeRasterizationModeEXT CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2;

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

distinct CopyAccelerationStructureModeKHR = inline uint;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2;
const CopyAccelerationStructureModeKHR COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3;

distinct BuildAccelerationStructureModeKHR = inline uint;
const BuildAccelerationStructureModeKHR BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR = 0;
const BuildAccelerationStructureModeKHR BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR = 1;

distinct AccelerationStructureTypeKHR = inline uint;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1;
const AccelerationStructureTypeKHR ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR = 2;

distinct GeometryTypeKHR = inline uint;
const GeometryTypeKHR GEOMETRY_TYPE_TRIANGLES_KHR = 0;
const GeometryTypeKHR GEOMETRY_TYPE_AABBS_KHR = 1;
const GeometryTypeKHR GEOMETRY_TYPE_INSTANCES_KHR = 2;

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

distinct FullScreenExclusiveEXT = inline uint;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT = 0;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT = 1;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT = 2;
const FullScreenExclusiveEXT FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT = 3;

distinct PerformanceCounterScopeKHR = inline uint;
const PerformanceCounterScopeKHR PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0;
const PerformanceCounterScopeKHR PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1;
const PerformanceCounterScopeKHR PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2;

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

distinct PipelineExecutableStatisticFormatKHR = inline uint;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2;
const PipelineExecutableStatisticFormatKHR PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3;

distinct LineRasterizationModeKHR = inline uint;
const LineRasterizationModeKHR LINE_RASTERIZATION_MODE_DEFAULT_KHR = 0;
const LineRasterizationModeKHR LINE_RASTERIZATION_MODE_RECTANGULAR_KHR = 1;
const LineRasterizationModeKHR LINE_RASTERIZATION_MODE_BRESENHAM_KHR = 2;
const LineRasterizationModeKHR LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_KHR = 3;

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

distinct DeviceAddressBindingTypeEXT = inline uint;
const DeviceAddressBindingTypeEXT DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT = 0;
const DeviceAddressBindingTypeEXT DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT = 1;

distinct QueryResultStatusKHR = inline uint;
const QueryResultStatusKHR QUERY_RESULT_STATUS_ERROR_KHR = -1;
const QueryResultStatusKHR QUERY_RESULT_STATUS_NOT_READY_KHR = 0;
const QueryResultStatusKHR QUERY_RESULT_STATUS_COMPLETE_KHR = 1;
const QueryResultStatusKHR QUERY_RESULT_STATUS_INSUFFICIENT_BITSTREAM_BUFFER_RANGE_KHR = -1000299000;

distinct VideoEncodeTuningModeKHR = inline uint;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR = 0;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR = 1;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR = 2;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR = 3;
const VideoEncodeTuningModeKHR VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR = 4;

distinct PipelineRobustnessBufferBehaviorEXT = inline uint;
const PipelineRobustnessBufferBehaviorEXT PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const PipelineRobustnessBufferBehaviorEXT PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT = 1;
const PipelineRobustnessBufferBehaviorEXT PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT = 2;
const PipelineRobustnessBufferBehaviorEXT PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT = 3;

distinct PipelineRobustnessImageBehaviorEXT = inline uint;
const PipelineRobustnessImageBehaviorEXT PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const PipelineRobustnessImageBehaviorEXT PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT = 1;
const PipelineRobustnessImageBehaviorEXT PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT = 2;
const PipelineRobustnessImageBehaviorEXT PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT = 3;

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

distinct MicromapTypeEXT = inline uint;
const MicromapTypeEXT MICROMAP_TYPE_OPACITY_MICROMAP_EXT = 0;
const MicromapTypeEXT MICROMAP_TYPE_DISPLACEMENT_MICROMAP_NV = 1000397000;

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

distinct OpacityMicromapSpecialIndexEXT = inline uint;
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

distinct DisplacementMicromapFormatNV = inline uint;
const DisplacementMicromapFormatNV DISPLACEMENT_MICROMAP_FORMAT_64_TRIANGLES_64_BYTES_NV = 1;
const DisplacementMicromapFormatNV DISPLACEMENT_MICROMAP_FORMAT_256_TRIANGLES_128_BYTES_NV = 2;
const DisplacementMicromapFormatNV DISPLACEMENT_MICROMAP_FORMAT_1024_TRIANGLES_128_BYTES_NV = 3;

distinct ShaderCodeTypeEXT = inline uint;
const ShaderCodeTypeEXT SHADER_CODE_TYPE_BINARY_EXT = 0;
const ShaderCodeTypeEXT SHADER_CODE_TYPE_SPIRV_EXT = 1;

distinct ScopeKHR = inline uint;
const ScopeKHR SCOPE_DEVICE_KHR = 1;
const ScopeKHR SCOPE_WORKGROUP_KHR = 2;
const ScopeKHR SCOPE_SUBGROUP_KHR = 3;
const ScopeKHR SCOPE_QUEUE_FAMILY_KHR = 5;

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
 ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT,
 ERROR_NOT_PERMITTED_KHR,
 ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT,
 ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR,
 ERROR_COMPRESSION_EXHAUSTED_EXT,
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
struct BufferUsageFlags2CreateInfoKHR { 
   StructureType sType;
   void* pNext;
   BufferUsageFlags2KHR usage;
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
struct CopyMemoryIndirectCommandNV { 
   DeviceAddress srcAddress;
   DeviceAddress dstAddress;
   DeviceSize size;
}
struct CopyMemoryToImageIndirectCommandNV { 
   DeviceAddress srcAddress;
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
   ShaderModule module;
   char* pName;
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
struct ComputePipelineIndirectBufferInfoNV { 
   StructureType sType;
   void* pNext;
   DeviceAddress deviceAddress;
   DeviceSize size;
   DeviceAddress pipelineDeviceAddressCaptureReplay;
}
struct PipelineCreateFlags2CreateInfoKHR { 
   StructureType sType;
   void* pNext;
   PipelineCreateFlags2KHR flags;
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
struct MultiDrawInfoEXT { 
   uint firstVertex;
   uint vertexCount;
}
struct MultiDrawIndexedInfoEXT { 
   uint firstIndex;
   uint indexCount;
   int vertexOffset;
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
struct DisplayPresentInfoKHR { 
   StructureType sType;
   void* pNext;
   Rect2D srcRect;
   Rect2D dstRect;
   uint persistent;
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
struct AndroidSurfaceCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   AndroidSurfaceCreateFlagsKHR flags;
   ANativeWindow* window;
}
struct ViSurfaceCreateInfoNN { 
   StructureType sType;
   void* pNext;
   ViSurfaceCreateFlagsNN flags;
   void* window;
}
struct WaylandSurfaceCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   WaylandSurfaceCreateFlagsKHR flags;
   WDisplay* display;
   wl_surface* surface;
}
struct Win32SurfaceCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   Win32SurfaceCreateFlagsKHR flags;
   HINSTANCE hinstance;
   HWND hwnd;
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
   XDisplay* connection;
   xcb_window_t window;
}
struct DirectFBSurfaceCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   DirectFBSurfaceCreateFlagsEXT flags;
   IDirectFB* dfb;
   IDirectFBSurface* surface;
}
struct ImagePipeSurfaceCreateInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   ImagePipeSurfaceCreateFlagsFUCHSIA flags;
   ZHandle imagePipeHandle;
}
struct StreamDescriptorSurfaceCreateInfoGGP { 
   StructureType sType;
   void* pNext;
   StreamDescriptorSurfaceCreateFlagsGGP flags;
   GgpStreamDescriptor streamDescriptor;
}
struct ScreenSurfaceCreateInfoQNX { 
   StructureType sType;
   void* pNext;
   ScreenSurfaceCreateFlagsQNX flags;
   _screen_context* context;
   _screen_window* window;
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
struct ValidationFlagsEXT { 
   StructureType sType;
   void* pNext;
   uint disabledValidationCheckCount;
   ValidationCheckEXT* pDisabledValidationChecks;
}
struct ValidationFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint enabledValidationFeatureCount;
   ValidationFeatureEnableEXT* pEnabledValidationFeatures;
   uint disabledValidationFeatureCount;
   ValidationFeatureDisableEXT* pDisabledValidationFeatures;
}
struct LayerSettingsCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint settingCount;
   LayerSettingEXT* pSettings;
}
struct LayerSettingEXT { 
   char* pLayerName;
   char* pSettingName;
   LayerSettingTypeEXT type;
   uint valueCount;
   void* pValues;
}
struct ApplicationParametersEXT { 
   StructureType sType;
   void* pNext;
   uint vendorID;
   uint deviceID;
   uint key;
   ulong value;
}
struct PipelineRasterizationStateRasterizationOrderAMD { 
   StructureType sType;
   void* pNext;
   RasterizationOrderAMD rasterizationOrder;
}
struct DebugMarkerObjectNameInfoEXT { 
   StructureType sType;
   void* pNext;
   DebugReportObjectTypeEXT objectType;
   ulong object;
   char* pObjectName;
}
struct DebugMarkerObjectTagInfoEXT { 
   StructureType sType;
   void* pNext;
   DebugReportObjectTypeEXT objectType;
   ulong object;
   ulong tagName;
   usz tagSize;
   void* pTag;
}
struct DebugMarkerMarkerInfoEXT { 
   StructureType sType;
   void* pNext;
   char* pMarkerName;
   float[4] color;
}
struct DedicatedAllocationImageCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint dedicatedAllocation;
}
struct DedicatedAllocationBufferCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint dedicatedAllocation;
}
struct DedicatedAllocationMemoryAllocateInfoNV { 
   StructureType sType;
   void* pNext;
   Image image;
   Buffer buffer;
}
struct ExternalImageFormatPropertiesNV { 
   ImageFormatProperties imageFormatProperties;
   ExternalMemoryFeatureFlagsNV externalMemoryFeatures;
   ExternalMemoryHandleTypeFlagsNV exportFromImportedHandleTypes;
   ExternalMemoryHandleTypeFlagsNV compatibleHandleTypes;
}
struct ExternalMemoryImageCreateInfoNV { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagsNV handleTypes;
}
struct ExportMemoryAllocateInfoNV { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagsNV handleTypes;
}
struct ImportMemoryWin32HandleInfoNV { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagsNV handleType;
   void* handle;
}
struct ExportMemoryWin32HandleInfoNV { 
   StructureType sType;
   void* pNext;
   SECURITY_ATTRIBUTES* pAttributes;
   DWORD dwAccess;
}
struct ExportMemorySciBufInfoNV { 
   StructureType sType;
   void* pNext;
   NvSciBufAttrList pAttributes;
}
struct ImportMemorySciBufInfoNV { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagBits handleType;
   NvSciBufObj handle;
}
struct MemoryGetSciBufInfoNV { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   ExternalMemoryHandleTypeFlagBits handleType;
}
struct MemorySciBufPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint memoryTypeBits;
}
struct PhysicalDeviceExternalMemorySciBufFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint sciBufImport;
   uint sciBufExport;
}
struct Win32KeyedMutexAcquireReleaseInfoNV { 
   StructureType sType;
   void* pNext;
   uint acquireCount;
   DeviceMemory* pAcquireSyncs;
   ulong* pAcquireKeys;
   uint* pAcquireTimeoutMilliseconds;
   uint releaseCount;
   DeviceMemory* pReleaseSyncs;
   ulong* pReleaseKeys;
}
struct PhysicalDeviceDeviceGeneratedCommandsFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint deviceGeneratedCommands;
}
struct PhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint deviceGeneratedCompute;
   uint deviceGeneratedComputePipelines;
   uint deviceGeneratedComputeCaptureReplay;
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
struct PhysicalDeviceDeviceGeneratedCommandsPropertiesNV { 
   StructureType sType;
   void* pNext;
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
struct PhysicalDeviceMultiDrawPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxMultiDrawCount;
}
struct GraphicsShaderGroupCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint stageCount;
   PipelineShaderStageCreateInfo* pStages;
   PipelineVertexInputStateCreateInfo* pVertexInputState;
   PipelineTessellationStateCreateInfo* pTessellationState;
}
struct GraphicsPipelineShaderGroupsCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint groupCount;
   GraphicsShaderGroupCreateInfoNV* pGroups;
   uint pipelineCount;
   Pipeline* pPipelines;
}
struct BindShaderGroupIndirectCommandNV { 
   uint groupIndex;
}
struct BindIndexBufferIndirectCommandNV { 
   DeviceAddress bufferAddress;
   uint size;
   IndexType indexType;
}
struct BindVertexBufferIndirectCommandNV { 
   DeviceAddress bufferAddress;
   uint size;
   uint stride;
}
struct SetStateFlagsIndirectCommandNV { 
   uint data;
}
struct IndirectCommandsStreamNV { 
   Buffer buffer;
   DeviceSize offset;
}
struct IndirectCommandsLayoutTokenNV { 
   StructureType sType;
   void* pNext;
   IndirectCommandsTokenTypeNV tokenType;
   uint stream;
   uint offset;
   uint vertexBindingUnit;
   uint vertexDynamicStride;
   PipelineLayout pushconstantPipelineLayout;
   ShaderStageFlags pushconstantShaderStageFlags;
   uint pushconstantOffset;
   uint pushconstantSize;
   IndirectStateFlagsNV indirectStateFlags;
   uint indexTypeCount;
   IndexType* pIndexTypes;
   uint* pIndexTypeValues;
}
struct IndirectCommandsLayoutCreateInfoNV { 
   StructureType sType;
   void* pNext;
   IndirectCommandsLayoutUsageFlagsNV flags;
   PipelineBindPoint pipelineBindPoint;
   uint tokenCount;
   IndirectCommandsLayoutTokenNV* pTokens;
   uint streamCount;
   uint* pStreamStrides;
}
struct GeneratedCommandsInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineBindPoint pipelineBindPoint;
   Pipeline pipeline;
   IndirectCommandsLayoutNV indirectCommandsLayout;
   uint streamCount;
   IndirectCommandsStreamNV* pStreams;
   uint sequencesCount;
   Buffer preprocessBuffer;
   DeviceSize preprocessOffset;
   DeviceSize preprocessSize;
   Buffer sequencesCountBuffer;
   DeviceSize sequencesCountOffset;
   Buffer sequencesIndexBuffer;
   DeviceSize sequencesIndexOffset;
}
struct GeneratedCommandsMemoryRequirementsInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineBindPoint pipelineBindPoint;
   Pipeline pipeline;
   IndirectCommandsLayoutNV indirectCommandsLayout;
   uint maxSequencesCount;
}
struct PipelineIndirectDeviceAddressInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineBindPoint pipelineBindPoint;
   Pipeline pipeline;
}
struct BindPipelineIndirectCommandNV { 
   DeviceAddress pipelineAddress;
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
struct PresentRegionsKHR { 
   StructureType sType;
   void* pNext;
   uint swapchainCount;
   PresentRegionKHR* pRegions;
}
struct PresentRegionKHR { 
   uint rectangleCount;
   RectLayerKHR* pRectangles;
}
struct RectLayerKHR { 
   Offset2D offset;
   Extent2D extent;
   uint layer;
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
struct ImportMemoryWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagBits handleType;
   void* handle;
   LPCWSTR name;
}
struct ExportMemoryWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   SECURITY_ATTRIBUTES* pAttributes;
   DWORD dwAccess;
   LPCWSTR name;
}
struct ImportMemoryZirconHandleInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagBits handleType;
   ZHandle handle;
}
struct MemoryZirconHandlePropertiesFUCHSIA { 
   StructureType sType;
   void* pNext;
   uint memoryTypeBits;
}
struct MemoryGetZirconHandleInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   ExternalMemoryHandleTypeFlagBits handleType;
}
struct MemoryWin32HandlePropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint memoryTypeBits;
}
struct MemoryGetWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   ExternalMemoryHandleTypeFlagBits handleType;
}
struct ImportMemoryFdInfoKHR { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagBits handleType;
   int fd;
}
struct MemoryFdPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint memoryTypeBits;
}
struct MemoryGetFdInfoKHR { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   ExternalMemoryHandleTypeFlagBits handleType;
}
struct Win32KeyedMutexAcquireReleaseInfoKHR { 
   StructureType sType;
   void* pNext;
   uint acquireCount;
   DeviceMemory* pAcquireSyncs;
   ulong* pAcquireKeys;
   uint* pAcquireTimeouts;
   uint releaseCount;
   DeviceMemory* pReleaseSyncs;
   ulong* pReleaseKeys;
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
struct ImportSemaphoreWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   SemaphoreImportFlags flags;
   ExternalSemaphoreHandleTypeFlagBits handleType;
   void* handle;
   LPCWSTR name;
}
struct ExportSemaphoreWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   SECURITY_ATTRIBUTES* pAttributes;
   DWORD dwAccess;
   LPCWSTR name;
}
struct D3D12FenceSubmitInfoKHR { 
   StructureType sType;
   void* pNext;
   uint waitSemaphoreValuesCount;
   ulong* pWaitSemaphoreValues;
   uint signalSemaphoreValuesCount;
   ulong* pSignalSemaphoreValues;
}
struct SemaphoreGetWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   ExternalSemaphoreHandleTypeFlagBits handleType;
}
struct ImportSemaphoreFdInfoKHR { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   SemaphoreImportFlags flags;
   ExternalSemaphoreHandleTypeFlagBits handleType;
   int fd;
}
struct SemaphoreGetFdInfoKHR { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   ExternalSemaphoreHandleTypeFlagBits handleType;
}
struct ImportSemaphoreZirconHandleInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   SemaphoreImportFlags flags;
   ExternalSemaphoreHandleTypeFlagBits handleType;
   ZHandle zirconHandle;
}
struct SemaphoreGetZirconHandleInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   ExternalSemaphoreHandleTypeFlagBits handleType;
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
struct ImportFenceWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   Fence fence;
   FenceImportFlags flags;
   ExternalFenceHandleTypeFlagBits handleType;
   void* handle;
   LPCWSTR name;
}
struct ExportFenceWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   SECURITY_ATTRIBUTES* pAttributes;
   DWORD dwAccess;
   LPCWSTR name;
}
struct FenceGetWin32HandleInfoKHR { 
   StructureType sType;
   void* pNext;
   Fence fence;
   ExternalFenceHandleTypeFlagBits handleType;
}
struct ImportFenceFdInfoKHR { 
   StructureType sType;
   void* pNext;
   Fence fence;
   FenceImportFlags flags;
   ExternalFenceHandleTypeFlagBits handleType;
   int fd;
}
struct FenceGetFdInfoKHR { 
   StructureType sType;
   void* pNext;
   Fence fence;
   ExternalFenceHandleTypeFlagBits handleType;
}
struct ExportFenceSciSyncInfoNV { 
   StructureType sType;
   void* pNext;
   NvSciSyncAttrList pAttributes;
}
struct ImportFenceSciSyncInfoNV { 
   StructureType sType;
   void* pNext;
   Fence fence;
   ExternalFenceHandleTypeFlagBits handleType;
   void* handle;
}
struct FenceGetSciSyncInfoNV { 
   StructureType sType;
   void* pNext;
   Fence fence;
   ExternalFenceHandleTypeFlagBits handleType;
}
struct ExportSemaphoreSciSyncInfoNV { 
   StructureType sType;
   void* pNext;
   NvSciSyncAttrList pAttributes;
}
struct ImportSemaphoreSciSyncInfoNV { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   ExternalSemaphoreHandleTypeFlagBits handleType;
   void* handle;
}
struct SemaphoreGetSciSyncInfoNV { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   ExternalSemaphoreHandleTypeFlagBits handleType;
}
struct SciSyncAttributesInfoNV { 
   StructureType sType;
   void* pNext;
   SciSyncClientTypeNV clientType;
   SciSyncPrimitiveTypeNV primitiveType;
}
struct PhysicalDeviceExternalSciSyncFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint sciSyncFence;
   uint sciSyncSemaphore;
   uint sciSyncImport;
   uint sciSyncExport;
}
struct PhysicalDeviceExternalSciSync2FeaturesNV { 
   StructureType sType;
   void* pNext;
   uint sciSyncFence;
   uint sciSyncSemaphore2;
   uint sciSyncImport;
   uint sciSyncExport;
}
struct SemaphoreSciSyncPoolCreateInfoNV { 
   StructureType sType;
   void* pNext;
   NvSciSyncObj handle;
}
struct SemaphoreSciSyncCreateInfoNV { 
   StructureType sType;
   void* pNext;
   SemaphoreSciSyncPoolNV semaphorePool;
   NvSciSyncFence* pFence;
}
struct DeviceSemaphoreSciSyncPoolReservationCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint semaphoreSciSyncPoolRequestCount;
}
struct PhysicalDeviceMultiviewFeatures { 
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
struct SurfaceCapabilities2EXT { 
   StructureType sType;
   void* pNext;
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
   SurfaceCounterFlagsEXT supportedSurfaceCounters;
}
struct DisplayPowerInfoEXT { 
   StructureType sType;
   void* pNext;
   DisplayPowerStateEXT powerState;
}
struct DeviceEventInfoEXT { 
   StructureType sType;
   void* pNext;
   DeviceEventTypeEXT deviceEvent;
}
struct DisplayEventInfoEXT { 
   StructureType sType;
   void* pNext;
   DisplayEventTypeEXT displayEvent;
}
struct SwapchainCounterCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   SurfaceCounterFlagsEXT surfaceCounters;
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
struct DeviceGroupPresentCapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   uint[MAX_DEVICE_GROUP_SIZE] presentMask;
   DeviceGroupPresentModeFlagsKHR modes;
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
struct DeviceGroupPresentInfoKHR { 
   StructureType sType;
   void* pNext;
   uint swapchainCount;
   uint* pDeviceMasks;
   DeviceGroupPresentModeFlagBitsKHR mode;
}
struct DeviceGroupDeviceCreateInfo { 
   StructureType sType;
   void* pNext;
   uint physicalDeviceCount;
   PhysicalDevice* pPhysicalDevices;
}
struct DeviceGroupSwapchainCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   DeviceGroupPresentModeFlagsKHR modes;
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
struct XYColorEXT { 
   float x;
   float y;
}
struct PhysicalDevicePresentIdFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint presentId;
}
struct PresentIdKHR { 
   StructureType sType;
   void* pNext;
   uint swapchainCount;
   ulong* pPresentIds;
}
struct PhysicalDevicePresentWaitFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint presentWait;
}
struct HdrMetadataEXT { 
   StructureType sType;
   void* pNext;
   XYColorEXT displayPrimaryRed;
   XYColorEXT displayPrimaryGreen;
   XYColorEXT displayPrimaryBlue;
   XYColorEXT whitePoint;
   float maxLuminance;
   float minLuminance;
   float maxContentLightLevel;
   float maxFrameAverageLightLevel;
}
struct DisplayNativeHdrSurfaceCapabilitiesAMD { 
   StructureType sType;
   void* pNext;
   uint localDimmingSupport;
}
struct SwapchainDisplayNativeHdrCreateInfoAMD { 
   StructureType sType;
   void* pNext;
   uint localDimmingEnable;
}
struct RefreshCycleDurationGOOGLE { 
   ulong refreshDuration;
}
struct PastPresentationTimingGOOGLE { 
   uint presentID;
   ulong desiredPresentTime;
   ulong actualPresentTime;
   ulong earliestPresentTime;
   ulong presentMargin;
}
struct PresentTimesInfoGOOGLE { 
   StructureType sType;
   void* pNext;
   uint swapchainCount;
   PresentTimeGOOGLE* pTimes;
}
struct PresentTimeGOOGLE { 
   uint presentID;
   ulong desiredPresentTime;
}
struct IOSSurfaceCreateInfoMVK { 
   StructureType sType;
   void* pNext;
   IOSSurfaceCreateFlagsMVK flags;
   void* pView;
}
struct MacOSSurfaceCreateInfoMVK { 
   StructureType sType;
   void* pNext;
   MacOSSurfaceCreateFlagsMVK flags;
   void* pView;
}
struct MetalSurfaceCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   MetalSurfaceCreateFlagsEXT flags;
   CAMetalLayer* pLayer;
}
struct ViewportWScalingNV { 
   float xcoeff;
   float ycoeff;
}
struct PipelineViewportWScalingStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint viewportWScalingEnable;
   uint viewportCount;
   ViewportWScalingNV* pViewportWScalings;
}
struct ViewportSwizzleNV { 
   ViewportCoordinateSwizzleNV x;
   ViewportCoordinateSwizzleNV y;
   ViewportCoordinateSwizzleNV z;
   ViewportCoordinateSwizzleNV w;
}
struct PipelineViewportSwizzleStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineViewportSwizzleStateCreateFlagsNV flags;
   uint viewportCount;
   ViewportSwizzleNV* pViewportSwizzles;
}
struct PhysicalDeviceDiscardRectanglePropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxDiscardRectangles;
}
struct PipelineDiscardRectangleStateCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   PipelineDiscardRectangleStateCreateFlagsEXT flags;
   DiscardRectangleModeEXT discardRectangleMode;
   uint discardRectangleCount;
   Rect2D* pDiscardRectangles;
}
struct PhysicalDeviceMultiviewPerViewAttributesPropertiesNVX { 
   StructureType sType;
   void* pNext;
   uint perViewPositionAllComponents;
}
struct InputAttachmentAspectReference { 
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
struct PhysicalDeviceSurfaceInfo2KHR { 
   StructureType sType;
   void* pNext;
   SurfaceKHR surface;
}
struct SurfaceCapabilities2KHR { 
   StructureType sType;
   void* pNext;
   SurfaceCapabilitiesKHR surfaceCapabilities;
}
struct SurfaceFormat2KHR { 
   StructureType sType;
   void* pNext;
   SurfaceFormatKHR surfaceFormat;
}
struct DisplayProperties2KHR { 
   StructureType sType;
   void* pNext;
   DisplayPropertiesKHR displayProperties;
}
struct DisplayPlaneProperties2KHR { 
   StructureType sType;
   void* pNext;
   DisplayPlanePropertiesKHR displayPlaneProperties;
}
struct DisplayModeProperties2KHR { 
   StructureType sType;
   void* pNext;
   DisplayModePropertiesKHR displayModeProperties;
}
struct DisplayPlaneInfo2KHR { 
   StructureType sType;
   void* pNext;
   DisplayModeKHR mode;
   uint planeIndex;
}
struct DisplayPlaneCapabilities2KHR { 
   StructureType sType;
   void* pNext;
   DisplayPlaneCapabilitiesKHR capabilities;
}
struct SharedPresentSurfaceCapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   ImageUsageFlags sharedPresentSupportedUsageFlags;
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
struct ImageViewSlicedCreateInfoEXT { 
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
struct TextureLODGatherFormatPropertiesAMD { 
   StructureType sType;
   void* pNext;
   uint supportsTextureGatherLODBiasAMD;
}
struct ConditionalRenderingBeginInfoEXT { 
   StructureType sType;
   void* pNext;
   Buffer buffer;
   DeviceSize offset;
   ConditionalRenderingFlagsEXT flags;
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
struct PipelineCoverageToColorStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineCoverageToColorStateCreateFlagsNV flags;
   uint coverageToColorEnable;
   uint coverageToColorLocation;
}
struct PhysicalDeviceSamplerFilterMinmaxProperties { 
   StructureType sType;
   void* pNext;
   uint filterMinmaxSingleComponentFormats;
   uint filterMinmaxImageComponentMapping;
}
struct SampleLocationEXT { 
   float x;
   float y;
}
struct SampleLocationsInfoEXT { 
   StructureType sType;
   void* pNext;
   SampleCountFlagBits sampleLocationsPerPixel;
   Extent2D sampleLocationGridSize;
   uint sampleLocationsCount;
   SampleLocationEXT* pSampleLocations;
}
struct AttachmentSampleLocationsEXT { 
   uint attachmentIndex;
   SampleLocationsInfoEXT sampleLocationsInfo;
}
struct SubpassSampleLocationsEXT { 
   uint subpassIndex;
   SampleLocationsInfoEXT sampleLocationsInfo;
}
struct RenderPassSampleLocationsBeginInfoEXT { 
   StructureType sType;
   void* pNext;
   uint attachmentInitialSampleLocationsCount;
   AttachmentSampleLocationsEXT* pAttachmentInitialSampleLocations;
   uint postSubpassSampleLocationsCount;
   SubpassSampleLocationsEXT* pPostSubpassSampleLocations;
}
struct PipelineSampleLocationsStateCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint sampleLocationsEnable;
   SampleLocationsInfoEXT sampleLocationsInfo;
}
struct PhysicalDeviceSampleLocationsPropertiesEXT { 
   StructureType sType;
   void* pNext;
   SampleCountFlags sampleLocationSampleCounts;
   Extent2D maxSampleLocationGridSize;
   float[2] sampleLocationCoordinateRange;
   uint sampleLocationSubPixelBits;
   uint variableSampleLocations;
}
struct MultisamplePropertiesEXT { 
   StructureType sType;
   void* pNext;
   Extent2D maxSampleLocationGridSize;
}
struct SamplerReductionModeCreateInfo { 
   StructureType sType;
   void* pNext;
   SamplerReductionMode reductionMode;
}
struct PhysicalDeviceBlendOperationAdvancedFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint advancedBlendCoherentOperations;
}
struct PhysicalDeviceMultiDrawFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint multiDraw;
}
struct PhysicalDeviceBlendOperationAdvancedPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint advancedBlendMaxColorAttachments;
   uint advancedBlendIndependentBlend;
   uint advancedBlendNonPremultipliedSrcColor;
   uint advancedBlendNonPremultipliedDstColor;
   uint advancedBlendCorrelatedOverlap;
   uint advancedBlendAllOperations;
}
struct PipelineColorBlendAdvancedStateCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint srcPremultiplied;
   uint dstPremultiplied;
   BlendOverlapEXT blendOverlap;
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
struct PipelineCoverageModulationStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineCoverageModulationStateCreateFlagsNV flags;
   CoverageModulationModeNV coverageModulationMode;
   uint coverageModulationTableEnable;
   uint coverageModulationTableCount;
   float* pCoverageModulationTable;
}
struct ImageFormatListCreateInfo { 
   StructureType sType;
   void* pNext;
   uint viewFormatCount;
   Format* pViewFormats;
}
struct ValidationCacheCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ValidationCacheCreateFlagsEXT flags;
   usz initialDataSize;
   void* pInitialData;
}
struct ShaderModuleValidationCacheCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ValidationCacheEXT validationCache;
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
struct PhysicalDeviceMaintenance5FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint maintenance5;
}
struct PhysicalDeviceMaintenance5PropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint earlyFragmentMultisampleCoverageAfterSampleCounting;
   uint earlyFragmentSampleMaskTestBeforeSampleCounting;
   uint depthStencilSwizzleOneSupport;
   uint polygonModePointSize;
   uint nonStrictSinglePixelWideLinesUseParallelogram;
   uint nonStrictWideLinesUseParallelogram;
}
struct PhysicalDeviceMaintenance6FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint maintenance6;
}
struct PhysicalDeviceMaintenance6PropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint blockTexelViewCompatibleMultipleLayers;
   uint maxCombinedImageSamplerDescriptorCount;
   uint fragmentShadingRateClampCombinerInputs;
}
struct PhysicalDeviceMaintenance7FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint maintenance7;
}
struct PhysicalDeviceMaintenance7PropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint robustFragmentShadingRateAttachmentAccess;
   uint separateDepthStencilAttachmentAccess;
   uint maxDescriptorSetTotalUniformBuffersDynamic;
   uint maxDescriptorSetTotalStorageBuffersDynamic;
   uint maxDescriptorSetTotalBuffersDynamic;
   uint maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic;
   uint maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic;
   uint maxDescriptorSetUpdateAfterBindTotalBuffersDynamic;
}
struct PhysicalDeviceLayeredApiPropertiesListKHR { 
   StructureType sType;
   void* pNext;
   uint layeredApiCount;
   PhysicalDeviceLayeredApiPropertiesKHR* pLayeredApis;
}
struct PhysicalDeviceLayeredApiPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint vendorID;
   uint deviceID;
   PhysicalDeviceLayeredApiKHR layeredAPI;
   char[MAX_PHYSICAL_DEVICE_NAME_SIZE] deviceName;
}
struct PhysicalDeviceLayeredApiVulkanPropertiesKHR { 
   StructureType sType;
   void* pNext;
   PhysicalDeviceProperties2 properties;
}
struct RenderingAreaInfoKHR { 
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
struct NativeBufferUsage2ANDROID { 
   ulong consumer;
   ulong producer;
}
struct NativeBufferANDROID { 
   StructureType sType;
   void* pNext;
   void* handle;
   int stride;
   int format;
   int usage;
   NativeBufferUsage2ANDROID usage2;
}
struct SwapchainImageCreateInfoANDROID { 
   StructureType sType;
   void* pNext;
   SwapchainImageUsageFlagsANDROID usage;
}
struct PhysicalDevicePresentationPropertiesANDROID { 
   StructureType sType;
   void* pNext;
   uint sharedImage;
}
struct ShaderResourceUsageAMD { 
   uint numUsedVgprs;
   uint numUsedSgprs;
   uint ldsSizePerLocalWorkGroup;
   usz ldsUsageSizeInBytes;
   usz scratchMemUsageInBytes;
}
struct ShaderStatisticsInfoAMD { 
   ShaderStageFlags shaderStageMask;
   ShaderResourceUsageAMD resourceUsage;
   uint numPhysicalVgprs;
   uint numPhysicalSgprs;
   uint numAvailableVgprs;
   uint numAvailableSgprs;
   uint[3] computeWorkGroupSize;
}
struct DeviceQueueGlobalPriorityCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   QueueGlobalPriorityKHR globalPriority;
}
struct PhysicalDeviceGlobalPriorityQueryFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint globalPriorityQuery;
}
struct QueueFamilyGlobalPriorityPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint priorityCount;
   QueueGlobalPriorityKHR[MAX_GLOBAL_PRIORITY_SIZE_KHR] priorities;
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
struct PhysicalDeviceDeviceMemoryReportFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint deviceMemoryReport;
}
struct DeviceDeviceMemoryReportCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   DeviceMemoryReportFlagsEXT flags;
   PFN_vkDeviceMemoryReportCallbackEXT pfnUserCallback;
   void* pUserData;
}
struct DeviceMemoryReportCallbackDataEXT { 
   StructureType sType;
   void* pNext;
   DeviceMemoryReportFlagsEXT flags;
   DeviceMemoryReportEventTypeEXT type;
   ulong memoryObjectId;
   DeviceSize size;
   ObjectType objectType;
   ulong objectHandle;
   uint heapIndex;
}
struct ImportMemoryHostPointerInfoEXT { 
   StructureType sType;
   void* pNext;
   ExternalMemoryHandleTypeFlagBits handleType;
   void* pHostPointer;
}
struct MemoryHostPointerPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint memoryTypeBits;
}
struct PhysicalDeviceExternalMemoryHostPropertiesEXT { 
   StructureType sType;
   void* pNext;
   DeviceSize minImportedHostPointerAlignment;
}
struct PhysicalDeviceConservativeRasterizationPropertiesEXT { 
   StructureType sType;
   void* pNext;
   float primitiveOverestimationSize;
   float maxExtraPrimitiveOverestimationSize;
   float extraPrimitiveOverestimationSizeGranularity;
   uint primitiveUnderestimation;
   uint conservativePointAndLineRasterization;
   uint degenerateTrianglesRasterized;
   uint degenerateLinesRasterized;
   uint fullyCoveredFragmentShaderInputVariable;
   uint conservativeRasterizationPostDepthCoverage;
}
struct CalibratedTimestampInfoKHR { 
   StructureType sType;
   void* pNext;
   TimeDomainKHR timeDomain;
}
struct PhysicalDeviceShaderCorePropertiesAMD { 
   StructureType sType;
   void* pNext;
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
struct PhysicalDeviceShaderCoreProperties2AMD { 
   StructureType sType;
   void* pNext;
   ShaderCorePropertiesFlagsAMD shaderCoreFeatures;
   uint activeComputeUnitCount;
}
struct PipelineRasterizationConservativeStateCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   PipelineRasterizationConservativeStateCreateFlagsEXT flags;
   ConservativeRasterizationModeEXT conservativeRasterizationMode;
   float extraPrimitiveOverestimationSize;
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
struct SubpassBeginInfo { 
   StructureType sType;
   void* pNext;
   SubpassContents contents;
}
struct SubpassEndInfo { 
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
struct VertexInputBindingDivisorDescriptionKHR { 
   uint binding;
   uint divisor;
}
struct PipelineVertexInputDivisorStateCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint vertexBindingDivisorCount;
   VertexInputBindingDivisorDescriptionKHR* pVertexBindingDivisors;
}
struct PhysicalDeviceVertexAttributeDivisorPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxVertexAttribDivisor;
}
struct PhysicalDeviceVertexAttributeDivisorPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint maxVertexAttribDivisor;
   uint supportsNonZeroFirstInstance;
}
struct PhysicalDevicePCIBusInfoPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint pciDomain;
   uint pciBus;
   uint pciDevice;
   uint pciFunction;
}
struct ImportAndroidHardwareBufferInfoANDROID { 
   StructureType sType;
   void* pNext;
   AHardwareBuffer* buffer;
}
struct AndroidHardwareBufferUsageANDROID { 
   StructureType sType;
   void* pNext;
   ulong androidHardwareBufferUsage;
}
struct AndroidHardwareBufferPropertiesANDROID { 
   StructureType sType;
   void* pNext;
   DeviceSize allocationSize;
   uint memoryTypeBits;
}
struct MemoryGetAndroidHardwareBufferInfoANDROID { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
}
struct AndroidHardwareBufferFormatPropertiesANDROID { 
   StructureType sType;
   void* pNext;
   Format format;
   ulong externalFormat;
   FormatFeatureFlags formatFeatures;
   ComponentMapping samplerYcbcrConversionComponents;
   SamplerYcbcrModelConversion suggestedYcbcrModel;
   SamplerYcbcrRange suggestedYcbcrRange;
   ChromaLocation suggestedXChromaOffset;
   ChromaLocation suggestedYChromaOffset;
}
struct CommandBufferInheritanceConditionalRenderingInfoEXT { 
   StructureType sType;
   void* pNext;
   uint conditionalRenderingEnable;
}
struct ExternalFormatANDROID { 
   StructureType sType;
   void* pNext;
   ulong externalFormat;
}
struct PhysicalDevice8BitStorageFeatures { 
   StructureType sType;
   void* pNext;
   uint storageBuffer8BitAccess;
   uint uniformAndStorageBuffer8BitAccess;
   uint storagePushConstant8;
}
struct PhysicalDeviceConditionalRenderingFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint conditionalRendering;
   uint inheritedConditionalRendering;
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
struct PhysicalDeviceShaderAtomicFloatFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderBufferFloat32Atomics;
   uint shaderBufferFloat32AtomicAdd;
   uint shaderBufferFloat64Atomics;
   uint shaderBufferFloat64AtomicAdd;
   uint shaderSharedFloat32Atomics;
   uint shaderSharedFloat32AtomicAdd;
   uint shaderSharedFloat64Atomics;
   uint shaderSharedFloat64AtomicAdd;
   uint shaderImageFloat32Atomics;
   uint shaderImageFloat32AtomicAdd;
   uint sparseImageFloat32Atomics;
   uint sparseImageFloat32AtomicAdd;
}
struct PhysicalDeviceShaderAtomicFloat2FeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderBufferFloat16Atomics;
   uint shaderBufferFloat16AtomicAdd;
   uint shaderBufferFloat16AtomicMinMax;
   uint shaderBufferFloat32AtomicMinMax;
   uint shaderBufferFloat64AtomicMinMax;
   uint shaderSharedFloat16Atomics;
   uint shaderSharedFloat16AtomicAdd;
   uint shaderSharedFloat16AtomicMinMax;
   uint shaderSharedFloat32AtomicMinMax;
   uint shaderSharedFloat64AtomicMinMax;
   uint shaderImageFloat32AtomicMinMax;
   uint sparseImageFloat32AtomicMinMax;
}
struct PhysicalDeviceVertexAttributeDivisorFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint vertexAttributeInstanceRateDivisor;
   uint vertexAttributeInstanceRateZeroDivisor;
}
struct QueueFamilyCheckpointPropertiesNV { 
   StructureType sType;
   void* pNext;
   PipelineStageFlags checkpointExecutionStageMask;
}
struct CheckpointDataNV { 
   StructureType sType;
   void* pNext;
   PipelineStageFlagBits stage;
   void* pCheckpointMarker;
}
struct PhysicalDeviceDepthStencilResolveProperties { 
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
struct ImageViewASTCDecodeModeEXT { 
   StructureType sType;
   void* pNext;
   Format decodeMode;
}
struct PhysicalDeviceASTCDecodeFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint decodeModeSharedExponent;
}
struct PhysicalDeviceTransformFeedbackFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint transformFeedback;
   uint geometryStreams;
}
struct PhysicalDeviceTransformFeedbackPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxTransformFeedbackStreams;
   uint maxTransformFeedbackBuffers;
   DeviceSize maxTransformFeedbackBufferSize;
   uint maxTransformFeedbackStreamDataSize;
   uint maxTransformFeedbackBufferDataSize;
   uint maxTransformFeedbackBufferDataStride;
   uint transformFeedbackQueries;
   uint transformFeedbackStreamsLinesTriangles;
   uint transformFeedbackRasterizationStreamSelect;
   uint transformFeedbackDraw;
}
struct PipelineRasterizationStateStreamCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   PipelineRasterizationStateStreamCreateFlagsEXT flags;
   uint rasterizationStream;
}
struct PhysicalDeviceRepresentativeFragmentTestFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint representativeFragmentTest;
}
struct PipelineRepresentativeFragmentTestStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint representativeFragmentTestEnable;
}
struct PhysicalDeviceExclusiveScissorFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint exclusiveScissor;
}
struct PipelineViewportExclusiveScissorStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint exclusiveScissorCount;
   Rect2D* pExclusiveScissors;
}
struct PhysicalDeviceCornerSampledImageFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint cornerSampledImage;
}
struct PhysicalDeviceComputeShaderDerivativesFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint computeDerivativeGroupQuads;
   uint computeDerivativeGroupLinear;
}
struct PhysicalDeviceShaderImageFootprintFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint imageFootprint;
}
struct PhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint dedicatedAllocationImageAliasing;
}
struct PhysicalDeviceCopyMemoryIndirectFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint indirectCopy;
}
struct PhysicalDeviceCopyMemoryIndirectPropertiesNV { 
   StructureType sType;
   void* pNext;
   QueueFlags supportedQueues;
}
struct PhysicalDeviceMemoryDecompressionFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint memoryDecompression;
}
struct PhysicalDeviceMemoryDecompressionPropertiesNV { 
   StructureType sType;
   void* pNext;
   MemoryDecompressionMethodFlagsNV decompressionMethods;
   ulong maxDecompressionIndirectCount;
}
struct ShadingRatePaletteNV { 
   uint shadingRatePaletteEntryCount;
   ShadingRatePaletteEntryNV* pShadingRatePaletteEntries;
}
struct PipelineViewportShadingRateImageStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint shadingRateImageEnable;
   uint viewportCount;
   ShadingRatePaletteNV* pShadingRatePalettes;
}
struct PhysicalDeviceShadingRateImageFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint shadingRateImage;
   uint shadingRateCoarseSampleOrder;
}
struct PhysicalDeviceShadingRateImagePropertiesNV { 
   StructureType sType;
   void* pNext;
   Extent2D shadingRateTexelSize;
   uint shadingRatePaletteSize;
   uint shadingRateMaxCoarseSamples;
}
struct PhysicalDeviceInvocationMaskFeaturesHUAWEI { 
   StructureType sType;
   void* pNext;
   uint invocationMask;
}
struct CoarseSampleLocationNV { 
   uint pixelX;
   uint pixelY;
   uint sample;
}
struct CoarseSampleOrderCustomNV { 
   ShadingRatePaletteEntryNV shadingRate;
   uint sampleCount;
   uint sampleLocationCount;
   CoarseSampleLocationNV* pSampleLocations;
}
struct PipelineViewportCoarseSampleOrderStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   CoarseSampleOrderTypeNV sampleOrderType;
   uint customSampleOrderCount;
   CoarseSampleOrderCustomNV* pCustomSampleOrders;
}
struct PhysicalDeviceMeshShaderFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint taskShader;
   uint meshShader;
}
struct PhysicalDeviceMeshShaderPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint maxDrawMeshTasksCount;
   uint maxTaskWorkGroupInvocations;
   uint[3] maxTaskWorkGroupSize;
   uint maxTaskTotalMemorySize;
   uint maxTaskOutputCount;
   uint maxMeshWorkGroupInvocations;
   uint[3] maxMeshWorkGroupSize;
   uint maxMeshTotalMemorySize;
   uint maxMeshOutputVertices;
   uint maxMeshOutputPrimitives;
   uint maxMeshMultiviewViewCount;
   uint meshOutputPerVertexGranularity;
   uint meshOutputPerPrimitiveGranularity;
}
struct DrawMeshTasksIndirectCommandNV { 
   uint taskCount;
   uint firstTask;
}
struct PhysicalDeviceMeshShaderFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint taskShader;
   uint meshShader;
   uint multiviewMeshShader;
   uint primitiveFragmentShadingRateMeshShader;
   uint meshShaderQueries;
}
struct PhysicalDeviceMeshShaderPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxTaskWorkGroupTotalCount;
   uint[3] maxTaskWorkGroupCount;
   uint maxTaskWorkGroupInvocations;
   uint[3] maxTaskWorkGroupSize;
   uint maxTaskPayloadSize;
   uint maxTaskSharedMemorySize;
   uint maxTaskPayloadAndSharedMemorySize;
   uint maxMeshWorkGroupTotalCount;
   uint[3] maxMeshWorkGroupCount;
   uint maxMeshWorkGroupInvocations;
   uint[3] maxMeshWorkGroupSize;
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
   uint prefersLocalInvocationVertexOutput;
   uint prefersLocalInvocationPrimitiveOutput;
   uint prefersCompactVertexOutput;
   uint prefersCompactPrimitiveOutput;
}
struct DrawMeshTasksIndirectCommandEXT { 
   uint groupCountX;
   uint groupCountY;
   uint groupCountZ;
}
struct RayTracingShaderGroupCreateInfoNV { 
   StructureType sType;
   void* pNext;
   RayTracingShaderGroupTypeKHR type;
   uint generalShader;
   uint closestHitShader;
   uint anyHitShader;
   uint intersectionShader;
}
struct RayTracingShaderGroupCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   RayTracingShaderGroupTypeKHR type;
   uint generalShader;
   uint closestHitShader;
   uint anyHitShader;
   uint intersectionShader;
   void* pShaderGroupCaptureReplayHandle;
}
struct RayTracingPipelineCreateInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineCreateFlags flags;
   uint stageCount;
   PipelineShaderStageCreateInfo* pStages;
   uint groupCount;
   RayTracingShaderGroupCreateInfoNV* pGroups;
   uint maxRecursionDepth;
   PipelineLayout layout;
   Pipeline basePipelineHandle;
   int basePipelineIndex;
}
struct RayTracingPipelineCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   PipelineCreateFlags flags;
   uint stageCount;
   PipelineShaderStageCreateInfo* pStages;
   uint groupCount;
   RayTracingShaderGroupCreateInfoKHR* pGroups;
   uint maxPipelineRayRecursionDepth;
   PipelineLibraryCreateInfoKHR* pLibraryInfo;
   RayTracingPipelineInterfaceCreateInfoKHR* pLibraryInterface;
   PipelineDynamicStateCreateInfo* pDynamicState;
   PipelineLayout layout;
   Pipeline basePipelineHandle;
   int basePipelineIndex;
}
struct GeometryTrianglesNV { 
   StructureType sType;
   void* pNext;
   Buffer vertexData;
   DeviceSize vertexOffset;
   uint vertexCount;
   DeviceSize vertexStride;
   Format vertexFormat;
   Buffer indexData;
   DeviceSize indexOffset;
   uint indexCount;
   IndexType indexType;
   Buffer transformData;
   DeviceSize transformOffset;
}
struct GeometryAABBNV { 
   StructureType sType;
   void* pNext;
   Buffer aabbData;
   uint numAABBs;
   uint stride;
   DeviceSize offset;
}
struct GeometryDataNV { 
   GeometryTrianglesNV triangles;
   GeometryAABBNV aabbs;
}
struct GeometryNV { 
   StructureType sType;
   void* pNext;
   GeometryTypeKHR geometryType;
   GeometryDataNV geometry;
   GeometryFlagsKHR flags;
}
struct AccelerationStructureInfoNV { 
   StructureType sType;
   void* pNext;
   AccelerationStructureTypeNV type;
   BuildAccelerationStructureFlagsNV flags;
   uint instanceCount;
   uint geometryCount;
   GeometryNV* pGeometries;
}
struct AccelerationStructureCreateInfoNV { 
   StructureType sType;
   void* pNext;
   DeviceSize compactedSize;
   AccelerationStructureInfoNV info;
}
struct BindAccelerationStructureMemoryInfoNV { 
   StructureType sType;
   void* pNext;
   AccelerationStructureNV accelerationStructure;
   DeviceMemory memory;
   DeviceSize memoryOffset;
   uint deviceIndexCount;
   uint* pDeviceIndices;
}
struct WriteDescriptorSetAccelerationStructureKHR { 
   StructureType sType;
   void* pNext;
   uint accelerationStructureCount;
   AccelerationStructureKHR* pAccelerationStructures;
}
struct WriteDescriptorSetAccelerationStructureNV { 
   StructureType sType;
   void* pNext;
   uint accelerationStructureCount;
   AccelerationStructureNV* pAccelerationStructures;
}
struct AccelerationStructureMemoryRequirementsInfoNV { 
   StructureType sType;
   void* pNext;
   AccelerationStructureMemoryRequirementsTypeNV type;
   AccelerationStructureNV accelerationStructure;
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
struct PhysicalDeviceRayTracingPipelineFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint rayTracingPipeline;
   uint rayTracingPipelineShaderGroupHandleCaptureReplay;
   uint rayTracingPipelineShaderGroupHandleCaptureReplayMixed;
   uint rayTracingPipelineTraceRaysIndirect;
   uint rayTraversalPrimitiveCulling;
}
struct PhysicalDeviceRayQueryFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint rayQuery;
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
struct PhysicalDeviceRayTracingPipelinePropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderGroupHandleSize;
   uint maxRayRecursionDepth;
   uint maxShaderGroupStride;
   uint shaderGroupBaseAlignment;
   uint shaderGroupHandleCaptureReplaySize;
   uint maxRayDispatchInvocationCount;
   uint shaderGroupHandleAlignment;
   uint maxRayHitAttributeSize;
}
struct PhysicalDeviceRayTracingPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint shaderGroupHandleSize;
   uint maxRecursionDepth;
   uint maxShaderGroupStride;
   uint shaderGroupBaseAlignment;
   ulong maxGeometryCount;
   ulong maxInstanceCount;
   ulong maxTriangleCount;
   uint maxDescriptorSetAccelerationStructures;
}
struct StridedDeviceAddressRegionKHR { 
   DeviceAddress deviceAddress;
   DeviceSize stride;
   DeviceSize size;
}
struct TraceRaysIndirectCommandKHR { 
   uint width;
   uint height;
   uint depth;
}
struct TraceRaysIndirectCommand2KHR { 
   DeviceAddress raygenShaderRecordAddress;
   DeviceSize raygenShaderRecordSize;
   DeviceAddress missShaderBindingTableAddress;
   DeviceSize missShaderBindingTableSize;
   DeviceSize missShaderBindingTableStride;
   DeviceAddress hitShaderBindingTableAddress;
   DeviceSize hitShaderBindingTableSize;
   DeviceSize hitShaderBindingTableStride;
   DeviceAddress callableShaderBindingTableAddress;
   DeviceSize callableShaderBindingTableSize;
   DeviceSize callableShaderBindingTableStride;
   uint width;
   uint height;
   uint depth;
}
struct PhysicalDeviceRayTracingMaintenance1FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint rayTracingMaintenance1;
   uint rayTracingPipelineTraceRaysIndirect2;
}
struct DrmFormatModifierPropertiesListEXT { 
   StructureType sType;
   void* pNext;
   uint drmFormatModifierCount;
   DrmFormatModifierPropertiesEXT* pDrmFormatModifierProperties;
}
struct DrmFormatModifierPropertiesEXT { 
   ulong drmFormatModifier;
   uint drmFormatModifierPlaneCount;
   FormatFeatureFlags drmFormatModifierTilingFeatures;
}
struct PhysicalDeviceImageDrmFormatModifierInfoEXT { 
   StructureType sType;
   void* pNext;
   ulong drmFormatModifier;
   SharingMode sharingMode;
   uint queueFamilyIndexCount;
   uint* pQueueFamilyIndices;
}
struct ImageDrmFormatModifierListCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint drmFormatModifierCount;
   ulong* pDrmFormatModifiers;
}
struct ImageDrmFormatModifierExplicitCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ulong drmFormatModifier;
   uint drmFormatModifierPlaneCount;
   SubresourceLayout* pPlaneLayouts;
}
struct ImageDrmFormatModifierPropertiesEXT { 
   StructureType sType;
   void* pNext;
   ulong drmFormatModifier;
}
struct ImageStencilUsageCreateInfo { 
   StructureType sType;
   void* pNext;
   ImageUsageFlags stencilUsage;
}
struct DeviceMemoryOverallocationCreateInfoAMD { 
   StructureType sType;
   void* pNext;
   MemoryOverallocationBehaviorAMD overallocationBehavior;
}
struct PhysicalDeviceFragmentDensityMapFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint fragmentDensityMap;
   uint fragmentDensityMapDynamic;
   uint fragmentDensityMapNonSubsampledImages;
}
struct PhysicalDeviceFragmentDensityMap2FeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint fragmentDensityMapDeferred;
}
struct PhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint fragmentDensityMapOffset;
}
struct PhysicalDeviceFragmentDensityMapPropertiesEXT { 
   StructureType sType;
   void* pNext;
   Extent2D minFragmentDensityTexelSize;
   Extent2D maxFragmentDensityTexelSize;
   uint fragmentDensityInvocations;
}
struct PhysicalDeviceFragmentDensityMap2PropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint subsampledLoads;
   uint subsampledCoarseReconstructionEarlyAccess;
   uint maxSubsampledArrayLayers;
   uint maxDescriptorSetSubsampledSamplers;
}
struct PhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM { 
   StructureType sType;
   void* pNext;
   Extent2D fragmentDensityOffsetGranularity;
}
struct RenderPassFragmentDensityMapCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   AttachmentReference fragmentDensityMapAttachment;
}
struct SubpassFragmentDensityMapOffsetEndInfoQCOM { 
   StructureType sType;
   void* pNext;
   uint fragmentDensityOffsetCount;
   Offset2D* pFragmentDensityOffsets;
}
struct PhysicalDeviceScalarBlockLayoutFeatures { 
   StructureType sType;
   void* pNext;
   uint scalarBlockLayout;
}
struct SurfaceProtectedCapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   uint supportsProtected;
}
struct PhysicalDeviceUniformBufferStandardLayoutFeatures { 
   StructureType sType;
   void* pNext;
   uint uniformBufferStandardLayout;
}
struct PhysicalDeviceDepthClipEnableFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint depthClipEnable;
}
struct PipelineRasterizationDepthClipStateCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   PipelineRasterizationDepthClipStateCreateFlagsEXT flags;
   uint depthClipEnable;
}
struct PhysicalDeviceMemoryBudgetPropertiesEXT { 
   StructureType sType;
   void* pNext;
   DeviceSize[MAX_MEMORY_HEAPS] heapBudget;
   DeviceSize[MAX_MEMORY_HEAPS] heapUsage;
}
struct PhysicalDeviceMemoryPriorityFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint memoryPriority;
}
struct MemoryPriorityAllocateInfoEXT { 
   StructureType sType;
   void* pNext;
   float priority;
}
struct PhysicalDevicePageableDeviceLocalMemoryFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint pageableDeviceLocalMemory;
}
struct PhysicalDeviceBufferDeviceAddressFeatures { 
   StructureType sType;
   void* pNext;
   uint bufferDeviceAddress;
   uint bufferDeviceAddressCaptureReplay;
   uint bufferDeviceAddressMultiDevice;
}
struct PhysicalDeviceBufferDeviceAddressFeaturesEXT { 
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
struct BufferDeviceAddressCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   DeviceAddress deviceAddress;
}
struct PhysicalDeviceImageViewImageFormatInfoEXT { 
   StructureType sType;
   void* pNext;
   ImageViewType imageViewType;
}
struct FilterCubicImageViewImageFormatPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint filterCubic;
   uint filterCubicMinmax;
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
struct PhysicalDeviceCooperativeMatrixFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint cooperativeMatrix;
   uint cooperativeMatrixRobustBufferAccess;
}
struct PhysicalDeviceCooperativeMatrixPropertiesNV { 
   StructureType sType;
   void* pNext;
   ShaderStageFlags cooperativeMatrixSupportedStages;
}
struct CooperativeMatrixPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint MSize;
   uint NSize;
   uint KSize;
   ComponentTypeNV AType;
   ComponentTypeNV BType;
   ComponentTypeNV CType;
   ComponentTypeNV DType;
   ScopeNV scope;
}
struct PhysicalDeviceYcbcrImageArraysFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint ycbcrImageArrays;
}
struct ImageViewHandleInfoNVX { 
   StructureType sType;
   void* pNext;
   ImageView imageView;
   DescriptorType descriptorType;
   Sampler sampler;
}
struct ImageViewAddressPropertiesNVX { 
   StructureType sType;
   void* pNext;
   DeviceAddress deviceAddress;
   DeviceSize size;
}
struct PresentFrameTokenGGP { 
   StructureType sType;
   void* pNext;
   GgpFrameToken frameToken;
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
struct SurfaceFullScreenExclusiveInfoEXT { 
   StructureType sType;
   void* pNext;
   FullScreenExclusiveEXT fullScreenExclusive;
}
struct SurfaceFullScreenExclusiveWin32InfoEXT { 
   StructureType sType;
   void* pNext;
   HMONITOR hmonitor;
}
struct SurfaceCapabilitiesFullScreenExclusiveEXT { 
   StructureType sType;
   void* pNext;
   uint fullScreenExclusiveSupported;
}
struct PhysicalDevicePresentBarrierFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint presentBarrier;
}
struct SurfaceCapabilitiesPresentBarrierNV { 
   StructureType sType;
   void* pNext;
   uint presentBarrierSupported;
}
struct SwapchainPresentBarrierCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint presentBarrierEnable;
}
struct PhysicalDevicePerformanceQueryFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint performanceCounterQueryPools;
   uint performanceCounterMultipleQueryPools;
}
struct PhysicalDevicePerformanceQueryPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint allowCommandBufferQueryCopies;
}
struct PerformanceCounterKHR { 
   StructureType sType;
   void* pNext;
   PerformanceCounterUnitKHR unit;
   PerformanceCounterScopeKHR scope;
   PerformanceCounterStorageKHR storage;
   uint[UUID_SIZE] uuid;
}
struct PerformanceCounterDescriptionKHR { 
   StructureType sType;
   void* pNext;
   PerformanceCounterDescriptionFlagsKHR flags;
   char[MAX_DESCRIPTION_SIZE] name;
   char[MAX_DESCRIPTION_SIZE] category;
   char[MAX_DESCRIPTION_SIZE] description;
}
struct QueryPoolPerformanceCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint queueFamilyIndex;
   uint counterIndexCount;
   uint* pCounterIndices;
}
struct AcquireProfilingLockInfoKHR { 
   StructureType sType;
   void* pNext;
   AcquireProfilingLockFlagsKHR flags;
   ulong timeout;
}
struct PerformanceQuerySubmitInfoKHR { 
   StructureType sType;
   void* pNext;
   uint counterPassIndex;
}
struct PerformanceQueryReservationInfoKHR { 
   StructureType sType;
   void* pNext;
   uint maxPerformanceQueriesPerPool;
}
struct HeadlessSurfaceCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   HeadlessSurfaceCreateFlagsEXT flags;
}
struct PhysicalDeviceCoverageReductionModeFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint coverageReductionMode;
}
struct PipelineCoverageReductionStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   PipelineCoverageReductionStateCreateFlagsNV flags;
   CoverageReductionModeNV coverageReductionMode;
}
struct FramebufferMixedSamplesCombinationNV { 
   StructureType sType;
   void* pNext;
   CoverageReductionModeNV coverageReductionMode;
   SampleCountFlagBits rasterizationSamples;
   SampleCountFlags depthStencilSamples;
   SampleCountFlags colorSamples;
}
struct PhysicalDeviceShaderIntegerFunctions2FeaturesINTEL { 
   StructureType sType;
   void* pNext;
   uint shaderIntegerFunctions2;
}
struct PerformanceValueINTEL { 
   PerformanceValueTypeINTEL type;
   PerformanceValueDataINTEL data;
}
struct InitializePerformanceApiInfoINTEL { 
   StructureType sType;
   void* pNext;
   void* pUserData;
}
struct QueryPoolPerformanceQueryCreateInfoINTEL { 
   StructureType sType;
   void* pNext;
   QueryPoolSamplingModeINTEL performanceCountersSampling;
}
struct PerformanceMarkerInfoINTEL { 
   StructureType sType;
   void* pNext;
   ulong marker;
}
struct PerformanceStreamMarkerInfoINTEL { 
   StructureType sType;
   void* pNext;
   uint marker;
}
struct PerformanceOverrideInfoINTEL { 
   StructureType sType;
   void* pNext;
   PerformanceOverrideTypeINTEL type;
   uint enable;
   ulong parameter;
}
struct PerformanceConfigurationAcquireInfoINTEL { 
   StructureType sType;
   void* pNext;
   PerformanceConfigurationTypeINTEL type;
}
struct PhysicalDeviceShaderClockFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderSubgroupClock;
   uint shaderDeviceClock;
}
struct PhysicalDeviceIndexTypeUint8FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint indexTypeUint8;
}
struct PhysicalDeviceShaderSMBuiltinsPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint shaderSMCount;
   uint shaderWarpsPerSM;
}
struct PhysicalDeviceShaderSMBuiltinsFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint shaderSMBuiltins;
}
struct PhysicalDeviceFragmentShaderInterlockFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint fragmentShaderSampleInterlock;
   uint fragmentShaderPixelInterlock;
   uint fragmentShaderShadingRateInterlock;
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
struct PhysicalDevicePrimitiveTopologyListRestartFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint primitiveTopologyListRestart;
   uint primitiveTopologyPatchListRestart;
}
struct AttachmentDescriptionStencilLayout { 
   StructureType sType;
   void* pNext;
   ImageLayout stencilInitialLayout;
   ImageLayout stencilFinalLayout;
}
struct PhysicalDevicePipelineExecutablePropertiesFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint pipelineExecutableInfo;
}
struct PipelineInfoKHR { 
   StructureType sType;
   void* pNext;
   Pipeline pipeline;
}
struct PipelineExecutablePropertiesKHR { 
   StructureType sType;
   void* pNext;
   ShaderStageFlags stages;
   char[MAX_DESCRIPTION_SIZE] name;
   char[MAX_DESCRIPTION_SIZE] description;
   uint subgroupSize;
}
struct PipelineExecutableInfoKHR { 
   StructureType sType;
   void* pNext;
   Pipeline pipeline;
   uint executableIndex;
}
struct PipelineExecutableStatisticKHR { 
   StructureType sType;
   void* pNext;
   char[MAX_DESCRIPTION_SIZE] name;
   char[MAX_DESCRIPTION_SIZE] description;
   PipelineExecutableStatisticFormatKHR format;
   PipelineExecutableStatisticValueKHR value;
}
struct PipelineExecutableInternalRepresentationKHR { 
   StructureType sType;
   void* pNext;
   char[MAX_DESCRIPTION_SIZE] name;
   char[MAX_DESCRIPTION_SIZE] description;
   uint isText;
   usz dataSize;
   void* pData;
}
struct PhysicalDeviceShaderDemoteToHelperInvocationFeatures { 
   StructureType sType;
   void* pNext;
   uint shaderDemoteToHelperInvocation;
}
struct PhysicalDeviceTexelBufferAlignmentFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint texelBufferAlignment;
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
struct SubpassShadingPipelineCreateInfoHUAWEI { 
   StructureType sType;
   void* pNext;
   RenderPass renderPass;
   uint subpass;
}
struct PhysicalDeviceSubpassShadingPropertiesHUAWEI { 
   StructureType sType;
   void* pNext;
   uint maxSubpassShadingWorkgroupSizeAspectRatio;
}
struct PhysicalDeviceClusterCullingShaderPropertiesHUAWEI { 
   StructureType sType;
   void* pNext;
   uint[3] maxWorkGroupCount;
   uint[3] maxWorkGroupSize;
   uint maxOutputClusterCount;
   DeviceSize indirectBufferOffsetAlignment;
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
struct PhysicalDeviceLineRasterizationFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint rectangularLines;
   uint bresenhamLines;
   uint smoothLines;
   uint stippledRectangularLines;
   uint stippledBresenhamLines;
   uint stippledSmoothLines;
}
struct PhysicalDeviceLineRasterizationPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint lineSubPixelPrecisionBits;
}
struct PipelineRasterizationLineStateCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   LineRasterizationModeKHR lineRasterizationMode;
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
struct PipelineCompilerControlCreateInfoAMD { 
   StructureType sType;
   void* pNext;
   PipelineCompilerControlFlagsAMD compilerControlFlags;
}
struct PhysicalDeviceCoherentMemoryFeaturesAMD { 
   StructureType sType;
   void* pNext;
   uint deviceCoherentMemory;
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
struct SamplerCustomBorderColorCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ClearColorValue customBorderColor;
   Format format;
}
struct PhysicalDeviceCustomBorderColorPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxCustomBorderColorSamplers;
}
struct PhysicalDeviceCustomBorderColorFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint customBorderColors;
   uint customBorderColorWithoutFormat;
}
struct SamplerBorderColorComponentMappingCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ComponentMapping components;
   uint srgb;
}
struct PhysicalDeviceBorderColorSwizzleFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint borderColorSwizzle;
   uint borderColorSwizzleFromImage;
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
   uint: instanceCustomIndex;
   uint: mask;
   uint: instanceShaderBindingTableRecordOffset;
   GeometryInstanceFlagsKHR: flags;
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
struct RayTracingPipelineInterfaceCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint maxPipelineRayPayloadSize;
   uint maxPipelineRayHitAttributeSize;
}
struct PipelineLibraryCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint libraryCount;
   Pipeline* pLibraries;
}
struct RefreshObjectKHR { 
   ObjectType objectType;
   ulong objectHandle;
   RefreshObjectFlagsKHR flags;
}
struct RefreshObjectListKHR { 
   StructureType sType;
   void* pNext;
   uint objectCount;
   RefreshObjectKHR* pObjects;
}
struct PhysicalDeviceExtendedDynamicStateFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint extendedDynamicState;
}
struct PhysicalDeviceExtendedDynamicState2FeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint extendedDynamicState2;
   uint extendedDynamicState2LogicOp;
   uint extendedDynamicState2PatchControlPoints;
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
struct RenderPassTransformBeginInfoQCOM { 
   StructureType sType;
   void* pNext;
   SurfaceTransformFlagBitsKHR transform;
}
struct CopyCommandTransformInfoQCOM { 
   StructureType sType;
   void* pNext;
   SurfaceTransformFlagBitsKHR transform;
}
struct CommandBufferInheritanceRenderPassTransformInfoQCOM { 
   StructureType sType;
   void* pNext;
   SurfaceTransformFlagBitsKHR transform;
   Rect2D renderArea;
}
struct PhysicalDeviceDiagnosticsConfigFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint diagnosticsConfig;
}
struct DeviceDiagnosticsConfigCreateInfoNV { 
   StructureType sType;
   void* pNext;
   DeviceDiagnosticsConfigFlagsNV flags;
}
struct PhysicalDeviceZeroInitializeWorkgroupMemoryFeatures { 
   StructureType sType;
   void* pNext;
   uint shaderZeroInitializeWorkgroupMemory;
}
struct PhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderSubgroupUniformControlFlow;
}
struct PhysicalDeviceRobustness2FeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint robustBufferAccess2;
   uint robustImageAccess2;
   uint nullDescriptor;
}
struct PhysicalDeviceRobustness2PropertiesEXT { 
   StructureType sType;
   void* pNext;
   DeviceSize robustStorageBufferAccessSizeAlignment;
   DeviceSize robustUniformBufferAccessSizeAlignment;
}
struct PhysicalDeviceImageRobustnessFeatures { 
   StructureType sType;
   void* pNext;
   uint robustImageAccess;
}
struct PhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint workgroupMemoryExplicitLayout;
   uint workgroupMemoryExplicitLayoutScalarBlockLayout;
   uint workgroupMemoryExplicitLayout8BitAccess;
   uint workgroupMemoryExplicitLayout16BitAccess;
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
struct PhysicalDevice4444FormatsFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint formatA4R4G4B4;
   uint formatA4B4G4R4;
}
struct PhysicalDeviceSubpassShadingFeaturesHUAWEI { 
   StructureType sType;
   void* pNext;
   uint subpassShading;
}
struct PhysicalDeviceClusterCullingShaderFeaturesHUAWEI { 
   StructureType sType;
   void pNext;
   uint clustercullingShader;
   uint multiviewClusterCullingShader;
}
struct PhysicalDeviceClusterCullingShaderVrsFeaturesHUAWEI { 
   StructureType sType;
   void pNext;
   uint clusterShadingRate;
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
struct PhysicalDeviceShaderImageAtomicInt64FeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderImageInt64Atomics;
   uint sparseImageInt64Atomics;
}
struct FragmentShadingRateAttachmentInfoKHR { 
   StructureType sType;
   void* pNext;
   AttachmentReference2* pFragmentShadingRateAttachment;
   Extent2D shadingRateAttachmentTexelSize;
}
struct PipelineFragmentShadingRateStateCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   Extent2D fragmentSize;
   FragmentShadingRateCombinerOpKHR[2] combinerOps;
}
struct PhysicalDeviceFragmentShadingRateFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint pipelineFragmentShadingRate;
   uint primitiveFragmentShadingRate;
   uint attachmentFragmentShadingRate;
}
struct PhysicalDeviceFragmentShadingRatePropertiesKHR { 
   StructureType sType;
   void* pNext;
   Extent2D minFragmentShadingRateAttachmentTexelSize;
   Extent2D maxFragmentShadingRateAttachmentTexelSize;
   uint maxFragmentShadingRateAttachmentTexelSizeAspectRatio;
   uint primitiveFragmentShadingRateWithMultipleViewports;
   uint layeredShadingRateAttachments;
   uint fragmentShadingRateNonTrivialCombinerOps;
   Extent2D maxFragmentSize;
   uint maxFragmentSizeAspectRatio;
   uint maxFragmentShadingRateCoverageSamples;
   SampleCountFlagBits maxFragmentShadingRateRasterizationSamples;
   uint fragmentShadingRateWithShaderDepthStencilWrites;
   uint fragmentShadingRateWithSampleMask;
   uint fragmentShadingRateWithShaderSampleMask;
   uint fragmentShadingRateWithConservativeRasterization;
   uint fragmentShadingRateWithFragmentShaderInterlock;
   uint fragmentShadingRateWithCustomSampleLocations;
   uint fragmentShadingRateStrictMultiplyCombiner;
}
struct PhysicalDeviceFragmentShadingRateKHR { 
   StructureType sType;
   void* pNext;
   SampleCountFlags sampleCounts;
   Extent2D fragmentSize;
}
struct PhysicalDeviceShaderTerminateInvocationFeatures { 
   StructureType sType;
   void* pNext;
   uint shaderTerminateInvocation;
}
struct PhysicalDeviceFragmentShadingRateEnumsFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint fragmentShadingRateEnums;
   uint supersampleFragmentShadingRates;
   uint noInvocationFragmentShadingRates;
}
struct PhysicalDeviceFragmentShadingRateEnumsPropertiesNV { 
   StructureType sType;
   void* pNext;
   SampleCountFlagBits maxFragmentShadingRateInvocationCount;
}
struct PipelineFragmentShadingRateEnumStateCreateInfoNV { 
   StructureType sType;
   void* pNext;
   FragmentShadingRateTypeNV shadingRateType;
   FragmentShadingRateNV shadingRate;
   FragmentShadingRateCombinerOpKHR[2] combinerOps;
}
struct AccelerationStructureBuildSizesInfoKHR { 
   StructureType sType;
   void* pNext;
   DeviceSize accelerationStructureSize;
   DeviceSize updateScratchSize;
   DeviceSize buildScratchSize;
}
struct PhysicalDeviceImage2DViewOf3DFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint image2DViewOf3D;
   uint sampler2DViewOf3D;
}
struct PhysicalDeviceImageSlicedViewOf3DFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint imageSlicedViewOf3D;
}
struct PhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint attachmentFeedbackLoopDynamicState;
}
struct PhysicalDeviceLegacyVertexAttributesFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint legacyVertexAttributes;
}
struct PhysicalDeviceLegacyVertexAttributesPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint nativeUnalignedPerformance;
}
struct PhysicalDeviceMutableDescriptorTypeFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint mutableDescriptorType;
}
struct MutableDescriptorTypeListEXT { 
   uint descriptorTypeCount;
   DescriptorType* pDescriptorTypes;
}
struct MutableDescriptorTypeCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint mutableDescriptorTypeListCount;
   MutableDescriptorTypeListEXT* pMutableDescriptorTypeLists;
}
struct PhysicalDeviceDepthClipControlFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint depthClipControl;
}
struct PipelineViewportDepthClipControlCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint negativeOneToOne;
}
struct PhysicalDeviceVertexInputDynamicStateFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint vertexInputDynamicState;
}
struct PhysicalDeviceExternalMemoryRDMAFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint externalMemoryRDMA;
}
struct PhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderRelaxedExtendedInstruction;
}
struct VertexInputBindingDescription2EXT { 
   StructureType sType;
   void* pNext;
   uint binding;
   uint stride;
   VertexInputRate inputRate;
   uint divisor;
}
struct VertexInputAttributeDescription2EXT { 
   StructureType sType;
   void* pNext;
   uint location;
   uint binding;
   Format format;
   uint offset;
}
struct PhysicalDeviceColorWriteEnableFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint colorWriteEnable;
}
struct PipelineColorWriteCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint attachmentCount;
   uint* pColorWriteEnables;
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
struct QueueFamilyCheckpointProperties2NV { 
   StructureType sType;
   void* pNext;
   PipelineStageFlags2 checkpointExecutionStageMask;
}
struct CheckpointData2NV { 
   StructureType sType;
   void* pNext;
   PipelineStageFlags2 stage;
   void* pCheckpointMarker;
}
struct PhysicalDeviceSynchronization2Features { 
   StructureType sType;
   void* pNext;
   uint synchronization2;
}
struct PhysicalDeviceHostImageCopyFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint hostImageCopy;
}
struct PhysicalDeviceHostImageCopyPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint copySrcLayoutCount;
   ImageLayout* pCopySrcLayouts;
   uint copyDstLayoutCount;
   ImageLayout* pCopyDstLayouts;
   uint[UUID_SIZE] optimalTilingLayoutUUID;
   uint identicalMemoryTypeRequirements;
}
struct MemoryToImageCopyEXT { 
   StructureType sType;
   void* pNext;
   void* pHostPointer;
   uint memoryRowLength;
   uint memoryImageHeight;
   ImageSubresourceLayers imageSubresource;
   Offset3D imageOffset;
   Extent3D imageExtent;
}
struct ImageToMemoryCopyEXT { 
   StructureType sType;
   void* pNext;
   void* pHostPointer;
   uint memoryRowLength;
   uint memoryImageHeight;
   ImageSubresourceLayers imageSubresource;
   Offset3D imageOffset;
   Extent3D imageExtent;
}
struct CopyMemoryToImageInfoEXT { 
   StructureType sType;
   void* pNext;
   HostImageCopyFlagsEXT flags;
   Image dstImage;
   ImageLayout dstImageLayout;
   uint regionCount;
   MemoryToImageCopyEXT* pRegions;
}
struct CopyImageToMemoryInfoEXT { 
   StructureType sType;
   void* pNext;
   HostImageCopyFlagsEXT flags;
   Image srcImage;
   ImageLayout srcImageLayout;
   uint regionCount;
   ImageToMemoryCopyEXT* pRegions;
}
struct CopyImageToImageInfoEXT { 
   StructureType sType;
   void* pNext;
   HostImageCopyFlagsEXT flags;
   Image srcImage;
   ImageLayout srcImageLayout;
   Image dstImage;
   ImageLayout dstImageLayout;
   uint regionCount;
   ImageCopy2* pRegions;
}
struct HostImageLayoutTransitionInfoEXT { 
   StructureType sType;
   void* pNext;
   Image image;
   ImageLayout oldLayout;
   ImageLayout newLayout;
   ImageSubresourceRange subresourceRange;
}
struct SubresourceHostMemcpySizeEXT { 
   StructureType sType;
   void* pNext;
   DeviceSize size;
}
struct HostImageCopyDevicePerformanceQueryEXT { 
   StructureType sType;
   void* pNext;
   uint optimalDeviceAccess;
   uint identicalMemoryLayout;
}
struct PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint primitivesGeneratedQuery;
   uint primitivesGeneratedQueryWithRasterizerDiscard;
   uint primitivesGeneratedQueryWithNonZeroStreams;
}
struct PhysicalDeviceLegacyDitheringFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint legacyDithering;
}
struct PhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint multisampledRenderToSingleSampled;
}
struct SubpassResolvePerformanceQueryEXT { 
   StructureType sType;
   void* pNext;
   uint optimal;
}
struct MultisampledRenderToSingleSampledInfoEXT { 
   StructureType sType;
   void* pNext;
   uint multisampledRenderToSingleSampledEnable;
   SampleCountFlagBits rasterizationSamples;
}
struct PhysicalDevicePipelineProtectedAccessFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint pipelineProtectedAccess;
}
struct QueueFamilyVideoPropertiesKHR { 
   StructureType sType;
   void* pNext;
   VideoCodecOperationFlagsKHR videoCodecOperations;
}
struct QueueFamilyQueryResultStatusPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint queryResultStatusSupport;
}
struct VideoProfileListInfoKHR { 
   StructureType sType;
   void* pNext;
   uint profileCount;
   VideoProfileInfoKHR* pProfiles;
}
struct PhysicalDeviceVideoFormatInfoKHR { 
   StructureType sType;
   void* pNext;
   ImageUsageFlags imageUsage;
}
struct VideoFormatPropertiesKHR { 
   StructureType sType;
   void* pNext;
   Format format;
   ComponentMapping componentMapping;
   ImageCreateFlags imageCreateFlags;
   ImageType imageType;
   ImageTiling imageTiling;
   ImageUsageFlags imageUsageFlags;
}
struct VideoProfileInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoCodecOperationFlagBitsKHR videoCodecOperation;
   VideoChromaSubsamplingFlagsKHR chromaSubsampling;
   VideoComponentBitDepthFlagsKHR lumaBitDepth;
   VideoComponentBitDepthFlagsKHR chromaBitDepth;
}
struct VideoCapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   VideoCapabilityFlagsKHR flags;
   DeviceSize minBitstreamBufferOffsetAlignment;
   DeviceSize minBitstreamBufferSizeAlignment;
   Extent2D pictureAccessGranularity;
   Extent2D minCodedExtent;
   Extent2D maxCodedExtent;
   uint maxDpbSlots;
   uint maxActiveReferencePictures;
   ExtensionProperties stdHeaderVersion;
}
struct VideoSessionMemoryRequirementsKHR { 
   StructureType sType;
   void* pNext;
   uint memoryBindIndex;
   MemoryRequirements memoryRequirements;
}
struct BindVideoSessionMemoryInfoKHR { 
   StructureType sType;
   void* pNext;
   uint memoryBindIndex;
   DeviceMemory memory;
   DeviceSize memoryOffset;
   DeviceSize memorySize;
}
struct VideoPictureResourceInfoKHR { 
   StructureType sType;
   void* pNext;
   Offset2D codedOffset;
   Extent2D codedExtent;
   uint baseArrayLayer;
   ImageView imageViewBinding;
}
struct VideoReferenceSlotInfoKHR { 
   StructureType sType;
   void* pNext;
   int slotIndex;
   VideoPictureResourceInfoKHR* pPictureResource;
}
struct VideoDecodeCapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   VideoDecodeCapabilityFlagsKHR flags;
}
struct VideoDecodeUsageInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoDecodeUsageFlagsKHR videoUsageHints;
}
struct VideoDecodeInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoDecodeFlagsKHR flags;
   Buffer srcBuffer;
   DeviceSize srcBufferOffset;
   DeviceSize srcBufferRange;
   VideoPictureResourceInfoKHR dstPictureResource;
   VideoReferenceSlotInfoKHR* pSetupReferenceSlot;
   uint referenceSlotCount;
   VideoReferenceSlotInfoKHR* pReferenceSlots;
}
struct PhysicalDeviceVideoMaintenance1FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint videoMaintenance1;
}
struct VideoInlineQueryInfoKHR { 
   StructureType sType;
   void* pNext;
   QueryPool queryPool;
   uint firstQuery;
   uint queryCount;
}
struct VideoDecodeH264ProfileInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoH264ProfileIdc stdProfileIdc;
   VideoDecodeH264PictureLayoutFlagBitsKHR pictureLayout;
}
struct VideoDecodeH264CapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   StdVideoH264LevelIdc maxLevelIdc;
   Offset2D fieldOffsetGranularity;
}
struct VideoDecodeH264SessionParametersAddInfoKHR { 
   StructureType sType;
   void* pNext;
   uint stdSPSCount;
   StdVideoH264SequenceParameterSet* pStdSPSs;
   uint stdPPSCount;
   StdVideoH264PictureParameterSet* pStdPPSs;
}
struct VideoDecodeH264SessionParametersCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint maxStdSPSCount;
   uint maxStdPPSCount;
   VideoDecodeH264SessionParametersAddInfoKHR* pParametersAddInfo;
}
struct VideoDecodeH264PictureInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoDecodeH264PictureInfo* pStdPictureInfo;
   uint sliceCount;
   uint* pSliceOffsets;
}
struct VideoDecodeH264DpbSlotInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoDecodeH264ReferenceInfo* pStdReferenceInfo;
}
struct VideoDecodeH265ProfileInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoH265ProfileIdc stdProfileIdc;
}
struct VideoDecodeH265CapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   StdVideoH265LevelIdc maxLevelIdc;
}
struct VideoDecodeH265SessionParametersAddInfoKHR { 
   StructureType sType;
   void* pNext;
   uint stdVPSCount;
   StdVideoH265VideoParameterSet* pStdVPSs;
   uint stdSPSCount;
   StdVideoH265SequenceParameterSet* pStdSPSs;
   uint stdPPSCount;
   StdVideoH265PictureParameterSet* pStdPPSs;
}
struct VideoDecodeH265SessionParametersCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint maxStdVPSCount;
   uint maxStdSPSCount;
   uint maxStdPPSCount;
   VideoDecodeH265SessionParametersAddInfoKHR* pParametersAddInfo;
}
struct VideoDecodeH265PictureInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoDecodeH265PictureInfo* pStdPictureInfo;
   uint sliceSegmentCount;
   uint* pSliceSegmentOffsets;
}
struct VideoDecodeH265DpbSlotInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoDecodeH265ReferenceInfo* pStdReferenceInfo;
}
struct VideoDecodeAV1ProfileInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoAV1Profile stdProfile;
   uint filmGrainSupport;
}
struct VideoDecodeAV1CapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   StdVideoAV1Level maxLevel;
}
struct VideoDecodeAV1SessionParametersCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoAV1SequenceHeader* pStdSequenceHeader;
}
struct VideoDecodeAV1PictureInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoDecodeAV1PictureInfo* pStdPictureInfo;
   int[MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR] referenceNameSlotIndices;
   uint frameHeaderOffset;
   uint tileCount;
   uint* pTileOffsets;
   uint* pTileSizes;
}
struct VideoDecodeAV1DpbSlotInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoDecodeAV1ReferenceInfo* pStdReferenceInfo;
}
struct VideoSessionCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint queueFamilyIndex;
   VideoSessionCreateFlagsKHR flags;
   VideoProfileInfoKHR* pVideoProfile;
   Format pictureFormat;
   Extent2D maxCodedExtent;
   Format referencePictureFormat;
   uint maxDpbSlots;
   uint maxActiveReferencePictures;
   ExtensionProperties* pStdHeaderVersion;
}
struct VideoSessionParametersCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoSessionParametersCreateFlagsKHR flags;
   VideoSessionParametersKHR videoSessionParametersTemplate;
   VideoSessionKHR videoSession;
}
struct VideoSessionParametersUpdateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint updateSequenceCount;
}
struct VideoEncodeSessionParametersGetInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoSessionParametersKHR videoSessionParameters;
}
struct VideoEncodeSessionParametersFeedbackInfoKHR { 
   StructureType sType;
   void* pNext;
   uint hasOverrides;
}
struct VideoBeginCodingInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoBeginCodingFlagsKHR flags;
   VideoSessionKHR videoSession;
   VideoSessionParametersKHR videoSessionParameters;
   uint referenceSlotCount;
   VideoReferenceSlotInfoKHR* pReferenceSlots;
}
struct VideoEndCodingInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEndCodingFlagsKHR flags;
}
struct VideoCodingControlInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoCodingControlFlagsKHR flags;
}
struct VideoEncodeUsageInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeUsageFlagsKHR videoUsageHints;
   VideoEncodeContentFlagsKHR videoContentHints;
   VideoEncodeTuningModeKHR tuningMode;
}
struct VideoEncodeInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeFlagsKHR flags;
   Buffer dstBuffer;
   DeviceSize dstBufferOffset;
   DeviceSize dstBufferRange;
   VideoPictureResourceInfoKHR srcPictureResource;
   VideoReferenceSlotInfoKHR* pSetupReferenceSlot;
   uint referenceSlotCount;
   VideoReferenceSlotInfoKHR* pReferenceSlots;
   uint precedingExternallyEncodedBytes;
}
struct QueryPoolVideoEncodeFeedbackCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeFeedbackFlagsKHR encodeFeedbackFlags;
}
struct VideoEncodeQualityLevelInfoKHR { 
   StructureType sType;
   void* pNext;
   uint qualityLevel;
}
struct PhysicalDeviceVideoEncodeQualityLevelInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoProfileInfoKHR* pVideoProfile;
   uint qualityLevel;
}
struct VideoEncodeQualityLevelPropertiesKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeRateControlModeFlagBitsKHR preferredRateControlMode;
   uint preferredRateControlLayerCount;
}
struct VideoEncodeRateControlInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeRateControlFlagsKHR flags;
   VideoEncodeRateControlModeFlagBitsKHR rateControlMode;
   uint layerCount;
   VideoEncodeRateControlLayerInfoKHR* pLayers;
   uint virtualBufferSizeInMs;
   uint initialVirtualBufferSizeInMs;
}
struct VideoEncodeRateControlLayerInfoKHR { 
   StructureType sType;
   void* pNext;
   ulong averageBitrate;
   ulong maxBitrate;
   uint frameRateNumerator;
   uint frameRateDenominator;
}
struct VideoEncodeCapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeCapabilityFlagsKHR flags;
   VideoEncodeRateControlModeFlagsKHR rateControlModes;
   uint maxRateControlLayers;
   ulong maxBitrate;
   uint maxQualityLevels;
   Extent2D encodeInputPictureGranularity;
   VideoEncodeFeedbackFlagsKHR supportedEncodeFeedbackFlags;
}
struct VideoEncodeH264CapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeH264CapabilityFlagsKHR flags;
   StdVideoH264LevelIdc maxLevelIdc;
   uint maxSliceCount;
   uint maxPPictureL0ReferenceCount;
   uint maxBPictureL0ReferenceCount;
   uint maxL1ReferenceCount;
   uint maxTemporalLayerCount;
   uint expectDyadicTemporalLayerPattern;
   int minQp;
   int maxQp;
   uint prefersGopRemainingFrames;
   uint requiresGopRemainingFrames;
   VideoEncodeH264StdFlagsKHR stdSyntaxFlags;
}
struct VideoEncodeH264QualityLevelPropertiesKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeH264RateControlFlagsKHR preferredRateControlFlags;
   uint preferredGopFrameCount;
   uint preferredIdrPeriod;
   uint preferredConsecutiveBFrameCount;
   uint preferredTemporalLayerCount;
   VideoEncodeH264QpKHR preferredConstantQp;
   uint preferredMaxL0ReferenceCount;
   uint preferredMaxL1ReferenceCount;
   uint preferredStdEntropyCodingModeFlag;
}
struct VideoEncodeH264SessionCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint useMaxLevelIdc;
   StdVideoH264LevelIdc maxLevelIdc;
}
struct VideoEncodeH264SessionParametersAddInfoKHR { 
   StructureType sType;
   void* pNext;
   uint stdSPSCount;
   StdVideoH264SequenceParameterSet* pStdSPSs;
   uint stdPPSCount;
   StdVideoH264PictureParameterSet* pStdPPSs;
}
struct VideoEncodeH264SessionParametersCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint maxStdSPSCount;
   uint maxStdPPSCount;
   VideoEncodeH264SessionParametersAddInfoKHR* pParametersAddInfo;
}
struct VideoEncodeH264SessionParametersGetInfoKHR { 
   StructureType sType;
   void* pNext;
   uint writeStdSPS;
   uint writeStdPPS;
   uint stdSPSId;
   uint stdPPSId;
}
struct VideoEncodeH264SessionParametersFeedbackInfoKHR { 
   StructureType sType;
   void* pNext;
   uint hasStdSPSOverrides;
   uint hasStdPPSOverrides;
}
struct VideoEncodeH264DpbSlotInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoEncodeH264ReferenceInfo* pStdReferenceInfo;
}
struct VideoEncodeH264PictureInfoKHR { 
   StructureType sType;
   void* pNext;
   uint naluSliceEntryCount;
   VideoEncodeH264NaluSliceInfoKHR* pNaluSliceEntries;
   StdVideoEncodeH264PictureInfo* pStdPictureInfo;
   uint generatePrefixNalu;
}
struct VideoEncodeH264ProfileInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoH264ProfileIdc stdProfileIdc;
}
struct VideoEncodeH264NaluSliceInfoKHR { 
   StructureType sType;
   void* pNext;
   int constantQp;
   StdVideoEncodeH264SliceHeader* pStdSliceHeader;
}
struct VideoEncodeH264RateControlInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeH264RateControlFlagsKHR flags;
   uint gopFrameCount;
   uint idrPeriod;
   uint consecutiveBFrameCount;
   uint temporalLayerCount;
}
struct VideoEncodeH264QpKHR { 
   int qpI;
   int qpP;
   int qpB;
}
struct VideoEncodeH264FrameSizeKHR { 
   uint frameISize;
   uint framePSize;
   uint frameBSize;
}
struct VideoEncodeH264GopRemainingFrameInfoKHR { 
   StructureType sType;
   void* pNext;
   uint useGopRemainingFrames;
   uint gopRemainingI;
   uint gopRemainingP;
   uint gopRemainingB;
}
struct VideoEncodeH264RateControlLayerInfoKHR { 
   StructureType sType;
   void* pNext;
   uint useMinQp;
   VideoEncodeH264QpKHR minQp;
   uint useMaxQp;
   VideoEncodeH264QpKHR maxQp;
   uint useMaxFrameSize;
   VideoEncodeH264FrameSizeKHR maxFrameSize;
}
struct VideoEncodeH265CapabilitiesKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeH265CapabilityFlagsKHR flags;
   StdVideoH265LevelIdc maxLevelIdc;
   uint maxSliceSegmentCount;
   Extent2D maxTiles;
   VideoEncodeH265CtbSizeFlagsKHR ctbSizes;
   VideoEncodeH265TransformBlockSizeFlagsKHR transformBlockSizes;
   uint maxPPictureL0ReferenceCount;
   uint maxBPictureL0ReferenceCount;
   uint maxL1ReferenceCount;
   uint maxSubLayerCount;
   uint expectDyadicTemporalSubLayerPattern;
   int minQp;
   int maxQp;
   uint prefersGopRemainingFrames;
   uint requiresGopRemainingFrames;
   VideoEncodeH265StdFlagsKHR stdSyntaxFlags;
}
struct VideoEncodeH265QualityLevelPropertiesKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeH265RateControlFlagsKHR preferredRateControlFlags;
   uint preferredGopFrameCount;
   uint preferredIdrPeriod;
   uint preferredConsecutiveBFrameCount;
   uint preferredSubLayerCount;
   VideoEncodeH265QpKHR preferredConstantQp;
   uint preferredMaxL0ReferenceCount;
   uint preferredMaxL1ReferenceCount;
}
struct VideoEncodeH265SessionCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint useMaxLevelIdc;
   StdVideoH265LevelIdc maxLevelIdc;
}
struct VideoEncodeH265SessionParametersAddInfoKHR { 
   StructureType sType;
   void* pNext;
   uint stdVPSCount;
   StdVideoH265VideoParameterSet* pStdVPSs;
   uint stdSPSCount;
   StdVideoH265SequenceParameterSet* pStdSPSs;
   uint stdPPSCount;
   StdVideoH265PictureParameterSet* pStdPPSs;
}
struct VideoEncodeH265SessionParametersCreateInfoKHR { 
   StructureType sType;
   void* pNext;
   uint maxStdVPSCount;
   uint maxStdSPSCount;
   uint maxStdPPSCount;
   VideoEncodeH265SessionParametersAddInfoKHR* pParametersAddInfo;
}
struct VideoEncodeH265SessionParametersGetInfoKHR { 
   StructureType sType;
   void* pNext;
   uint writeStdVPS;
   uint writeStdSPS;
   uint writeStdPPS;
   uint stdVPSId;
   uint stdSPSId;
   uint stdPPSId;
}
struct VideoEncodeH265SessionParametersFeedbackInfoKHR { 
   StructureType sType;
   void* pNext;
   uint hasStdVPSOverrides;
   uint hasStdSPSOverrides;
   uint hasStdPPSOverrides;
}
struct VideoEncodeH265PictureInfoKHR { 
   StructureType sType;
   void* pNext;
   uint naluSliceSegmentEntryCount;
   VideoEncodeH265NaluSliceSegmentInfoKHR* pNaluSliceSegmentEntries;
   StdVideoEncodeH265PictureInfo* pStdPictureInfo;
}
struct VideoEncodeH265NaluSliceSegmentInfoKHR { 
   StructureType sType;
   void* pNext;
   int constantQp;
   StdVideoEncodeH265SliceSegmentHeader* pStdSliceSegmentHeader;
}
struct VideoEncodeH265RateControlInfoKHR { 
   StructureType sType;
   void* pNext;
   VideoEncodeH265RateControlFlagsKHR flags;
   uint gopFrameCount;
   uint idrPeriod;
   uint consecutiveBFrameCount;
   uint subLayerCount;
}
struct VideoEncodeH265QpKHR { 
   int qpI;
   int qpP;
   int qpB;
}
struct VideoEncodeH265FrameSizeKHR { 
   uint frameISize;
   uint framePSize;
   uint frameBSize;
}
struct VideoEncodeH265GopRemainingFrameInfoKHR { 
   StructureType sType;
   void* pNext;
   uint useGopRemainingFrames;
   uint gopRemainingI;
   uint gopRemainingP;
   uint gopRemainingB;
}
struct VideoEncodeH265RateControlLayerInfoKHR { 
   StructureType sType;
   void* pNext;
   uint useMinQp;
   VideoEncodeH265QpKHR minQp;
   uint useMaxQp;
   VideoEncodeH265QpKHR maxQp;
   uint useMaxFrameSize;
   VideoEncodeH265FrameSizeKHR maxFrameSize;
}
struct VideoEncodeH265ProfileInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoH265ProfileIdc stdProfileIdc;
}
struct VideoEncodeH265DpbSlotInfoKHR { 
   StructureType sType;
   void* pNext;
   StdVideoEncodeH265ReferenceInfo* pStdReferenceInfo;
}
struct PhysicalDeviceInheritedViewportScissorFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint inheritedViewportScissor2D;
}
struct CommandBufferInheritanceViewportScissorInfoNV { 
   StructureType sType;
   void* pNext;
   uint viewportScissor2D;
   uint viewportDepthCount;
   Viewport* pViewportDepths;
}
struct PhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint ycbcr2plane444Formats;
}
struct PhysicalDeviceProvokingVertexFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint provokingVertexLast;
   uint transformFeedbackPreservesProvokingVertex;
}
struct PhysicalDeviceProvokingVertexPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint provokingVertexModePerPipeline;
   uint transformFeedbackPreservesTriangleFanProvokingVertex;
}
struct PipelineRasterizationProvokingVertexStateCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ProvokingVertexModeEXT provokingVertexMode;
}
struct CuModuleCreateInfoNVX { 
   StructureType sType;
   void* pNext;
   usz dataSize;
   void* pData;
}
struct CuFunctionCreateInfoNVX { 
   StructureType sType;
   void* pNext;
   CuModuleNVX module;
   char* pName;
}
struct CuLaunchInfoNVX { 
   StructureType sType;
   void* pNext;
   CuFunctionNVX function;
   uint gridDimX;
   uint gridDimY;
   uint gridDimZ;
   uint blockDimX;
   uint blockDimY;
   uint blockDimZ;
   uint sharedMemBytes;
   usz paramCount;
   void* pParams;
   usz extraCount;
   void* pExtras;
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
struct AccelerationStructureCaptureDescriptorDataInfoEXT { 
   StructureType sType;
   void* pNext;
   AccelerationStructureKHR accelerationStructure;
   AccelerationStructureNV accelerationStructureNV;
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
struct PhysicalDeviceDrmPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint hasPrimary;
   uint hasRender;
   long primaryMajor;
   long primaryMinor;
   long renderMajor;
   long renderMinor;
}
struct PhysicalDeviceFragmentShaderBarycentricFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint fragmentShaderBarycentric;
}
struct PhysicalDeviceFragmentShaderBarycentricPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint triStripVertexOrderIndependentOfProvokingVertex;
}
struct PhysicalDeviceRayTracingMotionBlurFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint rayTracingMotionBlur;
   uint rayTracingMotionBlurPipelineTraceRaysIndirect;
}
struct PhysicalDeviceRayTracingValidationFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint rayTracingValidation;
}
struct AccelerationStructureGeometryMotionTrianglesDataNV { 
   StructureType sType;
   void* pNext;
   DeviceOrHostAddressConstKHR vertexData;
}
struct AccelerationStructureMotionInfoNV { 
   StructureType sType;
   void* pNext;
   uint maxInstances;
   AccelerationStructureMotionInfoFlagsNV flags;
}
struct SRTDataNV { 
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
struct AccelerationStructureSRTMotionInstanceNV { 
   SRTDataNV transformT0;
   SRTDataNV transformT1;
   uint: instanceCustomIndex;
   uint: mask;
   uint: instanceShaderBindingTableRecordOffset;
   GeometryInstanceFlagsKHR: flags;
   ulong accelerationStructureReference;
}
struct AccelerationStructureMatrixMotionInstanceNV { 
   TransformMatrixKHR transformT0;
   TransformMatrixKHR transformT1;
   uint: instanceCustomIndex;
   uint: mask;
   uint: instanceShaderBindingTableRecordOffset;
   GeometryInstanceFlagsKHR: flags;
   ulong accelerationStructureReference;
}
struct AccelerationStructureMotionInstanceNV { 
   AccelerationStructureMotionInstanceTypeNV type;
   AccelerationStructureMotionInstanceFlagsNV flags;
   AccelerationStructureMotionInstanceDataNV data;
}
struct MemoryGetRemoteAddressInfoNV { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   ExternalMemoryHandleTypeFlagBits handleType;
}
struct ImportMemoryBufferCollectionFUCHSIA { 
   StructureType sType;
   void* pNext;
   BufferCollectionFUCHSIA collection;
   uint index;
}
struct BufferCollectionImageCreateInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   BufferCollectionFUCHSIA collection;
   uint index;
}
struct BufferCollectionBufferCreateInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   BufferCollectionFUCHSIA collection;
   uint index;
}
struct BufferCollectionCreateInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   ZHandle collectionToken;
}
struct BufferCollectionPropertiesFUCHSIA { 
   StructureType sType;
   void* pNext;
   uint memoryTypeBits;
   uint bufferCount;
   uint createInfoIndex;
   ulong sysmemPixelFormat;
   FormatFeatureFlags formatFeatures;
   SysmemColorSpaceFUCHSIA sysmemColorSpaceIndex;
   ComponentMapping samplerYcbcrConversionComponents;
   SamplerYcbcrModelConversion suggestedYcbcrModel;
   SamplerYcbcrRange suggestedYcbcrRange;
   ChromaLocation suggestedXChromaOffset;
   ChromaLocation suggestedYChromaOffset;
}
struct BufferConstraintsInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   BufferCreateInfo createInfo;
   FormatFeatureFlags requiredFormatFeatures;
   BufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;
}
struct SysmemColorSpaceFUCHSIA { 
   StructureType sType;
   void* pNext;
   uint colorSpace;
}
struct ImageFormatConstraintsInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   ImageCreateInfo imageCreateInfo;
   FormatFeatureFlags requiredFormatFeatures;
   ImageFormatConstraintsFlagsFUCHSIA flags;
   ulong sysmemPixelFormat;
   uint colorSpaceCount;
   SysmemColorSpaceFUCHSIA* pColorSpaces;
}
struct ImageConstraintsInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   uint formatConstraintsCount;
   ImageFormatConstraintsInfoFUCHSIA* pFormatConstraints;
   BufferCollectionConstraintsInfoFUCHSIA bufferCollectionConstraints;
   ImageConstraintsInfoFlagsFUCHSIA flags;
}
struct BufferCollectionConstraintsInfoFUCHSIA { 
   StructureType sType;
   void* pNext;
   uint minBufferCount;
   uint maxBufferCount;
   uint minBufferCountForCamping;
   uint minBufferCountForDedicatedSlack;
   uint minBufferCountForSharedSlack;
}
struct CudaModuleCreateInfoNV { 
   StructureType sType;
   void* pNext;
   usz dataSize;
   void* pData;
}
struct CudaFunctionCreateInfoNV { 
   StructureType sType;
   void* pNext;
   CudaModuleNV module;
   char* pName;
}
struct CudaLaunchInfoNV { 
   StructureType sType;
   void* pNext;
   CudaFunctionNV function;
   uint gridDimX;
   uint gridDimY;
   uint gridDimZ;
   uint blockDimX;
   uint blockDimY;
   uint blockDimZ;
   uint sharedMemBytes;
   usz paramCount;
   void* pParams;
   usz extraCount;
   void* pExtras;
}
struct PhysicalDeviceRGBA10X6FormatsFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint formatRgba10x6WithoutYCbCrSampler;
}
struct FormatProperties3 { 
   StructureType sType;
   void* pNext;
   FormatFeatureFlags2 linearTilingFeatures;
   FormatFeatureFlags2 optimalTilingFeatures;
   FormatFeatureFlags2 bufferFeatures;
}
struct DrmFormatModifierPropertiesList2EXT { 
   StructureType sType;
   void* pNext;
   uint drmFormatModifierCount;
   DrmFormatModifierProperties2EXT* pDrmFormatModifierProperties;
}
struct DrmFormatModifierProperties2EXT { 
   ulong drmFormatModifier;
   uint drmFormatModifierPlaneCount;
   FormatFeatureFlags2 drmFormatModifierTilingFeatures;
}
struct AndroidHardwareBufferFormatProperties2ANDROID { 
   StructureType sType;
   void* pNext;
   Format format;
   ulong externalFormat;
   FormatFeatureFlags2 formatFeatures;
   ComponentMapping samplerYcbcrConversionComponents;
   SamplerYcbcrModelConversion suggestedYcbcrModel;
   SamplerYcbcrRange suggestedYcbcrRange;
   ChromaLocation suggestedXChromaOffset;
   ChromaLocation suggestedYChromaOffset;
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
struct RenderingFragmentShadingRateAttachmentInfoKHR { 
   StructureType sType;
   void* pNext;
   ImageView imageView;
   ImageLayout imageLayout;
   Extent2D shadingRateAttachmentTexelSize;
}
struct RenderingFragmentDensityMapAttachmentInfoEXT { 
   StructureType sType;
   void* pNext;
   ImageView imageView;
   ImageLayout imageLayout;
}
struct PhysicalDeviceDynamicRenderingFeatures { 
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
   uint colorAttachmentCount;
   Format* pColorAttachmentFormats;
   Format depthAttachmentFormat;
   Format stencilAttachmentFormat;
   SampleCountFlagBits rasterizationSamples;
}
struct AttachmentSampleCountInfoAMD { 
   StructureType sType;
   void* pNext;
   uint colorAttachmentCount;
   SampleCountFlagBits* pColorAttachmentSamples;
   SampleCountFlagBits depthStencilAttachmentSamples;
}
struct MultiviewPerViewAttributesInfoNVX { 
   StructureType sType;
   void* pNext;
   uint perViewAttributes;
   uint perViewAttributesPositionXOnly;
}
struct PhysicalDeviceImageViewMinLodFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint minLod;
}
struct ImageViewMinLodCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   float minLod;
}
struct PhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint rasterizationOrderColorAttachmentAccess;
   uint rasterizationOrderDepthAttachmentAccess;
   uint rasterizationOrderStencilAttachmentAccess;
}
struct PhysicalDeviceLinearColorAttachmentFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint linearColorAttachment;
}
struct PhysicalDeviceGraphicsPipelineLibraryFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint graphicsPipelineLibrary;
}
struct PhysicalDeviceGraphicsPipelineLibraryPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint graphicsPipelineLibraryFastLinking;
   uint graphicsPipelineLibraryIndependentInterpolationDecoration;
}
struct GraphicsPipelineLibraryCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   GraphicsPipelineLibraryFlagsEXT flags;
}
struct PhysicalDeviceDescriptorSetHostMappingFeaturesVALVE { 
   StructureType sType;
   void* pNext;
   uint descriptorSetHostMapping;
}
struct DescriptorSetBindingReferenceVALVE { 
   StructureType sType;
   void* pNext;
   DescriptorSetLayout descriptorSetLayout;
   uint binding;
}
struct DescriptorSetLayoutHostMappingInfoVALVE { 
   StructureType sType;
   void* pNext;
   usz descriptorOffset;
   uint descriptorSize;
}
struct PhysicalDeviceNestedCommandBufferFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint nestedCommandBuffer;
   uint nestedCommandBufferRendering;
   uint nestedCommandBufferSimultaneousUse;
}
struct PhysicalDeviceNestedCommandBufferPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxCommandBufferNestingLevel;
}
struct PhysicalDeviceShaderModuleIdentifierFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderModuleIdentifier;
}
struct PhysicalDeviceShaderModuleIdentifierPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint[UUID_SIZE] shaderModuleIdentifierAlgorithmUUID;
}
struct PipelineShaderStageModuleIdentifierCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint identifierSize;
   uint* pIdentifier;
}
struct ShaderModuleIdentifierEXT { 
   StructureType sType;
   void* pNext;
   uint identifierSize;
   uint[MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT] identifier;
}
struct ImageCompressionControlEXT { 
   StructureType sType;
   void* pNext;
   ImageCompressionFlagsEXT flags;
   uint compressionControlPlaneCount;
   ImageCompressionFixedRateFlagsEXT* pFixedRateFlags;
}
struct PhysicalDeviceImageCompressionControlFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint imageCompressionControl;
}
struct ImageCompressionPropertiesEXT { 
   StructureType sType;
   void* pNext;
   ImageCompressionFlagsEXT imageCompressionFlags;
   ImageCompressionFixedRateFlagsEXT imageCompressionFixedRateFlags;
}
struct PhysicalDeviceImageCompressionControlSwapchainFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint imageCompressionControlSwapchain;
}
struct ImageSubresource2KHR { 
   StructureType sType;
   void* pNext;
   ImageSubresource imageSubresource;
}
struct SubresourceLayout2KHR { 
   StructureType sType;
   void* pNext;
   SubresourceLayout subresourceLayout;
}
struct RenderPassCreationControlEXT { 
   StructureType sType;
   void* pNext;
   uint disallowMerging;
}
struct RenderPassCreationFeedbackInfoEXT { 
   uint postMergeSubpassCount;
}
struct RenderPassCreationFeedbackCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   RenderPassCreationFeedbackInfoEXT* pRenderPassFeedback;
}
struct RenderPassSubpassFeedbackInfoEXT { 
   SubpassMergeStatusEXT subpassMergeStatus;
   char[MAX_DESCRIPTION_SIZE] description;
   uint postMergeIndex;
}
struct RenderPassSubpassFeedbackCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   RenderPassSubpassFeedbackInfoEXT* pSubpassFeedback;
}
struct PhysicalDeviceSubpassMergeFeedbackFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint subpassMergeFeedback;
}
struct MicromapBuildInfoEXT { 
   StructureType sType;
   void* pNext;
   MicromapTypeEXT type;
   BuildMicromapFlagsEXT flags;
   BuildMicromapModeEXT mode;
   MicromapEXT dstMicromap;
   uint usageCountsCount;
   MicromapUsageEXT* pUsageCounts;
   MicromapUsageEXT* ppUsageCounts;
   DeviceOrHostAddressConstKHR data;
   DeviceOrHostAddressKHR scratchData;
   DeviceOrHostAddressConstKHR triangleArray;
   DeviceSize triangleArrayStride;
}
struct MicromapCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   MicromapCreateFlagsEXT createFlags;
   Buffer buffer;
   DeviceSize offset;
   DeviceSize size;
   MicromapTypeEXT type;
   DeviceAddress deviceAddress;
}
struct MicromapVersionInfoEXT { 
   StructureType sType;
   void* pNext;
   uint* pVersionData;
}
struct CopyMicromapInfoEXT { 
   StructureType sType;
   void* pNext;
   MicromapEXT src;
   MicromapEXT dst;
   CopyMicromapModeEXT mode;
}
struct CopyMicromapToMemoryInfoEXT { 
   StructureType sType;
   void* pNext;
   MicromapEXT src;
   DeviceOrHostAddressKHR dst;
   CopyMicromapModeEXT mode;
}
struct CopyMemoryToMicromapInfoEXT { 
   StructureType sType;
   void* pNext;
   DeviceOrHostAddressConstKHR src;
   MicromapEXT dst;
   CopyMicromapModeEXT mode;
}
struct MicromapBuildSizesInfoEXT { 
   StructureType sType;
   void* pNext;
   DeviceSize micromapSize;
   DeviceSize buildScratchSize;
   uint discardable;
}
struct MicromapUsageEXT { 
   uint count;
   uint subdivisionLevel;
   uint format;
}
struct MicromapTriangleEXT { 
   uint dataOffset;
   uint subdivisionLevel;
   uint format;
}
struct PhysicalDeviceOpacityMicromapFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint micromap;
   uint micromapCaptureReplay;
   uint micromapHostCommands;
}
struct PhysicalDeviceOpacityMicromapPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint maxOpacity2StateSubdivisionLevel;
   uint maxOpacity4StateSubdivisionLevel;
}
struct AccelerationStructureTrianglesOpacityMicromapEXT { 
   StructureType sType;
   void* pNext;
   IndexType indexType;
   DeviceOrHostAddressConstKHR indexBuffer;
   DeviceSize indexStride;
   uint baseTriangle;
   uint usageCountsCount;
   MicromapUsageEXT* pUsageCounts;
   MicromapUsageEXT* ppUsageCounts;
   MicromapEXT micromap;
}
struct PhysicalDeviceDisplacementMicromapFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint displacementMicromap;
}
struct PhysicalDeviceDisplacementMicromapPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint maxDisplacementMicromapSubdivisionLevel;
}
struct AccelerationStructureTrianglesDisplacementMicromapNV { 
   StructureType sType;
   void* pNext;
   Format displacementBiasAndScaleFormat;
   Format displacementVectorFormat;
   DeviceOrHostAddressConstKHR displacementBiasAndScaleBuffer;
   DeviceSize displacementBiasAndScaleStride;
   DeviceOrHostAddressConstKHR displacementVectorBuffer;
   DeviceSize displacementVectorStride;
   DeviceOrHostAddressConstKHR displacedMicromapPrimitiveFlags;
   DeviceSize displacedMicromapPrimitiveFlagsStride;
   IndexType indexType;
   DeviceOrHostAddressConstKHR indexBuffer;
   DeviceSize indexStride;
   uint baseTriangle;
   uint usageCountsCount;
   MicromapUsageEXT* pUsageCounts;
   MicromapUsageEXT* ppUsageCounts;
   MicromapEXT micromap;
}
struct PipelinePropertiesIdentifierEXT { 
   StructureType sType;
   void* pNext;
   uint[UUID_SIZE] pipelineIdentifier;
}
struct PhysicalDevicePipelinePropertiesFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint pipelinePropertiesIdentifier;
}
struct PhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD { 
   StructureType sType;
   void* pNext;
   uint shaderEarlyAndLateFragmentTests;
}
struct ExternalMemoryAcquireUnmodifiedEXT { 
   StructureType sType;
   void* pNext;
   uint acquireUnmodifiedMemory;
}
struct ExportMetalObjectCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ExportMetalObjectTypeFlagBitsEXT exportObjectType;
}
struct ExportMetalObjectsInfoEXT { 
   StructureType sType;
   void* pNext;
}
struct ExportMetalDeviceInfoEXT { 
   StructureType sType;
   void* pNext;
   MTLDevice_id mtlDevice;
}
struct ExportMetalCommandQueueInfoEXT { 
   StructureType sType;
   void* pNext;
   Queue queue;
   MTLCommandQueue_id mtlCommandQueue;
}
struct ExportMetalBufferInfoEXT { 
   StructureType sType;
   void* pNext;
   DeviceMemory memory;
   MTLBuffer_id mtlBuffer;
}
struct ImportMetalBufferInfoEXT { 
   StructureType sType;
   void* pNext;
   MTLBuffer_id mtlBuffer;
}
struct ExportMetalTextureInfoEXT { 
   StructureType sType;
   void* pNext;
   Image image;
   ImageView imageView;
   BufferView bufferView;
   ImageAspectFlagBits plane;
   MTLTexture_id mtlTexture;
}
struct ImportMetalTextureInfoEXT { 
   StructureType sType;
   void* pNext;
   ImageAspectFlagBits plane;
   MTLTexture_id mtlTexture;
}
struct ExportMetalIOSurfaceInfoEXT { 
   StructureType sType;
   void* pNext;
   Image image;
   IOSurfaceRef ioSurface;
}
struct ImportMetalIOSurfaceInfoEXT { 
   StructureType sType;
   void* pNext;
   IOSurfaceRef ioSurface;
}
struct ExportMetalSharedEventInfoEXT { 
   StructureType sType;
   void* pNext;
   Semaphore semaphore;
   Event event;
   MTLSharedEvent_id mtlSharedEvent;
}
struct ImportMetalSharedEventInfoEXT { 
   StructureType sType;
   void* pNext;
   MTLSharedEvent_id mtlSharedEvent;
}
struct PhysicalDeviceNonSeamlessCubeMapFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint nonSeamlessCubeMap;
}
struct PhysicalDevicePipelineRobustnessFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint pipelineRobustness;
}
struct PipelineRobustnessCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   PipelineRobustnessBufferBehaviorEXT storageBuffers;
   PipelineRobustnessBufferBehaviorEXT uniformBuffers;
   PipelineRobustnessBufferBehaviorEXT vertexInputs;
   PipelineRobustnessImageBehaviorEXT images;
}
struct PhysicalDevicePipelineRobustnessPropertiesEXT { 
   StructureType sType;
   void* pNext;
   PipelineRobustnessBufferBehaviorEXT defaultRobustnessStorageBuffers;
   PipelineRobustnessBufferBehaviorEXT defaultRobustnessUniformBuffers;
   PipelineRobustnessBufferBehaviorEXT defaultRobustnessVertexInputs;
   PipelineRobustnessImageBehaviorEXT defaultRobustnessImages;
}
struct ImageViewSampleWeightCreateInfoQCOM { 
   StructureType sType;
   void* pNext;
   Offset2D filterCenter;
   Extent2D filterSize;
   uint numPhases;
}
struct PhysicalDeviceImageProcessingFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint textureSampleWeighted;
   uint textureBoxFilter;
   uint textureBlockMatch;
}
struct PhysicalDeviceImageProcessingPropertiesQCOM { 
   StructureType sType;
   void* pNext;
   uint maxWeightFilterPhases;
   Extent2D maxWeightFilterDimension;
   Extent2D maxBlockMatchRegion;
   Extent2D maxBoxFilterBlockSize;
}
struct PhysicalDeviceTilePropertiesFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint tileProperties;
}
struct TilePropertiesQCOM { 
   StructureType sType;
   void* pNext;
   Extent3D tileSize;
   Extent2D apronSize;
   Offset2D origin;
}
struct PhysicalDeviceAmigoProfilingFeaturesSEC { 
   StructureType sType;
   void* pNext;
   uint amigoProfiling;
}
struct AmigoProfilingSubmitInfoSEC { 
   StructureType sType;
   void* pNext;
   ulong firstDrawTimestamp;
   ulong swapBufferTimestamp;
}
struct PhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint attachmentFeedbackLoopLayout;
}
struct PhysicalDeviceDepthClampZeroOneFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint depthClampZeroOne;
}
struct PhysicalDeviceAddressBindingReportFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint reportAddressBinding;
}
struct DeviceAddressBindingCallbackDataEXT { 
   StructureType sType;
   void* pNext;
   DeviceAddressBindingFlagsEXT flags;
   DeviceAddress baseAddress;
   DeviceSize size;
   DeviceAddressBindingTypeEXT bindingType;
}
struct PhysicalDeviceOpticalFlowFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint opticalFlow;
}
struct PhysicalDeviceOpticalFlowPropertiesNV { 
   StructureType sType;
   void* pNext;
   OpticalFlowGridSizeFlagsNV supportedOutputGridSizes;
   OpticalFlowGridSizeFlagsNV supportedHintGridSizes;
   uint hintSupported;
   uint costSupported;
   uint bidirectionalFlowSupported;
   uint globalFlowSupported;
   uint minWidth;
   uint minHeight;
   uint maxWidth;
   uint maxHeight;
   uint maxNumRegionsOfInterest;
}
struct OpticalFlowImageFormatInfoNV { 
   StructureType sType;
   void* pNext;
   OpticalFlowUsageFlagsNV usage;
}
struct OpticalFlowImageFormatPropertiesNV { 
   StructureType sType;
   void* pNext;
   Format format;
}
struct OpticalFlowSessionCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint width;
   uint height;
   Format imageFormat;
   Format flowVectorFormat;
   Format costFormat;
   OpticalFlowGridSizeFlagsNV outputGridSize;
   OpticalFlowGridSizeFlagsNV hintGridSize;
   OpticalFlowPerformanceLevelNV performanceLevel;
   OpticalFlowSessionCreateFlagsNV flags;
}
struct OpticalFlowSessionCreatePrivateDataInfoNV { 
   StructureType sType;
   void* pNext;
   uint id;
   uint size;
   void* pPrivateData;
}
struct OpticalFlowExecuteInfoNV { 
   StructureType sType;
   void* pNext;
   OpticalFlowExecuteFlagsNV flags;
   uint regionCount;
   Rect2D* pRegions;
}
struct PhysicalDeviceFaultFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint deviceFault;
   uint deviceFaultVendorBinary;
}
struct DeviceFaultAddressInfoEXT { 
   DeviceFaultAddressTypeEXT addressType;
   DeviceAddress reportedAddress;
   DeviceSize addressPrecision;
}
struct DeviceFaultVendorInfoEXT { 
   char[MAX_DESCRIPTION_SIZE] description;
   ulong vendorFaultCode;
   ulong vendorFaultData;
}
struct DeviceFaultCountsEXT { 
   StructureType sType;
   void* pNext;
   uint addressInfoCount;
   uint vendorInfoCount;
   DeviceSize vendorBinarySize;
}
struct DeviceFaultInfoEXT { 
   StructureType sType;
   void* pNext;
   char[MAX_DESCRIPTION_SIZE] description;
   DeviceFaultAddressInfoEXT* pAddressInfos;
   DeviceFaultVendorInfoEXT* pVendorInfos;
   void* pVendorBinaryData;
}
struct DeviceFaultVendorBinaryHeaderVersionOneEXT { 
   uint headerSize;
   DeviceFaultVendorBinaryHeaderVersionEXT headerVersion;
   uint vendorID;
   uint deviceID;
   uint driverVersion;
   uint[UUID_SIZE] pipelineCacheUUID;
   uint applicationNameOffset;
   uint applicationVersion;
   uint engineNameOffset;
   uint engineVersion;
   uint apiVersion;
}
struct PhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint pipelineLibraryGroupHandles;
}
struct DepthBiasInfoEXT { 
   StructureType sType;
   void* pNext;
   float depthBiasConstantFactor;
   float depthBiasClamp;
   float depthBiasSlopeFactor;
}
struct DepthBiasRepresentationInfoEXT { 
   StructureType sType;
   void* pNext;
   DepthBiasRepresentationEXT depthBiasRepresentation;
   uint depthBiasExact;
}
struct DecompressMemoryRegionNV { 
   DeviceAddress srcAddress;
   DeviceAddress dstAddress;
   DeviceSize compressedSize;
   DeviceSize decompressedSize;
   MemoryDecompressionMethodFlagsNV decompressionMethod;
}
struct PhysicalDeviceShaderCoreBuiltinsPropertiesARM { 
   StructureType sType;
   void* pNext;
   ulong shaderCoreMask;
   uint shaderCoreCount;
   uint shaderWarpsPerCore;
}
struct PhysicalDeviceShaderCoreBuiltinsFeaturesARM { 
   StructureType sType;
   void* pNext;
   uint shaderCoreBuiltins;
}
struct FrameBoundaryEXT { 
   StructureType sType;
   void* pNext;
   FrameBoundaryFlagsEXT flags;
   ulong frameID;
   uint imageCount;
   Image* pImages;
   uint bufferCount;
   Buffer* pBuffers;
   ulong tagName;
   usz tagSize;
   void* pTag;
}
struct PhysicalDeviceFrameBoundaryFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint frameBoundary;
}
struct PhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint dynamicRenderingUnusedAttachments;
}
struct SurfacePresentModeEXT { 
   StructureType sType;
   void* pNext;
   PresentModeKHR presentMode;
}
struct SurfacePresentScalingCapabilitiesEXT { 
   StructureType sType;
   void* pNext;
   PresentScalingFlagsEXT supportedPresentScaling;
   PresentGravityFlagsEXT supportedPresentGravityX;
   PresentGravityFlagsEXT supportedPresentGravityY;
   Extent2D minScaledImageExtent;
   Extent2D maxScaledImageExtent;
}
struct SurfacePresentModeCompatibilityEXT { 
   StructureType sType;
   void* pNext;
   uint presentModeCount;
   PresentModeKHR* pPresentModes;
}
struct PhysicalDeviceSwapchainMaintenance1FeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint swapchainMaintenance1;
}
struct SwapchainPresentFenceInfoEXT { 
   StructureType sType;
   void* pNext;
   uint swapchainCount;
   Fence* pFences;
}
struct SwapchainPresentModesCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   uint presentModeCount;
   PresentModeKHR* pPresentModes;
}
struct SwapchainPresentModeInfoEXT { 
   StructureType sType;
   void* pNext;
   uint swapchainCount;
   PresentModeKHR* pPresentModes;
}
struct SwapchainPresentScalingCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   PresentScalingFlagsEXT scalingBehavior;
   PresentGravityFlagsEXT presentGravityX;
   PresentGravityFlagsEXT presentGravityY;
}
struct ReleaseSwapchainImagesInfoEXT { 
   StructureType sType;
   void* pNext;
   SwapchainKHR swapchain;
   uint imageIndexCount;
   uint* pImageIndices;
}
struct PhysicalDeviceDepthBiasControlFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint depthBiasControl;
   uint leastRepresentableValueForceUnormRepresentation;
   uint floatRepresentation;
   uint depthBiasExact;
}
struct PhysicalDeviceRayTracingInvocationReorderFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint rayTracingInvocationReorder;
}
struct PhysicalDeviceRayTracingInvocationReorderPropertiesNV { 
   StructureType sType;
   void* pNext;
   RayTracingInvocationReorderModeNV rayTracingInvocationReorderReorderingHint;
}
struct PhysicalDeviceExtendedSparseAddressSpaceFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint extendedSparseAddressSpace;
}
struct PhysicalDeviceExtendedSparseAddressSpacePropertiesNV { 
   StructureType sType;
   void* pNext;
   DeviceSize extendedSparseAddressSpaceSize;
   ImageUsageFlags extendedSparseImageUsageFlags;
   BufferUsageFlags extendedSparseBufferUsageFlags;
}
struct DirectDriverLoadingInfoLUNARG { 
   StructureType sType;
   void* pNext;
   DirectDriverLoadingFlagsLUNARG flags;
   PFN_vkGetInstanceProcAddrLUNARG pfnGetInstanceProcAddr;
}
struct DirectDriverLoadingListLUNARG { 
   StructureType sType;
   void* pNext;
   DirectDriverLoadingModeLUNARG mode;
   uint driverCount;
   DirectDriverLoadingInfoLUNARG* pDrivers;
}
struct PhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint multiviewPerViewViewports;
}
struct PhysicalDeviceRayTracingPositionFetchFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint rayTracingPositionFetch;
}
struct DeviceImageSubresourceInfoKHR { 
   StructureType sType;
   void* pNext;
   ImageCreateInfo* pCreateInfo;
   ImageSubresource2KHR* pSubresource;
}
struct PhysicalDeviceShaderCorePropertiesARM { 
   StructureType sType;
   void* pNext;
   uint pixelRate;
   uint texelRate;
   uint fmaRate;
}
struct PhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint multiviewPerViewRenderAreas;
}
struct MultiviewPerViewRenderAreasRenderPassBeginInfoQCOM { 
   StructureType sType;
   void* pNext;
   uint perViewRenderAreaCount;
   Rect2D* pPerViewRenderAreas;
}
struct QueryLowLatencySupportNV { 
   StructureType sType;
   void* pNext;
   void* pQueriedLowLatencyData;
}
struct MemoryMapInfoKHR { 
   StructureType sType;
   void* pNext;
   MemoryMapFlags flags;
   DeviceMemory memory;
   DeviceSize offset;
   DeviceSize size;
}
struct MemoryUnmapInfoKHR { 
   StructureType sType;
   void* pNext;
   MemoryUnmapFlagsKHR flags;
   DeviceMemory memory;
}
struct PhysicalDeviceShaderObjectFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderObject;
}
struct PhysicalDeviceShaderObjectPropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint[UUID_SIZE] shaderBinaryUUID;
   uint shaderBinaryVersion;
}
struct ShaderCreateInfoEXT { 
   StructureType sType;
   void* pNext;
   ShaderCreateFlagsEXT flags;
   ShaderStageFlagBits stage;
   ShaderStageFlags nextStage;
   ShaderCodeTypeEXT codeType;
   usz codeSize;
   void* pCode;
   char* pName;
   uint setLayoutCount;
   DescriptorSetLayout* pSetLayouts;
   uint pushConstantRangeCount;
   PushConstantRange* pPushConstantRanges;
   SpecializationInfo* pSpecializationInfo;
}
struct PhysicalDeviceShaderTileImageFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderTileImageColorReadAccess;
   uint shaderTileImageDepthReadAccess;
   uint shaderTileImageStencilReadAccess;
}
struct PhysicalDeviceShaderTileImagePropertiesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderTileImageCoherentReadAccelerated;
   uint shaderTileImageReadSampleFromPixelRateInvocation;
   uint shaderTileImageReadFromHelperInvocation;
}
struct ImportScreenBufferInfoQNX { 
   StructureType sType;
   void* pNext;
   _screen_buffer* buffer;
}
struct ScreenBufferPropertiesQNX { 
   StructureType sType;
   void* pNext;
   DeviceSize allocationSize;
   uint memoryTypeBits;
}
struct ScreenBufferFormatPropertiesQNX { 
   StructureType sType;
   void* pNext;
   Format format;
   ulong externalFormat;
   ulong screenUsage;
   FormatFeatureFlags formatFeatures;
   ComponentMapping samplerYcbcrConversionComponents;
   SamplerYcbcrModelConversion suggestedYcbcrModel;
   SamplerYcbcrRange suggestedYcbcrRange;
   ChromaLocation suggestedXChromaOffset;
   ChromaLocation suggestedYChromaOffset;
}
struct ExternalFormatQNX { 
   StructureType sType;
   void* pNext;
   ulong externalFormat;
}
struct PhysicalDeviceExternalMemoryScreenBufferFeaturesQNX { 
   StructureType sType;
   void* pNext;
   uint screenBufferImport;
}
struct PhysicalDeviceCooperativeMatrixFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint cooperativeMatrix;
   uint cooperativeMatrixRobustBufferAccess;
}
struct CooperativeMatrixPropertiesKHR { 
   StructureType sType;
   void* pNext;
   uint MSize;
   uint NSize;
   uint KSize;
   ComponentTypeKHR AType;
   ComponentTypeKHR BType;
   ComponentTypeKHR CType;
   ComponentTypeKHR ResultType;
   uint saturatingAccumulation;
   ScopeKHR scope;
}
struct PhysicalDeviceCooperativeMatrixPropertiesKHR { 
   StructureType sType;
   void* pNext;
   ShaderStageFlags cooperativeMatrixSupportedStages;
}
struct PhysicalDeviceShaderEnqueuePropertiesAMDX { 
   StructureType sType;
   void* pNext;
   uint maxExecutionGraphDepth;
   uint maxExecutionGraphShaderOutputNodes;
   uint maxExecutionGraphShaderPayloadSize;
   uint maxExecutionGraphShaderPayloadCount;
   uint executionGraphDispatchAddressAlignment;
}
struct PhysicalDeviceShaderEnqueueFeaturesAMDX { 
   StructureType sType;
   void* pNext;
   uint shaderEnqueue;
}
struct ExecutionGraphPipelineCreateInfoAMDX { 
   StructureType sType;
   void* pNext;
   PipelineCreateFlags flags;
   uint stageCount;
   PipelineShaderStageCreateInfo* pStages;
   PipelineLibraryCreateInfoKHR* pLibraryInfo;
   PipelineLayout layout;
   Pipeline basePipelineHandle;
   int basePipelineIndex;
}
struct PipelineShaderStageNodeCreateInfoAMDX { 
   StructureType sType;
   void* pNext;
   char* pName;
   uint index;
}
struct ExecutionGraphPipelineScratchSizeAMDX { 
   StructureType sType;
   void* pNext;
   DeviceSize size;
}
struct DispatchGraphInfoAMDX { 
   uint nodeIndex;
   uint payloadCount;
   DeviceOrHostAddressConstAMDX payloads;
   ulong payloadStride;
}
struct DispatchGraphCountInfoAMDX { 
   uint count;
   DeviceOrHostAddressConstAMDX infos;
   ulong stride;
}
struct PhysicalDeviceAntiLagFeaturesAMD { 
   StructureType sType;
   void* pNext;
   uint antiLag;
}
struct AntiLagDataAMD { 
   StructureType sType;
   void* pNext;
   AntiLagModeAMD mode;
   uint maxFPS;
   AntiLagPresentationInfoAMD* pPresentationInfo;
}
struct AntiLagPresentationInfoAMD { 
   StructureType sType;
   void* pNext;
   AntiLagStageAMD stage;
   ulong frameIndex;
}
struct BindMemoryStatusKHR { 
   StructureType sType;
   void* pNext;
   Result* pResult;
}
struct BindDescriptorSetsInfoKHR { 
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
struct PushConstantsInfoKHR { 
   StructureType sType;
   void* pNext;
   PipelineLayout layout;
   ShaderStageFlags stageFlags;
   uint offset;
   uint size;
   void* pValues;
}
struct PushDescriptorSetInfoKHR { 
   StructureType sType;
   void* pNext;
   ShaderStageFlags stageFlags;
   PipelineLayout layout;
   uint set;
   uint descriptorWriteCount;
   WriteDescriptorSet* pDescriptorWrites;
}
struct PushDescriptorSetWithTemplateInfoKHR { 
   StructureType sType;
   void* pNext;
   DescriptorUpdateTemplate descriptorUpdateTemplate;
   PipelineLayout layout;
   uint set;
   void* pData;
}
struct SetDescriptorBufferOffsetsInfoEXT { 
   StructureType sType;
   void* pNext;
   ShaderStageFlags stageFlags;
   PipelineLayout layout;
   uint firstSet;
   uint setCount;
   uint* pBufferIndices;
   DeviceSize* pOffsets;
}
struct BindDescriptorBufferEmbeddedSamplersInfoEXT { 
   StructureType sType;
   void* pNext;
   ShaderStageFlags stageFlags;
   PipelineLayout layout;
   uint set;
}
struct PhysicalDeviceCubicClampFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint cubicRangeClamp;
}
struct PhysicalDeviceYcbcrDegammaFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint ycbcrDegamma;
}
struct SamplerYcbcrConversionYcbcrDegammaCreateInfoQCOM { 
   StructureType sType;
   void* pNext;
   uint enableYDegamma;
   uint enableCbCrDegamma;
}
struct PhysicalDeviceCubicWeightsFeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint selectableCubicWeights;
}
struct SamplerCubicWeightsCreateInfoQCOM { 
   StructureType sType;
   void* pNext;
   CubicFilterWeightsQCOM cubicWeights;
}
struct BlitImageCubicWeightsInfoQCOM { 
   StructureType sType;
   void* pNext;
   CubicFilterWeightsQCOM cubicWeights;
}
struct PhysicalDeviceImageProcessing2FeaturesQCOM { 
   StructureType sType;
   void* pNext;
   uint textureBlockMatch2;
}
struct PhysicalDeviceImageProcessing2PropertiesQCOM { 
   StructureType sType;
   void* pNext;
   Extent2D maxBlockMatchWindow;
}
struct SamplerBlockMatchWindowCreateInfoQCOM { 
   StructureType sType;
   void* pNext;
   Extent2D windowExtent;
   BlockMatchWindowCompareModeQCOM windowCompareMode;
}
struct PhysicalDeviceDescriptorPoolOverallocationFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint descriptorPoolOverallocation;
}
struct PhysicalDeviceLayeredDriverPropertiesMSFT { 
   StructureType sType;
   void* pNext;
   LayeredDriverUnderlyingApiMSFT underlyingAPI;
}
struct PhysicalDevicePerStageDescriptorSetFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint perStageDescriptorSet;
   uint dynamicPipelineLayout;
}
struct PhysicalDeviceExternalFormatResolveFeaturesANDROID { 
   StructureType sType;
   void* pNext;
   uint externalFormatResolve;
}
struct PhysicalDeviceExternalFormatResolvePropertiesANDROID { 
   StructureType sType;
   void* pNext;
   uint nullColorAttachmentWithExternalFormatResolve;
   ChromaLocation externalFormatResolveChromaOffsetX;
   ChromaLocation externalFormatResolveChromaOffsetY;
}
struct AndroidHardwareBufferFormatResolvePropertiesANDROID { 
   StructureType sType;
   void* pNext;
   Format colorAttachmentFormat;
}
struct LatencySleepModeInfoNV { 
   StructureType sType;
   void* pNext;
   uint lowLatencyMode;
   uint lowLatencyBoost;
   uint minimumIntervalUs;
}
struct LatencySleepInfoNV { 
   StructureType sType;
   void* pNext;
   Semaphore signalSemaphore;
   ulong value;
}
struct SetLatencyMarkerInfoNV { 
   StructureType sType;
   void* pNext;
   ulong presentID;
   LatencyMarkerNV marker;
}
struct GetLatencyMarkerInfoNV { 
   StructureType sType;
   void* pNext;
   uint timingCount;
   LatencyTimingsFrameReportNV* pTimings;
}
struct LatencyTimingsFrameReportNV { 
   StructureType sType;
   void* pNext;
   ulong presentID;
   ulong inputSampleTimeUs;
   ulong simStartTimeUs;
   ulong simEndTimeUs;
   ulong renderSubmitStartTimeUs;
   ulong renderSubmitEndTimeUs;
   ulong presentStartTimeUs;
   ulong presentEndTimeUs;
   ulong driverStartTimeUs;
   ulong driverEndTimeUs;
   ulong osRenderQueueStartTimeUs;
   ulong osRenderQueueEndTimeUs;
   ulong gpuRenderStartTimeUs;
   ulong gpuRenderEndTimeUs;
}
struct OutOfBandQueueTypeInfoNV { 
   StructureType sType;
   void* pNext;
   OutOfBandQueueTypeNV queueType;
}
struct LatencySubmissionPresentIdNV { 
   StructureType sType;
   void* pNext;
   ulong presentID;
}
struct SwapchainLatencyCreateInfoNV { 
   StructureType sType;
   void* pNext;
   uint latencyModeEnable;
}
struct LatencySurfaceCapabilitiesNV { 
   StructureType sType;
   void* pNext;
   uint presentModeCount;
   PresentModeKHR* pPresentModes;
}
struct PhysicalDeviceCudaKernelLaunchFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint cudaKernelLaunchFeatures;
}
struct PhysicalDeviceCudaKernelLaunchPropertiesNV { 
   StructureType sType;
   void* pNext;
   uint computeCapabilityMinor;
   uint computeCapabilityMajor;
}
struct DeviceQueueShaderCoreControlCreateInfoARM { 
   StructureType sType;
   void* pNext;
   uint shaderCoreCount;
}
struct PhysicalDeviceSchedulingControlsFeaturesARM { 
   StructureType sType;
   void* pNext;
   uint schedulingControls;
}
struct PhysicalDeviceSchedulingControlsPropertiesARM { 
   StructureType sType;
   void* pNext;
   PhysicalDeviceSchedulingControlsFlagsARM schedulingControlsFlags;
}
struct PhysicalDeviceRelaxedLineRasterizationFeaturesIMG { 
   StructureType sType;
   void* pNext;
   uint relaxedLineRasterization;
}
struct PhysicalDeviceRenderPassStripedFeaturesARM { 
   StructureType sType;
   void* pNext;
   uint renderPassStriped;
}
struct PhysicalDeviceRenderPassStripedPropertiesARM { 
   StructureType sType;
   void* pNext;
   Extent2D renderPassStripeGranularity;
   uint maxRenderPassStripes;
}
struct RenderPassStripeInfoARM { 
   StructureType sType;
   void* pNext;
   Rect2D stripeArea;
}
struct RenderPassStripeBeginInfoARM { 
   StructureType sType;
   void* pNext;
   uint stripeInfoCount;
   RenderPassStripeInfoARM* pStripeInfos;
}
struct RenderPassStripeSubmitInfoARM { 
   StructureType sType;
   void* pNext;
   uint stripeSemaphoreInfoCount;
   SemaphoreSubmitInfo* pStripeSemaphoreInfos;
}
struct PhysicalDeviceShaderMaximalReconvergenceFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderMaximalReconvergence;
}
struct PhysicalDeviceShaderSubgroupRotateFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderSubgroupRotate;
   uint shaderSubgroupRotateClustered;
}
struct PhysicalDeviceShaderExpectAssumeFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderExpectAssume;
}
struct PhysicalDeviceShaderFloatControls2FeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderFloatControls2;
}
struct PhysicalDeviceDynamicRenderingLocalReadFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint dynamicRenderingLocalRead;
}
struct RenderingAttachmentLocationInfoKHR { 
   StructureType sType;
   void* pNext;
   uint colorAttachmentCount;
   uint* pColorAttachmentLocations;
}
struct RenderingInputAttachmentIndexInfoKHR { 
   StructureType sType;
   void* pNext;
   uint colorAttachmentCount;
   uint* pColorAttachmentInputIndices;
   uint* pDepthInputAttachmentIndex;
   uint* pStencilInputAttachmentIndex;
}
struct PhysicalDeviceShaderQuadControlFeaturesKHR { 
   StructureType sType;
   void* pNext;
   uint shaderQuadControl;
}
struct PhysicalDeviceShaderAtomicFloat16VectorFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint shaderFloat16VectorAtomics;
}
struct PhysicalDeviceMapMemoryPlacedFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint memoryMapPlaced;
   uint memoryMapRangePlaced;
   uint memoryUnmapReserve;
}
struct PhysicalDeviceMapMemoryPlacedPropertiesEXT { 
   StructureType sType;
   void* pNext;
   DeviceSize minPlacedMemoryMapAlignment;
}
struct MemoryMapPlacedInfoEXT { 
   StructureType sType;
   void* pNext;
   void* pPlacedAddress;
}
struct PhysicalDeviceRawAccessChainsFeaturesNV { 
   StructureType sType;
   void* pNext;
   uint shaderRawAccessChains;
}
struct PhysicalDeviceImageAlignmentControlFeaturesMESA { 
   StructureType sType;
   void* pNext;
   uint imageAlignmentControl;
}
struct PhysicalDeviceImageAlignmentControlPropertiesMESA { 
   StructureType sType;
   void* pNext;
   uint supportedImageAlignmentMask;
}
struct ImageAlignmentControlCreateInfoMESA { 
   StructureType sType;
   void* pNext;
   uint maximumRequestedAlignment;
}
struct PhysicalDeviceShaderReplicatedCompositesFeaturesEXT { 
   StructureType sType;
   void* pNext;
   uint shaderReplicatedComposites;
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
union PerformanceCounterResultKHR { 
   int int32;
   long int64;
   uint uint32;
   ulong uint64;
   float float32;
   double float64;
}
union PerformanceValueDataINTEL { 
   uint value32;
   ulong value64;
   float valueFloat;
   uint valueBool;
   char* valueString;
}
union PipelineExecutableStatisticValueKHR { 
   uint b32;
   long i64;
   ulong u64;
   double f64;
}
union DeviceOrHostAddressKHR { 
   DeviceAddress deviceAddress;
   void* hostAddress;
}
union DeviceOrHostAddressConstKHR { 
   DeviceAddress deviceAddress;
   void* hostAddress;
}
union DeviceOrHostAddressConstAMDX { 
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
union AccelerationStructureMotionInstanceDataNV { 
   AccelerationStructureInstanceKHR staticInstance;
   AccelerationStructureMatrixMotionInstanceNV matrixMotionInstance;
   AccelerationStructureSRTMotionInstanceNV srtMotionInstance;
}
extern fn Result vkCreateInstance (InstanceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Instance* pInstance) @extern("vkCreateInstance"); 
extern fn void destroyInstance (Instance instance, AllocationCallbacks* pAllocator) @extern("vkDestroyInstance"); 
extern fn Result vkEnumeratePhysicalDevices (Instance instance, uint* pPhysicalDeviceCount, PhysicalDevice* pPhysicalDevices) @extern("vkEnumeratePhysicalDevices"); 
extern fn PFN_vkVoidFunction vkGetDeviceProcAddr (Device device, char* pName) @extern("vkGetDeviceProcAddr"); 
extern fn PFN_vkVoidFunction vkGetInstanceProcAddr (Instance instance, char* pName) @extern("vkGetInstanceProcAddr"); 
extern fn void getPhysicalDeviceProperties (PhysicalDevice physicalDevice, PhysicalDeviceProperties* pProperties) @extern("vkGetPhysicalDeviceProperties"); 
extern fn void getPhysicalDeviceQueueFamilyProperties (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties* pQueueFamilyProperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties"); 
extern fn void getPhysicalDeviceMemoryProperties (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties* pMemoryProperties) @extern("vkGetPhysicalDeviceMemoryProperties"); 
extern fn void getPhysicalDeviceFeatures (PhysicalDevice physicalDevice, PhysicalDeviceFeatures* pFeatures) @extern("vkGetPhysicalDeviceFeatures"); 
extern fn void getPhysicalDeviceFormatProperties (PhysicalDevice physicalDevice, Format format, FormatProperties* pFormatProperties) @extern("vkGetPhysicalDeviceFormatProperties"); 
extern fn Result vkGetPhysicalDeviceImageFormatProperties (PhysicalDevice physicalDevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pImageFormatProperties) @extern("vkGetPhysicalDeviceImageFormatProperties"); 
extern fn Result vkCreateDevice (PhysicalDevice physicalDevice, DeviceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Device* pDevice) @extern("vkCreateDevice"); 
extern fn void destroyDevice (Device device, AllocationCallbacks* pAllocator) @extern("vkDestroyDevice"); 
extern fn Result vkEnumerateInstanceVersion (uint* pApiVersion) @extern("vkEnumerateInstanceVersion"); 
extern fn Result vkEnumerateInstanceLayerProperties (uint* pPropertyCount, LayerProperties* pProperties) @extern("vkEnumerateInstanceLayerProperties"); 
extern fn Result vkEnumerateInstanceExtensionProperties (char* pLayerName, uint* pPropertyCount, ExtensionProperties* pProperties) @extern("vkEnumerateInstanceExtensionProperties"); 
extern fn Result vkEnumerateDeviceLayerProperties (PhysicalDevice physicalDevice, uint* pPropertyCount, LayerProperties* pProperties) @extern("vkEnumerateDeviceLayerProperties"); 
extern fn Result vkEnumerateDeviceExtensionProperties (PhysicalDevice physicalDevice, char* pLayerName, uint* pPropertyCount, ExtensionProperties* pProperties) @extern("vkEnumerateDeviceExtensionProperties"); 
extern fn void getDeviceQueue (Device device, uint queueFamilyIndex, uint queueIndex, Queue* pQueue) @extern("vkGetDeviceQueue"); 
extern fn Result vkQueueSubmit (Queue queue, uint submitCount, SubmitInfo* pSubmits, Fence fence) @extern("vkQueueSubmit"); 
extern fn Result vkQueueWaitIdle (Queue queue) @extern("vkQueueWaitIdle"); 
extern fn Result vkDeviceWaitIdle (Device device) @extern("vkDeviceWaitIdle"); 
extern fn Result vkAllocateMemory (Device device, MemoryAllocateInfo* pAllocateInfo, AllocationCallbacks* pAllocator, DeviceMemory* pMemory) @extern("vkAllocateMemory"); 
extern fn void freeMemory (Device device, DeviceMemory memory, AllocationCallbacks* pAllocator) @extern("vkFreeMemory"); 
extern fn Result vkMapMemory (Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void** ppData) @extern("vkMapMemory"); 
extern fn void unmapMemory (Device device, DeviceMemory memory) @extern("vkUnmapMemory"); 
extern fn Result vkFlushMappedMemoryRanges (Device device, uint memoryRangeCount, MappedMemoryRange* pMemoryRanges) @extern("vkFlushMappedMemoryRanges"); 
extern fn Result vkInvalidateMappedMemoryRanges (Device device, uint memoryRangeCount, MappedMemoryRange* pMemoryRanges) @extern("vkInvalidateMappedMemoryRanges"); 
extern fn void getDeviceMemoryCommitment (Device device, DeviceMemory memory, DeviceSize* pCommittedMemoryInBytes) @extern("vkGetDeviceMemoryCommitment"); 
extern fn void getBufferMemoryRequirements (Device device, Buffer buffer, MemoryRequirements* pMemoryRequirements) @extern("vkGetBufferMemoryRequirements"); 
extern fn Result vkBindBufferMemory (Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryOffset) @extern("vkBindBufferMemory"); 
extern fn void getImageMemoryRequirements (Device device, Image image, MemoryRequirements* pMemoryRequirements) @extern("vkGetImageMemoryRequirements"); 
extern fn Result vkBindImageMemory (Device device, Image image, DeviceMemory memory, DeviceSize memoryOffset) @extern("vkBindImageMemory"); 
extern fn void getImageSparseMemoryRequirements (Device device, Image image, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements* pSparseMemoryRequirements) @extern("vkGetImageSparseMemoryRequirements"); 
extern fn void getPhysicalDeviceSparseImageFormatProperties (PhysicalDevice physicalDevice, Format format, ImageType type, SampleCountFlagBits samples, ImageUsageFlags usage, ImageTiling tiling, uint* pPropertyCount, SparseImageFormatProperties* pProperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties"); 
extern fn Result vkQueueBindSparse (Queue queue, uint bindInfoCount, BindSparseInfo* pBindInfo, Fence fence) @extern("vkQueueBindSparse"); 
extern fn Result vkCreateFence (Device device, FenceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Fence* pFence) @extern("vkCreateFence"); 
extern fn void destroyFence (Device device, Fence fence, AllocationCallbacks* pAllocator) @extern("vkDestroyFence"); 
extern fn Result vkResetFences (Device device, uint fenceCount, Fence* pFences) @extern("vkResetFences"); 
extern fn Result vkGetFenceStatus (Device device, Fence fence) @extern("vkGetFenceStatus"); 
extern fn Result vkWaitForFences (Device device, uint fenceCount, Fence* pFences, uint waitAll, ulong timeout) @extern("vkWaitForFences"); 
extern fn Result vkCreateSemaphore (Device device, SemaphoreCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Semaphore* pSemaphore) @extern("vkCreateSemaphore"); 
extern fn void destroySemaphore (Device device, Semaphore semaphore, AllocationCallbacks* pAllocator) @extern("vkDestroySemaphore"); 
extern fn Result vkCreateEvent (Device device, EventCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Event* pEvent) @extern("vkCreateEvent"); 
extern fn void destroyEvent (Device device, Event event, AllocationCallbacks* pAllocator) @extern("vkDestroyEvent"); 
extern fn Result vkGetEventStatus (Device device, Event event) @extern("vkGetEventStatus"); 
extern fn Result vkSetEvent (Device device, Event event) @extern("vkSetEvent"); 
extern fn Result vkResetEvent (Device device, Event event) @extern("vkResetEvent"); 
extern fn Result vkCreateQueryPool (Device device, QueryPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, QueryPool* pQueryPool) @extern("vkCreateQueryPool"); 
extern fn void destroyQueryPool (Device device, QueryPool queryPool, AllocationCallbacks* pAllocator) @extern("vkDestroyQueryPool"); 
extern fn Result vkGetQueryPoolResults (Device device, QueryPool queryPool, uint firstQuery, uint queryCount, usz dataSize, void* pData, DeviceSize stride, QueryResultFlags flags) @extern("vkGetQueryPoolResults"); 
extern fn void resetQueryPool (Device device, QueryPool queryPool, uint firstQuery, uint queryCount) @extern("vkResetQueryPool"); 
extern fn Result vkCreateBuffer (Device device, BufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Buffer* pBuffer) @extern("vkCreateBuffer"); 
extern fn void destroyBuffer (Device device, Buffer buffer, AllocationCallbacks* pAllocator) @extern("vkDestroyBuffer"); 
extern fn Result vkCreateBufferView (Device device, BufferViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, BufferView* pView) @extern("vkCreateBufferView"); 
extern fn void destroyBufferView (Device device, BufferView bufferView, AllocationCallbacks* pAllocator) @extern("vkDestroyBufferView"); 
extern fn Result vkCreateImage (Device device, ImageCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Image* pImage) @extern("vkCreateImage"); 
extern fn void destroyImage (Device device, Image image, AllocationCallbacks* pAllocator) @extern("vkDestroyImage"); 
extern fn void getImageSubresourceLayout (Device device, Image image, ImageSubresource* pSubresource, SubresourceLayout* pLayout) @extern("vkGetImageSubresourceLayout"); 
extern fn Result vkCreateImageView (Device device, ImageViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ImageView* pView) @extern("vkCreateImageView"); 
extern fn void destroyImageView (Device device, ImageView imageView, AllocationCallbacks* pAllocator) @extern("vkDestroyImageView"); 
extern fn Result vkCreateShaderModule (Device device, ShaderModuleCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ShaderModule* pShaderModule) @extern("vkCreateShaderModule"); 
extern fn void destroyShaderModule (Device device, ShaderModule shaderModule, AllocationCallbacks* pAllocator) @extern("vkDestroyShaderModule"); 
extern fn Result vkCreatePipelineCache (Device device, PipelineCacheCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineCache* pPipelineCache) @extern("vkCreatePipelineCache"); 
extern fn void destroyPipelineCache (Device device, PipelineCache pipelineCache, AllocationCallbacks* pAllocator) @extern("vkDestroyPipelineCache"); 
extern fn Result vkGetPipelineCacheData (Device device, PipelineCache pipelineCache, usz* pDataSize, void* pData) @extern("vkGetPipelineCacheData"); 
extern fn Result vkMergePipelineCaches (Device device, PipelineCache dstCache, uint srcCacheCount, PipelineCache* pSrcCaches) @extern("vkMergePipelineCaches"); 
extern fn Result vkCreateGraphicsPipelines (Device device, PipelineCache pipelineCache, uint createInfoCount, GraphicsPipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) @extern("vkCreateGraphicsPipelines"); 
extern fn Result vkCreateComputePipelines (Device device, PipelineCache pipelineCache, uint createInfoCount, ComputePipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) @extern("vkCreateComputePipelines"); 
extern fn void destroyPipeline (Device device, Pipeline pipeline, AllocationCallbacks* pAllocator) @extern("vkDestroyPipeline"); 
extern fn Result vkCreatePipelineLayout (Device device, PipelineLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineLayout* pPipelineLayout) @extern("vkCreatePipelineLayout"); 
extern fn void destroyPipelineLayout (Device device, PipelineLayout pipelineLayout, AllocationCallbacks* pAllocator) @extern("vkDestroyPipelineLayout"); 
extern fn Result vkCreateSampler (Device device, SamplerCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Sampler* pSampler) @extern("vkCreateSampler"); 
extern fn void destroySampler (Device device, Sampler sampler, AllocationCallbacks* pAllocator) @extern("vkDestroySampler"); 
extern fn Result vkCreateDescriptorSetLayout (Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorSetLayout* pSetLayout) @extern("vkCreateDescriptorSetLayout"); 
extern fn void destroyDescriptorSetLayout (Device device, DescriptorSetLayout descriptorSetLayout, AllocationCallbacks* pAllocator) @extern("vkDestroyDescriptorSetLayout"); 
extern fn Result vkCreateDescriptorPool (Device device, DescriptorPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorPool* pDescriptorPool) @extern("vkCreateDescriptorPool"); 
extern fn void destroyDescriptorPool (Device device, DescriptorPool descriptorPool, AllocationCallbacks* pAllocator) @extern("vkDestroyDescriptorPool"); 
extern fn Result vkResetDescriptorPool (Device device, DescriptorPool descriptorPool, DescriptorPoolResetFlags flags) @extern("vkResetDescriptorPool"); 
extern fn Result vkAllocateDescriptorSets (Device device, DescriptorSetAllocateInfo* pAllocateInfo, DescriptorSet* pDescriptorSets) @extern("vkAllocateDescriptorSets"); 
extern fn Result vkFreeDescriptorSets (Device device, DescriptorPool descriptorPool, uint descriptorSetCount, DescriptorSet* pDescriptorSets) @extern("vkFreeDescriptorSets"); 
extern fn void updateDescriptorSets (Device device, uint descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites, uint descriptorCopyCount, CopyDescriptorSet* pDescriptorCopies) @extern("vkUpdateDescriptorSets"); 
extern fn Result vkCreateFramebuffer (Device device, FramebufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Framebuffer* pFramebuffer) @extern("vkCreateFramebuffer"); 
extern fn void destroyFramebuffer (Device device, Framebuffer framebuffer, AllocationCallbacks* pAllocator) @extern("vkDestroyFramebuffer"); 
extern fn Result vkCreateRenderPass (Device device, RenderPassCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) @extern("vkCreateRenderPass"); 
extern fn void destroyRenderPass (Device device, RenderPass renderPass, AllocationCallbacks* pAllocator) @extern("vkDestroyRenderPass"); 
extern fn void getRenderAreaGranularity (Device device, RenderPass renderPass, Extent2D* pGranularity) @extern("vkGetRenderAreaGranularity"); 
extern fn Result vkCreateCommandPool (Device device, CommandPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, CommandPool* pCommandPool) @extern("vkCreateCommandPool"); 
extern fn void destroyCommandPool (Device device, CommandPool commandPool, AllocationCallbacks* pAllocator) @extern("vkDestroyCommandPool"); 
extern fn Result vkResetCommandPool (Device device, CommandPool commandPool, CommandPoolResetFlags flags) @extern("vkResetCommandPool"); 
extern fn Result vkAllocateCommandBuffers (Device device, CommandBufferAllocateInfo* pAllocateInfo, CommandBuffer* pCommandBuffers) @extern("vkAllocateCommandBuffers"); 
extern fn void freeCommandBuffers (Device device, CommandPool commandPool, uint commandBufferCount, CommandBuffer* pCommandBuffers) @extern("vkFreeCommandBuffers"); 
extern fn Result vkBeginCommandBuffer (CommandBuffer commandBuffer, CommandBufferBeginInfo* pBeginInfo) @extern("vkBeginCommandBuffer"); 
extern fn Result vkEndCommandBuffer (CommandBuffer commandBuffer) @extern("vkEndCommandBuffer"); 
extern fn Result vkResetCommandBuffer (CommandBuffer commandBuffer, CommandBufferResetFlags flags) @extern("vkResetCommandBuffer"); 
extern fn void cmdBindPipeline (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, Pipeline pipeline) @extern("vkCmdBindPipeline"); 
extern fn void cmdSetViewport (CommandBuffer commandBuffer, uint firstViewport, uint viewportCount, Viewport* pViewports) @extern("vkCmdSetViewport"); 
extern fn void cmdSetScissor (CommandBuffer commandBuffer, uint firstScissor, uint scissorCount, Rect2D* pScissors) @extern("vkCmdSetScissor"); 
extern fn void cmdSetLineWidth (CommandBuffer commandBuffer, float lineWidth) @extern("vkCmdSetLineWidth"); 
extern fn void cmdSetDepthBias (CommandBuffer commandBuffer, float depthBiasConstantFactor, float depthBiasClamp, float depthBiasSlopeFactor) @extern("vkCmdSetDepthBias"); 
extern fn void cmdSetBlendConstants (CommandBuffer commandBuffer, float[4] blendConstants) @extern("vkCmdSetBlendConstants"); 
extern fn void cmdSetDepthBounds (CommandBuffer commandBuffer, float minDepthBounds, float maxDepthBounds) @extern("vkCmdSetDepthBounds"); 
extern fn void cmdSetStencilCompareMask (CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint compareMask) @extern("vkCmdSetStencilCompareMask"); 
extern fn void cmdSetStencilWriteMask (CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint writeMask) @extern("vkCmdSetStencilWriteMask"); 
extern fn void cmdSetStencilReference (CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint reference) @extern("vkCmdSetStencilReference"); 
extern fn void cmdBindDescriptorSets (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint firstSet, uint descriptorSetCount, DescriptorSet* pDescriptorSets, uint dynamicOffsetCount, uint* pDynamicOffsets) @extern("vkCmdBindDescriptorSets"); 
extern fn void cmdBindIndexBuffer (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, IndexType indexType) @extern("vkCmdBindIndexBuffer"); 
extern fn void cmdBindVertexBuffers (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, Buffer* pBuffers, DeviceSize* pOffsets) @extern("vkCmdBindVertexBuffers"); 
extern fn void cmdDraw (CommandBuffer commandBuffer, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance) @extern("vkCmdDraw"); 
extern fn void cmdDrawIndexed (CommandBuffer commandBuffer, uint indexCount, uint instanceCount, uint firstIndex, int vertexOffset, uint firstInstance) @extern("vkCmdDrawIndexed"); 
extern fn void cmdDrawIndirect (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint drawCount, uint stride) @extern("vkCmdDrawIndirect"); 
extern fn void cmdDrawIndexedIndirect (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint drawCount, uint stride) @extern("vkCmdDrawIndexedIndirect"); 
extern fn void cmdDispatch (CommandBuffer commandBuffer, uint groupCountX, uint groupCountY, uint groupCountZ) @extern("vkCmdDispatch"); 
extern fn void cmdDispatchIndirect (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset) @extern("vkCmdDispatchIndirect"); 
extern fn void cmdCopyBuffer (CommandBuffer commandBuffer, Buffer srcBuffer, Buffer dstBuffer, uint regionCount, BufferCopy* pRegions) @extern("vkCmdCopyBuffer"); 
extern fn void cmdCopyImage (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint regionCount, ImageCopy* pRegions) @extern("vkCmdCopyImage"); 
extern fn void cmdBlitImage (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint regionCount, ImageBlit* pRegions, Filter filter) @extern("vkCmdBlitImage"); 
extern fn void cmdCopyBufferToImage (CommandBuffer commandBuffer, Buffer srcBuffer, Image dstImage, ImageLayout dstImageLayout, uint regionCount, BufferImageCopy* pRegions) @extern("vkCmdCopyBufferToImage"); 
extern fn void cmdCopyImageToBuffer (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Buffer dstBuffer, uint regionCount, BufferImageCopy* pRegions) @extern("vkCmdCopyImageToBuffer"); 
extern fn void cmdUpdateBuffer (CommandBuffer commandBuffer, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize dataSize, void* pData) @extern("vkCmdUpdateBuffer"); 
extern fn void cmdFillBuffer (CommandBuffer commandBuffer, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize size, uint data) @extern("vkCmdFillBuffer"); 
extern fn void cmdClearColorImage (CommandBuffer commandBuffer, Image image, ImageLayout imageLayout, ClearColorValue* pColor, uint rangeCount, ImageSubresourceRange* pRanges) @extern("vkCmdClearColorImage"); 
extern fn void cmdClearDepthStencilImage (CommandBuffer commandBuffer, Image image, ImageLayout imageLayout, ClearDepthStencilValue* pDepthStencil, uint rangeCount, ImageSubresourceRange* pRanges) @extern("vkCmdClearDepthStencilImage"); 
extern fn void cmdClearAttachments (CommandBuffer commandBuffer, uint attachmentCount, ClearAttachment* pAttachments, uint rectCount, ClearRect* pRects) @extern("vkCmdClearAttachments"); 
extern fn void cmdResolveImage (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint regionCount, ImageResolve* pRegions) @extern("vkCmdResolveImage"); 
extern fn void cmdSetEvent (CommandBuffer commandBuffer, Event event, PipelineStageFlags stageMask) @extern("vkCmdSetEvent"); 
extern fn void cmdResetEvent (CommandBuffer commandBuffer, Event event, PipelineStageFlags stageMask) @extern("vkCmdResetEvent"); 
extern fn void cmdWaitEvents (CommandBuffer commandBuffer, uint eventCount, Event* pEvents, PipelineStageFlags srcStageMask, PipelineStageFlags dstStageMask, uint memoryBarrierCount, MemoryBarrier* pMemoryBarriers, uint bufferMemoryBarrierCount, BufferMemoryBarrier* pBufferMemoryBarriers, uint imageMemoryBarrierCount, ImageMemoryBarrier* pImageMemoryBarriers) @extern("vkCmdWaitEvents"); 
extern fn void cmdPipelineBarrier (CommandBuffer commandBuffer, PipelineStageFlags srcStageMask, PipelineStageFlags dstStageMask, DependencyFlags dependencyFlags, uint memoryBarrierCount, MemoryBarrier* pMemoryBarriers, uint bufferMemoryBarrierCount, BufferMemoryBarrier* pBufferMemoryBarriers, uint imageMemoryBarrierCount, ImageMemoryBarrier* pImageMemoryBarriers) @extern("vkCmdPipelineBarrier"); 
extern fn void cmdBeginQuery (CommandBuffer commandBuffer, QueryPool queryPool, uint query, QueryControlFlags flags) @extern("vkCmdBeginQuery"); 
extern fn void cmdEndQuery (CommandBuffer commandBuffer, QueryPool queryPool, uint query) @extern("vkCmdEndQuery"); 
extern fn void cmdResetQueryPool (CommandBuffer commandBuffer, QueryPool queryPool, uint firstQuery, uint queryCount) @extern("vkCmdResetQueryPool"); 
extern fn void cmdWriteTimestamp (CommandBuffer commandBuffer, PipelineStageFlagBits pipelineStage, QueryPool queryPool, uint query) @extern("vkCmdWriteTimestamp"); 
extern fn void cmdCopyQueryPoolResults (CommandBuffer commandBuffer, QueryPool queryPool, uint firstQuery, uint queryCount, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize stride, QueryResultFlags flags) @extern("vkCmdCopyQueryPoolResults"); 
extern fn void cmdPushConstants (CommandBuffer commandBuffer, PipelineLayout layout, ShaderStageFlags stageFlags, uint offset, uint size, void* pValues) @extern("vkCmdPushConstants"); 
extern fn void cmdBeginRenderPass (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassContents contents) @extern("vkCmdBeginRenderPass"); 
extern fn void cmdNextSubpass (CommandBuffer commandBuffer, SubpassContents contents) @extern("vkCmdNextSubpass"); 
extern fn void cmdEndRenderPass (CommandBuffer commandBuffer) @extern("vkCmdEndRenderPass"); 
extern fn void cmdExecuteCommands (CommandBuffer commandBuffer, uint commandBufferCount, CommandBuffer* pCommandBuffers) @extern("vkCmdExecuteCommands"); 
extern fn void getPhysicalDeviceFeatures2 (PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures) @extern("vkGetPhysicalDeviceFeatures2"); 
extern fn void getPhysicalDeviceProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties) @extern("vkGetPhysicalDeviceProperties2"); 
extern fn void getPhysicalDeviceFormatProperties2 (PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties) @extern("vkGetPhysicalDeviceFormatProperties2"); 
extern fn Result vkGetPhysicalDeviceImageFormatProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties) @extern("vkGetPhysicalDeviceImageFormatProperties2"); 
extern fn void getPhysicalDeviceQueueFamilyProperties2 (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties2"); 
extern fn void getPhysicalDeviceMemoryProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties) @extern("vkGetPhysicalDeviceMemoryProperties2"); 
extern fn void getPhysicalDeviceSparseImageFormatProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint* pPropertyCount, SparseImageFormatProperties2* pProperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties2"); 
extern fn void trimCommandPool (Device device, CommandPool commandPool, CommandPoolTrimFlags flags) @extern("vkTrimCommandPool"); 
extern fn void getPhysicalDeviceExternalBufferProperties (PhysicalDevice physicalDevice, PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, ExternalBufferProperties* pExternalBufferProperties) @extern("vkGetPhysicalDeviceExternalBufferProperties"); 
extern fn void getPhysicalDeviceExternalSemaphoreProperties (PhysicalDevice physicalDevice, PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, ExternalSemaphoreProperties* pExternalSemaphoreProperties) @extern("vkGetPhysicalDeviceExternalSemaphoreProperties"); 
extern fn void getPhysicalDeviceExternalFenceProperties (PhysicalDevice physicalDevice, PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, ExternalFenceProperties* pExternalFenceProperties) @extern("vkGetPhysicalDeviceExternalFenceProperties"); 
extern fn Result vkEnumeratePhysicalDeviceGroups (Instance instance, uint* pPhysicalDeviceGroupCount, PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) @extern("vkEnumeratePhysicalDeviceGroups"); 
extern fn void getDeviceGroupPeerMemoryFeatures (Device device, uint heapIndex, uint localDeviceIndex, uint remoteDeviceIndex, PeerMemoryFeatureFlags* pPeerMemoryFeatures) @extern("vkGetDeviceGroupPeerMemoryFeatures"); 
extern fn Result vkBindBufferMemory2 (Device device, uint bindInfoCount, BindBufferMemoryInfo* pBindInfos) @extern("vkBindBufferMemory2"); 
extern fn Result vkBindImageMemory2 (Device device, uint bindInfoCount, BindImageMemoryInfo* pBindInfos) @extern("vkBindImageMemory2"); 
extern fn void cmdSetDeviceMask (CommandBuffer commandBuffer, uint deviceMask) @extern("vkCmdSetDeviceMask"); 
extern fn void cmdDispatchBase (CommandBuffer commandBuffer, uint baseGroupX, uint baseGroupY, uint baseGroupZ, uint groupCountX, uint groupCountY, uint groupCountZ) @extern("vkCmdDispatchBase"); 
extern fn Result vkCreateDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplateCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorUpdateTemplate* pDescriptorUpdateTemplate) @extern("vkCreateDescriptorUpdateTemplate"); 
extern fn void destroyDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplate descriptorUpdateTemplate, AllocationCallbacks* pAllocator) @extern("vkDestroyDescriptorUpdateTemplate"); 
extern fn void updateDescriptorSetWithTemplate (Device device, DescriptorSet descriptorSet, DescriptorUpdateTemplate descriptorUpdateTemplate, void* pData) @extern("vkUpdateDescriptorSetWithTemplate"); 
extern fn void getBufferMemoryRequirements2 (Device device, BufferMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetBufferMemoryRequirements2"); 
extern fn void getImageMemoryRequirements2 (Device device, ImageMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetImageMemoryRequirements2"); 
extern fn void getImageSparseMemoryRequirements2 (Device device, ImageSparseMemoryRequirementsInfo2* pInfo, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements) @extern("vkGetImageSparseMemoryRequirements2"); 
extern fn void getDeviceBufferMemoryRequirements (Device device, DeviceBufferMemoryRequirements* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetDeviceBufferMemoryRequirements"); 
extern fn void getDeviceImageMemoryRequirements (Device device, DeviceImageMemoryRequirements* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetDeviceImageMemoryRequirements"); 
extern fn void getDeviceImageSparseMemoryRequirements (Device device, DeviceImageMemoryRequirements* pInfo, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements) @extern("vkGetDeviceImageSparseMemoryRequirements"); 
extern fn Result vkCreateSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion) @extern("vkCreateSamplerYcbcrConversion"); 
extern fn void destroySamplerYcbcrConversion (Device device, SamplerYcbcrConversion ycbcrConversion, AllocationCallbacks* pAllocator) @extern("vkDestroySamplerYcbcrConversion"); 
extern fn void getDeviceQueue2 (Device device, DeviceQueueInfo2* pQueueInfo, Queue* pQueue) @extern("vkGetDeviceQueue2"); 
extern fn void getDescriptorSetLayoutSupport (Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, DescriptorSetLayoutSupport* pSupport) @extern("vkGetDescriptorSetLayoutSupport"); 
extern fn Result vkCreateRenderPass2 (Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) @extern("vkCreateRenderPass2"); 
extern fn void cmdBeginRenderPass2 (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo) @extern("vkCmdBeginRenderPass2"); 
extern fn void cmdNextSubpass2 (CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo) @extern("vkCmdNextSubpass2"); 
extern fn void cmdEndRenderPass2 (CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo) @extern("vkCmdEndRenderPass2"); 
extern fn Result vkGetSemaphoreCounterValue (Device device, Semaphore semaphore, ulong* pValue) @extern("vkGetSemaphoreCounterValue"); 
extern fn Result vkWaitSemaphores (Device device, SemaphoreWaitInfo* pWaitInfo, ulong timeout) @extern("vkWaitSemaphores"); 
extern fn Result vkSignalSemaphore (Device device, SemaphoreSignalInfo* pSignalInfo) @extern("vkSignalSemaphore"); 
extern fn void cmdDrawIndirectCount (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) @extern("vkCmdDrawIndirectCount"); 
extern fn void cmdDrawIndexedIndirectCount (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) @extern("vkCmdDrawIndexedIndirectCount"); 
extern fn ulong vkGetBufferOpaqueCaptureAddress (Device device, BufferDeviceAddressInfo* pInfo) @extern("vkGetBufferOpaqueCaptureAddress"); 
extern fn DeviceAddress vkGetBufferDeviceAddress (Device device, BufferDeviceAddressInfo* pInfo) @extern("vkGetBufferDeviceAddress"); 
extern fn ulong vkGetDeviceMemoryOpaqueCaptureAddress (Device device, DeviceMemoryOpaqueCaptureAddressInfo* pInfo) @extern("vkGetDeviceMemoryOpaqueCaptureAddress"); 
extern fn Result vkGetPhysicalDeviceToolProperties (PhysicalDevice physicalDevice, uint* pToolCount, PhysicalDeviceToolProperties* pToolProperties) @extern("vkGetPhysicalDeviceToolProperties"); 
extern fn void cmdSetCullMode (CommandBuffer commandBuffer, CullModeFlags cullMode) @extern("vkCmdSetCullMode"); 
extern fn void cmdSetFrontFace (CommandBuffer commandBuffer, FrontFace frontFace) @extern("vkCmdSetFrontFace"); 
extern fn void cmdSetPrimitiveTopology (CommandBuffer commandBuffer, PrimitiveTopology primitiveTopology) @extern("vkCmdSetPrimitiveTopology"); 
extern fn void cmdSetViewportWithCount (CommandBuffer commandBuffer, uint viewportCount, Viewport* pViewports) @extern("vkCmdSetViewportWithCount"); 
extern fn void cmdSetScissorWithCount (CommandBuffer commandBuffer, uint scissorCount, Rect2D* pScissors) @extern("vkCmdSetScissorWithCount"); 
extern fn void cmdBindVertexBuffers2 (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, Buffer* pBuffers, DeviceSize* pOffsets, DeviceSize* pSizes, DeviceSize* pStrides) @extern("vkCmdBindVertexBuffers2"); 
extern fn void cmdSetDepthTestEnable (CommandBuffer commandBuffer, uint depthTestEnable) @extern("vkCmdSetDepthTestEnable"); 
extern fn void cmdSetDepthWriteEnable (CommandBuffer commandBuffer, uint depthWriteEnable) @extern("vkCmdSetDepthWriteEnable"); 
extern fn void cmdSetDepthCompareOp (CommandBuffer commandBuffer, CompareOp depthCompareOp) @extern("vkCmdSetDepthCompareOp"); 
extern fn void cmdSetDepthBoundsTestEnable (CommandBuffer commandBuffer, uint depthBoundsTestEnable) @extern("vkCmdSetDepthBoundsTestEnable"); 
extern fn void cmdSetStencilTestEnable (CommandBuffer commandBuffer, uint stencilTestEnable) @extern("vkCmdSetStencilTestEnable"); 
extern fn void cmdSetStencilOp (CommandBuffer commandBuffer, StencilFaceFlags faceMask, StencilOp failOp, StencilOp passOp, StencilOp depthFailOp, CompareOp compareOp) @extern("vkCmdSetStencilOp"); 
extern fn void cmdSetRasterizerDiscardEnable (CommandBuffer commandBuffer, uint rasterizerDiscardEnable) @extern("vkCmdSetRasterizerDiscardEnable"); 
extern fn void cmdSetDepthBiasEnable (CommandBuffer commandBuffer, uint depthBiasEnable) @extern("vkCmdSetDepthBiasEnable"); 
extern fn void cmdSetPrimitiveRestartEnable (CommandBuffer commandBuffer, uint primitiveRestartEnable) @extern("vkCmdSetPrimitiveRestartEnable"); 
extern fn Result vkCreatePrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PrivateDataSlot* pPrivateDataSlot) @extern("vkCreatePrivateDataSlot"); 
extern fn void destroyPrivateDataSlot (Device device, PrivateDataSlot privateDataSlot, AllocationCallbacks* pAllocator) @extern("vkDestroyPrivateDataSlot"); 
extern fn Result vkSetPrivateData (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong data) @extern("vkSetPrivateData"); 
extern fn void getPrivateData (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong* pData) @extern("vkGetPrivateData"); 
extern fn void cmdCopyBuffer2 (CommandBuffer commandBuffer, CopyBufferInfo2* pCopyBufferInfo) @extern("vkCmdCopyBuffer2"); 
extern fn void cmdCopyImage2 (CommandBuffer commandBuffer, CopyImageInfo2* pCopyImageInfo) @extern("vkCmdCopyImage2"); 
extern fn void cmdBlitImage2 (CommandBuffer commandBuffer, BlitImageInfo2* pBlitImageInfo) @extern("vkCmdBlitImage2"); 
extern fn void cmdCopyBufferToImage2 (CommandBuffer commandBuffer, CopyBufferToImageInfo2* pCopyBufferToImageInfo) @extern("vkCmdCopyBufferToImage2"); 
extern fn void cmdCopyImageToBuffer2 (CommandBuffer commandBuffer, CopyImageToBufferInfo2* pCopyImageToBufferInfo) @extern("vkCmdCopyImageToBuffer2"); 
extern fn void cmdResolveImage2 (CommandBuffer commandBuffer, ResolveImageInfo2* pResolveImageInfo) @extern("vkCmdResolveImage2"); 
extern fn void cmdSetEvent2 (CommandBuffer commandBuffer, Event event, DependencyInfo* pDependencyInfo) @extern("vkCmdSetEvent2"); 
extern fn void cmdResetEvent2 (CommandBuffer commandBuffer, Event event, PipelineStageFlags2 stageMask) @extern("vkCmdResetEvent2"); 
extern fn void cmdWaitEvents2 (CommandBuffer commandBuffer, uint eventCount, Event* pEvents, DependencyInfo* pDependencyInfos) @extern("vkCmdWaitEvents2"); 
extern fn void cmdPipelineBarrier2 (CommandBuffer commandBuffer, DependencyInfo* pDependencyInfo) @extern("vkCmdPipelineBarrier2"); 
extern fn Result vkQueueSubmit2 (Queue queue, uint submitCount, SubmitInfo2* pSubmits, Fence fence) @extern("vkQueueSubmit2"); 
extern fn void cmdWriteTimestamp2 (CommandBuffer commandBuffer, PipelineStageFlags2 stage, QueryPool queryPool, uint query) @extern("vkCmdWriteTimestamp2"); 
extern fn void cmdBeginRendering (CommandBuffer commandBuffer, RenderingInfo* pRenderingInfo) @extern("vkCmdBeginRendering"); 
extern fn void cmdEndRendering (CommandBuffer commandBuffer) @extern("vkCmdEndRendering"); 

def PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = fn Result(Device, RenderPass, Extent2D*);
def PFN_vkGetRenderingAreaGranularityKHR = fn void(Device, RenderingAreaInfoKHR*, Extent2D*);
def PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT = fn void(CommandBuffer, ImageAspectFlags);
def PFN_vkCmdDrawMultiEXT = fn void(CommandBuffer, uint, MultiDrawInfoEXT*, uint, uint, uint);
def PFN_vkCmdDrawMultiIndexedEXT = fn void(CommandBuffer, uint, MultiDrawIndexedInfoEXT*, uint, uint, uint, int*);
def PFN_vkCmdSubpassShadingHUAWEI = fn void(CommandBuffer);
def PFN_vkCmdDrawClusterHUAWEI = fn void(CommandBuffer, uint, uint, uint);
def PFN_vkCmdDrawClusterIndirectHUAWEI = fn void(CommandBuffer, Buffer, DeviceSize);
def PFN_vkCmdUpdatePipelineIndirectBufferNV = fn void(CommandBuffer, PipelineBindPoint, Pipeline);
def PFN_vkCmdCopyMemoryIndirectNV = fn void(CommandBuffer, DeviceAddress, uint, uint);
def PFN_vkCmdCopyMemoryToImageIndirectNV = fn void(CommandBuffer, DeviceAddress, uint, uint, Image, ImageLayout, ImageSubresourceLayers*);
def PFN_vkCmdBeginConditionalRenderingEXT = fn void(CommandBuffer, ConditionalRenderingBeginInfoEXT*);
def PFN_vkCmdEndConditionalRenderingEXT = fn void(CommandBuffer);
def PFN_vkCreateAndroidSurfaceKHR = fn Result(Instance, AndroidSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = fn Result(PhysicalDevice, uint*, DisplayPropertiesKHR*);
def PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = fn Result(PhysicalDevice, uint*, DisplayPlanePropertiesKHR*);
def PFN_vkGetDisplayPlaneSupportedDisplaysKHR = fn Result(PhysicalDevice, uint, uint*, DisplayKHR*);
def PFN_vkGetDisplayModePropertiesKHR = fn Result(PhysicalDevice, DisplayKHR, uint*, DisplayModePropertiesKHR*);
def PFN_vkCreateDisplayModeKHR = fn Result(PhysicalDevice, DisplayKHR, DisplayModeCreateInfoKHR*, AllocationCallbacks*, DisplayModeKHR*);
def PFN_vkGetDisplayPlaneCapabilitiesKHR = fn Result(PhysicalDevice, DisplayModeKHR, uint, DisplayPlaneCapabilitiesKHR*);
def PFN_vkCreateDisplayPlaneSurfaceKHR = fn Result(Instance, DisplaySurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateSharedSwapchainsKHR = fn Result(Device, uint, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
def PFN_vkDestroySurfaceKHR = fn void(Instance, SurfaceKHR, AllocationCallbacks*);
def PFN_vkGetPhysicalDeviceSurfaceSupportKHR = fn Result(PhysicalDevice, uint, SurfaceKHR, uint*);
def PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR = fn Result(PhysicalDevice, SurfaceKHR, SurfaceCapabilitiesKHR*);
def PFN_vkGetPhysicalDeviceSurfaceFormatsKHR = fn Result(PhysicalDevice, SurfaceKHR, uint*, SurfaceFormatKHR*);
def PFN_vkGetPhysicalDeviceSurfacePresentModesKHR = fn Result(PhysicalDevice, SurfaceKHR, uint*, PresentModeKHR*);
def PFN_vkCreateSwapchainKHR = fn Result(Device, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
def PFN_vkDestroySwapchainKHR = fn void(Device, SwapchainKHR, AllocationCallbacks*);
def PFN_vkGetSwapchainImagesKHR = fn Result(Device, SwapchainKHR, uint*, Image*);
def PFN_vkAcquireNextImageKHR = fn Result(Device, SwapchainKHR, ulong, Semaphore, Fence, uint*);
def PFN_vkQueuePresentKHR = fn Result(Queue, PresentInfoKHR*);
def PFN_vkCreateViSurfaceNN = fn Result(Instance, ViSurfaceCreateInfoNN*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateWaylandSurfaceKHR = fn Result(Instance, WaylandSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR = fn uint(PhysicalDevice, uint, WDisplay*);
def PFN_vkCreateWin32SurfaceKHR = fn Result(Instance, Win32SurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR = fn uint(PhysicalDevice, uint);
def PFN_vkCreateXlibSurfaceKHR = fn Result(Instance, XlibSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR = fn uint(PhysicalDevice, uint, Display*, VisualID);
def PFN_vkCreateXcbSurfaceKHR = fn Result(Instance, XcbSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR = fn uint(PhysicalDevice, uint, XDisplay*, XWindow);
def PFN_vkCreateDirectFBSurfaceEXT = fn Result(Instance, DirectFBSurfaceCreateInfoEXT*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceDirectFBPresentationSupportEXT = fn uint(PhysicalDevice, uint, IDirectFB*);
def PFN_vkCreateImagePipeSurfaceFUCHSIA = fn Result(Instance, ImagePipeSurfaceCreateInfoFUCHSIA*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateStreamDescriptorSurfaceGGP = fn Result(Instance, StreamDescriptorSurfaceCreateInfoGGP*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateScreenSurfaceQNX = fn Result(Instance, ScreenSurfaceCreateInfoQNX*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceScreenPresentationSupportQNX = fn uint(PhysicalDevice, uint, _screen_window*);
def PFN_vkCreateDebugReportCallbackEXT = fn Result(Instance, DebugReportCallbackCreateInfoEXT*, AllocationCallbacks*, DebugReportCallbackEXT*);
def PFN_vkDestroyDebugReportCallbackEXT = fn void(Instance, DebugReportCallbackEXT, AllocationCallbacks*);
def PFN_vkDebugReportMessageEXT = fn void(Instance, DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*);
def PFN_vkDebugMarkerSetObjectNameEXT = fn Result(Device, DebugMarkerObjectNameInfoEXT*);
def PFN_vkDebugMarkerSetObjectTagEXT = fn Result(Device, DebugMarkerObjectTagInfoEXT*);
def PFN_vkCmdDebugMarkerBeginEXT = fn void(CommandBuffer, DebugMarkerMarkerInfoEXT*);
def PFN_vkCmdDebugMarkerEndEXT = fn void(CommandBuffer);
def PFN_vkCmdDebugMarkerInsertEXT = fn void(CommandBuffer, DebugMarkerMarkerInfoEXT*);
def PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV = fn Result(PhysicalDevice, Format, ImageType, ImageTiling, ImageUsageFlags, ImageCreateFlags, ExternalMemoryHandleTypeFlagsNV, ExternalImageFormatPropertiesNV*);
def PFN_vkGetMemoryWin32HandleNV = fn Result(Device, DeviceMemory, ExternalMemoryHandleTypeFlagsNV, void**);
def PFN_vkCmdExecuteGeneratedCommandsNV = fn void(CommandBuffer, uint, GeneratedCommandsInfoNV*);
def PFN_vkCmdPreprocessGeneratedCommandsNV = fn void(CommandBuffer, GeneratedCommandsInfoNV*);
def PFN_vkCmdBindPipelineShaderGroupNV = fn void(CommandBuffer, PipelineBindPoint, Pipeline, uint);
def PFN_vkGetGeneratedCommandsMemoryRequirementsNV = fn void(Device, GeneratedCommandsMemoryRequirementsInfoNV*, MemoryRequirements2*);
def PFN_vkCreateIndirectCommandsLayoutNV = fn Result(Device, IndirectCommandsLayoutCreateInfoNV*, AllocationCallbacks*, IndirectCommandsLayoutNV*);
def PFN_vkDestroyIndirectCommandsLayoutNV = fn void(Device, IndirectCommandsLayoutNV, AllocationCallbacks*);
def PFN_vkCmdPushDescriptorSetKHR = fn void(CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*);
def PFN_vkGetMemoryWin32HandleKHR = fn Result(Device, MemoryGetWin32HandleInfoKHR*, void**);
def PFN_vkGetMemoryWin32HandlePropertiesKHR = fn Result(Device, ExternalMemoryHandleTypeFlagBits, void*, MemoryWin32HandlePropertiesKHR*);
def PFN_vkGetMemoryFdKHR = fn Result(Device, MemoryGetFdInfoKHR*, int*);
def PFN_vkGetMemoryFdPropertiesKHR = fn Result(Device, ExternalMemoryHandleTypeFlagBits, int, MemoryFdPropertiesKHR*);
def PFN_vkGetMemoryZirconHandleFUCHSIA = fn Result(Device, MemoryGetZirconHandleInfoFUCHSIA*, ZHandle*);
def PFN_vkGetMemoryZirconHandlePropertiesFUCHSIA = fn Result(Device, ExternalMemoryHandleTypeFlagBits, ZHandle, MemoryZirconHandlePropertiesFUCHSIA*);
def PFN_vkGetMemoryRemoteAddressNV = fn Result(Device, MemoryGetRemoteAddressInfoNV*, RemoteAddressNV*);
def PFN_vkGetMemorySciBufNV = fn Result(Device, MemoryGetSciBufInfoNV*, NvSciBufObj*);
def PFN_vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV = fn Result(PhysicalDevice, ExternalMemoryHandleTypeFlagBits, NvSciBufObj, MemorySciBufPropertiesNV*);
def PFN_vkGetPhysicalDeviceSciBufAttributesNV = fn Result(PhysicalDevice, NvSciBufAttrList);
def PFN_vkGetSemaphoreWin32HandleKHR = fn Result(Device, SemaphoreGetWin32HandleInfoKHR*, void**);
def PFN_vkImportSemaphoreWin32HandleKHR = fn Result(Device, ImportSemaphoreWin32HandleInfoKHR*);
def PFN_vkGetSemaphoreFdKHR = fn Result(Device, SemaphoreGetFdInfoKHR*, int*);
def PFN_vkImportSemaphoreFdKHR = fn Result(Device, ImportSemaphoreFdInfoKHR*);
def PFN_vkGetSemaphoreZirconHandleFUCHSIA = fn Result(Device, SemaphoreGetZirconHandleInfoFUCHSIA*, ZHandle*);
def PFN_vkImportSemaphoreZirconHandleFUCHSIA = fn Result(Device, ImportSemaphoreZirconHandleInfoFUCHSIA*);
def PFN_vkGetFenceWin32HandleKHR = fn Result(Device, FenceGetWin32HandleInfoKHR*, void**);
def PFN_vkImportFenceWin32HandleKHR = fn Result(Device, ImportFenceWin32HandleInfoKHR*);
def PFN_vkGetFenceFdKHR = fn Result(Device, FenceGetFdInfoKHR*, int*);
def PFN_vkImportFenceFdKHR = fn Result(Device, ImportFenceFdInfoKHR*);
def PFN_vkGetFenceSciSyncFenceNV = fn Result(Device, FenceGetSciSyncInfoNV*, void*);
def PFN_vkGetFenceSciSyncObjNV = fn Result(Device, FenceGetSciSyncInfoNV*, void*);
def PFN_vkImportFenceSciSyncFenceNV = fn Result(Device, ImportFenceSciSyncInfoNV*);
def PFN_vkImportFenceSciSyncObjNV = fn Result(Device, ImportFenceSciSyncInfoNV*);
def PFN_vkGetSemaphoreSciSyncObjNV = fn Result(Device, SemaphoreGetSciSyncInfoNV*, void*);
def PFN_vkImportSemaphoreSciSyncObjNV = fn Result(Device, ImportSemaphoreSciSyncInfoNV*);
def PFN_vkGetPhysicalDeviceSciSyncAttributesNV = fn Result(PhysicalDevice, SciSyncAttributesInfoNV*, NvSciSyncAttrList);
def PFN_vkCreateSemaphoreSciSyncPoolNV = fn Result(Device, SemaphoreSciSyncPoolCreateInfoNV*, AllocationCallbacks*, SemaphoreSciSyncPoolNV*);
def PFN_vkDestroySemaphoreSciSyncPoolNV = fn void(Device, SemaphoreSciSyncPoolNV, AllocationCallbacks*);
def PFN_vkReleaseDisplayEXT = fn Result(PhysicalDevice, DisplayKHR);
def PFN_vkAcquireXlibDisplayEXT = fn Result(PhysicalDevice, Display*, DisplayKHR);
def PFN_vkGetRandROutputDisplayEXT = fn Result(PhysicalDevice, Display*, RROutput, DisplayKHR*);
def PFN_vkAcquireWinrtDisplayNV = fn Result(PhysicalDevice, DisplayKHR);
def PFN_vkGetWinrtDisplayNV = fn Result(PhysicalDevice, uint, DisplayKHR*);
def PFN_vkDisplayPowerControlEXT = fn Result(Device, DisplayKHR, DisplayPowerInfoEXT*);
def PFN_vkRegisterDeviceEventEXT = fn Result(Device, DeviceEventInfoEXT*, AllocationCallbacks*, Fence*);
def PFN_vkRegisterDisplayEventEXT = fn Result(Device, DisplayKHR, DisplayEventInfoEXT*, AllocationCallbacks*, Fence*);
def PFN_vkGetSwapchainCounterEXT = fn Result(Device, SwapchainKHR, SurfaceCounterFlagBitsEXT, ulong*);
def PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT = fn Result(PhysicalDevice, SurfaceKHR, SurfaceCapabilities2EXT*);
def PFN_vkGetDeviceGroupPresentCapabilitiesKHR = fn Result(Device, DeviceGroupPresentCapabilitiesKHR*);
def PFN_vkGetDeviceGroupSurfacePresentModesKHR = fn Result(Device, SurfaceKHR, DeviceGroupPresentModeFlagsKHR*);
def PFN_vkAcquireNextImage2KHR = fn Result(Device, AcquireNextImageInfoKHR*, uint*);
def PFN_vkGetPhysicalDevicePresentRectanglesKHR = fn Result(PhysicalDevice, SurfaceKHR, uint*, Rect2D*);
def PFN_vkCmdPushDescriptorSetWithTemplateKHR = fn void(CommandBuffer, DescriptorUpdateTemplate, PipelineLayout, uint, void*);
def PFN_vkSetHdrMetadataEXT = fn void(Device, uint, SwapchainKHR*, HdrMetadataEXT*);
def PFN_vkGetSwapchainStatusKHR = fn Result(Device, SwapchainKHR);
def PFN_vkGetRefreshCycleDurationGOOGLE = fn Result(Device, SwapchainKHR, RefreshCycleDurationGOOGLE*);
def PFN_vkGetPastPresentationTimingGOOGLE = fn Result(Device, SwapchainKHR, uint*, PastPresentationTimingGOOGLE*);
def PFN_vkCreateIOSSurfaceMVK = fn Result(Instance, IOSSurfaceCreateInfoMVK*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateMacOSSurfaceMVK = fn Result(Instance, MacOSSurfaceCreateInfoMVK*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateMetalSurfaceEXT = fn Result(Instance, MetalSurfaceCreateInfoEXT*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCmdSetViewportWScalingNV = fn void(CommandBuffer, uint, uint, ViewportWScalingNV*);
def PFN_vkCmdSetDiscardRectangleEXT = fn void(CommandBuffer, uint, uint, Rect2D*);
def PFN_vkCmdSetDiscardRectangleEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetDiscardRectangleModeEXT = fn void(CommandBuffer, DiscardRectangleModeEXT);
def PFN_vkCmdSetSampleLocationsEXT = fn void(CommandBuffer, SampleLocationsInfoEXT*);
def PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT = fn void(PhysicalDevice, SampleCountFlagBits, MultisamplePropertiesEXT*);
def PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR = fn Result(PhysicalDevice, PhysicalDeviceSurfaceInfo2KHR*, SurfaceCapabilities2KHR*);
def PFN_vkGetPhysicalDeviceSurfaceFormats2KHR = fn Result(PhysicalDevice, PhysicalDeviceSurfaceInfo2KHR*, uint*, SurfaceFormat2KHR*);
def PFN_vkGetPhysicalDeviceDisplayProperties2KHR = fn Result(PhysicalDevice, uint*, DisplayProperties2KHR*);
def PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR = fn Result(PhysicalDevice, uint*, DisplayPlaneProperties2KHR*);
def PFN_vkGetDisplayModeProperties2KHR = fn Result(PhysicalDevice, DisplayKHR, uint*, DisplayModeProperties2KHR*);
def PFN_vkGetDisplayPlaneCapabilities2KHR = fn Result(PhysicalDevice, DisplayPlaneInfo2KHR*, DisplayPlaneCapabilities2KHR*);
def PFN_vkCreateValidationCacheEXT = fn Result(Device, ValidationCacheCreateInfoEXT*, AllocationCallbacks*, ValidationCacheEXT*);
def PFN_vkDestroyValidationCacheEXT = fn void(Device, ValidationCacheEXT, AllocationCallbacks*);
def PFN_vkGetValidationCacheDataEXT = fn Result(Device, ValidationCacheEXT, usz*, void*);
def PFN_vkMergeValidationCachesEXT = fn Result(Device, ValidationCacheEXT, uint, ValidationCacheEXT*);
def PFN_vkGetSwapchainGrallocUsageANDROID = fn Result(Device, Format, ImageUsageFlags, int*);
def PFN_vkGetSwapchainGrallocUsage2ANDROID = fn Result(Device, Format, ImageUsageFlags, SwapchainImageUsageFlagsANDROID, ulong*, ulong*);
def PFN_vkAcquireImageANDROID = fn Result(Device, Image, int, Semaphore, Fence);
def PFN_vkQueueSignalReleaseImageANDROID = fn Result(Queue, uint, Semaphore*, Image, int*);
def PFN_vkGetShaderInfoAMD = fn Result(Device, Pipeline, ShaderStageFlagBits, ShaderInfoTypeAMD, usz*, void*);
def PFN_vkSetLocalDimmingAMD = fn void(Device, SwapchainKHR, uint);
def PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR = fn Result(PhysicalDevice, uint*, TimeDomainKHR*);
def PFN_vkGetCalibratedTimestampsKHR = fn Result(Device, uint, CalibratedTimestampInfoKHR*, ulong*, ulong*);
def PFN_vkSetDebugUtilsObjectNameEXT = fn Result(Device, DebugUtilsObjectNameInfoEXT*);
def PFN_vkSetDebugUtilsObjectTagEXT = fn Result(Device, DebugUtilsObjectTagInfoEXT*);
def PFN_vkQueueBeginDebugUtilsLabelEXT = fn void(Queue, DebugUtilsLabelEXT*);
def PFN_vkQueueEndDebugUtilsLabelEXT = fn void(Queue);
def PFN_vkQueueInsertDebugUtilsLabelEXT = fn void(Queue, DebugUtilsLabelEXT*);
def PFN_vkCmdBeginDebugUtilsLabelEXT = fn void(CommandBuffer, DebugUtilsLabelEXT*);
def PFN_vkCmdEndDebugUtilsLabelEXT = fn void(CommandBuffer);
def PFN_vkCmdInsertDebugUtilsLabelEXT = fn void(CommandBuffer, DebugUtilsLabelEXT*);
def PFN_vkCreateDebugUtilsMessengerEXT = fn Result(Instance, DebugUtilsMessengerCreateInfoEXT*, AllocationCallbacks*, DebugUtilsMessengerEXT*);
def PFN_vkDestroyDebugUtilsMessengerEXT = fn void(Instance, DebugUtilsMessengerEXT, AllocationCallbacks*);
def PFN_vkSubmitDebugUtilsMessageEXT = fn void(Instance, DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT*);
def PFN_vkGetMemoryHostPointerPropertiesEXT = fn Result(Device, ExternalMemoryHandleTypeFlagBits, void*, MemoryHostPointerPropertiesEXT*);
def PFN_vkCmdWriteBufferMarkerAMD = fn void(CommandBuffer, PipelineStageFlagBits, Buffer, DeviceSize, uint);
def PFN_vkGetAndroidHardwareBufferPropertiesANDROID = fn Result(Device, AHardwareBuffer*, AndroidHardwareBufferPropertiesANDROID*);
def PFN_vkGetMemoryAndroidHardwareBufferANDROID = fn Result(Device, MemoryGetAndroidHardwareBufferInfoANDROID*, AHardwareBuffer**);
def PFN_vkCmdSetCheckpointNV = fn void(CommandBuffer, void*);
def PFN_vkGetQueueCheckpointDataNV = fn void(Queue, uint*, CheckpointDataNV*);
def PFN_vkCmdBindTransformFeedbackBuffersEXT = fn void(CommandBuffer, uint, uint, Buffer*, DeviceSize*, DeviceSize*);
def PFN_vkCmdBeginTransformFeedbackEXT = fn void(CommandBuffer, uint, uint, Buffer*, DeviceSize*);
def PFN_vkCmdEndTransformFeedbackEXT = fn void(CommandBuffer, uint, uint, Buffer*, DeviceSize*);
def PFN_vkCmdBeginQueryIndexedEXT = fn void(CommandBuffer, QueryPool, uint, QueryControlFlags, uint);
def PFN_vkCmdEndQueryIndexedEXT = fn void(CommandBuffer, QueryPool, uint, uint);
def PFN_vkCmdDrawIndirectByteCountEXT = fn void(CommandBuffer, uint, uint, Buffer, DeviceSize, uint, uint);
def PFN_vkCmdSetExclusiveScissorNV = fn void(CommandBuffer, uint, uint, Rect2D*);
def PFN_vkCmdSetExclusiveScissorEnableNV = fn void(CommandBuffer, uint, uint, uint*);
def PFN_vkCmdBindShadingRateImageNV = fn void(CommandBuffer, ImageView, ImageLayout);
def PFN_vkCmdSetViewportShadingRatePaletteNV = fn void(CommandBuffer, uint, uint, ShadingRatePaletteNV*);
def PFN_vkCmdSetCoarseSampleOrderNV = fn void(CommandBuffer, CoarseSampleOrderTypeNV, uint, CoarseSampleOrderCustomNV*);
def PFN_vkCmdDrawMeshTasksNV = fn void(CommandBuffer, uint, uint);
def PFN_vkCmdDrawMeshTasksIndirectNV = fn void(CommandBuffer, Buffer, DeviceSize, uint, uint);
def PFN_vkCmdDrawMeshTasksIndirectCountNV = fn void(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
def PFN_vkCmdDrawMeshTasksEXT = fn void(CommandBuffer, uint, uint, uint);
def PFN_vkCmdDrawMeshTasksIndirectEXT = fn void(CommandBuffer, Buffer, DeviceSize, uint, uint);
def PFN_vkCmdDrawMeshTasksIndirectCountEXT = fn void(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
def PFN_vkCompileDeferredNV = fn Result(Device, Pipeline, uint);
def PFN_vkCreateAccelerationStructureNV = fn Result(Device, AccelerationStructureCreateInfoNV*, AllocationCallbacks*, AccelerationStructureNV*);
def PFN_vkCmdBindInvocationMaskHUAWEI = fn void(CommandBuffer, ImageView, ImageLayout);
def PFN_vkDestroyAccelerationStructureKHR = fn void(Device, AccelerationStructureKHR, AllocationCallbacks*);
def PFN_vkDestroyAccelerationStructureNV = fn void(Device, AccelerationStructureNV, AllocationCallbacks*);
def PFN_vkGetAccelerationStructureMemoryRequirementsNV = fn void(Device, AccelerationStructureMemoryRequirementsInfoNV*, MemoryRequirements2KHR*);
def PFN_vkBindAccelerationStructureMemoryNV = fn Result(Device, uint, BindAccelerationStructureMemoryInfoNV*);
def PFN_vkCmdCopyAccelerationStructureNV = fn void(CommandBuffer, AccelerationStructureNV, AccelerationStructureNV, CopyAccelerationStructureModeKHR);
def PFN_vkCmdCopyAccelerationStructureKHR = fn void(CommandBuffer, CopyAccelerationStructureInfoKHR*);
def PFN_vkCopyAccelerationStructureKHR = fn Result(Device, DeferredOperationKHR, CopyAccelerationStructureInfoKHR*);
def PFN_vkCmdCopyAccelerationStructureToMemoryKHR = fn void(CommandBuffer, CopyAccelerationStructureToMemoryInfoKHR*);
def PFN_vkCopyAccelerationStructureToMemoryKHR = fn Result(Device, DeferredOperationKHR, CopyAccelerationStructureToMemoryInfoKHR*);
def PFN_vkCmdCopyMemoryToAccelerationStructureKHR = fn void(CommandBuffer, CopyMemoryToAccelerationStructureInfoKHR*);
def PFN_vkCopyMemoryToAccelerationStructureKHR = fn Result(Device, DeferredOperationKHR, CopyMemoryToAccelerationStructureInfoKHR*);
def PFN_vkCmdWriteAccelerationStructuresPropertiesKHR = fn void(CommandBuffer, uint, AccelerationStructureKHR*, QueryType, QueryPool, uint);
def PFN_vkCmdWriteAccelerationStructuresPropertiesNV = fn void(CommandBuffer, uint, AccelerationStructureNV*, QueryType, QueryPool, uint);
def PFN_vkCmdBuildAccelerationStructureNV = fn void(CommandBuffer, AccelerationStructureInfoNV*, Buffer, DeviceSize, uint, AccelerationStructureNV, AccelerationStructureNV, Buffer, DeviceSize);
def PFN_vkWriteAccelerationStructuresPropertiesKHR = fn Result(Device, uint, AccelerationStructureKHR*, QueryType, usz, void*, usz);
def PFN_vkCmdTraceRaysKHR = fn void(CommandBuffer, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, uint, uint, uint);
def PFN_vkCmdTraceRaysNV = fn void(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, DeviceSize, Buffer, DeviceSize, DeviceSize, Buffer, DeviceSize, DeviceSize, uint, uint, uint);
def PFN_vkGetRayTracingShaderGroupHandlesKHR = fn Result(Device, Pipeline, uint, uint, usz, void*);
def PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = fn Result(Device, Pipeline, uint, uint, usz, void*);
def PFN_vkGetAccelerationStructureHandleNV = fn Result(Device, AccelerationStructureNV, usz, void*);
def PFN_vkCreateRayTracingPipelinesNV = fn Result(Device, PipelineCache, uint, RayTracingPipelineCreateInfoNV*, AllocationCallbacks*, Pipeline*);
def PFN_vkCreateRayTracingPipelinesKHR = fn Result(Device, DeferredOperationKHR, PipelineCache, uint, RayTracingPipelineCreateInfoKHR*, AllocationCallbacks*, Pipeline*);
def PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV = fn Result(PhysicalDevice, uint*, CooperativeMatrixPropertiesNV*);
def PFN_vkCmdTraceRaysIndirectKHR = fn void(CommandBuffer, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, DeviceAddress);
def PFN_vkCmdTraceRaysIndirect2KHR = fn void(CommandBuffer, DeviceAddress);
def PFN_vkGetDeviceAccelerationStructureCompatibilityKHR = fn void(Device, AccelerationStructureVersionInfoKHR*, AccelerationStructureCompatibilityKHR*);
def PFN_vkGetRayTracingShaderGroupStackSizeKHR = fn DeviceSize(Device, Pipeline, uint, ShaderGroupShaderKHR);
def PFN_vkCmdSetRayTracingPipelineStackSizeKHR = fn void(CommandBuffer, uint);
def PFN_vkGetImageViewHandleNVX = fn uint(Device, ImageViewHandleInfoNVX*);
def PFN_vkGetImageViewAddressNVX = fn Result(Device, ImageView, ImageViewAddressPropertiesNVX*);
def PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT = fn Result(PhysicalDevice, PhysicalDeviceSurfaceInfo2KHR*, uint*, PresentModeKHR*);
def PFN_vkGetDeviceGroupSurfacePresentModes2EXT = fn Result(Device, PhysicalDeviceSurfaceInfo2KHR*, DeviceGroupPresentModeFlagsKHR*);
def PFN_vkAcquireFullScreenExclusiveModeEXT = fn Result(Device, SwapchainKHR);
def PFN_vkReleaseFullScreenExclusiveModeEXT = fn Result(Device, SwapchainKHR);
def PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = fn Result(PhysicalDevice, uint, uint*, PerformanceCounterKHR*, PerformanceCounterDescriptionKHR*);
def PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = fn void(PhysicalDevice, QueryPoolPerformanceCreateInfoKHR*, uint*);
def PFN_vkAcquireProfilingLockKHR = fn Result(Device, AcquireProfilingLockInfoKHR*);
def PFN_vkReleaseProfilingLockKHR = fn void(Device);
def PFN_vkGetImageDrmFormatModifierPropertiesEXT = fn Result(Device, Image, ImageDrmFormatModifierPropertiesEXT*);
def PFN_vkCreateHeadlessSurfaceEXT = fn Result(Instance, HeadlessSurfaceCreateInfoEXT*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = fn Result(PhysicalDevice, uint*, FramebufferMixedSamplesCombinationNV*);
def PFN_vkInitializePerformanceApiINTEL = fn Result(Device, InitializePerformanceApiInfoINTEL*);
def PFN_vkUninitializePerformanceApiINTEL = fn void(Device);
def PFN_vkCmdSetPerformanceMarkerINTEL = fn Result(CommandBuffer, PerformanceMarkerInfoINTEL*);
def PFN_vkCmdSetPerformanceStreamMarkerINTEL = fn Result(CommandBuffer, PerformanceStreamMarkerInfoINTEL*);
def PFN_vkCmdSetPerformanceOverrideINTEL = fn Result(CommandBuffer, PerformanceOverrideInfoINTEL*);
def PFN_vkAcquirePerformanceConfigurationINTEL = fn Result(Device, PerformanceConfigurationAcquireInfoINTEL*, PerformanceConfigurationINTEL*);
def PFN_vkReleasePerformanceConfigurationINTEL = fn Result(Device, PerformanceConfigurationINTEL);
def PFN_vkQueueSetPerformanceConfigurationINTEL = fn Result(Queue, PerformanceConfigurationINTEL);
def PFN_vkGetPerformanceParameterINTEL = fn Result(Device, PerformanceParameterTypeINTEL, PerformanceValueINTEL*);
def PFN_vkGetPipelineExecutablePropertiesKHR = fn Result(Device, PipelineInfoKHR*, uint*, PipelineExecutablePropertiesKHR*);
def PFN_vkGetPipelineExecutableStatisticsKHR = fn Result(Device, PipelineExecutableInfoKHR*, uint*, PipelineExecutableStatisticKHR*);
def PFN_vkGetPipelineExecutableInternalRepresentationsKHR = fn Result(Device, PipelineExecutableInfoKHR*, uint*, PipelineExecutableInternalRepresentationKHR*);
def PFN_vkCmdSetLineStippleKHR = fn void(CommandBuffer, uint, uint);
def PFN_vkCreateAccelerationStructureKHR = fn Result(Device, AccelerationStructureCreateInfoKHR*, AllocationCallbacks*, AccelerationStructureKHR*);
def PFN_vkCmdBuildAccelerationStructuresKHR = fn void(CommandBuffer, uint, AccelerationStructureBuildGeometryInfoKHR*, AccelerationStructureBuildRangeInfoKHR* const*);
def PFN_vkCmdBuildAccelerationStructuresIndirectKHR = fn void(CommandBuffer, uint, AccelerationStructureBuildGeometryInfoKHR*, DeviceAddress*, uint*, uint* const*);
def PFN_vkBuildAccelerationStructuresKHR = fn Result(Device, DeferredOperationKHR, uint, AccelerationStructureBuildGeometryInfoKHR*, AccelerationStructureBuildRangeInfoKHR* const*);
def PFN_vkGetAccelerationStructureDeviceAddressKHR = fn DeviceAddress(Device, AccelerationStructureDeviceAddressInfoKHR*);
def PFN_vkCreateDeferredOperationKHR = fn Result(Device, AllocationCallbacks*, DeferredOperationKHR*);
def PFN_vkDestroyDeferredOperationKHR = fn void(Device, DeferredOperationKHR, AllocationCallbacks*);
def PFN_vkGetDeferredOperationMaxConcurrencyKHR = fn uint(Device, DeferredOperationKHR);
def PFN_vkGetDeferredOperationResultKHR = fn Result(Device, DeferredOperationKHR);
def PFN_vkDeferredOperationJoinKHR = fn Result(Device, DeferredOperationKHR);
def PFN_vkGetPipelineIndirectMemoryRequirementsNV = fn void(Device, ComputePipelineCreateInfo*, MemoryRequirements2*);
def PFN_vkGetPipelineIndirectDeviceAddressNV = fn DeviceAddress(Device, PipelineIndirectDeviceAddressInfoNV*);
def PFN_vkAntiLagUpdateAMD = fn void(Device, AntiLagDataAMD*);
def PFN_vkCmdBindIndexBuffer2KHR = fn void(CommandBuffer, Buffer, DeviceSize, DeviceSize, IndexType);
def PFN_vkCmdSetPatchControlPointsEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetLogicOpEXT = fn void(CommandBuffer, LogicOp);
def PFN_vkCmdSetTessellationDomainOriginEXT = fn void(CommandBuffer, TessellationDomainOrigin);
def PFN_vkCmdSetDepthClampEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetPolygonModeEXT = fn void(CommandBuffer, PolygonMode);
def PFN_vkCmdSetRasterizationSamplesEXT = fn void(CommandBuffer, SampleCountFlagBits);
def PFN_vkCmdSetSampleMaskEXT = fn void(CommandBuffer, SampleCountFlagBits, SampleMask*);
def PFN_vkCmdSetAlphaToCoverageEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetAlphaToOneEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetLogicOpEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetColorBlendEnableEXT = fn void(CommandBuffer, uint, uint, uint*);
def PFN_vkCmdSetColorBlendEquationEXT = fn void(CommandBuffer, uint, uint, ColorBlendEquationEXT*);
def PFN_vkCmdSetColorWriteMaskEXT = fn void(CommandBuffer, uint, uint, ColorComponentFlags*);
def PFN_vkCmdSetRasterizationStreamEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetConservativeRasterizationModeEXT = fn void(CommandBuffer, ConservativeRasterizationModeEXT);
def PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT = fn void(CommandBuffer, float);
def PFN_vkCmdSetDepthClipEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetSampleLocationsEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetColorBlendAdvancedEXT = fn void(CommandBuffer, uint, uint, ColorBlendAdvancedEXT*);
def PFN_vkCmdSetProvokingVertexModeEXT = fn void(CommandBuffer, ProvokingVertexModeEXT);
def PFN_vkCmdSetLineRasterizationModeEXT = fn void(CommandBuffer, LineRasterizationModeEXT);
def PFN_vkCmdSetLineStippleEnableEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetDepthClipNegativeOneToOneEXT = fn void(CommandBuffer, uint);
def PFN_vkCmdSetViewportWScalingEnableNV = fn void(CommandBuffer, uint);
def PFN_vkCmdSetViewportSwizzleNV = fn void(CommandBuffer, uint, uint, ViewportSwizzleNV*);
def PFN_vkCmdSetCoverageToColorEnableNV = fn void(CommandBuffer, uint);
def PFN_vkCmdSetCoverageToColorLocationNV = fn void(CommandBuffer, uint);
def PFN_vkCmdSetCoverageModulationModeNV = fn void(CommandBuffer, CoverageModulationModeNV);
def PFN_vkCmdSetCoverageModulationTableEnableNV = fn void(CommandBuffer, uint);
def PFN_vkCmdSetCoverageModulationTableNV = fn void(CommandBuffer, uint, float*);
def PFN_vkCmdSetShadingRateImageEnableNV = fn void(CommandBuffer, uint);
def PFN_vkCmdSetCoverageReductionModeNV = fn void(CommandBuffer, CoverageReductionModeNV);
def PFN_vkCmdSetRepresentativeFragmentTestEnableNV = fn void(CommandBuffer, uint);
def PFN_vkCmdRefreshObjectsKHR = fn void(CommandBuffer, RefreshObjectListKHR*);
def PFN_vkGetPhysicalDeviceRefreshableObjectTypesKHR = fn Result(PhysicalDevice, uint*, ObjectType*);
def PFN_vkCmdSetFragmentShadingRateKHR = fn void(CommandBuffer, Extent2D*, FragmentShadingRateCombinerOpKHR[2]);
def PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR = fn Result(PhysicalDevice, uint*, PhysicalDeviceFragmentShadingRateKHR*);
def PFN_vkCmdSetFragmentShadingRateEnumNV = fn void(CommandBuffer, FragmentShadingRateNV, FragmentShadingRateCombinerOpKHR[2]);
def PFN_vkGetAccelerationStructureBuildSizesKHR = fn void(Device, AccelerationStructureBuildTypeKHR, AccelerationStructureBuildGeometryInfoKHR*, uint*, AccelerationStructureBuildSizesInfoKHR*);
def PFN_vkCmdSetVertexInputEXT = fn void(CommandBuffer, uint, VertexInputBindingDescription2EXT*, uint, VertexInputAttributeDescription2EXT*);
def PFN_vkCmdSetColorWriteEnableEXT = fn void(CommandBuffer, uint, uint*);
def PFN_vkCmdWriteBufferMarker2AMD = fn void(CommandBuffer, PipelineStageFlags2, Buffer, DeviceSize, uint);
def PFN_vkGetQueueCheckpointData2NV = fn void(Queue, uint*, CheckpointData2NV*);
def PFN_vkCopyMemoryToImageEXT = fn Result(Device, CopyMemoryToImageInfoEXT*);
def PFN_vkCopyImageToMemoryEXT = fn Result(Device, CopyImageToMemoryInfoEXT*);
def PFN_vkCopyImageToImageEXT = fn Result(Device, CopyImageToImageInfoEXT*);
def PFN_vkTransitionImageLayoutEXT = fn Result(Device, uint, HostImageLayoutTransitionInfoEXT*);
def PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR = fn Result(PhysicalDevice, VideoProfileInfoKHR*, VideoCapabilitiesKHR*);
def PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR = fn Result(PhysicalDevice, PhysicalDeviceVideoFormatInfoKHR*, uint*, VideoFormatPropertiesKHR*);
def PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR = fn Result(PhysicalDevice, PhysicalDeviceVideoEncodeQualityLevelInfoKHR*, VideoEncodeQualityLevelPropertiesKHR*);
def PFN_vkCreateVideoSessionKHR = fn Result(Device, VideoSessionCreateInfoKHR*, AllocationCallbacks*, VideoSessionKHR*);
def PFN_vkDestroyVideoSessionKHR = fn void(Device, VideoSessionKHR, AllocationCallbacks*);
def PFN_vkCreateVideoSessionParametersKHR = fn Result(Device, VideoSessionParametersCreateInfoKHR*, AllocationCallbacks*, VideoSessionParametersKHR*);
def PFN_vkUpdateVideoSessionParametersKHR = fn Result(Device, VideoSessionParametersKHR, VideoSessionParametersUpdateInfoKHR*);
def PFN_vkGetEncodedVideoSessionParametersKHR = fn Result(Device, VideoEncodeSessionParametersGetInfoKHR*, VideoEncodeSessionParametersFeedbackInfoKHR*, usz*, void*);
def PFN_vkDestroyVideoSessionParametersKHR = fn void(Device, VideoSessionParametersKHR, AllocationCallbacks*);
def PFN_vkGetVideoSessionMemoryRequirementsKHR = fn Result(Device, VideoSessionKHR, uint*, VideoSessionMemoryRequirementsKHR*);
def PFN_vkBindVideoSessionMemoryKHR = fn Result(Device, VideoSessionKHR, uint, BindVideoSessionMemoryInfoKHR*);
def PFN_vkCmdDecodeVideoKHR = fn void(CommandBuffer, VideoDecodeInfoKHR*);
def PFN_vkCmdBeginVideoCodingKHR = fn void(CommandBuffer, VideoBeginCodingInfoKHR*);
def PFN_vkCmdControlVideoCodingKHR = fn void(CommandBuffer, VideoCodingControlInfoKHR*);
def PFN_vkCmdEndVideoCodingKHR = fn void(CommandBuffer, VideoEndCodingInfoKHR*);
def PFN_vkCmdEncodeVideoKHR = fn void(CommandBuffer, VideoEncodeInfoKHR*);
def PFN_vkCmdDecompressMemoryNV = fn void(CommandBuffer, uint, DecompressMemoryRegionNV*);
def PFN_vkCmdDecompressMemoryIndirectCountNV = fn void(CommandBuffer, DeviceAddress, DeviceAddress, uint);
def PFN_vkCreateCuModuleNVX = fn Result(Device, CuModuleCreateInfoNVX*, AllocationCallbacks*, CuModuleNVX*);
def PFN_vkCreateCuFunctionNVX = fn Result(Device, CuFunctionCreateInfoNVX*, AllocationCallbacks*, CuFunctionNVX*);
def PFN_vkDestroyCuModuleNVX = fn void(Device, CuModuleNVX, AllocationCallbacks*);
def PFN_vkDestroyCuFunctionNVX = fn void(Device, CuFunctionNVX, AllocationCallbacks*);
def PFN_vkCmdCuLaunchKernelNVX = fn void(CommandBuffer, CuLaunchInfoNVX*);
def PFN_vkGetDescriptorSetLayoutSizeEXT = fn void(Device, DescriptorSetLayout, DeviceSize*);
def PFN_vkGetDescriptorSetLayoutBindingOffsetEXT = fn void(Device, DescriptorSetLayout, uint, DeviceSize*);
def PFN_vkGetDescriptorEXT = fn void(Device, DescriptorGetInfoEXT*, usz, void*);
def PFN_vkCmdBindDescriptorBuffersEXT = fn void(CommandBuffer, uint, DescriptorBufferBindingInfoEXT*);
def PFN_vkCmdSetDescriptorBufferOffsetsEXT = fn void(CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, uint*, DeviceSize*);
def PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT = fn void(CommandBuffer, PipelineBindPoint, PipelineLayout, uint);
def PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT = fn Result(Device, BufferCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetImageOpaqueCaptureDescriptorDataEXT = fn Result(Device, ImageCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT = fn Result(Device, ImageViewCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT = fn Result(Device, SamplerCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = fn Result(Device, AccelerationStructureCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkSetDeviceMemoryPriorityEXT = fn void(Device, DeviceMemory, float);
def PFN_vkAcquireDrmDisplayEXT = fn Result(PhysicalDevice, int, DisplayKHR);
def PFN_vkGetDrmDisplayEXT = fn Result(PhysicalDevice, int, uint, DisplayKHR*);
def PFN_vkWaitForPresentKHR = fn Result(Device, SwapchainKHR, ulong, ulong);
def PFN_vkCreateBufferCollectionFUCHSIA = fn Result(Device, BufferCollectionCreateInfoFUCHSIA*, AllocationCallbacks*, BufferCollectionFUCHSIA*);
def PFN_vkSetBufferCollectionBufferConstraintsFUCHSIA = fn Result(Device, BufferCollectionFUCHSIA, BufferConstraintsInfoFUCHSIA*);
def PFN_vkSetBufferCollectionImageConstraintsFUCHSIA = fn Result(Device, BufferCollectionFUCHSIA, ImageConstraintsInfoFUCHSIA*);
def PFN_vkDestroyBufferCollectionFUCHSIA = fn void(Device, BufferCollectionFUCHSIA, AllocationCallbacks*);
def PFN_vkGetBufferCollectionPropertiesFUCHSIA = fn Result(Device, BufferCollectionFUCHSIA, BufferCollectionPropertiesFUCHSIA*);
def PFN_vkCreateCudaModuleNV = fn Result(Device, CudaModuleCreateInfoNV*, AllocationCallbacks*, CudaModuleNV*);
def PFN_vkGetCudaModuleCacheNV = fn Result(Device, CudaModuleNV, usz*, void*);
def PFN_vkCreateCudaFunctionNV = fn Result(Device, CudaFunctionCreateInfoNV*, AllocationCallbacks*, CudaFunctionNV*);
def PFN_vkDestroyCudaModuleNV = fn void(Device, CudaModuleNV, AllocationCallbacks*);
def PFN_vkDestroyCudaFunctionNV = fn void(Device, CudaFunctionNV, AllocationCallbacks*);
def PFN_vkCmdCudaLaunchKernelNV = fn void(CommandBuffer, CudaLaunchInfoNV*);
def PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE = fn void(Device, DescriptorSetBindingReferenceVALVE*, DescriptorSetLayoutHostMappingInfoVALVE*);
def PFN_vkGetDescriptorSetHostMappingVALVE = fn void(Device, DescriptorSet, void**);
def PFN_vkCreateMicromapEXT = fn Result(Device, MicromapCreateInfoEXT*, AllocationCallbacks*, MicromapEXT*);
def PFN_vkCmdBuildMicromapsEXT = fn void(CommandBuffer, uint, MicromapBuildInfoEXT*);
def PFN_vkBuildMicromapsEXT = fn Result(Device, DeferredOperationKHR, uint, MicromapBuildInfoEXT*);
def PFN_vkDestroyMicromapEXT = fn void(Device, MicromapEXT, AllocationCallbacks*);
def PFN_vkCmdCopyMicromapEXT = fn void(CommandBuffer, CopyMicromapInfoEXT*);
def PFN_vkCopyMicromapEXT = fn Result(Device, DeferredOperationKHR, CopyMicromapInfoEXT*);
def PFN_vkCmdCopyMicromapToMemoryEXT = fn void(CommandBuffer, CopyMicromapToMemoryInfoEXT*);
def PFN_vkCopyMicromapToMemoryEXT = fn Result(Device, DeferredOperationKHR, CopyMicromapToMemoryInfoEXT*);
def PFN_vkCmdCopyMemoryToMicromapEXT = fn void(CommandBuffer, CopyMemoryToMicromapInfoEXT*);
def PFN_vkCopyMemoryToMicromapEXT = fn Result(Device, DeferredOperationKHR, CopyMemoryToMicromapInfoEXT*);
def PFN_vkCmdWriteMicromapsPropertiesEXT = fn void(CommandBuffer, uint, MicromapEXT*, QueryType, QueryPool, uint);
def PFN_vkWriteMicromapsPropertiesEXT = fn Result(Device, uint, MicromapEXT*, QueryType, usz, void*, usz);
def PFN_vkGetDeviceMicromapCompatibilityEXT = fn void(Device, MicromapVersionInfoEXT*, AccelerationStructureCompatibilityKHR*);
def PFN_vkGetMicromapBuildSizesEXT = fn void(Device, AccelerationStructureBuildTypeKHR, MicromapBuildInfoEXT*, MicromapBuildSizesInfoEXT*);
def PFN_vkGetShaderModuleIdentifierEXT = fn void(Device, ShaderModule, ShaderModuleIdentifierEXT*);
def PFN_vkGetShaderModuleCreateInfoIdentifierEXT = fn void(Device, ShaderModuleCreateInfo*, ShaderModuleIdentifierEXT*);
def PFN_vkGetImageSubresourceLayout2KHR = fn void(Device, Image, ImageSubresource2KHR*, SubresourceLayout2KHR*);
def PFN_vkGetPipelinePropertiesEXT = fn Result(Device, PipelineInfoEXT*, BaseOutStructure*);
def PFN_vkExportMetalObjectsEXT = fn void(Device, ExportMetalObjectsInfoEXT*);
def PFN_vkGetFramebufferTilePropertiesQCOM = fn Result(Device, Framebuffer, uint*, TilePropertiesQCOM*);
def PFN_vkGetDynamicRenderingTilePropertiesQCOM = fn Result(Device, RenderingInfo*, TilePropertiesQCOM*);
def PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV = fn Result(PhysicalDevice, OpticalFlowImageFormatInfoNV*, uint*, OpticalFlowImageFormatPropertiesNV*);
def PFN_vkCreateOpticalFlowSessionNV = fn Result(Device, OpticalFlowSessionCreateInfoNV*, AllocationCallbacks*, OpticalFlowSessionNV*);
def PFN_vkDestroyOpticalFlowSessionNV = fn void(Device, OpticalFlowSessionNV, AllocationCallbacks*);
def PFN_vkBindOpticalFlowSessionImageNV = fn Result(Device, OpticalFlowSessionNV, OpticalFlowSessionBindingPointNV, ImageView, ImageLayout);
def PFN_vkCmdOpticalFlowExecuteNV = fn void(CommandBuffer, OpticalFlowSessionNV, OpticalFlowExecuteInfoNV*);
def PFN_vkGetDeviceFaultInfoEXT = fn Result(Device, DeviceFaultCountsEXT*, DeviceFaultInfoEXT*);
def PFN_vkCmdSetDepthBias2EXT = fn void(CommandBuffer, DepthBiasInfoEXT*);
def PFN_vkReleaseSwapchainImagesEXT = fn Result(Device, ReleaseSwapchainImagesInfoEXT*);
def PFN_vkGetDeviceImageSubresourceLayoutKHR = fn void(Device, DeviceImageSubresourceInfoKHR*, SubresourceLayout2KHR*);
def PFN_vkMapMemory2KHR = fn Result(Device, MemoryMapInfoKHR*, void**);
def PFN_vkUnmapMemory2KHR = fn Result(Device, MemoryUnmapInfoKHR*);
def PFN_vkCreateShadersEXT = fn Result(Device, uint, ShaderCreateInfoEXT*, AllocationCallbacks*, ShaderEXT*);
def PFN_vkDestroyShaderEXT = fn void(Device, ShaderEXT, AllocationCallbacks*);
def PFN_vkGetShaderBinaryDataEXT = fn Result(Device, ShaderEXT, usz*, void*);
def PFN_vkCmdBindShadersEXT = fn void(CommandBuffer, uint, ShaderStageFlagBits*, ShaderEXT*);
def PFN_vkGetScreenBufferPropertiesQNX = fn Result(Device, _screen_buffer*, ScreenBufferPropertiesQNX*);
def PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR = fn Result(PhysicalDevice, uint*, CooperativeMatrixPropertiesKHR*);
def PFN_vkGetExecutionGraphPipelineScratchSizeAMDX = fn Result(Device, Pipeline, ExecutionGraphPipelineScratchSizeAMDX*);
def PFN_vkGetExecutionGraphPipelineNodeIndexAMDX = fn Result(Device, Pipeline, PipelineShaderStageNodeCreateInfoAMDX*, uint*);
def PFN_vkCreateExecutionGraphPipelinesAMDX = fn Result(Device, PipelineCache, uint, ExecutionGraphPipelineCreateInfoAMDX*, AllocationCallbacks*, Pipeline*);
def PFN_vkCmdInitializeGraphScratchMemoryAMDX = fn void(CommandBuffer, DeviceAddress);
def PFN_vkCmdDispatchGraphAMDX = fn void(CommandBuffer, DeviceAddress, DispatchGraphCountInfoAMDX*);
def PFN_vkCmdDispatchGraphIndirectAMDX = fn void(CommandBuffer, DeviceAddress, DispatchGraphCountInfoAMDX*);
def PFN_vkCmdDispatchGraphIndirectCountAMDX = fn void(CommandBuffer, DeviceAddress, DeviceAddress);
def PFN_vkCmdBindDescriptorSets2KHR = fn void(CommandBuffer, BindDescriptorSetsInfoKHR*);
def PFN_vkCmdPushConstants2KHR = fn void(CommandBuffer, PushConstantsInfoKHR*);
def PFN_vkCmdPushDescriptorSet2KHR = fn void(CommandBuffer, PushDescriptorSetInfoKHR*);
def PFN_vkCmdPushDescriptorSetWithTemplate2KHR = fn void(CommandBuffer, PushDescriptorSetWithTemplateInfoKHR*);
def PFN_vkCmdSetDescriptorBufferOffsets2EXT = fn void(CommandBuffer, SetDescriptorBufferOffsetsInfoEXT*);
def PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = fn void(CommandBuffer, BindDescriptorBufferEmbeddedSamplersInfoEXT*);
def PFN_vkSetLatencySleepModeNV = fn Result(Device, SwapchainKHR, LatencySleepModeInfoNV*);
def PFN_vkLatencySleepNV = fn Result(Device, SwapchainKHR, LatencySleepInfoNV*);
def PFN_vkSetLatencyMarkerNV = fn void(Device, SwapchainKHR, SetLatencyMarkerInfoNV*);
def PFN_vkGetLatencyTimingsNV = fn void(Device, SwapchainKHR, GetLatencyMarkerInfoNV*);
def PFN_vkQueueNotifyOutOfBandNV = fn void(Queue, OutOfBandQueueTypeInfoNV*);
def PFN_vkCmdSetRenderingAttachmentLocationsKHR = fn void(CommandBuffer, RenderingAttachmentLocationInfoKHR*);
def PFN_vkCmdSetRenderingInputAttachmentIndicesKHR = fn void(CommandBuffer, RenderingInputAttachmentIndexInfoKHR*);

fn void! createInstance (VkInstanceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkInstance* pInstance) {
  Result result = vkCreateInstance(pCreateInfo, pAllocator, pInstance);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_LAYER_NOT_PRESENT: return VkErrors.ERROR_LAYER_NOT_PRESENT?;
       case ERROR_EXTENSION_NOT_PRESENT: return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
       case ERROR_INCOMPATIBLE_DRIVER: return VkErrors.ERROR_INCOMPATIBLE_DRIVER?;
  }
}
fn void! enumeratePhysicalDevices (VkInstance instance, uint* pPhysicalDeviceCount, VkPhysicalDevice* pPhysicalDevices) {
  Result result = vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties (VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkImageFormatProperties* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createDevice (VkPhysicalDevice physicalDevice, VkDeviceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDevice* pDevice) {
  Result result = vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_EXTENSION_NOT_PRESENT: return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
       case ERROR_FEATURE_NOT_PRESENT: return VkErrors.ERROR_FEATURE_NOT_PRESENT?;
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! enumerateInstanceVersion (uint* pApiVersion) {
  Result result = vkEnumerateInstanceVersion(pApiVersion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! enumerateInstanceLayerProperties (uint* pPropertyCount, VkLayerProperties* pProperties) {
  Result result = vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateInstanceExtensionProperties (char* pLayerName, uint* pPropertyCount, VkExtensionProperties* pProperties) {
  Result result = vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_LAYER_NOT_PRESENT: return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! enumerateDeviceLayerProperties (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkLayerProperties* pProperties) {
  Result result = vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateDeviceExtensionProperties (VkPhysicalDevice physicalDevice, char* pLayerName, uint* pPropertyCount, VkExtensionProperties* pProperties) {
  Result result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_LAYER_NOT_PRESENT: return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! queueSubmit (VkQueue queue, uint submitCount, VkSubmitInfo* pSubmits, VkFence fence) {
  Result result = vkQueueSubmit(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! queueWaitIdle (VkQueue queue) {
  Result result = vkQueueWaitIdle(queue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! deviceWaitIdle (VkDevice device) {
  Result result = vkDeviceWaitIdle(device);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! allocateMemory (VkDevice device, VkMemoryAllocateInfo* pAllocateInfo, VkAllocationCallbacks* pAllocator, VkDeviceMemory* pMemory) {
  Result result = vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! mapMemory (VkDevice device, VkDeviceMemory memory, VkDeviceSize offset, VkDeviceSize size, VkMemoryMapFlags flags, void** ppData) {
  Result result = vkMapMemory(device, memory, offset, size, flags, ppData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! flushMappedMemoryRanges (VkDevice device, uint memoryRangeCount, VkMappedMemoryRange* pMemoryRanges) {
  Result result = vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! invalidateMappedMemoryRanges (VkDevice device, uint memoryRangeCount, VkMappedMemoryRange* pMemoryRanges) {
  Result result = vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindBufferMemory (VkDevice device, VkBuffer buffer, VkDeviceMemory memory, VkDeviceSize memoryOffset) {
  Result result = vkBindBufferMemory(device, buffer, memory, memoryOffset);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! bindImageMemory (VkDevice device, VkImage image, VkDeviceMemory memory, VkDeviceSize memoryOffset) {
  Result result = vkBindImageMemory(device, image, memory, memoryOffset);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! queueBindSparse (VkQueue queue, uint bindInfoCount, VkBindSparseInfo* pBindInfo, VkFence fence) {
  Result result = vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createFence (VkDevice device, VkFenceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence) {
  Result result = vkCreateFence(device, pCreateInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetFences (VkDevice device, uint fenceCount, VkFence* pFences) {
  Result result = vkResetFences(device, fenceCount, pFences);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getFenceStatus (VkDevice device, VkFence fence) {
  Result result = vkGetFenceStatus(device, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitForFences (VkDevice device, uint fenceCount, VkFence* pFences, uint waitAll, ulong timeout) {
  Result result = vkWaitForFences(device, fenceCount, pFences, waitAll, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createSemaphore (VkDevice device, VkSemaphoreCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSemaphore* pSemaphore) {
  Result result = vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createEvent (VkDevice device, VkEventCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkEvent* pEvent) {
  Result result = vkCreateEvent(device, pCreateInfo, pAllocator, pEvent);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getEventStatus (VkDevice device, VkEvent event) {
  Result result = vkGetEventStatus(device, event);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! setEvent (VkDevice device, VkEvent event) {
  Result result = vkSetEvent(device, event);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetEvent (VkDevice device, VkEvent event) {
  Result result = vkResetEvent(device, event);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createQueryPool (VkDevice device, VkQueryPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkQueryPool* pQueryPool) {
  Result result = vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getQueryPoolResults (VkDevice device, VkQueryPool queryPool, uint firstQuery, uint queryCount, usz dataSize, void* pData, VkDeviceSize stride, VkQueryResultFlags flags) {
  Result result = vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createBuffer (VkDevice device, VkBufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBuffer* pBuffer) {
  Result result = vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createBufferView (VkDevice device, VkBufferViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBufferView* pView) {
  Result result = vkCreateBufferView(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImage (VkDevice device, VkImageCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImage* pImage) {
  Result result = vkCreateImage(device, pCreateInfo, pAllocator, pImage);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_COMPRESSION_EXHAUSTED_EXT: return VkErrors.ERROR_COMPRESSION_EXHAUSTED_EXT?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createImageView (VkDevice device, VkImageViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImageView* pView) {
  Result result = vkCreateImageView(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createShaderModule (VkDevice device, VkShaderModuleCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkShaderModule* pShaderModule) {
  Result result = vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! createPipelineCache (VkDevice device, VkPipelineCacheCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineCache* pPipelineCache) {
  Result result = vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelineCacheData (VkDevice device, VkPipelineCache pipelineCache, usz* pDataSize, void* pData) {
  Result result = vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! mergePipelineCaches (VkDevice device, VkPipelineCache dstCache, uint srcCacheCount, VkPipelineCache* pSrcCaches) {
  Result result = vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createGraphicsPipelines (VkDevice device, VkPipelineCache pipelineCache, uint createInfoCount, VkGraphicsPipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! createComputePipelines (VkDevice device, VkPipelineCache pipelineCache, uint createInfoCount, VkComputePipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! getDeviceSubpassShadingMaxWorkgroupSizeHUAWEI (VkDevice device, VkRenderPass renderpass, VkExtent2D* pMaxWorkgroupSize) {
  Result result = vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI(device, renderpass, pMaxWorkgroupSize);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! createPipelineLayout (VkDevice device, VkPipelineLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineLayout* pPipelineLayout) {
  Result result = vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createSampler (VkDevice device, VkSamplerCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSampler* pSampler) {
  Result result = vkCreateSampler(device, pCreateInfo, pAllocator, pSampler);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createDescriptorSetLayout (VkDevice device, VkDescriptorSetLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorSetLayout* pSetLayout) {
  Result result = vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorPool (VkDevice device, VkDescriptorPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorPool* pDescriptorPool) {
  Result result = vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FRAGMENTATION_EXT: return VkErrors.ERROR_FRAGMENTATION_EXT?;
  }
}
fn void! resetDescriptorPool (VkDevice device, VkDescriptorPool descriptorPool, VkDescriptorPoolResetFlags flags) {
  Result result = vkResetDescriptorPool(device, descriptorPool, flags);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! allocateDescriptorSets (VkDevice device, VkDescriptorSetAllocateInfo* pAllocateInfo, VkDescriptorSet* pDescriptorSets) {
  Result result = vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FRAGMENTED_POOL: return VkErrors.ERROR_FRAGMENTED_POOL?;
       case ERROR_OUT_OF_POOL_MEMORY: return VkErrors.ERROR_OUT_OF_POOL_MEMORY?;
  }
}
fn void! freeDescriptorSets (VkDevice device, VkDescriptorPool descriptorPool, uint descriptorSetCount, VkDescriptorSet* pDescriptorSets) {
  Result result = vkFreeDescriptorSets(device, descriptorPool, descriptorSetCount, pDescriptorSets);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! createFramebuffer (VkDevice device, VkFramebufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFramebuffer* pFramebuffer) {
  Result result = vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRenderPass (VkDevice device, VkRenderPassCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass) {
  Result result = vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createCommandPool (VkDevice device, VkCommandPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCommandPool* pCommandPool) {
  Result result = vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetCommandPool (VkDevice device, VkCommandPool commandPool, VkCommandPoolResetFlags flags) {
  Result result = vkResetCommandPool(device, commandPool, flags);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! allocateCommandBuffers (VkDevice device, VkCommandBufferAllocateInfo* pAllocateInfo, VkCommandBuffer* pCommandBuffers) {
  Result result = vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! beginCommandBuffer (VkCommandBuffer commandBuffer, VkCommandBufferBeginInfo* pBeginInfo) {
  Result result = vkBeginCommandBuffer(commandBuffer, pBeginInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! endCommandBuffer (VkCommandBuffer commandBuffer) {
  Result result = vkEndCommandBuffer(commandBuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return VkErrors.ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR?;
  }
}
fn void! resetCommandBuffer (VkCommandBuffer commandBuffer, VkCommandBufferResetFlags flags) {
  Result result = vkResetCommandBuffer(commandBuffer, flags);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createAndroidSurfaceKHR (VkInstance instance, VkAndroidSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateAndroidSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! getPhysicalDeviceDisplayPropertiesKHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkDisplayPropertiesKHR* pProperties) {
  Result result = vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceDisplayPlanePropertiesKHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkDisplayPlanePropertiesKHR* pProperties) {
  Result result = vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDisplayPlaneSupportedDisplaysKHR (VkPhysicalDevice physicalDevice, uint planeIndex, uint* pDisplayCount, VkDisplayKHR* pDisplays) {
  Result result = vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDisplayModePropertiesKHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint* pPropertyCount, VkDisplayModePropertiesKHR* pProperties) {
  Result result = vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDisplayModeKHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, VkDisplayModeCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDisplayModeKHR* pMode) {
  Result result = vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getDisplayPlaneCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkDisplayModeKHR mode, uint planeIndex, VkDisplayPlaneCapabilitiesKHR* pCapabilities) {
  Result result = vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDisplayPlaneSurfaceKHR (VkInstance instance, VkDisplaySurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createSharedSwapchainsKHR (VkDevice device, uint swapchainCount, VkSwapchainCreateInfoKHR* pCreateInfos, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchains) {
  Result result = vkCreateSharedSwapchainsKHR(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INCOMPATIBLE_DISPLAY_KHR: return VkErrors.ERROR_INCOMPATIBLE_DISPLAY_KHR?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceSupportKHR (VkPhysicalDevice physicalDevice, uint queueFamilyIndex, VkSurfaceKHR surface, uint* pSupported) {
  Result result = vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilitiesKHR* pSurfaceCapabilities) {
  Result result = vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceFormatsKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint* pSurfaceFormatCount, VkSurfaceFormatKHR* pSurfaceFormats) {
  Result result = vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfacePresentModesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint* pPresentModeCount, VkPresentModeKHR* pPresentModes) {
  Result result = vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! createSwapchainKHR (VkDevice device, VkSwapchainCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchain) {
  Result result = vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_COMPRESSION_EXHAUSTED_EXT: return VkErrors.ERROR_COMPRESSION_EXHAUSTED_EXT?;
  }
}
fn void! getSwapchainImagesKHR (VkDevice device, VkSwapchainKHR swapchain, uint* pSwapchainImageCount, VkImage* pSwapchainImages) {
  Result result = vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! acquireNextImageKHR (VkDevice device, VkSwapchainKHR swapchain, ulong timeout, VkSemaphore semaphore, VkFence fence, uint* pImageIndex) {
  Result result = vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! queuePresentKHR (VkQueue queue, VkPresentInfoKHR* pPresentInfo) {
  Result result = vkQueuePresentKHR(queue, pPresentInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! createViSurfaceNN (VkInstance instance, VkViSurfaceCreateInfoNN* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateViSurfaceNN(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! createWaylandSurfaceKHR (VkInstance instance, VkWaylandSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateWaylandSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createWin32SurfaceKHR (VkInstance instance, VkWin32SurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateWin32SurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createXlibSurfaceKHR (VkInstance instance, VkXlibSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateXlibSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createXcbSurfaceKHR (VkInstance instance, VkXcbSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateXcbSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDirectFBSurfaceEXT (VkInstance instance, VkDirectFBSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateDirectFBSurfaceEXT(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImagePipeSurfaceFUCHSIA (VkInstance instance, VkImagePipeSurfaceCreateInfoFUCHSIA* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateImagePipeSurfaceFUCHSIA(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createStreamDescriptorSurfaceGGP (VkInstance instance, VkStreamDescriptorSurfaceCreateInfoGGP* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateStreamDescriptorSurfaceGGP(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! createScreenSurfaceQNX (VkInstance instance, VkScreenSurfaceCreateInfoQNX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateScreenSurfaceQNX(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDebugReportCallbackEXT (VkInstance instance, VkDebugReportCallbackCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugReportCallbackEXT* pCallback) {
  Result result = vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! debugMarkerSetObjectNameEXT (VkDevice device, VkDebugMarkerObjectNameInfoEXT* pNameInfo) {
  Result result = vkDebugMarkerSetObjectNameEXT(device, pNameInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! debugMarkerSetObjectTagEXT (VkDevice device, VkDebugMarkerObjectTagInfoEXT* pTagInfo) {
  Result result = vkDebugMarkerSetObjectTagEXT(device, pTagInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceExternalImageFormatPropertiesNV (VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkExternalMemoryHandleTypeFlagsNV externalHandleType, VkExternalImageFormatPropertiesNV* pExternalImageFormatProperties) {
  Result result = vkGetPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! getMemoryWin32HandleNV (VkDevice device, VkDeviceMemory memory, VkExternalMemoryHandleTypeFlagsNV handleType, void** pHandle) {
  Result result = vkGetMemoryWin32HandleNV(device, memory, handleType, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createIndirectCommandsLayoutNV (VkDevice device, VkIndirectCommandsLayoutCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkIndirectCommandsLayoutNV* pIndirectCommandsLayout) {
  Result result = vkCreateIndirectCommandsLayoutNV(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceImageFormatInfo2* pImageFormatInfo, VkImageFormatProperties2* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties2(physicalDevice, pImageFormatInfo, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
       case ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR: return VkErrors.ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR?;
  }
}
fn void! getMemoryWin32HandleKHR (VkDevice device, VkMemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo, void** pHandle) {
  Result result = vkGetMemoryWin32HandleKHR(device, pGetWin32HandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getMemoryWin32HandlePropertiesKHR (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, void* handle, VkMemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties) {
  Result result = vkGetMemoryWin32HandlePropertiesKHR(device, handleType, handle, pMemoryWin32HandleProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getMemoryFdKHR (VkDevice device, VkMemoryGetFdInfoKHR* pGetFdInfo, int* pFd) {
  Result result = vkGetMemoryFdKHR(device, pGetFdInfo, pFd);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getMemoryFdPropertiesKHR (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, int fd, VkMemoryFdPropertiesKHR* pMemoryFdProperties) {
  Result result = vkGetMemoryFdPropertiesKHR(device, handleType, fd, pMemoryFdProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getMemoryZirconHandleFUCHSIA (VkDevice device, VkMemoryGetZirconHandleInfoFUCHSIA* pGetZirconHandleInfo, ZHandle* pZirconHandle) {
  Result result = vkGetMemoryZirconHandleFUCHSIA(device, pGetZirconHandleInfo, pZirconHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getMemoryZirconHandlePropertiesFUCHSIA (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, ZHandle zirconHandle, VkMemoryZirconHandlePropertiesFUCHSIA* pMemoryZirconHandleProperties) {
  Result result = vkGetMemoryZirconHandlePropertiesFUCHSIA(device, handleType, zirconHandle, pMemoryZirconHandleProperties);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getMemoryRemoteAddressNV (VkDevice device, VkMemoryGetRemoteAddressInfoNV* pMemoryGetRemoteAddressInfo, VkRemoteAddressNV* pAddress) {
  Result result = vkGetMemoryRemoteAddressNV(device, pMemoryGetRemoteAddressInfo, pAddress);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getMemorySciBufNV (VkDevice device, VkMemoryGetSciBufInfoNV* pGetSciBufInfo, NvSciBufObj* pHandle) {
  Result result = vkGetMemorySciBufNV(device, pGetSciBufInfo, pHandle);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceExternalMemorySciBufPropertiesNV (VkPhysicalDevice physicalDevice, VkExternalMemoryHandleTypeFlagBits handleType, NvSciBufObj handle, VkMemorySciBufPropertiesNV* pMemorySciBufProperties) {
  Result result = vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV(physicalDevice, handleType, handle, pMemorySciBufProperties);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getPhysicalDeviceSciBufAttributesNV (VkPhysicalDevice physicalDevice, NvSciBufAttrList pAttributes) {
  Result result = vkGetPhysicalDeviceSciBufAttributesNV(physicalDevice, pAttributes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getSemaphoreWin32HandleKHR (VkDevice device, VkSemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo, void** pHandle) {
  Result result = vkGetSemaphoreWin32HandleKHR(device, pGetWin32HandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! importSemaphoreWin32HandleKHR (VkDevice device, VkImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo) {
  Result result = vkImportSemaphoreWin32HandleKHR(device, pImportSemaphoreWin32HandleInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getSemaphoreFdKHR (VkDevice device, VkSemaphoreGetFdInfoKHR* pGetFdInfo, int* pFd) {
  Result result = vkGetSemaphoreFdKHR(device, pGetFdInfo, pFd);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! importSemaphoreFdKHR (VkDevice device, VkImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo) {
  Result result = vkImportSemaphoreFdKHR(device, pImportSemaphoreFdInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getSemaphoreZirconHandleFUCHSIA (VkDevice device, VkSemaphoreGetZirconHandleInfoFUCHSIA* pGetZirconHandleInfo, ZHandle* pZirconHandle) {
  Result result = vkGetSemaphoreZirconHandleFUCHSIA(device, pGetZirconHandleInfo, pZirconHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! importSemaphoreZirconHandleFUCHSIA (VkDevice device, VkImportSemaphoreZirconHandleInfoFUCHSIA* pImportSemaphoreZirconHandleInfo) {
  Result result = vkImportSemaphoreZirconHandleFUCHSIA(device, pImportSemaphoreZirconHandleInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getFenceWin32HandleKHR (VkDevice device, VkFenceGetWin32HandleInfoKHR* pGetWin32HandleInfo, void** pHandle) {
  Result result = vkGetFenceWin32HandleKHR(device, pGetWin32HandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! importFenceWin32HandleKHR (VkDevice device, VkImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo) {
  Result result = vkImportFenceWin32HandleKHR(device, pImportFenceWin32HandleInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getFenceFdKHR (VkDevice device, VkFenceGetFdInfoKHR* pGetFdInfo, int* pFd) {
  Result result = vkGetFenceFdKHR(device, pGetFdInfo, pFd);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! importFenceFdKHR (VkDevice device, VkImportFenceFdInfoKHR* pImportFenceFdInfo) {
  Result result = vkImportFenceFdKHR(device, pImportFenceFdInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! getFenceSciSyncFenceNV (VkDevice device, VkFenceGetSciSyncInfoNV* pGetSciSyncHandleInfo, void* pHandle) {
  Result result = vkGetFenceSciSyncFenceNV(device, pGetSciSyncHandleInfo, pHandle);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_NOT_PERMITTED_KHR: return VkErrors.ERROR_NOT_PERMITTED_KHR?;
  }
}
fn void! getFenceSciSyncObjNV (VkDevice device, VkFenceGetSciSyncInfoNV* pGetSciSyncHandleInfo, void* pHandle) {
  Result result = vkGetFenceSciSyncObjNV(device, pGetSciSyncHandleInfo, pHandle);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_NOT_PERMITTED_KHR: return VkErrors.ERROR_NOT_PERMITTED_KHR?;
  }
}
fn void! importFenceSciSyncFenceNV (VkDevice device, VkImportFenceSciSyncInfoNV* pImportFenceSciSyncInfo) {
  Result result = vkImportFenceSciSyncFenceNV(device, pImportFenceSciSyncInfo);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_NOT_PERMITTED_KHR: return VkErrors.ERROR_NOT_PERMITTED_KHR?;
  }
}
fn void! importFenceSciSyncObjNV (VkDevice device, VkImportFenceSciSyncInfoNV* pImportFenceSciSyncInfo) {
  Result result = vkImportFenceSciSyncObjNV(device, pImportFenceSciSyncInfo);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_NOT_PERMITTED_KHR: return VkErrors.ERROR_NOT_PERMITTED_KHR?;
  }
}
fn void! getSemaphoreSciSyncObjNV (VkDevice device, VkSemaphoreGetSciSyncInfoNV* pGetSciSyncInfo, void* pHandle) {
  Result result = vkGetSemaphoreSciSyncObjNV(device, pGetSciSyncInfo, pHandle);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_NOT_PERMITTED_KHR: return VkErrors.ERROR_NOT_PERMITTED_KHR?;
  }
}
fn void! importSemaphoreSciSyncObjNV (VkDevice device, VkImportSemaphoreSciSyncInfoNV* pImportSemaphoreSciSyncInfo) {
  Result result = vkImportSemaphoreSciSyncObjNV(device, pImportSemaphoreSciSyncInfo);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_NOT_PERMITTED_KHR: return VkErrors.ERROR_NOT_PERMITTED_KHR?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPhysicalDeviceSciSyncAttributesNV (VkPhysicalDevice physicalDevice, VkSciSyncAttributesInfoNV* pSciSyncAttributesInfo, NvSciSyncAttrList pAttributes) {
  Result result = vkGetPhysicalDeviceSciSyncAttributesNV(physicalDevice, pSciSyncAttributesInfo, pAttributes);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! createSemaphoreSciSyncPoolNV (VkDevice device, VkSemaphoreSciSyncPoolCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSemaphoreSciSyncPoolNV* pSemaphorePool) {
  Result result = vkCreateSemaphoreSciSyncPoolNV(device, pCreateInfo, pAllocator, pSemaphorePool);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! releaseDisplayEXT (VkPhysicalDevice physicalDevice, VkDisplayKHR display) {
  Result result = vkReleaseDisplayEXT(physicalDevice, display);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! acquireXlibDisplayEXT (VkPhysicalDevice physicalDevice, Display* dpy, VkDisplayKHR display) {
  Result result = vkAcquireXlibDisplayEXT(physicalDevice, dpy, display);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getRandROutputDisplayEXT (VkPhysicalDevice physicalDevice, Display* dpy, RROutput rrOutput, VkDisplayKHR* pDisplay) {
  Result result = vkGetRandROutputDisplayEXT(physicalDevice, dpy, rrOutput, pDisplay);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! acquireWinrtDisplayNV (VkPhysicalDevice physicalDevice, VkDisplayKHR display) {
  Result result = vkAcquireWinrtDisplayNV(physicalDevice, display);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getWinrtDisplayNV (VkPhysicalDevice physicalDevice, uint deviceRelativeId, VkDisplayKHR* pDisplay) {
  Result result = vkGetWinrtDisplayNV(physicalDevice, deviceRelativeId, pDisplay);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! displayPowerControlEXT (VkDevice device, VkDisplayKHR display, VkDisplayPowerInfoEXT* pDisplayPowerInfo) {
  Result result = vkDisplayPowerControlEXT(device, display, pDisplayPowerInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! registerDeviceEventEXT (VkDevice device, VkDeviceEventInfoEXT* pDeviceEventInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence) {
  Result result = vkRegisterDeviceEventEXT(device, pDeviceEventInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! registerDisplayEventEXT (VkDevice device, VkDisplayKHR display, VkDisplayEventInfoEXT* pDisplayEventInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence) {
  Result result = vkRegisterDisplayEventEXT(device, display, pDisplayEventInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getSwapchainCounterEXT (VkDevice device, VkSwapchainKHR swapchain, VkSurfaceCounterFlagBitsEXT counter, ulong* pCounterValue) {
  Result result = vkGetSwapchainCounterEXT(device, swapchain, counter, pCounterValue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceCapabilities2EXT (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilities2EXT* pSurfaceCapabilities) {
  Result result = vkGetPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice, surface, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! enumeratePhysicalDeviceGroups (VkInstance instance, uint* pPhysicalDeviceGroupCount, VkPhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) {
  Result result = vkEnumeratePhysicalDeviceGroups(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! bindBufferMemory2 (VkDevice device, uint bindInfoCount, VkBindBufferMemoryInfo* pBindInfos) {
  Result result = vkBindBufferMemory2(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! bindImageMemory2 (VkDevice device, uint bindInfoCount, VkBindImageMemoryInfo* pBindInfos) {
  Result result = vkBindImageMemory2(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDeviceGroupPresentCapabilitiesKHR (VkDevice device, VkDeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities) {
  Result result = vkGetDeviceGroupPresentCapabilitiesKHR(device, pDeviceGroupPresentCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDeviceGroupSurfacePresentModesKHR (VkDevice device, VkSurfaceKHR surface, VkDeviceGroupPresentModeFlagsKHR* pModes) {
  Result result = vkGetDeviceGroupSurfacePresentModesKHR(device, surface, pModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! acquireNextImage2KHR (VkDevice device, VkAcquireNextImageInfoKHR* pAcquireInfo, uint* pImageIndex) {
  Result result = vkAcquireNextImage2KHR(device, pAcquireInfo, pImageIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! getPhysicalDevicePresentRectanglesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint* pRectCount, VkRect2D* pRects) {
  Result result = vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, pRectCount, pRects);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorUpdateTemplate (VkDevice device, VkDescriptorUpdateTemplateCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorUpdateTemplate* pDescriptorUpdateTemplate) {
  Result result = vkCreateDescriptorUpdateTemplate(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSwapchainStatusKHR (VkDevice device, VkSwapchainKHR swapchain) {
  Result result = vkGetSwapchainStatusKHR(device, swapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! getRefreshCycleDurationGOOGLE (VkDevice device, VkSwapchainKHR swapchain, VkRefreshCycleDurationGOOGLE* pDisplayTimingProperties) {
  Result result = vkGetRefreshCycleDurationGOOGLE(device, swapchain, pDisplayTimingProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPastPresentationTimingGOOGLE (VkDevice device, VkSwapchainKHR swapchain, uint* pPresentationTimingCount, VkPastPresentationTimingGOOGLE* pPresentationTimings) {
  Result result = vkGetPastPresentationTimingGOOGLE(device, swapchain, pPresentationTimingCount, pPresentationTimings);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! createIOSSurfaceMVK (VkInstance instance, VkIOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateIOSSurfaceMVK(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! createMacOSSurfaceMVK (VkInstance instance, VkMacOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateMacOSSurfaceMVK(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! createMetalSurfaceEXT (VkInstance instance, VkMetalSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateMetalSurfaceEXT(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceCapabilities2KHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, VkSurfaceCapabilities2KHR* pSurfaceCapabilities) {
  Result result = vkGetPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice, pSurfaceInfo, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceFormats2KHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint* pSurfaceFormatCount, VkSurfaceFormat2KHR* pSurfaceFormats) {
  Result result = vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceDisplayProperties2KHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkDisplayProperties2KHR* pProperties) {
  Result result = vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceDisplayPlaneProperties2KHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkDisplayPlaneProperties2KHR* pProperties) {
  Result result = vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDisplayModeProperties2KHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint* pPropertyCount, VkDisplayModeProperties2KHR* pProperties) {
  Result result = vkGetDisplayModeProperties2KHR(physicalDevice, display, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDisplayPlaneCapabilities2KHR (VkPhysicalDevice physicalDevice, VkDisplayPlaneInfo2KHR* pDisplayPlaneInfo, VkDisplayPlaneCapabilities2KHR* pCapabilities) {
  Result result = vkGetDisplayPlaneCapabilities2KHR(physicalDevice, pDisplayPlaneInfo, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createSamplerYcbcrConversion (VkDevice device, VkSamplerYcbcrConversionCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSamplerYcbcrConversion* pYcbcrConversion) {
  Result result = vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createValidationCacheEXT (VkDevice device, VkValidationCacheCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkValidationCacheEXT* pValidationCache) {
  Result result = vkCreateValidationCacheEXT(device, pCreateInfo, pAllocator, pValidationCache);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getValidationCacheDataEXT (VkDevice device, VkValidationCacheEXT validationCache, usz* pDataSize, void* pData) {
  Result result = vkGetValidationCacheDataEXT(device, validationCache, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! mergeValidationCachesEXT (VkDevice device, VkValidationCacheEXT dstCache, uint srcCacheCount, VkValidationCacheEXT* pSrcCaches) {
  Result result = vkMergeValidationCachesEXT(device, dstCache, srcCacheCount, pSrcCaches);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSwapchainGrallocUsageANDROID (VkDevice device, VkFormat format, VkImageUsageFlags imageUsage, int* grallocUsage) {
  Result result = vkGetSwapchainGrallocUsageANDROID(device, format, imageUsage, grallocUsage);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! getSwapchainGrallocUsage2ANDROID (VkDevice device, VkFormat format, VkImageUsageFlags imageUsage, VkSwapchainImageUsageFlagsANDROID swapchainImageUsage, ulong* grallocConsumerUsage, ulong* grallocProducerUsage) {
  Result result = vkGetSwapchainGrallocUsage2ANDROID(device, format, imageUsage, swapchainImageUsage, grallocConsumerUsage, grallocProducerUsage);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! acquireImageANDROID (VkDevice device, VkImage image, int nativeFenceFd, VkSemaphore semaphore, VkFence fence) {
  Result result = vkAcquireImageANDROID(device, image, nativeFenceFd, semaphore, fence);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! queueSignalReleaseImageANDROID (VkQueue queue, uint waitSemaphoreCount, VkSemaphore* pWaitSemaphores, VkImage image, int* pNativeFenceFd) {
  Result result = vkQueueSignalReleaseImageANDROID(queue, waitSemaphoreCount, pWaitSemaphores, image, pNativeFenceFd);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! getShaderInfoAMD (VkDevice device, VkPipeline pipeline, VkShaderStageFlagBits shaderStage, VkShaderInfoTypeAMD infoType, usz* pInfoSize, void* pInfo) {
  Result result = vkGetShaderInfoAMD(device, pipeline, shaderStage, infoType, pInfoSize, pInfo);
  switch(result) { 
       case ERROR_FEATURE_NOT_PRESENT: return VkErrors.ERROR_FEATURE_NOT_PRESENT?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPhysicalDeviceCalibrateableTimeDomainsKHR (VkPhysicalDevice physicalDevice, uint* pTimeDomainCount, VkTimeDomainKHR* pTimeDomains) {
  Result result = vkGetPhysicalDeviceCalibrateableTimeDomainsKHR(physicalDevice, pTimeDomainCount, pTimeDomains);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getCalibratedTimestampsKHR (VkDevice device, uint timestampCount, VkCalibratedTimestampInfoKHR* pTimestampInfos, ulong* pTimestamps, ulong* pMaxDeviation) {
  Result result = vkGetCalibratedTimestampsKHR(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! setDebugUtilsObjectNameEXT (VkDevice device, VkDebugUtilsObjectNameInfoEXT* pNameInfo) {
  Result result = vkSetDebugUtilsObjectNameEXT(device, pNameInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! setDebugUtilsObjectTagEXT (VkDevice device, VkDebugUtilsObjectTagInfoEXT* pTagInfo) {
  Result result = vkSetDebugUtilsObjectTagEXT(device, pTagInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDebugUtilsMessengerEXT (VkInstance instance, VkDebugUtilsMessengerCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugUtilsMessengerEXT* pMessenger) {
  Result result = vkCreateDebugUtilsMessengerEXT(instance, pCreateInfo, pAllocator, pMessenger);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getMemoryHostPointerPropertiesEXT (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, void* pHostPointer, VkMemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties) {
  Result result = vkGetMemoryHostPointerPropertiesEXT(device, handleType, pHostPointer, pMemoryHostPointerProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! createRenderPass2 (VkDevice device, VkRenderPassCreateInfo2* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass) {
  Result result = vkCreateRenderPass2(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSemaphoreCounterValue (VkDevice device, VkSemaphore semaphore, ulong* pValue) {
  Result result = vkGetSemaphoreCounterValue(device, semaphore, pValue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitSemaphores (VkDevice device, VkSemaphoreWaitInfo* pWaitInfo, ulong timeout) {
  Result result = vkWaitSemaphores(device, pWaitInfo, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! signalSemaphore (VkDevice device, VkSemaphoreSignalInfo* pSignalInfo) {
  Result result = vkSignalSemaphore(device, pSignalInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getAndroidHardwareBufferPropertiesANDROID (VkDevice device, AHardwareBuffer* buffer, VkAndroidHardwareBufferPropertiesANDROID* pProperties) {
  Result result = vkGetAndroidHardwareBufferPropertiesANDROID(device, buffer, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE_KHR: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE_KHR?;
  }
}
fn void! getMemoryAndroidHardwareBufferANDROID (VkDevice device, VkMemoryGetAndroidHardwareBufferInfoANDROID* pInfo, AHardwareBuffer** pBuffer) {
  Result result = vkGetMemoryAndroidHardwareBufferANDROID(device, pInfo, pBuffer);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! compileDeferredNV (VkDevice device, VkPipeline pipeline, uint shader) {
  Result result = vkCompileDeferredNV(device, pipeline, shader);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createAccelerationStructureNV (VkDevice device, VkAccelerationStructureCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkAccelerationStructureNV* pAccelerationStructure) {
  Result result = vkCreateAccelerationStructureNV(device, pCreateInfo, pAllocator, pAccelerationStructure);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! bindAccelerationStructureMemoryNV (VkDevice device, uint bindInfoCount, VkBindAccelerationStructureMemoryInfoNV* pBindInfos) {
  Result result = vkBindAccelerationStructureMemoryNV(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! copyAccelerationStructureKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureInfoKHR* pInfo) {
  Result result = vkCopyAccelerationStructureKHR(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! copyAccelerationStructureToMemoryKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureToMemoryInfoKHR* pInfo) {
  Result result = vkCopyAccelerationStructureToMemoryKHR(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! copyMemoryToAccelerationStructureKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMemoryToAccelerationStructureInfoKHR* pInfo) {
  Result result = vkCopyMemoryToAccelerationStructureKHR(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! writeAccelerationStructuresPropertiesKHR (VkDevice device, uint accelerationStructureCount, VkAccelerationStructureKHR* pAccelerationStructures, VkQueryType queryType, usz dataSize, void* pData, usz stride) {
  Result result = vkWriteAccelerationStructuresPropertiesKHR(device, accelerationStructureCount, pAccelerationStructures, queryType, dataSize, pData, stride);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getRayTracingShaderGroupHandlesKHR (VkDevice device, VkPipeline pipeline, uint firstGroup, uint groupCount, usz dataSize, void* pData) {
  Result result = vkGetRayTracingShaderGroupHandlesKHR(device, pipeline, firstGroup, groupCount, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getRayTracingCaptureReplayShaderGroupHandlesKHR (VkDevice device, VkPipeline pipeline, uint firstGroup, uint groupCount, usz dataSize, void* pData) {
  Result result = vkGetRayTracingCaptureReplayShaderGroupHandlesKHR(device, pipeline, firstGroup, groupCount, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getAccelerationStructureHandleNV (VkDevice device, VkAccelerationStructureNV accelerationStructure, usz dataSize, void* pData) {
  Result result = vkGetAccelerationStructureHandleNV(device, accelerationStructure, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRayTracingPipelinesNV (VkDevice device, VkPipelineCache pipelineCache, uint createInfoCount, VkRayTracingPipelineCreateInfoNV* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateRayTracingPipelinesNV(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! createRayTracingPipelinesKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkPipelineCache pipelineCache, uint createInfoCount, VkRayTracingPipelineCreateInfoKHR* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateRayTracingPipelinesKHR(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS?;
  }
}
fn void! getPhysicalDeviceCooperativeMatrixPropertiesNV (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkCooperativeMatrixPropertiesNV* pProperties) {
  Result result = vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getImageViewAddressNVX (VkDevice device, VkImageView imageView, VkImageViewAddressPropertiesNVX* pProperties) {
  Result result = vkGetImageViewAddressNVX(device, imageView, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPhysicalDeviceSurfacePresentModes2EXT (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint* pPresentModeCount, VkPresentModeKHR* pPresentModes) {
  Result result = vkGetPhysicalDeviceSurfacePresentModes2EXT(physicalDevice, pSurfaceInfo, pPresentModeCount, pPresentModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getDeviceGroupSurfacePresentModes2EXT (VkDevice device, VkPhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, VkDeviceGroupPresentModeFlagsKHR* pModes) {
  Result result = vkGetDeviceGroupSurfacePresentModes2EXT(device, pSurfaceInfo, pModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! acquireFullScreenExclusiveModeEXT (VkDevice device, VkSwapchainKHR swapchain) {
  Result result = vkAcquireFullScreenExclusiveModeEXT(device, swapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! releaseFullScreenExclusiveModeEXT (VkDevice device, VkSwapchainKHR swapchain) {
  Result result = vkReleaseFullScreenExclusiveModeEXT(device, swapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! enumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR (VkPhysicalDevice physicalDevice, uint queueFamilyIndex, uint* pCounterCount, VkPerformanceCounterKHR* pCounters, VkPerformanceCounterDescriptionKHR* pCounterDescriptions) {
  Result result = vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! acquireProfilingLockKHR (VkDevice device, VkAcquireProfilingLockInfoKHR* pInfo) {
  Result result = vkAcquireProfilingLockKHR(device, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case TIMEOUT: return VkErrors.TIMEOUT?;
  }
}
fn void! getImageDrmFormatModifierPropertiesEXT (VkDevice device, VkImage image, VkImageDrmFormatModifierPropertiesEXT* pProperties) {
  Result result = vkGetImageDrmFormatModifierPropertiesEXT(device, image, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createHeadlessSurfaceEXT (VkInstance instance, VkHeadlessSurfaceCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = vkCreateHeadlessSurfaceEXT(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV (VkPhysicalDevice physicalDevice, uint* pCombinationCount, VkFramebufferMixedSamplesCombinationNV* pCombinations) {
  Result result = vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, pCombinationCount, pCombinations);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! initializePerformanceApiINTEL (VkDevice device, VkInitializePerformanceApiInfoINTEL* pInitializeInfo) {
  Result result = vkInitializePerformanceApiINTEL(device, pInitializeInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! cmdSetPerformanceMarkerINTEL (VkCommandBuffer commandBuffer, VkPerformanceMarkerInfoINTEL* pMarkerInfo) {
  Result result = vkCmdSetPerformanceMarkerINTEL(commandBuffer, pMarkerInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! cmdSetPerformanceStreamMarkerINTEL (VkCommandBuffer commandBuffer, VkPerformanceStreamMarkerInfoINTEL* pMarkerInfo) {
  Result result = vkCmdSetPerformanceStreamMarkerINTEL(commandBuffer, pMarkerInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! cmdSetPerformanceOverrideINTEL (VkCommandBuffer commandBuffer, VkPerformanceOverrideInfoINTEL* pOverrideInfo) {
  Result result = vkCmdSetPerformanceOverrideINTEL(commandBuffer, pOverrideInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! acquirePerformanceConfigurationINTEL (VkDevice device, VkPerformanceConfigurationAcquireInfoINTEL* pAcquireInfo, VkPerformanceConfigurationINTEL* pConfiguration) {
  Result result = vkAcquirePerformanceConfigurationINTEL(device, pAcquireInfo, pConfiguration);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! releasePerformanceConfigurationINTEL (VkDevice device, VkPerformanceConfigurationINTEL configuration) {
  Result result = vkReleasePerformanceConfigurationINTEL(device, configuration);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! queueSetPerformanceConfigurationINTEL (VkQueue queue, VkPerformanceConfigurationINTEL configuration) {
  Result result = vkQueueSetPerformanceConfigurationINTEL(queue, configuration);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPerformanceParameterINTEL (VkDevice device, VkPerformanceParameterTypeINTEL parameter, VkPerformanceValueINTEL* pValue) {
  Result result = vkGetPerformanceParameterINTEL(device, parameter, pValue);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPipelineExecutablePropertiesKHR (VkDevice device, VkPipelineInfoKHR* pPipelineInfo, uint* pExecutableCount, VkPipelineExecutablePropertiesKHR* pProperties) {
  Result result = vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, pExecutableCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelineExecutableStatisticsKHR (VkDevice device, VkPipelineExecutableInfoKHR* pExecutableInfo, uint* pStatisticCount, VkPipelineExecutableStatisticKHR* pStatistics) {
  Result result = vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, pStatisticCount, pStatistics);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelineExecutableInternalRepresentationsKHR (VkDevice device, VkPipelineExecutableInfoKHR* pExecutableInfo, uint* pInternalRepresentationCount, VkPipelineExecutableInternalRepresentationKHR* pInternalRepresentations) {
  Result result = vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceToolProperties (VkPhysicalDevice physicalDevice, uint* pToolCount, VkPhysicalDeviceToolProperties* pToolProperties) {
  Result result = vkGetPhysicalDeviceToolProperties(physicalDevice, pToolCount, pToolProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createAccelerationStructureKHR (VkDevice device, VkAccelerationStructureCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkAccelerationStructureKHR* pAccelerationStructure) {
  Result result = vkCreateAccelerationStructureKHR(device, pCreateInfo, pAllocator, pAccelerationStructure);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! buildAccelerationStructuresKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, uint infoCount, VkAccelerationStructureBuildGeometryInfoKHR* pInfos, VkAccelerationStructureBuildRangeInfoKHR* const* ppBuildRangeInfos) {
  Result result = vkBuildAccelerationStructuresKHR(device, deferredOperation, infoCount, pInfos, ppBuildRangeInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDeferredOperationKHR (VkDevice device, VkAllocationCallbacks* pAllocator, VkDeferredOperationKHR* pDeferredOperation) {
  Result result = vkCreateDeferredOperationKHR(device, pAllocator, pDeferredOperation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getDeferredOperationResultKHR (VkDevice device, VkDeferredOperationKHR operation) {
  Result result = vkGetDeferredOperationResultKHR(device, operation);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! deferredOperationJoinKHR (VkDevice device, VkDeferredOperationKHR operation) {
  Result result = vkDeferredOperationJoinKHR(device, operation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createPrivateDataSlot (VkDevice device, VkPrivateDataSlotCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPrivateDataSlot* pPrivateDataSlot) {
  Result result = vkCreatePrivateDataSlot(device, pCreateInfo, pAllocator, pPrivateDataSlot);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! setPrivateData (VkDevice device, VkObjectType objectType, ulong objectHandle, VkPrivateDataSlot privateDataSlot, ulong data) {
  Result result = vkSetPrivateData(device, objectType, objectHandle, privateDataSlot, data);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPhysicalDeviceRefreshableObjectTypesKHR (VkPhysicalDevice physicalDevice, uint* pRefreshableObjectTypeCount, VkObjectType* pRefreshableObjectTypes) {
  Result result = vkGetPhysicalDeviceRefreshableObjectTypesKHR(physicalDevice, pRefreshableObjectTypeCount, pRefreshableObjectTypes);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! getPhysicalDeviceFragmentShadingRatesKHR (VkPhysicalDevice physicalDevice, uint* pFragmentShadingRateCount, VkPhysicalDeviceFragmentShadingRateKHR* pFragmentShadingRates) {
  Result result = vkGetPhysicalDeviceFragmentShadingRatesKHR(physicalDevice, pFragmentShadingRateCount, pFragmentShadingRates);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! queueSubmit2 (VkQueue queue, uint submitCount, VkSubmitInfo2* pSubmits, VkFence fence) {
  Result result = vkQueueSubmit2(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! copyMemoryToImageEXT (VkDevice device, VkCopyMemoryToImageInfoEXT* pCopyMemoryToImageInfo) {
  Result result = vkCopyMemoryToImageEXT(device, pCopyMemoryToImageInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! copyImageToMemoryEXT (VkDevice device, VkCopyImageToMemoryInfoEXT* pCopyImageToMemoryInfo) {
  Result result = vkCopyImageToMemoryEXT(device, pCopyImageToMemoryInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! copyImageToImageEXT (VkDevice device, VkCopyImageToImageInfoEXT* pCopyImageToImageInfo) {
  Result result = vkCopyImageToImageEXT(device, pCopyImageToImageInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! transitionImageLayoutEXT (VkDevice device, uint transitionCount, VkHostImageLayoutTransitionInfoEXT* pTransitions) {
  Result result = vkTransitionImageLayoutEXT(device, transitionCount, pTransitions);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! getPhysicalDeviceVideoCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkVideoProfileInfoKHR* pVideoProfile, VkVideoCapabilitiesKHR* pCapabilities) {
  Result result = vkGetPhysicalDeviceVideoCapabilitiesKHR(physicalDevice, pVideoProfile, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR?;
  }
}
fn void! getPhysicalDeviceVideoFormatPropertiesKHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceVideoFormatInfoKHR* pVideoFormatInfo, uint* pVideoFormatPropertyCount, VkVideoFormatPropertiesKHR* pVideoFormatProperties) {
  Result result = vkGetPhysicalDeviceVideoFormatPropertiesKHR(physicalDevice, pVideoFormatInfo, pVideoFormatPropertyCount, pVideoFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR: return VkErrors.ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR?;
  }
}
fn void! getPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR* pQualityLevelInfo, VkVideoEncodeQualityLevelPropertiesKHR* pQualityLevelProperties) {
  Result result = vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR(physicalDevice, pQualityLevelInfo, pQualityLevelProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR?;
  }
}
fn void! createVideoSessionKHR (VkDevice device, VkVideoSessionCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkVideoSessionKHR* pVideoSession) {
  Result result = vkCreateVideoSessionKHR(device, pCreateInfo, pAllocator, pVideoSession);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR?;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return VkErrors.ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR?;
  }
}
fn void! createVideoSessionParametersKHR (VkDevice device, VkVideoSessionParametersCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkVideoSessionParametersKHR* pVideoSessionParameters) {
  Result result = vkCreateVideoSessionParametersKHR(device, pCreateInfo, pAllocator, pVideoSessionParameters);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return VkErrors.ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR?;
  }
}
fn void! updateVideoSessionParametersKHR (VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkVideoSessionParametersUpdateInfoKHR* pUpdateInfo) {
  Result result = vkUpdateVideoSessionParametersKHR(device, videoSessionParameters, pUpdateInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return VkErrors.ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR?;
  }
}
fn void! getEncodedVideoSessionParametersKHR (VkDevice device, VkVideoEncodeSessionParametersGetInfoKHR* pVideoSessionParametersInfo, VkVideoEncodeSessionParametersFeedbackInfoKHR* pFeedbackInfo, usz* pDataSize, void* pData) {
  Result result = vkGetEncodedVideoSessionParametersKHR(device, pVideoSessionParametersInfo, pFeedbackInfo, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getVideoSessionMemoryRequirementsKHR (VkDevice device, VkVideoSessionKHR videoSession, uint* pMemoryRequirementsCount, VkVideoSessionMemoryRequirementsKHR* pMemoryRequirements) {
  Result result = vkGetVideoSessionMemoryRequirementsKHR(device, videoSession, pMemoryRequirementsCount, pMemoryRequirements);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! bindVideoSessionMemoryKHR (VkDevice device, VkVideoSessionKHR videoSession, uint bindSessionMemoryInfoCount, VkBindVideoSessionMemoryInfoKHR* pBindSessionMemoryInfos) {
  Result result = vkBindVideoSessionMemoryKHR(device, videoSession, bindSessionMemoryInfoCount, pBindSessionMemoryInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createCuModuleNVX (VkDevice device, VkCuModuleCreateInfoNVX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCuModuleNVX* pModule) {
  Result result = vkCreateCuModuleNVX(device, pCreateInfo, pAllocator, pModule);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! createCuFunctionNVX (VkDevice device, VkCuFunctionCreateInfoNVX* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCuFunctionNVX* pFunction) {
  Result result = vkCreateCuFunctionNVX(device, pCreateInfo, pAllocator, pFunction);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getBufferOpaqueCaptureDescriptorDataEXT (VkDevice device, VkBufferCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = vkGetBufferOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getImageOpaqueCaptureDescriptorDataEXT (VkDevice device, VkImageCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = vkGetImageOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getImageViewOpaqueCaptureDescriptorDataEXT (VkDevice device, VkImageViewCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = vkGetImageViewOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSamplerOpaqueCaptureDescriptorDataEXT (VkDevice device, VkSamplerCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = vkGetSamplerOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getAccelerationStructureOpaqueCaptureDescriptorDataEXT (VkDevice device, VkAccelerationStructureCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! acquireDrmDisplayEXT (VkPhysicalDevice physicalDevice, int drmFd, VkDisplayKHR display) {
  Result result = vkAcquireDrmDisplayEXT(physicalDevice, drmFd, display);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getDrmDisplayEXT (VkPhysicalDevice physicalDevice, int drmFd, uint connectorId, VkDisplayKHR* display) {
  Result result = vkGetDrmDisplayEXT(physicalDevice, drmFd, connectorId, display);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! waitForPresentKHR (VkDevice device, VkSwapchainKHR swapchain, ulong presentId, ulong timeout) {
  Result result = vkWaitForPresentKHR(device, swapchain, presentId, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! createBufferCollectionFUCHSIA (VkDevice device, VkBufferCollectionCreateInfoFUCHSIA* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBufferCollectionFUCHSIA* pCollection) {
  Result result = vkCreateBufferCollectionFUCHSIA(device, pCreateInfo, pAllocator, pCollection);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! setBufferCollectionBufferConstraintsFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkBufferConstraintsInfoFUCHSIA* pBufferConstraintsInfo) {
  Result result = vkSetBufferCollectionBufferConstraintsFUCHSIA(device, collection, pBufferConstraintsInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! setBufferCollectionImageConstraintsFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkImageConstraintsInfoFUCHSIA* pImageConstraintsInfo) {
  Result result = vkSetBufferCollectionImageConstraintsFUCHSIA(device, collection, pImageConstraintsInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! getBufferCollectionPropertiesFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkBufferCollectionPropertiesFUCHSIA* pProperties) {
  Result result = vkGetBufferCollectionPropertiesFUCHSIA(device, collection, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! createCudaModuleNV (VkDevice device, VkCudaModuleCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCudaModuleNV* pModule) {
  Result result = vkCreateCudaModuleNV(device, pCreateInfo, pAllocator, pModule);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getCudaModuleCacheNV (VkDevice device, VkCudaModuleNV module, usz* pCacheSize, void* pCacheData) {
  Result result = vkGetCudaModuleCacheNV(device, module, pCacheSize, pCacheData);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! createCudaFunctionNV (VkDevice device, VkCudaFunctionCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCudaFunctionNV* pFunction) {
  Result result = vkCreateCudaFunctionNV(device, pCreateInfo, pAllocator, pFunction);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createMicromapEXT (VkDevice device, VkMicromapCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkMicromapEXT* pMicromap) {
  Result result = vkCreateMicromapEXT(device, pCreateInfo, pAllocator, pMicromap);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! buildMicromapsEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, uint infoCount, VkMicromapBuildInfoEXT* pInfos) {
  Result result = vkBuildMicromapsEXT(device, deferredOperation, infoCount, pInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! copyMicromapEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMicromapInfoEXT* pInfo) {
  Result result = vkCopyMicromapEXT(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! copyMicromapToMemoryEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMicromapToMemoryInfoEXT* pInfo) {
  Result result = vkCopyMicromapToMemoryEXT(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! copyMemoryToMicromapEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMemoryToMicromapInfoEXT* pInfo) {
  Result result = vkCopyMemoryToMicromapEXT(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! writeMicromapsPropertiesEXT (VkDevice device, uint micromapCount, VkMicromapEXT* pMicromaps, VkQueryType queryType, usz dataSize, void* pData, usz stride) {
  Result result = vkWriteMicromapsPropertiesEXT(device, micromapCount, pMicromaps, queryType, dataSize, pData, stride);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelinePropertiesEXT (VkDevice device, VkPipelineInfoEXT* pPipelineInfo, VkBaseOutStructure* pPipelineProperties) {
  Result result = vkGetPipelinePropertiesEXT(device, pPipelineInfo, pPipelineProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getFramebufferTilePropertiesQCOM (VkDevice device, VkFramebuffer framebuffer, uint* pPropertiesCount, VkTilePropertiesQCOM* pProperties) {
  Result result = vkGetFramebufferTilePropertiesQCOM(device, framebuffer, pPropertiesCount, pProperties);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! getDynamicRenderingTilePropertiesQCOM (VkDevice device, VkRenderingInfo* pRenderingInfo, VkTilePropertiesQCOM* pProperties) {
  Result result = vkGetDynamicRenderingTilePropertiesQCOM(device, pRenderingInfo, pProperties);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! getPhysicalDeviceOpticalFlowImageFormatsNV (VkPhysicalDevice physicalDevice, VkOpticalFlowImageFormatInfoNV* pOpticalFlowImageFormatInfo, uint* pFormatCount, VkOpticalFlowImageFormatPropertiesNV* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceOpticalFlowImageFormatsNV(physicalDevice, pOpticalFlowImageFormatInfo, pFormatCount, pImageFormatProperties);
  switch(result) { 
       case ERROR_EXTENSION_NOT_PRESENT: return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createOpticalFlowSessionNV (VkDevice device, VkOpticalFlowSessionCreateInfoNV* pCreateInfo, VkAllocationCallbacks* pAllocator, VkOpticalFlowSessionNV* pSession) {
  Result result = vkCreateOpticalFlowSessionNV(device, pCreateInfo, pAllocator, pSession);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! bindOpticalFlowSessionImageNV (VkDevice device, VkOpticalFlowSessionNV session, VkOpticalFlowSessionBindingPointNV bindingPoint, VkImageView view, VkImageLayout layout) {
  Result result = vkBindOpticalFlowSessionImageNV(device, session, bindingPoint, view, layout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getDeviceFaultInfoEXT (VkDevice device, VkDeviceFaultCountsEXT* pFaultCounts, VkDeviceFaultInfoEXT* pFaultInfo) {
  Result result = vkGetDeviceFaultInfoEXT(device, pFaultCounts, pFaultInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! releaseSwapchainImagesEXT (VkDevice device, VkReleaseSwapchainImagesInfoEXT* pReleaseInfo) {
  Result result = vkReleaseSwapchainImagesEXT(device, pReleaseInfo);
  switch(result) { 
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! mapMemory2KHR (VkDevice device, VkMemoryMapInfoKHR* pMemoryMapInfo, void** ppData) {
  Result result = vkMapMemory2KHR(device, pMemoryMapInfo, ppData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! unmapMemory2KHR (VkDevice device, VkMemoryUnmapInfoKHR* pMemoryUnmapInfo) {
  Result result = vkUnmapMemory2KHR(device, pMemoryUnmapInfo);
  switch(result) { 
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! createShadersEXT (VkDevice device, uint createInfoCount, VkShaderCreateInfoEXT* pCreateInfos, VkAllocationCallbacks* pAllocator, VkShaderEXT* pShaders) {
  Result result = vkCreateShadersEXT(device, createInfoCount, pCreateInfos, pAllocator, pShaders);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getShaderBinaryDataEXT (VkDevice device, VkShaderEXT shader, usz* pDataSize, void* pData) {
  Result result = vkGetShaderBinaryDataEXT(device, shader, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getScreenBufferPropertiesQNX (VkDevice device, _screen_buffer* buffer, VkScreenBufferPropertiesQNX* pProperties) {
  Result result = vkGetScreenBufferPropertiesQNX(device, buffer, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE_KHR: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE_KHR?;
  }
}
fn void! getPhysicalDeviceCooperativeMatrixPropertiesKHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkCooperativeMatrixPropertiesKHR* pProperties) {
  Result result = vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getExecutionGraphPipelineScratchSizeAMDX (VkDevice device, VkPipeline executionGraph, VkExecutionGraphPipelineScratchSizeAMDX* pSizeInfo) {
  Result result = vkGetExecutionGraphPipelineScratchSizeAMDX(device, executionGraph, pSizeInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getExecutionGraphPipelineNodeIndexAMDX (VkDevice device, VkPipeline executionGraph, VkPipelineShaderStageNodeCreateInfoAMDX* pNodeInfo, uint* pNodeIndex) {
  Result result = vkGetExecutionGraphPipelineNodeIndexAMDX(device, executionGraph, pNodeInfo, pNodeIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createExecutionGraphPipelinesAMDX (VkDevice device, VkPipelineCache pipelineCache, uint createInfoCount, VkExecutionGraphPipelineCreateInfoAMDX* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateExecutionGraphPipelinesAMDX(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! setLatencySleepModeNV (VkDevice device, VkSwapchainKHR swapchain, VkLatencySleepModeInfoNV* pSleepModeInfo) {
  Result result = vkSetLatencySleepModeNV(device, swapchain, pSleepModeInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! latencySleepNV (VkDevice device, VkSwapchainKHR swapchain, VkLatencySleepInfoNV* pSleepInfo) {
  Result result = vkLatencySleepNV(device, swapchain, pSleepInfo);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
