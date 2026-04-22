module vk::lite;

import vk;
import c3w;
import std::io;
import std::core::env;
import std::collections::list;

struct Context {
    // Passed in by user (not owned, not freed by Context.free)
    vk::Instance           instance;
    vk::SurfaceKHR         surface;
    // Created internally
    vk::PhysicalDevice     physical_device;
    vk::Device             device;
    vk::DeviceQueue        graphics_queue;
    vk::DeviceQueue        transfer_queue;
    vk::CommandPool        command_pool;
    vk::CommandBufferList  command_buffers;
    vk::Swapchain          swapchain;
    vk::FrameSync          frame_sync;
    vk::MemoryAllocator    allocator;
    // Depth (optional)
    vk::Image              depth_image;
    vk::ImageView          depth_view;
    vk::Memory*            depth_memory;
    vk::Format             depth_format;
    bool                   has_depth;
    // Frame state
    uint                   current_image;
}

struct ContextConfig {
    uint         width;
    uint         height;
    bool         enable_depth;
    uint         frames_in_flight;
    vk::Format   preferred_format;
    ZString[]    extra_device_extensions;
}

struct Texture {
    vk::Image       image;
    vk::ImageView   view;
    vk::Sampler     sampler;
    vk::Memory*     memory;
    vk::Format      format;
    uint            width;
    uint            height;
}

struct TextureConfig {
    vk::Format             format;
    vk::Filter             filter;
    vk::SamplerAddressMode address_mode;
}

struct ShaderStage {
    char[]                    spirv;
    ZString                   entry_name;
    vk::ShaderStageFlagBits   stage;
}

struct PipelineConfig {
    ShaderStage[]                                shaders;
    vk::VertexInputBindingDescription[]          vertex_bindings;
    vk::VertexInputAttributeDescription[]        vertex_attributes;
    vk::DescriptorSetLayout[]                    descriptor_layouts;
    vk::PushConstantRange[]                      push_constant_ranges;
    vk::Format                                   color_format;
    vk::Format                                   depth_format;
    vk::PrimitiveTopology                        topology;
    vk::CullModeFlags                            cull_mode;
    vk::FrontFace                                front_face;
    bool                                         depth_test;
    bool                                         depth_write;
    bool                                         blend_enable;
}

struct GraphicsPipeline {
    vk::Pipeline        handle;
    vk::PipelineLayout  layout;
}

// ============================================================================
// Barrier helpers
// ============================================================================

fn vk::ImageMemoryBarrier2 colorBeginBarrier(vk::Image image) {
    return {
        .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
        .image = image,
        .srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
        .dstStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
        .srcAccessMask = 0,
        .dstAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
        .oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
        .newLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
        .subresourceRange = {
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0, .levelCount = 1,
            .baseArrayLayer = 0, .layerCount = 1,
        },
    };
}

fn vk::ImageMemoryBarrier2 colorEndBarrier(vk::Image image) {
    return {
        .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
        .image = image,
        .srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
        .dstStageMask = vk::PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT,
        .srcAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
        .dstAccessMask = 0,
        .oldLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
        .newLayout = vk::IMAGE_LAYOUT_PRESENT_SRC_KHR,
        .subresourceRange = {
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0, .levelCount = 1,
            .baseArrayLayer = 0, .layerCount = 1,
        },
    };
}

fn vk::ImageMemoryBarrier2 depthBarrier(vk::Image image) {
    return {
        .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
        .image = image,
        .srcStageMask = vk::PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT | vk::PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT,
        .dstStageMask = vk::PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT | vk::PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT,
        .srcAccessMask = 0,
        .dstAccessMask = vk::ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT,
        .oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
        .newLayout = vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL,
        .subresourceRange = {
            .aspectMask = vk::IMAGE_ASPECT_DEPTH_BIT,
            .baseMipLevel = 0, .levelCount = 1,
            .baseArrayLayer = 0, .layerCount = 1,
        },
    };
}

fn vk::ImageMemoryBarrier2 transferBarrier(vk::Image image, vk::ImageLayout old_layout, vk::ImageLayout new_layout) {
    return {
        .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
        .image = image,
        .srcStageMask = vk::PIPELINE_STAGE_2_TRANSFER_BIT_KHR,
        .dstStageMask = vk::PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT,
        .srcAccessMask = vk::ACCESS_2_TRANSFER_WRITE_BIT,
        .dstAccessMask = vk::ACCESS_2_SHADER_READ_BIT,
        .oldLayout = old_layout,
        .newLayout = new_layout,
        .subresourceRange = {
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0, .levelCount = 1,
            .baseArrayLayer = 0, .layerCount = 1,
        },
    };
}

