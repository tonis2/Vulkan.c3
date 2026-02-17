# Vulkan.c3

Vulkan bindings for C3 language

### Features
* Vulkan API 1.0 - 1.4 bindings
* C3 error handling for Vulkan commands
* Auto-generated build pattern for Vulkan struct creation

### Example
Running example:
Install [C3](https://c3-lang.org/), [VulkanSDK](https://vulkan.lunarg.com/sdk/home)
Then run example with 
```sh
c3c run cube
```
##### Running example on Windows
On windows try running with 
```sh
c3c run cube-win
```

##### Running example on macOS

Install [VulkanSDK](https://vulkan.lunarg.com/sdk/home#mac) and add vulkan lib file path as `rpath` to the run command.
Its the folder with `vulkan.1.dylib` file
````sh
c3c run cube -z -rpath -z /Users/my_user/VulkanSDK/macOS/lib
````

##### Running example on linux
Install [VulkanSDK](https://vulkan.lunarg.com/sdk/home#mac)

Choosing wayland or X11 can be done with feature tag inside C3 `project.json`
```
"features": ["WAYLAND"]
"features": ["X11"]

```

### Building bindings

run `sh build.sh` 
or just `c3c run build` and manually download Vulkan specs from [here](https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml)

The built bindings files will be bundled into `vulkan.c3l` library file, that you can then use in your C3 project, like below example.

`dependency-search-paths` is where you put the `vulkan.c3l` file.

```
"dependency-search-paths": [ "./dependencies"],
"dependencies": ["vk"],

```

