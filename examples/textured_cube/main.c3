import std::io;
import std::math;
import vk, vk::lite, camera, c3w, image;

const WIDTH  = 1200;
const HEIGHT = 800;

struct Vertex {
	Vec3 pos;
	Vec2 uv;
}

// 6 faces, 4 verts each, with UVs
Vertex[] vertices = {
	// Front
	{ { -1, -1,  1 }, { 0, 0 } },
	{ {  1, -1,  1 }, { 1, 0 } },
	{ {  1,  1,  1 }, { 1, 1 } },
	{ { -1,  1,  1 }, { 0, 1 } },
	// Back
	{ { -1, -1, -1 }, { 1, 0 } },
	{ { -1,  1, -1 }, { 1, 1 } },
	{ {  1,  1, -1 }, { 0, 1 } },
	{ {  1, -1, -1 }, { 0, 0 } },
	// Top
	{ { -1,  1, -1 }, { 0, 0 } },
	{ { -1,  1,  1 }, { 0, 1 } },
	{ {  1,  1,  1 }, { 1, 1 } },
	{ {  1,  1, -1 }, { 1, 0 } },
	// Bottom
	{ { -1, -1, -1 }, { 0, 1 } },
	{ {  1, -1, -1 }, { 1, 1 } },
	{ {  1, -1,  1 }, { 1, 0 } },
	{ { -1, -1,  1 }, { 0, 0 } },
	// Right
	{ {  1, -1, -1 }, { 0, 0 } },
	{ {  1,  1, -1 }, { 0, 1 } },
	{ {  1,  1,  1 }, { 1, 1 } },
	{ {  1, -1,  1 }, { 1, 0 } },
	// Left
	{ { -1, -1, -1 }, { 1, 0 } },
	{ { -1, -1,  1 }, { 0, 0 } },
	{ { -1,  1,  1 }, { 0, 1 } },
	{ { -1,  1, -1 }, { 1, 1 } },
};

ushort[] indices = {
	0,  1,  2,  0,  2,  3,
	4,  5,  6,  4,  6,  7,
	8,  9,  10, 8,  10, 11,
	12, 13, 14, 12, 14, 15,
	16, 17, 18, 16, 18, 19,
	20, 21, 22, 20, 22, 23,
};

char[*] shader = $embed("./shaders/shader.spv");
char[*] logo_data = $embed("./logo.png");

