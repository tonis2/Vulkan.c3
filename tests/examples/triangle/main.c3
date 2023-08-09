import std::io;
import vk;
import glfw;
import context;
import buffer;

const WIDTH = 800;
const HEIGHT = 600;

float[] vertex_data = {
    -0.5, -0.5, 0.0, 1.0, 0.5, 1.0,
     0.5, -0.5, 0.0, 1.0, 0.5, 1.0,
     0.0,  0.5, 0.0, 1.0, 0.5, 1.0
};

float [] index_data = {
    0, 1, 3,
    1, 2, 3
};

fn int main()
{
    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    if (window == null)
    {
        io::printfn("Failed to init glfw window");
        glfw::terminate();
        return 1;
    }

    defer {
        glfw::destroyWindow(window);
        glfw::terminate();
    }

    VkContext! context = context::init(window);

    if (catch err = context) {
        io::printfn("Failed to create vk context");
        return 1;
    }

    Buffer vertex_buffer = {
        .size = (vertex_data.len * float.sizeof),
        .usage = vk::VK_BUFFER_USAGE_VERTEX_BUFFER_BIT,
    };

    Buffer index_buffer = {
        .size = (index_data.len * float.sizeof),
        .usage = vk::VK_BUFFER_USAGE_INDEX_BUFFER_BIT,
    };

    if (catch err = vertex_buffer.init(&vertex_data, context)) {
        io::printfn("Failed to create vertex buffer");
        return 1;
    }

    if (catch err = index_buffer.init(&index_data, context)) {
        io::printfn("Failed to create index buffer");
        return 1;
    }

/*    VkDescriptorSetLayoutBinding[] bindings = {
        {
            .binding = 0,
            .descriptorType = vk::VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
            .descriptorCount = 1,
            .stageFlags = vk::VK_SHADER_STAGE_VERTEX_BIT,
            .pImmutableSamplers = null,
        }
    };

    Descriptor! camera_buffer_descriptor = context.createDescriptor(
        {
            .sType = vk::VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
            .bindingCount = 1,
            .pBindings = &bindings,
            .pNext = null,
            .flags = 0,
        }
    );*/

/*    if (catch err = camera_buffer_descriptor) {
        io::printfn("Failed to create camera descriptor");
        return 1;
    }*/

    defer {
        index_buffer.free(context.device);
        vertex_buffer.free(context.device);
        context.free();
    };

    return 0;
}