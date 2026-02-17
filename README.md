# Vulkan.c3

Vulkan bindings for the C3 programming language with idiomatic C3 error handling and builder patterns for easy Vulkan development.

## Features

- **Complete Vulkan API Coverage** - Bindings for Vulkan API versions 1.0 through 1.4
- **Idiomatic C3 Error Handling** - Vulkan commands use C3's error handling mechanisms
- **Builder Pattern** - Auto-generated builder pattern for easy Vulkan struct creation
- **Cross-Platform** - Supports Windows, Linux (Wayland/X11), and macOS
- **Working Example** - Includes a complete 3D cube example to get you started

## Prerequisites

Before using this library, you need:

1. **[C3 Compiler](https://c3-lang.org/)** - Install the latest version of the C3 compiler
2. **[Vulkan SDK](https://vulkan.lunarg.com/sdk/home)** - Download and install the Vulkan SDK for your platform

## Quick Start

```bash
# Clone the repository
git@github.com:tonis2/Vulkan.c3.git
cd Vulkan.c3

# Build and run the example
c3c run cube
```

## Installation

1. **Install C3**: Follow the [official C3 installation guide](https://c3-lang.org/getting-started/installation/)


## Running the Example

```bash
# Linux
c3c run cube

# Windows
c3c run cube-win

# macOS (adjust path as needed)
c3c run cube -z -rpath -z /Users/yourusername/VulkanSDK/macOS/lib
```

### Linux

1. **Install Vulkan SDK**:
   ```bash
   # Ubuntu/Debian
   sudo apt install vulkan-tools vulkan-validationlayers-dev spirv-tools
   
   # Or download from LunarG website and follow their instructions
   ```

2. **Choose Display Server** (Wayland or X11):
   Edit `project.json` and set the appropriate feature:
   ```json
   "features": ["WAYLAND"]  // For Wayland
   // or
   "features": ["X11"]      // For X11
   ```

### Windows

1. **Install Vulkan SDK**: Download from [LunarG Vulkan SDK](https://vulkan.lunarg.com/sdk/home)

2. **Add Vulkan to PATH**: Ensure `VULKAN_SDK` environment variable is set

3. **Cross-compilation from Linux**: If developing on Linux but targeting Windows, the `cube-win` target includes the necessary Windows SDK configuration.

### macOS

1. **Install C3**: Follow the [macOS installation guide](https://c3-lang.org/getting-started/installation/)

2. **Install Vulkan SDK**: Download [Vulkan SDK for macOS](https://vulkan.lunarg.com/sdk/home#mac)

3. **Run the example** with the Vulkan library path:
   ```bash
   # Replace /path/to/VulkanSDK with your actual SDK path
   c3c run cube -z -rpath -z /Users/yourusername/VulkanSDK/macOS/lib
   ```


**Controls**:
- **Mouse**: Click and drag to rotate the camera
- **Scroll**: Zoom in/out

## Using the Library in Your Project

### Option 1: Using the Pre-built Library

1. Build the library file:

   Download the prebuilt library from [here](https://github.com/tonis2/Vulkan.c3/releases/download/latest/vulkan.c3l)

   Or build manually.

   ```bash
   c3c build zip --trust=full
   ```
   This creates `vulkan.c3l` in the project root.

2. Copy `vulkan.c3l` to your project's library directory (e.g., `./libs/`)

3. Update your `project.json`:
   ```json
   {
     "dependency-search-paths": ["./libs"],
     "dependencies": ["vulkan"]
   }
   ```

4. Use in your code:
   ```c3
   import vk;
   
   fn void main() {
       // Create Vulkan instance
       ApplicationInfo info = {
         .pApplicationName = "TEST",
         .pEngineName = "Super engine",
         .applicationVersion = vk::@makeApiVersion(0,1,0,0),
         .engineVersion = vk::@makeApiVersion(0,1,0,0),
         .apiVersion = vk::@makeApiVersion(0,1,3,0)
       };
   
       InstanceCreateInfo instanceInfo = vk::instanceCreateInfo()
       .setApplicationInfo(&info)
       .setFlags(env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0)
       .setEnabledExtensionNames(extensions.array_view());
      }
   }
   ```

## Building the Bindings

If you want to regenerate the Vulkan bindings from the official XML specification:

1. **Run the build script**:
   ```bash
   sh build.sh
   ```

## License

This project is licensed under the terms found in the [LICENSE](LICENSE) file.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## Resources
- [Window library](https://github.com/tonis2/Window.c3)
- [Example game code](https://github.com/tonis2/game.c3)
- [C3 Language Documentation](https://c3-lang.org/)
- [Vulkan Tutorial](https://vulkan-tutorial.com/)
- [Vulkan Specification](https://www.khronos.org/registry/vulkan/)
- [LunarG Vulkan SDK](https://vulkan.lunarg.com/)
