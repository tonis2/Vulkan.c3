import std::io;
import vk;
import glfw;
import context;
import buffer;
import helpers;
import std::math;

const WIDTH = 800;
const HEIGHT = 600;
const CUBE_WIDTH = 1.0;

struct Vertex {
    Vec3f pos;
    Vec3f color;
}

Vertex[] vertex_data = {
    Vertex {{-CUBE_WIDTH, -CUBE_WIDTH, CUBE_WIDTH}, {255, 0, 0}},
    Vertex {{CUBE_WIDTH, -CUBE_WIDTH, CUBE_WIDTH}, {255, 0, 0}},
    Vertex {{CUBE_WIDTH, CUBE_WIDTH, CUBE_WIDTH}, {255, 0, 0}},
    Vertex {{-CUBE_WIDTH, CUBE_WIDTH, CUBE_WIDTH}, {255, 0, 0}},

    Vertex {{-CUBE_WIDTH, -CUBE_WIDTH, -CUBE_WIDTH}, {0, 255, 0}},
    Vertex {{-CUBE_WIDTH, CUBE_WIDTH, -CUBE_WIDTH}, {0, 255, 0}},
    Vertex {{CUBE_WIDTH, CUBE_WIDTH, -CUBE_WIDTH}, {0, 255, 0}},
    Vertex {{CUBE_WIDTH, -CUBE_WIDTH, -CUBE_WIDTH}, {0, 255, 0}},

    Vertex {{-CUBE_WIDTH, CUBE_WIDTH, -CUBE_WIDTH}, {245, 40, 145}},
    Vertex {{-CUBE_WIDTH, CUBE_WIDTH, CUBE_WIDTH}, {245, 40, 145}},
    Vertex {{CUBE_WIDTH, CUBE_WIDTH, CUBE_WIDTH}, {245, 40, 145}},
    Vertex {{CUBE_WIDTH, CUBE_WIDTH, -CUBE_WIDTH}, {245, 40, 145}},

    Vertex {{-CUBE_WIDTH, -CUBE_WIDTH, -CUBE_WIDTH}, {254, 206, 33}},
    Vertex {{CUBE_WIDTH, -CUBE_WIDTH, -CUBE_WIDTH}, {254, 206, 33}},
    Vertex {{CUBE_WIDTH, -CUBE_WIDTH, CUBE_WIDTH}, {254, 206, 33}},
    Vertex {{-CUBE_WIDTH, -CUBE_WIDTH, CUBE_WIDTH}, {254, 206, 33}},

    Vertex {{CUBE_WIDTH, -CUBE_WIDTH, -CUBE_WIDTH}, {0, 0, 193}},
    Vertex {{CUBE_WIDTH, CUBE_WIDTH, -CUBE_WIDTH}, {0, 0, 193}},
    Vertex {{CUBE_WIDTH, CUBE_WIDTH, CUBE_WIDTH}, {0, 0, 193}},
    Vertex {{CUBE_WIDTH, -CUBE_WIDTH, CUBE_WIDTH}, {0, 0, 193}},

    Vertex {{-CUBE_WIDTH, -CUBE_WIDTH, -CUBE_WIDTH}, {0, 0, 1}},
    Vertex {{-CUBE_WIDTH, -CUBE_WIDTH, CUBE_WIDTH}, {0, 0, 1}},
    Vertex {{-CUBE_WIDTH, CUBE_WIDTH, CUBE_WIDTH}, {0, 0, 1}},
    Vertex {{-CUBE_WIDTH, CUBE_WIDTH, -CUBE_WIDTH}, {0, 0, 1}},
};

