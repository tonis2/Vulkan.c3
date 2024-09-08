module vk;
const VK_MAX_PHYSICAL_DEVICE_NAME_SIZE = 256;
const VK_UUID_SIZE = 16;
const VK_LUID_SIZE = 8;
const VK_MAX_EXTENSION_NAME_SIZE = 256;
const VK_MAX_DESCRIPTION_SIZE = 256;
const VK_MAX_MEMORY_TYPES = 32;
const VK_MAX_MEMORY_HEAPS = 16;
const VK_LOD_CLAMP_NONE = 1000.0F;
const VK_REMAINING_MIP_LEVELS = (~0U);
const VK_REMAINING_ARRAY_LAYERS = (~0U);
const VK_REMAINING_3D_SLICES_EXT = (~0U);
const VK_WHOLE_SIZE = (~0ULL);
const VK_ATTACHMENT_UNUSED = (~0U);
const VK_TRUE = 1;
const VK_FALSE = 0;
const VK_QUEUE_FAMILY_IGNORED = (~0U);
const VK_QUEUE_FAMILY_EXTERNAL = (~1U);
const VK_QUEUE_FAMILY_FOREIGN_EXT = (~2U);
const VK_SUBPASS_EXTERNAL = (~0U);
const VK_MAX_DEVICE_GROUP_SIZE = 32;
const VK_MAX_DRIVER_NAME_SIZE = 256;
const VK_MAX_DRIVER_INFO_SIZE = 256;
const VK_SHADER_UNUSED_KHR = (~0U);
const VK_MAX_GLOBAL_PRIORITY_SIZE_KHR = 16;
const VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT = 32;
const VK_MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR = 7;
const VK_SHADER_INDEX_UNUSED_AMDX = (~0U);

distinct VkInstance = void*;
distinct VkPhysicalDevice = void*;
distinct VkDevice = void*;
distinct VkQueue = void*;
distinct VkCommandBuffer = void*;
distinct VkDeviceMemory = void*;
distinct VkCommandPool = void*;
distinct VkBuffer = void*;
distinct VkBufferView = void*;
distinct VkImage = void*;
distinct VkImageView = void*;
distinct VkShaderModule = void*;
distinct VkPipeline = void*;
distinct VkPipelineLayout = void*;
distinct VkSampler = void*;
distinct VkDescriptorSet = void*;
distinct VkDescriptorSetLayout = void*;
distinct VkDescriptorPool = void*;
distinct VkFence = void*;
distinct VkSemaphore = void*;
distinct VkEvent = void*;
distinct VkQueryPool = void*;
distinct VkFramebuffer = void*;
distinct VkRenderPass = void*;
distinct VkPipelineCache = void*;
distinct VkIndirectCommandsLayoutNV = void*;
distinct VkDescriptorUpdateTemplate = void*;
distinct VkSamplerYcbcrConversion = void*;
distinct VkValidationCacheEXT = void*;
distinct VkAccelerationStructureKHR = void*;
distinct VkAccelerationStructureNV = void*;
distinct VkPerformanceConfigurationINTEL = void*;
distinct VkBufferCollectionFUCHSIA = void*;
distinct VkDeferredOperationKHR = void*;
distinct VkPrivateDataSlot = void*;
distinct VkCuModuleNVX = void*;
distinct VkCuFunctionNVX = void*;
distinct VkOpticalFlowSessionNV = void*;
distinct VkMicromapEXT = void*;
distinct VkShaderEXT = void*;
distinct VkDisplayKHR = void*;
distinct VkDisplayModeKHR = void*;
distinct VkSurfaceKHR = void*;
distinct VkSwapchainKHR = void*;
distinct VkDebugReportCallbackEXT = void*;
distinct VkDebugUtilsMessengerEXT = void*;
distinct VkVideoSessionKHR = void*;
distinct VkVideoSessionParametersKHR = void*;
distinct VkSemaphoreSciSyncPoolNV = void*;
distinct VkCudaModuleNV = void*;
distinct VkCudaFunctionNV = void*;

def VkSampleMask = uint32_t;
def VkBool32 = uint32_t;
def VkFlags = uint32_t;
def VkFlags64 = uint64_t;
def VkDeviceSize = uint64_t;
def VkDeviceAddress = uint64_t;
def VkRemoteAddressNV = void;

distinct VkImageLayout = inline uint;
const VkImageLayout VK_IMAGE_LAYOUT_UNDEFINED = 0;
const VkImageLayout VK_IMAGE_LAYOUT_GENERAL = 1;
const VkImageLayout VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2;
const VkImageLayout VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3;
const VkImageLayout VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4;
const VkImageLayout VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5;
const VkImageLayout VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6;
const VkImageLayout VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7;
const VkImageLayout VK_IMAGE_LAYOUT_PREINITIALIZED = 8;

distinct VkAttachmentLoadOp = inline uint;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_LOAD = 0;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_CLEAR = 1;
const VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_DONT_CARE = 2;

distinct VkAttachmentStoreOp = inline uint;
const VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_STORE = 0;
const VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_DONT_CARE = 1;

distinct VkImageType = inline uint;
const VkImageType VK_IMAGE_TYPE_1D = 0;
const VkImageType VK_IMAGE_TYPE_2D = 1;
const VkImageType VK_IMAGE_TYPE_3D = 2;

distinct VkImageTiling = inline uint;
const VkImageTiling VK_IMAGE_TILING_OPTIMAL = 0;
const VkImageTiling VK_IMAGE_TILING_LINEAR = 1;

distinct VkImageViewType = inline uint;
const VkImageViewType VK_IMAGE_VIEW_TYPE_1D = 0;
const VkImageViewType VK_IMAGE_VIEW_TYPE_2D = 1;
const VkImageViewType VK_IMAGE_VIEW_TYPE_3D = 2;
const VkImageViewType VK_IMAGE_VIEW_TYPE_CUBE = 3;
const VkImageViewType VK_IMAGE_VIEW_TYPE_1D_ARRAY = 4;
const VkImageViewType VK_IMAGE_VIEW_TYPE_2D_ARRAY = 5;
const VkImageViewType VK_IMAGE_VIEW_TYPE_CUBE_ARRAY = 6;

distinct VkCommandBufferLevel = inline uint;
const VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_PRIMARY = 0;
const VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_SECONDARY = 1;

distinct VkComponentSwizzle = inline uint;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY = 0;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_ZERO = 1;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_ONE = 2;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_R = 3;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_G = 4;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_B = 5;
const VkComponentSwizzle VK_COMPONENT_SWIZZLE_A = 6;

distinct VkDescriptorType = inline uint;
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

distinct VkQueryType = inline uint;
const VkQueryType VK_QUERY_TYPE_OCCLUSION = 0;
const VkQueryType VK_QUERY_TYPE_PIPELINE_STATISTICS = 1;
const VkQueryType VK_QUERY_TYPE_TIMESTAMP = 2;

distinct VkBorderColor = inline uint;
const VkBorderColor VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0;
const VkBorderColor VK_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1;
const VkBorderColor VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2;
const VkBorderColor VK_BORDER_COLOR_INT_OPAQUE_BLACK = 3;
const VkBorderColor VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4;
const VkBorderColor VK_BORDER_COLOR_INT_OPAQUE_WHITE = 5;

distinct VkPipelineBindPoint = inline uint;
const VkPipelineBindPoint VK_PIPELINE_BIND_POINT_GRAPHICS = 0;
const VkPipelineBindPoint VK_PIPELINE_BIND_POINT_COMPUTE = 1;

distinct VkPipelineCacheHeaderVersion = inline uint;
const VkPipelineCacheHeaderVersion VK_PIPELINE_CACHE_HEADER_VERSION_ONE = 1;

distinct VkPrimitiveTopology = inline uint;
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

distinct VkSharingMode = inline uint;
const VkSharingMode VK_SHARING_MODE_EXCLUSIVE = 0;
const VkSharingMode VK_SHARING_MODE_CONCURRENT = 1;

distinct VkIndexType = inline uint;
const VkIndexType VK_INDEX_TYPE_UINT16 = 0;
const VkIndexType VK_INDEX_TYPE_UINT32 = 1;

distinct VkFilter = inline uint;
const VkFilter VK_FILTER_NEAREST = 0;
const VkFilter VK_FILTER_LINEAR = 1;

distinct VkSamplerMipmapMode = inline uint;
const VkSamplerMipmapMode VK_SAMPLER_MIPMAP_MODE_NEAREST = 0;
const VkSamplerMipmapMode VK_SAMPLER_MIPMAP_MODE_LINEAR = 1;

distinct VkSamplerAddressMode = inline uint;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_REPEAT = 0;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2;
const VkSamplerAddressMode VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3;

distinct VkCompareOp = inline uint;
const VkCompareOp VK_COMPARE_OP_NEVER = 0;
const VkCompareOp VK_COMPARE_OP_LESS = 1;
const VkCompareOp VK_COMPARE_OP_EQUAL = 2;
const VkCompareOp VK_COMPARE_OP_LESS_OR_EQUAL = 3;
const VkCompareOp VK_COMPARE_OP_GREATER = 4;
const VkCompareOp VK_COMPARE_OP_NOT_EQUAL = 5;
const VkCompareOp VK_COMPARE_OP_GREATER_OR_EQUAL = 6;
const VkCompareOp VK_COMPARE_OP_ALWAYS = 7;

distinct VkPolygonMode = inline uint;
const VkPolygonMode VK_POLYGON_MODE_FILL = 0;
const VkPolygonMode VK_POLYGON_MODE_LINE = 1;
const VkPolygonMode VK_POLYGON_MODE_POINT = 2;

distinct VkFrontFace = inline uint;
const VkFrontFace VK_FRONT_FACE_COUNTER_CLOCKWISE = 0;
const VkFrontFace VK_FRONT_FACE_CLOCKWISE = 1;

distinct VkBlendFactor = inline uint;
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

distinct VkBlendOp = inline uint;
const VkBlendOp VK_BLEND_OP_ADD = 0;
const VkBlendOp VK_BLEND_OP_SUBTRACT = 1;
const VkBlendOp VK_BLEND_OP_REVERSE_SUBTRACT = 2;
const VkBlendOp VK_BLEND_OP_MIN = 3;
const VkBlendOp VK_BLEND_OP_MAX = 4;

distinct VkStencilOp = inline uint;
const VkStencilOp VK_STENCIL_OP_KEEP = 0;
const VkStencilOp VK_STENCIL_OP_ZERO = 1;
const VkStencilOp VK_STENCIL_OP_REPLACE = 2;
const VkStencilOp VK_STENCIL_OP_INCREMENT_AND_CLAMP = 3;
const VkStencilOp VK_STENCIL_OP_DECREMENT_AND_CLAMP = 4;
const VkStencilOp VK_STENCIL_OP_INVERT = 5;
const VkStencilOp VK_STENCIL_OP_INCREMENT_AND_WRAP = 6;
const VkStencilOp VK_STENCIL_OP_DECREMENT_AND_WRAP = 7;

distinct VkLogicOp = inline uint;
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

distinct VkInternalAllocationType = inline uint;
const VkInternalAllocationType VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0;

distinct VkSystemAllocationScope = inline uint;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_COMMAND = 0;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_OBJECT = 1;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_CACHE = 2;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_DEVICE = 3;
const VkSystemAllocationScope VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4;

distinct VkPhysicalDeviceType = inline uint;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_OTHER = 0;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3;
const VkPhysicalDeviceType VK_PHYSICAL_DEVICE_TYPE_CPU = 4;

distinct VkVertexInputRate = inline uint;
const VkVertexInputRate VK_VERTEX_INPUT_RATE_VERTEX = 0;
const VkVertexInputRate VK_VERTEX_INPUT_RATE_INSTANCE = 1;

distinct VkFormat = inline uint;
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
const VkFormat VK_FORMAT_ASTC_4x4_UNORM_BLOCK = 157;
const VkFormat VK_FORMAT_ASTC_4x4_SRGB_BLOCK = 158;
const VkFormat VK_FORMAT_ASTC_5x4_UNORM_BLOCK = 159;
const VkFormat VK_FORMAT_ASTC_5x4_SRGB_BLOCK = 160;
const VkFormat VK_FORMAT_ASTC_5x5_UNORM_BLOCK = 161;
const VkFormat VK_FORMAT_ASTC_5x5_SRGB_BLOCK = 162;
const VkFormat VK_FORMAT_ASTC_6x5_UNORM_BLOCK = 163;
const VkFormat VK_FORMAT_ASTC_6x5_SRGB_BLOCK = 164;
const VkFormat VK_FORMAT_ASTC_6x6_UNORM_BLOCK = 165;
const VkFormat VK_FORMAT_ASTC_6x6_SRGB_BLOCK = 166;
const VkFormat VK_FORMAT_ASTC_8x5_UNORM_BLOCK = 167;
const VkFormat VK_FORMAT_ASTC_8x5_SRGB_BLOCK = 168;
const VkFormat VK_FORMAT_ASTC_8x6_UNORM_BLOCK = 169;
const VkFormat VK_FORMAT_ASTC_8x6_SRGB_BLOCK = 170;
const VkFormat VK_FORMAT_ASTC_8x8_UNORM_BLOCK = 171;
const VkFormat VK_FORMAT_ASTC_8x8_SRGB_BLOCK = 172;
const VkFormat VK_FORMAT_ASTC_10x5_UNORM_BLOCK = 173;
const VkFormat VK_FORMAT_ASTC_10x5_SRGB_BLOCK = 174;
const VkFormat VK_FORMAT_ASTC_10x6_UNORM_BLOCK = 175;
const VkFormat VK_FORMAT_ASTC_10x6_SRGB_BLOCK = 176;
const VkFormat VK_FORMAT_ASTC_10x8_UNORM_BLOCK = 177;
const VkFormat VK_FORMAT_ASTC_10x8_SRGB_BLOCK = 178;
const VkFormat VK_FORMAT_ASTC_10x10_UNORM_BLOCK = 179;
const VkFormat VK_FORMAT_ASTC_10x10_SRGB_BLOCK = 180;
const VkFormat VK_FORMAT_ASTC_12x10_UNORM_BLOCK = 181;
const VkFormat VK_FORMAT_ASTC_12x10_SRGB_BLOCK = 182;
const VkFormat VK_FORMAT_ASTC_12x12_UNORM_BLOCK = 183;
const VkFormat VK_FORMAT_ASTC_12x12_SRGB_BLOCK = 184;

distinct VkStructureType = inline uint;
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

distinct VkSubpassContents = inline uint;
const VkSubpassContents VK_SUBPASS_CONTENTS_INLINE = 0;
const VkSubpassContents VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;

distinct VkResult = inline int;
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

distinct VkDynamicState = inline uint;
const VkDynamicState VK_DYNAMIC_STATE_VIEWPORT = 0;
const VkDynamicState VK_DYNAMIC_STATE_SCISSOR = 1;
const VkDynamicState VK_DYNAMIC_STATE_LINE_WIDTH = 2;
const VkDynamicState VK_DYNAMIC_STATE_DEPTH_BIAS = 3;
const VkDynamicState VK_DYNAMIC_STATE_BLEND_CONSTANTS = 4;
const VkDynamicState VK_DYNAMIC_STATE_DEPTH_BOUNDS = 5;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_WRITE_MASK = 7;
const VkDynamicState VK_DYNAMIC_STATE_STENCIL_REFERENCE = 8;

distinct VkDescriptorUpdateTemplateType = inline uint;
const VkDescriptorUpdateTemplateType VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0;

distinct VkObjectType = inline uint;
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

distinct VkRayTracingInvocationReorderModeNV = inline uint;
const VkRayTracingInvocationReorderModeNV VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV = 0;
const VkRayTracingInvocationReorderModeNV VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV = 1;

distinct VkDirectDriverLoadingModeLUNARG = inline uint;
const VkDirectDriverLoadingModeLUNARG VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG = 0;
const VkDirectDriverLoadingModeLUNARG VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG = 1;

distinct VkAntiLagModeAMD = inline uint;
const VkAntiLagModeAMD VK_ANTI_LAG_MODE_DRIVER_CONTROL_AMD = 0;
const VkAntiLagModeAMD VK_ANTI_LAG_MODE_ON_AMD = 1;
const VkAntiLagModeAMD VK_ANTI_LAG_MODE_OFF_AMD = 2;

distinct VkAntiLagStageAMD = inline uint;
const VkAntiLagStageAMD VK_ANTI_LAG_STAGE_INPUT_AMD = 0;
const VkAntiLagStageAMD VK_ANTI_LAG_STAGE_PRESENT_AMD = 1;

distinct VkQueueFlagBits = inline uint;
const VkQueueFlagBits VK_QUEUE_GRAPHICS_BIT = 0x00000001;
const VkQueueFlagBits VK_QUEUE_COMPUTE_BIT = 0x00000002;
const VkQueueFlagBits VK_QUEUE_TRANSFER_BIT = 0x00000004;
const VkQueueFlagBits VK_QUEUE_SPARSE_BINDING_BIT = 0x00000008;

distinct VkCullModeFlagBits = inline uint;
const VkCullModeFlagBits VK_CULL_MODE_NONE = 0;
const VkCullModeFlagBits VK_CULL_MODE_FRONT_BIT = 0x00000001;
const VkCullModeFlagBits VK_CULL_MODE_BACK_BIT = 0x00000002;
const VkCullModeFlagBits VK_CULL_MODE_FRONT_AND_BACK = 0x00000003;

distinct VkMemoryPropertyFlagBits = inline uint;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 0x00000001;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT = 0x00000002;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_HOST_COHERENT_BIT = 0x00000004;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_HOST_CACHED_BIT = 0x00000008;
const VkMemoryPropertyFlagBits VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 0x00000010;

distinct VkMemoryHeapFlagBits = inline uint;
const VkMemoryHeapFlagBits VK_MEMORY_HEAP_DEVICE_LOCAL_BIT = 0x00000001;

distinct VkAccessFlagBits = inline uint;
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

distinct VkBufferUsageFlagBits = inline uint;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_TRANSFER_DST_BIT = 0x00000002;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000004;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 0x00000008;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT = 0x00000010;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_STORAGE_BUFFER_BIT = 0x00000020;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_INDEX_BUFFER_BIT = 0x00000040;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_VERTEX_BUFFER_BIT = 0x00000080;
const VkBufferUsageFlagBits VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT = 0x00000100;

distinct VkBufferUsageFlagBits2KHR = inline uint;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_TRANSFER_SRC_BIT_KHR = 0x00000001;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_TRANSFER_DST_BIT_KHR = 0x00000002;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR = 0x00000004;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_STORAGE_TEXEL_BUFFER_BIT_KHR = 0x00000008;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_UNIFORM_BUFFER_BIT_KHR = 0x00000010;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_STORAGE_BUFFER_BIT_KHR = 0x00000020;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_INDEX_BUFFER_BIT_KHR = 0x00000040;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_VERTEX_BUFFER_BIT_KHR = 0x00000080;
const VkBufferUsageFlagBits2KHR VK_BUFFER_USAGE_2_INDIRECT_BUFFER_BIT_KHR = 0x00000100;

distinct VkBufferCreateFlagBits = inline uint;
const VkBufferCreateFlagBits VK_BUFFER_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const VkBufferCreateFlagBits VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const VkBufferCreateFlagBits VK_BUFFER_CREATE_SPARSE_ALIASED_BIT = 0x00000004;

distinct VkShaderStageFlagBits = inline uint;
const VkShaderStageFlagBits VK_SHADER_STAGE_VERTEX_BIT = 0x00000001;
const VkShaderStageFlagBits VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT = 0x00000002;
const VkShaderStageFlagBits VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 0x00000004;
const VkShaderStageFlagBits VK_SHADER_STAGE_GEOMETRY_BIT = 0x00000008;
const VkShaderStageFlagBits VK_SHADER_STAGE_FRAGMENT_BIT = 0x00000010;
const VkShaderStageFlagBits VK_SHADER_STAGE_COMPUTE_BIT = 0x00000020;
const VkShaderStageFlagBits VK_SHADER_STAGE_ALL_GRAPHICS = 0x0000001F;
const VkShaderStageFlagBits VK_SHADER_STAGE_ALL = 0x7FFFFFFF;

distinct VkImageUsageFlagBits = inline uint;
const VkImageUsageFlagBits VK_IMAGE_USAGE_TRANSFER_SRC_BIT = 0x00000001;
const VkImageUsageFlagBits VK_IMAGE_USAGE_TRANSFER_DST_BIT = 0x00000002;
const VkImageUsageFlagBits VK_IMAGE_USAGE_SAMPLED_BIT = 0x00000004;
const VkImageUsageFlagBits VK_IMAGE_USAGE_STORAGE_BIT = 0x00000008;
const VkImageUsageFlagBits VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 0x00000010;
const VkImageUsageFlagBits VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000020;
const VkImageUsageFlagBits VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 0x00000040;
const VkImageUsageFlagBits VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 0x00000080;

distinct VkImageCreateFlagBits = inline uint;
const VkImageCreateFlagBits VK_IMAGE_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const VkImageCreateFlagBits VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const VkImageCreateFlagBits VK_IMAGE_CREATE_SPARSE_ALIASED_BIT = 0x00000004;
const VkImageCreateFlagBits VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT = 0x00000008;
const VkImageCreateFlagBits VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 0x00000010;

distinct VkPipelineCreateFlagBits = inline uint;
const VkPipelineCreateFlagBits VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 0x00000001;
const VkPipelineCreateFlagBits VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 0x00000002;
const VkPipelineCreateFlagBits VK_PIPELINE_CREATE_DERIVATIVE_BIT = 0x00000004;

distinct VkPipelineCreateFlagBits2KHR = inline uint;
const VkPipelineCreateFlagBits2KHR VK_PIPELINE_CREATE_2_DISABLE_OPTIMIZATION_BIT_KHR = 0x00000001;
const VkPipelineCreateFlagBits2KHR VK_PIPELINE_CREATE_2_ALLOW_DERIVATIVES_BIT_KHR = 0x00000002;
const VkPipelineCreateFlagBits2KHR VK_PIPELINE_CREATE_2_DERIVATIVE_BIT_KHR = 0x00000004;

distinct VkColorComponentFlagBits = inline uint;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_R_BIT = 0x00000001;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_G_BIT = 0x00000002;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_B_BIT = 0x00000004;
const VkColorComponentFlagBits VK_COLOR_COMPONENT_A_BIT = 0x00000008;

distinct VkFenceCreateFlagBits = inline uint;
const VkFenceCreateFlagBits VK_FENCE_CREATE_SIGNALED_BIT = 0x00000001;

distinct VkFormatFeatureFlagBits = inline uint;
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

distinct VkQueryControlFlagBits = inline uint;
const VkQueryControlFlagBits VK_QUERY_CONTROL_PRECISE_BIT = 0x00000001;

distinct VkQueryResultFlagBits = inline uint;
const VkQueryResultFlagBits VK_QUERY_RESULT_64_BIT = 0x00000001;
const VkQueryResultFlagBits VK_QUERY_RESULT_WAIT_BIT = 0x00000002;
const VkQueryResultFlagBits VK_QUERY_RESULT_WITH_AVAILABILITY_BIT = 0x00000004;
const VkQueryResultFlagBits VK_QUERY_RESULT_PARTIAL_BIT = 0x00000008;

distinct VkCommandBufferUsageFlagBits = inline uint;
const VkCommandBufferUsageFlagBits VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 0x00000001;
const VkCommandBufferUsageFlagBits VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 0x00000002;
const VkCommandBufferUsageFlagBits VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 0x00000004;

distinct VkQueryPipelineStatisticFlagBits = inline uint;
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

distinct VkImageAspectFlagBits = inline uint;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_COLOR_BIT = 0x00000001;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_DEPTH_BIT = 0x00000002;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_STENCIL_BIT = 0x00000004;
const VkImageAspectFlagBits VK_IMAGE_ASPECT_METADATA_BIT = 0x00000008;

distinct VkSparseImageFormatFlagBits = inline uint;
const VkSparseImageFormatFlagBits VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 0x00000001;
const VkSparseImageFormatFlagBits VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 0x00000002;
const VkSparseImageFormatFlagBits VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 0x00000004;

distinct VkSparseMemoryBindFlagBits = inline uint;
const VkSparseMemoryBindFlagBits VK_SPARSE_MEMORY_BIND_METADATA_BIT = 0x00000001;

distinct VkPipelineStageFlagBits = inline uint;
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

distinct VkCommandPoolCreateFlagBits = inline uint;
const VkCommandPoolCreateFlagBits VK_COMMAND_POOL_CREATE_TRANSIENT_BIT = 0x00000001;
const VkCommandPoolCreateFlagBits VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 0x00000002;

distinct VkCommandPoolResetFlagBits = inline uint;
const VkCommandPoolResetFlagBits VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

distinct VkCommandBufferResetFlagBits = inline uint;
const VkCommandBufferResetFlagBits VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 0x00000001;

distinct VkSampleCountFlagBits = inline uint;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_1_BIT = 0x00000001;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_2_BIT = 0x00000002;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_4_BIT = 0x00000004;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_8_BIT = 0x00000008;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_16_BIT = 0x00000010;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_32_BIT = 0x00000020;
const VkSampleCountFlagBits VK_SAMPLE_COUNT_64_BIT = 0x00000040;

distinct VkAttachmentDescriptionFlagBits = inline uint;
const VkAttachmentDescriptionFlagBits VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 0x00000001;

distinct VkStencilFaceFlagBits = inline uint;
const VkStencilFaceFlagBits VK_STENCIL_FACE_FRONT_BIT = 0x00000001;
const VkStencilFaceFlagBits VK_STENCIL_FACE_BACK_BIT = 0x00000002;
const VkStencilFaceFlagBits VK_STENCIL_FACE_FRONT_AND_BACK = 0x00000003;

distinct VkDescriptorPoolCreateFlagBits = inline uint;
const VkDescriptorPoolCreateFlagBits VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 0x00000001;

distinct VkDependencyFlagBits = inline uint;
const VkDependencyFlagBits VK_DEPENDENCY_BY_REGION_BIT = 0x00000001;

distinct VkSemaphoreType = inline uint;
const VkSemaphoreType VK_SEMAPHORE_TYPE_BINARY = 0;
const VkSemaphoreType VK_SEMAPHORE_TYPE_TIMELINE = 1;

distinct VkSemaphoreWaitFlagBits = inline uint;
const VkSemaphoreWaitFlagBits VK_SEMAPHORE_WAIT_ANY_BIT = 0x00000001;

distinct VkPresentModeKHR = inline uint;
const VkPresentModeKHR VK_PRESENT_MODE_IMMEDIATE_KHR = 0;
const VkPresentModeKHR VK_PRESENT_MODE_MAILBOX_KHR = 1;
const VkPresentModeKHR VK_PRESENT_MODE_FIFO_KHR = 2;
const VkPresentModeKHR VK_PRESENT_MODE_FIFO_RELAXED_KHR = 3;

distinct VkColorSpaceKHR = inline uint;
const VkColorSpaceKHR VK_COLOR_SPACE_SRGB_NONLINEAR_KHR = 0;

distinct VkDisplayPlaneAlphaFlagBitsKHR = inline uint;
const VkDisplayPlaneAlphaFlagBitsKHR VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const VkDisplayPlaneAlphaFlagBitsKHR VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 0x00000002;
const VkDisplayPlaneAlphaFlagBitsKHR VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 0x00000004;
const VkDisplayPlaneAlphaFlagBitsKHR VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 0x00000008;

distinct VkCompositeAlphaFlagBitsKHR = inline uint;
const VkCompositeAlphaFlagBitsKHR VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const VkCompositeAlphaFlagBitsKHR VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 0x00000002;
const VkCompositeAlphaFlagBitsKHR VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 0x00000004;
const VkCompositeAlphaFlagBitsKHR VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR = 0x00000008;

distinct VkSurfaceTransformFlagBitsKHR = inline uint;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 0x00000001;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 0x00000002;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 0x00000004;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 0x00000008;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 0x00000010;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 0x00000020;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 0x00000040;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 0x00000080;
const VkSurfaceTransformFlagBitsKHR VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR = 0x00000100;

distinct VkSwapchainImageUsageFlagBitsANDROID = inline uint;
const VkSwapchainImageUsageFlagBitsANDROID VK_SWAPCHAIN_IMAGE_USAGE_SHARED_BIT_ANDROID = 0x00000001;

distinct VkTimeDomainKHR = inline uint;
const VkTimeDomainKHR VK_TIME_DOMAIN_DEVICE_KHR = 0;
const VkTimeDomainKHR VK_TIME_DOMAIN_CLOCK_MONOTONIC_KHR = 1;
const VkTimeDomainKHR VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_KHR = 2;
const VkTimeDomainKHR VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_KHR = 3;

distinct VkDebugReportFlagBitsEXT = inline uint;
const VkDebugReportFlagBitsEXT VK_DEBUG_REPORT_INFORMATION_BIT_EXT = 0x00000001;
const VkDebugReportFlagBitsEXT VK_DEBUG_REPORT_WARNING_BIT_EXT = 0x00000002;
const VkDebugReportFlagBitsEXT VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 0x00000004;
const VkDebugReportFlagBitsEXT VK_DEBUG_REPORT_ERROR_BIT_EXT = 0x00000008;
const VkDebugReportFlagBitsEXT VK_DEBUG_REPORT_DEBUG_BIT_EXT = 0x00000010;

distinct VkDebugReportObjectTypeEXT = inline uint;
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
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT = 29;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT = 30;
const VkDebugReportObjectTypeEXT VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT = 33;

distinct VkDeviceMemoryReportEventTypeEXT = inline uint;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT = 0;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT = 1;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT = 2;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT = 3;
const VkDeviceMemoryReportEventTypeEXT VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT = 4;

distinct VkRasterizationOrderAMD = inline uint;
const VkRasterizationOrderAMD VK_RASTERIZATION_ORDER_STRICT_AMD = 0;
const VkRasterizationOrderAMD VK_RASTERIZATION_ORDER_RELAXED_AMD = 1;

distinct VkExternalMemoryHandleTypeFlagBitsNV = inline uint;
const VkExternalMemoryHandleTypeFlagBitsNV VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV = 0x00000001;
const VkExternalMemoryHandleTypeFlagBitsNV VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV = 0x00000002;
const VkExternalMemoryHandleTypeFlagBitsNV VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV = 0x00000004;
const VkExternalMemoryHandleTypeFlagBitsNV VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV = 0x00000008;

distinct VkExternalMemoryFeatureFlagBitsNV = inline uint;
const VkExternalMemoryFeatureFlagBitsNV VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV = 0x00000001;
const VkExternalMemoryFeatureFlagBitsNV VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV = 0x00000002;
const VkExternalMemoryFeatureFlagBitsNV VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV = 0x00000004;

distinct VkValidationCheckEXT = inline uint;
const VkValidationCheckEXT VK_VALIDATION_CHECK_ALL_EXT = 0;
const VkValidationCheckEXT VK_VALIDATION_CHECK_SHADERS_EXT = 1;

distinct VkValidationFeatureEnableEXT = inline uint;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT = 0;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT = 1;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT = 2;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT = 3;
const VkValidationFeatureEnableEXT VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT = 4;

distinct VkValidationFeatureDisableEXT = inline uint;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_ALL_EXT = 0;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT = 1;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT = 2;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT = 3;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT = 4;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT = 5;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT = 6;
const VkValidationFeatureDisableEXT VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT = 7;

distinct VkLayerSettingTypeEXT = inline uint;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_BOOL32_EXT = 0;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_INT32_EXT = 1;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_INT64_EXT = 2;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_UINT32_EXT = 3;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_UINT64_EXT = 4;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_FLOAT32_EXT = 5;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_FLOAT64_EXT = 6;
const VkLayerSettingTypeEXT VK_LAYER_SETTING_TYPE_STRING_EXT = 7;

distinct VkSubgroupFeatureFlagBits = inline uint;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_BASIC_BIT = 0x00000001;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_VOTE_BIT = 0x00000002;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_ARITHMETIC_BIT = 0x00000004;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_BALLOT_BIT = 0x00000008;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_SHUFFLE_BIT = 0x00000010;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT = 0x00000020;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_CLUSTERED_BIT = 0x00000040;
const VkSubgroupFeatureFlagBits VK_SUBGROUP_FEATURE_QUAD_BIT = 0x00000080;

distinct VkIndirectCommandsLayoutUsageFlagBitsNV = inline uint;
const VkIndirectCommandsLayoutUsageFlagBitsNV VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV = 0x00000001;
const VkIndirectCommandsLayoutUsageFlagBitsNV VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV = 0x00000002;
const VkIndirectCommandsLayoutUsageFlagBitsNV VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV = 0x00000004;

distinct VkIndirectStateFlagBitsNV = inline uint;
const VkIndirectStateFlagBitsNV VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV = 0x00000001;

distinct VkIndirectCommandsTokenTypeNV = inline uint;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV = 0;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV = 1;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV = 2;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV = 3;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV = 4;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV = 5;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV = 6;
const VkIndirectCommandsTokenTypeNV VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV = 7;

distinct VkExternalMemoryHandleTypeFlagBits = inline uint;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT = 0x00000008;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT = 0x00000010;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT = 0x00000020;
const VkExternalMemoryHandleTypeFlagBits VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT = 0x00000040;

distinct VkExternalMemoryFeatureFlagBits = inline uint;
const VkExternalMemoryFeatureFlagBits VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT = 0x00000001;
const VkExternalMemoryFeatureFlagBits VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT = 0x00000002;
const VkExternalMemoryFeatureFlagBits VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT = 0x00000004;

distinct VkExternalSemaphoreHandleTypeFlagBits = inline uint;
const VkExternalSemaphoreHandleTypeFlagBits VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const VkExternalSemaphoreHandleTypeFlagBits VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const VkExternalSemaphoreHandleTypeFlagBits VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const VkExternalSemaphoreHandleTypeFlagBits VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT = 0x00000008;
const VkExternalSemaphoreHandleTypeFlagBits VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT = 0x00000010;

