import std::io;
import vk;
import types;

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

fault DeviceErrors
{
    FAILED_GETTING_DEVICES,
    QUEUE_FAMILY_FAILED
}

fn VkPhysicalDevice! getSuitablePhysicalDevice(VkInstance instance, VkSurfaceKHR surface) {
    uint deviceCount;

    if (vk::enumeratePhysicalDevices(instance, &deviceCount, null) != vk::VK_SUCCESS || deviceCount == 0) {
        io::printf("Failed getting devices");
        return DeviceErrors.FAILED_GETTING_DEVICES?;
    }

    io::printfn("%d", deviceCount);
    VkPhysicalDevice* devices = malloc(VkPhysicalDevice, deviceCount);
    defer mem::free(devices);

    if (vk::enumeratePhysicalDevices(instance, &deviceCount, devices) != vk::VK_SUCCESS) {
       io::printf("Failed getting devices");
       return DeviceErrors.FAILED_GETTING_DEVICES?;
    }

    for (int i = 0; i < deviceCount; ++i) {
        VkPhysicalDevice device = devices[i];
        QueueFamily! queueFamily = findQueueFamily(device, surface);
        if (try queueFamily) {
           io::printfn("Queue family %d %d %d", queueFamily.present, queueFamily.graphics, queueFamily.compute);
        }

        if (catch err = queueFamily) return DeviceErrors.QUEUE_FAMILY_FAILED?;
    }


    return devices[0];
}


fn bool checkDeviceExtensionSupport() {
   uint count;
   return false;
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

        if ((ulong)properties.queueFlags & vk::VK_QUEUE_GRAPHICS_BIT != 0) {
            family.graphics = i;
        }

        bool presentSupport;
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