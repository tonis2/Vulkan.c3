import std::io;
import vk;
import glfw;
import camera;
import std::math;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_2 = vk::@makeApiVersion(0,1,2,0);
const ENABLE_VALIDATION_LAYERS = true;

struct Vertex {
    Vec3f pos;
    Vec4f color;
}

Vertex[] vertex_data = {
    Vertex {{-1.0, -1.0, 1.0}, {1.0, 0, 0, 1.0}},
    Vertex {{1.0, -1.0, 1.0}, {1.0, 0, 0, 1.0}},
    Vertex {{1.0, 1.0, 1.0}, {1.0, 0, 0, 1.0}},
    Vertex {{-1.0, 1.0, 1.0}, {1.0, 0, 0, 1.0}},

    Vertex {{-1.0, -1.0, -1.0}, {255, 255, 255, 1.0}},
    Vertex {{-1.0, 1.0, -1.0}, {255, 255, 255, 1.0}},
    Vertex {{1.0, 1.0, -1.0}, {255, 255, 255, 1.0}},
    Vertex {{1.0, -1.0, -1.0}, {255, 255, 255, 1.0}},

    Vertex {{-1.0, 1.0, -1.0}, {0.7, 0.8, 150, 1.0}},
    Vertex {{-1.0, 1.0, 1.0}, {0.7, 0.8, 150, 1.0}},
    Vertex {{1.0, 1.0, 1.0}, {0.7, 0.8, 150, 1.0}},
    Vertex {{1.0, 1.0, -1.0}, {0.7, 0.8, 150, 1.0}},

    Vertex {{-1.0, -1.0, -1.0}, {0.0, 128, 255, 1.0}},
    Vertex {{1.0, -1.0, -1.0}, {0.0, 128, 255, 1.0}},
    Vertex {{1.0, -1.0, 1.0}, {0.0, 128, 255, 1.0}},
    Vertex {{-1.0, -1.0, 1.0}, {0.0, 128, 255, 1.0}},

    Vertex {{1.0, -1.0, -1.0}, {0.0, 100.0, 0.0, 1.0}},
    Vertex {{1.0, 1.0, -1.0}, {0.0, 100.0, 0.0, 1.0}},
    Vertex {{1.0, 1.0, 1.0}, {0.0, 100.0, 0.0, 1.0}},
    Vertex {{1.0, -1.0, 1.0}, {0.0, 100.0, 0.0, 1.0}},

    Vertex {{-1.0, -1.0, -1.0}, {0.2, 0.2, 0.2, 1.0}},
    Vertex {{-1.0, -1.0, 1.0}, {0.2, 0.2, 0.2, 1.0}},
    Vertex {{-1.0, 1.0, 1.0}, {0.2, 0.2, 0.2, 1.0}},
    Vertex {{-1.0, 1.0, -1.0}, {0.2, 0.2, 0.2, 1.0}},
};

uint[] index_data = {
    0,  1,  2,      0,  2,  3,    // front
    4,  5,  6,      4,  6,  7,    // back
    8,  9,  10,     8,  10, 11,   // top
    12, 13, 14,     12, 14, 15,   // bottom
    16, 17, 18,     16, 18, 19,   // right
    20, 21, 22,     20, 22, 23    // left
};

