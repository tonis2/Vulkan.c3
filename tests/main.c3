import std::io;
import std::collections::list;
import vk;
import glfw;
import libc;
import std::core::string::conv;

const VK_API_VERSION_1_1 = vk::@makeApiVersion(0,1,1,0);
const WIDTH = 800;
const HEIGHT = 600;
const ENABLE_VALIDATION_LAYERS = true;

def ExtensionList = List<String>;

fn bool debugCallback(
    vk::VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
    vk::VkDebugUtilsMessageTypeFlagsEXT messageType,
    vk::VkDebugUtilsMessengerCallbackDataEXT* data,
    void* userData
) {
    if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) {
       io::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT) {
       io::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT) {
       io::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT) {
       io::printf("%s \n", data.pMessage);
    }
    return false;
}

fn bool checkValidationLayerSupport(String[] validationLayers) {
    uint layerCount;
    VkResult result = vk::enumerateInstanceLayerProperties(&layerCount, null);
    uint foundLayers = 0;

    @pool()
    {
        VkLayerProperties* layers = tmalloc(VkLayerProperties, layerCount);
        result = vk::enumerateInstanceLayerProperties(&layerCount, layers);

        if (result != vk::VK_SUCCESS) {
            io::printf("failed to get validation layers");
        }

        for (int i = 0; i < layerCount; ++i)
        {
          ZString name = (ZString)&layers[i].layerName;
          for (int o = 0; o < validationLayers.len; ++o) {
             if (name.as_str() == validationLayers[o]) {
               foundLayers += 1;
             }
          }
        }
    };

    if (validationLayers.len != foundLayers) {
        io::printf("Required validation layers not found");
    }

    return validationLayers.len == foundLayers;
}

fn int main()
{
    String[] validation_layers = {"VK_LAYER_KHRONOS_validation"};
  /*  String[] enabled_extensions = {"VK_KHR_surface", "VK_KHR_swapchain", "VK_EXT_debug_report", "VK_EXT_debug_utils"};*/

    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    if (window == null)
    {
        io::printf("Failed to init gl window");
        glfw::terminate();
        return 1;
    }

    defer {
        glfw::destroyWindow(window);
        glfw::terminate();
    }

    VkApplicationInfo appInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName = "Hello Triangle",
        .applicationVersion = vk::@makeApiVersion(0,1,1,0),
        .pEngineName = "Super engine",
        .engineVersion = vk::@makeApiVersion(0,1,1,0),
        .apiVersion = vk::@makeApiVersion(0,1,1,0),
        .pNext = null,
    };

    ExtensionList extensions;
    defer extensions.free();

    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);

    // Add GLFW extensions
    for (int i = 0; i < glfwExtensions_count; ++i) {
        extensions.push(glfwExtensions[i].as_str());
    }

    if (ENABLE_VALIDATION_LAYERS) {
        extensions.push(vk::VK_EXT_DEBUG_UTILS_EXTENSION_NAME);
    }
    // defer mem::free(extensions);

    VkInstanceCreateInfo createInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &appInfo,
        .enabledExtensionCount = (uint)extensions.size,
        .ppEnabledExtensionNames = (char*)extensions.entries,
        .enabledLayerCount = 0,
        .flags = 0,
    };

    VkDebugUtilsMessengerCreateInfoEXT debug_create_info;
    if (ENABLE_VALIDATION_LAYERS && checkValidationLayerSupport(validation_layers)) {
        VkDebugUtilsMessengerCreateInfoEXT debugInfo = {
            .sType = vk::VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
            .pNext = null,
            .flags = 0,
            .messageSeverity = vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
            .messageType = vk::VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
            .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback,
            .pUserData = null,
        };
        createInfo.enabledLayerCount = validation_layers.len;
        createInfo.ppEnabledLayerNames = (char*)&validation_layers;
        createInfo.pNext = &debug_create_info;
    }
    return 0;
}