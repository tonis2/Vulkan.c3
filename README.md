# Vulkan.c3

Vulkan bindings for C3 language

Currently at very early stage, api will change often.

### Building bindings

Install Dart https://dart.dev/get-dart

run `sh assets.sh && dart run main.dart`

### Building examples

Install C3 from https://c3-lang.org/

Download VulkanSDK from https://vulkan.lunarg.com/sdk/home

Make sure enviorment variables are set correctly, depending on the installed location.
For example below config worked for me

```
export VULKAN_SDK="$HOME/VulkanSDK/1.3.261.0/macOS"
export DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:${DYLD_LIBRARY_PATH:-}"
export VK_ADD_LAYER_PATH="$VULKAN_SDK/share/vulkan/explicit_layer.d"
export VK_ICD_FILENAMES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json" 
export VK_DRIVER_FILES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json"
```

### Examples

To see examples run `c3c run cube` in this repository

### Roadmap

* Get C3 error handling working with vulkan
* Get MacOS and Windows examples working.
* Build vulkan xml parser in C3 instead of Dart