// ============================================================================
// Context init / free
// ============================================================================

fn Context? init(vk::Instance instance, vk::SurfaceKHR surface, ContextConfig config = {}) {
    Context ctx;
    ctx.instance = instance;
    ctx.surface = surface;

    uint frames = config.frames_in_flight != 0 ? config.frames_in_flight : 2;
    vk::Format preferred = config.preferred_format != 0 ? config.preferred_format : vk::FORMAT_B8G8R8A8_UNORM;

    // Required extensions
    vk::ZStringList device_extensions;
    defer device_extensions.free();
    device_extensions.push_all({ "VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_dynamic_rendering" });

    $switch (env::OS_TYPE):
        $case MACOS:
            device_extensions.push("VK_KHR_portability_subset");
        $default:
    $endswitch

    foreach (ext : config.extra_device_extensions) {
        device_extensions.push(ext);
    }

    // Select physical device
    vk::DeviceSelection selection = vk::selectPhysicalDevice(instance, surface, device_extensions)!;
    ctx.physical_device = selection.device;
    ctx.graphics_queue = { .index = selection.graphics_queue_index };
    ctx.transfer_queue = { .index = selection.transfer_queue_index };

    // Query device features (Vulkan 1.1/1.2/1.3 chain)
    vk::PhysicalDeviceVulkan13Features vulkan13_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES,
        .pNext = null,
    };

    vk::PhysicalDeviceVulkan12Features vulkan12_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES,
        .pNext = &vulkan13_features,
    };

    vk::PhysicalDeviceVulkan11Features vulkan11_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES,
        .pNext = &vulkan12_features,
    };

    vk::PhysicalDeviceFeatures2 device_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
        .pNext = &vulkan11_features,
    };

    vk::getPhysicalDeviceFeatures2(ctx.physical_device, &device_features);

    // Create logical device
    vk::DeviceQueueCreateInfo graphics_queue_info = vk::deviceQueueCreateInfo()
        .setQueueFamilyIndex(ctx.graphics_queue.index)
        .setQueuePriorities({ 1.0 });

    if (ctx.transfer_queue.index != ctx.graphics_queue.index) {
        vk::DeviceQueueCreateInfo transfer_queue_info = vk::deviceQueueCreateInfo()
            .setQueueFamilyIndex(ctx.transfer_queue.index)
            .setQueuePriorities({ 1.0 });

        ctx.device = vk::deviceCreateInfo()
            .setQueueCreateInfos({ graphics_queue_info, transfer_queue_info })
            .setEnabledExtensionNames(device_extensions.array_view())
            .setNext(&device_features)
            .build(ctx.physical_device)!;
    } else {
        ctx.device = vk::deviceCreateInfo()
            .setQueueCreateInfos({ graphics_queue_info })
            .setEnabledExtensionNames(device_extensions.array_view())
            .setNext(&device_features)
            .build(ctx.physical_device)!;
    }

    ctx.graphics_queue.handle = ctx.device.getQueue(ctx.graphics_queue.index);
    ctx.transfer_queue.handle = ctx.device.getQueue(ctx.transfer_queue.index);

    // Swapchain (no render pass = no framebuffers)
    ctx.swapchain.init(
        ctx.device,
        ctx.physical_device,
        surface,
        config.width,
        config.height,
        preferred_format: preferred,
    )!;

    // Frame sync — match swapchain image count to avoid index mismatch
    uint frame_count = frames > ctx.swapchain.image_count ? ctx.swapchain.image_count : frames;
    if (frame_count < ctx.swapchain.image_count) {
        frame_count = ctx.swapchain.image_count;
    }
    ctx.frame_sync.init(ctx.device, frame_count)!;

    // Memory allocator
    ctx.allocator = {
        .device = ctx.device,
        .pdevice = ctx.physical_device,
        .queue = &ctx.graphics_queue,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT,
    };
    ctx.allocator.init()!;

    // Command pool + buffers
    ctx.command_pool = ctx.device.createCommandPool(queue: ctx.graphics_queue.index)!;
    ctx.command_buffers = ctx.device.createCommandBuffers(ctx.command_pool, count: ctx.swapchain.image_count)!;

    // Optional depth buffer
    if (config.enable_depth) {
        ctx.createDepthResources(config.width, config.height)!;
        ctx.has_depth = true;
    }

    return ctx;
}

