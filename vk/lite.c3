module vk;

import std::io;
import std::core::env;
import std::collections::list;

struct Texture
{
	vk::Image image;
	vk::ImageView view;
	vk::Sampler sampler;
	vk::Memory* memory;
	vk::Format format;
	uint width;
	uint height;
}

struct TextureConfig
{
	vk::Format format;
	vk::Filter filter;
	vk::SamplerAddressMode address_mode;
}

struct ShaderStage
{
	char[] spirv;
	ZString entry_name;
	vk::ShaderStageFlagBits stage;
}

struct PipelineConfig
{
	ShaderStage[] shaders;
	vk::VertexInputBindingDescription[] vertex_bindings;
	vk::VertexInputAttributeDescription[] vertex_attributes;
	vk::DescriptorSetLayout[] descriptor_layouts;
	vk::PushConstantRange[] push_constant_ranges;
	vk::Format color_format;
	vk::Format depth_format;
	vk::PrimitiveTopology topology;
}

// ============================================================================
// Barrier helpers
// ============================================================================

fn vk::ImageMemoryBarrier2 colorBeginBarrier(vk::Image image)
{
	return {
		.sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
		.image = image,
		.srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
		.dstStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
		.srcAccessMask = 0,
		.dstAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
		.oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
		.newLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
		.subresourceRange = {
			.aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
			.baseMipLevel = 0,
			.levelCount = 1,
			.baseArrayLayer = 0,
			.layerCount = 1,
		},
	};
}

fn vk::ImageMemoryBarrier2 colorEndBarrier(vk::Image image)
{
	return {
		.sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
		.image = image,
		.srcStageMask = vk::PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT,
		.dstStageMask = vk::PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT,
		.srcAccessMask = vk::ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT,
		.dstAccessMask = 0,
		.oldLayout = vk::IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
		.newLayout = vk::IMAGE_LAYOUT_PRESENT_SRC_KHR,
		.subresourceRange = {
			.aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
			.baseMipLevel = 0,
			.levelCount = 1,
			.baseArrayLayer = 0,
			.layerCount = 1,
		},
	};
}

fn vk::ImageMemoryBarrier2 depthBarrier(vk::Image image)
{
	return {
		.sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
		.image = image,
		.srcStageMask = vk::PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT | vk::PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT,
		.dstStageMask = vk::PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT | vk::PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT,
		.srcAccessMask = 0,
		.dstAccessMask = vk::ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT,
		.oldLayout = vk::IMAGE_LAYOUT_UNDEFINED,
		.newLayout = vk::IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL,
		.subresourceRange = {
			.aspectMask = vk::IMAGE_ASPECT_DEPTH_BIT,
			.baseMipLevel = 0,
			.levelCount = 1,
			.baseArrayLayer = 0,
			.layerCount = 1,
		},
	};
}

fn vk::ImageMemoryBarrier2 transferBarrier(vk::Image image, vk::ImageLayout old_layout, vk::ImageLayout new_layout)
{
	return {
		.sType = vk::STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
		.image = image,
		.srcStageMask = vk::PIPELINE_STAGE_2_TRANSFER_BIT_KHR,
		.dstStageMask = vk::PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT,
		.srcAccessMask = vk::ACCESS_2_TRANSFER_WRITE_BIT,
		.dstAccessMask = vk::ACCESS_2_SHADER_READ_BIT,
		.oldLayout = old_layout,
		.newLayout = new_layout,
		.subresourceRange = {
			.aspectMask = vk::IMAGE_ASPECT_COLOR_BIT,
			.baseMipLevel = 0,
			.levelCount = 1,
			.baseArrayLayer = 0,
			.layerCount = 1,
		},
	};
}

// ============================================================================
// Texture
// ============================================================================

fn void Texture.free(&self, vk::Device device)
{
	vk::destroySampler(device, self.sampler, null);
	self.view.free(device);
	if (self.memory != null)
	{
		self.memory.free();
		mem::free(self.memory);
	}
}

// ============================================================================
// Physical device selection
// ============================================================================

struct DeviceSelection
{
	PhysicalDevice device;
	uint graphics_queue_index;
	uint present_queue_index;
	uint transfer_queue_index;
}

faultdef NO_SUITABLE_DEVICE;

