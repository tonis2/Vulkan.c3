import std::io;
import vk;
import glfw;
import context;

const WIDTH = 800;
const HEIGHT = 600;

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

    VkContext! vulkan = context::init(window);

    if (catch err = vulkan) {
        io::printfn("Failed to create vk context");
        return 1;
    }

    defer vulkan.free();

    return 0;
}