fn void? Context.createDepthResources(&self, uint width, uint height) {
    self.depth_format = vk::findDepthFormat(features: vk::FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT, device: self.physical_device);

    vk::Image depth_img = vk::imageCreateInfo()
        .setImageType(vk::IMAGE_TYPE_2D)
        .setFormat(self.depth_format)
        .setExtent({ .width = width, .height = height, .depth = 1 })
        .setMipLevels(1)
        .setArrayLayers(1)
        .setSamples(vk::SAMPLE_COUNT_1_BIT)
        .setTiling(vk::IMAGE_TILING_OPTIMAL)
        .setUsage(vk::IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT)
        .build(self.device)!;

    self.depth_image = depth_img;
    vk::Memory mem = vk::create_image_buffer(depth_img, &self.allocator, vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT)!;
    // Store on heap so pointer stays valid
    self.depth_memory = mem::new(vk::Memory, mem);

    self.depth_view = vk::imageViewCreateInfo()
        .setViewType(vk::IMAGE_VIEW_TYPE_2D)
        .setFormat(self.depth_format)
        .setSubresourceRange({
            .aspectMask = vk::IMAGE_ASPECT_DEPTH_BIT,
            .baseMipLevel = 0, .levelCount = 1,
            .baseArrayLayer = 0, .layerCount = 1,
        })
        .setImage(depth_img)
        .build(self.device)!;
}

fn void Context.destroyDepthResources(&self) {
    if (!self.has_depth) return;
    self.depth_view.free(self.device);
    self.depth_image.free(self.device);
    if (self.depth_memory != null) {
        mem::free(self.depth_memory);
    }
}

fn void Context.free(&self) {
    self.device.waitIdle();
    self.destroyDepthResources();
    self.swapchain.free(self.device);
    self.command_pool.free(self.device);
    self.allocator.free();
    self.frame_sync.free(self.device);
    self.device.free();
}

// ============================================================================
// Frame loop
// ============================================================================

fn vk::CommandBuffer? Context.beginFrame(&self, float[4] clear_color = { 0, 0, 0, 1 }) {
    uint next_image = self.frame_sync.beginFrame(self.device, self.swapchain.handle)!;
    self.current_image = next_image;

    vk::CommandBuffer cmd = self.command_buffers[next_image];
    vk::resetCommandBuffer(cmd, 0)!;
    vk::beginCommandBuffer(cmd, &&vk::commandBufferBeginInfo())!;

    // Begin barrier
    vk::ImageMemoryBarrier2 begin_barrier = colorBeginBarrier(self.swapchain.images[next_image]);
    vk::cmdPipelineBarrier2(cmd, &&vk::dependencyInfo().setImageMemoryBarriers({ begin_barrier }));

    // Color attachment
    vk::RenderingAttachmentInfo color_attachment = vk::renderingAttachmentInfo()
        .setImageView(self.swapchain.views[next_image])
        .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
        .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
        .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
        .setClearValue({ .color = { .float32 = clear_color } });

    // Rendering info
    vk::RenderingInfo rendering = vk::renderingInfo()
        .setRenderArea({ .extent = self.swapchain.extent })
        .setLayerCount(1)
        .setColorAttachments({ color_attachment });

    // Depth attachment (optional)
    vk::RenderingAttachmentInfo depth_attachment;
    if (self.has_depth) {
        vk::ImageMemoryBarrier2 depth_begin = depthBarrier(self.depth_image);
        vk::cmdPipelineBarrier2(cmd, &&vk::dependencyInfo().setImageMemoryBarriers({ depth_begin }));

        depth_attachment = vk::renderingAttachmentInfo()
            .setImageView(self.depth_view)
            .setImageLayout(vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL)
            .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
            .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
            .setClearValue({ .depthStencil = { 1.0, 0 } });
        rendering = rendering.setDepthAttachment(&depth_attachment);
    }

    vk::cmdBeginRendering(cmd, &rendering);

    // Set viewport (negative height for Y-flip) + scissor
    float width = (float)self.swapchain.extent.width;
    float height = (float)self.swapchain.extent.height;

    vk::cmdSetViewport(cmd, 0, 1, (vk::Viewport[]) {
        { .width = width, .height = -height, .minDepth = 0.0, .maxDepth = 1.0, .y = height }
    });
    vk::cmdSetScissor(cmd, 0, 1, (vk::Rect2D[]) {
        { .extent = self.swapchain.extent, .offset = { .x = 0, .y = 0 } }
    });

    return cmd;
}

