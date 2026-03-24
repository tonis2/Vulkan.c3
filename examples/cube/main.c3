import std::io;
import std::collections::list;
import std::math;
import c3w;
import vk;
import camera;

const WIDTH                = 800;
const HEIGHT               = 600;
const VK_API_VERSION_1_3   = vk::@makeApiVersion(0, 1, 3, 0);
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex
{
	Vec3f pos;
	Vec4f color;
}

Vertex[] vertices = {
	{ { -1.0, -1.0, 1.0 }, { 1.0, 0, 0, 1.0 } },
	{ { 1.0, -1.0, 1.0 }, { 1.0, 0, 0, 1.0 } },
	{ { 1.0, 1.0, 1.0 }, { 1.0, 0, 0, 1.0 } },
	{ { -1.0, 1.0, 1.0 }, { 1.0, 0, 0, 1.0 } },
	{ { -1.0, -1.0, -1.0 }, { 255, 255, 255, 1.0 } },
	{ { -1.0, 1.0, -1.0 }, { 255, 255, 255, 1.0 } },
	{ { 1.0, 1.0, -1.0 }, { 255, 255, 255, 1.0 } },
	{ { 1.0, -1.0, -1.0 }, { 255, 255, 255, 1.0 } },
	{ { -1.0, 1.0, -1.0 }, { 0.7, 0.8, 150, 1.0 } },
	{ { -1.0, 1.0, 1.0 }, { 0.7, 0.8, 150, 1.0 } },
	{ { 1.0, 1.0, 1.0 }, { 0.7, 0.8, 150, 1.0 } },
	{ { 1.0, 1.0, -1.0 }, { 0.7, 0.8, 150, 1.0 } },
	{ { -1.0, -1.0, -1.0 }, { 0.0, 128, 255, 1.0 } },
	{ { 1.0, -1.0, -1.0 }, { 0.0, 128, 255, 1.0 } },
	{ { 1.0, -1.0, 1.0 }, { 0.0, 128, 255, 1.0 } },
	{ { -1.0, -1.0, 1.0 }, { 0.0, 128, 255, 1.0 } },
	{ { 1.0, -1.0, -1.0 }, { 0.0, 100.0, 0.0, 1.0 } },
	{ { 1.0, 1.0, -1.0 }, { 0.0, 100.0, 0.0, 1.0 } },
	{ { 1.0, 1.0, 1.0 }, { 0.0, 100.0, 0.0, 1.0 } },
	{ { 1.0, -1.0, 1.0 }, { 0.0, 100.0, 0.0, 1.0 } },
	{ { -1.0, -1.0, -1.0 }, { 0.2, 0.2, 0.2, 1.0 } },
	{ { -1.0, -1.0, 1.0 }, { 0.2, 0.2, 0.2, 1.0 } },
	{ { -1.0, 1.0, 1.0 }, { 0.2, 0.2, 0.2, 1.0 } },
	{ { -1.0, 1.0, -1.0 }, { 0.2, 0.2, 0.2, 1.0 } },
	};

ushort[] indices = {
	0,
	1,
	2,
	0,
	2,
	3, // front
	4,
	5,
	6,
	4,
	6,
	7, // back
	8,
	9,
	10,
	8,
	10,
	11, // top
	12,
	13,
	14,
	12,
	14,
	15, // bottom
	16,
	17,
	18,
	16,
	18,
	19, // right
	20,
	21,
	22,
	20,
	22,
	23 // left
	};

// Shader data
char[*] shader = $embed( "./shaders/shader.spv" );

