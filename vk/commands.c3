module vk;

extern fn Result vkCreateInstance(InstanceCreateInfo*, AllocationCallbacks*, Instance*) @cname("vkCreateInstance"); 
extern fn void destroyInstance(Instance, AllocationCallbacks*) @cname("vkDestroyInstance"); 
extern fn Result vkEnumeratePhysicalDevices(Instance, uint*, PhysicalDevice*) @cname("vkEnumeratePhysicalDevices"); 
extern fn PFN_vkVoidFunction getDeviceProcAddr(Device, char*) @cname("vkGetDeviceProcAddr"); 
extern fn PFN_vkVoidFunction getInstanceProcAddr(Instance, char*) @cname("vkGetInstanceProcAddr"); 
extern fn void getPhysicalDeviceProperties(PhysicalDevice, PhysicalDeviceProperties*) @cname("vkGetPhysicalDeviceProperties"); 
extern fn void getPhysicalDeviceQueueFamilyProperties(PhysicalDevice, uint*, QueueFamilyProperties*) @cname("vkGetPhysicalDeviceQueueFamilyProperties"); 
extern fn void getPhysicalDeviceMemoryProperties(PhysicalDevice, PhysicalDeviceMemoryProperties*) @cname("vkGetPhysicalDeviceMemoryProperties"); 
extern fn void getPhysicalDeviceFeatures(PhysicalDevice, PhysicalDeviceFeatures*) @cname("vkGetPhysicalDeviceFeatures"); 
extern fn void getPhysicalDeviceFormatProperties(PhysicalDevice, Format, FormatProperties*) @cname("vkGetPhysicalDeviceFormatProperties"); 
extern fn Result vkGetPhysicalDeviceImageFormatProperties(PhysicalDevice, Format, ImageType, ImageTiling, ImageUsageFlags, ImageCreateFlags, ImageFormatProperties*) @cname("vkGetPhysicalDeviceImageFormatProperties"); 
extern fn Result vkCreateDevice(PhysicalDevice, DeviceCreateInfo*, AllocationCallbacks*, Device*) @cname("vkCreateDevice"); 
extern fn void destroyDevice(Device, AllocationCallbacks*) @cname("vkDestroyDevice"); 
extern fn Result vkEnumerateInstanceVersion(uint*) @cname("vkEnumerateInstanceVersion"); 
extern fn Result vkEnumerateInstanceLayerProperties(uint*, LayerProperties*) @cname("vkEnumerateInstanceLayerProperties"); 
extern fn Result vkEnumerateInstanceExtensionProperties(char*, uint*, ExtensionProperties*) @cname("vkEnumerateInstanceExtensionProperties"); 
extern fn Result vkEnumerateDeviceLayerProperties(PhysicalDevice, uint*, LayerProperties*) @cname("vkEnumerateDeviceLayerProperties"); 
extern fn Result vkEnumerateDeviceExtensionProperties(PhysicalDevice, char*, uint*, ExtensionProperties*) @cname("vkEnumerateDeviceExtensionProperties"); 
extern fn void getDeviceQueue(Device, uint, uint, Queue*) @cname("vkGetDeviceQueue"); 
extern fn Result vkQueueSubmit(Queue, uint, SubmitInfo*, Fence) @cname("vkQueueSubmit"); 
extern fn Result vkQueueWaitIdle(Queue) @cname("vkQueueWaitIdle"); 
extern fn Result vkDeviceWaitIdle(Device) @cname("vkDeviceWaitIdle"); 
extern fn Result vkAllocateMemory(Device, MemoryAllocateInfo*, AllocationCallbacks*, DeviceMemory*) @cname("vkAllocateMemory"); 
extern fn void freeMemory(Device, DeviceMemory, AllocationCallbacks*) @cname("vkFreeMemory"); 
extern fn Result vkMapMemory(Device, DeviceMemory, DeviceSize, DeviceSize, MemoryMapFlags, void**) @cname("vkMapMemory"); 
extern fn void unmapMemory(Device, DeviceMemory) @cname("vkUnmapMemory"); 
extern fn Result vkFlushMappedMemoryRanges(Device, uint, MappedMemoryRange*) @cname("vkFlushMappedMemoryRanges"); 
extern fn Result vkInvalidateMappedMemoryRanges(Device, uint, MappedMemoryRange*) @cname("vkInvalidateMappedMemoryRanges"); 
extern fn void getDeviceMemoryCommitment(Device, DeviceMemory, DeviceSize*) @cname("vkGetDeviceMemoryCommitment"); 
extern fn void getBufferMemoryRequirements(Device, Buffer, MemoryRequirements*) @cname("vkGetBufferMemoryRequirements"); 
extern fn Result vkBindBufferMemory(Device, Buffer, DeviceMemory, DeviceSize) @cname("vkBindBufferMemory"); 
extern fn void getImageMemoryRequirements(Device, Image, MemoryRequirements*) @cname("vkGetImageMemoryRequirements"); 
extern fn Result vkBindImageMemory(Device, Image, DeviceMemory, DeviceSize) @cname("vkBindImageMemory"); 
extern fn void getImageSparseMemoryRequirements(Device, Image, uint*, SparseImageMemoryRequirements*) @cname("vkGetImageSparseMemoryRequirements"); 
extern fn void getPhysicalDeviceSparseImageFormatProperties(PhysicalDevice, Format, ImageType, SampleCountFlagBits, ImageUsageFlags, ImageTiling, uint*, SparseImageFormatProperties*) @cname("vkGetPhysicalDeviceSparseImageFormatProperties"); 
extern fn Result vkQueueBindSparse(Queue, uint, BindSparseInfo*, Fence) @cname("vkQueueBindSparse"); 
extern fn Result vkCreateFence(Device, FenceCreateInfo*, AllocationCallbacks*, Fence*) @cname("vkCreateFence"); 
extern fn void destroyFence(Device, Fence, AllocationCallbacks*) @cname("vkDestroyFence"); 
extern fn Result vkResetFences(Device, uint, Fence*) @cname("vkResetFences"); 
extern fn Result vkGetFenceStatus(Device, Fence) @cname("vkGetFenceStatus"); 
extern fn Result vkWaitForFences(Device, uint, Fence*, uint, ulong) @cname("vkWaitForFences"); 
extern fn Result vkCreateSemaphore(Device, SemaphoreCreateInfo*, AllocationCallbacks*, Semaphore*) @cname("vkCreateSemaphore"); 
extern fn void destroySemaphore(Device, Semaphore, AllocationCallbacks*) @cname("vkDestroySemaphore"); 
extern fn Result vkCreateEvent(Device, EventCreateInfo*, AllocationCallbacks*, Event*) @cname("vkCreateEvent"); 
extern fn void destroyEvent(Device, Event, AllocationCallbacks*) @cname("vkDestroyEvent"); 
extern fn Result vkGetEventStatus(Device, Event) @cname("vkGetEventStatus"); 
extern fn Result vkSetEvent(Device, Event) @cname("vkSetEvent"); 
extern fn Result vkResetEvent(Device, Event) @cname("vkResetEvent"); 
extern fn Result vkCreateQueryPool(Device, QueryPoolCreateInfo*, AllocationCallbacks*, QueryPool*) @cname("vkCreateQueryPool"); 
extern fn void destroyQueryPool(Device, QueryPool, AllocationCallbacks*) @cname("vkDestroyQueryPool"); 
extern fn Result vkGetQueryPoolResults(Device, QueryPool, uint, uint, usz, void*, DeviceSize, QueryResultFlags) @cname("vkGetQueryPoolResults"); 
extern fn void resetQueryPool(Device, QueryPool, uint, uint) @cname("vkResetQueryPool"); 
extern fn Result vkCreateBuffer(Device, BufferCreateInfo*, AllocationCallbacks*, Buffer*) @cname("vkCreateBuffer"); 
extern fn void destroyBuffer(Device, Buffer, AllocationCallbacks*) @cname("vkDestroyBuffer"); 
extern fn Result vkCreateBufferView(Device, BufferViewCreateInfo*, AllocationCallbacks*, BufferView*) @cname("vkCreateBufferView"); 
extern fn void destroyBufferView(Device, BufferView, AllocationCallbacks*) @cname("vkDestroyBufferView"); 
extern fn Result vkCreateImage(Device, ImageCreateInfo*, AllocationCallbacks*, Image*) @cname("vkCreateImage"); 
extern fn void destroyImage(Device, Image, AllocationCallbacks*) @cname("vkDestroyImage"); 
extern fn void getImageSubresourceLayout(Device, Image, ImageSubresource*, SubresourceLayout*) @cname("vkGetImageSubresourceLayout"); 
extern fn Result vkCreateImageView(Device, ImageViewCreateInfo*, AllocationCallbacks*, ImageView*) @cname("vkCreateImageView"); 
extern fn void destroyImageView(Device, ImageView, AllocationCallbacks*) @cname("vkDestroyImageView"); 
extern fn Result vkCreateShaderModule(Device, ShaderModuleCreateInfo*, AllocationCallbacks*, ShaderModule*) @cname("vkCreateShaderModule"); 
extern fn void destroyShaderModule(Device, ShaderModule, AllocationCallbacks*) @cname("vkDestroyShaderModule"); 
extern fn Result vkCreatePipelineCache(Device, PipelineCacheCreateInfo*, AllocationCallbacks*, PipelineCache*) @cname("vkCreatePipelineCache"); 
extern fn void destroyPipelineCache(Device, PipelineCache, AllocationCallbacks*) @cname("vkDestroyPipelineCache"); 
extern fn Result vkGetPipelineCacheData(Device, PipelineCache, usz*, void*) @cname("vkGetPipelineCacheData"); 
extern fn Result vkMergePipelineCaches(Device, PipelineCache, uint, PipelineCache*) @cname("vkMergePipelineCaches"); 
extern fn Result vkCreateGraphicsPipelines(Device, PipelineCache, uint, GraphicsPipelineCreateInfo*, AllocationCallbacks*, Pipeline*) @cname("vkCreateGraphicsPipelines"); 
extern fn Result vkCreateComputePipelines(Device, PipelineCache, uint, ComputePipelineCreateInfo*, AllocationCallbacks*, Pipeline*) @cname("vkCreateComputePipelines"); 
extern fn void destroyPipeline(Device, Pipeline, AllocationCallbacks*) @cname("vkDestroyPipeline"); 
extern fn Result vkCreatePipelineLayout(Device, PipelineLayoutCreateInfo*, AllocationCallbacks*, PipelineLayout*) @cname("vkCreatePipelineLayout"); 
extern fn void destroyPipelineLayout(Device, PipelineLayout, AllocationCallbacks*) @cname("vkDestroyPipelineLayout"); 
extern fn Result vkCreateSampler(Device, SamplerCreateInfo*, AllocationCallbacks*, Sampler*) @cname("vkCreateSampler"); 
extern fn void destroySampler(Device, Sampler, AllocationCallbacks*) @cname("vkDestroySampler"); 
extern fn Result vkCreateDescriptorSetLayout(Device, DescriptorSetLayoutCreateInfo*, AllocationCallbacks*, DescriptorSetLayout*) @cname("vkCreateDescriptorSetLayout"); 
extern fn void destroyDescriptorSetLayout(Device, DescriptorSetLayout, AllocationCallbacks*) @cname("vkDestroyDescriptorSetLayout"); 
extern fn Result vkCreateDescriptorPool(Device, DescriptorPoolCreateInfo*, AllocationCallbacks*, DescriptorPool*) @cname("vkCreateDescriptorPool"); 
extern fn void destroyDescriptorPool(Device, DescriptorPool, AllocationCallbacks*) @cname("vkDestroyDescriptorPool"); 
extern fn Result vkResetDescriptorPool(Device, DescriptorPool, DescriptorPoolResetFlags) @cname("vkResetDescriptorPool"); 
extern fn Result vkAllocateDescriptorSets(Device, DescriptorSetAllocateInfo*, DescriptorSet*) @cname("vkAllocateDescriptorSets"); 
extern fn Result vkFreeDescriptorSets(Device, DescriptorPool, uint, DescriptorSet*) @cname("vkFreeDescriptorSets"); 
extern fn void updateDescriptorSets(Device, uint, WriteDescriptorSet*, uint, CopyDescriptorSet*) @cname("vkUpdateDescriptorSets"); 
extern fn Result vkCreateFramebuffer(Device, FramebufferCreateInfo*, AllocationCallbacks*, Framebuffer*) @cname("vkCreateFramebuffer"); 
extern fn void destroyFramebuffer(Device, Framebuffer, AllocationCallbacks*) @cname("vkDestroyFramebuffer"); 
extern fn Result vkCreateRenderPass(Device, RenderPassCreateInfo*, AllocationCallbacks*, RenderPass*) @cname("vkCreateRenderPass"); 
extern fn void destroyRenderPass(Device, RenderPass, AllocationCallbacks*) @cname("vkDestroyRenderPass"); 
extern fn void getRenderAreaGranularity(Device, RenderPass, Extent2D*) @cname("vkGetRenderAreaGranularity"); 
extern fn void getRenderingAreaGranularity(Device, RenderingAreaInfo*, Extent2D*) @cname("vkGetRenderingAreaGranularity"); 
extern fn Result vkCreateCommandPool(Device, CommandPoolCreateInfo*, AllocationCallbacks*, CommandPool*) @cname("vkCreateCommandPool"); 
extern fn void destroyCommandPool(Device, CommandPool, AllocationCallbacks*) @cname("vkDestroyCommandPool"); 
extern fn Result vkResetCommandPool(Device, CommandPool, CommandPoolResetFlags) @cname("vkResetCommandPool"); 
extern fn Result vkAllocateCommandBuffers(Device, CommandBufferAllocateInfo*, CommandBuffer*) @cname("vkAllocateCommandBuffers"); 
extern fn void freeCommandBuffers(Device, CommandPool, uint, CommandBuffer*) @cname("vkFreeCommandBuffers"); 
extern fn Result vkBeginCommandBuffer(CommandBuffer, CommandBufferBeginInfo*) @cname("vkBeginCommandBuffer"); 
extern fn Result vkEndCommandBuffer(CommandBuffer) @cname("vkEndCommandBuffer"); 
extern fn Result vkResetCommandBuffer(CommandBuffer, CommandBufferResetFlags) @cname("vkResetCommandBuffer"); 
extern fn void cmdBindPipeline(CommandBuffer, PipelineBindPoint, Pipeline) @cname("vkCmdBindPipeline"); 
extern fn void cmdSetViewport(CommandBuffer, uint, uint, Viewport*) @cname("vkCmdSetViewport"); 
extern fn void cmdSetScissor(CommandBuffer, uint, uint, Rect2D*) @cname("vkCmdSetScissor"); 
extern fn void cmdSetLineWidth(CommandBuffer, float) @cname("vkCmdSetLineWidth"); 
extern fn void cmdSetDepthBias(CommandBuffer, float, float, float) @cname("vkCmdSetDepthBias"); 
extern fn void cmdSetBlendConstants(CommandBuffer, float[4]) @cname("vkCmdSetBlendConstants"); 
extern fn void cmdSetDepthBounds(CommandBuffer, float, float) @cname("vkCmdSetDepthBounds"); 
extern fn void cmdSetStencilCompareMask(CommandBuffer, StencilFaceFlags, uint) @cname("vkCmdSetStencilCompareMask"); 
extern fn void cmdSetStencilWriteMask(CommandBuffer, StencilFaceFlags, uint) @cname("vkCmdSetStencilWriteMask"); 
extern fn void cmdSetStencilReference(CommandBuffer, StencilFaceFlags, uint) @cname("vkCmdSetStencilReference"); 
extern fn void cmdBindDescriptorSets(CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, DescriptorSet*, uint, uint*) @cname("vkCmdBindDescriptorSets"); 
extern fn void cmdBindIndexBuffer(CommandBuffer, Buffer, DeviceSize, IndexType) @cname("vkCmdBindIndexBuffer"); 
extern fn void cmdBindVertexBuffers(CommandBuffer, uint, uint, Buffer*, DeviceSize*) @cname("vkCmdBindVertexBuffers"); 
extern fn void cmdDraw(CommandBuffer, uint, uint, uint, uint) @cname("vkCmdDraw"); 
extern fn void cmdDrawIndexed(CommandBuffer, uint, uint, uint, int, uint) @cname("vkCmdDrawIndexed"); 
extern fn void cmdDrawIndirect(CommandBuffer, Buffer, DeviceSize, uint, uint) @cname("vkCmdDrawIndirect"); 
extern fn void cmdDrawIndexedIndirect(CommandBuffer, Buffer, DeviceSize, uint, uint) @cname("vkCmdDrawIndexedIndirect"); 
extern fn void cmdDispatch(CommandBuffer, uint, uint, uint) @cname("vkCmdDispatch"); 
extern fn void cmdDispatchIndirect(CommandBuffer, Buffer, DeviceSize) @cname("vkCmdDispatchIndirect"); 
extern fn void cmdCopyBuffer(CommandBuffer, Buffer, Buffer, uint, BufferCopy*) @cname("vkCmdCopyBuffer"); 
extern fn void cmdCopyImage(CommandBuffer, Image, ImageLayout, Image, ImageLayout, uint, ImageCopy*) @cname("vkCmdCopyImage"); 
extern fn void cmdBlitImage(CommandBuffer, Image, ImageLayout, Image, ImageLayout, uint, ImageBlit*, Filter) @cname("vkCmdBlitImage"); 
extern fn void cmdCopyBufferToImage(CommandBuffer, Buffer, Image, ImageLayout, uint, BufferImageCopy*) @cname("vkCmdCopyBufferToImage"); 
extern fn void cmdCopyImageToBuffer(CommandBuffer, Image, ImageLayout, Buffer, uint, BufferImageCopy*) @cname("vkCmdCopyImageToBuffer"); 
extern fn void cmdUpdateBuffer(CommandBuffer, Buffer, DeviceSize, DeviceSize, void*) @cname("vkCmdUpdateBuffer"); 
extern fn void cmdFillBuffer(CommandBuffer, Buffer, DeviceSize, DeviceSize, uint) @cname("vkCmdFillBuffer"); 
extern fn void cmdClearColorImage(CommandBuffer, Image, ImageLayout, ClearColorValue*, uint, ImageSubresourceRange*) @cname("vkCmdClearColorImage"); 
extern fn void cmdClearDepthStencilImage(CommandBuffer, Image, ImageLayout, ClearDepthStencilValue*, uint, ImageSubresourceRange*) @cname("vkCmdClearDepthStencilImage"); 
extern fn void cmdClearAttachments(CommandBuffer, uint, ClearAttachment*, uint, ClearRect*) @cname("vkCmdClearAttachments"); 
extern fn void cmdResolveImage(CommandBuffer, Image, ImageLayout, Image, ImageLayout, uint, ImageResolve*) @cname("vkCmdResolveImage"); 
extern fn void cmdSetEvent(CommandBuffer, Event, PipelineStageFlags) @cname("vkCmdSetEvent"); 
extern fn void cmdResetEvent(CommandBuffer, Event, PipelineStageFlags) @cname("vkCmdResetEvent"); 
extern fn void cmdWaitEvents(CommandBuffer, uint, Event*, PipelineStageFlags, PipelineStageFlags, uint, MemoryBarrier*, uint, BufferMemoryBarrier*, uint, ImageMemoryBarrier*) @cname("vkCmdWaitEvents"); 
extern fn void cmdPipelineBarrier(CommandBuffer, PipelineStageFlags, PipelineStageFlags, DependencyFlags, uint, MemoryBarrier*, uint, BufferMemoryBarrier*, uint, ImageMemoryBarrier*) @cname("vkCmdPipelineBarrier"); 
extern fn void cmdBeginQuery(CommandBuffer, QueryPool, uint, QueryControlFlags) @cname("vkCmdBeginQuery"); 
extern fn void cmdEndQuery(CommandBuffer, QueryPool, uint) @cname("vkCmdEndQuery"); 
extern fn void cmdResetQueryPool(CommandBuffer, QueryPool, uint, uint) @cname("vkCmdResetQueryPool"); 
extern fn void cmdWriteTimestamp(CommandBuffer, PipelineStageFlagBits, QueryPool, uint) @cname("vkCmdWriteTimestamp"); 
extern fn void cmdCopyQueryPoolResults(CommandBuffer, QueryPool, uint, uint, Buffer, DeviceSize, DeviceSize, QueryResultFlags) @cname("vkCmdCopyQueryPoolResults"); 
extern fn void cmdPushConstants(CommandBuffer, PipelineLayout, ShaderStageFlags, uint, uint, void*) @cname("vkCmdPushConstants"); 
extern fn void cmdBeginRenderPass(CommandBuffer, RenderPassBeginInfo*, SubpassContents) @cname("vkCmdBeginRenderPass"); 
extern fn void cmdNextSubpass(CommandBuffer, SubpassContents) @cname("vkCmdNextSubpass"); 
extern fn void cmdEndRenderPass(CommandBuffer) @cname("vkCmdEndRenderPass"); 
extern fn void cmdExecuteCommands(CommandBuffer, uint, CommandBuffer*) @cname("vkCmdExecuteCommands"); 
extern fn void getPhysicalDeviceFeatures2(PhysicalDevice, PhysicalDeviceFeatures2*) @cname("vkGetPhysicalDeviceFeatures2"); 
extern fn void getPhysicalDeviceProperties2(PhysicalDevice, PhysicalDeviceProperties2*) @cname("vkGetPhysicalDeviceProperties2"); 
extern fn void getPhysicalDeviceFormatProperties2(PhysicalDevice, Format, FormatProperties2*) @cname("vkGetPhysicalDeviceFormatProperties2"); 
extern fn Result vkGetPhysicalDeviceImageFormatProperties2(PhysicalDevice, PhysicalDeviceImageFormatInfo2*, ImageFormatProperties2*) @cname("vkGetPhysicalDeviceImageFormatProperties2"); 
extern fn void getPhysicalDeviceQueueFamilyProperties2(PhysicalDevice, uint*, QueueFamilyProperties2*) @cname("vkGetPhysicalDeviceQueueFamilyProperties2"); 
extern fn void getPhysicalDeviceMemoryProperties2(PhysicalDevice, PhysicalDeviceMemoryProperties2*) @cname("vkGetPhysicalDeviceMemoryProperties2"); 
extern fn void getPhysicalDeviceSparseImageFormatProperties2(PhysicalDevice, PhysicalDeviceSparseImageFormatInfo2*, uint*, SparseImageFormatProperties2*) @cname("vkGetPhysicalDeviceSparseImageFormatProperties2"); 
extern fn void cmdPushDescriptorSet(CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*) @cname("vkCmdPushDescriptorSet"); 
extern fn void trimCommandPool(Device, CommandPool, CommandPoolTrimFlags) @cname("vkTrimCommandPool"); 
extern fn void getPhysicalDeviceExternalBufferProperties(PhysicalDevice, PhysicalDeviceExternalBufferInfo*, ExternalBufferProperties*) @cname("vkGetPhysicalDeviceExternalBufferProperties"); 
extern fn void getPhysicalDeviceExternalSemaphoreProperties(PhysicalDevice, PhysicalDeviceExternalSemaphoreInfo*, ExternalSemaphoreProperties*) @cname("vkGetPhysicalDeviceExternalSemaphoreProperties"); 
extern fn void getPhysicalDeviceExternalFenceProperties(PhysicalDevice, PhysicalDeviceExternalFenceInfo*, ExternalFenceProperties*) @cname("vkGetPhysicalDeviceExternalFenceProperties"); 
extern fn Result vkEnumeratePhysicalDeviceGroups(Instance, uint*, PhysicalDeviceGroupProperties*) @cname("vkEnumeratePhysicalDeviceGroups"); 
extern fn void getDeviceGroupPeerMemoryFeatures(Device, uint, uint, uint, PeerMemoryFeatureFlags*) @cname("vkGetDeviceGroupPeerMemoryFeatures"); 
extern fn Result vkBindBufferMemory2(Device, uint, BindBufferMemoryInfo*) @cname("vkBindBufferMemory2"); 
extern fn Result vkBindImageMemory2(Device, uint, BindImageMemoryInfo*) @cname("vkBindImageMemory2"); 
extern fn void cmdSetDeviceMask(CommandBuffer, uint) @cname("vkCmdSetDeviceMask"); 
extern fn void cmdDispatchBase(CommandBuffer, uint, uint, uint, uint, uint, uint) @cname("vkCmdDispatchBase"); 
extern fn Result vkCreateDescriptorUpdateTemplate(Device, DescriptorUpdateTemplateCreateInfo*, AllocationCallbacks*, DescriptorUpdateTemplate*) @cname("vkCreateDescriptorUpdateTemplate"); 
extern fn void destroyDescriptorUpdateTemplate(Device, DescriptorUpdateTemplate, AllocationCallbacks*) @cname("vkDestroyDescriptorUpdateTemplate"); 
extern fn void updateDescriptorSetWithTemplate(Device, DescriptorSet, DescriptorUpdateTemplate, void*) @cname("vkUpdateDescriptorSetWithTemplate"); 
extern fn void cmdPushDescriptorSetWithTemplate(CommandBuffer, DescriptorUpdateTemplate, PipelineLayout, uint, void*) @cname("vkCmdPushDescriptorSetWithTemplate"); 
extern fn void getBufferMemoryRequirements2(Device, BufferMemoryRequirementsInfo2*, MemoryRequirements2*) @cname("vkGetBufferMemoryRequirements2"); 
extern fn void getImageMemoryRequirements2(Device, ImageMemoryRequirementsInfo2*, MemoryRequirements2*) @cname("vkGetImageMemoryRequirements2"); 
extern fn void getImageSparseMemoryRequirements2(Device, ImageSparseMemoryRequirementsInfo2*, uint*, SparseImageMemoryRequirements2*) @cname("vkGetImageSparseMemoryRequirements2"); 
extern fn void getDeviceBufferMemoryRequirements(Device, DeviceBufferMemoryRequirements*, MemoryRequirements2*) @cname("vkGetDeviceBufferMemoryRequirements"); 
extern fn void getDeviceImageMemoryRequirements(Device, DeviceImageMemoryRequirements*, MemoryRequirements2*) @cname("vkGetDeviceImageMemoryRequirements"); 
extern fn void getDeviceImageSparseMemoryRequirements(Device, DeviceImageMemoryRequirements*, uint*, SparseImageMemoryRequirements2*) @cname("vkGetDeviceImageSparseMemoryRequirements"); 
extern fn Result vkCreateSamplerYcbcrConversion(Device, SamplerYcbcrConversionCreateInfo*, AllocationCallbacks*, SamplerYcbcrConversion*) @cname("vkCreateSamplerYcbcrConversion"); 
extern fn void destroySamplerYcbcrConversion(Device, SamplerYcbcrConversion, AllocationCallbacks*) @cname("vkDestroySamplerYcbcrConversion"); 
extern fn void getDeviceQueue2(Device, DeviceQueueInfo2*, Queue*) @cname("vkGetDeviceQueue2"); 
extern fn void getDescriptorSetLayoutSupport(Device, DescriptorSetLayoutCreateInfo*, DescriptorSetLayoutSupport*) @cname("vkGetDescriptorSetLayoutSupport"); 
extern fn Result vkCreateRenderPass2(Device, RenderPassCreateInfo2*, AllocationCallbacks*, RenderPass*) @cname("vkCreateRenderPass2"); 
extern fn void cmdBeginRenderPass2(CommandBuffer, RenderPassBeginInfo*, SubpassBeginInfo*) @cname("vkCmdBeginRenderPass2"); 
extern fn void cmdNextSubpass2(CommandBuffer, SubpassBeginInfo*, SubpassEndInfo*) @cname("vkCmdNextSubpass2"); 
extern fn void cmdEndRenderPass2(CommandBuffer, SubpassEndInfo*) @cname("vkCmdEndRenderPass2"); 
extern fn Result vkGetSemaphoreCounterValue(Device, Semaphore, ulong*) @cname("vkGetSemaphoreCounterValue"); 
extern fn Result vkWaitSemaphores(Device, SemaphoreWaitInfo*, ulong) @cname("vkWaitSemaphores"); 
extern fn Result vkSignalSemaphore(Device, SemaphoreSignalInfo*) @cname("vkSignalSemaphore"); 
extern fn void cmdDrawIndirectCount(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint) @cname("vkCmdDrawIndirectCount"); 
extern fn void cmdDrawIndexedIndirectCount(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint) @cname("vkCmdDrawIndexedIndirectCount"); 
extern fn ulong getBufferOpaqueCaptureAddress(Device, BufferDeviceAddressInfo*) @cname("vkGetBufferOpaqueCaptureAddress"); 
extern fn DeviceAddress getBufferDeviceAddress(Device, BufferDeviceAddressInfo*) @cname("vkGetBufferDeviceAddress"); 
extern fn ulong getDeviceMemoryOpaqueCaptureAddress(Device, DeviceMemoryOpaqueCaptureAddressInfo*) @cname("vkGetDeviceMemoryOpaqueCaptureAddress"); 
extern fn void cmdSetLineStipple(CommandBuffer, uint, uint) @cname("vkCmdSetLineStipple"); 
extern fn Result vkGetPhysicalDeviceToolProperties(PhysicalDevice, uint*, PhysicalDeviceToolProperties*) @cname("vkGetPhysicalDeviceToolProperties"); 
extern fn void cmdSetCullMode(CommandBuffer, CullModeFlags) @cname("vkCmdSetCullMode"); 
extern fn void cmdSetFrontFace(CommandBuffer, FrontFace) @cname("vkCmdSetFrontFace"); 
extern fn void cmdSetPrimitiveTopology(CommandBuffer, PrimitiveTopology) @cname("vkCmdSetPrimitiveTopology"); 
extern fn void cmdSetViewportWithCount(CommandBuffer, uint, Viewport*) @cname("vkCmdSetViewportWithCount"); 
extern fn void cmdSetScissorWithCount(CommandBuffer, uint, Rect2D*) @cname("vkCmdSetScissorWithCount"); 
extern fn void cmdBindIndexBuffer2(CommandBuffer, Buffer, DeviceSize, DeviceSize, IndexType) @cname("vkCmdBindIndexBuffer2"); 
extern fn void cmdBindVertexBuffers2(CommandBuffer, uint, uint, Buffer*, DeviceSize*, DeviceSize*, DeviceSize*) @cname("vkCmdBindVertexBuffers2"); 
extern fn void cmdSetDepthTestEnable(CommandBuffer, uint) @cname("vkCmdSetDepthTestEnable"); 
extern fn void cmdSetDepthWriteEnable(CommandBuffer, uint) @cname("vkCmdSetDepthWriteEnable"); 
extern fn void cmdSetDepthCompareOp(CommandBuffer, CompareOp) @cname("vkCmdSetDepthCompareOp"); 
extern fn void cmdSetDepthBoundsTestEnable(CommandBuffer, uint) @cname("vkCmdSetDepthBoundsTestEnable"); 
extern fn void cmdSetStencilTestEnable(CommandBuffer, uint) @cname("vkCmdSetStencilTestEnable"); 
extern fn void cmdSetStencilOp(CommandBuffer, StencilFaceFlags, StencilOp, StencilOp, StencilOp, CompareOp) @cname("vkCmdSetStencilOp"); 
extern fn void cmdSetRasterizerDiscardEnable(CommandBuffer, uint) @cname("vkCmdSetRasterizerDiscardEnable"); 
extern fn void cmdSetDepthBiasEnable(CommandBuffer, uint) @cname("vkCmdSetDepthBiasEnable"); 
extern fn void cmdSetPrimitiveRestartEnable(CommandBuffer, uint) @cname("vkCmdSetPrimitiveRestartEnable"); 
extern fn Result vkCreatePrivateDataSlot(Device, PrivateDataSlotCreateInfo*, AllocationCallbacks*, PrivateDataSlot*) @cname("vkCreatePrivateDataSlot"); 
extern fn void destroyPrivateDataSlot(Device, PrivateDataSlot, AllocationCallbacks*) @cname("vkDestroyPrivateDataSlot"); 
extern fn Result vkSetPrivateData(Device, ObjectType, ulong, PrivateDataSlot, ulong) @cname("vkSetPrivateData"); 
extern fn void getPrivateData(Device, ObjectType, ulong, PrivateDataSlot, ulong*) @cname("vkGetPrivateData"); 
extern fn void cmdCopyBuffer2(CommandBuffer, CopyBufferInfo2*) @cname("vkCmdCopyBuffer2"); 
extern fn void cmdCopyImage2(CommandBuffer, CopyImageInfo2*) @cname("vkCmdCopyImage2"); 
extern fn void cmdBlitImage2(CommandBuffer, BlitImageInfo2*) @cname("vkCmdBlitImage2"); 
extern fn void cmdCopyBufferToImage2(CommandBuffer, CopyBufferToImageInfo2*) @cname("vkCmdCopyBufferToImage2"); 
extern fn void cmdCopyImageToBuffer2(CommandBuffer, CopyImageToBufferInfo2*) @cname("vkCmdCopyImageToBuffer2"); 
extern fn void cmdResolveImage2(CommandBuffer, ResolveImageInfo2*) @cname("vkCmdResolveImage2"); 
extern fn void cmdSetEvent2(CommandBuffer, Event, DependencyInfo*) @cname("vkCmdSetEvent2"); 
extern fn void cmdResetEvent2(CommandBuffer, Event, PipelineStageFlags2) @cname("vkCmdResetEvent2"); 
extern fn void cmdWaitEvents2(CommandBuffer, uint, Event*, DependencyInfo*) @cname("vkCmdWaitEvents2"); 
extern fn void cmdPipelineBarrier2(CommandBuffer, DependencyInfo*) @cname("vkCmdPipelineBarrier2"); 
extern fn Result vkQueueSubmit2(Queue, uint, SubmitInfo2*, Fence) @cname("vkQueueSubmit2"); 
extern fn void cmdWriteTimestamp2(CommandBuffer, PipelineStageFlags2, QueryPool, uint) @cname("vkCmdWriteTimestamp2"); 
extern fn Result vkCopyMemoryToImage(Device, CopyMemoryToImageInfo*) @cname("vkCopyMemoryToImage"); 
extern fn Result vkCopyImageToMemory(Device, CopyImageToMemoryInfo*) @cname("vkCopyImageToMemory"); 
extern fn Result vkCopyImageToImage(Device, CopyImageToImageInfo*) @cname("vkCopyImageToImage"); 
extern fn Result vkTransitionImageLayout(Device, uint, HostImageLayoutTransitionInfo*) @cname("vkTransitionImageLayout"); 
extern fn void cmdBeginRendering(CommandBuffer, RenderingInfo*) @cname("vkCmdBeginRendering"); 
extern fn void cmdEndRendering(CommandBuffer) @cname("vkCmdEndRendering"); 
extern fn void getImageSubresourceLayout2(Device, Image, ImageSubresource2*, SubresourceLayout2*) @cname("vkGetImageSubresourceLayout2"); 
extern fn void getDeviceImageSubresourceLayout(Device, DeviceImageSubresourceInfo*, SubresourceLayout2*) @cname("vkGetDeviceImageSubresourceLayout"); 
extern fn Result vkMapMemory2(Device, MemoryMapInfo*, void**) @cname("vkMapMemory2"); 
extern fn Result vkUnmapMemory2(Device, MemoryUnmapInfo*) @cname("vkUnmapMemory2"); 
extern fn void cmdBindDescriptorSets2(CommandBuffer, BindDescriptorSetsInfo*) @cname("vkCmdBindDescriptorSets2"); 
extern fn void cmdPushConstants2(CommandBuffer, PushConstantsInfo*) @cname("vkCmdPushConstants2"); 
extern fn void cmdPushDescriptorSet2(CommandBuffer, PushDescriptorSetInfo*) @cname("vkCmdPushDescriptorSet2"); 
extern fn void cmdPushDescriptorSetWithTemplate2(CommandBuffer, PushDescriptorSetWithTemplateInfo*) @cname("vkCmdPushDescriptorSetWithTemplate2"); 
extern fn void cmdSetRenderingAttachmentLocations(CommandBuffer, RenderingAttachmentLocationInfo*) @cname("vkCmdSetRenderingAttachmentLocations"); 
extern fn void cmdSetRenderingInputAttachmentIndices(CommandBuffer, RenderingInputAttachmentIndexInfo*) @cname("vkCmdSetRenderingInputAttachmentIndices"); 

alias PFN_vkResetQueryPoolEXT = fn void (Device, QueryPool, uint, uint);
alias PFN_vkCreatePipelineBinariesKHR = fn Result (Device, PipelineBinaryCreateInfoKHR*, AllocationCallbacks*, PipelineBinaryHandlesInfoKHR*);
alias PFN_vkDestroyPipelineBinaryKHR = fn void (Device, PipelineBinaryKHR, AllocationCallbacks*);
alias PFN_vkGetPipelineKeyKHR = fn Result (Device, PipelineCreateInfoKHR*, PipelineBinaryKeyKHR*);
alias PFN_vkGetPipelineBinaryDataKHR = fn Result (Device, PipelineBinaryDataInfoKHR*, PipelineBinaryKeyKHR*, usz*, void*);
alias PFN_vkReleaseCapturedPipelineDataKHR = fn Result (Device, ReleaseCapturedPipelineDataInfoKHR*, AllocationCallbacks*);
alias PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = fn Result (Device, RenderPass, Extent2D*);
alias PFN_vkGetRenderingAreaGranularityKHR = fn void (Device, RenderingAreaInfo*, Extent2D*);
alias PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT = fn void (CommandBuffer, ImageAspectFlags);
alias PFN_vkCmdDrawMultiEXT = fn void (CommandBuffer, uint, MultiDrawInfoEXT*, uint, uint, uint);
alias PFN_vkCmdDrawMultiIndexedEXT = fn void (CommandBuffer, uint, MultiDrawIndexedInfoEXT*, uint, uint, uint, int*);
alias PFN_vkCmdSubpassShadingHUAWEI = fn void (CommandBuffer);
alias PFN_vkCmdDrawClusterHUAWEI = fn void (CommandBuffer, uint, uint, uint);
alias PFN_vkCmdDrawClusterIndirectHUAWEI = fn void (CommandBuffer, Buffer, DeviceSize);
alias PFN_vkCmdUpdatePipelineIndirectBufferNV = fn void (CommandBuffer, PipelineBindPoint, Pipeline);
alias PFN_vkCmdCopyMemoryIndirectNV = fn void (CommandBuffer, DeviceAddress, uint, uint);
alias PFN_vkCmdCopyMemoryIndirectKHR = fn void (CommandBuffer, CopyMemoryIndirectInfoKHR*);
alias PFN_vkCmdCopyMemoryToImageIndirectNV = fn void (CommandBuffer, DeviceAddress, uint, uint, Image, ImageLayout, ImageSubresourceLayers*);
alias PFN_vkCmdCopyMemoryToImageIndirectKHR = fn void (CommandBuffer, CopyMemoryToImageIndirectInfoKHR*);
alias PFN_vkCmdBeginConditionalRenderingEXT = fn void (CommandBuffer, ConditionalRenderingBeginInfoEXT*);
alias PFN_vkCmdEndConditionalRenderingEXT = fn void (CommandBuffer);
alias PFN_vkCmdBeginCustomResolveEXT = fn void (CommandBuffer, BeginCustomResolveInfoEXT*);
alias PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPropertiesKHR*);
alias PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPlanePropertiesKHR*);
alias PFN_vkGetDisplayPlaneSupportedDisplaysKHR = fn Result (PhysicalDevice, uint, uint*, DisplayKHR*);
alias PFN_vkGetDisplayModePropertiesKHR = fn Result (PhysicalDevice, DisplayKHR, uint*, DisplayModePropertiesKHR*);
alias PFN_vkCreateDisplayModeKHR = fn Result (PhysicalDevice, DisplayKHR, DisplayModeCreateInfoKHR*, AllocationCallbacks*, DisplayModeKHR*);
alias PFN_vkGetDisplayPlaneCapabilitiesKHR = fn Result (PhysicalDevice, DisplayModeKHR, uint, DisplayPlaneCapabilitiesKHR*);
alias PFN_vkCreateDisplayPlaneSurfaceKHR = fn Result (Instance, DisplaySurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkCreateSharedSwapchainsKHR = fn Result (Device, uint, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
alias PFN_vkDestroySurfaceKHR = fn void (Instance, SurfaceKHR, AllocationCallbacks*);
alias PFN_vkGetPhysicalDeviceSurfaceSupportKHR = fn Result (PhysicalDevice, uint, SurfaceKHR, uint*);
alias PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR = fn Result (PhysicalDevice, SurfaceKHR, SurfaceCapabilitiesKHR*);
alias PFN_vkGetPhysicalDeviceSurfaceFormatsKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, SurfaceFormatKHR*);
alias PFN_vkGetPhysicalDeviceSurfacePresentModesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, PresentModeKHR*);
alias PFN_vkCreateSwapchainKHR = fn Result (Device, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
alias PFN_vkDestroySwapchainKHR = fn void (Device, SwapchainKHR, AllocationCallbacks*);
alias PFN_vkGetSwapchainImagesKHR = fn Result (Device, SwapchainKHR, uint*, Image*);
alias PFN_vkAcquireNextImageKHR = fn Result (Device, SwapchainKHR, ulong, Semaphore, Fence, uint*);
alias PFN_vkQueuePresentKHR = fn Result (Queue, PresentInfoKHR*);
alias PFN_vkCreateWaylandSurfaceKHR = fn Result (Instance, WaylandSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR = fn uint (PhysicalDevice, uint, Display*);
alias PFN_vkCreateWin32SurfaceKHR = fn Result (Instance, Win32SurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR = fn uint (PhysicalDevice, uint);
alias PFN_vkCreateXcbSurfaceKHR = fn Result (Instance, XcbSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR = fn uint (PhysicalDevice, uint, Connection*, Window);
alias PFN_vkCreateDebugReportCallbackEXT = fn Result (Instance, DebugReportCallbackCreateInfoEXT*, AllocationCallbacks*, DebugReportCallbackEXT*);
alias PFN_vkDestroyDebugReportCallbackEXT = fn void (Instance, DebugReportCallbackEXT, AllocationCallbacks*);
alias PFN_vkDebugReportMessageEXT = fn void (Instance, DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*);
alias PFN_vkDebugMarkerSetObjectNameEXT = fn Result (Device, DebugMarkerObjectNameInfoEXT*);
alias PFN_vkDebugMarkerSetObjectTagEXT = fn Result (Device, DebugMarkerObjectTagInfoEXT*);
alias PFN_vkCmdDebugMarkerBeginEXT = fn void (CommandBuffer, DebugMarkerMarkerInfoEXT*);
alias PFN_vkCmdDebugMarkerEndEXT = fn void (CommandBuffer);
alias PFN_vkCmdDebugMarkerInsertEXT = fn void (CommandBuffer, DebugMarkerMarkerInfoEXT*);
alias PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV = fn Result (PhysicalDevice, Format, ImageType, ImageTiling, ImageUsageFlags, ImageCreateFlags, ExternalMemoryHandleTypeFlagsNV, ExternalImageFormatPropertiesNV*);
alias PFN_vkGetMemoryWin32HandleNV = fn Result (Device, DeviceMemory, ExternalMemoryHandleTypeFlagsNV, void**);
alias PFN_vkCmdExecuteGeneratedCommandsNV = fn void (CommandBuffer, uint, GeneratedCommandsInfoNV*);
alias PFN_vkCmdPreprocessGeneratedCommandsNV = fn void (CommandBuffer, GeneratedCommandsInfoNV*);
alias PFN_vkCmdBindPipelineShaderGroupNV = fn void (CommandBuffer, PipelineBindPoint, Pipeline, uint);
alias PFN_vkGetGeneratedCommandsMemoryRequirementsNV = fn void (Device, GeneratedCommandsMemoryRequirementsInfoNV*, MemoryRequirements2*);
alias PFN_vkCreateIndirectCommandsLayoutNV = fn Result (Device, IndirectCommandsLayoutCreateInfoNV*, AllocationCallbacks*, IndirectCommandsLayoutNV*);
alias PFN_vkDestroyIndirectCommandsLayoutNV = fn void (Device, IndirectCommandsLayoutNV, AllocationCallbacks*);
alias PFN_vkCmdExecuteGeneratedCommandsEXT = fn void (CommandBuffer, uint, GeneratedCommandsInfoEXT*);
alias PFN_vkCmdPreprocessGeneratedCommandsEXT = fn void (CommandBuffer, GeneratedCommandsInfoEXT*, CommandBuffer);
alias PFN_vkGetGeneratedCommandsMemoryRequirementsEXT = fn void (Device, GeneratedCommandsMemoryRequirementsInfoEXT*, MemoryRequirements2*);
alias PFN_vkCreateIndirectCommandsLayoutEXT = fn Result (Device, IndirectCommandsLayoutCreateInfoEXT*, AllocationCallbacks*, IndirectCommandsLayoutEXT*);
alias PFN_vkDestroyIndirectCommandsLayoutEXT = fn void (Device, IndirectCommandsLayoutEXT, AllocationCallbacks*);
alias PFN_vkCreateIndirectExecutionSetEXT = fn Result (Device, IndirectExecutionSetCreateInfoEXT*, AllocationCallbacks*, IndirectExecutionSetEXT*);
alias PFN_vkDestroyIndirectExecutionSetEXT = fn void (Device, IndirectExecutionSetEXT, AllocationCallbacks*);
alias PFN_vkUpdateIndirectExecutionSetPipelineEXT = fn void (Device, IndirectExecutionSetEXT, uint, WriteIndirectExecutionSetPipelineEXT*);
alias PFN_vkUpdateIndirectExecutionSetShaderEXT = fn void (Device, IndirectExecutionSetEXT, uint, WriteIndirectExecutionSetShaderEXT*);
alias PFN_vkGetPhysicalDeviceFeatures2KHR = fn void (PhysicalDevice, PhysicalDeviceFeatures2*);
alias PFN_vkGetPhysicalDeviceProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceProperties2*);
alias PFN_vkGetPhysicalDeviceFormatProperties2KHR = fn void (PhysicalDevice, Format, FormatProperties2*);
alias PFN_vkGetPhysicalDeviceImageFormatProperties2KHR = fn Result (PhysicalDevice, PhysicalDeviceImageFormatInfo2*, ImageFormatProperties2*);
alias PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR = fn void (PhysicalDevice, uint*, QueueFamilyProperties2*);
alias PFN_vkGetPhysicalDeviceMemoryProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceMemoryProperties2*);
alias PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceSparseImageFormatInfo2*, uint*, SparseImageFormatProperties2*);
alias PFN_vkCmdPushDescriptorSetKHR = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*);
alias PFN_vkTrimCommandPoolKHR = fn void (Device, CommandPool, CommandPoolTrimFlags);
alias PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR = fn void (PhysicalDevice, PhysicalDeviceExternalBufferInfo*, ExternalBufferProperties*);
alias PFN_vkGetMemoryWin32HandleKHR = fn Result (Device, MemoryGetWin32HandleInfoKHR*, void**);
alias PFN_vkGetMemoryWin32HandlePropertiesKHR = fn Result (Device, ExternalMemoryHandleTypeFlagBits, void*, MemoryWin32HandlePropertiesKHR*);
alias PFN_vkGetMemoryFdKHR = fn Result (Device, MemoryGetFdInfoKHR*, int*);
alias PFN_vkGetMemoryFdPropertiesKHR = fn Result (Device, ExternalMemoryHandleTypeFlagBits, int, MemoryFdPropertiesKHR*);
alias PFN_vkGetMemoryRemoteAddressNV = fn Result (Device, MemoryGetRemoteAddressInfoNV*, RemoteAddressNV*);
alias PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR = fn void (PhysicalDevice, PhysicalDeviceExternalSemaphoreInfo*, ExternalSemaphoreProperties*);
alias PFN_vkGetSemaphoreWin32HandleKHR = fn Result (Device, SemaphoreGetWin32HandleInfoKHR*, void**);
alias PFN_vkImportSemaphoreWin32HandleKHR = fn Result (Device, ImportSemaphoreWin32HandleInfoKHR*);
alias PFN_vkGetSemaphoreFdKHR = fn Result (Device, SemaphoreGetFdInfoKHR*, int*);
alias PFN_vkImportSemaphoreFdKHR = fn Result (Device, ImportSemaphoreFdInfoKHR*);
alias PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR = fn void (PhysicalDevice, PhysicalDeviceExternalFenceInfo*, ExternalFenceProperties*);
alias PFN_vkGetFenceWin32HandleKHR = fn Result (Device, FenceGetWin32HandleInfoKHR*, void**);
alias PFN_vkImportFenceWin32HandleKHR = fn Result (Device, ImportFenceWin32HandleInfoKHR*);
alias PFN_vkGetFenceFdKHR = fn Result (Device, FenceGetFdInfoKHR*, int*);
alias PFN_vkImportFenceFdKHR = fn Result (Device, ImportFenceFdInfoKHR*);
alias PFN_vkReleaseDisplayEXT = fn Result (PhysicalDevice, DisplayKHR);
alias PFN_vkAcquireWinrtDisplayNV = fn Result (PhysicalDevice, DisplayKHR);
alias PFN_vkGetWinrtDisplayNV = fn Result (PhysicalDevice, uint, DisplayKHR*);
alias PFN_vkDisplayPowerControlEXT = fn Result (Device, DisplayKHR, DisplayPowerInfoEXT*);
alias PFN_vkRegisterDeviceEventEXT = fn Result (Device, DeviceEventInfoEXT*, AllocationCallbacks*, Fence*);
alias PFN_vkRegisterDisplayEventEXT = fn Result (Device, DisplayKHR, DisplayEventInfoEXT*, AllocationCallbacks*, Fence*);
alias PFN_vkGetSwapchainCounterEXT = fn Result (Device, SwapchainKHR, SurfaceCounterFlagBitsEXT, ulong*);
alias PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT = fn Result (PhysicalDevice, SurfaceKHR, SurfaceCapabilities2EXT*);
alias PFN_vkEnumeratePhysicalDeviceGroupsKHR = fn Result (Instance, uint*, PhysicalDeviceGroupProperties*);
alias PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR = fn void (Device, uint, uint, uint, PeerMemoryFeatureFlags*);
alias PFN_vkBindBufferMemory2KHR = fn Result (Device, uint, BindBufferMemoryInfo*);
alias PFN_vkBindImageMemory2KHR = fn Result (Device, uint, BindImageMemoryInfo*);
alias PFN_vkCmdSetDeviceMaskKHR = fn void (CommandBuffer, uint);
alias PFN_vkGetDeviceGroupPresentCapabilitiesKHR = fn Result (Device, DeviceGroupPresentCapabilitiesKHR*);
alias PFN_vkGetDeviceGroupSurfacePresentModesKHR = fn Result (Device, SurfaceKHR, DeviceGroupPresentModeFlagsKHR*);
alias PFN_vkAcquireNextImage2KHR = fn Result (Device, AcquireNextImageInfoKHR*, uint*);
alias PFN_vkCmdDispatchBaseKHR = fn void (CommandBuffer, uint, uint, uint, uint, uint, uint);
alias PFN_vkGetPhysicalDevicePresentRectanglesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, Rect2D*);
alias PFN_vkCreateDescriptorUpdateTemplateKHR = fn Result (Device, DescriptorUpdateTemplateCreateInfo*, AllocationCallbacks*, DescriptorUpdateTemplate*);
alias PFN_vkDestroyDescriptorUpdateTemplateKHR = fn void (Device, DescriptorUpdateTemplate, AllocationCallbacks*);
alias PFN_vkUpdateDescriptorSetWithTemplateKHR = fn void (Device, DescriptorSet, DescriptorUpdateTemplate, void*);
alias PFN_vkCmdPushDescriptorSetWithTemplateKHR = fn void (CommandBuffer, DescriptorUpdateTemplate, PipelineLayout, uint, void*);
alias PFN_vkSetHdrMetadataEXT = fn void (Device, uint, SwapchainKHR*, HdrMetadataEXT*);
alias PFN_vkGetSwapchainStatusKHR = fn Result (Device, SwapchainKHR);
alias PFN_vkGetRefreshCycleDurationGOOGLE = fn Result (Device, SwapchainKHR, RefreshCycleDurationGOOGLE*);
alias PFN_vkGetPastPresentationTimingGOOGLE = fn Result (Device, SwapchainKHR, uint*, PastPresentationTimingGOOGLE*);
alias PFN_vkCreateIOSSurfaceMVK = fn Result (Instance, IOSSurfaceCreateInfoMVK*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkCreateMacOSSurfaceMVK = fn Result (Instance, MacOSSurfaceCreateInfoMVK*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkCreateMetalSurfaceEXT = fn Result (Instance, MetalSurfaceCreateInfoEXT*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkCmdSetViewportWScalingNV = fn void (CommandBuffer, uint, uint, ViewportWScalingNV*);
alias PFN_vkCmdSetDiscardRectangleEXT = fn void (CommandBuffer, uint, uint, Rect2D*);
alias PFN_vkCmdSetDiscardRectangleEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetDiscardRectangleModeEXT = fn void (CommandBuffer, DiscardRectangleModeEXT);
alias PFN_vkCmdSetSampleLocationsEXT = fn void (CommandBuffer, SampleLocationsInfoEXT*);
alias PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT = fn void (PhysicalDevice, SampleCountFlagBits, MultisamplePropertiesEXT*);
alias PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR = fn Result (PhysicalDevice, PhysicalDeviceSurfaceInfo2KHR*, SurfaceCapabilities2KHR*);
alias PFN_vkGetPhysicalDeviceSurfaceFormats2KHR = fn Result (PhysicalDevice, PhysicalDeviceSurfaceInfo2KHR*, uint*, SurfaceFormat2KHR*);
alias PFN_vkGetPhysicalDeviceDisplayProperties2KHR = fn Result (PhysicalDevice, uint*, DisplayProperties2KHR*);
alias PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR = fn Result (PhysicalDevice, uint*, DisplayPlaneProperties2KHR*);
alias PFN_vkGetDisplayModeProperties2KHR = fn Result (PhysicalDevice, DisplayKHR, uint*, DisplayModeProperties2KHR*);
alias PFN_vkGetDisplayPlaneCapabilities2KHR = fn Result (PhysicalDevice, DisplayPlaneInfo2KHR*, DisplayPlaneCapabilities2KHR*);
alias PFN_vkGetBufferMemoryRequirements2KHR = fn void (Device, BufferMemoryRequirementsInfo2*, MemoryRequirements2*);
alias PFN_vkGetImageMemoryRequirements2KHR = fn void (Device, ImageMemoryRequirementsInfo2*, MemoryRequirements2*);
alias PFN_vkGetImageSparseMemoryRequirements2KHR = fn void (Device, ImageSparseMemoryRequirementsInfo2*, uint*, SparseImageMemoryRequirements2*);
alias PFN_vkGetDeviceBufferMemoryRequirementsKHR = fn void (Device, DeviceBufferMemoryRequirements*, MemoryRequirements2*);
alias PFN_vkGetDeviceImageMemoryRequirementsKHR = fn void (Device, DeviceImageMemoryRequirements*, MemoryRequirements2*);
alias PFN_vkGetDeviceImageSparseMemoryRequirementsKHR = fn void (Device, DeviceImageMemoryRequirements*, uint*, SparseImageMemoryRequirements2*);
alias PFN_vkCreateSamplerYcbcrConversionKHR = fn Result (Device, SamplerYcbcrConversionCreateInfo*, AllocationCallbacks*, SamplerYcbcrConversion*);
alias PFN_vkDestroySamplerYcbcrConversionKHR = fn void (Device, SamplerYcbcrConversion, AllocationCallbacks*);
alias PFN_vkCreateValidationCacheEXT = fn Result (Device, ValidationCacheCreateInfoEXT*, AllocationCallbacks*, ValidationCacheEXT*);
alias PFN_vkDestroyValidationCacheEXT = fn void (Device, ValidationCacheEXT, AllocationCallbacks*);
alias PFN_vkGetValidationCacheDataEXT = fn Result (Device, ValidationCacheEXT, usz*, void*);
alias PFN_vkMergeValidationCachesEXT = fn Result (Device, ValidationCacheEXT, uint, ValidationCacheEXT*);
alias PFN_vkGetDescriptorSetLayoutSupportKHR = fn void (Device, DescriptorSetLayoutCreateInfo*, DescriptorSetLayoutSupport*);
alias PFN_vkGetShaderInfoAMD = fn Result (Device, Pipeline, ShaderStageFlagBits, ShaderInfoTypeAMD, usz*, void*);
alias PFN_vkSetLocalDimmingAMD = fn void (Device, SwapchainKHR, uint);
alias PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR = fn Result (PhysicalDevice, uint*, TimeDomainKHR*);
alias PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = fn Result (PhysicalDevice, uint*, TimeDomainKHR*);
alias PFN_vkGetCalibratedTimestampsKHR = fn Result (Device, uint, CalibratedTimestampInfoKHR*, ulong*, ulong*);
alias PFN_vkGetCalibratedTimestampsEXT = fn Result (Device, uint, CalibratedTimestampInfoKHR*, ulong*, ulong*);
alias PFN_vkSetDebugUtilsObjectNameEXT = fn Result (Device, DebugUtilsObjectNameInfoEXT*);
alias PFN_vkSetDebugUtilsObjectTagEXT = fn Result (Device, DebugUtilsObjectTagInfoEXT*);
alias PFN_vkQueueBeginDebugUtilsLabelEXT = fn void (Queue, DebugUtilsLabelEXT*);
alias PFN_vkQueueEndDebugUtilsLabelEXT = fn void (Queue);
alias PFN_vkQueueInsertDebugUtilsLabelEXT = fn void (Queue, DebugUtilsLabelEXT*);
alias PFN_vkCmdBeginDebugUtilsLabelEXT = fn void (CommandBuffer, DebugUtilsLabelEXT*);
alias PFN_vkCmdEndDebugUtilsLabelEXT = fn void (CommandBuffer);
alias PFN_vkCmdInsertDebugUtilsLabelEXT = fn void (CommandBuffer, DebugUtilsLabelEXT*);
alias PFN_vkCreateDebugUtilsMessengerEXT = fn Result (Instance, DebugUtilsMessengerCreateInfoEXT*, AllocationCallbacks*, DebugUtilsMessengerEXT*);
alias PFN_vkDestroyDebugUtilsMessengerEXT = fn void (Instance, DebugUtilsMessengerEXT, AllocationCallbacks*);
alias PFN_vkSubmitDebugUtilsMessageEXT = fn void (Instance, DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT*);
alias PFN_vkGetMemoryHostPointerPropertiesEXT = fn Result (Device, ExternalMemoryHandleTypeFlagBits, void*, MemoryHostPointerPropertiesEXT*);
alias PFN_vkCmdWriteBufferMarkerAMD = fn void (CommandBuffer, PipelineStageFlagBits, Buffer, DeviceSize, uint);
alias PFN_vkCreateRenderPass2KHR = fn Result (Device, RenderPassCreateInfo2*, AllocationCallbacks*, RenderPass*);
alias PFN_vkCmdBeginRenderPass2KHR = fn void (CommandBuffer, RenderPassBeginInfo*, SubpassBeginInfo*);
alias PFN_vkCmdNextSubpass2KHR = fn void (CommandBuffer, SubpassBeginInfo*, SubpassEndInfo*);
alias PFN_vkCmdEndRenderPass2KHR = fn void (CommandBuffer, SubpassEndInfo*);
alias PFN_vkGetSemaphoreCounterValueKHR = fn Result (Device, Semaphore, ulong*);
alias PFN_vkWaitSemaphoresKHR = fn Result (Device, SemaphoreWaitInfo*, ulong);
alias PFN_vkSignalSemaphoreKHR = fn Result (Device, SemaphoreSignalInfo*);
alias PFN_vkCmdDrawIndirectCountKHR = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdDrawIndirectCountAMD = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdDrawIndexedIndirectCountKHR = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdDrawIndexedIndirectCountAMD = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdSetCheckpointNV = fn void (CommandBuffer, void*);
alias PFN_vkGetQueueCheckpointDataNV = fn void (Queue, uint*, CheckpointDataNV*);
alias PFN_vkCmdBindTransformFeedbackBuffersEXT = fn void (CommandBuffer, uint, uint, Buffer*, DeviceSize*, DeviceSize*);
alias PFN_vkCmdBeginTransformFeedbackEXT = fn void (CommandBuffer, uint, uint, Buffer*, DeviceSize*);
alias PFN_vkCmdEndTransformFeedbackEXT = fn void (CommandBuffer, uint, uint, Buffer*, DeviceSize*);
alias PFN_vkCmdBeginQueryIndexedEXT = fn void (CommandBuffer, QueryPool, uint, QueryControlFlags, uint);
alias PFN_vkCmdEndQueryIndexedEXT = fn void (CommandBuffer, QueryPool, uint, uint);
alias PFN_vkCmdDrawIndirectByteCountEXT = fn void (CommandBuffer, uint, uint, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdSetExclusiveScissorNV = fn void (CommandBuffer, uint, uint, Rect2D*);
alias PFN_vkCmdSetExclusiveScissorEnableNV = fn void (CommandBuffer, uint, uint, uint*);
alias PFN_vkCmdBindShadingRateImageNV = fn void (CommandBuffer, ImageView, ImageLayout);
alias PFN_vkCmdSetViewportShadingRatePaletteNV = fn void (CommandBuffer, uint, uint, ShadingRatePaletteNV*);
alias PFN_vkCmdSetCoarseSampleOrderNV = fn void (CommandBuffer, CoarseSampleOrderTypeNV, uint, CoarseSampleOrderCustomNV*);
alias PFN_vkCmdDrawMeshTasksNV = fn void (CommandBuffer, uint, uint);
alias PFN_vkCmdDrawMeshTasksIndirectNV = fn void (CommandBuffer, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdDrawMeshTasksIndirectCountNV = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdDrawMeshTasksEXT = fn void (CommandBuffer, uint, uint, uint);
alias PFN_vkCmdDrawMeshTasksIndirectEXT = fn void (CommandBuffer, Buffer, DeviceSize, uint, uint);
alias PFN_vkCmdDrawMeshTasksIndirectCountEXT = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint);
alias PFN_vkCompileDeferredNV = fn Result (Device, Pipeline, uint);
alias PFN_vkCmdBindInvocationMaskHUAWEI = fn void (CommandBuffer, ImageView, ImageLayout);
alias PFN_vkDestroyAccelerationStructureKHR = fn void (Device, AccelerationStructureKHR, AllocationCallbacks*);
alias PFN_vkDestroyAccelerationStructureNV = fn void (Device, AccelerationStructureNV, AllocationCallbacks*);
alias PFN_vkGetAccelerationStructureMemoryRequirementsNV = fn void (Device, AccelerationStructureMemoryRequirementsInfoNV*, MemoryRequirements2KHR*);
alias PFN_vkBindAccelerationStructureMemoryNV = fn Result (Device, uint, BindAccelerationStructureMemoryInfoNV*);
alias PFN_vkCmdCopyAccelerationStructureNV = fn void (CommandBuffer, AccelerationStructureNV, AccelerationStructureNV, CopyAccelerationStructureModeKHR);
alias PFN_vkCmdCopyAccelerationStructureKHR = fn void (CommandBuffer, CopyAccelerationStructureInfoKHR*);
alias PFN_vkCopyAccelerationStructureKHR = fn Result (Device, DeferredOperationKHR, CopyAccelerationStructureInfoKHR*);
alias PFN_vkCmdCopyAccelerationStructureToMemoryKHR = fn void (CommandBuffer, CopyAccelerationStructureToMemoryInfoKHR*);
alias PFN_vkCopyAccelerationStructureToMemoryKHR = fn Result (Device, DeferredOperationKHR, CopyAccelerationStructureToMemoryInfoKHR*);
alias PFN_vkCmdCopyMemoryToAccelerationStructureKHR = fn void (CommandBuffer, CopyMemoryToAccelerationStructureInfoKHR*);
alias PFN_vkCopyMemoryToAccelerationStructureKHR = fn Result (Device, DeferredOperationKHR, CopyMemoryToAccelerationStructureInfoKHR*);
alias PFN_vkCmdWriteAccelerationStructuresPropertiesKHR = fn void (CommandBuffer, uint, AccelerationStructureKHR*, QueryType, QueryPool, uint);
alias PFN_vkCmdWriteAccelerationStructuresPropertiesNV = fn void (CommandBuffer, uint, AccelerationStructureNV*, QueryType, QueryPool, uint);
alias PFN_vkWriteAccelerationStructuresPropertiesKHR = fn Result (Device, uint, AccelerationStructureKHR*, QueryType, usz, void*, usz);
alias PFN_vkCmdTraceRaysKHR = fn void (CommandBuffer, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, uint, uint, uint);
alias PFN_vkCmdTraceRaysNV = fn void (CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, DeviceSize, Buffer, DeviceSize, DeviceSize, Buffer, DeviceSize, DeviceSize, uint, uint, uint);
alias PFN_vkGetRayTracingShaderGroupHandlesKHR = fn Result (Device, Pipeline, uint, uint, usz, void*);
alias PFN_vkGetRayTracingShaderGroupHandlesNV = fn Result (Device, Pipeline, uint, uint, usz, void*);
alias PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = fn Result (Device, Pipeline, uint, uint, usz, void*);
alias PFN_vkGetAccelerationStructureHandleNV = fn Result (Device, AccelerationStructureNV, usz, void*);
alias PFN_vkCreateRayTracingPipelinesNV = fn Result (Device, PipelineCache, uint, RayTracingPipelineCreateInfoNV*, AllocationCallbacks*, Pipeline*);
alias PFN_vkCreateRayTracingPipelinesKHR = fn Result (Device, DeferredOperationKHR, PipelineCache, uint, RayTracingPipelineCreateInfoKHR*, AllocationCallbacks*, Pipeline*);
alias PFN_vkCmdTraceRaysIndirectKHR = fn void (CommandBuffer, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, StridedDeviceAddressRegionKHR*, DeviceAddress);
alias PFN_vkCmdTraceRaysIndirect2KHR = fn void (CommandBuffer, DeviceAddress);
alias PFN_vkGetClusterAccelerationStructureBuildSizesNV = fn void (Device, ClusterAccelerationStructureInputInfoNV*, AccelerationStructureBuildSizesInfoKHR*);
alias PFN_vkCmdBuildClusterAccelerationStructureIndirectNV = fn void (CommandBuffer, ClusterAccelerationStructureCommandsInfoNV*);
alias PFN_vkGetDeviceAccelerationStructureCompatibilityKHR = fn void (Device, AccelerationStructureVersionInfoKHR*, AccelerationStructureCompatibilityKHR*);
alias PFN_vkGetRayTracingShaderGroupStackSizeKHR = fn DeviceSize (Device, Pipeline, uint, ShaderGroupShaderKHR);
alias PFN_vkCmdSetRayTracingPipelineStackSizeKHR = fn void (CommandBuffer, uint);
alias PFN_vkGetImageViewHandleNVX = fn uint (Device, ImageViewHandleInfoNVX*);
alias PFN_vkGetImageViewHandle64NVX = fn ulong (Device, ImageViewHandleInfoNVX*);
alias PFN_vkGetImageViewAddressNVX = fn Result (Device, ImageView, ImageViewAddressPropertiesNVX*);
alias PFN_vkGetDeviceCombinedImageSamplerIndexNVX = fn ulong (Device, ulong, ulong);
alias PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT = fn Result (PhysicalDevice, PhysicalDeviceSurfaceInfo2KHR*, uint*, PresentModeKHR*);
alias PFN_vkGetDeviceGroupSurfacePresentModes2EXT = fn Result (Device, PhysicalDeviceSurfaceInfo2KHR*, DeviceGroupPresentModeFlagsKHR*);
alias PFN_vkAcquireFullScreenExclusiveModeEXT = fn Result (Device, SwapchainKHR);
alias PFN_vkReleaseFullScreenExclusiveModeEXT = fn Result (Device, SwapchainKHR);
alias PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = fn Result (PhysicalDevice, uint, uint*, PerformanceCounterKHR*, PerformanceCounterDescriptionKHR*);
alias PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = fn void (PhysicalDevice, QueryPoolPerformanceCreateInfoKHR*, uint*);
alias PFN_vkAcquireProfilingLockKHR = fn Result (Device, AcquireProfilingLockInfoKHR*);
alias PFN_vkReleaseProfilingLockKHR = fn void (Device);
alias PFN_vkGetImageDrmFormatModifierPropertiesEXT = fn Result (Device, Image, ImageDrmFormatModifierPropertiesEXT*);
alias PFN_vkGetBufferOpaqueCaptureAddressKHR = fn ulong (Device, BufferDeviceAddressInfo*);
alias PFN_vkGetBufferDeviceAddressKHR = fn DeviceAddress (Device, BufferDeviceAddressInfo*);
alias PFN_vkGetBufferDeviceAddressEXT = fn DeviceAddress (Device, BufferDeviceAddressInfo*);
alias PFN_vkCreateHeadlessSurfaceEXT = fn Result (Instance, HeadlessSurfaceCreateInfoEXT*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = fn Result (PhysicalDevice, uint*, FramebufferMixedSamplesCombinationNV*);
alias PFN_vkInitializePerformanceApiINTEL = fn Result (Device, InitializePerformanceApiInfoINTEL*);
alias PFN_vkUninitializePerformanceApiINTEL = fn void (Device);
alias PFN_vkCmdSetPerformanceMarkerINTEL = fn Result (CommandBuffer, PerformanceMarkerInfoINTEL*);
alias PFN_vkCmdSetPerformanceStreamMarkerINTEL = fn Result (CommandBuffer, PerformanceStreamMarkerInfoINTEL*);
alias PFN_vkCmdSetPerformanceOverrideINTEL = fn Result (CommandBuffer, PerformanceOverrideInfoINTEL*);
alias PFN_vkAcquirePerformanceConfigurationINTEL = fn Result (Device, PerformanceConfigurationAcquireInfoINTEL*, PerformanceConfigurationINTEL*);
alias PFN_vkReleasePerformanceConfigurationINTEL = fn Result (Device, PerformanceConfigurationINTEL);
alias PFN_vkQueueSetPerformanceConfigurationINTEL = fn Result (Queue, PerformanceConfigurationINTEL);
alias PFN_vkGetPerformanceParameterINTEL = fn Result (Device, PerformanceParameterTypeINTEL, PerformanceValueINTEL*);
alias PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR = fn ulong (Device, DeviceMemoryOpaqueCaptureAddressInfo*);
alias PFN_vkGetPipelineExecutablePropertiesKHR = fn Result (Device, PipelineInfoKHR*, uint*, PipelineExecutablePropertiesKHR*);
alias PFN_vkGetPipelineExecutableStatisticsKHR = fn Result (Device, PipelineExecutableInfoKHR*, uint*, PipelineExecutableStatisticKHR*);
alias PFN_vkGetPipelineExecutableInternalRepresentationsKHR = fn Result (Device, PipelineExecutableInfoKHR*, uint*, PipelineExecutableInternalRepresentationKHR*);
alias PFN_vkCmdSetLineStippleKHR = fn void (CommandBuffer, uint, uint);
alias PFN_vkCmdSetLineStippleEXT = fn void (CommandBuffer, uint, uint);
alias PFN_vkGetPhysicalDeviceToolPropertiesEXT = fn Result (PhysicalDevice, uint*, PhysicalDeviceToolProperties*);
alias PFN_vkCreateAccelerationStructureKHR = fn Result (Device, AccelerationStructureCreateInfoKHR*, AllocationCallbacks*, AccelerationStructureKHR*);
alias PFN_vkCmdBuildAccelerationStructuresKHR = fn void (CommandBuffer, uint, AccelerationStructureBuildGeometryInfoKHR*, AccelerationStructureBuildRangeInfoKHR* );
alias PFN_vkCmdBuildAccelerationStructuresIndirectKHR = fn void (CommandBuffer, uint, AccelerationStructureBuildGeometryInfoKHR*, DeviceAddress*, uint*, uint* );
alias PFN_vkBuildAccelerationStructuresKHR = fn Result (Device, DeferredOperationKHR, uint, AccelerationStructureBuildGeometryInfoKHR*, AccelerationStructureBuildRangeInfoKHR* );
alias PFN_vkGetAccelerationStructureDeviceAddressKHR = fn DeviceAddress (Device, AccelerationStructureDeviceAddressInfoKHR*);
alias PFN_vkCreateDeferredOperationKHR = fn Result (Device, AllocationCallbacks*, DeferredOperationKHR*);
alias PFN_vkDestroyDeferredOperationKHR = fn void (Device, DeferredOperationKHR, AllocationCallbacks*);
alias PFN_vkGetDeferredOperationMaxConcurrencyKHR = fn uint (Device, DeferredOperationKHR);
alias PFN_vkGetDeferredOperationResultKHR = fn Result (Device, DeferredOperationKHR);
alias PFN_vkDeferredOperationJoinKHR = fn Result (Device, DeferredOperationKHR);
alias PFN_vkGetPipelineIndirectMemoryRequirementsNV = fn void (Device, ComputePipelineCreateInfo*, MemoryRequirements2*);
alias PFN_vkGetPipelineIndirectDeviceAddressNV = fn DeviceAddress (Device, PipelineIndirectDeviceAddressInfoNV*);
alias PFN_vkAntiLagUpdateAMD = fn void (Device, AntiLagDataAMD*);
alias PFN_vkCmdSetCullModeEXT = fn void (CommandBuffer, CullModeFlags);
alias PFN_vkCmdSetFrontFaceEXT = fn void (CommandBuffer, FrontFace);
alias PFN_vkCmdSetPrimitiveTopologyEXT = fn void (CommandBuffer, PrimitiveTopology);
alias PFN_vkCmdSetViewportWithCountEXT = fn void (CommandBuffer, uint, Viewport*);
alias PFN_vkCmdSetScissorWithCountEXT = fn void (CommandBuffer, uint, Rect2D*);
alias PFN_vkCmdBindIndexBuffer2KHR = fn void (CommandBuffer, Buffer, DeviceSize, DeviceSize, IndexType);
alias PFN_vkCmdBindVertexBuffers2EXT = fn void (CommandBuffer, uint, uint, Buffer*, DeviceSize*, DeviceSize*, DeviceSize*);
alias PFN_vkCmdSetDepthTestEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetDepthWriteEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetDepthCompareOpEXT = fn void (CommandBuffer, CompareOp);
alias PFN_vkCmdSetDepthBoundsTestEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetStencilTestEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetStencilOpEXT = fn void (CommandBuffer, StencilFaceFlags, StencilOp, StencilOp, StencilOp, CompareOp);
alias PFN_vkCmdSetPatchControlPointsEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetRasterizerDiscardEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetDepthBiasEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetLogicOpEXT = fn void (CommandBuffer, LogicOp);
alias PFN_vkCmdSetPrimitiveRestartEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetTessellationDomainOriginEXT = fn void (CommandBuffer, TessellationDomainOrigin);
alias PFN_vkCmdSetDepthClampEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetPolygonModeEXT = fn void (CommandBuffer, PolygonMode);
alias PFN_vkCmdSetRasterizationSamplesEXT = fn void (CommandBuffer, SampleCountFlagBits);
alias PFN_vkCmdSetSampleMaskEXT = fn void (CommandBuffer, SampleCountFlagBits, SampleMask*);
alias PFN_vkCmdSetAlphaToCoverageEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetAlphaToOneEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetLogicOpEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetColorBlendEnableEXT = fn void (CommandBuffer, uint, uint, uint*);
alias PFN_vkCmdSetColorBlendEquationEXT = fn void (CommandBuffer, uint, uint, ColorBlendEquationEXT*);
alias PFN_vkCmdSetColorWriteMaskEXT = fn void (CommandBuffer, uint, uint, ColorComponentFlags*);
alias PFN_vkCmdSetRasterizationStreamEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetConservativeRasterizationModeEXT = fn void (CommandBuffer, ConservativeRasterizationModeEXT);
alias PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT = fn void (CommandBuffer, float);
alias PFN_vkCmdSetDepthClipEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetSampleLocationsEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetColorBlendAdvancedEXT = fn void (CommandBuffer, uint, uint, ColorBlendAdvancedEXT*);
alias PFN_vkCmdSetProvokingVertexModeEXT = fn void (CommandBuffer, ProvokingVertexModeEXT);
alias PFN_vkCmdSetLineStippleEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetDepthClipNegativeOneToOneEXT = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetViewportWScalingEnableNV = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetViewportSwizzleNV = fn void (CommandBuffer, uint, uint, ViewportSwizzleNV*);
alias PFN_vkCmdSetCoverageToColorEnableNV = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetCoverageToColorLocationNV = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetCoverageModulationModeNV = fn void (CommandBuffer, CoverageModulationModeNV);
alias PFN_vkCmdSetCoverageModulationTableEnableNV = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetCoverageModulationTableNV = fn void (CommandBuffer, uint, float*);
alias PFN_vkCmdSetShadingRateImageEnableNV = fn void (CommandBuffer, uint);
alias PFN_vkCmdSetCoverageReductionModeNV = fn void (CommandBuffer, CoverageReductionModeNV);
alias PFN_vkCmdSetRepresentativeFragmentTestEnableNV = fn void (CommandBuffer, uint);
alias PFN_vkCreatePrivateDataSlotEXT = fn Result (Device, PrivateDataSlotCreateInfo*, AllocationCallbacks*, PrivateDataSlot*);
alias PFN_vkDestroyPrivateDataSlotEXT = fn void (Device, PrivateDataSlot, AllocationCallbacks*);
alias PFN_vkSetPrivateDataEXT = fn Result (Device, ObjectType, ulong, PrivateDataSlot, ulong);
alias PFN_vkGetPrivateDataEXT = fn void (Device, ObjectType, ulong, PrivateDataSlot, ulong*);
alias PFN_vkCmdCopyBuffer2KHR = fn void (CommandBuffer, CopyBufferInfo2*);
alias PFN_vkCmdCopyImage2KHR = fn void (CommandBuffer, CopyImageInfo2*);
alias PFN_vkCmdBlitImage2KHR = fn void (CommandBuffer, BlitImageInfo2*);
alias PFN_vkCmdCopyBufferToImage2KHR = fn void (CommandBuffer, CopyBufferToImageInfo2*);
alias PFN_vkCmdCopyImageToBuffer2KHR = fn void (CommandBuffer, CopyImageToBufferInfo2*);
alias PFN_vkCmdResolveImage2KHR = fn void (CommandBuffer, ResolveImageInfo2*);
alias PFN_vkCmdSetFragmentShadingRateKHR = fn void (CommandBuffer, Extent2D*, FragmentShadingRateCombinerOpKHR[2]);
alias PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR = fn Result (PhysicalDevice, uint*, PhysicalDeviceFragmentShadingRateKHR*);
alias PFN_vkCmdSetFragmentShadingRateEnumNV = fn void (CommandBuffer, FragmentShadingRateNV, FragmentShadingRateCombinerOpKHR[2]);
alias PFN_vkGetAccelerationStructureBuildSizesKHR = fn void (Device, AccelerationStructureBuildTypeKHR, AccelerationStructureBuildGeometryInfoKHR*, uint*, AccelerationStructureBuildSizesInfoKHR*);
alias PFN_vkCmdSetVertexInputEXT = fn void (CommandBuffer, uint, VertexInputBindingDescription2EXT*, uint, VertexInputAttributeDescription2EXT*);
alias PFN_vkCmdSetColorWriteEnableEXT = fn void (CommandBuffer, uint, uint*);
alias PFN_vkCmdSetEvent2KHR = fn void (CommandBuffer, Event, DependencyInfo*);
alias PFN_vkCmdResetEvent2KHR = fn void (CommandBuffer, Event, PipelineStageFlags2);
alias PFN_vkCmdWaitEvents2KHR = fn void (CommandBuffer, uint, Event*, DependencyInfo*);
alias PFN_vkCmdPipelineBarrier2KHR = fn void (CommandBuffer, DependencyInfo*);
alias PFN_vkQueueSubmit2KHR = fn Result (Queue, uint, SubmitInfo2*, Fence);
alias PFN_vkCmdWriteTimestamp2KHR = fn void (CommandBuffer, PipelineStageFlags2, QueryPool, uint);
alias PFN_vkCmdWriteBufferMarker2AMD = fn void (CommandBuffer, PipelineStageFlags2, Buffer, DeviceSize, uint);
alias PFN_vkGetQueueCheckpointData2NV = fn void (Queue, uint*, CheckpointData2NV*);
alias PFN_vkCopyMemoryToImageEXT = fn Result (Device, CopyMemoryToImageInfo*);
alias PFN_vkCopyImageToMemoryEXT = fn Result (Device, CopyImageToMemoryInfo*);
alias PFN_vkCopyImageToImageEXT = fn Result (Device, CopyImageToImageInfo*);
alias PFN_vkTransitionImageLayoutEXT = fn Result (Device, uint, HostImageLayoutTransitionInfo*);
alias PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR = fn Result (PhysicalDevice, VideoProfileInfoKHR*, VideoCapabilitiesKHR*);
alias PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR = fn Result (PhysicalDevice, PhysicalDeviceVideoFormatInfoKHR*, uint*, VideoFormatPropertiesKHR*);
alias PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR = fn Result (PhysicalDevice, PhysicalDeviceVideoEncodeQualityLevelInfoKHR*, VideoEncodeQualityLevelPropertiesKHR*);
alias PFN_vkCreateVideoSessionKHR = fn Result (Device, VideoSessionCreateInfoKHR*, AllocationCallbacks*, VideoSessionKHR*);
alias PFN_vkDestroyVideoSessionKHR = fn void (Device, VideoSessionKHR, AllocationCallbacks*);
alias PFN_vkCreateVideoSessionParametersKHR = fn Result (Device, VideoSessionParametersCreateInfoKHR*, AllocationCallbacks*, VideoSessionParametersKHR*);
alias PFN_vkUpdateVideoSessionParametersKHR = fn Result (Device, VideoSessionParametersKHR, VideoSessionParametersUpdateInfoKHR*);
alias PFN_vkGetEncodedVideoSessionParametersKHR = fn Result (Device, VideoEncodeSessionParametersGetInfoKHR*, VideoEncodeSessionParametersFeedbackInfoKHR*, usz*, void*);
alias PFN_vkDestroyVideoSessionParametersKHR = fn void (Device, VideoSessionParametersKHR, AllocationCallbacks*);
alias PFN_vkGetVideoSessionMemoryRequirementsKHR = fn Result (Device, VideoSessionKHR, uint*, VideoSessionMemoryRequirementsKHR*);
alias PFN_vkBindVideoSessionMemoryKHR = fn Result (Device, VideoSessionKHR, uint, BindVideoSessionMemoryInfoKHR*);
alias PFN_vkCmdDecodeVideoKHR = fn void (CommandBuffer, VideoDecodeInfoKHR*);
alias PFN_vkCmdBeginVideoCodingKHR = fn void (CommandBuffer, VideoBeginCodingInfoKHR*);
alias PFN_vkCmdControlVideoCodingKHR = fn void (CommandBuffer, VideoCodingControlInfoKHR*);
alias PFN_vkCmdEndVideoCodingKHR = fn void (CommandBuffer, VideoEndCodingInfoKHR*);
alias PFN_vkCmdEncodeVideoKHR = fn void (CommandBuffer, VideoEncodeInfoKHR*);
alias PFN_vkCmdDecompressMemoryIndirectCountNV = fn void (CommandBuffer, DeviceAddress, DeviceAddress, uint);
alias PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV = fn void (Device, PartitionedAccelerationStructureInstancesInputNV*, AccelerationStructureBuildSizesInfoKHR*);
alias PFN_vkCmdBuildPartitionedAccelerationStructuresNV = fn void (CommandBuffer, BuildPartitionedAccelerationStructureInfoNV*);
alias PFN_vkCmdDecompressMemoryEXT = fn void (CommandBuffer, DecompressMemoryInfoEXT*);
alias PFN_vkCmdDecompressMemoryIndirectCountEXT = fn void (CommandBuffer, MemoryDecompressionMethodFlagsEXT, DeviceAddress, DeviceAddress, uint, uint);
alias PFN_vkCreateCuModuleNVX = fn Result (Device, CuModuleCreateInfoNVX*, AllocationCallbacks*, CuModuleNVX*);
alias PFN_vkCreateCuFunctionNVX = fn Result (Device, CuFunctionCreateInfoNVX*, AllocationCallbacks*, CuFunctionNVX*);
alias PFN_vkDestroyCuModuleNVX = fn void (Device, CuModuleNVX, AllocationCallbacks*);
alias PFN_vkDestroyCuFunctionNVX = fn void (Device, CuFunctionNVX, AllocationCallbacks*);
alias PFN_vkCmdCuLaunchKernelNVX = fn void (CommandBuffer, CuLaunchInfoNVX*);
alias PFN_vkGetDescriptorSetLayoutSizeEXT = fn void (Device, DescriptorSetLayout, DeviceSize*);
alias PFN_vkGetDescriptorSetLayoutBindingOffsetEXT = fn void (Device, DescriptorSetLayout, uint, DeviceSize*);
alias PFN_vkGetDescriptorEXT = fn void (Device, DescriptorGetInfoEXT*, usz, void*);
alias PFN_vkCmdBindDescriptorBuffersEXT = fn void (CommandBuffer, uint, DescriptorBufferBindingInfoEXT*);
alias PFN_vkCmdSetDescriptorBufferOffsetsEXT = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, uint*, DeviceSize*);
alias PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint);
alias PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT = fn Result (Device, BufferCaptureDescriptorDataInfoEXT*, void*);
alias PFN_vkGetImageOpaqueCaptureDescriptorDataEXT = fn Result (Device, ImageCaptureDescriptorDataInfoEXT*, void*);
alias PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT = fn Result (Device, ImageViewCaptureDescriptorDataInfoEXT*, void*);
alias PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT = fn Result (Device, SamplerCaptureDescriptorDataInfoEXT*, void*);
alias PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = fn Result (Device, AccelerationStructureCaptureDescriptorDataInfoEXT*, void*);
alias PFN_vkSetDeviceMemoryPriorityEXT = fn void (Device, DeviceMemory, float);
alias PFN_vkAcquireDrmDisplayEXT = fn Result (PhysicalDevice, int, DisplayKHR);
alias PFN_vkGetDrmDisplayEXT = fn Result (PhysicalDevice, int, uint, DisplayKHR*);
alias PFN_vkWaitForPresent2KHR = fn Result (Device, SwapchainKHR, PresentWait2InfoKHR*);
alias PFN_vkWaitForPresentKHR = fn Result (Device, SwapchainKHR, ulong, ulong);
alias PFN_vkCreateCudaModuleNV = fn Result (Device, CudaModuleCreateInfoNV*, AllocationCallbacks*, CudaModuleNV*);
alias PFN_vkGetCudaModuleCacheNV = fn Result (Device, CudaModuleNV, usz*, void*);
alias PFN_vkCreateCudaFunctionNV = fn Result (Device, CudaFunctionCreateInfoNV*, AllocationCallbacks*, CudaFunctionNV*);
alias PFN_vkDestroyCudaModuleNV = fn void (Device, CudaModuleNV, AllocationCallbacks*);
alias PFN_vkDestroyCudaFunctionNV = fn void (Device, CudaFunctionNV, AllocationCallbacks*);
alias PFN_vkCmdCudaLaunchKernelNV = fn void (CommandBuffer, CudaLaunchInfoNV*);
alias PFN_vkCmdBeginRenderingKHR = fn void (CommandBuffer, RenderingInfo*);
alias PFN_vkCmdEndRendering2KHR = fn void (CommandBuffer, RenderingEndInfoKHR*);
alias PFN_vkCmdEndRendering2EXT = fn void (CommandBuffer, RenderingEndInfoKHR*);
alias PFN_vkCmdEndRenderingKHR = fn void (CommandBuffer);
alias PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE = fn void (Device, DescriptorSetBindingReferenceVALVE*, DescriptorSetLayoutHostMappingInfoVALVE*);
alias PFN_vkGetDescriptorSetHostMappingVALVE = fn void (Device, DescriptorSet, void**);
alias PFN_vkCreateMicromapEXT = fn Result (Device, MicromapCreateInfoEXT*, AllocationCallbacks*, MicromapEXT*);
alias PFN_vkCmdBuildMicromapsEXT = fn void (CommandBuffer, uint, MicromapBuildInfoEXT*);
alias PFN_vkBuildMicromapsEXT = fn Result (Device, DeferredOperationKHR, uint, MicromapBuildInfoEXT*);
alias PFN_vkDestroyMicromapEXT = fn void (Device, MicromapEXT, AllocationCallbacks*);
alias PFN_vkCmdCopyMicromapEXT = fn void (CommandBuffer, CopyMicromapInfoEXT*);
alias PFN_vkCopyMicromapEXT = fn Result (Device, DeferredOperationKHR, CopyMicromapInfoEXT*);
alias PFN_vkCmdCopyMicromapToMemoryEXT = fn void (CommandBuffer, CopyMicromapToMemoryInfoEXT*);
alias PFN_vkCopyMicromapToMemoryEXT = fn Result (Device, DeferredOperationKHR, CopyMicromapToMemoryInfoEXT*);
alias PFN_vkCmdCopyMemoryToMicromapEXT = fn void (CommandBuffer, CopyMemoryToMicromapInfoEXT*);
alias PFN_vkCopyMemoryToMicromapEXT = fn Result (Device, DeferredOperationKHR, CopyMemoryToMicromapInfoEXT*);
alias PFN_vkCmdWriteMicromapsPropertiesEXT = fn void (CommandBuffer, uint, MicromapEXT*, QueryType, QueryPool, uint);
alias PFN_vkWriteMicromapsPropertiesEXT = fn Result (Device, uint, MicromapEXT*, QueryType, usz, void*, usz);
alias PFN_vkGetDeviceMicromapCompatibilityEXT = fn void (Device, MicromapVersionInfoEXT*, AccelerationStructureCompatibilityKHR*);
alias PFN_vkGetMicromapBuildSizesEXT = fn void (Device, AccelerationStructureBuildTypeKHR, MicromapBuildInfoEXT*, MicromapBuildSizesInfoEXT*);
alias PFN_vkGetShaderModuleIdentifierEXT = fn void (Device, ShaderModule, ShaderModuleIdentifierEXT*);
alias PFN_vkGetShaderModuleCreateInfoIdentifierEXT = fn void (Device, ShaderModuleCreateInfo*, ShaderModuleIdentifierEXT*);
alias PFN_vkGetImageSubresourceLayout2KHR = fn void (Device, Image, ImageSubresource2*, SubresourceLayout2*);
alias PFN_vkGetImageSubresourceLayout2EXT = fn void (Device, Image, ImageSubresource2*, SubresourceLayout2*);
alias PFN_vkGetPipelinePropertiesEXT = fn Result (Device, PipelineInfoEXT*, BaseOutStructure*);
alias PFN_vkExportMetalObjectsEXT = fn void (Device, ExportMetalObjectsInfoEXT*);
alias PFN_vkCmdBindTileMemoryQCOM = fn void (CommandBuffer, TileMemoryBindInfoQCOM*);
alias PFN_vkGetFramebufferTilePropertiesQCOM = fn Result (Device, Framebuffer, uint*, TilePropertiesQCOM*);
alias PFN_vkGetDynamicRenderingTilePropertiesQCOM = fn Result (Device, RenderingInfo*, TilePropertiesQCOM*);
alias PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV = fn Result (PhysicalDevice, OpticalFlowImageFormatInfoNV*, uint*, OpticalFlowImageFormatPropertiesNV*);
alias PFN_vkCreateOpticalFlowSessionNV = fn Result (Device, OpticalFlowSessionCreateInfoNV*, AllocationCallbacks*, OpticalFlowSessionNV*);
alias PFN_vkDestroyOpticalFlowSessionNV = fn void (Device, OpticalFlowSessionNV, AllocationCallbacks*);
alias PFN_vkBindOpticalFlowSessionImageNV = fn Result (Device, OpticalFlowSessionNV, OpticalFlowSessionBindingPointNV, ImageView, ImageLayout);
alias PFN_vkCmdOpticalFlowExecuteNV = fn void (CommandBuffer, OpticalFlowSessionNV, OpticalFlowExecuteInfoNV*);
alias PFN_vkGetDeviceFaultInfoEXT = fn Result (Device, DeviceFaultCountsEXT*, DeviceFaultInfoEXT*);
alias PFN_vkGetDeviceFaultReportsKHR = fn Result (Device, ulong, uint*, DeviceFaultInfoKHR*);
alias PFN_vkGetDeviceFaultDebugInfoKHR = fn Result (Device, DeviceFaultDebugInfoKHR*);
alias PFN_vkCmdSetDepthBias2EXT = fn void (CommandBuffer, DepthBiasInfoEXT*);
alias PFN_vkReleaseSwapchainImagesKHR = fn Result (Device, ReleaseSwapchainImagesInfoKHR*);
alias PFN_vkReleaseSwapchainImagesEXT = fn Result (Device, ReleaseSwapchainImagesInfoKHR*);
alias PFN_vkGetDeviceImageSubresourceLayoutKHR = fn void (Device, DeviceImageSubresourceInfo*, SubresourceLayout2*);
alias PFN_vkMapMemory2KHR = fn Result (Device, MemoryMapInfo*, void**);
alias PFN_vkUnmapMemory2KHR = fn Result (Device, MemoryUnmapInfo*);
alias PFN_vkCreateShadersEXT = fn Result (Device, uint, ShaderCreateInfoEXT*, AllocationCallbacks*, ShaderEXT*);
alias PFN_vkDestroyShaderEXT = fn void (Device, ShaderEXT, AllocationCallbacks*);
alias PFN_vkGetShaderBinaryDataEXT = fn Result (Device, ShaderEXT, usz*, void*);
alias PFN_vkCmdBindShadersEXT = fn void (CommandBuffer, uint, ShaderStageFlagBits*, ShaderEXT*);
alias PFN_vkSetSwapchainPresentTimingQueueSizeEXT = fn Result (Device, SwapchainKHR, uint);
alias PFN_vkGetSwapchainTimingPropertiesEXT = fn Result (Device, SwapchainKHR, SwapchainTimingPropertiesEXT*, ulong*);
alias PFN_vkGetSwapchainTimeDomainPropertiesEXT = fn Result (Device, SwapchainKHR, SwapchainTimeDomainPropertiesEXT*, ulong*);
alias PFN_vkGetPastPresentationTimingEXT = fn Result (Device, PastPresentationTimingInfoEXT*, PastPresentationTimingPropertiesEXT*);
alias PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR = fn Result (PhysicalDevice, uint*, CooperativeMatrixPropertiesKHR*);
alias PFN_vkGetExecutionGraphPipelineScratchSizeAMDX = fn Result (Device, Pipeline, ExecutionGraphPipelineScratchSizeAMDX*);
alias PFN_vkGetExecutionGraphPipelineNodeIndexAMDX = fn Result (Device, Pipeline, PipelineShaderStageNodeCreateInfoAMDX*, uint*);
alias PFN_vkCreateExecutionGraphPipelinesAMDX = fn Result (Device, PipelineCache, uint, ExecutionGraphPipelineCreateInfoAMDX*, AllocationCallbacks*, Pipeline*);
alias PFN_vkCmdInitializeGraphScratchMemoryAMDX = fn void (CommandBuffer, Pipeline, DeviceAddress, DeviceSize);
alias PFN_vkCmdDispatchGraphAMDX = fn void (CommandBuffer, DeviceAddress, DeviceSize, DispatchGraphCountInfoAMDX*);
alias PFN_vkCmdDispatchGraphIndirectAMDX = fn void (CommandBuffer, DeviceAddress, DeviceSize, DispatchGraphCountInfoAMDX*);
alias PFN_vkCmdDispatchGraphIndirectCountAMDX = fn void (CommandBuffer, DeviceAddress, DeviceSize, DeviceAddress);
alias PFN_vkCmdBindDescriptorSets2KHR = fn void (CommandBuffer, BindDescriptorSetsInfo*);
alias PFN_vkCmdPushConstants2KHR = fn void (CommandBuffer, PushConstantsInfo*);
alias PFN_vkCmdPushDescriptorSet2KHR = fn void (CommandBuffer, PushDescriptorSetInfo*);
alias PFN_vkCmdPushDescriptorSetWithTemplate2KHR = fn void (CommandBuffer, PushDescriptorSetWithTemplateInfo*);
alias PFN_vkCmdSetDescriptorBufferOffsets2EXT = fn void (CommandBuffer, SetDescriptorBufferOffsetsInfoEXT*);
alias PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = fn void (CommandBuffer, BindDescriptorBufferEmbeddedSamplersInfoEXT*);
alias PFN_vkSetLatencySleepModeNV = fn Result (Device, SwapchainKHR, LatencySleepModeInfoNV*);
alias PFN_vkLatencySleepNV = fn Result (Device, SwapchainKHR, LatencySleepInfoNV*);
alias PFN_vkSetLatencyMarkerNV = fn void (Device, SwapchainKHR, SetLatencyMarkerInfoNV*);
alias PFN_vkGetLatencyTimingsNV = fn void (Device, SwapchainKHR, GetLatencyMarkerInfoNV*);
alias PFN_vkQueueNotifyOutOfBandNV = fn void (Queue, OutOfBandQueueTypeInfoNV*);
alias PFN_vkCmdSetRenderingAttachmentLocationsKHR = fn void (CommandBuffer, RenderingAttachmentLocationInfo*);
alias PFN_vkCmdSetRenderingInputAttachmentIndicesKHR = fn void (CommandBuffer, RenderingInputAttachmentIndexInfo*);
alias PFN_vkCmdSetDepthClampRangeEXT = fn void (CommandBuffer, DepthClampModeEXT, DepthClampRangeEXT*);
alias PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV = fn Result (PhysicalDevice, uint*, CooperativeMatrixFlexibleDimensionsPropertiesNV*);
alias PFN_vkGetMemoryMetalHandleEXT = fn Result (Device, MemoryGetMetalHandleInfoEXT*, void**);
alias PFN_vkGetMemoryMetalHandlePropertiesEXT = fn Result (Device, ExternalMemoryHandleTypeFlagBits, void*, MemoryMetalHandlePropertiesEXT*);
alias PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV = fn Result (PhysicalDevice, uint*, CooperativeVectorPropertiesNV*);
alias PFN_vkConvertCooperativeVectorMatrixNV = fn Result (Device, ConvertCooperativeVectorMatrixInfoNV*);
alias PFN_vkCmdConvertCooperativeVectorMatrixNV = fn void (CommandBuffer, uint, ConvertCooperativeVectorMatrixInfoNV*);
alias PFN_vkCmdDispatchTileQCOM = fn void (CommandBuffer, DispatchTileInfoQCOM*);
alias PFN_vkCmdBeginPerTileExecutionQCOM = fn void (CommandBuffer, PerTileBeginInfoQCOM*);
alias PFN_vkCmdEndPerTileExecutionQCOM = fn void (CommandBuffer, PerTileEndInfoQCOM*);
alias PFN_vkCreateExternalComputeQueueNV = fn Result (Device, ExternalComputeQueueCreateInfoNV*, AllocationCallbacks*, ExternalComputeQueueNV*);
alias PFN_vkDestroyExternalComputeQueueNV = fn void (Device, ExternalComputeQueueNV, AllocationCallbacks*);
alias PFN_vkGetExternalComputeQueueDataNV = fn void (ExternalComputeQueueNV, ExternalComputeQueueDataParamsNV*, void*);
alias PFN_vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM = fn Result (PhysicalDevice, uint*, ShaderInstrumentationMetricDescriptionARM*);
alias PFN_vkCreateShaderInstrumentationARM = fn Result (Device, ShaderInstrumentationCreateInfoARM*, AllocationCallbacks*, ShaderInstrumentationARM*);
alias PFN_vkDestroyShaderInstrumentationARM = fn void (Device, ShaderInstrumentationARM, AllocationCallbacks*);
alias PFN_vkCmdBeginShaderInstrumentationARM = fn void (CommandBuffer, ShaderInstrumentationARM);
alias PFN_vkCmdEndShaderInstrumentationARM = fn void (CommandBuffer);
alias PFN_vkGetShaderInstrumentationValuesARM = fn Result (Device, ShaderInstrumentationARM, uint*, void*, ShaderInstrumentationValuesFlagsARM);
alias PFN_vkClearShaderInstrumentationMetricsARM = fn void (Device, ShaderInstrumentationARM);
alias PFN_vkCreateTensorARM = fn Result (Device, TensorCreateInfoARM*, AllocationCallbacks*, TensorARM*);
alias PFN_vkDestroyTensorARM = fn void (Device, TensorARM, AllocationCallbacks*);
alias PFN_vkCreateTensorViewARM = fn Result (Device, TensorViewCreateInfoARM*, AllocationCallbacks*, TensorViewARM*);
alias PFN_vkDestroyTensorViewARM = fn void (Device, TensorViewARM, AllocationCallbacks*);
alias PFN_vkGetTensorMemoryRequirementsARM = fn void (Device, TensorMemoryRequirementsInfoARM*, MemoryRequirements2*);
alias PFN_vkBindTensorMemoryARM = fn Result (Device, uint, BindTensorMemoryInfoARM*);
alias PFN_vkGetDeviceTensorMemoryRequirementsARM = fn void (Device, DeviceTensorMemoryRequirementsARM*, MemoryRequirements2*);
alias PFN_vkCmdCopyTensorARM = fn void (CommandBuffer, CopyTensorInfoARM*);
alias PFN_vkGetTensorOpaqueCaptureDescriptorDataARM = fn Result (Device, TensorCaptureDescriptorDataInfoARM*, void*);
alias PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM = fn Result (Device, TensorViewCaptureDescriptorDataInfoARM*, void*);
alias PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM = fn void (PhysicalDevice, PhysicalDeviceExternalTensorInfoARM*, ExternalTensorPropertiesARM*);
alias PFN_vkCreateDataGraphPipelineSessionARM = fn Result (Device, DataGraphPipelineSessionCreateInfoARM*, AllocationCallbacks*, DataGraphPipelineSessionARM*);
alias PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM = fn Result (Device, DataGraphPipelineSessionBindPointRequirementsInfoARM*, uint*, DataGraphPipelineSessionBindPointRequirementARM*);
alias PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM = fn void (Device, DataGraphPipelineSessionMemoryRequirementsInfoARM*, MemoryRequirements2*);
alias PFN_vkBindDataGraphPipelineSessionMemoryARM = fn Result (Device, uint, BindDataGraphPipelineSessionMemoryInfoARM*);
alias PFN_vkDestroyDataGraphPipelineSessionARM = fn void (Device, DataGraphPipelineSessionARM, AllocationCallbacks*);
alias PFN_vkCmdDispatchDataGraphARM = fn void (CommandBuffer, DataGraphPipelineSessionARM, DataGraphPipelineDispatchInfoARM*);
alias PFN_vkGetDataGraphPipelineAvailablePropertiesARM = fn Result (Device, DataGraphPipelineInfoARM*, uint*, DataGraphPipelinePropertyARM*);
alias PFN_vkGetDataGraphPipelinePropertiesARM = fn Result (Device, DataGraphPipelineInfoARM*, uint, DataGraphPipelinePropertyQueryResultARM*);
alias PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM = fn Result (PhysicalDevice, uint, uint*, QueueFamilyDataGraphPropertiesARM*);
alias PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM = fn void (PhysicalDevice, PhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM*, QueueFamilyDataGraphProcessingEnginePropertiesARM*);
alias PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM = fn Result (PhysicalDevice, uint, uint*, PerformanceCounterARM*, PerformanceCounterDescriptionARM*);
alias PFN_vkCmdSetComputeOccupancyPriorityNV = fn void (CommandBuffer, ComputeOccupancyPriorityParametersNV*);
alias PFN_vkWriteSamplerDescriptorsEXT = fn Result (Device, uint, SamplerCreateInfo*, HostAddressRangeEXT*);
alias PFN_vkWriteResourceDescriptorsEXT = fn Result (Device, uint, ResourceDescriptorInfoEXT*, HostAddressRangeEXT*);
alias PFN_vkCmdBindSamplerHeapEXT = fn void (CommandBuffer, BindHeapInfoEXT*);
alias PFN_vkCmdBindResourceHeapEXT = fn void (CommandBuffer, BindHeapInfoEXT*);
alias PFN_vkCmdPushDataEXT = fn void (CommandBuffer, PushDataInfoEXT*);
alias PFN_vkRegisterCustomBorderColorEXT = fn Result (Device, SamplerCustomBorderColorCreateInfoEXT*, uint, uint*);
alias PFN_vkUnregisterCustomBorderColorEXT = fn void (Device, uint);
alias PFN_vkGetImageOpaqueCaptureDataEXT = fn Result (Device, uint, Image*, HostAddressRangeEXT*);
alias PFN_vkGetPhysicalDeviceDescriptorSizeEXT = fn DeviceSize (PhysicalDevice, DescriptorType);
alias PFN_vkGetTensorOpaqueCaptureDataARM = fn Result (Device, uint, TensorARM*, HostAddressRangeEXT*);
alias PFN_vkCmdCopyMemoryKHR = fn void (CommandBuffer, CopyDeviceMemoryInfoKHR*);
alias PFN_vkCmdCopyMemoryToImageKHR = fn void (CommandBuffer, CopyDeviceMemoryImageInfoKHR*);
alias PFN_vkCmdCopyImageToMemoryKHR = fn void (CommandBuffer, CopyDeviceMemoryImageInfoKHR*);
alias PFN_vkCmdUpdateMemoryKHR = fn void (CommandBuffer, DeviceAddressRangeKHR*, AddressCommandFlagsKHR, DeviceSize, void*);
alias PFN_vkCmdFillMemoryKHR = fn void (CommandBuffer, DeviceAddressRangeKHR*, AddressCommandFlagsKHR, uint);
alias PFN_vkCmdCopyQueryPoolResultsToMemoryKHR = fn void (CommandBuffer, QueryPool, uint, uint, StridedDeviceAddressRangeKHR*, AddressCommandFlagsKHR, QueryResultFlags);
alias PFN_vkCmdBeginConditionalRendering2EXT = fn void (CommandBuffer, ConditionalRenderingBeginInfo2EXT*);
alias PFN_vkCmdBindTransformFeedbackBuffers2EXT = fn void (CommandBuffer, uint, uint, BindTransformFeedbackBuffer2InfoEXT*);
alias PFN_vkCmdBeginTransformFeedback2EXT = fn void (CommandBuffer, uint, uint, BindTransformFeedbackBuffer2InfoEXT*);
alias PFN_vkCmdEndTransformFeedback2EXT = fn void (CommandBuffer, uint, uint, BindTransformFeedbackBuffer2InfoEXT*);
alias PFN_vkCmdDrawIndirectByteCount2EXT = fn void (CommandBuffer, uint, uint, BindTransformFeedbackBuffer2InfoEXT*, uint, uint);
alias PFN_vkCmdBindIndexBuffer3KHR = fn void (CommandBuffer, BindIndexBuffer3InfoKHR*);
alias PFN_vkCmdBindVertexBuffers3KHR = fn void (CommandBuffer, uint, uint, BindVertexBuffer3InfoKHR*);
alias PFN_vkCmdDrawIndirect2KHR = fn void (CommandBuffer, DrawIndirect2InfoKHR*);
alias PFN_vkCmdDrawIndexedIndirect2KHR = fn void (CommandBuffer, DrawIndirect2InfoKHR*);
alias PFN_vkCmdDrawIndirectCount2KHR = fn void (CommandBuffer, DrawIndirectCount2InfoKHR*);
alias PFN_vkCmdDrawIndexedIndirectCount2KHR = fn void (CommandBuffer, DrawIndirectCount2InfoKHR*);
alias PFN_vkCmdDrawMeshTasksIndirect2EXT = fn void (CommandBuffer, DrawIndirect2InfoKHR*);
alias PFN_vkCmdDrawMeshTasksIndirectCount2EXT = fn void (CommandBuffer, DrawIndirectCount2InfoKHR*);
alias PFN_vkCmdDispatchIndirect2KHR = fn void (CommandBuffer, DispatchIndirect2InfoKHR*);
alias PFN_vkCreateAccelerationStructure2KHR = fn Result (Device, AccelerationStructureCreateInfo2KHR*, AllocationCallbacks*, AccelerationStructureKHR*);

struct VK_extension_bindings {
  PFN_vkResetQueryPoolEXT vkResetQueryPoolEXT;
  PFN_vkCreatePipelineBinariesKHR vkCreatePipelineBinariesKHR;
  PFN_vkDestroyPipelineBinaryKHR vkDestroyPipelineBinaryKHR;
  PFN_vkGetPipelineKeyKHR vkGetPipelineKeyKHR;
  PFN_vkGetPipelineBinaryDataKHR vkGetPipelineBinaryDataKHR;
  PFN_vkReleaseCapturedPipelineDataKHR vkReleaseCapturedPipelineDataKHR;
  PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI;
  PFN_vkGetRenderingAreaGranularityKHR vkGetRenderingAreaGranularityKHR;
  PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT vkCmdSetAttachmentFeedbackLoopEnableEXT;
  PFN_vkCmdDrawMultiEXT vkCmdDrawMultiEXT;
  PFN_vkCmdDrawMultiIndexedEXT vkCmdDrawMultiIndexedEXT;
  PFN_vkCmdSubpassShadingHUAWEI vkCmdSubpassShadingHUAWEI;
  PFN_vkCmdDrawClusterHUAWEI vkCmdDrawClusterHUAWEI;
  PFN_vkCmdDrawClusterIndirectHUAWEI vkCmdDrawClusterIndirectHUAWEI;
  PFN_vkCmdUpdatePipelineIndirectBufferNV vkCmdUpdatePipelineIndirectBufferNV;
  PFN_vkCmdCopyMemoryIndirectNV vkCmdCopyMemoryIndirectNV;
  PFN_vkCmdCopyMemoryIndirectKHR vkCmdCopyMemoryIndirectKHR;
  PFN_vkCmdCopyMemoryToImageIndirectNV vkCmdCopyMemoryToImageIndirectNV;
  PFN_vkCmdCopyMemoryToImageIndirectKHR vkCmdCopyMemoryToImageIndirectKHR;
  PFN_vkCmdBeginConditionalRenderingEXT vkCmdBeginConditionalRenderingEXT;
  PFN_vkCmdEndConditionalRenderingEXT vkCmdEndConditionalRenderingEXT;
  PFN_vkCmdBeginCustomResolveEXT vkCmdBeginCustomResolveEXT;
  PFN_vkGetPhysicalDeviceDisplayPropertiesKHR vkGetPhysicalDeviceDisplayPropertiesKHR;
  PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR vkGetPhysicalDeviceDisplayPlanePropertiesKHR;
  PFN_vkGetDisplayPlaneSupportedDisplaysKHR vkGetDisplayPlaneSupportedDisplaysKHR;
  PFN_vkGetDisplayModePropertiesKHR vkGetDisplayModePropertiesKHR;
  PFN_vkCreateDisplayModeKHR vkCreateDisplayModeKHR;
  PFN_vkGetDisplayPlaneCapabilitiesKHR vkGetDisplayPlaneCapabilitiesKHR;
  PFN_vkCreateDisplayPlaneSurfaceKHR vkCreateDisplayPlaneSurfaceKHR;
  PFN_vkCreateSharedSwapchainsKHR vkCreateSharedSwapchainsKHR;
  PFN_vkDestroySurfaceKHR vkDestroySurfaceKHR;
  PFN_vkGetPhysicalDeviceSurfaceSupportKHR vkGetPhysicalDeviceSurfaceSupportKHR;
  PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR vkGetPhysicalDeviceSurfaceCapabilitiesKHR;
  PFN_vkGetPhysicalDeviceSurfaceFormatsKHR vkGetPhysicalDeviceSurfaceFormatsKHR;
  PFN_vkGetPhysicalDeviceSurfacePresentModesKHR vkGetPhysicalDeviceSurfacePresentModesKHR;
  PFN_vkCreateSwapchainKHR vkCreateSwapchainKHR;
  PFN_vkDestroySwapchainKHR vkDestroySwapchainKHR;
  PFN_vkGetSwapchainImagesKHR vkGetSwapchainImagesKHR;
  PFN_vkAcquireNextImageKHR vkAcquireNextImageKHR;
  PFN_vkQueuePresentKHR vkQueuePresentKHR;
  PFN_vkCreateWaylandSurfaceKHR vkCreateWaylandSurfaceKHR;
  PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR vkGetPhysicalDeviceWaylandPresentationSupportKHR;
  PFN_vkCreateWin32SurfaceKHR vkCreateWin32SurfaceKHR;
  PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR vkGetPhysicalDeviceWin32PresentationSupportKHR;
  PFN_vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR;
  PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR;
  PFN_vkCreateDebugReportCallbackEXT vkCreateDebugReportCallbackEXT;
  PFN_vkDestroyDebugReportCallbackEXT vkDestroyDebugReportCallbackEXT;
  PFN_vkDebugReportMessageEXT vkDebugReportMessageEXT;
  PFN_vkDebugMarkerSetObjectNameEXT vkDebugMarkerSetObjectNameEXT;
  PFN_vkDebugMarkerSetObjectTagEXT vkDebugMarkerSetObjectTagEXT;
  PFN_vkCmdDebugMarkerBeginEXT vkCmdDebugMarkerBeginEXT;
  PFN_vkCmdDebugMarkerEndEXT vkCmdDebugMarkerEndEXT;
  PFN_vkCmdDebugMarkerInsertEXT vkCmdDebugMarkerInsertEXT;
  PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV vkGetPhysicalDeviceExternalImageFormatPropertiesNV;
  PFN_vkGetMemoryWin32HandleNV vkGetMemoryWin32HandleNV;
  PFN_vkCmdExecuteGeneratedCommandsNV vkCmdExecuteGeneratedCommandsNV;
  PFN_vkCmdPreprocessGeneratedCommandsNV vkCmdPreprocessGeneratedCommandsNV;
  PFN_vkCmdBindPipelineShaderGroupNV vkCmdBindPipelineShaderGroupNV;
  PFN_vkGetGeneratedCommandsMemoryRequirementsNV vkGetGeneratedCommandsMemoryRequirementsNV;
  PFN_vkCreateIndirectCommandsLayoutNV vkCreateIndirectCommandsLayoutNV;
  PFN_vkDestroyIndirectCommandsLayoutNV vkDestroyIndirectCommandsLayoutNV;
  PFN_vkCmdExecuteGeneratedCommandsEXT vkCmdExecuteGeneratedCommandsEXT;
  PFN_vkCmdPreprocessGeneratedCommandsEXT vkCmdPreprocessGeneratedCommandsEXT;
  PFN_vkGetGeneratedCommandsMemoryRequirementsEXT vkGetGeneratedCommandsMemoryRequirementsEXT;
  PFN_vkCreateIndirectCommandsLayoutEXT vkCreateIndirectCommandsLayoutEXT;
  PFN_vkDestroyIndirectCommandsLayoutEXT vkDestroyIndirectCommandsLayoutEXT;
  PFN_vkCreateIndirectExecutionSetEXT vkCreateIndirectExecutionSetEXT;
  PFN_vkDestroyIndirectExecutionSetEXT vkDestroyIndirectExecutionSetEXT;
  PFN_vkUpdateIndirectExecutionSetPipelineEXT vkUpdateIndirectExecutionSetPipelineEXT;
  PFN_vkUpdateIndirectExecutionSetShaderEXT vkUpdateIndirectExecutionSetShaderEXT;
  PFN_vkGetPhysicalDeviceFeatures2KHR vkGetPhysicalDeviceFeatures2KHR;
  PFN_vkGetPhysicalDeviceProperties2KHR vkGetPhysicalDeviceProperties2KHR;
  PFN_vkGetPhysicalDeviceFormatProperties2KHR vkGetPhysicalDeviceFormatProperties2KHR;
  PFN_vkGetPhysicalDeviceImageFormatProperties2KHR vkGetPhysicalDeviceImageFormatProperties2KHR;
  PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR vkGetPhysicalDeviceQueueFamilyProperties2KHR;
  PFN_vkGetPhysicalDeviceMemoryProperties2KHR vkGetPhysicalDeviceMemoryProperties2KHR;
  PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR vkGetPhysicalDeviceSparseImageFormatProperties2KHR;
  PFN_vkCmdPushDescriptorSetKHR vkCmdPushDescriptorSetKHR;
  PFN_vkTrimCommandPoolKHR vkTrimCommandPoolKHR;
  PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR vkGetPhysicalDeviceExternalBufferPropertiesKHR;
  PFN_vkGetMemoryWin32HandleKHR vkGetMemoryWin32HandleKHR;
  PFN_vkGetMemoryWin32HandlePropertiesKHR vkGetMemoryWin32HandlePropertiesKHR;
  PFN_vkGetMemoryFdKHR vkGetMemoryFdKHR;
  PFN_vkGetMemoryFdPropertiesKHR vkGetMemoryFdPropertiesKHR;
  PFN_vkGetMemoryRemoteAddressNV vkGetMemoryRemoteAddressNV;
  PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR vkGetPhysicalDeviceExternalSemaphorePropertiesKHR;
  PFN_vkGetSemaphoreWin32HandleKHR vkGetSemaphoreWin32HandleKHR;
  PFN_vkImportSemaphoreWin32HandleKHR vkImportSemaphoreWin32HandleKHR;
  PFN_vkGetSemaphoreFdKHR vkGetSemaphoreFdKHR;
  PFN_vkImportSemaphoreFdKHR vkImportSemaphoreFdKHR;
  PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR vkGetPhysicalDeviceExternalFencePropertiesKHR;
  PFN_vkGetFenceWin32HandleKHR vkGetFenceWin32HandleKHR;
  PFN_vkImportFenceWin32HandleKHR vkImportFenceWin32HandleKHR;
  PFN_vkGetFenceFdKHR vkGetFenceFdKHR;
  PFN_vkImportFenceFdKHR vkImportFenceFdKHR;
  PFN_vkReleaseDisplayEXT vkReleaseDisplayEXT;
  PFN_vkAcquireWinrtDisplayNV vkAcquireWinrtDisplayNV;
  PFN_vkGetWinrtDisplayNV vkGetWinrtDisplayNV;
  PFN_vkDisplayPowerControlEXT vkDisplayPowerControlEXT;
  PFN_vkRegisterDeviceEventEXT vkRegisterDeviceEventEXT;
  PFN_vkRegisterDisplayEventEXT vkRegisterDisplayEventEXT;
  PFN_vkGetSwapchainCounterEXT vkGetSwapchainCounterEXT;
  PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT vkGetPhysicalDeviceSurfaceCapabilities2EXT;
  PFN_vkEnumeratePhysicalDeviceGroupsKHR vkEnumeratePhysicalDeviceGroupsKHR;
  PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR vkGetDeviceGroupPeerMemoryFeaturesKHR;
  PFN_vkBindBufferMemory2KHR vkBindBufferMemory2KHR;
  PFN_vkBindImageMemory2KHR vkBindImageMemory2KHR;
  PFN_vkCmdSetDeviceMaskKHR vkCmdSetDeviceMaskKHR;
  PFN_vkGetDeviceGroupPresentCapabilitiesKHR vkGetDeviceGroupPresentCapabilitiesKHR;
  PFN_vkGetDeviceGroupSurfacePresentModesKHR vkGetDeviceGroupSurfacePresentModesKHR;
  PFN_vkAcquireNextImage2KHR vkAcquireNextImage2KHR;
  PFN_vkCmdDispatchBaseKHR vkCmdDispatchBaseKHR;
  PFN_vkGetPhysicalDevicePresentRectanglesKHR vkGetPhysicalDevicePresentRectanglesKHR;
  PFN_vkCreateDescriptorUpdateTemplateKHR vkCreateDescriptorUpdateTemplateKHR;
  PFN_vkDestroyDescriptorUpdateTemplateKHR vkDestroyDescriptorUpdateTemplateKHR;
  PFN_vkUpdateDescriptorSetWithTemplateKHR vkUpdateDescriptorSetWithTemplateKHR;
  PFN_vkCmdPushDescriptorSetWithTemplateKHR vkCmdPushDescriptorSetWithTemplateKHR;
  PFN_vkSetHdrMetadataEXT vkSetHdrMetadataEXT;
  PFN_vkGetSwapchainStatusKHR vkGetSwapchainStatusKHR;
  PFN_vkGetRefreshCycleDurationGOOGLE vkGetRefreshCycleDurationGOOGLE;
  PFN_vkGetPastPresentationTimingGOOGLE vkGetPastPresentationTimingGOOGLE;
  PFN_vkCreateIOSSurfaceMVK vkCreateIOSSurfaceMVK;
  PFN_vkCreateMacOSSurfaceMVK vkCreateMacOSSurfaceMVK;
  PFN_vkCreateMetalSurfaceEXT vkCreateMetalSurfaceEXT;
  PFN_vkCmdSetViewportWScalingNV vkCmdSetViewportWScalingNV;
  PFN_vkCmdSetDiscardRectangleEXT vkCmdSetDiscardRectangleEXT;
  PFN_vkCmdSetDiscardRectangleEnableEXT vkCmdSetDiscardRectangleEnableEXT;
  PFN_vkCmdSetDiscardRectangleModeEXT vkCmdSetDiscardRectangleModeEXT;
  PFN_vkCmdSetSampleLocationsEXT vkCmdSetSampleLocationsEXT;
  PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT vkGetPhysicalDeviceMultisamplePropertiesEXT;
  PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR vkGetPhysicalDeviceSurfaceCapabilities2KHR;
  PFN_vkGetPhysicalDeviceSurfaceFormats2KHR vkGetPhysicalDeviceSurfaceFormats2KHR;
  PFN_vkGetPhysicalDeviceDisplayProperties2KHR vkGetPhysicalDeviceDisplayProperties2KHR;
  PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR vkGetPhysicalDeviceDisplayPlaneProperties2KHR;
  PFN_vkGetDisplayModeProperties2KHR vkGetDisplayModeProperties2KHR;
  PFN_vkGetDisplayPlaneCapabilities2KHR vkGetDisplayPlaneCapabilities2KHR;
  PFN_vkGetBufferMemoryRequirements2KHR vkGetBufferMemoryRequirements2KHR;
  PFN_vkGetImageMemoryRequirements2KHR vkGetImageMemoryRequirements2KHR;
  PFN_vkGetImageSparseMemoryRequirements2KHR vkGetImageSparseMemoryRequirements2KHR;
  PFN_vkGetDeviceBufferMemoryRequirementsKHR vkGetDeviceBufferMemoryRequirementsKHR;
  PFN_vkGetDeviceImageMemoryRequirementsKHR vkGetDeviceImageMemoryRequirementsKHR;
  PFN_vkGetDeviceImageSparseMemoryRequirementsKHR vkGetDeviceImageSparseMemoryRequirementsKHR;
  PFN_vkCreateSamplerYcbcrConversionKHR vkCreateSamplerYcbcrConversionKHR;
  PFN_vkDestroySamplerYcbcrConversionKHR vkDestroySamplerYcbcrConversionKHR;
  PFN_vkCreateValidationCacheEXT vkCreateValidationCacheEXT;
  PFN_vkDestroyValidationCacheEXT vkDestroyValidationCacheEXT;
  PFN_vkGetValidationCacheDataEXT vkGetValidationCacheDataEXT;
  PFN_vkMergeValidationCachesEXT vkMergeValidationCachesEXT;
  PFN_vkGetDescriptorSetLayoutSupportKHR vkGetDescriptorSetLayoutSupportKHR;
  PFN_vkGetShaderInfoAMD vkGetShaderInfoAMD;
  PFN_vkSetLocalDimmingAMD vkSetLocalDimmingAMD;
  PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;
  PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT vkGetPhysicalDeviceCalibrateableTimeDomainsEXT;
  PFN_vkGetCalibratedTimestampsKHR vkGetCalibratedTimestampsKHR;
  PFN_vkGetCalibratedTimestampsEXT vkGetCalibratedTimestampsEXT;
  PFN_vkSetDebugUtilsObjectNameEXT vkSetDebugUtilsObjectNameEXT;
  PFN_vkSetDebugUtilsObjectTagEXT vkSetDebugUtilsObjectTagEXT;
  PFN_vkQueueBeginDebugUtilsLabelEXT vkQueueBeginDebugUtilsLabelEXT;
  PFN_vkQueueEndDebugUtilsLabelEXT vkQueueEndDebugUtilsLabelEXT;
  PFN_vkQueueInsertDebugUtilsLabelEXT vkQueueInsertDebugUtilsLabelEXT;
  PFN_vkCmdBeginDebugUtilsLabelEXT vkCmdBeginDebugUtilsLabelEXT;
  PFN_vkCmdEndDebugUtilsLabelEXT vkCmdEndDebugUtilsLabelEXT;
  PFN_vkCmdInsertDebugUtilsLabelEXT vkCmdInsertDebugUtilsLabelEXT;
  PFN_vkCreateDebugUtilsMessengerEXT vkCreateDebugUtilsMessengerEXT;
  PFN_vkDestroyDebugUtilsMessengerEXT vkDestroyDebugUtilsMessengerEXT;
  PFN_vkSubmitDebugUtilsMessageEXT vkSubmitDebugUtilsMessageEXT;
  PFN_vkGetMemoryHostPointerPropertiesEXT vkGetMemoryHostPointerPropertiesEXT;
  PFN_vkCmdWriteBufferMarkerAMD vkCmdWriteBufferMarkerAMD;
  PFN_vkCreateRenderPass2KHR vkCreateRenderPass2KHR;
  PFN_vkCmdBeginRenderPass2KHR vkCmdBeginRenderPass2KHR;
  PFN_vkCmdNextSubpass2KHR vkCmdNextSubpass2KHR;
  PFN_vkCmdEndRenderPass2KHR vkCmdEndRenderPass2KHR;
  PFN_vkGetSemaphoreCounterValueKHR vkGetSemaphoreCounterValueKHR;
  PFN_vkWaitSemaphoresKHR vkWaitSemaphoresKHR;
  PFN_vkSignalSemaphoreKHR vkSignalSemaphoreKHR;
  PFN_vkCmdDrawIndirectCountKHR vkCmdDrawIndirectCountKHR;
  PFN_vkCmdDrawIndirectCountAMD vkCmdDrawIndirectCountAMD;
  PFN_vkCmdDrawIndexedIndirectCountKHR vkCmdDrawIndexedIndirectCountKHR;
  PFN_vkCmdDrawIndexedIndirectCountAMD vkCmdDrawIndexedIndirectCountAMD;
  PFN_vkCmdSetCheckpointNV vkCmdSetCheckpointNV;
  PFN_vkGetQueueCheckpointDataNV vkGetQueueCheckpointDataNV;
  PFN_vkCmdBindTransformFeedbackBuffersEXT vkCmdBindTransformFeedbackBuffersEXT;
  PFN_vkCmdBeginTransformFeedbackEXT vkCmdBeginTransformFeedbackEXT;
  PFN_vkCmdEndTransformFeedbackEXT vkCmdEndTransformFeedbackEXT;
  PFN_vkCmdBeginQueryIndexedEXT vkCmdBeginQueryIndexedEXT;
  PFN_vkCmdEndQueryIndexedEXT vkCmdEndQueryIndexedEXT;
  PFN_vkCmdDrawIndirectByteCountEXT vkCmdDrawIndirectByteCountEXT;
  PFN_vkCmdSetExclusiveScissorNV vkCmdSetExclusiveScissorNV;
  PFN_vkCmdSetExclusiveScissorEnableNV vkCmdSetExclusiveScissorEnableNV;
  PFN_vkCmdBindShadingRateImageNV vkCmdBindShadingRateImageNV;
  PFN_vkCmdSetViewportShadingRatePaletteNV vkCmdSetViewportShadingRatePaletteNV;
  PFN_vkCmdSetCoarseSampleOrderNV vkCmdSetCoarseSampleOrderNV;
  PFN_vkCmdDrawMeshTasksNV vkCmdDrawMeshTasksNV;
  PFN_vkCmdDrawMeshTasksIndirectNV vkCmdDrawMeshTasksIndirectNV;
  PFN_vkCmdDrawMeshTasksIndirectCountNV vkCmdDrawMeshTasksIndirectCountNV;
  PFN_vkCmdDrawMeshTasksEXT vkCmdDrawMeshTasksEXT;
  PFN_vkCmdDrawMeshTasksIndirectEXT vkCmdDrawMeshTasksIndirectEXT;
  PFN_vkCmdDrawMeshTasksIndirectCountEXT vkCmdDrawMeshTasksIndirectCountEXT;
  PFN_vkCompileDeferredNV vkCompileDeferredNV;
  PFN_vkCmdBindInvocationMaskHUAWEI vkCmdBindInvocationMaskHUAWEI;
  PFN_vkDestroyAccelerationStructureKHR vkDestroyAccelerationStructureKHR;
  PFN_vkDestroyAccelerationStructureNV vkDestroyAccelerationStructureNV;
  PFN_vkGetAccelerationStructureMemoryRequirementsNV vkGetAccelerationStructureMemoryRequirementsNV;
  PFN_vkBindAccelerationStructureMemoryNV vkBindAccelerationStructureMemoryNV;
  PFN_vkCmdCopyAccelerationStructureNV vkCmdCopyAccelerationStructureNV;
  PFN_vkCmdCopyAccelerationStructureKHR vkCmdCopyAccelerationStructureKHR;
  PFN_vkCopyAccelerationStructureKHR vkCopyAccelerationStructureKHR;
  PFN_vkCmdCopyAccelerationStructureToMemoryKHR vkCmdCopyAccelerationStructureToMemoryKHR;
  PFN_vkCopyAccelerationStructureToMemoryKHR vkCopyAccelerationStructureToMemoryKHR;
  PFN_vkCmdCopyMemoryToAccelerationStructureKHR vkCmdCopyMemoryToAccelerationStructureKHR;
  PFN_vkCopyMemoryToAccelerationStructureKHR vkCopyMemoryToAccelerationStructureKHR;
  PFN_vkCmdWriteAccelerationStructuresPropertiesKHR vkCmdWriteAccelerationStructuresPropertiesKHR;
  PFN_vkCmdWriteAccelerationStructuresPropertiesNV vkCmdWriteAccelerationStructuresPropertiesNV;
  PFN_vkWriteAccelerationStructuresPropertiesKHR vkWriteAccelerationStructuresPropertiesKHR;
  PFN_vkCmdTraceRaysKHR vkCmdTraceRaysKHR;
  PFN_vkCmdTraceRaysNV vkCmdTraceRaysNV;
  PFN_vkGetRayTracingShaderGroupHandlesKHR vkGetRayTracingShaderGroupHandlesKHR;
  PFN_vkGetRayTracingShaderGroupHandlesNV vkGetRayTracingShaderGroupHandlesNV;
  PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR vkGetRayTracingCaptureReplayShaderGroupHandlesKHR;
  PFN_vkGetAccelerationStructureHandleNV vkGetAccelerationStructureHandleNV;
  PFN_vkCreateRayTracingPipelinesNV vkCreateRayTracingPipelinesNV;
  PFN_vkCreateRayTracingPipelinesKHR vkCreateRayTracingPipelinesKHR;
  PFN_vkCmdTraceRaysIndirectKHR vkCmdTraceRaysIndirectKHR;
  PFN_vkCmdTraceRaysIndirect2KHR vkCmdTraceRaysIndirect2KHR;
  PFN_vkGetClusterAccelerationStructureBuildSizesNV vkGetClusterAccelerationStructureBuildSizesNV;
  PFN_vkCmdBuildClusterAccelerationStructureIndirectNV vkCmdBuildClusterAccelerationStructureIndirectNV;
  PFN_vkGetDeviceAccelerationStructureCompatibilityKHR vkGetDeviceAccelerationStructureCompatibilityKHR;
  PFN_vkGetRayTracingShaderGroupStackSizeKHR vkGetRayTracingShaderGroupStackSizeKHR;
  PFN_vkCmdSetRayTracingPipelineStackSizeKHR vkCmdSetRayTracingPipelineStackSizeKHR;
  PFN_vkGetImageViewHandleNVX vkGetImageViewHandleNVX;
  PFN_vkGetImageViewHandle64NVX vkGetImageViewHandle64NVX;
  PFN_vkGetImageViewAddressNVX vkGetImageViewAddressNVX;
  PFN_vkGetDeviceCombinedImageSamplerIndexNVX vkGetDeviceCombinedImageSamplerIndexNVX;
  PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT vkGetPhysicalDeviceSurfacePresentModes2EXT;
  PFN_vkGetDeviceGroupSurfacePresentModes2EXT vkGetDeviceGroupSurfacePresentModes2EXT;
  PFN_vkAcquireFullScreenExclusiveModeEXT vkAcquireFullScreenExclusiveModeEXT;
  PFN_vkReleaseFullScreenExclusiveModeEXT vkReleaseFullScreenExclusiveModeEXT;
  PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR;
  PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR;
  PFN_vkAcquireProfilingLockKHR vkAcquireProfilingLockKHR;
  PFN_vkReleaseProfilingLockKHR vkReleaseProfilingLockKHR;
  PFN_vkGetImageDrmFormatModifierPropertiesEXT vkGetImageDrmFormatModifierPropertiesEXT;
  PFN_vkGetBufferOpaqueCaptureAddressKHR vkGetBufferOpaqueCaptureAddressKHR;
  PFN_vkGetBufferDeviceAddressKHR vkGetBufferDeviceAddressKHR;
  PFN_vkGetBufferDeviceAddressEXT vkGetBufferDeviceAddressEXT;
  PFN_vkCreateHeadlessSurfaceEXT vkCreateHeadlessSurfaceEXT;
  PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV;
  PFN_vkInitializePerformanceApiINTEL vkInitializePerformanceApiINTEL;
  PFN_vkUninitializePerformanceApiINTEL vkUninitializePerformanceApiINTEL;
  PFN_vkCmdSetPerformanceMarkerINTEL vkCmdSetPerformanceMarkerINTEL;
  PFN_vkCmdSetPerformanceStreamMarkerINTEL vkCmdSetPerformanceStreamMarkerINTEL;
  PFN_vkCmdSetPerformanceOverrideINTEL vkCmdSetPerformanceOverrideINTEL;
  PFN_vkAcquirePerformanceConfigurationINTEL vkAcquirePerformanceConfigurationINTEL;
  PFN_vkReleasePerformanceConfigurationINTEL vkReleasePerformanceConfigurationINTEL;
  PFN_vkQueueSetPerformanceConfigurationINTEL vkQueueSetPerformanceConfigurationINTEL;
  PFN_vkGetPerformanceParameterINTEL vkGetPerformanceParameterINTEL;
  PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR vkGetDeviceMemoryOpaqueCaptureAddressKHR;
  PFN_vkGetPipelineExecutablePropertiesKHR vkGetPipelineExecutablePropertiesKHR;
  PFN_vkGetPipelineExecutableStatisticsKHR vkGetPipelineExecutableStatisticsKHR;
  PFN_vkGetPipelineExecutableInternalRepresentationsKHR vkGetPipelineExecutableInternalRepresentationsKHR;
  PFN_vkCmdSetLineStippleKHR vkCmdSetLineStippleKHR;
  PFN_vkCmdSetLineStippleEXT vkCmdSetLineStippleEXT;
  PFN_vkGetPhysicalDeviceToolPropertiesEXT vkGetPhysicalDeviceToolPropertiesEXT;
  PFN_vkCreateAccelerationStructureKHR vkCreateAccelerationStructureKHR;
  PFN_vkCmdBuildAccelerationStructuresKHR vkCmdBuildAccelerationStructuresKHR;
  PFN_vkCmdBuildAccelerationStructuresIndirectKHR vkCmdBuildAccelerationStructuresIndirectKHR;
  PFN_vkBuildAccelerationStructuresKHR vkBuildAccelerationStructuresKHR;
  PFN_vkGetAccelerationStructureDeviceAddressKHR vkGetAccelerationStructureDeviceAddressKHR;
  PFN_vkCreateDeferredOperationKHR vkCreateDeferredOperationKHR;
  PFN_vkDestroyDeferredOperationKHR vkDestroyDeferredOperationKHR;
  PFN_vkGetDeferredOperationMaxConcurrencyKHR vkGetDeferredOperationMaxConcurrencyKHR;
  PFN_vkGetDeferredOperationResultKHR vkGetDeferredOperationResultKHR;
  PFN_vkDeferredOperationJoinKHR vkDeferredOperationJoinKHR;
  PFN_vkGetPipelineIndirectMemoryRequirementsNV vkGetPipelineIndirectMemoryRequirementsNV;
  PFN_vkGetPipelineIndirectDeviceAddressNV vkGetPipelineIndirectDeviceAddressNV;
  PFN_vkAntiLagUpdateAMD vkAntiLagUpdateAMD;
  PFN_vkCmdSetCullModeEXT vkCmdSetCullModeEXT;
  PFN_vkCmdSetFrontFaceEXT vkCmdSetFrontFaceEXT;
  PFN_vkCmdSetPrimitiveTopologyEXT vkCmdSetPrimitiveTopologyEXT;
  PFN_vkCmdSetViewportWithCountEXT vkCmdSetViewportWithCountEXT;
  PFN_vkCmdSetScissorWithCountEXT vkCmdSetScissorWithCountEXT;
  PFN_vkCmdBindIndexBuffer2KHR vkCmdBindIndexBuffer2KHR;
  PFN_vkCmdBindVertexBuffers2EXT vkCmdBindVertexBuffers2EXT;
  PFN_vkCmdSetDepthTestEnableEXT vkCmdSetDepthTestEnableEXT;
  PFN_vkCmdSetDepthWriteEnableEXT vkCmdSetDepthWriteEnableEXT;
  PFN_vkCmdSetDepthCompareOpEXT vkCmdSetDepthCompareOpEXT;
  PFN_vkCmdSetDepthBoundsTestEnableEXT vkCmdSetDepthBoundsTestEnableEXT;
  PFN_vkCmdSetStencilTestEnableEXT vkCmdSetStencilTestEnableEXT;
  PFN_vkCmdSetStencilOpEXT vkCmdSetStencilOpEXT;
  PFN_vkCmdSetPatchControlPointsEXT vkCmdSetPatchControlPointsEXT;
  PFN_vkCmdSetRasterizerDiscardEnableEXT vkCmdSetRasterizerDiscardEnableEXT;
  PFN_vkCmdSetDepthBiasEnableEXT vkCmdSetDepthBiasEnableEXT;
  PFN_vkCmdSetLogicOpEXT vkCmdSetLogicOpEXT;
  PFN_vkCmdSetPrimitiveRestartEnableEXT vkCmdSetPrimitiveRestartEnableEXT;
  PFN_vkCmdSetTessellationDomainOriginEXT vkCmdSetTessellationDomainOriginEXT;
  PFN_vkCmdSetDepthClampEnableEXT vkCmdSetDepthClampEnableEXT;
  PFN_vkCmdSetPolygonModeEXT vkCmdSetPolygonModeEXT;
  PFN_vkCmdSetRasterizationSamplesEXT vkCmdSetRasterizationSamplesEXT;
  PFN_vkCmdSetSampleMaskEXT vkCmdSetSampleMaskEXT;
  PFN_vkCmdSetAlphaToCoverageEnableEXT vkCmdSetAlphaToCoverageEnableEXT;
  PFN_vkCmdSetAlphaToOneEnableEXT vkCmdSetAlphaToOneEnableEXT;
  PFN_vkCmdSetLogicOpEnableEXT vkCmdSetLogicOpEnableEXT;
  PFN_vkCmdSetColorBlendEnableEXT vkCmdSetColorBlendEnableEXT;
  PFN_vkCmdSetColorBlendEquationEXT vkCmdSetColorBlendEquationEXT;
  PFN_vkCmdSetColorWriteMaskEXT vkCmdSetColorWriteMaskEXT;
  PFN_vkCmdSetRasterizationStreamEXT vkCmdSetRasterizationStreamEXT;
  PFN_vkCmdSetConservativeRasterizationModeEXT vkCmdSetConservativeRasterizationModeEXT;
  PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT vkCmdSetExtraPrimitiveOverestimationSizeEXT;
  PFN_vkCmdSetDepthClipEnableEXT vkCmdSetDepthClipEnableEXT;
  PFN_vkCmdSetSampleLocationsEnableEXT vkCmdSetSampleLocationsEnableEXT;
  PFN_vkCmdSetColorBlendAdvancedEXT vkCmdSetColorBlendAdvancedEXT;
  PFN_vkCmdSetProvokingVertexModeEXT vkCmdSetProvokingVertexModeEXT;
  PFN_vkCmdSetLineStippleEnableEXT vkCmdSetLineStippleEnableEXT;
  PFN_vkCmdSetDepthClipNegativeOneToOneEXT vkCmdSetDepthClipNegativeOneToOneEXT;
  PFN_vkCmdSetViewportWScalingEnableNV vkCmdSetViewportWScalingEnableNV;
  PFN_vkCmdSetViewportSwizzleNV vkCmdSetViewportSwizzleNV;
  PFN_vkCmdSetCoverageToColorEnableNV vkCmdSetCoverageToColorEnableNV;
  PFN_vkCmdSetCoverageToColorLocationNV vkCmdSetCoverageToColorLocationNV;
  PFN_vkCmdSetCoverageModulationModeNV vkCmdSetCoverageModulationModeNV;
  PFN_vkCmdSetCoverageModulationTableEnableNV vkCmdSetCoverageModulationTableEnableNV;
  PFN_vkCmdSetCoverageModulationTableNV vkCmdSetCoverageModulationTableNV;
  PFN_vkCmdSetShadingRateImageEnableNV vkCmdSetShadingRateImageEnableNV;
  PFN_vkCmdSetCoverageReductionModeNV vkCmdSetCoverageReductionModeNV;
  PFN_vkCmdSetRepresentativeFragmentTestEnableNV vkCmdSetRepresentativeFragmentTestEnableNV;
  PFN_vkCreatePrivateDataSlotEXT vkCreatePrivateDataSlotEXT;
  PFN_vkDestroyPrivateDataSlotEXT vkDestroyPrivateDataSlotEXT;
  PFN_vkSetPrivateDataEXT vkSetPrivateDataEXT;
  PFN_vkGetPrivateDataEXT vkGetPrivateDataEXT;
  PFN_vkCmdCopyBuffer2KHR vkCmdCopyBuffer2KHR;
  PFN_vkCmdCopyImage2KHR vkCmdCopyImage2KHR;
  PFN_vkCmdBlitImage2KHR vkCmdBlitImage2KHR;
  PFN_vkCmdCopyBufferToImage2KHR vkCmdCopyBufferToImage2KHR;
  PFN_vkCmdCopyImageToBuffer2KHR vkCmdCopyImageToBuffer2KHR;
  PFN_vkCmdResolveImage2KHR vkCmdResolveImage2KHR;
  PFN_vkCmdSetFragmentShadingRateKHR vkCmdSetFragmentShadingRateKHR;
  PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR vkGetPhysicalDeviceFragmentShadingRatesKHR;
  PFN_vkCmdSetFragmentShadingRateEnumNV vkCmdSetFragmentShadingRateEnumNV;
  PFN_vkGetAccelerationStructureBuildSizesKHR vkGetAccelerationStructureBuildSizesKHR;
  PFN_vkCmdSetVertexInputEXT vkCmdSetVertexInputEXT;
  PFN_vkCmdSetColorWriteEnableEXT vkCmdSetColorWriteEnableEXT;
  PFN_vkCmdSetEvent2KHR vkCmdSetEvent2KHR;
  PFN_vkCmdResetEvent2KHR vkCmdResetEvent2KHR;
  PFN_vkCmdWaitEvents2KHR vkCmdWaitEvents2KHR;
  PFN_vkCmdPipelineBarrier2KHR vkCmdPipelineBarrier2KHR;
  PFN_vkQueueSubmit2KHR vkQueueSubmit2KHR;
  PFN_vkCmdWriteTimestamp2KHR vkCmdWriteTimestamp2KHR;
  PFN_vkCmdWriteBufferMarker2AMD vkCmdWriteBufferMarker2AMD;
  PFN_vkGetQueueCheckpointData2NV vkGetQueueCheckpointData2NV;
  PFN_vkCopyMemoryToImageEXT vkCopyMemoryToImageEXT;
  PFN_vkCopyImageToMemoryEXT vkCopyImageToMemoryEXT;
  PFN_vkCopyImageToImageEXT vkCopyImageToImageEXT;
  PFN_vkTransitionImageLayoutEXT vkTransitionImageLayoutEXT;
  PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR vkGetPhysicalDeviceVideoCapabilitiesKHR;
  PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR vkGetPhysicalDeviceVideoFormatPropertiesKHR;
  PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR;
  PFN_vkCreateVideoSessionKHR vkCreateVideoSessionKHR;
  PFN_vkDestroyVideoSessionKHR vkDestroyVideoSessionKHR;
  PFN_vkCreateVideoSessionParametersKHR vkCreateVideoSessionParametersKHR;
  PFN_vkUpdateVideoSessionParametersKHR vkUpdateVideoSessionParametersKHR;
  PFN_vkGetEncodedVideoSessionParametersKHR vkGetEncodedVideoSessionParametersKHR;
  PFN_vkDestroyVideoSessionParametersKHR vkDestroyVideoSessionParametersKHR;
  PFN_vkGetVideoSessionMemoryRequirementsKHR vkGetVideoSessionMemoryRequirementsKHR;
  PFN_vkBindVideoSessionMemoryKHR vkBindVideoSessionMemoryKHR;
  PFN_vkCmdDecodeVideoKHR vkCmdDecodeVideoKHR;
  PFN_vkCmdBeginVideoCodingKHR vkCmdBeginVideoCodingKHR;
  PFN_vkCmdControlVideoCodingKHR vkCmdControlVideoCodingKHR;
  PFN_vkCmdEndVideoCodingKHR vkCmdEndVideoCodingKHR;
  PFN_vkCmdEncodeVideoKHR vkCmdEncodeVideoKHR;
  PFN_vkCmdDecompressMemoryIndirectCountNV vkCmdDecompressMemoryIndirectCountNV;
  PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV vkGetPartitionedAccelerationStructuresBuildSizesNV;
  PFN_vkCmdBuildPartitionedAccelerationStructuresNV vkCmdBuildPartitionedAccelerationStructuresNV;
  PFN_vkCmdDecompressMemoryEXT vkCmdDecompressMemoryEXT;
  PFN_vkCmdDecompressMemoryIndirectCountEXT vkCmdDecompressMemoryIndirectCountEXT;
  PFN_vkCreateCuModuleNVX vkCreateCuModuleNVX;
  PFN_vkCreateCuFunctionNVX vkCreateCuFunctionNVX;
  PFN_vkDestroyCuModuleNVX vkDestroyCuModuleNVX;
  PFN_vkDestroyCuFunctionNVX vkDestroyCuFunctionNVX;
  PFN_vkCmdCuLaunchKernelNVX vkCmdCuLaunchKernelNVX;
  PFN_vkGetDescriptorSetLayoutSizeEXT vkGetDescriptorSetLayoutSizeEXT;
  PFN_vkGetDescriptorSetLayoutBindingOffsetEXT vkGetDescriptorSetLayoutBindingOffsetEXT;
  PFN_vkGetDescriptorEXT vkGetDescriptorEXT;
  PFN_vkCmdBindDescriptorBuffersEXT vkCmdBindDescriptorBuffersEXT;
  PFN_vkCmdSetDescriptorBufferOffsetsEXT vkCmdSetDescriptorBufferOffsetsEXT;
  PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT vkCmdBindDescriptorBufferEmbeddedSamplersEXT;
  PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT vkGetBufferOpaqueCaptureDescriptorDataEXT;
  PFN_vkGetImageOpaqueCaptureDescriptorDataEXT vkGetImageOpaqueCaptureDescriptorDataEXT;
  PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT vkGetImageViewOpaqueCaptureDescriptorDataEXT;
  PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT vkGetSamplerOpaqueCaptureDescriptorDataEXT;
  PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT;
  PFN_vkSetDeviceMemoryPriorityEXT vkSetDeviceMemoryPriorityEXT;
  PFN_vkAcquireDrmDisplayEXT vkAcquireDrmDisplayEXT;
  PFN_vkGetDrmDisplayEXT vkGetDrmDisplayEXT;
  PFN_vkWaitForPresent2KHR vkWaitForPresent2KHR;
  PFN_vkWaitForPresentKHR vkWaitForPresentKHR;
  PFN_vkCreateCudaModuleNV vkCreateCudaModuleNV;
  PFN_vkGetCudaModuleCacheNV vkGetCudaModuleCacheNV;
  PFN_vkCreateCudaFunctionNV vkCreateCudaFunctionNV;
  PFN_vkDestroyCudaModuleNV vkDestroyCudaModuleNV;
  PFN_vkDestroyCudaFunctionNV vkDestroyCudaFunctionNV;
  PFN_vkCmdCudaLaunchKernelNV vkCmdCudaLaunchKernelNV;
  PFN_vkCmdBeginRenderingKHR vkCmdBeginRenderingKHR;
  PFN_vkCmdEndRendering2KHR vkCmdEndRendering2KHR;
  PFN_vkCmdEndRendering2EXT vkCmdEndRendering2EXT;
  PFN_vkCmdEndRenderingKHR vkCmdEndRenderingKHR;
  PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE vkGetDescriptorSetLayoutHostMappingInfoVALVE;
  PFN_vkGetDescriptorSetHostMappingVALVE vkGetDescriptorSetHostMappingVALVE;
  PFN_vkCreateMicromapEXT vkCreateMicromapEXT;
  PFN_vkCmdBuildMicromapsEXT vkCmdBuildMicromapsEXT;
  PFN_vkBuildMicromapsEXT vkBuildMicromapsEXT;
  PFN_vkDestroyMicromapEXT vkDestroyMicromapEXT;
  PFN_vkCmdCopyMicromapEXT vkCmdCopyMicromapEXT;
  PFN_vkCopyMicromapEXT vkCopyMicromapEXT;
  PFN_vkCmdCopyMicromapToMemoryEXT vkCmdCopyMicromapToMemoryEXT;
  PFN_vkCopyMicromapToMemoryEXT vkCopyMicromapToMemoryEXT;
  PFN_vkCmdCopyMemoryToMicromapEXT vkCmdCopyMemoryToMicromapEXT;
  PFN_vkCopyMemoryToMicromapEXT vkCopyMemoryToMicromapEXT;
  PFN_vkCmdWriteMicromapsPropertiesEXT vkCmdWriteMicromapsPropertiesEXT;
  PFN_vkWriteMicromapsPropertiesEXT vkWriteMicromapsPropertiesEXT;
  PFN_vkGetDeviceMicromapCompatibilityEXT vkGetDeviceMicromapCompatibilityEXT;
  PFN_vkGetMicromapBuildSizesEXT vkGetMicromapBuildSizesEXT;
  PFN_vkGetShaderModuleIdentifierEXT vkGetShaderModuleIdentifierEXT;
  PFN_vkGetShaderModuleCreateInfoIdentifierEXT vkGetShaderModuleCreateInfoIdentifierEXT;
  PFN_vkGetImageSubresourceLayout2KHR vkGetImageSubresourceLayout2KHR;
  PFN_vkGetImageSubresourceLayout2EXT vkGetImageSubresourceLayout2EXT;
  PFN_vkGetPipelinePropertiesEXT vkGetPipelinePropertiesEXT;
  PFN_vkExportMetalObjectsEXT vkExportMetalObjectsEXT;
  PFN_vkCmdBindTileMemoryQCOM vkCmdBindTileMemoryQCOM;
  PFN_vkGetFramebufferTilePropertiesQCOM vkGetFramebufferTilePropertiesQCOM;
  PFN_vkGetDynamicRenderingTilePropertiesQCOM vkGetDynamicRenderingTilePropertiesQCOM;
  PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV vkGetPhysicalDeviceOpticalFlowImageFormatsNV;
  PFN_vkCreateOpticalFlowSessionNV vkCreateOpticalFlowSessionNV;
  PFN_vkDestroyOpticalFlowSessionNV vkDestroyOpticalFlowSessionNV;
  PFN_vkBindOpticalFlowSessionImageNV vkBindOpticalFlowSessionImageNV;
  PFN_vkCmdOpticalFlowExecuteNV vkCmdOpticalFlowExecuteNV;
  PFN_vkGetDeviceFaultInfoEXT vkGetDeviceFaultInfoEXT;
  PFN_vkGetDeviceFaultReportsKHR vkGetDeviceFaultReportsKHR;
  PFN_vkGetDeviceFaultDebugInfoKHR vkGetDeviceFaultDebugInfoKHR;
  PFN_vkCmdSetDepthBias2EXT vkCmdSetDepthBias2EXT;
  PFN_vkReleaseSwapchainImagesKHR vkReleaseSwapchainImagesKHR;
  PFN_vkReleaseSwapchainImagesEXT vkReleaseSwapchainImagesEXT;
  PFN_vkGetDeviceImageSubresourceLayoutKHR vkGetDeviceImageSubresourceLayoutKHR;
  PFN_vkMapMemory2KHR vkMapMemory2KHR;
  PFN_vkUnmapMemory2KHR vkUnmapMemory2KHR;
  PFN_vkCreateShadersEXT vkCreateShadersEXT;
  PFN_vkDestroyShaderEXT vkDestroyShaderEXT;
  PFN_vkGetShaderBinaryDataEXT vkGetShaderBinaryDataEXT;
  PFN_vkCmdBindShadersEXT vkCmdBindShadersEXT;
  PFN_vkSetSwapchainPresentTimingQueueSizeEXT vkSetSwapchainPresentTimingQueueSizeEXT;
  PFN_vkGetSwapchainTimingPropertiesEXT vkGetSwapchainTimingPropertiesEXT;
  PFN_vkGetSwapchainTimeDomainPropertiesEXT vkGetSwapchainTimeDomainPropertiesEXT;
  PFN_vkGetPastPresentationTimingEXT vkGetPastPresentationTimingEXT;
  PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR;
  PFN_vkGetExecutionGraphPipelineScratchSizeAMDX vkGetExecutionGraphPipelineScratchSizeAMDX;
  PFN_vkGetExecutionGraphPipelineNodeIndexAMDX vkGetExecutionGraphPipelineNodeIndexAMDX;
  PFN_vkCreateExecutionGraphPipelinesAMDX vkCreateExecutionGraphPipelinesAMDX;
  PFN_vkCmdInitializeGraphScratchMemoryAMDX vkCmdInitializeGraphScratchMemoryAMDX;
  PFN_vkCmdDispatchGraphAMDX vkCmdDispatchGraphAMDX;
  PFN_vkCmdDispatchGraphIndirectAMDX vkCmdDispatchGraphIndirectAMDX;
  PFN_vkCmdDispatchGraphIndirectCountAMDX vkCmdDispatchGraphIndirectCountAMDX;
  PFN_vkCmdBindDescriptorSets2KHR vkCmdBindDescriptorSets2KHR;
  PFN_vkCmdPushConstants2KHR vkCmdPushConstants2KHR;
  PFN_vkCmdPushDescriptorSet2KHR vkCmdPushDescriptorSet2KHR;
  PFN_vkCmdPushDescriptorSetWithTemplate2KHR vkCmdPushDescriptorSetWithTemplate2KHR;
  PFN_vkCmdSetDescriptorBufferOffsets2EXT vkCmdSetDescriptorBufferOffsets2EXT;
  PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT vkCmdBindDescriptorBufferEmbeddedSamplers2EXT;
  PFN_vkSetLatencySleepModeNV vkSetLatencySleepModeNV;
  PFN_vkLatencySleepNV vkLatencySleepNV;
  PFN_vkSetLatencyMarkerNV vkSetLatencyMarkerNV;
  PFN_vkGetLatencyTimingsNV vkGetLatencyTimingsNV;
  PFN_vkQueueNotifyOutOfBandNV vkQueueNotifyOutOfBandNV;
  PFN_vkCmdSetRenderingAttachmentLocationsKHR vkCmdSetRenderingAttachmentLocationsKHR;
  PFN_vkCmdSetRenderingInputAttachmentIndicesKHR vkCmdSetRenderingInputAttachmentIndicesKHR;
  PFN_vkCmdSetDepthClampRangeEXT vkCmdSetDepthClampRangeEXT;
  PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV;
  PFN_vkGetMemoryMetalHandleEXT vkGetMemoryMetalHandleEXT;
  PFN_vkGetMemoryMetalHandlePropertiesEXT vkGetMemoryMetalHandlePropertiesEXT;
  PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV vkGetPhysicalDeviceCooperativeVectorPropertiesNV;
  PFN_vkConvertCooperativeVectorMatrixNV vkConvertCooperativeVectorMatrixNV;
  PFN_vkCmdConvertCooperativeVectorMatrixNV vkCmdConvertCooperativeVectorMatrixNV;
  PFN_vkCmdDispatchTileQCOM vkCmdDispatchTileQCOM;
  PFN_vkCmdBeginPerTileExecutionQCOM vkCmdBeginPerTileExecutionQCOM;
  PFN_vkCmdEndPerTileExecutionQCOM vkCmdEndPerTileExecutionQCOM;
  PFN_vkCreateExternalComputeQueueNV vkCreateExternalComputeQueueNV;
  PFN_vkDestroyExternalComputeQueueNV vkDestroyExternalComputeQueueNV;
  PFN_vkGetExternalComputeQueueDataNV vkGetExternalComputeQueueDataNV;
  PFN_vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM;
  PFN_vkCreateShaderInstrumentationARM vkCreateShaderInstrumentationARM;
  PFN_vkDestroyShaderInstrumentationARM vkDestroyShaderInstrumentationARM;
  PFN_vkCmdBeginShaderInstrumentationARM vkCmdBeginShaderInstrumentationARM;
  PFN_vkCmdEndShaderInstrumentationARM vkCmdEndShaderInstrumentationARM;
  PFN_vkGetShaderInstrumentationValuesARM vkGetShaderInstrumentationValuesARM;
  PFN_vkClearShaderInstrumentationMetricsARM vkClearShaderInstrumentationMetricsARM;
  PFN_vkCreateTensorARM vkCreateTensorARM;
  PFN_vkDestroyTensorARM vkDestroyTensorARM;
  PFN_vkCreateTensorViewARM vkCreateTensorViewARM;
  PFN_vkDestroyTensorViewARM vkDestroyTensorViewARM;
  PFN_vkGetTensorMemoryRequirementsARM vkGetTensorMemoryRequirementsARM;
  PFN_vkBindTensorMemoryARM vkBindTensorMemoryARM;
  PFN_vkGetDeviceTensorMemoryRequirementsARM vkGetDeviceTensorMemoryRequirementsARM;
  PFN_vkCmdCopyTensorARM vkCmdCopyTensorARM;
  PFN_vkGetTensorOpaqueCaptureDescriptorDataARM vkGetTensorOpaqueCaptureDescriptorDataARM;
  PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM vkGetTensorViewOpaqueCaptureDescriptorDataARM;
  PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM vkGetPhysicalDeviceExternalTensorPropertiesARM;
  PFN_vkCreateDataGraphPipelineSessionARM vkCreateDataGraphPipelineSessionARM;
  PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM vkGetDataGraphPipelineSessionBindPointRequirementsARM;
  PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM vkGetDataGraphPipelineSessionMemoryRequirementsARM;
  PFN_vkBindDataGraphPipelineSessionMemoryARM vkBindDataGraphPipelineSessionMemoryARM;
  PFN_vkDestroyDataGraphPipelineSessionARM vkDestroyDataGraphPipelineSessionARM;
  PFN_vkCmdDispatchDataGraphARM vkCmdDispatchDataGraphARM;
  PFN_vkGetDataGraphPipelineAvailablePropertiesARM vkGetDataGraphPipelineAvailablePropertiesARM;
  PFN_vkGetDataGraphPipelinePropertiesARM vkGetDataGraphPipelinePropertiesARM;
  PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM;
  PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM;
  PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM;
  PFN_vkCmdSetComputeOccupancyPriorityNV vkCmdSetComputeOccupancyPriorityNV;
  PFN_vkWriteSamplerDescriptorsEXT vkWriteSamplerDescriptorsEXT;
  PFN_vkWriteResourceDescriptorsEXT vkWriteResourceDescriptorsEXT;
  PFN_vkCmdBindSamplerHeapEXT vkCmdBindSamplerHeapEXT;
  PFN_vkCmdBindResourceHeapEXT vkCmdBindResourceHeapEXT;
  PFN_vkCmdPushDataEXT vkCmdPushDataEXT;
  PFN_vkRegisterCustomBorderColorEXT vkRegisterCustomBorderColorEXT;
  PFN_vkUnregisterCustomBorderColorEXT vkUnregisterCustomBorderColorEXT;
  PFN_vkGetImageOpaqueCaptureDataEXT vkGetImageOpaqueCaptureDataEXT;
  PFN_vkGetPhysicalDeviceDescriptorSizeEXT vkGetPhysicalDeviceDescriptorSizeEXT;
  PFN_vkGetTensorOpaqueCaptureDataARM vkGetTensorOpaqueCaptureDataARM;
  PFN_vkCmdCopyMemoryKHR vkCmdCopyMemoryKHR;
  PFN_vkCmdCopyMemoryToImageKHR vkCmdCopyMemoryToImageKHR;
  PFN_vkCmdCopyImageToMemoryKHR vkCmdCopyImageToMemoryKHR;
  PFN_vkCmdUpdateMemoryKHR vkCmdUpdateMemoryKHR;
  PFN_vkCmdFillMemoryKHR vkCmdFillMemoryKHR;
  PFN_vkCmdCopyQueryPoolResultsToMemoryKHR vkCmdCopyQueryPoolResultsToMemoryKHR;
  PFN_vkCmdBeginConditionalRendering2EXT vkCmdBeginConditionalRendering2EXT;
  PFN_vkCmdBindTransformFeedbackBuffers2EXT vkCmdBindTransformFeedbackBuffers2EXT;
  PFN_vkCmdBeginTransformFeedback2EXT vkCmdBeginTransformFeedback2EXT;
  PFN_vkCmdEndTransformFeedback2EXT vkCmdEndTransformFeedback2EXT;
  PFN_vkCmdDrawIndirectByteCount2EXT vkCmdDrawIndirectByteCount2EXT;
  PFN_vkCmdBindIndexBuffer3KHR vkCmdBindIndexBuffer3KHR;
  PFN_vkCmdBindVertexBuffers3KHR vkCmdBindVertexBuffers3KHR;
  PFN_vkCmdDrawIndirect2KHR vkCmdDrawIndirect2KHR;
  PFN_vkCmdDrawIndexedIndirect2KHR vkCmdDrawIndexedIndirect2KHR;
  PFN_vkCmdDrawIndirectCount2KHR vkCmdDrawIndirectCount2KHR;
  PFN_vkCmdDrawIndexedIndirectCount2KHR vkCmdDrawIndexedIndirectCount2KHR;
  PFN_vkCmdDrawMeshTasksIndirect2EXT vkCmdDrawMeshTasksIndirect2EXT;
  PFN_vkCmdDrawMeshTasksIndirectCount2EXT vkCmdDrawMeshTasksIndirectCount2EXT;
  PFN_vkCmdDispatchIndirect2KHR vkCmdDispatchIndirect2KHR;
  PFN_vkCreateAccelerationStructure2KHR vkCreateAccelerationStructure2KHR;
}
VK_extension_bindings extensions;

fn void loadExtensions(Instance instance) {
   extensions.vkResetQueryPoolEXT = (PFN_vkResetQueryPoolEXT)getInstanceProcAddr(instance,"vkResetQueryPoolEXT");
   extensions.vkCreatePipelineBinariesKHR = (PFN_vkCreatePipelineBinariesKHR)getInstanceProcAddr(instance,"vkCreatePipelineBinariesKHR");
   extensions.vkDestroyPipelineBinaryKHR = (PFN_vkDestroyPipelineBinaryKHR)getInstanceProcAddr(instance,"vkDestroyPipelineBinaryKHR");
   extensions.vkGetPipelineKeyKHR = (PFN_vkGetPipelineKeyKHR)getInstanceProcAddr(instance,"vkGetPipelineKeyKHR");
   extensions.vkGetPipelineBinaryDataKHR = (PFN_vkGetPipelineBinaryDataKHR)getInstanceProcAddr(instance,"vkGetPipelineBinaryDataKHR");
   extensions.vkReleaseCapturedPipelineDataKHR = (PFN_vkReleaseCapturedPipelineDataKHR)getInstanceProcAddr(instance,"vkReleaseCapturedPipelineDataKHR");
   extensions.vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = (PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI)getInstanceProcAddr(instance,"vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI");
   extensions.vkGetRenderingAreaGranularityKHR = (PFN_vkGetRenderingAreaGranularityKHR)getInstanceProcAddr(instance,"vkGetRenderingAreaGranularityKHR");
   extensions.vkCmdSetAttachmentFeedbackLoopEnableEXT = (PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT)getInstanceProcAddr(instance,"vkCmdSetAttachmentFeedbackLoopEnableEXT");
   extensions.vkCmdDrawMultiEXT = (PFN_vkCmdDrawMultiEXT)getInstanceProcAddr(instance,"vkCmdDrawMultiEXT");
   extensions.vkCmdDrawMultiIndexedEXT = (PFN_vkCmdDrawMultiIndexedEXT)getInstanceProcAddr(instance,"vkCmdDrawMultiIndexedEXT");
   extensions.vkCmdSubpassShadingHUAWEI = (PFN_vkCmdSubpassShadingHUAWEI)getInstanceProcAddr(instance,"vkCmdSubpassShadingHUAWEI");
   extensions.vkCmdDrawClusterHUAWEI = (PFN_vkCmdDrawClusterHUAWEI)getInstanceProcAddr(instance,"vkCmdDrawClusterHUAWEI");
   extensions.vkCmdDrawClusterIndirectHUAWEI = (PFN_vkCmdDrawClusterIndirectHUAWEI)getInstanceProcAddr(instance,"vkCmdDrawClusterIndirectHUAWEI");
   extensions.vkCmdUpdatePipelineIndirectBufferNV = (PFN_vkCmdUpdatePipelineIndirectBufferNV)getInstanceProcAddr(instance,"vkCmdUpdatePipelineIndirectBufferNV");
   extensions.vkCmdCopyMemoryIndirectNV = (PFN_vkCmdCopyMemoryIndirectNV)getInstanceProcAddr(instance,"vkCmdCopyMemoryIndirectNV");
   extensions.vkCmdCopyMemoryIndirectKHR = (PFN_vkCmdCopyMemoryIndirectKHR)getInstanceProcAddr(instance,"vkCmdCopyMemoryIndirectKHR");
   extensions.vkCmdCopyMemoryToImageIndirectNV = (PFN_vkCmdCopyMemoryToImageIndirectNV)getInstanceProcAddr(instance,"vkCmdCopyMemoryToImageIndirectNV");
   extensions.vkCmdCopyMemoryToImageIndirectKHR = (PFN_vkCmdCopyMemoryToImageIndirectKHR)getInstanceProcAddr(instance,"vkCmdCopyMemoryToImageIndirectKHR");
   extensions.vkCmdBeginConditionalRenderingEXT = (PFN_vkCmdBeginConditionalRenderingEXT)getInstanceProcAddr(instance,"vkCmdBeginConditionalRenderingEXT");
   extensions.vkCmdEndConditionalRenderingEXT = (PFN_vkCmdEndConditionalRenderingEXT)getInstanceProcAddr(instance,"vkCmdEndConditionalRenderingEXT");
   extensions.vkCmdBeginCustomResolveEXT = (PFN_vkCmdBeginCustomResolveEXT)getInstanceProcAddr(instance,"vkCmdBeginCustomResolveEXT");
   extensions.vkGetPhysicalDeviceDisplayPropertiesKHR = (PFN_vkGetPhysicalDeviceDisplayPropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDisplayPropertiesKHR");
   extensions.vkGetPhysicalDeviceDisplayPlanePropertiesKHR = (PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDisplayPlanePropertiesKHR");
   extensions.vkGetDisplayPlaneSupportedDisplaysKHR = (PFN_vkGetDisplayPlaneSupportedDisplaysKHR)getInstanceProcAddr(instance,"vkGetDisplayPlaneSupportedDisplaysKHR");
   extensions.vkGetDisplayModePropertiesKHR = (PFN_vkGetDisplayModePropertiesKHR)getInstanceProcAddr(instance,"vkGetDisplayModePropertiesKHR");
   extensions.vkCreateDisplayModeKHR = (PFN_vkCreateDisplayModeKHR)getInstanceProcAddr(instance,"vkCreateDisplayModeKHR");
   extensions.vkGetDisplayPlaneCapabilitiesKHR = (PFN_vkGetDisplayPlaneCapabilitiesKHR)getInstanceProcAddr(instance,"vkGetDisplayPlaneCapabilitiesKHR");
   extensions.vkCreateDisplayPlaneSurfaceKHR = (PFN_vkCreateDisplayPlaneSurfaceKHR)getInstanceProcAddr(instance,"vkCreateDisplayPlaneSurfaceKHR");
   extensions.vkCreateSharedSwapchainsKHR = (PFN_vkCreateSharedSwapchainsKHR)getInstanceProcAddr(instance,"vkCreateSharedSwapchainsKHR");
   extensions.vkDestroySurfaceKHR = (PFN_vkDestroySurfaceKHR)getInstanceProcAddr(instance,"vkDestroySurfaceKHR");
   extensions.vkGetPhysicalDeviceSurfaceSupportKHR = (PFN_vkGetPhysicalDeviceSurfaceSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfaceSupportKHR");
   extensions.vkGetPhysicalDeviceSurfaceCapabilitiesKHR = (PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
   extensions.vkGetPhysicalDeviceSurfaceFormatsKHR = (PFN_vkGetPhysicalDeviceSurfaceFormatsKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfaceFormatsKHR");
   extensions.vkGetPhysicalDeviceSurfacePresentModesKHR = (PFN_vkGetPhysicalDeviceSurfacePresentModesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfacePresentModesKHR");
   extensions.vkCreateSwapchainKHR = (PFN_vkCreateSwapchainKHR)getInstanceProcAddr(instance,"vkCreateSwapchainKHR");
   extensions.vkDestroySwapchainKHR = (PFN_vkDestroySwapchainKHR)getInstanceProcAddr(instance,"vkDestroySwapchainKHR");
   extensions.vkGetSwapchainImagesKHR = (PFN_vkGetSwapchainImagesKHR)getInstanceProcAddr(instance,"vkGetSwapchainImagesKHR");
   extensions.vkAcquireNextImageKHR = (PFN_vkAcquireNextImageKHR)getInstanceProcAddr(instance,"vkAcquireNextImageKHR");
   extensions.vkQueuePresentKHR = (PFN_vkQueuePresentKHR)getInstanceProcAddr(instance,"vkQueuePresentKHR");
   extensions.vkCreateWaylandSurfaceKHR = (PFN_vkCreateWaylandSurfaceKHR)getInstanceProcAddr(instance,"vkCreateWaylandSurfaceKHR");
   extensions.vkGetPhysicalDeviceWaylandPresentationSupportKHR = (PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceWaylandPresentationSupportKHR");
   extensions.vkCreateWin32SurfaceKHR = (PFN_vkCreateWin32SurfaceKHR)getInstanceProcAddr(instance,"vkCreateWin32SurfaceKHR");
   extensions.vkGetPhysicalDeviceWin32PresentationSupportKHR = (PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceWin32PresentationSupportKHR");
   extensions.vkCreateXcbSurfaceKHR = (PFN_vkCreateXcbSurfaceKHR)getInstanceProcAddr(instance,"vkCreateXcbSurfaceKHR");
   extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR = (PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceXcbPresentationSupportKHR");
   extensions.vkCreateDebugReportCallbackEXT = (PFN_vkCreateDebugReportCallbackEXT)getInstanceProcAddr(instance,"vkCreateDebugReportCallbackEXT");
   extensions.vkDestroyDebugReportCallbackEXT = (PFN_vkDestroyDebugReportCallbackEXT)getInstanceProcAddr(instance,"vkDestroyDebugReportCallbackEXT");
   extensions.vkDebugReportMessageEXT = (PFN_vkDebugReportMessageEXT)getInstanceProcAddr(instance,"vkDebugReportMessageEXT");
   extensions.vkDebugMarkerSetObjectNameEXT = (PFN_vkDebugMarkerSetObjectNameEXT)getInstanceProcAddr(instance,"vkDebugMarkerSetObjectNameEXT");
   extensions.vkDebugMarkerSetObjectTagEXT = (PFN_vkDebugMarkerSetObjectTagEXT)getInstanceProcAddr(instance,"vkDebugMarkerSetObjectTagEXT");
   extensions.vkCmdDebugMarkerBeginEXT = (PFN_vkCmdDebugMarkerBeginEXT)getInstanceProcAddr(instance,"vkCmdDebugMarkerBeginEXT");
   extensions.vkCmdDebugMarkerEndEXT = (PFN_vkCmdDebugMarkerEndEXT)getInstanceProcAddr(instance,"vkCmdDebugMarkerEndEXT");
   extensions.vkCmdDebugMarkerInsertEXT = (PFN_vkCmdDebugMarkerInsertEXT)getInstanceProcAddr(instance,"vkCmdDebugMarkerInsertEXT");
   extensions.vkGetPhysicalDeviceExternalImageFormatPropertiesNV = (PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV)getInstanceProcAddr(instance,"vkGetPhysicalDeviceExternalImageFormatPropertiesNV");
   extensions.vkGetMemoryWin32HandleNV = (PFN_vkGetMemoryWin32HandleNV)getInstanceProcAddr(instance,"vkGetMemoryWin32HandleNV");
   extensions.vkCmdExecuteGeneratedCommandsNV = (PFN_vkCmdExecuteGeneratedCommandsNV)getInstanceProcAddr(instance,"vkCmdExecuteGeneratedCommandsNV");
   extensions.vkCmdPreprocessGeneratedCommandsNV = (PFN_vkCmdPreprocessGeneratedCommandsNV)getInstanceProcAddr(instance,"vkCmdPreprocessGeneratedCommandsNV");
   extensions.vkCmdBindPipelineShaderGroupNV = (PFN_vkCmdBindPipelineShaderGroupNV)getInstanceProcAddr(instance,"vkCmdBindPipelineShaderGroupNV");
   extensions.vkGetGeneratedCommandsMemoryRequirementsNV = (PFN_vkGetGeneratedCommandsMemoryRequirementsNV)getInstanceProcAddr(instance,"vkGetGeneratedCommandsMemoryRequirementsNV");
   extensions.vkCreateIndirectCommandsLayoutNV = (PFN_vkCreateIndirectCommandsLayoutNV)getInstanceProcAddr(instance,"vkCreateIndirectCommandsLayoutNV");
   extensions.vkDestroyIndirectCommandsLayoutNV = (PFN_vkDestroyIndirectCommandsLayoutNV)getInstanceProcAddr(instance,"vkDestroyIndirectCommandsLayoutNV");
   extensions.vkCmdExecuteGeneratedCommandsEXT = (PFN_vkCmdExecuteGeneratedCommandsEXT)getInstanceProcAddr(instance,"vkCmdExecuteGeneratedCommandsEXT");
   extensions.vkCmdPreprocessGeneratedCommandsEXT = (PFN_vkCmdPreprocessGeneratedCommandsEXT)getInstanceProcAddr(instance,"vkCmdPreprocessGeneratedCommandsEXT");
   extensions.vkGetGeneratedCommandsMemoryRequirementsEXT = (PFN_vkGetGeneratedCommandsMemoryRequirementsEXT)getInstanceProcAddr(instance,"vkGetGeneratedCommandsMemoryRequirementsEXT");
   extensions.vkCreateIndirectCommandsLayoutEXT = (PFN_vkCreateIndirectCommandsLayoutEXT)getInstanceProcAddr(instance,"vkCreateIndirectCommandsLayoutEXT");
   extensions.vkDestroyIndirectCommandsLayoutEXT = (PFN_vkDestroyIndirectCommandsLayoutEXT)getInstanceProcAddr(instance,"vkDestroyIndirectCommandsLayoutEXT");
   extensions.vkCreateIndirectExecutionSetEXT = (PFN_vkCreateIndirectExecutionSetEXT)getInstanceProcAddr(instance,"vkCreateIndirectExecutionSetEXT");
   extensions.vkDestroyIndirectExecutionSetEXT = (PFN_vkDestroyIndirectExecutionSetEXT)getInstanceProcAddr(instance,"vkDestroyIndirectExecutionSetEXT");
   extensions.vkUpdateIndirectExecutionSetPipelineEXT = (PFN_vkUpdateIndirectExecutionSetPipelineEXT)getInstanceProcAddr(instance,"vkUpdateIndirectExecutionSetPipelineEXT");
   extensions.vkUpdateIndirectExecutionSetShaderEXT = (PFN_vkUpdateIndirectExecutionSetShaderEXT)getInstanceProcAddr(instance,"vkUpdateIndirectExecutionSetShaderEXT");
   extensions.vkGetPhysicalDeviceFeatures2KHR = (PFN_vkGetPhysicalDeviceFeatures2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceFeatures2KHR");
   extensions.vkGetPhysicalDeviceProperties2KHR = (PFN_vkGetPhysicalDeviceProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceProperties2KHR");
   extensions.vkGetPhysicalDeviceFormatProperties2KHR = (PFN_vkGetPhysicalDeviceFormatProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceFormatProperties2KHR");
   extensions.vkGetPhysicalDeviceImageFormatProperties2KHR = (PFN_vkGetPhysicalDeviceImageFormatProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceImageFormatProperties2KHR");
   extensions.vkGetPhysicalDeviceQueueFamilyProperties2KHR = (PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceQueueFamilyProperties2KHR");
   extensions.vkGetPhysicalDeviceMemoryProperties2KHR = (PFN_vkGetPhysicalDeviceMemoryProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceMemoryProperties2KHR");
   extensions.vkGetPhysicalDeviceSparseImageFormatProperties2KHR = (PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSparseImageFormatProperties2KHR");
   extensions.vkCmdPushDescriptorSetKHR = (PFN_vkCmdPushDescriptorSetKHR)getInstanceProcAddr(instance,"vkCmdPushDescriptorSetKHR");
   extensions.vkTrimCommandPoolKHR = (PFN_vkTrimCommandPoolKHR)getInstanceProcAddr(instance,"vkTrimCommandPoolKHR");
   extensions.vkGetPhysicalDeviceExternalBufferPropertiesKHR = (PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceExternalBufferPropertiesKHR");
   extensions.vkGetMemoryWin32HandleKHR = (PFN_vkGetMemoryWin32HandleKHR)getInstanceProcAddr(instance,"vkGetMemoryWin32HandleKHR");
   extensions.vkGetMemoryWin32HandlePropertiesKHR = (PFN_vkGetMemoryWin32HandlePropertiesKHR)getInstanceProcAddr(instance,"vkGetMemoryWin32HandlePropertiesKHR");
   extensions.vkGetMemoryFdKHR = (PFN_vkGetMemoryFdKHR)getInstanceProcAddr(instance,"vkGetMemoryFdKHR");
   extensions.vkGetMemoryFdPropertiesKHR = (PFN_vkGetMemoryFdPropertiesKHR)getInstanceProcAddr(instance,"vkGetMemoryFdPropertiesKHR");
   extensions.vkGetMemoryRemoteAddressNV = (PFN_vkGetMemoryRemoteAddressNV)getInstanceProcAddr(instance,"vkGetMemoryRemoteAddressNV");
   extensions.vkGetPhysicalDeviceExternalSemaphorePropertiesKHR = (PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceExternalSemaphorePropertiesKHR");
   extensions.vkGetSemaphoreWin32HandleKHR = (PFN_vkGetSemaphoreWin32HandleKHR)getInstanceProcAddr(instance,"vkGetSemaphoreWin32HandleKHR");
   extensions.vkImportSemaphoreWin32HandleKHR = (PFN_vkImportSemaphoreWin32HandleKHR)getInstanceProcAddr(instance,"vkImportSemaphoreWin32HandleKHR");
   extensions.vkGetSemaphoreFdKHR = (PFN_vkGetSemaphoreFdKHR)getInstanceProcAddr(instance,"vkGetSemaphoreFdKHR");
   extensions.vkImportSemaphoreFdKHR = (PFN_vkImportSemaphoreFdKHR)getInstanceProcAddr(instance,"vkImportSemaphoreFdKHR");
   extensions.vkGetPhysicalDeviceExternalFencePropertiesKHR = (PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceExternalFencePropertiesKHR");
   extensions.vkGetFenceWin32HandleKHR = (PFN_vkGetFenceWin32HandleKHR)getInstanceProcAddr(instance,"vkGetFenceWin32HandleKHR");
   extensions.vkImportFenceWin32HandleKHR = (PFN_vkImportFenceWin32HandleKHR)getInstanceProcAddr(instance,"vkImportFenceWin32HandleKHR");
   extensions.vkGetFenceFdKHR = (PFN_vkGetFenceFdKHR)getInstanceProcAddr(instance,"vkGetFenceFdKHR");
   extensions.vkImportFenceFdKHR = (PFN_vkImportFenceFdKHR)getInstanceProcAddr(instance,"vkImportFenceFdKHR");
   extensions.vkReleaseDisplayEXT = (PFN_vkReleaseDisplayEXT)getInstanceProcAddr(instance,"vkReleaseDisplayEXT");
   extensions.vkAcquireWinrtDisplayNV = (PFN_vkAcquireWinrtDisplayNV)getInstanceProcAddr(instance,"vkAcquireWinrtDisplayNV");
   extensions.vkGetWinrtDisplayNV = (PFN_vkGetWinrtDisplayNV)getInstanceProcAddr(instance,"vkGetWinrtDisplayNV");
   extensions.vkDisplayPowerControlEXT = (PFN_vkDisplayPowerControlEXT)getInstanceProcAddr(instance,"vkDisplayPowerControlEXT");
   extensions.vkRegisterDeviceEventEXT = (PFN_vkRegisterDeviceEventEXT)getInstanceProcAddr(instance,"vkRegisterDeviceEventEXT");
   extensions.vkRegisterDisplayEventEXT = (PFN_vkRegisterDisplayEventEXT)getInstanceProcAddr(instance,"vkRegisterDisplayEventEXT");
   extensions.vkGetSwapchainCounterEXT = (PFN_vkGetSwapchainCounterEXT)getInstanceProcAddr(instance,"vkGetSwapchainCounterEXT");
   extensions.vkGetPhysicalDeviceSurfaceCapabilities2EXT = (PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfaceCapabilities2EXT");
   extensions.vkEnumeratePhysicalDeviceGroupsKHR = (PFN_vkEnumeratePhysicalDeviceGroupsKHR)getInstanceProcAddr(instance,"vkEnumeratePhysicalDeviceGroupsKHR");
   extensions.vkGetDeviceGroupPeerMemoryFeaturesKHR = (PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR)getInstanceProcAddr(instance,"vkGetDeviceGroupPeerMemoryFeaturesKHR");
   extensions.vkBindBufferMemory2KHR = (PFN_vkBindBufferMemory2KHR)getInstanceProcAddr(instance,"vkBindBufferMemory2KHR");
   extensions.vkBindImageMemory2KHR = (PFN_vkBindImageMemory2KHR)getInstanceProcAddr(instance,"vkBindImageMemory2KHR");
   extensions.vkCmdSetDeviceMaskKHR = (PFN_vkCmdSetDeviceMaskKHR)getInstanceProcAddr(instance,"vkCmdSetDeviceMaskKHR");
   extensions.vkGetDeviceGroupPresentCapabilitiesKHR = (PFN_vkGetDeviceGroupPresentCapabilitiesKHR)getInstanceProcAddr(instance,"vkGetDeviceGroupPresentCapabilitiesKHR");
   extensions.vkGetDeviceGroupSurfacePresentModesKHR = (PFN_vkGetDeviceGroupSurfacePresentModesKHR)getInstanceProcAddr(instance,"vkGetDeviceGroupSurfacePresentModesKHR");
   extensions.vkAcquireNextImage2KHR = (PFN_vkAcquireNextImage2KHR)getInstanceProcAddr(instance,"vkAcquireNextImage2KHR");
   extensions.vkCmdDispatchBaseKHR = (PFN_vkCmdDispatchBaseKHR)getInstanceProcAddr(instance,"vkCmdDispatchBaseKHR");
   extensions.vkGetPhysicalDevicePresentRectanglesKHR = (PFN_vkGetPhysicalDevicePresentRectanglesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDevicePresentRectanglesKHR");
   extensions.vkCreateDescriptorUpdateTemplateKHR = (PFN_vkCreateDescriptorUpdateTemplateKHR)getInstanceProcAddr(instance,"vkCreateDescriptorUpdateTemplateKHR");
   extensions.vkDestroyDescriptorUpdateTemplateKHR = (PFN_vkDestroyDescriptorUpdateTemplateKHR)getInstanceProcAddr(instance,"vkDestroyDescriptorUpdateTemplateKHR");
   extensions.vkUpdateDescriptorSetWithTemplateKHR = (PFN_vkUpdateDescriptorSetWithTemplateKHR)getInstanceProcAddr(instance,"vkUpdateDescriptorSetWithTemplateKHR");
   extensions.vkCmdPushDescriptorSetWithTemplateKHR = (PFN_vkCmdPushDescriptorSetWithTemplateKHR)getInstanceProcAddr(instance,"vkCmdPushDescriptorSetWithTemplateKHR");
   extensions.vkSetHdrMetadataEXT = (PFN_vkSetHdrMetadataEXT)getInstanceProcAddr(instance,"vkSetHdrMetadataEXT");
   extensions.vkGetSwapchainStatusKHR = (PFN_vkGetSwapchainStatusKHR)getInstanceProcAddr(instance,"vkGetSwapchainStatusKHR");
   extensions.vkGetRefreshCycleDurationGOOGLE = (PFN_vkGetRefreshCycleDurationGOOGLE)getInstanceProcAddr(instance,"vkGetRefreshCycleDurationGOOGLE");
   extensions.vkGetPastPresentationTimingGOOGLE = (PFN_vkGetPastPresentationTimingGOOGLE)getInstanceProcAddr(instance,"vkGetPastPresentationTimingGOOGLE");
   extensions.vkCreateIOSSurfaceMVK = (PFN_vkCreateIOSSurfaceMVK)getInstanceProcAddr(instance,"vkCreateIOSSurfaceMVK");
   extensions.vkCreateMacOSSurfaceMVK = (PFN_vkCreateMacOSSurfaceMVK)getInstanceProcAddr(instance,"vkCreateMacOSSurfaceMVK");
   extensions.vkCreateMetalSurfaceEXT = (PFN_vkCreateMetalSurfaceEXT)getInstanceProcAddr(instance,"vkCreateMetalSurfaceEXT");
   extensions.vkCmdSetViewportWScalingNV = (PFN_vkCmdSetViewportWScalingNV)getInstanceProcAddr(instance,"vkCmdSetViewportWScalingNV");
   extensions.vkCmdSetDiscardRectangleEXT = (PFN_vkCmdSetDiscardRectangleEXT)getInstanceProcAddr(instance,"vkCmdSetDiscardRectangleEXT");
   extensions.vkCmdSetDiscardRectangleEnableEXT = (PFN_vkCmdSetDiscardRectangleEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDiscardRectangleEnableEXT");
   extensions.vkCmdSetDiscardRectangleModeEXT = (PFN_vkCmdSetDiscardRectangleModeEXT)getInstanceProcAddr(instance,"vkCmdSetDiscardRectangleModeEXT");
   extensions.vkCmdSetSampleLocationsEXT = (PFN_vkCmdSetSampleLocationsEXT)getInstanceProcAddr(instance,"vkCmdSetSampleLocationsEXT");
   extensions.vkGetPhysicalDeviceMultisamplePropertiesEXT = (PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceMultisamplePropertiesEXT");
   extensions.vkGetPhysicalDeviceSurfaceCapabilities2KHR = (PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfaceCapabilities2KHR");
   extensions.vkGetPhysicalDeviceSurfaceFormats2KHR = (PFN_vkGetPhysicalDeviceSurfaceFormats2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfaceFormats2KHR");
   extensions.vkGetPhysicalDeviceDisplayProperties2KHR = (PFN_vkGetPhysicalDeviceDisplayProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDisplayProperties2KHR");
   extensions.vkGetPhysicalDeviceDisplayPlaneProperties2KHR = (PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDisplayPlaneProperties2KHR");
   extensions.vkGetDisplayModeProperties2KHR = (PFN_vkGetDisplayModeProperties2KHR)getInstanceProcAddr(instance,"vkGetDisplayModeProperties2KHR");
   extensions.vkGetDisplayPlaneCapabilities2KHR = (PFN_vkGetDisplayPlaneCapabilities2KHR)getInstanceProcAddr(instance,"vkGetDisplayPlaneCapabilities2KHR");
   extensions.vkGetBufferMemoryRequirements2KHR = (PFN_vkGetBufferMemoryRequirements2KHR)getInstanceProcAddr(instance,"vkGetBufferMemoryRequirements2KHR");
   extensions.vkGetImageMemoryRequirements2KHR = (PFN_vkGetImageMemoryRequirements2KHR)getInstanceProcAddr(instance,"vkGetImageMemoryRequirements2KHR");
   extensions.vkGetImageSparseMemoryRequirements2KHR = (PFN_vkGetImageSparseMemoryRequirements2KHR)getInstanceProcAddr(instance,"vkGetImageSparseMemoryRequirements2KHR");
   extensions.vkGetDeviceBufferMemoryRequirementsKHR = (PFN_vkGetDeviceBufferMemoryRequirementsKHR)getInstanceProcAddr(instance,"vkGetDeviceBufferMemoryRequirementsKHR");
   extensions.vkGetDeviceImageMemoryRequirementsKHR = (PFN_vkGetDeviceImageMemoryRequirementsKHR)getInstanceProcAddr(instance,"vkGetDeviceImageMemoryRequirementsKHR");
   extensions.vkGetDeviceImageSparseMemoryRequirementsKHR = (PFN_vkGetDeviceImageSparseMemoryRequirementsKHR)getInstanceProcAddr(instance,"vkGetDeviceImageSparseMemoryRequirementsKHR");
   extensions.vkCreateSamplerYcbcrConversionKHR = (PFN_vkCreateSamplerYcbcrConversionKHR)getInstanceProcAddr(instance,"vkCreateSamplerYcbcrConversionKHR");
   extensions.vkDestroySamplerYcbcrConversionKHR = (PFN_vkDestroySamplerYcbcrConversionKHR)getInstanceProcAddr(instance,"vkDestroySamplerYcbcrConversionKHR");
   extensions.vkCreateValidationCacheEXT = (PFN_vkCreateValidationCacheEXT)getInstanceProcAddr(instance,"vkCreateValidationCacheEXT");
   extensions.vkDestroyValidationCacheEXT = (PFN_vkDestroyValidationCacheEXT)getInstanceProcAddr(instance,"vkDestroyValidationCacheEXT");
   extensions.vkGetValidationCacheDataEXT = (PFN_vkGetValidationCacheDataEXT)getInstanceProcAddr(instance,"vkGetValidationCacheDataEXT");
   extensions.vkMergeValidationCachesEXT = (PFN_vkMergeValidationCachesEXT)getInstanceProcAddr(instance,"vkMergeValidationCachesEXT");
   extensions.vkGetDescriptorSetLayoutSupportKHR = (PFN_vkGetDescriptorSetLayoutSupportKHR)getInstanceProcAddr(instance,"vkGetDescriptorSetLayoutSupportKHR");
   extensions.vkGetShaderInfoAMD = (PFN_vkGetShaderInfoAMD)getInstanceProcAddr(instance,"vkGetShaderInfoAMD");
   extensions.vkSetLocalDimmingAMD = (PFN_vkSetLocalDimmingAMD)getInstanceProcAddr(instance,"vkSetLocalDimmingAMD");
   extensions.vkGetPhysicalDeviceCalibrateableTimeDomainsKHR = (PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceCalibrateableTimeDomainsKHR");
   extensions.vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = (PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceCalibrateableTimeDomainsEXT");
   extensions.vkGetCalibratedTimestampsKHR = (PFN_vkGetCalibratedTimestampsKHR)getInstanceProcAddr(instance,"vkGetCalibratedTimestampsKHR");
   extensions.vkGetCalibratedTimestampsEXT = (PFN_vkGetCalibratedTimestampsEXT)getInstanceProcAddr(instance,"vkGetCalibratedTimestampsEXT");
   extensions.vkSetDebugUtilsObjectNameEXT = (PFN_vkSetDebugUtilsObjectNameEXT)getInstanceProcAddr(instance,"vkSetDebugUtilsObjectNameEXT");
   extensions.vkSetDebugUtilsObjectTagEXT = (PFN_vkSetDebugUtilsObjectTagEXT)getInstanceProcAddr(instance,"vkSetDebugUtilsObjectTagEXT");
   extensions.vkQueueBeginDebugUtilsLabelEXT = (PFN_vkQueueBeginDebugUtilsLabelEXT)getInstanceProcAddr(instance,"vkQueueBeginDebugUtilsLabelEXT");
   extensions.vkQueueEndDebugUtilsLabelEXT = (PFN_vkQueueEndDebugUtilsLabelEXT)getInstanceProcAddr(instance,"vkQueueEndDebugUtilsLabelEXT");
   extensions.vkQueueInsertDebugUtilsLabelEXT = (PFN_vkQueueInsertDebugUtilsLabelEXT)getInstanceProcAddr(instance,"vkQueueInsertDebugUtilsLabelEXT");
   extensions.vkCmdBeginDebugUtilsLabelEXT = (PFN_vkCmdBeginDebugUtilsLabelEXT)getInstanceProcAddr(instance,"vkCmdBeginDebugUtilsLabelEXT");
   extensions.vkCmdEndDebugUtilsLabelEXT = (PFN_vkCmdEndDebugUtilsLabelEXT)getInstanceProcAddr(instance,"vkCmdEndDebugUtilsLabelEXT");
   extensions.vkCmdInsertDebugUtilsLabelEXT = (PFN_vkCmdInsertDebugUtilsLabelEXT)getInstanceProcAddr(instance,"vkCmdInsertDebugUtilsLabelEXT");
   extensions.vkCreateDebugUtilsMessengerEXT = (PFN_vkCreateDebugUtilsMessengerEXT)getInstanceProcAddr(instance,"vkCreateDebugUtilsMessengerEXT");
   extensions.vkDestroyDebugUtilsMessengerEXT = (PFN_vkDestroyDebugUtilsMessengerEXT)getInstanceProcAddr(instance,"vkDestroyDebugUtilsMessengerEXT");
   extensions.vkSubmitDebugUtilsMessageEXT = (PFN_vkSubmitDebugUtilsMessageEXT)getInstanceProcAddr(instance,"vkSubmitDebugUtilsMessageEXT");
   extensions.vkGetMemoryHostPointerPropertiesEXT = (PFN_vkGetMemoryHostPointerPropertiesEXT)getInstanceProcAddr(instance,"vkGetMemoryHostPointerPropertiesEXT");
   extensions.vkCmdWriteBufferMarkerAMD = (PFN_vkCmdWriteBufferMarkerAMD)getInstanceProcAddr(instance,"vkCmdWriteBufferMarkerAMD");
   extensions.vkCreateRenderPass2KHR = (PFN_vkCreateRenderPass2KHR)getInstanceProcAddr(instance,"vkCreateRenderPass2KHR");
   extensions.vkCmdBeginRenderPass2KHR = (PFN_vkCmdBeginRenderPass2KHR)getInstanceProcAddr(instance,"vkCmdBeginRenderPass2KHR");
   extensions.vkCmdNextSubpass2KHR = (PFN_vkCmdNextSubpass2KHR)getInstanceProcAddr(instance,"vkCmdNextSubpass2KHR");
   extensions.vkCmdEndRenderPass2KHR = (PFN_vkCmdEndRenderPass2KHR)getInstanceProcAddr(instance,"vkCmdEndRenderPass2KHR");
   extensions.vkGetSemaphoreCounterValueKHR = (PFN_vkGetSemaphoreCounterValueKHR)getInstanceProcAddr(instance,"vkGetSemaphoreCounterValueKHR");
   extensions.vkWaitSemaphoresKHR = (PFN_vkWaitSemaphoresKHR)getInstanceProcAddr(instance,"vkWaitSemaphoresKHR");
   extensions.vkSignalSemaphoreKHR = (PFN_vkSignalSemaphoreKHR)getInstanceProcAddr(instance,"vkSignalSemaphoreKHR");
   extensions.vkCmdDrawIndirectCountKHR = (PFN_vkCmdDrawIndirectCountKHR)getInstanceProcAddr(instance,"vkCmdDrawIndirectCountKHR");
   extensions.vkCmdDrawIndirectCountAMD = (PFN_vkCmdDrawIndirectCountAMD)getInstanceProcAddr(instance,"vkCmdDrawIndirectCountAMD");
   extensions.vkCmdDrawIndexedIndirectCountKHR = (PFN_vkCmdDrawIndexedIndirectCountKHR)getInstanceProcAddr(instance,"vkCmdDrawIndexedIndirectCountKHR");
   extensions.vkCmdDrawIndexedIndirectCountAMD = (PFN_vkCmdDrawIndexedIndirectCountAMD)getInstanceProcAddr(instance,"vkCmdDrawIndexedIndirectCountAMD");
   extensions.vkCmdSetCheckpointNV = (PFN_vkCmdSetCheckpointNV)getInstanceProcAddr(instance,"vkCmdSetCheckpointNV");
   extensions.vkGetQueueCheckpointDataNV = (PFN_vkGetQueueCheckpointDataNV)getInstanceProcAddr(instance,"vkGetQueueCheckpointDataNV");
   extensions.vkCmdBindTransformFeedbackBuffersEXT = (PFN_vkCmdBindTransformFeedbackBuffersEXT)getInstanceProcAddr(instance,"vkCmdBindTransformFeedbackBuffersEXT");
   extensions.vkCmdBeginTransformFeedbackEXT = (PFN_vkCmdBeginTransformFeedbackEXT)getInstanceProcAddr(instance,"vkCmdBeginTransformFeedbackEXT");
   extensions.vkCmdEndTransformFeedbackEXT = (PFN_vkCmdEndTransformFeedbackEXT)getInstanceProcAddr(instance,"vkCmdEndTransformFeedbackEXT");
   extensions.vkCmdBeginQueryIndexedEXT = (PFN_vkCmdBeginQueryIndexedEXT)getInstanceProcAddr(instance,"vkCmdBeginQueryIndexedEXT");
   extensions.vkCmdEndQueryIndexedEXT = (PFN_vkCmdEndQueryIndexedEXT)getInstanceProcAddr(instance,"vkCmdEndQueryIndexedEXT");
   extensions.vkCmdDrawIndirectByteCountEXT = (PFN_vkCmdDrawIndirectByteCountEXT)getInstanceProcAddr(instance,"vkCmdDrawIndirectByteCountEXT");
   extensions.vkCmdSetExclusiveScissorNV = (PFN_vkCmdSetExclusiveScissorNV)getInstanceProcAddr(instance,"vkCmdSetExclusiveScissorNV");
   extensions.vkCmdSetExclusiveScissorEnableNV = (PFN_vkCmdSetExclusiveScissorEnableNV)getInstanceProcAddr(instance,"vkCmdSetExclusiveScissorEnableNV");
   extensions.vkCmdBindShadingRateImageNV = (PFN_vkCmdBindShadingRateImageNV)getInstanceProcAddr(instance,"vkCmdBindShadingRateImageNV");
   extensions.vkCmdSetViewportShadingRatePaletteNV = (PFN_vkCmdSetViewportShadingRatePaletteNV)getInstanceProcAddr(instance,"vkCmdSetViewportShadingRatePaletteNV");
   extensions.vkCmdSetCoarseSampleOrderNV = (PFN_vkCmdSetCoarseSampleOrderNV)getInstanceProcAddr(instance,"vkCmdSetCoarseSampleOrderNV");
   extensions.vkCmdDrawMeshTasksNV = (PFN_vkCmdDrawMeshTasksNV)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksNV");
   extensions.vkCmdDrawMeshTasksIndirectNV = (PFN_vkCmdDrawMeshTasksIndirectNV)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksIndirectNV");
   extensions.vkCmdDrawMeshTasksIndirectCountNV = (PFN_vkCmdDrawMeshTasksIndirectCountNV)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksIndirectCountNV");
   extensions.vkCmdDrawMeshTasksEXT = (PFN_vkCmdDrawMeshTasksEXT)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksEXT");
   extensions.vkCmdDrawMeshTasksIndirectEXT = (PFN_vkCmdDrawMeshTasksIndirectEXT)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksIndirectEXT");
   extensions.vkCmdDrawMeshTasksIndirectCountEXT = (PFN_vkCmdDrawMeshTasksIndirectCountEXT)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksIndirectCountEXT");
   extensions.vkCompileDeferredNV = (PFN_vkCompileDeferredNV)getInstanceProcAddr(instance,"vkCompileDeferredNV");
   extensions.vkCmdBindInvocationMaskHUAWEI = (PFN_vkCmdBindInvocationMaskHUAWEI)getInstanceProcAddr(instance,"vkCmdBindInvocationMaskHUAWEI");
   extensions.vkDestroyAccelerationStructureKHR = (PFN_vkDestroyAccelerationStructureKHR)getInstanceProcAddr(instance,"vkDestroyAccelerationStructureKHR");
   extensions.vkDestroyAccelerationStructureNV = (PFN_vkDestroyAccelerationStructureNV)getInstanceProcAddr(instance,"vkDestroyAccelerationStructureNV");
   extensions.vkGetAccelerationStructureMemoryRequirementsNV = (PFN_vkGetAccelerationStructureMemoryRequirementsNV)getInstanceProcAddr(instance,"vkGetAccelerationStructureMemoryRequirementsNV");
   extensions.vkBindAccelerationStructureMemoryNV = (PFN_vkBindAccelerationStructureMemoryNV)getInstanceProcAddr(instance,"vkBindAccelerationStructureMemoryNV");
   extensions.vkCmdCopyAccelerationStructureNV = (PFN_vkCmdCopyAccelerationStructureNV)getInstanceProcAddr(instance,"vkCmdCopyAccelerationStructureNV");
   extensions.vkCmdCopyAccelerationStructureKHR = (PFN_vkCmdCopyAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCmdCopyAccelerationStructureKHR");
   extensions.vkCopyAccelerationStructureKHR = (PFN_vkCopyAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCopyAccelerationStructureKHR");
   extensions.vkCmdCopyAccelerationStructureToMemoryKHR = (PFN_vkCmdCopyAccelerationStructureToMemoryKHR)getInstanceProcAddr(instance,"vkCmdCopyAccelerationStructureToMemoryKHR");
   extensions.vkCopyAccelerationStructureToMemoryKHR = (PFN_vkCopyAccelerationStructureToMemoryKHR)getInstanceProcAddr(instance,"vkCopyAccelerationStructureToMemoryKHR");
   extensions.vkCmdCopyMemoryToAccelerationStructureKHR = (PFN_vkCmdCopyMemoryToAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCmdCopyMemoryToAccelerationStructureKHR");
   extensions.vkCopyMemoryToAccelerationStructureKHR = (PFN_vkCopyMemoryToAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCopyMemoryToAccelerationStructureKHR");
   extensions.vkCmdWriteAccelerationStructuresPropertiesKHR = (PFN_vkCmdWriteAccelerationStructuresPropertiesKHR)getInstanceProcAddr(instance,"vkCmdWriteAccelerationStructuresPropertiesKHR");
   extensions.vkCmdWriteAccelerationStructuresPropertiesNV = (PFN_vkCmdWriteAccelerationStructuresPropertiesNV)getInstanceProcAddr(instance,"vkCmdWriteAccelerationStructuresPropertiesNV");
   extensions.vkWriteAccelerationStructuresPropertiesKHR = (PFN_vkWriteAccelerationStructuresPropertiesKHR)getInstanceProcAddr(instance,"vkWriteAccelerationStructuresPropertiesKHR");
   extensions.vkCmdTraceRaysKHR = (PFN_vkCmdTraceRaysKHR)getInstanceProcAddr(instance,"vkCmdTraceRaysKHR");
   extensions.vkCmdTraceRaysNV = (PFN_vkCmdTraceRaysNV)getInstanceProcAddr(instance,"vkCmdTraceRaysNV");
   extensions.vkGetRayTracingShaderGroupHandlesKHR = (PFN_vkGetRayTracingShaderGroupHandlesKHR)getInstanceProcAddr(instance,"vkGetRayTracingShaderGroupHandlesKHR");
   extensions.vkGetRayTracingShaderGroupHandlesNV = (PFN_vkGetRayTracingShaderGroupHandlesNV)getInstanceProcAddr(instance,"vkGetRayTracingShaderGroupHandlesNV");
   extensions.vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = (PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR)getInstanceProcAddr(instance,"vkGetRayTracingCaptureReplayShaderGroupHandlesKHR");
   extensions.vkGetAccelerationStructureHandleNV = (PFN_vkGetAccelerationStructureHandleNV)getInstanceProcAddr(instance,"vkGetAccelerationStructureHandleNV");
   extensions.vkCreateRayTracingPipelinesNV = (PFN_vkCreateRayTracingPipelinesNV)getInstanceProcAddr(instance,"vkCreateRayTracingPipelinesNV");
   extensions.vkCreateRayTracingPipelinesKHR = (PFN_vkCreateRayTracingPipelinesKHR)getInstanceProcAddr(instance,"vkCreateRayTracingPipelinesKHR");
   extensions.vkCmdTraceRaysIndirectKHR = (PFN_vkCmdTraceRaysIndirectKHR)getInstanceProcAddr(instance,"vkCmdTraceRaysIndirectKHR");
   extensions.vkCmdTraceRaysIndirect2KHR = (PFN_vkCmdTraceRaysIndirect2KHR)getInstanceProcAddr(instance,"vkCmdTraceRaysIndirect2KHR");
   extensions.vkGetClusterAccelerationStructureBuildSizesNV = (PFN_vkGetClusterAccelerationStructureBuildSizesNV)getInstanceProcAddr(instance,"vkGetClusterAccelerationStructureBuildSizesNV");
   extensions.vkCmdBuildClusterAccelerationStructureIndirectNV = (PFN_vkCmdBuildClusterAccelerationStructureIndirectNV)getInstanceProcAddr(instance,"vkCmdBuildClusterAccelerationStructureIndirectNV");
   extensions.vkGetDeviceAccelerationStructureCompatibilityKHR = (PFN_vkGetDeviceAccelerationStructureCompatibilityKHR)getInstanceProcAddr(instance,"vkGetDeviceAccelerationStructureCompatibilityKHR");
   extensions.vkGetRayTracingShaderGroupStackSizeKHR = (PFN_vkGetRayTracingShaderGroupStackSizeKHR)getInstanceProcAddr(instance,"vkGetRayTracingShaderGroupStackSizeKHR");
   extensions.vkCmdSetRayTracingPipelineStackSizeKHR = (PFN_vkCmdSetRayTracingPipelineStackSizeKHR)getInstanceProcAddr(instance,"vkCmdSetRayTracingPipelineStackSizeKHR");
   extensions.vkGetImageViewHandleNVX = (PFN_vkGetImageViewHandleNVX)getInstanceProcAddr(instance,"vkGetImageViewHandleNVX");
   extensions.vkGetImageViewHandle64NVX = (PFN_vkGetImageViewHandle64NVX)getInstanceProcAddr(instance,"vkGetImageViewHandle64NVX");
   extensions.vkGetImageViewAddressNVX = (PFN_vkGetImageViewAddressNVX)getInstanceProcAddr(instance,"vkGetImageViewAddressNVX");
   extensions.vkGetDeviceCombinedImageSamplerIndexNVX = (PFN_vkGetDeviceCombinedImageSamplerIndexNVX)getInstanceProcAddr(instance,"vkGetDeviceCombinedImageSamplerIndexNVX");
   extensions.vkGetPhysicalDeviceSurfacePresentModes2EXT = (PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSurfacePresentModes2EXT");
   extensions.vkGetDeviceGroupSurfacePresentModes2EXT = (PFN_vkGetDeviceGroupSurfacePresentModes2EXT)getInstanceProcAddr(instance,"vkGetDeviceGroupSurfacePresentModes2EXT");
   extensions.vkAcquireFullScreenExclusiveModeEXT = (PFN_vkAcquireFullScreenExclusiveModeEXT)getInstanceProcAddr(instance,"vkAcquireFullScreenExclusiveModeEXT");
   extensions.vkReleaseFullScreenExclusiveModeEXT = (PFN_vkReleaseFullScreenExclusiveModeEXT)getInstanceProcAddr(instance,"vkReleaseFullScreenExclusiveModeEXT");
   extensions.vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = (PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR)getInstanceProcAddr(instance,"vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR");
   extensions.vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = (PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR");
   extensions.vkAcquireProfilingLockKHR = (PFN_vkAcquireProfilingLockKHR)getInstanceProcAddr(instance,"vkAcquireProfilingLockKHR");
   extensions.vkReleaseProfilingLockKHR = (PFN_vkReleaseProfilingLockKHR)getInstanceProcAddr(instance,"vkReleaseProfilingLockKHR");
   extensions.vkGetImageDrmFormatModifierPropertiesEXT = (PFN_vkGetImageDrmFormatModifierPropertiesEXT)getInstanceProcAddr(instance,"vkGetImageDrmFormatModifierPropertiesEXT");
   extensions.vkGetBufferOpaqueCaptureAddressKHR = (PFN_vkGetBufferOpaqueCaptureAddressKHR)getInstanceProcAddr(instance,"vkGetBufferOpaqueCaptureAddressKHR");
   extensions.vkGetBufferDeviceAddressKHR = (PFN_vkGetBufferDeviceAddressKHR)getInstanceProcAddr(instance,"vkGetBufferDeviceAddressKHR");
   extensions.vkGetBufferDeviceAddressEXT = (PFN_vkGetBufferDeviceAddressEXT)getInstanceProcAddr(instance,"vkGetBufferDeviceAddressEXT");
   extensions.vkCreateHeadlessSurfaceEXT = (PFN_vkCreateHeadlessSurfaceEXT)getInstanceProcAddr(instance,"vkCreateHeadlessSurfaceEXT");
   extensions.vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = (PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV");
   extensions.vkInitializePerformanceApiINTEL = (PFN_vkInitializePerformanceApiINTEL)getInstanceProcAddr(instance,"vkInitializePerformanceApiINTEL");
   extensions.vkUninitializePerformanceApiINTEL = (PFN_vkUninitializePerformanceApiINTEL)getInstanceProcAddr(instance,"vkUninitializePerformanceApiINTEL");
   extensions.vkCmdSetPerformanceMarkerINTEL = (PFN_vkCmdSetPerformanceMarkerINTEL)getInstanceProcAddr(instance,"vkCmdSetPerformanceMarkerINTEL");
   extensions.vkCmdSetPerformanceStreamMarkerINTEL = (PFN_vkCmdSetPerformanceStreamMarkerINTEL)getInstanceProcAddr(instance,"vkCmdSetPerformanceStreamMarkerINTEL");
   extensions.vkCmdSetPerformanceOverrideINTEL = (PFN_vkCmdSetPerformanceOverrideINTEL)getInstanceProcAddr(instance,"vkCmdSetPerformanceOverrideINTEL");
   extensions.vkAcquirePerformanceConfigurationINTEL = (PFN_vkAcquirePerformanceConfigurationINTEL)getInstanceProcAddr(instance,"vkAcquirePerformanceConfigurationINTEL");
   extensions.vkReleasePerformanceConfigurationINTEL = (PFN_vkReleasePerformanceConfigurationINTEL)getInstanceProcAddr(instance,"vkReleasePerformanceConfigurationINTEL");
   extensions.vkQueueSetPerformanceConfigurationINTEL = (PFN_vkQueueSetPerformanceConfigurationINTEL)getInstanceProcAddr(instance,"vkQueueSetPerformanceConfigurationINTEL");
   extensions.vkGetPerformanceParameterINTEL = (PFN_vkGetPerformanceParameterINTEL)getInstanceProcAddr(instance,"vkGetPerformanceParameterINTEL");
   extensions.vkGetDeviceMemoryOpaqueCaptureAddressKHR = (PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR)getInstanceProcAddr(instance,"vkGetDeviceMemoryOpaqueCaptureAddressKHR");
   extensions.vkGetPipelineExecutablePropertiesKHR = (PFN_vkGetPipelineExecutablePropertiesKHR)getInstanceProcAddr(instance,"vkGetPipelineExecutablePropertiesKHR");
   extensions.vkGetPipelineExecutableStatisticsKHR = (PFN_vkGetPipelineExecutableStatisticsKHR)getInstanceProcAddr(instance,"vkGetPipelineExecutableStatisticsKHR");
   extensions.vkGetPipelineExecutableInternalRepresentationsKHR = (PFN_vkGetPipelineExecutableInternalRepresentationsKHR)getInstanceProcAddr(instance,"vkGetPipelineExecutableInternalRepresentationsKHR");
   extensions.vkCmdSetLineStippleKHR = (PFN_vkCmdSetLineStippleKHR)getInstanceProcAddr(instance,"vkCmdSetLineStippleKHR");
   extensions.vkCmdSetLineStippleEXT = (PFN_vkCmdSetLineStippleEXT)getInstanceProcAddr(instance,"vkCmdSetLineStippleEXT");
   extensions.vkGetPhysicalDeviceToolPropertiesEXT = (PFN_vkGetPhysicalDeviceToolPropertiesEXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceToolPropertiesEXT");
   extensions.vkCreateAccelerationStructureKHR = (PFN_vkCreateAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCreateAccelerationStructureKHR");
   extensions.vkCmdBuildAccelerationStructuresKHR = (PFN_vkCmdBuildAccelerationStructuresKHR)getInstanceProcAddr(instance,"vkCmdBuildAccelerationStructuresKHR");
   extensions.vkCmdBuildAccelerationStructuresIndirectKHR = (PFN_vkCmdBuildAccelerationStructuresIndirectKHR)getInstanceProcAddr(instance,"vkCmdBuildAccelerationStructuresIndirectKHR");
   extensions.vkBuildAccelerationStructuresKHR = (PFN_vkBuildAccelerationStructuresKHR)getInstanceProcAddr(instance,"vkBuildAccelerationStructuresKHR");
   extensions.vkGetAccelerationStructureDeviceAddressKHR = (PFN_vkGetAccelerationStructureDeviceAddressKHR)getInstanceProcAddr(instance,"vkGetAccelerationStructureDeviceAddressKHR");
   extensions.vkCreateDeferredOperationKHR = (PFN_vkCreateDeferredOperationKHR)getInstanceProcAddr(instance,"vkCreateDeferredOperationKHR");
   extensions.vkDestroyDeferredOperationKHR = (PFN_vkDestroyDeferredOperationKHR)getInstanceProcAddr(instance,"vkDestroyDeferredOperationKHR");
   extensions.vkGetDeferredOperationMaxConcurrencyKHR = (PFN_vkGetDeferredOperationMaxConcurrencyKHR)getInstanceProcAddr(instance,"vkGetDeferredOperationMaxConcurrencyKHR");
   extensions.vkGetDeferredOperationResultKHR = (PFN_vkGetDeferredOperationResultKHR)getInstanceProcAddr(instance,"vkGetDeferredOperationResultKHR");
   extensions.vkDeferredOperationJoinKHR = (PFN_vkDeferredOperationJoinKHR)getInstanceProcAddr(instance,"vkDeferredOperationJoinKHR");
   extensions.vkGetPipelineIndirectMemoryRequirementsNV = (PFN_vkGetPipelineIndirectMemoryRequirementsNV)getInstanceProcAddr(instance,"vkGetPipelineIndirectMemoryRequirementsNV");
   extensions.vkGetPipelineIndirectDeviceAddressNV = (PFN_vkGetPipelineIndirectDeviceAddressNV)getInstanceProcAddr(instance,"vkGetPipelineIndirectDeviceAddressNV");
   extensions.vkAntiLagUpdateAMD = (PFN_vkAntiLagUpdateAMD)getInstanceProcAddr(instance,"vkAntiLagUpdateAMD");
   extensions.vkCmdSetCullModeEXT = (PFN_vkCmdSetCullModeEXT)getInstanceProcAddr(instance,"vkCmdSetCullModeEXT");
   extensions.vkCmdSetFrontFaceEXT = (PFN_vkCmdSetFrontFaceEXT)getInstanceProcAddr(instance,"vkCmdSetFrontFaceEXT");
   extensions.vkCmdSetPrimitiveTopologyEXT = (PFN_vkCmdSetPrimitiveTopologyEXT)getInstanceProcAddr(instance,"vkCmdSetPrimitiveTopologyEXT");
   extensions.vkCmdSetViewportWithCountEXT = (PFN_vkCmdSetViewportWithCountEXT)getInstanceProcAddr(instance,"vkCmdSetViewportWithCountEXT");
   extensions.vkCmdSetScissorWithCountEXT = (PFN_vkCmdSetScissorWithCountEXT)getInstanceProcAddr(instance,"vkCmdSetScissorWithCountEXT");
   extensions.vkCmdBindIndexBuffer2KHR = (PFN_vkCmdBindIndexBuffer2KHR)getInstanceProcAddr(instance,"vkCmdBindIndexBuffer2KHR");
   extensions.vkCmdBindVertexBuffers2EXT = (PFN_vkCmdBindVertexBuffers2EXT)getInstanceProcAddr(instance,"vkCmdBindVertexBuffers2EXT");
   extensions.vkCmdSetDepthTestEnableEXT = (PFN_vkCmdSetDepthTestEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDepthTestEnableEXT");
   extensions.vkCmdSetDepthWriteEnableEXT = (PFN_vkCmdSetDepthWriteEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDepthWriteEnableEXT");
   extensions.vkCmdSetDepthCompareOpEXT = (PFN_vkCmdSetDepthCompareOpEXT)getInstanceProcAddr(instance,"vkCmdSetDepthCompareOpEXT");
   extensions.vkCmdSetDepthBoundsTestEnableEXT = (PFN_vkCmdSetDepthBoundsTestEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDepthBoundsTestEnableEXT");
   extensions.vkCmdSetStencilTestEnableEXT = (PFN_vkCmdSetStencilTestEnableEXT)getInstanceProcAddr(instance,"vkCmdSetStencilTestEnableEXT");
   extensions.vkCmdSetStencilOpEXT = (PFN_vkCmdSetStencilOpEXT)getInstanceProcAddr(instance,"vkCmdSetStencilOpEXT");
   extensions.vkCmdSetPatchControlPointsEXT = (PFN_vkCmdSetPatchControlPointsEXT)getInstanceProcAddr(instance,"vkCmdSetPatchControlPointsEXT");
   extensions.vkCmdSetRasterizerDiscardEnableEXT = (PFN_vkCmdSetRasterizerDiscardEnableEXT)getInstanceProcAddr(instance,"vkCmdSetRasterizerDiscardEnableEXT");
   extensions.vkCmdSetDepthBiasEnableEXT = (PFN_vkCmdSetDepthBiasEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDepthBiasEnableEXT");
   extensions.vkCmdSetLogicOpEXT = (PFN_vkCmdSetLogicOpEXT)getInstanceProcAddr(instance,"vkCmdSetLogicOpEXT");
   extensions.vkCmdSetPrimitiveRestartEnableEXT = (PFN_vkCmdSetPrimitiveRestartEnableEXT)getInstanceProcAddr(instance,"vkCmdSetPrimitiveRestartEnableEXT");
   extensions.vkCmdSetTessellationDomainOriginEXT = (PFN_vkCmdSetTessellationDomainOriginEXT)getInstanceProcAddr(instance,"vkCmdSetTessellationDomainOriginEXT");
   extensions.vkCmdSetDepthClampEnableEXT = (PFN_vkCmdSetDepthClampEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDepthClampEnableEXT");
   extensions.vkCmdSetPolygonModeEXT = (PFN_vkCmdSetPolygonModeEXT)getInstanceProcAddr(instance,"vkCmdSetPolygonModeEXT");
   extensions.vkCmdSetRasterizationSamplesEXT = (PFN_vkCmdSetRasterizationSamplesEXT)getInstanceProcAddr(instance,"vkCmdSetRasterizationSamplesEXT");
   extensions.vkCmdSetSampleMaskEXT = (PFN_vkCmdSetSampleMaskEXT)getInstanceProcAddr(instance,"vkCmdSetSampleMaskEXT");
   extensions.vkCmdSetAlphaToCoverageEnableEXT = (PFN_vkCmdSetAlphaToCoverageEnableEXT)getInstanceProcAddr(instance,"vkCmdSetAlphaToCoverageEnableEXT");
   extensions.vkCmdSetAlphaToOneEnableEXT = (PFN_vkCmdSetAlphaToOneEnableEXT)getInstanceProcAddr(instance,"vkCmdSetAlphaToOneEnableEXT");
   extensions.vkCmdSetLogicOpEnableEXT = (PFN_vkCmdSetLogicOpEnableEXT)getInstanceProcAddr(instance,"vkCmdSetLogicOpEnableEXT");
   extensions.vkCmdSetColorBlendEnableEXT = (PFN_vkCmdSetColorBlendEnableEXT)getInstanceProcAddr(instance,"vkCmdSetColorBlendEnableEXT");
   extensions.vkCmdSetColorBlendEquationEXT = (PFN_vkCmdSetColorBlendEquationEXT)getInstanceProcAddr(instance,"vkCmdSetColorBlendEquationEXT");
   extensions.vkCmdSetColorWriteMaskEXT = (PFN_vkCmdSetColorWriteMaskEXT)getInstanceProcAddr(instance,"vkCmdSetColorWriteMaskEXT");
   extensions.vkCmdSetRasterizationStreamEXT = (PFN_vkCmdSetRasterizationStreamEXT)getInstanceProcAddr(instance,"vkCmdSetRasterizationStreamEXT");
   extensions.vkCmdSetConservativeRasterizationModeEXT = (PFN_vkCmdSetConservativeRasterizationModeEXT)getInstanceProcAddr(instance,"vkCmdSetConservativeRasterizationModeEXT");
   extensions.vkCmdSetExtraPrimitiveOverestimationSizeEXT = (PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT)getInstanceProcAddr(instance,"vkCmdSetExtraPrimitiveOverestimationSizeEXT");
   extensions.vkCmdSetDepthClipEnableEXT = (PFN_vkCmdSetDepthClipEnableEXT)getInstanceProcAddr(instance,"vkCmdSetDepthClipEnableEXT");
   extensions.vkCmdSetSampleLocationsEnableEXT = (PFN_vkCmdSetSampleLocationsEnableEXT)getInstanceProcAddr(instance,"vkCmdSetSampleLocationsEnableEXT");
   extensions.vkCmdSetColorBlendAdvancedEXT = (PFN_vkCmdSetColorBlendAdvancedEXT)getInstanceProcAddr(instance,"vkCmdSetColorBlendAdvancedEXT");
   extensions.vkCmdSetProvokingVertexModeEXT = (PFN_vkCmdSetProvokingVertexModeEXT)getInstanceProcAddr(instance,"vkCmdSetProvokingVertexModeEXT");
   extensions.vkCmdSetLineStippleEnableEXT = (PFN_vkCmdSetLineStippleEnableEXT)getInstanceProcAddr(instance,"vkCmdSetLineStippleEnableEXT");
   extensions.vkCmdSetDepthClipNegativeOneToOneEXT = (PFN_vkCmdSetDepthClipNegativeOneToOneEXT)getInstanceProcAddr(instance,"vkCmdSetDepthClipNegativeOneToOneEXT");
   extensions.vkCmdSetViewportWScalingEnableNV = (PFN_vkCmdSetViewportWScalingEnableNV)getInstanceProcAddr(instance,"vkCmdSetViewportWScalingEnableNV");
   extensions.vkCmdSetViewportSwizzleNV = (PFN_vkCmdSetViewportSwizzleNV)getInstanceProcAddr(instance,"vkCmdSetViewportSwizzleNV");
   extensions.vkCmdSetCoverageToColorEnableNV = (PFN_vkCmdSetCoverageToColorEnableNV)getInstanceProcAddr(instance,"vkCmdSetCoverageToColorEnableNV");
   extensions.vkCmdSetCoverageToColorLocationNV = (PFN_vkCmdSetCoverageToColorLocationNV)getInstanceProcAddr(instance,"vkCmdSetCoverageToColorLocationNV");
   extensions.vkCmdSetCoverageModulationModeNV = (PFN_vkCmdSetCoverageModulationModeNV)getInstanceProcAddr(instance,"vkCmdSetCoverageModulationModeNV");
   extensions.vkCmdSetCoverageModulationTableEnableNV = (PFN_vkCmdSetCoverageModulationTableEnableNV)getInstanceProcAddr(instance,"vkCmdSetCoverageModulationTableEnableNV");
   extensions.vkCmdSetCoverageModulationTableNV = (PFN_vkCmdSetCoverageModulationTableNV)getInstanceProcAddr(instance,"vkCmdSetCoverageModulationTableNV");
   extensions.vkCmdSetShadingRateImageEnableNV = (PFN_vkCmdSetShadingRateImageEnableNV)getInstanceProcAddr(instance,"vkCmdSetShadingRateImageEnableNV");
   extensions.vkCmdSetCoverageReductionModeNV = (PFN_vkCmdSetCoverageReductionModeNV)getInstanceProcAddr(instance,"vkCmdSetCoverageReductionModeNV");
   extensions.vkCmdSetRepresentativeFragmentTestEnableNV = (PFN_vkCmdSetRepresentativeFragmentTestEnableNV)getInstanceProcAddr(instance,"vkCmdSetRepresentativeFragmentTestEnableNV");
   extensions.vkCreatePrivateDataSlotEXT = (PFN_vkCreatePrivateDataSlotEXT)getInstanceProcAddr(instance,"vkCreatePrivateDataSlotEXT");
   extensions.vkDestroyPrivateDataSlotEXT = (PFN_vkDestroyPrivateDataSlotEXT)getInstanceProcAddr(instance,"vkDestroyPrivateDataSlotEXT");
   extensions.vkSetPrivateDataEXT = (PFN_vkSetPrivateDataEXT)getInstanceProcAddr(instance,"vkSetPrivateDataEXT");
   extensions.vkGetPrivateDataEXT = (PFN_vkGetPrivateDataEXT)getInstanceProcAddr(instance,"vkGetPrivateDataEXT");
   extensions.vkCmdCopyBuffer2KHR = (PFN_vkCmdCopyBuffer2KHR)getInstanceProcAddr(instance,"vkCmdCopyBuffer2KHR");
   extensions.vkCmdCopyImage2KHR = (PFN_vkCmdCopyImage2KHR)getInstanceProcAddr(instance,"vkCmdCopyImage2KHR");
   extensions.vkCmdBlitImage2KHR = (PFN_vkCmdBlitImage2KHR)getInstanceProcAddr(instance,"vkCmdBlitImage2KHR");
   extensions.vkCmdCopyBufferToImage2KHR = (PFN_vkCmdCopyBufferToImage2KHR)getInstanceProcAddr(instance,"vkCmdCopyBufferToImage2KHR");
   extensions.vkCmdCopyImageToBuffer2KHR = (PFN_vkCmdCopyImageToBuffer2KHR)getInstanceProcAddr(instance,"vkCmdCopyImageToBuffer2KHR");
   extensions.vkCmdResolveImage2KHR = (PFN_vkCmdResolveImage2KHR)getInstanceProcAddr(instance,"vkCmdResolveImage2KHR");
   extensions.vkCmdSetFragmentShadingRateKHR = (PFN_vkCmdSetFragmentShadingRateKHR)getInstanceProcAddr(instance,"vkCmdSetFragmentShadingRateKHR");
   extensions.vkGetPhysicalDeviceFragmentShadingRatesKHR = (PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceFragmentShadingRatesKHR");
   extensions.vkCmdSetFragmentShadingRateEnumNV = (PFN_vkCmdSetFragmentShadingRateEnumNV)getInstanceProcAddr(instance,"vkCmdSetFragmentShadingRateEnumNV");
   extensions.vkGetAccelerationStructureBuildSizesKHR = (PFN_vkGetAccelerationStructureBuildSizesKHR)getInstanceProcAddr(instance,"vkGetAccelerationStructureBuildSizesKHR");
   extensions.vkCmdSetVertexInputEXT = (PFN_vkCmdSetVertexInputEXT)getInstanceProcAddr(instance,"vkCmdSetVertexInputEXT");
   extensions.vkCmdSetColorWriteEnableEXT = (PFN_vkCmdSetColorWriteEnableEXT)getInstanceProcAddr(instance,"vkCmdSetColorWriteEnableEXT");
   extensions.vkCmdSetEvent2KHR = (PFN_vkCmdSetEvent2KHR)getInstanceProcAddr(instance,"vkCmdSetEvent2KHR");
   extensions.vkCmdResetEvent2KHR = (PFN_vkCmdResetEvent2KHR)getInstanceProcAddr(instance,"vkCmdResetEvent2KHR");
   extensions.vkCmdWaitEvents2KHR = (PFN_vkCmdWaitEvents2KHR)getInstanceProcAddr(instance,"vkCmdWaitEvents2KHR");
   extensions.vkCmdPipelineBarrier2KHR = (PFN_vkCmdPipelineBarrier2KHR)getInstanceProcAddr(instance,"vkCmdPipelineBarrier2KHR");
   extensions.vkQueueSubmit2KHR = (PFN_vkQueueSubmit2KHR)getInstanceProcAddr(instance,"vkQueueSubmit2KHR");
   extensions.vkCmdWriteTimestamp2KHR = (PFN_vkCmdWriteTimestamp2KHR)getInstanceProcAddr(instance,"vkCmdWriteTimestamp2KHR");
   extensions.vkCmdWriteBufferMarker2AMD = (PFN_vkCmdWriteBufferMarker2AMD)getInstanceProcAddr(instance,"vkCmdWriteBufferMarker2AMD");
   extensions.vkGetQueueCheckpointData2NV = (PFN_vkGetQueueCheckpointData2NV)getInstanceProcAddr(instance,"vkGetQueueCheckpointData2NV");
   extensions.vkCopyMemoryToImageEXT = (PFN_vkCopyMemoryToImageEXT)getInstanceProcAddr(instance,"vkCopyMemoryToImageEXT");
   extensions.vkCopyImageToMemoryEXT = (PFN_vkCopyImageToMemoryEXT)getInstanceProcAddr(instance,"vkCopyImageToMemoryEXT");
   extensions.vkCopyImageToImageEXT = (PFN_vkCopyImageToImageEXT)getInstanceProcAddr(instance,"vkCopyImageToImageEXT");
   extensions.vkTransitionImageLayoutEXT = (PFN_vkTransitionImageLayoutEXT)getInstanceProcAddr(instance,"vkTransitionImageLayoutEXT");
   extensions.vkGetPhysicalDeviceVideoCapabilitiesKHR = (PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceVideoCapabilitiesKHR");
   extensions.vkGetPhysicalDeviceVideoFormatPropertiesKHR = (PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceVideoFormatPropertiesKHR");
   extensions.vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR = (PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR");
   extensions.vkCreateVideoSessionKHR = (PFN_vkCreateVideoSessionKHR)getInstanceProcAddr(instance,"vkCreateVideoSessionKHR");
   extensions.vkDestroyVideoSessionKHR = (PFN_vkDestroyVideoSessionKHR)getInstanceProcAddr(instance,"vkDestroyVideoSessionKHR");
   extensions.vkCreateVideoSessionParametersKHR = (PFN_vkCreateVideoSessionParametersKHR)getInstanceProcAddr(instance,"vkCreateVideoSessionParametersKHR");
   extensions.vkUpdateVideoSessionParametersKHR = (PFN_vkUpdateVideoSessionParametersKHR)getInstanceProcAddr(instance,"vkUpdateVideoSessionParametersKHR");
   extensions.vkGetEncodedVideoSessionParametersKHR = (PFN_vkGetEncodedVideoSessionParametersKHR)getInstanceProcAddr(instance,"vkGetEncodedVideoSessionParametersKHR");
   extensions.vkDestroyVideoSessionParametersKHR = (PFN_vkDestroyVideoSessionParametersKHR)getInstanceProcAddr(instance,"vkDestroyVideoSessionParametersKHR");
   extensions.vkGetVideoSessionMemoryRequirementsKHR = (PFN_vkGetVideoSessionMemoryRequirementsKHR)getInstanceProcAddr(instance,"vkGetVideoSessionMemoryRequirementsKHR");
   extensions.vkBindVideoSessionMemoryKHR = (PFN_vkBindVideoSessionMemoryKHR)getInstanceProcAddr(instance,"vkBindVideoSessionMemoryKHR");
   extensions.vkCmdDecodeVideoKHR = (PFN_vkCmdDecodeVideoKHR)getInstanceProcAddr(instance,"vkCmdDecodeVideoKHR");
   extensions.vkCmdBeginVideoCodingKHR = (PFN_vkCmdBeginVideoCodingKHR)getInstanceProcAddr(instance,"vkCmdBeginVideoCodingKHR");
   extensions.vkCmdControlVideoCodingKHR = (PFN_vkCmdControlVideoCodingKHR)getInstanceProcAddr(instance,"vkCmdControlVideoCodingKHR");
   extensions.vkCmdEndVideoCodingKHR = (PFN_vkCmdEndVideoCodingKHR)getInstanceProcAddr(instance,"vkCmdEndVideoCodingKHR");
   extensions.vkCmdEncodeVideoKHR = (PFN_vkCmdEncodeVideoKHR)getInstanceProcAddr(instance,"vkCmdEncodeVideoKHR");
   extensions.vkCmdDecompressMemoryIndirectCountNV = (PFN_vkCmdDecompressMemoryIndirectCountNV)getInstanceProcAddr(instance,"vkCmdDecompressMemoryIndirectCountNV");
   extensions.vkGetPartitionedAccelerationStructuresBuildSizesNV = (PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV)getInstanceProcAddr(instance,"vkGetPartitionedAccelerationStructuresBuildSizesNV");
   extensions.vkCmdBuildPartitionedAccelerationStructuresNV = (PFN_vkCmdBuildPartitionedAccelerationStructuresNV)getInstanceProcAddr(instance,"vkCmdBuildPartitionedAccelerationStructuresNV");
   extensions.vkCmdDecompressMemoryEXT = (PFN_vkCmdDecompressMemoryEXT)getInstanceProcAddr(instance,"vkCmdDecompressMemoryEXT");
   extensions.vkCmdDecompressMemoryIndirectCountEXT = (PFN_vkCmdDecompressMemoryIndirectCountEXT)getInstanceProcAddr(instance,"vkCmdDecompressMemoryIndirectCountEXT");
   extensions.vkCreateCuModuleNVX = (PFN_vkCreateCuModuleNVX)getInstanceProcAddr(instance,"vkCreateCuModuleNVX");
   extensions.vkCreateCuFunctionNVX = (PFN_vkCreateCuFunctionNVX)getInstanceProcAddr(instance,"vkCreateCuFunctionNVX");
   extensions.vkDestroyCuModuleNVX = (PFN_vkDestroyCuModuleNVX)getInstanceProcAddr(instance,"vkDestroyCuModuleNVX");
   extensions.vkDestroyCuFunctionNVX = (PFN_vkDestroyCuFunctionNVX)getInstanceProcAddr(instance,"vkDestroyCuFunctionNVX");
   extensions.vkCmdCuLaunchKernelNVX = (PFN_vkCmdCuLaunchKernelNVX)getInstanceProcAddr(instance,"vkCmdCuLaunchKernelNVX");
   extensions.vkGetDescriptorSetLayoutSizeEXT = (PFN_vkGetDescriptorSetLayoutSizeEXT)getInstanceProcAddr(instance,"vkGetDescriptorSetLayoutSizeEXT");
   extensions.vkGetDescriptorSetLayoutBindingOffsetEXT = (PFN_vkGetDescriptorSetLayoutBindingOffsetEXT)getInstanceProcAddr(instance,"vkGetDescriptorSetLayoutBindingOffsetEXT");
   extensions.vkGetDescriptorEXT = (PFN_vkGetDescriptorEXT)getInstanceProcAddr(instance,"vkGetDescriptorEXT");
   extensions.vkCmdBindDescriptorBuffersEXT = (PFN_vkCmdBindDescriptorBuffersEXT)getInstanceProcAddr(instance,"vkCmdBindDescriptorBuffersEXT");
   extensions.vkCmdSetDescriptorBufferOffsetsEXT = (PFN_vkCmdSetDescriptorBufferOffsetsEXT)getInstanceProcAddr(instance,"vkCmdSetDescriptorBufferOffsetsEXT");
   extensions.vkCmdBindDescriptorBufferEmbeddedSamplersEXT = (PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT)getInstanceProcAddr(instance,"vkCmdBindDescriptorBufferEmbeddedSamplersEXT");
   extensions.vkGetBufferOpaqueCaptureDescriptorDataEXT = (PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance,"vkGetBufferOpaqueCaptureDescriptorDataEXT");
   extensions.vkGetImageOpaqueCaptureDescriptorDataEXT = (PFN_vkGetImageOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance,"vkGetImageOpaqueCaptureDescriptorDataEXT");
   extensions.vkGetImageViewOpaqueCaptureDescriptorDataEXT = (PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance,"vkGetImageViewOpaqueCaptureDescriptorDataEXT");
   extensions.vkGetSamplerOpaqueCaptureDescriptorDataEXT = (PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance,"vkGetSamplerOpaqueCaptureDescriptorDataEXT");
   extensions.vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = (PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance,"vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT");
   extensions.vkSetDeviceMemoryPriorityEXT = (PFN_vkSetDeviceMemoryPriorityEXT)getInstanceProcAddr(instance,"vkSetDeviceMemoryPriorityEXT");
   extensions.vkAcquireDrmDisplayEXT = (PFN_vkAcquireDrmDisplayEXT)getInstanceProcAddr(instance,"vkAcquireDrmDisplayEXT");
   extensions.vkGetDrmDisplayEXT = (PFN_vkGetDrmDisplayEXT)getInstanceProcAddr(instance,"vkGetDrmDisplayEXT");
   extensions.vkWaitForPresent2KHR = (PFN_vkWaitForPresent2KHR)getInstanceProcAddr(instance,"vkWaitForPresent2KHR");
   extensions.vkWaitForPresentKHR = (PFN_vkWaitForPresentKHR)getInstanceProcAddr(instance,"vkWaitForPresentKHR");
   extensions.vkCreateCudaModuleNV = (PFN_vkCreateCudaModuleNV)getInstanceProcAddr(instance,"vkCreateCudaModuleNV");
   extensions.vkGetCudaModuleCacheNV = (PFN_vkGetCudaModuleCacheNV)getInstanceProcAddr(instance,"vkGetCudaModuleCacheNV");
   extensions.vkCreateCudaFunctionNV = (PFN_vkCreateCudaFunctionNV)getInstanceProcAddr(instance,"vkCreateCudaFunctionNV");
   extensions.vkDestroyCudaModuleNV = (PFN_vkDestroyCudaModuleNV)getInstanceProcAddr(instance,"vkDestroyCudaModuleNV");
   extensions.vkDestroyCudaFunctionNV = (PFN_vkDestroyCudaFunctionNV)getInstanceProcAddr(instance,"vkDestroyCudaFunctionNV");
   extensions.vkCmdCudaLaunchKernelNV = (PFN_vkCmdCudaLaunchKernelNV)getInstanceProcAddr(instance,"vkCmdCudaLaunchKernelNV");
   extensions.vkCmdBeginRenderingKHR = (PFN_vkCmdBeginRenderingKHR)getInstanceProcAddr(instance,"vkCmdBeginRenderingKHR");
   extensions.vkCmdEndRendering2KHR = (PFN_vkCmdEndRendering2KHR)getInstanceProcAddr(instance,"vkCmdEndRendering2KHR");
   extensions.vkCmdEndRendering2EXT = (PFN_vkCmdEndRendering2EXT)getInstanceProcAddr(instance,"vkCmdEndRendering2EXT");
   extensions.vkCmdEndRenderingKHR = (PFN_vkCmdEndRenderingKHR)getInstanceProcAddr(instance,"vkCmdEndRenderingKHR");
   extensions.vkGetDescriptorSetLayoutHostMappingInfoVALVE = (PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE)getInstanceProcAddr(instance,"vkGetDescriptorSetLayoutHostMappingInfoVALVE");
   extensions.vkGetDescriptorSetHostMappingVALVE = (PFN_vkGetDescriptorSetHostMappingVALVE)getInstanceProcAddr(instance,"vkGetDescriptorSetHostMappingVALVE");
   extensions.vkCreateMicromapEXT = (PFN_vkCreateMicromapEXT)getInstanceProcAddr(instance,"vkCreateMicromapEXT");
   extensions.vkCmdBuildMicromapsEXT = (PFN_vkCmdBuildMicromapsEXT)getInstanceProcAddr(instance,"vkCmdBuildMicromapsEXT");
   extensions.vkBuildMicromapsEXT = (PFN_vkBuildMicromapsEXT)getInstanceProcAddr(instance,"vkBuildMicromapsEXT");
   extensions.vkDestroyMicromapEXT = (PFN_vkDestroyMicromapEXT)getInstanceProcAddr(instance,"vkDestroyMicromapEXT");
   extensions.vkCmdCopyMicromapEXT = (PFN_vkCmdCopyMicromapEXT)getInstanceProcAddr(instance,"vkCmdCopyMicromapEXT");
   extensions.vkCopyMicromapEXT = (PFN_vkCopyMicromapEXT)getInstanceProcAddr(instance,"vkCopyMicromapEXT");
   extensions.vkCmdCopyMicromapToMemoryEXT = (PFN_vkCmdCopyMicromapToMemoryEXT)getInstanceProcAddr(instance,"vkCmdCopyMicromapToMemoryEXT");
   extensions.vkCopyMicromapToMemoryEXT = (PFN_vkCopyMicromapToMemoryEXT)getInstanceProcAddr(instance,"vkCopyMicromapToMemoryEXT");
   extensions.vkCmdCopyMemoryToMicromapEXT = (PFN_vkCmdCopyMemoryToMicromapEXT)getInstanceProcAddr(instance,"vkCmdCopyMemoryToMicromapEXT");
   extensions.vkCopyMemoryToMicromapEXT = (PFN_vkCopyMemoryToMicromapEXT)getInstanceProcAddr(instance,"vkCopyMemoryToMicromapEXT");
   extensions.vkCmdWriteMicromapsPropertiesEXT = (PFN_vkCmdWriteMicromapsPropertiesEXT)getInstanceProcAddr(instance,"vkCmdWriteMicromapsPropertiesEXT");
   extensions.vkWriteMicromapsPropertiesEXT = (PFN_vkWriteMicromapsPropertiesEXT)getInstanceProcAddr(instance,"vkWriteMicromapsPropertiesEXT");
   extensions.vkGetDeviceMicromapCompatibilityEXT = (PFN_vkGetDeviceMicromapCompatibilityEXT)getInstanceProcAddr(instance,"vkGetDeviceMicromapCompatibilityEXT");
   extensions.vkGetMicromapBuildSizesEXT = (PFN_vkGetMicromapBuildSizesEXT)getInstanceProcAddr(instance,"vkGetMicromapBuildSizesEXT");
   extensions.vkGetShaderModuleIdentifierEXT = (PFN_vkGetShaderModuleIdentifierEXT)getInstanceProcAddr(instance,"vkGetShaderModuleIdentifierEXT");
   extensions.vkGetShaderModuleCreateInfoIdentifierEXT = (PFN_vkGetShaderModuleCreateInfoIdentifierEXT)getInstanceProcAddr(instance,"vkGetShaderModuleCreateInfoIdentifierEXT");
   extensions.vkGetImageSubresourceLayout2KHR = (PFN_vkGetImageSubresourceLayout2KHR)getInstanceProcAddr(instance,"vkGetImageSubresourceLayout2KHR");
   extensions.vkGetImageSubresourceLayout2EXT = (PFN_vkGetImageSubresourceLayout2EXT)getInstanceProcAddr(instance,"vkGetImageSubresourceLayout2EXT");
   extensions.vkGetPipelinePropertiesEXT = (PFN_vkGetPipelinePropertiesEXT)getInstanceProcAddr(instance,"vkGetPipelinePropertiesEXT");
   extensions.vkExportMetalObjectsEXT = (PFN_vkExportMetalObjectsEXT)getInstanceProcAddr(instance,"vkExportMetalObjectsEXT");
   extensions.vkCmdBindTileMemoryQCOM = (PFN_vkCmdBindTileMemoryQCOM)getInstanceProcAddr(instance,"vkCmdBindTileMemoryQCOM");
   extensions.vkGetFramebufferTilePropertiesQCOM = (PFN_vkGetFramebufferTilePropertiesQCOM)getInstanceProcAddr(instance,"vkGetFramebufferTilePropertiesQCOM");
   extensions.vkGetDynamicRenderingTilePropertiesQCOM = (PFN_vkGetDynamicRenderingTilePropertiesQCOM)getInstanceProcAddr(instance,"vkGetDynamicRenderingTilePropertiesQCOM");
   extensions.vkGetPhysicalDeviceOpticalFlowImageFormatsNV = (PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV)getInstanceProcAddr(instance,"vkGetPhysicalDeviceOpticalFlowImageFormatsNV");
   extensions.vkCreateOpticalFlowSessionNV = (PFN_vkCreateOpticalFlowSessionNV)getInstanceProcAddr(instance,"vkCreateOpticalFlowSessionNV");
   extensions.vkDestroyOpticalFlowSessionNV = (PFN_vkDestroyOpticalFlowSessionNV)getInstanceProcAddr(instance,"vkDestroyOpticalFlowSessionNV");
   extensions.vkBindOpticalFlowSessionImageNV = (PFN_vkBindOpticalFlowSessionImageNV)getInstanceProcAddr(instance,"vkBindOpticalFlowSessionImageNV");
   extensions.vkCmdOpticalFlowExecuteNV = (PFN_vkCmdOpticalFlowExecuteNV)getInstanceProcAddr(instance,"vkCmdOpticalFlowExecuteNV");
   extensions.vkGetDeviceFaultInfoEXT = (PFN_vkGetDeviceFaultInfoEXT)getInstanceProcAddr(instance,"vkGetDeviceFaultInfoEXT");
   extensions.vkGetDeviceFaultReportsKHR = (PFN_vkGetDeviceFaultReportsKHR)getInstanceProcAddr(instance,"vkGetDeviceFaultReportsKHR");
   extensions.vkGetDeviceFaultDebugInfoKHR = (PFN_vkGetDeviceFaultDebugInfoKHR)getInstanceProcAddr(instance,"vkGetDeviceFaultDebugInfoKHR");
   extensions.vkCmdSetDepthBias2EXT = (PFN_vkCmdSetDepthBias2EXT)getInstanceProcAddr(instance,"vkCmdSetDepthBias2EXT");
   extensions.vkReleaseSwapchainImagesKHR = (PFN_vkReleaseSwapchainImagesKHR)getInstanceProcAddr(instance,"vkReleaseSwapchainImagesKHR");
   extensions.vkReleaseSwapchainImagesEXT = (PFN_vkReleaseSwapchainImagesEXT)getInstanceProcAddr(instance,"vkReleaseSwapchainImagesEXT");
   extensions.vkGetDeviceImageSubresourceLayoutKHR = (PFN_vkGetDeviceImageSubresourceLayoutKHR)getInstanceProcAddr(instance,"vkGetDeviceImageSubresourceLayoutKHR");
   extensions.vkMapMemory2KHR = (PFN_vkMapMemory2KHR)getInstanceProcAddr(instance,"vkMapMemory2KHR");
   extensions.vkUnmapMemory2KHR = (PFN_vkUnmapMemory2KHR)getInstanceProcAddr(instance,"vkUnmapMemory2KHR");
   extensions.vkCreateShadersEXT = (PFN_vkCreateShadersEXT)getInstanceProcAddr(instance,"vkCreateShadersEXT");
   extensions.vkDestroyShaderEXT = (PFN_vkDestroyShaderEXT)getInstanceProcAddr(instance,"vkDestroyShaderEXT");
   extensions.vkGetShaderBinaryDataEXT = (PFN_vkGetShaderBinaryDataEXT)getInstanceProcAddr(instance,"vkGetShaderBinaryDataEXT");
   extensions.vkCmdBindShadersEXT = (PFN_vkCmdBindShadersEXT)getInstanceProcAddr(instance,"vkCmdBindShadersEXT");
   extensions.vkSetSwapchainPresentTimingQueueSizeEXT = (PFN_vkSetSwapchainPresentTimingQueueSizeEXT)getInstanceProcAddr(instance,"vkSetSwapchainPresentTimingQueueSizeEXT");
   extensions.vkGetSwapchainTimingPropertiesEXT = (PFN_vkGetSwapchainTimingPropertiesEXT)getInstanceProcAddr(instance,"vkGetSwapchainTimingPropertiesEXT");
   extensions.vkGetSwapchainTimeDomainPropertiesEXT = (PFN_vkGetSwapchainTimeDomainPropertiesEXT)getInstanceProcAddr(instance,"vkGetSwapchainTimeDomainPropertiesEXT");
   extensions.vkGetPastPresentationTimingEXT = (PFN_vkGetPastPresentationTimingEXT)getInstanceProcAddr(instance,"vkGetPastPresentationTimingEXT");
   extensions.vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR = (PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR");
   extensions.vkGetExecutionGraphPipelineScratchSizeAMDX = (PFN_vkGetExecutionGraphPipelineScratchSizeAMDX)getInstanceProcAddr(instance,"vkGetExecutionGraphPipelineScratchSizeAMDX");
   extensions.vkGetExecutionGraphPipelineNodeIndexAMDX = (PFN_vkGetExecutionGraphPipelineNodeIndexAMDX)getInstanceProcAddr(instance,"vkGetExecutionGraphPipelineNodeIndexAMDX");
   extensions.vkCreateExecutionGraphPipelinesAMDX = (PFN_vkCreateExecutionGraphPipelinesAMDX)getInstanceProcAddr(instance,"vkCreateExecutionGraphPipelinesAMDX");
   extensions.vkCmdInitializeGraphScratchMemoryAMDX = (PFN_vkCmdInitializeGraphScratchMemoryAMDX)getInstanceProcAddr(instance,"vkCmdInitializeGraphScratchMemoryAMDX");
   extensions.vkCmdDispatchGraphAMDX = (PFN_vkCmdDispatchGraphAMDX)getInstanceProcAddr(instance,"vkCmdDispatchGraphAMDX");
   extensions.vkCmdDispatchGraphIndirectAMDX = (PFN_vkCmdDispatchGraphIndirectAMDX)getInstanceProcAddr(instance,"vkCmdDispatchGraphIndirectAMDX");
   extensions.vkCmdDispatchGraphIndirectCountAMDX = (PFN_vkCmdDispatchGraphIndirectCountAMDX)getInstanceProcAddr(instance,"vkCmdDispatchGraphIndirectCountAMDX");
   extensions.vkCmdBindDescriptorSets2KHR = (PFN_vkCmdBindDescriptorSets2KHR)getInstanceProcAddr(instance,"vkCmdBindDescriptorSets2KHR");
   extensions.vkCmdPushConstants2KHR = (PFN_vkCmdPushConstants2KHR)getInstanceProcAddr(instance,"vkCmdPushConstants2KHR");
   extensions.vkCmdPushDescriptorSet2KHR = (PFN_vkCmdPushDescriptorSet2KHR)getInstanceProcAddr(instance,"vkCmdPushDescriptorSet2KHR");
   extensions.vkCmdPushDescriptorSetWithTemplate2KHR = (PFN_vkCmdPushDescriptorSetWithTemplate2KHR)getInstanceProcAddr(instance,"vkCmdPushDescriptorSetWithTemplate2KHR");
   extensions.vkCmdSetDescriptorBufferOffsets2EXT = (PFN_vkCmdSetDescriptorBufferOffsets2EXT)getInstanceProcAddr(instance,"vkCmdSetDescriptorBufferOffsets2EXT");
   extensions.vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = (PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT)getInstanceProcAddr(instance,"vkCmdBindDescriptorBufferEmbeddedSamplers2EXT");
   extensions.vkSetLatencySleepModeNV = (PFN_vkSetLatencySleepModeNV)getInstanceProcAddr(instance,"vkSetLatencySleepModeNV");
   extensions.vkLatencySleepNV = (PFN_vkLatencySleepNV)getInstanceProcAddr(instance,"vkLatencySleepNV");
   extensions.vkSetLatencyMarkerNV = (PFN_vkSetLatencyMarkerNV)getInstanceProcAddr(instance,"vkSetLatencyMarkerNV");
   extensions.vkGetLatencyTimingsNV = (PFN_vkGetLatencyTimingsNV)getInstanceProcAddr(instance,"vkGetLatencyTimingsNV");
   extensions.vkQueueNotifyOutOfBandNV = (PFN_vkQueueNotifyOutOfBandNV)getInstanceProcAddr(instance,"vkQueueNotifyOutOfBandNV");
   extensions.vkCmdSetRenderingAttachmentLocationsKHR = (PFN_vkCmdSetRenderingAttachmentLocationsKHR)getInstanceProcAddr(instance,"vkCmdSetRenderingAttachmentLocationsKHR");
   extensions.vkCmdSetRenderingInputAttachmentIndicesKHR = (PFN_vkCmdSetRenderingInputAttachmentIndicesKHR)getInstanceProcAddr(instance,"vkCmdSetRenderingInputAttachmentIndicesKHR");
   extensions.vkCmdSetDepthClampRangeEXT = (PFN_vkCmdSetDepthClampRangeEXT)getInstanceProcAddr(instance,"vkCmdSetDepthClampRangeEXT");
   extensions.vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV = (PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV)getInstanceProcAddr(instance,"vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV");
   extensions.vkGetMemoryMetalHandleEXT = (PFN_vkGetMemoryMetalHandleEXT)getInstanceProcAddr(instance,"vkGetMemoryMetalHandleEXT");
   extensions.vkGetMemoryMetalHandlePropertiesEXT = (PFN_vkGetMemoryMetalHandlePropertiesEXT)getInstanceProcAddr(instance,"vkGetMemoryMetalHandlePropertiesEXT");
   extensions.vkGetPhysicalDeviceCooperativeVectorPropertiesNV = (PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV)getInstanceProcAddr(instance,"vkGetPhysicalDeviceCooperativeVectorPropertiesNV");
   extensions.vkConvertCooperativeVectorMatrixNV = (PFN_vkConvertCooperativeVectorMatrixNV)getInstanceProcAddr(instance,"vkConvertCooperativeVectorMatrixNV");
   extensions.vkCmdConvertCooperativeVectorMatrixNV = (PFN_vkCmdConvertCooperativeVectorMatrixNV)getInstanceProcAddr(instance,"vkCmdConvertCooperativeVectorMatrixNV");
   extensions.vkCmdDispatchTileQCOM = (PFN_vkCmdDispatchTileQCOM)getInstanceProcAddr(instance,"vkCmdDispatchTileQCOM");
   extensions.vkCmdBeginPerTileExecutionQCOM = (PFN_vkCmdBeginPerTileExecutionQCOM)getInstanceProcAddr(instance,"vkCmdBeginPerTileExecutionQCOM");
   extensions.vkCmdEndPerTileExecutionQCOM = (PFN_vkCmdEndPerTileExecutionQCOM)getInstanceProcAddr(instance,"vkCmdEndPerTileExecutionQCOM");
   extensions.vkCreateExternalComputeQueueNV = (PFN_vkCreateExternalComputeQueueNV)getInstanceProcAddr(instance,"vkCreateExternalComputeQueueNV");
   extensions.vkDestroyExternalComputeQueueNV = (PFN_vkDestroyExternalComputeQueueNV)getInstanceProcAddr(instance,"vkDestroyExternalComputeQueueNV");
   extensions.vkGetExternalComputeQueueDataNV = (PFN_vkGetExternalComputeQueueDataNV)getInstanceProcAddr(instance,"vkGetExternalComputeQueueDataNV");
   extensions.vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM = (PFN_vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM)getInstanceProcAddr(instance,"vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM");
   extensions.vkCreateShaderInstrumentationARM = (PFN_vkCreateShaderInstrumentationARM)getInstanceProcAddr(instance,"vkCreateShaderInstrumentationARM");
   extensions.vkDestroyShaderInstrumentationARM = (PFN_vkDestroyShaderInstrumentationARM)getInstanceProcAddr(instance,"vkDestroyShaderInstrumentationARM");
   extensions.vkCmdBeginShaderInstrumentationARM = (PFN_vkCmdBeginShaderInstrumentationARM)getInstanceProcAddr(instance,"vkCmdBeginShaderInstrumentationARM");
   extensions.vkCmdEndShaderInstrumentationARM = (PFN_vkCmdEndShaderInstrumentationARM)getInstanceProcAddr(instance,"vkCmdEndShaderInstrumentationARM");
   extensions.vkGetShaderInstrumentationValuesARM = (PFN_vkGetShaderInstrumentationValuesARM)getInstanceProcAddr(instance,"vkGetShaderInstrumentationValuesARM");
   extensions.vkClearShaderInstrumentationMetricsARM = (PFN_vkClearShaderInstrumentationMetricsARM)getInstanceProcAddr(instance,"vkClearShaderInstrumentationMetricsARM");
   extensions.vkCreateTensorARM = (PFN_vkCreateTensorARM)getInstanceProcAddr(instance,"vkCreateTensorARM");
   extensions.vkDestroyTensorARM = (PFN_vkDestroyTensorARM)getInstanceProcAddr(instance,"vkDestroyTensorARM");
   extensions.vkCreateTensorViewARM = (PFN_vkCreateTensorViewARM)getInstanceProcAddr(instance,"vkCreateTensorViewARM");
   extensions.vkDestroyTensorViewARM = (PFN_vkDestroyTensorViewARM)getInstanceProcAddr(instance,"vkDestroyTensorViewARM");
   extensions.vkGetTensorMemoryRequirementsARM = (PFN_vkGetTensorMemoryRequirementsARM)getInstanceProcAddr(instance,"vkGetTensorMemoryRequirementsARM");
   extensions.vkBindTensorMemoryARM = (PFN_vkBindTensorMemoryARM)getInstanceProcAddr(instance,"vkBindTensorMemoryARM");
   extensions.vkGetDeviceTensorMemoryRequirementsARM = (PFN_vkGetDeviceTensorMemoryRequirementsARM)getInstanceProcAddr(instance,"vkGetDeviceTensorMemoryRequirementsARM");
   extensions.vkCmdCopyTensorARM = (PFN_vkCmdCopyTensorARM)getInstanceProcAddr(instance,"vkCmdCopyTensorARM");
   extensions.vkGetTensorOpaqueCaptureDescriptorDataARM = (PFN_vkGetTensorOpaqueCaptureDescriptorDataARM)getInstanceProcAddr(instance,"vkGetTensorOpaqueCaptureDescriptorDataARM");
   extensions.vkGetTensorViewOpaqueCaptureDescriptorDataARM = (PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM)getInstanceProcAddr(instance,"vkGetTensorViewOpaqueCaptureDescriptorDataARM");
   extensions.vkGetPhysicalDeviceExternalTensorPropertiesARM = (PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM)getInstanceProcAddr(instance,"vkGetPhysicalDeviceExternalTensorPropertiesARM");
   extensions.vkCreateDataGraphPipelineSessionARM = (PFN_vkCreateDataGraphPipelineSessionARM)getInstanceProcAddr(instance,"vkCreateDataGraphPipelineSessionARM");
   extensions.vkGetDataGraphPipelineSessionBindPointRequirementsARM = (PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM)getInstanceProcAddr(instance,"vkGetDataGraphPipelineSessionBindPointRequirementsARM");
   extensions.vkGetDataGraphPipelineSessionMemoryRequirementsARM = (PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM)getInstanceProcAddr(instance,"vkGetDataGraphPipelineSessionMemoryRequirementsARM");
   extensions.vkBindDataGraphPipelineSessionMemoryARM = (PFN_vkBindDataGraphPipelineSessionMemoryARM)getInstanceProcAddr(instance,"vkBindDataGraphPipelineSessionMemoryARM");
   extensions.vkDestroyDataGraphPipelineSessionARM = (PFN_vkDestroyDataGraphPipelineSessionARM)getInstanceProcAddr(instance,"vkDestroyDataGraphPipelineSessionARM");
   extensions.vkCmdDispatchDataGraphARM = (PFN_vkCmdDispatchDataGraphARM)getInstanceProcAddr(instance,"vkCmdDispatchDataGraphARM");
   extensions.vkGetDataGraphPipelineAvailablePropertiesARM = (PFN_vkGetDataGraphPipelineAvailablePropertiesARM)getInstanceProcAddr(instance,"vkGetDataGraphPipelineAvailablePropertiesARM");
   extensions.vkGetDataGraphPipelinePropertiesARM = (PFN_vkGetDataGraphPipelinePropertiesARM)getInstanceProcAddr(instance,"vkGetDataGraphPipelinePropertiesARM");
   extensions.vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM = (PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM)getInstanceProcAddr(instance,"vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM");
   extensions.vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM = (PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM)getInstanceProcAddr(instance,"vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM");
   extensions.vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM = (PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM)getInstanceProcAddr(instance,"vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM");
   extensions.vkCmdSetComputeOccupancyPriorityNV = (PFN_vkCmdSetComputeOccupancyPriorityNV)getInstanceProcAddr(instance,"vkCmdSetComputeOccupancyPriorityNV");
   extensions.vkWriteSamplerDescriptorsEXT = (PFN_vkWriteSamplerDescriptorsEXT)getInstanceProcAddr(instance,"vkWriteSamplerDescriptorsEXT");
   extensions.vkWriteResourceDescriptorsEXT = (PFN_vkWriteResourceDescriptorsEXT)getInstanceProcAddr(instance,"vkWriteResourceDescriptorsEXT");
   extensions.vkCmdBindSamplerHeapEXT = (PFN_vkCmdBindSamplerHeapEXT)getInstanceProcAddr(instance,"vkCmdBindSamplerHeapEXT");
   extensions.vkCmdBindResourceHeapEXT = (PFN_vkCmdBindResourceHeapEXT)getInstanceProcAddr(instance,"vkCmdBindResourceHeapEXT");
   extensions.vkCmdPushDataEXT = (PFN_vkCmdPushDataEXT)getInstanceProcAddr(instance,"vkCmdPushDataEXT");
   extensions.vkRegisterCustomBorderColorEXT = (PFN_vkRegisterCustomBorderColorEXT)getInstanceProcAddr(instance,"vkRegisterCustomBorderColorEXT");
   extensions.vkUnregisterCustomBorderColorEXT = (PFN_vkUnregisterCustomBorderColorEXT)getInstanceProcAddr(instance,"vkUnregisterCustomBorderColorEXT");
   extensions.vkGetImageOpaqueCaptureDataEXT = (PFN_vkGetImageOpaqueCaptureDataEXT)getInstanceProcAddr(instance,"vkGetImageOpaqueCaptureDataEXT");
   extensions.vkGetPhysicalDeviceDescriptorSizeEXT = (PFN_vkGetPhysicalDeviceDescriptorSizeEXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDescriptorSizeEXT");
   extensions.vkGetTensorOpaqueCaptureDataARM = (PFN_vkGetTensorOpaqueCaptureDataARM)getInstanceProcAddr(instance,"vkGetTensorOpaqueCaptureDataARM");
   extensions.vkCmdCopyMemoryKHR = (PFN_vkCmdCopyMemoryKHR)getInstanceProcAddr(instance,"vkCmdCopyMemoryKHR");
   extensions.vkCmdCopyMemoryToImageKHR = (PFN_vkCmdCopyMemoryToImageKHR)getInstanceProcAddr(instance,"vkCmdCopyMemoryToImageKHR");
   extensions.vkCmdCopyImageToMemoryKHR = (PFN_vkCmdCopyImageToMemoryKHR)getInstanceProcAddr(instance,"vkCmdCopyImageToMemoryKHR");
   extensions.vkCmdUpdateMemoryKHR = (PFN_vkCmdUpdateMemoryKHR)getInstanceProcAddr(instance,"vkCmdUpdateMemoryKHR");
   extensions.vkCmdFillMemoryKHR = (PFN_vkCmdFillMemoryKHR)getInstanceProcAddr(instance,"vkCmdFillMemoryKHR");
   extensions.vkCmdCopyQueryPoolResultsToMemoryKHR = (PFN_vkCmdCopyQueryPoolResultsToMemoryKHR)getInstanceProcAddr(instance,"vkCmdCopyQueryPoolResultsToMemoryKHR");
   extensions.vkCmdBeginConditionalRendering2EXT = (PFN_vkCmdBeginConditionalRendering2EXT)getInstanceProcAddr(instance,"vkCmdBeginConditionalRendering2EXT");
   extensions.vkCmdBindTransformFeedbackBuffers2EXT = (PFN_vkCmdBindTransformFeedbackBuffers2EXT)getInstanceProcAddr(instance,"vkCmdBindTransformFeedbackBuffers2EXT");
   extensions.vkCmdBeginTransformFeedback2EXT = (PFN_vkCmdBeginTransformFeedback2EXT)getInstanceProcAddr(instance,"vkCmdBeginTransformFeedback2EXT");
   extensions.vkCmdEndTransformFeedback2EXT = (PFN_vkCmdEndTransformFeedback2EXT)getInstanceProcAddr(instance,"vkCmdEndTransformFeedback2EXT");
   extensions.vkCmdDrawIndirectByteCount2EXT = (PFN_vkCmdDrawIndirectByteCount2EXT)getInstanceProcAddr(instance,"vkCmdDrawIndirectByteCount2EXT");
   extensions.vkCmdBindIndexBuffer3KHR = (PFN_vkCmdBindIndexBuffer3KHR)getInstanceProcAddr(instance,"vkCmdBindIndexBuffer3KHR");
   extensions.vkCmdBindVertexBuffers3KHR = (PFN_vkCmdBindVertexBuffers3KHR)getInstanceProcAddr(instance,"vkCmdBindVertexBuffers3KHR");
   extensions.vkCmdDrawIndirect2KHR = (PFN_vkCmdDrawIndirect2KHR)getInstanceProcAddr(instance,"vkCmdDrawIndirect2KHR");
   extensions.vkCmdDrawIndexedIndirect2KHR = (PFN_vkCmdDrawIndexedIndirect2KHR)getInstanceProcAddr(instance,"vkCmdDrawIndexedIndirect2KHR");
   extensions.vkCmdDrawIndirectCount2KHR = (PFN_vkCmdDrawIndirectCount2KHR)getInstanceProcAddr(instance,"vkCmdDrawIndirectCount2KHR");
   extensions.vkCmdDrawIndexedIndirectCount2KHR = (PFN_vkCmdDrawIndexedIndirectCount2KHR)getInstanceProcAddr(instance,"vkCmdDrawIndexedIndirectCount2KHR");
   extensions.vkCmdDrawMeshTasksIndirect2EXT = (PFN_vkCmdDrawMeshTasksIndirect2EXT)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksIndirect2EXT");
   extensions.vkCmdDrawMeshTasksIndirectCount2EXT = (PFN_vkCmdDrawMeshTasksIndirectCount2EXT)getInstanceProcAddr(instance,"vkCmdDrawMeshTasksIndirectCount2EXT");
   extensions.vkCmdDispatchIndirect2KHR = (PFN_vkCmdDispatchIndirect2KHR)getInstanceProcAddr(instance,"vkCmdDispatchIndirect2KHR");
   extensions.vkCreateAccelerationStructure2KHR = (PFN_vkCreateAccelerationStructure2KHR)getInstanceProcAddr(instance,"vkCreateAccelerationStructure2KHR");
}

fn void resetQueryPoolEXT (Device device, QueryPool queryPool, uint firstQuery, uint queryCount) => extensions.vkResetQueryPoolEXT(device, queryPool, firstQuery, queryCount);
fn void destroyPipelineBinaryKHR (Device device, PipelineBinaryKHR pipelineBinary, AllocationCallbacks* pAllocator) => extensions.vkDestroyPipelineBinaryKHR(device, pipelineBinary, pAllocator);
fn void getRenderingAreaGranularityKHR (Device device, RenderingAreaInfo* pRenderingAreaInfo, Extent2D* pGranularity) => extensions.vkGetRenderingAreaGranularityKHR(device, pRenderingAreaInfo, pGranularity);
fn void cmdSetAttachmentFeedbackLoopEnableEXT (CommandBuffer commandBuffer, ImageAspectFlags aspectMask) => extensions.vkCmdSetAttachmentFeedbackLoopEnableEXT(commandBuffer, aspectMask);
fn void cmdDrawMultiEXT (CommandBuffer commandBuffer, uint drawCount, MultiDrawInfoEXT* pVertexInfo, uint instanceCount, uint firstInstance, uint stride) => extensions.vkCmdDrawMultiEXT(commandBuffer, drawCount, pVertexInfo, instanceCount, firstInstance, stride);
fn void cmdDrawMultiIndexedEXT (CommandBuffer commandBuffer, uint drawCount, MultiDrawIndexedInfoEXT* pIndexInfo, uint instanceCount, uint firstInstance, uint stride, int* pVertexOffset) => extensions.vkCmdDrawMultiIndexedEXT(commandBuffer, drawCount, pIndexInfo, instanceCount, firstInstance, stride, pVertexOffset);
fn void cmdSubpassShadingHUAWEI (CommandBuffer commandBuffer) => extensions.vkCmdSubpassShadingHUAWEI(commandBuffer);
fn void cmdDrawClusterHUAWEI (CommandBuffer commandBuffer, uint groupCountX, uint groupCountY, uint groupCountZ) => extensions.vkCmdDrawClusterHUAWEI(commandBuffer, groupCountX, groupCountY, groupCountZ);
fn void cmdDrawClusterIndirectHUAWEI (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset) => extensions.vkCmdDrawClusterIndirectHUAWEI(commandBuffer, buffer, offset);
fn void cmdUpdatePipelineIndirectBufferNV (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, Pipeline pipeline) => extensions.vkCmdUpdatePipelineIndirectBufferNV(commandBuffer, pipelineBindPoint, pipeline);
fn void cmdCopyMemoryIndirectNV (CommandBuffer commandBuffer, DeviceAddress copyBufferAddress, uint copyCount, uint stride) => extensions.vkCmdCopyMemoryIndirectNV(commandBuffer, copyBufferAddress, copyCount, stride);
fn void cmdCopyMemoryIndirectKHR (CommandBuffer commandBuffer, CopyMemoryIndirectInfoKHR* pCopyMemoryIndirectInfo) => extensions.vkCmdCopyMemoryIndirectKHR(commandBuffer, pCopyMemoryIndirectInfo);
fn void cmdCopyMemoryToImageIndirectNV (CommandBuffer commandBuffer, DeviceAddress copyBufferAddress, uint copyCount, uint stride, Image dstImage, ImageLayout dstImageLayout, ImageSubresourceLayers* pImageSubresources) => extensions.vkCmdCopyMemoryToImageIndirectNV(commandBuffer, copyBufferAddress, copyCount, stride, dstImage, dstImageLayout, pImageSubresources);
fn void cmdCopyMemoryToImageIndirectKHR (CommandBuffer commandBuffer, CopyMemoryToImageIndirectInfoKHR* pCopyMemoryToImageIndirectInfo) => extensions.vkCmdCopyMemoryToImageIndirectKHR(commandBuffer, pCopyMemoryToImageIndirectInfo);
fn void cmdBeginConditionalRenderingEXT (CommandBuffer commandBuffer, ConditionalRenderingBeginInfoEXT* pConditionalRenderingBegin) => extensions.vkCmdBeginConditionalRenderingEXT(commandBuffer, pConditionalRenderingBegin);
fn void cmdEndConditionalRenderingEXT (CommandBuffer commandBuffer) => extensions.vkCmdEndConditionalRenderingEXT(commandBuffer);
fn void cmdBeginCustomResolveEXT (CommandBuffer commandBuffer, BeginCustomResolveInfoEXT* pBeginCustomResolveInfo) => extensions.vkCmdBeginCustomResolveEXT(commandBuffer, pBeginCustomResolveInfo);
fn void destroySurfaceKHR (Instance instance, SurfaceKHR surface, AllocationCallbacks* pAllocator) => extensions.vkDestroySurfaceKHR(instance, surface, pAllocator);
fn void destroySwapchainKHR (Device device, SwapchainKHR swapchain, AllocationCallbacks* pAllocator) => extensions.vkDestroySwapchainKHR(device, swapchain, pAllocator);
fn uint getPhysicalDeviceWaylandPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Display* display) => extensions.vkGetPhysicalDeviceWaylandPresentationSupportKHR(physicalDevice, queueFamilyIndex, display);
fn uint getPhysicalDeviceWin32PresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex) => extensions.vkGetPhysicalDeviceWin32PresentationSupportKHR(physicalDevice, queueFamilyIndex);
fn uint getPhysicalDeviceXcbPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Connection* connection, Window visual_id) => extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR(physicalDevice, queueFamilyIndex, connection, visual_id);
fn void destroyDebugReportCallbackEXT (Instance instance, DebugReportCallbackEXT callback, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugReportCallbackEXT(instance, callback, pAllocator);
fn void debugReportMessageEXT (Instance instance, DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objectType, ulong object, usz location, int messageCode, char* pLayerPrefix, char* pMessage) => extensions.vkDebugReportMessageEXT(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage);
fn void cmdDebugMarkerBeginEXT (CommandBuffer commandBuffer, DebugMarkerMarkerInfoEXT* pMarkerInfo) => extensions.vkCmdDebugMarkerBeginEXT(commandBuffer, pMarkerInfo);
fn void cmdDebugMarkerEndEXT (CommandBuffer commandBuffer) => extensions.vkCmdDebugMarkerEndEXT(commandBuffer);
fn void cmdDebugMarkerInsertEXT (CommandBuffer commandBuffer, DebugMarkerMarkerInfoEXT* pMarkerInfo) => extensions.vkCmdDebugMarkerInsertEXT(commandBuffer, pMarkerInfo);
fn void cmdExecuteGeneratedCommandsNV (CommandBuffer commandBuffer, uint isPreprocessed, GeneratedCommandsInfoNV* pGeneratedCommandsInfo) => extensions.vkCmdExecuteGeneratedCommandsNV(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);
fn void cmdPreprocessGeneratedCommandsNV (CommandBuffer commandBuffer, GeneratedCommandsInfoNV* pGeneratedCommandsInfo) => extensions.vkCmdPreprocessGeneratedCommandsNV(commandBuffer, pGeneratedCommandsInfo);
fn void cmdBindPipelineShaderGroupNV (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, Pipeline pipeline, uint groupIndex) => extensions.vkCmdBindPipelineShaderGroupNV(commandBuffer, pipelineBindPoint, pipeline, groupIndex);
fn void getGeneratedCommandsMemoryRequirementsNV (Device device, GeneratedCommandsMemoryRequirementsInfoNV* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetGeneratedCommandsMemoryRequirementsNV(device, pInfo, pMemoryRequirements);
fn void destroyIndirectCommandsLayoutNV (Device device, IndirectCommandsLayoutNV indirectCommandsLayout, AllocationCallbacks* pAllocator) => extensions.vkDestroyIndirectCommandsLayoutNV(device, indirectCommandsLayout, pAllocator);
fn void cmdExecuteGeneratedCommandsEXT (CommandBuffer commandBuffer, uint isPreprocessed, GeneratedCommandsInfoEXT* pGeneratedCommandsInfo) => extensions.vkCmdExecuteGeneratedCommandsEXT(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);
fn void cmdPreprocessGeneratedCommandsEXT (CommandBuffer commandBuffer, GeneratedCommandsInfoEXT* pGeneratedCommandsInfo, CommandBuffer stateCommandBuffer) => extensions.vkCmdPreprocessGeneratedCommandsEXT(commandBuffer, pGeneratedCommandsInfo, stateCommandBuffer);
fn void getGeneratedCommandsMemoryRequirementsEXT (Device device, GeneratedCommandsMemoryRequirementsInfoEXT* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetGeneratedCommandsMemoryRequirementsEXT(device, pInfo, pMemoryRequirements);
fn void destroyIndirectCommandsLayoutEXT (Device device, IndirectCommandsLayoutEXT indirectCommandsLayout, AllocationCallbacks* pAllocator) => extensions.vkDestroyIndirectCommandsLayoutEXT(device, indirectCommandsLayout, pAllocator);
fn void destroyIndirectExecutionSetEXT (Device device, IndirectExecutionSetEXT indirectExecutionSet, AllocationCallbacks* pAllocator) => extensions.vkDestroyIndirectExecutionSetEXT(device, indirectExecutionSet, pAllocator);
fn void updateIndirectExecutionSetPipelineEXT (Device device, IndirectExecutionSetEXT indirectExecutionSet, uint executionSetWriteCount, WriteIndirectExecutionSetPipelineEXT* pExecutionSetWrites) => extensions.vkUpdateIndirectExecutionSetPipelineEXT(device, indirectExecutionSet, executionSetWriteCount, pExecutionSetWrites);
fn void updateIndirectExecutionSetShaderEXT (Device device, IndirectExecutionSetEXT indirectExecutionSet, uint executionSetWriteCount, WriteIndirectExecutionSetShaderEXT* pExecutionSetWrites) => extensions.vkUpdateIndirectExecutionSetShaderEXT(device, indirectExecutionSet, executionSetWriteCount, pExecutionSetWrites);
fn void getPhysicalDeviceFeatures2KHR (PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures) => extensions.vkGetPhysicalDeviceFeatures2KHR(physicalDevice, pFeatures);
fn void getPhysicalDeviceProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties) => extensions.vkGetPhysicalDeviceProperties2KHR(physicalDevice, pProperties);
fn void getPhysicalDeviceFormatProperties2KHR (PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties) => extensions.vkGetPhysicalDeviceFormatProperties2KHR(physicalDevice, format, pFormatProperties);
fn void getPhysicalDeviceQueueFamilyProperties2KHR (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties) => extensions.vkGetPhysicalDeviceQueueFamilyProperties2KHR(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);
fn void getPhysicalDeviceMemoryProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties) => extensions.vkGetPhysicalDeviceMemoryProperties2KHR(physicalDevice, pMemoryProperties);
fn void getPhysicalDeviceSparseImageFormatProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint* pPropertyCount, SparseImageFormatProperties2* pProperties) => extensions.vkGetPhysicalDeviceSparseImageFormatProperties2KHR(physicalDevice, pFormatInfo, pPropertyCount, pProperties);
fn void cmdPushDescriptorSetKHR (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set, uint descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites) => extensions.vkCmdPushDescriptorSetKHR(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites);
fn void trimCommandPoolKHR (Device device, CommandPool commandPool, CommandPoolTrimFlags flags) => extensions.vkTrimCommandPoolKHR(device, commandPool, flags);
fn void getPhysicalDeviceExternalBufferPropertiesKHR (PhysicalDevice physicalDevice, PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, ExternalBufferProperties* pExternalBufferProperties) => extensions.vkGetPhysicalDeviceExternalBufferPropertiesKHR(physicalDevice, pExternalBufferInfo, pExternalBufferProperties);
fn void getPhysicalDeviceExternalSemaphorePropertiesKHR (PhysicalDevice physicalDevice, PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, ExternalSemaphoreProperties* pExternalSemaphoreProperties) => extensions.vkGetPhysicalDeviceExternalSemaphorePropertiesKHR(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties);
fn void getPhysicalDeviceExternalFencePropertiesKHR (PhysicalDevice physicalDevice, PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, ExternalFenceProperties* pExternalFenceProperties) => extensions.vkGetPhysicalDeviceExternalFencePropertiesKHR(physicalDevice, pExternalFenceInfo, pExternalFenceProperties);
fn void getDeviceGroupPeerMemoryFeaturesKHR (Device device, uint heapIndex, uint localDeviceIndex, uint remoteDeviceIndex, PeerMemoryFeatureFlags* pPeerMemoryFeatures) => extensions.vkGetDeviceGroupPeerMemoryFeaturesKHR(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures);
fn void cmdSetDeviceMaskKHR (CommandBuffer commandBuffer, uint deviceMask) => extensions.vkCmdSetDeviceMaskKHR(commandBuffer, deviceMask);
fn void cmdDispatchBaseKHR (CommandBuffer commandBuffer, uint baseGroupX, uint baseGroupY, uint baseGroupZ, uint groupCountX, uint groupCountY, uint groupCountZ) => extensions.vkCmdDispatchBaseKHR(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ);
fn void destroyDescriptorUpdateTemplateKHR (Device device, DescriptorUpdateTemplate descriptorUpdateTemplate, AllocationCallbacks* pAllocator) => extensions.vkDestroyDescriptorUpdateTemplateKHR(device, descriptorUpdateTemplate, pAllocator);
fn void updateDescriptorSetWithTemplateKHR (Device device, DescriptorSet descriptorSet, DescriptorUpdateTemplate descriptorUpdateTemplate, void* pData) => extensions.vkUpdateDescriptorSetWithTemplateKHR(device, descriptorSet, descriptorUpdateTemplate, pData);
fn void cmdPushDescriptorSetWithTemplateKHR (CommandBuffer commandBuffer, DescriptorUpdateTemplate descriptorUpdateTemplate, PipelineLayout layout, uint set, void* pData) => extensions.vkCmdPushDescriptorSetWithTemplateKHR(commandBuffer, descriptorUpdateTemplate, layout, set, pData);
fn void setHdrMetadataEXT (Device device, uint swapchainCount, SwapchainKHR* pSwapchains, HdrMetadataEXT* pMetadata) => extensions.vkSetHdrMetadataEXT(device, swapchainCount, pSwapchains, pMetadata);
fn void cmdSetViewportWScalingNV (CommandBuffer commandBuffer, uint firstViewport, uint viewportCount, ViewportWScalingNV* pViewportWScalings) => extensions.vkCmdSetViewportWScalingNV(commandBuffer, firstViewport, viewportCount, pViewportWScalings);
fn void cmdSetDiscardRectangleEXT (CommandBuffer commandBuffer, uint firstDiscardRectangle, uint discardRectangleCount, Rect2D* pDiscardRectangles) => extensions.vkCmdSetDiscardRectangleEXT(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles);
fn void cmdSetDiscardRectangleEnableEXT (CommandBuffer commandBuffer, uint discardRectangleEnable) => extensions.vkCmdSetDiscardRectangleEnableEXT(commandBuffer, discardRectangleEnable);
fn void cmdSetDiscardRectangleModeEXT (CommandBuffer commandBuffer, DiscardRectangleModeEXT discardRectangleMode) => extensions.vkCmdSetDiscardRectangleModeEXT(commandBuffer, discardRectangleMode);
fn void cmdSetSampleLocationsEXT (CommandBuffer commandBuffer, SampleLocationsInfoEXT* pSampleLocationsInfo) => extensions.vkCmdSetSampleLocationsEXT(commandBuffer, pSampleLocationsInfo);
fn void getPhysicalDeviceMultisamplePropertiesEXT (PhysicalDevice physicalDevice, SampleCountFlagBits samples, MultisamplePropertiesEXT* pMultisampleProperties) => extensions.vkGetPhysicalDeviceMultisamplePropertiesEXT(physicalDevice, samples, pMultisampleProperties);
fn void getBufferMemoryRequirements2KHR (Device device, BufferMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetBufferMemoryRequirements2KHR(device, pInfo, pMemoryRequirements);
fn void getImageMemoryRequirements2KHR (Device device, ImageMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetImageMemoryRequirements2KHR(device, pInfo, pMemoryRequirements);
fn void getImageSparseMemoryRequirements2KHR (Device device, ImageSparseMemoryRequirementsInfo2* pInfo, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements) => extensions.vkGetImageSparseMemoryRequirements2KHR(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
fn void getDeviceBufferMemoryRequirementsKHR (Device device, DeviceBufferMemoryRequirements* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetDeviceBufferMemoryRequirementsKHR(device, pInfo, pMemoryRequirements);
fn void getDeviceImageMemoryRequirementsKHR (Device device, DeviceImageMemoryRequirements* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetDeviceImageMemoryRequirementsKHR(device, pInfo, pMemoryRequirements);
fn void getDeviceImageSparseMemoryRequirementsKHR (Device device, DeviceImageMemoryRequirements* pInfo, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements) => extensions.vkGetDeviceImageSparseMemoryRequirementsKHR(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
fn void destroySamplerYcbcrConversionKHR (Device device, SamplerYcbcrConversion ycbcrConversion, AllocationCallbacks* pAllocator) => extensions.vkDestroySamplerYcbcrConversionKHR(device, ycbcrConversion, pAllocator);
fn void destroyValidationCacheEXT (Device device, ValidationCacheEXT validationCache, AllocationCallbacks* pAllocator) => extensions.vkDestroyValidationCacheEXT(device, validationCache, pAllocator);
fn void getDescriptorSetLayoutSupportKHR (Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, DescriptorSetLayoutSupport* pSupport) => extensions.vkGetDescriptorSetLayoutSupportKHR(device, pCreateInfo, pSupport);
fn void setLocalDimmingAMD (Device device, SwapchainKHR swapChain, uint localDimmingEnable) => extensions.vkSetLocalDimmingAMD(device, swapChain, localDimmingEnable);
fn void queueBeginDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueBeginDebugUtilsLabelEXT(queue, pLabelInfo);
fn void queueEndDebugUtilsLabelEXT (Queue queue) => extensions.vkQueueEndDebugUtilsLabelEXT(queue);
fn void queueInsertDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueInsertDebugUtilsLabelEXT(queue, pLabelInfo);
fn void cmdBeginDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdBeginDebugUtilsLabelEXT(commandBuffer, pLabelInfo);
fn void cmdEndDebugUtilsLabelEXT (CommandBuffer commandBuffer) => extensions.vkCmdEndDebugUtilsLabelEXT(commandBuffer);
fn void cmdInsertDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdInsertDebugUtilsLabelEXT(commandBuffer, pLabelInfo);
fn void destroyDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerEXT messenger, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugUtilsMessengerEXT(instance, messenger, pAllocator);
fn void submitDebugUtilsMessageEXT (Instance instance, DebugUtilsMessageSeverityFlagBitsEXT messageSeverity, DebugUtilsMessageTypeFlagsEXT messageTypes, DebugUtilsMessengerCallbackDataEXT* pCallbackData) => extensions.vkSubmitDebugUtilsMessageEXT(instance, messageSeverity, messageTypes, pCallbackData);
fn void cmdWriteBufferMarkerAMD (CommandBuffer commandBuffer, PipelineStageFlagBits pipelineStage, Buffer dstBuffer, DeviceSize dstOffset, uint marker) => extensions.vkCmdWriteBufferMarkerAMD(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker);
fn void cmdBeginRenderPass2KHR (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo) => extensions.vkCmdBeginRenderPass2KHR(commandBuffer, pRenderPassBegin, pSubpassBeginInfo);
fn void cmdNextSubpass2KHR (CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo) => extensions.vkCmdNextSubpass2KHR(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo);
fn void cmdEndRenderPass2KHR (CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo) => extensions.vkCmdEndRenderPass2KHR(commandBuffer, pSubpassEndInfo);
fn void cmdDrawIndirectCountKHR (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) => extensions.vkCmdDrawIndirectCountKHR(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
fn void cmdDrawIndirectCountAMD (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) => extensions.vkCmdDrawIndirectCountAMD(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
fn void cmdDrawIndexedIndirectCountKHR (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) => extensions.vkCmdDrawIndexedIndirectCountKHR(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
fn void cmdDrawIndexedIndirectCountAMD (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) => extensions.vkCmdDrawIndexedIndirectCountAMD(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
fn void cmdSetCheckpointNV (CommandBuffer commandBuffer, void* pCheckpointMarker) => extensions.vkCmdSetCheckpointNV(commandBuffer, pCheckpointMarker);
fn void getQueueCheckpointDataNV (Queue queue, uint* pCheckpointDataCount, CheckpointDataNV* pCheckpointData) => extensions.vkGetQueueCheckpointDataNV(queue, pCheckpointDataCount, pCheckpointData);
fn void cmdBindTransformFeedbackBuffersEXT (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, Buffer* pBuffers, DeviceSize* pOffsets, DeviceSize* pSizes) => extensions.vkCmdBindTransformFeedbackBuffersEXT(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes);
fn void cmdBeginTransformFeedbackEXT (CommandBuffer commandBuffer, uint firstCounterBuffer, uint counterBufferCount, Buffer* pCounterBuffers, DeviceSize* pCounterBufferOffsets) => extensions.vkCmdBeginTransformFeedbackEXT(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);
fn void cmdEndTransformFeedbackEXT (CommandBuffer commandBuffer, uint firstCounterBuffer, uint counterBufferCount, Buffer* pCounterBuffers, DeviceSize* pCounterBufferOffsets) => extensions.vkCmdEndTransformFeedbackEXT(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);
fn void cmdBeginQueryIndexedEXT (CommandBuffer commandBuffer, QueryPool queryPool, uint query, QueryControlFlags flags, uint index) => extensions.vkCmdBeginQueryIndexedEXT(commandBuffer, queryPool, query, flags, index);
fn void cmdEndQueryIndexedEXT (CommandBuffer commandBuffer, QueryPool queryPool, uint query, uint index) => extensions.vkCmdEndQueryIndexedEXT(commandBuffer, queryPool, query, index);
fn void cmdDrawIndirectByteCountEXT (CommandBuffer commandBuffer, uint instanceCount, uint firstInstance, Buffer counterBuffer, DeviceSize counterBufferOffset, uint counterOffset, uint vertexStride) => extensions.vkCmdDrawIndirectByteCountEXT(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride);
fn void cmdSetExclusiveScissorNV (CommandBuffer commandBuffer, uint firstExclusiveScissor, uint exclusiveScissorCount, Rect2D* pExclusiveScissors) => extensions.vkCmdSetExclusiveScissorNV(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors);
fn void cmdSetExclusiveScissorEnableNV (CommandBuffer commandBuffer, uint firstExclusiveScissor, uint exclusiveScissorCount, uint* pExclusiveScissorEnables) => extensions.vkCmdSetExclusiveScissorEnableNV(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissorEnables);
fn void cmdBindShadingRateImageNV (CommandBuffer commandBuffer, ImageView imageView, ImageLayout imageLayout) => extensions.vkCmdBindShadingRateImageNV(commandBuffer, imageView, imageLayout);
fn void cmdSetViewportShadingRatePaletteNV (CommandBuffer commandBuffer, uint firstViewport, uint viewportCount, ShadingRatePaletteNV* pShadingRatePalettes) => extensions.vkCmdSetViewportShadingRatePaletteNV(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes);
fn void cmdSetCoarseSampleOrderNV (CommandBuffer commandBuffer, CoarseSampleOrderTypeNV sampleOrderType, uint customSampleOrderCount, CoarseSampleOrderCustomNV* pCustomSampleOrders) => extensions.vkCmdSetCoarseSampleOrderNV(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders);
fn void cmdDrawMeshTasksNV (CommandBuffer commandBuffer, uint taskCount, uint firstTask) => extensions.vkCmdDrawMeshTasksNV(commandBuffer, taskCount, firstTask);
fn void cmdDrawMeshTasksIndirectNV (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint drawCount, uint stride) => extensions.vkCmdDrawMeshTasksIndirectNV(commandBuffer, buffer, offset, drawCount, stride);
fn void cmdDrawMeshTasksIndirectCountNV (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) => extensions.vkCmdDrawMeshTasksIndirectCountNV(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
fn void cmdDrawMeshTasksEXT (CommandBuffer commandBuffer, uint groupCountX, uint groupCountY, uint groupCountZ) => extensions.vkCmdDrawMeshTasksEXT(commandBuffer, groupCountX, groupCountY, groupCountZ);
fn void cmdDrawMeshTasksIndirectEXT (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint drawCount, uint stride) => extensions.vkCmdDrawMeshTasksIndirectEXT(commandBuffer, buffer, offset, drawCount, stride);
fn void cmdDrawMeshTasksIndirectCountEXT (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) => extensions.vkCmdDrawMeshTasksIndirectCountEXT(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
fn void cmdBindInvocationMaskHUAWEI (CommandBuffer commandBuffer, ImageView imageView, ImageLayout imageLayout) => extensions.vkCmdBindInvocationMaskHUAWEI(commandBuffer, imageView, imageLayout);
fn void destroyAccelerationStructureKHR (Device device, AccelerationStructureKHR accelerationStructure, AllocationCallbacks* pAllocator) => extensions.vkDestroyAccelerationStructureKHR(device, accelerationStructure, pAllocator);
fn void destroyAccelerationStructureNV (Device device, AccelerationStructureNV accelerationStructure, AllocationCallbacks* pAllocator) => extensions.vkDestroyAccelerationStructureNV(device, accelerationStructure, pAllocator);
fn void getAccelerationStructureMemoryRequirementsNV (Device device, AccelerationStructureMemoryRequirementsInfoNV* pInfo, MemoryRequirements2KHR* pMemoryRequirements) => extensions.vkGetAccelerationStructureMemoryRequirementsNV(device, pInfo, pMemoryRequirements);
fn void cmdCopyAccelerationStructureNV (CommandBuffer commandBuffer, AccelerationStructureNV dst, AccelerationStructureNV src, CopyAccelerationStructureModeKHR mode) => extensions.vkCmdCopyAccelerationStructureNV(commandBuffer, dst, src, mode);
fn void cmdCopyAccelerationStructureKHR (CommandBuffer commandBuffer, CopyAccelerationStructureInfoKHR* pInfo) => extensions.vkCmdCopyAccelerationStructureKHR(commandBuffer, pInfo);
fn void cmdCopyAccelerationStructureToMemoryKHR (CommandBuffer commandBuffer, CopyAccelerationStructureToMemoryInfoKHR* pInfo) => extensions.vkCmdCopyAccelerationStructureToMemoryKHR(commandBuffer, pInfo);
fn void cmdCopyMemoryToAccelerationStructureKHR (CommandBuffer commandBuffer, CopyMemoryToAccelerationStructureInfoKHR* pInfo) => extensions.vkCmdCopyMemoryToAccelerationStructureKHR(commandBuffer, pInfo);
fn void cmdWriteAccelerationStructuresPropertiesKHR (CommandBuffer commandBuffer, uint accelerationStructureCount, AccelerationStructureKHR* pAccelerationStructures, QueryType queryType, QueryPool queryPool, uint firstQuery) => extensions.vkCmdWriteAccelerationStructuresPropertiesKHR(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
fn void cmdWriteAccelerationStructuresPropertiesNV (CommandBuffer commandBuffer, uint accelerationStructureCount, AccelerationStructureNV* pAccelerationStructures, QueryType queryType, QueryPool queryPool, uint firstQuery) => extensions.vkCmdWriteAccelerationStructuresPropertiesNV(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
fn void cmdTraceRaysKHR (CommandBuffer commandBuffer, StridedDeviceAddressRegionKHR* pRaygenShaderBindingTable, StridedDeviceAddressRegionKHR* pMissShaderBindingTable, StridedDeviceAddressRegionKHR* pHitShaderBindingTable, StridedDeviceAddressRegionKHR* pCallableShaderBindingTable, uint width, uint height, uint depth) => extensions.vkCmdTraceRaysKHR(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, width, height, depth);
fn void cmdTraceRaysNV (CommandBuffer commandBuffer, Buffer raygenShaderBindingTableBuffer, DeviceSize raygenShaderBindingOffset, Buffer missShaderBindingTableBuffer, DeviceSize missShaderBindingOffset, DeviceSize missShaderBindingStride, Buffer hitShaderBindingTableBuffer, DeviceSize hitShaderBindingOffset, DeviceSize hitShaderBindingStride, Buffer callableShaderBindingTableBuffer, DeviceSize callableShaderBindingOffset, DeviceSize callableShaderBindingStride, uint width, uint height, uint depth) => extensions.vkCmdTraceRaysNV(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth);
fn void cmdTraceRaysIndirectKHR (CommandBuffer commandBuffer, StridedDeviceAddressRegionKHR* pRaygenShaderBindingTable, StridedDeviceAddressRegionKHR* pMissShaderBindingTable, StridedDeviceAddressRegionKHR* pHitShaderBindingTable, StridedDeviceAddressRegionKHR* pCallableShaderBindingTable, DeviceAddress indirectDeviceAddress) => extensions.vkCmdTraceRaysIndirectKHR(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, indirectDeviceAddress);
fn void cmdTraceRaysIndirect2KHR (CommandBuffer commandBuffer, DeviceAddress indirectDeviceAddress) => extensions.vkCmdTraceRaysIndirect2KHR(commandBuffer, indirectDeviceAddress);
fn void getClusterAccelerationStructureBuildSizesNV (Device device, ClusterAccelerationStructureInputInfoNV* pInfo, AccelerationStructureBuildSizesInfoKHR* pSizeInfo) => extensions.vkGetClusterAccelerationStructureBuildSizesNV(device, pInfo, pSizeInfo);
fn void cmdBuildClusterAccelerationStructureIndirectNV (CommandBuffer commandBuffer, ClusterAccelerationStructureCommandsInfoNV* pCommandInfos) => extensions.vkCmdBuildClusterAccelerationStructureIndirectNV(commandBuffer, pCommandInfos);
fn void getDeviceAccelerationStructureCompatibilityKHR (Device device, AccelerationStructureVersionInfoKHR* pVersionInfo, AccelerationStructureCompatibilityKHR* pCompatibility) => extensions.vkGetDeviceAccelerationStructureCompatibilityKHR(device, pVersionInfo, pCompatibility);
fn DeviceSize getRayTracingShaderGroupStackSizeKHR (Device device, Pipeline pipeline, uint group, ShaderGroupShaderKHR groupShader) => extensions.vkGetRayTracingShaderGroupStackSizeKHR(device, pipeline, group, groupShader);
fn void cmdSetRayTracingPipelineStackSizeKHR (CommandBuffer commandBuffer, uint pipelineStackSize) => extensions.vkCmdSetRayTracingPipelineStackSizeKHR(commandBuffer, pipelineStackSize);
fn uint getImageViewHandleNVX (Device device, ImageViewHandleInfoNVX* pInfo) => extensions.vkGetImageViewHandleNVX(device, pInfo);
fn ulong getImageViewHandle64NVX (Device device, ImageViewHandleInfoNVX* pInfo) => extensions.vkGetImageViewHandle64NVX(device, pInfo);
fn ulong getDeviceCombinedImageSamplerIndexNVX (Device device, ulong imageViewIndex, ulong samplerIndex) => extensions.vkGetDeviceCombinedImageSamplerIndexNVX(device, imageViewIndex, samplerIndex);
fn void getPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR (PhysicalDevice physicalDevice, QueryPoolPerformanceCreateInfoKHR* pPerformanceQueryCreateInfo, uint* pNumPasses) => extensions.vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR(physicalDevice, pPerformanceQueryCreateInfo, pNumPasses);
fn void releaseProfilingLockKHR (Device device) => extensions.vkReleaseProfilingLockKHR(device);
fn ulong getBufferOpaqueCaptureAddressKHR (Device device, BufferDeviceAddressInfo* pInfo) => extensions.vkGetBufferOpaqueCaptureAddressKHR(device, pInfo);
fn DeviceAddress getBufferDeviceAddressKHR (Device device, BufferDeviceAddressInfo* pInfo) => extensions.vkGetBufferDeviceAddressKHR(device, pInfo);
fn DeviceAddress getBufferDeviceAddressEXT (Device device, BufferDeviceAddressInfo* pInfo) => extensions.vkGetBufferDeviceAddressEXT(device, pInfo);
fn void uninitializePerformanceApiINTEL (Device device) => extensions.vkUninitializePerformanceApiINTEL(device);
fn ulong getDeviceMemoryOpaqueCaptureAddressKHR (Device device, DeviceMemoryOpaqueCaptureAddressInfo* pInfo) => extensions.vkGetDeviceMemoryOpaqueCaptureAddressKHR(device, pInfo);
fn void cmdSetLineStippleKHR (CommandBuffer commandBuffer, uint lineStippleFactor, uint lineStipplePattern) => extensions.vkCmdSetLineStippleKHR(commandBuffer, lineStippleFactor, lineStipplePattern);
fn void cmdSetLineStippleEXT (CommandBuffer commandBuffer, uint lineStippleFactor, uint lineStipplePattern) => extensions.vkCmdSetLineStippleEXT(commandBuffer, lineStippleFactor, lineStipplePattern);
fn void cmdBuildAccelerationStructuresKHR (CommandBuffer commandBuffer, uint infoCount, AccelerationStructureBuildGeometryInfoKHR* pInfos, AccelerationStructureBuildRangeInfoKHR*  ppBuildRangeInfos) => extensions.vkCmdBuildAccelerationStructuresKHR(commandBuffer, infoCount, pInfos, ppBuildRangeInfos);
fn void cmdBuildAccelerationStructuresIndirectKHR (CommandBuffer commandBuffer, uint infoCount, AccelerationStructureBuildGeometryInfoKHR* pInfos, DeviceAddress* pIndirectDeviceAddresses, uint* pIndirectStrides, uint*  ppMaxPrimitiveCounts) => extensions.vkCmdBuildAccelerationStructuresIndirectKHR(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, pIndirectStrides, ppMaxPrimitiveCounts);
fn DeviceAddress getAccelerationStructureDeviceAddressKHR (Device device, AccelerationStructureDeviceAddressInfoKHR* pInfo) => extensions.vkGetAccelerationStructureDeviceAddressKHR(device, pInfo);
fn void destroyDeferredOperationKHR (Device device, DeferredOperationKHR operation, AllocationCallbacks* pAllocator) => extensions.vkDestroyDeferredOperationKHR(device, operation, pAllocator);
fn uint getDeferredOperationMaxConcurrencyKHR (Device device, DeferredOperationKHR operation) => extensions.vkGetDeferredOperationMaxConcurrencyKHR(device, operation);
fn void getPipelineIndirectMemoryRequirementsNV (Device device, ComputePipelineCreateInfo* pCreateInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetPipelineIndirectMemoryRequirementsNV(device, pCreateInfo, pMemoryRequirements);
fn DeviceAddress getPipelineIndirectDeviceAddressNV (Device device, PipelineIndirectDeviceAddressInfoNV* pInfo) => extensions.vkGetPipelineIndirectDeviceAddressNV(device, pInfo);
fn void antiLagUpdateAMD (Device device, AntiLagDataAMD* pData) => extensions.vkAntiLagUpdateAMD(device, pData);
fn void cmdSetCullModeEXT (CommandBuffer commandBuffer, CullModeFlags cullMode) => extensions.vkCmdSetCullModeEXT(commandBuffer, cullMode);
fn void cmdSetFrontFaceEXT (CommandBuffer commandBuffer, FrontFace frontFace) => extensions.vkCmdSetFrontFaceEXT(commandBuffer, frontFace);
fn void cmdSetPrimitiveTopologyEXT (CommandBuffer commandBuffer, PrimitiveTopology primitiveTopology) => extensions.vkCmdSetPrimitiveTopologyEXT(commandBuffer, primitiveTopology);
fn void cmdSetViewportWithCountEXT (CommandBuffer commandBuffer, uint viewportCount, Viewport* pViewports) => extensions.vkCmdSetViewportWithCountEXT(commandBuffer, viewportCount, pViewports);
fn void cmdSetScissorWithCountEXT (CommandBuffer commandBuffer, uint scissorCount, Rect2D* pScissors) => extensions.vkCmdSetScissorWithCountEXT(commandBuffer, scissorCount, pScissors);
fn void cmdBindIndexBuffer2KHR (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, DeviceSize size, IndexType indexType) => extensions.vkCmdBindIndexBuffer2KHR(commandBuffer, buffer, offset, size, indexType);
fn void cmdBindVertexBuffers2EXT (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, Buffer* pBuffers, DeviceSize* pOffsets, DeviceSize* pSizes, DeviceSize* pStrides) => extensions.vkCmdBindVertexBuffers2EXT(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes, pStrides);
fn void cmdSetDepthTestEnableEXT (CommandBuffer commandBuffer, uint depthTestEnable) => extensions.vkCmdSetDepthTestEnableEXT(commandBuffer, depthTestEnable);
fn void cmdSetDepthWriteEnableEXT (CommandBuffer commandBuffer, uint depthWriteEnable) => extensions.vkCmdSetDepthWriteEnableEXT(commandBuffer, depthWriteEnable);
fn void cmdSetDepthCompareOpEXT (CommandBuffer commandBuffer, CompareOp depthCompareOp) => extensions.vkCmdSetDepthCompareOpEXT(commandBuffer, depthCompareOp);
fn void cmdSetDepthBoundsTestEnableEXT (CommandBuffer commandBuffer, uint depthBoundsTestEnable) => extensions.vkCmdSetDepthBoundsTestEnableEXT(commandBuffer, depthBoundsTestEnable);
fn void cmdSetStencilTestEnableEXT (CommandBuffer commandBuffer, uint stencilTestEnable) => extensions.vkCmdSetStencilTestEnableEXT(commandBuffer, stencilTestEnable);
fn void cmdSetStencilOpEXT (CommandBuffer commandBuffer, StencilFaceFlags faceMask, StencilOp failOp, StencilOp passOp, StencilOp depthFailOp, CompareOp compareOp) => extensions.vkCmdSetStencilOpEXT(commandBuffer, faceMask, failOp, passOp, depthFailOp, compareOp);
fn void cmdSetPatchControlPointsEXT (CommandBuffer commandBuffer, uint patchControlPoints) => extensions.vkCmdSetPatchControlPointsEXT(commandBuffer, patchControlPoints);
fn void cmdSetRasterizerDiscardEnableEXT (CommandBuffer commandBuffer, uint rasterizerDiscardEnable) => extensions.vkCmdSetRasterizerDiscardEnableEXT(commandBuffer, rasterizerDiscardEnable);
fn void cmdSetDepthBiasEnableEXT (CommandBuffer commandBuffer, uint depthBiasEnable) => extensions.vkCmdSetDepthBiasEnableEXT(commandBuffer, depthBiasEnable);
fn void cmdSetLogicOpEXT (CommandBuffer commandBuffer, LogicOp logicOp) => extensions.vkCmdSetLogicOpEXT(commandBuffer, logicOp);
fn void cmdSetPrimitiveRestartEnableEXT (CommandBuffer commandBuffer, uint primitiveRestartEnable) => extensions.vkCmdSetPrimitiveRestartEnableEXT(commandBuffer, primitiveRestartEnable);
fn void cmdSetTessellationDomainOriginEXT (CommandBuffer commandBuffer, TessellationDomainOrigin domainOrigin) => extensions.vkCmdSetTessellationDomainOriginEXT(commandBuffer, domainOrigin);
fn void cmdSetDepthClampEnableEXT (CommandBuffer commandBuffer, uint depthClampEnable) => extensions.vkCmdSetDepthClampEnableEXT(commandBuffer, depthClampEnable);
fn void cmdSetPolygonModeEXT (CommandBuffer commandBuffer, PolygonMode polygonMode) => extensions.vkCmdSetPolygonModeEXT(commandBuffer, polygonMode);
fn void cmdSetRasterizationSamplesEXT (CommandBuffer commandBuffer, SampleCountFlagBits rasterizationSamples) => extensions.vkCmdSetRasterizationSamplesEXT(commandBuffer, rasterizationSamples);
fn void cmdSetSampleMaskEXT (CommandBuffer commandBuffer, SampleCountFlagBits samples, SampleMask* pSampleMask) => extensions.vkCmdSetSampleMaskEXT(commandBuffer, samples, pSampleMask);
fn void cmdSetAlphaToCoverageEnableEXT (CommandBuffer commandBuffer, uint alphaToCoverageEnable) => extensions.vkCmdSetAlphaToCoverageEnableEXT(commandBuffer, alphaToCoverageEnable);
fn void cmdSetAlphaToOneEnableEXT (CommandBuffer commandBuffer, uint alphaToOneEnable) => extensions.vkCmdSetAlphaToOneEnableEXT(commandBuffer, alphaToOneEnable);
fn void cmdSetLogicOpEnableEXT (CommandBuffer commandBuffer, uint logicOpEnable) => extensions.vkCmdSetLogicOpEnableEXT(commandBuffer, logicOpEnable);
fn void cmdSetColorBlendEnableEXT (CommandBuffer commandBuffer, uint firstAttachment, uint attachmentCount, uint* pColorBlendEnables) => extensions.vkCmdSetColorBlendEnableEXT(commandBuffer, firstAttachment, attachmentCount, pColorBlendEnables);
fn void cmdSetColorBlendEquationEXT (CommandBuffer commandBuffer, uint firstAttachment, uint attachmentCount, ColorBlendEquationEXT* pColorBlendEquations) => extensions.vkCmdSetColorBlendEquationEXT(commandBuffer, firstAttachment, attachmentCount, pColorBlendEquations);
fn void cmdSetColorWriteMaskEXT (CommandBuffer commandBuffer, uint firstAttachment, uint attachmentCount, ColorComponentFlags* pColorWriteMasks) => extensions.vkCmdSetColorWriteMaskEXT(commandBuffer, firstAttachment, attachmentCount, pColorWriteMasks);
fn void cmdSetRasterizationStreamEXT (CommandBuffer commandBuffer, uint rasterizationStream) => extensions.vkCmdSetRasterizationStreamEXT(commandBuffer, rasterizationStream);
fn void cmdSetConservativeRasterizationModeEXT (CommandBuffer commandBuffer, ConservativeRasterizationModeEXT conservativeRasterizationMode) => extensions.vkCmdSetConservativeRasterizationModeEXT(commandBuffer, conservativeRasterizationMode);
fn void cmdSetExtraPrimitiveOverestimationSizeEXT (CommandBuffer commandBuffer, float extraPrimitiveOverestimationSize) => extensions.vkCmdSetExtraPrimitiveOverestimationSizeEXT(commandBuffer, extraPrimitiveOverestimationSize);
fn void cmdSetDepthClipEnableEXT (CommandBuffer commandBuffer, uint depthClipEnable) => extensions.vkCmdSetDepthClipEnableEXT(commandBuffer, depthClipEnable);
fn void cmdSetSampleLocationsEnableEXT (CommandBuffer commandBuffer, uint sampleLocationsEnable) => extensions.vkCmdSetSampleLocationsEnableEXT(commandBuffer, sampleLocationsEnable);
fn void cmdSetColorBlendAdvancedEXT (CommandBuffer commandBuffer, uint firstAttachment, uint attachmentCount, ColorBlendAdvancedEXT* pColorBlendAdvanced) => extensions.vkCmdSetColorBlendAdvancedEXT(commandBuffer, firstAttachment, attachmentCount, pColorBlendAdvanced);
fn void cmdSetProvokingVertexModeEXT (CommandBuffer commandBuffer, ProvokingVertexModeEXT provokingVertexMode) => extensions.vkCmdSetProvokingVertexModeEXT(commandBuffer, provokingVertexMode);
fn void cmdSetLineStippleEnableEXT (CommandBuffer commandBuffer, uint stippledLineEnable) => extensions.vkCmdSetLineStippleEnableEXT(commandBuffer, stippledLineEnable);
fn void cmdSetDepthClipNegativeOneToOneEXT (CommandBuffer commandBuffer, uint negativeOneToOne) => extensions.vkCmdSetDepthClipNegativeOneToOneEXT(commandBuffer, negativeOneToOne);
fn void cmdSetViewportWScalingEnableNV (CommandBuffer commandBuffer, uint viewportWScalingEnable) => extensions.vkCmdSetViewportWScalingEnableNV(commandBuffer, viewportWScalingEnable);
fn void cmdSetViewportSwizzleNV (CommandBuffer commandBuffer, uint firstViewport, uint viewportCount, ViewportSwizzleNV* pViewportSwizzles) => extensions.vkCmdSetViewportSwizzleNV(commandBuffer, firstViewport, viewportCount, pViewportSwizzles);
fn void cmdSetCoverageToColorEnableNV (CommandBuffer commandBuffer, uint coverageToColorEnable) => extensions.vkCmdSetCoverageToColorEnableNV(commandBuffer, coverageToColorEnable);
fn void cmdSetCoverageToColorLocationNV (CommandBuffer commandBuffer, uint coverageToColorLocation) => extensions.vkCmdSetCoverageToColorLocationNV(commandBuffer, coverageToColorLocation);
fn void cmdSetCoverageModulationModeNV (CommandBuffer commandBuffer, CoverageModulationModeNV coverageModulationMode) => extensions.vkCmdSetCoverageModulationModeNV(commandBuffer, coverageModulationMode);
fn void cmdSetCoverageModulationTableEnableNV (CommandBuffer commandBuffer, uint coverageModulationTableEnable) => extensions.vkCmdSetCoverageModulationTableEnableNV(commandBuffer, coverageModulationTableEnable);
fn void cmdSetCoverageModulationTableNV (CommandBuffer commandBuffer, uint coverageModulationTableCount, float* pCoverageModulationTable) => extensions.vkCmdSetCoverageModulationTableNV(commandBuffer, coverageModulationTableCount, pCoverageModulationTable);
fn void cmdSetShadingRateImageEnableNV (CommandBuffer commandBuffer, uint shadingRateImageEnable) => extensions.vkCmdSetShadingRateImageEnableNV(commandBuffer, shadingRateImageEnable);
fn void cmdSetCoverageReductionModeNV (CommandBuffer commandBuffer, CoverageReductionModeNV coverageReductionMode) => extensions.vkCmdSetCoverageReductionModeNV(commandBuffer, coverageReductionMode);
fn void cmdSetRepresentativeFragmentTestEnableNV (CommandBuffer commandBuffer, uint representativeFragmentTestEnable) => extensions.vkCmdSetRepresentativeFragmentTestEnableNV(commandBuffer, representativeFragmentTestEnable);
fn void destroyPrivateDataSlotEXT (Device device, PrivateDataSlot privateDataSlot, AllocationCallbacks* pAllocator) => extensions.vkDestroyPrivateDataSlotEXT(device, privateDataSlot, pAllocator);
fn void getPrivateDataEXT (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong* pData) => extensions.vkGetPrivateDataEXT(device, objectType, objectHandle, privateDataSlot, pData);
fn void cmdCopyBuffer2KHR (CommandBuffer commandBuffer, CopyBufferInfo2* pCopyBufferInfo) => extensions.vkCmdCopyBuffer2KHR(commandBuffer, pCopyBufferInfo);
fn void cmdCopyImage2KHR (CommandBuffer commandBuffer, CopyImageInfo2* pCopyImageInfo) => extensions.vkCmdCopyImage2KHR(commandBuffer, pCopyImageInfo);
fn void cmdBlitImage2KHR (CommandBuffer commandBuffer, BlitImageInfo2* pBlitImageInfo) => extensions.vkCmdBlitImage2KHR(commandBuffer, pBlitImageInfo);
fn void cmdCopyBufferToImage2KHR (CommandBuffer commandBuffer, CopyBufferToImageInfo2* pCopyBufferToImageInfo) => extensions.vkCmdCopyBufferToImage2KHR(commandBuffer, pCopyBufferToImageInfo);
fn void cmdCopyImageToBuffer2KHR (CommandBuffer commandBuffer, CopyImageToBufferInfo2* pCopyImageToBufferInfo) => extensions.vkCmdCopyImageToBuffer2KHR(commandBuffer, pCopyImageToBufferInfo);
fn void cmdResolveImage2KHR (CommandBuffer commandBuffer, ResolveImageInfo2* pResolveImageInfo) => extensions.vkCmdResolveImage2KHR(commandBuffer, pResolveImageInfo);
fn void cmdSetFragmentShadingRateKHR (CommandBuffer commandBuffer, Extent2D* pFragmentSize, FragmentShadingRateCombinerOpKHR[2] combinerOps) => extensions.vkCmdSetFragmentShadingRateKHR(commandBuffer, pFragmentSize, combinerOps);
fn void cmdSetFragmentShadingRateEnumNV (CommandBuffer commandBuffer, FragmentShadingRateNV shadingRate, FragmentShadingRateCombinerOpKHR[2] combinerOps) => extensions.vkCmdSetFragmentShadingRateEnumNV(commandBuffer, shadingRate, combinerOps);
fn void getAccelerationStructureBuildSizesKHR (Device device, AccelerationStructureBuildTypeKHR buildType, AccelerationStructureBuildGeometryInfoKHR* pBuildInfo, uint* pMaxPrimitiveCounts, AccelerationStructureBuildSizesInfoKHR* pSizeInfo) => extensions.vkGetAccelerationStructureBuildSizesKHR(device, buildType, pBuildInfo, pMaxPrimitiveCounts, pSizeInfo);
fn void cmdSetVertexInputEXT (CommandBuffer commandBuffer, uint vertexBindingDescriptionCount, VertexInputBindingDescription2EXT* pVertexBindingDescriptions, uint vertexAttributeDescriptionCount, VertexInputAttributeDescription2EXT* pVertexAttributeDescriptions) => extensions.vkCmdSetVertexInputEXT(commandBuffer, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions);
fn void cmdSetColorWriteEnableEXT (CommandBuffer commandBuffer, uint attachmentCount, uint* pColorWriteEnables) => extensions.vkCmdSetColorWriteEnableEXT(commandBuffer, attachmentCount, pColorWriteEnables);
fn void cmdSetEvent2KHR (CommandBuffer commandBuffer, Event event, DependencyInfo* pDependencyInfo) => extensions.vkCmdSetEvent2KHR(commandBuffer, event, pDependencyInfo);
fn void cmdResetEvent2KHR (CommandBuffer commandBuffer, Event event, PipelineStageFlags2 stageMask) => extensions.vkCmdResetEvent2KHR(commandBuffer, event, stageMask);
fn void cmdWaitEvents2KHR (CommandBuffer commandBuffer, uint eventCount, Event* pEvents, DependencyInfo* pDependencyInfos) => extensions.vkCmdWaitEvents2KHR(commandBuffer, eventCount, pEvents, pDependencyInfos);
fn void cmdPipelineBarrier2KHR (CommandBuffer commandBuffer, DependencyInfo* pDependencyInfo) => extensions.vkCmdPipelineBarrier2KHR(commandBuffer, pDependencyInfo);
fn void cmdWriteTimestamp2KHR (CommandBuffer commandBuffer, PipelineStageFlags2 stage, QueryPool queryPool, uint query) => extensions.vkCmdWriteTimestamp2KHR(commandBuffer, stage, queryPool, query);
fn void cmdWriteBufferMarker2AMD (CommandBuffer commandBuffer, PipelineStageFlags2 stage, Buffer dstBuffer, DeviceSize dstOffset, uint marker) => extensions.vkCmdWriteBufferMarker2AMD(commandBuffer, stage, dstBuffer, dstOffset, marker);
fn void getQueueCheckpointData2NV (Queue queue, uint* pCheckpointDataCount, CheckpointData2NV* pCheckpointData) => extensions.vkGetQueueCheckpointData2NV(queue, pCheckpointDataCount, pCheckpointData);
fn void destroyVideoSessionKHR (Device device, VideoSessionKHR videoSession, AllocationCallbacks* pAllocator) => extensions.vkDestroyVideoSessionKHR(device, videoSession, pAllocator);
fn void destroyVideoSessionParametersKHR (Device device, VideoSessionParametersKHR videoSessionParameters, AllocationCallbacks* pAllocator) => extensions.vkDestroyVideoSessionParametersKHR(device, videoSessionParameters, pAllocator);
fn void cmdDecodeVideoKHR (CommandBuffer commandBuffer, VideoDecodeInfoKHR* pDecodeInfo) => extensions.vkCmdDecodeVideoKHR(commandBuffer, pDecodeInfo);
fn void cmdBeginVideoCodingKHR (CommandBuffer commandBuffer, VideoBeginCodingInfoKHR* pBeginInfo) => extensions.vkCmdBeginVideoCodingKHR(commandBuffer, pBeginInfo);
fn void cmdControlVideoCodingKHR (CommandBuffer commandBuffer, VideoCodingControlInfoKHR* pCodingControlInfo) => extensions.vkCmdControlVideoCodingKHR(commandBuffer, pCodingControlInfo);
fn void cmdEndVideoCodingKHR (CommandBuffer commandBuffer, VideoEndCodingInfoKHR* pEndCodingInfo) => extensions.vkCmdEndVideoCodingKHR(commandBuffer, pEndCodingInfo);
fn void cmdEncodeVideoKHR (CommandBuffer commandBuffer, VideoEncodeInfoKHR* pEncodeInfo) => extensions.vkCmdEncodeVideoKHR(commandBuffer, pEncodeInfo);
fn void cmdDecompressMemoryIndirectCountNV (CommandBuffer commandBuffer, DeviceAddress indirectCommandsAddress, DeviceAddress indirectCommandsCountAddress, uint stride) => extensions.vkCmdDecompressMemoryIndirectCountNV(commandBuffer, indirectCommandsAddress, indirectCommandsCountAddress, stride);
fn void getPartitionedAccelerationStructuresBuildSizesNV (Device device, PartitionedAccelerationStructureInstancesInputNV* pInfo, AccelerationStructureBuildSizesInfoKHR* pSizeInfo) => extensions.vkGetPartitionedAccelerationStructuresBuildSizesNV(device, pInfo, pSizeInfo);
fn void cmdBuildPartitionedAccelerationStructuresNV (CommandBuffer commandBuffer, BuildPartitionedAccelerationStructureInfoNV* pBuildInfo) => extensions.vkCmdBuildPartitionedAccelerationStructuresNV(commandBuffer, pBuildInfo);
fn void cmdDecompressMemoryEXT (CommandBuffer commandBuffer, DecompressMemoryInfoEXT* pDecompressMemoryInfoEXT) => extensions.vkCmdDecompressMemoryEXT(commandBuffer, pDecompressMemoryInfoEXT);
fn void cmdDecompressMemoryIndirectCountEXT (CommandBuffer commandBuffer, MemoryDecompressionMethodFlagsEXT decompressionMethod, DeviceAddress indirectCommandsAddress, DeviceAddress indirectCommandsCountAddress, uint maxDecompressionCount, uint stride) => extensions.vkCmdDecompressMemoryIndirectCountEXT(commandBuffer, decompressionMethod, indirectCommandsAddress, indirectCommandsCountAddress, maxDecompressionCount, stride);
fn void destroyCuModuleNVX (Device device, CuModuleNVX mod, AllocationCallbacks* pAllocator) => extensions.vkDestroyCuModuleNVX(device, mod, pAllocator);
fn void destroyCuFunctionNVX (Device device, CuFunctionNVX function, AllocationCallbacks* pAllocator) => extensions.vkDestroyCuFunctionNVX(device, function, pAllocator);
fn void cmdCuLaunchKernelNVX (CommandBuffer commandBuffer, CuLaunchInfoNVX* pLaunchInfo) => extensions.vkCmdCuLaunchKernelNVX(commandBuffer, pLaunchInfo);
fn void getDescriptorSetLayoutSizeEXT (Device device, DescriptorSetLayout layout, DeviceSize* pLayoutSizeInBytes) => extensions.vkGetDescriptorSetLayoutSizeEXT(device, layout, pLayoutSizeInBytes);
fn void getDescriptorSetLayoutBindingOffsetEXT (Device device, DescriptorSetLayout layout, uint binding, DeviceSize* pOffset) => extensions.vkGetDescriptorSetLayoutBindingOffsetEXT(device, layout, binding, pOffset);
fn void getDescriptorEXT (Device device, DescriptorGetInfoEXT* pDescriptorInfo, usz dataSize, void* pDescriptor) => extensions.vkGetDescriptorEXT(device, pDescriptorInfo, dataSize, pDescriptor);
fn void cmdBindDescriptorBuffersEXT (CommandBuffer commandBuffer, uint bufferCount, DescriptorBufferBindingInfoEXT* pBindingInfos) => extensions.vkCmdBindDescriptorBuffersEXT(commandBuffer, bufferCount, pBindingInfos);
fn void cmdSetDescriptorBufferOffsetsEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint firstSet, uint setCount, uint* pBufferIndices, DeviceSize* pOffsets) => extensions.vkCmdSetDescriptorBufferOffsetsEXT(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, pBufferIndices, pOffsets);
fn void cmdBindDescriptorBufferEmbeddedSamplersEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set) => extensions.vkCmdBindDescriptorBufferEmbeddedSamplersEXT(commandBuffer, pipelineBindPoint, layout, set);
fn void setDeviceMemoryPriorityEXT (Device device, DeviceMemory memory, float priority) => extensions.vkSetDeviceMemoryPriorityEXT(device, memory, priority);
fn void destroyCudaModuleNV (Device device, CudaModuleNV mod, AllocationCallbacks* pAllocator) => extensions.vkDestroyCudaModuleNV(device, mod, pAllocator);
fn void destroyCudaFunctionNV (Device device, CudaFunctionNV function, AllocationCallbacks* pAllocator) => extensions.vkDestroyCudaFunctionNV(device, function, pAllocator);
fn void cmdCudaLaunchKernelNV (CommandBuffer commandBuffer, CudaLaunchInfoNV* pLaunchInfo) => extensions.vkCmdCudaLaunchKernelNV(commandBuffer, pLaunchInfo);
fn void cmdBeginRenderingKHR (CommandBuffer commandBuffer, RenderingInfo* pRenderingInfo) => extensions.vkCmdBeginRenderingKHR(commandBuffer, pRenderingInfo);
fn void cmdEndRendering2KHR (CommandBuffer commandBuffer, RenderingEndInfoKHR* pRenderingEndInfo) => extensions.vkCmdEndRendering2KHR(commandBuffer, pRenderingEndInfo);
fn void cmdEndRendering2EXT (CommandBuffer commandBuffer, RenderingEndInfoKHR* pRenderingEndInfo) => extensions.vkCmdEndRendering2EXT(commandBuffer, pRenderingEndInfo);
fn void cmdEndRenderingKHR (CommandBuffer commandBuffer) => extensions.vkCmdEndRenderingKHR(commandBuffer);
fn void getDescriptorSetLayoutHostMappingInfoVALVE (Device device, DescriptorSetBindingReferenceVALVE* pBindingReference, DescriptorSetLayoutHostMappingInfoVALVE* pHostMapping) => extensions.vkGetDescriptorSetLayoutHostMappingInfoVALVE(device, pBindingReference, pHostMapping);
fn void getDescriptorSetHostMappingVALVE (Device device, DescriptorSet descriptorSet, void** ppData) => extensions.vkGetDescriptorSetHostMappingVALVE(device, descriptorSet, ppData);
fn void cmdBuildMicromapsEXT (CommandBuffer commandBuffer, uint infoCount, MicromapBuildInfoEXT* pInfos) => extensions.vkCmdBuildMicromapsEXT(commandBuffer, infoCount, pInfos);
fn void destroyMicromapEXT (Device device, MicromapEXT micromap, AllocationCallbacks* pAllocator) => extensions.vkDestroyMicromapEXT(device, micromap, pAllocator);
fn void cmdCopyMicromapEXT (CommandBuffer commandBuffer, CopyMicromapInfoEXT* pInfo) => extensions.vkCmdCopyMicromapEXT(commandBuffer, pInfo);
fn void cmdCopyMicromapToMemoryEXT (CommandBuffer commandBuffer, CopyMicromapToMemoryInfoEXT* pInfo) => extensions.vkCmdCopyMicromapToMemoryEXT(commandBuffer, pInfo);
fn void cmdCopyMemoryToMicromapEXT (CommandBuffer commandBuffer, CopyMemoryToMicromapInfoEXT* pInfo) => extensions.vkCmdCopyMemoryToMicromapEXT(commandBuffer, pInfo);
fn void cmdWriteMicromapsPropertiesEXT (CommandBuffer commandBuffer, uint micromapCount, MicromapEXT* pMicromaps, QueryType queryType, QueryPool queryPool, uint firstQuery) => extensions.vkCmdWriteMicromapsPropertiesEXT(commandBuffer, micromapCount, pMicromaps, queryType, queryPool, firstQuery);
fn void getDeviceMicromapCompatibilityEXT (Device device, MicromapVersionInfoEXT* pVersionInfo, AccelerationStructureCompatibilityKHR* pCompatibility) => extensions.vkGetDeviceMicromapCompatibilityEXT(device, pVersionInfo, pCompatibility);
fn void getMicromapBuildSizesEXT (Device device, AccelerationStructureBuildTypeKHR buildType, MicromapBuildInfoEXT* pBuildInfo, MicromapBuildSizesInfoEXT* pSizeInfo) => extensions.vkGetMicromapBuildSizesEXT(device, buildType, pBuildInfo, pSizeInfo);
fn void getShaderModuleIdentifierEXT (Device device, ShaderModule shaderModule, ShaderModuleIdentifierEXT* pIdentifier) => extensions.vkGetShaderModuleIdentifierEXT(device, shaderModule, pIdentifier);
fn void getShaderModuleCreateInfoIdentifierEXT (Device device, ShaderModuleCreateInfo* pCreateInfo, ShaderModuleIdentifierEXT* pIdentifier) => extensions.vkGetShaderModuleCreateInfoIdentifierEXT(device, pCreateInfo, pIdentifier);
fn void getImageSubresourceLayout2KHR (Device device, Image image, ImageSubresource2* pSubresource, SubresourceLayout2* pLayout) => extensions.vkGetImageSubresourceLayout2KHR(device, image, pSubresource, pLayout);
fn void getImageSubresourceLayout2EXT (Device device, Image image, ImageSubresource2* pSubresource, SubresourceLayout2* pLayout) => extensions.vkGetImageSubresourceLayout2EXT(device, image, pSubresource, pLayout);
fn void exportMetalObjectsEXT (Device device, ExportMetalObjectsInfoEXT* pMetalObjectsInfo) => extensions.vkExportMetalObjectsEXT(device, pMetalObjectsInfo);
fn void cmdBindTileMemoryQCOM (CommandBuffer commandBuffer, TileMemoryBindInfoQCOM* pTileMemoryBindInfo) => extensions.vkCmdBindTileMemoryQCOM(commandBuffer, pTileMemoryBindInfo);
fn void destroyOpticalFlowSessionNV (Device device, OpticalFlowSessionNV session, AllocationCallbacks* pAllocator) => extensions.vkDestroyOpticalFlowSessionNV(device, session, pAllocator);
fn void cmdOpticalFlowExecuteNV (CommandBuffer commandBuffer, OpticalFlowSessionNV session, OpticalFlowExecuteInfoNV* pExecuteInfo) => extensions.vkCmdOpticalFlowExecuteNV(commandBuffer, session, pExecuteInfo);
fn void cmdSetDepthBias2EXT (CommandBuffer commandBuffer, DepthBiasInfoEXT* pDepthBiasInfo) => extensions.vkCmdSetDepthBias2EXT(commandBuffer, pDepthBiasInfo);
fn void getDeviceImageSubresourceLayoutKHR (Device device, DeviceImageSubresourceInfo* pInfo, SubresourceLayout2* pLayout) => extensions.vkGetDeviceImageSubresourceLayoutKHR(device, pInfo, pLayout);
fn void destroyShaderEXT (Device device, ShaderEXT shader, AllocationCallbacks* pAllocator) => extensions.vkDestroyShaderEXT(device, shader, pAllocator);
fn void cmdBindShadersEXT (CommandBuffer commandBuffer, uint stageCount, ShaderStageFlagBits* pStages, ShaderEXT* pShaders) => extensions.vkCmdBindShadersEXT(commandBuffer, stageCount, pStages, pShaders);
fn void cmdInitializeGraphScratchMemoryAMDX (CommandBuffer commandBuffer, Pipeline executionGraph, DeviceAddress scratch, DeviceSize scratchSize) => extensions.vkCmdInitializeGraphScratchMemoryAMDX(commandBuffer, executionGraph, scratch, scratchSize);
fn void cmdDispatchGraphAMDX (CommandBuffer commandBuffer, DeviceAddress scratch, DeviceSize scratchSize, DispatchGraphCountInfoAMDX* pCountInfo) => extensions.vkCmdDispatchGraphAMDX(commandBuffer, scratch, scratchSize, pCountInfo);
fn void cmdDispatchGraphIndirectAMDX (CommandBuffer commandBuffer, DeviceAddress scratch, DeviceSize scratchSize, DispatchGraphCountInfoAMDX* pCountInfo) => extensions.vkCmdDispatchGraphIndirectAMDX(commandBuffer, scratch, scratchSize, pCountInfo);
fn void cmdDispatchGraphIndirectCountAMDX (CommandBuffer commandBuffer, DeviceAddress scratch, DeviceSize scratchSize, DeviceAddress countInfo) => extensions.vkCmdDispatchGraphIndirectCountAMDX(commandBuffer, scratch, scratchSize, countInfo);
fn void cmdBindDescriptorSets2KHR (CommandBuffer commandBuffer, BindDescriptorSetsInfo* pBindDescriptorSetsInfo) => extensions.vkCmdBindDescriptorSets2KHR(commandBuffer, pBindDescriptorSetsInfo);
fn void cmdPushConstants2KHR (CommandBuffer commandBuffer, PushConstantsInfo* pPushConstantsInfo) => extensions.vkCmdPushConstants2KHR(commandBuffer, pPushConstantsInfo);
fn void cmdPushDescriptorSet2KHR (CommandBuffer commandBuffer, PushDescriptorSetInfo* pPushDescriptorSetInfo) => extensions.vkCmdPushDescriptorSet2KHR(commandBuffer, pPushDescriptorSetInfo);
fn void cmdPushDescriptorSetWithTemplate2KHR (CommandBuffer commandBuffer, PushDescriptorSetWithTemplateInfo* pPushDescriptorSetWithTemplateInfo) => extensions.vkCmdPushDescriptorSetWithTemplate2KHR(commandBuffer, pPushDescriptorSetWithTemplateInfo);
fn void cmdSetDescriptorBufferOffsets2EXT (CommandBuffer commandBuffer, SetDescriptorBufferOffsetsInfoEXT* pSetDescriptorBufferOffsetsInfo) => extensions.vkCmdSetDescriptorBufferOffsets2EXT(commandBuffer, pSetDescriptorBufferOffsetsInfo);
fn void cmdBindDescriptorBufferEmbeddedSamplers2EXT (CommandBuffer commandBuffer, BindDescriptorBufferEmbeddedSamplersInfoEXT* pBindDescriptorBufferEmbeddedSamplersInfo) => extensions.vkCmdBindDescriptorBufferEmbeddedSamplers2EXT(commandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo);
fn void setLatencyMarkerNV (Device device, SwapchainKHR swapchain, SetLatencyMarkerInfoNV* pLatencyMarkerInfo) => extensions.vkSetLatencyMarkerNV(device, swapchain, pLatencyMarkerInfo);
fn void getLatencyTimingsNV (Device device, SwapchainKHR swapchain, GetLatencyMarkerInfoNV* pLatencyMarkerInfo) => extensions.vkGetLatencyTimingsNV(device, swapchain, pLatencyMarkerInfo);
fn void queueNotifyOutOfBandNV (Queue queue, OutOfBandQueueTypeInfoNV* pQueueTypeInfo) => extensions.vkQueueNotifyOutOfBandNV(queue, pQueueTypeInfo);
fn void cmdSetRenderingAttachmentLocationsKHR (CommandBuffer commandBuffer, RenderingAttachmentLocationInfo* pLocationInfo) => extensions.vkCmdSetRenderingAttachmentLocationsKHR(commandBuffer, pLocationInfo);
fn void cmdSetRenderingInputAttachmentIndicesKHR (CommandBuffer commandBuffer, RenderingInputAttachmentIndexInfo* pInputAttachmentIndexInfo) => extensions.vkCmdSetRenderingInputAttachmentIndicesKHR(commandBuffer, pInputAttachmentIndexInfo);
fn void cmdSetDepthClampRangeEXT (CommandBuffer commandBuffer, DepthClampModeEXT depthClampMode, DepthClampRangeEXT* pDepthClampRange) => extensions.vkCmdSetDepthClampRangeEXT(commandBuffer, depthClampMode, pDepthClampRange);
fn void cmdConvertCooperativeVectorMatrixNV (CommandBuffer commandBuffer, uint infoCount, ConvertCooperativeVectorMatrixInfoNV* pInfos) => extensions.vkCmdConvertCooperativeVectorMatrixNV(commandBuffer, infoCount, pInfos);
fn void cmdDispatchTileQCOM (CommandBuffer commandBuffer, DispatchTileInfoQCOM* pDispatchTileInfo) => extensions.vkCmdDispatchTileQCOM(commandBuffer, pDispatchTileInfo);
fn void cmdBeginPerTileExecutionQCOM (CommandBuffer commandBuffer, PerTileBeginInfoQCOM* pPerTileBeginInfo) => extensions.vkCmdBeginPerTileExecutionQCOM(commandBuffer, pPerTileBeginInfo);
fn void cmdEndPerTileExecutionQCOM (CommandBuffer commandBuffer, PerTileEndInfoQCOM* pPerTileEndInfo) => extensions.vkCmdEndPerTileExecutionQCOM(commandBuffer, pPerTileEndInfo);
fn void destroyExternalComputeQueueNV (Device device, ExternalComputeQueueNV externalQueue, AllocationCallbacks* pAllocator) => extensions.vkDestroyExternalComputeQueueNV(device, externalQueue, pAllocator);
fn void getExternalComputeQueueDataNV (ExternalComputeQueueNV externalQueue, ExternalComputeQueueDataParamsNV* params, void* pData) => extensions.vkGetExternalComputeQueueDataNV(externalQueue, params, pData);
fn void destroyShaderInstrumentationARM (Device device, ShaderInstrumentationARM instrumentation, AllocationCallbacks* pAllocator) => extensions.vkDestroyShaderInstrumentationARM(device, instrumentation, pAllocator);
fn void cmdBeginShaderInstrumentationARM (CommandBuffer commandBuffer, ShaderInstrumentationARM instrumentation) => extensions.vkCmdBeginShaderInstrumentationARM(commandBuffer, instrumentation);
fn void cmdEndShaderInstrumentationARM (CommandBuffer commandBuffer) => extensions.vkCmdEndShaderInstrumentationARM(commandBuffer);
fn void clearShaderInstrumentationMetricsARM (Device device, ShaderInstrumentationARM instrumentation) => extensions.vkClearShaderInstrumentationMetricsARM(device, instrumentation);
fn void destroyTensorARM (Device device, TensorARM tensor, AllocationCallbacks* pAllocator) => extensions.vkDestroyTensorARM(device, tensor, pAllocator);
fn void destroyTensorViewARM (Device device, TensorViewARM tensorView, AllocationCallbacks* pAllocator) => extensions.vkDestroyTensorViewARM(device, tensorView, pAllocator);
fn void getTensorMemoryRequirementsARM (Device device, TensorMemoryRequirementsInfoARM* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetTensorMemoryRequirementsARM(device, pInfo, pMemoryRequirements);
fn void getDeviceTensorMemoryRequirementsARM (Device device, DeviceTensorMemoryRequirementsARM* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetDeviceTensorMemoryRequirementsARM(device, pInfo, pMemoryRequirements);
fn void cmdCopyTensorARM (CommandBuffer commandBuffer, CopyTensorInfoARM* pCopyTensorInfo) => extensions.vkCmdCopyTensorARM(commandBuffer, pCopyTensorInfo);
fn void getPhysicalDeviceExternalTensorPropertiesARM (PhysicalDevice physicalDevice, PhysicalDeviceExternalTensorInfoARM* pExternalTensorInfo, ExternalTensorPropertiesARM* pExternalTensorProperties) => extensions.vkGetPhysicalDeviceExternalTensorPropertiesARM(physicalDevice, pExternalTensorInfo, pExternalTensorProperties);
fn void getDataGraphPipelineSessionMemoryRequirementsARM (Device device, DataGraphPipelineSessionMemoryRequirementsInfoARM* pInfo, MemoryRequirements2* pMemoryRequirements) => extensions.vkGetDataGraphPipelineSessionMemoryRequirementsARM(device, pInfo, pMemoryRequirements);
fn void destroyDataGraphPipelineSessionARM (Device device, DataGraphPipelineSessionARM session, AllocationCallbacks* pAllocator) => extensions.vkDestroyDataGraphPipelineSessionARM(device, session, pAllocator);
fn void cmdDispatchDataGraphARM (CommandBuffer commandBuffer, DataGraphPipelineSessionARM session, DataGraphPipelineDispatchInfoARM* pInfo) => extensions.vkCmdDispatchDataGraphARM(commandBuffer, session, pInfo);
fn void getPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM (PhysicalDevice physicalDevice, PhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM* pQueueFamilyDataGraphProcessingEngineInfo, QueueFamilyDataGraphProcessingEnginePropertiesARM* pQueueFamilyDataGraphProcessingEngineProperties) => extensions.vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM(physicalDevice, pQueueFamilyDataGraphProcessingEngineInfo, pQueueFamilyDataGraphProcessingEngineProperties);
fn void cmdSetComputeOccupancyPriorityNV (CommandBuffer commandBuffer, ComputeOccupancyPriorityParametersNV* pParameters) => extensions.vkCmdSetComputeOccupancyPriorityNV(commandBuffer, pParameters);
fn void cmdBindSamplerHeapEXT (CommandBuffer commandBuffer, BindHeapInfoEXT* pBindInfo) => extensions.vkCmdBindSamplerHeapEXT(commandBuffer, pBindInfo);
fn void cmdBindResourceHeapEXT (CommandBuffer commandBuffer, BindHeapInfoEXT* pBindInfo) => extensions.vkCmdBindResourceHeapEXT(commandBuffer, pBindInfo);
fn void cmdPushDataEXT (CommandBuffer commandBuffer, PushDataInfoEXT* pPushDataInfo) => extensions.vkCmdPushDataEXT(commandBuffer, pPushDataInfo);
fn void unregisterCustomBorderColorEXT (Device device, uint index) => extensions.vkUnregisterCustomBorderColorEXT(device, index);
fn DeviceSize getPhysicalDeviceDescriptorSizeEXT (PhysicalDevice physicalDevice, DescriptorType descriptorType) => extensions.vkGetPhysicalDeviceDescriptorSizeEXT(physicalDevice, descriptorType);
fn void cmdCopyMemoryKHR (CommandBuffer commandBuffer, CopyDeviceMemoryInfoKHR* pCopyMemoryInfo) => extensions.vkCmdCopyMemoryKHR(commandBuffer, pCopyMemoryInfo);
fn void cmdCopyMemoryToImageKHR (CommandBuffer commandBuffer, CopyDeviceMemoryImageInfoKHR* pCopyMemoryInfo) => extensions.vkCmdCopyMemoryToImageKHR(commandBuffer, pCopyMemoryInfo);
fn void cmdCopyImageToMemoryKHR (CommandBuffer commandBuffer, CopyDeviceMemoryImageInfoKHR* pCopyMemoryInfo) => extensions.vkCmdCopyImageToMemoryKHR(commandBuffer, pCopyMemoryInfo);
fn void cmdUpdateMemoryKHR (CommandBuffer commandBuffer, DeviceAddressRangeKHR* pDstRange, AddressCommandFlagsKHR dstFlags, DeviceSize dataSize, void* pData) => extensions.vkCmdUpdateMemoryKHR(commandBuffer, pDstRange, dstFlags, dataSize, pData);
fn void cmdFillMemoryKHR (CommandBuffer commandBuffer, DeviceAddressRangeKHR* pDstRange, AddressCommandFlagsKHR dstFlags, uint data) => extensions.vkCmdFillMemoryKHR(commandBuffer, pDstRange, dstFlags, data);
fn void cmdCopyQueryPoolResultsToMemoryKHR (CommandBuffer commandBuffer, QueryPool queryPool, uint firstQuery, uint queryCount, StridedDeviceAddressRangeKHR* pDstRange, AddressCommandFlagsKHR dstFlags, QueryResultFlags queryResultFlags) => extensions.vkCmdCopyQueryPoolResultsToMemoryKHR(commandBuffer, queryPool, firstQuery, queryCount, pDstRange, dstFlags, queryResultFlags);
fn void cmdBeginConditionalRendering2EXT (CommandBuffer commandBuffer, ConditionalRenderingBeginInfo2EXT* pConditionalRenderingBegin) => extensions.vkCmdBeginConditionalRendering2EXT(commandBuffer, pConditionalRenderingBegin);
fn void cmdBindTransformFeedbackBuffers2EXT (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, BindTransformFeedbackBuffer2InfoEXT* pBindingInfos) => extensions.vkCmdBindTransformFeedbackBuffers2EXT(commandBuffer, firstBinding, bindingCount, pBindingInfos);
fn void cmdBeginTransformFeedback2EXT (CommandBuffer commandBuffer, uint firstCounterRange, uint counterRangeCount, BindTransformFeedbackBuffer2InfoEXT* pCounterInfos) => extensions.vkCmdBeginTransformFeedback2EXT(commandBuffer, firstCounterRange, counterRangeCount, pCounterInfos);
fn void cmdEndTransformFeedback2EXT (CommandBuffer commandBuffer, uint firstCounterRange, uint counterRangeCount, BindTransformFeedbackBuffer2InfoEXT* pCounterInfos) => extensions.vkCmdEndTransformFeedback2EXT(commandBuffer, firstCounterRange, counterRangeCount, pCounterInfos);
fn void cmdDrawIndirectByteCount2EXT (CommandBuffer commandBuffer, uint instanceCount, uint firstInstance, BindTransformFeedbackBuffer2InfoEXT* pCounterInfo, uint counterOffset, uint vertexStride) => extensions.vkCmdDrawIndirectByteCount2EXT(commandBuffer, instanceCount, firstInstance, pCounterInfo, counterOffset, vertexStride);
fn void cmdBindIndexBuffer3KHR (CommandBuffer commandBuffer, BindIndexBuffer3InfoKHR* pInfo) => extensions.vkCmdBindIndexBuffer3KHR(commandBuffer, pInfo);
fn void cmdBindVertexBuffers3KHR (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, BindVertexBuffer3InfoKHR* pBindingInfos) => extensions.vkCmdBindVertexBuffers3KHR(commandBuffer, firstBinding, bindingCount, pBindingInfos);
fn void cmdDrawIndirect2KHR (CommandBuffer commandBuffer, DrawIndirect2InfoKHR* pInfo) => extensions.vkCmdDrawIndirect2KHR(commandBuffer, pInfo);
fn void cmdDrawIndexedIndirect2KHR (CommandBuffer commandBuffer, DrawIndirect2InfoKHR* pInfo) => extensions.vkCmdDrawIndexedIndirect2KHR(commandBuffer, pInfo);
fn void cmdDrawIndirectCount2KHR (CommandBuffer commandBuffer, DrawIndirectCount2InfoKHR* pInfo) => extensions.vkCmdDrawIndirectCount2KHR(commandBuffer, pInfo);
fn void cmdDrawIndexedIndirectCount2KHR (CommandBuffer commandBuffer, DrawIndirectCount2InfoKHR* pInfo) => extensions.vkCmdDrawIndexedIndirectCount2KHR(commandBuffer, pInfo);
fn void cmdDrawMeshTasksIndirect2EXT (CommandBuffer commandBuffer, DrawIndirect2InfoKHR* pInfo) => extensions.vkCmdDrawMeshTasksIndirect2EXT(commandBuffer, pInfo);
fn void cmdDrawMeshTasksIndirectCount2EXT (CommandBuffer commandBuffer, DrawIndirectCount2InfoKHR* pInfo) => extensions.vkCmdDrawMeshTasksIndirectCount2EXT(commandBuffer, pInfo);
fn void cmdDispatchIndirect2KHR (CommandBuffer commandBuffer, DispatchIndirect2InfoKHR* pInfo) => extensions.vkCmdDispatchIndirect2KHR(commandBuffer, pInfo);

fn void? createInstance (InstanceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Instance* pInstance) {
  Result result = vkCreateInstance(pCreateInfo, pAllocator, pInstance);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_LAYER_NOT_PRESENT: return E_ERROR_LAYER_NOT_PRESENT~;
       case ERROR_EXTENSION_NOT_PRESENT: return E_ERROR_EXTENSION_NOT_PRESENT~;
       case ERROR_INCOMPATIBLE_DRIVER: return E_ERROR_INCOMPATIBLE_DRIVER~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumeratePhysicalDevices (Instance instance, uint* pPhysicalDeviceCount, PhysicalDevice* pPhysicalDevices) {
  Result result = vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceImageFormatProperties (PhysicalDevice physicalDevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_FORMAT_NOT_SUPPORTED: return E_ERROR_FORMAT_NOT_SUPPORTED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDevice (PhysicalDevice physicalDevice, DeviceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Device* pDevice) {
  Result result = vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_EXTENSION_NOT_PRESENT: return E_ERROR_EXTENSION_NOT_PRESENT~;
       case ERROR_FEATURE_NOT_PRESENT: return E_ERROR_FEATURE_NOT_PRESENT~;
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumerateInstanceVersion (uint* pApiVersion) {
  Result result = vkEnumerateInstanceVersion(pApiVersion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumerateInstanceLayerProperties (uint* pPropertyCount, LayerProperties* pProperties) {
  Result result = vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumerateInstanceExtensionProperties (char* pLayerName, uint* pPropertyCount, ExtensionProperties* pProperties) {
  Result result = vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_LAYER_NOT_PRESENT: return E_ERROR_LAYER_NOT_PRESENT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumerateDeviceLayerProperties (PhysicalDevice physicalDevice, uint* pPropertyCount, LayerProperties* pProperties) {
  Result result = vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumerateDeviceExtensionProperties (PhysicalDevice physicalDevice, char* pLayerName, uint* pPropertyCount, ExtensionProperties* pProperties) {
  Result result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_LAYER_NOT_PRESENT: return E_ERROR_LAYER_NOT_PRESENT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queueSubmit (Queue queue, uint submitCount, SubmitInfo* pSubmits, Fence fence) {
  Result result = vkQueueSubmit(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queueWaitIdle (Queue queue) {
  Result result = vkQueueWaitIdle(queue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? deviceWaitIdle (Device device) {
  Result result = vkDeviceWaitIdle(device);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? allocateMemory (Device device, MemoryAllocateInfo* pAllocateInfo, AllocationCallbacks* pAllocator, DeviceMemory* pMemory) {
  Result result = vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? mapMemory (Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void** ppData) {
  Result result = vkMapMemory(device, memory, offset, size, flags, ppData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? flushMappedMemoryRanges (Device device, uint memoryRangeCount, MappedMemoryRange* pMemoryRanges) {
  Result result = vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? invalidateMappedMemoryRanges (Device device, uint memoryRangeCount, MappedMemoryRange* pMemoryRanges) {
  Result result = vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindBufferMemory (Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryOffset) {
  Result result = vkBindBufferMemory(device, buffer, memory, memoryOffset);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindImageMemory (Device device, Image image, DeviceMemory memory, DeviceSize memoryOffset) {
  Result result = vkBindImageMemory(device, image, memory, memoryOffset);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queueBindSparse (Queue queue, uint bindInfoCount, BindSparseInfo* pBindInfo, Fence fence) {
  Result result = vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createFence (Device device, FenceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Fence* pFence) {
  Result result = vkCreateFence(device, pCreateInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? resetFences (Device device, uint fenceCount, Fence* pFences) {
  Result result = vkResetFences(device, fenceCount, pFences);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getFenceStatus (Device device, Fence fence) {
  Result result = vkGetFenceStatus(device, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? waitForFences (Device device, uint fenceCount, Fence* pFences, uint waitAll, ulong timeout) {
  Result result = vkWaitForFences(device, fenceCount, pFences, waitAll, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createSemaphore (Device device, SemaphoreCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Semaphore* pSemaphore) {
  Result result = vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createEvent (Device device, EventCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Event* pEvent) {
  Result result = vkCreateEvent(device, pCreateInfo, pAllocator, pEvent);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getEventStatus (Device device, Event event) {
  Result result = vkGetEventStatus(device, event);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setEvent (Device device, Event event) {
  Result result = vkSetEvent(device, event);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? resetEvent (Device device, Event event) {
  Result result = vkResetEvent(device, event);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createQueryPool (Device device, QueryPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, QueryPool* pQueryPool) {
  Result result = vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getQueryPoolResults (Device device, QueryPool queryPool, uint firstQuery, uint queryCount, usz dataSize, void* pData, DeviceSize stride, QueryResultFlags flags) {
  Result result = vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createBuffer (Device device, BufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Buffer* pBuffer) {
  Result result = vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createBufferView (Device device, BufferViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, BufferView* pView) {
  Result result = vkCreateBufferView(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createImage (Device device, ImageCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Image* pImage) {
  Result result = vkCreateImage(device, pCreateInfo, pAllocator, pImage);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_COMPRESSION_EXHAUSTED_EXT: return E_ERROR_COMPRESSION_EXHAUSTED_EXT~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createImageView (Device device, ImageViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ImageView* pView) {
  Result result = vkCreateImageView(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createShaderModule (Device device, ShaderModuleCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ShaderModule* pShaderModule) {
  Result result = vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_SHADER_NV: return E_ERROR_INVALID_SHADER_NV~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createPipelineCache (Device device, PipelineCacheCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineCache* pPipelineCache) {
  Result result = vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelineCacheData (Device device, PipelineCache pipelineCache, usz* pDataSize, void* pData) {
  Result result = vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? mergePipelineCaches (Device device, PipelineCache dstCache, uint srcCacheCount, PipelineCache* pSrcCaches) {
  Result result = vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createPipelineBinariesKHR (Device device, PipelineBinaryCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, PipelineBinaryHandlesInfoKHR* pBinaries) {
  Result result = extensions.vkCreatePipelineBinariesKHR(device, pCreateInfo, pAllocator, pBinaries);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelineKeyKHR (Device device, PipelineCreateInfoKHR* pPipelineCreateInfo, PipelineBinaryKeyKHR* pPipelineKey) {
  Result result = extensions.vkGetPipelineKeyKHR(device, pPipelineCreateInfo, pPipelineKey);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelineBinaryDataKHR (Device device, PipelineBinaryDataInfoKHR* pInfo, PipelineBinaryKeyKHR* pPipelineBinaryKey, usz* pPipelineBinaryDataSize, void* pPipelineBinaryData) {
  Result result = extensions.vkGetPipelineBinaryDataKHR(device, pInfo, pPipelineBinaryKey, pPipelineBinaryDataSize, pPipelineBinaryData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_NOT_ENOUGH_SPACE_KHR: return E_ERROR_NOT_ENOUGH_SPACE_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? releaseCapturedPipelineDataKHR (Device device, ReleaseCapturedPipelineDataInfoKHR* pInfo, AllocationCallbacks* pAllocator) {
  Result result = extensions.vkReleaseCapturedPipelineDataKHR(device, pInfo, pAllocator);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createGraphicsPipelines (Device device, PipelineCache pipelineCache, uint createInfoCount, GraphicsPipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_SHADER_NV: return E_ERROR_INVALID_SHADER_NV~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createComputePipelines (Device device, PipelineCache pipelineCache, uint createInfoCount, ComputePipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_SHADER_NV: return E_ERROR_INVALID_SHADER_NV~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceSubpassShadingMaxWorkgroupSizeHUAWEI (Device device, RenderPass renderpass, Extent2D* pMaxWorkgroupSize) {
  Result result = extensions.vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI(device, renderpass, pMaxWorkgroupSize);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createPipelineLayout (Device device, PipelineLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineLayout* pPipelineLayout) {
  Result result = vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createSampler (Device device, SamplerCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Sampler* pSampler) {
  Result result = vkCreateSampler(device, pCreateInfo, pAllocator, pSampler);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDescriptorSetLayout (Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorSetLayout* pSetLayout) {
  Result result = vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDescriptorPool (Device device, DescriptorPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorPool* pDescriptorPool) {
  Result result = vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_FRAGMENTATION_EXT: return E_ERROR_FRAGMENTATION_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? resetDescriptorPool (Device device, DescriptorPool descriptorPool, DescriptorPoolResetFlags flags) {
  Result result = vkResetDescriptorPool(device, descriptorPool, flags);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? allocateDescriptorSets (Device device, DescriptorSetAllocateInfo* pAllocateInfo, DescriptorSet* pDescriptorSets) {
  Result result = vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_FRAGMENTED_POOL: return E_ERROR_FRAGMENTED_POOL~;
       case ERROR_OUT_OF_POOL_MEMORY: return E_ERROR_OUT_OF_POOL_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? freeDescriptorSets (Device device, DescriptorPool descriptorPool, uint descriptorSetCount, DescriptorSet* pDescriptorSets) {
  Result result = vkFreeDescriptorSets(device, descriptorPool, descriptorSetCount, pDescriptorSets);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createFramebuffer (Device device, FramebufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Framebuffer* pFramebuffer) {
  Result result = vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createRenderPass (Device device, RenderPassCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) {
  Result result = vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createCommandPool (Device device, CommandPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, CommandPool* pCommandPool) {
  Result result = vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? resetCommandPool (Device device, CommandPool commandPool, CommandPoolResetFlags flags) {
  Result result = vkResetCommandPool(device, commandPool, flags);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? allocateCommandBuffers (Device device, CommandBufferAllocateInfo* pAllocateInfo, CommandBuffer* pCommandBuffers) {
  Result result = vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? beginCommandBuffer (CommandBuffer commandBuffer, CommandBufferBeginInfo* pBeginInfo) {
  Result result = vkBeginCommandBuffer(commandBuffer, pBeginInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? endCommandBuffer (CommandBuffer commandBuffer) {
  Result result = vkEndCommandBuffer(commandBuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return E_ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? resetCommandBuffer (CommandBuffer commandBuffer, CommandBufferResetFlags flags) {
  Result result = vkResetCommandBuffer(commandBuffer, flags);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceDisplayPropertiesKHR (PhysicalDevice physicalDevice, uint* pPropertyCount, DisplayPropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceDisplayPlanePropertiesKHR (PhysicalDevice physicalDevice, uint* pPropertyCount, DisplayPlanePropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDisplayPlaneSupportedDisplaysKHR (PhysicalDevice physicalDevice, uint planeIndex, uint* pDisplayCount, DisplayKHR* pDisplays) {
  Result result = extensions.vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDisplayModePropertiesKHR (PhysicalDevice physicalDevice, DisplayKHR display, uint* pPropertyCount, DisplayModePropertiesKHR* pProperties) {
  Result result = extensions.vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDisplayModeKHR (PhysicalDevice physicalDevice, DisplayKHR display, DisplayModeCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, DisplayModeKHR* pMode) {
  Result result = extensions.vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDisplayPlaneCapabilitiesKHR (PhysicalDevice physicalDevice, DisplayModeKHR mode, uint planeIndex, DisplayPlaneCapabilitiesKHR* pCapabilities) {
  Result result = extensions.vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDisplayPlaneSurfaceKHR (Instance instance, DisplaySurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createSharedSwapchainsKHR (Device device, uint swapchainCount, SwapchainCreateInfoKHR* pCreateInfos, AllocationCallbacks* pAllocator, SwapchainKHR* pSwapchains) {
  Result result = extensions.vkCreateSharedSwapchainsKHR(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INCOMPATIBLE_DISPLAY_KHR: return E_ERROR_INCOMPATIBLE_DISPLAY_KHR~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfaceSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, SurfaceKHR surface, uint* pSupported) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfaceCapabilitiesKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, SurfaceCapabilitiesKHR* pSurfaceCapabilities) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfaceFormatsKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, uint* pSurfaceFormatCount, SurfaceFormatKHR* pSurfaceFormats) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfacePresentModesKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, uint* pPresentModeCount, PresentModeKHR* pPresentModes) {
  Result result = extensions.vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createSwapchainKHR (Device device, SwapchainCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SwapchainKHR* pSwapchain) {
  Result result = extensions.vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return E_ERROR_NATIVE_WINDOW_IN_USE_KHR~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_COMPRESSION_EXHAUSTED_EXT: return E_ERROR_COMPRESSION_EXHAUSTED_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSwapchainImagesKHR (Device device, SwapchainKHR swapchain, uint* pSwapchainImageCount, Image* pSwapchainImages) {
  Result result = extensions.vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquireNextImageKHR (Device device, SwapchainKHR swapchain, ulong timeout, Semaphore semaphore, Fence fence, uint* pImageIndex) {
  Result result = extensions.vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return E_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queuePresentKHR (Queue queue, PresentInfoKHR* pPresentInfo) {
  Result result = extensions.vkQueuePresentKHR(queue, pPresentInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return E_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
       case ERROR_PRESENT_TIMING_QUEUE_FULL_EXT: return E_ERROR_PRESENT_TIMING_QUEUE_FULL_EXT~;
  }
}
fn void? createWaylandSurfaceKHR (Instance instance, WaylandSurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateWaylandSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createWin32SurfaceKHR (Instance instance, Win32SurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateWin32SurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createXcbSurfaceKHR (Instance instance, XcbSurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateXcbSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDebugReportCallbackEXT (Instance instance, DebugReportCallbackCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, DebugReportCallbackEXT* pCallback) {
  Result result = extensions.vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? debugMarkerSetObjectNameEXT (Device device, DebugMarkerObjectNameInfoEXT* pNameInfo) {
  Result result = extensions.vkDebugMarkerSetObjectNameEXT(device, pNameInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? debugMarkerSetObjectTagEXT (Device device, DebugMarkerObjectTagInfoEXT* pTagInfo) {
  Result result = extensions.vkDebugMarkerSetObjectTagEXT(device, pTagInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceExternalImageFormatPropertiesNV (PhysicalDevice physicalDevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ExternalMemoryHandleTypeFlagsNV externalHandleType, ExternalImageFormatPropertiesNV* pExternalImageFormatProperties) {
  Result result = extensions.vkGetPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_FORMAT_NOT_SUPPORTED: return E_ERROR_FORMAT_NOT_SUPPORTED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryWin32HandleNV (Device device, DeviceMemory memory, ExternalMemoryHandleTypeFlagsNV handleType, void** pHandle) {
  Result result = extensions.vkGetMemoryWin32HandleNV(device, memory, handleType, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createIndirectCommandsLayoutNV (Device device, IndirectCommandsLayoutCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, IndirectCommandsLayoutNV* pIndirectCommandsLayout) {
  Result result = extensions.vkCreateIndirectCommandsLayoutNV(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createIndirectCommandsLayoutEXT (Device device, IndirectCommandsLayoutCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, IndirectCommandsLayoutEXT* pIndirectCommandsLayout) {
  Result result = extensions.vkCreateIndirectCommandsLayoutEXT(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createIndirectExecutionSetEXT (Device device, IndirectExecutionSetCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, IndirectExecutionSetEXT* pIndirectExecutionSet) {
  Result result = extensions.vkCreateIndirectExecutionSetEXT(device, pCreateInfo, pAllocator, pIndirectExecutionSet);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceImageFormatProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties2(physicalDevice, pImageFormatInfo, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_FORMAT_NOT_SUPPORTED: return E_ERROR_FORMAT_NOT_SUPPORTED~;
       case ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR: return E_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceImageFormatProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties) {
  Result result = extensions.vkGetPhysicalDeviceImageFormatProperties2KHR(physicalDevice, pImageFormatInfo, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_FORMAT_NOT_SUPPORTED: return E_ERROR_FORMAT_NOT_SUPPORTED~;
       case ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR: return E_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryWin32HandleKHR (Device device, MemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo, void** pHandle) {
  Result result = extensions.vkGetMemoryWin32HandleKHR(device, pGetWin32HandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryWin32HandlePropertiesKHR (Device device, ExternalMemoryHandleTypeFlagBits handleType, void* handle, MemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties) {
  Result result = extensions.vkGetMemoryWin32HandlePropertiesKHR(device, handleType, handle, pMemoryWin32HandleProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryFdKHR (Device device, MemoryGetFdInfoKHR* pGetFdInfo, int* pFd) {
  Result result = extensions.vkGetMemoryFdKHR(device, pGetFdInfo, pFd);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryFdPropertiesKHR (Device device, ExternalMemoryHandleTypeFlagBits handleType, int fd, MemoryFdPropertiesKHR* pMemoryFdProperties) {
  Result result = extensions.vkGetMemoryFdPropertiesKHR(device, handleType, fd, pMemoryFdProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryRemoteAddressNV (Device device, MemoryGetRemoteAddressInfoNV* pMemoryGetRemoteAddressInfo, RemoteAddressNV* pAddress) {
  Result result = extensions.vkGetMemoryRemoteAddressNV(device, pMemoryGetRemoteAddressInfo, pAddress);
  switch(result) { 
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSemaphoreWin32HandleKHR (Device device, SemaphoreGetWin32HandleInfoKHR* pGetWin32HandleInfo, void** pHandle) {
  Result result = extensions.vkGetSemaphoreWin32HandleKHR(device, pGetWin32HandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? importSemaphoreWin32HandleKHR (Device device, ImportSemaphoreWin32HandleInfoKHR* pImportSemaphoreWin32HandleInfo) {
  Result result = extensions.vkImportSemaphoreWin32HandleKHR(device, pImportSemaphoreWin32HandleInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSemaphoreFdKHR (Device device, SemaphoreGetFdInfoKHR* pGetFdInfo, int* pFd) {
  Result result = extensions.vkGetSemaphoreFdKHR(device, pGetFdInfo, pFd);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? importSemaphoreFdKHR (Device device, ImportSemaphoreFdInfoKHR* pImportSemaphoreFdInfo) {
  Result result = extensions.vkImportSemaphoreFdKHR(device, pImportSemaphoreFdInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getFenceWin32HandleKHR (Device device, FenceGetWin32HandleInfoKHR* pGetWin32HandleInfo, void** pHandle) {
  Result result = extensions.vkGetFenceWin32HandleKHR(device, pGetWin32HandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? importFenceWin32HandleKHR (Device device, ImportFenceWin32HandleInfoKHR* pImportFenceWin32HandleInfo) {
  Result result = extensions.vkImportFenceWin32HandleKHR(device, pImportFenceWin32HandleInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getFenceFdKHR (Device device, FenceGetFdInfoKHR* pGetFdInfo, int* pFd) {
  Result result = extensions.vkGetFenceFdKHR(device, pGetFdInfo, pFd);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? importFenceFdKHR (Device device, ImportFenceFdInfoKHR* pImportFenceFdInfo) {
  Result result = extensions.vkImportFenceFdKHR(device, pImportFenceFdInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? releaseDisplayEXT (PhysicalDevice physicalDevice, DisplayKHR display) {
  Result result = extensions.vkReleaseDisplayEXT(physicalDevice, display);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquireWinrtDisplayNV (PhysicalDevice physicalDevice, DisplayKHR display) {
  Result result = extensions.vkAcquireWinrtDisplayNV(physicalDevice, display);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getWinrtDisplayNV (PhysicalDevice physicalDevice, uint deviceRelativeId, DisplayKHR* pDisplay) {
  Result result = extensions.vkGetWinrtDisplayNV(physicalDevice, deviceRelativeId, pDisplay);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? displayPowerControlEXT (Device device, DisplayKHR display, DisplayPowerInfoEXT* pDisplayPowerInfo) {
  Result result = extensions.vkDisplayPowerControlEXT(device, display, pDisplayPowerInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? registerDeviceEventEXT (Device device, DeviceEventInfoEXT* pDeviceEventInfo, AllocationCallbacks* pAllocator, Fence* pFence) {
  Result result = extensions.vkRegisterDeviceEventEXT(device, pDeviceEventInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? registerDisplayEventEXT (Device device, DisplayKHR display, DisplayEventInfoEXT* pDisplayEventInfo, AllocationCallbacks* pAllocator, Fence* pFence) {
  Result result = extensions.vkRegisterDisplayEventEXT(device, display, pDisplayEventInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSwapchainCounterEXT (Device device, SwapchainKHR swapchain, SurfaceCounterFlagBitsEXT counter, ulong* pCounterValue) {
  Result result = extensions.vkGetSwapchainCounterEXT(device, swapchain, counter, pCounterValue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfaceCapabilities2EXT (PhysicalDevice physicalDevice, SurfaceKHR surface, SurfaceCapabilities2EXT* pSurfaceCapabilities) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice, surface, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumeratePhysicalDeviceGroups (Instance instance, uint* pPhysicalDeviceGroupCount, PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) {
  Result result = vkEnumeratePhysicalDeviceGroups(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumeratePhysicalDeviceGroupsKHR (Instance instance, uint* pPhysicalDeviceGroupCount, PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) {
  Result result = extensions.vkEnumeratePhysicalDeviceGroupsKHR(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindBufferMemory2 (Device device, uint bindInfoCount, BindBufferMemoryInfo* pBindInfos) {
  Result result = vkBindBufferMemory2(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindBufferMemory2KHR (Device device, uint bindInfoCount, BindBufferMemoryInfo* pBindInfos) {
  Result result = extensions.vkBindBufferMemory2KHR(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindImageMemory2 (Device device, uint bindInfoCount, BindImageMemoryInfo* pBindInfos) {
  Result result = vkBindImageMemory2(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindImageMemory2KHR (Device device, uint bindInfoCount, BindImageMemoryInfo* pBindInfos) {
  Result result = extensions.vkBindImageMemory2KHR(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceGroupPresentCapabilitiesKHR (Device device, DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities) {
  Result result = extensions.vkGetDeviceGroupPresentCapabilitiesKHR(device, pDeviceGroupPresentCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceGroupSurfacePresentModesKHR (Device device, SurfaceKHR surface, DeviceGroupPresentModeFlagsKHR* pModes) {
  Result result = extensions.vkGetDeviceGroupSurfacePresentModesKHR(device, surface, pModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquireNextImage2KHR (Device device, AcquireNextImageInfoKHR* pAcquireInfo, uint* pImageIndex) {
  Result result = extensions.vkAcquireNextImage2KHR(device, pAcquireInfo, pImageIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return E_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDevicePresentRectanglesKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, uint* pRectCount, Rect2D* pRects) {
  Result result = extensions.vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, pRectCount, pRects);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplateCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorUpdateTemplate* pDescriptorUpdateTemplate) {
  Result result = vkCreateDescriptorUpdateTemplate(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDescriptorUpdateTemplateKHR (Device device, DescriptorUpdateTemplateCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorUpdateTemplate* pDescriptorUpdateTemplate) {
  Result result = extensions.vkCreateDescriptorUpdateTemplateKHR(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSwapchainStatusKHR (Device device, SwapchainKHR swapchain) {
  Result result = extensions.vkGetSwapchainStatusKHR(device, swapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return E_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getRefreshCycleDurationGOOGLE (Device device, SwapchainKHR swapchain, RefreshCycleDurationGOOGLE* pDisplayTimingProperties) {
  Result result = extensions.vkGetRefreshCycleDurationGOOGLE(device, swapchain, pDisplayTimingProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPastPresentationTimingGOOGLE (Device device, SwapchainKHR swapchain, uint* pPresentationTimingCount, PastPresentationTimingGOOGLE* pPresentationTimings) {
  Result result = extensions.vkGetPastPresentationTimingGOOGLE(device, swapchain, pPresentationTimingCount, pPresentationTimings);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createIOSSurfaceMVK (Instance instance, IOSSurfaceCreateInfoMVK* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateIOSSurfaceMVK(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return E_ERROR_NATIVE_WINDOW_IN_USE_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createMacOSSurfaceMVK (Instance instance, MacOSSurfaceCreateInfoMVK* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateMacOSSurfaceMVK(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return E_ERROR_NATIVE_WINDOW_IN_USE_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createMetalSurfaceEXT (Instance instance, MetalSurfaceCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateMetalSurfaceEXT(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return E_ERROR_NATIVE_WINDOW_IN_USE_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfaceCapabilities2KHR (PhysicalDevice physicalDevice, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, SurfaceCapabilities2KHR* pSurfaceCapabilities) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice, pSurfaceInfo, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfaceFormats2KHR (PhysicalDevice physicalDevice, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint* pSurfaceFormatCount, SurfaceFormat2KHR* pSurfaceFormats) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceDisplayProperties2KHR (PhysicalDevice physicalDevice, uint* pPropertyCount, DisplayProperties2KHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceDisplayPlaneProperties2KHR (PhysicalDevice physicalDevice, uint* pPropertyCount, DisplayPlaneProperties2KHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDisplayModeProperties2KHR (PhysicalDevice physicalDevice, DisplayKHR display, uint* pPropertyCount, DisplayModeProperties2KHR* pProperties) {
  Result result = extensions.vkGetDisplayModeProperties2KHR(physicalDevice, display, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDisplayPlaneCapabilities2KHR (PhysicalDevice physicalDevice, DisplayPlaneInfo2KHR* pDisplayPlaneInfo, DisplayPlaneCapabilities2KHR* pCapabilities) {
  Result result = extensions.vkGetDisplayPlaneCapabilities2KHR(physicalDevice, pDisplayPlaneInfo, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion) {
  Result result = vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createSamplerYcbcrConversionKHR (Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion) {
  Result result = extensions.vkCreateSamplerYcbcrConversionKHR(device, pCreateInfo, pAllocator, pYcbcrConversion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createValidationCacheEXT (Device device, ValidationCacheCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, ValidationCacheEXT* pValidationCache) {
  Result result = extensions.vkCreateValidationCacheEXT(device, pCreateInfo, pAllocator, pValidationCache);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getValidationCacheDataEXT (Device device, ValidationCacheEXT validationCache, usz* pDataSize, void* pData) {
  Result result = extensions.vkGetValidationCacheDataEXT(device, validationCache, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? mergeValidationCachesEXT (Device device, ValidationCacheEXT dstCache, uint srcCacheCount, ValidationCacheEXT* pSrcCaches) {
  Result result = extensions.vkMergeValidationCachesEXT(device, dstCache, srcCacheCount, pSrcCaches);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getShaderInfoAMD (Device device, Pipeline pipeline, ShaderStageFlagBits shaderStage, ShaderInfoTypeAMD infoType, usz* pInfoSize, void* pInfo) {
  Result result = extensions.vkGetShaderInfoAMD(device, pipeline, shaderStage, infoType, pInfoSize, pInfo);
  switch(result) { 
       case ERROR_FEATURE_NOT_PRESENT: return E_ERROR_FEATURE_NOT_PRESENT~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceCalibrateableTimeDomainsKHR (PhysicalDevice physicalDevice, uint* pTimeDomainCount, TimeDomainKHR* pTimeDomains) {
  Result result = extensions.vkGetPhysicalDeviceCalibrateableTimeDomainsKHR(physicalDevice, pTimeDomainCount, pTimeDomains);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceCalibrateableTimeDomainsEXT (PhysicalDevice physicalDevice, uint* pTimeDomainCount, TimeDomainKHR* pTimeDomains) {
  Result result = extensions.vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice, pTimeDomainCount, pTimeDomains);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getCalibratedTimestampsKHR (Device device, uint timestampCount, CalibratedTimestampInfoKHR* pTimestampInfos, ulong* pTimestamps, ulong* pMaxDeviation) {
  Result result = extensions.vkGetCalibratedTimestampsKHR(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getCalibratedTimestampsEXT (Device device, uint timestampCount, CalibratedTimestampInfoKHR* pTimestampInfos, ulong* pTimestamps, ulong* pMaxDeviation) {
  Result result = extensions.vkGetCalibratedTimestampsEXT(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setDebugUtilsObjectNameEXT (Device device, DebugUtilsObjectNameInfoEXT* pNameInfo) {
  Result result = extensions.vkSetDebugUtilsObjectNameEXT(device, pNameInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setDebugUtilsObjectTagEXT (Device device, DebugUtilsObjectTagInfoEXT* pTagInfo) {
  Result result = extensions.vkSetDebugUtilsObjectTagEXT(device, pTagInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, DebugUtilsMessengerEXT* pMessenger) {
  Result result = extensions.vkCreateDebugUtilsMessengerEXT(instance, pCreateInfo, pAllocator, pMessenger);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryHostPointerPropertiesEXT (Device device, ExternalMemoryHandleTypeFlagBits handleType, void* pHostPointer, MemoryHostPointerPropertiesEXT* pMemoryHostPointerProperties) {
  Result result = extensions.vkGetMemoryHostPointerPropertiesEXT(device, handleType, pHostPointer, pMemoryHostPointerProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createRenderPass2 (Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) {
  Result result = vkCreateRenderPass2(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createRenderPass2KHR (Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) {
  Result result = extensions.vkCreateRenderPass2KHR(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSemaphoreCounterValue (Device device, Semaphore semaphore, ulong* pValue) {
  Result result = vkGetSemaphoreCounterValue(device, semaphore, pValue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSemaphoreCounterValueKHR (Device device, Semaphore semaphore, ulong* pValue) {
  Result result = extensions.vkGetSemaphoreCounterValueKHR(device, semaphore, pValue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? waitSemaphores (Device device, SemaphoreWaitInfo* pWaitInfo, ulong timeout) {
  Result result = vkWaitSemaphores(device, pWaitInfo, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? waitSemaphoresKHR (Device device, SemaphoreWaitInfo* pWaitInfo, ulong timeout) {
  Result result = extensions.vkWaitSemaphoresKHR(device, pWaitInfo, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? signalSemaphore (Device device, SemaphoreSignalInfo* pSignalInfo) {
  Result result = vkSignalSemaphore(device, pSignalInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? signalSemaphoreKHR (Device device, SemaphoreSignalInfo* pSignalInfo) {
  Result result = extensions.vkSignalSemaphoreKHR(device, pSignalInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? compileDeferredNV (Device device, Pipeline pipeline, uint shader) {
  Result result = extensions.vkCompileDeferredNV(device, pipeline, shader);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindAccelerationStructureMemoryNV (Device device, uint bindInfoCount, BindAccelerationStructureMemoryInfoNV* pBindInfos) {
  Result result = extensions.vkBindAccelerationStructureMemoryNV(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyAccelerationStructureKHR (Device device, DeferredOperationKHR deferredOperation, CopyAccelerationStructureInfoKHR* pInfo) {
  Result result = extensions.vkCopyAccelerationStructureKHR(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyAccelerationStructureToMemoryKHR (Device device, DeferredOperationKHR deferredOperation, CopyAccelerationStructureToMemoryInfoKHR* pInfo) {
  Result result = extensions.vkCopyAccelerationStructureToMemoryKHR(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyMemoryToAccelerationStructureKHR (Device device, DeferredOperationKHR deferredOperation, CopyMemoryToAccelerationStructureInfoKHR* pInfo) {
  Result result = extensions.vkCopyMemoryToAccelerationStructureKHR(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? writeAccelerationStructuresPropertiesKHR (Device device, uint accelerationStructureCount, AccelerationStructureKHR* pAccelerationStructures, QueryType queryType, usz dataSize, void* pData, usz stride) {
  Result result = extensions.vkWriteAccelerationStructuresPropertiesKHR(device, accelerationStructureCount, pAccelerationStructures, queryType, dataSize, pData, stride);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getRayTracingShaderGroupHandlesKHR (Device device, Pipeline pipeline, uint firstGroup, uint groupCount, usz dataSize, void* pData) {
  Result result = extensions.vkGetRayTracingShaderGroupHandlesKHR(device, pipeline, firstGroup, groupCount, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getRayTracingShaderGroupHandlesNV (Device device, Pipeline pipeline, uint firstGroup, uint groupCount, usz dataSize, void* pData) {
  Result result = extensions.vkGetRayTracingShaderGroupHandlesNV(device, pipeline, firstGroup, groupCount, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getRayTracingCaptureReplayShaderGroupHandlesKHR (Device device, Pipeline pipeline, uint firstGroup, uint groupCount, usz dataSize, void* pData) {
  Result result = extensions.vkGetRayTracingCaptureReplayShaderGroupHandlesKHR(device, pipeline, firstGroup, groupCount, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getAccelerationStructureHandleNV (Device device, AccelerationStructureNV accelerationStructure, usz dataSize, void* pData) {
  Result result = extensions.vkGetAccelerationStructureHandleNV(device, accelerationStructure, dataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createRayTracingPipelinesNV (Device device, PipelineCache pipelineCache, uint createInfoCount, RayTracingPipelineCreateInfoNV* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = extensions.vkCreateRayTracingPipelinesNV(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_SHADER_NV: return E_ERROR_INVALID_SHADER_NV~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createRayTracingPipelinesKHR (Device device, DeferredOperationKHR deferredOperation, PipelineCache pipelineCache, uint createInfoCount, RayTracingPipelineCreateInfoKHR* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = extensions.vkCreateRayTracingPipelinesKHR(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getImageViewAddressNVX (Device device, ImageView imageView, ImageViewAddressPropertiesNVX* pProperties) {
  Result result = extensions.vkGetImageViewAddressNVX(device, imageView, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSurfacePresentModes2EXT (PhysicalDevice physicalDevice, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, uint* pPresentModeCount, PresentModeKHR* pPresentModes) {
  Result result = extensions.vkGetPhysicalDeviceSurfacePresentModes2EXT(physicalDevice, pSurfaceInfo, pPresentModeCount, pPresentModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceGroupSurfacePresentModes2EXT (Device device, PhysicalDeviceSurfaceInfo2KHR* pSurfaceInfo, DeviceGroupPresentModeFlagsKHR* pModes) {
  Result result = extensions.vkGetDeviceGroupSurfacePresentModes2EXT(device, pSurfaceInfo, pModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquireFullScreenExclusiveModeEXT (Device device, SwapchainKHR swapchain) {
  Result result = extensions.vkAcquireFullScreenExclusiveModeEXT(device, swapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? releaseFullScreenExclusiveModeEXT (Device device, SwapchainKHR swapchain) {
  Result result = extensions.vkReleaseFullScreenExclusiveModeEXT(device, swapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, uint* pCounterCount, PerformanceCounterKHR* pCounters, PerformanceCounterDescriptionKHR* pCounterDescriptions) {
  Result result = extensions.vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquireProfilingLockKHR (Device device, AcquireProfilingLockInfoKHR* pInfo) {
  Result result = extensions.vkAcquireProfilingLockKHR(device, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getImageDrmFormatModifierPropertiesEXT (Device device, Image image, ImageDrmFormatModifierPropertiesEXT* pProperties) {
  Result result = extensions.vkGetImageDrmFormatModifierPropertiesEXT(device, image, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createHeadlessSurfaceEXT (Instance instance, HeadlessSurfaceCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateHeadlessSurfaceEXT(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV (PhysicalDevice physicalDevice, uint* pCombinationCount, FramebufferMixedSamplesCombinationNV* pCombinations) {
  Result result = extensions.vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, pCombinationCount, pCombinations);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? initializePerformanceApiINTEL (Device device, InitializePerformanceApiInfoINTEL* pInitializeInfo) {
  Result result = extensions.vkInitializePerformanceApiINTEL(device, pInitializeInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? cmdSetPerformanceMarkerINTEL (CommandBuffer commandBuffer, PerformanceMarkerInfoINTEL* pMarkerInfo) {
  Result result = extensions.vkCmdSetPerformanceMarkerINTEL(commandBuffer, pMarkerInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? cmdSetPerformanceStreamMarkerINTEL (CommandBuffer commandBuffer, PerformanceStreamMarkerInfoINTEL* pMarkerInfo) {
  Result result = extensions.vkCmdSetPerformanceStreamMarkerINTEL(commandBuffer, pMarkerInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? cmdSetPerformanceOverrideINTEL (CommandBuffer commandBuffer, PerformanceOverrideInfoINTEL* pOverrideInfo) {
  Result result = extensions.vkCmdSetPerformanceOverrideINTEL(commandBuffer, pOverrideInfo);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquirePerformanceConfigurationINTEL (Device device, PerformanceConfigurationAcquireInfoINTEL* pAcquireInfo, PerformanceConfigurationINTEL* pConfiguration) {
  Result result = extensions.vkAcquirePerformanceConfigurationINTEL(device, pAcquireInfo, pConfiguration);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? releasePerformanceConfigurationINTEL (Device device, PerformanceConfigurationINTEL configuration) {
  Result result = extensions.vkReleasePerformanceConfigurationINTEL(device, configuration);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queueSetPerformanceConfigurationINTEL (Queue queue, PerformanceConfigurationINTEL configuration) {
  Result result = extensions.vkQueueSetPerformanceConfigurationINTEL(queue, configuration);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPerformanceParameterINTEL (Device device, PerformanceParameterTypeINTEL parameter, PerformanceValueINTEL* pValue) {
  Result result = extensions.vkGetPerformanceParameterINTEL(device, parameter, pValue);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelineExecutablePropertiesKHR (Device device, PipelineInfoKHR* pPipelineInfo, uint* pExecutableCount, PipelineExecutablePropertiesKHR* pProperties) {
  Result result = extensions.vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, pExecutableCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelineExecutableStatisticsKHR (Device device, PipelineExecutableInfoKHR* pExecutableInfo, uint* pStatisticCount, PipelineExecutableStatisticKHR* pStatistics) {
  Result result = extensions.vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, pStatisticCount, pStatistics);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelineExecutableInternalRepresentationsKHR (Device device, PipelineExecutableInfoKHR* pExecutableInfo, uint* pInternalRepresentationCount, PipelineExecutableInternalRepresentationKHR* pInternalRepresentations) {
  Result result = extensions.vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceToolProperties (PhysicalDevice physicalDevice, uint* pToolCount, PhysicalDeviceToolProperties* pToolProperties) {
  Result result = vkGetPhysicalDeviceToolProperties(physicalDevice, pToolCount, pToolProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceToolPropertiesEXT (PhysicalDevice physicalDevice, uint* pToolCount, PhysicalDeviceToolProperties* pToolProperties) {
  Result result = extensions.vkGetPhysicalDeviceToolPropertiesEXT(physicalDevice, pToolCount, pToolProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createAccelerationStructureKHR (Device device, AccelerationStructureCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, AccelerationStructureKHR* pAccelerationStructure) {
  Result result = extensions.vkCreateAccelerationStructureKHR(device, pCreateInfo, pAllocator, pAccelerationStructure);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? buildAccelerationStructuresKHR (Device device, DeferredOperationKHR deferredOperation, uint infoCount, AccelerationStructureBuildGeometryInfoKHR* pInfos, AccelerationStructureBuildRangeInfoKHR*  ppBuildRangeInfos) {
  Result result = extensions.vkBuildAccelerationStructuresKHR(device, deferredOperation, infoCount, pInfos, ppBuildRangeInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDeferredOperationKHR (Device device, AllocationCallbacks* pAllocator, DeferredOperationKHR* pDeferredOperation) {
  Result result = extensions.vkCreateDeferredOperationKHR(device, pAllocator, pDeferredOperation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeferredOperationResultKHR (Device device, DeferredOperationKHR operation) {
  Result result = extensions.vkGetDeferredOperationResultKHR(device, operation);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? deferredOperationJoinKHR (Device device, DeferredOperationKHR operation) {
  Result result = extensions.vkDeferredOperationJoinKHR(device, operation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createPrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PrivateDataSlot* pPrivateDataSlot) {
  Result result = vkCreatePrivateDataSlot(device, pCreateInfo, pAllocator, pPrivateDataSlot);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createPrivateDataSlotEXT (Device device, PrivateDataSlotCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PrivateDataSlot* pPrivateDataSlot) {
  Result result = extensions.vkCreatePrivateDataSlotEXT(device, pCreateInfo, pAllocator, pPrivateDataSlot);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setPrivateData (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong data) {
  Result result = vkSetPrivateData(device, objectType, objectHandle, privateDataSlot, data);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setPrivateDataEXT (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong data) {
  Result result = extensions.vkSetPrivateDataEXT(device, objectType, objectHandle, privateDataSlot, data);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceFragmentShadingRatesKHR (PhysicalDevice physicalDevice, uint* pFragmentShadingRateCount, PhysicalDeviceFragmentShadingRateKHR* pFragmentShadingRates) {
  Result result = extensions.vkGetPhysicalDeviceFragmentShadingRatesKHR(physicalDevice, pFragmentShadingRateCount, pFragmentShadingRates);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queueSubmit2 (Queue queue, uint submitCount, SubmitInfo2* pSubmits, Fence fence) {
  Result result = vkQueueSubmit2(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? queueSubmit2KHR (Queue queue, uint submitCount, SubmitInfo2* pSubmits, Fence fence) {
  Result result = extensions.vkQueueSubmit2KHR(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyMemoryToImage (Device device, CopyMemoryToImageInfo* pCopyMemoryToImageInfo) {
  Result result = vkCopyMemoryToImage(device, pCopyMemoryToImageInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyMemoryToImageEXT (Device device, CopyMemoryToImageInfo* pCopyMemoryToImageInfo) {
  Result result = extensions.vkCopyMemoryToImageEXT(device, pCopyMemoryToImageInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyImageToMemory (Device device, CopyImageToMemoryInfo* pCopyImageToMemoryInfo) {
  Result result = vkCopyImageToMemory(device, pCopyImageToMemoryInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyImageToMemoryEXT (Device device, CopyImageToMemoryInfo* pCopyImageToMemoryInfo) {
  Result result = extensions.vkCopyImageToMemoryEXT(device, pCopyImageToMemoryInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyImageToImage (Device device, CopyImageToImageInfo* pCopyImageToImageInfo) {
  Result result = vkCopyImageToImage(device, pCopyImageToImageInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyImageToImageEXT (Device device, CopyImageToImageInfo* pCopyImageToImageInfo) {
  Result result = extensions.vkCopyImageToImageEXT(device, pCopyImageToImageInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? transitionImageLayout (Device device, uint transitionCount, HostImageLayoutTransitionInfo* pTransitions) {
  Result result = vkTransitionImageLayout(device, transitionCount, pTransitions);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? transitionImageLayoutEXT (Device device, uint transitionCount, HostImageLayoutTransitionInfo* pTransitions) {
  Result result = extensions.vkTransitionImageLayoutEXT(device, transitionCount, pTransitions);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceVideoCapabilitiesKHR (PhysicalDevice physicalDevice, VideoProfileInfoKHR* pVideoProfile, VideoCapabilitiesKHR* pCapabilities) {
  Result result = extensions.vkGetPhysicalDeviceVideoCapabilitiesKHR(physicalDevice, pVideoProfile, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceVideoFormatPropertiesKHR (PhysicalDevice physicalDevice, PhysicalDeviceVideoFormatInfoKHR* pVideoFormatInfo, uint* pVideoFormatPropertyCount, VideoFormatPropertiesKHR* pVideoFormatProperties) {
  Result result = extensions.vkGetPhysicalDeviceVideoFormatPropertiesKHR(physicalDevice, pVideoFormatInfo, pVideoFormatPropertyCount, pVideoFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR: return E_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR (PhysicalDevice physicalDevice, PhysicalDeviceVideoEncodeQualityLevelInfoKHR* pQualityLevelInfo, VideoEncodeQualityLevelPropertiesKHR* pQualityLevelProperties) {
  Result result = extensions.vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR(physicalDevice, pQualityLevelInfo, pQualityLevelProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR~;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createVideoSessionKHR (Device device, VideoSessionCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, VideoSessionKHR* pVideoSession) {
  Result result = extensions.vkCreateVideoSessionKHR(device, pCreateInfo, pAllocator, pVideoSession);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR: return E_ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR~;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return E_ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createVideoSessionParametersKHR (Device device, VideoSessionParametersCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, VideoSessionParametersKHR* pVideoSessionParameters) {
  Result result = extensions.vkCreateVideoSessionParametersKHR(device, pCreateInfo, pAllocator, pVideoSessionParameters);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return E_ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? updateVideoSessionParametersKHR (Device device, VideoSessionParametersKHR videoSessionParameters, VideoSessionParametersUpdateInfoKHR* pUpdateInfo) {
  Result result = extensions.vkUpdateVideoSessionParametersKHR(device, videoSessionParameters, pUpdateInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return E_ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getEncodedVideoSessionParametersKHR (Device device, VideoEncodeSessionParametersGetInfoKHR* pVideoSessionParametersInfo, VideoEncodeSessionParametersFeedbackInfoKHR* pFeedbackInfo, usz* pDataSize, void* pData) {
  Result result = extensions.vkGetEncodedVideoSessionParametersKHR(device, pVideoSessionParametersInfo, pFeedbackInfo, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getVideoSessionMemoryRequirementsKHR (Device device, VideoSessionKHR videoSession, uint* pMemoryRequirementsCount, VideoSessionMemoryRequirementsKHR* pMemoryRequirements) {
  Result result = extensions.vkGetVideoSessionMemoryRequirementsKHR(device, videoSession, pMemoryRequirementsCount, pMemoryRequirements);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindVideoSessionMemoryKHR (Device device, VideoSessionKHR videoSession, uint bindSessionMemoryInfoCount, BindVideoSessionMemoryInfoKHR* pBindSessionMemoryInfos) {
  Result result = extensions.vkBindVideoSessionMemoryKHR(device, videoSession, bindSessionMemoryInfoCount, pBindSessionMemoryInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createCuModuleNVX (Device device, CuModuleCreateInfoNVX* pCreateInfo, AllocationCallbacks* pAllocator, CuModuleNVX* pModule) {
  Result result = extensions.vkCreateCuModuleNVX(device, pCreateInfo, pAllocator, pModule);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createCuFunctionNVX (Device device, CuFunctionCreateInfoNVX* pCreateInfo, AllocationCallbacks* pAllocator, CuFunctionNVX* pFunction) {
  Result result = extensions.vkCreateCuFunctionNVX(device, pCreateInfo, pAllocator, pFunction);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getBufferOpaqueCaptureDescriptorDataEXT (Device device, BufferCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetBufferOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getImageOpaqueCaptureDescriptorDataEXT (Device device, ImageCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetImageOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getImageViewOpaqueCaptureDescriptorDataEXT (Device device, ImageViewCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetImageViewOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSamplerOpaqueCaptureDescriptorDataEXT (Device device, SamplerCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetSamplerOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getAccelerationStructureOpaqueCaptureDescriptorDataEXT (Device device, AccelerationStructureCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? acquireDrmDisplayEXT (PhysicalDevice physicalDevice, int drmFd, DisplayKHR display) {
  Result result = extensions.vkAcquireDrmDisplayEXT(physicalDevice, drmFd, display);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDrmDisplayEXT (PhysicalDevice physicalDevice, int drmFd, uint connectorId, DisplayKHR* display) {
  Result result = extensions.vkGetDrmDisplayEXT(physicalDevice, drmFd, connectorId, display);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? waitForPresent2KHR (Device device, SwapchainKHR swapchain, PresentWait2InfoKHR* pPresentWait2Info) {
  Result result = extensions.vkWaitForPresent2KHR(device, swapchain, pPresentWait2Info);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return E_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? waitForPresentKHR (Device device, SwapchainKHR swapchain, ulong presentId, ulong timeout) {
  Result result = extensions.vkWaitForPresentKHR(device, swapchain, presentId, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return E_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createCudaModuleNV (Device device, CudaModuleCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, CudaModuleNV* pModule) {
  Result result = extensions.vkCreateCudaModuleNV(device, pCreateInfo, pAllocator, pModule);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getCudaModuleCacheNV (Device device, CudaModuleNV mod, usz* pCacheSize, void* pCacheData) {
  Result result = extensions.vkGetCudaModuleCacheNV(device, mod, pCacheSize, pCacheData);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createCudaFunctionNV (Device device, CudaFunctionCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, CudaFunctionNV* pFunction) {
  Result result = extensions.vkCreateCudaFunctionNV(device, pCreateInfo, pAllocator, pFunction);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createMicromapEXT (Device device, MicromapCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, MicromapEXT* pMicromap) {
  Result result = extensions.vkCreateMicromapEXT(device, pCreateInfo, pAllocator, pMicromap);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? buildMicromapsEXT (Device device, DeferredOperationKHR deferredOperation, uint infoCount, MicromapBuildInfoEXT* pInfos) {
  Result result = extensions.vkBuildMicromapsEXT(device, deferredOperation, infoCount, pInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyMicromapEXT (Device device, DeferredOperationKHR deferredOperation, CopyMicromapInfoEXT* pInfo) {
  Result result = extensions.vkCopyMicromapEXT(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyMicromapToMemoryEXT (Device device, DeferredOperationKHR deferredOperation, CopyMicromapToMemoryInfoEXT* pInfo) {
  Result result = extensions.vkCopyMicromapToMemoryEXT(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? copyMemoryToMicromapEXT (Device device, DeferredOperationKHR deferredOperation, CopyMemoryToMicromapInfoEXT* pInfo) {
  Result result = extensions.vkCopyMemoryToMicromapEXT(device, deferredOperation, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? writeMicromapsPropertiesEXT (Device device, uint micromapCount, MicromapEXT* pMicromaps, QueryType queryType, usz dataSize, void* pData, usz stride) {
  Result result = extensions.vkWriteMicromapsPropertiesEXT(device, micromapCount, pMicromaps, queryType, dataSize, pData, stride);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPipelinePropertiesEXT (Device device, PipelineInfoEXT* pPipelineInfo, BaseOutStructure* pPipelineProperties) {
  Result result = extensions.vkGetPipelinePropertiesEXT(device, pPipelineInfo, pPipelineProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getFramebufferTilePropertiesQCOM (Device device, Framebuffer framebuffer, uint* pPropertiesCount, TilePropertiesQCOM* pProperties) {
  Result result = extensions.vkGetFramebufferTilePropertiesQCOM(device, framebuffer, pPropertiesCount, pProperties);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDynamicRenderingTilePropertiesQCOM (Device device, RenderingInfo* pRenderingInfo, TilePropertiesQCOM* pProperties) {
  Result result = extensions.vkGetDynamicRenderingTilePropertiesQCOM(device, pRenderingInfo, pProperties);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceOpticalFlowImageFormatsNV (PhysicalDevice physicalDevice, OpticalFlowImageFormatInfoNV* pOpticalFlowImageFormatInfo, uint* pFormatCount, OpticalFlowImageFormatPropertiesNV* pImageFormatProperties) {
  Result result = extensions.vkGetPhysicalDeviceOpticalFlowImageFormatsNV(physicalDevice, pOpticalFlowImageFormatInfo, pFormatCount, pImageFormatProperties);
  switch(result) { 
       case ERROR_EXTENSION_NOT_PRESENT: return E_ERROR_EXTENSION_NOT_PRESENT~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_FORMAT_NOT_SUPPORTED: return E_ERROR_FORMAT_NOT_SUPPORTED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createOpticalFlowSessionNV (Device device, OpticalFlowSessionCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, OpticalFlowSessionNV* pSession) {
  Result result = extensions.vkCreateOpticalFlowSessionNV(device, pCreateInfo, pAllocator, pSession);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindOpticalFlowSessionImageNV (Device device, OpticalFlowSessionNV session, OpticalFlowSessionBindingPointNV bindingPoint, ImageView view, ImageLayout layout) {
  Result result = extensions.vkBindOpticalFlowSessionImageNV(device, session, bindingPoint, view, layout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceFaultInfoEXT (Device device, DeviceFaultCountsEXT* pFaultCounts, DeviceFaultInfoEXT* pFaultInfo) {
  Result result = extensions.vkGetDeviceFaultInfoEXT(device, pFaultCounts, pFaultInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceFaultReportsKHR (Device device, ulong timeout, uint* pFaultCounts, DeviceFaultInfoKHR* pFaultInfo) {
  Result result = extensions.vkGetDeviceFaultReportsKHR(device, timeout, pFaultCounts, pFaultInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDeviceFaultDebugInfoKHR (Device device, DeviceFaultDebugInfoKHR* pDebugInfo) {
  Result result = extensions.vkGetDeviceFaultDebugInfoKHR(device, pDebugInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_NOT_ENOUGH_SPACE_KHR: return E_ERROR_NOT_ENOUGH_SPACE_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? releaseSwapchainImagesKHR (Device device, ReleaseSwapchainImagesInfoKHR* pReleaseInfo) {
  Result result = extensions.vkReleaseSwapchainImagesKHR(device, pReleaseInfo);
  switch(result) { 
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? releaseSwapchainImagesEXT (Device device, ReleaseSwapchainImagesInfoKHR* pReleaseInfo) {
  Result result = extensions.vkReleaseSwapchainImagesEXT(device, pReleaseInfo);
  switch(result) { 
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? mapMemory2 (Device device, MemoryMapInfo* pMemoryMapInfo, void** ppData) {
  Result result = vkMapMemory2(device, pMemoryMapInfo, ppData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? mapMemory2KHR (Device device, MemoryMapInfo* pMemoryMapInfo, void** ppData) {
  Result result = extensions.vkMapMemory2KHR(device, pMemoryMapInfo, ppData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? unmapMemory2 (Device device, MemoryUnmapInfo* pMemoryUnmapInfo) {
  Result result = vkUnmapMemory2(device, pMemoryUnmapInfo);
  switch(result) { 
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? unmapMemory2KHR (Device device, MemoryUnmapInfo* pMemoryUnmapInfo) {
  Result result = extensions.vkUnmapMemory2KHR(device, pMemoryUnmapInfo);
  switch(result) { 
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createShadersEXT (Device device, uint createInfoCount, ShaderCreateInfoEXT* pCreateInfos, AllocationCallbacks* pAllocator, ShaderEXT* pShaders) {
  Result result = extensions.vkCreateShadersEXT(device, createInfoCount, pCreateInfos, pAllocator, pShaders);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getShaderBinaryDataEXT (Device device, ShaderEXT shader, usz* pDataSize, void* pData) {
  Result result = extensions.vkGetShaderBinaryDataEXT(device, shader, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setSwapchainPresentTimingQueueSizeEXT (Device device, SwapchainKHR swapchain, uint size) {
  Result result = extensions.vkSetSwapchainPresentTimingQueueSizeEXT(device, swapchain, size);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSwapchainTimingPropertiesEXT (Device device, SwapchainKHR swapchain, SwapchainTimingPropertiesEXT* pSwapchainTimingProperties, ulong* pSwapchainTimingPropertiesCounter) {
  Result result = extensions.vkGetSwapchainTimingPropertiesEXT(device, swapchain, pSwapchainTimingProperties, pSwapchainTimingPropertiesCounter);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getSwapchainTimeDomainPropertiesEXT (Device device, SwapchainKHR swapchain, SwapchainTimeDomainPropertiesEXT* pSwapchainTimeDomainProperties, ulong* pTimeDomainsCounter) {
  Result result = extensions.vkGetSwapchainTimeDomainPropertiesEXT(device, swapchain, pSwapchainTimeDomainProperties, pTimeDomainsCounter);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPastPresentationTimingEXT (Device device, PastPresentationTimingInfoEXT* pPastPresentationTimingInfo, PastPresentationTimingPropertiesEXT* pPastPresentationTimingProperties) {
  Result result = extensions.vkGetPastPresentationTimingEXT(device, pPastPresentationTimingInfo, pPastPresentationTimingProperties);
  switch(result) { 
       case ERROR_DEVICE_LOST: return E_ERROR_DEVICE_LOST~;
       case ERROR_OUT_OF_DATE_KHR: return E_ERROR_OUT_OF_DATE_KHR~;
       case ERROR_SURFACE_LOST_KHR: return E_ERROR_SURFACE_LOST_KHR~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceCooperativeMatrixPropertiesKHR (PhysicalDevice physicalDevice, uint* pPropertyCount, CooperativeMatrixPropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getExecutionGraphPipelineScratchSizeAMDX (Device device, Pipeline executionGraph, ExecutionGraphPipelineScratchSizeAMDX* pSizeInfo) {
  Result result = extensions.vkGetExecutionGraphPipelineScratchSizeAMDX(device, executionGraph, pSizeInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getExecutionGraphPipelineNodeIndexAMDX (Device device, Pipeline executionGraph, PipelineShaderStageNodeCreateInfoAMDX* pNodeInfo, uint* pNodeIndex) {
  Result result = extensions.vkGetExecutionGraphPipelineNodeIndexAMDX(device, executionGraph, pNodeInfo, pNodeIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createExecutionGraphPipelinesAMDX (Device device, PipelineCache pipelineCache, uint createInfoCount, ExecutionGraphPipelineCreateInfoAMDX* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = extensions.vkCreateExecutionGraphPipelinesAMDX(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? setLatencySleepModeNV (Device device, SwapchainKHR swapchain, LatencySleepModeInfoNV* pSleepModeInfo) {
  Result result = extensions.vkSetLatencySleepModeNV(device, swapchain, pSleepModeInfo);
  switch(result) { 
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? latencySleepNV (Device device, SwapchainKHR swapchain, LatencySleepInfoNV* pSleepInfo) {
  Result result = extensions.vkLatencySleepNV(device, swapchain, pSleepInfo);
  switch(result) { 
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV (PhysicalDevice physicalDevice, uint* pPropertyCount, CooperativeMatrixFlexibleDimensionsPropertiesNV* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryMetalHandleEXT (Device device, MemoryGetMetalHandleInfoEXT* pGetMetalHandleInfo, void** pHandle) {
  Result result = extensions.vkGetMemoryMetalHandleEXT(device, pGetMetalHandleInfo, pHandle);
  switch(result) { 
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getMemoryMetalHandlePropertiesEXT (Device device, ExternalMemoryHandleTypeFlagBits handleType, void* pHandle, MemoryMetalHandlePropertiesEXT* pMemoryMetalHandleProperties) {
  Result result = extensions.vkGetMemoryMetalHandlePropertiesEXT(device, handleType, pHandle, pMemoryMetalHandleProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_EXTERNAL_HANDLE: return E_ERROR_INVALID_EXTERNAL_HANDLE~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceCooperativeVectorPropertiesNV (PhysicalDevice physicalDevice, uint* pPropertyCount, CooperativeVectorPropertiesNV* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceCooperativeVectorPropertiesNV(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? convertCooperativeVectorMatrixNV (Device device, ConvertCooperativeVectorMatrixInfoNV* pInfo) {
  Result result = extensions.vkConvertCooperativeVectorMatrixNV(device, pInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createExternalComputeQueueNV (Device device, ExternalComputeQueueCreateInfoNV* pCreateInfo, AllocationCallbacks* pAllocator, ExternalComputeQueueNV* pExternalQueue) {
  Result result = extensions.vkCreateExternalComputeQueueNV(device, pCreateInfo, pAllocator, pExternalQueue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumeratePhysicalDeviceShaderInstrumentationMetricsARM (PhysicalDevice physicalDevice, uint* pDescriptionCount, ShaderInstrumentationMetricDescriptionARM* pDescriptions) {
  Result result = extensions.vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM(physicalDevice, pDescriptionCount, pDescriptions);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createShaderInstrumentationARM (Device device, ShaderInstrumentationCreateInfoARM* pCreateInfo, AllocationCallbacks* pAllocator, ShaderInstrumentationARM* pInstrumentation) {
  Result result = extensions.vkCreateShaderInstrumentationARM(device, pCreateInfo, pAllocator, pInstrumentation);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getShaderInstrumentationValuesARM (Device device, ShaderInstrumentationARM instrumentation, uint* pMetricBlockCount, void* pMetricValues, ShaderInstrumentationValuesFlagsARM flags) {
  Result result = extensions.vkGetShaderInstrumentationValuesARM(device, instrumentation, pMetricBlockCount, pMetricValues, flags);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createTensorARM (Device device, TensorCreateInfoARM* pCreateInfo, AllocationCallbacks* pAllocator, TensorARM* pTensor) {
  Result result = extensions.vkCreateTensorARM(device, pCreateInfo, pAllocator, pTensor);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createTensorViewARM (Device device, TensorViewCreateInfoARM* pCreateInfo, AllocationCallbacks* pAllocator, TensorViewARM* pView) {
  Result result = extensions.vkCreateTensorViewARM(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindTensorMemoryARM (Device device, uint bindInfoCount, BindTensorMemoryInfoARM* pBindInfos) {
  Result result = extensions.vkBindTensorMemoryARM(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getTensorOpaqueCaptureDescriptorDataARM (Device device, TensorCaptureDescriptorDataInfoARM* pInfo, void* pData) {
  Result result = extensions.vkGetTensorOpaqueCaptureDescriptorDataARM(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getTensorViewOpaqueCaptureDescriptorDataARM (Device device, TensorViewCaptureDescriptorDataInfoARM* pInfo, void* pData) {
  Result result = extensions.vkGetTensorViewOpaqueCaptureDescriptorDataARM(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createDataGraphPipelineSessionARM (Device device, DataGraphPipelineSessionCreateInfoARM* pCreateInfo, AllocationCallbacks* pAllocator, DataGraphPipelineSessionARM* pSession) {
  Result result = extensions.vkCreateDataGraphPipelineSessionARM(device, pCreateInfo, pAllocator, pSession);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDataGraphPipelineSessionBindPointRequirementsARM (Device device, DataGraphPipelineSessionBindPointRequirementsInfoARM* pInfo, uint* pBindPointRequirementCount, DataGraphPipelineSessionBindPointRequirementARM* pBindPointRequirements) {
  Result result = extensions.vkGetDataGraphPipelineSessionBindPointRequirementsARM(device, pInfo, pBindPointRequirementCount, pBindPointRequirements);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? bindDataGraphPipelineSessionMemoryARM (Device device, uint bindInfoCount, BindDataGraphPipelineSessionMemoryInfoARM* pBindInfos) {
  Result result = extensions.vkBindDataGraphPipelineSessionMemoryARM(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDataGraphPipelineAvailablePropertiesARM (Device device, DataGraphPipelineInfoARM* pPipelineInfo, uint* pPropertiesCount, DataGraphPipelinePropertyARM* pProperties) {
  Result result = extensions.vkGetDataGraphPipelineAvailablePropertiesARM(device, pPipelineInfo, pPropertiesCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getDataGraphPipelinePropertiesARM (Device device, DataGraphPipelineInfoARM* pPipelineInfo, uint propertiesCount, DataGraphPipelinePropertyQueryResultARM* pProperties) {
  Result result = extensions.vkGetDataGraphPipelinePropertiesARM(device, pPipelineInfo, propertiesCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getPhysicalDeviceQueueFamilyDataGraphPropertiesARM (PhysicalDevice physicalDevice, uint queueFamilyIndex, uint* pQueueFamilyDataGraphPropertyCount, QueueFamilyDataGraphPropertiesARM* pQueueFamilyDataGraphProperties) {
  Result result = extensions.vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM(physicalDevice, queueFamilyIndex, pQueueFamilyDataGraphPropertyCount, pQueueFamilyDataGraphProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? enumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM (PhysicalDevice physicalDevice, uint queueFamilyIndex, uint* pCounterCount, PerformanceCounterARM* pCounters, PerformanceCounterDescriptionARM* pCounterDescriptions) {
  Result result = extensions.vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_INITIALIZATION_FAILED: return E_ERROR_INITIALIZATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? writeSamplerDescriptorsEXT (Device device, uint samplerCount, SamplerCreateInfo* pSamplers, HostAddressRangeEXT* pDescriptors) {
  Result result = extensions.vkWriteSamplerDescriptorsEXT(device, samplerCount, pSamplers, pDescriptors);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? writeResourceDescriptorsEXT (Device device, uint resourceCount, ResourceDescriptorInfoEXT* pResources, HostAddressRangeEXT* pDescriptors) {
  Result result = extensions.vkWriteResourceDescriptorsEXT(device, resourceCount, pResources, pDescriptors);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? registerCustomBorderColorEXT (Device device, SamplerCustomBorderColorCreateInfoEXT* pBorderColor, uint requestIndex, uint* pIndex) {
  Result result = extensions.vkRegisterCustomBorderColorEXT(device, pBorderColor, requestIndex, pIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_TOO_MANY_OBJECTS: return E_ERROR_TOO_MANY_OBJECTS~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getImageOpaqueCaptureDataEXT (Device device, uint imageCount, Image* pImages, HostAddressRangeEXT* pDatas) {
  Result result = extensions.vkGetImageOpaqueCaptureDataEXT(device, imageCount, pImages, pDatas);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? getTensorOpaqueCaptureDataARM (Device device, uint tensorCount, TensorARM* pTensors, HostAddressRangeEXT* pDatas) {
  Result result = extensions.vkGetTensorOpaqueCaptureDataARM(device, tensorCount, pTensors, pDatas);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_OUT_OF_DEVICE_MEMORY: return E_ERROR_OUT_OF_DEVICE_MEMORY~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}
fn void? createAccelerationStructure2KHR (Device device, AccelerationStructureCreateInfo2KHR* pCreateInfo, AllocationCallbacks* pAllocator, AccelerationStructureKHR* pAccelerationStructure) {
  Result result = extensions.vkCreateAccelerationStructure2KHR(device, pCreateInfo, pAllocator, pAccelerationStructure);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return E_ERROR_OUT_OF_HOST_MEMORY~;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return E_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
  }
}

fn Instance? InstanceCreateInfo.build(&self, AllocationCallbacks* pAllocator = null) {
   Instance response;
   createInstance(self, pAllocator, &response)!;
   loadExtensions(response);
   return response;
}
fn Device? DeviceCreateInfo.build(&self, PhysicalDevice physicalDevice, AllocationCallbacks* pAllocator = null) {
   Device response;
   createDevice(physicalDevice, self, pAllocator, &response)!;
   return response;
}
fn Fence? FenceCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Fence response;
   createFence(device, self, pAllocator, &response)!;
   return response;
}
fn Semaphore? SemaphoreCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Semaphore response;
   createSemaphore(device, self, pAllocator, &response)!;
   return response;
}
fn Event? EventCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Event response;
   createEvent(device, self, pAllocator, &response)!;
   return response;
}
fn QueryPool? QueryPoolCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   QueryPool response;
   createQueryPool(device, self, pAllocator, &response)!;
   return response;
}
fn Buffer? BufferCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Buffer response;
   createBuffer(device, self, pAllocator, &response)!;
   return response;
}
fn BufferView? BufferViewCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   BufferView response;
   createBufferView(device, self, pAllocator, &response)!;
   return response;
}
fn Image? ImageCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Image response;
   createImage(device, self, pAllocator, &response)!;
   return response;
}
fn ImageView? ImageViewCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   ImageView response;
   createImageView(device, self, pAllocator, &response)!;
   return response;
}
fn ShaderModule? ShaderModuleCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   ShaderModule response;
   createShaderModule(device, self, pAllocator, &response)!;
   return response;
}
fn PipelineCache? PipelineCacheCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   PipelineCache response;
   createPipelineCache(device, self, pAllocator, &response)!;
   return response;
}
fn PipelineBinaryHandlesInfoKHR? PipelineBinaryCreateInfoKHR.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   PipelineBinaryHandlesInfoKHR response;
   createPipelineBinariesKHR(device, self, pAllocator, &response)!;
   return response;
}
fn Pipeline? GraphicsPipelineCreateInfo.build(&self, Device device, PipelineCache pipelineCache = null, uint createInfoCount = 1, AllocationCallbacks* pAllocator = null) {
   Pipeline response;
   createGraphicsPipelines(device, pipelineCache, createInfoCount, self, pAllocator, &response)!;
   return response;
}
fn Pipeline? ComputePipelineCreateInfo.build(&self, Device device, PipelineCache pipelineCache = null, uint createInfoCount = 1, AllocationCallbacks* pAllocator = null) {
   Pipeline response;
   createComputePipelines(device, pipelineCache, createInfoCount, self, pAllocator, &response)!;
   return response;
}
fn PipelineLayout? PipelineLayoutCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   PipelineLayout response;
   createPipelineLayout(device, self, pAllocator, &response)!;
   return response;
}
fn Sampler? SamplerCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Sampler response;
   createSampler(device, self, pAllocator, &response)!;
   return response;
}
fn DescriptorSetLayout? DescriptorSetLayoutCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   DescriptorSetLayout response;
   createDescriptorSetLayout(device, self, pAllocator, &response)!;
   return response;
}
fn DescriptorPool? DescriptorPoolCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   DescriptorPool response;
   createDescriptorPool(device, self, pAllocator, &response)!;
   return response;
}
fn Framebuffer? FramebufferCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   Framebuffer response;
   createFramebuffer(device, self, pAllocator, &response)!;
   return response;
}
fn RenderPass? RenderPassCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   RenderPass response;
   createRenderPass(device, self, pAllocator, &response)!;
   return response;
}
fn CommandPool? CommandPoolCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   CommandPool response;
   createCommandPool(device, self, pAllocator, &response)!;
   return response;
}
fn DisplayModeKHR? DisplayModeCreateInfoKHR.build(&self, PhysicalDevice physicalDevice, DisplayKHR display, AllocationCallbacks* pAllocator = null) {
   DisplayModeKHR response;
   createDisplayModeKHR(physicalDevice, display, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? DisplaySurfaceCreateInfoKHR.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createDisplayPlaneSurfaceKHR(instance, self, pAllocator, &response)!;
   return response;
}
fn SwapchainKHR? SwapchainCreateInfoKHR.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   SwapchainKHR response;
   createSwapchainKHR(device, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? WaylandSurfaceCreateInfoKHR.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createWaylandSurfaceKHR(instance, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? Win32SurfaceCreateInfoKHR.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createWin32SurfaceKHR(instance, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? XcbSurfaceCreateInfoKHR.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createXcbSurfaceKHR(instance, self, pAllocator, &response)!;
   return response;
}
fn DebugReportCallbackEXT? DebugReportCallbackCreateInfoEXT.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   DebugReportCallbackEXT response;
   createDebugReportCallbackEXT(instance, self, pAllocator, &response)!;
   return response;
}
fn IndirectCommandsLayoutNV? IndirectCommandsLayoutCreateInfoNV.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   IndirectCommandsLayoutNV response;
   createIndirectCommandsLayoutNV(device, self, pAllocator, &response)!;
   return response;
}
fn IndirectCommandsLayoutEXT? IndirectCommandsLayoutCreateInfoEXT.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   IndirectCommandsLayoutEXT response;
   createIndirectCommandsLayoutEXT(device, self, pAllocator, &response)!;
   return response;
}
fn IndirectExecutionSetEXT? IndirectExecutionSetCreateInfoEXT.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   IndirectExecutionSetEXT response;
   createIndirectExecutionSetEXT(device, self, pAllocator, &response)!;
   return response;
}
fn DescriptorUpdateTemplate? DescriptorUpdateTemplateCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   DescriptorUpdateTemplate response;
   createDescriptorUpdateTemplate(device, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? IOSSurfaceCreateInfoMVK.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createIOSSurfaceMVK(instance, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? MacOSSurfaceCreateInfoMVK.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createMacOSSurfaceMVK(instance, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? MetalSurfaceCreateInfoEXT.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createMetalSurfaceEXT(instance, self, pAllocator, &response)!;
   return response;
}
fn SamplerYcbcrConversion? SamplerYcbcrConversionCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   SamplerYcbcrConversion response;
   createSamplerYcbcrConversion(device, self, pAllocator, &response)!;
   return response;
}
fn ValidationCacheEXT? ValidationCacheCreateInfoEXT.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   ValidationCacheEXT response;
   createValidationCacheEXT(device, self, pAllocator, &response)!;
   return response;
}
fn DebugUtilsMessengerEXT? DebugUtilsMessengerCreateInfoEXT.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   DebugUtilsMessengerEXT response;
   createDebugUtilsMessengerEXT(instance, self, pAllocator, &response)!;
   return response;
}
fn RenderPass? RenderPassCreateInfo2.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   RenderPass response;
   createRenderPass2(device, self, pAllocator, &response)!;
   return response;
}
fn Pipeline? RayTracingPipelineCreateInfoNV.build(&self, Device device, PipelineCache pipelineCache = null, uint createInfoCount = 1, AllocationCallbacks* pAllocator = null) {
   Pipeline response;
   createRayTracingPipelinesNV(device, pipelineCache, createInfoCount, self, pAllocator, &response)!;
   return response;
}
fn Pipeline? RayTracingPipelineCreateInfoKHR.build(&self, Device device, DeferredOperationKHR deferredOperation = null, PipelineCache pipelineCache = null, uint createInfoCount = 1, AllocationCallbacks* pAllocator = null) {
   Pipeline response;
   createRayTracingPipelinesKHR(device, deferredOperation, pipelineCache, createInfoCount, self, pAllocator, &response)!;
   return response;
}
fn SurfaceKHR? HeadlessSurfaceCreateInfoEXT.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createHeadlessSurfaceEXT(instance, self, pAllocator, &response)!;
   return response;
}
fn AccelerationStructureKHR? AccelerationStructureCreateInfoKHR.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   AccelerationStructureKHR response;
   createAccelerationStructureKHR(device, self, pAllocator, &response)!;
   return response;
}
fn PrivateDataSlot? PrivateDataSlotCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   PrivateDataSlot response;
   createPrivateDataSlot(device, self, pAllocator, &response)!;
   return response;
}
fn VideoSessionKHR? VideoSessionCreateInfoKHR.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   VideoSessionKHR response;
   createVideoSessionKHR(device, self, pAllocator, &response)!;
   return response;
}
fn VideoSessionParametersKHR? VideoSessionParametersCreateInfoKHR.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   VideoSessionParametersKHR response;
   createVideoSessionParametersKHR(device, self, pAllocator, &response)!;
   return response;
}
fn CuModuleNVX? CuModuleCreateInfoNVX.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   CuModuleNVX response;
   createCuModuleNVX(device, self, pAllocator, &response)!;
   return response;
}
fn CuFunctionNVX? CuFunctionCreateInfoNVX.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   CuFunctionNVX response;
   createCuFunctionNVX(device, self, pAllocator, &response)!;
   return response;
}
fn CudaModuleNV? CudaModuleCreateInfoNV.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   CudaModuleNV response;
   createCudaModuleNV(device, self, pAllocator, &response)!;
   return response;
}
fn CudaFunctionNV? CudaFunctionCreateInfoNV.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   CudaFunctionNV response;
   createCudaFunctionNV(device, self, pAllocator, &response)!;
   return response;
}
fn MicromapEXT? MicromapCreateInfoEXT.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   MicromapEXT response;
   createMicromapEXT(device, self, pAllocator, &response)!;
   return response;
}
fn OpticalFlowSessionNV? OpticalFlowSessionCreateInfoNV.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   OpticalFlowSessionNV response;
   createOpticalFlowSessionNV(device, self, pAllocator, &response)!;
   return response;
}
fn ShaderEXT? ShaderCreateInfoEXT.build(&self, Device device, uint createInfoCount = 1, AllocationCallbacks* pAllocator = null) {
   ShaderEXT response;
   createShadersEXT(device, createInfoCount, self, pAllocator, &response)!;
   return response;
}
fn Pipeline? ExecutionGraphPipelineCreateInfoAMDX.build(&self, Device device, PipelineCache pipelineCache = null, uint createInfoCount = 1, AllocationCallbacks* pAllocator = null) {
   Pipeline response;
   createExecutionGraphPipelinesAMDX(device, pipelineCache, createInfoCount, self, pAllocator, &response)!;
   return response;
}
fn ExternalComputeQueueNV? ExternalComputeQueueCreateInfoNV.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   ExternalComputeQueueNV response;
   createExternalComputeQueueNV(device, self, pAllocator, &response)!;
   return response;
}
fn ShaderInstrumentationARM? ShaderInstrumentationCreateInfoARM.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   ShaderInstrumentationARM response;
   createShaderInstrumentationARM(device, self, pAllocator, &response)!;
   return response;
}
fn TensorARM? TensorCreateInfoARM.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   TensorARM response;
   createTensorARM(device, self, pAllocator, &response)!;
   return response;
}
fn TensorViewARM? TensorViewCreateInfoARM.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   TensorViewARM response;
   createTensorViewARM(device, self, pAllocator, &response)!;
   return response;
}
fn DataGraphPipelineSessionARM? DataGraphPipelineSessionCreateInfoARM.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   DataGraphPipelineSessionARM response;
   createDataGraphPipelineSessionARM(device, self, pAllocator, &response)!;
   return response;
}
fn AccelerationStructureKHR? AccelerationStructureCreateInfo2KHR.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   AccelerationStructureKHR response;
   createAccelerationStructure2KHR(device, self, pAllocator, &response)!;
   return response;
}