fn void? Context.endFrame(&self) {
    vk::CommandBuffer cmd = self.command_buffers[self.current_image];

    vk::cmdEndRendering(cmd);

    // End barrier
    vk::ImageMemoryBarrier2 end_barrier = colorEndBarrier(self.swapchain.images[self.current_image]);
    vk::cmdPipelineBarrier2(cmd, &&vk::dependencyInfo().setImageMemoryBarriers({ end_barrier }));

    self.frame_sync.endFrame(self.graphics_queue.handle, cmd, self.swapchain.handle, self.current_image)!;
}

fn void? Context.resize(&self, uint width, uint height) {
    self.device.waitIdle();

    self.destroyDepthResources();

    self.swapchain.recreate(
        self.device,
        self.physical_device,
        self.surface,
        width,
        height,
    )!;

    // Recreate command buffers if image count changed
    if (self.command_buffers.len() != self.swapchain.image_count) {
        self.command_pool.free(self.device);
        self.command_pool = self.device.createCommandPool(queue: self.graphics_queue.index)!;
        self.command_buffers = self.device.createCommandBuffers(self.command_pool, count: self.swapchain.image_count)!;
    }

    if (self.has_depth) {
        self.createDepthResources(width, height)!;
    }
}

// ============================================================================
// Texture
// ============================================================================

fn Texture? Context.createTexture(&self, char[] pixels, uint width, uint height, TextureConfig config = {}) {
    vk::Format format = config.format != 0 ? config.format : vk::FORMAT_R8G8B8A8_SRGB;
    vk::Filter filter = config.filter != 0 ? config.filter : vk::FILTER_LINEAR;
    vk::SamplerAddressMode address_mode = config.address_mode != 0 ? config.address_mode : vk::SAMPLER_ADDRESS_MODE_REPEAT;

    // Create image
    vk::Image image = vk::imageCreateInfo()
        .setImageType(vk::IMAGE_TYPE_2D)
        .setFormat(format)
        .setExtent({ .width = width, .height = height, .depth = 1 })
        .setMipLevels(1)
        .setArrayLayers(1)
        .setSamples(vk::SAMPLE_COUNT_1_BIT)
        .setTiling(vk::IMAGE_TILING_OPTIMAL)
        .setUsage(vk::IMAGE_USAGE_TRANSFER_DST_BIT | vk::IMAGE_USAGE_SAMPLED_BIT)
        .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
        .build(self.device)!;

    // Allocate and bind memory
    vk::Memory mem = vk::create_image_buffer(image, &self.allocator, vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT)!;

    // Create staging buffer with pixel data
    vk::Memory stage = vk::new_buffer(
        &self.allocator,
        usage: vk::BUFFER_USAGE_TRANSFER_SRC_BIT,
        properties: vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_COHERENT_BIT,
        data: pixels.ptr,
        data_size: pixels.len,
    )!;

    // Transfer: transition layout, copy buffer to image, transition to shader read
    self.device.@single_time_command(queue: self.graphics_queue; vk::CommandBuffer cmd) {
        // UNDEFINED -> TRANSFER_DST
        vk::ImageMemoryBarrier2 to_transfer = {
            .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
            .image = image,
            .srcStageMask = vk::PIPELINE_STAGE_2_TOP_OF_PIPE_BIT,
            .dstStageMask = vk::PIPELINE_STAGE_2_TRANSFER_BIT_KHR,
            .srcAccessMask = 0,
            .dstAccessMask = vk::ACCESS_2_TRANSFER_WRITE_BIT,
            .oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
            .newLayout = vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
            .subresourceRange = {
                .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                .baseMipLevel = 0, .levelCount = 1,
                .baseArrayLayer = 0, .layerCount = 1,
            },
        };
        vk::cmdPipelineBarrier2(cmd, &&vk::dependencyInfo().setImageMemoryBarriers({ to_transfer }));

        // Copy buffer to image
        vk::BufferImageCopy region = {
            .bufferOffset = 0,
            .bufferRowLength = 0,
            .bufferImageHeight = 0,
            .imageSubresource = {
                .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                .mipLevel = 0,
                .baseArrayLayer = 0,
                .layerCount = 1,
            },
            .imageOffset = { 0, 0, 0 },
            .imageExtent = { width, height, 1 },
        };
        vk::cmdCopyBufferToImage(cmd, stage.buffer, image, vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &region);

        // TRANSFER_DST -> SHADER_READ_ONLY
        vk::ImageMemoryBarrier2 to_shader = transferBarrier(image, vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL);
        vk::cmdPipelineBarrier2(cmd, &&vk::dependencyInfo().setImageMemoryBarriers({ to_shader }));
    }!;

    stage.free();

    // Create image view
    vk::ImageView view = vk::imageViewCreateInfo()
        .setViewType(vk::IMAGE_VIEW_TYPE_2D)
        .setFormat(format)
        .setComponents({
            .r = vk::COMPONENT_SWIZZLE_IDENTITY,
            .g = vk::COMPONENT_SWIZZLE_IDENTITY,
            .b = vk::COMPONENT_SWIZZLE_IDENTITY,
            .a = vk::COMPONENT_SWIZZLE_IDENTITY,
        })
        .setSubresourceRange({
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0, .levelCount = 1,
            .baseArrayLayer = 0, .layerCount = 1,
        })
        .setImage(image)
        .build(self.device)!;

    // Create sampler
    vk::Sampler sampler = vk::samplerCreateInfo()
        .setMagFilter(filter)
        .setMinFilter(filter)
        .setAddressModeU(address_mode)
        .setAddressModeV(address_mode)
        .setAddressModeW(address_mode)
        .setMipmapMode(vk::SAMPLER_MIPMAP_MODE_LINEAR)
        .setMinLod(0.0)
        .setMaxLod(0.0)
        .setBorderColor(vk::BORDER_COLOR_INT_OPAQUE_BLACK)
        .build(self.device)!;

    Texture texture = {
        .image = image,
        .view = view,
        .sampler = sampler,
        .memory = mem::new(vk::Memory, mem),
        .format = format,
        .width = width,
        .height = height,
    };

    return texture;
}

