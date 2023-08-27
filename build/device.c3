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
def CommandBufferList = List(<VkCommandBuffer>);
def CommandBufferCallback = fn void (VkCommandBuffer buffer);

VkDebugUtilsMessengerCreateInfoEXT default_debug_info =  {
     .sType = vk::VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
     .flags = 0,
     .messageSeverity = vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
     .messageType = vk::VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
     .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback,
     .pUserData = null,
};

VkPhysicalDeviceFeatures default_device_features = {
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
    .fillModeNonSolid = 0,
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

fault ContextErrors
{
    FAILED_GETTING_EXTENSIONS,
    EXTENSION_NOT_SUPPORTED,
    FAILED_GETTING_DEVICE
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
    vk::QueueFamily queue_family;
    SurfaceFormatList surface_formats;
    PresentModeList present_modes;
    VkSurfaceCapabilitiesKHR capabilities;
    bool enable_debug;
}

fn void Device.free(self)
{
    vk::deviceWaitIdle(self.device)!!;
    self.surface_formats.free();
    self.present_modes.free();
    if (self.enable_debug) {
      vk::destroyDebugUtilsMessengerEXT(self.instance, self.debug_messenger, null);
    }
    vk::destroySurfaceKHR(self.instance, self.surface, null);
    vk::destroyDevice(self.device, null);
    vk::destroyInstance(self.instance, null);
}

fn SwapChain! Device.createSwapchain(self, VkSwapchainCreateInfoKHR* info = null)
{
    if (info == null) {
        info = &&self.default_swapchain_info();
    }

    VkSwapchainKHR swapchain;
    // Create SwapChainKHR
    createSwapchainKHR(self.device, info, null, &swapchain)!;
    // Create SwapChain images
    getSwapchainImagesKHR(self.device, swapchain, &info.minImageCount, null)!;
    VkImage* images = malloc(VkImage, (usz)info.minImageCount);
    VkImageView* image_views = malloc(VkImageView, (usz)info.minImageCount);
    getSwapchainImagesKHR(self.device, swapchain, &info.minImageCount, images)!;

    for (int i = 0; i < info.minImageCount; ++i) {
        VkImageViewCreateInfo image_info = {
            .sType = vk::VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
            .pNext = null,
            .flags = 0,
            .image = images[i],
            .viewType = vk::VK_IMAGE_VIEW_TYPE_2D,
            .format = info.imageFormat,
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
        createImageView(self.device, &image_info, null, &image_views[i])!;
    }


    return SwapChain {
        .swapchain = swapchain,
        .images = images,
        .image_views = image_views,
        .image_format = info.imageFormat,
        .extent = info.imageExtent,
        .image_count = info.minImageCount
    };
}

fn VkCommandPool! Device.createCommandPool(self, VkCommandPoolCreateInfo* info = null)
{
   if (info == null) {
    info = &&VkCommandPoolCreateInfo{
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .pNext = null,
        .flags = vk::VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
        .queueFamilyIndex = self.queue_family.graphics,
    };
   }

   VkCommandPool pool;
   createCommandPool(self.device, info, null, &pool)!;
   return pool;
}

/*fn CommandBufferList! Device.createCommandBuffers(self, VkCommandPool pool, uint count)
{
    CommandBufferList buffers;
    VkCommandBuffer* command_buffers = malloc(VkCommandBuffer, count);
    VkCommandBufferAllocateInfo command_buffer_info = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = pool
        .level = VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = count,
    };

    allocateCommandBuffers(self.device, &command_buffer_info, command_buffers)!;
    for (int i = 0; i < count; ++i) {
        buffers.push(command_buffers[i]);
    }

    return buffers;
}*/


fn VkSwapchainCreateInfoKHR Device.default_swapchain_info(self, VkSwapchainCreateInfoKHR info = defaultSwapchain)
{
    VkSurfaceFormatKHR surface_format = {|
        foreach (format : self.surface_formats)
        {
            if (format.format == VK_FORMAT_B8G8R8A8_UNORM && format.colorSpace == VK_COLOR_SPACE_SRGB_NONLINEAR_KHR) {
                return format;
            }
        }
        io::printfn("Did not find required format, returning first one");
        return self.surface_formats[0];
    |};

    VkPresentModeKHR present_mode = {|
        foreach (present : self.present_modes)
        {
            if (present == VK_PRESENT_MODE_MAILBOX_KHR) {
                return present;
            }
        }
        io::printfn("Did not find required present_mode, returning first one");
        return self.present_modes[0];
    |};

    VkExtent2D extent = self.capabilities.maxImageExtent;
    VkFormat image_format = surface_format.format;

    uint image_count = self.capabilities.minImageCount + 1;
    if (self.capabilities.maxImageCount > 0 && image_count > self.capabilities.maxImageCount) {
        image_count = self.capabilities.maxImageCount;
    }

   VkSwapchainCreateInfoKHR create_info = {
        .sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
        .pNext = null,
        .flags = 0,
        .surface = self.surface,
        .minImageCount = image_count,
        .imageFormat = surface_format.format,
        .imageColorSpace = surface_format.colorSpace,
        .imageExtent = extent,
        .imageArrayLayers = 1,
        .imageUsage = VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
        .imageSharingMode = VK_SHARING_MODE_EXCLUSIVE,
        .preTransform = self.capabilities.currentTransform,
        .compositeAlpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
        .presentMode = present_mode,
        .clipped = 0,
        .oldSwapchain = null,
    };
    return create_info;
}

fn Device! requestDevice(AppInfo* info, GLFWwindow window, VkDebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info, VkPhysicalDeviceFeatures device_features = default_device_features)
{
    VkInstance instance = getInstance(info, debug_info)!;
    VkDebugUtilsMessengerEXT debug_messenger;
    VkPhysicalDevice physical_device;
    SurfaceFormatList surface_formats;
    PresentModeList present_modes;
    vk::QueueFamily queue_family;
    VkQueue graphics_queue;
    VkDevice logical_device;
    VkSurfaceCapabilitiesKHR device_capabilities;
    bool physical_device_found = false;

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

        // Good physical device found
        if (queue.is_ready() && supports_extensions && presentModes.len() != 0 && surfaceFormats.len() != 0) {
            // Device is good
            physical_device = device;
            surface_formats.add_all(&surfaceFormats);
            present_modes.add_all(&presentModes);
            physical_device_found = true;
            queue_family = queue;
            device_capabilities = capabilities;
        }
    }

    if (!physical_device_found) {
        io::printfn("Fitting physical device not found");
        return ContextErrors.FAILED_GETTING_DEVICE?;
    }

    float queuePriorities = 1.0;
    VkDeviceQueueCreateInfo graphicsInfo = {
        .sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
        .queueFamilyIndex = queue_family.graphics,
        .queueCount = 1,
        .pQueuePriorities = &queuePriorities
    };

    VkDeviceCreateInfo deviceCreateInfo = {
        .sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .pQueueCreateInfos = &graphicsInfo,
        .queueCreateInfoCount = 1,
        .pEnabledFeatures = &device_features,
        .enabledExtensionCount = (uint)info.device_extensions.len(),
        .ppEnabledExtensionNames = (char*)&info.device_extensions.to_array()[0],
        .enabledLayerCount = 0,
        .pNext = null,
        .flags = 0,
    };

    if (info.enable_debug) {
        deviceCreateInfo.enabledLayerCount = (uint)info.validations.len();
        deviceCreateInfo.ppEnabledLayerNames = (char*)&info.validations.to_array()[0];
    }

    vk::createDevice(physical_device, &deviceCreateInfo, null, &logical_device)!;
    vk::getDeviceQueue(logical_device, queue_family.graphics, 0, &graphics_queue);

    return Device {
        .instance = instance,
        .surface = surface,
        .device = logical_device,
        .physical_device = physical_device,
        .debug_messenger = debug_messenger,
        .graphics_queue = graphics_queue,
        .enable_debug = info.enable_debug,
        .surface_formats = surface_formats,
        .present_modes = present_modes,
        .queue_family = queue_family,
        .capabilities = device_capabilities
    };
}

fn void! Device.single_time_buffer(self, CommandBufferCallback callback)
{
    VkCommandPool command_pool;
    VkCommandPoolCreateInfo pool_info = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .pNext = null,
        .queueFamilyIndex = self.queue_family.graphics,
    };
    createCommandPool(self.device, &pool_info, null, &command_pool)!;
    VkCommandBufferAllocateInfo alloc_info = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .pNext = null,
        .level = VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandPool = command_pool,
        .commandBufferCount = 1,
    };
    VkCommandBuffer command_buffer;
    allocateCommandBuffers(self.device, &alloc_info, &command_buffer)!;
    VkCommandBufferBeginInfo beginInfo = {
        .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
        .flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    };

    beginCommandBuffer(command_buffer, &beginInfo)!;
    callback(command_buffer);
    endCommandBuffer(command_buffer)!;

    VkSubmitInfo submitInfo = {
        .sType = VK_STRUCTURE_TYPE_SUBMIT_INFO,
        .commandBufferCount = 1,
        .pCommandBuffers = &command_buffer
    };
    queueSubmit(self.graphics_queue, 1, &submitInfo, null)!;
    queueWaitIdle(self.graphics_queue)!;
    freeCommandBuffers(self.device, command_pool, 1, &command_buffer);
    destroyCommandPool(self.device, command_pool, null);
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

