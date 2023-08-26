module context;


import std::io;
import std::core::env;
import std::collections::list;
import vk;
import glfw;
import helpers;

const VK_API_VERSION_1_2 = vk::@makeApiVersion(0,1,2,0);
const ENABLE_VALIDATION_LAYERS = true;

def StringList = List(<ZString>);
def CommandBufferList = List(<VkCommandBuffer>);

fault ContextErrors
{
    FAILED_CREATING_VULKAN,
    FAILED_DRAWING_FRAME,
    DESCRIPTOR_FAILED
}

struct VkContext {
      VkInstance instance;
      VkSurfaceKHR surface;
      VkDevice device;
      VkPhysicalDevice physical_device;
      SwapChain swapchain;
      VkQueue graphics_queue;
      VkDebugUtilsMessengerEXT debug_messenger;
      VkCommandPool command_pool;
      CommandBufferList command_buffers;
}

fn void VkContext.free(&self)
{
    vk::deviceWaitIdle(self.device)!!;
    if (ENABLE_VALIDATION_LAYERS) {
      vk::destroyDebugUtilsMessengerEXT(self.instance, self.debug_messenger, null);
    }
    self.command_buffers.free();
    self.swapchain.free(self.device);
    vk::destroySurfaceKHR(self.instance, self.surface, null);
    vk::destroyCommandPool(self.device, self.command_pool, null);
    vk::destroyDevice(self.device, null);
    vk::destroyInstance(self.instance, null);
}

