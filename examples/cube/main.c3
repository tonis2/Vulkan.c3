import std::io;
import std::collections::list;
import std::math;
import c3w;
import vk;
import camera;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex {
    Vec3f pos;
    Vec4f color;
}

Vertex[] vertices = {
     {{-1.0, -1.0, 1.0}, {1.0, 0, 0, 1.0}},
     {{1.0, -1.0, 1.0}, {1.0, 0, 0, 1.0}},
     {{1.0, 1.0, 1.0}, {1.0, 0, 0, 1.0}},
     {{-1.0, 1.0, 1.0}, {1.0, 0, 0, 1.0}},

     {{-1.0, -1.0, -1.0}, {255, 255, 255, 1.0}},
     {{-1.0, 1.0, -1.0}, {255, 255, 255, 1.0}},
     {{1.0, 1.0, -1.0}, {255, 255, 255, 1.0}},
     {{1.0, -1.0, -1.0}, {255, 255, 255, 1.0}},

     {{-1.0, 1.0, -1.0}, {0.7, 0.8, 150, 1.0}},
     {{-1.0, 1.0, 1.0}, {0.7, 0.8, 150, 1.0}},
     {{1.0, 1.0, 1.0}, {0.7, 0.8, 150, 1.0}},
     {{1.0, 1.0, -1.0}, {0.7, 0.8, 150, 1.0}},

     {{-1.0, -1.0, -1.0}, {0.0, 128, 255, 1.0}},
     {{1.0, -1.0, -1.0}, {0.0, 128, 255, 1.0}},
     {{1.0, -1.0, 1.0}, {0.0, 128, 255, 1.0}},
     {{-1.0, -1.0, 1.0}, {0.0, 128, 255, 1.0}},

     {{1.0, -1.0, -1.0}, {0.0, 100.0, 0.0, 1.0}},
     {{1.0, 1.0, -1.0}, {0.0, 100.0, 0.0, 1.0}},
     {{1.0, 1.0, 1.0}, {0.0, 100.0, 0.0, 1.0}},
     {{1.0, -1.0, 1.0}, {0.0, 100.0, 0.0, 1.0}},

     {{-1.0, -1.0, -1.0}, {0.2, 0.2, 0.2, 1.0}},
     {{-1.0, -1.0, 1.0}, {0.2, 0.2, 0.2, 1.0}},
     {{-1.0, 1.0, 1.0}, {0.2, 0.2, 0.2, 1.0}},
     {{-1.0, 1.0, -1.0}, {0.2, 0.2, 0.2, 1.0}},
};

ushort[] indices = {
    0,  1,  2,      0,  2,  3,    // front
    4,  5,  6,      4,  6,  7,    // back
    8,  9,  10,     8,  10, 11,   // top
    12, 13, 14,     12, 14, 15,   // bottom
    16, 17, 18,     16, 18, 19,   // right
    20, 21, 22,     20, 22, 23    // left
};

// Shader data
char[*] shader = $embed("./shaders/shader.spv");

Instance instance;
PhysicalDevice physical_device;
DeviceQueue graphics_queue;
Device device;
SurfaceKHR surface;
SwapchainKHR swapchain;

ImageViewList swapchain_views;
vk::ImageList swapchain_images;

ZStringList validations;
ZStringList extensions;
ZStringList device_extensions;

