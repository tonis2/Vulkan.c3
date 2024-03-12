module renderer;

import std::io;
import vk;
import glfw;
import camera;
import std::math;
import gltf;
import std::collections::list;
import stb;
import std::time;

const WIDTH = 1200;
const HEIGHT = 800;
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;
const SCENE_INDEX = 0;

def TextureList = List(<DescriptorImageInfo>);

struct Vertex {
    Vec3f pos;
    Vec3f normal;
    Vec2f tex_cord;
    Vec4f tangent;
    Vec4f skin_pos;
    Vec4f skin_weight;
}

struct AddressBuffer {
    DeviceAddress uniform_buffer;
    DeviceAddress vertex_buffer;
    DeviceAddress material_buffer;
}

struct PushConstantData {
    Matrix4f matrix;
    DeviceAddress joint_buffer;
    int material;
    ichar has_skin;

    char morph_count;
    uint morph_start;
    uint morph_offset;
    float[8] morph_weights;
}

struct ForwardConstantData {
    DeviceAddress lights;
}

struct PipelineInfo {
    DescriptorSetLayout descriptor_layout;
    Pipeline pipeline;
    PipelineLayout pipeline_layout;
    RenderingInfo render_info;
}

List(<WriteDescriptorSet>) f_descriptor_sets;
List(<WriteDescriptorSet>) g_descriptor_sets;

vk::Allocation device_allocation;
vk::Allocation local_allocation;

MemoryBlock vertex_buffer;
MemoryBlock index_buffer;
MemoryBlock uniform_buffer;
MemoryBlock address_buffer;
MemoryBlock joint_buffer;
MemoryBlock material_buffer;
MemoryBlock lights_buffer;

ZStringList validations;
ZStringList extensions;
ZStringList device_extensions;

List(<Vertex>) vertices;
List(<ushort>) indices;
List(<Matrix4f>) joint_data;

TextureList material_textures;
TextureList gbuffer_textures;
ImageList gbuffer_images;

PipelineInfo gbuffer_pipeline;
PipelineInfo forward_pipeline;

vk::Device device;
PhysicalDevice physical_device;
QueueFamily queue_family;
Instance instance;
DebugUtilsMessengerEXT debug_messenger;

Gltf gltf;
camera::Camera camera;
Animations animations;

vk::Format[4] gbuffer_formats = {
    vk::FORMAT_B8G8R8A8_UNORM,
    vk::FORMAT_R16G16B16A16_SFLOAT,
    vk::FORMAT_R16G16B16A16_SFLOAT,
    vk::FORMAT_D32_SFLOAT_S8_UINT
};

Extent2D extent = { WIDTH, HEIGHT };

