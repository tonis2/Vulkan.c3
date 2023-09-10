# Vulkan.c3

Vulkan bindings for C3 language

Currently at very early stage, binding api could change.

### Features
* Vulkan API 1.0 - 1.3 bindings
* C3 error handling for Vulkan commands
* Auto-generated build pattern for Vulkan struct creation

### Building examples

Install C3 from https://c3-lang.org/

Download VulkanSDK from https://vulkan.lunarg.com/sdk/home

Make sure enviorment variables are set correctly, depending on the installed location.


Example enviorment variables on MacOS and MoltenVk
```
export VULKAN_SDK="$HOME/VulkanSDK/1.3.261.0/macOS"
export DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:${DYLD_LIBRARY_PATH:-}"
export VK_ADD_LAYER_PATH="$VULKAN_SDK/share/vulkan/explicit_layer.d"
export VK_ICD_FILENAMES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json" 
export VK_DRIVER_FILES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json"
```

Then run `c3c run cube` inside the cloned repository


### Roadmap

* Get windows example working
* Make GLTF loading example
* Build vulkan xml parser in C3 instead of Dart


### Building bindings

Install Dart https://dart.dev/get-dart

run `sh assets.sh && dart run main.dart`