distinct VkExternalSemaphoreFeatureFlagBits = inline uint;
const VkExternalSemaphoreFeatureFlagBits VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT = 0x00000001;
const VkExternalSemaphoreFeatureFlagBits VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT = 0x00000002;

distinct VkSemaphoreImportFlagBits = inline uint;
const VkSemaphoreImportFlagBits VK_SEMAPHORE_IMPORT_TEMPORARY_BIT = 0x00000001;

distinct VkExternalFenceHandleTypeFlagBits = inline uint;
const VkExternalFenceHandleTypeFlagBits VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT = 0x00000001;
const VkExternalFenceHandleTypeFlagBits VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 0x00000002;
const VkExternalFenceHandleTypeFlagBits VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 0x00000004;
const VkExternalFenceHandleTypeFlagBits VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT = 0x00000008;

distinct VkExternalFenceFeatureFlagBits = inline uint;
const VkExternalFenceFeatureFlagBits VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT = 0x00000001;
const VkExternalFenceFeatureFlagBits VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT = 0x00000002;

distinct VkFenceImportFlagBits = inline uint;
const VkFenceImportFlagBits VK_FENCE_IMPORT_TEMPORARY_BIT = 0x00000001;

distinct VkSurfaceCounterFlagBitsEXT = inline uint;
const VkSurfaceCounterFlagBitsEXT VK_SURFACE_COUNTER_VBLANK_BIT_EXT = 0x00000001;

distinct VkDisplayPowerStateEXT = inline uint;
const VkDisplayPowerStateEXT VK_DISPLAY_POWER_STATE_OFF_EXT = 0;
const VkDisplayPowerStateEXT VK_DISPLAY_POWER_STATE_SUSPEND_EXT = 1;
const VkDisplayPowerStateEXT VK_DISPLAY_POWER_STATE_ON_EXT = 2;

distinct VkDeviceEventTypeEXT = inline uint;
const VkDeviceEventTypeEXT VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0;

distinct VkDisplayEventTypeEXT = inline uint;
const VkDisplayEventTypeEXT VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0;

distinct VkPeerMemoryFeatureFlagBits = inline uint;
const VkPeerMemoryFeatureFlagBits VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT = 0x00000001;
const VkPeerMemoryFeatureFlagBits VK_PEER_MEMORY_FEATURE_COPY_DST_BIT = 0x00000002;
const VkPeerMemoryFeatureFlagBits VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT = 0x00000004;
const VkPeerMemoryFeatureFlagBits VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT = 0x00000008;

distinct VkMemoryAllocateFlagBits = inline uint;
const VkMemoryAllocateFlagBits VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT = 0x00000001;

distinct VkDeviceGroupPresentModeFlagBitsKHR = inline uint;
const VkDeviceGroupPresentModeFlagBitsKHR VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR = 0x00000001;
const VkDeviceGroupPresentModeFlagBitsKHR VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR = 0x00000002;
const VkDeviceGroupPresentModeFlagBitsKHR VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR = 0x00000004;
const VkDeviceGroupPresentModeFlagBitsKHR VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR = 0x00000008;

distinct VkViewportCoordinateSwizzleNV = inline uint;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV = 0;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV = 1;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV = 2;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV = 3;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV = 4;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV = 5;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV = 6;
const VkViewportCoordinateSwizzleNV VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV = 7;

distinct VkDiscardRectangleModeEXT = inline uint;
const VkDiscardRectangleModeEXT VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT = 0;
const VkDiscardRectangleModeEXT VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT = 1;

distinct VkPointClippingBehavior = inline uint;
const VkPointClippingBehavior VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0;
const VkPointClippingBehavior VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1;

distinct VkSamplerReductionMode = inline uint;
const VkSamplerReductionMode VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0;
const VkSamplerReductionMode VK_SAMPLER_REDUCTION_MODE_MIN = 1;
const VkSamplerReductionMode VK_SAMPLER_REDUCTION_MODE_MAX = 2;

distinct VkTessellationDomainOrigin = inline uint;
const VkTessellationDomainOrigin VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0;
const VkTessellationDomainOrigin VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1;

distinct VkSamplerYcbcrModelConversion = inline uint;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3;
const VkSamplerYcbcrModelConversion VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4;

distinct VkSamplerYcbcrRange = inline uint;
const VkSamplerYcbcrRange VK_SAMPLER_YCBCR_RANGE_ITU_FULL = 0;
const VkSamplerYcbcrRange VK_SAMPLER_YCBCR_RANGE_ITU_NARROW = 1;

distinct VkChromaLocation = inline uint;
const VkChromaLocation VK_CHROMA_LOCATION_COSITED_EVEN = 0;
const VkChromaLocation VK_CHROMA_LOCATION_MIDPOINT = 1;

distinct VkBlendOverlapEXT = inline uint;
const VkBlendOverlapEXT VK_BLEND_OVERLAP_UNCORRELATED_EXT = 0;
const VkBlendOverlapEXT VK_BLEND_OVERLAP_DISJOINT_EXT = 1;
const VkBlendOverlapEXT VK_BLEND_OVERLAP_CONJOINT_EXT = 2;

distinct VkCoverageModulationModeNV = inline uint;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_NONE_NV = 0;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_RGB_NV = 1;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_ALPHA_NV = 2;
const VkCoverageModulationModeNV VK_COVERAGE_MODULATION_MODE_RGBA_NV = 3;

distinct VkCoverageReductionModeNV = inline uint;
const VkCoverageReductionModeNV VK_COVERAGE_REDUCTION_MODE_MERGE_NV = 0;
const VkCoverageReductionModeNV VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV = 1;

distinct VkValidationCacheHeaderVersionEXT = inline uint;
const VkValidationCacheHeaderVersionEXT VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT = 1;

distinct VkShaderInfoTypeAMD = inline uint;
const VkShaderInfoTypeAMD VK_SHADER_INFO_TYPE_STATISTICS_AMD = 0;
const VkShaderInfoTypeAMD VK_SHADER_INFO_TYPE_BINARY_AMD = 1;
const VkShaderInfoTypeAMD VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD = 2;

distinct VkQueueGlobalPriorityKHR = inline uint;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR = 128;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR = 256;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR = 512;
const VkQueueGlobalPriorityKHR VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR = 1024;

distinct VkDebugUtilsMessageSeverityFlagBitsEXT = inline uint;
const VkDebugUtilsMessageSeverityFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = 0x00000001;
const VkDebugUtilsMessageSeverityFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = 0x00000010;
const VkDebugUtilsMessageSeverityFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = 0x00000100;
const VkDebugUtilsMessageSeverityFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = 0x00001000;

distinct VkDebugUtilsMessageTypeFlagBitsEXT = inline uint;
const VkDebugUtilsMessageTypeFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = 0x00000001;
const VkDebugUtilsMessageTypeFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = 0x00000002;
const VkDebugUtilsMessageTypeFlagBitsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = 0x00000004;

distinct VkConservativeRasterizationModeEXT = inline uint;
const VkConservativeRasterizationModeEXT VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0;
const VkConservativeRasterizationModeEXT VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1;
const VkConservativeRasterizationModeEXT VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2;

distinct VkDescriptorBindingFlagBits = inline uint;
const VkDescriptorBindingFlagBits VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT = 0x00000001;
const VkDescriptorBindingFlagBits VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT = 0x00000002;
const VkDescriptorBindingFlagBits VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT = 0x00000004;
const VkDescriptorBindingFlagBits VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT = 0x00000008;

distinct VkVendorId = inline uint;
const VkVendorId VK_VENDOR_ID_KHRONOS = 0x10000;
const VkVendorId VK_VENDOR_ID_VIV = 0x10001;
const VkVendorId VK_VENDOR_ID_VSI = 0x10002;
const VkVendorId VK_VENDOR_ID_KAZAN = 0x10003;
const VkVendorId VK_VENDOR_ID_CODEPLAY = 0x10004;
const VkVendorId VK_VENDOR_ID_MESA = 0x10005;
const VkVendorId VK_VENDOR_ID_POCL = 0x10006;
const VkVendorId VK_VENDOR_ID_MOBILEYE = 0x10007;

distinct VkDriverId = inline uint;
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
const VkDriverId VK_DRIVER_ID_MESA_HONEYKRISP = 26;
const VkDriverId VK_DRIVER_ID_RESERVED_27 = 27;

distinct VkConditionalRenderingFlagBitsEXT = inline uint;
const VkConditionalRenderingFlagBitsEXT VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT = 0x00000001;

distinct VkResolveModeFlagBits = inline uint;
const VkResolveModeFlagBits VK_RESOLVE_MODE_NONE = 0;
const VkResolveModeFlagBits VK_RESOLVE_MODE_SAMPLE_ZERO_BIT = 0x00000001;
const VkResolveModeFlagBits VK_RESOLVE_MODE_AVERAGE_BIT = 0x00000002;
const VkResolveModeFlagBits VK_RESOLVE_MODE_MIN_BIT = 0x00000004;
const VkResolveModeFlagBits VK_RESOLVE_MODE_MAX_BIT = 0x00000008;

distinct VkShadingRatePaletteEntryNV = inline uint;
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

distinct VkCoarseSampleOrderTypeNV = inline uint;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV = 0;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV = 1;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV = 2;
const VkCoarseSampleOrderTypeNV VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV = 3;

distinct VkGeometryInstanceFlagBitsKHR = inline uint;
const VkGeometryInstanceFlagBitsKHR VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR = 0x00000001;
const VkGeometryInstanceFlagBitsKHR VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR = 0x00000002;
const VkGeometryInstanceFlagBitsKHR VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR = 0x00000004;
const VkGeometryInstanceFlagBitsKHR VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR = 0x00000008;

distinct VkGeometryFlagBitsKHR = inline uint;
const VkGeometryFlagBitsKHR VK_GEOMETRY_OPAQUE_BIT_KHR = 0x00000001;
const VkGeometryFlagBitsKHR VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR = 0x00000002;

distinct VkBuildAccelerationStructureFlagBitsKHR = inline uint;
const VkBuildAccelerationStructureFlagBitsKHR VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR = 0x00000001;
const VkBuildAccelerationStructureFlagBitsKHR VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR = 0x00000002;
const VkBuildAccelerationStructureFlagBitsKHR VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR = 0x00000004;
const VkBuildAccelerationStructureFlagBitsKHR VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR = 0x00000008;
const VkBuildAccelerationStructureFlagBitsKHR VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR = 0x00000010;

distinct VkAccelerationStructureCreateFlagBitsKHR = inline uint;
const VkAccelerationStructureCreateFlagBitsKHR VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 0x00000001;

distinct VkCopyAccelerationStructureModeKHR = inline uint;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2;
const VkCopyAccelerationStructureModeKHR VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3;

distinct VkBuildAccelerationStructureModeKHR = inline uint;
const VkBuildAccelerationStructureModeKHR VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR = 0;
const VkBuildAccelerationStructureModeKHR VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR = 1;

distinct VkAccelerationStructureTypeKHR = inline uint;
const VkAccelerationStructureTypeKHR VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0;
const VkAccelerationStructureTypeKHR VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1;
const VkAccelerationStructureTypeKHR VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR = 2;

distinct VkGeometryTypeKHR = inline uint;
const VkGeometryTypeKHR VK_GEOMETRY_TYPE_TRIANGLES_KHR = 0;
const VkGeometryTypeKHR VK_GEOMETRY_TYPE_AABBS_KHR = 1;
const VkGeometryTypeKHR VK_GEOMETRY_TYPE_INSTANCES_KHR = 2;

distinct VkAccelerationStructureMemoryRequirementsTypeNV = inline uint;
const VkAccelerationStructureMemoryRequirementsTypeNV VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV = 0;
const VkAccelerationStructureMemoryRequirementsTypeNV VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV = 1;
const VkAccelerationStructureMemoryRequirementsTypeNV VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV = 2;

distinct VkAccelerationStructureBuildTypeKHR = inline uint;
const VkAccelerationStructureBuildTypeKHR VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR = 0;
const VkAccelerationStructureBuildTypeKHR VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR = 1;
const VkAccelerationStructureBuildTypeKHR VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR = 2;

distinct VkRayTracingShaderGroupTypeKHR = inline uint;
const VkRayTracingShaderGroupTypeKHR VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR = 0;
const VkRayTracingShaderGroupTypeKHR VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR = 1;
const VkRayTracingShaderGroupTypeKHR VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR = 2;

distinct VkAccelerationStructureCompatibilityKHR = inline uint;
const VkAccelerationStructureCompatibilityKHR VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR = 0;
const VkAccelerationStructureCompatibilityKHR VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR = 1;

distinct VkShaderGroupShaderKHR = inline uint;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_GENERAL_KHR = 0;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR = 1;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_ANY_HIT_KHR = 2;
const VkShaderGroupShaderKHR VK_SHADER_GROUP_SHADER_INTERSECTION_KHR = 3;

distinct VkMemoryOverallocationBehaviorAMD = inline uint;
const VkMemoryOverallocationBehaviorAMD VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD = 0;
const VkMemoryOverallocationBehaviorAMD VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD = 1;
const VkMemoryOverallocationBehaviorAMD VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD = 2;

distinct VkDeviceDiagnosticsConfigFlagBitsNV = inline uint;
const VkDeviceDiagnosticsConfigFlagBitsNV VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV = 0x00000001;
const VkDeviceDiagnosticsConfigFlagBitsNV VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV = 0x00000002;
const VkDeviceDiagnosticsConfigFlagBitsNV VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV = 0x00000004;
const VkDeviceDiagnosticsConfigFlagBitsNV VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV = 0x00000008;

distinct VkPipelineCreationFeedbackFlagBits = inline uint;
const VkPipelineCreationFeedbackFlagBits VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT = 0x00000001;
const VkPipelineCreationFeedbackFlagBits VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT = 0x00000002;
const VkPipelineCreationFeedbackFlagBits VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT = 0x00000004;

distinct VkFullScreenExclusiveEXT = inline uint;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT = 0;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT = 1;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT = 2;
const VkFullScreenExclusiveEXT VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT = 3;

distinct VkPerformanceCounterScopeKHR = inline uint;
const VkPerformanceCounterScopeKHR VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0;
const VkPerformanceCounterScopeKHR VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1;
const VkPerformanceCounterScopeKHR VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2;

distinct VkMemoryDecompressionMethodFlagBitsNV = inline uint;
const VkMemoryDecompressionMethodFlagBitsNV VK_MEMORY_DECOMPRESSION_METHOD_GDEFLATE_1_0_BIT_NV = 0x00000001;

distinct VkPerformanceCounterUnitKHR = inline uint;
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

distinct VkPerformanceCounterStorageKHR = inline uint;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR = 0;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR = 1;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR = 2;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR = 3;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR = 4;
const VkPerformanceCounterStorageKHR VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR = 5;

distinct VkPerformanceCounterDescriptionFlagBitsKHR = inline uint;
const VkPerformanceCounterDescriptionFlagBitsKHR VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR = 0x00000001;
const VkPerformanceCounterDescriptionFlagBitsKHR VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR = 0x00000002;

distinct VkPerformanceConfigurationTypeINTEL = inline uint;
const VkPerformanceConfigurationTypeINTEL VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL = 0;

distinct VkQueryPoolSamplingModeINTEL = inline uint;
const VkQueryPoolSamplingModeINTEL VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL = 0;

distinct VkPerformanceOverrideTypeINTEL = inline uint;
const VkPerformanceOverrideTypeINTEL VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL = 0;
const VkPerformanceOverrideTypeINTEL VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL = 1;

distinct VkPerformanceParameterTypeINTEL = inline uint;
const VkPerformanceParameterTypeINTEL VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL = 0;
const VkPerformanceParameterTypeINTEL VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL = 1;

distinct VkPerformanceValueTypeINTEL = inline uint;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL = 0;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL = 1;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL = 2;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL = 3;
const VkPerformanceValueTypeINTEL VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL = 4;

distinct VkShaderFloatControlsIndependence = inline uint;
const VkShaderFloatControlsIndependence VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0;
const VkShaderFloatControlsIndependence VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1;
const VkShaderFloatControlsIndependence VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2;

distinct VkPipelineExecutableStatisticFormatKHR = inline uint;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2;
const VkPipelineExecutableStatisticFormatKHR VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3;

distinct VkLineRasterizationModeKHR = inline uint;
const VkLineRasterizationModeKHR VK_LINE_RASTERIZATION_MODE_DEFAULT_KHR = 0;
const VkLineRasterizationModeKHR VK_LINE_RASTERIZATION_MODE_RECTANGULAR_KHR = 1;
const VkLineRasterizationModeKHR VK_LINE_RASTERIZATION_MODE_BRESENHAM_KHR = 2;
const VkLineRasterizationModeKHR VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_KHR = 3;

distinct VkFaultLevel = inline uint;
const VkFaultLevel VK_FAULT_LEVEL_UNASSIGNED = 0;
const VkFaultLevel VK_FAULT_LEVEL_CRITICAL = 1;
const VkFaultLevel VK_FAULT_LEVEL_RECOVERABLE = 2;
const VkFaultLevel VK_FAULT_LEVEL_WARNING = 3;

distinct VkFaultType = inline uint;
const VkFaultType VK_FAULT_TYPE_INVALID = 0;
const VkFaultType VK_FAULT_TYPE_UNASSIGNED = 1;
const VkFaultType VK_FAULT_TYPE_IMPLEMENTATION = 2;
const VkFaultType VK_FAULT_TYPE_SYSTEM = 3;
const VkFaultType VK_FAULT_TYPE_PHYSICAL_DEVICE = 4;
const VkFaultType VK_FAULT_TYPE_COMMAND_BUFFER_FULL = 5;
const VkFaultType VK_FAULT_TYPE_INVALID_API_USAGE = 6;

distinct VkFaultQueryBehavior = inline uint;
const VkFaultQueryBehavior VK_FAULT_QUERY_BEHAVIOR_GET_AND_CLEAR_ALL_FAULTS = 0;

distinct VkToolPurposeFlagBits = inline uint;
const VkToolPurposeFlagBits VK_TOOL_PURPOSE_VALIDATION_BIT = 0x00000001;
const VkToolPurposeFlagBits VK_TOOL_PURPOSE_PROFILING_BIT = 0x00000002;
const VkToolPurposeFlagBits VK_TOOL_PURPOSE_TRACING_BIT = 0x00000004;
const VkToolPurposeFlagBits VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT = 0x00000008;
const VkToolPurposeFlagBits VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT = 0x00000010;

distinct VkPipelineMatchControl = inline uint;
const VkPipelineMatchControl VK_PIPELINE_MATCH_CONTROL_APPLICATION_UUID_EXACT_MATCH = 0;

distinct VkFragmentShadingRateCombinerOpKHR = inline uint;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR = 0;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR = 1;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR = 2;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR = 3;
const VkFragmentShadingRateCombinerOpKHR VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR = 4;

distinct VkFragmentShadingRateNV = inline uint;
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

distinct VkFragmentShadingRateTypeNV = inline uint;
const VkFragmentShadingRateTypeNV VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV = 0;
const VkFragmentShadingRateTypeNV VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV = 1;

distinct VkSubpassMergeStatusEXT = inline uint;
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

distinct VkAccessFlagBits2 = inline uint;
const VkAccessFlagBits2 VK_ACCESS_2_NONE = 0;
const VkAccessFlagBits2 VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT = 0x00000001;
const VkAccessFlagBits2 VK_ACCESS_2_INDEX_READ_BIT = 0x00000002;
const VkAccessFlagBits2 VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT = 0x00000004;
const VkAccessFlagBits2 VK_ACCESS_2_UNIFORM_READ_BIT = 0x00000008;
const VkAccessFlagBits2 VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT = 0x00000010;
const VkAccessFlagBits2 VK_ACCESS_2_SHADER_READ_BIT = 0x00000020;
const VkAccessFlagBits2 VK_ACCESS_2_SHADER_WRITE_BIT = 0x00000040;
const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT = 0x00000080;
const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT = 0x00000100;
const VkAccessFlagBits2 VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 0x00000200;
const VkAccessFlagBits2 VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 0x00000400;
const VkAccessFlagBits2 VK_ACCESS_2_TRANSFER_READ_BIT = 0x00000800;
const VkAccessFlagBits2 VK_ACCESS_2_TRANSFER_WRITE_BIT = 0x00001000;
const VkAccessFlagBits2 VK_ACCESS_2_HOST_READ_BIT = 0x00002000;
const VkAccessFlagBits2 VK_ACCESS_2_HOST_WRITE_BIT = 0x00004000;
const VkAccessFlagBits2 VK_ACCESS_2_MEMORY_READ_BIT = 0x00008000;
const VkAccessFlagBits2 VK_ACCESS_2_MEMORY_WRITE_BIT = 0x00010000;
const VkAccessFlagBits2 VK_ACCESS_2_SHADER_SAMPLED_READ_BIT = 0x100000000;
const VkAccessFlagBits2 VK_ACCESS_2_SHADER_STORAGE_READ_BIT = 0x200000000;
const VkAccessFlagBits2 VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT = 0x400000000;

distinct VkPipelineStageFlagBits2 = inline uint;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_NONE = 0;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT = 0x00000001;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT = 0x00000002;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT = 0x00000004;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT = 0x00000008;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT = 0x00000010;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT = 0x00000020;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT = 0x00000040;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT = 0x00000080;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT = 0x00000100;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT = 0x00000200;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT = 0x00000400;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT = 0x00000800;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT = 0x00001000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT = 0x00002000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_HOST_BIT = 0x00004000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT = 0x00008000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT = 0x00010000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COPY_BIT = 0x100000000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_RESOLVE_BIT = 0x200000000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_BLIT_BIT = 0x400000000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_CLEAR_BIT = 0x800000000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT = 0x1000000000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT = 0x2000000000;
const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT = 0x4000000000;

distinct VkSubmitFlagBits = inline uint;
const VkSubmitFlagBits VK_SUBMIT_PROTECTED_BIT = 0x00000001;

distinct VkSciSyncClientTypeNV = inline uint;
const VkSciSyncClientTypeNV VK_SCI_SYNC_CLIENT_TYPE_SIGNALER_NV = 0;
const VkSciSyncClientTypeNV VK_SCI_SYNC_CLIENT_TYPE_WAITER_NV = 1;
const VkSciSyncClientTypeNV VK_SCI_SYNC_CLIENT_TYPE_SIGNALER_WAITER_NV = 2;

distinct VkSciSyncPrimitiveTypeNV = inline uint;
const VkSciSyncPrimitiveTypeNV VK_SCI_SYNC_PRIMITIVE_TYPE_FENCE_NV = 0;
const VkSciSyncPrimitiveTypeNV VK_SCI_SYNC_PRIMITIVE_TYPE_SEMAPHORE_NV = 1;

distinct VkProvokingVertexModeEXT = inline uint;
const VkProvokingVertexModeEXT VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT = 0;
const VkProvokingVertexModeEXT VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT = 1;

distinct VkPipelineCacheValidationVersion = inline uint;
const VkPipelineCacheValidationVersion VK_PIPELINE_CACHE_VALIDATION_VERSION_SAFETY_CRITICAL_ONE = 1;

distinct VkAccelerationStructureMotionInstanceTypeNV = inline uint;
const VkAccelerationStructureMotionInstanceTypeNV VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV = 0;
const VkAccelerationStructureMotionInstanceTypeNV VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV = 1;
const VkAccelerationStructureMotionInstanceTypeNV VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV = 2;

distinct VkGraphicsPipelineLibraryFlagBitsEXT = inline uint;
const VkGraphicsPipelineLibraryFlagBitsEXT VK_GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT = 0x00000001;
const VkGraphicsPipelineLibraryFlagBitsEXT VK_GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT = 0x00000002;
const VkGraphicsPipelineLibraryFlagBitsEXT VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT = 0x00000004;
const VkGraphicsPipelineLibraryFlagBitsEXT VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT = 0x00000008;

distinct VkDeviceAddressBindingFlagBitsEXT = inline uint;
const VkDeviceAddressBindingFlagBitsEXT VK_DEVICE_ADDRESS_BINDING_INTERNAL_OBJECT_BIT_EXT = 0x00000001;

distinct VkDeviceAddressBindingTypeEXT = inline uint;
const VkDeviceAddressBindingTypeEXT VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT = 0;
const VkDeviceAddressBindingTypeEXT VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT = 1;

distinct VkFrameBoundaryFlagBitsEXT = inline uint;
const VkFrameBoundaryFlagBitsEXT VK_FRAME_BOUNDARY_FRAME_END_BIT_EXT = 0x00000001;

distinct VkPresentScalingFlagBitsEXT = inline uint;
const VkPresentScalingFlagBitsEXT VK_PRESENT_SCALING_ONE_TO_ONE_BIT_EXT = 0x00000001;
const VkPresentScalingFlagBitsEXT VK_PRESENT_SCALING_ASPECT_RATIO_STRETCH_BIT_EXT = 0x00000002;
const VkPresentScalingFlagBitsEXT VK_PRESENT_SCALING_STRETCH_BIT_EXT = 0x00000004;

distinct VkPresentGravityFlagBitsEXT = inline uint;
const VkPresentGravityFlagBitsEXT VK_PRESENT_GRAVITY_MIN_BIT_EXT = 0x00000001;
const VkPresentGravityFlagBitsEXT VK_PRESENT_GRAVITY_MAX_BIT_EXT = 0x00000002;
const VkPresentGravityFlagBitsEXT VK_PRESENT_GRAVITY_CENTERED_BIT_EXT = 0x00000004;

distinct VkPhysicalDeviceSchedulingControlsFlagBitsARM = inline uint;
const VkPhysicalDeviceSchedulingControlsFlagBitsARM VK_PHYSICAL_DEVICE_SCHEDULING_CONTROLS_SHADER_CORE_COUNT_ARM = 0x00000001;

distinct VkVideoCodecOperationFlagBitsKHR = inline uint;
const VkVideoCodecOperationFlagBitsKHR VK_VIDEO_CODEC_OPERATION_NONE_KHR = 0;

distinct VkVideoChromaSubsamplingFlagBitsKHR = inline uint;
const VkVideoChromaSubsamplingFlagBitsKHR VK_VIDEO_CHROMA_SUBSAMPLING_INVALID_KHR = 0;
const VkVideoChromaSubsamplingFlagBitsKHR VK_VIDEO_CHROMA_SUBSAMPLING_MONOCHROME_BIT_KHR = 0x00000001;
const VkVideoChromaSubsamplingFlagBitsKHR VK_VIDEO_CHROMA_SUBSAMPLING_420_BIT_KHR = 0x00000002;
const VkVideoChromaSubsamplingFlagBitsKHR VK_VIDEO_CHROMA_SUBSAMPLING_422_BIT_KHR = 0x00000004;
const VkVideoChromaSubsamplingFlagBitsKHR VK_VIDEO_CHROMA_SUBSAMPLING_444_BIT_KHR = 0x00000008;

distinct VkVideoComponentBitDepthFlagBitsKHR = inline uint;
const VkVideoComponentBitDepthFlagBitsKHR VK_VIDEO_COMPONENT_BIT_DEPTH_INVALID_KHR = 0;
const VkVideoComponentBitDepthFlagBitsKHR VK_VIDEO_COMPONENT_BIT_DEPTH_8_BIT_KHR = 0x00000001;
const VkVideoComponentBitDepthFlagBitsKHR VK_VIDEO_COMPONENT_BIT_DEPTH_10_BIT_KHR = 0x00000004;
const VkVideoComponentBitDepthFlagBitsKHR VK_VIDEO_COMPONENT_BIT_DEPTH_12_BIT_KHR = 0x00000010;

distinct VkVideoCapabilityFlagBitsKHR = inline uint;
const VkVideoCapabilityFlagBitsKHR VK_VIDEO_CAPABILITY_PROTECTED_CONTENT_BIT_KHR = 0x00000001;
const VkVideoCapabilityFlagBitsKHR VK_VIDEO_CAPABILITY_SEPARATE_REFERENCE_IMAGES_BIT_KHR = 0x00000002;

distinct VkVideoSessionCreateFlagBitsKHR = inline uint;
const VkVideoSessionCreateFlagBitsKHR VK_VIDEO_SESSION_CREATE_PROTECTED_CONTENT_BIT_KHR = 0x00000001;

distinct VkVideoDecodeH264PictureLayoutFlagBitsKHR = inline uint;
const VkVideoDecodeH264PictureLayoutFlagBitsKHR VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_PROGRESSIVE_KHR = 0;
const VkVideoDecodeH264PictureLayoutFlagBitsKHR VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_INTERLEAVED_LINES_BIT_KHR = 0x00000001;
const VkVideoDecodeH264PictureLayoutFlagBitsKHR VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_SEPARATE_PLANES_BIT_KHR = 0x00000002;

distinct VkVideoCodingControlFlagBitsKHR = inline uint;
const VkVideoCodingControlFlagBitsKHR VK_VIDEO_CODING_CONTROL_RESET_BIT_KHR = 0x00000001;

distinct VkQueryResultStatusKHR = inline uint;
const VkQueryResultStatusKHR VK_QUERY_RESULT_STATUS_ERROR_KHR = -1;
const VkQueryResultStatusKHR VK_QUERY_RESULT_STATUS_NOT_READY_KHR = 0;
const VkQueryResultStatusKHR VK_QUERY_RESULT_STATUS_COMPLETE_KHR = 1;

distinct VkVideoDecodeUsageFlagBitsKHR = inline uint;
const VkVideoDecodeUsageFlagBitsKHR VK_VIDEO_DECODE_USAGE_DEFAULT_KHR = 0;
const VkVideoDecodeUsageFlagBitsKHR VK_VIDEO_DECODE_USAGE_TRANSCODING_BIT_KHR = 0x00000001;
const VkVideoDecodeUsageFlagBitsKHR VK_VIDEO_DECODE_USAGE_OFFLINE_BIT_KHR = 0x00000002;
const VkVideoDecodeUsageFlagBitsKHR VK_VIDEO_DECODE_USAGE_STREAMING_BIT_KHR = 0x00000004;

distinct VkVideoDecodeCapabilityFlagBitsKHR = inline uint;
const VkVideoDecodeCapabilityFlagBitsKHR VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_COINCIDE_BIT_KHR = 0x00000001;
const VkVideoDecodeCapabilityFlagBitsKHR VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_DISTINCT_BIT_KHR = 0x00000002;

distinct VkVideoEncodeUsageFlagBitsKHR = inline uint;
const VkVideoEncodeUsageFlagBitsKHR VK_VIDEO_ENCODE_USAGE_DEFAULT_KHR = 0;
const VkVideoEncodeUsageFlagBitsKHR VK_VIDEO_ENCODE_USAGE_TRANSCODING_BIT_KHR = 0x00000001;
const VkVideoEncodeUsageFlagBitsKHR VK_VIDEO_ENCODE_USAGE_STREAMING_BIT_KHR = 0x00000002;
const VkVideoEncodeUsageFlagBitsKHR VK_VIDEO_ENCODE_USAGE_RECORDING_BIT_KHR = 0x00000004;
const VkVideoEncodeUsageFlagBitsKHR VK_VIDEO_ENCODE_USAGE_CONFERENCING_BIT_KHR = 0x00000008;

distinct VkVideoEncodeContentFlagBitsKHR = inline uint;
const VkVideoEncodeContentFlagBitsKHR VK_VIDEO_ENCODE_CONTENT_DEFAULT_KHR = 0;
const VkVideoEncodeContentFlagBitsKHR VK_VIDEO_ENCODE_CONTENT_CAMERA_BIT_KHR = 0x00000001;
const VkVideoEncodeContentFlagBitsKHR VK_VIDEO_ENCODE_CONTENT_DESKTOP_BIT_KHR = 0x00000002;
const VkVideoEncodeContentFlagBitsKHR VK_VIDEO_ENCODE_CONTENT_RENDERED_BIT_KHR = 0x00000004;

distinct VkVideoEncodeTuningModeKHR = inline uint;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR = 0;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR = 1;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR = 2;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR = 3;
const VkVideoEncodeTuningModeKHR VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR = 4;

distinct VkVideoEncodeCapabilityFlagBitsKHR = inline uint;
const VkVideoEncodeCapabilityFlagBitsKHR VK_VIDEO_ENCODE_CAPABILITY_PRECEDING_EXTERNALLY_ENCODED_BYTES_BIT_KHR = 0x00000001;
const VkVideoEncodeCapabilityFlagBitsKHR VK_VIDEO_ENCODE_CAPABILITY_INSUFFICIENT_BITSTREAM_BUFFER_RANGE_DETECTION_BIT_KHR = 0x00000002;

distinct VkVideoEncodeFeedbackFlagBitsKHR = inline uint;
const VkVideoEncodeFeedbackFlagBitsKHR VK_VIDEO_ENCODE_FEEDBACK_BITSTREAM_BUFFER_OFFSET_BIT_KHR = 0x00000001;
const VkVideoEncodeFeedbackFlagBitsKHR VK_VIDEO_ENCODE_FEEDBACK_BITSTREAM_BYTES_WRITTEN_BIT_KHR = 0x00000002;
const VkVideoEncodeFeedbackFlagBitsKHR VK_VIDEO_ENCODE_FEEDBACK_BITSTREAM_HAS_OVERRIDES_BIT_KHR = 0x00000004;

distinct VkVideoEncodeRateControlModeFlagBitsKHR = inline uint;
const VkVideoEncodeRateControlModeFlagBitsKHR VK_VIDEO_ENCODE_RATE_CONTROL_MODE_DEFAULT_KHR = 0;
const VkVideoEncodeRateControlModeFlagBitsKHR VK_VIDEO_ENCODE_RATE_CONTROL_MODE_DISABLED_BIT_KHR = 0x00000001;
const VkVideoEncodeRateControlModeFlagBitsKHR VK_VIDEO_ENCODE_RATE_CONTROL_MODE_CBR_BIT_KHR = 0x00000002;
const VkVideoEncodeRateControlModeFlagBitsKHR VK_VIDEO_ENCODE_RATE_CONTROL_MODE_VBR_BIT_KHR = 0x00000004;

