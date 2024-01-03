module vk;
import std::io;
import std::math;
import std::core::env;
import libc;
import std::collections::list;

def StringList = List(<String>);
def ZStringList = List(<ZString>);
def DeviceList = List(<PhysicalDevice>);
def QueuePropertiesList = List(<QueueFamilyProperties>);
def SurfaceFormatList = List(<SurfaceFormatKHR>);
def PresentModeList = List(<PresentModeKHR>);
def CommandBufferList = List(<CommandBuffer>);
def ImageList = List(<vk::Image>);
def ImageViewList = List(<vk::ImageView>);


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

struct InstanceInfo {
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
    Instance instance;
    DebugUtilsMessengerEXT debug_messenger;
}

fn void InstanceInfo.free(&self)
{
    self.validations.free();
    self.extensions.free();
    self.device_extensions.free();
    if (self.enable_debug) {
        vk::destroyDebugUtilsMessengerEXT(self.instance, self.debug_messenger, null);
    }
    vk::destroyInstance(self.instance, null);
}

fn InstanceInfo! InstanceInfo.init(&self, DebugUtilsMessengerCreateInfoEXT debug_info = default_debug_info)
{
        Instance instance;
        InstanceCreateInfo createInfo = {
        .sType = vk::STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &&ApplicationInfo {
            .pApplicationName = self.pApplicationName,
            .applicationVersion = self.applicationVersion,
            .pEngineName = self.pEngineName,
            .engineVersion = self.engineVersion,
            .apiVersion = self.apiVersion
        },
        .flags = self.instance_flags,
        .enabledExtensionCount = (uint)self.extensions.len(),
        .ppEnabledExtensionNames = (char*)self.extensions.entries,
    };

    StringList extensions = getInstanceExtensions()!;
    defer extensions.free();

    // Check for instance extension support
    foreach (i, value : self.extensions)
    {
        if (!extensions.contains(value.str_view())) {
            io::printfn("Extension not supported %s", value.str_view());
            return ContextErrors.EXTENSION_NOT_SUPPORTED?;
        }
    }

    if (self.enable_debug) {
        StringList validations = getValidationLayers()!;
        defer validations.free();
        // Check for validation support
        foreach (i, value : self.validations)
        {
            if (!validations.contains(value.str_view())) {
                io::printfn("Validation layer not supported %s", value.str_view());
                return ContextErrors.EXTENSION_NOT_SUPPORTED?;
            }
        }
        createInfo.enabledLayerCount = (uint)self.validations.len();
        createInfo.ppEnabledLayerNames = (char*)self.validations.entries;
        createInfo.pNext = &debug_info;
    }

    vk::createInstance(&createInfo, null, &self.instance)!;
    loadExtensions(self.instance);

    if (self.enable_debug) {
        self.debug_messenger = default_debug_info.build(self.instance)!;
    }

    return *self;
}

