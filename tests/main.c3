import std::io;
import vk;
import glfw;
import libc;
import helpers;

const VK_API_VERSION_1_1 = vk::@makeApiVersion(0,1,1,0);
const WIDTH = 800;
const HEIGHT = 600;
const ENABLE_VALIDATION_LAYERS = true;

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
    ZString[] validation_layers = {"VK_LAYER_KHRONOS_validation"};
    ZString[] enabled_extensions = {"VK_KHR_surface", "VK_KHR_xcb_surface", "VK_EXT_debug_utils"};

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

    VkInstance instance;
    defer vk::destroyInstance(instance, null);

    VkApplicationInfo appInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName = "Hello Triangle",
        .applicationVersion = vk::@makeApiVersion(0,1,1,0),
        .pEngineName = "Super engine",
        .engineVersion = vk::@makeApiVersion(0,1,1,0),
        .apiVersion = vk::@makeApiVersion(0,1,1,0),
        .pNext = null,
    };


    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    ZString* extensions = malloc(ZString, ENABLE_VALIDATION_LAYERS ? glfwExtensions_count + 1 : glfwExtensions_count);

    defer mem::free(extensions);
    mem::copy(extensions, &glfwExtensions[0], glfwExtensions_count * ZString.sizeof);

    if (ENABLE_VALIDATION_LAYERS) {
        extensions[glfwExtensions_count] = vk::VK_EXT_DEBUG_UTILS_EXTENSION_NAME.zstr_copy();
    }

    VkInstanceCreateInfo createInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &appInfo,
        .enabledExtensionCount = (uint)glfwExtensions_count,
        .ppEnabledExtensionNames = (char*)extensions,
    };

    if (ENABLE_VALIDATION_LAYERS && helpers::checkValidationLayerSupport(validation_layers)) {
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
        createInfo.pNext = &debugInfo;
    }

    if (vk::createInstance(&createInfo, null, &instance) != vk::VK_SUCCESS) {
      io::printfn("Failed to create instance");
      return 1;
    }

    return 0;
}