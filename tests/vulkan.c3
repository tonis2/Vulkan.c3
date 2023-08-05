module context;

import std::io;
import std::collections::list;
import vk;
import glfw;
import libc;
import helpers;

const VK_API_VERSION_1_1 = vk::@makeApiVersion(0,1,1,0);
const WIDTH = 800;
const HEIGHT = 600;
const ENABLE_VALIDATION_LAYERS = true;

def StringList = List(<ZString>);

fault ContextErrors
{
    FAILED_CREATING_VULKAN
}

struct VkContext {
      SwapChain swapchain;
      VkInstance instance;
      VkSurfaceKHR surface;
      VkDevice device;
      VkQueue graphicsQueue;
      VkDebugUtilsMessengerEXT debugMessenger;
      VkCommandPool commandPool;
      VkCommandBuffer* commandBuffers;
      GLFWwindow window;
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

    self.swapchain.free(self.device);
    vk::destroySurfaceKHR(self.instance, self.surface, null);
    vk::destroyCommandPool(self.device, self.commandPool, null);
    mem::free(self.commandBuffers);
    vk::destroyDevice(self.device, null);
    vk::destroyInstance(self.instance, null);
    glfw::destroyWindow(self.window);
    glfw::terminate();
}


fn VkContext! init() {
    VkContext context;
    StringList validations;
    StringList extensions;
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    extensions.add_array({"VK_EXT_debug_report", "VK_EXT_debug_utils"});
    ZString[] device_extensions = {"VK_KHR_swapchain"};

    defer {
        validations.free();
        extensions.free();
    };

    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    context.window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    if (context.window == null)
    {
        io::printfn("Failed to init gl window");
        glfw::terminate();
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

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

    if (glfw::createWindowSurface(context.instance, context.window, null, &context.surface) != vk::VK_SUCCESS) {
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

    VkDeviceCreateInfo deviceCreateInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .pQueueCreateInfos = &graphicsInfo,
        .queueCreateInfoCount = 1,
        .pEnabledFeatures = {},
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

    vk::getDeviceQueue(context.device, indices.graphics, 0, &context.graphicsQueue);

    if (catch err = helpers::create_swapchain(physicalDevice, context.device, context.surface, &context.swapchain)) {
        io::printfn("Failed to create swapchain");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Create command pool and command buffers
    VkCommandPoolCreateInfo pool_info = {
     .sType = vk::VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
     .pNext = null,
     .flags = 0,
     .queueFamilyIndex = indices.graphics,
    };

    if (vk::createCommandPool(context.device, &pool_info, null, &context.commandPool) != vk::VK_SUCCESS) {
        io::printfn("Failed to create command pool");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    context.commandBuffers = malloc(VkCommandBuffer, context.swapchain.image_count);
    VkCommandBufferAllocateInfo command_buffer_info = {
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = context.commandPool,
        .level = vk::VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = context.swapchain.image_count,
    };

    if (vk::allocateCommandBuffers(context.device, &command_buffer_info, context.commandBuffers) != vk::VK_SUCCESS) {
        io::printfn("Failed to create command buffers");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    return context;
}