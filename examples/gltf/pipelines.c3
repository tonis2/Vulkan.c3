module renderer;
import std::io;
import vk;
import glfw;
import std::collections::list;

struct PipelineInfo {
    RenderingInfo rendering_info;
    DescriptorSetLayout descriptor_set_layout;
    List(<WriteDescriptorSet>) descriptor_sets;
    PipelineLayout pipeline_layout;
    Pipeline pipeline;
    ShaderModule fragment_module;
    ShaderModule vertex_module;
}

fn void PipelineInfo.free(self, Device device) {
    self.descriptor_sets.free();
    self.descriptor_set_layout.free(device);
    self.vertex_module.free(device);
    self.fragment_module.free(device);
    self.pipeline.free(device);
    self.pipeline_layout.free(device);
}

// GBuffer pipeline
fn PipelineInfo! gbufferPipeline(Device device, Extent2D extent, MemoryBlock address_buffer, TextureList material_textures) {
    RenderingInfo rendering_info = vk::renderingInfoBuilder()
        .setLayerCount(1)
        .setRenderArea({
            .offset = Offset2D{ .x = 0, .y = 0 },
            .extent = extent,
        })
        .setColorAttachments({
            vk::renderingAttachmentInfoBuilder()
                .setImageView(gbuffer_textures[1].imageView)
                .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
                .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
                .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
                .setClearValue({
                    .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
            }),
            vk::renderingAttachmentInfoBuilder()
                .setImageView(gbuffer_textures[2].imageView)
                .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
                .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
                .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
                .setClearValue({
                    .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
            }),
            vk::renderingAttachmentInfoBuilder()
                .setImageView(gbuffer_textures[3].imageView)
                .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
                .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
                .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
                .setClearValue({
                    .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
            })
        })
    .setDepthAttachment(&&vk::renderingAttachmentInfoBuilder()
        .setImageView(gbuffer_textures[0].imageView)
        .setImageLayout(vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL)
        .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
        .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
        .setClearValue({
            .depthStencil = { 1.0f, 0 }
    }));

    // Bind loaded textures to descriptor
    List(<WriteDescriptorSet>) descriptor_sets;

    descriptor_sets.init_wrapping_array({
        vk::writeDescriptorSetBuilder()
        .setDescriptorType(vk::DESCRIPTOR_TYPE_STORAGE_BUFFER)
        .setBufferInfo({
          {
              .buffer = address_buffer.buffer,
              .offset = 0,
              .range = AddressBuffer.sizeof,
          },
        }),
        vk::writeDescriptorSetBuilder()
            .setDstBinding(1)
            .setDescriptorType(vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER)
            .setImageInfo(material_textures.array_view()),
    });

    DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfoBuilder()
    .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
    .setBindings({
    {
        .binding = 0,
        .descriptorType = vk::DESCRIPTOR_TYPE_STORAGE_BUFFER,
        .descriptorCount = 1,
        .stageFlags = vk::SHADER_STAGE_VERTEX_BIT | vk::SHADER_STAGE_FRAGMENT_BIT
    },
    {
        .binding = 1,
        .descriptorType = vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER,
        .descriptorCount = (uint)material_textures.len(),
        .stageFlags = vk::SHADER_STAGE_FRAGMENT_BIT
    },
    })
    .build(device)!;

    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfoBuilder()
        .setPushConstantRanges({
            {
                .offset = 0,
                .size = PushConstantData.sizeof,
                .stageFlags = vk::SHADER_STAGE_VERTEX_BIT,
            },
        })
        .setSetLayouts({ descriptor_set_layout }).build(device)!;

    char[*] vertex_shader_data = $embed("shaders/gbuffer_vert.spv");
    char[*] fragment_shader_data = $embed("shaders/gbuffer_frag.spv");

    ShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    ShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;    

    vk::PipelineColorBlendAttachmentState color_write_mask = { 
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
    };

    Pipeline pipeline = vk::graphicsPipelineCreateInfoBuilder()
    .setStages({
        vertex_module.info(vk::SHADER_STAGE_VERTEX_BIT),
        frag_module.info(vk::SHADER_STAGE_FRAGMENT_BIT)
    })
    .setLayout(pipeline_layout)
    .setVertexInputState(&&vk::pipelineVertexInputStateCreateInfoBuilder()
        .setVertexBindingDescriptionCount(0))
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
        .setCullMode(vk::CULL_MODE_NONE)
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
                    .setDepthTestEnable(vk::TRUE)
                    .setDepthWriteEnable(vk::TRUE)
                    .setDepthCompareOp(vk::COMPARE_OP_LESS_OR_EQUAL)
                    .setBack({.compareOp = vk::COMPARE_OP_ALWAYS}))
    .setColorBlendState(&&vk::pipelineColorBlendStateCreateInfoBuilder()
                    .setBlendConstants({ 0.0, 0.0, 0.0, 0.0 })
                    .setLogicOp(vk::LOGIC_OP_COPY)
                    .setAttachments({
                            color_write_mask,
                            color_write_mask,
                            color_write_mask,
                        }))
    .setViewportState(&&vk::pipelineViewportStateCreateInfoBuilder()
        .setViewports({{ .x = 0.0, .y = extent.height, .width = extent.width, .height = -(float)extent.height, .minDepth = 0.0, .maxDepth = 1.0 }})
        .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = extent }}))
    .setNext(
        &&vk::pipelineRenderingCreateInfoBuilder()
        .setColorAttachmentFormats({
                vk::FORMAT_R8G8B8A8_UNORM,
                vk::FORMAT_R8G8B8A8_UNORM,
                vk::FORMAT_R8G8B8A8_UNORM,
            })
        .setDepthAttachmentFormat(vk::FORMAT_D32_SFLOAT_S8_UINT)
        .setStencilAttachmentFormat(vk::FORMAT_D32_SFLOAT_S8_UINT)
    ).build(device)!;

    return PipelineInfo {
        .rendering_info = rendering_info,
        .descriptor_sets = descriptor_sets,
        .descriptor_set_layout = descriptor_set_layout,
        .pipeline_layout = pipeline_layout,
        .pipeline = pipeline,
        .vertex_module = vertex_module,
        .fragment_module = frag_module
    };
}