fn void main(String[] args) {
	c3w::Window win = c3w::new(params: { .width = WIDTH, .height = HEIGHT, .x = 0, .y = 0 }, name: "Textured Cube")!!;
	defer win.free();

	Camera cam = camera::new(eye: { 0.0, 5.0, 10 }, aspect: (float)WIDTH / HEIGHT, min_zoom: 0.01, max_zoom: 1000);

	// Instance + surface (user responsibility)
	vk::Instance instance = vk::createDefaultInstance({ .enable_validation = true })!!;
	defer instance.free();

	vk::SurfaceKHR surface = (vk::SurfaceKHR)win.create_vk_surface(instance)!!;
	defer surface.free(instance);

	// --- lite::init does everything else ---
	lite::Context ctx = lite::init(instance, surface, { .width = WIDTH, .height = HEIGHT, .enable_depth = true })!!;
	defer ctx.free();

	// Buffers
	vk::Memory vertex_buffer = vk::new_buffer(
		&ctx.allocator,
		usage: vk::BUFFER_USAGE_VERTEX_BUFFER_BIT,
		properties: vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		data: vertices.ptr,
		data_size: Vertex.sizeof * vertices.len,
	)!!;
	defer vertex_buffer.free();

	vk::Memory index_buffer = vk::new_buffer(
		&ctx.allocator,
		usage: vk::BUFFER_USAGE_INDEX_BUFFER_BIT,
		properties: vk::MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		data: indices.ptr,
		data_size: ushort.sizeof * indices.len,
	)!!;
	defer index_buffer.free();

	vk::Memory uniform_buffer = vk::new_buffer(
		&ctx.allocator,
		usage: vk::BUFFER_USAGE_UNIFORM_BUFFER_BIT,
		properties: vk::MEMORY_PROPERTY_HOST_VISIBLE_BIT | vk::MEMORY_PROPERTY_HOST_CACHED_BIT,
		data: &&cam.matrix(),
		data_size: camera::UniformData.sizeof,
	)!!;
	defer uniform_buffer.free();

	// Texture
	image::Image img = image::png::load_bytes(logo_data[..])!!;
	defer img.free();

	lite::Texture texture = ctx.createTexture(img.pixels[..], img.width, img.height)!!;
	defer texture.free(ctx.device);

	// Descriptor layout (push descriptors)
	vk::DescriptorSetLayout desc_layout = lite::createPushDescriptorLayout(ctx.device, (vk::DescriptorSetLayoutBinding[]) {
		{
			.binding = 0,
			.descriptorType = vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER,
			.descriptorCount = 1,
			.stageFlags = vk::SHADER_STAGE_VERTEX_BIT,
		},
		{
			.binding = 1,
			.descriptorType = vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER,
			.descriptorCount = 1,
			.stageFlags = vk::SHADER_STAGE_FRAGMENT_BIT,
		},
	})!!;
	defer desc_layout.free(ctx.device);

	// Pipeline
	lite::GraphicsPipeline pipe = ctx.createPipeline({
		.shaders = {
			{ .spirv = shader[..], .entry_name = "vertexMain", .stage = vk::SHADER_STAGE_VERTEX_BIT },
			{ .spirv = shader[..], .entry_name = "fragmentMain", .stage = vk::SHADER_STAGE_FRAGMENT_BIT },
		},
		.vertex_bindings = {
			{ .binding = 0, .stride = Vertex.sizeof, .inputRate = vk::VERTEX_INPUT_RATE_VERTEX },
		},
		.vertex_attributes = {
			{ .binding = 0, .location = 0, .format = vk::FORMAT_R32G32B32_SFLOAT, .offset = Vertex.pos.offsetof },
			{ .binding = 0, .location = 1, .format = vk::FORMAT_R32G32_SFLOAT, .offset = Vertex.uv.offsetof },
		},
		.descriptor_layouts = { desc_layout },
		.cull_mode = vk::CULL_MODE_FRONT_BIT,
		.depth_test = true,
		.depth_write = true,
		.depth_format = ctx.depth_format,
	})!!;
	defer pipe.free(ctx.device);

	// Pre-build descriptor writes
	vk::DescriptorBufferInfo buffer_info = {
		.buffer = uniform_buffer.buffer,
		.offset = 0,
		.range = camera::UniformData.sizeof,
	};

	vk::DescriptorImageInfo image_info = {
		.sampler = texture.sampler,
		.imageView = texture.view,
		.imageLayout = vk::IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL,
	};

	vk::WriteDescriptorSet[2] descriptor_writes = {
		vk::writeDescriptorSet()
			.setDstBinding(0)
			.setDescriptorType(vk::DESCRIPTOR_TYPE_UNIFORM_BUFFER)
			.setBufferInfo({ buffer_info }),
		vk::writeDescriptorSet()
			.setDstBinding(1)
			.setDescriptorType(vk::DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER)
			.setImageInfo({ image_info }),
	};

	// Render loop
	Vec2f prev_mouse;
	bool running = true;
	while (running) {
		c3w::EventMap event_map = win.getEvent();

		if (event_map.is_pressed(LEFT_MOUSE)) {
			Vec2f mouse_pos = win.getMousePos();
			cam.rotate(mouse_pos.x - prev_mouse.x, mouse_pos.y - prev_mouse.y);
			uniform_buffer.upload(&&cam.matrix(), camera::UniformData.sizeof);
			prev_mouse = mouse_pos;
		}

		if (event_map.is_pressed(MOUSE_SCROLL_UP)) {
			cam.zoom(5);
			uniform_buffer.upload(&&cam.matrix(), camera::UniformData.sizeof);
		}

		if (event_map.is_pressed(MOUSE_SCROLL_DOWN)) {
			cam.zoom(-5);
			uniform_buffer.upload(&&cam.matrix(), camera::UniformData.sizeof);
		}

		if (event_map.is_pressed(ESCAPE)) {
			running = false;
		}

		vk::CommandBuffer cmd = ctx.beginFrame()!!;

		vk::cmdBindPipeline(cmd, vk::PIPELINE_BIND_POINT_GRAPHICS, pipe.handle);
		vk::cmdPushDescriptorSetKHR(cmd, vk::PIPELINE_BIND_POINT_GRAPHICS, pipe.layout, 0, 2, &descriptor_writes);
		vk::cmdBindVertexBuffers(cmd, 0, 1, (vk::Buffer[]){ vertex_buffer.buffer }, (vk::DeviceSize[]){ 0 });
		vk::cmdBindIndexBuffer(cmd, index_buffer.buffer, 0, vk::INDEX_TYPE_UINT16);
		vk::cmdDrawIndexed(cmd, (uint)indices.len, 1, 0, 0, 0);

		ctx.endFrame()!!;
	}

	ctx.device.waitIdle();
}
