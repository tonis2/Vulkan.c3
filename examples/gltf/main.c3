import std::io;
import vk;
import glfw;
import camera;
import std::math;
import gltf;
import std::collections::list;
import stb;

def DescriptorImages = List(<DescriptorImageInfo>);
def TextureList = List(<ImageBufferInfo>);
def VertexData = List(<Vertex>);
def IndexData = List(<ushort>);

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex {
    Vec3f position;
    Vec2f tex_pos;
    Vec3f normal;
}

struct PushConstantData {
   Matrix4f matrix;
   uint texture;
}

fn void! main()
{
    glfw::init();
    glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
    glfw::windowHint(glfw::GLFW_RESIZABLE, glfw::GLFW_FALSE);
    glfw::windowHint(glfw::CONTEXT_VERSION_MAJOR, 4);
    glfw::windowHint(glfw::CONTEXT_VERSION_MINOR, 1);
    GLFWwindow window = glfw::createWindow(WIDTH, HEIGHT, "Vulkan triangle", null, null);

    File file = file::open("examples/gltf/assets/boat.gltf", "r")!;
    defer file.close()!!;

    Gltf gltf_data = gltf::parse(&file)!;
    defer gltf_data.free();

    foreach (&buffer: gltf_data.buffers) {
        switch(buffer.type) {
            case ResourceType.ENCODED_BASE64: {
                buffer.data = buffer.from_base64()!;
            }
            case ResourceType.ENCODED_BIN: {
                // Parse .glb binary data
                InStream* stream = (InStream*)&file;
                buffer.data = mem::malloc(char, buffer.size);
                usz file_size = stream.seek(0, Seek.END)!;
                stream.seek(file_size - buffer.size, Seek.SET)!;
                stream.read(buffer.data)!;
            }
            case ResourceType.EXTERNAL_BIN: {
                String path = string::join({"", (String)buffer.uri}, "examples/gltf/assets/");
                File! buffer_file = file::open(path, "r")!;

                defer {
                    path.free();
                    buffer_file.close()!!;
                };

                if (catch err = buffer_file) {
                    io::printfn("failed loading buffer file %s", err);
                    return;
                };

                InStream* stream = (InStream*)&buffer_file;
                buffer.data = mem::malloc(char, stream.len());
                stream.read(buffer.data)!;
            }
            default: {}
        }
    }

    VertexData vertices;
    defer vertices.free();

    IndexData indices;
    defer indices.free();

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
    camera::Camera camera = camera::new({0.0, 0.0, 0.0}, -10, 800/600);

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

    SwapchainCreateInfoKHR swapchain_info = vk::swapchainCreateInfoKHRBuilder()
    .setMinImageCount(device.capabilities.minImageCount + 1)
    .setImageUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
    .setImageSharingMode(vk::SHARING_MODE_EXCLUSIVE)
    .setCompositeAlpha(vk::COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
    .setPresentMode(device.present_modes.contains(vk::PRESENT_MODE_MAILBOX_KHR) ? vk::PRESENT_MODE_MAILBOX_KHR : device.present_modes[0])
    .setPreTransform(device.capabilities.currentTransform)
    .setImageColorSpace(format.colorSpace)
    .setImageFormat(format.format)
    .setSurface(surface)
    .setImageArrayLayers(1)
    .setImageExtent({ .width = WIDTH, .height = HEIGHT });

    SwapChain swapchain = device.createSwapchain(&swapchain_info)!;
    defer swapchain.free(device.device);

    CommandPool command_pool = device.createCommandPool()!;
    CommandBufferList command_buffers = device.createCommandBuffers(command_pool, swapchain.image_count)!;

    BufferInfo uniform_buffer = BufferInfo {
        .usage = vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT,
        .version = vk::BufferVersion.GLOBAL_BUFFER
    }
    .build(&&camera.matrix(), UniformData.sizeof, device)!;

    foreach (mesh : gltf_data.meshes) {
        foreach (index, primitive: mesh.primitives) {
            Accessor pos_accessor = gltf_data.accessors[primitive.position];
            Accessor tex_accessor = gltf_data.accessors[primitive.tex_cord];
            Accessor normal_accessor = gltf_data.accessors[primitive.normal];
            Accessor index_accessor = gltf_data.accessors[primitive.indices];

            for (uint i = 0; i < pos_accessor.count ; i += 1) {
                vertices.push(Vertex {
                    gltf_data.@cast_buffer(pos_accessor, i * pos_accessor.componentSize(), Vec3f),
                    gltf_data.@cast_buffer(tex_accessor, i * tex_accessor.componentSize(), Vec2f),
                    gltf_data.@cast_buffer(normal_accessor, i * normal_accessor.componentSize(), Vec3f)
                });
            }

            for (uint i = 0; i < index_accessor.count ; i += 1) {
                gltf::BufferView buffer_view = gltf_data.bufferViews[index_accessor.bufferView];
                gltf::Buffer buffer = gltf_data.buffers[buffer_view.buffer];
                indices.push(gltf_data.@cast_buffer(index_accessor, i * index_accessor.componentSize(), ushort));
            }
        }
    }

    BufferInfo vertex_buffer = {
        .usage = vk::BUFFER_USAGE_VERTEX_BUFFER_BIT,
        .version = vk::BufferVersion.DEVICE_BUFFER
    };

    BufferInfo index_buffer = {
        .usage = vk::BUFFER_USAGE_INDEX_BUFFER_BIT,
        .version = vk::BufferVersion.DEVICE_BUFFER
    };

    vertex_buffer.build(vertices.entries, Vertex.sizeof * vertices.len(), device)!;
    index_buffer.build(indices.entries, ushort.sizeof * indices.len(), device)!;

    TextureList textures;

    // Create texture-images from gltf buffer
    foreach (gltf_texture : gltf_data.textures) {
        Format image_format = vk::FORMAT_B8G8R8A8_SRGB;
        gltf::Image image = gltf_data.images[gltf_texture.source];
        gltf::Sampler gltf_sampler = gltf_data.samplers[gltf_texture.sampler];

        gltf::BufferView buffer_view = gltf_data.bufferViews[image.bufferView];
        gltf::Buffer buffer = gltf_data.buffers[buffer_view.buffer];

        stb::Image image_data = stb::loadFromBuffer(buffer.data[buffer_view.offset..], buffer_view.byteLength, Channel.STBI_RGB_ALPHA)!;
        defer image_data.free();

        ImageCreateInfo image_info = vk::imageCreateInfoBuilder()
        .setImageType(vk::IMAGE_TYPE_2D)
        .setExtent({.width = image_data.width, .height = image_data.height, .depth = 1 })
        .setMipLevels(1)
        .setArrayLayers(1)
        .setSamples(vk::SAMPLE_COUNT_1_BIT)
        .setUsage(vk::IMAGE_USAGE_TRANSFER_DST_BIT | vk::IMAGE_USAGE_SAMPLED_BIT)
        .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
        .setTiling(vk::IMAGE_TILING_OPTIMAL)
        .setFormat(image_format);

        ImageBufferInfo texture = vk::createTexture(image_info, image_data.pixels, device)!;
        texture.createSampler(vk::samplerCreateInfoBuilder()
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
            .setBorderColor(vk::BORDER_COLOR_FLOAT_OPAQUE_WHITE), device.device)!;

        texture.createView(vk::imageViewCreateInfoBuilder()
            .setViewType(vk::IMAGE_VIEW_TYPE_2D)
            .setFormat(image_format)
            .setSubresourceRange({
               .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
               .baseMipLevel = 0,
               .baseArrayLayer = 0,
               .layerCount = 1,
               .levelCount = 1,
            })
            .setImage(texture.image), device.device)!;

        textures.push(texture);
    }


   // Set-up descriptor info for uniform buffer usage
    DescriptorSetLayoutCreateInfo descriptorLayoutInfo = vk::descriptorSetLayoutCreateInfoBuilder()
    .setFlags(vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR)
    .setBindings({
        {
          .binding = 0,
          .descriptorType = vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER,
          .descriptorCount = 1,
          .stageFlags = vk::SHADER_STAGE_VERTEX_BIT
        },
        {
            .binding = 1,
            .descriptorType = vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER,
            .descriptorCount = (uint)textures.len(),
            .stageFlags = vk::SHADER_STAGE_FRAGMENT_BIT
        },
    });

    DescriptorSetLayout descriptor_set_layout = device.createDescriptorSetLayout(descriptorLayoutInfo)!;

    // Bind loaded textures to descriptor
    DescriptorImages descriptor_images;

    foreach (tex: textures) {
        descriptor_images.push({
          .sampler = tex.sampler,
          .imageView = tex.view,
          .imageLayout = tex.layout,
        });
    }

    defer descriptor_images.free();

    WriteDescriptorSet textureSet = vk::writeDescriptorSetBuilder()
        .setDstBinding(1)
        .setDescriptorType(vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER)
        .setImageInfo(descriptor_images.to_array());

    WriteDescriptorSet[] descriptorSets = {
        vk::writeDescriptorSetBuilder()
        .setDescriptorType(vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER)
        .setDstBinding(0)
        .setBufferInfo({
            {
               .buffer = uniform_buffer.buffer,
               .offset = 0,
               .range = UniformData.sizeof,
            },
        }),
        textureSet
    };

    // Required for using push descriptors
    PhysicalDeviceProperties2 deviceProps2 = vk::physicalDeviceProperties2Builder()
                                                .setNext(&&vk::physicalDevicePushDescriptorPropertiesKHRBuilder().setMaxPushDescriptors(descriptorSets.len));
    vk::getPhysicalDeviceProperties2(device.physical_device, &deviceProps2);

    // Load shaders
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    ShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    ShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;

    // Use push constants, to update each rendered model matrix per frame
    PipelineLayout pipeline_layout = device.createPipelineLayout(vk::pipelineLayoutCreateInfoBuilder()
                                    .setPushConstantRanges({
                                        {
                                            .offset = 0,
                                            .size = PushConstantData.sizeof,
                                            .stageFlags = vk::SHADER_STAGE_VERTEX_BIT,
                                        },
                                    })
                                    .setSetLayouts({ descriptor_set_layout }))!;

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
               .offset = Vertex.position.offsetof
            },
            {
               .binding = 0,
               .location = 1,
               .format = vk::FORMAT_R32G32_SFLOAT,
               .offset = Vertex.tex_pos.offsetof
            },
            {
               .binding = 0,
               .location = 2,
               .format = vk::FORMAT_R32G32B32_SFLOAT,
               .offset = Vertex.normal.offsetof
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
        .setCullMode(vk::CULL_MODE_NONE)
        .setFrontFace(vk::FRONT_FACE_CLOCKWISE)
        .setDepthBiasEnable(vk::TRUE)
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

    // Create syncronisation stuff
    SemaphoreList wait_semaphores;
    SemaphoreList signal_semaphores;
    FenceList frame_fences;

    for (uint i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        wait_semaphores.push(device.createSemaphore(vk::semaphoreCreateInfoBuilder()))!;
        signal_semaphores.push(device.createSemaphore(vk::semaphoreCreateInfoBuilder()))!;
        frame_fences.push(device.createFence(vk::fenceCreateInfoBuilder().setFlags(vk::FENCE_CREATE_SIGNALED_BIT)))!;
    }

    uint frame = 0;
    while(!glfw::windowShouldClose(window)) {
        eventHandler.update();
        // Update camera  rotation on left-mouse click
        if (eventHandler.left_mouse_click) {
            camera.rotate_x(-(float)(eventHandler.mouse_x_delta * 0.5));
            camera.rotate_y(-(float)(eventHandler.mouse_y_delta * 0.5));
        }
        mem::copy(uniform_buffer.mapped, &&camera.matrix(), uniform_buffer.size);

        Fence frame_fence = frame_fences[frame];
        Semaphore wait_semaphore = wait_semaphores[frame];
        Semaphore signal_semaphore = signal_semaphores[frame];

        frame_fence.wait(device.device)!;
        frame_fence.reset(device.device)!;

        uint next_image = swapchain.getNextImage(device.device, wait_semaphore);

        RenderingInfo rendering_info = vk::renderingInfoBuilder()
        .setLayerCount(1)
        .setRenderArea({
            .offset = Offset2D{ .x = 0, .y = 0 },
            .extent = swapchain.extent,
        })
        .setColorAttachments({
            vk::renderingAttachmentInfoBuilder()
            .setImageView(swapchain.image_views[next_image])
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
        .setImage(swapchain.images[next_image])
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
        vk::cmdSetScissor(command_buffer, 0, 1, &&vk::Rect2D {.extent = swapchain.extent, .offset = Offset2D{ .x = 0, .y = 0 }});
        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, descriptorSets.len, descriptorSets);

        foreach (node : gltf_data.nodes) {
           if (node.hasMesh()) {
                Matrix4f matrix = node.recompose();
                gltf::Mesh mesh = gltf_data.meshes[node.mesh];

                foreach (primitive: mesh.primitives) {
                    Accessor index_accessor = gltf_data.accessors[primitive.indices];
                    gltf::BufferView index_buffer_view = gltf_data.bufferViews[index_accessor.bufferView];

                    Material material = gltf_data.materials[primitive.material];
                    Texture color_texture = gltf_data.textures[material.pbrMetallicRoughness.baseColorTexture.index];

                    PushConstantData constant_data = {
                        .matrix = matrix,
                        .texture = color_texture.source,
                    };

                    vk::cmdPushConstants(command_buffer, pipeline_layout, vk::SHADER_STAGE_VERTEX_BIT, 0, PushConstantData.sizeof, &constant_data);
                    vk::cmdBindVertexBuffers(command_buffer, 0, 1, &&vk::Buffer[1]{vertex_buffer.buffer}, &&vk::DeviceSize[1]{0});
                    vk::cmdBindIndexBuffer(command_buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
                    vk::cmdDrawIndexed(command_buffer, index_accessor.count, 1, 0, 0, 0);
                }
            }
        }

        vk::cmdEndRenderingKHR(command_buffer);
        ImageMemoryBarrier image_memory_end = vk::imageMemoryBarrierBuilder()
        .setSrcAccessMask(vk::ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
        .setOldLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
        .setNewLayout(vk::IMAGE_LAYOUT_PRESENT_SRC_KHR)
        .setImage(swapchain.images[next_image])
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
        .setSwapchains({ swapchain.swapchain })
        .setImageIndices({ next_image });

        vk::queuePresentKHR(device.graphics_queue, &present_info)!;
        frame = (frame + 1) % 2;
    }

    // Release binded stuff
    device.waitIdle();
    foreach (img : textures) img.free(device.device);
    uniform_buffer.free(device.device);
    index_buffer.free(device.device);
    vertex_buffer.free(device.device);
    command_pool.free(device.device);
    swapchain.free(device.device);
    descriptor_set_layout.free(device.device);
    vertex_module.free(device.device);
    frag_module.free(device.device);
    pipeline.free(device.device);
    pipeline_layout.free(device.device);

    wait_semaphores.release(device.device);
    signal_semaphores.release(device.device);
    frame_fences.release(device.device);
    surface.free(instance.instance);

    device.free();
    instance.free();
}