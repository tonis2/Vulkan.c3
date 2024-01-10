import std::io;
import vk;
import glfw;
import camera;
import std::math;
import gltf;
import std::collections::list;
import stb;
import std::time;

def DescriptorImages = List(<DescriptorImageInfo>);
def TextureList = List(<TextureData>);
def Animations = List(<AnimationMixer>);

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;

struct TextureData {
    MemoryBlock block;
    vk::Sampler sampler;
    vk::ImageView view;
}

fn void TextureData.free(&self, Device device)
{
    self.view.free(device);
    vk::destroySampler(device, self.sampler, null);
}

struct PushConstantData {
   Matrix4f matrix;
   Vec4f baseColor;
   int texture;
}

MemoryBlock vertex_buffer;
MemoryBlock uniform_buffer;

fn void drawNode(Node node, Gltf gltf, CommandBuffer buffer, PipelineLayout pipeline_layout) {
    if (node.hasMesh()) {
        gltf::Mesh mesh = gltf.meshes[node.mesh];

        foreach (primitive: mesh.primitives) {
            Accessor index_accessor = gltf.accessors[primitive["indices"]!!];
            gltf::BufferView index_view = gltf.bufferViews[index_accessor.view];

            Accessor pos_accessor = gltf.accessors[primitive["POSITION"]!!];
            gltf::BufferView pos_view = gltf.bufferViews[pos_accessor.view];

            Accessor normal_accessor = gltf.accessors[primitive["NORMAL"]!!];
            gltf::BufferView normal_view = gltf.bufferViews[normal_accessor.view];

            Accessor tex_accessor = gltf.accessors[primitive["TEXCOORD_0"]!!];
            gltf::BufferView tex_view = gltf.bufferViews[tex_accessor.view];

            Material material = gltf.materials[primitive["material"]!!];

            PushConstantData constant_data = {
                .matrix = node.globalMatrix(),
                .texture = material.pbrMetallicRoughness.baseColorTexture.source,
                .baseColor = material.pbrMetallicRoughness.baseColorFactor
            };

            vk::cmdPushConstants(buffer, pipeline_layout, vk::SHADER_STAGE_VERTEX_BIT, 0, PushConstantData.sizeof, &constant_data);
            // GLTF data buffer is uploaded without stride, so we need to bind the data with offsets
            // Sometimes the offsets are at accessor side, other times at bufferView side, to make sure they arrive, I add both offsets.
            vk::cmdBindVertexBuffers(
                buffer,
                0, 3,
                &&vk::Buffer[3]{vertex_buffer.buffer, vertex_buffer.buffer, vertex_buffer.buffer},
                &&vk::DeviceSize[3]{pos_view.offset, tex_view.offset, normal_view.offset}
            );

            vk::cmdBindIndexBuffer(buffer, vertex_buffer.buffer, index_accessor.offset + index_view.offset, index_accessor.data_type == UINT ? vk::INDEX_TYPE_UINT32 : vk::INDEX_TYPE_UINT16);
            vk::cmdDrawIndexed(buffer, index_accessor.count, 1, 0, 0, 0);
        }
    }

    // Draw child nodes
    foreach (child_index: node.children) drawNode(gltf.nodes[child_index], gltf, buffer, pipeline_layout);
}

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

    File! file = file::open("examples/gltf/assets/truck.glb", "r");
    defer file.close()!!;

    if (catch err = file) {
        io::printfn("Failed to load the gltf file");
        return;
    }

    Gltf! gltf_data = gltf::parse(&file);
    defer gltf_data.free()!!;

    if (catch err = gltf_data) {
        io::printfn("%s", err);
        return;
    }

    EventHandler eventHandler = { .window = window };
    eventHandler.init();
    camera::Camera camera = camera::new(.eye = {0.0, 0.0, 20}, .aspect = 800/600, .min_zoom = 0.01, .max_zoom = 1000);

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

    // Get device properties and add push descriptors extension
    PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2Builder()
             .setNext(&&vk::physicalDevicePushDescriptorPropertiesKHRBuilder()
             .setMaxPushDescriptors(1))
             .build(physical_device);

    io::printfn("Device found %s type %d ", device_properties.properties.deviceName[0..], device_properties.properties.deviceType);

    DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfoBuilder()
    .setQueueFamilyIndex(queue_family.graphics)
    .setQueuePriorities({ 1.0 });

    // Enable some device features
    PhysicalDeviceDescriptorIndexingFeatures device_indexing_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES,
    };

    PhysicalDeviceDynamicRenderingFeatures dynamic_rendering_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
       .dynamicRendering = vk::TRUE,
       .pNext = &device_indexing_feature
    };

    vk::PhysicalDeviceFeatures2 device_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
        .pNext = &dynamic_rendering_feature,
    };

    vk::getPhysicalDeviceFeatures2(physical_device, &device_features);

    Device device = vk::deviceCreateInfoBuilder()
        .setQueueCreateInfos({ graphicsInfo })
        .setEnabledExtensionNames(device_extensions.array_view())
        .setEnabledLayerNames(ENABLE_VALIDATION_LAYERS ? validations.array_view() : ZString[]{})
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
    Allocation device_allocation = Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        .size = 50_000_000
    }.build()!;

    // Allocation where data can be changed from CPU
    Allocation local_allocation = Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
        .size = 5_000_000
    }.build()!;

    uniform_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(UniformData.sizeof)
                    .build(device)!
                    .bind(&local_allocation)!;

    uniform_buffer.map(&&camera.matrix(), device)!;

    // I upload all mesh data, vertices, indices, texcords ...etc to a single buffer
    Accessor last_accessor = gltf_data.accessors[gltf_data.accessors.len() - 1];
    gltf::BufferView accessor_view = gltf_data.bufferViews[last_accessor.view];
    gltf::Buffer data_buffer = gltf_data.buffers[accessor_view.buffer];

    usz vertex_buffer_size = (usz)(last_accessor.offset + accessor_view.offset + accessor_view.byteLength);
    vertex_buffer = vk::bufferCreateInfoBuilder()
                   .setUsage(vk::BUFFER_USAGE_VERTEX_BUFFER_BIT | vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT)
                   .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                   .setSize(vertex_buffer_size)
                   .build(device)!
                   .bind(&device_allocation)!;

    // Copy buffer from staging to device_local (GPU only memory)
    device.@staging_buffer(.size = vertex_buffer_size, .data = data_buffer.data, .pdevice = physical_device; vk::Buffer staging_buffer) {
        device.@single_time_command(queue_family; CommandBuffer command_buffer) {
          BufferCopy copyRegion = {
               .srcOffset = 0,
               .dstOffset = 0,
               .size = vertex_buffer_size
           };
           vk::cmdCopyBuffer(command_buffer, staging_buffer, vertex_buffer.buffer, 1, &copyRegion);
        }!;
    }!;

    TextureData depth_texture;
    TextureList textures;

    vk::Format depth_format = vk::FORMAT_D32_SFLOAT_S8_UINT;
    vk::Image depth_image = vk::imageCreateInfoBuilder()
        .setImageType(vk::IMAGE_TYPE_2D)
        .setExtent({.width = WIDTH, .height = HEIGHT, .depth = 1 })
        .setMipLevels(1)
        .setArrayLayers(1)
        .setSamples(vk::SAMPLE_COUNT_1_BIT)
        .setUsage(vk::IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT)
        .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
        .setTiling(vk::IMAGE_TILING_OPTIMAL)
        .setFormat(depth_format)
        .build(device)!;

    depth_texture.block = depth_image.bind(&device_allocation)!;
    depth_texture.view = vk::imageViewCreateInfoBuilder()
        .setViewType(vk::IMAGE_VIEW_TYPE_2D)
        .setFormat(vk::FORMAT_D32_SFLOAT_S8_UINT)
        .setSubresourceRange({
          .aspectMask = vk::IMAGE_ASPECT_DEPTH_BIT,
          .baseMipLevel = 0,
          .baseArrayLayer = 0,
          .layerCount = 1,
          .levelCount = 1,
        })
        .setImage(depth_texture.block.image)
        .build(device)!;

    device.@single_time_command(queue_family; CommandBuffer command_buffer) {
       ImageMemoryBarrier imageMemoryBarrier = vk::imageMemoryBarrierBuilder()
       .setImage(depth_texture.block.image)
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
       .setNewLayout(vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL);

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

    // Create texture-images from gltf buffer
    foreach (gltf_texture : gltf_data.textures) {
        // Check that texture source, is not already loaded
        if (gltf_texture.source >= textures.len()) {
            Format image_format = vk::FORMAT_R8G8B8A8_UNORM;
            TextureData texture;

            gltf::Image image = gltf_data.images[gltf_texture.source];
            gltf::BufferView buffer_view = gltf_data.bufferViews[image.view];
            gltf::Buffer buffer = gltf_data.buffers[buffer_view.buffer];

            stb::Image! image_data = stb::loadFromBuffer(buffer.data[buffer_view.offset..], buffer_view.byteLength, stb::Channel.STBI_RGB_ALPHA);
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

            texture.block = texture_image.bind(&device_allocation)!;

            device.@staging_buffer(.size = (usz)image_data.width * image_data.height * 4, .data = image_data.pixels, .pdevice = physical_device; vk::Buffer staging_buffer) {
                // Create single-time command buffer for copying buffer to image
                device.@single_time_command(queue_family; CommandBuffer command_buffer) {
                    ImageMemoryBarrier imageMemoryBarrier = vk::imageMemoryBarrierBuilder()
                    .setImage(texture.block.image)
                    .setSubresourceRange({
                       .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                       .baseMipLevel = 0,
                       .baseArrayLayer = 0,
                       .layerCount = 1,
                       .levelCount = 1,
                    })
                    .setSrcAccessMask(0)
                    .setDstAccessMask(vk::ACCESS_TRANSFER_WRITE_BIT)
                    .setOldLayout(vk::IMAGE_LAYOUT_UNDEFINED)
                    .setNewLayout(vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL);

                    vk::cmdPipelineBarrier(
                        command_buffer,
                        vk::PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                        vk::PIPELINE_STAGE_TRANSFER_BIT,
                        0,
                        0,
                        null,
                        0,
                        null,
                        1,
                        &imageMemoryBarrier
                    );

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
                       staging_buffer,
                       texture.block.image,
                       vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
                       1,
                       &bufferCopyRegion
                    );

                    ImageMemoryBarrier imageMemoryBarrier2 = vk::imageMemoryBarrierBuilder()
                    .setImage(texture.block.image)
                    .setSubresourceRange({
                       .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                       .baseMipLevel = 0,
                       .baseArrayLayer = 0,
                       .layerCount = 1,
                       .levelCount = 1,
                    })
                    .setSrcAccessMask(vk::ACCESS_TRANSFER_WRITE_BIT)
                    .setDstAccessMask(vk::ACCESS_SHADER_READ_BIT)
                    .setOldLayout(vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL)
                    .setNewLayout(vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL);

                    vk::cmdPipelineBarrier(
                        command_buffer,
                        vk::PIPELINE_STAGE_TRANSFER_BIT,
                        vk::PIPELINE_STAGE_FRAGMENT_SHADER_BIT,
                        0,
                        0,
                        null,
                        0,
                        null,
                        1,
                        &imageMemoryBarrier2
                    );
                }!;
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

            texture.view = vk::imageViewCreateInfoBuilder()
                           .setViewType(vk::IMAGE_VIEW_TYPE_2D)
                           .setFormat(image_format)
                           .setSubresourceRange({
                              .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
                              .baseMipLevel = 0,
                              .baseArrayLayer = 0,
                              .layerCount = 1,
                              .levelCount = 1,
                           })
                           .setImage(texture.block.image)
                           .build(device)!;

            textures.push(texture);
        }
    }

   // Set-up descriptor info for uniform buffer usage
    DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfoBuilder()
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
    }).build(device)!;

    // Bind loaded textures to descriptor
    DescriptorImages descriptor_images;

    foreach (tex: textures) {
        descriptor_images.push({
          .sampler = tex.sampler,
          .imageView = tex.view,
          .imageLayout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL,
        });
    }

    defer descriptor_images.free();

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
        vk::writeDescriptorSetBuilder()
        .setDstBinding(1)
        .setDescriptorType(vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER)
        .setImageInfo(descriptor_images.array_view())
    };

    // Load shaders
    char[*] vertex_shader_data = $embed("./shaders/shader_vert.spv");
    char[*] fragment_shader_data = $embed("./shaders/shader_frag.spv");

    ShaderModule vertex_module = device.createShaderModule(&vertex_shader_data)!;
    ShaderModule frag_module = device.createShaderModule(&fragment_shader_data)!;

    // Use push constants, to update each rendered model matrix per frame
    PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfoBuilder()
        .setPushConstantRanges({
            {
                .offset = 0,
                .size = PushConstantData.sizeof,
                .stageFlags = vk::SHADER_STAGE_VERTEX_BIT,
            },
        })
        .setSetLayouts({ descriptor_set_layout }).build(device)!;

    // Create Renderpipeline info
    Pipeline pipeline = vk::graphicsPipelineCreateInfoBuilder()
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
             .stride = float.sizeof * 3,
             .inputRate = vk::VERTEX_INPUT_RATE_VERTEX,
            },
            {
             .binding = 1,
             .stride = float.sizeof * 2,
             .inputRate = vk::VERTEX_INPUT_RATE_VERTEX,
            },
            {
             .binding = 2,
             .stride = float.sizeof * 3,
             .inputRate = vk::VERTEX_INPUT_RATE_VERTEX,
            }
        })
        .setVertexAttributeDescriptions({
            {
               .binding = 0,
               .location = 0,
               .format = vk::FORMAT_R32G32B32_SFLOAT,
               .offset = 0
            },
            {
               .binding = 1,
               .location = 1,
               .format = vk::FORMAT_R32G32_SFLOAT,
               .offset = 0
            },
            {
               .binding = 2,
               .location = 2,
               .format = vk::FORMAT_R32G32B32_SFLOAT,
               .offset = 0
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
        .setCullMode(vk::CULL_MODE_BACK_BIT)
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
    .setNext(
        &&vk::pipelineRenderingCreateInfoBuilder().setColorAttachmentFormats({ swapchain_info.imageFormat })
        .setDepthAttachmentFormat(depth_format)
        .setStencilAttachmentFormat(depth_format)
    ).build(device)!;

    // Create syncronisation stuff
    SemaphoreList wait_semaphores;
    SemaphoreList signal_semaphores;
    FenceList frame_fences;

    for (uint i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        wait_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device))!;
        signal_semaphores.push(vk::semaphoreCreateInfoBuilder().build(device))!;
        frame_fences.push(vk::fenceCreateInfoBuilder().setFlags(vk::FENCE_CREATE_SIGNALED_BIT).build(device))!;
    }

    // Load animations
    Animations animations;
    defer {
        foreach (animation: animations) animation.free();
        animations.free();
    }

    foreach (animation: gltf_data.animations) {
        animations.push(gltf_data.loadAnimation(animation));
    }

    // Picking gltf scene to render
    Scene scene = gltf_data.scenes[0];
    uint frame = 0;
    Clock time = clock::now();

    while (!glfw::windowShouldClose(window)) {
        foreach (animation: animations) gltf_data.animate(.animation = &animation, .time = time.mark());

        eventHandler.update();

        if (eventHandler.scrolling) {
           camera.zoom((float)eventHandler.scrollY * 5.5);
           mem::copy(uniform_buffer.mapped, &&camera.matrix(), uniform_buffer.size);
        }

        // Update camera  rotation on left-mouse click
        if (eventHandler.left_mouse_click) {
            camera.rotate(Quaternionf {(float)eventHandler.mouse_y_delta * 0.01, (float)eventHandler.mouse_x_delta * 0.01, 0, 1});
            mem::copy(uniform_buffer.mapped, &&camera.matrix(), uniform_buffer.size);
        }

        Fence frame_fence = frame_fences[frame];
        Semaphore wait_semaphore = wait_semaphores[frame];
        Semaphore signal_semaphore = signal_semaphores[frame];
        frame_fence.wait(device)!;
        frame_fence.reset(device)!;

        uint next_image = swapchain.getNextImage(device, wait_semaphore);

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
          })
        .setDepthAttachment(&&vk::renderingAttachmentInfoBuilder()
            .setImageView(depth_texture.view)
            .setImageLayout(vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL)
            .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
            .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
            .setClearValue({
              .depthStencil = { 1.0f, 0 }
        }));


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
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline_layout, 0, descriptorSets.len, descriptorSets);

        // Draw gltf scene nodes
        foreach (node: scene.nodes) drawNode(gltf_data.nodes[node], gltf_data, command_buffer, pipeline_layout);

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
    // Release binded stuff
    device.waitIdle();
    if (ENABLE_VALIDATION_LAYERS) debug_messenger.free(instance);

    swapchain.free(device);
    foreach (view : swapchain_views) view.free(device);
    swapchain_images.free();
    swapchain_views.free();

    depth_texture.free(device);
    foreach (texture: textures) texture.free(device);
    textures.free();

    command_pool.free(device);
    descriptor_set_layout.free(device);
    vertex_module.free(device);
    frag_module.free(device);
    pipeline.free(device);
    pipeline_layout.free(device);

    wait_semaphores.release(device);
    signal_semaphores.release(device);
    frame_fences.release(device);
    surface.free(instance);
    device_allocation.free();
    local_allocation.free();
    device.free();
    instance.free();
}