# Vulkan.c3

Vulkan bindings for [C3](https://c3-lang.org/), auto-generated from the official Vulkan XML specification. Covers Vulkan 1.0 through 1.4 with all platform-compatible extensions included.

- Idiomatic C3 error handling — Vulkan error codes map to C3 faults
- Builder pattern — auto-generated `.set*()` and `.build()` methods for Vulkan structs
- Cross-platform — Windows, Linux (X11/Wayland), and macOS
- No link-time Vulkan dependency — the loader is opened at runtime (volk-style), so the Vulkan SDK is optional on every platform, at build time and at run time
- Ships its own loader and driver on macOS (arm64), so a Mac needs nothing installed to run

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
libs/                # Example dependencies, as git submodules
  window.c3l/        # https://github.com/tonis2/Window.c3
  image.c3l/         # https://github.com/tonis2/image.c3
examples/
  cube/              # 3D rotating cube with camera controls
  textured_cube/     # The same cube, with a texture and descriptor sets
```

## How commands are loaded

Nothing links against Vulkan. Every command is a function pointer, resolved in
three stages (the same model as [volk](https://github.com/zeux/volk)):

1. `vk::init()` opens the loader shared library (`vulkan-1.dll`, `libvulkan.so.1`,
   `libvulkan.1.dylib`), pulls `vkGetInstanceProcAddr` out of it, and binds the
   global-level commands — enough to query extensions and layers and to call
   `vkCreateInstance`. Pass your own candidate paths to `init` to override the
   search: `vk::init({ "/path/to/libvulkan.so" })!`.
2. Creating an instance binds every remaining command, core and extension alike,
   through `vkGetInstanceProcAddr`.
3. `vk::loadDeviceCommands(device)` is optional: it rebinds device-level commands
   through `vkGetDeviceProcAddr`, so calls dispatch straight into the driver
   instead of through the loader trampoline.

`init` must run before anything else in the library — a command called before it
is a crash, not a link error.

## Quick start

### Prerequisites

1. [C3 compiler](https://c3-lang.org/) (latest version)
2. Nothing else. The Vulkan SDK is optional on every platform — it is never
   needed to build, and at run time the loader either ships with the GPU driver
   (Linux, Windows) or with this library (macOS).

### Running the cube example

The examples build against the window and image libraries in `libs/`, which are
git submodules — clone with them, or pull them in afterwards:

```bash
git clone --recurse-submodules https://github.com/tonis2/Vulkan.c3.git
# already cloned?
git submodule update --init
```

Nothing in `vk/` depends on them; they are only needed to build the examples.

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

The Vulkan SDK is optional everywhere. Install it only when you want validation
layers and tooling (`vulkaninfo`, `glslc`, RenderDoc integration) — never to
build or run.

**Linux** — the loader and driver ship with the GPU stack, so nothing is needed. For validation layers and tooling:
```bash
# Ubuntu/Debian
sudo apt install libvulkan1 vulkan-tools vulkan-validationlayers spirv-tools

# Fedora
sudo dnf install vulkan-loader vulkan-tools vulkan-validation-layers spirv-tools

# Arch
sudo pacman -S vulkan-icd-loader vulkan-tools vulkan-validation-layers spirv-tools
```

**Windows** — the loader (`vulkan-1.dll`) ships with the GPU driver, so nothing is needed. The [Vulkan SDK](https://vulkan.lunarg.com/sdk/home) is only for validation layers and tooling.

**macOS (arm64)** — nothing is needed either. macOS has no system Vulkan, so the library carries its own in `macos-aarch64/` and both are bundled into `vulkan.c3l`:

- `libvulkan.1.dylib` — the Khronos loader, opened by `vk::init()`
- `libvulkan_kosmickrisp.dylib` — KosmicKrisp, the Mesa Vulkan-on-Metal driver, handed to the loader through `VK_LUNARG_direct_driver_loading`

`vk::createDefaultInstance()` wires the bundled driver up on its own. If you would
rather use an installed driver (a system MoltenVK from the LunarG SDK, say), set
`skip_bundled_driver` and the loader does its normal ICD discovery:

```c3
vk::Instance instance = vk::createDefaultInstance({
    .app_name = "My App",
    .extensions = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" },
    .skip_bundled_driver = true,
})!;
```

Building the instance by hand instead? `vk::findBundledDriver()` returns the
shipped driver's entry point, and `vk::supportsDirectDriverLoading()` reports
whether the loader on the machine understands the extension — see `vk/driver.c3`.

Intel Macs are not covered by the bundled pair; there `vk::init` falls back to a
loader installed by the [Vulkan SDK](https://vulkan.lunarg.com/sdk/home#mac), or
to paths you pass it yourself.

## Using the library in your project

### Option 1: Download the pre-built library

Download `vulkan.c3l` from [releases](https://github.com/tonis2/Vulkan.c3/releases/download/latest/vulkan.c3l), place it in your project (e.g. `./libs/`), and add it to your `project.json`:

```json
{
  "dependency-search-paths": ["./libs"],
  "dependencies": ["vulkan"]
}
```

No `linked-libraries` entry on any target — the loader is opened at runtime by
`vk::init()`. On macOS the `.c3l` also carries the loader and driver themselves,
so unzipping it is the whole install.

### Option 2: Build from source

```bash
c3c build zip --trust=full
```

This creates `vulkan.c3l` in the project root (bindings plus the macOS
loader/driver pair).

### Example usage

`vk::createDefaultInstance` handles the whole bootstrap — `init`, the platform
surface extension, and the bundled macOS driver:

```c3
import vk;

fn void? main() {
    vk::Instance instance = vk::createDefaultInstance({
        .app_name = "My App",
        .extensions = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" },
    })!;
}
```

Or drive it yourself, calling `vk::init()` first:

```c3
import vk;

fn void? main() {
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
