import std::io;
import vk;
import glfw;
import context;
import buffer;
import std::math;

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

struct UniformBuffer {
    Matrix4f projection;
    Matrix4f view;
    Matrix4f model;
}

fn int main()
{
    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    UniformBuffer uniformData = {
      matrix4f_perspective(0.6, WIDTH / HEIGHT, 0.1, 100),
      vector::matrix4f_look_at({0.0, 0.0, -10.0}, {0.0, 0.0, 0.0}, {0.0, 1.0, 0.0}),
      MATRIX4F_IDENTITY
    };

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

    Buffer uniform_buffer = {
        .size = UniformBuffer.sizeof,
        .usage = vk::VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT,
    };

    if (catch err = vertex_buffer.init(&vertex_data, context)) {
        io::printfn("Failed to create vertex buffer");
        return 1;
    }

    if (catch err = index_buffer.init(&index_data, context)) {
        io::printfn("Failed to create index buffer");
        return 1;
    }

    if (catch err = uniform_buffer.init(&uniformData, context)) {
        io::printfn("Failed to create uniform buffer");
        return 1;
    }

    VkDescriptorSetLayout descriptorSetLayout;
    VkDescriptorSetLayoutCreateInfo descriptor_info = {
        .sType = vk::VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
        .bindingCount = 1,
        .pBindings = &&VkDescriptorSetLayoutBinding[1]{
            {
              .binding = 0,
              .descriptorType = vk::VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
              .descriptorCount = 1,
              .stageFlags = vk::VK_SHADER_STAGE_VERTEX_BIT
            }
        },
        .pNext = null,
        .flags = vk::VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR,
    };

    vk::createDescriptorSetLayout(context.device, &descriptor_info, null, &descriptorSetLayout);
    VkWriteDescriptorSet[1] descriptorSets = {
        {
            .sType = vk::VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
            .dstSet = (void*)0,
            .dstBinding = 0,
            .descriptorCount = 1,
            .descriptorType = vk::VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
            .pBufferInfo = &&VkDescriptorBufferInfo[1]{
                 {
                     .buffer = uniform_buffer.buffer,
                     .offset = 0,
                     .range = UniformBuffer.sizeof,
                 }
             }
        }
    };

    VkPhysicalDevicePushDescriptorPropertiesKHR pushDescriptorProperties = {
        .sType = vk::VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR,
        .pNext = null,
        .maxPushDescriptors = 1,
    };

    VkPhysicalDeviceProperties2 deviceProps2 = {
        .sType = vk::VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2,
        .pNext = &pushDescriptorProperties
    };

    vk::getPhysicalDeviceProperties2(context.physical_device, &deviceProps2);
/*    VkShaderModuleCreateInfo create_info = {
        .sType = vk::VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .codeSize = code.len,
        .pCode = code,
    };

    VkShaderModule shader_module;
    vk::createShaderModule(self.device, &create_info, null, &shader_module);*/

    defer {
        vk::destroyDescriptorSetLayout(context.device, descriptorSetLayout, null);
        uniform_buffer.free(context.device);
        index_buffer.free(context.device);
        vertex_buffer.free(context.device);
        context.free();
    };

    return 0;
}