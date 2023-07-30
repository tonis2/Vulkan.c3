import std::io;
import vk;

fn bool checkValidationLayerSupport(ZString[] validationLayers) {
    uint layerCount;
    VkResult result = vk::enumerateInstanceLayerProperties(&layerCount, null);
    uint foundLayers = 0;

    @pool()
    {
        VkLayerProperties* layers = tmalloc(VkLayerProperties, layerCount);
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
    };

    if (validationLayers.len != foundLayers) {
        io::printfn("Required validation layers not found");
    }

    return validationLayers.len == foundLayers;
}

fn bool checkExtensionsSupport(String[] extensions) {
    uint extensionCount;
    uint foundExtensions = 0;
    if (vk::enumerateInstanceExtensionProperties(null, &extensionCount, null) != vk::VK_SUCCESS) {
        io::printf("failed to get extension layers count");
    }

    @pool() {
        VkExtensionProperties* layers = tmalloc(VkExtensionProperties, extensionCount);
        if (vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers) != vk::VK_SUCCESS) {
            io::printf("failed to get extension layers");
        }

        for (int i = 0; i < extensionCount; ++i)
        {
            ZString name = (ZString)&layers[i].extensionName;
            for (int o = 0; o < extensions.len; ++o) {
              if (name.as_str() == extensions[o]) {
                foundExtensions += 1;
              }
            }
        }
    };
    return extensions.len == foundExtensions;
}