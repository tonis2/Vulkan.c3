module types;
import vk;
import std::io;
import std::collections::list;

def SurfaceFormatList = List(<VkSurfaceFormatKHR>);
def PresentModeList = List(<VkPresentModeKHR>);

struct QueueFamily {
    int graphics;
    int present;
    int compute;
}

struct SurfaceCapabilities {
    VkSurfaceCapabilitiesKHR capabilities;
    SurfaceFormatList formats;
    PresentModeList present_modes;
}

struct SwapChain {
    VkSwapchainKHR swapchain;
    VkImage[] images;
    VkImageView[] image_views;
    VkFormat image_format;
    VkExtent2D extent;
}

fault DeviceErrors
{
    FAILED_GETTING_DEVICES,
    QUEUE_FAMILY_FAILED,
    DEVICE_CAPABILITIES_FAILED
}

fn bool QueueFamily.is_ready(&self)
{
    return self.graphics >= 0 && self.present >= 0;
}

fn void SurfaceCapabilities.free(&self)
{
   self.formats.free();
   self.present_modes.free();
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

    uint format_count;
    if (vk::getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, null) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface formats");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.formats.init(format_count);
    if (vk::getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, data.formats.entries) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface formats");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }
    data.formats.size = format_count;

    uint present_count;
    if (vk::getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, null) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface presents");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.present_modes.init(present_count);

    if (vk::getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, data.present_modes.entries) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface presents");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.present_modes.size = present_count;

    return data;
}

fn SwapChain! create_swapchain(VkPhysicalDevice physical_device, VkDevice logical_device, VkSurfaceKHR surface)
{
    SwapChain data;
    SurfaceCapabilities! capabilities = checkSurfaceCapabilities(physical_device, surface);

    if (catch err = capabilities) {
        capabilities.free()!;
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    };
   defer capabilities.free();

   VkSurfaceFormatKHR surface_format = {|
        foreach (format : capabilities.formats)
        {
            if (format.format == vk::VK_FORMAT_B8G8R8A8_SRGB && format.colorSpace == vk::VK_COLOR_SPACE_SRGB_NONLINEAR_KHR) {
                return format;
            }
        }
        io::printfn("Did not find required format, returning first one");
        return capabilities.formats[0];
    |};

    io::printfn("Surface format %d", surface_format.format);
    return data;
}
