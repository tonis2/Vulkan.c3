import std::io;
import std::collections::list;
import vk;
import glfw;
import libc;
import helpers;
import types;

const VK_API_VERSION_1_1 = vk::@makeApiVersion(0,1,1,0);
const WIDTH = 800;
const HEIGHT = 600;
const ENABLE_VALIDATION_LAYERS = true;

def StringList = List(<ZString>);

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


fn int main()
{
    StringList validations;
    StringList extensions;
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    extensions.add_array({"VK_EXT_debug_report", "VK_EXT_debug_utils"});

    defer {
        validations.free();
        extensions.free();
    };

    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    if (window == null)
    {
        io::printfn("Failed to init gl window");
        glfw::terminate();
        return 1;
    }

    defer {
        glfw::destroyWindow(window);
        glfw::terminate();
    }

    VkInstance instance;
    VkSurfaceKHR surface;
    VkDebugUtilsMessengerCreateInfoEXT debugInfo;
    VkDebugUtilsMessengerEXT debugMessenger;
    QueueFamily queueFamilyIndices;

    defer {
        if (ENABLE_VALIDATION_LAYERS) vk::destroyDebugUtilsMessengerEXT(instance, debugMessenger, null);
        vk::destroySurfaceKHR(instance, surface, null);
        vk::destroyInstance(instance, null);
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
        return 1;
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

    if (vk::createInstance(&createInfo, null, &instance) != vk::VK_SUCCESS) {
      io::printfn("Failed to create instance");
      return 1;
    }

    // Must load extension pointers to cache, before using extensions !
    vk::loadExtensions(instance);

    // Load extension pointers
    if (ENABLE_VALIDATION_LAYERS) {
       if (vk::createDebugUtilsMessengerEXT(instance, &debugInfo, null, &debugMessenger) != vk::VK_SUCCESS) {
          io::printfn("Failed to create instance");
          return 1;
        }
    }

    if (glfw::createWindowSurface(instance, window, null, &surface) != vk::VK_SUCCESS) {
        io::printfn("Failed creating surface");
        return 1;
    }

    uint deviceCount;
    if (vk::enumeratePhysicalDevices(instance, &deviceCount, null) != vk::VK_SUCCESS) {
        io::printf("Failed getting devices");
        return 1;
    }

    VkPhysicalDevice! device = helpers::getSuitablePhysicalDevice(instance, surface);
    if (catch err = device) {
        io::printfn("Failed to create physical device");
        return 1;
    }

    return 0;
}