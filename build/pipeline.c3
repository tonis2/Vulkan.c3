module vk;
import std::io;

VkGraphicsPipelineCreateInfo pipelineDefaultInfo = {
    .sType = vk::VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
    .pNext = null,
    .flags = 0,
    .pTessellationState = null,
    .subpass = 0,
    .basePipelineHandle = null,
    .basePipelineIndex = -1,
    .pViewportState = &&VkPipelineViewportStateCreateInfo {
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
        .pNext = null,
        .flags = 0
     },
    .pRasterizationState = &&VkPipelineRasterizationStateCreateInfo{},
    .pVertexInputState = &&VkPipelineVertexInputStateCreateInfo{
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
    },
    .pDynamicState = &&VkPipelineDynamicStateCreateInfo{}
};

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.stages(self, VkPipelineShaderStageCreateInfo[] bindings)
{
    self.stageCount = bindings.len;
    self.pStages = &bindings[0];
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.vertexInput(self, VkVertexInputBindingDescription[] input_description, VkVertexInputAttributeDescription[] attribute_description)
{
    self.pVertexInputState.vertexBindingDescriptionCount = input_description.len;
    self.pVertexInputState.pVertexBindingDescriptions = &input_description[0];
    self.pVertexInputState.vertexAttributeDescriptionCount = attribute_description.len;
    self.pVertexInputState.pVertexAttributeDescriptions = &attribute_description[0];
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.setLayout(self, VkPipelineLayout layout)
{
    self.layout = layout;
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.rasterizationState(self, VkPipelineRasterizationStateCreateInfo* info)
{
    info.sType = vk::VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
    self.pRasterizationState = info;
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.assemblyState(self, VkPipelineInputAssemblyStateCreateInfo* info)
{
    info.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
    self.pInputAssemblyState = info;
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.viewPortState(self, VkViewport[] viewports, VkRect2D[] scissors)
{
    self.pViewportState.viewportCount = viewports.len;
    self.pViewportState.pViewports = &viewports[0];
    self.pViewportState.scissorCount = scissors.len;
    self.pViewportState.pScissors = &scissors[0];
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.multiSampleState(self, VkPipelineMultisampleStateCreateInfo* info)
{
    info.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
    self.pMultisampleState = info;
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.depthStensilState(self, VkPipelineDepthStencilStateCreateInfo* info)
{
    info.sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO;
    self.pDepthStencilState = info;
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.dynamicState(&self, VkDynamicState[] bindings)
{
    self.pDynamicState.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO;
    self.pDynamicState.flags = 0;
    self.pDynamicState.dynamicStateCount = bindings.len;
    self.pDynamicState.pDynamicStates = &bindings[0];
    return *self;
}

fn VkPipelineColorBlendStateCreateInfo VkPipelineColorBlendStateCreateInfo.attachments(self, VkPipelineColorBlendAttachmentState[] bindings)
{
    self.attachmentCount = bindings.len;
    self.pAttachments = &bindings[0];
    self.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
    return self;
}

fn VkGraphicsPipelineCreateInfo VkGraphicsPipelineCreateInfo.colorBlendState(self, VkPipelineColorBlendStateCreateInfo* info)
{
    self.pColorBlendState = info;
    return self;
}

fn VkPipelineShaderStageCreateInfo VkShaderModule.pipelineInfo(self, VkShaderStageFlagBits stage, VkSpecializationInfo* spec_info = null, VkPipelineShaderStageCreateFlags flags = 0)
{
    return VkPipelineShaderStageCreateInfo {
        .sType = vk::VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        .pNext = null,
        .flags = flags,
        .stage = stage,
        .mod = self,
        .pName = "main",
        .pSpecializationInfo = spec_info,
    };
}
