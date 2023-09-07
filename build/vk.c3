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

def ImageCreateFlagBits = distinct inline int;
const ImageCreateFlagBits IMAGE_CREATE_SPARSE_BINDING_BIT = 0x00000001;
const ImageCreateFlagBits IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002;
const ImageCreateFlagBits IMAGE_CREATE_SPARSE_ALIASED_BIT = 0x00000004;
const ImageCreateFlagBits IMAGE_CREATE_MUTABLE_FORMAT_BIT = 0x00000008;
const ImageCreateFlagBits IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 0x00000010;

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


def InternalAllocationType = distinct inline int;
const InternalAllocationType INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0;

def MemoryHeapFlagBits = distinct inline int;
const MemoryHeapFlagBits MEMORY_HEAP_DEVICE_LOCAL_BIT = 0x00000001;

def MemoryPropertyFlagBits = distinct inline int;
const MemoryPropertyFlagBits MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 0x00000001;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_VISIBLE_BIT = 0x00000002;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_COHERENT_BIT = 0x00000004;
const MemoryPropertyFlagBits MEMORY_PROPERTY_HOST_CACHED_BIT = 0x00000008;
const MemoryPropertyFlagBits MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 0x00000010;

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

def SparseImageFormatFlagBits = distinct inline int;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 0x00000001;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 0x00000002;
const SparseImageFormatFlagBits SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 0x00000004;

def SparseMemoryBindFlagBits = distinct inline int;
const SparseMemoryBindFlagBits SPARSE_MEMORY_BIND_METADATA_BIT = 0x00000001;

def FenceCreateFlagBits = distinct inline int;
const FenceCreateFlagBits FENCE_CREATE_SIGNALED_BIT = 0x00000001;

def EventCreateFlagBits = distinct inline int;


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

def PipelineShaderStageCreateFlagBits = distinct inline int;


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

def DescriptorSetLayoutCreateFlagBits = distinct inline int;


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

def DependencyFlagBits = distinct inline int;
const DependencyFlagBits DEPENDENCY_BY_REGION_BIT = 0x00000001;

def FramebufferCreateFlagBits = distinct inline int;


def PipelineBindPoint = distinct inline int;
const PipelineBindPoint PIPELINE_BIND_POINT_GRAPHICS = 0;
const PipelineBindPoint PIPELINE_BIND_POINT_COMPUTE = 1;

def RenderPassCreateFlagBits = distinct inline int;


def SubpassDescriptionFlagBits = distinct inline int;


def CommandPoolCreateFlagBits = distinct inline int;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_TRANSIENT_BIT = 0x00000001;
const CommandPoolCreateFlagBits COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 0x00000002;

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
const StencilFaceFlagBits STENCIL_FRONT_AND_BACK = null;

def SubpassContents = distinct inline int;
const SubpassContents SUBPASS_CONTENTS_INLINE = 0;
const SubpassContents SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1;

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
const ColorSpaceKHR COLORSPACE_SRGB_NONLINEAR_KHR = null;

def CompositeAlphaFlagBitsKHR = distinct inline int;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 0x00000001;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 0x00000002;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 0x00000004;
const CompositeAlphaFlagBitsKHR COMPOSITE_ALPHA_INHERIT_BIT_KHR = 0x00000008;
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