uint[] index_data = {
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
        .size = Vertex.sizeof * vertex_data.len,
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

    if (catch err = vertex_buffer.init(&vertex_data[0], context)) {
        io::printfn("Failed to create vertex buffer");
        return 1;
    }

    if (catch err = index_buffer.init(&index_data[0], context)) {
        io::printfn("Failed to create index buffer");
        return 1;
    }

    if (catch err = uniform_buffer.init(&uniformData, context)) {
        io::printfn("Failed to create uniform buffer");
        return 1;
    }

    // Descriptor info
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
            .dstSet = null,
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


    // Pipeline info
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    VkShaderModule vertex_module;
    VkShaderModule frag_module;

    vk::createShaderModule(context.device, &&VkShaderModuleCreateInfo{
        .sType = vk::VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .codeSize = vertex_shader_data.len,
        .pCode = (uint*)&vertex_shader_data,
    }, null, &vertex_module);

    vk::createShaderModule(context.device, &&VkShaderModuleCreateInfo{
        .sType = vk::VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .codeSize = fragment_shader_data.len,
        .pCode = (uint*)&fragment_shader_data,
    }, null, &frag_module);

    VkPipelineLayoutCreateInfo pipeline_layout_info = {
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .setLayoutCount = 1,
        .pSetLayouts = &descriptorSetLayout,
        .pushConstantRangeCount = 0,
        .pPushConstantRanges = null,
    };

    VkPipelineLayout pipeline_layout;
    vk::createPipelineLayout(context.device, &pipeline_layout_info, null, &pipeline_layout);

    // RenderPass info
    VkRenderPassCreateInfo render_pass_info = {
        .sType = vk::VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .attachmentCount = 1,
        .pAttachments = &&VkAttachmentDescription{
             .flags = 0,
             .format = context.swapchain.image_format,
             .samples = vk::VK_SAMPLE_COUNT_1_BIT,
             .loadOp = vk::VK_ATTACHMENT_LOAD_OP_CLEAR,
             .storeOp = vk::VK_ATTACHMENT_STORE_OP_STORE,
             .stencilLoadOp = vk::VK_ATTACHMENT_LOAD_OP_DONT_CARE,
             .stencilStoreOp = vk::VK_ATTACHMENT_STORE_OP_DONT_CARE,
             .initialLayout = vk::VK_IMAGE_LAYOUT_UNDEFINED,
             .finalLayout = vk::VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
         },
        .subpassCount = 1,
        .pSubpasses = &&VkSubpassDescription{
            .flags = 0,
            .pipelineBindPoint = vk::VK_PIPELINE_BIND_POINT_GRAPHICS,
            .colorAttachmentCount = 1,
            .pColorAttachments = &&VkAttachmentReference{
               .attachment = 0,
               .layout = vk::VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
            },
            .inputAttachmentCount = 0,
            .pInputAttachments = null,
            .pResolveAttachments = null,
            .pDepthStencilAttachment = null,
            .preserveAttachmentCount = 0,
            .pPreserveAttachments = null,
        },
        .dependencyCount = 1,
        .pDependencies = &&VkSubpassDependency{
          .srcSubpass = vk::VK_SUBPASS_EXTERNAL,
          .dstSubpass = 0,
          .srcStageMask = vk::VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,
          .srcAccessMask = 0,
          .dstStageMask = vk::VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT,
          .dstAccessMask = vk::VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT,
          .dependencyFlags = 0,
        },
    };

    // Create render pass
    VkRenderPass render_pass;
    vk::createRenderPass(context.device, &render_pass_info, null, &render_pass);

    VkPipelineColorBlendStateCreateInfo color_blending = {
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .logicOpEnable = 0,
        .logicOp = vk::VK_LOGIC_OP_COPY,
        .attachmentCount = 1,
        .pAttachments = &&VkPipelineColorBlendAttachmentState{
            .colorWriteMask = vk::VK_COLOR_COMPONENT_R_BIT |
              vk::VK_COLOR_COMPONENT_G_BIT |
              vk::VK_COLOR_COMPONENT_B_BIT |
              vk::VK_COLOR_COMPONENT_A_BIT,
            .blendEnable = 0,
            .srcColorBlendFactor = vk::VK_BLEND_FACTOR_SRC_ALPHA,
            .dstColorBlendFactor = vk::VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
            .colorBlendOp = vk::VK_BLEND_OP_ADD,
            .srcAlphaBlendFactor = vk::VK_BLEND_FACTOR_ONE,
            .dstAlphaBlendFactor = vk::VK_BLEND_FACTOR_ZERO,
            .alphaBlendOp = vk::VK_BLEND_OP_ADD,
        },
        .blendConstants = float[4]{ 0.0, 0.0, 0.0, 0.0 },
    };

    // Shaders info
    VkPipelineShaderStageCreateInfo vert_stage_info = {
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .stage = vk::VK_SHADER_STAGE_VERTEX_BIT,
        .mod = vertex_module,
        .pName = "main",
        .pSpecializationInfo =  null,
    };

    VkPipelineShaderStageCreateInfo frag_stage_info = {
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .stage = vk::VK_SHADER_STAGE_FRAGMENT_BIT,
        .mod = frag_module,
        .pName = "main",
        .pSpecializationInfo =  null,
    };

    VkPipelineDynamicStateCreateInfo dynamic_state = {
     .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
     .pNext = null,
     .flags = 0,
     .dynamicStateCount = 2,
     .pDynamicStates = &&VkDynamicState[2]{
        vk::VK_DYNAMIC_STATE_VIEWPORT,
        vk::VK_DYNAMIC_STATE_LINE_WIDTH,
      },
    };

    VkGraphicsPipelineCreateInfo pipeline_info = {
        .sType = vk::VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .stageCount = 2,
        .pStages = &&VkPipelineShaderStageCreateInfo[2]{ vert_stage_info, frag_stage_info },
        .pVertexInputState = &&VkPipelineVertexInputStateCreateInfo{
          .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
          .pNext = null,
          .flags = 0,
          .vertexBindingDescriptionCount = 1,
          .pVertexBindingDescriptions = &&VkVertexInputBindingDescription{
             .binding = 0,
             .stride = Vertex.sizeof,
             .inputRate = vk::VK_VERTEX_INPUT_RATE_VERTEX,
            },
          .vertexAttributeDescriptionCount = 2,
          .pVertexAttributeDescriptions = &&VkVertexInputAttributeDescription[2]{
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
                   .offset = float.sizeof * 3,
                },
            },
        },
        .layout = pipeline_layout,
        .renderPass = render_pass,
        .pRasterizationState = &&VkPipelineRasterizationStateCreateInfo {
          .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
          .pNext = null,
          .flags = 0,
          .depthClampEnable = vk::VK_FALSE,
          .rasterizerDiscardEnable = 0,
          .polygonMode = vk::VK_POLYGON_MODE_POINT,
          .lineWidth = 1.0,
          .cullMode = vk::VK_CULL_MODE_BACK_BIT,
          .frontFace = vk::VK_FRONT_FACE_CLOCKWISE,
          .depthBiasEnable = vk::VK_FALSE,
          .depthBiasConstantFactor = 0.0,
          .depthBiasClamp = 0.0,
          .depthBiasSlopeFactor = 0.0,
        },
        .pInputAssemblyState = &&VkPipelineInputAssemblyStateCreateInfo{
            .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
            .pNext = null,
            .flags = 0,
            .topology = vk::VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST,
            .primitiveRestartEnable = vk::VK_FALSE,
        },
        .pViewportState = &&VkPipelineViewportStateCreateInfo{
           .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
           .pNext = null,
           .flags = 0,
           .viewportCount = 1,
           .pViewports = &&VkViewport{
               .x = 0.0,
               .y = 0.0,
               .width = context.swapchain.extent.width,
               .height = context.swapchain.extent.height,
               .minDepth = 0.0,
               .maxDepth = 1.0,
           },
           .scissorCount = 1,
           .pScissors = &&VkRect2D{
                .offset = VkOffset2D{ .x = 0, .y = 0 },
                .extent = context.swapchain.extent,
            },
        },
        .pMultisampleState = &&VkPipelineMultisampleStateCreateInfo{
          .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
          .pNext = null,
          .flags = 0,
          .sampleShadingEnable = vk::VK_FALSE,
          .rasterizationSamples = vk::VK_SAMPLE_COUNT_1_BIT,
          .minSampleShading = 1.0,
          .pSampleMask = null,
          .alphaToCoverageEnable = vk::VK_FALSE,
          .alphaToOneEnable = vk::VK_FALSE,
        },
        .pDepthStencilState = null,
        .pColorBlendState = &color_blending,
        .pDynamicState = &dynamic_state,
        .pTessellationState = null,
        .subpass = 0,
        .basePipelineHandle = null,
        .basePipelineIndex = -1,
    };

    VkPipeline pipeline;
    if (vk::createGraphicsPipelines(context.device, null, 1, &pipeline_info, null, &pipeline) != vk::VK_SUCCESS) {
        io::printfn("Failed to create pipeline");
        return 1;
    };

    VkFramebuffer* frame_buffers = malloc(VkFramebuffer, context.swapchain.image_count);
    for (int i = 0; i < context.swapchain.image_count; ++i) {
        VkImageView image_view = context.swapchain.image_views[i];
        VkFramebufferCreateInfo frame_buffer_info = {
            .sType = vk::VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
            .pNext = null,
            .flags = 0,
            .renderPass = render_pass,
            .attachmentCount = 1,
            .pAttachments = &&VkImageView[1]{image_view},
            .width = context.swapchain.extent.width,
            .height = context.swapchain.extent.height,
            .layers = 1,
        };
        vk::createFramebuffer(context.device, &frame_buffer_info, null, &frame_buffers[i]);
    }

  /*  uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        glfw::pollEvents();

        SyncImage active_sync = context.swapchain.syncImages[frame];
        vk::waitForFences(context.device, 1, &active_sync.frame_fence, vk::VK_TRUE, uint.max);
        vk::resetFences(context.device, 1, &active_sync.frame_fence);

        uint next_image = {|
            uint index;
            vk::acquireNextImageKHR(context.device, context.swapchain.swapchain, uint.max, active_sync.image_acquired, null, &index);
            return index;
        |};

        VkCommandBuffer buffer = context.command_buffers[next_image];
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

        vk::resetCommandBuffer(buffer, 0);

        VkCommandBufferBeginInfo begin_info = {
          .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
          .pNext = null,
          .flags = 0,
          .pInheritanceInfo = null,
        };

        vk::beginCommandBuffer(buffer, &begin_info);

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
        vk::cmdBindVertexBuffers(buffer, 0, 1, &buffers, &&VkDeviceSize[1]{0});
        vk::cmdBindIndexBuffer(buffer, index_buffer.buffer, 0, vk::VK_INDEX_TYPE_UINT32);

        vk::cmdDrawIndexed(buffer, index_data.len, 1, 0, 0, 0);

        vk::cmdEndRenderPass(buffer);
        vk::endCommandBuffer(buffer);

        vk::queueSubmit(context.graphics_queue, 1, &submit_info, active_sync.frame_fence);

        VkPresentInfoKHR present_info = {
             .sType = vk::VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
             .waitSemaphoreCount = 1,
             .pWaitSemaphores = &signal_semaphores,
             .swapchainCount = 1,
             .pSwapchains = &&VkSwapchainKHR[1]{ context.swapchain.swapchain },
             .pImageIndices = &&uint[1]{next_image},
             .pResults = null,
        };

        vk::queuePresentKHR(context.graphics_queue, &present_info);
        frame = (frame + 1) % 2;
    }
*/
    defer {
        vk::destroyShaderModule(context.device, vertex_module, null);
        vk::destroyShaderModule(context.device, frag_module, null);
        vk::destroyDescriptorSetLayout(context.device, descriptorSetLayout, null);
        vk::destroyPipelineLayout(context.device, pipeline_layout, null);
        vk::destroyRenderPass(context.device, render_pass, null);
        vk::destroyPipeline(context.device, pipeline, null);
        for (int i = 0; i < context.swapchain.image_count; ++i) {
            vk::destroyFramebuffer(context.device, frame_buffers[i], null);
        }
        mem::free(frame_buffers);
        uniform_buffer.free(context.device);
        index_buffer.free(context.device);
        vertex_buffer.free(context.device);
        context.free();
    };

    return 0;
}