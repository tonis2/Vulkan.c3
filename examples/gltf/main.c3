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

MemoryBlock vertex_buffer;
MemoryBlock index_buffer;
MemoryBlock uniform_buffer;
MemoryBlock address_buffer;
MemoryBlock joint_buffer;
MemoryBlock material_buffer;

Instance instance;
DebugUtilsMessengerEXT debug_messenger;
PhysicalDevice physical_device;
QueueFamily queue_family;

ZStringList validations;
ZStringList extensions;
ZStringList device_extensions;

List(<Vertex>) vertices;
List(<ushort>) indices;
List(<Matrix4f>) joint_data;

def TextureList = List(<DescriptorImageInfo>);

TextureList material_textures;
TextureList gbuffer_textures;

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

    Gltf! gltf_data = gltf::loadFile("examples/gltf/assets/boxes.glb");
    defer gltf_data.free()!!;

    if (catch err = gltf_data) {
        io::printfn("%s", err);
        return;
    }

    foreach (&buffer: gltf_data.buffers) {
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
    camera::Camera camera = camera::new(.eye = {0.0, 0.0, 20}, .aspect = 800/600, .min_zoom = 0.01, .max_zoom = 1000);

    // Load animations
    Animations animations;
    defer animations.release();

    foreach (animation: gltf_data.animations) {
        animations.push(gltf_data.loadAnimation(animation));
    }

    foreach (&skin: gltf_data.skins) {
        Accessor skin_accessor = gltf_data.accessors[skin.inverseBindAccessor];
        // Load inverse bind matrices
        for (uint i; i < skin_accessor.count; i++) {
             Matrix4f matrix = gltf_data.@castBuffer(skin_accessor, i, Matrix4f).transpose();
             skin.inverseBindMatrices.push(matrix);
             joint_data.push(matrix);
        }
    }

    // Preload vertex data from GLTF
    foreach (mesh: gltf_data.meshes) {
        uint morph_adjustment = 0;

        foreach (prim_index, &primitive: mesh.primitives) {
            Accessor pos_accessor = gltf_data.accessors[primitive.attributes["POSITION"]!!];
            Accessor index_accessor = gltf_data.accessors[primitive.attributes["indices"]!!];
            primitive.attributes["first_index"] = indices.len();
            primitive.attributes["first_vertex"] = vertices.len();

            for (usz i; i < index_accessor.count; i++) {
                indices.push(gltf_data.@castBuffer(index_accessor, i, ushort));
            }

            for (usz i; i < pos_accessor.count; i++) {
                Vec2f tex_cord = {|
                    usz! attribute = primitive.attributes["TEXCOORD_0"];
                    if (catch err = attribute) return Vec2f {0,0};

                    Accessor accessor = gltf_data.accessors[attribute];
                    return gltf_data.@castBuffer(accessor, i, Vec2f);
                |};

                Vec3f normal = {|
                    usz! attribute = primitive.attributes["NORMAL"];
                    if (catch err = attribute) return Vec3f {0,0,0};

                    Accessor accessor = gltf_data.accessors[attribute];
                    return gltf_data.@castBuffer(accessor, i, Vec3f);
                |};

                Vec4f tangent = {|
                    usz! attribute = primitive.attributes["TANGENT"];
                    if (catch err = attribute) return Vec4f {0,0,0,0};
                    Accessor accessor = gltf_data.accessors[attribute];
                    return gltf_data.@castBuffer(accessor, i, Vec4f);
                |};

                Vec4f skin_pos = {|
                    usz! attribute = primitive.attributes["JOINTS_0"];
                    if (catch err = attribute) return Vec4f {0,0,0,0};
                    Accessor accessor = gltf_data.accessors[attribute];

                    if (accessor.data_type == DataType.USHORT) {
                        short[4] array = gltf_data.@castBuffer(accessor, i, short[4]);
                        return Vec4f{array[0], array[1], array[2], array[3]};
                    };

                    if (accessor.data_type == DataType.CHAR) {
                        char[4] array = gltf_data.@castBuffer(accessor, i, char[4]);
                        return Vec4f{array[0], array[1], array[2], array[3]};
                    };

                    return Vec4f {0,0,0,0};
                |};

                Vec4f skin_weight = {|
                    usz! attribute = primitive.attributes["WEIGHTS_0"];
                    if (catch err = attribute) return Vec4f {0,0,0,0};

                    Accessor accessor = gltf_data.accessors[attribute];
                    return gltf_data.@castBuffer(accessor, i, Vec4f);
                |};

                Vec3f position = gltf_data.@castBuffer(pos_accessor, i, Vec3f);
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
                Accessor position = gltf_data.accessors[targets["POSITION"]!!];
                Accessor normal = gltf_data.accessors[targets["NORMAL"]!!];

                for (usz i; i < position.count; i++) {
                    vertices.push({
                       .pos = gltf_data.@castBuffer(position, i, Vec3f),
                       .normal = gltf_data.@castBuffer(normal, i, Vec3f),
                    });
                }
            }
        }
    }

    defer {
        vertices.free();
        indices.free();
        joint_data.free();
    };

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

    // Get device properties and add push descriptors extension
    PhysicalDeviceProperties2 device_properties = vk::physicalDeviceProperties2Builder()
             .setNext(&&vk::physicalDevicePushDescriptorPropertiesKHRBuilder()
             .setMaxPushDescriptors(1))
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
       .pNext = &device_indexing_feature
    };

    PhysicalDeviceDynamicRenderingFeatures dynamic_rendering_feature = {
       .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES,
       .pNext = &buffer_device_feature
    };

    PhysicalDeviceFeatures2 device_features = {
        .sType = vk::STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
        .pNext = &dynamic_rendering_feature,
    };

    vk::getPhysicalDeviceFeatures2(physical_device, &device_features);

    Device device = vk::deviceCreateInfoBuilder()
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
    vk::Allocation device_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
        .size = 500_000_000,
    }.build()!;

    // Allocation where data can be changed from CPU
    vk::Allocation local_allocation = vk::Allocation {
        .device = device,
        .pdevice = physical_device,
        .properties = vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
        .flags = vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | vk::MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
        .size = 20_000_000,
    }.build()!;

    address_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_STORAGE_BUFFER_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(AddressBuffer.sizeof)
                    .build(device)!
                    .bind(&local_allocation)!;

    uniform_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(UniformData.sizeof)
                    .build(device)!
                    .bind(&local_allocation)!
                    .getAddress(device);

    vertex_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_VERTEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT | vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT )
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(vertices.byte_size())
                    .build(device)!
                    .bind(&device_allocation)!
                    .getAddress(device);

    index_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_INDEX_BUFFER_BIT | vk::BUFFER_USAGE_TRANSFER_DST_BIT | vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT )
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(indices.byte_size())
                    .build(device)!
                    .bind(&device_allocation)!
                    .getAddress(device);

    joint_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(joint_data.byte_size())
                    .build(device)!
                    .bind(&local_allocation)!
                    .getAddress(device);

    material_buffer = vk::bufferCreateInfoBuilder()
                    .setUsage(vk::BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT)
                    .setSharingMode(vk::SHARING_MODE_EXCLUSIVE)
                    .setSize(gltf_data.materials.byte_size())
                    .build(device)!
                    .bind(&local_allocation)!
                    .getAddress(device);         

    uniform_buffer.upload(&&camera.matrix(), UniformData.sizeof, device);
    material_buffer.upload(gltf_data.materials.entries, gltf_data.materials.byte_size(), device);
    
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

    // Create depth texture
    vk::Format depth_format = vk::FORMAT_D32_SFLOAT_S8_UINT;
    DescriptorImageInfo depth_texture;

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

    depth_image.bind(&device_allocation)!;
    depth_texture.imageView = vk::imageViewCreateInfoBuilder()
        .setViewType(vk::IMAGE_VIEW_TYPE_2D)
        .setFormat(depth_format)
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

    gbuffer_textures.push(depth_texture);

    // Create GBuffer textures
    for (usz i; i < 3; i++) {
        DescriptorImageInfo texture;
        vk::Format texture_format = vk::FORMAT_R8G8B8A8_UNORM;
        vk::Image image = vk::imageCreateInfoBuilder()
            .setImageType(vk::IMAGE_TYPE_2D)
            .setExtent({.width = WIDTH, .height = HEIGHT, .depth = 1 })
            .setMipLevels(1)
            .setArrayLayers(1)
            .setSamples(vk::SAMPLE_COUNT_1_BIT)
            .setUsage(vk::IMAGE_USAGE_COLOR_ATTACHMENT_BIT | vk::IMAGE_USAGE_SAMPLED_BIT)
            .setInitialLayout(vk::IMAGE_LAYOUT_UNDEFINED)
            .setTiling(vk::IMAGE_TILING_OPTIMAL)
            .setFormat(texture_format)
            .build(device)!;
             image.bind(&device_allocation)!;

        texture.imageView = vk::imageViewCreateInfoBuilder()
            .setViewType(vk::IMAGE_VIEW_TYPE_2D)
            .setFormat(texture_format)
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
           ImageMemoryBarrier imageMemoryBarrier = vk::imageMemoryBarrierBuilder()
           .setImage(image)
           .setSubresourceRange({
              .aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
              .baseMipLevel = 0,
              .baseArrayLayer = 0,
              .layerCount = 1,
              .levelCount = 1,
           })
           .setSrcAccessMask(0)
           .setDstAccessMask(vk::ACCESS_SHADER_READ_BIT)
           .setOldLayout(vk::IMAGE_LAYOUT_UNDEFINED)
           .setNewLayout(vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL);

           vk::cmdPipelineBarrier(
               command_buffer,
               vk::PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT,
               vk::PIPELINE_STAGE_FRAGMENT_SHADER_BIT,
               0,
               0,
               null,
               0,
               null,
               1,
               &imageMemoryBarrier
           );
        }!;
        texture.imageLayout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
        gbuffer_textures.push(texture);
    }

    // Create texture-images from gltf buffer
    foreach (image : gltf_data.images) {
        Format image_format = vk::FORMAT_R8G8B8A8_UNORM;
        DescriptorImageInfo texture;
        stb::Image! image_data;

        switch (image.type) {
            case ENCODED_BASE64: {
                image_data = stb::loadFromBuffer(image.data, image.data.len, stb::Channel.STBI_RGB_ALPHA);
            };
            case ENCODED_BIN: {
                gltf::BufferView buffer_view = gltf_data.bufferViews[image.view];
                image_data = stb::loadFromBuffer(gltf_data.buffers[buffer_view.buffer].data[buffer_view.offset..], (uint)buffer_view.byteLength, stb::Channel.STBI_RGB_ALPHA);
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

        device.@single_time_command(.queue = queue_family.graphics_handle, .queue_index = queue_family.graphics; CommandBuffer command_buffer) {
            ImageMemoryBarrier imageMemoryBarrier = vk::imageMemoryBarrierBuilder()
                .setImage(texture_image)
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
                stage_image.buffer,
                texture_image,
                vk::IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
                1,
                &bufferCopyRegion
            );

            ImageMemoryBarrier imageMemoryBarrier2 = vk::imageMemoryBarrierBuilder()
                .setImage(texture_image)
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

        stage_image.free(device);

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

    PipelineInfo gbuffer_pipeline = gbufferPipeline(device,
                                                    .extent = swapchain_info.imageExtent, 
                                                    .address_buffer = address_buffer, 
                                                    .material_textures = material_textures)!;

    // PipelineInfo forward_pipeline = forwardPipeline(device,
    //                                                 .extent = swapchain_info.imageExtent, 
    //                                                 .gbuffer_textures = gbuffer_textures)!;                                                
    
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
    Scene scene = gltf_data.scenes[SCENE_INDEX];
    uint frame = 0;
    Clock time = clock::now();

    while (!glfw::windowShouldClose(window)) {
        eventHandler.update();

        if (animations.len() > 0) gltf_data.animate(.animation = &animations[0], .time = time.mark());
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

        vk::cmdSetViewport(command_buffer, 0, 1, &&vk::Viewport{.width = WIDTH, .height = -HEIGHT, .minDepth = 0.0, .maxDepth = 1.0, .y = HEIGHT });
        vk::cmdSetScissor(command_buffer, 0, 1, &&vk::Rect2D {.extent = swapchain_info.imageExtent, .offset = Offset2D{ .x = 0, .y = 0 }});
        vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, gbuffer_pipeline.pipeline);

        // Draw Gbuffer textures
        vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, gbuffer_pipeline.pipeline_layout, 0, (uint)gbuffer_pipeline.descriptor_sets.len(), gbuffer_pipeline.descriptor_sets.entries);
        vk::cmdBeginRenderingKHR(command_buffer, &gbuffer_pipeline.rendering_info);
        foreach (node: scene.nodes) drawNode(gltf_data.nodes[node], gltf_data, command_buffer, gbuffer_pipeline.pipeline_layout, device);
        vk::cmdEndRenderingKHR(command_buffer);

        // RenderingInfo forward_rendering_info = vk::renderingInfoBuilder()
        //     .setLayerCount(1)
        //     .setRenderArea({
        //         .offset = Offset2D{ .x = 0, .y = 0 },
        //         .extent = swapchain_info.imageExtent,
        //     })
        //     .setColorAttachments({
        //         vk::renderingAttachmentInfoBuilder()
        //             .setImageView(swapchain_views[next_image])
        //             .setImageLayout(vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
        //             .setStoreOp(vk::ATTACHMENT_STORE_OP_STORE)
        //             .setLoadOp(vk::ATTACHMENT_LOAD_OP_CLEAR)
        //             .setClearValue({
        //                 .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 }}
        //             }),
        //   });

        // // Draw forward render
        // vk::cmdPushDescriptorSetKHR(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, forward_pipeline.pipeline_layout, 0, (uint)forward_pipeline.descriptor_sets.len(), forward_pipeline.descriptor_sets.entries);
        // vk::cmdBeginRenderingKHR(command_buffer, &forward_rendering_info);
        // vk::cmdDrawIndexed(command_buffer, 6, 1, 0, 0, 0);
        // vk::cmdEndRenderingKHR(command_buffer);

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
    defer {
        device.waitIdle();
        if (ENABLE_VALIDATION_LAYERS) debug_messenger.free(instance);

        swapchain.free(device);
        foreach (view : swapchain_views) view.free(device);
        swapchain_images.free();
        swapchain_views.free();

        foreach (texture: material_textures) texture.free(device);
        material_textures.free();

        foreach (texture: gbuffer_textures) texture.free(device);
        gbuffer_textures.free();

        command_pool.free(device);
        gbuffer_pipeline.free(device);
        //forward_pipeline.free(device);

        wait_semaphores.release(device);
        signal_semaphores.release(device);
        frame_fences.release(device);
        surface.free(instance);
        device_allocation.free();
        local_allocation.free();
        device.free();
        instance.free();
    }
}

fn void drawNode(Node node, Gltf gltf, CommandBuffer buffer, PipelineLayout pipeline_layout, Device device) {

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
    foreach (child_index: node.children) drawNode(gltf.nodes[child_index], gltf, buffer, pipeline_layout, device);
}