fn void Texture.free(&self, vk::Device device) {
    vk::destroySampler(device, self.sampler, null);
    self.view.free(device);
    if (self.memory != null) {
        self.memory.free();
        mem::free(self.memory);
    }
}

// ============================================================================
// Pipeline
// ============================================================================

fn GraphicsPipeline? Context.createPipeline(&self, PipelineConfig config) {
    // Defaults
    vk::Format color_format = config.color_format != 0 ? config.color_format : self.swapchain.format.format;
    vk::PrimitiveTopology topology = config.topology != 0 ? config.topology : vk::PRIMITIVE_TOPOLOGY_TRIANGLE_LIST;
    vk::CullModeFlags cull_mode = config.cull_mode != 0 ? config.cull_mode : vk::CULL_MODE_BACK_BIT;
    vk::FrontFace front_face = config.front_face != 0 ? config.front_face : vk::FRONT_FACE_COUNTER_CLOCKWISE;

    // Load shader modules + create stage infos
    vk::ShaderModule[8] modules;
    vk::PipelineShaderStageCreateInfo[8] stages;
    uint stage_count = (uint)config.shaders.len;

    for (uint i = 0; i < stage_count; ++i) {
        modules[i] = vk::loadShaderModule(self.device, config.shaders[i].spirv)!;
        stages[i] = vk::pipelineShaderStageCreateInfo()
            .setStage(config.shaders[i].stage)
            .setMod(modules[i])
            .setName(config.shaders[i].entry_name);
    }

    // Pipeline layout
    vk::PipelineLayoutCreateInfo layout_info = vk::pipelineLayoutCreateInfo();
    if (config.descriptor_layouts.len > 0) {
        layout_info = layout_info.setSetLayouts(config.descriptor_layouts);
    }
    if (config.push_constant_ranges.len > 0) {
        layout_info = layout_info.setPushConstantRanges(config.push_constant_ranges);
    }
    vk::PipelineLayout pipeline_layout = layout_info.build(self.device)!;

    // Dynamic rendering (no render pass)
    vk::PipelineRenderingCreateInfo rendering_info = vk::pipelineRenderingCreateInfo()
        .setColorAttachmentFormats((vk::Format[]){ color_format });

    if (config.depth_format != 0) {
        rendering_info = rendering_info.setDepthAttachmentFormat(config.depth_format);
    }

    // Vertex input
    vk::PipelineVertexInputStateCreateInfo vertex_input = vk::pipelineVertexInputStateCreateInfo();
    if (config.vertex_bindings.len > 0) {
        vertex_input = vertex_input.setVertexBindingDescriptions(config.vertex_bindings);
    }
    if (config.vertex_attributes.len > 0) {
        vertex_input = vertex_input.setVertexAttributeDescriptions(config.vertex_attributes);
    }

    // Input assembly
    vk::PipelineInputAssemblyStateCreateInfo input_assembly = vk::pipelineInputAssemblyStateCreateInfo()
        .setTopology(topology)
        .setPrimitiveRestartEnable(vk::FALSE);

    // Rasterization
    vk::PipelineRasterizationStateCreateInfo rasterization = vk::defaultRasterizationState()
        .setCullMode(cull_mode)
        .setFrontFace(front_face);

    // Multisample
    vk::PipelineMultisampleStateCreateInfo multisample = vk::defaultMultisampleState();

    // Color blend
    vk::PipelineColorBlendAttachmentState blend_attachment = vk::defaultColorBlendAttachment();
    if (!config.blend_enable) {
        blend_attachment.blendEnable = vk::FALSE;
    }
    vk::PipelineColorBlendStateCreateInfo color_blend = vk::defaultColorBlendState((vk::PipelineColorBlendAttachmentState[]){ blend_attachment });

    // Depth stencil
    vk::PipelineDepthStencilStateCreateInfo depth_stencil = vk::defaultDepthStencilState();
    if (config.depth_test) {
        depth_stencil = depth_stencil.setDepthTestEnable(vk::TRUE);
    }
    if (config.depth_write) {
        depth_stencil = depth_stencil.setDepthWriteEnable(vk::TRUE);
    }

    // Dynamic state
    vk::DynamicState[2] dynamic_states = { vk::DYNAMIC_STATE_VIEWPORT, vk::DYNAMIC_STATE_SCISSOR };
    vk::PipelineDynamicStateCreateInfo dynamic_state = vk::pipelineDynamicStateCreateInfo()
        .setDynamicStates(dynamic_states[..]);

    // Viewport state (dynamic, count only)
    vk::PipelineViewportStateCreateInfo viewport_state = vk::pipelineViewportStateCreateInfo()
        .setViewportCount(1)
        .setScissorCount(1);

    // Build pipeline
    vk::Pipeline pipeline = vk::graphicsPipelineCreateInfo()
        .setNext(&rendering_info)
        .setStages(stages[:stage_count])
        .setVertexInputState(&vertex_input)
        .setInputAssemblyState(&input_assembly)
        .setViewportState(&viewport_state)
        .setRasterizationState(&rasterization)
        .setMultisampleState(&multisample)
        .setColorBlendState(&color_blend)
        .setDepthStencilState(&depth_stencil)
        .setDynamicState(&dynamic_state)
        .setLayout(pipeline_layout)
        .build(self.device)!;

    // Cleanup shader modules
    for (uint i = 0; i < stage_count; ++i) {
        modules[i].free(self.device);
    }

    return { .handle = pipeline, .layout = pipeline_layout };
}

fn void GraphicsPipeline.free(&self, vk::Device device) {
    self.handle.free(device);
    self.layout.free(device);
}

// ============================================================================
// Push descriptor layout helper
// ============================================================================

fn vk::DescriptorSetLayout? createPushDescriptorLayout(vk::Device device, vk::DescriptorSetLayoutBinding[] bindings) {
    return vk::descriptorSetLayoutCreateInfo()
        .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
        .setBindings(bindings)
        .build(device);
}

// ============================================================================
// Surface creation
// ============================================================================

fn vk::SurfaceKHR? createSurface(vk::Instance instance, c3w::Window* win) {
    void* surface = win.create_vk_surface(instance)!;
    return (vk::SurfaceKHR)surface;
}
