module helpers;

import vk;
import std::io;
import std::collections::list;
import glfw;
import context;

def PresentCallback = fn void (VkCommandBuffer* buffer);
def SurfaceFormatList = List(<VkSurfaceFormatKHR>);
def PresentModeList = List(<VkPresentModeKHR>);

const MAX_FRAMES_IN_FLIGHT = 2;

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
    VkImage* images;
    VkImageView* image_views;
    SyncImage* syncImages;
    VkFormat image_format;
    VkExtent2D extent;
    uint image_count;
    uint current_image;
}

struct SyncImage {
    VkSemaphore image_acquired;
    VkSemaphore render_finished;
    VkFence frame_fence;
}

fault DeviceErrors
{
    FAILED_GETTING_DEVICES,
    QUEUE_FAMILY_FAILED,
    DEVICE_CAPABILITIES_FAILED,
    SWAPCHAIN_FAILED,
    FAILED_DRAWING_FRAME
}

fn void SwapChain.free(&self, VkDevice device)
{
    vk::destroySwapchainKHR(device, self.swapchain, null);
    for (int i = 0; i < self.image_count; ++i) {
        vk::destroyImageView(device, self.image_views[i], null);
        vk::destroySemaphore(device, self.syncImages[i].image_acquired, null);
        vk::destroyFence(device, self.syncImages[i].frame_fence, null);
        vk::destroySemaphore(device, self.syncImages[i].render_finished, null);
    }

    mem::free(self.syncImages);
    mem::free(self.images);
    mem::free(self.image_views);
}

fn uint! SwapChain.next_frame_index(&self, VkContext context) {
    if (vk::waitForFences(context.device, 1, &self.syncImages[self.current_image].frame_fence, vk::VK_TRUE, uint.max) != vk::VK_SUCCESS) {
        io::printfn("Failed to wait for fence");
        return DeviceErrors.FAILED_DRAWING_FRAME?;
    };
    vk::resetFences(context.device, 1, &self.syncImages[self.current_image].frame_fence);

    VkResult next_image = vk::acquireNextImageKHR(context.device, self.swapchain, uint.max, self.syncImages[self.current_image].image_acquired, null, &self.current_image);
    switch (next_image) {
        case vk::VK_ERROR_OUT_OF_DATE_KHR: {
            io::printfn("Vk needs new swapchain");
            return self.current_image;
        }
        case vk::VK_SUBOPTIMAL_KHR: {
            io::printfn("Vk needs new swapchain");
            return self.current_image;
        }
        case vk::VK_SUCCESS: {
            return self.current_image;
        }
        default: {
           return DeviceErrors.FAILED_DRAWING_FRAME?;
        }
    }
}

fn void! SwapChain.presentFrame(&self, VkContext context, VkCommandBuffer buffer)
{

    SyncImage active_sync = self.syncImages[self.current_image];
    VkSemaphore[1] wait_semaphores = { active_sync.image_acquired };
    VkSemaphore[1] signal_semaphores = { active_sync.render_finished};
    VkPipelineStageFlags[1] wait_stages = { vk::VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT };

    VkSubmitInfo submit_info = {
        .sType = vk::VK_STRUCTURE_TYPE_SUBMIT_INFO,
        .pNext = null,
        .waitSemaphoreCount = 1,
        .pWaitSemaphores = &wait_semaphores,
        .pWaitDstStageMask = &wait_stages,
        .commandBufferCount = 1,
        .pCommandBuffers = &&VkCommandBuffer[1]{ buffer },
        .signalSemaphoreCount = 1,
        .pSignalSemaphores = &signal_semaphores,
    };

    if (vk::queueSubmit(context.graphics_queue, 1, &submit_info, active_sync.frame_fence) != vk::VK_SUCCESS) {
        io::printfn("Submitting draw queue failed");
        return DeviceErrors.FAILED_DRAWING_FRAME?;
    }

    VkPresentInfoKHR present_info = {
         .sType = vk::VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
         .waitSemaphoreCount = 1,
         .pWaitSemaphores = &signal_semaphores,
         .swapchainCount = 1,
         .pSwapchains = &&VkSwapchainKHR[1]{ self.swapchain },
         .pImageIndices = &self.current_image,
         .pResults = null,
    };

    VkResult render_result = vk::queuePresentKHR(context.graphics_queue, &present_info);

    switch (render_result) {
        case vk::VK_ERROR_OUT_OF_DATE_KHR: {
            io::printfn("Vk needs new swapchain");
        }
        case vk::VK_SUBOPTIMAL_KHR: {
            io::printfn("Vk needs new swapchain");
        }
        case vk::VK_SUCCESS: {}
        default: {
           return DeviceErrors.FAILED_DRAWING_FRAME?;
        }
    }

    self.current_image = (self.current_image + 1) % MAX_FRAMES_IN_FLIGHT;
}


