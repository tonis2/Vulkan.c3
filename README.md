# Vulkan.c3

Vulkan bindings for C3 language

### Features
* Vulkan API 1.0 - 1.4 bindings
* C3 error handling for Vulkan commands
* Auto-generated build pattern for Vulkan struct creation


### Running example

Install C3 from https://c3-lang.org/

Download VulkanSDK from https://vulkan.lunarg.com/sdk/home

Then run `c3c run cube` inside the cloned repository

GLTF examples can be found [here](https://github.com/tonis2/vulkan-gltf)


### Building bindings

run `sh build.sh` 
or just `c3c run build` and manually download Vulkan specs from [here](https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml)
