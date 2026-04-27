module vk;

import std::io;
import std::math;
import std::core::env;
import std::collections::list;


alias FenceList = List{vk::Fence};
alias SemaphoreList = List{vk::Semaphore};
alias StringList = List{String};
alias ZStringList = List{ZString};
alias DeviceList = List{PhysicalDevice};
alias QueuePropertiesList = List{QueueFamilyProperties};
alias SurfaceFormatList = List{SurfaceFormatKHR};
alias PresentModeList = List{PresentModeKHR};
alias CommandBufferList = List{CommandBuffer};
alias ImageList = List{vk::Image};
alias ImageViewList = List{vk::ImageView};
alias FrameBufferList = List{vk::Framebuffer};


struct DeviceQueue
{
	Queue handle;
	uint index;
}

faultdef FAILED_GETTING_EXTENSIONS, EXTENSION_NOT_SUPPORTED, FAILED_GETTING_DEVICE;

fn CommandPool? Device.createCommandPool(self, CommandPoolCreateInfo* info = null, uint queue)
{
	if (info == null)
	{
		info = &&(CommandPoolCreateInfo) {
			.sType = vk::STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
			.pNext = null,
			.flags = vk::COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
			.queueFamilyIndex = queue,
		};
	}

	CommandPool pool;
	createCommandPool(self, info, null, &pool)!;
	return pool;
}

fn CommandBufferList? Device.createCommandBuffers(
	self,
	CommandPool pool,
	uint count,
	CommandBufferLevel level = COMMAND_BUFFER_LEVEL_PRIMARY
)
{
	CommandBufferList buffers;
	CommandBuffer* command_buffers = mem::new_array(CommandBuffer, count);
	CommandBufferAllocateInfo command_buffer_info = {
		.sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
		.commandPool = pool,
		.level = level,
		.commandBufferCount = count,
	};

	allocateCommandBuffers(self, &command_buffer_info, command_buffers)!;
	for (int i = 0; i < count; ++i)
	{
		buffers.push(command_buffers[i]);
	}

	return buffers;
}

fn void Device.waitIdle(self)
{
	if (catch err = vk::deviceWaitIdle(self))
	{
		io::printfn("failed to wait idle");
	}
}

fn vk::Queue Device.getQueue(self, uint index)
{
	Queue response;
	getDeviceQueue(self, index, 0, &response);
	return response;
}

macro void? Device.@single_time_command(self, DeviceQueue queue; @body(CommandBuffer buffer))
{
	CommandPool command_pool;
	CommandPoolCreateInfo pool_info = {
		.sType = STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
		.pNext = null,
		.queueFamilyIndex = queue.index,
	};
	createCommandPool(self, &pool_info, null, &command_pool)!;
	CommandBufferAllocateInfo alloc_info = {
		.sType = STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
		.pNext = null,
		.level = COMMAND_BUFFER_LEVEL_PRIMARY,
		.commandPool = command_pool,
		.commandBufferCount = 1,
	};
	CommandBuffer command_buffer;
	allocateCommandBuffers(self, &alloc_info, &command_buffer)!;
	CommandBufferBeginInfo beginInfo = {
		.sType = STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
		.flags = COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
	};

	beginCommandBuffer(command_buffer, &beginInfo)!;
	@body(command_buffer);
	endCommandBuffer(command_buffer)!;

	SubmitInfo submitInfo = {
		.sType = STRUCTURE_TYPE_SUBMIT_INFO,
		.commandBufferCount = 1,
		.pCommandBuffers = &command_buffer
	};
	queueSubmit(queue.handle, 1, &submitInfo, null)!;
	queueWaitIdle(queue.handle)!;
	freeCommandBuffers(self, command_pool, 1, &command_buffer);
	destroyCommandPool(self, command_pool, null);
}


fn bool? SurfaceKHR.checkSurfaceSupport(self, usz index, PhysicalDevice device)
{
	uint response;
	getPhysicalDeviceSurfaceSupportKHR(device, (uint)index, self, &response)!;
	return response > 0;
}

