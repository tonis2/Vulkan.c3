import std::io;
import vk;
import glfw;
import camera;
import std::math;
import gltf;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex {
    Vec3f pos;
    Vec4f color;
    Vec2f tex_pos;
}

fn void! main()
{
    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    Gltf gltf_data = gltf::loadFile("examples/gltf/assets/cubes.gltf")!;
    defer gltf_data.free();

    if (window == null)
    {
        io::printfn("Failed to init glfw window");
        glfw::terminate();
        return;
    }

    defer {
        glfw::destroyWindow(window);
        glfw::terminate();
    }

    EventHandler eventHandler = { .window = window };
    eventHandler.init();

    Camera camera = camera::new({0.0, 0.0, 0.0}, -10, 800/600);

    AppInfo appInfo = {
        .pApplicationName = "Hello Cube",
        .applicationVersion = vk::@makeApiVersion(0,1,0,0),
        .pEngineName = "Super engine",
        .engineVersion = vk::@makeApiVersion(0,1,0,0),
        .apiVersion = VK_API_VERSION_1_3,
        .enable_debug = ENABLE_VALIDATION_LAYERS,
        .dynamic_rendering = true,
        .instance_flags = env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0
    };

    defer appInfo.free();

    //"VK_LAYER_LUNARG_api_dump"
    appInfo.validations.add_array({"VK_LAYER_KHRONOS_validation"});
    appInfo.device_extensions.add_array({"VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_dynamic_rendering"});

    // SETUP extensions
    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    for (int i = 0; i < glfwExtensions_count; ++i) appInfo.extensions.push(glfwExtensions[i]);

    if (ENABLE_VALIDATION_LAYERS) {
       appInfo.extensions.add_array({"VK_EXT_debug_utils"});
    }

    if (env::os_is_darwin()) {
        appInfo.extensions.push("VK_KHR_portability_enumeration");
        appInfo.device_extensions.push("VK_KHR_portability_subset");
    }

    DeviceInfo device = vk::requestDevice(&appInfo, window)!;

    defer device.free();

    GltfMesh mesh = gltf_data.meshes[0];

    io::printfn("%d %d", mesh.buffer_offset, mesh.buffer_size);

    SurfaceFormatKHR format = device.surface_formats.contains({.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR})
        ? SurfaceFormatKHR {.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR}
        : device.surface_formats[0];

    PresentModeKHR present_mode = device.present_modes.contains(vk::PRESENT_MODE_MAILBOX_KHR) ? vk::PRESENT_MODE_MAILBOX_KHR : device.present_modes[0];

    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfoKHRBuilder()
    .setMinImageCount(device.capabilities.minImageCount + 1)
    .setImageUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
    .setImageSharingMode(vk::SHARING_MODE_EXCLUSIVE)
    .setCompositeAlpha(vk::COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
    .setPresentMode(present_mode)
    .setPreTransform(device.capabilities.currentTransform)
    .setImageColorSpace(format.colorSpace)
    .setImageFormat(format.format)
    .setSurface(device.surface)
    .setImageArrayLayers(1)
    .setImageExtent(device.getExtent());

    if (env::os_is_darwin()) {
        swapchain_info.imageExtent.width /= 2;
        swapchain_info.imageExtent.height /= 2;
    }

    SwapChain swapchain = device.createSwapchain(&swapchain_info)!;
    defer swapchain.free(device.device);

    uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        eventHandler.update();

        foreach (node : gltf_data.nodes) {
            if (node.hasMesh()) {
                GltfMesh mesh = data.meshes[node.mesh];
                UniformData uniformData = camera.matrix(node.recompose());
                // Get vertex and index buffer
            }
        }
    }
}