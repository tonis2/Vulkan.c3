import std::io;
import vk;
import glfw;
import camera;
import std::math;
import std::collections::list;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;

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

ushort[] index_data = {
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

    EventHandler eventHandler = { .window = window };
    eventHandler.init();

    Camera camera = camera::new({0.0, 0.0, 0.0}, -10, 800/600);

//"VK_LAYER_LUNARG_api_dump"
    InstanceInfo instance = InstanceInfo {
        .pApplicationName = "Hello Cube",
        .applicationVersion = vk::@makeApiVersion(0,1,0,0),
        .pEngineName = "Super engine",
        .engineVersion = vk::@makeApiVersion(0,1,0,0),
        .apiVersion = VK_API_VERSION_1_3,
        .enable_debug = ENABLE_VALIDATION_LAYERS,
        .dynamic_rendering = true,
        .instance_flags = env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0
    };

    //"VK_LAYER_LUNARG_api_dump"
    instance.validations.add_array({"VK_LAYER_KHRONOS_validation"});
    instance.device_extensions.add_array({"VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_dynamic_rendering"});

    // SETUP extensions
    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    for (int i = 0; i < glfwExtensions_count; ++i) instance.extensions.push(glfwExtensions[i]);

    if (ENABLE_VALIDATION_LAYERS) {
       instance.extensions.add_array({"VK_EXT_debug_utils"});
    }

    if (env::os_is_darwin()) {
        instance.extensions.push("VK_KHR_portability_enumeration");
        instance.device_extensions.push("VK_KHR_portability_subset");
    }

    instance.init()!; // Creates real instance

    SurfaceKHR surface = glfw::createWindowSurface(instance.instance, window, null)!;
    DeviceInfo device = vk::requestDevice(instance, surface)!; // Creates everything related to GPU device

    SurfaceFormatKHR format = device.surface_formats.contains({.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR})
        ? SurfaceFormatKHR {.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR}
        : device.surface_formats[0];

    PresentModeKHR present_mode = device.present_modes.contains(vk::PRESENT_MODE_MAILBOX_KHR) ? vk::PRESENT_MODE_MAILBOX_KHR : device.present_modes[0];

    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfoKHRBuilder()
    .setMinImageCount(device.capabilities.minImageCount + 2)
    .setImageUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
    .setImageSharingMode(vk::SHARING_MODE_EXCLUSIVE)
    .setCompositeAlpha(vk::COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
    .setPresentMode(present_mode)
    .setPreTransform(device.capabilities.currentTransform)
    .setImageColorSpace(format.colorSpace)
    .setImageFormat(format.format)
    .setSurface(surface)
    .setImageArrayLayers(1)
    .setImageExtent({.width = WIDTH, .height = HEIGHT });

    SwapchainKHR swapchain = swapchain_info.buildKHR(device.device)!;

    vk::ImageList swapchain_images = swapchain.getImages(device.device, swapchain_info.minImageCount)!;
    ImageViewList swapchain_views;

    for (int i = 0; i < swapchain_info.minImageCount; ++i) {
     ImageView view = vk::imageViewCreateInfoBuilder()
       .setViewType(vk::IMAGE_VIEW_TYPE_2D)
       .setFormat(format.format)
       .setComponents({
          .r = vk::COMPONENT_SWIZZLE_IDENTITY,
          .g = vk::COMPONENT_SWIZZLE_IDENTITY,
          .b = vk::COMPONENT_SWIZZLE_IDENTITY,
          .a = vk::COMPONENT_SWIZZLE_IDENTITY,
       })
       .setSubresourceRange({
          .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
          .baseMipLevel = 0,
          .baseArrayLayer = 0,
          .layerCount = 1,
          .levelCount = 1,
       })
       .setImage(swapchain_images[i])
       .build(device.device)!;
       swapchain_views.push(view);
    }

    defer {
       swapchain_images.free();
       swapchain_views.free();
    }

    BufferInfo vertex_buffer = BufferInfo {
        .usage = vk::BUFFER_USAGE_VERTEX_BUFFER_BIT,
        .version = vk::BufferVersion.DEVICE_BUFFER
    }
    .build(vertex_data, Vertex.sizeof * vertex_data.len, device)!;

    BufferInfo index_buffer = BufferInfo {
        .usage = vk::BUFFER_USAGE_INDEX_BUFFER_BIT,
        .version = vk::BufferVersion.DEVICE_BUFFER
    }
    .build(index_data, index_data.len * float.sizeof, device)!;

    BufferInfo uniform_buffer = BufferInfo {
        .usage = vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT,
        .version = vk::BufferVersion.GLOBAL_BUFFER
    }
    .build(&&camera.matrix(), UniformData.sizeof, device)!;

    CommandPool command_pool = device.createCommandPool()!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain_info.minImageCount)!;

    // Set-up descriptor info for uniform buffer usage
    DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfoBuilder()
        .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
        .setBindings({
          {
              .binding = 0,
              .descriptorType = vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER,
              .descriptorCount = 1,
              .stageFlags = vk::SHADER_STAGE_VERTEX_BIT
          }
        }).build(device.device)!;

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

    // Required for using push descriptors
    PhysicalDeviceProperties2 deviceProps2 = vk::physicalDeviceProperties2Builder()
                                                .setNext(&&vk::physicalDevicePushDescriptorPropertiesKHRBuilder().setMaxPushDescriptors(1));

    vk::getPhysicalDeviceProperties2(device.physical_device, &deviceProps2);

    // Load shaders
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    ShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    ShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;
    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfoBuilder().setSetLayouts({ descriptor_set_layout }).build(device.device)!;

    // Create Renderpipeline info
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
               .offset = Vertex.pos.offsetof
            },
            {
               .binding = 0,
               .location = 1,
               .format = vk::FORMAT_R32G32B32_SFLOAT,
               .offset = Vertex.color.offsetof
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
                   .setViewports({{ .x = 0.0, .y = 0.0, .width = swapchain_info.imageExtent.width, .height = swapchain_info.imageExtent.height, .minDepth = 0.0, .maxDepth = 1.0 }})
                   .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = swapchain_info.imageExtent }}))
    .setNext(&&vk::pipelineRenderingCreateInfoBuilder().setColorAttachmentFormats({swapchain_info.imageFormat}));

    Pipeline pipeline;
    vk::createGraphicsPipelines(device.device, null, 1, &pipeline_info, null, &pipeline)!;

    // Create syncronisation stuff
    SemaphoreList wait_semaphores;
    SemaphoreList signal_semaphores;
    FenceList frame_fences;

    for (uint i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        wait_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device.device))!;
        signal_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device.device))!;
        frame_fences.push(vk::fenceCreateInfoBuilder().setFlags(vk::FENCE_CREATE_SIGNALED_BIT).build(device.device))!;
    }

    // Rendering loop
    uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        eventHandler.update();

        // Update cube rotation on left-mouse click
        if (eventHandler.left_mouse_click) {
            camera.rotate_x(-(float)(eventHandler.mouse_x_delta * 0.5));
            camera.rotate_y(-(float)(eventHandler.mouse_y_delta * 0.5));
            uniform_buffer.updateData(&&camera.matrix());
        }

        Fence frame_fence = frame_fences[frame];
        Semaphore wait_semaphore = wait_semaphores[frame];
        Semaphore signal_semaphore = signal_semaphores[frame];

        frame_fence.wait(device.device)!;
        frame_fence.reset(device.device)!;

        uint next_image = swapchain.getNextImage(device.device, wait_semaphore);

        // Start dynamic rendering
        RenderingInfo rendering_info = vk::renderingInfoBuilder()
        .setLayerCount(1)
        .setRenderArea({
            .offset = Offset2D{ .x = 0, .y = 0 },
            .extent = swapchain_info.imageExtent,
        })
        .setColorAttachments({
            vk::renderingAttachmentInfoBuilder()
            .setImageView(swapchain_views[next_image])
            .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
            .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
            .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
            .setClearValue({
                .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
            })
        });

        CommandBuffer command_buffer = command_buffers[next_image];
        vk::resetCommandBuffer(command_buffer, 0)!;
        vk::beginCommandBuffer(command_buffer, &&vk::commandBufferBeginInfoBuilder())!;

        ImageMemoryBarrier image_memory_start = vk::imageMemoryBarrierBuilder()
        .setDstAccessMask(vk::ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
        .setOldLayout(vk::IMAGE_LAYOUT_UNDEFINED)
        .setNewLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
        .setImage(swapchain_images[next_image])
        .setSubresourceRange({
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .levelCount = 1,
            .baseArrayLayer = 0,
            .layerCount = 1,
        });

        vk::cmdPipelineBarrier(
            command_buffer,
            vk::PIPELINE_STAGE_TOP_OF_PIPE_BIT,
            vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,
            0,
            0,
            null,
            0,
            null,
            1,
            &image_memory_start
        );

        vk::cmdBeginRenderingKHR(command_buffer, &rendering_info);

        vk::cmdSetViewport(command_buffer, 0, 1, &&vk::Viewport{.width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 });
        vk::cmdSetScissor(command_buffer, 0, 1, &&vk::Rect2D {.extent = swapchain_info.imageExtent, .offset = Offset2D{ .x = 0, .y = 0 }});

        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, 1, &descriptorSets[0]);

        vk::cmdBindVertexBuffers(command_buffer, 0, 1, &&vk::Buffer[1]{vertex_buffer.buffer}, &&vk::DeviceSize[1]{0});
        vk::cmdBindIndexBuffer(command_buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
        vk::cmdDrawIndexed(command_buffer, index_data.len, 1, 0, 0, 0);
        vk::cmdEndRenderingKHR(command_buffer);

        ImageMemoryBarrier image_memory_end = vk::imageMemoryBarrierBuilder()
        .setSrcAccessMask(vk::ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
        .setOldLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
        .setNewLayout(vk::IMAGE_LAYOUT_PRESENT_SRC_KHR)
        .setImage(swapchain_images[next_image])
        .setSubresourceRange({
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .levelCount = 1,
            .baseArrayLayer = 0,
            .layerCount = 1,
        });

        vk::cmdPipelineBarrier(
            command_buffer,
            vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,
            vk::PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT,
            0,
            0,
            null,
            0,
            null,
            1,
            &image_memory_end
        );

        SubmitInfo submit_info = vk::submitInfoBuilder()
        .setWaitSemaphores({ wait_semaphore })
        .setCommandBuffers({ command_buffer })
        .setSignalSemaphores({ signal_semaphore })
        .setWaitDstStageMask({vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT});

        vk::endCommandBuffer(command_buffer)!;
        vk::queueSubmit(device.graphics_queue, 1, &submit_info, frame_fence)!;

        PresentInfoKHR present_info = vk::presentInfoKHRBuilder()
        .setWaitSemaphores({ signal_semaphore })
        .setSwapchains({ swapchain })
        .setImageIndices({ next_image });

        vk::queuePresentKHR(device.graphics_queue, &present_info)!;
        frame = (frame + 1) % 2;
    }


    defer {
        device.waitIdle();
        // Use release instead of free here, cause this will free buffer and also destroys the vk instace
        wait_semaphores.release(device.device);
        signal_semaphores.release(device.device);
        frame_fences.release(device.device);

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

        surface.free(instance.instance);
        instance.free();

        device.free();
    }
}