fn VkContext! init(GLFWwindow window) {
    VkContext context;

    AppInfo appInfo = {
        .pApplicationName = "Hello Cube",
        .applicationVersion = VK_API_VERSION_1_2,
        .pEngineName = "Super engine",
        .engineVersion = VK_API_VERSION_1_2,
        .apiVersion = VK_API_VERSION_1_2,
        .enable_debug = ENABLE_VALIDATION_LAYERS,
        .instance_flags = env::os_is_darwin() ? vk::VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0
    };

    defer appInfo.free();

    //"VK_LAYER_LUNARG_api_dump"
    appInfo.validations.add_array({"VK_LAYER_KHRONOS_validation"});
    appInfo.device_extensions.add_array({"VK_KHR_swapchain", "VK_KHR_push_descriptor"});

    // SETUP extensions
    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    for (int i = 0; i < glfwExtensions_count; ++i) appInfo.extensions.push(glfwExtensions[i]);

    if (ENABLE_VALIDATION_LAYERS) {
       appInfo.extensions.add_array({"VK_EXT_debug_utils"});
    }

    if (env::os_is_darwin()) {
        appInfo.extensions.push("VK_KHR_portability_enumeration");
        appInfo.device_extensions.push("VK_KHR_portability_subset");
    }

    Device device = vk::requestDevice(&appInfo, window)!;
    defer device.free();

    context.instance = vk::getInstance(&appInfo)!;

    if (ENABLE_VALIDATION_LAYERS) {
       context.debug_messenger = context.instance.createDebugUtilsMessenger()!;
    }

    context.surface = glfw::createWindowSurface(context.instance, window, null)!;

    VkPhysicalDevice physicalDevice = helpers::getSuitablePhysicalDevice(context.instance, context.surface, appInfo.device_extensions.to_array())!;
    context.physical_device = physicalDevice;

    helpers::QueueFamily indices = helpers::findQueueFamily(physicalDevice, context.surface)!;
    // Set-up Queues
    float queuePriorities = 1.0;
    VkDeviceQueueCreateInfo graphicsInfo = {.sType = vk::VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
                                            .queueFamilyIndex = indices.graphics,
                                            .queueCount = 1,
                                            .pQueuePriorities = &queuePriorities};
    VkPhysicalDeviceFeatures device_features = {
        .robustBufferAccess = 0,
        .fullDrawIndexUint32 = 0,
        .imageCubeArray = 0,
        .independentBlend = 0,
        .geometryShader = 0,
        .tessellationShader = 0,
        .sampleRateShading = 0,
        .dualSrcBlend = 0,
        .logicOp = 0,
        .multiDrawIndirect = 0,
        .drawIndirectFirstInstance = 0,
        .depthClamp = 0,
        .depthBiasClamp = 0,
        .fillModeNonSolid = 0,
        .depthBounds = 0,
        .wideLines = 0,
        .largePoints = 0,
        .alphaToOne = 0,
        .multiViewport = 0,
        .samplerAnisotropy = 0,
        .textureCompressionETC2 = 0,
        .textureCompressionASTC_LDR = 0,
        .textureCompressionBC = 0,
        .occlusionQueryPrecise = 0,
        .pipelineStatisticsQuery = 0,
        .vertexPipelineStoresAndAtomics = 0,
        .fragmentStoresAndAtomics = 0,
        .shaderTessellationAndGeometryPointSize = 0,
        .shaderImageGatherExtended = 0,
        .shaderStorageImageExtendedFormats = 0,
        .shaderStorageImageMultisample = 0,
        .shaderStorageImageReadWithoutFormat = 0,
        .shaderStorageImageWriteWithoutFormat = 0,
        .shaderUniformBufferArrayDynamicIndexing = 0,
        .shaderSampledImageArrayDynamicIndexing = 0,
        .shaderStorageBufferArrayDynamicIndexing = 0,
        .shaderStorageImageArrayDynamicIndexing = 0,
        .shaderClipDistance = 0,
        .shaderCullDistance = 0,
        .shaderFloat64 = 0,
        .shaderInt64 = 0,
        .shaderInt16 = 0,
        .shaderResourceResidency = 0,
        .shaderResourceMinLod = 0,
        .sparseBinding = 0,
        .sparseResidencyBuffer = 0,
        .sparseResidencyImage2D = 0,
        .sparseResidencyImage3D = 0,
        .sparseResidency2Samples = 0,
        .sparseResidency4Samples = 0,
        .sparseResidency8Samples = 0,
        .sparseResidency16Samples = 0,
        .sparseResidencyAliased = 0,
        .variableMultisampleRate = 0,
        .inheritedQueries = 0,
    };

    VkDeviceCreateInfo deviceCreateInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .pQueueCreateInfos = &graphicsInfo,
        .queueCreateInfoCount = 1,
        .pEnabledFeatures = &device_features,
        .enabledExtensionCount = (uint)appInfo.device_extensions.len(),
        .ppEnabledExtensionNames = (char*)&appInfo.device_extensions.to_array()[0],
        .enabledLayerCount = 0,
        .pNext = null,
        .flags = 0,
    };

    if (ENABLE_VALIDATION_LAYERS) {
        deviceCreateInfo.enabledLayerCount = (uint)appInfo.validations.len();
        deviceCreateInfo.ppEnabledLayerNames = (char*)&appInfo.validations.to_array()[0];
    }

    vk::createDevice(physicalDevice, &deviceCreateInfo, null, &context.device)!;
    vk::getDeviceQueue(context.device, indices.graphics, 0, &context.graphics_queue);

    if (catch err = helpers::create_swapchain(physicalDevice, context.device, context.surface, &context.swapchain)) {
        io::printfn("Failed to create swapchain");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Create command pool and command buffers
    VkCommandPoolCreateInfo pool_info = {
     .sType = vk::VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
     .pNext = null,
     .flags = vk::VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
     .queueFamilyIndex = indices.graphics,
    };

    vk::createCommandPool(context.device, &pool_info, null, &context.command_pool)!;
    VkCommandBuffer* command_buffers = malloc(VkCommandBuffer, context.swapchain.image_count);
    VkCommandBufferAllocateInfo command_buffer_info = {
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = context.command_pool,
        .level = vk::VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = context.swapchain.image_count,
    };

    vk::allocateCommandBuffers(context.device, &command_buffer_info, command_buffers)!;
    defer mem::free(command_buffers);

    for (int i = 0; i < context.swapchain.image_count; ++i) {
        context.command_buffers.push(command_buffers[i]);
    }

    return context;
}