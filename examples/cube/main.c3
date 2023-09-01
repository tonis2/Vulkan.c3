import std::io;
import vk;
import glfw;
import camera;
import std::math;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
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
    SwapChain swapchain = device.createSwapchain()!;

    BufferInfo vertex_buffer = {
        .size = Vertex.sizeof * vertex_data.len,
        .usage = vk::BUFFER_USAGE_VERTEX_BUFFER_BIT,
    };

    BufferInfo index_buffer = {
        .size = (index_data.len * float.sizeof),
        .usage = vk::BUFFER_USAGE_INDEX_BUFFER_BIT,
    };

    BufferInfo uniform_buffer = {
        .size = UniformData.sizeof,
        .usage = vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT,
    };

    vertex_buffer.device_only(&vertex_data[0], device)!;
    index_buffer.device_only(&index_data[0], device)!;
    uniform_buffer.writable(&&camera.matrix(), device)!;

    CommandPool command_pool = device.createCommandPool()!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain.image_count)!;

    DescriptorSetLayoutCreateInfo descriptorLayoutInfo = vk::descriptorSetLayoutCreateInfoBuilder()
    .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
    .setBindings({
      {
          .binding = 0,
          .descriptorType = vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER,
          .descriptorCount = 1,
          .stageFlags = vk::SHADER_STAGE_VERTEX_BIT
      }
    });

    DescriptorSetLayout descriptor_set_layout = device.createDescriptorSetLayout(descriptorLayoutInfo)!;
    WriteDescriptorSet[] descriptorSets = {
            vk::writeDescriptorSetBuilder()
            .setDescriptorType(vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER)
            .setBufferInfo({
              {
                   .buffer = uniform_buffer.buffer,
                   .offset = 0,
                   .range = UniformData.sizeof,
               },
           })
    };


    PhysicalDeviceProperties2 deviceProps2 = vk::physicalDeviceProperties2Builder()
                                                .setNext(&&vk::physicalDevicePushDescriptorPropertiesKHRBuilder().setMaxPushDescriptors(1));

    vk::getPhysicalDeviceProperties2(device.physical_device, &deviceProps2);

    // Pipeline info
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    ShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    ShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;
    PipelineLayout pipeline_layout = device.createPipelineLayout(vk::pipelineLayoutCreateInfoBuilder()
                                                                         .setSetLayouts({ descriptor_set_layout }))!;

    GraphicsPipelineCreateInfo pipeline_info = vk::graphicsPipelineCreateInfoBuilder()
    .setStages({
        vertex_module.info(vk::SHADER_STAGE_VERTEX_BIT),
        frag_module.info(vk::SHADER_STAGE_FRAGMENT_BIT)
    })
     .setLayout(pipeline_layout)
     .setVertexInputState(&&vk::pipelineVertexInputStateCreateInfoBuilder()
        .setVertexBindingDescriptions(
        {
            {
             .binding = 0,
             .stride = Vertex.sizeof,
             .inputRate = vk::VERTEX_INPUT_RATE_VERTEX,
            }
        })
        .setVertexAttributeDescriptions({
            {
               .binding = 0,
               .location = 0,
               .format = vk::FORMAT_R32G32B32_SFLOAT,
               .offset = 0
            },
            {
               .binding = 0,
               .location = 1,
               .format = vk::FORMAT_R32G32B32_SFLOAT,
               .offset = 4 * float.sizeof
            }
        })
    )
    .setDynamicState(
       &&vk::pipelineDynamicStateCreateInfoBuilder()
        .setDynamicStates(
        {
            vk::DYNAMIC_STATE_VIEWPORT,
            vk::DYNAMIC_STATE_LINE_WIDTH,
        })
    )
    .setRasterizationState(
        &&vk::pipelineRasterizationStateCreateInfoBuilder()
        .setDepthClampEnable(vk::FALSE)
        .setRasterizerDiscardEnable(vk::FALSE)
        .setPolygonMode(vk::POLYGON_MODE_FILL)
        .setLineWidth(1.0)
        .setCullMode(vk::CULL_MODE_FRONT_BIT)
        .setFrontFace(vk::FRONT_FACE_COUNTER_CLOCKWISE)
        .setDepthBiasEnable(vk::FALSE)
    )
    .setInputAssemblyState(&&vk::pipelineInputAssemblyStateCreateInfoBuilder().setTopology(vk::PRIMITIVE_TOPOLOGY_TRIANGLE_LIST))
    .setMultisampleState(&&vk::pipelineMultisampleStateCreateInfoBuilder()
                      .setSampleShadingEnable(vk::FALSE)
                      .setRasterizationSamples(vk::SAMPLE_COUNT_1_BIT)
                      .setMinSampleShading(1.0)
                      .setAlphaToCoverageEnable(vk::FALSE)
                      .setAlphaToOneEnable(vk::FALSE))
    .setDepthStencilState(&&vk::pipelineDepthStencilStateCreateInfoBuilder()
                        .setDepthTestEnable(vk::FALSE)
                        .setDepthWriteEnable(vk::FALSE)
                        .setDepthCompareOp(vk::COMPARE_OP_LESS_OR_EQUAL)
                        .setBack({.compareOp = vk::COMPARE_OP_ALWAYS}))
    .setColorBlendState(&&vk::pipelineColorBlendStateCreateInfoBuilder()
                    .setBlendConstants({ 0.0, 0.0, 0.0, 0.0 })
                    .setLogicOp(vk::LOGIC_OP_COPY)
                    .setAttachments({
                       {
                           .colorWriteMask =
                               vk::COLOR_COMPONENT_R_BIT |
                               vk::COLOR_COMPONENT_G_BIT |
                               vk::COLOR_COMPONENT_B_BIT |
                               vk::COLOR_COMPONENT_A_BIT,
                           .blendEnable = vk::TRUE,
                           .srcColorBlendFactor = vk::BLEND_FACTOR_SRC_ALPHA,
                           .dstColorBlendFactor = vk::BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
                           .colorBlendOp = vk::BLEND_OP_ADD,
                           .srcAlphaBlendFactor = vk::BLEND_FACTOR_ONE,
                           .dstAlphaBlendFactor = vk::BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
                           .alphaBlendOp = vk::BLEND_OP_ADD,
                       }}))
    .setViewportState(&&vk::pipelineViewportStateCreateInfoBuilder()
                   .setViewports({{ .x = 0.0, .y = 0.0, .width = swapchain.extent.width, .height = swapchain.extent.height, .minDepth = 0.0, .maxDepth = 1.0 }})
                   .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = swapchain.extent }}))
    .setNext(&&vk::pipelineRenderingCreateInfoBuilder().setColorAttachmentFormats({swapchain.image_format}));

    Pipeline pipeline;
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

        SyncImage active_sync = context.swapchain.syncImages[frame];
        vk::waitForFences(device.device, 1, &active_sync.frame_fence, vk::TRUE, uint.max)!;
        vk::resetFences(device.device, 1, &active_sync.frame_fence)!;

        uint next_image = {|
            uint index;
            vk::acquireNextImageKHR(device.device, swapchain.swapchain, uint.max, active_sync.image_acquired, null, &index)!!;
            return index;
        |};

      VkRenderingInfo rendering_info = {
        .sType = vk::STRUCTURE_TYPE_RENDERING_INFO,
        .pNext = null,
        .flags = 0,
        .layerCount = 1,
        .colorAttachmentCount = 1,
        .pColorAttachments = &&VkRenderingAttachmentInfo {
            .sType = vk::STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO,
            .imageView = swapchain.image_views[next_image],
            .imageLayout = vk::IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
            .loadOp = vk::ATTACHMENT_LOAD_OP_CLEAR,
            .storeOp = vk::ATTACHMENT_STORE_OP_STORE,
            .clearValue = VkClearColorValue{ .float32 = { 0.0, 0.0, 0.0, 1.0 } },
            .renderArea = {
                .offset = VkOffset2D{ .x = 0, .y = 0 },
                .extent = swapchain.extent,
                }
            }
        };

        VkCommandBuffer buffer = command_buffers[next_image];
        vk::resetCommandBuffer(buffer, 0)!;
        vk::cmdBeginRendering(buffer, &rendering_info);

        VkSemaphore[1] wait_semaphores = { active_sync.image_acquired };
        VkSemaphore[1] signal_semaphores = { active_sync.render_finished};

        VkSubmitInfo submit_info = {
            .sType = vk::STRUCTURE_TYPE_SUBMIT_INFO,
            .pNext = null,
            .waitSemaphoreCount = 1,
            .pWaitSemaphores = &wait_semaphores,
            .pWaitDstStageMask = &&VkPipelineStageFlags[1]{ vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT },
            .commandBufferCount = 1,
            .pCommandBuffers = &&VkCommandBuffer[1]{ buffer },
            .signalSemaphoreCount = 1,
            .pSignalSemaphores = &signal_semaphores,
        };

        VkCommandBufferBeginInfo begin_info = {
          .sType = vk::STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
          .pNext = null,
          .flags = 0,
          .pInheritanceInfo = null,
        };

        vk::beginCommandBuffer(buffer, &begin_info)!;

        vk::cmdSetViewport(buffer, 0, 1, &&VkViewport{.width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 });
        vk::cmdSetScissor(buffer, 0, 1, &&VkRect2D {.extent = context.swapchain.extent, .offset = VkOffset2D{ .x = 0, .y = 0 }});

        vk::cmdBeginRenderPass(buffer, &render_pass_begin_info, vk::SUBPASS_CONTENTS_INLINE);
        vk::cmdBindPipeline(buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        vk::cmdPushDescriptorSetKHR(buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, 1, &descriptorSets[0]);

        VkBuffer[1] buffers = {vertex_buffer.buffer};
        VkDeviceSize[1] deviceSizes = {0};
        vk::cmdBindVertexBuffers(buffer, 0, 1, &buffers, &deviceSizes);
        vk::cmdBindIndexBuffer(buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT32);
        vk::cmdDrawIndexed(buffer, index_data.len, 1, 0, 0, 0);
        vk::cmdEndRendering(buffer);

        VkImageMemoryBarrier image_memory_barrier = {
            .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
            .srcAccessMask = vk::ACCESS_COLOR_ATTACHMENT_WRITE_BIT,
            .oldLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
            .newLayout = vk::IMAGE_LAYOUT_PRESENT_SRC_KHR,
            .image = swapchain.images[next_image],
            .subresourceRange = {
              .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
              .baseMipLevel = 0,
              .levelCount = 1,
              .baseArrayLayer = 0,
              .layerCount = 1,
            }
        };

        vk::cmdPipelineBarrier(
            buffer,
            vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,
            vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,
            0,
            0,
            null,
            0,
            null,
            1,
            &image_memory_barrier
        );

        vk::endCommandBuffer(buffer)!;
        vk::queueSubmit(device.graphics_queue, 1, &submit_info, active_sync.frame_fence)!;

        VkPresentInfoKHR present_info = {
             .sType = vk::STRUCTURE_TYPE_PRESENT_INFO_KHR,
             .waitSemaphoreCount = 1,
             .pWaitSemaphores = &signal_semaphores,
             .swapchainCount = 1,
             .pSwapchains = &&VkSwapchainKHR[1]{ context.swapchain.swapchain },
             .pImageIndices = &&uint[1]{next_image},
             .pResults = null,
        };
        vk::queuePresentKHR(device.graphics_queue, &present_info)!;
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

