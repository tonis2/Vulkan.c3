import std::io;
import std::collections::list;
import std::math;
import vk, camera, c3w;

const WIDTH                = 800;
const HEIGHT               = 600;
const VK_API_VERSION_1_3   = vk::@makeApiVersion(0, 1, 3, 0);
const MAX_FRAMES_IN_FLIGHT = 2;

struct Vertex
{
	Vec3 pos;
	Vec4 color;
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
	
	ZStringList device_extensions;
	device_extensions.push_all({ "VK_KHR_swapchain", "VK_KHR_push_descriptor", "VK_KHR_shader_non_semantic_info" });

	vk::init()!!;

	vk::Instance instance = vk::createDefaultInstance(
		{ .enable_validation = false, .extensions = { ...vk::DEFAULT_EXTENSIONS, "VK_KHR_surface" }, .app_name = "test" }
	)!!;

	// Create surface. The window library gets our vkGetInstanceProcAddr: it has
	// no way to find the loader this program opened by itself.
	SurfaceKHR surface = (SurfaceKHR)win.create_vk_surface(
		instance,
		(c3w::VkGetInstanceProcAddrFn)vk::getInstanceProcAddr
	)!!;

	// --- Physical device selection ---
	vk::DeviceSelection selection  = vk::selectPhysicalDevice(instance, surface, device_extensions)!!;
	PhysicalDevice physical_device = selection.device;
	DeviceQueue graphics_queue     = { .index = selection.graphics_queue_index };

	// --- Logical device ---
	PhysicalDeviceVulkan13Features vulkan13Features = {
		.sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES,
		.pNext = null,
	};

	PhysicalDeviceVulkan12Features vulkan12Features = {
		.sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES,
		.pNext = &vulkan13Features,
	};

	PhysicalDeviceVulkan11Features vulkan11Features = {
		.sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES,
		.pNext = &vulkan12Features,
	};

	PhysicalDeviceFeatures2 device_features = {
		.sType = STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2,
		.pNext = &vulkan11Features,
	};

	vk::getPhysicalDeviceFeatures2(physical_device, &device_features);

	DeviceQueueCreateInfo graphicsInfo = vk::deviceQueueCreateInfo().setQueueFamilyIndex(graphics_queue.index)
		.setQueuePriorities({ 1.0 });

	Device device = vk::deviceCreateInfo().setQueueCreateInfos({ graphicsInfo })
		.setEnabledExtensionNames(device_extensions.array_view())
		.setNext(&device_features)
		.build(physical_device)!!;

	defer
	{
		device.free();
		instance.free();
	}

	graphics_queue.handle = device.getQueue(graphics_queue.index);

	// --- Render pass ---
	AttachmentReference[] colorAttachments = {
		{ .attachment = 0, .layout = IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL }
	};

	SubpassDescription subpass = {
		.pipelineBindPoint = PIPELINE_BIND_POINT_GRAPHICS,
		.colorAttachmentCount = colorAttachments.len,
		.pColorAttachments = colorAttachments.ptr
	};

	RenderPass render_pass = vk::renderPassCreateInfo()
		.setAttachments(
			{
				{
					.format = FORMAT_B8G8R8A8_UNORM,
					.samples = SAMPLE_COUNT_1_BIT,
					.initialLayout = IMAGE_LAYOUT_UNDEFINED,
					.finalLayout = IMAGE_LAYOUT_PRESENT_SRC_KHR,
					.loadOp = ATTACHMENT_LOAD_OP_CLEAR,
					.storeOp = ATTACHMENT_STORE_OP_STORE,
					.stencilLoadOp = ATTACHMENT_LOAD_OP_DONT_CARE,
					.stencilStoreOp = ATTACHMENT_STORE_OP_DONT_CARE
				}
			}
		)
		.setSubpasses({ subpass })
		.build(device)!!;

	// --- Swapchain (with framebuffers) ---
	vk::Swapchain sc;
	sc.init(device, physical_device, surface, WIDTH, HEIGHT, render_pass: render_pass)!!;

	// --- Command pool & buffers ---
	CommandPool command_pool          = device.createCommandPool(queue: graphics_queue.index)!!;
	CommandBufferList command_buffers = device.createCommandBuffers(command_pool, sc.image_count)!!;

	// --- Memory allocator & buffers ---
	vk::MemoryAllocator allocator = (vk::MemoryAllocator) {
		.device = device,
		.pdevice = physical_device,
		.queue = graphics_queue,
		.flags = MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT,
	}.init()!!;

	Memory vertex_buffer = vk::new_buffer(
		allocator: &allocator,
		usage: BUFFER_USAGE_VERTEX_BUFFER_BIT,
		properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		data: vertices.ptr,
		data_size: Vertex::size * vertices.len
	)!!;

	Memory index_buffer = vk::new_buffer(
		allocator: &allocator,
		usage: BUFFER_USAGE_INDEX_BUFFER_BIT,
		properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		data: indices.ptr,
		data_size: indices.len * ushort::size
	)!!;

	Memory uniform_buffer = vk::new_buffer(
		allocator: &allocator,
		usage: BUFFER_USAGE_UNIFORM_BUFFER_BIT,
		properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_CACHED_BIT,
		data: &&camera.matrix(),
		data_size: UniformData::size
	)!!;

	// --- Descriptors ---
	DescriptorSetLayout descriptor_set_layout = vk::descriptorSetLayoutCreateInfo()
		.setFlags(DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT)
		.setBindings(
			{
				{
					.binding = 0,
					.descriptorType = DESCRIPTOR_TYPE_UNIFORM_BUFFER,
					.descriptorCount = 1,
					.stageFlags = SHADER_STAGE_VERTEX_BIT
				}
			}
		)
		.build(device)!!;