fn DeviceSelection? selectPhysicalDevice(
	Instance instance,
	SurfaceKHR surface,
	ZStringList required_extensions = { },
	bool prefer_discrete = true
)
{
	DeviceList devices = instance.getDevices()!;
	defer devices.free();

	DeviceSelection best;
	bool found          = false;
	bool found_discrete = false;

	foreach (entry : devices)
	{
		// Check extension support
		if (required_extensions.len() > 0)
		{
			bool supports = entry.checkExtensionSupport(required_extensions)!;
			if (!supports) continue;
		}

		QueuePropertiesList queue_properties = entry.getQueueProperties()!;
		defer queue_properties.free();

		// Find graphics + transfer queue
		int graphics_index = queue_properties.find(
			fn (usz index, QueueFamilyProperties props) => (QueueFlagBits)props.queueFlags & QUEUE_GRAPHICS_BIT != 0
		);
		if (graphics_index < 0) continue;

		// Check surface support
		bool surface_ok = surface.checkSurfaceSupport((usz)graphics_index, entry)!;
		if (!surface_ok) continue;

		// Find transfer queue (prefer dedicated)
		int transfer_index = queue_properties.find(
			fn (
				usz index,
				QueueFamilyProperties props
			) => (QueueFlagBits)props.queueFlags & QUEUE_TRANSFER_BIT != 0
				&& (QueueFlagBits)props.queueFlags & QUEUE_GRAPHICS_BIT == 0
		);
		if (transfer_index < 0)
		{
			transfer_index = queue_properties.find(
				fn (usz index, QueueFamilyProperties props) => (QueueFlagBits)props.queueFlags & QUEUE_TRANSFER_BIT != 0
			);
		}

		PhysicalDeviceProperties properties;
		getPhysicalDeviceProperties(entry, &properties);

		bool is_discrete = properties.deviceType == PHYSICAL_DEVICE_TYPE_DISCRETE_GPU;

		// Prefer discrete GPU if requested
		if (!found || (prefer_discrete && is_discrete && !found_discrete))
		{
			best = {
				.device = entry,
				.graphics_queue_index = (uint)graphics_index,
				.present_queue_index = (uint)graphics_index,
				.transfer_queue_index = transfer_index >= 0 ? (uint)transfer_index : (uint)graphics_index,
			};
			found = true;
			found_discrete = is_discrete;
			io::printfn("Device selected %s", (ZString)properties.deviceName[0..]);
		}
	}

	if (!found) return NO_SUITABLE_DEVICE~;
	return best;
}

struct Swapchain
{
	SwapchainKHR handle;
	SurfaceFormatKHR format;
	Extent2D extent;
	ImageList images;
	ImageViewList views;
	FrameBufferList framebuffers;
	uint image_count;
}

faultdef NO_SUITABLE_FORMAT;

fn Swapchain? Swapchain.init(
	&self,
	Device device,
	PhysicalDevice pdevice,
	SurfaceKHR surface,
	uint width,
	uint height,
	RenderPass render_pass = null,
	Format preferred_format = FORMAT_B8G8R8A8_UNORM,
	PresentModeKHR preferred_mode = PRESENT_MODE_FIFO_KHR
)
{
	SurfaceCapabilitiesKHR capabilities = surface.deviceSurfaceCapabilities(pdevice)!;
	SurfaceFormatList surface_formats   = surface.getFormats(pdevice)!;
	defer surface_formats.free();

	// Pick format
	SurfaceFormatKHR chosen_format = { .format = preferred_format, .colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR };
	bool found_format              = false;
	foreach (sf : surface_formats)
	{
		if (sf.format == preferred_format && sf.colorSpace == COLOR_SPACE_SRGB_NONLINEAR_KHR)
		{
			chosen_format = sf;
			found_format = true;
			break;
		}
	}
	if (!found_format && surface_formats.len() > 0)
	{
		chosen_format = surface_formats[0];
	}

	// Pick image count
	uint min_images = capabilities.minImageCount + 1;
	if (capabilities.maxImageCount != 0 && min_images > capabilities.maxImageCount)
	{
		min_images = capabilities.maxImageCount;
	}

	Extent2D extent = { width, height };

	SwapchainCreateInfoKHR swapchain_info = swapchainCreateInfoKHR().setMinImageCount(min_images)
		.setImageUsage(IMAGE_USAGE_COLOR_ATTACHMENT_BIT)
		.setImageSharingMode(SHARING_MODE_EXCLUSIVE)
		.setCompositeAlpha(COMPOSITE_ALPHA_OPAQUE_BIT_KHR)
		.setPresentMode(preferred_mode)
		.setPreTransform(capabilities.currentTransform)
		.setImageColorSpace(chosen_format.colorSpace)
		.setImageFormat(chosen_format.format)
		.setSurface(surface)
		.setImageArrayLayers(1)
		.setImageExtent(extent)
		.setOldSwapchain(self.handle);

	self.handle = swapchain_info.build(device)!;
	self.format = chosen_format;
	self.extent = extent;
	self.image_count = min_images;
	self.images = self.handle.getImages(device, min_images)!;

	// Create image views
	for (uint i = 0; i < min_images; ++i)
	{
		ImageView view = imageViewCreateInfo().setViewType(IMAGE_VIEW_TYPE_2D).setFormat(chosen_format.format)
			.setComponents(
				{
					.r = COMPONENT_SWIZZLE_IDENTITY,
					.g = COMPONENT_SWIZZLE_IDENTITY,
					.b = COMPONENT_SWIZZLE_IDENTITY,
					.a = COMPONENT_SWIZZLE_IDENTITY,
				}
			)
			.setSubresourceRange(
				{
					.aspectMask = IMAGE_ASPECT_COLOR_BIT,
					.baseMipLevel = 0,
					.baseArrayLayer = 0,
					.layerCount = 1,
					.levelCount = 1,
				}
			)
			.setImage(self.images[i])
			.build(device)!;
		self.views.push(view);
	}

	// Optionally create framebuffers
	if (render_pass != null)
	{
		for (uint i = 0; i < min_images; ++i)
		{
			Framebuffer fb = framebufferCreateInfo().setRenderPass(render_pass).setWidth(width).setHeight(height)
				.setLayers(1)
				.setAttachments({ self.views[i] })
				.build(device)!;
			self.framebuffers.push(fb);
		}
	}

	return *self;
}

