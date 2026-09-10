# Vulkan.c3

Vulkan bindings for [C3](https://c3-lang.org/), generated from the official
Vulkan XML specification. The library covers Vulkan 1.0–1.4 and compatible
extensions on Windows, Linux, and macOS.

It also adds a few C3-friendly conveniences:

- Vulkan errors are returned as C3 faults.
- Generated builders make Vulkan structs less tedious to set up.
- Vulkan is loaded at runtime, so your project does not link against the SDK.
- The arm64 macOS package includes its own Vulkan loader and driver.

## Install

**For a C3 project, download `vulkan.c3l` from the
[latest release](https://github.com/tonis2/Vulkan.c3/releases/tag/latest). This
is the recommended way to use the library.**

Put the file in your project—for example, at `libs/vulkan.c3l`—and add it to
`project.json`:

```json
{
  "dependency-search-paths": ["./libs"],
  "dependencies": ["vulkan"]
}
```

That is the whole installation. Do not add Vulkan to `linked-libraries`; the
library opens the loader at runtime. The Vulkan SDK is optional.

## Example usage

`createDefaultInstance` initializes the loader and fills in the common instance
defaults. Add `VK_KHR_surface` and the platform extensions when the instance
will be used with a window:

```c3
import vk;

fn void? main()
{
    vk::Instance instance = vk::createDefaultInstance({
        .app_name = "My App",
        .extensions = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" },
    })!;
    defer instance.free();

    // Create a surface, choose a device, and start rendering.
}
```

Create-info builders can be chained and built directly:

```c3
vk::Pipeline pipeline = vk::graphicsPipelineCreateInfo()
    .setStages(shader_stages)
    .setLayout(pipeline_layout)
    .setRenderPass(render_pass)
    .build(device)!;
```

If you create the instance by hand, call `vk::init()` before any other Vulkan
function. Calling a command before initialization will crash because its
function pointer has not been loaded yet.

## Try the examples

The cube examples use the window and image libraries included as git
submodules. Clone the repository with them:

```bash
git clone --recurse-submodules https://github.com/tonis2/Vulkan.c3.git
cd Vulkan.c3
```

If you already cloned the repository, run `git submodule update --init` once.
Then start an example:

```bash
c3c run cube
c3c run textured_cube
```

Use `c3c run cube-win` for the Windows target.

## Platform notes

- **Linux and Windows:** the Vulkan loader normally comes with the GPU driver,
  so no additional setup is needed.
- **macOS arm64:** `vulkan.c3l` includes the Khronos loader and the KosmicKrisp
  Vulkan-on-Metal driver. No separate Vulkan installation is needed.
- **Intel macOS:** install a loader and driver through the
  [LunarG Vulkan SDK](https://vulkan.lunarg.com/sdk/home#mac), or pass a custom
  loader path to `vk::init()`.

The Vulkan SDK is only needed if you want tools such as validation layers,
`vulkaninfo`, or `glslc`.

On macOS, `createDefaultInstance` uses the bundled driver automatically. To use
an installed driver instead:

```c3
vk::Instance instance = vk::createDefaultInstance({
    .app_name = "My App",
    .extensions = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" },
    .skip_bundled_driver = true,
})!;
```

## How command loading works

Vulkan.c3 does not link against Vulkan. It resolves command pointers in stages,
similar to [volk](https://github.com/zeux/volk):

1. `vk::init()` opens the platform loader and loads global commands.
2. Creating an instance loads the remaining core and extension commands.
3. `vk::loadDeviceCommands(device)` can optionally reload device commands
   through `vkGetDeviceProcAddr` for direct device dispatch.

You can override the loader search when needed:

```c3
vk::init({ "/path/to/libvulkan.so" })!;
```

## Build from source

Most users should use the prebuilt `vulkan.c3l` from the latest release. To
package the current checkout yourself:

```bash
c3c build zip --trust=full
```

This creates `vulkan.c3l` in the repository root. The build fetches the pinned
macOS loader and driver assets when they are missing. You can also fetch them
directly with `./fetch-dylibs.sh`.

To download the latest `vk.xml`, regenerate the bindings, and package the
library:

```bash
sh build.sh
```

The generator reports any skipped or dropped definitions. Use
`c3c run build -- --strict` when you want those warnings to fail the run.

## Resources

- [Window.c3](https://github.com/tonis2/Window.c3) — windowing library used by
  the examples
- [game.c3](https://github.com/tonis2/game.c3) — a larger project built with
  these bindings
- [C3 documentation](https://c3-lang.org/)
- [Vulkan Tutorial](https://vulkan-tutorial.com/)
- [Vulkan specification](https://www.khronos.org/registry/vulkan/)

## License

See [LICENSE](LICENSE).
