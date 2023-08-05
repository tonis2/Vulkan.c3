import std::io;
import vk;
import glfw;
import context;

fn int main()
{
    VkContext! vulkan = context::init();

    if (catch err = vulkan) {
        io::printfn("Failed to create vk context");
        return 1;
    }

    defer vulkan.free();

    return 0;
}