fn Swapchain? Swapchain.recreate(
	&self,
	Device device,
	PhysicalDevice pdevice,
	SurfaceKHR surface,
	uint width,
	uint height,
	RenderPass render_pass = null
)
{
	device.waitIdle();

	// Clean up old views and framebuffers
	foreach (view : self.views) view.free(device);
	self.views = { };
	self.framebuffers.release(device);
	self.framebuffers = { };
	self.images.free();
	self.images = { };

	// init() will use self.handle as oldSwapchain
	Format fmt = self.format.format;
	self.init(
		device,
		pdevice,
		surface,
		width,
		height,
		render_pass: render_pass,
		preferred_format: fmt,
		preferred_mode: PRESENT_MODE_FIFO_KHR,
	)!;

	return *self;
}

// ============================================================================
// Frame manager
// ============================================================================

struct FrameSync
{
	SemaphoreList image_available; // per frame slot (2)
	SemaphoreList render_finished; // per swapchain image
	FenceList fences; // per frame slot (2)
	uint frame_count;
	uint current_frame;
}

fn FrameSync? FrameSync.init(&self, Device device, uint frame_count = 2, uint image_count = 0)
{
	if (image_count == 0) image_count = frame_count;
	self.frame_count = frame_count;
	self.current_frame = 0;

	// Fences and acquire semaphores: one per frame-in-flight slot
	for (uint i = 0; i < frame_count; ++i)
	{
		self.image_available.push(semaphoreCreateInfo().build(device))!;
		self.fences.push(fenceCreateInfo().setFlags(FENCE_CREATE_SIGNALED_BIT).build(device))!;
	}

	// Signal semaphores: one per swapchain image (avoids presentation reuse conflict)
	for (uint i = 0; i < image_count; ++i)
	{
		self.render_finished.push(semaphoreCreateInfo().build(device))!;
	}

	return *self;
}

fn uint? FrameSync.beginFrame(&self, Device device, SwapchainKHR swapchain)
{
	Fence frame_fence             = self.fences[self.current_frame];
	Semaphore available_semaphore = self.image_available[self.current_frame];

	frame_fence.wait(device)!;
	frame_fence.reset(device)!;

	uint next_image = swapchain.getNextImage(device, available_semaphore);
	return next_image;
}

fn void? FrameSync.endFrame(&self, Queue queue, CommandBuffer cmd, SwapchainKHR swapchain, uint image_index)
{
	Semaphore available_semaphore = self.image_available[self.current_frame];
	Semaphore finished_semaphore  = self.render_finished[image_index];

	CommandBufferSubmitInfo cmd_info = commandBufferSubmitInfo().setCommandBuffer(cmd);
	SemaphoreSubmitInfo wait_info = semaphoreSubmitInfo().setSemaphore(available_semaphore)
		.setStageMask(PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT);
	SemaphoreSubmitInfo signal_info = semaphoreSubmitInfo().setSemaphore(finished_semaphore)
		.setStageMask(PIPELINE_STAGE_2_ALL_COMMANDS_BIT);

	SubmitInfo2 submit_info = submitInfo2().setCommandBufferInfos({ cmd_info }).setWaitSemaphoreInfos({ wait_info })
		.setSignalSemaphoreInfos({ signal_info });

	Fence frame_fence = self.fences[self.current_frame];
	endCommandBuffer(cmd)!;
	queueSubmit2(queue, 1, &submit_info, frame_fence)!;

	PresentInfoKHR present_info = presentInfoKHR().setWaitSemaphores({ finished_semaphore })
		.setSwapchains({ swapchain })
		.setImageIndices({ image_index });

	queuePresentKHR(queue, &present_info)!;
	self.current_frame = (self.current_frame + 1) % self.frame_count;
}