distinct VkVideoEncodeH264CapabilityFlagBitsKHR = inline uint;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_PREDICTION_WEIGHT_TABLE_GENERATED_BIT_KHR = 0x00000002;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_ROW_UNALIGNED_SLICE_BIT_KHR = 0x00000004;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_KHR = 0x00000008;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L0_LIST_BIT_KHR = 0x00000010;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_KHR = 0x00000020;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_PER_PICTURE_TYPE_MIN_MAX_QP_BIT_KHR = 0x00000040;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_PER_SLICE_CONSTANT_QP_BIT_KHR = 0x00000080;
const VkVideoEncodeH264CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H264_CAPABILITY_GENERATE_PREFIX_NALU_BIT_KHR = 0x00000100;

distinct VkVideoEncodeH264StdFlagBitsKHR = inline uint;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_SEPARATE_COLOR_PLANE_FLAG_SET_BIT_KHR = 0x00000001;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG_SET_BIT_KHR = 0x00000002;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_SCALING_MATRIX_PRESENT_FLAG_SET_BIT_KHR = 0x00000004;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_CHROMA_QP_INDEX_OFFSET_BIT_KHR = 0x00000008;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_SECOND_CHROMA_QP_INDEX_OFFSET_BIT_KHR = 0x00000010;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_PIC_INIT_QP_MINUS26_BIT_KHR = 0x00000020;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_WEIGHTED_PRED_FLAG_SET_BIT_KHR = 0x00000040;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_WEIGHTED_BIPRED_IDC_EXPLICIT_BIT_KHR = 0x00000080;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_WEIGHTED_BIPRED_IDC_IMPLICIT_BIT_KHR = 0x00000100;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_TRANSFORM_8X8_MODE_FLAG_SET_BIT_KHR = 0x00000200;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_DIRECT_SPATIAL_MV_PRED_FLAG_UNSET_BIT_KHR = 0x00000400;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_ENTROPY_CODING_MODE_FLAG_UNSET_BIT_KHR = 0x00000800;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_ENTROPY_CODING_MODE_FLAG_SET_BIT_KHR = 0x00001000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_DIRECT_8X8_INFERENCE_FLAG_UNSET_BIT_KHR = 0x00002000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_CONSTRAINED_INTRA_PRED_FLAG_SET_BIT_KHR = 0x00004000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_DISABLED_BIT_KHR = 0x00008000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_ENABLED_BIT_KHR = 0x00010000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_DEBLOCKING_FILTER_PARTIAL_BIT_KHR = 0x00020000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_SLICE_QP_DELTA_BIT_KHR = 0x00080000;
const VkVideoEncodeH264StdFlagBitsKHR VK_VIDEO_ENCODE_H264_STD_DIFFERENT_SLICE_QP_DELTA_BIT_KHR = 0x00100000;

distinct VkVideoEncodeH264RateControlFlagBitsKHR = inline uint;
const VkVideoEncodeH264RateControlFlagBitsKHR VK_VIDEO_ENCODE_H264_RATE_CONTROL_ATTEMPT_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VkVideoEncodeH264RateControlFlagBitsKHR VK_VIDEO_ENCODE_H264_RATE_CONTROL_REGULAR_GOP_BIT_KHR = 0x00000002;
const VkVideoEncodeH264RateControlFlagBitsKHR VK_VIDEO_ENCODE_H264_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR = 0x00000004;
const VkVideoEncodeH264RateControlFlagBitsKHR VK_VIDEO_ENCODE_H264_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR = 0x00000008;
const VkVideoEncodeH264RateControlFlagBitsKHR VK_VIDEO_ENCODE_H264_RATE_CONTROL_TEMPORAL_LAYER_PATTERN_DYADIC_BIT_KHR = 0x00000010;

distinct VkHostImageCopyFlagBitsEXT = inline uint;
const VkHostImageCopyFlagBitsEXT VK_HOST_IMAGE_COPY_MEMCPY_EXT = 0x00000001;

distinct VkImageConstraintsInfoFlagBitsFUCHSIA = inline uint;
const VkImageConstraintsInfoFlagBitsFUCHSIA VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_RARELY_FUCHSIA = 0x00000001;
const VkImageConstraintsInfoFlagBitsFUCHSIA VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_OFTEN_FUCHSIA = 0x00000002;
const VkImageConstraintsInfoFlagBitsFUCHSIA VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_RARELY_FUCHSIA = 0x00000004;
const VkImageConstraintsInfoFlagBitsFUCHSIA VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_OFTEN_FUCHSIA = 0x00000008;
const VkImageConstraintsInfoFlagBitsFUCHSIA VK_IMAGE_CONSTRAINTS_INFO_PROTECTED_OPTIONAL_FUCHSIA = 0x00000010;

distinct VkFormatFeatureFlagBits2 = inline uint;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT = 0x00000001;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT = 0x00000002;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT = 0x00000004;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT = 0x00000008;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT = 0x00000010;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 0x00000020;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT = 0x00000040;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT = 0x00000080;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT = 0x00000100;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000200;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_BLIT_SRC_BIT = 0x00000400;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_BLIT_DST_BIT = 0x00000800;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 0x00001000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT = 0x00002000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT = 0x00004000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT = 0x00008000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 0x00010000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT = 0x00020000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 0x00040000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 0x00080000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 0x00100000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 0x00200000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_DISJOINT_BIT = 0x00400000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT = 0x00800000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT = 0x80000000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT = 0x100000000;
const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT = 0x200000000;

distinct VkRenderingFlagBits = inline uint;
const VkRenderingFlagBits VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT = 0x00000001;
const VkRenderingFlagBits VK_RENDERING_SUSPENDING_BIT = 0x00000002;
const VkRenderingFlagBits VK_RENDERING_RESUMING_BIT = 0x00000004;

distinct VkVideoEncodeH265CapabilityFlagBitsKHR = inline uint;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_PREDICTION_WEIGHT_TABLE_GENERATED_BIT_KHR = 0x00000002;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_ROW_UNALIGNED_SLICE_SEGMENT_BIT_KHR = 0x00000004;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_DIFFERENT_SLICE_SEGMENT_TYPE_BIT_KHR = 0x00000008;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L0_LIST_BIT_KHR = 0x00000010;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_KHR = 0x00000020;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_PER_PICTURE_TYPE_MIN_MAX_QP_BIT_KHR = 0x00000040;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_PER_SLICE_SEGMENT_CONSTANT_QP_BIT_KHR = 0x00000080;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILES_PER_SLICE_SEGMENT_BIT_KHR = 0x00000100;
const VkVideoEncodeH265CapabilityFlagBitsKHR VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_SLICE_SEGMENTS_PER_TILE_BIT_KHR = 0x00000200;

distinct VkVideoEncodeH265StdFlagBitsKHR = inline uint;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_SEPARATE_COLOR_PLANE_FLAG_SET_BIT_KHR = 0x00000001;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_SAMPLE_ADAPTIVE_OFFSET_ENABLED_FLAG_SET_BIT_KHR = 0x00000002;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_SCALING_LIST_DATA_PRESENT_FLAG_SET_BIT_KHR = 0x00000004;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_PCM_ENABLED_FLAG_SET_BIT_KHR = 0x00000008;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_SPS_TEMPORAL_MVP_ENABLED_FLAG_SET_BIT_KHR = 0x00000010;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_INIT_QP_MINUS26_BIT_KHR = 0x00000020;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_WEIGHTED_PRED_FLAG_SET_BIT_KHR = 0x00000040;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_WEIGHTED_BIPRED_FLAG_SET_BIT_KHR = 0x00000080;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_LOG2_PARALLEL_MERGE_LEVEL_MINUS2_BIT_KHR = 0x00000100;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_SIGN_DATA_HIDING_ENABLED_FLAG_SET_BIT_KHR = 0x00000200;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_TRANSFORM_SKIP_ENABLED_FLAG_SET_BIT_KHR = 0x00000400;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_TRANSFORM_SKIP_ENABLED_FLAG_UNSET_BIT_KHR = 0x00000800;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_FLAG_SET_BIT_KHR = 0x00001000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_TRANSQUANT_BYPASS_ENABLED_FLAG_SET_BIT_KHR = 0x00002000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_CONSTRAINED_INTRA_PRED_FLAG_SET_BIT_KHR = 0x00004000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_ENTROPY_CODING_SYNC_ENABLED_FLAG_SET_BIT_KHR = 0x00008000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_DEBLOCKING_FILTER_OVERRIDE_ENABLED_FLAG_SET_BIT_KHR = 0x00010000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_DEPENDENT_SLICE_SEGMENTS_ENABLED_FLAG_SET_BIT_KHR = 0x00020000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_DEPENDENT_SLICE_SEGMENT_FLAG_SET_BIT_KHR = 0x00040000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_SLICE_QP_DELTA_BIT_KHR = 0x00080000;
const VkVideoEncodeH265StdFlagBitsKHR VK_VIDEO_ENCODE_H265_STD_DIFFERENT_SLICE_QP_DELTA_BIT_KHR = 0x00100000;

distinct VkVideoEncodeH265RateControlFlagBitsKHR = inline uint;
const VkVideoEncodeH265RateControlFlagBitsKHR VK_VIDEO_ENCODE_H265_RATE_CONTROL_ATTEMPT_HRD_COMPLIANCE_BIT_KHR = 0x00000001;
const VkVideoEncodeH265RateControlFlagBitsKHR VK_VIDEO_ENCODE_H265_RATE_CONTROL_REGULAR_GOP_BIT_KHR = 0x00000002;
const VkVideoEncodeH265RateControlFlagBitsKHR VK_VIDEO_ENCODE_H265_RATE_CONTROL_REFERENCE_PATTERN_FLAT_BIT_KHR = 0x00000004;
const VkVideoEncodeH265RateControlFlagBitsKHR VK_VIDEO_ENCODE_H265_RATE_CONTROL_REFERENCE_PATTERN_DYADIC_BIT_KHR = 0x00000008;
const VkVideoEncodeH265RateControlFlagBitsKHR VK_VIDEO_ENCODE_H265_RATE_CONTROL_TEMPORAL_SUB_LAYER_PATTERN_DYADIC_BIT_KHR = 0x00000010;

distinct VkVideoEncodeH265CtbSizeFlagBitsKHR = inline uint;
const VkVideoEncodeH265CtbSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_CTB_SIZE_16_BIT_KHR = 0x00000001;
const VkVideoEncodeH265CtbSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_CTB_SIZE_32_BIT_KHR = 0x00000002;
const VkVideoEncodeH265CtbSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_CTB_SIZE_64_BIT_KHR = 0x00000004;

distinct VkVideoEncodeH265TransformBlockSizeFlagBitsKHR = inline uint;
const VkVideoEncodeH265TransformBlockSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_4_BIT_KHR = 0x00000001;
const VkVideoEncodeH265TransformBlockSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_8_BIT_KHR = 0x00000002;
const VkVideoEncodeH265TransformBlockSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_16_BIT_KHR = 0x00000004;
const VkVideoEncodeH265TransformBlockSizeFlagBitsKHR VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_32_BIT_KHR = 0x00000008;

distinct VkExportMetalObjectTypeFlagBitsEXT = inline uint;
const VkExportMetalObjectTypeFlagBitsEXT VK_EXPORT_METAL_OBJECT_TYPE_METAL_DEVICE_BIT_EXT = 0x00000001;
const VkExportMetalObjectTypeFlagBitsEXT VK_EXPORT_METAL_OBJECT_TYPE_METAL_COMMAND_QUEUE_BIT_EXT = 0x00000002;
const VkExportMetalObjectTypeFlagBitsEXT VK_EXPORT_METAL_OBJECT_TYPE_METAL_BUFFER_BIT_EXT = 0x00000004;
const VkExportMetalObjectTypeFlagBitsEXT VK_EXPORT_METAL_OBJECT_TYPE_METAL_TEXTURE_BIT_EXT = 0x00000008;
const VkExportMetalObjectTypeFlagBitsEXT VK_EXPORT_METAL_OBJECT_TYPE_METAL_IOSURFACE_BIT_EXT = 0x00000010;
const VkExportMetalObjectTypeFlagBitsEXT VK_EXPORT_METAL_OBJECT_TYPE_METAL_SHARED_EVENT_BIT_EXT = 0x00000020;

distinct VkImageCompressionFlagBitsEXT = inline uint;
const VkImageCompressionFlagBitsEXT VK_IMAGE_COMPRESSION_DEFAULT_EXT = 0;
const VkImageCompressionFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT = 0x00000001;
const VkImageCompressionFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT = 0x00000002;
const VkImageCompressionFlagBitsEXT VK_IMAGE_COMPRESSION_DISABLED_EXT = 0x00000004;

distinct VkImageCompressionFixedRateFlagBitsEXT = inline uint;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT = 0;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT = 0x00000001;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT = 0x00000002;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT = 0x00000004;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT = 0x00000008;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT = 0x00000010;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT = 0x00000020;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT = 0x00000040;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT = 0x00000080;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT = 0x00000100;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT = 0x00000200;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT = 0x00000400;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT = 0x00000800;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT = 0x00001000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT = 0x00002000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT = 0x00004000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT = 0x00008000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT = 0x00010000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT = 0x00020000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT = 0x00040000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT = 0x00080000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT = 0x00100000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT = 0x00200000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT = 0x00400000;
const VkImageCompressionFixedRateFlagBitsEXT VK_IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT = 0x00800000;

distinct VkPipelineRobustnessBufferBehaviorEXT = inline uint;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT = 1;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT = 2;
const VkPipelineRobustnessBufferBehaviorEXT VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT = 3;

distinct VkPipelineRobustnessImageBehaviorEXT = inline uint;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT = 0;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT = 1;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT = 2;
const VkPipelineRobustnessImageBehaviorEXT VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT = 3;

distinct VkOpticalFlowGridSizeFlagBitsNV = inline uint;
const VkOpticalFlowGridSizeFlagBitsNV VK_OPTICAL_FLOW_GRID_SIZE_UNKNOWN_NV = 0;
const VkOpticalFlowGridSizeFlagBitsNV VK_OPTICAL_FLOW_GRID_SIZE_1X1_BIT_NV = 0x00000001;
const VkOpticalFlowGridSizeFlagBitsNV VK_OPTICAL_FLOW_GRID_SIZE_2X2_BIT_NV = 0x00000002;
const VkOpticalFlowGridSizeFlagBitsNV VK_OPTICAL_FLOW_GRID_SIZE_4X4_BIT_NV = 0x00000004;
const VkOpticalFlowGridSizeFlagBitsNV VK_OPTICAL_FLOW_GRID_SIZE_8X8_BIT_NV = 0x00000008;

distinct VkOpticalFlowUsageFlagBitsNV = inline uint;
const VkOpticalFlowUsageFlagBitsNV VK_OPTICAL_FLOW_USAGE_UNKNOWN_NV = 0;
const VkOpticalFlowUsageFlagBitsNV VK_OPTICAL_FLOW_USAGE_INPUT_BIT_NV = 0x00000001;
const VkOpticalFlowUsageFlagBitsNV VK_OPTICAL_FLOW_USAGE_OUTPUT_BIT_NV = 0x00000002;
const VkOpticalFlowUsageFlagBitsNV VK_OPTICAL_FLOW_USAGE_HINT_BIT_NV = 0x00000004;
const VkOpticalFlowUsageFlagBitsNV VK_OPTICAL_FLOW_USAGE_COST_BIT_NV = 0x00000008;
const VkOpticalFlowUsageFlagBitsNV VK_OPTICAL_FLOW_USAGE_GLOBAL_FLOW_BIT_NV = 0x00000010;

distinct VkOpticalFlowPerformanceLevelNV = inline uint;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV = 0;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV = 1;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV = 2;
const VkOpticalFlowPerformanceLevelNV VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV = 3;

distinct VkOpticalFlowSessionBindingPointNV = inline uint;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV = 0;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV = 1;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV = 2;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV = 3;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV = 4;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV = 5;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV = 6;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV = 7;
const VkOpticalFlowSessionBindingPointNV VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV = 8;

distinct VkOpticalFlowSessionCreateFlagBitsNV = inline uint;
const VkOpticalFlowSessionCreateFlagBitsNV VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_HINT_BIT_NV = 0x00000001;
const VkOpticalFlowSessionCreateFlagBitsNV VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_COST_BIT_NV = 0x00000002;
const VkOpticalFlowSessionCreateFlagBitsNV VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_GLOBAL_FLOW_BIT_NV = 0x00000004;
const VkOpticalFlowSessionCreateFlagBitsNV VK_OPTICAL_FLOW_SESSION_CREATE_ALLOW_REGIONS_BIT_NV = 0x00000008;
const VkOpticalFlowSessionCreateFlagBitsNV VK_OPTICAL_FLOW_SESSION_CREATE_BOTH_DIRECTIONS_BIT_NV = 0x00000010;

distinct VkOpticalFlowExecuteFlagBitsNV = inline uint;
const VkOpticalFlowExecuteFlagBitsNV VK_OPTICAL_FLOW_EXECUTE_DISABLE_TEMPORAL_HINTS_BIT_NV = 0x00000001;

distinct VkMicromapTypeEXT = inline uint;
const VkMicromapTypeEXT VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT = 0;

distinct VkBuildMicromapFlagBitsEXT = inline uint;
const VkBuildMicromapFlagBitsEXT VK_BUILD_MICROMAP_PREFER_FAST_TRACE_BIT_EXT = 0x00000001;
const VkBuildMicromapFlagBitsEXT VK_BUILD_MICROMAP_PREFER_FAST_BUILD_BIT_EXT = 0x00000002;
const VkBuildMicromapFlagBitsEXT VK_BUILD_MICROMAP_ALLOW_COMPACTION_BIT_EXT = 0x00000004;

distinct VkMicromapCreateFlagBitsEXT = inline uint;
const VkMicromapCreateFlagBitsEXT VK_MICROMAP_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = 0x00000001;

distinct VkCopyMicromapModeEXT = inline uint;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_CLONE_EXT = 0;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_SERIALIZE_EXT = 1;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT = 2;
const VkCopyMicromapModeEXT VK_COPY_MICROMAP_MODE_COMPACT_EXT = 3;

distinct VkBuildMicromapModeEXT = inline uint;
const VkBuildMicromapModeEXT VK_BUILD_MICROMAP_MODE_BUILD_EXT = 0;

distinct VkOpacityMicromapFormatEXT = inline uint;
const VkOpacityMicromapFormatEXT VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT = 1;
const VkOpacityMicromapFormatEXT VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT = 2;

distinct VkOpacityMicromapSpecialIndexEXT = inline uint;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT = -1;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT = -2;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT = -3;
const VkOpacityMicromapSpecialIndexEXT VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT = -4;

distinct VkDepthBiasRepresentationEXT = inline uint;
const VkDepthBiasRepresentationEXT VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORMAT_EXT = 0;
const VkDepthBiasRepresentationEXT VK_DEPTH_BIAS_REPRESENTATION_LEAST_REPRESENTABLE_VALUE_FORCE_UNORM_EXT = 1;
const VkDepthBiasRepresentationEXT VK_DEPTH_BIAS_REPRESENTATION_FLOAT_EXT = 2;

distinct VkDeviceFaultAddressTypeEXT = inline uint;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT = 0;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT = 1;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT = 2;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT = 3;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT = 4;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT = 5;
const VkDeviceFaultAddressTypeEXT VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT = 6;

distinct VkDeviceFaultVendorBinaryHeaderVersionEXT = inline uint;
const VkDeviceFaultVendorBinaryHeaderVersionEXT VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT = 1;

distinct VkDisplacementMicromapFormatNV = inline uint;
const VkDisplacementMicromapFormatNV VK_DISPLACEMENT_MICROMAP_FORMAT_64_TRIANGLES_64_BYTES_NV = 1;
const VkDisplacementMicromapFormatNV VK_DISPLACEMENT_MICROMAP_FORMAT_256_TRIANGLES_128_BYTES_NV = 2;
const VkDisplacementMicromapFormatNV VK_DISPLACEMENT_MICROMAP_FORMAT_1024_TRIANGLES_128_BYTES_NV = 3;

distinct VkShaderCreateFlagBitsEXT = inline uint;
const VkShaderCreateFlagBitsEXT VK_SHADER_CREATE_LINK_STAGE_BIT_EXT = 0x00000001;

distinct VkShaderCodeTypeEXT = inline uint;
const VkShaderCodeTypeEXT VK_SHADER_CODE_TYPE_BINARY_EXT = 0;
const VkShaderCodeTypeEXT VK_SHADER_CODE_TYPE_SPIRV_EXT = 1;

distinct VkScopeKHR = inline uint;
const VkScopeKHR VK_SCOPE_DEVICE_KHR = 1;
const VkScopeKHR VK_SCOPE_WORKGROUP_KHR = 2;
const VkScopeKHR VK_SCOPE_SUBGROUP_KHR = 3;
const VkScopeKHR VK_SCOPE_QUEUE_FAMILY_KHR = 5;

distinct VkComponentTypeKHR = inline uint;
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

distinct VkCubicFilterWeightsQCOM = inline uint;
const VkCubicFilterWeightsQCOM VK_CUBIC_FILTER_WEIGHTS_CATMULL_ROM_QCOM = 0;
const VkCubicFilterWeightsQCOM VK_CUBIC_FILTER_WEIGHTS_ZERO_TANGENT_CARDINAL_QCOM = 1;
const VkCubicFilterWeightsQCOM VK_CUBIC_FILTER_WEIGHTS_B_SPLINE_QCOM = 2;
const VkCubicFilterWeightsQCOM VK_CUBIC_FILTER_WEIGHTS_MITCHELL_NETRAVALI_QCOM = 3;

distinct VkBlockMatchWindowCompareModeQCOM = inline uint;
const VkBlockMatchWindowCompareModeQCOM VK_BLOCK_MATCH_WINDOW_COMPARE_MODE_MIN_QCOM = 0;
const VkBlockMatchWindowCompareModeQCOM VK_BLOCK_MATCH_WINDOW_COMPARE_MODE_MAX_QCOM = 1;

distinct VkPhysicalDeviceLayeredApiKHR = inline uint;
const VkPhysicalDeviceLayeredApiKHR VK_PHYSICAL_DEVICE_LAYERED_API_VULKAN_KHR = 0;
const VkPhysicalDeviceLayeredApiKHR VK_PHYSICAL_DEVICE_LAYERED_API_D3D12_KHR = 1;
const VkPhysicalDeviceLayeredApiKHR VK_PHYSICAL_DEVICE_LAYERED_API_METAL_KHR = 2;
const VkPhysicalDeviceLayeredApiKHR VK_PHYSICAL_DEVICE_LAYERED_API_OPENGL_KHR = 3;
const VkPhysicalDeviceLayeredApiKHR VK_PHYSICAL_DEVICE_LAYERED_API_OPENGLES_KHR = 4;

distinct VkLayeredDriverUnderlyingApiMSFT = inline uint;
const VkLayeredDriverUnderlyingApiMSFT VK_LAYERED_DRIVER_UNDERLYING_API_NONE_MSFT = 0;
const VkLayeredDriverUnderlyingApiMSFT VK_LAYERED_DRIVER_UNDERLYING_API_D3D12_MSFT = 1;

distinct VkLatencyMarkerNV = inline uint;
const VkLatencyMarkerNV VK_LATENCY_MARKER_SIMULATION_START_NV = 0;
const VkLatencyMarkerNV VK_LATENCY_MARKER_SIMULATION_END_NV = 1;
const VkLatencyMarkerNV VK_LATENCY_MARKER_RENDERSUBMIT_START_NV = 2;
const VkLatencyMarkerNV VK_LATENCY_MARKER_RENDERSUBMIT_END_NV = 3;
const VkLatencyMarkerNV VK_LATENCY_MARKER_PRESENT_START_NV = 4;
const VkLatencyMarkerNV VK_LATENCY_MARKER_PRESENT_END_NV = 5;
const VkLatencyMarkerNV VK_LATENCY_MARKER_INPUT_SAMPLE_NV = 6;
const VkLatencyMarkerNV VK_LATENCY_MARKER_TRIGGER_FLASH_NV = 7;
const VkLatencyMarkerNV VK_LATENCY_MARKER_OUT_OF_BAND_RENDERSUBMIT_START_NV = 8;
const VkLatencyMarkerNV VK_LATENCY_MARKER_OUT_OF_BAND_RENDERSUBMIT_END_NV = 9;
const VkLatencyMarkerNV VK_LATENCY_MARKER_OUT_OF_BAND_PRESENT_START_NV = 10;
const VkLatencyMarkerNV VK_LATENCY_MARKER_OUT_OF_BAND_PRESENT_END_NV = 11;