fn SurfaceFormatList? SurfaceKHR.getFormats(self, PhysicalDevice device)
{
	uint format_count;
	SurfaceFormatList formatList;
	getPhysicalDeviceSurfaceFormatsKHR(device, self, &format_count, null)!;

	SurfaceFormatKHR* formats = mem::new_array(SurfaceFormatKHR, format_count);
	defer mem::free(formats);
	getPhysicalDeviceSurfaceFormatsKHR(device, self, &format_count, formats)!;

	for (uint i = 0; i < format_count; ++i)
	{
		formatList.push(formats[i]);
	}
	return formatList;
}

fn SurfaceCapabilitiesKHR? SurfaceKHR.deviceSurfaceCapabilities(self, PhysicalDevice device)
{
	SurfaceCapabilitiesKHR response;
	getPhysicalDeviceSurfaceCapabilitiesKHR(device, self, &response)!;
	return response;
}

fn PresentModeList? SurfaceKHR.getPresentModes(self, PhysicalDevice device)
{
	uint present_count;
	PresentModeList presentList;
	getPhysicalDeviceSurfacePresentModesKHR(device, self, &present_count, null)!;

	PresentModeKHR* presents = mem::new_array(PresentModeKHR, present_count);
	defer mem::free(presents);
	getPhysicalDeviceSurfacePresentModesKHR(device, self, &present_count, presents)!;

	for (uint i = 0; i < present_count; ++i)
	{
		presentList.push(presents[i]);
	}
	return presentList;
}

fn DeviceList? Instance.getDevices(self)
{
	uint deviceCount;
	DeviceList deviceList;
	vk::enumeratePhysicalDevices(self, &deviceCount, null)!;

	PhysicalDevice* devices = mem::new_array(PhysicalDevice, deviceCount);
	defer mem::free(devices);

	vk::enumeratePhysicalDevices(self, &deviceCount, devices)!;
	for (uint i = 0; i < deviceCount; ++i) deviceList.push(devices[i]);
	return deviceList;
}

// fn StringList! PhysicalDevice.getExtensions(self) {
// uint extensionCount;
// StringList extensionList;
// vk::enumerateDeviceExtensionProperties(self, null, &extensionCount, null)!;
// ExtensionProperties* layers = mem::new_array(ExtensionProperties, extensionCount);
// defer mem::free(layers);

// vk::enumerateDeviceExtensionProperties(self, null, &extensionCount, layers)!;
// for (uint i = 0; i < extensionCount; ++i) {
// ZString name = (ZString)&layers[i].extensionName;
// extensionList.push(name.str_view());
// };
// return extensionList;
// }

fn bool? PhysicalDevice.checkExtensionSupport(self, ZStringList extensions)
{
	bool supports = true;
	StringList device_extensions = getDeviceExtensions(self)!;
	defer device_extensions.free();

	foreach (extension_name : extensions)
	{
		if (!device_extensions.contains(extension_name.str_view()))
		{
			supports = false;
			io::printfn("extension not supported %s", extension_name.str_view());
		}
	}
	return supports;
}

fn uint PhysicalDevice.getMemoryType(self, MemoryPropertyFlags properties, uint typeFilter)
{
	vk::PhysicalDeviceMemoryProperties memProperties;
	vk::getPhysicalDeviceMemoryProperties(self, &memProperties);

	for (int i = 0; i < memProperties.memoryTypeCount; ++i)
	{
		if ((typeFilter & (1 << i)) && (memProperties.memoryTypes[i].propertyFlags & properties) == properties)
		{
			return i;
		}
	}
	return 0;
}

fn uint PhysicalDevice.getMemoryType2(self, MemoryPropertyFlags properties)
{
	vk::PhysicalDeviceMemoryProperties memProperties;
	vk::getPhysicalDeviceMemoryProperties(self, &memProperties);

	for (uint i = 0; i < memProperties.memoryTypeCount; ++i)
	{
		if ((memProperties.memoryTypes[i].propertyFlags & properties) == properties)
		{
			return i;
		}
	}
	return 0;
}

fn PhysicalDeviceProperties2 PhysicalDeviceProperties2.build(&self, PhysicalDevice device)
{
	vk::getPhysicalDeviceProperties2(device, self);
	return *self;
}