// Forward pipeline
fn PipelineInfo! forwardPipeline(Device device, Extent2D extent, TextureList gbuffer_textures) {
    // Bind loaded textures to descriptor
    List(<WriteDescriptorSet>) descriptor_sets;
    descriptor_sets.init_wrapping_array({
        vk::writeDescriptorSetBuilder()
            .setDstBinding(0)
            .setDescriptorType(vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER)
            .setImageInfo(gbuffer_textures.array_view()),
    });

    DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfoBuilder()
    .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
    .setBindings({
    {
        .binding = 0,
        .descriptorType = vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER,
        .descriptorCount = (uint)gbuffer_textures.len(),
        .stageFlags = vk::SHADER_STAGE_FRAGMENT_BIT
    },
    })
    .build(device)!;

    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfoBuilder()
        .setSetLayouts({ descriptor_set_layout }).build(device)!;

    char[*] vertex_shader_data = $embed("shaders/forward_vert.spv");
    char[*] fragment_shader_data = $embed("shaders/forward_frag.spv");

    ShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    ShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;    

    Pipeline pipeline = vk::graphicsPipelineCreateInfoBuilder()
    .setStages({
        vertex_module.info(vk::SHADER_STAGE_VERTEX_BIT),
        frag_module.info(vk::SHADER_STAGE_FRAGMENT_BIT)
    })
    .setLayout(pipeline_layout)
    .setVertexInputState(&&vk::pipelineVertexInputStateCreateInfoBuilder()
        .setVertexBindingDescriptionCount(0))
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
        .setCullMode(vk::CULL_MODE_NONE)
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
                    .setDepthTestEnable(vk::TRUE)
                    .setDepthWriteEnable(vk::TRUE)
                    .setDepthCompareOp(vk::COMPARE_OP_LESS_OR_EQUAL)
                    .setBack({.compareOp = vk::COMPARE_OP_ALWAYS}))
    .setColorBlendState(&&vk::pipelineColorBlendStateCreateInfoBuilder()
                    .setBlendConstants({ 0.0, 0.0, 0.0, 0.0 })
                    .setLogicOp(vk::LOGIC_OP_COPY)
                    .setAttachments({
                            { .colorWriteMask =
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
                            },
                        }))
    .setViewportState(&&vk::pipelineViewportStateCreateInfoBuilder()
        .setViewports({{ .x = 0.0, .y = extent.height, .width = extent.width, .height = -(float)extent.height, .minDepth = 0.0, .maxDepth = 1.0 }})
        .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = extent }}))
    .setNext(
        &&vk::pipelineRenderingCreateInfoBuilder()
        .setColorAttachmentFormats({ vk::FORMAT_B8G8R8A8_UNORM })
    ).build(device)!;

    return PipelineInfo {
        .descriptor_sets = descriptor_sets,
        .descriptor_set_layout = descriptor_set_layout,
        .pipeline_layout = pipeline_layout,
        .pipeline = pipeline,
        .vertex_module = vertex_module,
        .fragment_module = frag_module
    };
}