distinct VkOutOfBandQueueTypeNV = inline uint;
const VkOutOfBandQueueTypeNV VK_OUT_OF_BAND_QUEUE_TYPE_RENDER_NV = 0;
const VkOutOfBandQueueTypeNV VK_OUT_OF_BAND_QUEUE_TYPE_PRESENT_NV = 1;

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
   char* deviceName;
   uint8_t[VK_UUID_SIZE] pipelineCacheUUID;
   VkPhysicalDeviceLimits limits;
   VkPhysicalDeviceSparseProperties sparseProperties;
}
struct VkExtensionProperties { 
   char* extensionName;
   uint32_t specVersion;
}
struct VkLayerProperties { 
   char* layerName;
   uint32_t specVersion;
   uint32_t implementationVersion;
   char* description;
}
struct VkApplicationInfo { 
   VkStructureType sType;
   void pNext;
   char* pApplicationName;
   uint32_t applicationVersion;
   char* pEngineName;
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
   float* pQueuePriorities;
}
struct VkDeviceCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkDeviceCreateFlags flags;
   uint32_t queueCreateInfoCount;
   VkDeviceQueueCreateInfo* pQueueCreateInfos;
   uint32_t enabledLayerCount;
   char* ppEnabledLayerNames;
   uint32_t enabledExtensionCount;
   char* ppEnabledExtensionNames;
   VkPhysicalDeviceFeatures pEnabledFeatures;
}
struct VkInstanceCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkInstanceCreateFlags flags;
   VkApplicationInfo pApplicationInfo;
   uint32_t enabledLayerCount;
   char* ppEnabledLayerNames;
   uint32_t enabledExtensionCount;
   char* ppEnabledExtensionNames;
}
struct VkQueueFamilyProperties { 
   VkQueueFlags queueFlags;
   uint32_t queueCount;
   uint32_t timestampValidBits;
   VkExtent3D minImageTransferGranularity;
}
struct VkPhysicalDeviceMemoryProperties { 
   uint32_t memoryTypeCount;
   VkMemoryType* memoryTypes;
   uint32_t memoryHeapCount;
   VkMemoryHeap* memoryHeaps;
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
   VkDescriptorImageInfo* pImageInfo;
   VkDescriptorBufferInfo* pBufferInfo;
   VkBufferView* pTexelBufferView;
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
   uint32_t* pQueueFamilyIndices;
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
   uint32_t* pQueueFamilyIndices;
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
   VkSparseMemoryBind* pBinds;
}
struct VkSparseImageOpaqueMemoryBindInfo { 
   VkImage image;
   uint32_t bindCount;
   VkSparseMemoryBind* pBinds;
}
struct VkSparseImageMemoryBindInfo { 
   VkImage image;
   uint32_t bindCount;
   VkSparseImageMemoryBind* pBinds;
}
struct VkBindSparseInfo { 
   VkStructureType sType;
   void pNext;
   uint32_t waitSemaphoreCount;
   VkSemaphore* pWaitSemaphores;
   uint32_t bufferBindCount;
   VkSparseBufferMemoryBindInfo* pBufferBinds;
   uint32_t imageOpaqueBindCount;
   VkSparseImageOpaqueMemoryBindInfo* pImageOpaqueBinds;
   uint32_t imageBindCount;
   VkSparseImageMemoryBindInfo* pImageBinds;
   uint32_t signalSemaphoreCount;
   VkSemaphore* pSignalSemaphores;
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
   VkOffset3D[2] srcOffsets;
   VkImageSubresourceLayers dstSubresource;
   VkOffset3D[2] dstOffsets;
}
struct VkBufferImageCopy { 
   VkDeviceSize bufferOffset;
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
struct VkDescriptorSetLayoutBinding { 
   uint32_t binding;
   VkDescriptorType descriptorType;
   uint32_t descriptorCount;
   VkShaderStageFlags stageFlags;
   VkSampler* pImmutableSamplers;
}
struct VkDescriptorSetLayoutCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkDescriptorSetLayoutCreateFlags flags;
   uint32_t bindingCount;
   VkDescriptorSetLayoutBinding* pBindings;
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
   VkDescriptorPoolSize* pPoolSizes;
}
struct VkDescriptorSetAllocateInfo { 
   VkStructureType sType;
   void pNext;
   VkDescriptorPool descriptorPool;
   uint32_t descriptorSetCount;
   VkDescriptorSetLayout* pSetLayouts;
}
struct VkSpecializationMapEntry { 
   uint32_t constantID;
   uint32_t offset;
   size_t size;
}
struct VkSpecializationInfo { 
   uint32_t mapEntryCount;
   VkSpecializationMapEntry* pMapEntries;
   size_t dataSize;
   void* pData;
}
struct VkPipelineShaderStageCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkPipelineShaderStageCreateFlags flags;
   VkShaderStageFlagBits stage;
   VkShaderModule module;
   char* pName;
   char* pName;
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
   VkVertexInputBindingDescription* pVertexBindingDescriptions;
   uint32_t vertexAttributeDescriptionCount;
   VkVertexInputAttributeDescription* pVertexAttributeDescriptions;
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
   VkViewport* pViewports;
   uint32_t scissorCount;
   VkRect2D* pScissors;
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
   VkSampleMask* pSampleMask;
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
   VkPipelineColorBlendAttachmentState* pAttachments;
   float[4] blendConstants;
}
struct VkPipelineDynamicStateCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkPipelineDynamicStateCreateFlags flags;
   uint32_t dynamicStateCount;
   VkDynamicState* pDynamicStates;
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
   VkPipelineShaderStageCreateInfo* pStages;
   VkPipelineShaderStageCreateInfo* pStages;
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
   void* pInitialData;
}
struct VkPipelineCacheHeaderVersionOne { 
   uint32_t headerSize;
   VkPipelineCacheHeaderVersion headerVersion;
   uint32_t vendorID;
   uint32_t deviceID;
   uint8_t[VK_UUID_SIZE] pipelineCacheUUID;
}
struct VkPipelineCacheStageValidationIndexEntry { 
   uint64_t codeSize;
   uint64_t codeOffset;
}
struct VkPipelineCacheSafetyCriticalIndexEntry { 
   uint8_t[VK_UUID_SIZE] pipelineIdentifier;
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
   VkClearValue* pClearValues;
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
   VkAttachmentReference* pInputAttachments;
   uint32_t colorAttachmentCount;
   VkAttachmentReference* pColorAttachments;
   VkAttachmentReference* pResolveAttachments;
   VkAttachmentReference pDepthStencilAttachment;
   uint32_t preserveAttachmentCount;
   uint32_t* pPreserveAttachments;
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
   VkAttachmentDescription* pAttachments;
   uint32_t subpassCount;
   VkSubpassDescription* pSubpasses;
   uint32_t dependencyCount;
   VkSubpassDependency* pDependencies;
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
   uint32_t[3] maxComputeWorkGroupCount;
   uint32_t maxComputeWorkGroupInvocations;
   uint32_t[3] maxComputeWorkGroupSize;
   uint32_t subPixelPrecisionBits;
   uint32_t subTexelPrecisionBits;
   uint32_t mipmapPrecisionBits;
   uint32_t maxDrawIndexedIndexValue;
   uint32_t maxDrawIndirectCount;
   float maxSamplerLodBias;
   float maxSamplerAnisotropy;
   uint32_t maxViewports;
   uint32_t[2] maxViewportDimensions;
   float[2] viewportBoundsRange;
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
   float[2] pointSizeRange;
   float[2] lineWidthRange;
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
   VkImageView* pAttachments;
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
   VkSemaphore* pWaitSemaphores;
   VkPipelineStageFlags* pWaitDstStageMask;
   uint32_t commandBufferCount;
   VkCommandBuffer* pCommandBuffers;
   uint32_t signalSemaphoreCount;
   VkSemaphore* pSignalSemaphores;
}
struct VkDisplayPropertiesKHR { 
   VkDisplayKHR display;
   char* displayName;
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
   uint32_t* pQueueFamilyIndices;
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
   VkSemaphore* pWaitSemaphores;
   uint32_t swapchainCount;
   VkSwapchainKHR* pSwapchains;
   uint32_t* pImageIndices;
   VkResult* pResults;
}
struct VkLayerSettingEXT { 
   char* pLayerName;
   char* pSettingName;
   VkLayerSettingTypeEXT type;
   uint32_t valueCount;
   void* pValues;
}
struct VkDebugMarkerObjectNameInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkDebugReportObjectTypeEXT objectType;
   uint64_t object;
   char* pObjectName;
}
struct VkDebugMarkerObjectTagInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkDebugReportObjectTypeEXT objectType;
   uint64_t object;
   uint64_t tagName;
   size_t tagSize;
   void* pTag;
}
struct VkDebugMarkerMarkerInfoEXT { 
   VkStructureType sType;
   void pNext;
   char* pMarkerName;
   float[4] color;
}
struct VkPrivateDataSlotCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkPrivateDataSlotCreateFlags flags;
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
struct VkConformanceVersion { 
   uint8_t major;
   uint8_t minor;
   uint8_t subminor;
   uint8_t patch;
}
struct VkPresentRegionKHR { 
   uint32_t rectangleCount;
   VkRectLayerKHR* pRectangles;
}
struct VkRectLayerKHR { 
   VkOffset2D offset;
   VkExtent2D extent;
   uint32_t layer;
}
struct VkExternalMemoryProperties { 
   VkExternalMemoryFeatureFlags externalMemoryFeatures;
   VkExternalMemoryHandleTypeFlags exportFromImportedHandleTypes;
   VkExternalMemoryHandleTypeFlags compatibleHandleTypes;
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
struct VkImportSemaphoreWin32HandleInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkSemaphore semaphore;
   VkSemaphoreImportFlags flags;
   VkExternalSemaphoreHandleTypeFlagBits handleType;
   HANDLE handle;
   LPCWSTR name;
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
struct VkImportFenceWin32HandleInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkFence fence;
   VkFenceImportFlags flags;
   VkExternalFenceHandleTypeFlagBits handleType;
   HANDLE handle;
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
struct VkPhysicalDeviceGroupProperties { 
   VkStructureType sType;
   void pNext;
   uint32_t physicalDeviceCount;
   VkPhysicalDevice* physicalDevices;
   VkBool32 subsetAllocation;
}
struct VkBindBufferMemoryInfo { 
   VkStructureType sType;
   void pNext;
   VkBuffer buffer;
   VkDeviceMemory memory;
   VkDeviceSize memoryOffset;
}
struct VkBindImageMemoryInfo { 
   VkStructureType sType;
   void pNext;
   VkImage image;
   VkDeviceMemory memory;
   VkDeviceSize memoryOffset;
}
struct VkDeviceGroupPresentCapabilitiesKHR { 
   VkStructureType sType;
   void pNext;
   uint32_t[VK_MAX_DEVICE_GROUP_SIZE] presentMask;
   VkDeviceGroupPresentModeFlagsKHR modes;
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
struct VkDescriptorUpdateTemplateEntry { 
   uint32_t dstBinding;
   uint32_t dstArrayElement;
   uint32_t descriptorCount;
   VkDescriptorType descriptorType;
   size_t offset;
   size_t stride;
}
struct VkDescriptorUpdateTemplateCreateInfo { 
   VkStructureType sType;
   void pNext;
   VkDescriptorUpdateTemplateCreateFlags flags;
   uint32_t descriptorUpdateEntryCount;
   VkDescriptorUpdateTemplateEntry* pDescriptorUpdateEntries;
   VkDescriptorUpdateTemplateType templateType;
   VkDescriptorSetLayout descriptorSetLayout;
   VkPipelineBindPoint pipelineBindPoint;
   VkPipelineLayout pipelineLayout;
   uint32_t set;
}
struct VkXYColorEXT { 
   float x;
   float y;
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
struct VkInputAttachmentAspectReference { 
   uint32_t subpass;
   uint32_t inputAttachmentIndex;
   VkImageAspectFlags aspectMask;
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
struct VkConditionalRenderingBeginInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkBuffer buffer;
   VkDeviceSize offset;
   VkConditionalRenderingFlagsEXT flags;
}
struct VkDeviceQueueInfo2 { 
   VkStructureType sType;
   void pNext;
   VkDeviceQueueCreateFlags flags;
   uint32_t queueFamilyIndex;
   uint32_t queueIndex;
}
struct VkSampleLocationEXT { 
   float x;
   float y;
}
struct VkAttachmentSampleLocationsEXT { 
   uint32_t attachmentIndex;
   VkSampleLocationsInfoEXT sampleLocationsInfo;
}
struct VkSubpassSampleLocationsEXT { 
   uint32_t subpassIndex;
   VkSampleLocationsInfoEXT sampleLocationsInfo;
}
struct VkMultisamplePropertiesEXT { 
   VkStructureType sType;
   void pNext;
   VkExtent2D maxSampleLocationGridSize;
}
struct VkValidationCacheCreateInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkValidationCacheCreateFlagsEXT flags;
   size_t initialDataSize;
   void* pInitialData;
}
struct VkPhysicalDeviceLayeredApiPropertiesKHR { 
   VkStructureType sType;
   void pNext;
   uint32_t vendorID;
   uint32_t deviceID;
   VkPhysicalDeviceLayeredApiKHR layeredAPI;
   char[VK_MAX_PHYSICAL_DEVICE_NAME_SIZE] deviceName;
}
struct VkRenderingAreaInfoKHR { 
   VkStructureType sType;
   void pNext;
   uint32_t viewMask;
   uint32_t colorAttachmentCount;
   VkFormat* pColorAttachmentFormats;
   VkFormat depthAttachmentFormat;
   VkFormat stencilAttachmentFormat;
}
struct VkDescriptorSetLayoutSupport { 
   VkStructureType sType;
   void pNext;
   VkBool32 supported;
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
   uint32_t[3] computeWorkGroupSize;
}
struct VkDebugUtilsObjectTagInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkObjectType objectType;
   uint64_t objectHandle;
   uint64_t tagName;
   size_t tagSize;
   void* pTag;
}
struct VkDebugUtilsLabelEXT { 
   VkStructureType sType;
   void pNext;
   char* pLabelName;
   float[4] color;
}
struct VkDebugUtilsMessengerCallbackDataEXT { 
   VkStructureType sType;
   void pNext;
   VkDebugUtilsMessengerCallbackDataFlagsEXT flags;
   char* pMessageIdName;
   int32_t messageIdNumber;
   char* pMessage;
   uint32_t queueLabelCount;
   VkDebugUtilsLabelEXT* pQueueLabels;
   uint32_t cmdBufLabelCount;
   VkDebugUtilsLabelEXT* pCmdBufLabels;
   uint32_t objectCount;
   VkDebugUtilsObjectNameInfoEXT* pObjects;
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
struct VkMemoryHostPointerPropertiesEXT { 
   VkStructureType sType;
   void pNext;
   uint32_t memoryTypeBits;
}
struct VkCalibratedTimestampInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkTimeDomainKHR timeDomain;
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
   uint32_t attachment;
   VkImageLayout layout;
   VkImageAspectFlags aspectMask;
}
struct VkSubpassDescription2 { 
   VkStructureType sType;
   void pNext;
   VkSubpassDescriptionFlags flags;
   VkPipelineBindPoint pipelineBindPoint;
   uint32_t viewMask;
   uint32_t inputAttachmentCount;
   VkAttachmentReference2* pInputAttachments;
   uint32_t colorAttachmentCount;
   VkAttachmentReference2* pColorAttachments;
   VkAttachmentReference2* pResolveAttachments;
   VkAttachmentReference2 pDepthStencilAttachment;
   uint32_t preserveAttachmentCount;
   uint32_t* pPreserveAttachments;
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
struct VkRenderPassCreateInfo2 { 
   VkStructureType sType;
   void pNext;
   VkRenderPassCreateFlags flags;
   uint32_t attachmentCount;
   VkAttachmentDescription2* pAttachments;
   uint32_t subpassCount;
   VkSubpassDescription2* pSubpasses;
   uint32_t dependencyCount;
   VkSubpassDependency2* pDependencies;
   uint32_t correlatedViewMaskCount;
   uint32_t* pCorrelatedViewMasks;
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
struct VkSemaphoreWaitInfo { 
   VkStructureType sType;
   void pNext;
   VkSemaphoreWaitFlags flags;
   uint32_t semaphoreCount;
   VkSemaphore* pSemaphores;
   uint64_t* pValues;
}
struct VkSemaphoreSignalInfo { 
   VkStructureType sType;
   void pNext;
   VkSemaphore semaphore;
   uint64_t value;
}
struct VkVertexInputBindingDivisorDescriptionKHR { 
   uint32_t binding;
   uint32_t divisor;
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
struct VkDrawMeshTasksIndirectCommandEXT { 
   uint32_t groupCountX;
   uint32_t groupCountY;
   uint32_t groupCountZ;
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
struct VkRayTracingPipelineCreateInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkPipelineCreateFlags flags;
   uint32_t stageCount;
   VkPipelineShaderStageCreateInfo* pStages;
   uint32_t groupCount;
   VkRayTracingShaderGroupCreateInfoKHR* pGroups;
   uint32_t maxPipelineRayRecursionDepth;
   VkPipelineLibraryCreateInfoKHR pLibraryInfo;
   VkRayTracingPipelineInterfaceCreateInfoKHR pLibraryInterface;
   VkPipelineDynamicStateCreateInfo pDynamicState;
   VkPipelineLayout layout;
   VkPipeline basePipelineHandle;
   int32_t basePipelineIndex;
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
struct VkDrmFormatModifierPropertiesEXT { 
   uint64_t drmFormatModifier;
   uint32_t drmFormatModifierPlaneCount;
   VkFormatFeatureFlags drmFormatModifierTilingFeatures;
}
struct VkImageDrmFormatModifierPropertiesEXT { 
   VkStructureType sType;
   void pNext;
   uint64_t drmFormatModifier;
}
struct VkBufferDeviceAddressInfo { 
   VkStructureType sType;
   void pNext;
   VkBuffer buffer;
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
   VkFormat* pViewFormats;
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
struct VkPipelineCreationFeedback { 
   VkPipelineCreationFeedbackFlags flags;
   uint64_t duration;
}
struct VkPerformanceCounterKHR { 
   VkStructureType sType;
   void pNext;
   VkPerformanceCounterUnitKHR unit;
   VkPerformanceCounterScopeKHR scope;
   VkPerformanceCounterStorageKHR storage;
   uint8_t[VK_UUID_SIZE] uuid;
}
struct VkPerformanceCounterDescriptionKHR { 
   VkStructureType sType;
   void pNext;
   VkPerformanceCounterDescriptionFlagsKHR flags;
   char* name;
   char* category;
   char* description;
}
struct VkAcquireProfilingLockInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkAcquireProfilingLockFlagsKHR flags;
   uint64_t timeout;
}
struct VkHeadlessSurfaceCreateInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkHeadlessSurfaceCreateFlagsEXT flags;
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
struct VkPipelineInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkPipeline pipeline;
}
struct VkPipelineExecutablePropertiesKHR { 
   VkStructureType sType;
   void pNext;
   VkShaderStageFlags stages;
   char* name;
   char* description;
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
   char* name;
   char* description;
   VkPipelineExecutableStatisticFormatKHR format;
   VkPipelineExecutableStatisticValueKHR value;
}
struct VkPipelineExecutableInternalRepresentationKHR { 
   VkStructureType sType;
   void pNext;
   char* name;
   char* description;
   VkBool32 isText;
   size_t dataSize;
   void* pData;
}
struct VkDeviceMemoryOpaqueCaptureAddressInfo { 
   VkStructureType sType;
   void pNext;
   VkDeviceMemory memory;
}
struct VkFaultData { 
   VkStructureType sType;
   void pNext;
   VkFaultLevel faultLevel;
   VkFaultType faultType;
}
struct VkPhysicalDeviceToolProperties { 
   VkStructureType sType;
   void pNext;
   char* name;
   char* version;
   VkToolPurposeFlags purposes;
   char* description;
   char* layer;
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
   VkAccelerationStructureGeometryKHR* pGeometries;
   VkAccelerationStructureGeometryKHR* ppGeometries;
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
struct VkTransformMatrixKHR { 
   float[3][4] matrix;
}
struct VkAccelerationStructureInstanceKHR { 
   VkTransformMatrixKHR transform;
   uint32_t[:24] instanceCustomIndex;
   uint32_t[:8] mask;
   uint32_t[:24] instanceShaderBindingTableRecordOffset;
   VkGeometryInstanceFlagsKHR flags;
   uint64_t accelerationStructureReference;
}
struct VkAccelerationStructureDeviceAddressInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkAccelerationStructureKHR accelerationStructure;
}
struct VkAccelerationStructureVersionInfoKHR { 
   VkStructureType sType;
   void pNext;
   uint8_t* pVersionData;
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
struct VkRefreshObjectKHR { 
   VkObjectType objectType;
   uint64_t objectHandle;
   VkRefreshObjectFlagsKHR flags;
}
struct VkRefreshObjectListKHR { 
   VkStructureType sType;
   void pNext;
   uint32_t objectCount;
   VkRefreshObjectKHR* pObjects;
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
   VkOffset3D[2] srcOffsets;
   VkImageSubresourceLayers dstSubresource;
   VkOffset3D[2] dstOffsets;
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
   uint32_t regionCount;
   VkBufferCopy2* pRegions;
}
struct VkCopyImageInfo2 { 
   VkStructureType sType;
   void pNext;
   VkImage srcImage;
   VkImageLayout srcImageLayout;
   VkImage dstImage;
   VkImageLayout dstImageLayout;
   uint32_t regionCount;
   VkImageCopy2* pRegions;
}
struct VkBlitImageInfo2 { 
   VkStructureType sType;
   void pNext;
   VkImage srcImage;
   VkImageLayout srcImageLayout;
   VkImage dstImage;
   VkImageLayout dstImageLayout;
   uint32_t regionCount;
   VkImageBlit2* pRegions;
   VkFilter filter;
}
struct VkCopyBufferToImageInfo2 { 
   VkStructureType sType;
   void pNext;
   VkBuffer srcBuffer;
   VkImage dstImage;
   VkImageLayout dstImageLayout;
   uint32_t regionCount;
   VkBufferImageCopy2* pRegions;
}
struct VkCopyImageToBufferInfo2 { 
   VkStructureType sType;
   void pNext;
   VkImage srcImage;
   VkImageLayout srcImageLayout;
   VkBuffer dstBuffer;
   uint32_t regionCount;
   VkBufferImageCopy2* pRegions;
}
struct VkResolveImageInfo2 { 
   VkStructureType sType;
   void pNext;
   VkImage srcImage;
   VkImageLayout srcImageLayout;
   VkImage dstImage;
   VkImageLayout dstImageLayout;
   uint32_t regionCount;
   VkImageResolve2* pRegions;
}
struct VkPhysicalDeviceFragmentShadingRateKHR { 
   VkStructureType sType;
   void pNext;
   VkSampleCountFlags sampleCounts;
   VkExtent2D fragmentSize;
}
struct VkAccelerationStructureBuildSizesInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkDeviceSize accelerationStructureSize;
   VkDeviceSize updateScratchSize;
   VkDeviceSize buildScratchSize;
}
struct VkMutableDescriptorTypeListEXT { 
   uint32_t descriptorTypeCount;
   VkDescriptorType* pDescriptorTypes;
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
struct VkDependencyInfo { 
   VkStructureType sType;
   void pNext;
   VkDependencyFlags dependencyFlags;
   uint32_t memoryBarrierCount;
   VkMemoryBarrier2* pMemoryBarriers;
   uint32_t bufferMemoryBarrierCount;
   VkBufferMemoryBarrier2* pBufferMemoryBarriers;
   uint32_t imageMemoryBarrierCount;
   VkImageMemoryBarrier2* pImageMemoryBarriers;
}
struct VkSemaphoreSubmitInfo { 
   VkStructureType sType;
   void pNext;
   VkSemaphore semaphore;
   uint64_t value;
   VkPipelineStageFlags2 stageMask;
   uint32_t deviceIndex;
}
struct VkCommandBufferSubmitInfo { 
   VkStructureType sType;
   void pNext;
   VkCommandBuffer commandBuffer;
   uint32_t deviceMask;
}
struct VkSubmitInfo2 { 
   VkStructureType sType;
   void pNext;
   VkSubmitFlags flags;
   uint32_t waitSemaphoreInfoCount;
   VkSemaphoreSubmitInfo* pWaitSemaphoreInfos;
   uint32_t commandBufferInfoCount;
   VkCommandBufferSubmitInfo* pCommandBufferInfos;
   uint32_t signalSemaphoreInfoCount;
   VkSemaphoreSubmitInfo* pSignalSemaphoreInfos;
}
struct VkMemoryToImageCopyEXT { 
   VkStructureType sType;
   void pNext;
   void pHostPointer;
   uint32_t memoryRowLength;
   uint32_t memoryImageHeight;
   VkImageSubresourceLayers imageSubresource;
   VkOffset3D imageOffset;
   VkExtent3D imageExtent;
}
struct VkImageToMemoryCopyEXT { 
   VkStructureType sType;
   void pNext;
   void pHostPointer;
   uint32_t memoryRowLength;
   uint32_t memoryImageHeight;
   VkImageSubresourceLayers imageSubresource;
   VkOffset3D imageOffset;
   VkExtent3D imageExtent;
}
struct VkCopyMemoryToImageInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkHostImageCopyFlagsEXT flags;
   VkImage dstImage;
   VkImageLayout dstImageLayout;
   uint32_t regionCount;
   VkMemoryToImageCopyEXT* pRegions;
}
struct VkCopyImageToMemoryInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkHostImageCopyFlagsEXT flags;
   VkImage srcImage;
   VkImageLayout srcImageLayout;
   uint32_t regionCount;
   VkImageToMemoryCopyEXT* pRegions;
}
struct VkCopyImageToImageInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkHostImageCopyFlagsEXT flags;
   VkImage srcImage;
   VkImageLayout srcImageLayout;
   VkImage dstImage;
   VkImageLayout dstImageLayout;
   uint32_t regionCount;
   VkImageCopy2* pRegions;
}
struct VkHostImageLayoutTransitionInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkImage image;
   VkImageLayout oldLayout;
   VkImageLayout newLayout;
   VkImageSubresourceRange subresourceRange;
}
struct VkPipelinePoolSize { 
   VkStructureType sType;
   void pNext;
   VkDeviceSize poolEntrySize;
   uint32_t poolEntryCount;
}
struct VkCommandPoolMemoryConsumption { 
   VkStructureType sType;
   void pNext;
   VkDeviceSize commandPoolAllocated;
   VkDeviceSize commandPoolReservedSize;
   VkDeviceSize commandBufferAllocated;
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
   VkVideoReferenceSlotInfoKHR* pReferenceSlots;
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
   VkVideoReferenceSlotInfoKHR* pReferenceSlots;
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
   VkVideoReferenceSlotInfoKHR* pReferenceSlots;
   uint32_t precedingExternallyEncodedBytes;
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
struct VkVideoEncodeRateControlLayerInfoKHR { 
   VkStructureType sType;
   void pNext;
   uint64_t averageBitrate;
   uint64_t maxBitrate;
   uint32_t frameRateNumerator;
   uint32_t frameRateDenominator;
}
struct VkVideoEncodeH264NaluSliceInfoKHR { 
   VkStructureType sType;
   void pNext;
   int32_t constantQp;
   StdVideoEncodeH264SliceHeader pStdSliceHeader;
}
struct VkVideoEncodeH264QpKHR { 
   int32_t qpI;
   int32_t qpP;
   int32_t qpB;
}
struct VkVideoEncodeH264FrameSizeKHR { 
   uint32_t frameISize;
   uint32_t framePSize;
   uint32_t frameBSize;
}
struct VkVideoEncodeH265NaluSliceSegmentInfoKHR { 
   VkStructureType sType;
   void pNext;
   int32_t constantQp;
   StdVideoEncodeH265SliceSegmentHeader pStdSliceSegmentHeader;
}
struct VkVideoEncodeH265QpKHR { 
   int32_t qpI;
   int32_t qpP;
   int32_t qpB;
}
struct VkVideoEncodeH265FrameSizeKHR { 
   uint32_t frameISize;
   uint32_t framePSize;
   uint32_t frameBSize;
}
struct VkCuModuleCreateInfoNVX { 
   VkStructureType sType;
   void pNext;
   size_t dataSize;
   void* pData;
}
struct VkCuFunctionCreateInfoNVX { 
   VkStructureType sType;
   void pNext;
   VkCuModuleNVX module;
   char* pName;
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
   void* pParams;
   size_t extraCount;
   void* pExtras;
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
   VkSysmemColorSpaceFUCHSIA* pColorSpaces;
}
struct VkImageConstraintsInfoFUCHSIA { 
   VkStructureType sType;
   void pNext;
   uint32_t formatConstraintsCount;
   VkImageFormatConstraintsInfoFUCHSIA* pFormatConstraints;
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
struct VkDrmFormatModifierProperties2EXT { 
   uint64_t drmFormatModifier;
   uint32_t drmFormatModifierPlaneCount;
   VkFormatFeatureFlags2 drmFormatModifierTilingFeatures;
}
struct VkRenderingInfo { 
   VkStructureType sType;
   void pNext;
   VkRenderingFlags flags;
   VkRect2D renderArea;
   uint32_t layerCount;
   uint32_t viewMask;
   uint32_t colorAttachmentCount;
   VkRenderingAttachmentInfo* pColorAttachments;
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
struct VkShaderModuleIdentifierEXT { 
   VkStructureType sType;
   void pNext;
   uint32_t identifierSize;
   uint8_t* identifier;
}
struct VkImageSubresource2KHR { 
   VkStructureType sType;
   void pNext;
   VkImageSubresource imageSubresource;
}
struct VkSubresourceLayout2KHR { 
   VkStructureType sType;
   void pNext;
   VkSubresourceLayout subresourceLayout;
}
struct VkRenderPassCreationFeedbackInfoEXT { 
   uint32_t postMergeSubpassCount;
}
struct VkRenderPassSubpassFeedbackInfoEXT { 
   VkSubpassMergeStatusEXT subpassMergeStatus;
   char* description;
   uint32_t postMergeIndex;
}
struct VkMicromapBuildInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkMicromapTypeEXT type;
   VkBuildMicromapFlagsEXT flags;
   VkBuildMicromapModeEXT mode;
   VkMicromapEXT dstMicromap;
   uint32_t usageCountsCount;
   VkMicromapUsageEXT* pUsageCounts;
   VkMicromapUsageEXT* ppUsageCounts;
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
   uint8_t* pVersionData;
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
struct VkPipelinePropertiesIdentifierEXT { 
   VkStructureType sType;
   void pNext;
   uint8_t[VK_UUID_SIZE] pipelineIdentifier;
}
struct VkExportMetalObjectsInfoEXT { 
   VkStructureType sType;
   void pNext;
}
struct VkTilePropertiesQCOM { 
   VkStructureType sType;
   void pNext;
   VkExtent3D tileSize;
   VkExtent2D apronSize;
   VkOffset2D origin;
}
struct VkDeviceFaultAddressInfoEXT { 
   VkDeviceFaultAddressTypeEXT addressType;
   VkDeviceAddress reportedAddress;
   VkDeviceSize addressPrecision;
}
struct VkDeviceFaultVendorInfoEXT { 
   char* description;
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
   char* description;
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
   uint8_t[VK_UUID_SIZE] pipelineCacheUUID;
   uint32_t applicationNameOffset;
   uint32_t applicationVersion;
   uint32_t engineNameOffset;
   uint32_t engineVersion;
   uint32_t apiVersion;
}
struct VkDepthBiasInfoEXT { 
   VkStructureType sType;
   void pNext;
   float depthBiasConstantFactor;
   float depthBiasClamp;
   float depthBiasSlopeFactor;
}
struct VkReleaseSwapchainImagesInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkSwapchainKHR swapchain;
   uint32_t imageIndexCount;
   uint32_t* pImageIndices;
}
struct VkDirectDriverLoadingInfoLUNARG { 
   VkStructureType sType;
   void pNext;
   VkDirectDriverLoadingFlagsLUNARG flags;
   PFN_vkGetInstanceProcAddrLUNARG pfnGetInstanceProcAddr;
}
struct VkDeviceImageSubresourceInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkImageCreateInfo pCreateInfo;
   VkImageSubresource2KHR pSubresource;
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
struct VkShaderCreateInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkShaderCreateFlagsEXT flags;
   VkShaderStageFlagBits stage;
   VkShaderStageFlags nextStage;
   VkShaderCodeTypeEXT codeType;
   size_t codeSize;
   void* pCode;
   char* pName;
   uint32_t setLayoutCount;
   VkDescriptorSetLayout* pSetLayouts;
   uint32_t pushConstantRangeCount;
   VkPushConstantRange* pPushConstantRanges;
   VkSpecializationInfo pSpecializationInfo;
}
struct VkScreenBufferPropertiesQNX { 
   VkStructureType sType;
   void pNext;
   VkDeviceSize allocationSize;
   uint32_t memoryTypeBits;
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
struct VkExecutionGraphPipelineCreateInfoAMDX { 
   VkStructureType sType;
   void pNext;
   VkPipelineCreateFlags flags;
   uint32_t stageCount;
   VkPipelineShaderStageCreateInfo* pStages;
   VkPipelineLibraryCreateInfoKHR pLibraryInfo;
   VkPipelineLayout layout;
   VkPipeline basePipelineHandle;
   int32_t basePipelineIndex;
}
struct VkExecutionGraphPipelineScratchSizeAMDX { 
   VkStructureType sType;
   void pNext;
   VkDeviceSize size;
}
struct VkDispatchGraphInfoAMDX { 
   uint32_t nodeIndex;
   uint32_t payloadCount;
   VkDeviceOrHostAddressConstAMDX payloads;
   uint64_t payloadStride;
}
struct VkDispatchGraphCountInfoAMDX { 
   uint32_t count;
   VkDeviceOrHostAddressConstAMDX infos;
   uint64_t stride;
}
struct VkAntiLagDataAMD { 
   VkStructureType sType;
   void pNext;
   VkAntiLagModeAMD mode;
   uint32_t maxFPS;
   VkAntiLagPresentationInfoAMD pPresentationInfo;
}
struct VkAntiLagPresentationInfoAMD { 
   VkStructureType sType;
   void pNext;
   VkAntiLagStageAMD stage;
   uint64_t frameIndex;
}
struct VkBindDescriptorSetsInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkShaderStageFlags stageFlags;
   VkPipelineLayout layout;
   uint32_t firstSet;
   uint32_t descriptorSetCount;
   VkDescriptorSet* pDescriptorSets;
   uint32_t dynamicOffsetCount;
   uint32_t* pDynamicOffsets;
}
struct VkPushConstantsInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkPipelineLayout layout;
   VkShaderStageFlags stageFlags;
   uint32_t offset;
   uint32_t size;
   void* pValues;
}
struct VkPushDescriptorSetInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkShaderStageFlags stageFlags;
   VkPipelineLayout layout;
   uint32_t set;
   uint32_t descriptorWriteCount;
   VkWriteDescriptorSet* pDescriptorWrites;
}
struct VkPushDescriptorSetWithTemplateInfoKHR { 
   VkStructureType sType;
   void pNext;
   VkDescriptorUpdateTemplate descriptorUpdateTemplate;
   VkPipelineLayout layout;
   uint32_t set;
   void pData;
}
struct VkSetDescriptorBufferOffsetsInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkShaderStageFlags stageFlags;
   VkPipelineLayout layout;
   uint32_t firstSet;
   uint32_t setCount;
   uint32_t* pBufferIndices;
   VkDeviceSize* pOffsets;
}
struct VkBindDescriptorBufferEmbeddedSamplersInfoEXT { 
   VkStructureType sType;
   void pNext;
   VkShaderStageFlags stageFlags;
   VkPipelineLayout layout;
   uint32_t set;
}
struct VkRenderPassStripeInfoARM { 
   VkStructureType sType;
   void pNext;
   VkRect2D stripeArea;
}
union VkClearColorValue { 
   float[4] float32;
   int32_t[4] int32;
   uint32_t[4] uint32;
}
union VkClearValue { 
   VkClearColorValue color;
   VkClearDepthStencilValue depthStencil;
}
union VkPerformanceCounterResultKHR { 
   int32_t int32;
   int64_t int64;
   uint32_t uint32;
   uint64_t uint64;
   float float32;
   double float64;
}
union VkPerformanceValueDataINTEL { 
   uint32_t value32;
   uint64_t value64;
   float valueFloat;
   VkBool32 valueBool;
   char valueString;
}
union VkPipelineExecutableStatisticValueKHR { 
   VkBool32 b32;
   int64_t i64;
   uint64_t u64;
   double f64;
}
union VkDeviceOrHostAddressKHR { 
   VkDeviceAddress deviceAddress;
   void hostAddress;
}
union VkDeviceOrHostAddressConstKHR { 
   VkDeviceAddress deviceAddress;
   void hostAddress;
}
union VkDeviceOrHostAddressConstAMDX { 
   VkDeviceAddress deviceAddress;
   void hostAddress;
}
union VkAccelerationStructureGeometryDataKHR { 
   VkAccelerationStructureGeometryTrianglesDataKHR triangles;
   VkAccelerationStructureGeometryAabbsDataKHR aabbs;
   VkAccelerationStructureGeometryInstancesDataKHR instances;
}
union VkDescriptorDataEXT { 
   VkSampler pSampler;
   VkDescriptorImageInfo pCombinedImageSampler;
   VkDescriptorImageInfo pInputAttachmentImage;
   VkDescriptorImageInfo pSampledImage;
   VkDescriptorImageInfo pStorageImage;
   VkDescriptorAddressInfoEXT pUniformTexelBuffer;
   VkDescriptorAddressInfoEXT pStorageTexelBuffer;
   VkDescriptorAddressInfoEXT pUniformBuffer;
   VkDescriptorAddressInfoEXT pStorageBuffer;
   VkDeviceAddress accelerationStructure;
}
union VkAccelerationStructureMotionInstanceDataNV { 
   VkAccelerationStructureInstanceKHR staticInstance;
   VkAccelerationStructureMatrixMotionInstanceNV matrixMotionInstance;
   VkAccelerationStructureSRTMotionInstanceNV srtMotionInstance;
}
extern fn VkResult vkCreateInstance (VkInstanceCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkInstance pInstance) @extern("vkCreateInstance"); 
extern fn void vkDestroyInstance (VkInstance instance, VkAllocationCallbacks pAllocator) @extern("vkDestroyInstance"); 
extern fn VkResult vkEnumeratePhysicalDevices (VkInstance instance, uint32_t pPhysicalDeviceCount, VkPhysicalDevice pPhysicalDevices) @extern("vkEnumeratePhysicalDevices"); 
extern fn PFN_vkVoidFunction vkGetDeviceProcAddr (VkDevice device, char pName) @extern("vkGetDeviceProcAddr"); 
extern fn PFN_vkVoidFunction vkGetInstanceProcAddr (VkInstance instance, char pName) @extern("vkGetInstanceProcAddr"); 
extern fn void vkGetPhysicalDeviceProperties (VkPhysicalDevice physicalDevice, VkPhysicalDeviceProperties pProperties) @extern("vkGetPhysicalDeviceProperties"); 
extern fn void vkGetPhysicalDeviceQueueFamilyProperties (VkPhysicalDevice physicalDevice, uint32_t pQueueFamilyPropertyCount, VkQueueFamilyProperties pQueueFamilyProperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties"); 
extern fn void vkGetPhysicalDeviceMemoryProperties (VkPhysicalDevice physicalDevice, VkPhysicalDeviceMemoryProperties pMemoryProperties) @extern("vkGetPhysicalDeviceMemoryProperties"); 
extern fn void vkGetPhysicalDeviceFeatures (VkPhysicalDevice physicalDevice, VkPhysicalDeviceFeatures pFeatures) @extern("vkGetPhysicalDeviceFeatures"); 
extern fn void vkGetPhysicalDeviceFormatProperties (VkPhysicalDevice physicalDevice, VkFormat format, VkFormatProperties pFormatProperties) @extern("vkGetPhysicalDeviceFormatProperties"); 
extern fn VkResult vkGetPhysicalDeviceImageFormatProperties (VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkImageFormatProperties pImageFormatProperties) @extern("vkGetPhysicalDeviceImageFormatProperties"); 
extern fn VkResult vkCreateDevice (VkPhysicalDevice physicalDevice, VkDeviceCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkDevice pDevice) @extern("vkCreateDevice"); 
extern fn void vkDestroyDevice (VkDevice device, VkAllocationCallbacks pAllocator) @extern("vkDestroyDevice"); 
extern fn VkResult vkEnumerateInstanceVersion (uint32_t pApiVersion) @extern("vkEnumerateInstanceVersion"); 
extern fn VkResult vkEnumerateInstanceLayerProperties (uint32_t pPropertyCount, VkLayerProperties pProperties) @extern("vkEnumerateInstanceLayerProperties"); 
extern fn VkResult vkEnumerateInstanceExtensionProperties (char pLayerName, uint32_t pPropertyCount, VkExtensionProperties pProperties) @extern("vkEnumerateInstanceExtensionProperties"); 
extern fn VkResult vkEnumerateDeviceLayerProperties (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkLayerProperties pProperties) @extern("vkEnumerateDeviceLayerProperties"); 
extern fn VkResult vkEnumerateDeviceExtensionProperties (VkPhysicalDevice physicalDevice, char pLayerName, uint32_t pPropertyCount, VkExtensionProperties pProperties) @extern("vkEnumerateDeviceExtensionProperties"); 
extern fn void vkGetDeviceQueue (VkDevice device, uint32_t queueFamilyIndex, uint32_t queueIndex, VkQueue pQueue) @extern("vkGetDeviceQueue"); 
extern fn VkResult vkQueueSubmit (VkQueue queue, uint32_t submitCount, VkSubmitInfo pSubmits, VkFence fence) @extern("vkQueueSubmit"); 
extern fn VkResult vkQueueWaitIdle (VkQueue queue) @extern("vkQueueWaitIdle"); 
extern fn VkResult vkDeviceWaitIdle (VkDevice device) @extern("vkDeviceWaitIdle"); 
extern fn VkResult vkAllocateMemory (VkDevice device, VkMemoryAllocateInfo pAllocateInfo, VkAllocationCallbacks pAllocator, VkDeviceMemory pMemory) @extern("vkAllocateMemory"); 
extern fn void vkFreeMemory (VkDevice device, VkDeviceMemory memory, VkAllocationCallbacks pAllocator) @extern("vkFreeMemory"); 
extern fn VkResult vkMapMemory (VkDevice device, VkDeviceMemory memory, VkDeviceSize offset, VkDeviceSize size, VkMemoryMapFlags flags, void ppData) @extern("vkMapMemory"); 
extern fn void vkUnmapMemory (VkDevice device, VkDeviceMemory memory) @extern("vkUnmapMemory"); 
extern fn VkResult vkFlushMappedMemoryRanges (VkDevice device, uint32_t memoryRangeCount, VkMappedMemoryRange pMemoryRanges) @extern("vkFlushMappedMemoryRanges"); 
extern fn VkResult vkInvalidateMappedMemoryRanges (VkDevice device, uint32_t memoryRangeCount, VkMappedMemoryRange pMemoryRanges) @extern("vkInvalidateMappedMemoryRanges"); 
extern fn void vkGetDeviceMemoryCommitment (VkDevice device, VkDeviceMemory memory, VkDeviceSize pCommittedMemoryInBytes) @extern("vkGetDeviceMemoryCommitment"); 
extern fn void vkGetBufferMemoryRequirements (VkDevice device, VkBuffer buffer, VkMemoryRequirements pMemoryRequirements) @extern("vkGetBufferMemoryRequirements"); 
extern fn VkResult vkBindBufferMemory (VkDevice device, VkBuffer buffer, VkDeviceMemory memory, VkDeviceSize memoryOffset) @extern("vkBindBufferMemory"); 
extern fn void vkGetImageMemoryRequirements (VkDevice device, VkImage image, VkMemoryRequirements pMemoryRequirements) @extern("vkGetImageMemoryRequirements"); 
extern fn VkResult vkBindImageMemory (VkDevice device, VkImage image, VkDeviceMemory memory, VkDeviceSize memoryOffset) @extern("vkBindImageMemory"); 
extern fn void vkGetImageSparseMemoryRequirements (VkDevice device, VkImage image, uint32_t pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements pSparseMemoryRequirements) @extern("vkGetImageSparseMemoryRequirements"); 
extern fn void vkGetPhysicalDeviceSparseImageFormatProperties (VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkSampleCountFlagBits samples, VkImageUsageFlags usage, VkImageTiling tiling, uint32_t pPropertyCount, VkSparseImageFormatProperties pProperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties"); 
extern fn VkResult vkQueueBindSparse (VkQueue queue, uint32_t bindInfoCount, VkBindSparseInfo pBindInfo, VkFence fence) @extern("vkQueueBindSparse"); 
extern fn VkResult vkCreateFence (VkDevice device, VkFenceCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkFence pFence) @extern("vkCreateFence"); 
extern fn void vkDestroyFence (VkDevice device, VkFence fence, VkAllocationCallbacks pAllocator) @extern("vkDestroyFence"); 
extern fn VkResult vkResetFences (VkDevice device, uint32_t fenceCount, VkFence pFences) @extern("vkResetFences"); 
extern fn VkResult vkGetFenceStatus (VkDevice device, VkFence fence) @extern("vkGetFenceStatus"); 
extern fn VkResult vkWaitForFences (VkDevice device, uint32_t fenceCount, VkFence pFences, VkBool32 waitAll, uint64_t timeout) @extern("vkWaitForFences"); 
extern fn VkResult vkCreateSemaphore (VkDevice device, VkSemaphoreCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkSemaphore pSemaphore) @extern("vkCreateSemaphore"); 
extern fn void vkDestroySemaphore (VkDevice device, VkSemaphore semaphore, VkAllocationCallbacks pAllocator) @extern("vkDestroySemaphore"); 
extern fn VkResult vkCreateEvent (VkDevice device, VkEventCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkEvent pEvent) @extern("vkCreateEvent"); 
extern fn void vkDestroyEvent (VkDevice device, VkEvent event, VkAllocationCallbacks pAllocator) @extern("vkDestroyEvent"); 
extern fn VkResult vkGetEventStatus (VkDevice device, VkEvent event) @extern("vkGetEventStatus"); 
extern fn VkResult vkSetEvent (VkDevice device, VkEvent event) @extern("vkSetEvent"); 
extern fn VkResult vkResetEvent (VkDevice device, VkEvent event) @extern("vkResetEvent"); 
extern fn VkResult vkCreateQueryPool (VkDevice device, VkQueryPoolCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkQueryPool pQueryPool) @extern("vkCreateQueryPool"); 
extern fn void vkDestroyQueryPool (VkDevice device, VkQueryPool queryPool, VkAllocationCallbacks pAllocator) @extern("vkDestroyQueryPool"); 
extern fn VkResult vkGetQueryPoolResults (VkDevice device, VkQueryPool queryPool, uint32_t firstQuery, uint32_t queryCount, size_t dataSize, void pData, VkDeviceSize stride, VkQueryResultFlags flags) @extern("vkGetQueryPoolResults"); 
extern fn void vkResetQueryPool (VkDevice device, VkQueryPool queryPool, uint32_t firstQuery, uint32_t queryCount) @extern("vkResetQueryPool"); 
extern fn VkResult vkCreateBuffer (VkDevice device, VkBufferCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkBuffer pBuffer) @extern("vkCreateBuffer"); 
extern fn void vkDestroyBuffer (VkDevice device, VkBuffer buffer, VkAllocationCallbacks pAllocator) @extern("vkDestroyBuffer"); 
extern fn VkResult vkCreateBufferView (VkDevice device, VkBufferViewCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkBufferView pView) @extern("vkCreateBufferView"); 
extern fn void vkDestroyBufferView (VkDevice device, VkBufferView bufferView, VkAllocationCallbacks pAllocator) @extern("vkDestroyBufferView"); 
extern fn VkResult vkCreateImage (VkDevice device, VkImageCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkImage pImage) @extern("vkCreateImage"); 
extern fn void vkDestroyImage (VkDevice device, VkImage image, VkAllocationCallbacks pAllocator) @extern("vkDestroyImage"); 
extern fn void vkGetImageSubresourceLayout (VkDevice device, VkImage image, VkImageSubresource pSubresource, VkSubresourceLayout pLayout) @extern("vkGetImageSubresourceLayout"); 
extern fn VkResult vkCreateImageView (VkDevice device, VkImageViewCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkImageView pView) @extern("vkCreateImageView"); 
extern fn void vkDestroyImageView (VkDevice device, VkImageView imageView, VkAllocationCallbacks pAllocator) @extern("vkDestroyImageView"); 
extern fn VkResult vkCreateShaderModule (VkDevice device, VkShaderModuleCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkShaderModule pShaderModule) @extern("vkCreateShaderModule"); 
extern fn void vkDestroyShaderModule (VkDevice device, VkShaderModule shaderModule, VkAllocationCallbacks pAllocator) @extern("vkDestroyShaderModule"); 
extern fn VkResult vkCreatePipelineCache (VkDevice device, VkPipelineCacheCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkPipelineCache pPipelineCache) @extern("vkCreatePipelineCache"); 
extern fn void vkDestroyPipelineCache (VkDevice device, VkPipelineCache pipelineCache, VkAllocationCallbacks pAllocator) @extern("vkDestroyPipelineCache"); 
extern fn VkResult vkGetPipelineCacheData (VkDevice device, VkPipelineCache pipelineCache, size_t pDataSize, void pData) @extern("vkGetPipelineCacheData"); 
extern fn VkResult vkMergePipelineCaches (VkDevice device, VkPipelineCache dstCache, uint32_t srcCacheCount, VkPipelineCache pSrcCaches) @extern("vkMergePipelineCaches"); 
extern fn VkResult vkCreateGraphicsPipelines (VkDevice device, VkPipelineCache pipelineCache, uint32_t createInfoCount, VkGraphicsPipelineCreateInfo pCreateInfos, VkAllocationCallbacks pAllocator, VkPipeline pPipelines) @extern("vkCreateGraphicsPipelines"); 
extern fn VkResult vkCreateComputePipelines (VkDevice device, VkPipelineCache pipelineCache, uint32_t createInfoCount, VkComputePipelineCreateInfo pCreateInfos, VkAllocationCallbacks pAllocator, VkPipeline pPipelines) @extern("vkCreateComputePipelines"); 
extern fn VkResult vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI (VkDevice device, VkRenderPass renderpass, VkExtent2D pMaxWorkgroupSize) @extern("vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI"); 
extern fn void vkDestroyPipeline (VkDevice device, VkPipeline pipeline, VkAllocationCallbacks pAllocator) @extern("vkDestroyPipeline"); 
extern fn VkResult vkCreatePipelineLayout (VkDevice device, VkPipelineLayoutCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkPipelineLayout pPipelineLayout) @extern("vkCreatePipelineLayout"); 
extern fn void vkDestroyPipelineLayout (VkDevice device, VkPipelineLayout pipelineLayout, VkAllocationCallbacks pAllocator) @extern("vkDestroyPipelineLayout"); 
extern fn VkResult vkCreateSampler (VkDevice device, VkSamplerCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkSampler pSampler) @extern("vkCreateSampler"); 
extern fn void vkDestroySampler (VkDevice device, VkSampler sampler, VkAllocationCallbacks pAllocator) @extern("vkDestroySampler"); 
extern fn VkResult vkCreateDescriptorSetLayout (VkDevice device, VkDescriptorSetLayoutCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkDescriptorSetLayout pSetLayout) @extern("vkCreateDescriptorSetLayout"); 
extern fn void vkDestroyDescriptorSetLayout (VkDevice device, VkDescriptorSetLayout descriptorSetLayout, VkAllocationCallbacks pAllocator) @extern("vkDestroyDescriptorSetLayout"); 
extern fn VkResult vkCreateDescriptorPool (VkDevice device, VkDescriptorPoolCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkDescriptorPool pDescriptorPool) @extern("vkCreateDescriptorPool"); 
extern fn void vkDestroyDescriptorPool (VkDevice device, VkDescriptorPool descriptorPool, VkAllocationCallbacks pAllocator) @extern("vkDestroyDescriptorPool"); 
extern fn VkResult vkResetDescriptorPool (VkDevice device, VkDescriptorPool descriptorPool, VkDescriptorPoolResetFlags flags) @extern("vkResetDescriptorPool"); 
extern fn VkResult vkAllocateDescriptorSets (VkDevice device, VkDescriptorSetAllocateInfo pAllocateInfo, VkDescriptorSet pDescriptorSets) @extern("vkAllocateDescriptorSets"); 
extern fn VkResult vkFreeDescriptorSets (VkDevice device, VkDescriptorPool descriptorPool, uint32_t descriptorSetCount, VkDescriptorSet pDescriptorSets) @extern("vkFreeDescriptorSets"); 
extern fn void vkUpdateDescriptorSets (VkDevice device, uint32_t descriptorWriteCount, VkWriteDescriptorSet pDescriptorWrites, uint32_t descriptorCopyCount, VkCopyDescriptorSet pDescriptorCopies) @extern("vkUpdateDescriptorSets"); 
extern fn VkResult vkCreateFramebuffer (VkDevice device, VkFramebufferCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkFramebuffer pFramebuffer) @extern("vkCreateFramebuffer"); 
extern fn void vkDestroyFramebuffer (VkDevice device, VkFramebuffer framebuffer, VkAllocationCallbacks pAllocator) @extern("vkDestroyFramebuffer"); 
extern fn VkResult vkCreateRenderPass (VkDevice device, VkRenderPassCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkRenderPass pRenderPass) @extern("vkCreateRenderPass"); 
extern fn void vkDestroyRenderPass (VkDevice device, VkRenderPass renderPass, VkAllocationCallbacks pAllocator) @extern("vkDestroyRenderPass"); 
extern fn void vkGetRenderAreaGranularity (VkDevice device, VkRenderPass renderPass, VkExtent2D pGranularity) @extern("vkGetRenderAreaGranularity"); 
extern fn void vkGetRenderingAreaGranularityKHR (VkDevice device, VkRenderingAreaInfoKHR pRenderingAreaInfo, VkExtent2D pGranularity) @extern("vkGetRenderingAreaGranularityKHR"); 
extern fn VkResult vkCreateCommandPool (VkDevice device, VkCommandPoolCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkCommandPool pCommandPool) @extern("vkCreateCommandPool"); 
extern fn void vkDestroyCommandPool (VkDevice device, VkCommandPool commandPool, VkAllocationCallbacks pAllocator) @extern("vkDestroyCommandPool"); 
extern fn VkResult vkResetCommandPool (VkDevice device, VkCommandPool commandPool, VkCommandPoolResetFlags flags) @extern("vkResetCommandPool"); 
extern fn VkResult vkAllocateCommandBuffers (VkDevice device, VkCommandBufferAllocateInfo pAllocateInfo, VkCommandBuffer pCommandBuffers) @extern("vkAllocateCommandBuffers"); 
extern fn void vkFreeCommandBuffers (VkDevice device, VkCommandPool commandPool, uint32_t commandBufferCount, VkCommandBuffer pCommandBuffers) @extern("vkFreeCommandBuffers"); 
extern fn VkResult vkBeginCommandBuffer (VkCommandBuffer commandBuffer, VkCommandBufferBeginInfo pBeginInfo) @extern("vkBeginCommandBuffer"); 
extern fn VkResult vkEndCommandBuffer (VkCommandBuffer commandBuffer) @extern("vkEndCommandBuffer"); 
extern fn VkResult vkResetCommandBuffer (VkCommandBuffer commandBuffer, VkCommandBufferResetFlags flags) @extern("vkResetCommandBuffer"); 
extern fn void vkCmdBindPipeline (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline) @extern("vkCmdBindPipeline"); 
extern fn void vkCmdSetAttachmentFeedbackLoopEnableEXT (VkCommandBuffer commandBuffer, VkImageAspectFlags aspectMask) @extern("vkCmdSetAttachmentFeedbackLoopEnableEXT"); 
extern fn void vkCmdSetViewport (VkCommandBuffer commandBuffer, uint32_t firstViewport, uint32_t viewportCount, VkViewport pViewports) @extern("vkCmdSetViewport"); 
extern fn void vkCmdSetScissor (VkCommandBuffer commandBuffer, uint32_t firstScissor, uint32_t scissorCount, VkRect2D pScissors) @extern("vkCmdSetScissor"); 
extern fn void vkCmdSetLineWidth (VkCommandBuffer commandBuffer, float lineWidth) @extern("vkCmdSetLineWidth"); 
extern fn void vkCmdSetDepthBias (VkCommandBuffer commandBuffer, float depthBiasConstantFactor, float depthBiasClamp, float depthBiasSlopeFactor) @extern("vkCmdSetDepthBias"); 
extern fn void vkCmdSetBlendConstants (VkCommandBuffer commandBuffer, float blendConstants) @extern("vkCmdSetBlendConstants"); 
extern fn void vkCmdSetDepthBounds (VkCommandBuffer commandBuffer, float minDepthBounds, float maxDepthBounds) @extern("vkCmdSetDepthBounds"); 
extern fn void vkCmdSetStencilCompareMask (VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32_t compareMask) @extern("vkCmdSetStencilCompareMask"); 
extern fn void vkCmdSetStencilWriteMask (VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32_t writeMask) @extern("vkCmdSetStencilWriteMask"); 
extern fn void vkCmdSetStencilReference (VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, uint32_t reference) @extern("vkCmdSetStencilReference"); 
extern fn void vkCmdBindDescriptorSets (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32_t firstSet, uint32_t descriptorSetCount, VkDescriptorSet pDescriptorSets, uint32_t dynamicOffsetCount, uint32_t pDynamicOffsets) @extern("vkCmdBindDescriptorSets"); 
extern fn void vkCmdBindIndexBuffer (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, VkIndexType indexType) @extern("vkCmdBindIndexBuffer"); 
extern fn void vkCmdBindVertexBuffers (VkCommandBuffer commandBuffer, uint32_t firstBinding, uint32_t bindingCount, VkBuffer pBuffers, VkDeviceSize pOffsets) @extern("vkCmdBindVertexBuffers"); 
extern fn void vkCmdDraw (VkCommandBuffer commandBuffer, uint32_t vertexCount, uint32_t instanceCount, uint32_t firstVertex, uint32_t firstInstance) @extern("vkCmdDraw"); 
extern fn void vkCmdDrawIndexed (VkCommandBuffer commandBuffer, uint32_t indexCount, uint32_t instanceCount, uint32_t firstIndex, int32_t vertexOffset, uint32_t firstInstance) @extern("vkCmdDrawIndexed"); 
extern fn void vkCmdDrawMultiEXT (VkCommandBuffer commandBuffer, uint32_t drawCount, VkMultiDrawInfoEXT pVertexInfo, uint32_t instanceCount, uint32_t firstInstance, uint32_t stride) @extern("vkCmdDrawMultiEXT"); 
extern fn void vkCmdDrawMultiIndexedEXT (VkCommandBuffer commandBuffer, uint32_t drawCount, VkMultiDrawIndexedInfoEXT pIndexInfo, uint32_t instanceCount, uint32_t firstInstance, uint32_t stride, int32_t pVertexOffset) @extern("vkCmdDrawMultiIndexedEXT"); 
extern fn void vkCmdDrawIndirect (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, uint32_t drawCount, uint32_t stride) @extern("vkCmdDrawIndirect"); 
extern fn void vkCmdDrawIndexedIndirect (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, uint32_t drawCount, uint32_t stride) @extern("vkCmdDrawIndexedIndirect"); 
extern fn void vkCmdDispatch (VkCommandBuffer commandBuffer, uint32_t groupCountX, uint32_t groupCountY, uint32_t groupCountZ) @extern("vkCmdDispatch"); 
extern fn void vkCmdDispatchIndirect (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset) @extern("vkCmdDispatchIndirect"); 
extern fn void vkCmdSubpassShadingHUAWEI (VkCommandBuffer commandBuffer) @extern("vkCmdSubpassShadingHUAWEI"); 
extern fn void vkCmdDrawClusterHUAWEI (VkCommandBuffer commandBuffer, uint32_t groupCountX, uint32_t groupCountY, uint32_t groupCountZ) @extern("vkCmdDrawClusterHUAWEI"); 
extern fn void vkCmdDrawClusterIndirectHUAWEI (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset) @extern("vkCmdDrawClusterIndirectHUAWEI"); 
extern fn void vkCmdUpdatePipelineIndirectBufferNV (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline) @extern("vkCmdUpdatePipelineIndirectBufferNV"); 
extern fn void vkCmdCopyBuffer (VkCommandBuffer commandBuffer, VkBuffer srcBuffer, VkBuffer dstBuffer, uint32_t regionCount, VkBufferCopy pRegions) @extern("vkCmdCopyBuffer"); 
extern fn void vkCmdCopyImage (VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32_t regionCount, VkImageCopy pRegions) @extern("vkCmdCopyImage"); 
extern fn void vkCmdBlitImage (VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32_t regionCount, VkImageBlit pRegions, VkFilter filter) @extern("vkCmdBlitImage"); 
extern fn void vkCmdCopyBufferToImage (VkCommandBuffer commandBuffer, VkBuffer srcBuffer, VkImage dstImage, VkImageLayout dstImageLayout, uint32_t regionCount, VkBufferImageCopy pRegions) @extern("vkCmdCopyBufferToImage"); 
extern fn void vkCmdCopyImageToBuffer (VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkBuffer dstBuffer, uint32_t regionCount, VkBufferImageCopy pRegions) @extern("vkCmdCopyImageToBuffer"); 
extern fn void vkCmdCopyMemoryIndirectNV (VkCommandBuffer commandBuffer, VkDeviceAddress copyBufferAddress, uint32_t copyCount, uint32_t stride) @extern("vkCmdCopyMemoryIndirectNV"); 
extern fn void vkCmdCopyMemoryToImageIndirectNV (VkCommandBuffer commandBuffer, VkDeviceAddress copyBufferAddress, uint32_t copyCount, uint32_t stride, VkImage dstImage, VkImageLayout dstImageLayout, VkImageSubresourceLayers pImageSubresources) @extern("vkCmdCopyMemoryToImageIndirectNV"); 
extern fn void vkCmdUpdateBuffer (VkCommandBuffer commandBuffer, VkBuffer dstBuffer, VkDeviceSize dstOffset, VkDeviceSize dataSize, void pData) @extern("vkCmdUpdateBuffer"); 
extern fn void vkCmdFillBuffer (VkCommandBuffer commandBuffer, VkBuffer dstBuffer, VkDeviceSize dstOffset, VkDeviceSize size, uint32_t data) @extern("vkCmdFillBuffer"); 
extern fn void vkCmdClearColorImage (VkCommandBuffer commandBuffer, VkImage image, VkImageLayout imageLayout, VkClearColorValue pColor, uint32_t rangeCount, VkImageSubresourceRange pRanges) @extern("vkCmdClearColorImage"); 
extern fn void vkCmdClearDepthStencilImage (VkCommandBuffer commandBuffer, VkImage image, VkImageLayout imageLayout, VkClearDepthStencilValue pDepthStencil, uint32_t rangeCount, VkImageSubresourceRange pRanges) @extern("vkCmdClearDepthStencilImage"); 
extern fn void vkCmdClearAttachments (VkCommandBuffer commandBuffer, uint32_t attachmentCount, VkClearAttachment pAttachments, uint32_t rectCount, VkClearRect pRects) @extern("vkCmdClearAttachments"); 
extern fn void vkCmdResolveImage (VkCommandBuffer commandBuffer, VkImage srcImage, VkImageLayout srcImageLayout, VkImage dstImage, VkImageLayout dstImageLayout, uint32_t regionCount, VkImageResolve pRegions) @extern("vkCmdResolveImage"); 
extern fn void vkCmdSetEvent (VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags stageMask) @extern("vkCmdSetEvent"); 
extern fn void vkCmdResetEvent (VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags stageMask) @extern("vkCmdResetEvent"); 
extern fn void vkCmdWaitEvents (VkCommandBuffer commandBuffer, uint32_t eventCount, VkEvent pEvents, VkPipelineStageFlags srcStageMask, VkPipelineStageFlags dstStageMask, uint32_t memoryBarrierCount, VkMemoryBarrier pMemoryBarriers, uint32_t bufferMemoryBarrierCount, VkBufferMemoryBarrier pBufferMemoryBarriers, uint32_t imageMemoryBarrierCount, VkImageMemoryBarrier pImageMemoryBarriers) @extern("vkCmdWaitEvents"); 
extern fn void vkCmdPipelineBarrier (VkCommandBuffer commandBuffer, VkPipelineStageFlags srcStageMask, VkPipelineStageFlags dstStageMask, VkDependencyFlags dependencyFlags, uint32_t memoryBarrierCount, VkMemoryBarrier pMemoryBarriers, uint32_t bufferMemoryBarrierCount, VkBufferMemoryBarrier pBufferMemoryBarriers, uint32_t imageMemoryBarrierCount, VkImageMemoryBarrier pImageMemoryBarriers) @extern("vkCmdPipelineBarrier"); 
extern fn void vkCmdBeginQuery (VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32_t query, VkQueryControlFlags flags) @extern("vkCmdBeginQuery"); 
extern fn void vkCmdEndQuery (VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32_t query) @extern("vkCmdEndQuery"); 
extern fn void vkCmdBeginConditionalRenderingEXT (VkCommandBuffer commandBuffer, VkConditionalRenderingBeginInfoEXT pConditionalRenderingBegin) @extern("vkCmdBeginConditionalRenderingEXT"); 
extern fn void vkCmdEndConditionalRenderingEXT (VkCommandBuffer commandBuffer) @extern("vkCmdEndConditionalRenderingEXT"); 
extern fn void vkCmdResetQueryPool (VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32_t firstQuery, uint32_t queryCount) @extern("vkCmdResetQueryPool"); 
extern fn void vkCmdWriteTimestamp (VkCommandBuffer commandBuffer, VkPipelineStageFlagBits pipelineStage, VkQueryPool queryPool, uint32_t query) @extern("vkCmdWriteTimestamp"); 
extern fn void vkCmdCopyQueryPoolResults (VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32_t firstQuery, uint32_t queryCount, VkBuffer dstBuffer, VkDeviceSize dstOffset, VkDeviceSize stride, VkQueryResultFlags flags) @extern("vkCmdCopyQueryPoolResults"); 
extern fn void vkCmdPushConstants (VkCommandBuffer commandBuffer, VkPipelineLayout layout, VkShaderStageFlags stageFlags, uint32_t offset, uint32_t size, void pValues) @extern("vkCmdPushConstants"); 
extern fn void vkCmdBeginRenderPass (VkCommandBuffer commandBuffer, VkRenderPassBeginInfo pRenderPassBegin, VkSubpassContents contents) @extern("vkCmdBeginRenderPass"); 
extern fn void vkCmdNextSubpass (VkCommandBuffer commandBuffer, VkSubpassContents contents) @extern("vkCmdNextSubpass"); 
extern fn void vkCmdEndRenderPass (VkCommandBuffer commandBuffer) @extern("vkCmdEndRenderPass"); 
extern fn void vkCmdExecuteCommands (VkCommandBuffer commandBuffer, uint32_t commandBufferCount, VkCommandBuffer pCommandBuffers) @extern("vkCmdExecuteCommands"); 
extern fn VkResult vkCreateAndroidSurfaceKHR (VkInstance instance, VkAndroidSurfaceCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateAndroidSurfaceKHR"); 
extern fn VkResult vkGetPhysicalDeviceDisplayPropertiesKHR (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkDisplayPropertiesKHR pProperties) @extern("vkGetPhysicalDeviceDisplayPropertiesKHR"); 
extern fn VkResult vkGetPhysicalDeviceDisplayPlanePropertiesKHR (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkDisplayPlanePropertiesKHR pProperties) @extern("vkGetPhysicalDeviceDisplayPlanePropertiesKHR"); 
extern fn VkResult vkGetDisplayPlaneSupportedDisplaysKHR (VkPhysicalDevice physicalDevice, uint32_t planeIndex, uint32_t pDisplayCount, VkDisplayKHR pDisplays) @extern("vkGetDisplayPlaneSupportedDisplaysKHR"); 
extern fn VkResult vkGetDisplayModePropertiesKHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint32_t pPropertyCount, VkDisplayModePropertiesKHR pProperties) @extern("vkGetDisplayModePropertiesKHR"); 
extern fn VkResult vkCreateDisplayModeKHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, VkDisplayModeCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkDisplayModeKHR pMode) @extern("vkCreateDisplayModeKHR"); 
extern fn VkResult vkGetDisplayPlaneCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkDisplayModeKHR mode, uint32_t planeIndex, VkDisplayPlaneCapabilitiesKHR pCapabilities) @extern("vkGetDisplayPlaneCapabilitiesKHR"); 
extern fn VkResult vkCreateDisplayPlaneSurfaceKHR (VkInstance instance, VkDisplaySurfaceCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateDisplayPlaneSurfaceKHR"); 
extern fn VkResult vkCreateSharedSwapchainsKHR (VkDevice device, uint32_t swapchainCount, VkSwapchainCreateInfoKHR pCreateInfos, VkAllocationCallbacks pAllocator, VkSwapchainKHR pSwapchains) @extern("vkCreateSharedSwapchainsKHR"); 
extern fn void vkDestroySurfaceKHR (VkInstance instance, VkSurfaceKHR surface, VkAllocationCallbacks pAllocator) @extern("vkDestroySurfaceKHR"); 
extern fn VkResult vkGetPhysicalDeviceSurfaceSupportKHR (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, VkSurfaceKHR surface, VkBool32 pSupported) @extern("vkGetPhysicalDeviceSurfaceSupportKHR"); 
extern fn VkResult vkGetPhysicalDeviceSurfaceCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilitiesKHR pSurfaceCapabilities) @extern("vkGetPhysicalDeviceSurfaceCapabilitiesKHR"); 
extern fn VkResult vkGetPhysicalDeviceSurfaceFormatsKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32_t pSurfaceFormatCount, VkSurfaceFormatKHR pSurfaceFormats) @extern("vkGetPhysicalDeviceSurfaceFormatsKHR"); 
extern fn VkResult vkGetPhysicalDeviceSurfacePresentModesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32_t pPresentModeCount, VkPresentModeKHR pPresentModes) @extern("vkGetPhysicalDeviceSurfacePresentModesKHR"); 
extern fn VkResult vkCreateSwapchainKHR (VkDevice device, VkSwapchainCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSwapchainKHR pSwapchain) @extern("vkCreateSwapchainKHR"); 
extern fn void vkDestroySwapchainKHR (VkDevice device, VkSwapchainKHR swapchain, VkAllocationCallbacks pAllocator) @extern("vkDestroySwapchainKHR"); 
extern fn VkResult vkGetSwapchainImagesKHR (VkDevice device, VkSwapchainKHR swapchain, uint32_t pSwapchainImageCount, VkImage pSwapchainImages) @extern("vkGetSwapchainImagesKHR"); 
extern fn VkResult vkAcquireNextImageKHR (VkDevice device, VkSwapchainKHR swapchain, uint64_t timeout, VkSemaphore semaphore, VkFence fence, uint32_t pImageIndex) @extern("vkAcquireNextImageKHR"); 
extern fn VkResult vkQueuePresentKHR (VkQueue queue, VkPresentInfoKHR pPresentInfo) @extern("vkQueuePresentKHR"); 
extern fn VkResult vkCreateViSurfaceNN (VkInstance instance, VkViSurfaceCreateInfoNN pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateViSurfaceNN"); 
extern fn VkResult vkCreateWaylandSurfaceKHR (VkInstance instance, VkWaylandSurfaceCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateWaylandSurfaceKHR"); 
extern fn VkBool32 vkGetPhysicalDeviceWaylandPresentationSupportKHR (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, wl_display display) @extern("vkGetPhysicalDeviceWaylandPresentationSupportKHR"); 
extern fn VkResult vkCreateWin32SurfaceKHR (VkInstance instance, VkWin32SurfaceCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateWin32SurfaceKHR"); 
extern fn VkBool32 vkGetPhysicalDeviceWin32PresentationSupportKHR (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex) @extern("vkGetPhysicalDeviceWin32PresentationSupportKHR"); 
extern fn VkResult vkCreateXlibSurfaceKHR (VkInstance instance, VkXlibSurfaceCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateXlibSurfaceKHR"); 
extern fn VkBool32 vkGetPhysicalDeviceXlibPresentationSupportKHR (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, Display dpy, VisualID visualID) @extern("vkGetPhysicalDeviceXlibPresentationSupportKHR"); 
extern fn VkResult vkCreateXcbSurfaceKHR (VkInstance instance, VkXcbSurfaceCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateXcbSurfaceKHR"); 
extern fn VkBool32 vkGetPhysicalDeviceXcbPresentationSupportKHR (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, xcb_connection_t connection, xcb_visualid_t visual_id) @extern("vkGetPhysicalDeviceXcbPresentationSupportKHR"); 
extern fn VkResult vkCreateDirectFBSurfaceEXT (VkInstance instance, VkDirectFBSurfaceCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateDirectFBSurfaceEXT"); 
extern fn VkBool32 vkGetPhysicalDeviceDirectFBPresentationSupportEXT (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, IDirectFB dfb) @extern("vkGetPhysicalDeviceDirectFBPresentationSupportEXT"); 
extern fn VkResult vkCreateImagePipeSurfaceFUCHSIA (VkInstance instance, VkImagePipeSurfaceCreateInfoFUCHSIA pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateImagePipeSurfaceFUCHSIA"); 
extern fn VkResult vkCreateStreamDescriptorSurfaceGGP (VkInstance instance, VkStreamDescriptorSurfaceCreateInfoGGP pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateStreamDescriptorSurfaceGGP"); 
extern fn VkResult vkCreateScreenSurfaceQNX (VkInstance instance, VkScreenSurfaceCreateInfoQNX pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateScreenSurfaceQNX"); 
extern fn VkBool32 vkGetPhysicalDeviceScreenPresentationSupportQNX (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, _screen_window window) @extern("vkGetPhysicalDeviceScreenPresentationSupportQNX"); 
extern fn VkResult vkCreateDebugReportCallbackEXT (VkInstance instance, VkDebugReportCallbackCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkDebugReportCallbackEXT pCallback) @extern("vkCreateDebugReportCallbackEXT"); 
extern fn void vkDestroyDebugReportCallbackEXT (VkInstance instance, VkDebugReportCallbackEXT callback, VkAllocationCallbacks pAllocator) @extern("vkDestroyDebugReportCallbackEXT"); 
extern fn void vkDebugReportMessageEXT (VkInstance instance, VkDebugReportFlagsEXT flags, VkDebugReportObjectTypeEXT objectType, uint64_t object, size_t location, int32_t messageCode, char pLayerPrefix, char pMessage) @extern("vkDebugReportMessageEXT"); 
extern fn VkResult vkDebugMarkerSetObjectNameEXT (VkDevice device, VkDebugMarkerObjectNameInfoEXT pNameInfo) @extern("vkDebugMarkerSetObjectNameEXT"); 
extern fn VkResult vkDebugMarkerSetObjectTagEXT (VkDevice device, VkDebugMarkerObjectTagInfoEXT pTagInfo) @extern("vkDebugMarkerSetObjectTagEXT"); 
extern fn void vkCmdDebugMarkerBeginEXT (VkCommandBuffer commandBuffer, VkDebugMarkerMarkerInfoEXT pMarkerInfo) @extern("vkCmdDebugMarkerBeginEXT"); 
extern fn void vkCmdDebugMarkerEndEXT (VkCommandBuffer commandBuffer) @extern("vkCmdDebugMarkerEndEXT"); 
extern fn void vkCmdDebugMarkerInsertEXT (VkCommandBuffer commandBuffer, VkDebugMarkerMarkerInfoEXT pMarkerInfo) @extern("vkCmdDebugMarkerInsertEXT"); 
extern fn VkResult vkGetPhysicalDeviceExternalImageFormatPropertiesNV (VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkExternalMemoryHandleTypeFlagsNV externalHandleType, VkExternalImageFormatPropertiesNV pExternalImageFormatProperties) @extern("vkGetPhysicalDeviceExternalImageFormatPropertiesNV"); 
extern fn VkResult vkGetMemoryWin32HandleNV (VkDevice device, VkDeviceMemory memory, VkExternalMemoryHandleTypeFlagsNV handleType, HANDLE pHandle) @extern("vkGetMemoryWin32HandleNV"); 
extern fn void vkCmdExecuteGeneratedCommandsNV (VkCommandBuffer commandBuffer, VkBool32 isPreprocessed, VkGeneratedCommandsInfoNV pGeneratedCommandsInfo) @extern("vkCmdExecuteGeneratedCommandsNV"); 
extern fn void vkCmdPreprocessGeneratedCommandsNV (VkCommandBuffer commandBuffer, VkGeneratedCommandsInfoNV pGeneratedCommandsInfo) @extern("vkCmdPreprocessGeneratedCommandsNV"); 
extern fn void vkCmdBindPipelineShaderGroupNV (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipeline pipeline, uint32_t groupIndex) @extern("vkCmdBindPipelineShaderGroupNV"); 
extern fn void vkGetGeneratedCommandsMemoryRequirementsNV (VkDevice device, VkGeneratedCommandsMemoryRequirementsInfoNV pInfo, VkMemoryRequirements2 pMemoryRequirements) @extern("vkGetGeneratedCommandsMemoryRequirementsNV"); 
extern fn VkResult vkCreateIndirectCommandsLayoutNV (VkDevice device, VkIndirectCommandsLayoutCreateInfoNV pCreateInfo, VkAllocationCallbacks pAllocator, VkIndirectCommandsLayoutNV pIndirectCommandsLayout) @extern("vkCreateIndirectCommandsLayoutNV"); 
extern fn void vkDestroyIndirectCommandsLayoutNV (VkDevice device, VkIndirectCommandsLayoutNV indirectCommandsLayout, VkAllocationCallbacks pAllocator) @extern("vkDestroyIndirectCommandsLayoutNV"); 
extern fn void vkGetPhysicalDeviceFeatures2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceFeatures2 pFeatures) @extern("vkGetPhysicalDeviceFeatures2"); 
extern fn void vkGetPhysicalDeviceProperties2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceProperties2 pProperties) @extern("vkGetPhysicalDeviceProperties2"); 
extern fn void vkGetPhysicalDeviceFormatProperties2 (VkPhysicalDevice physicalDevice, VkFormat format, VkFormatProperties2 pFormatProperties) @extern("vkGetPhysicalDeviceFormatProperties2"); 
extern fn VkResult vkGetPhysicalDeviceImageFormatProperties2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceImageFormatInfo2 pImageFormatInfo, VkImageFormatProperties2 pImageFormatProperties) @extern("vkGetPhysicalDeviceImageFormatProperties2"); 
extern fn void vkGetPhysicalDeviceQueueFamilyProperties2 (VkPhysicalDevice physicalDevice, uint32_t pQueueFamilyPropertyCount, VkQueueFamilyProperties2 pQueueFamilyProperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties2"); 
extern fn void vkGetPhysicalDeviceMemoryProperties2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceMemoryProperties2 pMemoryProperties) @extern("vkGetPhysicalDeviceMemoryProperties2"); 
extern fn void vkGetPhysicalDeviceSparseImageFormatProperties2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSparseImageFormatInfo2 pFormatInfo, uint32_t pPropertyCount, VkSparseImageFormatProperties2 pProperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties2"); 
extern fn void vkCmdPushDescriptorSetKHR (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32_t set, uint32_t descriptorWriteCount, VkWriteDescriptorSet pDescriptorWrites) @extern("vkCmdPushDescriptorSetKHR"); 
extern fn void vkTrimCommandPool (VkDevice device, VkCommandPool commandPool, VkCommandPoolTrimFlags flags) @extern("vkTrimCommandPool"); 
extern fn void vkGetPhysicalDeviceExternalBufferProperties (VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalBufferInfo pExternalBufferInfo, VkExternalBufferProperties pExternalBufferProperties) @extern("vkGetPhysicalDeviceExternalBufferProperties"); 
extern fn VkResult vkGetMemoryWin32HandleKHR (VkDevice device, VkMemoryGetWin32HandleInfoKHR pGetWin32HandleInfo, HANDLE pHandle) @extern("vkGetMemoryWin32HandleKHR"); 
extern fn VkResult vkGetMemoryWin32HandlePropertiesKHR (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, HANDLE handle, VkMemoryWin32HandlePropertiesKHR pMemoryWin32HandleProperties) @extern("vkGetMemoryWin32HandlePropertiesKHR"); 
extern fn VkResult vkGetMemoryFdKHR (VkDevice device, VkMemoryGetFdInfoKHR pGetFdInfo, int pFd) @extern("vkGetMemoryFdKHR"); 
extern fn VkResult vkGetMemoryFdPropertiesKHR (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, int fd, VkMemoryFdPropertiesKHR pMemoryFdProperties) @extern("vkGetMemoryFdPropertiesKHR"); 
extern fn VkResult vkGetMemoryZirconHandleFUCHSIA (VkDevice device, VkMemoryGetZirconHandleInfoFUCHSIA pGetZirconHandleInfo, zx_handle_t pZirconHandle) @extern("vkGetMemoryZirconHandleFUCHSIA"); 
extern fn VkResult vkGetMemoryZirconHandlePropertiesFUCHSIA (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, zx_handle_t zirconHandle, VkMemoryZirconHandlePropertiesFUCHSIA pMemoryZirconHandleProperties) @extern("vkGetMemoryZirconHandlePropertiesFUCHSIA"); 
extern fn VkResult vkGetMemoryRemoteAddressNV (VkDevice device, VkMemoryGetRemoteAddressInfoNV pMemoryGetRemoteAddressInfo, VkRemoteAddressNV pAddress) @extern("vkGetMemoryRemoteAddressNV"); 
extern fn VkResult vkGetMemorySciBufNV (VkDevice device, VkMemoryGetSciBufInfoNV pGetSciBufInfo, NvSciBufObj pHandle) @extern("vkGetMemorySciBufNV"); 
extern fn VkResult vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV (VkPhysicalDevice physicalDevice, VkExternalMemoryHandleTypeFlagBits handleType, NvSciBufObj handle, VkMemorySciBufPropertiesNV pMemorySciBufProperties) @extern("vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV"); 
extern fn VkResult vkGetPhysicalDeviceSciBufAttributesNV (VkPhysicalDevice physicalDevice, NvSciBufAttrList pAttributes) @extern("vkGetPhysicalDeviceSciBufAttributesNV"); 
extern fn void vkGetPhysicalDeviceExternalSemaphoreProperties (VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalSemaphoreInfo pExternalSemaphoreInfo, VkExternalSemaphoreProperties pExternalSemaphoreProperties) @extern("vkGetPhysicalDeviceExternalSemaphoreProperties"); 
extern fn VkResult vkGetSemaphoreWin32HandleKHR (VkDevice device, VkSemaphoreGetWin32HandleInfoKHR pGetWin32HandleInfo, HANDLE pHandle) @extern("vkGetSemaphoreWin32HandleKHR"); 
extern fn VkResult vkImportSemaphoreWin32HandleKHR (VkDevice device, VkImportSemaphoreWin32HandleInfoKHR pImportSemaphoreWin32HandleInfo) @extern("vkImportSemaphoreWin32HandleKHR"); 
extern fn VkResult vkGetSemaphoreFdKHR (VkDevice device, VkSemaphoreGetFdInfoKHR pGetFdInfo, int pFd) @extern("vkGetSemaphoreFdKHR"); 
extern fn VkResult vkImportSemaphoreFdKHR (VkDevice device, VkImportSemaphoreFdInfoKHR pImportSemaphoreFdInfo) @extern("vkImportSemaphoreFdKHR"); 
extern fn VkResult vkGetSemaphoreZirconHandleFUCHSIA (VkDevice device, VkSemaphoreGetZirconHandleInfoFUCHSIA pGetZirconHandleInfo, zx_handle_t pZirconHandle) @extern("vkGetSemaphoreZirconHandleFUCHSIA"); 
extern fn VkResult vkImportSemaphoreZirconHandleFUCHSIA (VkDevice device, VkImportSemaphoreZirconHandleInfoFUCHSIA pImportSemaphoreZirconHandleInfo) @extern("vkImportSemaphoreZirconHandleFUCHSIA"); 
extern fn void vkGetPhysicalDeviceExternalFenceProperties (VkPhysicalDevice physicalDevice, VkPhysicalDeviceExternalFenceInfo pExternalFenceInfo, VkExternalFenceProperties pExternalFenceProperties) @extern("vkGetPhysicalDeviceExternalFenceProperties"); 
extern fn VkResult vkGetFenceWin32HandleKHR (VkDevice device, VkFenceGetWin32HandleInfoKHR pGetWin32HandleInfo, HANDLE pHandle) @extern("vkGetFenceWin32HandleKHR"); 
extern fn VkResult vkImportFenceWin32HandleKHR (VkDevice device, VkImportFenceWin32HandleInfoKHR pImportFenceWin32HandleInfo) @extern("vkImportFenceWin32HandleKHR"); 
extern fn VkResult vkGetFenceFdKHR (VkDevice device, VkFenceGetFdInfoKHR pGetFdInfo, int pFd) @extern("vkGetFenceFdKHR"); 
extern fn VkResult vkImportFenceFdKHR (VkDevice device, VkImportFenceFdInfoKHR pImportFenceFdInfo) @extern("vkImportFenceFdKHR"); 
extern fn VkResult vkGetFenceSciSyncFenceNV (VkDevice device, VkFenceGetSciSyncInfoNV pGetSciSyncHandleInfo, void pHandle) @extern("vkGetFenceSciSyncFenceNV"); 
extern fn VkResult vkGetFenceSciSyncObjNV (VkDevice device, VkFenceGetSciSyncInfoNV pGetSciSyncHandleInfo, void pHandle) @extern("vkGetFenceSciSyncObjNV"); 
extern fn VkResult vkImportFenceSciSyncFenceNV (VkDevice device, VkImportFenceSciSyncInfoNV pImportFenceSciSyncInfo) @extern("vkImportFenceSciSyncFenceNV"); 
extern fn VkResult vkImportFenceSciSyncObjNV (VkDevice device, VkImportFenceSciSyncInfoNV pImportFenceSciSyncInfo) @extern("vkImportFenceSciSyncObjNV"); 
extern fn VkResult vkGetSemaphoreSciSyncObjNV (VkDevice device, VkSemaphoreGetSciSyncInfoNV pGetSciSyncInfo, void pHandle) @extern("vkGetSemaphoreSciSyncObjNV"); 
extern fn VkResult vkImportSemaphoreSciSyncObjNV (VkDevice device, VkImportSemaphoreSciSyncInfoNV pImportSemaphoreSciSyncInfo) @extern("vkImportSemaphoreSciSyncObjNV"); 
extern fn VkResult vkGetPhysicalDeviceSciSyncAttributesNV (VkPhysicalDevice physicalDevice, VkSciSyncAttributesInfoNV pSciSyncAttributesInfo, NvSciSyncAttrList pAttributes) @extern("vkGetPhysicalDeviceSciSyncAttributesNV"); 
extern fn VkResult vkCreateSemaphoreSciSyncPoolNV (VkDevice device, VkSemaphoreSciSyncPoolCreateInfoNV pCreateInfo, VkAllocationCallbacks pAllocator, VkSemaphoreSciSyncPoolNV pSemaphorePool) @extern("vkCreateSemaphoreSciSyncPoolNV"); 
extern fn void vkDestroySemaphoreSciSyncPoolNV (VkDevice device, VkSemaphoreSciSyncPoolNV semaphorePool, VkAllocationCallbacks pAllocator) @extern("vkDestroySemaphoreSciSyncPoolNV"); 
extern fn VkResult vkReleaseDisplayEXT (VkPhysicalDevice physicalDevice, VkDisplayKHR display) @extern("vkReleaseDisplayEXT"); 
extern fn VkResult vkAcquireXlibDisplayEXT (VkPhysicalDevice physicalDevice, Display dpy, VkDisplayKHR display) @extern("vkAcquireXlibDisplayEXT"); 
extern fn VkResult vkGetRandROutputDisplayEXT (VkPhysicalDevice physicalDevice, Display dpy, RROutput rrOutput, VkDisplayKHR pDisplay) @extern("vkGetRandROutputDisplayEXT"); 
extern fn VkResult vkAcquireWinrtDisplayNV (VkPhysicalDevice physicalDevice, VkDisplayKHR display) @extern("vkAcquireWinrtDisplayNV"); 
extern fn VkResult vkGetWinrtDisplayNV (VkPhysicalDevice physicalDevice, uint32_t deviceRelativeId, VkDisplayKHR pDisplay) @extern("vkGetWinrtDisplayNV"); 
extern fn VkResult vkDisplayPowerControlEXT (VkDevice device, VkDisplayKHR display, VkDisplayPowerInfoEXT pDisplayPowerInfo) @extern("vkDisplayPowerControlEXT"); 
extern fn VkResult vkRegisterDeviceEventEXT (VkDevice device, VkDeviceEventInfoEXT pDeviceEventInfo, VkAllocationCallbacks pAllocator, VkFence pFence) @extern("vkRegisterDeviceEventEXT"); 
extern fn VkResult vkRegisterDisplayEventEXT (VkDevice device, VkDisplayKHR display, VkDisplayEventInfoEXT pDisplayEventInfo, VkAllocationCallbacks pAllocator, VkFence pFence) @extern("vkRegisterDisplayEventEXT"); 
extern fn VkResult vkGetSwapchainCounterEXT (VkDevice device, VkSwapchainKHR swapchain, VkSurfaceCounterFlagBitsEXT counter, uint64_t pCounterValue) @extern("vkGetSwapchainCounterEXT"); 
extern fn VkResult vkGetPhysicalDeviceSurfaceCapabilities2EXT (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilities2EXT pSurfaceCapabilities) @extern("vkGetPhysicalDeviceSurfaceCapabilities2EXT"); 
extern fn VkResult vkEnumeratePhysicalDeviceGroups (VkInstance instance, uint32_t pPhysicalDeviceGroupCount, VkPhysicalDeviceGroupProperties pPhysicalDeviceGroupProperties) @extern("vkEnumeratePhysicalDeviceGroups"); 
extern fn void vkGetDeviceGroupPeerMemoryFeatures (VkDevice device, uint32_t heapIndex, uint32_t localDeviceIndex, uint32_t remoteDeviceIndex, VkPeerMemoryFeatureFlags pPeerMemoryFeatures) @extern("vkGetDeviceGroupPeerMemoryFeatures"); 
extern fn VkResult vkBindBufferMemory2 (VkDevice device, uint32_t bindInfoCount, VkBindBufferMemoryInfo pBindInfos) @extern("vkBindBufferMemory2"); 
extern fn VkResult vkBindImageMemory2 (VkDevice device, uint32_t bindInfoCount, VkBindImageMemoryInfo pBindInfos) @extern("vkBindImageMemory2"); 
extern fn void vkCmdSetDeviceMask (VkCommandBuffer commandBuffer, uint32_t deviceMask) @extern("vkCmdSetDeviceMask"); 
extern fn VkResult vkGetDeviceGroupPresentCapabilitiesKHR (VkDevice device, VkDeviceGroupPresentCapabilitiesKHR pDeviceGroupPresentCapabilities) @extern("vkGetDeviceGroupPresentCapabilitiesKHR"); 
extern fn VkResult vkGetDeviceGroupSurfacePresentModesKHR (VkDevice device, VkSurfaceKHR surface, VkDeviceGroupPresentModeFlagsKHR pModes) @extern("vkGetDeviceGroupSurfacePresentModesKHR"); 
extern fn VkResult vkAcquireNextImage2KHR (VkDevice device, VkAcquireNextImageInfoKHR pAcquireInfo, uint32_t pImageIndex) @extern("vkAcquireNextImage2KHR"); 
extern fn void vkCmdDispatchBase (VkCommandBuffer commandBuffer, uint32_t baseGroupX, uint32_t baseGroupY, uint32_t baseGroupZ, uint32_t groupCountX, uint32_t groupCountY, uint32_t groupCountZ) @extern("vkCmdDispatchBase"); 
extern fn VkResult vkGetPhysicalDevicePresentRectanglesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint32_t pRectCount, VkRect2D pRects) @extern("vkGetPhysicalDevicePresentRectanglesKHR"); 
extern fn VkResult vkCreateDescriptorUpdateTemplate (VkDevice device, VkDescriptorUpdateTemplateCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkDescriptorUpdateTemplate pDescriptorUpdateTemplate) @extern("vkCreateDescriptorUpdateTemplate"); 
extern fn void vkDestroyDescriptorUpdateTemplate (VkDevice device, VkDescriptorUpdateTemplate descriptorUpdateTemplate, VkAllocationCallbacks pAllocator) @extern("vkDestroyDescriptorUpdateTemplate"); 
extern fn void vkUpdateDescriptorSetWithTemplate (VkDevice device, VkDescriptorSet descriptorSet, VkDescriptorUpdateTemplate descriptorUpdateTemplate, void pData) @extern("vkUpdateDescriptorSetWithTemplate"); 
extern fn void vkCmdPushDescriptorSetWithTemplateKHR (VkCommandBuffer commandBuffer, VkDescriptorUpdateTemplate descriptorUpdateTemplate, VkPipelineLayout layout, uint32_t set, void pData) @extern("vkCmdPushDescriptorSetWithTemplateKHR"); 
extern fn void vkSetHdrMetadataEXT (VkDevice device, uint32_t swapchainCount, VkSwapchainKHR pSwapchains, VkHdrMetadataEXT pMetadata) @extern("vkSetHdrMetadataEXT"); 
extern fn VkResult vkGetSwapchainStatusKHR (VkDevice device, VkSwapchainKHR swapchain) @extern("vkGetSwapchainStatusKHR"); 
extern fn VkResult vkGetRefreshCycleDurationGOOGLE (VkDevice device, VkSwapchainKHR swapchain, VkRefreshCycleDurationGOOGLE pDisplayTimingProperties) @extern("vkGetRefreshCycleDurationGOOGLE"); 
extern fn VkResult vkGetPastPresentationTimingGOOGLE (VkDevice device, VkSwapchainKHR swapchain, uint32_t pPresentationTimingCount, VkPastPresentationTimingGOOGLE pPresentationTimings) @extern("vkGetPastPresentationTimingGOOGLE"); 
extern fn VkResult vkCreateIOSSurfaceMVK (VkInstance instance, VkIOSSurfaceCreateInfoMVK pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateIOSSurfaceMVK"); 
extern fn VkResult vkCreateMacOSSurfaceMVK (VkInstance instance, VkMacOSSurfaceCreateInfoMVK pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateMacOSSurfaceMVK"); 
extern fn VkResult vkCreateMetalSurfaceEXT (VkInstance instance, VkMetalSurfaceCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateMetalSurfaceEXT"); 
extern fn void vkCmdSetViewportWScalingNV (VkCommandBuffer commandBuffer, uint32_t firstViewport, uint32_t viewportCount, VkViewportWScalingNV pViewportWScalings) @extern("vkCmdSetViewportWScalingNV"); 
extern fn void vkCmdSetDiscardRectangleEXT (VkCommandBuffer commandBuffer, uint32_t firstDiscardRectangle, uint32_t discardRectangleCount, VkRect2D pDiscardRectangles) @extern("vkCmdSetDiscardRectangleEXT"); 
extern fn void vkCmdSetDiscardRectangleEnableEXT (VkCommandBuffer commandBuffer, VkBool32 discardRectangleEnable) @extern("vkCmdSetDiscardRectangleEnableEXT"); 
extern fn void vkCmdSetDiscardRectangleModeEXT (VkCommandBuffer commandBuffer, VkDiscardRectangleModeEXT discardRectangleMode) @extern("vkCmdSetDiscardRectangleModeEXT"); 
extern fn void vkCmdSetSampleLocationsEXT (VkCommandBuffer commandBuffer, VkSampleLocationsInfoEXT pSampleLocationsInfo) @extern("vkCmdSetSampleLocationsEXT"); 
extern fn void vkGetPhysicalDeviceMultisamplePropertiesEXT (VkPhysicalDevice physicalDevice, VkSampleCountFlagBits samples, VkMultisamplePropertiesEXT pMultisampleProperties) @extern("vkGetPhysicalDeviceMultisamplePropertiesEXT"); 
extern fn VkResult vkGetPhysicalDeviceSurfaceCapabilities2KHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR pSurfaceInfo, VkSurfaceCapabilities2KHR pSurfaceCapabilities) @extern("vkGetPhysicalDeviceSurfaceCapabilities2KHR"); 
extern fn VkResult vkGetPhysicalDeviceSurfaceFormats2KHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR pSurfaceInfo, uint32_t pSurfaceFormatCount, VkSurfaceFormat2KHR pSurfaceFormats) @extern("vkGetPhysicalDeviceSurfaceFormats2KHR"); 
extern fn VkResult vkGetPhysicalDeviceDisplayProperties2KHR (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkDisplayProperties2KHR pProperties) @extern("vkGetPhysicalDeviceDisplayProperties2KHR"); 
extern fn VkResult vkGetPhysicalDeviceDisplayPlaneProperties2KHR (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkDisplayPlaneProperties2KHR pProperties) @extern("vkGetPhysicalDeviceDisplayPlaneProperties2KHR"); 
extern fn VkResult vkGetDisplayModeProperties2KHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint32_t pPropertyCount, VkDisplayModeProperties2KHR pProperties) @extern("vkGetDisplayModeProperties2KHR"); 
extern fn VkResult vkGetDisplayPlaneCapabilities2KHR (VkPhysicalDevice physicalDevice, VkDisplayPlaneInfo2KHR pDisplayPlaneInfo, VkDisplayPlaneCapabilities2KHR pCapabilities) @extern("vkGetDisplayPlaneCapabilities2KHR"); 
extern fn void vkGetBufferMemoryRequirements2 (VkDevice device, VkBufferMemoryRequirementsInfo2 pInfo, VkMemoryRequirements2 pMemoryRequirements) @extern("vkGetBufferMemoryRequirements2"); 
extern fn void vkGetImageMemoryRequirements2 (VkDevice device, VkImageMemoryRequirementsInfo2 pInfo, VkMemoryRequirements2 pMemoryRequirements) @extern("vkGetImageMemoryRequirements2"); 
extern fn void vkGetImageSparseMemoryRequirements2 (VkDevice device, VkImageSparseMemoryRequirementsInfo2 pInfo, uint32_t pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements2 pSparseMemoryRequirements) @extern("vkGetImageSparseMemoryRequirements2"); 
extern fn void vkGetDeviceBufferMemoryRequirements (VkDevice device, VkDeviceBufferMemoryRequirements pInfo, VkMemoryRequirements2 pMemoryRequirements) @extern("vkGetDeviceBufferMemoryRequirements"); 
extern fn void vkGetDeviceImageMemoryRequirements (VkDevice device, VkDeviceImageMemoryRequirements pInfo, VkMemoryRequirements2 pMemoryRequirements) @extern("vkGetDeviceImageMemoryRequirements"); 
extern fn void vkGetDeviceImageSparseMemoryRequirements (VkDevice device, VkDeviceImageMemoryRequirements pInfo, uint32_t pSparseMemoryRequirementCount, VkSparseImageMemoryRequirements2 pSparseMemoryRequirements) @extern("vkGetDeviceImageSparseMemoryRequirements"); 
extern fn VkResult vkCreateSamplerYcbcrConversion (VkDevice device, VkSamplerYcbcrConversionCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkSamplerYcbcrConversion pYcbcrConversion) @extern("vkCreateSamplerYcbcrConversion"); 
extern fn void vkDestroySamplerYcbcrConversion (VkDevice device, VkSamplerYcbcrConversion ycbcrConversion, VkAllocationCallbacks pAllocator) @extern("vkDestroySamplerYcbcrConversion"); 
extern fn void vkGetDeviceQueue2 (VkDevice device, VkDeviceQueueInfo2 pQueueInfo, VkQueue pQueue) @extern("vkGetDeviceQueue2"); 
extern fn VkResult vkCreateValidationCacheEXT (VkDevice device, VkValidationCacheCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkValidationCacheEXT pValidationCache) @extern("vkCreateValidationCacheEXT"); 
extern fn void vkDestroyValidationCacheEXT (VkDevice device, VkValidationCacheEXT validationCache, VkAllocationCallbacks pAllocator) @extern("vkDestroyValidationCacheEXT"); 
extern fn VkResult vkGetValidationCacheDataEXT (VkDevice device, VkValidationCacheEXT validationCache, size_t pDataSize, void pData) @extern("vkGetValidationCacheDataEXT"); 
extern fn VkResult vkMergeValidationCachesEXT (VkDevice device, VkValidationCacheEXT dstCache, uint32_t srcCacheCount, VkValidationCacheEXT pSrcCaches) @extern("vkMergeValidationCachesEXT"); 
extern fn void vkGetDescriptorSetLayoutSupport (VkDevice device, VkDescriptorSetLayoutCreateInfo pCreateInfo, VkDescriptorSetLayoutSupport pSupport) @extern("vkGetDescriptorSetLayoutSupport"); 
extern fn VkResult vkGetSwapchainGrallocUsageANDROID (VkDevice device, VkFormat format, VkImageUsageFlags imageUsage, int grallocUsage) @extern("vkGetSwapchainGrallocUsageANDROID"); 
extern fn VkResult vkGetSwapchainGrallocUsage2ANDROID (VkDevice device, VkFormat format, VkImageUsageFlags imageUsage, VkSwapchainImageUsageFlagsANDROID swapchainImageUsage, uint64_t grallocConsumerUsage, uint64_t grallocProducerUsage) @extern("vkGetSwapchainGrallocUsage2ANDROID"); 
extern fn VkResult vkAcquireImageANDROID (VkDevice device, VkImage image, int nativeFenceFd, VkSemaphore semaphore, VkFence fence) @extern("vkAcquireImageANDROID"); 
extern fn VkResult vkQueueSignalReleaseImageANDROID (VkQueue queue, uint32_t waitSemaphoreCount, VkSemaphore pWaitSemaphores, VkImage image, int pNativeFenceFd) @extern("vkQueueSignalReleaseImageANDROID"); 
extern fn VkResult vkGetShaderInfoAMD (VkDevice device, VkPipeline pipeline, VkShaderStageFlagBits shaderStage, VkShaderInfoTypeAMD infoType, size_t pInfoSize, void pInfo) @extern("vkGetShaderInfoAMD"); 
extern fn void vkSetLocalDimmingAMD (VkDevice device, VkSwapchainKHR swapChain, VkBool32 localDimmingEnable) @extern("vkSetLocalDimmingAMD"); 
extern fn VkResult vkGetPhysicalDeviceCalibrateableTimeDomainsKHR (VkPhysicalDevice physicalDevice, uint32_t pTimeDomainCount, VkTimeDomainKHR pTimeDomains) @extern("vkGetPhysicalDeviceCalibrateableTimeDomainsKHR"); 
extern fn VkResult vkGetCalibratedTimestampsKHR (VkDevice device, uint32_t timestampCount, VkCalibratedTimestampInfoKHR pTimestampInfos, uint64_t pTimestamps, uint64_t pMaxDeviation) @extern("vkGetCalibratedTimestampsKHR"); 
extern fn VkResult vkSetDebugUtilsObjectNameEXT (VkDevice device, VkDebugUtilsObjectNameInfoEXT pNameInfo) @extern("vkSetDebugUtilsObjectNameEXT"); 
extern fn VkResult vkSetDebugUtilsObjectTagEXT (VkDevice device, VkDebugUtilsObjectTagInfoEXT pTagInfo) @extern("vkSetDebugUtilsObjectTagEXT"); 
extern fn void vkQueueBeginDebugUtilsLabelEXT (VkQueue queue, VkDebugUtilsLabelEXT pLabelInfo) @extern("vkQueueBeginDebugUtilsLabelEXT"); 
extern fn void vkQueueEndDebugUtilsLabelEXT (VkQueue queue) @extern("vkQueueEndDebugUtilsLabelEXT"); 
extern fn void vkQueueInsertDebugUtilsLabelEXT (VkQueue queue, VkDebugUtilsLabelEXT pLabelInfo) @extern("vkQueueInsertDebugUtilsLabelEXT"); 
extern fn void vkCmdBeginDebugUtilsLabelEXT (VkCommandBuffer commandBuffer, VkDebugUtilsLabelEXT pLabelInfo) @extern("vkCmdBeginDebugUtilsLabelEXT"); 
extern fn void vkCmdEndDebugUtilsLabelEXT (VkCommandBuffer commandBuffer) @extern("vkCmdEndDebugUtilsLabelEXT"); 
extern fn void vkCmdInsertDebugUtilsLabelEXT (VkCommandBuffer commandBuffer, VkDebugUtilsLabelEXT pLabelInfo) @extern("vkCmdInsertDebugUtilsLabelEXT"); 
extern fn VkResult vkCreateDebugUtilsMessengerEXT (VkInstance instance, VkDebugUtilsMessengerCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkDebugUtilsMessengerEXT pMessenger) @extern("vkCreateDebugUtilsMessengerEXT"); 
extern fn void vkDestroyDebugUtilsMessengerEXT (VkInstance instance, VkDebugUtilsMessengerEXT messenger, VkAllocationCallbacks pAllocator) @extern("vkDestroyDebugUtilsMessengerEXT"); 
extern fn void vkSubmitDebugUtilsMessageEXT (VkInstance instance, VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity, VkDebugUtilsMessageTypeFlagsEXT messageTypes, VkDebugUtilsMessengerCallbackDataEXT pCallbackData) @extern("vkSubmitDebugUtilsMessageEXT"); 
extern fn VkResult vkGetMemoryHostPointerPropertiesEXT (VkDevice device, VkExternalMemoryHandleTypeFlagBits handleType, void pHostPointer, VkMemoryHostPointerPropertiesEXT pMemoryHostPointerProperties) @extern("vkGetMemoryHostPointerPropertiesEXT"); 
extern fn void vkCmdWriteBufferMarkerAMD (VkCommandBuffer commandBuffer, VkPipelineStageFlagBits pipelineStage, VkBuffer dstBuffer, VkDeviceSize dstOffset, uint32_t marker) @extern("vkCmdWriteBufferMarkerAMD"); 
extern fn VkResult vkCreateRenderPass2 (VkDevice device, VkRenderPassCreateInfo2 pCreateInfo, VkAllocationCallbacks pAllocator, VkRenderPass pRenderPass) @extern("vkCreateRenderPass2"); 
extern fn void vkCmdBeginRenderPass2 (VkCommandBuffer commandBuffer, VkRenderPassBeginInfo pRenderPassBegin, VkSubpassBeginInfo pSubpassBeginInfo) @extern("vkCmdBeginRenderPass2"); 
extern fn void vkCmdNextSubpass2 (VkCommandBuffer commandBuffer, VkSubpassBeginInfo pSubpassBeginInfo, VkSubpassEndInfo pSubpassEndInfo) @extern("vkCmdNextSubpass2"); 
extern fn void vkCmdEndRenderPass2 (VkCommandBuffer commandBuffer, VkSubpassEndInfo pSubpassEndInfo) @extern("vkCmdEndRenderPass2"); 
extern fn VkResult vkGetSemaphoreCounterValue (VkDevice device, VkSemaphore semaphore, uint64_t pValue) @extern("vkGetSemaphoreCounterValue"); 
extern fn VkResult vkWaitSemaphores (VkDevice device, VkSemaphoreWaitInfo pWaitInfo, uint64_t timeout) @extern("vkWaitSemaphores"); 
extern fn VkResult vkSignalSemaphore (VkDevice device, VkSemaphoreSignalInfo pSignalInfo) @extern("vkSignalSemaphore"); 
extern fn VkResult vkGetAndroidHardwareBufferPropertiesANDROID (VkDevice device, AHardwareBuffer buffer, VkAndroidHardwareBufferPropertiesANDROID pProperties) @extern("vkGetAndroidHardwareBufferPropertiesANDROID"); 
extern fn VkResult vkGetMemoryAndroidHardwareBufferANDROID (VkDevice device, VkMemoryGetAndroidHardwareBufferInfoANDROID pInfo, AHardwareBuffer pBuffer) @extern("vkGetMemoryAndroidHardwareBufferANDROID"); 
extern fn void vkCmdDrawIndirectCount (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, VkBuffer countBuffer, VkDeviceSize countBufferOffset, uint32_t maxDrawCount, uint32_t stride) @extern("vkCmdDrawIndirectCount"); 
extern fn void vkCmdDrawIndexedIndirectCount (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, VkBuffer countBuffer, VkDeviceSize countBufferOffset, uint32_t maxDrawCount, uint32_t stride) @extern("vkCmdDrawIndexedIndirectCount"); 
extern fn void vkCmdSetCheckpointNV (VkCommandBuffer commandBuffer, void pCheckpointMarker) @extern("vkCmdSetCheckpointNV"); 
extern fn void vkGetQueueCheckpointDataNV (VkQueue queue, uint32_t pCheckpointDataCount, VkCheckpointDataNV pCheckpointData) @extern("vkGetQueueCheckpointDataNV"); 
extern fn void vkCmdBindTransformFeedbackBuffersEXT (VkCommandBuffer commandBuffer, uint32_t firstBinding, uint32_t bindingCount, VkBuffer pBuffers, VkDeviceSize pOffsets, VkDeviceSize pSizes) @extern("vkCmdBindTransformFeedbackBuffersEXT"); 
extern fn void vkCmdBeginTransformFeedbackEXT (VkCommandBuffer commandBuffer, uint32_t firstCounterBuffer, uint32_t counterBufferCount, VkBuffer pCounterBuffers, VkDeviceSize pCounterBufferOffsets) @extern("vkCmdBeginTransformFeedbackEXT"); 
extern fn void vkCmdEndTransformFeedbackEXT (VkCommandBuffer commandBuffer, uint32_t firstCounterBuffer, uint32_t counterBufferCount, VkBuffer pCounterBuffers, VkDeviceSize pCounterBufferOffsets) @extern("vkCmdEndTransformFeedbackEXT"); 
extern fn void vkCmdBeginQueryIndexedEXT (VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32_t query, VkQueryControlFlags flags, uint32_t index) @extern("vkCmdBeginQueryIndexedEXT"); 
extern fn void vkCmdEndQueryIndexedEXT (VkCommandBuffer commandBuffer, VkQueryPool queryPool, uint32_t query, uint32_t index) @extern("vkCmdEndQueryIndexedEXT"); 
extern fn void vkCmdDrawIndirectByteCountEXT (VkCommandBuffer commandBuffer, uint32_t instanceCount, uint32_t firstInstance, VkBuffer counterBuffer, VkDeviceSize counterBufferOffset, uint32_t counterOffset, uint32_t vertexStride) @extern("vkCmdDrawIndirectByteCountEXT"); 
extern fn void vkCmdSetExclusiveScissorNV (VkCommandBuffer commandBuffer, uint32_t firstExclusiveScissor, uint32_t exclusiveScissorCount, VkRect2D pExclusiveScissors) @extern("vkCmdSetExclusiveScissorNV"); 
extern fn void vkCmdSetExclusiveScissorEnableNV (VkCommandBuffer commandBuffer, uint32_t firstExclusiveScissor, uint32_t exclusiveScissorCount, VkBool32 pExclusiveScissorEnables) @extern("vkCmdSetExclusiveScissorEnableNV"); 
extern fn void vkCmdBindShadingRateImageNV (VkCommandBuffer commandBuffer, VkImageView imageView, VkImageLayout imageLayout) @extern("vkCmdBindShadingRateImageNV"); 
extern fn void vkCmdSetViewportShadingRatePaletteNV (VkCommandBuffer commandBuffer, uint32_t firstViewport, uint32_t viewportCount, VkShadingRatePaletteNV pShadingRatePalettes) @extern("vkCmdSetViewportShadingRatePaletteNV"); 
extern fn void vkCmdSetCoarseSampleOrderNV (VkCommandBuffer commandBuffer, VkCoarseSampleOrderTypeNV sampleOrderType, uint32_t customSampleOrderCount, VkCoarseSampleOrderCustomNV pCustomSampleOrders) @extern("vkCmdSetCoarseSampleOrderNV"); 
extern fn void vkCmdDrawMeshTasksNV (VkCommandBuffer commandBuffer, uint32_t taskCount, uint32_t firstTask) @extern("vkCmdDrawMeshTasksNV"); 
extern fn void vkCmdDrawMeshTasksIndirectNV (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, uint32_t drawCount, uint32_t stride) @extern("vkCmdDrawMeshTasksIndirectNV"); 
extern fn void vkCmdDrawMeshTasksIndirectCountNV (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, VkBuffer countBuffer, VkDeviceSize countBufferOffset, uint32_t maxDrawCount, uint32_t stride) @extern("vkCmdDrawMeshTasksIndirectCountNV"); 
extern fn void vkCmdDrawMeshTasksEXT (VkCommandBuffer commandBuffer, uint32_t groupCountX, uint32_t groupCountY, uint32_t groupCountZ) @extern("vkCmdDrawMeshTasksEXT"); 
extern fn void vkCmdDrawMeshTasksIndirectEXT (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, uint32_t drawCount, uint32_t stride) @extern("vkCmdDrawMeshTasksIndirectEXT"); 
extern fn void vkCmdDrawMeshTasksIndirectCountEXT (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, VkBuffer countBuffer, VkDeviceSize countBufferOffset, uint32_t maxDrawCount, uint32_t stride) @extern("vkCmdDrawMeshTasksIndirectCountEXT"); 
extern fn VkResult vkCompileDeferredNV (VkDevice device, VkPipeline pipeline, uint32_t shader) @extern("vkCompileDeferredNV"); 
extern fn VkResult vkCreateAccelerationStructureNV (VkDevice device, VkAccelerationStructureCreateInfoNV pCreateInfo, VkAllocationCallbacks pAllocator, VkAccelerationStructureNV pAccelerationStructure) @extern("vkCreateAccelerationStructureNV"); 
extern fn void vkCmdBindInvocationMaskHUAWEI (VkCommandBuffer commandBuffer, VkImageView imageView, VkImageLayout imageLayout) @extern("vkCmdBindInvocationMaskHUAWEI"); 
extern fn void vkDestroyAccelerationStructureKHR (VkDevice device, VkAccelerationStructureKHR accelerationStructure, VkAllocationCallbacks pAllocator) @extern("vkDestroyAccelerationStructureKHR"); 
extern fn void vkDestroyAccelerationStructureNV (VkDevice device, VkAccelerationStructureNV accelerationStructure, VkAllocationCallbacks pAllocator) @extern("vkDestroyAccelerationStructureNV"); 
extern fn void vkGetAccelerationStructureMemoryRequirementsNV (VkDevice device, VkAccelerationStructureMemoryRequirementsInfoNV pInfo, VkMemoryRequirements2KHR pMemoryRequirements) @extern("vkGetAccelerationStructureMemoryRequirementsNV"); 
extern fn VkResult vkBindAccelerationStructureMemoryNV (VkDevice device, uint32_t bindInfoCount, VkBindAccelerationStructureMemoryInfoNV pBindInfos) @extern("vkBindAccelerationStructureMemoryNV"); 
extern fn void vkCmdCopyAccelerationStructureNV (VkCommandBuffer commandBuffer, VkAccelerationStructureNV dst, VkAccelerationStructureNV src, VkCopyAccelerationStructureModeKHR mode) @extern("vkCmdCopyAccelerationStructureNV"); 
extern fn void vkCmdCopyAccelerationStructureKHR (VkCommandBuffer commandBuffer, VkCopyAccelerationStructureInfoKHR pInfo) @extern("vkCmdCopyAccelerationStructureKHR"); 
extern fn VkResult vkCopyAccelerationStructureKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureInfoKHR pInfo) @extern("vkCopyAccelerationStructureKHR"); 
extern fn void vkCmdCopyAccelerationStructureToMemoryKHR (VkCommandBuffer commandBuffer, VkCopyAccelerationStructureToMemoryInfoKHR pInfo) @extern("vkCmdCopyAccelerationStructureToMemoryKHR"); 
extern fn VkResult vkCopyAccelerationStructureToMemoryKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyAccelerationStructureToMemoryInfoKHR pInfo) @extern("vkCopyAccelerationStructureToMemoryKHR"); 
extern fn void vkCmdCopyMemoryToAccelerationStructureKHR (VkCommandBuffer commandBuffer, VkCopyMemoryToAccelerationStructureInfoKHR pInfo) @extern("vkCmdCopyMemoryToAccelerationStructureKHR"); 
extern fn VkResult vkCopyMemoryToAccelerationStructureKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMemoryToAccelerationStructureInfoKHR pInfo) @extern("vkCopyMemoryToAccelerationStructureKHR"); 
extern fn void vkCmdWriteAccelerationStructuresPropertiesKHR (VkCommandBuffer commandBuffer, uint32_t accelerationStructureCount, VkAccelerationStructureKHR pAccelerationStructures, VkQueryType queryType, VkQueryPool queryPool, uint32_t firstQuery) @extern("vkCmdWriteAccelerationStructuresPropertiesKHR"); 
extern fn void vkCmdWriteAccelerationStructuresPropertiesNV (VkCommandBuffer commandBuffer, uint32_t accelerationStructureCount, VkAccelerationStructureNV pAccelerationStructures, VkQueryType queryType, VkQueryPool queryPool, uint32_t firstQuery) @extern("vkCmdWriteAccelerationStructuresPropertiesNV"); 
extern fn void vkCmdBuildAccelerationStructureNV (VkCommandBuffer commandBuffer, VkAccelerationStructureInfoNV pInfo, VkBuffer instanceData, VkDeviceSize instanceOffset, VkBool32 update, VkAccelerationStructureNV dst, VkAccelerationStructureNV src, VkBuffer scratch, VkDeviceSize scratchOffset) @extern("vkCmdBuildAccelerationStructureNV"); 
extern fn VkResult vkWriteAccelerationStructuresPropertiesKHR (VkDevice device, uint32_t accelerationStructureCount, VkAccelerationStructureKHR pAccelerationStructures, VkQueryType queryType, size_t dataSize, void pData, size_t stride) @extern("vkWriteAccelerationStructuresPropertiesKHR"); 
extern fn void vkCmdTraceRaysKHR (VkCommandBuffer commandBuffer, VkStridedDeviceAddressRegionKHR pRaygenShaderBindingTable, VkStridedDeviceAddressRegionKHR pMissShaderBindingTable, VkStridedDeviceAddressRegionKHR pHitShaderBindingTable, VkStridedDeviceAddressRegionKHR pCallableShaderBindingTable, uint32_t width, uint32_t height, uint32_t depth) @extern("vkCmdTraceRaysKHR"); 
extern fn void vkCmdTraceRaysNV (VkCommandBuffer commandBuffer, VkBuffer raygenShaderBindingTableBuffer, VkDeviceSize raygenShaderBindingOffset, VkBuffer missShaderBindingTableBuffer, VkDeviceSize missShaderBindingOffset, VkDeviceSize missShaderBindingStride, VkBuffer hitShaderBindingTableBuffer, VkDeviceSize hitShaderBindingOffset, VkDeviceSize hitShaderBindingStride, VkBuffer callableShaderBindingTableBuffer, VkDeviceSize callableShaderBindingOffset, VkDeviceSize callableShaderBindingStride, uint32_t width, uint32_t height, uint32_t depth) @extern("vkCmdTraceRaysNV"); 
extern fn VkResult vkGetRayTracingShaderGroupHandlesKHR (VkDevice device, VkPipeline pipeline, uint32_t firstGroup, uint32_t groupCount, size_t dataSize, void pData) @extern("vkGetRayTracingShaderGroupHandlesKHR"); 
extern fn VkResult vkGetRayTracingCaptureReplayShaderGroupHandlesKHR (VkDevice device, VkPipeline pipeline, uint32_t firstGroup, uint32_t groupCount, size_t dataSize, void pData) @extern("vkGetRayTracingCaptureReplayShaderGroupHandlesKHR"); 
extern fn VkResult vkGetAccelerationStructureHandleNV (VkDevice device, VkAccelerationStructureNV accelerationStructure, size_t dataSize, void pData) @extern("vkGetAccelerationStructureHandleNV"); 
extern fn VkResult vkCreateRayTracingPipelinesNV (VkDevice device, VkPipelineCache pipelineCache, uint32_t createInfoCount, VkRayTracingPipelineCreateInfoNV pCreateInfos, VkAllocationCallbacks pAllocator, VkPipeline pPipelines) @extern("vkCreateRayTracingPipelinesNV"); 
extern fn VkResult vkCreateRayTracingPipelinesKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, VkPipelineCache pipelineCache, uint32_t createInfoCount, VkRayTracingPipelineCreateInfoKHR pCreateInfos, VkAllocationCallbacks pAllocator, VkPipeline pPipelines) @extern("vkCreateRayTracingPipelinesKHR"); 
extern fn VkResult vkGetPhysicalDeviceCooperativeMatrixPropertiesNV (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkCooperativeMatrixPropertiesNV pProperties) @extern("vkGetPhysicalDeviceCooperativeMatrixPropertiesNV"); 
extern fn void vkCmdTraceRaysIndirectKHR (VkCommandBuffer commandBuffer, VkStridedDeviceAddressRegionKHR pRaygenShaderBindingTable, VkStridedDeviceAddressRegionKHR pMissShaderBindingTable, VkStridedDeviceAddressRegionKHR pHitShaderBindingTable, VkStridedDeviceAddressRegionKHR pCallableShaderBindingTable, VkDeviceAddress indirectDeviceAddress) @extern("vkCmdTraceRaysIndirectKHR"); 
extern fn void vkCmdTraceRaysIndirect2KHR (VkCommandBuffer commandBuffer, VkDeviceAddress indirectDeviceAddress) @extern("vkCmdTraceRaysIndirect2KHR"); 
extern fn void vkGetDeviceAccelerationStructureCompatibilityKHR (VkDevice device, VkAccelerationStructureVersionInfoKHR pVersionInfo, VkAccelerationStructureCompatibilityKHR pCompatibility) @extern("vkGetDeviceAccelerationStructureCompatibilityKHR"); 
extern fn VkDeviceSize vkGetRayTracingShaderGroupStackSizeKHR (VkDevice device, VkPipeline pipeline, uint32_t group, VkShaderGroupShaderKHR groupShader) @extern("vkGetRayTracingShaderGroupStackSizeKHR"); 
extern fn void vkCmdSetRayTracingPipelineStackSizeKHR (VkCommandBuffer commandBuffer, uint32_t pipelineStackSize) @extern("vkCmdSetRayTracingPipelineStackSizeKHR"); 
extern fn uint32_t vkGetImageViewHandleNVX (VkDevice device, VkImageViewHandleInfoNVX pInfo) @extern("vkGetImageViewHandleNVX"); 
extern fn VkResult vkGetImageViewAddressNVX (VkDevice device, VkImageView imageView, VkImageViewAddressPropertiesNVX pProperties) @extern("vkGetImageViewAddressNVX"); 
extern fn VkResult vkGetPhysicalDeviceSurfacePresentModes2EXT (VkPhysicalDevice physicalDevice, VkPhysicalDeviceSurfaceInfo2KHR pSurfaceInfo, uint32_t pPresentModeCount, VkPresentModeKHR pPresentModes) @extern("vkGetPhysicalDeviceSurfacePresentModes2EXT"); 
extern fn VkResult vkGetDeviceGroupSurfacePresentModes2EXT (VkDevice device, VkPhysicalDeviceSurfaceInfo2KHR pSurfaceInfo, VkDeviceGroupPresentModeFlagsKHR pModes) @extern("vkGetDeviceGroupSurfacePresentModes2EXT"); 
extern fn VkResult vkAcquireFullScreenExclusiveModeEXT (VkDevice device, VkSwapchainKHR swapchain) @extern("vkAcquireFullScreenExclusiveModeEXT"); 
extern fn VkResult vkReleaseFullScreenExclusiveModeEXT (VkDevice device, VkSwapchainKHR swapchain) @extern("vkReleaseFullScreenExclusiveModeEXT"); 
extern fn VkResult vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR (VkPhysicalDevice physicalDevice, uint32_t queueFamilyIndex, uint32_t pCounterCount, VkPerformanceCounterKHR pCounters, VkPerformanceCounterDescriptionKHR pCounterDescriptions) @extern("vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR"); 
extern fn void vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR (VkPhysicalDevice physicalDevice, VkQueryPoolPerformanceCreateInfoKHR pPerformanceQueryCreateInfo, uint32_t pNumPasses) @extern("vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR"); 
extern fn VkResult vkAcquireProfilingLockKHR (VkDevice device, VkAcquireProfilingLockInfoKHR pInfo) @extern("vkAcquireProfilingLockKHR"); 
extern fn void vkReleaseProfilingLockKHR (VkDevice device) @extern("vkReleaseProfilingLockKHR"); 
extern fn VkResult vkGetImageDrmFormatModifierPropertiesEXT (VkDevice device, VkImage image, VkImageDrmFormatModifierPropertiesEXT pProperties) @extern("vkGetImageDrmFormatModifierPropertiesEXT"); 
extern fn uint64_t vkGetBufferOpaqueCaptureAddress (VkDevice device, VkBufferDeviceAddressInfo pInfo) @extern("vkGetBufferOpaqueCaptureAddress"); 
extern fn VkDeviceAddress vkGetBufferDeviceAddress (VkDevice device, VkBufferDeviceAddressInfo pInfo) @extern("vkGetBufferDeviceAddress"); 
extern fn VkResult vkCreateHeadlessSurfaceEXT (VkInstance instance, VkHeadlessSurfaceCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkSurfaceKHR pSurface) @extern("vkCreateHeadlessSurfaceEXT"); 
extern fn VkResult vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV (VkPhysicalDevice physicalDevice, uint32_t pCombinationCount, VkFramebufferMixedSamplesCombinationNV pCombinations) @extern("vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV"); 
extern fn VkResult vkInitializePerformanceApiINTEL (VkDevice device, VkInitializePerformanceApiInfoINTEL pInitializeInfo) @extern("vkInitializePerformanceApiINTEL"); 
extern fn void vkUninitializePerformanceApiINTEL (VkDevice device) @extern("vkUninitializePerformanceApiINTEL"); 
extern fn VkResult vkCmdSetPerformanceMarkerINTEL (VkCommandBuffer commandBuffer, VkPerformanceMarkerInfoINTEL pMarkerInfo) @extern("vkCmdSetPerformanceMarkerINTEL"); 
extern fn VkResult vkCmdSetPerformanceStreamMarkerINTEL (VkCommandBuffer commandBuffer, VkPerformanceStreamMarkerInfoINTEL pMarkerInfo) @extern("vkCmdSetPerformanceStreamMarkerINTEL"); 
extern fn VkResult vkCmdSetPerformanceOverrideINTEL (VkCommandBuffer commandBuffer, VkPerformanceOverrideInfoINTEL pOverrideInfo) @extern("vkCmdSetPerformanceOverrideINTEL"); 
extern fn VkResult vkAcquirePerformanceConfigurationINTEL (VkDevice device, VkPerformanceConfigurationAcquireInfoINTEL pAcquireInfo, VkPerformanceConfigurationINTEL pConfiguration) @extern("vkAcquirePerformanceConfigurationINTEL"); 
extern fn VkResult vkReleasePerformanceConfigurationINTEL (VkDevice device, VkPerformanceConfigurationINTEL configuration) @extern("vkReleasePerformanceConfigurationINTEL"); 
extern fn VkResult vkQueueSetPerformanceConfigurationINTEL (VkQueue queue, VkPerformanceConfigurationINTEL configuration) @extern("vkQueueSetPerformanceConfigurationINTEL"); 
extern fn VkResult vkGetPerformanceParameterINTEL (VkDevice device, VkPerformanceParameterTypeINTEL parameter, VkPerformanceValueINTEL pValue) @extern("vkGetPerformanceParameterINTEL"); 
extern fn uint64_t vkGetDeviceMemoryOpaqueCaptureAddress (VkDevice device, VkDeviceMemoryOpaqueCaptureAddressInfo pInfo) @extern("vkGetDeviceMemoryOpaqueCaptureAddress"); 
extern fn VkResult vkGetPipelineExecutablePropertiesKHR (VkDevice device, VkPipelineInfoKHR pPipelineInfo, uint32_t pExecutableCount, VkPipelineExecutablePropertiesKHR pProperties) @extern("vkGetPipelineExecutablePropertiesKHR"); 
extern fn VkResult vkGetPipelineExecutableStatisticsKHR (VkDevice device, VkPipelineExecutableInfoKHR pExecutableInfo, uint32_t pStatisticCount, VkPipelineExecutableStatisticKHR pStatistics) @extern("vkGetPipelineExecutableStatisticsKHR"); 
extern fn VkResult vkGetPipelineExecutableInternalRepresentationsKHR (VkDevice device, VkPipelineExecutableInfoKHR pExecutableInfo, uint32_t pInternalRepresentationCount, VkPipelineExecutableInternalRepresentationKHR pInternalRepresentations) @extern("vkGetPipelineExecutableInternalRepresentationsKHR"); 
extern fn void vkCmdSetLineStippleKHR (VkCommandBuffer commandBuffer, uint32_t lineStippleFactor, uint16_t lineStipplePattern) @extern("vkCmdSetLineStippleKHR"); 
extern fn VkResult vkGetFaultData (VkDevice device, VkFaultQueryBehavior faultQueryBehavior, VkBool32 pUnrecordedFaults, uint32_t pFaultCount, VkFaultData pFaults) @extern("vkGetFaultData"); 
extern fn VkResult vkGetPhysicalDeviceToolProperties (VkPhysicalDevice physicalDevice, uint32_t pToolCount, VkPhysicalDeviceToolProperties pToolProperties) @extern("vkGetPhysicalDeviceToolProperties"); 
extern fn VkResult vkCreateAccelerationStructureKHR (VkDevice device, VkAccelerationStructureCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkAccelerationStructureKHR pAccelerationStructure) @extern("vkCreateAccelerationStructureKHR"); 
extern fn void vkCmdBuildAccelerationStructuresKHR (VkCommandBuffer commandBuffer, uint32_t infoCount, VkAccelerationStructureBuildGeometryInfoKHR pInfos, VkAccelerationStructureBuildRangeInfoKHR ppBuildRangeInfos) @extern("vkCmdBuildAccelerationStructuresKHR"); 
extern fn void vkCmdBuildAccelerationStructuresIndirectKHR (VkCommandBuffer commandBuffer, uint32_t infoCount, VkAccelerationStructureBuildGeometryInfoKHR pInfos, VkDeviceAddress pIndirectDeviceAddresses, uint32_t pIndirectStrides, uint32_t ppMaxPrimitiveCounts) @extern("vkCmdBuildAccelerationStructuresIndirectKHR"); 
extern fn VkResult vkBuildAccelerationStructuresKHR (VkDevice device, VkDeferredOperationKHR deferredOperation, uint32_t infoCount, VkAccelerationStructureBuildGeometryInfoKHR pInfos, VkAccelerationStructureBuildRangeInfoKHR ppBuildRangeInfos) @extern("vkBuildAccelerationStructuresKHR"); 
extern fn VkDeviceAddress vkGetAccelerationStructureDeviceAddressKHR (VkDevice device, VkAccelerationStructureDeviceAddressInfoKHR pInfo) @extern("vkGetAccelerationStructureDeviceAddressKHR"); 
extern fn VkResult vkCreateDeferredOperationKHR (VkDevice device, VkAllocationCallbacks pAllocator, VkDeferredOperationKHR pDeferredOperation) @extern("vkCreateDeferredOperationKHR"); 
extern fn void vkDestroyDeferredOperationKHR (VkDevice device, VkDeferredOperationKHR operation, VkAllocationCallbacks pAllocator) @extern("vkDestroyDeferredOperationKHR"); 
extern fn uint32_t vkGetDeferredOperationMaxConcurrencyKHR (VkDevice device, VkDeferredOperationKHR operation) @extern("vkGetDeferredOperationMaxConcurrencyKHR"); 
extern fn VkResult vkGetDeferredOperationResultKHR (VkDevice device, VkDeferredOperationKHR operation) @extern("vkGetDeferredOperationResultKHR"); 
extern fn VkResult vkDeferredOperationJoinKHR (VkDevice device, VkDeferredOperationKHR operation) @extern("vkDeferredOperationJoinKHR"); 
extern fn void vkGetPipelineIndirectMemoryRequirementsNV (VkDevice device, VkComputePipelineCreateInfo pCreateInfo, VkMemoryRequirements2 pMemoryRequirements) @extern("vkGetPipelineIndirectMemoryRequirementsNV"); 
extern fn VkDeviceAddress vkGetPipelineIndirectDeviceAddressNV (VkDevice device, VkPipelineIndirectDeviceAddressInfoNV pInfo) @extern("vkGetPipelineIndirectDeviceAddressNV"); 
extern fn void vkAntiLagUpdateAMD (VkDevice device, VkAntiLagDataAMD pData) @extern("vkAntiLagUpdateAMD"); 
extern fn void vkCmdSetCullMode (VkCommandBuffer commandBuffer, VkCullModeFlags cullMode) @extern("vkCmdSetCullMode"); 
extern fn void vkCmdSetFrontFace (VkCommandBuffer commandBuffer, VkFrontFace frontFace) @extern("vkCmdSetFrontFace"); 
extern fn void vkCmdSetPrimitiveTopology (VkCommandBuffer commandBuffer, VkPrimitiveTopology primitiveTopology) @extern("vkCmdSetPrimitiveTopology"); 
extern fn void vkCmdSetViewportWithCount (VkCommandBuffer commandBuffer, uint32_t viewportCount, VkViewport pViewports) @extern("vkCmdSetViewportWithCount"); 
extern fn void vkCmdSetScissorWithCount (VkCommandBuffer commandBuffer, uint32_t scissorCount, VkRect2D pScissors) @extern("vkCmdSetScissorWithCount"); 
extern fn void vkCmdBindIndexBuffer2KHR (VkCommandBuffer commandBuffer, VkBuffer buffer, VkDeviceSize offset, VkDeviceSize size, VkIndexType indexType) @extern("vkCmdBindIndexBuffer2KHR"); 
extern fn void vkCmdBindVertexBuffers2 (VkCommandBuffer commandBuffer, uint32_t firstBinding, uint32_t bindingCount, VkBuffer pBuffers, VkDeviceSize pOffsets, VkDeviceSize pSizes, VkDeviceSize pStrides) @extern("vkCmdBindVertexBuffers2"); 
extern fn void vkCmdSetDepthTestEnable (VkCommandBuffer commandBuffer, VkBool32 depthTestEnable) @extern("vkCmdSetDepthTestEnable"); 
extern fn void vkCmdSetDepthWriteEnable (VkCommandBuffer commandBuffer, VkBool32 depthWriteEnable) @extern("vkCmdSetDepthWriteEnable"); 
extern fn void vkCmdSetDepthCompareOp (VkCommandBuffer commandBuffer, VkCompareOp depthCompareOp) @extern("vkCmdSetDepthCompareOp"); 
extern fn void vkCmdSetDepthBoundsTestEnable (VkCommandBuffer commandBuffer, VkBool32 depthBoundsTestEnable) @extern("vkCmdSetDepthBoundsTestEnable"); 
extern fn void vkCmdSetStencilTestEnable (VkCommandBuffer commandBuffer, VkBool32 stencilTestEnable) @extern("vkCmdSetStencilTestEnable"); 
extern fn void vkCmdSetStencilOp (VkCommandBuffer commandBuffer, VkStencilFaceFlags faceMask, VkStencilOp failOp, VkStencilOp passOp, VkStencilOp depthFailOp, VkCompareOp compareOp) @extern("vkCmdSetStencilOp"); 
extern fn void vkCmdSetPatchControlPointsEXT (VkCommandBuffer commandBuffer, uint32_t patchControlPoints) @extern("vkCmdSetPatchControlPointsEXT"); 
extern fn void vkCmdSetRasterizerDiscardEnable (VkCommandBuffer commandBuffer, VkBool32 rasterizerDiscardEnable) @extern("vkCmdSetRasterizerDiscardEnable"); 
extern fn void vkCmdSetDepthBiasEnable (VkCommandBuffer commandBuffer, VkBool32 depthBiasEnable) @extern("vkCmdSetDepthBiasEnable"); 
extern fn void vkCmdSetLogicOpEXT (VkCommandBuffer commandBuffer, VkLogicOp logicOp) @extern("vkCmdSetLogicOpEXT"); 
extern fn void vkCmdSetPrimitiveRestartEnable (VkCommandBuffer commandBuffer, VkBool32 primitiveRestartEnable) @extern("vkCmdSetPrimitiveRestartEnable"); 
extern fn void vkCmdSetTessellationDomainOriginEXT (VkCommandBuffer commandBuffer, VkTessellationDomainOrigin domainOrigin) @extern("vkCmdSetTessellationDomainOriginEXT"); 
extern fn void vkCmdSetDepthClampEnableEXT (VkCommandBuffer commandBuffer, VkBool32 depthClampEnable) @extern("vkCmdSetDepthClampEnableEXT"); 
extern fn void vkCmdSetPolygonModeEXT (VkCommandBuffer commandBuffer, VkPolygonMode polygonMode) @extern("vkCmdSetPolygonModeEXT"); 
extern fn void vkCmdSetRasterizationSamplesEXT (VkCommandBuffer commandBuffer, VkSampleCountFlagBits rasterizationSamples) @extern("vkCmdSetRasterizationSamplesEXT"); 
extern fn void vkCmdSetSampleMaskEXT (VkCommandBuffer commandBuffer, VkSampleCountFlagBits samples, VkSampleMask pSampleMask) @extern("vkCmdSetSampleMaskEXT"); 
extern fn void vkCmdSetAlphaToCoverageEnableEXT (VkCommandBuffer commandBuffer, VkBool32 alphaToCoverageEnable) @extern("vkCmdSetAlphaToCoverageEnableEXT"); 
extern fn void vkCmdSetAlphaToOneEnableEXT (VkCommandBuffer commandBuffer, VkBool32 alphaToOneEnable) @extern("vkCmdSetAlphaToOneEnableEXT"); 
extern fn void vkCmdSetLogicOpEnableEXT (VkCommandBuffer commandBuffer, VkBool32 logicOpEnable) @extern("vkCmdSetLogicOpEnableEXT"); 
extern fn void vkCmdSetColorBlendEnableEXT (VkCommandBuffer commandBuffer, uint32_t firstAttachment, uint32_t attachmentCount, VkBool32 pColorBlendEnables) @extern("vkCmdSetColorBlendEnableEXT"); 
extern fn void vkCmdSetColorBlendEquationEXT (VkCommandBuffer commandBuffer, uint32_t firstAttachment, uint32_t attachmentCount, VkColorBlendEquationEXT pColorBlendEquations) @extern("vkCmdSetColorBlendEquationEXT"); 
extern fn void vkCmdSetColorWriteMaskEXT (VkCommandBuffer commandBuffer, uint32_t firstAttachment, uint32_t attachmentCount, VkColorComponentFlags pColorWriteMasks) @extern("vkCmdSetColorWriteMaskEXT"); 
extern fn void vkCmdSetRasterizationStreamEXT (VkCommandBuffer commandBuffer, uint32_t rasterizationStream) @extern("vkCmdSetRasterizationStreamEXT"); 
extern fn void vkCmdSetConservativeRasterizationModeEXT (VkCommandBuffer commandBuffer, VkConservativeRasterizationModeEXT conservativeRasterizationMode) @extern("vkCmdSetConservativeRasterizationModeEXT"); 
extern fn void vkCmdSetExtraPrimitiveOverestimationSizeEXT (VkCommandBuffer commandBuffer, float extraPrimitiveOverestimationSize) @extern("vkCmdSetExtraPrimitiveOverestimationSizeEXT"); 
extern fn void vkCmdSetDepthClipEnableEXT (VkCommandBuffer commandBuffer, VkBool32 depthClipEnable) @extern("vkCmdSetDepthClipEnableEXT"); 
extern fn void vkCmdSetSampleLocationsEnableEXT (VkCommandBuffer commandBuffer, VkBool32 sampleLocationsEnable) @extern("vkCmdSetSampleLocationsEnableEXT"); 
extern fn void vkCmdSetColorBlendAdvancedEXT (VkCommandBuffer commandBuffer, uint32_t firstAttachment, uint32_t attachmentCount, VkColorBlendAdvancedEXT pColorBlendAdvanced) @extern("vkCmdSetColorBlendAdvancedEXT"); 
extern fn void vkCmdSetProvokingVertexModeEXT (VkCommandBuffer commandBuffer, VkProvokingVertexModeEXT provokingVertexMode) @extern("vkCmdSetProvokingVertexModeEXT"); 
extern fn void vkCmdSetLineRasterizationModeEXT (VkCommandBuffer commandBuffer, VkLineRasterizationModeEXT lineRasterizationMode) @extern("vkCmdSetLineRasterizationModeEXT"); 
extern fn void vkCmdSetLineStippleEnableEXT (VkCommandBuffer commandBuffer, VkBool32 stippledLineEnable) @extern("vkCmdSetLineStippleEnableEXT"); 
extern fn void vkCmdSetDepthClipNegativeOneToOneEXT (VkCommandBuffer commandBuffer, VkBool32 negativeOneToOne) @extern("vkCmdSetDepthClipNegativeOneToOneEXT"); 
extern fn void vkCmdSetViewportWScalingEnableNV (VkCommandBuffer commandBuffer, VkBool32 viewportWScalingEnable) @extern("vkCmdSetViewportWScalingEnableNV"); 
extern fn void vkCmdSetViewportSwizzleNV (VkCommandBuffer commandBuffer, uint32_t firstViewport, uint32_t viewportCount, VkViewportSwizzleNV pViewportSwizzles) @extern("vkCmdSetViewportSwizzleNV"); 
extern fn void vkCmdSetCoverageToColorEnableNV (VkCommandBuffer commandBuffer, VkBool32 coverageToColorEnable) @extern("vkCmdSetCoverageToColorEnableNV"); 
extern fn void vkCmdSetCoverageToColorLocationNV (VkCommandBuffer commandBuffer, uint32_t coverageToColorLocation) @extern("vkCmdSetCoverageToColorLocationNV"); 
extern fn void vkCmdSetCoverageModulationModeNV (VkCommandBuffer commandBuffer, VkCoverageModulationModeNV coverageModulationMode) @extern("vkCmdSetCoverageModulationModeNV"); 
extern fn void vkCmdSetCoverageModulationTableEnableNV (VkCommandBuffer commandBuffer, VkBool32 coverageModulationTableEnable) @extern("vkCmdSetCoverageModulationTableEnableNV"); 
extern fn void vkCmdSetCoverageModulationTableNV (VkCommandBuffer commandBuffer, uint32_t coverageModulationTableCount, float pCoverageModulationTable) @extern("vkCmdSetCoverageModulationTableNV"); 
extern fn void vkCmdSetShadingRateImageEnableNV (VkCommandBuffer commandBuffer, VkBool32 shadingRateImageEnable) @extern("vkCmdSetShadingRateImageEnableNV"); 
extern fn void vkCmdSetCoverageReductionModeNV (VkCommandBuffer commandBuffer, VkCoverageReductionModeNV coverageReductionMode) @extern("vkCmdSetCoverageReductionModeNV"); 
extern fn void vkCmdSetRepresentativeFragmentTestEnableNV (VkCommandBuffer commandBuffer, VkBool32 representativeFragmentTestEnable) @extern("vkCmdSetRepresentativeFragmentTestEnableNV"); 
extern fn VkResult vkCreatePrivateDataSlot (VkDevice device, VkPrivateDataSlotCreateInfo pCreateInfo, VkAllocationCallbacks pAllocator, VkPrivateDataSlot pPrivateDataSlot) @extern("vkCreatePrivateDataSlot"); 
extern fn void vkDestroyPrivateDataSlot (VkDevice device, VkPrivateDataSlot privateDataSlot, VkAllocationCallbacks pAllocator) @extern("vkDestroyPrivateDataSlot"); 
extern fn VkResult vkSetPrivateData (VkDevice device, VkObjectType objectType, uint64_t objectHandle, VkPrivateDataSlot privateDataSlot, uint64_t data) @extern("vkSetPrivateData"); 
extern fn void vkGetPrivateData (VkDevice device, VkObjectType objectType, uint64_t objectHandle, VkPrivateDataSlot privateDataSlot, uint64_t pData) @extern("vkGetPrivateData"); 
extern fn void vkCmdCopyBuffer2 (VkCommandBuffer commandBuffer, VkCopyBufferInfo2 pCopyBufferInfo) @extern("vkCmdCopyBuffer2"); 
extern fn void vkCmdCopyImage2 (VkCommandBuffer commandBuffer, VkCopyImageInfo2 pCopyImageInfo) @extern("vkCmdCopyImage2"); 
extern fn void vkCmdBlitImage2 (VkCommandBuffer commandBuffer, VkBlitImageInfo2 pBlitImageInfo) @extern("vkCmdBlitImage2"); 
extern fn void vkCmdCopyBufferToImage2 (VkCommandBuffer commandBuffer, VkCopyBufferToImageInfo2 pCopyBufferToImageInfo) @extern("vkCmdCopyBufferToImage2"); 
extern fn void vkCmdCopyImageToBuffer2 (VkCommandBuffer commandBuffer, VkCopyImageToBufferInfo2 pCopyImageToBufferInfo) @extern("vkCmdCopyImageToBuffer2"); 
extern fn void vkCmdResolveImage2 (VkCommandBuffer commandBuffer, VkResolveImageInfo2 pResolveImageInfo) @extern("vkCmdResolveImage2"); 
extern fn void vkCmdRefreshObjectsKHR (VkCommandBuffer commandBuffer, VkRefreshObjectListKHR pRefreshObjects) @extern("vkCmdRefreshObjectsKHR"); 
extern fn VkResult vkGetPhysicalDeviceRefreshableObjectTypesKHR (VkPhysicalDevice physicalDevice, uint32_t pRefreshableObjectTypeCount, VkObjectType pRefreshableObjectTypes) @extern("vkGetPhysicalDeviceRefreshableObjectTypesKHR"); 
extern fn void vkCmdSetFragmentShadingRateKHR (VkCommandBuffer commandBuffer, VkExtent2D pFragmentSize, VkFragmentShadingRateCombinerOpKHR combinerOps) @extern("vkCmdSetFragmentShadingRateKHR"); 
extern fn VkResult vkGetPhysicalDeviceFragmentShadingRatesKHR (VkPhysicalDevice physicalDevice, uint32_t pFragmentShadingRateCount, VkPhysicalDeviceFragmentShadingRateKHR pFragmentShadingRates) @extern("vkGetPhysicalDeviceFragmentShadingRatesKHR"); 
extern fn void vkCmdSetFragmentShadingRateEnumNV (VkCommandBuffer commandBuffer, VkFragmentShadingRateNV shadingRate, VkFragmentShadingRateCombinerOpKHR combinerOps) @extern("vkCmdSetFragmentShadingRateEnumNV"); 
extern fn void vkGetAccelerationStructureBuildSizesKHR (VkDevice device, VkAccelerationStructureBuildTypeKHR buildType, VkAccelerationStructureBuildGeometryInfoKHR pBuildInfo, uint32_t pMaxPrimitiveCounts, VkAccelerationStructureBuildSizesInfoKHR pSizeInfo) @extern("vkGetAccelerationStructureBuildSizesKHR"); 
extern fn void vkCmdSetVertexInputEXT (VkCommandBuffer commandBuffer, uint32_t vertexBindingDescriptionCount, VkVertexInputBindingDescription2EXT pVertexBindingDescriptions, uint32_t vertexAttributeDescriptionCount, VkVertexInputAttributeDescription2EXT pVertexAttributeDescriptions) @extern("vkCmdSetVertexInputEXT"); 
extern fn void vkCmdSetColorWriteEnableEXT (VkCommandBuffer commandBuffer, uint32_t attachmentCount, VkBool32 pColorWriteEnables) @extern("vkCmdSetColorWriteEnableEXT"); 
extern fn void vkCmdSetEvent2 (VkCommandBuffer commandBuffer, VkEvent event, VkDependencyInfo pDependencyInfo) @extern("vkCmdSetEvent2"); 
extern fn void vkCmdResetEvent2 (VkCommandBuffer commandBuffer, VkEvent event, VkPipelineStageFlags2 stageMask) @extern("vkCmdResetEvent2"); 
extern fn void vkCmdWaitEvents2 (VkCommandBuffer commandBuffer, uint32_t eventCount, VkEvent pEvents, VkDependencyInfo pDependencyInfos) @extern("vkCmdWaitEvents2"); 
extern fn void vkCmdPipelineBarrier2 (VkCommandBuffer commandBuffer, VkDependencyInfo pDependencyInfo) @extern("vkCmdPipelineBarrier2"); 
extern fn VkResult vkQueueSubmit2 (VkQueue queue, uint32_t submitCount, VkSubmitInfo2 pSubmits, VkFence fence) @extern("vkQueueSubmit2"); 
extern fn void vkCmdWriteTimestamp2 (VkCommandBuffer commandBuffer, VkPipelineStageFlags2 stage, VkQueryPool queryPool, uint32_t query) @extern("vkCmdWriteTimestamp2"); 
extern fn void vkCmdWriteBufferMarker2AMD (VkCommandBuffer commandBuffer, VkPipelineStageFlags2 stage, VkBuffer dstBuffer, VkDeviceSize dstOffset, uint32_t marker) @extern("vkCmdWriteBufferMarker2AMD"); 
extern fn void vkGetQueueCheckpointData2NV (VkQueue queue, uint32_t pCheckpointDataCount, VkCheckpointData2NV pCheckpointData) @extern("vkGetQueueCheckpointData2NV"); 
extern fn VkResult vkCopyMemoryToImageEXT (VkDevice device, VkCopyMemoryToImageInfoEXT pCopyMemoryToImageInfo) @extern("vkCopyMemoryToImageEXT"); 
extern fn VkResult vkCopyImageToMemoryEXT (VkDevice device, VkCopyImageToMemoryInfoEXT pCopyImageToMemoryInfo) @extern("vkCopyImageToMemoryEXT"); 
extern fn VkResult vkCopyImageToImageEXT (VkDevice device, VkCopyImageToImageInfoEXT pCopyImageToImageInfo) @extern("vkCopyImageToImageEXT"); 
extern fn VkResult vkTransitionImageLayoutEXT (VkDevice device, uint32_t transitionCount, VkHostImageLayoutTransitionInfoEXT pTransitions) @extern("vkTransitionImageLayoutEXT"); 
extern fn void vkGetCommandPoolMemoryConsumption (VkDevice device, VkCommandPool commandPool, VkCommandBuffer commandBuffer, VkCommandPoolMemoryConsumption pConsumption) @extern("vkGetCommandPoolMemoryConsumption"); 
extern fn VkResult vkGetPhysicalDeviceVideoCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkVideoProfileInfoKHR pVideoProfile, VkVideoCapabilitiesKHR pCapabilities) @extern("vkGetPhysicalDeviceVideoCapabilitiesKHR"); 
extern fn VkResult vkGetPhysicalDeviceVideoFormatPropertiesKHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceVideoFormatInfoKHR pVideoFormatInfo, uint32_t pVideoFormatPropertyCount, VkVideoFormatPropertiesKHR pVideoFormatProperties) @extern("vkGetPhysicalDeviceVideoFormatPropertiesKHR"); 
extern fn VkResult vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR (VkPhysicalDevice physicalDevice, VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR pQualityLevelInfo, VkVideoEncodeQualityLevelPropertiesKHR pQualityLevelProperties) @extern("vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR"); 
extern fn VkResult vkCreateVideoSessionKHR (VkDevice device, VkVideoSessionCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkVideoSessionKHR pVideoSession) @extern("vkCreateVideoSessionKHR"); 
extern fn void vkDestroyVideoSessionKHR (VkDevice device, VkVideoSessionKHR videoSession, VkAllocationCallbacks pAllocator) @extern("vkDestroyVideoSessionKHR"); 
extern fn VkResult vkCreateVideoSessionParametersKHR (VkDevice device, VkVideoSessionParametersCreateInfoKHR pCreateInfo, VkAllocationCallbacks pAllocator, VkVideoSessionParametersKHR pVideoSessionParameters) @extern("vkCreateVideoSessionParametersKHR"); 
extern fn VkResult vkUpdateVideoSessionParametersKHR (VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkVideoSessionParametersUpdateInfoKHR pUpdateInfo) @extern("vkUpdateVideoSessionParametersKHR"); 
extern fn VkResult vkGetEncodedVideoSessionParametersKHR (VkDevice device, VkVideoEncodeSessionParametersGetInfoKHR pVideoSessionParametersInfo, VkVideoEncodeSessionParametersFeedbackInfoKHR pFeedbackInfo, size_t pDataSize, void pData) @extern("vkGetEncodedVideoSessionParametersKHR"); 
extern fn void vkDestroyVideoSessionParametersKHR (VkDevice device, VkVideoSessionParametersKHR videoSessionParameters, VkAllocationCallbacks pAllocator) @extern("vkDestroyVideoSessionParametersKHR"); 
extern fn VkResult vkGetVideoSessionMemoryRequirementsKHR (VkDevice device, VkVideoSessionKHR videoSession, uint32_t pMemoryRequirementsCount, VkVideoSessionMemoryRequirementsKHR pMemoryRequirements) @extern("vkGetVideoSessionMemoryRequirementsKHR"); 
extern fn VkResult vkBindVideoSessionMemoryKHR (VkDevice device, VkVideoSessionKHR videoSession, uint32_t bindSessionMemoryInfoCount, VkBindVideoSessionMemoryInfoKHR pBindSessionMemoryInfos) @extern("vkBindVideoSessionMemoryKHR"); 
extern fn void vkCmdDecodeVideoKHR (VkCommandBuffer commandBuffer, VkVideoDecodeInfoKHR pDecodeInfo) @extern("vkCmdDecodeVideoKHR"); 
extern fn void vkCmdBeginVideoCodingKHR (VkCommandBuffer commandBuffer, VkVideoBeginCodingInfoKHR pBeginInfo) @extern("vkCmdBeginVideoCodingKHR"); 
extern fn void vkCmdControlVideoCodingKHR (VkCommandBuffer commandBuffer, VkVideoCodingControlInfoKHR pCodingControlInfo) @extern("vkCmdControlVideoCodingKHR"); 
extern fn void vkCmdEndVideoCodingKHR (VkCommandBuffer commandBuffer, VkVideoEndCodingInfoKHR pEndCodingInfo) @extern("vkCmdEndVideoCodingKHR"); 
extern fn void vkCmdEncodeVideoKHR (VkCommandBuffer commandBuffer, VkVideoEncodeInfoKHR pEncodeInfo) @extern("vkCmdEncodeVideoKHR"); 
extern fn void vkCmdDecompressMemoryNV (VkCommandBuffer commandBuffer, uint32_t decompressRegionCount, VkDecompressMemoryRegionNV pDecompressMemoryRegions) @extern("vkCmdDecompressMemoryNV"); 
extern fn void vkCmdDecompressMemoryIndirectCountNV (VkCommandBuffer commandBuffer, VkDeviceAddress indirectCommandsAddress, VkDeviceAddress indirectCommandsCountAddress, uint32_t stride) @extern("vkCmdDecompressMemoryIndirectCountNV"); 
extern fn VkResult vkCreateCuModuleNVX (VkDevice device, VkCuModuleCreateInfoNVX pCreateInfo, VkAllocationCallbacks pAllocator, VkCuModuleNVX pModule) @extern("vkCreateCuModuleNVX"); 
extern fn VkResult vkCreateCuFunctionNVX (VkDevice device, VkCuFunctionCreateInfoNVX pCreateInfo, VkAllocationCallbacks pAllocator, VkCuFunctionNVX pFunction) @extern("vkCreateCuFunctionNVX"); 
extern fn void vkDestroyCuModuleNVX (VkDevice device, VkCuModuleNVX module, VkAllocationCallbacks pAllocator) @extern("vkDestroyCuModuleNVX"); 
extern fn void vkDestroyCuFunctionNVX (VkDevice device, VkCuFunctionNVX function, VkAllocationCallbacks pAllocator) @extern("vkDestroyCuFunctionNVX"); 
extern fn void vkCmdCuLaunchKernelNVX (VkCommandBuffer commandBuffer, VkCuLaunchInfoNVX pLaunchInfo) @extern("vkCmdCuLaunchKernelNVX"); 
extern fn void vkGetDescriptorSetLayoutSizeEXT (VkDevice device, VkDescriptorSetLayout layout, VkDeviceSize pLayoutSizeInBytes) @extern("vkGetDescriptorSetLayoutSizeEXT"); 
extern fn void vkGetDescriptorSetLayoutBindingOffsetEXT (VkDevice device, VkDescriptorSetLayout layout, uint32_t binding, VkDeviceSize pOffset) @extern("vkGetDescriptorSetLayoutBindingOffsetEXT"); 
extern fn void vkGetDescriptorEXT (VkDevice device, VkDescriptorGetInfoEXT pDescriptorInfo, size_t dataSize, void pDescriptor) @extern("vkGetDescriptorEXT"); 
extern fn void vkCmdBindDescriptorBuffersEXT (VkCommandBuffer commandBuffer, uint32_t bufferCount, VkDescriptorBufferBindingInfoEXT pBindingInfos) @extern("vkCmdBindDescriptorBuffersEXT"); 
extern fn void vkCmdSetDescriptorBufferOffsetsEXT (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32_t firstSet, uint32_t setCount, uint32_t pBufferIndices, VkDeviceSize pOffsets) @extern("vkCmdSetDescriptorBufferOffsetsEXT"); 
extern fn void vkCmdBindDescriptorBufferEmbeddedSamplersEXT (VkCommandBuffer commandBuffer, VkPipelineBindPoint pipelineBindPoint, VkPipelineLayout layout, uint32_t set) @extern("vkCmdBindDescriptorBufferEmbeddedSamplersEXT"); 
extern fn VkResult vkGetBufferOpaqueCaptureDescriptorDataEXT (VkDevice device, VkBufferCaptureDescriptorDataInfoEXT pInfo, void pData) @extern("vkGetBufferOpaqueCaptureDescriptorDataEXT"); 
extern fn VkResult vkGetImageOpaqueCaptureDescriptorDataEXT (VkDevice device, VkImageCaptureDescriptorDataInfoEXT pInfo, void pData) @extern("vkGetImageOpaqueCaptureDescriptorDataEXT"); 
extern fn VkResult vkGetImageViewOpaqueCaptureDescriptorDataEXT (VkDevice device, VkImageViewCaptureDescriptorDataInfoEXT pInfo, void pData) @extern("vkGetImageViewOpaqueCaptureDescriptorDataEXT"); 
extern fn VkResult vkGetSamplerOpaqueCaptureDescriptorDataEXT (VkDevice device, VkSamplerCaptureDescriptorDataInfoEXT pInfo, void pData) @extern("vkGetSamplerOpaqueCaptureDescriptorDataEXT"); 
extern fn VkResult vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT (VkDevice device, VkAccelerationStructureCaptureDescriptorDataInfoEXT pInfo, void pData) @extern("vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT"); 
extern fn void vkSetDeviceMemoryPriorityEXT (VkDevice device, VkDeviceMemory memory, float priority) @extern("vkSetDeviceMemoryPriorityEXT"); 
extern fn VkResult vkAcquireDrmDisplayEXT (VkPhysicalDevice physicalDevice, int32_t drmFd, VkDisplayKHR display) @extern("vkAcquireDrmDisplayEXT"); 
extern fn VkResult vkGetDrmDisplayEXT (VkPhysicalDevice physicalDevice, int32_t drmFd, uint32_t connectorId, VkDisplayKHR display) @extern("vkGetDrmDisplayEXT"); 
extern fn VkResult vkWaitForPresentKHR (VkDevice device, VkSwapchainKHR swapchain, uint64_t presentId, uint64_t timeout) @extern("vkWaitForPresentKHR"); 
extern fn VkResult vkCreateBufferCollectionFUCHSIA (VkDevice device, VkBufferCollectionCreateInfoFUCHSIA pCreateInfo, VkAllocationCallbacks pAllocator, VkBufferCollectionFUCHSIA pCollection) @extern("vkCreateBufferCollectionFUCHSIA"); 
extern fn VkResult vkSetBufferCollectionBufferConstraintsFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkBufferConstraintsInfoFUCHSIA pBufferConstraintsInfo) @extern("vkSetBufferCollectionBufferConstraintsFUCHSIA"); 
extern fn VkResult vkSetBufferCollectionImageConstraintsFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkImageConstraintsInfoFUCHSIA pImageConstraintsInfo) @extern("vkSetBufferCollectionImageConstraintsFUCHSIA"); 
extern fn void vkDestroyBufferCollectionFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkAllocationCallbacks pAllocator) @extern("vkDestroyBufferCollectionFUCHSIA"); 
extern fn VkResult vkGetBufferCollectionPropertiesFUCHSIA (VkDevice device, VkBufferCollectionFUCHSIA collection, VkBufferCollectionPropertiesFUCHSIA pProperties) @extern("vkGetBufferCollectionPropertiesFUCHSIA"); 
extern fn VkResult vkCreateCudaModuleNV (VkDevice device, VkCudaModuleCreateInfoNV pCreateInfo, VkAllocationCallbacks pAllocator, VkCudaModuleNV pModule) @extern("vkCreateCudaModuleNV"); 
extern fn VkResult vkGetCudaModuleCacheNV (VkDevice device, VkCudaModuleNV module, size_t pCacheSize, void pCacheData) @extern("vkGetCudaModuleCacheNV"); 
extern fn VkResult vkCreateCudaFunctionNV (VkDevice device, VkCudaFunctionCreateInfoNV pCreateInfo, VkAllocationCallbacks pAllocator, VkCudaFunctionNV pFunction) @extern("vkCreateCudaFunctionNV"); 
extern fn void vkDestroyCudaModuleNV (VkDevice device, VkCudaModuleNV module, VkAllocationCallbacks pAllocator) @extern("vkDestroyCudaModuleNV"); 
extern fn void vkDestroyCudaFunctionNV (VkDevice device, VkCudaFunctionNV function, VkAllocationCallbacks pAllocator) @extern("vkDestroyCudaFunctionNV"); 
extern fn void vkCmdCudaLaunchKernelNV (VkCommandBuffer commandBuffer, VkCudaLaunchInfoNV pLaunchInfo) @extern("vkCmdCudaLaunchKernelNV"); 
extern fn void vkCmdBeginRendering (VkCommandBuffer commandBuffer, VkRenderingInfo pRenderingInfo) @extern("vkCmdBeginRendering"); 
extern fn void vkCmdEndRendering (VkCommandBuffer commandBuffer) @extern("vkCmdEndRendering"); 
extern fn void vkGetDescriptorSetLayoutHostMappingInfoVALVE (VkDevice device, VkDescriptorSetBindingReferenceVALVE pBindingReference, VkDescriptorSetLayoutHostMappingInfoVALVE pHostMapping) @extern("vkGetDescriptorSetLayoutHostMappingInfoVALVE"); 
extern fn void vkGetDescriptorSetHostMappingVALVE (VkDevice device, VkDescriptorSet descriptorSet, void ppData) @extern("vkGetDescriptorSetHostMappingVALVE"); 
extern fn VkResult vkCreateMicromapEXT (VkDevice device, VkMicromapCreateInfoEXT pCreateInfo, VkAllocationCallbacks pAllocator, VkMicromapEXT pMicromap) @extern("vkCreateMicromapEXT"); 
extern fn void vkCmdBuildMicromapsEXT (VkCommandBuffer commandBuffer, uint32_t infoCount, VkMicromapBuildInfoEXT pInfos) @extern("vkCmdBuildMicromapsEXT"); 
extern fn VkResult vkBuildMicromapsEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, uint32_t infoCount, VkMicromapBuildInfoEXT pInfos) @extern("vkBuildMicromapsEXT"); 
extern fn void vkDestroyMicromapEXT (VkDevice device, VkMicromapEXT micromap, VkAllocationCallbacks pAllocator) @extern("vkDestroyMicromapEXT"); 
extern fn void vkCmdCopyMicromapEXT (VkCommandBuffer commandBuffer, VkCopyMicromapInfoEXT pInfo) @extern("vkCmdCopyMicromapEXT"); 
extern fn VkResult vkCopyMicromapEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMicromapInfoEXT pInfo) @extern("vkCopyMicromapEXT"); 
extern fn void vkCmdCopyMicromapToMemoryEXT (VkCommandBuffer commandBuffer, VkCopyMicromapToMemoryInfoEXT pInfo) @extern("vkCmdCopyMicromapToMemoryEXT"); 
extern fn VkResult vkCopyMicromapToMemoryEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMicromapToMemoryInfoEXT pInfo) @extern("vkCopyMicromapToMemoryEXT"); 
extern fn void vkCmdCopyMemoryToMicromapEXT (VkCommandBuffer commandBuffer, VkCopyMemoryToMicromapInfoEXT pInfo) @extern("vkCmdCopyMemoryToMicromapEXT"); 
extern fn VkResult vkCopyMemoryToMicromapEXT (VkDevice device, VkDeferredOperationKHR deferredOperation, VkCopyMemoryToMicromapInfoEXT pInfo) @extern("vkCopyMemoryToMicromapEXT"); 
extern fn void vkCmdWriteMicromapsPropertiesEXT (VkCommandBuffer commandBuffer, uint32_t micromapCount, VkMicromapEXT pMicromaps, VkQueryType queryType, VkQueryPool queryPool, uint32_t firstQuery) @extern("vkCmdWriteMicromapsPropertiesEXT"); 
extern fn VkResult vkWriteMicromapsPropertiesEXT (VkDevice device, uint32_t micromapCount, VkMicromapEXT pMicromaps, VkQueryType queryType, size_t dataSize, void pData, size_t stride) @extern("vkWriteMicromapsPropertiesEXT"); 
extern fn void vkGetDeviceMicromapCompatibilityEXT (VkDevice device, VkMicromapVersionInfoEXT pVersionInfo, VkAccelerationStructureCompatibilityKHR pCompatibility) @extern("vkGetDeviceMicromapCompatibilityEXT"); 
extern fn void vkGetMicromapBuildSizesEXT (VkDevice device, VkAccelerationStructureBuildTypeKHR buildType, VkMicromapBuildInfoEXT pBuildInfo, VkMicromapBuildSizesInfoEXT pSizeInfo) @extern("vkGetMicromapBuildSizesEXT"); 
extern fn void vkGetShaderModuleIdentifierEXT (VkDevice device, VkShaderModule shaderModule, VkShaderModuleIdentifierEXT pIdentifier) @extern("vkGetShaderModuleIdentifierEXT"); 
extern fn void vkGetShaderModuleCreateInfoIdentifierEXT (VkDevice device, VkShaderModuleCreateInfo pCreateInfo, VkShaderModuleIdentifierEXT pIdentifier) @extern("vkGetShaderModuleCreateInfoIdentifierEXT"); 
extern fn void vkGetImageSubresourceLayout2KHR (VkDevice device, VkImage image, VkImageSubresource2KHR pSubresource, VkSubresourceLayout2KHR pLayout) @extern("vkGetImageSubresourceLayout2KHR"); 
extern fn VkResult vkGetPipelinePropertiesEXT (VkDevice device, VkPipelineInfoEXT pPipelineInfo, VkBaseOutStructure pPipelineProperties) @extern("vkGetPipelinePropertiesEXT"); 
extern fn void vkExportMetalObjectsEXT (VkDevice device, VkExportMetalObjectsInfoEXT pMetalObjectsInfo) @extern("vkExportMetalObjectsEXT"); 
extern fn VkResult vkGetFramebufferTilePropertiesQCOM (VkDevice device, VkFramebuffer framebuffer, uint32_t pPropertiesCount, VkTilePropertiesQCOM pProperties) @extern("vkGetFramebufferTilePropertiesQCOM"); 
extern fn VkResult vkGetDynamicRenderingTilePropertiesQCOM (VkDevice device, VkRenderingInfo pRenderingInfo, VkTilePropertiesQCOM pProperties) @extern("vkGetDynamicRenderingTilePropertiesQCOM"); 
extern fn VkResult vkGetPhysicalDeviceOpticalFlowImageFormatsNV (VkPhysicalDevice physicalDevice, VkOpticalFlowImageFormatInfoNV pOpticalFlowImageFormatInfo, uint32_t pFormatCount, VkOpticalFlowImageFormatPropertiesNV pImageFormatProperties) @extern("vkGetPhysicalDeviceOpticalFlowImageFormatsNV"); 
extern fn VkResult vkCreateOpticalFlowSessionNV (VkDevice device, VkOpticalFlowSessionCreateInfoNV pCreateInfo, VkAllocationCallbacks pAllocator, VkOpticalFlowSessionNV pSession) @extern("vkCreateOpticalFlowSessionNV"); 
extern fn void vkDestroyOpticalFlowSessionNV (VkDevice device, VkOpticalFlowSessionNV session, VkAllocationCallbacks pAllocator) @extern("vkDestroyOpticalFlowSessionNV"); 
extern fn VkResult vkBindOpticalFlowSessionImageNV (VkDevice device, VkOpticalFlowSessionNV session, VkOpticalFlowSessionBindingPointNV bindingPoint, VkImageView view, VkImageLayout layout) @extern("vkBindOpticalFlowSessionImageNV"); 
extern fn void vkCmdOpticalFlowExecuteNV (VkCommandBuffer commandBuffer, VkOpticalFlowSessionNV session, VkOpticalFlowExecuteInfoNV pExecuteInfo) @extern("vkCmdOpticalFlowExecuteNV"); 
extern fn VkResult vkGetDeviceFaultInfoEXT (VkDevice device, VkDeviceFaultCountsEXT pFaultCounts, VkDeviceFaultInfoEXT pFaultInfo) @extern("vkGetDeviceFaultInfoEXT"); 
extern fn void vkCmdSetDepthBias2EXT (VkCommandBuffer commandBuffer, VkDepthBiasInfoEXT pDepthBiasInfo) @extern("vkCmdSetDepthBias2EXT"); 
extern fn VkResult vkReleaseSwapchainImagesEXT (VkDevice device, VkReleaseSwapchainImagesInfoEXT pReleaseInfo) @extern("vkReleaseSwapchainImagesEXT"); 
extern fn void vkGetDeviceImageSubresourceLayoutKHR (VkDevice device, VkDeviceImageSubresourceInfoKHR pInfo, VkSubresourceLayout2KHR pLayout) @extern("vkGetDeviceImageSubresourceLayoutKHR"); 
extern fn VkResult vkMapMemory2KHR (VkDevice device, VkMemoryMapInfoKHR pMemoryMapInfo, void ppData) @extern("vkMapMemory2KHR"); 
extern fn VkResult vkUnmapMemory2KHR (VkDevice device, VkMemoryUnmapInfoKHR pMemoryUnmapInfo) @extern("vkUnmapMemory2KHR"); 
extern fn VkResult vkCreateShadersEXT (VkDevice device, uint32_t createInfoCount, VkShaderCreateInfoEXT pCreateInfos, VkAllocationCallbacks pAllocator, VkShaderEXT pShaders) @extern("vkCreateShadersEXT"); 
extern fn void vkDestroyShaderEXT (VkDevice device, VkShaderEXT shader, VkAllocationCallbacks pAllocator) @extern("vkDestroyShaderEXT"); 
extern fn VkResult vkGetShaderBinaryDataEXT (VkDevice device, VkShaderEXT shader, size_t pDataSize, void pData) @extern("vkGetShaderBinaryDataEXT"); 
extern fn void vkCmdBindShadersEXT (VkCommandBuffer commandBuffer, uint32_t stageCount, VkShaderStageFlagBits pStages, VkShaderEXT pShaders) @extern("vkCmdBindShadersEXT"); 
extern fn VkResult vkGetScreenBufferPropertiesQNX (VkDevice device, _screen_buffer buffer, VkScreenBufferPropertiesQNX pProperties) @extern("vkGetScreenBufferPropertiesQNX"); 
extern fn VkResult vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR (VkPhysicalDevice physicalDevice, uint32_t pPropertyCount, VkCooperativeMatrixPropertiesKHR pProperties) @extern("vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR"); 
extern fn VkResult vkGetExecutionGraphPipelineScratchSizeAMDX (VkDevice device, VkPipeline executionGraph, VkExecutionGraphPipelineScratchSizeAMDX pSizeInfo) @extern("vkGetExecutionGraphPipelineScratchSizeAMDX"); 
extern fn VkResult vkGetExecutionGraphPipelineNodeIndexAMDX (VkDevice device, VkPipeline executionGraph, VkPipelineShaderStageNodeCreateInfoAMDX pNodeInfo, uint32_t pNodeIndex) @extern("vkGetExecutionGraphPipelineNodeIndexAMDX"); 
extern fn VkResult vkCreateExecutionGraphPipelinesAMDX (VkDevice device, VkPipelineCache pipelineCache, uint32_t createInfoCount, VkExecutionGraphPipelineCreateInfoAMDX pCreateInfos, VkAllocationCallbacks pAllocator, VkPipeline pPipelines) @extern("vkCreateExecutionGraphPipelinesAMDX"); 
extern fn void vkCmdInitializeGraphScratchMemoryAMDX (VkCommandBuffer commandBuffer, VkDeviceAddress scratch) @extern("vkCmdInitializeGraphScratchMemoryAMDX"); 
extern fn void vkCmdDispatchGraphAMDX (VkCommandBuffer commandBuffer, VkDeviceAddress scratch, VkDispatchGraphCountInfoAMDX pCountInfo) @extern("vkCmdDispatchGraphAMDX"); 
extern fn void vkCmdDispatchGraphIndirectAMDX (VkCommandBuffer commandBuffer, VkDeviceAddress scratch, VkDispatchGraphCountInfoAMDX pCountInfo) @extern("vkCmdDispatchGraphIndirectAMDX"); 
extern fn void vkCmdDispatchGraphIndirectCountAMDX (VkCommandBuffer commandBuffer, VkDeviceAddress scratch, VkDeviceAddress countInfo) @extern("vkCmdDispatchGraphIndirectCountAMDX"); 
extern fn void vkCmdBindDescriptorSets2KHR (VkCommandBuffer commandBuffer, VkBindDescriptorSetsInfoKHR pBindDescriptorSetsInfo) @extern("vkCmdBindDescriptorSets2KHR"); 
extern fn void vkCmdPushConstants2KHR (VkCommandBuffer commandBuffer, VkPushConstantsInfoKHR pPushConstantsInfo) @extern("vkCmdPushConstants2KHR"); 
extern fn void vkCmdPushDescriptorSet2KHR (VkCommandBuffer commandBuffer, VkPushDescriptorSetInfoKHR pPushDescriptorSetInfo) @extern("vkCmdPushDescriptorSet2KHR"); 
extern fn void vkCmdPushDescriptorSetWithTemplate2KHR (VkCommandBuffer commandBuffer, VkPushDescriptorSetWithTemplateInfoKHR pPushDescriptorSetWithTemplateInfo) @extern("vkCmdPushDescriptorSetWithTemplate2KHR"); 
extern fn void vkCmdSetDescriptorBufferOffsets2EXT (VkCommandBuffer commandBuffer, VkSetDescriptorBufferOffsetsInfoEXT pSetDescriptorBufferOffsetsInfo) @extern("vkCmdSetDescriptorBufferOffsets2EXT"); 
extern fn void vkCmdBindDescriptorBufferEmbeddedSamplers2EXT (VkCommandBuffer commandBuffer, VkBindDescriptorBufferEmbeddedSamplersInfoEXT pBindDescriptorBufferEmbeddedSamplersInfo) @extern("vkCmdBindDescriptorBufferEmbeddedSamplers2EXT"); 
extern fn VkResult vkSetLatencySleepModeNV (VkDevice device, VkSwapchainKHR swapchain, VkLatencySleepModeInfoNV pSleepModeInfo) @extern("vkSetLatencySleepModeNV"); 
extern fn VkResult vkLatencySleepNV (VkDevice device, VkSwapchainKHR swapchain, VkLatencySleepInfoNV pSleepInfo) @extern("vkLatencySleepNV"); 
extern fn void vkSetLatencyMarkerNV (VkDevice device, VkSwapchainKHR swapchain, VkSetLatencyMarkerInfoNV pLatencyMarkerInfo) @extern("vkSetLatencyMarkerNV"); 
extern fn void vkGetLatencyTimingsNV (VkDevice device, VkSwapchainKHR swapchain, VkGetLatencyMarkerInfoNV pLatencyMarkerInfo) @extern("vkGetLatencyTimingsNV"); 
extern fn void vkQueueNotifyOutOfBandNV (VkQueue queue, VkOutOfBandQueueTypeInfoNV pQueueTypeInfo) @extern("vkQueueNotifyOutOfBandNV"); 
extern fn void vkCmdSetRenderingAttachmentLocationsKHR (VkCommandBuffer commandBuffer, VkRenderingAttachmentLocationInfoKHR pLocationInfo) @extern("vkCmdSetRenderingAttachmentLocationsKHR"); 
extern fn void vkCmdSetRenderingInputAttachmentIndicesKHR (VkCommandBuffer commandBuffer, VkRenderingInputAttachmentIndexInfoKHR pInputAttachmentIndexInfo) @extern("vkCmdSetRenderingInputAttachmentIndicesKHR"); 