fn QueuePropertiesList? PhysicalDevice.getQueueProperties(self)
{
	uint queueCount;
	QueuePropertiesList propertiesList;
	getPhysicalDeviceQueueFamilyProperties(self, &queueCount, null);

	QueueFamilyProperties* properties = mem::new_array(QueueFamilyProperties, queueCount);
	defer mem::free(properties);
	getPhysicalDeviceQueueFamilyProperties(self, &queueCount, properties);

	for (uint i = 0; i < queueCount; ++i)
	{
		propertiesList.push(properties[i]);
	}
	return propertiesList;
}

fn void? checkInstanceExtensionSupport(ZStringList requested_extensions)
{
	uint extensionCount;
	StringList extensions;
	vk::enumerateInstanceExtensionProperties(null, &extensionCount, null)!;
	ExtensionProperties* layers = mem::new_array(ExtensionProperties, extensionCount);
	defer mem::free(layers);

	vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers)!;
	for (uint i = 0; i < extensionCount; ++i)
	{
		ZString name = (ZString)&layers[i].extensionName;
		extensions.push(name.str_view().copy(mem));
	}

	defer extensions.free();
	foreach (i, value : requested_extensions)
	{
		if (!extensions.contains(value.str_view()))
		{
			io::printfn("Extension not supported %s", value.str_view());
			return EXTENSION_NOT_SUPPORTED~;
		}
	}
}

fn StringList? getDeviceExtensions(PhysicalDevice device)
{
	uint extensionCount;
	StringList extensionList;
	vk::enumerateDeviceExtensionProperties(device, null, &extensionCount, null)!;
	ExtensionProperties* layers = mem::new_array(ExtensionProperties, extensionCount);
	defer mem::free(layers);

	vk::enumerateDeviceExtensionProperties(device, null, &extensionCount, layers)!;
	for (uint i = 0; i < extensionCount; ++i)
	{
		ZString name = (ZString)&layers[i].extensionName;
		extensionList.push(name.str_view().copy(mem));
	}
	return extensionList;
}

// Check for validation support
fn void? checkValidationLayersSupport(String[] requested_validations)
{
	StringList validations = getValidationLayers()!;
	defer validations.free();
	foreach (value : requested_validations)
	{
		if (!validations.contains(value))
		{
			io::printfn("Validation layer not supported %s", value);
			return EXTENSION_NOT_SUPPORTED~;
		}
	}
}

fn StringList? getInstanceExtensions()
{
	uint extensionCount;
	StringList extensionList;
	vk::enumerateInstanceExtensionProperties(null, &extensionCount, null)!;
	ExtensionProperties* layers = mem::new_array(ExtensionProperties, extensionCount);
	defer mem::free(layers);

	vk::enumerateInstanceExtensionProperties(null, &extensionCount, layers)!;
	for (uint i = 0; i < extensionCount; ++i)
	{
		ZString name = (ZString)&layers[i].extensionName;
		extensionList.push(name.str_view().copy(mem));
	}
	return extensionList;
}

fn StringList? getValidationLayers()
{
	uint layerCount;
	StringList layersList;
	vk::enumerateInstanceLayerProperties(&layerCount, null)!;

	LayerProperties* layers = mem::new_array(LayerProperties, layerCount);
	defer mem::free(layers);

	vk::enumerateInstanceLayerProperties(&layerCount, layers)!;
	for (uint i = 0; i < layerCount; ++i)
	{
		ZString name = (ZString)&layers[i].layerName;
		layersList.push(name.str_view().copy(mem));
	}
	return layersList;
}

alias CompareFN = fn bool(usz index, QueueFamilyProperties flags);
fn int QueuePropertiesList.find(self, CompareFN callback)
{
	int response = -1;
	foreach (index, properties : self)
	{
		if (callback(index, properties))
		{
			response = (int)index;
		}
	}
	return response;
}

fn vk::DeviceSize DescriptorSetLayout.getSize(self, Device device)
{
	DeviceSize size;
	getDescriptorSetLayoutSizeEXT(device, self, &size);
	return size;
}

fn vk::MemoryRequirements Image.getMemoryRequirements(self, Device device)
{
	vk::MemoryRequirements mem_reqs;
	vk::getImageMemoryRequirements(device, self, &mem_reqs);
	return mem_reqs;
}

fn vk::ImageList? SwapchainKHR.getImages(self, Device device, uint count)
{
	vk::Image* images = mem::new_array(vk::Image, count);
	vk::getSwapchainImagesKHR(device, self, &count, images)!;

	vk::ImageList list;
	for (uint i; i < count; i++) list.push(images[i]);

	return list;
}

