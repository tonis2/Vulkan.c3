module vk;
import std::io;
import std::core::env;
import libc;
import std::collections::list;
import glfw;

def StringList = List(<String>);
def ZStringList = List(<ZString>);
def DeviceList = List(<PhysicalDevice>);
def QueuePropertiesList = List(<QueueFamilyProperties>);
def SurfaceFormatList = List(<SurfaceFormatKHR>);
def PresentModeList = List(<PresentModeKHR>);
def CommandBufferList = List(<CommandBuffer>);
def CommandBufferCallback = fn void (CommandBuffer buffer);

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
    bool dynamic_rendering;
    ZStringList validations;
    ZStringList extensions;
    ZStringList device_extensions;
    InstanceCreateFlags instance_flags;
}

struct DeviceInfo {
    Instance instance;
    SurfaceKHR surface;
    Device device;
    PhysicalDevice physical_device;
    Queue graphics_queue;
    DebugUtilsMessengerEXT debug_messenger;
    QueueFamily queue_family;
    SurfaceFormatList surface_formats;
    PresentModeList present_modes;
    SurfaceCapabilitiesKHR capabilities;
    bool enable_debug;
}

fn DescriptorSetLayout! DeviceInfo.createDescriptorSetLayout(self, DescriptorSetLayoutCreateInfo info)
{
    DescriptorSetLayout layout;
    createDescriptorSetLayout(self.device, &info, null, &layout)!;
    return layout;
}

fn PipelineLayout! DeviceInfo.createPipelineLayout(self, PipelineLayoutCreateInfo info)
{
    PipelineLayout layout;
    createPipelineLayout(self.device, &info, null, &layout)!;
    return layout;
}

fn ShaderModule! DeviceInfo.createShaderModule(self, char[] data)
{
    ShaderModule shader;
    createShaderModule(self.device, &&ShaderModuleCreateInfo{
       .sType = vk::STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
       .pNext = null,
       .flags = 0,
       .codeSize = data.len,
       .pCode = (uint*)&data[0],
    }, null, &shader)!;
    return shader;
}

fn PipelineShaderStageCreateInfo ShaderModule.info(self, ShaderStageFlagBits stage, SpecializationInfo* spec_info = null, PipelineShaderStageCreateFlags flags = 0)
{
    return PipelineShaderStageCreateInfo {
        .sType = vk::STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        .pNext = null,
        .flags = flags,
        .stage = stage,
        .mod = self,
        .pName = "main",
        .pSpecializationInfo = spec_info,
    };
}