fn void main(String[] args)
{
    c3w::Window win = c3w::new(
        params: {
            .width = WIDTH,
            .height = HEIGHT,
            .x = 0,
            .y = 0
        },
        name: "Cube"
    )!!;
    defer win.free();
    
    Camera camera = camera::new(eye: {0.0, 5.0, 10}, aspect: WIDTH / HEIGHT, min_zoom: 0.01, max_zoom: 1000);
    
    device_extensions.push_all({"VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_shader_non_semantic_info"});
    extensions.push_all({"VK_KHR_surface"});

    if (env::OS_TYPE == MACOS) {
        extensions.push_all({"VK_EXT_metal_surface", "VK_KHR_portability_enumeration"});
        device_extensions.push("VK_KHR_portability_subset");
    }

    if (env::OS_TYPE == WIN32) {
        extensions.push_all({"VK_KHR_win32_surface"});
    }

    if (env::OS_TYPE == LINUX) {
        $if $feature(WAYLAND):
            extensions.push_all({"VK_KHR_wayland_surface"});
        $endif

        $if $feature(X11):
            extensions.push_all({"VK_KHR_xcb_surface"});
        $endif
    }

    vk::checkInstanceExtensionSupport(extensions)!!;

    ApplicationInfo info = {
      .pApplicationName = "TEST",
      .pEngineName = "Super engine",
      .applicationVersion = vk::@makeApiVersion(0,1,0,0),
      .engineVersion = vk::@makeApiVersion(0,1,0,0),
      .apiVersion = vk::@makeApiVersion(0,1,3,0)
    };

    InstanceCreateInfo instanceInfo = vk::instanceCreateInfo()
    .setApplicationInfo(&info)
    .setFlags(env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0)
    .setEnabledExtensionNames(extensions.array_view());

    if (catch err = vk::createInstance(&instanceInfo, null, &instance)) {
        io::printfn("Extension error");
        return;
    }

    vk::loadExtensions(instance);

    // Create surface
    $switch(env::OS_TYPE):
        $case MACOS:
            MetalSurfaceCreateInfoEXT createInfo = {
                .sType = vk::STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT,
                .pLayer = (CAMetalLayer*)win.src.layer.id
            };

            vk::createMetalSurfaceEXT(instance, &createInfo, null, &surface)!!;
        $case LINUX: {
            $if $feature(WAYLAND):
                WaylandSurfaceCreateInfoKHR createInfo = {
                    vk::STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR, 
                    null, 
                    0, 
                    win.src.display,
                    win.src.surface,
                };
                vk::createWaylandSurfaceKHR(instance, &createInfo, null, &surface)!!;
            $endif

            $if $feature(X11):
                XcbSurfaceCreateInfoKHR createInfo = {
                    vk::STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR, 
                    null, 
                    0, 
                    win.src.connection,
                    (vk::Window)win.src.window,
                };
                vk::createXcbSurfaceKHR(instance, &createInfo, null, &surface)!!;
            $endif
        }
        $case WIN32: {
            Win32SurfaceCreateInfoKHR createInfo = {
                vk::STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
                null,
                0,
                win.src.instance,
                win.src.window
            };
            vk::createWin32SurfaceKHR(instance, &createInfo, null, &surface)!!;
        }
        $default: {}
    $endswitch

    DeviceList devices = instance.getDevices()!!;

    foreach (entry: devices) {
        int queue_index = -1;
        // Check for device extension support
        bool supports_extensions = entry.checkExtensionSupport(device_extensions)!!;
        QueuePropertiesList queue_properties = entry.getQueueProperties()!!;

        queue_index = queue_properties.find(fn (usz index, QueueFamilyProperties props) => 
        (QueueFlagBits)props.queueFlags & vk::QUEUE_GRAPHICS_BIT != 0 && (QueueFlagBits)props.queueFlags & vk::QUEUE_TRANSFER_BIT);

        PhysicalDeviceProperties properties;
        vk::getPhysicalDeviceProperties(entry, &properties);
        assert(surface.checkSurfaceSupport((usz)queue_index, entry)!!);
        
        if (queue_index >= 0 && supports_extensions && properties.vendorID != 0) {
            io::printfn("Device selected %s", (ZString)properties.deviceName[0..]);
            physical_device = entry;
            graphics_queue.index = queue_index;
            break;
        }
    }

    if (physical_device == null) {
        io::printfn("Found no suitable device");
        return;
    }

    devices.free();

   PhysicalDeviceVulkan13Features vulkan13Features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES,
        .pNext = null,
    };

    PhysicalDeviceVulkan12Features vulkan12Features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES,
        .pNext = &vulkan13Features,
    };

    PhysicalDeviceVulkan11Features vulkan11Features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES,
        .pNext = &vulkan12Features,
    };

    PhysicalDeviceFeatures2 device_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
        .pNext = &vulkan11Features,
    };

    vk::getPhysicalDeviceFeatures2(physical_device, &device_features);

	DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfo()
	.setQueueFamilyIndex(graphics_queue.index)
	.setQueuePriorities({1.0});

	device = vk::deviceCreateInfo()
		.setQueueCreateInfos({ graphicsInfo })
		.setEnabledExtensionNames(device_extensions.array_view())
		.setNext(&device_features)
		.build(physical_device)!!;


    defer {
        device.free();
        instance.free();
    }

    graphics_queue.handle = device.getQueue(graphics_queue.index);

	SurfaceFormatList surface_formats = surface.getFormats(physical_device)!!;
	PresentModeList present_modes = surface.getPresentModes(physical_device)!!;
	SurfaceCapabilitiesKHR capabilities = surface.deviceSurfaceCapabilities(physical_device)!!;

	defer {
		surface_formats.free();
		present_modes.free();
	}

	vk::Format depth_format = vk::findDepthFormat(features: vk::FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT, device: physical_device);
    SurfaceFormatKHR format = {.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR};

    uint min_images = capabilities.maxImageCount != 0 ? capabilities.maxImageCount : capabilities.minImageCount + 2;
    Extent2D extent = { WIDTH, HEIGHT};

    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfoKHR()
      .setMinImageCount(min_images)
      .setImageUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
      .setImageSharingMode(vk::SHARING_MODE_EXCLUSIVE)
      .setCompositeAlpha(vk::COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
      .setPresentMode(vk::PRESENT_MODE_FIFO_KHR)
      .setPreTransform(capabilities.currentTransform)
      .setImageColorSpace(format.colorSpace)
      .setImageFormat(format.format)
      .setSurface(surface)
      .setImageArrayLayers(1)
      .setImageExtent(extent);

    swapchain = swapchain_info.build(device)!!;
    swapchain_images = swapchain.getImages(device, swapchain_info.minImageCount)!!;

    for (int i = 0; i < swapchain_info.minImageCount; ++i) {
        ImageView view = vk::imageViewCreateInfo()
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
        .build(device)!!;

        swapchain_views.push(view);
    }

    //Create command pool
    CommandPool command_pool = device.createCommandPool(queue: graphics_queue.index)!!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain_info.minImageCount)!!;

    // Single allocator manages everything
    vk::Allocator allocator = (vk::Allocator){
        .device = device,
        .pdevice = physical_device,
        .queue = &graphics_queue,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
    }.init()!!;

    Memory vertex_buffer = vk::new_buffer(
		allocator: &allocator,
        usage: vk::BUFFER_USAGE_VERTEX_BUFFER_BIT,
        properties: vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        data: vertices.ptr,
        data_size: Vertex.sizeof * vertices.len
    )!!;

    Memory index_buffer = vk::new_buffer(
		allocator: &allocator,
        usage: vk::BUFFER_USAGE_INDEX_BUFFER_BIT,
        properties: vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        data: indices.ptr,
        data_size: indices.len * ushort.sizeof
    )!!;

    Memory uniform_buffer = vk::new_buffer(
		allocator: &allocator,
        usage: vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT,
        properties: vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
        data: &&camera.matrix(),
        data_size: UniformData.sizeof
    )!!;   

    // Set-up descriptor info for uniform buffer usage
    DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfo()
        .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
        .setBindings({
            {
                .binding = 0,
                .descriptorType = vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER,
                .descriptorCount = 1,
                .stageFlags = vk::SHADER_STAGE_VERTEX_BIT
            }
        }).build(device)!!;

    WriteDescriptorSet[] descriptorSets = {
            vk::writeDescriptorSet()
            .setDescriptorType(vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER)
            .setBufferInfo({
              {
                   .buffer = uniform_buffer.buffer,
                   .offset = 0,
                   .range = UniformData.sizeof,
               },
           })
    };

    // Create shader module
    ShaderModule shader_module = vk::shaderModuleCreateInfo()
    .setCodeSize(shader.len)
    .setCode((uint*)&shader[0])
    .build(device)!!;

    defer shader_module.free(device);

    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfo().setSetLayouts({ descriptor_set_layout }).build(device)!!;

    AttachmentReference[] colorAttachments = {
        { .attachment = 0, .layout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL }
    };

    SubpassDescription subpass = {
        .pipelineBindPoint = vk::PIPELINE_BIND_POINT_GRAPHICS,
        .colorAttachmentCount = colorAttachments.len,
        .pColorAttachments = colorAttachments.ptr
    };

    RenderPass render_pass = vk::renderPassCreateInfo()
    .setAttachments({
        {
            .format = swapchain_info.imageFormat,
            .samples = vk::SAMPLE_COUNT_1_BIT,
            .initialLayout = vk::IMAGE_LAYOUT_UNDEFINED,
            .finalLayout = vk::IMAGE_LAYOUT_PRESENT_SRC_KHR,
            .loadOp = vk::ATTACHMENT_LOAD_OP_CLEAR,
            .storeOp = vk::ATTACHMENT_STORE_OP_STORE,
            .stencilLoadOp = vk::ATTACHMENT_LOAD_OP_DONT_CARE,
            .stencilStoreOp = vk::ATTACHMENT_STORE_OP_DONT_CARE
        }
    })
    .setSubpasses({subpass})
    .build(device)!!;

    // Create Renderpipeline info
    // Declare arrays as local variables to keep them in scope until build() is called
    PipelineShaderStageCreateInfo[2] shader_stages = {
        vk::pipelineShaderStageCreateInfo()
            .setStage(vk::SHADER_STAGE_VERTEX_BIT)
            .setMod(shader_module)
            .setName("vertexMain"),
        vk::pipelineShaderStageCreateInfo()
            .setStage(vk::SHADER_STAGE_FRAGMENT_BIT)
            .setMod(shader_module)
            .setName("fragmentMain")
    };

    VertexInputBindingDescription[1] binding_descriptions = {{
        .binding = 0,
        .stride = Vertex.sizeof,
        .inputRate = vk::VERTEX_INPUT_RATE_VERTEX,
    }};

    VertexInputAttributeDescription[2] attribute_descriptions = {
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
    };

    DynamicState[2] dynamic_states = {
        vk::DYNAMIC_STATE_VIEWPORT,
        vk::DYNAMIC_STATE_LINE_WIDTH,
    };

    Viewport[1] viewports = {{
        .x = 0.0, .y = 0.0,
        .width = swapchain_info.imageExtent.width,
        .height = swapchain_info.imageExtent.height,
        .minDepth = 0.0, .maxDepth = 1.0
    }};

    Rect2D[1] scissors = {{
        .offset = { .x = 0, .y = 0 },
        .extent = swapchain_info.imageExtent
    }};

    PipelineColorBlendAttachmentState[1] color_blend_attachments = {{
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
    }};

    PipelineVertexInputStateCreateInfo vertex_input_state = vk::pipelineVertexInputStateCreateInfo()
        .setVertexBindingDescriptions(binding_descriptions[..])
        .setVertexAttributeDescriptions(attribute_descriptions[..]);

    PipelineDynamicStateCreateInfo dynamic_state = vk::pipelineDynamicStateCreateInfo()
        .setDynamicStates(dynamic_states[..]);

    PipelineRasterizationStateCreateInfo rasterization_state = vk::pipelineRasterizationStateCreateInfo()
        .setDepthClampEnable(vk::FALSE)
        .setRasterizerDiscardEnable(vk::FALSE)
        .setPolygonMode(vk::POLYGON_MODE_FILL)
        .setLineWidth(1.0)
        .setCullMode(vk::CULL_MODE_FRONT_BIT)
        .setFrontFace(vk::FRONT_FACE_COUNTER_CLOCKWISE)
        .setDepthBiasEnable(vk::FALSE);

    PipelineInputAssemblyStateCreateInfo input_assembly_state = vk::pipelineInputAssemblyStateCreateInfo()
        .setTopology(vk::PRIMITIVE_TOPOLOGY_TRIANGLE_LIST);

    PipelineMultisampleStateCreateInfo multisample_state = vk::pipelineMultisampleStateCreateInfo()
        .setSampleShadingEnable(vk::FALSE)
        .setRasterizationSamples(vk::SAMPLE_COUNT_1_BIT)
        .setMinSampleShading(1.0)
        .setAlphaToCoverageEnable(vk::FALSE)
        .setAlphaToOneEnable(vk::FALSE);

    PipelineDepthStencilStateCreateInfo depth_stencil_state = vk::pipelineDepthStencilStateCreateInfo()
        .setDepthTestEnable(vk::FALSE)
        .setDepthWriteEnable(vk::FALSE)
        .setDepthCompareOp(vk::COMPARE_OP_LESS_OR_EQUAL)
        .setBack({.compareOp = vk::COMPARE_OP_ALWAYS});

    PipelineColorBlendStateCreateInfo color_blend_state = vk::pipelineColorBlendStateCreateInfo()
        .setBlendConstants({ 0.0, 0.0, 0.0, 0.0 })
        .setLogicOp(vk::LOGIC_OP_COPY)
        .setAttachments(color_blend_attachments[..]);

    PipelineViewportStateCreateInfo viewport_state = vk::pipelineViewportStateCreateInfo()
        .setViewports(viewports[..])
        .setScissors(scissors[..]);

    Pipeline pipeline = vk::graphicsPipelineCreateInfo()
        .setStages(shader_stages[..])
        .setLayout(pipeline_layout)
        .setVertexInputState(&vertex_input_state)
        .setDynamicState(&dynamic_state)
        .setRasterizationState(&rasterization_state)
        .setInputAssemblyState(&input_assembly_state)
        .setMultisampleState(&multisample_state)
        .setDepthStencilState(&depth_stencil_state)
        .setColorBlendState(&color_blend_state)
        .setViewportState(&viewport_state)
        .setRenderPass(render_pass)
        .build(device)!!;

    FrameBufferList frame_buffers;
    
    foreach (swapchain: swapchain_views) {
       FramebufferCreateInfo frame_buffer_info = vk::framebufferCreateInfo()
        .setRenderPass(render_pass)
        .setWidth((uint)WIDTH)
        .setHeight((uint)HEIGHT)
        .setLayers(1)
        .setAttachments({ swapchain });
        frame_buffers.push(frame_buffer_info.build(device)!!);
    }

    // Create syncronisation stuff
    SemaphoreList image_available;
    SemaphoreList render_finished;
    FenceList frame_fences;

    for (uint i = 0; i < swapchain_info.minImageCount; ++i) {
        image_available.push(vk::semaphoreCreateInfo().build(device))!!;
        render_finished.push(vk::semaphoreCreateInfo().build(device))!!;
        frame_fences.push(vk::fenceCreateInfo().setFlags(vk::FENCE_CREATE_SIGNALED_BIT).build(device))!!;
    }
    
    bool running = true;
    uint frame = 0;

    Vec2f prev_mouse;
    while (running) {
        EventMap event_map = win.getEvent();

        if (event_map.is_pressed(LEFT_MOUSE)) {
            Vec2f mouse_pos = win.getMousePos();
            camera.rotate(mouse_pos.x - prev_mouse.x, (mouse_pos.y - prev_mouse.y));
            uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size);
            prev_mouse = mouse_pos;
        }

        if (event_map.is_pressed(MOUSE_SCROLL_UP)) {
            camera.zoom(5);
            uniform_buffer.upload(&&camera.matrix(), size: uniform_buffer.size);
        }

        if (event_map.is_pressed(MOUSE_SCROLL_DOWN)) {
            camera.zoom(-5);
            uniform_buffer.upload(&&camera.matrix(), size: uniform_buffer.size);
        }

        if (event_map.is_pressed(ESCAPE)) {
            running = false;
        }

        Fence frame_fence = frame_fences[frame];
        Semaphore available_semaphore = image_available[frame];
      

        frame_fence.wait(device)!!;
        frame_fence.reset(device)!!;

        uint next_image = swapchain.getNextImage(device, available_semaphore);

        Semaphore finished_semaphore = render_finished[next_image];

        RenderPassBeginInfo render_pass_info = vk::renderPassBeginInfo()
        .setFramebuffer(frame_buffers[next_image])
        .setRenderPass(render_pass)
        .setRenderArea({
            .offset = {0, 0},
            .extent = extent
        })
        .setClearValues({
            {
                .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
            }
        });

        CommandBuffer command_buffer = command_buffers[next_image];
        vk::resetCommandBuffer(command_buffer, 0)!!;
        vk::beginCommandBuffer(command_buffer, &&vk::commandBufferBeginInfo())!!;

        vk::cmdBeginRenderPass(command_buffer, &render_pass_info, vk::SUBPASS_CONTENTS_INLINE);
        vk::cmdSetViewport(command_buffer, 0, 1, (Viewport[]){{.width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 }});
        vk::cmdSetScissor(command_buffer, 0, 1,  (Rect2D[]){{.extent = swapchain_info.imageExtent, .offset = { .x = 0, .y = 0 }}});

        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, 1, &descriptorSets[0]);

        vk::cmdBindVertexBuffers(command_buffer, 0, 1, (Buffer[]){vertex_buffer.buffer}, (DeviceSize[]){0});
        vk::cmdBindIndexBuffer(command_buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
        vk::cmdDrawIndexed(command_buffer, indices.len, 1, 0, 0, 0);
        vk::cmdEndRenderPass(command_buffer);

        CommandBufferSubmitInfo cmd_info = vk::commandBufferSubmitInfo()
        .setCommandBuffer(command_buffer);

        SemaphoreSubmitInfo wait_info = vk::semaphoreSubmitInfo()
        .setSemaphore(available_semaphore)
        .setStageMask(vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT);

        SemaphoreSubmitInfo signal_info = vk::semaphoreSubmitInfo()
        .setSemaphore(finished_semaphore)
        .setStageMask(vk::PIPELINE_STAGE_2_ALL_COMMANDS_BIT);
  
        SubmitInfo2 submit_info = vk::submitInfo2()
        .setCommandBufferInfos({ cmd_info })
        .setWaitSemaphoreInfos({ wait_info })
        .setSignalSemaphoreInfos({ signal_info });

        vk::endCommandBuffer(command_buffer)!!;
        vk::queueSubmit2(graphics_queue.handle, 1, &submit_info, frame_fence)!!;

        PresentInfoKHR present_info = vk::presentInfoKHR()
        .setWaitSemaphores({ finished_semaphore })
        .setSwapchains({ swapchain })
        .setImageIndices({ next_image });

        vk::queuePresentKHR(graphics_queue.handle, &present_info)!!;
        frame = (frame + 1) % 2;
    }

    // Wait until Vulkan is finished, before freeing stuff
    device.waitIdle();

    swapchain.free(device);

    foreach (view : swapchain_views) view.free(device);
    foreach (buffer : frame_buffers) buffer.free(device);

    render_pass.free(device);
    swapchain_images.free();
    swapchain_views.free();
    command_pool.free(device);

    allocator.free();
    
    descriptor_set_layout.free(device);
    pipeline.free(device);
    pipeline_layout.free(device);

    image_available.release(device);
    render_finished.release(device);
    frame_fences.release(device);
    surface.free(instance);
}