fn void FrameSync.free(&self, Device device)
{
	self.image_available.release(device);
	self.render_finished.release(device);
	self.fences.release(device);
}

// ============================================================================
// Shader loading
// ============================================================================

fn ShaderModule? loadShaderModule(Device device, char[] spirv_data)
{
	return shaderModuleCreateInfo().setCodeSize(spirv_data.len).setCode((uint*)spirv_data.ptr).build(device);
}

// ============================================================================
// Instance creation with platform defaults
// ============================================================================

struct InstanceConfig
{
	ZString app_name;
	uint api_version;
	bool enable_validation;
	ZString[] extensions;
}

const ZString[] DEFAULT_EXTENSIONS @if(env::OS_TYPE == MACOS) = { "VK_EXT_metal_surface" };
const ZString[] DEFAULT_EXTENSIONS @if(env::OS_TYPE == WIN32) = { "VK_KHR_win32_surface" };
const ZString[] DEFAULT_EXTENSIONS @if(env::OS_TYPE == LINUX && $feature( X11 )) = { "VK_KHR_xcb_surface" };
const ZString[] DEFAULT_EXTENSIONS @if(env::OS_TYPE == LINUX && $feature( WAYLAND )) = { "VK_KHR_wayland_surface" };
const ZString[] DEFAULT_EXTENSIONS @if(env::OS_TYPE == LINUX && !$feature(WAYLAND)
	&& !$feature(X11)) = { "VK_KHR_wayland_surface", "VK_KHR_xcb_surface" };

fn Instance? createDefaultInstance(InstanceConfig config = { })
{
	ZString app_name = config.app_name != null ? config.app_name : "Vulkan App";
	uint api_version = config.api_version != 0 ? config.api_version : @makeApiVersion(0, 1, 3, 0);

	ZStringList exts;
	defer exts.free();

	if (config.enable_validation)
	{
		exts.push("VK_EXT_debug_utils");
	}

	exts.push_all(config.extensions);

	checkInstanceExtensionSupport(exts)!;

	ApplicationInfo app_info = {
		.pApplicationName = app_name,
		.pEngineName = app_name,
		.applicationVersion = @makeApiVersion(0, 1, 0, 0),
		.engineVersion = @makeApiVersion(0, 1, 0, 0),
		.apiVersion = api_version,
	};

	InstanceCreateInfo instance_info = instanceCreateInfo().setApplicationInfo(&app_info).setFlags(0)
		.setEnabledExtensionNames(exts.array_view());

	// Layer names and validation features must outlive instance_info.build() —
	// keep them at function scope, not inside the `if`, so their backing storage
	// isn't freed before vkCreateInstance reads it.
	ZStringList validations;
	defer validations.free();


	if (config.enable_validation)
	{
		ValidationFeatureEnableEXT[1] enabled_features = { VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT };
		ValidationFeaturesEXT validation_features = validationFeaturesEXT()
			.setEnabledValidationFeatures(enabled_features[..]);
		validations.push("VK_LAYER_KHRONOS_validation");
		instance_info = instance_info.setEnabledLayerNames(validations.array_view()).setNext(&validation_features);
	}

	return instance_info.build();
}

fn DebugUtilsMessengerEXT? setupDebugMessenger(Instance instance)
{
	return vk::debugUtilsMessengerCreateInfoEXT()
		.setMessageSeverity(
			vk::DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT
				| vk::DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT
		)
		.setMessageType(
			vk::DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT
				| vk::DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT
		)
		.setPfnUserCallback((PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback)
		.build(instance);
}


fn bool debugCallback(
	vk::DebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
	vk::DebugUtilsMessageTypeFlagsEXT messageType,
	vk::DebugUtilsMessengerCallbackDataEXT* data,
	void* userData
)
{
	if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT)
	{
		io::printf("ERROR: %s \n", (ZString)data.pMessage);
	}
	else if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT)
	{
		io::printf("WARNING: %s \n", (ZString)data.pMessage);
	}
	else if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT)
	{
		io::printf("INFO: %s \n", (ZString)data.pMessage);
	}
	else if (messageSeverity >= vk::DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT)
	{
		io::printf("%s \n", (ZString)data.pMessage);
	}
	else
	{
		io::printfn("%s \n", (ZString)data.pMessage);
	}
	return false;
}