fn void! main()
{
    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "GLTF example", null, null);

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

    gltf = gltf::loadFile("examples/gltf/assets/scene_test.glb")!;
    defer gltf.free();

    foreach (&buffer: gltf.buffers) {
        switch (buffer.type) {
            case EXTERNAL_BIN: {
                File! data = file::open("examples/gltf/assets/".concat((String)buffer.uri), "r");
                if (catch err = data) {
                    io::printfn("asset not found");
                    return;
                }
                buffer.data = buffer.from_binary(&data)!;
            }
            default: {}
        }
    }

    EventHandler eventHandler = { .window = window };
    eventHandler.init();
    camera = camera::new(.eye = {0.0, 0.0, 20}, .aspect = 800/600, .min_zoom = 0.01, .max_zoom = 1000);

    // Load animations

    foreach (animation: gltf.animations) {
        animations.push(gltf.loadAnimation(animation));
    }

    foreach (&skin: gltf.skins) {
        Accessor skin_accessor = gltf.accessors[skin.inverseBindAccessor];
        // Load inverse bind matrices
        for (uint i; i < skin_accessor.count; i++) {
             Matrix4f matrix = gltf.@castBuffer(skin_accessor, i, Matrix4f).transpose();
             skin.inverseBindMatrices.push(matrix);
             joint_data.push(matrix);
        }
    }

    // Preload vertex data from GLTF
    foreach (mesh: gltf.meshes) {
        uint morph_adjustment = 0;

        foreach (prim_index, &primitive: mesh.primitives) {
            Accessor pos_accessor = gltf.accessors[primitive.attributes["POSITION"]!!];
            Accessor index_accessor = gltf.accessors[primitive.attributes["indices"]!!];
            primitive.attributes["first_index"] = indices.len();
            primitive.attributes["first_vertex"] = vertices.len();

            for (usz i; i < index_accessor.count; i++) {
                indices.push(gltf.@castBuffer(index_accessor, i, ushort));
            }

            for (usz i; i < pos_accessor.count; i++) {
                Vec2f tex_cord = {|
                    usz! attribute = primitive.attributes["TEXCOORD_0"];
                    if (catch err = attribute) return Vec2f {0,0};

                    Accessor accessor = gltf.accessors[attribute];
                    return gltf.@castBuffer(accessor, i, Vec2f);
                |};

                Vec3f normal = {|
                    usz! attribute = primitive.attributes["NORMAL"];
                    if (catch err = attribute) return Vec3f {0,0,0};

                    Accessor accessor = gltf.accessors[attribute];
                    return gltf.@castBuffer(accessor, i, Vec3f);
                |};

                Vec4f tangent = {|
                    usz! attribute = primitive.attributes["TANGENT"];
                    if (catch err = attribute) return Vec4f {0,0,0,0};
                    Accessor accessor = gltf.accessors[attribute];
                    return gltf.@castBuffer(accessor, i, Vec4f);
                |};

                Vec4f skin_pos = {|
                    usz! attribute = primitive.attributes["JOINTS_0"];
                    if (catch err = attribute) return Vec4f {0,0,0,0};
                    Accessor accessor = gltf.accessors[attribute];

                    if (accessor.data_type == DataType.USHORT) {
                        short[4] array = gltf.@castBuffer(accessor, i, short[4]);
                        return Vec4f{array[0], array[1], array[2], array[3]};
                    };

                    if (accessor.data_type == DataType.CHAR) {
                        char[4] array = gltf.@castBuffer(accessor, i, char[4]);
                        return Vec4f{array[0], array[1], array[2], array[3]};
                    };

                    return Vec4f {0,0,0,0};
                |};

                Vec4f skin_weight = {|
                    usz! attribute = primitive.attributes["WEIGHTS_0"];
                    if (catch err = attribute) return Vec4f {0,0,0,0};

                    Accessor accessor = gltf.accessors[attribute];
                    return gltf.@castBuffer(accessor, i, Vec4f);
                |};

                Vec3f position = gltf.@castBuffer(pos_accessor, i, Vec3f);
                vertices.push({
                    .pos = position,
                    .normal = normal,
                    .tex_cord = tex_cord,
                    .tangent = tangent,
                    .skin_pos = skin_pos,
                    .skin_weight = skin_weight
                });
            }

            if (primitive.targets.len() > 0) {
                primitive.attributes["morph_start"] = vertices.len() - morph_adjustment;
                primitive.attributes["morph_offset"] = pos_accessor.count;
                morph_adjustment += pos_accessor.count;
            };

            // Add morph data
            foreach (targets: primitive.targets) {
                Accessor position = gltf.accessors[targets["POSITION"]!!];
                Accessor normal = gltf.accessors[targets["NORMAL"]!!];

                for (usz i; i < position.count; i++) {
                    vertices.push({
                       .pos = gltf.@castBuffer(position, i, Vec3f),
                       .normal = gltf.@castBuffer(normal, i, Vec3f),
                    });
                }
            }
        }
    }

    //"VK_LAYER_LUNARG_api_dump"
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    device_extensions.add_array({"VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_dynamic_rendering"});

   // SETUP extensions
    ZStringList glfw_extensions = glfw::getRequiredExtensions();
    extensions.add_all(&glfw_extensions);
    glfw_extensions.free();

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
        .apiVersion = vk::@makeApiVersion(0,1,3,0)
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

    // Macro to find a valid device, device checks should be improved for a real application
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

    PhysicalDevicePushDescriptorPropertiesKHR pushDescriptorProperties = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR,
        .maxPushDescriptors = 1,
        .pNext = null
    };

    PhysicalDeviceDescriptorBufferPropertiesEXT descriptorBufferProperties = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT,
        .pNext = &pushDescriptorProperties,
    };

    // Get device properties and add push descriptors extension
    PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2Builder()
             .setNext(&descriptorBufferProperties)
             .build(physical_device);

    io::printfn("Device found %s type %d ", device_properties.properties.deviceName[0..], device_properties.properties.deviceType);
    io::printfn("Push constant max size %d bytes", device_properties.properties.limits.maxPushConstantsSize / 4);

    DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfoBuilder()
    .setQueueFamilyIndex(queue_family.graphics)
    .setQueuePriorities({ 1.0 });

    // Enable some device features
    PhysicalDevice8BitStorageFeatures device_8bit_storage = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES,
    };

    PhysicalDeviceDescriptorIndexingFeatures device_indexing_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES,
       .pNext = &device_8bit_storage
    };

   PhysicalDeviceBufferDeviceAddressFeatures buffer_device_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES,
       .pNext = &device_indexing_feature,
       .bufferDeviceAddress = vk::TRUE,
    };

