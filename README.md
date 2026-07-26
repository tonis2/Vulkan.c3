# Vulkan.c3

Vulkan bindings for [C3](https://c3-lang.org/), auto-generated from the official Vulkan XML specification. Covers Vulkan 1.0 through 1.4 with all platform-compatible extensions included.

- Idiomatic C3 error handling — Vulkan error codes map to C3 faults
- Builder pattern — auto-generated `.set*()` and `.build()` methods for Vulkan structs
- Cross-platform — Windows, Linux (X11/Wayland), and macOS
- No link-time Vulkan dependency — the loader is found at runtime (volk-style), so no Vulkan SDK is needed to build

## Project structure

```
vk/                  # Generated + hand-written bindings (this is the library)
  vk.c3              # Types, enums, structs, unions
  commands.c3        # Command pointers, staged loading, and wrappers
  builders_core.c3   # Auto-generated builder/setter methods (core Vulkan structs)
  builders_ext.c3    # Auto-generated builder/setter methods (extension structs)
  loader.c3          # Runtime loader bootstrap (vk::init)
  driver.c3          # VK_LUNARG_direct_driver_loading support
  extra.c3           # Hand-written type aliases (platform types, function pointers)
  helpers.c3         # Convenience wrappers (swapchain, device queries, etc.)
  buffer.c3          # Memory allocator and buffer helpers
parser/              # Bindings generator (reads vk.xml, writes vk/*.c3)
  build.c3           # Main generator logic
  types.c3           # XML parsing types
  diag.c3            # Generator diagnostics (skipped/dropped report)
macos-aarch64/       # Bundled loader + driver dylibs for macOS (see below)
examples/
  cube/              # 3D rotating cube with camera controls
```

## How commands are loaded

Nothing links against Vulkan. Every command is a function pointer, resolved in
three stages (the same model as [volk](https://github.com/zeux/volk)):

## Quick start

### Prerequisites

1. [C3 compiler](https://c3-lang.org/) (latest version)
2. A Vulkan loader and driver installed on the machine that *runs* the program
   (nothing is needed to build)

### Running the cube example

**Linux:**
```bash
c3c run cube
```

**Windows:**
```bash
c3c run cube-win
```

**macOS:**
```bash
c3c run cube
```

### Platform setup (runtime only)

**Linux** — the loader and driver ship with the GPU stack; for tooling and validation layers:
```bash
# Ubuntu/Debian
sudo apt install libvulkan1 vulkan-tools vulkan-validationlayers spirv-tools

# Fedora
sudo dnf install vulkan-loader vulkan-tools vulkan-validation-layers spirv-tools

# Arch
sudo pacman -S vulkan-icd-loader vulkan-tools vulkan-validation-layers spirv-tools
```

**Windows** — the loader (`vulkan-1.dll`) ships with the GPU driver. The [Vulkan SDK](https://vulkan.lunarg.com/sdk/home) is only needed for validation layers and tooling.

**macOS** — install the [Vulkan SDK for macOS](https://vulkan.lunarg.com/sdk/home#mac) (MoltenVK), or ship a loader + driver with your app and pass their paths to `vk::init`.

## Using the library in your project

### Option 1: Download the pre-built library

Download `vulkan.c3l` from [releases](https://github.com/tonis2/Vulkan.c3/releases/download/latest/vulkan.c3l), place it in your project (e.g. `./libs/`), and add it to your `project.json`:

```json
{
  "dependency-search-paths": ["./libs"],
  "dependencies": ["vulkan"]
}
```

No `linked-libraries` entry — the loader is found at runtime by `vk::init()`.

### Option 2: Build from source

```bash
c3c build zip --trust=full
```

This creates `vulkan.c3l` in the project root.

### Example usage

```c3
import vk;

fn void! main() {
    vk::init()!;

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

The generator prints a summary of everything it skipped or dropped (and why) to stderr. Run it with `c3c run build -- --strict` to make any warning fail the run.

## Resources

- [Window library (c3w)](https://github.com/tonis2/Window.c3) — windowing dependency used by the examples
- [Example game](https://github.com/tonis2/game.c3) — a larger project using these bindings
- [C3 documentation](https://c3-lang.org/)
- [Vulkan Tutorial](https://vulkan-tutorial.com/)
- [Vulkan Specification](https://www.khronos.org/registry/vulkan/)

## License

See [LICENSE](LICENSE).
