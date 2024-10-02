import std::io;
import std::collections::list;
import std::math;
import c3w;
import vk;
import camera;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = false;
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex {
    Vec3f pos;
    Vec4f color;
}

Vertex[] vertices = {
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

ushort[] indices = {
    0,  1,  2,      0,  2,  3,    // front
    4,  5,  6,      4,  6,  7,    // back
    8,  9,  10,     8,  10, 11,   // top
    12, 13, 14,     12, 14, 15,   // bottom
    16, 17, 18,     16, 18, 19,   // right
    20, 21, 22,     20, 22, 23    // left
};

Instance instance;
DebugUtilsMessengerEXT debug_messenger;
PhysicalDevice physical_device;
QueueFamily queue_family;
Device device;
SurfaceKHR surface;
SwapchainKHR swapchain;

ImageViewList swapchain_views;
vk::ImageList swapchain_images;

ZStringList validations;
ZStringList extensions;
ZStringList device_extensions;

fn void! main(String[] args)
{
    c3w::Window win = c3w::new(
        params: {
            .width = WIDTH,
            .height = HEIGHT,
            .x = 0,
            .y = 0
        },
        name: "Cube"
    );
    defer win.free();

    // io::printfn("connection %p window %d", win.src.connection, win.src.window);
    io::printfn("(Screen) width %d height %d", win.screen_info.width, win.screen_info.height);
    
    Camera camera = camera::new(eye: {0.0, 5.0, 10}, aspect: WIDTH / HEIGHT, min_zoom: 0.01, max_zoom: 1000);

    device_extensions.add_array({"VK_KHR_swapchain", "VK_KHR_push_descriptor"});
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    extensions.add_array({"VK_KHR_surface", "VK_EXT_debug_utils"});

    if (env::OS_TYPE == MACOS) {
        extensions.add_array({"VK_MVK_macos_surface", "VK_KHR_portability_enumeration"});
        device_extensions.push("VK_KHR_portability_subset");
    }

    if (env::OS_TYPE == WIN32) {
        extensions.add_array({"VK_KHR_win32_surface"});
    }

    if (env::OS_TYPE == LINUX) {
        extensions.add_array({"VK_KHR_xcb_surface"});
    }

    vk::checkInstanceExtensionSupport(extensions)!;

    InstanceCreateInfo instanceInfo = vk::instanceCreateInfo()
    .setApplicationInfo(&&ApplicationInfo{
      .pApplicationName = "TEST",
      .pEngineName = "Super engine",
      .applicationVersion = vk::@makeApiVersion(0,1,0,0),
      .engineVersion = vk::@makeApiVersion(0,1,0,0),
      .apiVersion = vk::@makeApiVersion(0,1,3,0)
    })
    .setFlags(env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0)
    .setEnabledExtensionNames(extensions.array_view());

    DebugUtilsMessengerCreateInfoEXT debug_info = DebugUtilsMessengerCreateInfoEXT {
        .sType = vk::STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
        .messageSeverity = vk::DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
        .messageType = vk::DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
        .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&vk::debugCallback
    };

    // Debug enabled
    if (ENABLE_VALIDATION_LAYERS) {
      vk::checkValidationLayersSupport(validations)!!;
      instanceInfo.enabledLayerCount = (uint)validations.len();
      instanceInfo.ppEnabledLayerNames = (char*)validations.entries;
    }

    vk::createInstance(&instanceInfo, null, &instance)!!;
    vk::loadExtensions(instance);

    if (ENABLE_VALIDATION_LAYERS) {
        debug_messenger = debug_info.build(instance)!!;
    }

    // Create surface
    $switch(env::OS_TYPE)
        $case MACOS:
        $case LINUX: {
            XcbSurfaceCreateInfoKHR createInfo = {
                vk::STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR, 
                null, 
                0, 
                win.src.connection,
                win.src.window,
            };

            vk::createXcbSurfaceKHR(instance, &createInfo, null, &surface)!!;
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
    bool found_device = false;

    foreach (entry: devices) {
        QueueFamily queue;
        // Check for device extension support
        bool supports_extensions = entry.checkExtensionSupport(device_extensions)!!;
        QueuePropertiesList queue_properties = entry.getQueueProperties()!!;

        queue.graphics = queue_properties.find(fn (usz index, QueueFamilyProperties props) => (QueueFlagBits)props.queueFlags & vk::QUEUE_GRAPHICS_BIT != 0);
        if (surface.checkSurfaceSupport(queue.graphics, entry)!!) queue.present = queue.graphics;

        if (queue.is_ready() && supports_extensions) {
            physical_device = entry;
            queue_family = queue;
            found_device = true;
        }
    }

    devices.free();

    if (!found_device) {
      io::printfn("Did not found suitable device!");
      return;
    }

    // // Setup Vulkan extensions configuration
    PhysicalDeviceProperties2 deviceProps2 = vk::physicalDeviceProperties2()
                                                .setNext(&&vk::physicalDevicePushDescriptorProperties().setMaxPushDescriptors(1));

	vk::getPhysicalDeviceProperties2(physical_device, &deviceProps2);

	PhysicalDeviceDescriptorIndexingFeatures device_indexing_feature = {
		.sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES,
	};

	PhysicalDeviceBufferDeviceAddressFeatures buffer_device_feature = {
		.sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES,
		.pNext = &device_indexing_feature,
		.bufferDeviceAddress = vk::TRUE,
		.bufferDeviceAddressCaptureReplay = vk::TRUE
	};
	PhysicalDeviceSynchronization2Features syncronisation2_feature = {
		.sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES,
		.pNext = &buffer_device_feature,
		.synchronization2 = vk::TRUE
	};

	PhysicalDeviceFeatures2 device_features = {
		.sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
		.pNext = &syncronisation2_feature,
	};

	vk::getPhysicalDeviceFeatures2(physical_device, &device_features);

	DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfo()
	.setQueueFamilyIndex(queue_family.graphics)
	.setQueuePriorities({1.0});

	device = vk::deviceCreateInfo()
		.setQueueCreateInfos({ graphicsInfo })
		.setEnabledExtensionNames(device_extensions.array_view())
		.setNext(&device_features)
		.build(physical_device)!;

	queue_family.graphics_handle = device.getQueue(queue_family.graphics);

	SurfaceFormatList surface_formats = surface.getFormats(physical_device)!;
	PresentModeList present_modes = surface.getPresentModes(physical_device)!;
	SurfaceCapabilitiesKHR capabilities = surface.deviceSurfaceCapabilities(physical_device)!;

	defer {
		surface_formats.free();
		present_modes.free();
	}

	vk::Format depth_format = vk::findDepthFormat(features: vk::FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT, device: physical_device);
    SurfaceFormatKHR format = SurfaceFormatKHR {.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR};
    Extent2D extent = {.width = (uint)WIDTH, .height = (uint)HEIGHT };

    uint min_images = capabilities.maxImageCount != 0 ? capabilities.maxImageCount : capabilities.minImageCount + 2;

    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfo()
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
      .setImageExtent({ .width = (uint)WIDTH, .height = (uint)HEIGHT });

    swapchain = swapchain_info.build(device)!;
    swapchain_images = swapchain.getImages(device, swapchain_info.minImageCount)!;

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
        .build(device)!;

        swapchain_views.push(view);
    }

    // Create command pool
    CommandPool command_pool = device.createCommandPool(queue: queue_family.graphics)!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain_info.minImageCount)!;

    // Create allocator of 50MB - DEVICE_ONLY memory
    vk::Allocation device_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
        .size = 50_000_000
    }.build()!;

    // Allocation where data can be changed from CPU
    vk::Allocation local_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
        .size = 20_000_000
    }.build()!;

    // Create buffers, using only memory of the allocator
    MemoryBlock vertex_buffer = vk::bufferCreateInfo()
               .setUsage(vk::BUFFER_USAGE_VERTEX_BUFFER_BIT | vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT)
               .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
               .setSize(Vertex.sizeof * vertices.len)
               .bind(&device_allocation)!;

    MemoryBlock index_buffer = vk::bufferCreateInfo()
                .setUsage(vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT)
                .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                .setSize(indices.len * ushort.sizeof)
                .bind(&device_allocation)!;

    MemoryBlock uniform_buffer = vk::bufferCreateInfo()
                .setUsage(vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT)
                .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                .setSize(UniformData.sizeof)
                .bind(&local_allocation)!;

    // Create stage buffers and then copy the data to GPU only buffers
    MemoryBlock vertex_stage_buffer = device.staging_buffer(size: Vertex.sizeof * vertices.len, data: vertices, pdevice: physical_device)!;
    MemoryBlock index_stage_buffer = device.staging_buffer(size: ushort.sizeof * indices.len, data: indices, pdevice: physical_device)!;    

    device.@single_time_command(queue: queue_family.graphics_handle, queue_index: queue_family.graphics; CommandBuffer command_buffer) {
         vk::cmdCopyBuffer(command_buffer, index_stage_buffer.buffer, index_buffer.buffer, 1, &&BufferCopy {
             .srcOffset = 0,
             .dstOffset = 0,
             .size = ushort.sizeof * indices.len
         });

         vk::cmdCopyBuffer(command_buffer, vertex_stage_buffer.buffer, vertex_buffer.buffer, 1, &&BufferCopy {
            .srcOffset = 0,
            .dstOffset = 0,
            .size = Vertex.sizeof * vertices.len
         });
    }!;

    index_stage_buffer.free(device);
    vertex_stage_buffer.free(device);

    // Add data for uniform buffer
    uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size, device);

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
        }).build(device)!;

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

    // Load shaders
    char[*] vertex_shader_data = $embed("./shaders/cube_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/cube_frag.spv");

    Shader draw_shaders = device.createShader(vertex: &vertex_shader_data, fragment: &fragment_shader_data)!;

    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfo().setSetLayouts({ descriptor_set_layout }).build(device)!;

    SubpassDescription subpass = {
            .pipelineBindPoint = vk::PIPELINE_BIND_POINT_GRAPHICS,
            .colorAttachmentCount = 1,
            .pColorAttachments = &&AttachmentReference{
            .attachment = 0,
            .layout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
        }
    };

    RenderPass render_pass = vk::renderPassCreateInfo()
    .setAttachments({
        AttachmentDescription {
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
    .build(device)!;

    // Create Renderpipeline info
    Pipeline pipeline = vk::graphicsPipelineCreateInfo()
    .setStages(&draw_shaders.stages)
    .setLayout(pipeline_layout)
     .setVertexInputState(&&vk::pipelineVertexInputStateCreateInfo()
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
       &&vk::pipelineDynamicStateCreateInfo()
        .setDynamicStates(
        {
            vk::DYNAMIC_STATE_VIEWPORT,
            vk::DYNAMIC_STATE_LINE_WIDTH,
        })
    )
    .setRasterizationState(
        &&vk::pipelineRasterizationStateCreateInfo()
        .setDepthClampEnable(vk::FALSE)
        .setRasterizerDiscardEnable(vk::FALSE)
        .setPolygonMode(vk::POLYGON_MODE_FILL)
        .setLineWidth(1.0)
        .setCullMode(vk::CULL_MODE_FRONT_BIT)
        .setFrontFace(vk::FRONT_FACE_COUNTER_CLOCKWISE)
        .setDepthBiasEnable(vk::FALSE)
    )
    .setInputAssemblyState(&&vk::pipelineInputAssemblyStateCreateInfo().setTopology(vk::PRIMITIVE_TOPOLOGY_TRIANGLE_LIST))
    .setMultisampleState(&&vk::pipelineMultisampleStateCreateInfo()
                      .setSampleShadingEnable(vk::FALSE)
                      .setRasterizationSamples(vk::SAMPLE_COUNT_1_BIT)
                      .setMinSampleShading(1.0)
                      .setAlphaToCoverageEnable(vk::FALSE)
                      .setAlphaToOneEnable(vk::FALSE))
    .setDepthStencilState(&&vk::pipelineDepthStencilStateCreateInfo()
                        .setDepthTestEnable(vk::FALSE)
                        .setDepthWriteEnable(vk::FALSE)
                        .setDepthCompareOp(vk::COMPARE_OP_LESS_OR_EQUAL)
                        .setBack({.compareOp = vk::COMPARE_OP_ALWAYS}))
    .setColorBlendState(&&vk::pipelineColorBlendStateCreateInfo()
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
    .setViewportState(&&vk::pipelineViewportStateCreateInfo()
                   .setViewports({{ .x = 0.0, .y = 0.0, .width = swapchain_info.imageExtent.width, .height = swapchain_info.imageExtent.height, .minDepth = 0.0, .maxDepth = 1.0 }})
                   .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = swapchain_info.imageExtent }}))
    .setRenderPass(render_pass)
    .build(device)!;


    FrameBufferList frame_buffers = device.createFrameBuffers(
        &&FramebufferCreateInfo {
            .sType = vk::STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
            .renderPass = render_pass,
            .attachmentCount = 1,
            .width = WIDTH,
            .height = HEIGHT,
            .layers = 1,
        },
        swapchain_views
    )!;

    defer frame_buffers.free();

    // Create syncronisation stuff
    SemaphoreList wait_semaphores;
    SemaphoreList signal_semaphores;
    FenceList frame_fences;

    for (uint i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        wait_semaphores.push(vk::semaphoreCreateInfo().build(device))!;
        signal_semaphores.push(vk::semaphoreCreateInfo().build(device))!;
        frame_fences.push(vk::fenceCreateInfo().setFlags(vk::FENCE_CREATE_SIGNALED_BIT).build(device))!;
    }
    
    bool running = true;
    uint frame = 0;

    MouseParams last_params;

    while (running) {
        c3w::Event event = win.getEvent();
        if (win.left_click) {
           MouseParams params = c3w::getMousePos(win);
           camera.rotate((float)params.x - last_params.x, -((float)params.y - last_params.y));
           uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size, device);
           last_params = params;
        }
        
        switch (event.type) {
            case c3w::MOUSE_RELEASED: {}
            case c3w::KEY_PRESSED: {
                if (event.value == c3w::ESCAPE) running = false;
            }
        }

        Fence frame_fence = frame_fences[frame];
        Semaphore wait_semaphore = wait_semaphores[frame];
        Semaphore signal_semaphore = signal_semaphores[frame];

        frame_fence.wait(device)!;
        frame_fence.reset(device)!;

        uint next_image = swapchain.getNextImage(device, wait_semaphore);

        RenderPassBeginInfo render_pass_info = vk::renderPassBeginInfo()
        .setFramebuffer(frame_buffers[next_image])
        .setRenderPass(render_pass)
        .setRenderArea({
            .offset = {0, 0},
            .extent = extent
        })
        .setClearValues({
            ClearValue {
                .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
            }
        });

        CommandBuffer command_buffer = command_buffers[next_image];
        vk::resetCommandBuffer(command_buffer, 0)!;
        vk::beginCommandBuffer(command_buffer, &&vk::commandBufferBeginInfo())!;

        vk::cmdBeginRenderPass(command_buffer, &render_pass_info, vk::SUBPASS_CONTENTS_INLINE);
        vk::cmdSetViewport(command_buffer, 0, 1, &&vk::Viewport{.width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 });
        vk::cmdSetScissor(command_buffer, 0, 1, &&vk::Rect2D {.extent = swapchain_info.imageExtent, .offset = Offset2D{ .x = 0, .y = 0 }});

        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, 1, &descriptorSets[0]);

        vk::cmdBindVertexBuffers(command_buffer, 0, 1, &&vk::Buffer[1]{vertex_buffer.buffer}, &&vk::DeviceSize[1]{0});
        vk::cmdBindIndexBuffer(command_buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
        vk::cmdDrawIndexed(command_buffer, indices.len, 1, 0, 0, 0);
        vk::cmdEndRenderPass(command_buffer);
  
        SubmitInfo submit_info = vk::submitInfo()
        .setWaitSemaphores({ wait_semaphore })
        .setCommandBuffers({ command_buffer })
        .setSignalSemaphores({ signal_semaphore })
        .setWaitDstStageMask({vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT});

        vk::endCommandBuffer(command_buffer)!;
        vk::queueSubmit(queue_family.graphics_handle, 1, &submit_info, frame_fence)!;

        PresentInfoKHR present_info = vk::presentInfo()
        .setWaitSemaphores({ signal_semaphore })
        .setSwapchains({ swapchain })
        .setImageIndices({ next_image });

        vk::queuePresentKHR(queue_family.graphics_handle, &present_info)!;
        frame = (frame + 1) % 2;
    }

    device.waitIdle();
    if (ENABLE_VALIDATION_LAYERS) debug_messenger.free(instance);

    swapchain.free(device);
    foreach (view : swapchain_views) view.free(device);
    foreach (buffer : frame_buffers) buffer.free(device);
    swapchain_images.free();
    swapchain_views.free();
    command_pool.free(device);

    device_allocation.free();
    local_allocation.free();
    
    descriptor_set_layout.free(device);
    draw_shaders.free(device);
    pipeline.free(device);
    pipeline_layout.free(device);

    wait_semaphores.release(device);
    signal_semaphores.release(device);
    frame_fences.release(device);
    surface.free(instance);

    device.free();
    instance.free();

}