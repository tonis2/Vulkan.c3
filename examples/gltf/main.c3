import std::io;
import vk;
import glfw;
import camera;
import std::math;
import gltf;
import std::collections::list;
import std::collections::object;

def BufferList = List(<BufferInfo>);
def MeshList = List(<Mesh>);

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex {
    Vec3f pos;
    Vec2f tex_pos;
    Vec3f normal;
}

struct Mesh {
    uint buffer;
    struct vertices
    {
        uint offset;
        uint size;
    }
    struct indices
    {
        uint offset;
        uint size;
    }
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

    MeshList meshes;
    defer meshes.free();

    // Build mesh list from gltf data, basically only offsets and buffer sizes
    foreach (mesh : gltf_data.meshes) {
        Mesh data;
        foreach (index, primitive: mesh.primitives) {
            Object* attributes = primitive.get("attributes")!!;
            uint! indices = primitive.get_int("indices");

            foreach (index2, key : attributes.map.key_tlist())
            {
               Accessor accessor = gltf_data.accessors[attributes.get_int(key)!!];
               gltf::BufferView buffer_view = gltf_data.bufferViews[accessor.bufferView];

               if (index == 0 && index2 == 0) {
                  data.vertices.offset = (usz)buffer_view.offset;
                  data.buffer = buffer_view.buffer;
               };
               data.vertices.size += (usz)buffer_view.byteLength;
            }

            if (try indices) {
                Accessor accessor = gltf_data.accessors[indices];
                gltf::BufferView buffer_view = gltf_data.bufferViews[accessor.bufferView];

                if (index == 0) data.indices.offset = (usz)buffer_view.offset;
                data.indices.size += (usz)buffer_view.byteLength;
            }
        }
        meshes.push(data);
    }

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

    foreach (index, mesh: meshes) {
        io::printfn("%d %d", mesh.vertices.size, mesh.indices.size);
    }

    uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        eventHandler.update();

        foreach (node : gltf_data.nodes) {
            if (node.hasMesh()) {
                UniformData uniformData = camera.matrix(node.recompose());

                Mesh mesh = meshes[node.mesh];

                // Get vertex and index buffer
            }
        }
    }
}