fn void main(String[] args)
{
	c3w::Window win = c3w::new(params: { .width = WIDTH, .height = HEIGHT, .x = 0, .y = 0 }, name: "Cube")!!;
	defer win.free();

	Camera camera = camera::new(eye: { 0.0, 5.0, 10 }, aspect: WIDTH / HEIGHT, min_zoom: 0.01, max_zoom: 1000);

	// --- Instance & surface ---
	ZStringList device_extensions;
	device_extensions.push_all({ "VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_shader_non_semantic_info" });

	ZStringList extensions;
	extensions.push_all({ "VK_KHR_surface" });

	$switch (env::OS_TYPE):
		$case MACOS:
			extensions.push_all({ "VK_EXT_metal_surface", "VK_KHR_portability_enumeration" });
			device_extensions.push("VK_KHR_portability_subset");
		$case WIN32:
			extensions.push_all({ "VK_KHR_win32_surface" });
		$case LINUX:
			BackendType backend = win.getBackend();
			switch (backend)
			{
				case WAYLAND:
					extensions.push_all({ "VK_KHR_wayland_surface" });
				case X11:
					extensions.push_all({ "VK_KHR_xcb_surface" });
				default:
			}
		$default:
	$endswitch

	vk::checkInstanceExtensionSupport(extensions)!!;

	ApplicationInfo info = {
		.pApplicationName = "TEST",
		.pEngineName = "Super engine",
		.applicationVersion = vk::@makeApiVersion(0, 1, 0, 0),
		.engineVersion = vk::@makeApiVersion(0, 1, 0, 0),
		.apiVersion = vk::@makeApiVersion(0, 1, 3, 0)
	};

	InstanceCreateInfo instanceInfo = vk::instanceCreateInfo().setApplicationInfo(
		&info
	).setFlags(
		env::os_is_darwin() ? vk::INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR : 0
	).setEnabledExtensionNames(extensions.array_view());

	Instance instance = instanceInfo.build()!!;

	// Create surface
	SurfaceKHR surface;
	$switch (env::OS_TYPE):
		$case MACOS:
			MetalSurfaceCreateInfoEXT createInfo = {
				.sType = vk::STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT,
				.pLayer = (CAMetalLayer*)win.src.layer.id
			};

			vk::createMetalSurfaceEXT(instance, &createInfo, null, &surface)!!;
		$case LINUX:
			{
				switch (backend)
				{
					case WAYLAND:
						{
							WaylandWindow* wl = (WaylandWindow*)win.src.backend_data;
							WaylandSurfaceCreateInfoKHR createInfo = {
								vk::STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR,
								null,
								0,
								wl.display,
								wl.surface,
							};
							vk::createWaylandSurfaceKHR(instance, &createInfo, null, &surface)!!;
						}
					case X11:
						{
							X11Window* x11 = (X11Window*)win.src.backend_data;
							XcbSurfaceCreateInfoKHR createInfo = {
								vk::STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
								null,
								0,
								x11.connection,
								(vk::Window)x11.window,
							};
							vk::createXcbSurfaceKHR(instance, &createInfo, null, &surface)!!;
						}
					default:
						{
							// No backend available
						}
				}
			}
		$case WIN32:
			{
				Win32SurfaceCreateInfoKHR createInfo = {
					vk::STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
					null,
					0,
					win.src.instance,
					win.src.hwnd
				};
				vk::createWin32SurfaceKHR(instance, &createInfo, null, &surface)!!;
			}
		$default:
			{
			}
	$endswitch

	// --- Physical device selection ---
	vk::DeviceSelection selection = vk::selectPhysicalDevice(instance, surface, device_extensions)!!;
	PhysicalDevice physical_device = selection.device;
	DeviceQueue graphics_queue = { .index = selection.graphics_queue_index };

	// --- Logical device ---
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

	DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfo().setQueueFamilyIndex(
		graphics_queue.index
	).setQueuePriorities({ 1.0 });

	Device device = vk::deviceCreateInfo().setQueueCreateInfos(
		{ graphicsInfo }
	).setEnabledExtensionNames(device_extensions.array_view()).setNext(&device_features).build(physical_device)!!;

	defer
	{
		device.free();
		instance.free();
	}

	graphics_queue.handle = device.getQueue(graphics_queue.index);

	// --- Render pass ---
	AttachmentReference[] colorAttachments = {
		{ .attachment = 0, .layout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL }
	};

	SubpassDescription subpass = {
		.pipelineBindPoint = vk::PIPELINE_BIND_POINT_GRAPHICS,
		.colorAttachmentCount = colorAttachments.len,
		.pColorAttachments = colorAttachments.ptr
	};

	RenderPass render_pass = vk::renderPassCreateInfo().setAttachments(
		{
			{
				.format = vk::FORMAT_B8G8R8A8_UNORM,
				.samples = vk::SAMPLE_COUNT_1_BIT,
				.initialLayout = vk::IMAGE_LAYOUT_UNDEFINED,
				.finalLayout = vk::IMAGE_LAYOUT_PRESENT_SRC_KHR,
				.loadOp = vk::ATTACHMENT_LOAD_OP_CLEAR,
				.storeOp = vk::ATTACHMENT_STORE_OP_STORE,
				.stencilLoadOp = vk::ATTACHMENT_LOAD_OP_DONT_CARE,
				.stencilStoreOp = vk::ATTACHMENT_STORE_OP_DONT_CARE
			}
		}
	).setSubpasses({ subpass }).build(device)!!;

	// --- Swapchain (with framebuffers) ---
	vk::Swapchain sc;
	sc.init(device, physical_device, surface, WIDTH, HEIGHT, render_pass: render_pass)!!;

	// --- Command pool & buffers ---
	CommandPool command_pool = device.createCommandPool(queue: graphics_queue.index)!!;
	CommandBufferList command_buffers = device.createCommandBuffers(command_pool, sc.image_count)!!;

	// --- Memory allocator & buffers ---
	vk::MemoryAllocator allocator = (vk::MemoryAllocator) {
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

	// --- Descriptors ---
	DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfo().setFlags(
		vk::DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR
	).setBindings(
		{
			{
				.binding = 0,
				.descriptorType = vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER,
				.descriptorCount = 1,
				.stageFlags = vk::SHADER_STAGE_VERTEX_BIT
			}
		}
	).build(device)!!;

	WriteDescriptorSet[] descriptorSets = {
		vk::writeDescriptorSet().setDescriptorType(
			vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER
		).setBufferInfo({ { .buffer = uniform_buffer.buffer, .offset = 0, .range = UniformData.sizeof, }, })
	};

	// --- Shader & pipeline ---
	ShaderModule shader_module = vk::loadShaderModule(device, shader[..])!!;
	defer shader_module.free(device);

	PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfo().setSetLayouts(
		{ descriptor_set_layout }
	).build(device)!!;

	PipelineShaderStageCreateInfo[2] shader_stages = {
		vk::pipelineShaderStageCreateInfo().setStage(
			vk::SHADER_STAGE_VERTEX_BIT
		).setMod(shader_module).setName("vertexMain"),
		vk::pipelineShaderStageCreateInfo().setStage(
			vk::SHADER_STAGE_FRAGMENT_BIT
		).setMod(shader_module).setName("fragmentMain")
	};

	VertexInputBindingDescription[1] binding_descriptions = {
		{ .binding = 0, .stride = Vertex.sizeof, .inputRate = vk::VERTEX_INPUT_RATE_VERTEX, }
	};

	VertexInputAttributeDescription[2] attribute_descriptions = {
		{ .binding = 0, .location = 0, .format = vk::FORMAT_R32G32B32_SFLOAT, .offset = Vertex.pos.offsetof },
		{ .binding = 0, .location = 1, .format = vk::FORMAT_R32G32B32_SFLOAT, .offset = Vertex.color.offsetof }
	};

	PipelineVertexInputStateCreateInfo vertex_input_state = vk::pipelineVertexInputStateCreateInfo()
		.setVertexBindingDescriptions(
		binding_descriptions[..]
	).setVertexAttributeDescriptions(attribute_descriptions[..]);

	// Use default pipeline states — caller owns array data to avoid dangling pointers
	PipelineRasterizationStateCreateInfo rasterization_state = vk::defaultRasterizationState().setCullMode(
		vk::CULL_MODE_FRONT_BIT
	);
	PipelineInputAssemblyStateCreateInfo input_assembly_state = vk::pipelineInputAssemblyStateCreateInfo().setTopology(
		vk::PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
	);

	PipelineMultisampleStateCreateInfo multisample_state = vk::defaultMultisampleState();
	PipelineDepthStencilStateCreateInfo depth_stencil_state = vk::defaultDepthStencilState();

	PipelineColorBlendAttachmentState[1] blend_attachments = { vk::defaultColorBlendAttachment() };
	PipelineColorBlendStateCreateInfo color_blend_state = vk::defaultColorBlendState(blend_attachments[..]);

	DynamicState[2] dynamic_states = { vk::DYNAMIC_STATE_VIEWPORT, vk::DYNAMIC_STATE_LINE_WIDTH };

	PipelineDynamicStateCreateInfo dynamic_state = vk::pipelineDynamicStateCreateInfo().setDynamicStates(
		dynamic_states[..]
	);

	Viewport[1] viewports = {
		{ .width = sc.extent.width, .height = sc.extent.height, .minDepth = 0.0, .maxDepth = 1.0 }
	};
	Rect2D[1] scissors = { { .extent = sc.extent, .offset = { 0, 0 } } };

	PipelineViewportStateCreateInfo viewport_state = vk::pipelineViewportStateCreateInfo().setViewports(
		viewports[..]
	).setScissors(scissors[..]);

	Pipeline pipeline = vk::graphicsPipelineCreateInfo()
	.setStages(
		shader_stages[..]
	)
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

	// --- Frame sync ---
	vk::FrameSync frame_sync;
	frame_sync.init(device, sc.image_count)!!;

	bool running = true;
	Vec2f prev_mouse;
	while (running)
	{
		EventMap event_map = win.getEvent();

		if (event_map.is_pressed(LEFT_MOUSE))
		{
			Vec2f mouse_pos = win.getMousePos();
			camera.rotate(mouse_pos.x - prev_mouse.x, (mouse_pos.y - prev_mouse.y));
			uniform_buffer.upload(&&camera.matrix(), uniform_buffer.size);
			prev_mouse = mouse_pos;
		}

		if (event_map.is_pressed(MOUSE_SCROLL_UP))
		{
			camera.zoom(5);
			uniform_buffer.upload(&&camera.matrix(), size: uniform_buffer.size);
		}

		if (event_map.is_pressed(MOUSE_SCROLL_DOWN))
		{
			camera.zoom(-5);
			uniform_buffer.upload(&&camera.matrix(), size: uniform_buffer.size);
		}

		if (event_map.is_pressed(ESCAPE))
		{
			running = false;
		}

		uint next_image = frame_sync.beginFrame(device, sc.handle)!!;

		RenderPassBeginInfo render_pass_info = vk::renderPassBeginInfo().setFramebuffer(
			sc.framebuffers[next_image]
		).setRenderPass(
			render_pass
		).setRenderArea(
			{ .offset = { 0, 0 }, .extent = sc.extent }
		).setClearValues({ { .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 } } } });

		CommandBuffer command_buffer = command_buffers[next_image];
		vk::resetCommandBuffer(command_buffer, 0)!!;
		vk::beginCommandBuffer(command_buffer, &&vk::commandBufferBeginInfo())!!;

		vk::cmdBeginRenderPass(command_buffer, &render_pass_info, vk::SUBPASS_CONTENTS_INLINE);
		vk::cmdSetViewport(
			command_buffer,
			0,
			1,
			(Viewport[]) { { .width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 } }
		);
		vk::cmdSetScissor(command_buffer, 0, 1, (Rect2D[]) { { .extent = sc.extent, .offset = { .x = 0, .y = 0 } } });

		vk::cmdBindPipeline(command_buffer, vk::PIPELINE_BIND_POINT_GRAPHICS, pipeline);
		vk::cmdPushDescriptorSetKHR(
			command_buffer,
			vk::PIPELINE_BIND_POINT_GRAPHICS,
			pipeline_layout,
			0,
			1,
			&descriptorSets[0]
		);

		vk::cmdBindVertexBuffers(command_buffer, 0, 1, (Buffer[]) { vertex_buffer.buffer }, (DeviceSize[]) { 0 });
		vk::cmdBindIndexBuffer(command_buffer, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
		vk::cmdDrawIndexed(command_buffer, indices.len, 1, 0, 0, 0);
		vk::cmdEndRenderPass(command_buffer);

		frame_sync.endFrame(graphics_queue.handle, command_buffer, sc.handle, next_image)!!;
	}

	// Wait until Vulkan is finished, before freeing stuff
	device.waitIdle();

	sc.free(device);
	render_pass.free(device);
	command_pool.free(device);
	allocator.free();
	descriptor_set_layout.free(device);
	pipeline.free(device);
	pipeline_layout.free(device);
	frame_sync.free(device);
	surface.free(instance);
}