/*    PhysicalDeviceDescriptorBufferFeaturesEXT descriptor_buffer_feature = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT,
        .pNext = &buffer_device_feature,
        .descriptorBuffer = vk::TRUE,
    };*/

    PhysicalDeviceDynamicRenderingFeatures dynamic_rendering_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
       .pNext = &buffer_device_feature
    };

    PhysicalDeviceSynchronization2Features syncronisation2_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES,
       .pNext = &dynamic_rendering_feature
    };

    PhysicalDeviceFeatures2 device_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
        .pNext = &syncronisation2_feature,
    };

    vk::getPhysicalDeviceFeatures2(physical_device, &device_features);

    device = vk::deviceCreateInfoBuilder()
        .setQueueCreateInfos({ graphicsInfo })
        .setEnabledExtensionNames(device_extensions.array_view())
        .setEnabledLayerNames(validations.array_view())
        .setNext(&device_features)
        .build(physical_device)!;

    // Add actual queue handles to queue family, easier to keep them is one place
    queue_family.graphics_handle = device.getQueue(queue_family.graphics);

    SurfaceFormatList surface_formats = surface.getFormats(physical_device)!;
    PresentModeList present_modes = surface.getPresentModes(physical_device)!;
    SurfaceCapabilitiesKHR capabilities = surface.deviceSurfaceCapabilities(physical_device)!;

    defer {
        surface_formats.free();
        present_modes.free();
    }

    SurfaceFormatKHR format = surface_formats.contains({.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR})
        ? SurfaceFormatKHR {.format = vk::FORMAT_B8G8R8A8_UNORM, .colorSpace = vk::COLOR_SPACE_SRGB_NONLINEAR_KHR}
        : surface_formats[0];

    uint min_images = capabilities.maxImageCount != 0 ? capabilities.maxImageCount : capabilities.minImageCount + 2;
    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfoKHRBuilder()
        .setMinImageCount(min_images)
        .setImageUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
        .setImageSharingMode(vk::SHARING_MODE_EXCLUSIVE)
        .setCompositeAlpha(vk::COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
        .setPresentMode(present_modes.contains(vk::PRESENT_MODE_MAILBOX_KHR) ? vk::PRESENT_MODE_MAILBOX_KHR : present_modes[0])
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

    // Create allocator of 50MB - DEVICE_ONLY memory
    device_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
        .size = 500_000_000,
    }.build()!;

    // Allocation where data can be changed from CPU
    local_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
        .size = 20_000_000,
    }.build()!;

    loadBuffers()!;
    loadTextures()!;
    createPipelines()!;

    // Create syncronisation stuff
    SemaphoreList wait_semaphores;
    SemaphoreList signal_semaphores;
    FenceList frame_fences;

    for (uint i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        wait_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device))!;
        signal_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device))!;
        frame_fences.push(vk::fenceCreateInfoBuilder().setFlags(vk::FENCE_CREATE_SIGNALED_BIT).build(device))!;
    }

    // Picking gltf scene to render
    Scene scene = gltf.scenes[SCENE_INDEX];
    uint frame = 0;
    Clock time = clock::now();

    while (!glfw::windowShouldClose(window)) {
        eventHandler.update();

        if (animations.len() > 0) gltf.animate(.animation = &animations[0], .time = time.mark());
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

        CommandBuffer command_buffer = command_buffers[next_image];
        vk::resetCommandBuffer(command_buffer, 0)!;
        vk::beginCommandBuffer(command_buffer, &&vk::commandBufferBeginInfoBuilder())!;

        vk::ImageMemoryBarrier2 gbufferPipelineBarrier = {
            .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
            .srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
            .dstStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
            .srcAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
            .dstAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_READ_BIT,
            .image = gbuffer_images[0],
    /*        .oldLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
            .newLayout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL,*/
            .subresourceRange = {
              .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
              .baseMipLevel = 0,
              .levelCount = 1,
              .baseArrayLayer = 0,
              .layerCount = 1,
          }};

        vk::ImageMemoryBarrier2 forwardBarrier = {
        .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
        .srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
        .dstStageMask = vk::PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT,
        .srcAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
        .dstAccessMask = vk::ACCESS_2_SHADER_READ_BIT,
        .image = swapchain_images[next_image],
        .oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
        .newLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
        .subresourceRange = {
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .levelCount = 1,
            .baseArrayLayer = 0,
            .layerCount = 1,
        }};

        vk::ImageMemoryBarrier2 renderBarrier = {
        .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
        .srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
        .dstStageMask = vk::PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT,
        .srcAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
        .dstAccessMask = vk::ACCESS_2_SHADER_READ_BIT,
        .image = swapchain_images[next_image],
        .oldLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
        .newLayout = vk::IMAGE_LAYOUT_PRESENT_SRC_KHR,
        .subresourceRange = {
            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .levelCount = 1,
            .baseArrayLayer = 0,
            .layerCount = 1,
        }};

        vk::cmdSetViewport(command_buffer, 0, 1, &&vk::Viewport{.width = WIDTH, .height = -HEIGHT, .minDepth = 0.0, .maxDepth = 1.0, .y = HEIGHT });
        vk::cmdSetScissor(command_buffer, 0, 1, &&vk::Rect2D {.extent = swapchain_info.imageExtent, .offset = Offset2D{ .x = 0, .y = 0 }});

        // Draw Gbuffer textures
        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, gbuffer_pipeline.pipeline);
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, gbuffer_pipeline.pipeline_layout, 0, (uint)g_descriptor_sets.len(), g_descriptor_sets.entries);
        vk::cmdBeginRenderingKHR(command_buffer, &gbuffer_pipeline.render_info);

        foreach (node: scene.nodes) drawNode(gltf.nodes[node], command_buffer, gbuffer_pipeline.pipeline_layout, device);
        vk::cmdEndRenderingKHR(command_buffer);

        RenderingInfo f_rendering_info = vk::renderingInfoBuilder()
            .setLayerCount(1)
            .setRenderArea({
                .offset = { .x = 0, .y = 0 },
                .extent = extent,
            })
            .setColorAttachments({
                vk::renderingAttachmentInfoBuilder()
                    .setImageView(swapchain_views[next_image])
                    .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
                    .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
                    .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
                    .setClearValue({
                        .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
                    }),
        });

        // Wait for GBUFFER to be finished rendering
        vk::cmdPipelineBarrier2(command_buffer, &&vk::dependencyInfoBuilder()
        .setImageMemoryBarriers({ gbufferPipelineBarrier, forwardBarrier }));

        // Draw forward render
        vk::cmdSetViewport(command_buffer, 0, 1, &&vk::Viewport{.width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0, .y = 0.0 });
        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, forward_pipeline.pipeline);
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, forward_pipeline.pipeline_layout, 0, (uint)f_descriptor_sets.len(), f_descriptor_sets.entries);
        vk::cmdBeginRenderingKHR(command_buffer, &f_rendering_info);

        ForwardConstantData constant_data = {
            .lights = lights_buffer.address,
        };

        vk::cmdPushConstants(command_buffer, forward_pipeline.pipeline_layout, vk::SHADER_STAGE_VERTEX_BIT, 0, ForwardConstantData.sizeof, &constant_data);
        vk::cmdDraw(command_buffer, 3, 1, 0, 0);
        vk::cmdEndRenderingKHR(command_buffer);

        vk::cmdPipelineBarrier2(command_buffer, &&vk::dependencyInfoBuilder()
        .setImageMemoryBarriers({ renderBarrier }));

        SubmitInfo submit_info = vk::submitInfoBuilder()
        .setWaitSemaphores({ wait_semaphore })
        .setCommandBuffers({ command_buffer })
        .setSignalSemaphores({ signal_semaphore })
        .setWaitDstStageMask({ vk::PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT });

        vk::endCommandBuffer(command_buffer)!;
        vk::queueSubmit(queue_family.graphics_handle, 1, &submit_info, frame_fence)!;

        PresentInfoKHR present_info = vk::presentInfoKHRBuilder()
        .setWaitSemaphores({ signal_semaphore })
        .setSwapchains({ swapchain })
        .setImageIndices({ next_image });

        vk::queuePresentKHR(queue_family.graphics_handle, &present_info)!;
        frame = (frame + 1) % 2;
    }


    // Release binded stuff
    device.waitIdle();
    if (ENABLE_VALIDATION_LAYERS) debug_messenger.free(instance);

    vertices.free();
    indices.free();
    joint_data.free();
    animations.release();

    swapchain.free(device);
    foreach (view : swapchain_views) view.free(device);
    swapchain_images.free();
    swapchain_views.free();

    foreach (texture: material_textures) texture.free(device);
    material_textures.free();

    foreach (texture: gbuffer_textures) texture.free(device);
    gbuffer_textures.free();
    gbuffer_images.free();
    command_pool.free(device);
    
    gbuffer_pipeline.free(device);
    forward_pipeline.free(device);
    
    device_allocation.free();
    local_allocation.free();

    wait_semaphores.release(device);
    signal_semaphores.release(device);
    frame_fences.release(device);
    surface.free(instance);
    f_descriptor_sets.free();
    g_descriptor_sets.free();
    device.free();
    instance.free();
}