	WriteDescriptorSet[] descriptorSets = { vk::writeDescriptorSet()
		.setDescriptorType(DESCRIPTOR_TYPE_UNIFORM_BUFFER)
		.setBufferInfo({ { .buffer = uniform_buffer.buffer, .offset = 0, .range = UniformData::size, }, }) };

	// --- Shader & pipeline ---
	ShaderModule shader_module = vk::loadShaderModule(device, shader[..])!!;
	defer shader_module.free(device);

	PipelineLayout pipeline_layout = vk::pipelineLayoutCreateInfo().setSetLayouts({ descriptor_set_layout })
		.build(device)!!;

	PipelineShaderStageCreateInfo[2] shader_stages = { vk::pipelineShaderStageCreateInfo()
		.setStage(SHADER_STAGE_VERTEX_BIT)
		.setMod(shader_module)
		.setName("vertexMain"), vk::pipelineShaderStageCreateInfo().setStage(SHADER_STAGE_FRAGMENT_BIT)
			.setMod(shader_module)
			.setName("fragmentMain") };

	VertexInputBindingDescription[1] binding_descriptions = {
		{ .binding = 0, .stride = Vertex::size, .inputRate = VERTEX_INPUT_RATE_VERTEX, }
	};

	VertexInputAttributeDescription[2] attribute_descriptions = {
		{ .binding = 0, .location = 0, .format = FORMAT_R32G32B32_SFLOAT, .offset = 0 },
		{ .binding = 0, .location = 1, .format = FORMAT_R32G32B32_SFLOAT, .offset = Vec3::size }
	};

	PipelineVertexInputStateCreateInfo vertex_input_state = vk::pipelineVertexInputStateCreateInfo()
		.setVertexBindingDescriptions(binding_descriptions[..])
		.setVertexAttributeDescriptions(attribute_descriptions[..]);

	// Use default pipeline states — caller owns array data to avoid dangling pointers
	PipelineRasterizationStateCreateInfo rasterization_state = vk::defaultRasterizationState()
		.setCullMode(CULL_MODE_FRONT_BIT);
	PipelineInputAssemblyStateCreateInfo input_assembly_state = vk::pipelineInputAssemblyStateCreateInfo()
		.setTopology(PRIMITIVE_TOPOLOGY_TRIANGLE_LIST);

	PipelineMultisampleStateCreateInfo multisample_state    = vk::defaultMultisampleState();
	PipelineDepthStencilStateCreateInfo depth_stencil_state = vk::defaultDepthStencilState();

	PipelineColorBlendAttachmentState[1] blend_attachments = { vk::defaultColorBlendAttachment() };
	PipelineColorBlendStateCreateInfo color_blend_state    = vk::defaultColorBlendState(blend_attachments[..]);

	DynamicState[2] dynamic_states = { DYNAMIC_STATE_VIEWPORT, DYNAMIC_STATE_LINE_WIDTH };

	PipelineDynamicStateCreateInfo dynamic_state = vk::pipelineDynamicStateCreateInfo()
		.setDynamicStates(dynamic_states[..]);

	Viewport[1] viewports = {
		{ .width = sc.extent.width, .height = sc.extent.height, .minDepth = 0.0, .maxDepth = 1.0 }
	};
	Rect2D[1] scissors = { { .extent = sc.extent, .offset = { 0, 0 } } };

	PipelineViewportStateCreateInfo viewport_state = vk::pipelineViewportStateCreateInfo().setViewports(viewports[..])
		.setScissors(scissors[..]);

	Pipeline pipeline = vk::graphicsPipelineCreateInfo().setStages(shader_stages[..]).setLayout(pipeline_layout)
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
	Vec2 prev_mouse;
	while (running)
	{
		EventMap event_map = win.getEvent();

		if (event_map.is_pressed(LEFT_MOUSE))
		{
			Vec2 mouse_pos = win.getMousePos();
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

		RenderPassBeginInfo render_pass_info = vk::renderPassBeginInfo().setFramebuffer(sc.framebuffers[next_image])
			.setRenderPass(render_pass)
			.setRenderArea({ .offset = { 0, 0 }, .extent = sc.extent })
			.setClearValues({ { .color = { .float32 = { 0.0, 0.0, 0.0, 1.0 } } } });

		CommandBuffer command_buffer = command_buffers[next_image];
		vk::resetCommandBuffer(command_buffer, (vk::CommandBufferResetFlags)0)!!;
		vk::beginCommandBuffer(command_buffer, &&vk::commandBufferBeginInfo())!!;

		vk::cmdBeginRenderPass(command_buffer, &render_pass_info, SUBPASS_CONTENTS_INLINE);
		vk::cmdSetViewport(
			command_buffer,
			0,
			1,
			(Viewport[]) { { .width = WIDTH, .height = HEIGHT, .minDepth = 0.0, .maxDepth = 1.0 } }
		);
		vk::cmdSetScissor(command_buffer, 0, 1, (Rect2D[]) { { .extent = sc.extent, .offset = { .x = 0, .y = 0 } } });

		vk::cmdBindPipeline(command_buffer, PIPELINE_BIND_POINT_GRAPHICS, pipeline);
		vk::cmdPushDescriptorSetKHR(
			command_buffer,
			PIPELINE_BIND_POINT_GRAPHICS,
			pipeline_layout,
			0,
			1,
			&descriptorSets[0]
		);

		vk::cmdBindVertexBuffers(command_buffer, 0, 1, (vk::Buffer[]) { vertex_buffer.buffer }, (DeviceSize[]) { 0 });
		vk::cmdBindIndexBuffer(command_buffer, index_buffer.buffer, 0, INDEX_TYPE_UINT16);
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