fn uint SwapchainKHR.getNextImage(self, Device device, Semaphore wait_semaphore)
{
	uint index;
	vk::acquireNextImageKHR(device, self, uint.max, wait_semaphore, null, &index)!!;
	return index;
}

fn void Device.free(self)
{
	vk::destroyDevice(self, null);
}

fn void CommandPool.free(self, Device device)
{
	destroyCommandPool(device, self, null);
}

fn void SwapchainKHR.free(self, Device device)
{
	destroySwapchainKHR(device, self, null);
}

fn void ImageView.free(self, Device device)
{
	vk::destroyImageView(device, self, null);
}

fn void vk::Image.free(self, Device device)
{
	vk::destroyImage(device, self, null);
}

fn void PipelineLayout.free(self, Device device)
{
	destroyPipelineLayout(device, self, null);
}

fn void DescriptorSetLayout.free(self, Device device)
{
	destroyDescriptorSetLayout(device, self, null);
}

fn void Pipeline.free(self, Device device)
{
	destroyPipeline(device, self, null);
}

fn void RenderPass.free(self, Device device)
{
	destroyRenderPass(device, self, null);
}

fn void FenceList.release(self, vk::Device device)
{
	for (uint i = 0; i < self.len(); ++i)
	{
		vk::destroyFence(device, self.entries[i], null);
	}
	self.free();
}

fn void FrameBufferList.release(self, vk::Device device)
{
	for (uint i = 0; i < self.len(); ++i)
	{
		vk::destroyFramebuffer(device, self.entries[i], null);
	}
	self.free();
}

fn void SemaphoreList.release(self, vk::Device device)
{
	for (uint i = 0; i < self.len(); ++i)
	{
		vk::destroySemaphore(device, self.entries[i], null);
	}
	self.free();
}

fn void? Fence.wait(&self, vk::Device device)
{
	vk::waitForFences(device, 1, self, vk::TRUE, uint.max)!;
}

fn void? Fence.reset(&self, vk::Device device)
{
	vk::resetFences(device, 1, self)!;
}

fn void SurfaceKHR.free(self, Instance instance)
{
	destroySurfaceKHR(instance, self, null);
}

fn void ShaderModule.free(self, Device device)
{
	destroyShaderModule(device, self, null);
}

fn void DescriptorImageInfo.free(&self, Device device)
{
	self.imageView.free(device);
	vk::destroySampler(device, self.sampler, null);
}

fn void Framebuffer.free(self, Device device)
{
	destroyFramebuffer(device, self, null);
}

fn void Instance.free(self)
{
	vk::destroyInstance(self, null);
}

fn void DebugUtilsMessengerEXT.free(self, Instance instance)
{
	vk::destroyDebugUtilsMessengerEXT(instance, self, null);
}


// ============================================================================
// Convenience helpers — high-level wrappers to reduce Vulkan boilerplate
// ============================================================================


// Create PipelineRasterizationStateCreateInfo struct with some prefilled options
fn PipelineRasterizationStateCreateInfo defaultRasterizationState()
{
	return pipelineRasterizationStateCreateInfo().setDepthClampEnable(
		FALSE
	).setRasterizerDiscardEnable(
		FALSE
	).setPolygonMode(
		POLYGON_MODE_FILL
	).setLineWidth(
		1.0
	).setCullMode(CULL_MODE_BACK_BIT).setFrontFace(FRONT_FACE_COUNTER_CLOCKWISE).setDepthBiasEnable(FALSE);
}

// Create PipelineMultisampleStateCreateInfo struct with some prefilled options
fn PipelineMultisampleStateCreateInfo defaultMultisampleState()
{
	return pipelineMultisampleStateCreateInfo().setSampleShadingEnable(
		FALSE
	).setRasterizationSamples(
		SAMPLE_COUNT_1_BIT
	).setMinSampleShading(1.0).setAlphaToCoverageEnable(FALSE).setAlphaToOneEnable(FALSE);
}