fn SwapChain! DeviceInfo.createSwapchain(self, SwapchainCreateInfoKHR* info = null)
{
    if (info == null) {
        info = &&self.default_swapchain_info();
    }

    SwapchainKHR swapchain;
    // Create SwapChainKHR
    createSwapchainKHR(self.device, info, null, &swapchain)!;
    // Create SwapChain images
    getSwapchainImagesKHR(self.device, swapchain, &info.minImageCount, null)!;
    Image* images = malloc(Image, (usz)info.minImageCount);
    ImageView* image_views = malloc(ImageView, (usz)info.minImageCount);
    getSwapchainImagesKHR(self.device, swapchain, &info.minImageCount, images)!;

    for (int i = 0; i < info.minImageCount; ++i) {
        ImageViewCreateInfo image_info = {
            .sType = vk::STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
            .pNext = null,
            .flags = 0,
            .image = images[i],
            .viewType = vk::IMAGE_VIEW_TYPE_2D,
            .format = info.imageFormat,
            .components = {
                .r = vk::COMPONENT_SWIZZLE_IDENTITY,
                .g = vk::COMPONENT_SWIZZLE_IDENTITY,
                .b = vk::COMPONENT_SWIZZLE_IDENTITY,
                .a = vk::COMPONENT_SWIZZLE_IDENTITY,
            },
            .subresourceRange = {
                .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
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

fn CommandPool! DeviceInfo.createCommandPool(self, CommandPoolCreateInfo* info = null)
{
    if (info == null) {
        info = &&CommandPoolCreateInfo{
            .sType = vk::STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
            .pNext = null,
            .flags = vk::COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
            .queueFamilyIndex = self.queue_family.graphics,
        };
    }

   CommandPool pool;
   createCommandPool(self.device, info, null, &pool)!;
   return pool;
}

fn CommandBufferList! DeviceInfo.createCommandBuffers(self, CommandPool pool, uint count, CommandBufferLevel level = COMMAND_BUFFER_LEVEL_PRIMARY)
{
    CommandBufferList buffers;
    CommandBuffer* command_buffers = malloc(CommandBuffer, count);
    CommandBufferAllocateInfo command_buffer_info = {
        .sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = pool,
        .level = level,
        .commandBufferCount = count,
    };

    allocateCommandBuffers(self.device, &command_buffer_info, command_buffers)!;
    for (int i = 0; i < count; ++i) {
        buffers.push(command_buffers[i]);
    }

    return buffers;
}

fn SwapchainCreateInfoKHR DeviceInfo.default_swapchain_info(self, SwapchainCreateInfoKHR info = defaultSwapchain)
{
    SurfaceFormatKHR surface_format = {|
        foreach (format : self.surface_formats)
        {
            if (format.format == FORMAT_B8G8R8A8_UNORM && format.colorSpace == COLOR_SPACE_SRGB_NONLINEAR_KHR) {
                return format;
            }
        }
        io::printfn("Did not find required format, returning first one");
        return self.surface_formats[0];
    |};

    PresentModeKHR present_mode = {|
        foreach (present : self.present_modes)
        {
            if (present == PRESENT_MODE_MAILBOX_KHR) {
                return present;
            }
        }
        io::printfn("Did not find required present_mode, returning first one");
        return self.present_modes[0];
    |};

    Extent2D extent = self.capabilities.maxImageExtent;
    Format image_format = surface_format.format;

    uint image_count = self.capabilities.minImageCount + 1;
    if (self.capabilities.maxImageCount > 0 && image_count > self.capabilities.maxImageCount) {
        image_count = self.capabilities.maxImageCount;
    }

   SwapchainCreateInfoKHR create_info = {
        .sType = STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
        .pNext = null,
        .flags = 0,
        .surface = self.surface,
        .minImageCount = image_count,
        .imageFormat = surface_format.format,
        .imageColorSpace = surface_format.colorSpace,
        .imageExtent = extent,
        .imageArrayLayers = 1,
        .imageUsage = IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
        .imageSharingMode = SHARING_MODE_EXCLUSIVE,
        .preTransform = self.capabilities.currentTransform,
        .compositeAlpha = COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
        .presentMode = present_mode,
        .clipped = 0,
        .oldSwapchain = null,
    };
    return create_info;
}

fn DeviceInfo! requestDevice(AppInfo* info, GLFWwindow window, DebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info, PhysicalDeviceFeatures device_features = default_device_features)
{
    Instance instance = getInstance(info, debug_info)!;
    DebugUtilsMessengerEXT debug_messenger;
    PhysicalDevice physical_device;
    SurfaceFormatList surface_formats;
    PresentModeList present_modes;
    QueueFamily queue_family;
    Queue graphics_queue;
    Device logical_device;
    SurfaceCapabilitiesKHR device_capabilities;
    bool physical_device_found = false;

    if (info.enable_debug) {
       debug_messenger = instance.createDebugUtilsMessenger()!;
    }

    SurfaceKHR surface = glfw::createWindowSurface(instance, window, null)!;
    DeviceList physical_devices = getPhysicalDevices(instance)!;
    defer physical_devices.free();

    // Find usable physical device (GPU)
    foreach (i, device : physical_devices)
    {
        QueueFamily queue;
        bool supports_extensions = true;
        SurfaceCapabilitiesKHR capabilities;
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

            if ((ulong)properties.queueFlags & QUEUE_GRAPHICS_BIT != 0) {
                queue.graphics = (uint)o;
            }
            getPhysicalDeviceSurfaceSupportKHR(device, (uint)o, surface, &presentSupport)!;

            if (presentSupport == vk::TRUE) {
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
    DeviceQueueCreateInfo graphicsInfo = {
        .sType = STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
        .queueFamilyIndex = queue_family.graphics,
        .queueCount = 1,
        .pQueuePriorities = &queuePriorities
    };

    DeviceCreateInfo deviceCreateInfo = {
        .sType = STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .pQueueCreateInfos = &graphicsInfo,
        .queueCreateInfoCount = 1,
        .pEnabledFeatures = &device_features,
        .enabledExtensionCount = (uint)info.device_extensions.len(),
        .ppEnabledExtensionNames = (char*)&info.device_extensions.to_array()[0],
        .enabledLayerCount = 0,
        .pNext = null,
        .flags = 0,
    };

     // Deprecated
    if (info.enable_debug) {
        deviceCreateInfo.enabledLayerCount = (uint)info.validations.len();
        deviceCreateInfo.ppEnabledLayerNames = (char*)&info.validations.to_array()[0];
    }

    PhysicalDeviceDynamicRenderingFeatures dynamicRenderingFeatures = {
       .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
       .dynamicRendering = vk::TRUE,
    };

    deviceCreateInfo.pNext = &dynamicRenderingFeatures;

    vk::createDevice(physical_device, &deviceCreateInfo, null, &logical_device)!;
    vk::getDeviceQueue(logical_device, queue_family.graphics, 0, &graphics_queue);

    return DeviceInfo {
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

fn void DeviceInfo.waitIdle(self) {
 if (catch err = vk::deviceWaitIdle(self.device)) {
    io::printfn("failed to wait idle");
 }
}

fn void! DeviceInfo.single_time_buffer(self, CommandBufferCallback callback)
{
    CommandPool command_pool;
    CommandPoolCreateInfo pool_info = {
        .sType = STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .pNext = null,
        .queueFamilyIndex = self.queue_family.graphics,
    };
    createCommandPool(self.device, &pool_info, null, &command_pool)!;
    CommandBufferAllocateInfo alloc_info = {
        .sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .pNext = null,
        .level = COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandPool = command_pool,
        .commandBufferCount = 1,
    };
    CommandBuffer command_buffer;
    allocateCommandBuffers(self.device, &alloc_info, &command_buffer)!;
    CommandBufferBeginInfo beginInfo = {
        .sType = STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
        .flags = COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
    };

    beginCommandBuffer(command_buffer, &beginInfo)!;
    callback(command_buffer);
    endCommandBuffer(command_buffer)!;

    SubmitInfo submitInfo = {
        .sType = STRUCTURE_TYPE_SUBMIT_INFO,
        .commandBufferCount = 1,
        .pCommandBuffers = &command_buffer
    };
    queueSubmit(self.graphics_queue, 1, &submitInfo, null)!;
    queueWaitIdle(self.graphics_queue)!;
    freeCommandBuffers(self.device, command_pool, 1, &command_buffer);
    destroyCommandPool(self.device, command_pool, null);
}

fn DebugUtilsMessengerEXT! Instance.createDebugUtilsMessenger(self, DebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info)
{
    DebugUtilsMessengerEXT messenger;
    createDebugUtilsMessengerEXT(self, &debug_info, null, &messenger)!;
    return messenger;
}


fn Semaphore! DeviceInfo.createSemaphore(&self, SemaphoreCreateInfo info)
{
    Semaphore semaphore;
    vk::createSemaphore(self.device, &info, null, &semaphore)!;
    return semaphore;
}

fn Fence! DeviceInfo.createFence(&self, FenceCreateInfo info)
{
    Fence fence;
    vk::createFence(self.device, &info, null, &fence)!;
    return fence;
}

fn Instance! getInstance(AppInfo* info, DebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info) {
        Instance instance;
        InstanceCreateInfo createInfo = {
        .sType = vk::STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &&ApplicationInfo {
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
    ExtensionProperties* layers = malloc(ExtensionProperties, extensionCount);
    defer mem::free(layers);

    vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers)!;
    for (uint i = 0; i < extensionCount; ++i) {
        ZString name = (ZString)&layers[i].extensionName;
        extensionList.push(name.as_str());
    };
    return extensionList;
}


fn StringList! getDeviceExtensions(PhysicalDevice device) {
    uint extensionCount;
    StringList extensionList;
    vk::enumerateDeviceExtensionProperties(device, null, &extensionCount, null)!;

    ExtensionProperties* layers = malloc(ExtensionProperties, extensionCount);
    defer mem::free(layers);

    vk::enumerateDeviceExtensionProperties(device, null, &extensionCount, layers)!;
    for (uint i = 0; i < extensionCount; ++i) {
        ZString name = (ZString)&layers[i].extensionName;
        extensionList.push(name.as_str());
    };
    return extensionList;
}

fn DeviceList! getPhysicalDevices(Instance instance) {
    uint deviceCount;
    DeviceList deviceList;
    vk::enumeratePhysicalDevices(instance, &deviceCount, null)!;

    PhysicalDevice* devices = malloc(PhysicalDevice, deviceCount);
    defer mem::free(devices);

    vk::enumeratePhysicalDevices(instance, &deviceCount, devices)!;
    for (uint i = 0; i < deviceCount; ++i) deviceList.push(devices[i]);
    return deviceList;
}

fn StringList! getValidationLayers() {
    uint layerCount;
    StringList layersList;
    vk::enumerateInstanceLayerProperties(&layerCount, null)!;

    LayerProperties* layers = malloc(LayerProperties, layerCount);
    defer mem::free(layers);

    vk::enumerateInstanceLayerProperties(&layerCount, layers)!;
    for (uint i = 0; i < layerCount; ++i) {
        ZString name = (ZString)&layers[i].layerName;
        layersList.push(name.as_str());
    };
    return layersList;
}

fn QueuePropertiesList! getQueueProperties(PhysicalDevice device) {
    uint queueCount;
    QueuePropertiesList propertiesList;
    getPhysicalDeviceQueueFamilyProperties(device, &queueCount, null);

    QueueFamilyProperties* properties = malloc(QueueFamilyProperties, queueCount);
    defer mem::free(properties);
    getPhysicalDeviceQueueFamilyProperties(device, &queueCount, properties);

    for (uint i = 0; i < queueCount; ++i) {
        propertiesList.push(properties[i]);
    };
    return propertiesList;
}

fn SurfaceFormatList! getSurfaceFormats(PhysicalDevice device, SurfaceKHR surface) {
    uint format_count;
    SurfaceFormatList formatList;
    getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, null)!;

    SurfaceFormatKHR* formats = malloc(SurfaceFormatKHR, format_count);
    defer mem::free(formats);
    getPhysicalDeviceSurfaceFormatsKHR(device, surface, &format_count, formats)!;

    for (uint i = 0; i < format_count; ++i) {
        formatList.push(formats[i]);
    };
    return formatList;
}

fn PresentModeList! getSurfacePresentModes(PhysicalDevice device, SurfaceKHR surface) {
    uint present_count;
    PresentModeList presentList;
    getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, null)!;

    PresentModeKHR* presents = malloc(PresentModeKHR, present_count);
    defer mem::free(presents);
    getPhysicalDeviceSurfacePresentModesKHR(device, surface, &present_count, presents)!;

    for (uint i = 0; i < present_count; ++i) {
        presentList.push(presents[i]);
    };
    return presentList;
}


fn bool debugCallback(
    vk::DebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
    vk::DebugUtilsMessageTypeFlagsEXT messageType,
    vk::DebugUtilsMessengerCallbackDataEXT* data,
    void* userData
) @private {
    if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    }
    return false;
}


fn void DeviceInfo.free(self)
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

fn void CommandPool.free(self, Device device)
{
   destroyCommandPool(device, self, null);
}

fn void ShaderModule.free(self, Device device)
{
    destroyShaderModule(device, self, null);
}

fn void PipelineLayout.free(self, Device device)
{
    destroyPipelineLayout(device, self, null);
}

fn void DescriptorSetLayout.free(self, Device device)
{
    destroyDescriptorSetLayout(device, self, null);
}

fn void Pipeline.free(self, Device device) {
   destroyPipeline(device, self, null);
}

fn void AppInfo.free(&self)
{
    self.validations.free();
    self.extensions.free();
    self.device_extensions.free();
}


fn void FenceList.release(self, vk::Device device) {
  for (uint i = 0; i < self.len(); ++i) {
      vk::destroyFence(device, self.entries[i], null);
  }
  self.free();
}

fn void SemaphoreList.release(self, vk::Device device) {
  for (uint i = 0; i < self.len(); ++i) {
      vk::destroySemaphore(device, self.entries[i], null);
  }
  self.free();
}

fn void! Fence.waitFor(&self, vk::Device device) {
  vk::waitForFences(device, 1, self, vk::TRUE, uint.max)!;
}

fn void! Fence.reset(&self, vk::Device device) {
  vk::resetFences(device, 1, self)!;
}

fn uint! Semaphore.getNextImage(self, vk::Device device, vk::SwapchainKHR swapchain) {
    uint index;
    vk::acquireNextImageKHR(device, swapchain, uint.max, self, null, &index)!!;
    return index;
}