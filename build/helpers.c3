module vk;
import std::io;
import std::core::env;

import std::collections::list;

def StringList = List(<String>);
def ZStringList = List(<ZString>);
def DeviceList = List(<VkPhysicalDevice>);

fault ContextErrors
{
    FAILED_GETTING_EXTENSIONS,
    EXTENSION_NOT_SUPPORTED
}

struct AppInfo {
    void* pNext;
    String pApplicationName;
    uint applicationVersion;
    String pEngineName;
    uint engineVersion;
    uint apiVersion;
    bool enable_validations;
    ZStringList validations;
    ZStringList extensions;
    ZStringList device_extensions;
    VkInstanceCreateFlags instance_flags;
    VkDebugUtilsMessengerCreateInfoEXT debug_info;
}

fn void VkDevice.free(self)
{
    vk::destroyDevice(self, null);
}

fn VkDebugUtilsMessengerEXT! VkInstance.createDebugUtilsMessenger(self, VkDebugUtilsMessengerCreateInfoEXT debugInfo)
{
   VkDebugUtilsMessengerEXT messenger;
   createDebugUtilsMessengerEXT(self, &debugInfo, null, &messenger)!;
   return messenger;
}

fn void AppInfo.free(&self)
{
    self.validations.free();
    self.extensions.free();
    self.device_extensions.free();
}

fn VkInstance! AppInfo.createInstance(&self) {
        VkInstance instance;
        VkDebugUtilsMessengerCreateInfoEXT debugInfo;
        VkInstanceCreateInfo createInfo = {
            .sType = vk::VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
            .pApplicationInfo = &&VkApplicationInfo {
            .pApplicationName = self.pApplicationName,
            .applicationVersion = self.applicationVersion,
            .pEngineName = self.pEngineName,
            .engineVersion = self.engineVersion,
            .apiVersion = self.apiVersion
        },
        .flags = self.instance_flags,
        .enabledExtensionCount = (uint)self.extensions.len(),
        .ppEnabledExtensionNames = (char*)&self.extensions.to_array()[0],
    };

    StringList extensions = getInstanceExtensions()!;
    defer extensions.free();

    // Check for instance extension support
    foreach (i, value : self.extensions)
    {
        if (!extensions.contains(value.as_str())) {
            io::printfn("Extension not supported %s", value.as_str());
            return ContextErrors.EXTENSION_NOT_SUPPORTED?;
        }
    }

    if (self.enable_validations) {
        StringList validations = getValidationLayers()!;
        // Check for validation support
        foreach (i, value : self.validations)
        {
            if (!validations.contains(value.as_str())) {
                io::printfn("Validation layer not supported %s", value.as_str());
                return ContextErrors.EXTENSION_NOT_SUPPORTED?;
            }
        }
        createInfo.enabledLayerCount = (uint)self.validations.len();
        createInfo.ppEnabledLayerNames = (char*)&self.validations.to_array()[0];
        createInfo.pNext = &self.debug_info;
    }

    vk::createInstance(&createInfo, null, &instance)!;

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
