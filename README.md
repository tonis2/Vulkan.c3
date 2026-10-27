# Vulkan.c3

Vulkan bindings for [C3](https://c3-lang.org/), generated from the official Vulkan
XML specification. Covers Vulkan **1.0 through 1.4**, plus every extension that
works on the supported platforms.

- **C3-style errors**: Vulkan error codes become C3 faults, so you can use `!`, `!!` and `catch`.
- **Builders**: every struct gets generated `.set*()` methods, and create-info structs get a `.build()`.
- **No link-time Vulkan dependency**: the loader is opened at runtime, the same way [volk](https://github.com/zeux/volk) does it. You never need the Vulkan SDK to build.
- **Works on macOS out of the box**: the library ships its own loader and driver for Apple Silicon.
- **GPU memory allocator**: a small page-based allocator for buffers and images, with sub-allocation on top. See [allocation.md](allocation.md).
- **Cross-platform**: Windows, Linux (X11 and Wayland) and macOS.

## Contents

- [Quick start](#quick-start)
- [Adding it to your project](#adding-it-to-your-project)
- [Basic usage](#basic-usage)
- [How commands are loaded](#how-commands-are-loaded)
- [Memory allocator](#memory-allocator) (full guide: [allocation.md](allocation.md))
- [Platform notes](#platform-notes)
- [Project structure](#project-structure)
- [Regenerating the bindings](#regenerating-the-bindings)
- [Resources](#resources)

---

## Quick start

You only need the [C3 compiler](https://c3-lang.org/), version 0.8.3 or newer. The
Vulkan SDK is optional on every platform.

```bash
git clone https://github.com/tonis2/Vulkan.c3
cd Vulkan.c3
./fetch-dylibs.sh    # macOS only, once per checkout: downloads the bundled loader and driver
c3c run cube
```

| Example | Linux / macOS | Windows | What it shows |
|---|---|---|---|
| Rotating cube | `c3c run cube` | `c3c run cube-win` | Instance, device, swapchain, render pass, pipeline, buffers, push constants |
| Textured cube | `c3c run textured_cube` | | Texture upload, image memory, depth buffer, descriptor sets |

Both examples use [c3w](https://github.com/tonis2/Window.c3) for windowing. It
and the image library are committed as zipped snapshots in `libs/`, so a plain
clone is enough. To move a snapshot to a newer version, zip it from a checkout
of that library:
`git -C path/to/Window.c3 archive --format=zip -o $PWD/libs/window.c3l HEAD`.

The shaders are written in Slang, and the compiled `.spv` files are checked in.
To rebuild them you need `slangc`: `c3c build shaders`.

---

## Adding it to your project

### Option 1: download the pre-built library

1. Download `vulkan.c3l` from the [latest release](https://github.com/tonis2/Vulkan.c3/releases/tag/latest).
2. Put it in your project, for example in `./libs/`.
3. Add it to `project.json`:

```json
{
  "dependency-search-paths": ["./libs"],
  "dependencies": ["vulkan"]
}
```

You don't need a `linked-libraries` entry, because `vk::init()` opens the loader
at runtime. On macOS the `.c3l` also contains the loader and driver, so this is
the whole install.

### Option 2: build it from source

```bash
c3c build zip --trust=full
```

This writes `vulkan.c3l` to the project root. It contains the bindings and the
macOS loader/driver pair, which it fetches first with `./fetch-dylibs.sh` if
they are missing.

---

## Basic usage

### Creating an instance

`vk::createDefaultInstance` handles the whole bootstrap: it calls `vk::init()`,
adds the platform surface extension, and sets up the bundled driver on macOS.

```c3
import vk;

fn void? main()
{
    vk::Instance instance = vk::createDefaultInstance({
        .app_name          = "My App",
        .extensions        = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" },
        .enable_validation = true,   // adds VK_EXT_debug_utils
    })!;
    defer instance.free();
}
```

You can also do it by hand. In that case, call `vk::init()` before anything else:

```c3
import vk;

fn void? main()
{
    vk::init()!;

    ZString[] extensions = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" };

    ApplicationInfo app_info = {
        .sType              = STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName   = "My App",
        .pEngineName        = "My Engine",
        .applicationVersion = vk::@makeApiVersion(0, 1, 0, 0),
        .engineVersion      = vk::@makeApiVersion(0, 1, 0, 0),
        .apiVersion         = vk::@makeApiVersion(0, 1, 3, 0),
    };

    vk::Instance instance = vk::instanceCreateInfo()
        .setApplicationInfo(&app_info)
        .setEnabledExtensionNames(extensions)
        .build()!;
    defer instance.free();
}
```

### Builders

Each Vulkan struct has a constructor function (`vk::bufferCreateInfo()`,
`vk::graphicsPipelineCreateInfo()`, and so on) that fills in `sType`. You chain
`.set*()` calls on it, and create-info structs end with `.build(...)`, which
creates the object and returns it as an optional:

```c3
vk::Pipeline pipeline = vk::graphicsPipelineCreateInfo()
    .setStages(shader_stages)
    .setLayout(pipeline_layout)
    .setRenderPass(render_pass)
    .build(device)!;
```

A setter that takes a slice sets both the pointer and the count, so
`.setBindings({ ... })` fills in `bindingCount` and `pBindings` together.

### Errors

Any Vulkan call that returns a `VkResult` returns a C3 optional, and a failure
code becomes a fault:

```c3
if (catch err = vk::queueSubmit(queue, 1, &submit_info, fence))
{
    io::printfn("submit failed: %s", err);
}
```

### Helpers

`vk/helpers.c3` has hand-written helpers for the boilerplate you end up writing
in every Vulkan program:

| Helper | Purpose |
|---|---|
| `vk::selectPhysicalDevice(instance, surface, extensions)` | Picks a GPU (preferring a discrete one) and finds its graphics, present and transfer queues |
| `vk::Swapchain.init(...)` | Creates the swapchain, its image views and (optionally) framebuffers |
| `vk::FrameSync` | Per-frame fences and semaphores, with `beginFrame` / `endFrame` |
| `device.@single_time_command(queue; cmd) { ... }` | Records, submits and waits for a one-off command buffer |
| `device.createCommandPool(...)`, `device.createCommandBuffers(...)` | Command pool and buffer setup |
| `vk::findDepthFormat(...)` | Picks a supported depth format |
| `vk::defaultRasterizationState()`, `vk::defaultColorBlendState(...)`, … | Sensible defaults for pipeline state |
| `.free(device)` on most handles | Destroys the object, so cleanup fits in `defer` |

---

## How commands are loaded

Nothing links against Vulkan. Every command is a function pointer, and they are
resolved in three stages (the same model as [volk](https://github.com/zeux/volk)):

1. **`vk::init()`** opens the loader library (`vulkan-1.dll`, `libvulkan.so.1` or
   `libvulkan.1.dylib`), gets `vkGetInstanceProcAddr` from it, and binds the
   global commands. That is enough to query extensions and layers and to call
   `vkCreateInstance`. To search somewhere else, pass your own paths:
   `vk::init({ "/path/to/libvulkan.so" })!`.
2. **Creating an instance** binds all remaining commands, core and extension,
   through `vkGetInstanceProcAddr`.
3. **`vk::loadDeviceCommands(device)`** is optional. It rebinds the device-level
   commands through `vkGetDeviceProcAddr`, so calls go straight to the driver
   instead of through the loader trampoline.

> [!IMPORTANT]
> `vk::init()` must run before anything else in the library. Calling a command
> before it crashes at runtime; you won't get a link error.

---

## Memory allocator

`vk/buffer.c3` has a small page-based GPU memory allocator. It reserves device
memory in large pages and places each buffer or image inside one, uploads
device-local data through a staging buffer for you, and frees buffers safely
while frames are still in flight.

```c3
vk::MemoryAllocator allocator = {
    .device  = device,
    .pdevice = physical_device,
    .queue   = graphics_queue,     // used for staging uploads
    .frames_in_flight = 2,         // the frame count you give FrameSync
};
allocator.init()!;
defer allocator.free();            // waits for the GPU, then releases everything

vk::Memory vertex_buffer = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_VERTEX_BUFFER_BIT,
    properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
    data:       vertices.ptr,
    data_size:  Vertex::size * vertices.len,
)!;

while (running)
{
    uint image = frame_sync.beginFrame(device, swapchain.handle)!;
    allocator.sync();              // once per frame, after the fence wait
    ...
    if (unload) vertex_buffer.free_later();  // freed once the GPU is done with it
}
```

**[Read the allocation guide](allocation.md)** for memory properties, uniform
buffers, images, buffer device addresses, freeing and statistics, and
sub-allocating with `BufferManager`.

---

## Platform notes

The Vulkan SDK is optional everywhere. Install it only if you want validation
layers and tools (`vulkaninfo`, `glslc`, RenderDoc integration); you never need
it to build or run.

<details>
<summary><b>Linux</b></summary>

The loader and driver come with the GPU drivers, so you don't need to install
anything. For validation layers and tools:

```bash
# Ubuntu/Debian
sudo apt install libvulkan1 vulkan-tools vulkan-validationlayers spirv-tools

# Fedora
sudo dnf install vulkan-loader vulkan-tools vulkan-validation-layers spirv-tools

# Arch
sudo pacman -S vulkan-icd-loader vulkan-tools vulkan-validation-layers spirv-tools
```

</details>

<details>
<summary><b>Windows</b></summary>

The loader (`vulkan-1.dll`) comes with the GPU driver, so you don't need to
install anything. The [Vulkan SDK](https://vulkan.lunarg.com/sdk/home) is only
for validation layers and tools.

</details>

<details>
<summary><b>macOS (Apple Silicon)</b></summary>

macOS has no system Vulkan, so the library brings its own. Both files are
bundled into `vulkan.c3l`. They are not in git: in a checkout,
`./fetch-dylibs.sh` downloads them into `macos-aarch64/` from the GitHub release
and checks them against `dylibs.sha256`.

- `libvulkan.1.dylib`: the Khronos loader, opened by `vk::init()`.
- `libvulkan_kosmickrisp.dylib`: KosmicKrisp, the Mesa Vulkan-on-Metal driver,
  passed to the loader through `VK_LUNARG_direct_driver_loading`.

`vk::createDefaultInstance()` sets up the bundled driver automatically. To use
an installed driver instead (for example MoltenVK from the LunarG SDK), set
`skip_bundled_driver`, and the loader will look for drivers the normal way:

```c3
vk::Instance instance = vk::createDefaultInstance({
    .app_name            = "My App",
    .extensions          = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" },
    .skip_bundled_driver = true,
})!;
```

If you create the instance by hand, `vk::findBundledDriver()` returns the
bundled driver's entry point, and `vk::supportsDirectDriverLoading()` tells you
whether the installed loader supports the extension. See `vk/driver.c3`.

The bundled pair doesn't cover **Intel Macs**. On those, `vk::init` falls back to
a loader installed by the [Vulkan SDK](https://vulkan.lunarg.com/sdk/home#mac),
or to paths you pass in.

</details>

---

## Project structure

```
vk/                  The library
  vk.c3              Types, enums, structs, unions            (generated)
  commands.c3        Command pointers, staged loading, wrappers (generated)
  builders_core.c3   .set*() / .build() for core structs      (generated)
  builders_ext.c3    .set*() / .build() for extension structs (generated)
  loader.c3          Runtime loader bootstrap (vk::init)
  driver.c3          VK_LUNARG_direct_driver_loading support
  extra.c3           Platform types, function pointer aliases
  helpers.c3         Device selection, swapchain, frame sync, pipeline defaults
  buffer.c3          Memory allocator, BufferManager, Region, LocalBuffer
allocation.md        Memory allocator guide
parser/              Bindings generator (reads vk.xml, writes vk/*.c3)
libs/                Zipped snapshots of c3w and image, used by the examples
test/                Allocator tests: c3c test tests --trust=full
macos-aarch64/       Loader + driver for macOS, downloaded by fetch-dylibs.sh (not in git)
fetch-dylibs.sh      Fetches and verifies the macOS dylibs (pinned in dylibs.sha256)
examples/
  cube/              Rotating 3D cube with camera controls
  textured_cube/     The same cube with a texture and descriptor sets
  context.c3         Reusable device/swapchain/allocator setup used by textured_cube
```

---

## Regenerating the bindings

```bash
sh build.sh
```

This downloads the latest `vk.xml` from Khronos, runs the generator, and
packages `vulkan.c3l`. It
includes every extension that works on the supported platforms (Win32, X11, XCB,
Wayland, macOS/Metal, iOS), and skips extensions that refer to undefined types.

The generator prints what it skipped or dropped, and why, to stderr. Use
`c3c run build -- --strict` to make any warning fail the run.

---

## Resources

- [c3w](https://github.com/tonis2/Window.c3): the windowing library used by the examples
- [game.c3](https://github.com/tonis2/game.c3): a larger project built with these bindings
- [C3 documentation](https://c3-lang.org/)
- [Vulkan Tutorial](https://vulkan-tutorial.com/)
- [Vulkan Specification](https://registry.khronos.org/vulkan/)

## License

See [LICENSE](LICENSE).