fn void drawNode(Node node, CommandBuffer buffer, PipelineLayout pipeline_layout, Device device) {

    // If node has skin animation attached, upload joint buffer matrices
    if (node.hasSkin()) {
        Skin skin = gltf.skins[node.skin];
        foreach (joint_index, joint: skin.joints) {
           Node joint_node = gltf.nodes[joint];
           joint_data[joint_index] = joint_node.globalMatrix().mul(skin.inverseBindMatrices[joint_index]).transpose();
        }
        joint_buffer.upload(joint_data.entries, joint_data.byte_size(), device);
    }

    if (node.hasMesh()) {
        gltf::Mesh mesh = gltf.meshes[node.mesh];
        float[8] weights = {0,0,0,0,0,0,0,0};

        foreach (i, weight: node.weights) weights[i] = weight;
        foreach (index, primitive: mesh.primitives) {
            Accessor index_accessor = gltf.accessors[primitive.attributes["indices"]!!];
            gltf::BufferView index_view = gltf.bufferViews[index_accessor.view];

            PushConstantData constant_data = {
                .matrix = node.globalMatrix().transpose(),
                .joint_buffer = joint_buffer.address,
                .material = (int)primitive.attributes["material"] ?? -1,
                .has_skin = (ichar)node.skin,

                .morph_count = (char)primitive.targets.len(),
                .morph_start = (uint)primitive.attributes["morph_start"] ?? 0,
                .morph_offset = (uint)primitive.attributes["morph_offset"] ?? 0,
                .morph_weights = weights,
            };

            vk::cmdPushConstants(buffer, pipeline_layout, vk::SHADER_STAGE_VERTEX_BIT, 0, PushConstantData.sizeof, &constant_data);
            vk::cmdBindIndexBuffer(buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
            vk::cmdDrawIndexed(buffer, index_accessor.count, 1, (uint)primitive.attributes["first_index"] ?? 0, (uint)primitive.attributes["first_vertex"] ?? 0, 0);
        }
    }

    // Draw child nodes
    foreach (child_index: node.children) drawNode(gltf.nodes[child_index], buffer, pipeline_layout, device);
}


fn void! createPipelines() {
  gbuffer_pipeline.render_info = vk::renderingInfoBuilder()
    .setLayerCount(1)
    .setRenderArea({
        .offset = Offset2D{ .x = 0, .y = 0 },
        .extent = extent,
    })
    .setColorAttachments({
        vk::renderingAttachmentInfoBuilder()
            .setImageView(gbuffer_textures[0].imageView)
            .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
            .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
            .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
            .setClearValue({
                .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
        }),
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
        })
    })
    .setDepthAttachment(&&vk::renderingAttachmentInfoBuilder()
        .setImageView(gbuffer_textures[3].imageView)
        .setImageLayout(vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL)
        .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
        .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
        .setClearValue({
            .depthStencil = { 1.0f, 0 }
    }));

    g_descriptor_sets.init_wrapping_array({
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

   gbuffer_pipeline.descriptor_layout = vk::descriptorSetLayoutCreateInfoBuilder()
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

    gbuffer_pipeline.pipeline_layout = vk::pipelineLayoutCreateInfoBuilder()
        .setPushConstantRanges({
            {
                .offset = 0,
                .size = PushConstantData.sizeof,
                .stageFlags = vk::SHADER_STAGE_VERTEX_BIT,
            },
        })
        .setSetLayouts({ gbuffer_pipeline.descriptor_layout }).build(device)!;

    char[*] g_vertex_shader_data = $embed("shaders/gbuffer_vert.spv");
    char[*] g_fragment_shader_data = $embed("shaders/gbuffer_frag.spv");

    ShaderModule g_vertex_module = device.createShaderModule(&g_vertex_shader_data)!;
    ShaderModule g_frag_module = device.createShaderModule(&g_fragment_shader_data)!;

    defer {
        g_vertex_module.free(device);
        g_frag_module.free(device);
    }

    vk::PipelineColorBlendAttachmentState color_write_mask = {
        .colorWriteMask =
            vk::COLOR_COMPONENT_R_BIT |
            vk::COLOR_COMPONENT_G_BIT |
            vk::COLOR_COMPONENT_B_BIT |
            vk::COLOR_COMPONENT_A_BIT,
    };

    gbuffer_pipeline.pipeline = vk::graphicsPipelineCreateInfoBuilder()
    .setStages({
        g_vertex_module.info(vk::SHADER_STAGE_VERTEX_BIT),
        g_frag_module.info(vk::SHADER_STAGE_FRAGMENT_BIT)
    })
    .setLayout(gbuffer_pipeline.pipeline_layout)
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
        .setViewports({{ .x = 0.0, .y = 0.0, .width = 0.0, .height = 0.0, .minDepth = 0.0, .maxDepth = 1.0 }})
        .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = extent }}))
    .setNext(
        &&vk::pipelineRenderingCreateInfoBuilder()
        .setColorAttachmentFormats({
                gbuffer_formats[0],
                gbuffer_formats[1],
                gbuffer_formats[2],
            })
        .setDepthAttachmentFormat(gbuffer_formats[3])
        .setStencilAttachmentFormat(gbuffer_formats[3])
    ).build(device)!;

    // Forward pipeline
    f_descriptor_sets.push(vk::writeDescriptorSetBuilder()
                           .setDstBinding(0)
                           .setDescriptorType(vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER)
                           .setImageInfo(gbuffer_textures.array_view()));

    forward_pipeline.descriptor_layout = vk::descriptorSetLayoutCreateInfoBuilder()
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

    forward_pipeline.pipeline_layout = vk::pipelineLayoutCreateInfoBuilder()
        .setPushConstantRanges({
            {
                .offset = 0,
                .size = ForwardConstantData.sizeof,
                .stageFlags = vk::SHADER_STAGE_VERTEX_BIT,
            },
        })
        .setSetLayouts({ forward_pipeline.descriptor_layout }).build(device)!;

    char[*] f_vertex_shader_data = $embed("shaders/forward_vert.spv");
    char[*] f_fragment_shader_data = $embed("shaders/forward_frag.spv");

    ShaderModule f_vertex_module = device.createShaderModule(&f_vertex_shader_data)!;
    ShaderModule f_frag_module = device.createShaderModule(&f_fragment_shader_data)!;

    defer {
        f_vertex_module.free(device);
        f_frag_module.free(device);
    }

    forward_pipeline.pipeline = vk::graphicsPipelineCreateInfoBuilder()
    .setStages({
        f_vertex_module.info(vk::SHADER_STAGE_VERTEX_BIT),
        f_frag_module.info(vk::SHADER_STAGE_FRAGMENT_BIT)
    })
    .setLayout(forward_pipeline.pipeline_layout)
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
        .setViewports({{ .x = 0.0, .y = 0, .width = 0, .height = 0, .minDepth = 0.0, .maxDepth = 1.0 }})
        .setScissors({{ .offset = { .x = 0, .y = 0 }, .extent = extent }}))
    .setNext(
        &&vk::pipelineRenderingCreateInfoBuilder()
        .setColorAttachmentFormats({ vk::FORMAT_B8G8R8A8_UNORM })
    ).build(device)!;
}

