module vk;
import std::io;
import std::core::env;
import libc;
import std::collections::list;
import glfw;

def StringList = List(<String>);
def ZStringList = List(<ZString>);
def DeviceList = List(<VkPhysicalDevice>);
def QueuePropertiesList = List(<VkQueueFamilyProperties>);
def SurfaceFormatList = List(<VkSurfaceFormatKHR>);
def PresentModeList = List(<VkPresentModeKHR>);

VkDebugUtilsMessengerCreateInfoEXT default_debug_info =  {
     .sType = vk::VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
     .flags = 0,
     .messageSeverity = vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
     .messageType = vk::VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
     .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback,
     .pUserData = null,
};

fault ContextErrors
{
    FAILED_GETTING_EXTENSIONS,
    EXTENSION_NOT_SUPPORTED
}

struct QueueFamily {
    int graphics;
    int present;
    int compute;
}

fn bool QueueFamily.is_ready(&self)
{
    return self.graphics >= 0 && self.present >= 0;
}

struct AppInfo {
    void* pNext;
    String pApplicationName;
    uint applicationVersion;
    String pEngineName;
    uint engineVersion;
    uint apiVersion;
    bool enable_debug;
    ZStringList validations;
    ZStringList extensions;
    ZStringList device_extensions;
    VkInstanceCreateFlags instance_flags;
}

struct Device {
    VkInstance instance;
    VkSurfaceKHR surface;
    VkDevice device;
    VkPhysicalDevice physical_device;
    VkQueue graphics_queue;
    VkDebugUtilsMessengerEXT debug_messenger;

    SurfaceFormatList surface_formats;
    PresentModeList present_modes;
    bool enable_debug;
}

fn void Device.free(self)
{
 /*   vk::deviceWaitIdle(self.device)!!;*/
    self.surface_formats.free();
    self.present_modes.free();
    if (self.enable_debug) {
      vk::destroyDebugUtilsMessengerEXT(self.instance, self.debug_messenger, null);
    }
    vk::destroySurfaceKHR(self.instance, self.surface, null);
  /*  vk::destroyDevice(self.device, null);*/
    vk::destroyInstance(self.instance, null);
}

fn Device! requestDevice(AppInfo* info, GLFWwindow window, VkDebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info)
{
    VkInstance instance = getInstance(info, debug_info)!;
    VkDebugUtilsMessengerEXT debug_messenger;
    VkPhysicalDevice physical_device;
    SurfaceFormatList surface_formats;
    PresentModeList present_modes;

    if (info.enable_debug) {
       debug_messenger = instance.createDebugUtilsMessenger()!;
    }

    VkSurfaceKHR surface = glfw::createWindowSurface(instance, window, null)!;
    DeviceList physical_devices = getPhysicalDevices(instance)!;
    defer physical_devices.free();

    // Find usable physical device (GPU)
    foreach (i, device : physical_devices)
    {
        vk::QueueFamily queue;
        bool supports_extensions = true;
        VkSurfaceCapabilitiesKHR capabilities;
        // Check for device extension support
        StringList device_extensions = getDeviceExtensions(device)!;
        defer device_extensions.free();
        foreach (extension_name : info.device_extensions) {
            if (!device_extensions.contains(extension_name.as_str())) {
                supports_extensions = false;
            }
        }

        QueuePropertiesList queue_properties = getQueueProperties(device)!;
        defer queue_properties.free();
        foreach (o, properties : queue_properties) {
            uint presentSupport;

            if ((ulong)properties.queueFlags & VK_QUEUE_GRAPHICS_BIT != 0) {
                queue.graphics = (uint)o;
            }
            getPhysicalDeviceSurfaceSupportKHR(device, (uint)o, surface, &presentSupport)!;

            if (presentSupport == VK_TRUE) {
                queue.present = (uint)o;
            }

            if (queue.is_ready()) break;
        }

        getPhysicalDeviceSurfaceCapabilitiesKHR(device, surface, &capabilities)!;
        SurfaceFormatList surfaceFormats = getSurfaceFormats(device, surface)!;
        PresentModeList presentModes = getSurfacePresentModes(device, surface)!;

        defer {
            surfaceFormats.free();
            presentModes.free();
        }

        if (queue.is_ready() && supports_extensions && presentModes.len() != 0 && surfaceFormats.len() != 0) {
            // Device is good
            physical_device = device;
            surface_formats.add_all(&surfaceFormats);
            present_modes.add_all(&presentModes);
        }
    }

    return Device {
        .instance = instance,
        .surface = surface,
        .physical_device = physical_device,
        .debug_messenger = debug_messenger,
        .enable_debug = info.enable_debug,
        .surface_formats = surface_formats,
        .present_modes = present_modes
    };
}

fn VkDebugUtilsMessengerEXT! VkInstance.createDebugUtilsMessenger(self, VkDebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info)
{
    VkDebugUtilsMessengerEXT messenger;
    createDebugUtilsMessengerEXT(self, &debug_info, null, &messenger)!;
    return messenger;
}

fn void AppInfo.free(&self)
{
    self.validations.free();
    self.extensions.free();
    self.device_extensions.free();
}