struct DeviceInfo {
    Device device;
    PhysicalDevice physical_device;
    Queue graphics_queue;
    QueueFamily queue_family;
    SurfaceFormatList surface_formats;
    PresentModeList present_modes;
    SurfaceCapabilitiesKHR capabilities;
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
    CommandBuffer* command_buffers = mem::new_array(CommandBuffer, count);
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

fn DeviceInfo! requestDevice(InstanceInfo instance, SurfaceKHR surface, PhysicalDeviceFeatures device_features = default_device_features)
{
    PhysicalDevice physical_device;
    QueueFamily queue_family;
    Queue graphics_queue;
    bool physical_device_found = false;

    @pool() {
        // Find usable physical device (GPU)
        foreach (i, device : instance.instance.getDevices()!)
        {
            QueueFamily queue;

            // Check for device extension support
            bool supports_extensions = device.checkExtensionSupport(instance.device_extensions)!;
            QueuePropertiesList queue_properties = getQueueProperties(device)!;

            queue.graphics = queue_properties.find(fn (usz index, Flags flags) => (usz)flags & QUEUE_GRAPHICS_BIT != 0);
            queue.present = queue_properties.find(fn (usz index, Flags flags) => (usz)flags & QUEUE_GRAPHICS_BIT != 0);

            // Good physical device found
            if (queue.is_ready() && supports_extensions) {
                // Device is good
                physical_device = device;
                queue_family = queue;
                physical_device_found = true;
            }
        }
    };


    if (!physical_device_found) {
        io::printfn("Fitting physical device not found");
        return ContextErrors.FAILED_GETTING_DEVICE?;
    }

    DeviceQueueCreateInfo graphicsInfo = deviceQueueCreateInfoBuilder()
    .setQueueFamilyIndex(queue_family.graphics)
    .setQueuePriorities({1.0});

    Device logical_device = deviceCreateInfoBuilder()
        .setQueueCreateInfos({graphicsInfo})
        .setEnabledFeatures(&device_features)
        .setEnabledExtensionNames(instance.device_extensions.array_view())
        .setEnabledLayerCount(0)
        .setNext(&&PhysicalDeviceDynamicRenderingFeatures{
           .sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
           .dynamicRendering = vk::TRUE,
     }).build(physical_device)!;

    vk::getDeviceQueue(logical_device, queue_family.graphics, 0, &graphics_queue);

    return DeviceInfo {
        .device = logical_device,
        .physical_device = physical_device,
        .graphics_queue = graphics_queue,
        .surface_formats = surface.getFormats(physical_device)!,
        .present_modes = surface.getPresentModes(physical_device)!,
        .queue_family = queue_family,
        .capabilities = surface.deviceSurfaceCapabilities(physical_device)!
    };
}

/*fn Extent2D DeviceInfo.getExtent(self) {
    int width, height;
    glfw::getFramebufferSize(self.window, (uint*)&width, (uint*)&height);
    Extent2D actualExtent = {
     width,
     height
    };

    actualExtent.width = math::clamp(actualExtent.width, self.capabilities.minImageExtent.width, self.capabilities.maxImageExtent.width);
    actualExtent.height = math::clamp(actualExtent.height, self.capabilities.minImageExtent.height,self.capabilities.maxImageExtent.height);
    return actualExtent;
}*/

fn void Device.waitIdle(self) {
 if (catch err = vk::deviceWaitIdle(self)) {
    io::printfn("failed to wait idle");
 }
}

macro void! DeviceInfo.@single_time_buffer(self; @body(CommandBuffer buffer))
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
    @body(command_buffer);
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


fn bool! SurfaceKHR.checkSurfaceSupport(self, usz index, PhysicalDevice device) {
      uint response;
      getPhysicalDeviceSurfaceSupportKHR(device, (uint)index, self, &response)!;
      return response > 0;
}

fn SurfaceFormatList! SurfaceKHR.getFormats(self, PhysicalDevice device) {
    uint format_count;
    SurfaceFormatList formatList;
    getPhysicalDeviceSurfaceFormatsKHR(device, self, &format_count, null)!;

    SurfaceFormatKHR* formats = mem::new_array(SurfaceFormatKHR, format_count);
    defer mem::free(formats);
    getPhysicalDeviceSurfaceFormatsKHR(device, self, &format_count, formats)!;

    for (uint i = 0; i < format_count; ++i) {
      formatList.push(formats[i]);
    };
    return formatList;
}

fn SurfaceCapabilitiesKHR! SurfaceKHR.deviceSurfaceCapabilities(self, PhysicalDevice device) {
    SurfaceCapabilitiesKHR response;
    getPhysicalDeviceSurfaceCapabilitiesKHR(device, self, &response)!;
    return response;
}

fn PresentModeList! SurfaceKHR.getPresentModes(self, PhysicalDevice device) {
    uint present_count;
    PresentModeList presentList;
    getPhysicalDeviceSurfacePresentModesKHR(device, self, &present_count, null)!;

    PresentModeKHR* presents = mem::new_array(PresentModeKHR, present_count);
    defer mem::free(presents);
    getPhysicalDeviceSurfacePresentModesKHR(device, self, &present_count, presents)!;

    for (uint i = 0; i < present_count; ++i) {
        presentList.push(presents[i]);
    };
    return presentList;
}

fn DeviceList! Instance.getDevices(self) {
    uint deviceCount;
    DeviceList deviceList;
    vk::enumeratePhysicalDevices(self, &deviceCount, null)!;

    PhysicalDevice* devices = mem::new_array(PhysicalDevice, deviceCount);
    defer mem::free(devices);

    vk::enumeratePhysicalDevices(self, &deviceCount, devices)!;
    for (uint i = 0; i < deviceCount; ++i) deviceList.push(devices[i]);
    return deviceList;
}

fn StringList! PhysicalDevice.getExtensions(self) {
    uint extensionCount;
    StringList extensionList;
    vk::enumerateDeviceExtensionProperties(self, null, &extensionCount, null)!;
    ExtensionProperties* layers = mem::new_array(ExtensionProperties, extensionCount);
    defer mem::free(layers);

    vk::enumerateDeviceExtensionProperties(self, null, &extensionCount, layers)!;
    for (uint i = 0; i < extensionCount; ++i) {
        ZString name = (ZString)&layers[i].extensionName;
        extensionList.push(name.str_view());
    };
    return extensionList;
}


fn bool! PhysicalDevice.checkExtensionSupport(self, ZStringList extensions) {
    bool supports = true;
    StringList device_extensions = self.getExtensions()!;
    defer device_extensions.free();

    foreach (extension_name : extensions) {
        if (!device_extensions.contains(extension_name.str_view())) {
            supports = false;
            io::printfn("extension not supported %s", extension_name.str_view());
        }
    }
    return supports;
}

fn StringList! getInstanceExtensions() {
    uint extensionCount;
    StringList extensionList;
    vk::enumerateInstanceExtensionProperties(null, &extensionCount, null)!;
    ExtensionProperties* layers = mem::new_array(ExtensionProperties, extensionCount);
    defer mem::free(layers);

    vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers)!;
    for (uint i = 0; i < extensionCount; ++i) {
        ZString name = (ZString)&layers[i].extensionName;
        extensionList.push(name.str_view());
    };
    return extensionList;
}

