import std::io;
import vk;
import types;


fault DeviceErrors
{
    FAILED_GETTING_DEVICES,
    QUEUE_FAMILY_FAILED,
    DEVICE_CAPABILITIES_FAILED
}

fn bool checkValidationLayerSupport(ZString[] validationLayers) {
    uint layerCount;
    VkResult result = vk::enumerateInstanceLayerProperties(&layerCount, null);
    uint foundLayers = 0;

    VkLayerProperties* layers = malloc(VkLayerProperties, layerCount);
    defer mem::free(layers);
    if (vk::enumerateInstanceLayerProperties(&layerCount, layers) != vk::VK_SUCCESS) {
      io::printfn("failed to get validation layers");
    }

    for (int i = 0; i < layerCount; ++i)
    {
        ZString name = (ZString)&layers[i].layerName;
        for (int o = 0; o < validationLayers.len; ++o) {
           if (name.as_str() == validationLayers[o].as_str()) {
             foundLayers += 1;
           }
        }
    }

    if (validationLayers.len != foundLayers) {
        io::printfn("Required validation layers not found");
    }

    return validationLayers.len == foundLayers;
}

fn bool checkExtensionsSupport(ZString[] extensions) {
    uint extensionCount;
    uint foundExtensions = 0;

    if (vk::enumerateInstanceExtensionProperties(null, &extensionCount, null) != vk::VK_SUCCESS) {
        io::printf("failed to get extension layers count");
    }

    VkExtensionProperties* layers = malloc(VkExtensionProperties, extensionCount);
    defer mem::free(layers);

    if (vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers) != vk::VK_SUCCESS) {
        io::printf("failed to get extension layers");
    }

    for (int i = 0; i < extensionCount; ++i)
    {
        ZString name = (ZString)&layers[i].extensionName;
        for (int o = 0; o < extensions.len; ++o) {
          if (name.as_str() == extensions[o].as_str()) {
            foundExtensions += 1;
          }
        }
    }
    return extensions.len == foundExtensions;
}

fn VkPhysicalDevice! getSuitablePhysicalDevice(VkInstance instance, VkSurfaceKHR surface, ZString[] deviceExtensions) {
    uint deviceCount;

    if (vk::enumeratePhysicalDevices(instance, &deviceCount, null) != vk::VK_SUCCESS || deviceCount == 0) {
        io::printfn("Failed getting devices");
        return DeviceErrors.FAILED_GETTING_DEVICES?;
    }

    VkPhysicalDevice* devices = malloc(VkPhysicalDevice, deviceCount);
    defer mem::free(devices);

    if (vk::enumeratePhysicalDevices(instance, &deviceCount, devices) != vk::VK_SUCCESS) {
       io::printfn("Failed getting devices");
       return DeviceErrors.FAILED_GETTING_DEVICES?;
    }

    for (int i = 0; i < deviceCount; ++i) {
        VkPhysicalDevice device = devices[i];
        QueueFamily! queueFamily = findQueueFamily(device, surface);
        if (catch err = queueFamily) return DeviceErrors.QUEUE_FAMILY_FAILED?;

        bool extension_support = checkDeviceExtensionSupport(device, deviceExtensions);
        SurfaceCapabilities! capabilities = checkSurfaceCapabilities(device, surface);

        if (catch err = capabilities) {
            capabilities.free()!;
            return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
        };

        defer capabilities.free();

        if (queueFamily.is_ready() && extension_support && capabilities.present_count != 0 && capabilities.format_count != 0) {
            // Device is good
            return device;
        }
    }

    io::printfn("No suitable devices found");
    return DeviceErrors.FAILED_GETTING_DEVICES?;
}


fn bool checkDeviceExtensionSupport(VkPhysicalDevice device, ZString[] deviceExtensions) {
   uint count;
   uint extensions_found;
    if (vk::enumerateDeviceExtensionProperties(device, null, &count, null)) {
        io::printfn("Failed getting degive extensions");
        return false;
    }

    VkExtensionProperties* extensions = malloc(VkExtensionProperties, count);
    defer mem::free(extensions);

    if (vk::enumerateDeviceExtensionProperties(device, null, &count, extensions)) {
        io::printfn("Failed getting device extensions");
        return false;
    }

    for (int i = 0; i < count; ++i) {
        ZString device_extension = (ZString)&extensions[i].extensionName;
        for (int o = 0; o < deviceExtensions.len; ++o) {
            if (device_extension.as_str() == deviceExtensions[o].as_str()) {
                extensions_found += 1;
            }
        }
    }

    return deviceExtensions.len == extensions_found;
}

fn QueueFamily! findQueueFamily(VkPhysicalDevice device, VkSurfaceKHR surface) {
    QueueFamily family = {-1, -1, -1};
    uint queueCount;

    vk::getPhysicalDeviceQueueFamilyProperties(device, &queueCount, null);
    if (queueCount == 0) return DeviceErrors.QUEUE_FAMILY_FAILED?;

    VkQueueFamilyProperties* devices = malloc(VkQueueFamilyProperties, queueCount);
    defer mem::free(devices);

    vk::getPhysicalDeviceQueueFamilyProperties(device, &queueCount, devices);

    for (int i = 0; i < queueCount; ++i) {
        VkQueueFamilyProperties properties = devices[i];
        bool presentSupport;

        if ((ulong)properties.queueFlags & vk::VK_QUEUE_GRAPHICS_BIT != 0) {
            family.graphics = i;
        }

        if (vk::getPhysicalDeviceSurfaceSupportKHR(device, i, surface, &presentSupport) != vk::VK_SUCCESS) {
           io::printfn("Failed to make surface support check");
           return DeviceErrors.QUEUE_FAMILY_FAILED?;
        };

        if (presentSupport == true) {
            family.present = i;
        }

        if (family.is_ready()) break;
    }

    if (family.present == -1) {
        return DeviceErrors.QUEUE_FAMILY_FAILED?;
    }

   return family;
}


fn SurfaceCapabilities! checkSurfaceCapabilities(VkPhysicalDevice device, VkSurfaceKHR surface) {
    VkSurfaceCapabilitiesKHR capabilities;
    SurfaceCapabilities data;

    if (vk::getPhysicalDeviceSurfaceCapabilitiesKHR(device, surface, &capabilities) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface capabilities");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.capabilities = capabilities;

    if (vk::getPhysicalDeviceSurfaceFormatsKHR(device, surface, &data.format_count, null) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface formats");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.formats = malloc(VkSurfaceFormatKHR, data.format_count);

    if (vk::getPhysicalDeviceSurfaceFormatsKHR(device, surface, &data.format_count, data.formats) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface formats");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    if (vk::getPhysicalDeviceSurfacePresentModesKHR(device, surface, &data.present_count, null) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface presents");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.present_modes = malloc(VkPresentModeKHR, data.present_count);

    if (vk::getPhysicalDeviceSurfacePresentModesKHR(device, surface, &data.present_count, data.present_modes) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface presents");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    return data;
}