fn VkInstance! getInstance(AppInfo* info, VkDebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info) {
        VkInstance instance;
        VkInstanceCreateInfo createInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &&VkApplicationInfo {
            .pApplicationName = info.pApplicationName,
            .applicationVersion = info.applicationVersion,
            .pEngineName = info.pEngineName,
            .engineVersion = info.engineVersion,
            .apiVersion = info.apiVersion
        },
        .flags = info.instance_flags,
        .enabledExtensionCount = (uint)info.extensions.len(),
        .ppEnabledExtensionNames = (char*)&info.extensions.to_array()[0],
    };

    StringList extensions = getInstanceExtensions()!;
    defer extensions.free();

    // Check for instance extension support
    foreach (i, value : info.extensions)
    {
        if (!extensions.contains(value.as_str())) {
            io::printfn("Extension not supported %s", value.as_str());
            return ContextErrors.EXTENSION_NOT_SUPPORTED?;
        }
    }

    if (info.enable_debug) {
        StringList validations = getValidationLayers()!;
        defer validations.free();
        // Check for validation support
        foreach (i, value : info.validations)
        {
            if (!validations.contains(value.as_str())) {
                io::printfn("Validation layer not supported %s", value.as_str());
                return ContextErrors.EXTENSION_NOT_SUPPORTED?;
            }
        }
        createInfo.enabledLayerCount = (uint)info.validations.len();
        createInfo.ppEnabledLayerNames = (char*)&info.validations.to_array()[0];
        createInfo.pNext = &debug_info;
    }

    vk::createInstance(&createInfo, null, &instance)!;
    loadExtensions(instance);

    return instance;
}

fn StringList! getInstanceExtensions() {
    uint extensionCount;
    StringList extensionList;
    vk::enumerateInstanceExtensionProperties(null, &extensionCount, null)!;
    VkExtensionProperties* layers = malloc(VkExtensionProperties, extensionCount);
    defer mem::free(layers);

    vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers)!;
    for (uint i = 0; i < extensionCount; ++i) {
        ZString name = (ZString)&layers[i].extensionName;
        extensionList.push(name.as_str());
    };
    return extensionList;
}


fn StringList! getDeviceExtensions(VkPhysicalDevice device) {
    uint extensionCount;
    StringList extensionList;
    vk::enumerateDeviceExtensionProperties(device, null, &extensionCount, null)!;

    VkExtensionProperties* layers = malloc(VkExtensionProperties, extensionCount);
    defer mem::free(layers);

    vk::enumerateDeviceExtensionProperties(device, null, &extensionCount, layers)!;
    for (uint i = 0; i < extensionCount; ++i) {
        ZString name = (ZString)&layers[i].extensionName;
        extensionList.push(name.as_str());
    };
    return extensionList;
}

fn DeviceList! getPhysicalDevices(VkInstance instance) {
    uint deviceCount;
    DeviceList deviceList;
    vk::enumeratePhysicalDevices(instance, &deviceCount, null)!;

    VkPhysicalDevice* devices = malloc(VkPhysicalDevice, deviceCount);
    defer mem::free(devices);

    vk::enumeratePhysicalDevices(instance, &deviceCount, devices)!;
    for (uint i = 0; i < deviceCount; ++i) deviceList.push(devices[i]);
    return deviceList;
}

fn StringList! getValidationLayers() {
    uint layerCount;
    StringList layersList;
    vk::enumerateInstanceLayerProperties(&layerCount, null)!;

    VkLayerProperties* layers = malloc(VkLayerProperties, layerCount);
    defer mem::free(layers);

    vk::enumerateInstanceLayerProperties(&layerCount, layers)!;
    for (uint i = 0; i < layerCount; ++i) {
        ZString name = (ZString)&layers[i].layerName;
        layersList.push(name.as_str());
    };
    return layersList;
}

fn QueuePropertiesList! getQueueProperties(VkPhysicalDevice device) {
    uint queueCount;
    QueuePropertiesList propertiesList;
    getPhysicalDeviceQueueFamilyProperties(device, &queueCount, null);

    VkQueueFamilyProperties* properties = malloc(VkQueueFamilyProperties, queueCount);
    defer mem::free(properties);
    getPhysicalDeviceQueueFamilyProperties(device, &queueCount, properties);

    for (uint i = 0; i < queueCount; ++i) {
        propertiesList.push(properties[i]);
    };
    return propertiesList;
}

fn SurfaceFormatList! getSurfaceFormats(VkPhysicalDevice device, VkSurfaceKHR surface) {
    uint format_count;
    SurfaceFormatList formatList;
    getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, null)!;

    VkSurfaceFormatKHR* formats = malloc(VkSurfaceFormatKHR, format_count);
    defer mem::free(formats);
    getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, formats)!;

    for (uint i = 0; i < format_count; ++i) {
        formatList.push(formats[i]);
    };
    return formatList;
}

fn PresentModeList! getSurfacePresentModes(VkPhysicalDevice device, VkSurfaceKHR surface) {
    uint present_count;
    PresentModeList presentList;
    getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, null)!;

    VkPresentModeKHR* presents = malloc(VkPresentModeKHR, present_count);
    defer mem::free(presents);
    getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, presents)!;

    for (uint i = 0; i < present_count; ++i) {
        presentList.push(presents[i]);
    };
    return presentList;
}


fn bool debugCallback(
    vk::VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
    vk::VkDebugUtilsMessageTypeFlagsEXT messageType,
    vk::VkDebugUtilsMessengerCallbackDataEXT* data,
    void* userData
) @private {
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