fn void! main()
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
        return;
    }

    defer {
        glfw::destroyWindow(window);
        glfw::terminate();
    }

    EventHandler eventHandler = glfw::createHandler({ .window = window });
    Camera camera = camera::new({0.0, 0.0, 0.0}, -10, 800/600);

    AppInfo appInfo = {
        .pApplicationName = "Hello Cube",
        .applicationVersion = VK_API_VERSION_1_2,
        .pEngineName = "Super engine",
        .engineVersion = VK_API_VERSION_1_2,
        .apiVersion = VK_API_VERSION_1_2,
        .enable_debug = ENABLE_VALIDATION_LAYERS,
        .dynamic_rendering = true,
        .instance_flags = env::os_is_darwin() ? vk::VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0
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

    Device device = vk::requestDevice(&appInfo, window)!;
    SwapChain swapchain = device.createSwapchain()!;

    Buffer vertex_buffer = {
        .size = Vertex.sizeof * vertex_data.len,
        .usage = vk::VK_BUFFER_USAGE_VERTEX_BUFFER_BIT,
    };

    Buffer index_buffer = {
        .size = (index_data.len * float.sizeof),
        .usage = vk::VK_BUFFER_USAGE_INDEX_BUFFER_BIT,
    };

    Buffer uniform_buffer = {
        .size = UniformData.sizeof,
        .usage = vk::VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT,
    };

    vertex_buffer.device_only(&vertex_data[0], device)!;
    index_buffer.device_only(&index_data[0], device)!;
    uniform_buffer.writable(&&camera.matrix(), device)!;

    VkCommandPool command_pool = device.createCommandPool()!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain.image_count)!;

    VkDescriptorSetLayoutCreateInfo descriptorLayoutInfo = vk::descriptorSetLayoutDefault
    .set_flags(vk::VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
    .bindings(VkDescriptorSetLayoutBinding[]{
      {
          .binding = 0,
          .descriptorType = vk::VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
          .descriptorCount = 1,
          .stageFlags = vk::VK_SHADER_STAGE_VERTEX_BIT
      }
    });

    VkDescriptorSetLayout descriptor_set_layout = device.createDescriptorSetLayout(descriptorLayoutInfo)!;
    VkWriteDescriptorSet[] descriptorSets = {
            vk::descriptorWriteSetBuffer(
                vk::VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER,
                VkDescriptorBufferInfo[]{
                   {
                        .buffer = uniform_buffer.buffer,
                        .offset = 0,
                        .range = UniformData.sizeof,
                    },
                }
            ),
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
    vk::getPhysicalDeviceProperties2(device.physical_device, &deviceProps2);

    // Pipeline info
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    VkShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    VkShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;

    VkPipelineLayout pipeline_layout = device.createPipelineLayout({
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .setLayoutCount = 1,
        .pSetLayouts = &descriptor_set_layout,
        .pushConstantRangeCount = 0,
        .pPushConstantRanges = null,
    })!;

    VkPipelineColorBlendStateCreateInfo color_blending = VkPipelineColorBlendStateCreateInfo {
        .pNext = null,
        .flags = 0,
        .logicOpEnable = 0,
        .logicOp = vk::VK_LOGIC_OP_COPY,
        .blendConstants = float[4]{ 0.0, 0.0, 0.0, 0.0 },
    }.attachments({
        {
            .colorWriteMask =
                vk::VK_COLOR_COMPONENT_R_BIT |
                vk::VK_COLOR_COMPONENT_G_BIT |
                vk::VK_COLOR_COMPONENT_B_BIT |
                vk::VK_COLOR_COMPONENT_A_BIT,
            .blendEnable = vk::VK_TRUE,
            .srcColorBlendFactor = vk::VK_BLEND_FACTOR_SRC_ALPHA,
            .dstColorBlendFactor = vk::VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
            .colorBlendOp = vk::VK_BLEND_OP_ADD,
            .srcAlphaBlendFactor = vk::VK_BLEND_FACTOR_ONE,
            .dstAlphaBlendFactor = vk::VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
            .alphaBlendOp = vk::VK_BLEND_OP_ADD,
        }
    });

    VkGraphicsPipelineCreateInfo pipeline_info = vk::pipelineDefaultInfo
    .stages(VkPipelineShaderStageCreateInfo[] {
        vertex_module.pipelineInfo(vk::VK_SHADER_STAGE_VERTEX_BIT),
        frag_module.pipelineInfo(vk::VK_SHADER_STAGE_FRAGMENT_BIT)
    })
    .setLayout(pipeline_layout)
    .vertexInput(
        VkVertexInputBindingDescription[] {
            {
             .binding = 0,
             .stride = Vertex.sizeof,
             .inputRate = vk::VK_VERTEX_INPUT_RATE_VERTEX,
            }
        },
        VkVertexInputAttributeDescription[] {
            VkVertexInputAttributeDescription{
               .binding = 0,
               .location = 0,
               .format = vk::VK_FORMAT_R32G32B32_SFLOAT,
               .offset = 0
            },
            VkVertexInputAttributeDescription{
               .binding = 0,
               .location = 1,
               .format = vk::VK_FORMAT_R32G32B32_SFLOAT,
               .offset = 4 * float.sizeof
            }
        }
    )
    .dynamicState(VkDynamicState[]{
        vk::VK_DYNAMIC_STATE_VIEWPORT,
        vk::VK_DYNAMIC_STATE_LINE_WIDTH,
    })
    .rasterizationState(
        &&VkPipelineRasterizationStateCreateInfo{
          .pNext = null,
          .flags = 0,
          .depthClampEnable = vk::VK_FALSE,
          .rasterizerDiscardEnable = 0,
          .polygonMode = vk::VK_POLYGON_MODE_FILL,
          .lineWidth = 1.0,
          .cullMode = vk::VK_CULL_MODE_FRONT_BIT,
          .frontFace = vk::VK_FRONT_FACE_COUNTER_CLOCKWISE,
          .depthBiasEnable = vk::VK_FALSE,
          .depthBiasConstantFactor = 0.0,
          .depthBiasClamp = 0.0,
          .depthBiasSlopeFactor = 0.0,
        }
    )
    .assemblyState(&&VkPipelineInputAssemblyStateCreateInfo{
        .pNext = null,
        .flags = 0,
        .topology = vk::VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST,
        .primitiveRestartEnable = vk::VK_FALSE,
    })
    .viewPortState({ VkViewport { .x = 0.0, .y = 0.0, .width = swapchain.extent.width, .height = swapchain.extent.height, .minDepth = 0.0, .maxDepth = 1.0 }},
                   { VkRect2D {  .offset = { .x = 0, .y = 0 }, .extent = swapchain.extent } })
    .multiSampleState(&&VkPipelineMultisampleStateCreateInfo{
        .pNext = null,
        .flags = 0,
        .sampleShadingEnable = vk::VK_FALSE,
        .rasterizationSamples = vk::VK_SAMPLE_COUNT_1_BIT,
        .minSampleShading = 1.0,
        .pSampleMask = null,
        .alphaToCoverageEnable = vk::VK_FALSE,
        .alphaToOneEnable = vk::VK_FALSE}
    )
    .depthStensilState(&&VkPipelineDepthStencilStateCreateInfo{
        .depthTestEnable = vk::VK_FALSE,
        .depthWriteEnable = vk::VK_FALSE,
        .depthCompareOp = vk::VK_COMPARE_OP_LESS_OR_EQUAL,
        .back = {
            .compareOp = vk::VK_COMPARE_OP_ALWAYS
        }
    })
    .colorBlendState(&color_blending)
    .pipelineRendering(&&VkPipelineRenderingCreateInfo {
                           .colorAttachmentCount = 1,
                           .pColorAttachmentFormats = &&VkFormat[1]{swapchain.image_format}
                       });

    VkPipeline pipeline;
    vk::createGraphicsPipelines(device.device, null, 1, &pipeline_info, null, &pipeline)!;
/*
    uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        eventHandler.update();

        if (eventHandler.left_mouse_click) {
            camera.rotate_x(-(float)(eventHandler.mouse_x_delta * 0.5));
            camera.rotate_y(-(float)(eventHandler.mouse_y_delta * 0.5));
            mem::copy(uniform_buffer.mapped, &&camera.matrix(), uniform_buffer.size);
        }

         VkClearValue[] clear_color = {
                {
                    .color = VkClearColorValue{ .float32 = { 0.0, 0.0, 0.0, 1.0 } },
                }
            };

      SyncImage active_sync = context.swapchain.syncImages[frame];
        vk::waitForFences(context.device, 1, &active_sync.frame_fence, vk::VK_TRUE, uint.max)!;
        vk::resetFences(context.device, 1, &active_sync.frame_fence)!;

        uint next_image = {|
            uint index;
            vk::acquireNextImageKHR(context.device, context.swapchain.swapchain, uint.max, active_sync.image_acquired, null, &index)!!;
            return index;
        |};

        VkRenderingAttachmentInfoKHR color_attachment_info = {
            .sType = vk::VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO_KHR,
            .imageView = swapchain.image_view[next_image],
            .imageLayout = vk::VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR,
            .loadOp = vk::VK_ATTACHMENT_LOAD_OP_CLEAR,
            .storeOp = vk::VK_ATTACHMENT_STORE_OP_STORE,
            .clearValue = clear_value,
        };

        VkRenderingInfoKHR render_info = {
            .sType = vk::VK_STRUCTURE_TYPE_RENDERING_INFO_KHR,
            .renderArea = render_area,
            .layerCount = 1,
            .colorAttachmentCount = 1,
            .pColorAttachments = &color_attachment_info,
        };

        VkCommandBuffer buffer = context.command_buffers[next_image];
        vk::resetCommandBuffer(buffer, 0)!;*//*

       VkSemaphore[1] wait_semaphores = { active_sync.image_acquired };
        VkSemaphore[1] signal_semaphores = { active_sync.render_finished};

        VkSubmitInfo submit_info = {
            .sType = vk::VK_STRUCTURE_TYPE_SUBMIT_INFO,
            .pNext = null,
            .waitSemaphoreCount = 1,
            .pWaitSemaphores = &wait_semaphores,
            .pWaitDstStageMask = &&VkPipelineStageFlags[1]{ vk::VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT },
            .commandBufferCount = 1,
            .pCommandBuffers = &&VkCommandBuffer[1]{ buffer },
            .signalSemaphoreCount = 1,
            .pSignalSemaphores = &signal_semaphores,
        };

        VkCommandBufferBeginInfo begin_info = {
          .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
          .pNext = null,
          .flags = 0,
          .pInheritanceInfo = null,
        };

        vk::beginCommandBuffer(buffer, &begin_info)!;

        VkClearValue[1] clear_color = {
            VkClearValue{
                .color = VkClearColorValue{ .float32 = { 0.0, 0.0, 0.0, 1.0 } },
            }
        };

        VkRenderPassBeginInfo render_pass_begin_info = {
            .sType = vk::VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
            .pNext = null,
            .renderPass = render_pass,
            .framebuffer = frame_buffers[next_image],
            .renderArea = VkRect2D{
                .offset = VkOffset2D{ .x = 0, .y = 0 },
                .extent = context.swapchain.extent,
            },
            .clearValueCount = 1,
            .pClearValues = &clear_color,
        };

        vk::cmdSetViewport(buffer, 0, 1, &&VkViewport{ .width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 });
        vk::cmdSetScissor(buffer, 0, 1, &&VkRect2D {.extent = context.swapchain.extent, .offset = VkOffset2D{ .x = 0, .y = 0 }});

        vk::cmdBeginRenderPass(buffer, &render_pass_begin_info, vk::VK_SUBPASS_CONTENTS_INLINE);
        vk::cmdBindPipeline(buffer, vk::VK_PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        vk::cmdPushDescriptorSetKHR(buffer, vk::VK_PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, 1, &descriptorSets[0]);

        VkBuffer[1] buffers = {vertex_buffer.buffer};
        VkDeviceSize[1] deviceSizes = {0};
        vk::cmdBindVertexBuffers(buffer, 0, 1, &buffers, &deviceSizes);
        vk::cmdBindIndexBuffer(buffer, index_buffer.buffer, 0, vk::VK_INDEX_TYPE_UINT32);
        vk::cmdDrawIndexed(buffer, index_data.len, 1, 0, 0, 0);

        vk::cmdEndRenderPass(buffer);
        vk::endCommandBuffer(buffer)!;

        vk::queueSubmit(context.graphics_queue, 1, &submit_info, active_sync.frame_fence)!;

        VkPresentInfoKHR present_info = {
             .sType = vk::VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
             .waitSemaphoreCount = 1,
             .pWaitSemaphores = &signal_semaphores,
             .swapchainCount = 1,
             .pSwapchains = &&VkSwapchainKHR[1]{ context.swapchain.swapchain },
             .pImageIndices = &&uint[1]{next_image},
             .pResults = null,
        };

        vk::queuePresentKHR(context.graphics_queue, &present_info)!;*//*
        frame = (frame + 1) % 2;
    }
    */


    defer {
        vertex_module.free(device.device);
        frag_module.free(device.device);
        uniform_buffer.free(device.device);
        index_buffer.free(device.device);
        vertex_buffer.free(device.device);
        command_pool.free(device.device);
        swapchain.free(device.device);
        pipeline.free(device.device);
        pipeline_layout.free(device.device);
        descriptor_set_layout.free(device.device);
        device.free();
    }
}

