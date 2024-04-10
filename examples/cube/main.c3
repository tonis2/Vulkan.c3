import std::io;
import vk;
import glfw;

import camera;
import std::math;
import std::collections::list;

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


ZStringList validations;
ZStringList extensions;
ZStringList device_extensions;

fn void! main()
{
    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

   defer {
        glfw::destroyWindow(window);
        glfw::terminate();
        validations.free();
        extensions.free();
        device_extensions.free();
    }

    if (window == null)
    {
        io::printfn("Failed to init glfw window");
        return;
    }

    EventHandler eventHandler = { .window = window };
    eventHandler.init();
    camera::Camera camera = camera::new(.eye = {0.0, 5.0, 10}, .aspect = 800/600, .min_zoom = 0.01, .max_zoom = 1000);

    //"VK_LAYER_LUNARG_api_dump"
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    device_extensions.add_array({"VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_dynamic_rendering"});

    // SETUP extensions
    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    for (int i = 0; i < glfwExtensions_count; ++i) extensions.push(glfwExtensions[i]);

    if (ENABLE_VALIDATION_LAYERS) {
     extensions.add_array({"VK_EXT_debug_utils"});
    }

    if (env::os_is_darwin()) {
      extensions.push("VK_KHR_portability_enumeration");
      device_extensions.push("VK_KHR_portability_subset");
    }

    vk::checkExtensionSupport(extensions)!;

    InstanceCreateInfo instanceInfo = vk::instanceCreateInfoBuilder()
    .setApplicationInfo(&&ApplicationInfo{
      .pApplicationName = "Hello GLTF",
      .pEngineName = "Super engine",
      .applicationVersion = vk::@makeApiVersion(0,1,0,0),
      .engineVersion = vk::@makeApiVersion(0,1,0,0),
      .apiVersion = VK_API_VERSION_1_3
    })
    .setFlags(env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0)
    .setEnabledExtensionNames(extensions.array_view());

    DebugUtilsMessengerCreateInfoEXT debug_info = vk::debugUtilsMessengerCreateInfoEXTBuilder()
             .setMessageSeverity(vk::DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT)
             .setMessageType(vk::DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT)
             .setPfnUserCallback((PFN_vkDebugUtilsMessengerCallbackEXT)&vk::debugCallback);

    // Debug enabled
    if (ENABLE_VALIDATION_LAYERS) {
      vk::checkValidationLayersSupport(validations)!;
      instanceInfo.enabledLayerCount = (uint)validations.len();
      instanceInfo.ppEnabledLayerNames = (char*)validations.entries;
    }

    vk::createInstance(&instanceInfo, null, &instance)!;
    vk::loadExtensions(instance);

    if (ENABLE_VALIDATION_LAYERS) {
     debug_messenger = debug_info.build(instance)!;
    }

    SurfaceKHR surface = glfw::createWindowSurface(instance, window, null)!;

    bool found_device = false;
    // Macro to find a valid device
    instance.@requestDevice(;PhysicalDevice pdevice) {
      QueueFamily queue;
      // Check for device extension support
      bool supports_extensions = pdevice.checkExtensionSupport(device_extensions)!;
      QueuePropertiesList queue_properties = pdevice.getQueueProperties()!;

      queue.graphics = queue_properties.find(fn (usz index, QueueFamilyProperties props) => (usz)props.queueFlags & vk::QUEUE_GRAPHICS_BIT != 0);
      if (surface.checkSurfaceSupport(queue.graphics, pdevice)!) queue.present = queue.graphics;

      // Good physical device found
      if (queue.is_ready() && supports_extensions) {
         // Device is good
         physical_device = pdevice;
         queue_family = queue;
         found_device = true;
      }
    }!;

    if (!found_device) {
      io::printfn("Did not found suitable device!");
      return;
    }

    DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfoBuilder()
    .setQueueFamilyIndex(queue_family.graphics)
    .setQueuePriorities({1.0});

    Device device = vk::deviceCreateInfoBuilder()
      .setQueueCreateInfos({graphicsInfo})
      .setEnabledFeatures(&vk::default_device_features)
      .setEnabledExtensionNames(device_extensions.array_view())
      .setEnabledLayerCount(0)
      .setNext(&&PhysicalDeviceDynamicRenderingFeatures{
         .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
         .dynamicRendering = vk::TRUE,
    }).build(physical_device)!;

    // Add actual queue handles to queue family, easier to keep them is one place
    queue_family.graphics_handle = device.getQueue(queue_family.graphics);

    SurfaceFormatList surface_formats = surface.getFormats(physical_device)!;
    PresentModeList present_modes = surface.getPresentModes(physical_device)!;
    SurfaceCapabilitiesKHR capabilities = surface.deviceSurfaceCapabilities(physical_device)!;

    defer {
      surface_formats.free();
      present_modes.free();
    }

    SurfaceFormatKHR format = SurfaceFormatKHR {.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR};

    uint min_images = capabilities.maxImageCount != 0 ? capabilities.maxImageCount : capabilities.minImageCount + 2;
    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfoKHRBuilder()
      .setMinImageCount(min_images)
      .setImageUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
      .setImageSharingMode(vk::SHARING_MODE_EXCLUSIVE)
      .setCompositeAlpha(vk::COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
      .setPresentMode(vk::PRESENT_MODE_MAILBOX_KHR)
      .setPreTransform(capabilities.currentTransform)
      .setImageColorSpace(format.colorSpace)
      .setImageFormat(format.format)
      .setSurface(surface)
      .setImageArrayLayers(1)
      .setImageExtent({ .width = WIDTH, .height = HEIGHT });

    SwapchainKHR swapchain = swapchain_info.buildKHR(device)!;
    ImageViewList swapchain_views;
    vk::ImageList swapchain_images = swapchain.getImages(device, swapchain_info.minImageCount)!;

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
      .build(device)!;
      swapchain_views.push(view);
    }

    CommandPool command_pool = device.createCommandPool(.queue = queue_family.graphics)!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain_info.minImageCount)!;

    // Create allocator of 10MB - DEVICE_ONLY memory
    vk::Allocation device_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        .size = 10_000_000
    }.build()!;

    // Allocation where data can be changed from CPU
    vk::Allocation local_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
        .size = 5_000_000
    }.build()!;

    // Create buffers, using only memory of the allocator
    MemoryBlock vertex_buffer = vk::bufferCreateInfoBuilder()
               .setUsage(vk::BUFFER_USAGE_VERTEX_BUFFER_BIT | vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT)
               .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
               .setSize(Vertex.sizeof * vertices.len)
               .bind(&device_allocation)!;

    MemoryBlock index_buffer = vk::bufferCreateInfoBuilder()
                .setUsage(vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT)
                .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                .setSize(indices.len * ushort.sizeof)
                .bind(&device_allocation)!;

    // Create stage buffers and then copy the data to GPU only buffers
    MemoryBlock vertex_stage_buffer = device.staging_buffer(.size = Vertex.sizeof * vertices.len, .data = vertices, .pdevice = physical_device)!;
    MemoryBlock index_stage_buffer = device.staging_buffer(.size = ushort.sizeof * indices.len, .data = indices, .pdevice = physical_device)!;

    device.@single_time_command(.queue = queue_family.graphics_handle, .queue_index = queue_family.graphics; CommandBuffer command_buffer) {
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

   MemoryBlock uniform_buffer = vk::bufferCreateInfoBuilder()
               .setUsage(vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT)
               .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
               .setSize(UniformData.sizeof)
               .bind(&local_allocation)!;

    // Add data for uniform buffer
    uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size, device);

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
        }).build(device)!;

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

    vk::getPhysicalDeviceProperties2(physical_device, &deviceProps2);

    // Load shaders
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    Shader draw_shaders = device.createShader(.vertex = &vertex_shader_data, .fragment = &fragment_shader_data)!;

    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfoBuilder().setSetLayouts({ descriptor_set_layout }).build(device)!;

    // Create Renderpipeline info
    GraphicsPipelineCreateInfo pipeline_info = vk::graphicsPipelineCreateInfoBuilder()
    .setStages(&draw_shaders.stages)
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
    vk::createGraphicsPipelines(device, null, 1, &pipeline_info, null, &pipeline)!;

    // Create syncronisation stuff
    SemaphoreList wait_semaphores;
    SemaphoreList signal_semaphores;
    FenceList frame_fences;

    for (uint i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        wait_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device))!;
        signal_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device))!;
        frame_fences.push(vk::fenceCreateInfoBuilder().setFlags(vk::FENCE_CREATE_SIGNALED_BIT).build(device))!;
    }

    // Rendering loop
    uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        eventHandler.update();

        if (eventHandler.scrolling) {
            camera.zoom((float)eventHandler.scrollY * 5);
            uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size, device);
        }

        // Update camera  rotation on left-mouse click
        if (eventHandler.left_mouse_click) {
            camera.rotate((float)eventHandler.mouse_x_delta, (float)eventHandler.mouse_y_delta);
            uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size, device);
        }

        Fence frame_fence = frame_fences[frame];
        Semaphore wait_semaphore = wait_semaphores[frame];
        Semaphore signal_semaphore = signal_semaphores[frame];

        frame_fence.wait(device)!;
        frame_fence.reset(device)!;

        uint next_image = swapchain.getNextImage(device, wait_semaphore);

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
        vk::cmdDrawIndexed(command_buffer, indices.len, 1, 0, 0, 0);
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
        vk::queueSubmit(queue_family.graphics_handle, 1, &submit_info, frame_fence)!;

        PresentInfoKHR present_info = vk::presentInfoKHRBuilder()
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
