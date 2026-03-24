# Vulkan.c3

Vulkan bindings for [C3](https://c3-lang.org/), auto-generated from the official Vulkan XML specification. Covers Vulkan 1.0 through 1.4 with all platform-compatible extensions included.

- Idiomatic C3 error handling — Vulkan error codes map to C3 faults
- Builder pattern — auto-generated `.set*()` and `.build()` methods for Vulkan structs
- Cross-platform — Windows, Linux (X11/Wayland), and macOS

## Project structure

```
vk/                  # Generated + hand-written bindings (this is the library)
  vk.c3              # Types, enums, structs, unions
  commands.c3        # Function declarations and extension loading
  builders.c3        # Auto-generated builder/setter methods
  extra.c3           # Hand-written type aliases (platform types, function pointers)
  helpers.c3         # Convenience wrappers (swapchain, device queries, etc.)
  buffer.c3          # Memory allocator and buffer helpers
parser/              # Bindings generator (reads vk.xml, writes vk/*.c3)
  build.c3           # Main generator logic
  types.c3           # XML parsing types
examples/
  cube/              # 3D rotating cube with camera controls
```

## Quick start

### Prerequisites

1. [C3 compiler](https://c3-lang.org/) (latest version)
2. Vulkan drivers installed for your GPU

### Running the cube example

**Linux:**
```bash
c3c run cube
```

**Windows:**
```bash
c3c run cube-win
```

**macOS** (needs Vulkan SDK rpath):
```bash
c3c run cube -z -rpath -z /path/to/VulkanSDK/macOS/lib
```

### Platform setup

**Linux** — install Vulkan packages for your distro:
```bash
# Ubuntu/Debian
sudo apt install vulkan-tools vulkan-validationlayers-dev spirv-tools

# Fedora
sudo dnf install vulkan-tools vulkan-validation-layers-devel spirv-tools
```

**Windows** — download and install the [Vulkan SDK](https://vulkan.lunarg.com/sdk/home). Make sure `VULKAN_SDK` is set. The `cube-win` target includes Windows SDK configuration for cross-compilation from Linux.

**macOS** — download the [Vulkan SDK for macOS](https://vulkan.lunarg.com/sdk/home#mac) and pass the library path when building (see above).

## Using the library in your project

### Option 1: Download the pre-built library

Download `vulkan.c3l` from [releases](https://github.com/tonis2/Vulkan.c3/releases/download/latest/vulkan.c3l), place it in your project (e.g. `./libs/`), and add it to your `project.json`:

```json
{
  "dependency-search-paths": ["./libs"],
  "dependencies": ["vulkan"],
  "linked-libraries": ["vulkan"]
}
```

### Option 2: Build from source

```bash
c3c build zip --trust=full
```

This creates `vulkan.c3l` in the project root.

### Example usage

```c3
import vk;

fn void! main() {
    ApplicationInfo info = {
        .pApplicationName = "My App",
        .pEngineName = "My Engine",
        .applicationVersion = vk::@makeApiVersion(0, 1, 0, 0),
        .engineVersion = vk::@makeApiVersion(0, 1, 0, 0),
        .apiVersion = vk::@makeApiVersion(0, 1, 3, 0)
    };

    InstanceCreateInfo instanceInfo = vk::instanceCreateInfo()
        .setApplicationInfo(&info)
        .setEnabledExtensionNames(extensions.array_view());

    vk::Instance instance;
    vk::createInstance(&instanceInfo, null, &instance)!;
}
```

The builder pattern lets you chain `.set*()` calls, then call `.build()` on create-info structs:

```c3
vk::Pipeline pipeline = vk::graphicsPipelineCreateInfo()
    .setStages(shader_stages)
    .setLayout(pipeline_layout)
    .setRenderPass(render_pass)
    .build(device)!;
```

## Regenerating bindings

To regenerate the bindings from the latest Vulkan XML specification:

```bash
sh build.sh
```

This downloads `vk.xml` from the Khronos repository and runs the parser. All extensions compatible with supported platforms (Win32, X11, XCB, Wayland, macOS/Metal, iOS) are included. Extensions referencing undefined types are automatically skipped.

## Resources

- [Window library (c3w)](https://github.com/tonis2/Window.c3) — windowing dependency used by the examples
- [Example game](https://github.com/tonis2/game.c3) — a larger project using these bindings
- [C3 documentation](https://c3-lang.org/)
- [Vulkan Tutorial](https://vulkan-tutorial.com/)
- [Vulkan Specification](https://www.khronos.org/registry/vulkan/)

## License

See [LICENSE](LICENSE).