fn void! loadTextures() {
    // Create GBuffer textures
    for (usz i; i < 3; i++) {
        vk::Format image_format = gbuffer_formats[i];
        DescriptorImageInfo texture;
        texture.imageLayout = vk::IMAGE_LAYOUT_GENERAL;

        vk::Image image = vk::imageCreateInfoBuilder()
            .setImageType(vk::IMAGE_TYPE_2D)
            .setExtent({.width = WIDTH, .height = HEIGHT, .depth = 1 })
            .setMipLevels(1)
            .setArrayLayers(1)
            .setSamples(vk::SAMPLE_COUNT_1_BIT)
            .setUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT | vk::IMAGE_USAGE_SAMPLED_BIT)
            .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
            .setTiling(vk::IMAGE_TILING_OPTIMAL)
            .setFormat(image_format)
            .build(device)!;
             image.bind(&device_allocation)!;

        texture.imageView = vk::imageViewCreateInfoBuilder()
            .setViewType(vk::IMAGE_VIEW_TYPE_2D)
            .setFormat(image_format)
            .setSubresourceRange({
              .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
              .baseMipLevel = 0,
              .baseArrayLayer = 0,
              .layerCount = 1,
              .levelCount = 1,
            })
            .setImage(image)
            .build(device)!;

        texture.sampler = vk::samplerCreateInfoBuilder()
                .setMagFilter(vk::FILTER_LINEAR)
                .setMinFilter(vk::FILTER_LINEAR)
                .setAddressModeU(vk::SAMPLER_ADDRESS_MODE_REPEAT)
                .setAddressModeV(vk::SAMPLER_ADDRESS_MODE_REPEAT)
                .setAddressModeW(vk::SAMPLER_ADDRESS_MODE_REPEAT)
                .setMipLodBias(0.0)
                .setMinLod(0.0)
                .setMaxLod(1.0)
                .setMaxAnisotropy(1.0)
                .setAnisotropyEnable(vk::FALSE)
                .setBorderColor(vk::BORDER_COLOR_FLOAT_OPAQUE_WHITE)
                .build(device)!;

        device.@single_time_command(.queue = queue_family.graphics_handle, .queue_index = queue_family.graphics; CommandBuffer command_buffer) {
            vk::ImageMemoryBarrier2 finalize_barrier = {
               .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
               .srcStageMask = vk::PIPELINE_STAGE_TOP_OF_PIPE_BIT,
               .dstStageMask = vk::PIPELINE_STAGE_2_ALL_GRAPHICS_BIT,
               .srcAccessMask = 0,
               .dstAccessMask = vk::ACCESS_2_SHADER_WRITE_BIT,
               .image = image,
               .oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
               .newLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
               .subresourceRange = {
                   .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                   .baseMipLevel = 0,
                   .levelCount = 1,
                   .baseArrayLayer = 0,
                   .layerCount = 1,
               }
            };
            vk::cmdPipelineBarrier2(command_buffer, &&vk::dependencyInfoBuilder()
            .setImageMemoryBarriers({ finalize_barrier }));
        }!;

        gbuffer_images.push(image);
        gbuffer_textures.push(texture);
    }

    DescriptorImageInfo depth_texture;
    depth_texture.imageLayout = vk::IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL;

    vk::Image depth_image = vk::imageCreateInfoBuilder()
    .setImageType(vk::IMAGE_TYPE_2D)
    .setExtent({.width = WIDTH, .height = HEIGHT, .depth = 1 })
    .setMipLevels(1)
    .setArrayLayers(1)
    .setSamples(vk::SAMPLE_COUNT_1_BIT)
    .setUsage(vk::IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT | vk::IMAGE_USAGE_SAMPLED_BIT)
    .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
    .setTiling(vk::IMAGE_TILING_OPTIMAL)
    .setFormat(gbuffer_formats[3])
    .build(device)!;

    depth_image.bind(&device_allocation)!;
    depth_texture.sampler = vk::samplerCreateInfoBuilder()
        .setMagFilter(vk::FILTER_LINEAR)
        .setMinFilter(vk::FILTER_LINEAR)
        .setAddressModeU(vk::SAMPLER_ADDRESS_MODE_REPEAT)
        .setAddressModeV(vk::SAMPLER_ADDRESS_MODE_REPEAT)
        .setAddressModeW(vk::SAMPLER_ADDRESS_MODE_REPEAT)
        .setMipLodBias(0.0)
        .setMinLod(0.0)
        .setMaxLod(1.0)
        .setMaxAnisotropy(1.0)
        .setAnisotropyEnable(vk::FALSE)
        .setBorderColor(vk::BORDER_COLOR_FLOAT_OPAQUE_WHITE)
        .build(device)!;
        
    depth_texture.imageView = vk::imageViewCreateInfoBuilder()
        .setViewType(vk::IMAGE_VIEW_TYPE_2D)
        .setFormat(gbuffer_formats[3])
        .setSubresourceRange({
          .aspectMask = vk::IMAGE_ASPECT_DEPTH_BIT,
          .baseMipLevel = 0,
          .baseArrayLayer = 0,
          .layerCount = 1,
          .levelCount = 1,
        })
        .setImage(depth_image)
        .build(device)!;

    device.@single_time_command(.queue = queue_family.graphics_handle, .queue_index = queue_family.graphics; CommandBuffer command_buffer) {
       ImageMemoryBarrier imageMemoryBarrier = vk::imageMemoryBarrierBuilder()
       .setImage(depth_image)
       .setSubresourceRange({
          .aspectMask = vk::IMAGE_ASPECT_DEPTH_BIT | vk::IMAGE_ASPECT_STENCIL_BIT,
          .baseMipLevel = 0,
          .baseArrayLayer = 0,
          .layerCount = 1,
          .levelCount = 1,
       })
       .setSrcAccessMask(0)
       .setDstAccessMask(vk::ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT)
       .setOldLayout(vk::IMAGE_LAYOUT_UNDEFINED)
       .setNewLayout(vk::IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL);


       vk::cmdPipelineBarrier(
           command_buffer,
           vk::PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT | vk::PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT,
           vk::PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT | vk::PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT,
           0,
           0,
           null,
           0,
           null,
           1,
           &imageMemoryBarrier
       );
    }!;

    gbuffer_textures.push(depth_texture);

    // Create texture-images from gltf buffer
    foreach (image : gltf.images) {
        Format image_format = vk::FORMAT_R8G8B8A8_UNORM;
        DescriptorImageInfo texture;
        stb::Image! image_data;

        switch (image.type) {
            case ENCODED_BASE64: {
                image_data = stb::loadFromBuffer(image.data, image.data.len, stb::Channel.STBI_RGB_ALPHA);
            };
            case ENCODED_BIN: {
                gltf::BufferView buffer_view = gltf.bufferViews[image.view];
                image_data = stb::loadFromBuffer(gltf.buffers[buffer_view.buffer].data[buffer_view.offset..], (uint)buffer_view.byteLength, stb::Channel.STBI_RGB_ALPHA);
            };
            case EXTERNAL_BIN: io::printfn("Load image data here");
        }

        defer image_data.free()!!;

        if (catch err = image_data) {
            io::printfn("Failed loading image from buffer");
            return;
        }

        vk::Image texture_image = vk::imageCreateInfoBuilder()
            .setImageType(vk::IMAGE_TYPE_2D)
            .setExtent({.width = image_data.width, .height = image_data.height, .depth = 1 })
            .setMipLevels(1)
            .setArrayLayers(1)
            .setSamples(vk::SAMPLE_COUNT_1_BIT)
            .setUsage(vk::IMAGE_USAGE_TRANSFER_DST_BIT | vk::IMAGE_USAGE_SAMPLED_BIT)
            .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
            .setTiling(vk::IMAGE_TILING_OPTIMAL)
            .setFormat(image_format)
            .build(device)!;
            texture_image.bind(&device_allocation)!;

        MemoryBlock stage_image = device.staging_buffer(.size = (usz)image_data.width * image_data.height * 4, .data = image_data.pixels, .pdevice = physical_device)!;
        defer stage_image.free(device);

        vk::ImageMemoryBarrier2 transfer_barrier = {
            .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
            .srcStageMask = vk::PIPELINE_STAGE_TOP_OF_PIPE_BIT,
            .dstStageMask = vk::PIPELINE_STAGE_TRANSFER_BIT,
            .srcAccessMask = 0,
            .dstAccessMask = vk::ACCESS_2_TRANSFER_WRITE_BIT,
            .image = texture_image,
            .oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
            .newLayout = vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
            .subresourceRange = {
                .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                .baseMipLevel = 0,
                .levelCount = 1,
                .baseArrayLayer = 0,
                .layerCount = 1,
        }};

        vk::ImageMemoryBarrier2 finalize_barrier = {
            .sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
            .srcStageMask = vk::PIPELINE_STAGE_TRANSFER_BIT,
            .dstStageMask = vk::PIPELINE_STAGE_FRAGMENT_SHADER_BIT,
            .srcAccessMask = vk::ACCESS_2_TRANSFER_WRITE_BIT,
            .dstAccessMask = vk::ACCESS_2_SHADER_READ_BIT,
            .image = texture_image,
            .oldLayout = vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
            .newLayout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL,
            .subresourceRange = {
                .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                .baseMipLevel = 0,
                .levelCount = 1,
                .baseArrayLayer = 0,
                .layerCount = 1,
            }
        };

        device.@single_time_command(.queue = queue_family.graphics_handle, .queue_index = queue_family.graphics; CommandBuffer command_buffer) {
           
            vk::cmdPipelineBarrier2(command_buffer, &&vk::dependencyInfoBuilder()
            .setImageMemoryBarriers({ transfer_barrier }));

            BufferImageCopy bufferCopyRegion = {
                .bufferOffset = 0,
                .bufferRowLength = 0,
                .bufferImageHeight = 0,
                .imageSubresource = {
                    .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                    .mipLevel = 0,
                    .baseArrayLayer = 0,
                    .layerCount = 1,
                },
                .imageOffset = {0, 0, 0},
                .imageExtent = {.width = image_data.width, .height = image_data.height, .depth = 1 }
            };

            vk::cmdCopyBufferToImage(
                command_buffer,
                stage_image.buffer,
                texture_image,
                vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
                1,
                &bufferCopyRegion
            );

            vk::cmdPipelineBarrier2(command_buffer, &&vk::dependencyInfoBuilder()
            .setImageMemoryBarriers({ finalize_barrier }));
        }!;

        texture.sampler = vk::samplerCreateInfoBuilder()
                            .setMagFilter(vk::FILTER_LINEAR)
                            .setMinFilter(vk::FILTER_LINEAR)
                            .setAddressModeU(vk::SAMPLER_ADDRESS_MODE_REPEAT)
                            .setAddressModeV(vk::SAMPLER_ADDRESS_MODE_REPEAT)
                            .setAddressModeW(vk::SAMPLER_ADDRESS_MODE_REPEAT)
                            .setMipLodBias(0.0)
                            .setMinLod(0.0)
                            .setMaxLod(1.0)
                            .setMaxAnisotropy(1.0)
                            .setAnisotropyEnable(vk::FALSE)
                            .setBorderColor(vk::BORDER_COLOR_FLOAT_OPAQUE_WHITE)
                            .build(device)!;

        texture.imageView = vk::imageViewCreateInfoBuilder()
                        .setViewType(vk::IMAGE_VIEW_TYPE_2D)
                        .setFormat(image_format)
                        .setSubresourceRange({
                            .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                            .baseMipLevel = 0,
                            .baseArrayLayer = 0,
                            .layerCount = 1,
                            .levelCount = 1,
                        })
                        .setImage(texture_image)
                        .build(device)!;

        texture.imageLayout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
        material_textures.push(texture);
    }

}