fn StringList! getValidationLayers() {
    uint layerCount;
    StringList layersList;
    vk::enumerateInstanceLayerProperties(&layerCount, null)!;

    LayerProperties* layers = mem::new_array(LayerProperties, layerCount);
    defer mem::free(layers);

    vk::enumerateInstanceLayerProperties(&layerCount, layers)!;
    for (uint i = 0; i < layerCount; ++i) {
        ZString name = (ZString)&layers[i].layerName;
        layersList.push(name.str_view());
    };
    return layersList;
}

fn QueuePropertiesList! getQueueProperties(PhysicalDevice device) {
    uint queueCount;
    QueuePropertiesList propertiesList;
    getPhysicalDeviceQueueFamilyProperties(device, &queueCount, null);

    QueueFamilyProperties* properties = mem::new_array(QueueFamilyProperties, queueCount);
    defer mem::free(properties);
    getPhysicalDeviceQueueFamilyProperties(device, &queueCount, properties);

    for (uint i = 0; i < queueCount; ++i) {
        propertiesList.push(properties[i]);
    };
    return propertiesList;
}

/*macro QueuePropertiesList.@find(&self; @body(usz index, Flags flags)) {
    int response = -1;
    foreach (index, properties : self) {
        if (@body(index, properties.queueFlags)) {
            response = (int)index;
        }
    }
    return response;
}*/

def CompareFN = fn bool (usz index, Flags flags);
fn int QueuePropertiesList.find(self, CompareFN callback)
{
    int response = -1;
    foreach (index, properties : self) {
        if (callback(index, properties.queueFlags)) {
            response = (int)index;
        }
    }
    return response;
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

fn vk::MemoryRequirements Image.getMemoryRequirements(self, Device device) {
    vk::MemoryRequirements mem_reqs;
    vk::getImageMemoryRequirements(device, self, &mem_reqs);
    return mem_reqs;
}

fn vk::ImageList! SwapchainKHR.getImages(self, Device device, uint count) {
    vk::Image* images = mem::new_array(vk::Image, count);
    vk::getSwapchainImagesKHR(device, self, &count, images)!;

    vk::ImageList list;
    for (uint i; i<count; i++) list.push(images[i]);

    return list;
}

fn uint SwapchainKHR.getNextImage(self, Device device, Semaphore wait_semaphore)
{
    uint index;
    vk::acquireNextImageKHR(device, self, uint.max, wait_semaphore, null, &index)!!;
    return index;
}

fn void DeviceInfo.free(self)
{
    self.surface_formats.free();
    self.present_modes.free();
    vk::destroyDevice(self.device, null);
}

fn void CommandPool.free(self, Device device)
{
   destroyCommandPool(device, self, null);
}

fn void SwapchainKHR.free(self, Device device) {
    destroySwapchainKHR(device, self, null);
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

fn void! Fence.wait(&self, vk::Device device) {
  vk::waitForFences(device, 1, self, vk::TRUE, uint.max)!;
}

fn void! Fence.reset(&self, vk::Device device) {
  vk::resetFences(device, 1, self)!;
}

fn void SurfaceKHR.free(self, Instance instance) {
    destroySurfaceKHR(instance, self, null);
}

macro uint @makeApiVersion(uint $variant, uint $major, uint $minor, uint $patch) => (($variant << 29) | ($major << 22) | ($minor << 12) | $patch);