fn void! create_swapchain(VkPhysicalDevice physical_device, VkDevice logical_device, VkSurfaceKHR surface, SwapChain* swapchain)
{
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

    VkPresentModeKHR present_mode = {|
        foreach (present : capabilities.present_modes)
        {
            if (present == vk::VK_PRESENT_MODE_MAILBOX_KHR) {
                return present;
            }
        }
        io::printfn("Did not find required present_mode, returning first one");
        return capabilities.present_modes[0];
    |};

    swapchain.extent = capabilities.capabilities.currentExtent;
    swapchain.image_format = surface_format.format;

    uint image_count = capabilities.capabilities.minImageCount + 1;
    if (capabilities.capabilities.maxImageCount > 0 && image_count > capabilities.capabilities.maxImageCount) {
     image_count = capabilities.capabilities.maxImageCount;
    }

    VkSwapchainCreateInfoKHR create_info = {
        .sType = vk::VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
        .pNext = null,
        .flags = 0,
        .surface = surface,
        .minImageCount = image_count,
        .imageFormat = surface_format.format,
        .imageColorSpace = surface_format.colorSpace,
        .imageExtent = capabilities.capabilities.currentExtent,
        .imageArrayLayers = 1,
        .imageUsage = vk::VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
        .imageSharingMode = vk::VK_SHARING_MODE_EXCLUSIVE,
        .preTransform = capabilities.capabilities.currentTransform,
        .compositeAlpha = vk::VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
        .presentMode = present_mode,
        .clipped = 0,
        .oldSwapchain = null,
    };

    // Create SwapChainKHR
    if (vk::createSwapchainKHR(logical_device, &create_info, null, &swapchain.swapchain) != vk::VK_SUCCESS) {
        io::printfn("Failed to create swaphcain");
        return DeviceErrors.SWAPCHAIN_FAILED?;
    };

    // Create SwapChain images
    if (vk::getSwapchainImagesKHR(logical_device, swapchain.swapchain, &swapchain.image_count, null) != vk::VK_SUCCESS) {
        io::printfn("Failed to get swapchain images");
        return DeviceErrors.SWAPCHAIN_FAILED?;
    };

    // Allocate data for images
    swapchain.images = malloc(VkImage, (usz)swapchain.image_count);
    swapchain.image_views = malloc(VkImageView, (usz)swapchain.image_count);
    swapchain.syncImages = malloc(SyncImage, (usz)swapchain.image_count);

    if (vk::getSwapchainImagesKHR(logical_device, swapchain.swapchain, &swapchain.image_count, swapchain.images) != vk::VK_SUCCESS) {
        io::printfn("Failed to create swapchain images");
        return DeviceErrors.SWAPCHAIN_FAILED?;
    };

    for (int i = 0; i < swapchain.image_count; ++i) {
        VkImageViewCreateInfo image_info = {
            .sType = vk::VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
            .pNext = null,
            .flags = 0,
            .image = swapchain.images[i],
            .viewType = vk::VK_IMAGE_VIEW_TYPE_2D,
            .format = surface_format.format,
            .components = {
                .r = vk::VK_COMPONENT_SWIZZLE_IDENTITY,
                .g = vk::VK_COMPONENT_SWIZZLE_IDENTITY,
                .b = vk::VK_COMPONENT_SWIZZLE_IDENTITY,
                .a = vk::VK_COMPONENT_SWIZZLE_IDENTITY,
            },
            .subresourceRange = {
                .aspectMask = vk::VK_IMAGE_ASPECT_COLOR_BIT,
                .baseMipLevel = 0,
                .levelCount = 1,
                .baseArrayLayer = 0,
                .layerCount = 1,
            },
        };

        if (vk::createImageView(logical_device, &image_info, null, &swapchain.image_views[i]) != vk::VK_SUCCESS) {
            io::printfn("Failed to create swapchain image views");
            return DeviceErrors.SWAPCHAIN_FAILED?;
        }

        VkSemaphoreCreateInfo semaphore_info = {
           .sType = vk::VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
           .pNext = null,
           .flags = 0,
        };

        VkFenceCreateInfo fence_info = {
           .sType = vk::VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
           .pNext = null,
           .flags = vk::VK_FENCE_CREATE_SIGNALED_BIT,
        };

        if (vk::createSemaphore(logical_device, &semaphore_info, null, &swapchain.syncImages[i].image_acquired) != vk::VK_SUCCESS) {
           io::printfn("Failed to create semaphore buffer");
           return DeviceErrors.SWAPCHAIN_FAILED?;
        }
        if (vk::createSemaphore(logical_device, &semaphore_info, null, &swapchain.syncImages[i].render_finished) != vk::VK_SUCCESS) {
           io::printfn("Failed to create semaphore buffer");
           return DeviceErrors.SWAPCHAIN_FAILED?;
        }

        if (vk::createFence(logical_device, &fence_info, null, &swapchain.syncImages[i].frame_fence) != vk::VK_SUCCESS) {
           io::printfn("Failed to create fence buffer");
           return DeviceErrors.SWAPCHAIN_FAILED?;
        }
    }
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
        uint presentSupport;

        if ((ulong)properties.queueFlags & vk::VK_QUEUE_GRAPHICS_BIT != 0) {
            family.graphics = i;
        }

        if (vk::getPhysicalDeviceSurfaceSupportKHR(device, i, surface, &presentSupport) != vk::VK_SUCCESS) {
           io::printfn("Failed to make surface support check");
           return DeviceErrors.QUEUE_FAMILY_FAILED?;
        };

        if (presentSupport == vk::VK_TRUE) {
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
    data.formats.size = format_count;
    if (vk::getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, data.formats.entries) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface formats");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    uint present_count;
    if (vk::getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, null) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface presents");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    data.present_modes.init(present_count);
    data.present_modes.size = present_count;

    if (vk::getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, data.present_modes.entries) != vk::VK_SUCCESS) {
        io::printfn("Failed getting surface presents");
        return DeviceErrors.DEVICE_CAPABILITIES_FAILED?;
    }

    return data;
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
        if (queueFamily.is_ready() && extension_support && capabilities.present_modes.len() != 0 && capabilities.formats.len() != 0) {
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