fn void! loadBuffers() {
    address_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_STORAGE_BUFFER_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(AddressBuffer.sizeof)
                    .bind(&local_allocation)!;

    uniform_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(UniformData.sizeof)
                    .bind(&local_allocation)!;

    vertex_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_VERTEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT | vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT )
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(vertices.byte_size())
                    .bind(&device_allocation)!;

    index_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT | vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT )
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(indices.byte_size())
                    .bind(&device_allocation)!;

    joint_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(joint_data.byte_size())
                    .bind(&local_allocation)!;

    material_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(gltf.materials.byte_size())
                    .bind(&local_allocation)!;

    lights_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(gltf.lights.byte_size())
                    .bind(&local_allocation)!;

    uniform_buffer.upload(&&camera.matrix(), UniformData.sizeof, device);
    material_buffer.upload(gltf.materials.entries, gltf.materials.byte_size(), device);
    lights_buffer.upload(gltf.lights.entries, gltf.lights.byte_size(), device);

    // Create stage buffers and then copy the data to GPU only buffers
    MemoryBlock vertex_stage_buffer = device.staging_buffer(.size = vertices.byte_size(), .data = vertices.entries, .pdevice = physical_device)!;
    MemoryBlock index_stage_buffer = device.staging_buffer(.size = indices.byte_size(), .data = indices.entries, .pdevice = physical_device)!;

    device.@single_time_command(.queue = queue_family.graphics_handle, .queue_index = queue_family.graphics; CommandBuffer command_buffer) {
        vk::cmdCopyBuffer(command_buffer, index_stage_buffer.buffer, index_buffer.buffer, 1, &&BufferCopy {
            .srcOffset = 0,
            .dstOffset = 0,
            .size = indices.byte_size()
        });

        vk::cmdCopyBuffer(command_buffer, vertex_stage_buffer.buffer, vertex_buffer.buffer, 1, &&BufferCopy {
            .srcOffset = 0,
            .dstOffset = 0,
            .size = vertices.byte_size()
        });
    }!;

    index_stage_buffer.free(device);
    vertex_stage_buffer.free(device);

    AddressBuffer addresses = {
        .uniform_buffer = uniform_buffer.address,
        .vertex_buffer = vertex_buffer.address,
        .material_buffer = material_buffer.address
    };

    address_buffer.upload(&addresses, AddressBuffer.sizeof, device);
}

fn void PipelineInfo.free(self, Device device) {

    self.pipeline.free(device);
    self.pipeline_layout.free(device);
    self.descriptor_layout.free(device);
}