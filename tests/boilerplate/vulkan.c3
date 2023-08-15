module context;

import std::io;
import std::collections::list;
import vk;
import glfw;
import libc;
import helpers;

const VK_API_VERSION_1_1 = vk::@makeApiVersion(0,1,1,0);
const ENABLE_VALIDATION_LAYERS = true;


def StringList = List(<ZString>);
/*def SemaphoreList = List(<VkSemaphore>);
def FenceList = List(<VkFence>);*/
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
      VkDebugUtilsMessengerEXT debugMessenger;
      VkCommandPool command_pool;
      CommandBufferList command_buffers;
}

fn bool debugCallback(
    vk::VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
    vk::VkDebugUtilsMessageTypeFlagsEXT messageType,
    vk::VkDebugUtilsMessengerCallbackDataEXT* data,
    void* userData
) {
    if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    }
    return false;
}

fn void VkContext.free(&self)
{
    vk::deviceWaitIdle(self.device);
    if (ENABLE_VALIDATION_LAYERS) {
      vk::destroyDebugUtilsMessengerEXT(self.instance, self.debugMessenger, null);
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
    StringList validations;
    StringList extensions;

    //"VK_LAYER_LUNARG_api_dump"
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    extensions.add_array({"VK_EXT_debug_report", "VK_EXT_debug_utils"});
    ZString[] device_extensions = {"VK_KHR_swapchain", "VK_KHR_push_descriptor"};

    defer {
        validations.free();
        extensions.free();
    };

    VkApplicationInfo appInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName = "Hello Triangle",
        .applicationVersion = VK_API_VERSION_1_1,
        .pEngineName = "Super engine",
        .engineVersion = VK_API_VERSION_1_1,
        .apiVersion = VK_API_VERSION_1_1,
        .pNext = null,
    };

    // Check if GPU supports requested extensions
    if (!helpers::checkExtensionsSupport(extensions.to_array())) {
        io::printfn("Requested extensions not available");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // SETUP extensions
    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    for (int i = 0; i < glfwExtensions_count; ++i) extensions.push(glfwExtensions[i]);

    if (ENABLE_VALIDATION_LAYERS) {
        extensions.push(vk::VK_EXT_DEBUG_UTILS_EXTENSION_NAME.zstr_tcopy());
    }

    VkInstanceCreateInfo createInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &appInfo,
        .enabledExtensionCount = (uint)extensions.len(),
        .ppEnabledExtensionNames = (char*)&extensions.to_array()[0],
    };

    VkDebugUtilsMessengerCreateInfoEXT debugInfo;
    if (ENABLE_VALIDATION_LAYERS && helpers::checkValidationLayerSupport(validations.to_array())) {
          debugInfo = {
            .sType = vk::VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
            .pNext = null,
            .flags = 0,
            .messageSeverity = vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
            .messageType = vk::VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
            .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback,
            .pUserData = null,
        };
        createInfo.enabledLayerCount = (uint)validations.len();
        createInfo.ppEnabledLayerNames = (char*)&validations.to_array()[0];
        createInfo.pNext = &debugInfo;
    }

    if (vk::createInstance(&createInfo, null, &context.instance) != vk::VK_SUCCESS) {
      io::printfn("Failed to create instance");
      return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Must load extension pointers to cache, before using extensions !
    vk::loadExtensions(context.instance);

    // Load extension pointers
    if (ENABLE_VALIDATION_LAYERS) {
       if (vk::createDebugUtilsMessengerEXT(context.instance, &debugInfo, null, &context.debugMessenger) != vk::VK_SUCCESS) {
          io::printfn("Failed to create instance");
          return ContextErrors.FAILED_CREATING_VULKAN?;
        }
    }

    if (glfw::createWindowSurface(context.instance, window, null, &context.surface) != vk::VK_SUCCESS) {
        io::printfn("Failed creating surface");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    uint deviceCount;
    if (vk::enumeratePhysicalDevices(context.instance, &deviceCount, null) != vk::VK_SUCCESS) {
        io::printf("Failed getting devices");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    VkPhysicalDevice! physicalDevice = helpers::getSuitablePhysicalDevice(context.instance, context.surface, device_extensions);
    if (catch err = physicalDevice) {
        io::printfn("Failed to create physical device");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    context.physical_device = physicalDevice;

    QueueFamily! indices = helpers::findQueueFamily(physicalDevice, context.surface);
    if (catch err = indices) {
        io::printfn("Failed to get Queue family indices");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Set-up Queues
    float queuePriorities = 1.0;
    VkDeviceQueueCreateInfo graphicsInfo = { .sType = vk::VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
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
        .fillModeNonSolid = 1,
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
        .enabledExtensionCount = (uint)device_extensions.len,
        .ppEnabledExtensionNames = (char*)&device_extensions[0],
        .enabledLayerCount = 0,
        .pNext = null,
        .flags = 0,
    };

    if (ENABLE_VALIDATION_LAYERS) {
        deviceCreateInfo.enabledLayerCount = (uint)validations.len();
        deviceCreateInfo.ppEnabledLayerNames = (char*)&validations.to_array()[0];
    }

    if (vk::createDevice(physicalDevice, &deviceCreateInfo, null, &context.device) != vk::VK_SUCCESS) {
      io::printfn("Failed to create logical device");
      return ContextErrors.FAILED_CREATING_VULKAN?;
    }

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

    if (vk::createCommandPool(context.device, &pool_info, null, &context.command_pool) != vk::VK_SUCCESS) {
        io::printfn("Failed to create command pool");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    VkCommandBuffer* command_buffers = malloc(VkCommandBuffer, context.swapchain.image_count);
    VkCommandBufferAllocateInfo command_buffer_info = {
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = context.command_pool,
        .level = vk::VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = context.swapchain.image_count,
    };
    if (vk::allocateCommandBuffers(context.device, &command_buffer_info, command_buffers) != vk::VK_SUCCESS) {
        io::printfn("Failed to create command buffers");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    defer mem::free(command_buffers);
    for (int i = 0; i < context.swapchain.image_count; ++i) {
        context.command_buffers.push(command_buffers[i]);
    }

    return context;
}