// Create PipelineColorBlendAttachmentState struct with some prefilled options
fn PipelineColorBlendAttachmentState defaultColorBlendAttachment()
{
	return {
		.colorWriteMask = COLOR_COMPONENT_R_BIT | COLOR_COMPONENT_G_BIT | COLOR_COMPONENT_B_BIT
			| COLOR_COMPONENT_A_BIT,
		.blendEnable = TRUE,
		.srcColorBlendFactor = BLEND_FACTOR_SRC_ALPHA,
		.dstColorBlendFactor = BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
		.colorBlendOp = BLEND_OP_ADD,
		.srcAlphaBlendFactor = BLEND_FACTOR_ONE,
		.dstAlphaBlendFactor = BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
		.alphaBlendOp = BLEND_OP_ADD,
	};
}

// Create PipelineColorBlendStateCreateInfo struct with some prefilled options
fn PipelineColorBlendStateCreateInfo defaultColorBlendState(PipelineColorBlendAttachmentState[] attachments)
{
	return pipelineColorBlendStateCreateInfo().setBlendConstants(
		{ 0.0, 0.0, 0.0, 0.0 }
	).setLogicOp(LOGIC_OP_COPY).setAttachments(attachments);
}

// Create PipelineDepthStencilStateCreateInfo struct with some prefilled options
fn PipelineDepthStencilStateCreateInfo defaultDepthStencilState()
{
	return pipelineDepthStencilStateCreateInfo().setDepthTestEnable(
		FALSE
	).setDepthWriteEnable(
		FALSE
	).setDepthCompareOp(COMPARE_OP_LESS_OR_EQUAL).setBack({ .compareOp = COMPARE_OP_ALWAYS });
}
// --- 2. Swapchain helper ---------------------------------------------------

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
	SurfaceFormatList surface_formats = surface.getFormats(pdevice)!;
	defer surface_formats.free();

	// Pick format
	SurfaceFormatKHR chosen_format = { .format = preferred_format, .colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR };
	bool found_format = false;
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

	SwapchainCreateInfoKHR swapchain_info = swapchainCreateInfoKHR().setMinImageCount(
		min_images
	).setImageUsage(
		IMAGE_USAGE_COLOR_ATTACHMENT_BIT
	).setImageSharingMode(
		SHARING_MODE_EXCLUSIVE
	).setCompositeAlpha(
		COMPOSITE_ALPHA_OPAQUE_BIT_KHR
	).setPresentMode(
		preferred_mode
	).setPreTransform(
		capabilities.currentTransform
	).setImageColorSpace(
		chosen_format.colorSpace
	).setImageFormat(
		chosen_format.format
	).setSurface(surface).setImageArrayLayers(1).setImageExtent(extent).setOldSwapchain(self.handle);

	self.handle = swapchain_info.build(device)!;
	self.format = chosen_format;
	self.extent = extent;
	self.image_count = min_images;
	self.images = self.handle.getImages(device, min_images)!;

	// Create image views
	for (uint i = 0; i < min_images; ++i)
	{
		ImageView view = imageViewCreateInfo().setViewType(
			IMAGE_VIEW_TYPE_2D
		).setFormat(
			chosen_format.format
		).setComponents(
			{
				.r = COMPONENT_SWIZZLE_IDENTITY,
				.g = COMPONENT_SWIZZLE_IDENTITY,
				.b = COMPONENT_SWIZZLE_IDENTITY,
				.a = COMPONENT_SWIZZLE_IDENTITY,
			}
		).setSubresourceRange(
			{
				.aspectMask = IMAGE_ASPECT_COLOR_BIT,
				.baseMipLevel = 0,
				.baseArrayLayer = 0,
				.layerCount = 1,
				.levelCount = 1,
			}
		).setImage(self.images[i]).build(device)!;
		self.views.push(view);
	}

	// Optionally create framebuffers
	if (render_pass != null)
	{
		for (uint i = 0; i < min_images; ++i)
		{
			Framebuffer fb = framebufferCreateInfo().setRenderPass(
				render_pass
			).setWidth(width).setHeight(height).setLayers(1).setAttachments({ self.views[i] }).build(device)!;
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

fn void Swapchain.free(&self, Device device)
{
	foreach (view : self.views) view.free(device);
	self.views.free();
	self.framebuffers.release(device);
	self.images.free();
	if (self.handle != null) self.handle.free(device);
}

// --- 3. Physical device selector -------------------------------------------
