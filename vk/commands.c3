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

alias PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPropertiesKHR*);
alias PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPlanePropertiesKHR*);
alias PFN_vkGetDisplayPlaneSupportedDisplaysKHR = fn Result (PhysicalDevice, uint, uint*, DisplayKHR*);
alias PFN_vkGetDisplayModePropertiesKHR = fn Result (PhysicalDevice, DisplayKHR, uint*, DisplayModePropertiesKHR*);
alias PFN_vkCreateDisplayModeKHR = fn Result (PhysicalDevice, DisplayKHR, DisplayModeCreateInfoKHR*, AllocationCallbacks*, DisplayModeKHR*);
alias PFN_vkGetDisplayPlaneCapabilitiesKHR = fn Result (PhysicalDevice, DisplayModeKHR, uint, DisplayPlaneCapabilitiesKHR*);
alias PFN_vkCreateDisplayPlaneSurfaceKHR = fn Result (Instance, DisplaySurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
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
alias PFN_vkCreateXlibSurfaceKHR = fn Result (Instance, XlibSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR = fn uint (PhysicalDevice, uint, Display*, VisualID);
alias PFN_vkCreateXcbSurfaceKHR = fn Result (Instance, XcbSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR = fn uint (PhysicalDevice, uint, Connection*, Window);
alias PFN_vkCreateDebugReportCallbackEXT = fn Result (Instance, DebugReportCallbackCreateInfoEXT*, AllocationCallbacks*, DebugReportCallbackEXT*);
alias PFN_vkDestroyDebugReportCallbackEXT = fn void (Instance, DebugReportCallbackEXT, AllocationCallbacks*);
alias PFN_vkDebugReportMessageEXT = fn void (Instance, DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*);
alias PFN_vkGetPhysicalDeviceFeatures2KHR = fn void (PhysicalDevice, PhysicalDeviceFeatures2*);
alias PFN_vkGetPhysicalDeviceProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceProperties2*);
alias PFN_vkGetPhysicalDeviceFormatProperties2KHR = fn void (PhysicalDevice, Format, FormatProperties2*);
alias PFN_vkGetPhysicalDeviceImageFormatProperties2KHR = fn Result (PhysicalDevice, PhysicalDeviceImageFormatInfo2*, ImageFormatProperties2*);
alias PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR = fn void (PhysicalDevice, uint*, QueueFamilyProperties2*);
alias PFN_vkGetPhysicalDeviceMemoryProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceMemoryProperties2*);
alias PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceSparseImageFormatInfo2*, uint*, SparseImageFormatProperties2*);
alias PFN_vkCmdPushDescriptorSetKHR = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*);
alias PFN_vkCreateMacOSSurfaceMVK = fn Result (Instance, MacOSSurfaceCreateInfoMVK*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkCreateMetalSurfaceEXT = fn Result (Instance, MetalSurfaceCreateInfoEXT*, AllocationCallbacks*, SurfaceKHR*);
alias PFN_vkCmdSetSampleLocationsEXT = fn void (CommandBuffer, SampleLocationsInfoEXT*);
alias PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT = fn void (PhysicalDevice, SampleCountFlagBits, MultisamplePropertiesEXT*);
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
alias PFN_vkCreateRenderPass2KHR = fn Result (Device, RenderPassCreateInfo2*, AllocationCallbacks*, RenderPass*);
alias PFN_vkCmdBeginRenderPass2KHR = fn void (CommandBuffer, RenderPassBeginInfo*, SubpassBeginInfo*);
alias PFN_vkCmdNextSubpass2KHR = fn void (CommandBuffer, SubpassBeginInfo*, SubpassEndInfo*);
alias PFN_vkCmdEndRenderPass2KHR = fn void (CommandBuffer, SubpassEndInfo*);
alias PFN_vkDestroyAccelerationStructureKHR = fn void (Device, AccelerationStructureKHR, AllocationCallbacks*);
alias PFN_vkCmdCopyAccelerationStructureKHR = fn void (CommandBuffer, CopyAccelerationStructureInfoKHR*);
alias PFN_vkCopyAccelerationStructureKHR = fn Result (Device, DeferredOperationKHR, CopyAccelerationStructureInfoKHR*);
alias PFN_vkCmdCopyAccelerationStructureToMemoryKHR = fn void (CommandBuffer, CopyAccelerationStructureToMemoryInfoKHR*);
alias PFN_vkCopyAccelerationStructureToMemoryKHR = fn Result (Device, DeferredOperationKHR, CopyAccelerationStructureToMemoryInfoKHR*);
alias PFN_vkCmdCopyMemoryToAccelerationStructureKHR = fn void (CommandBuffer, CopyMemoryToAccelerationStructureInfoKHR*);
alias PFN_vkCopyMemoryToAccelerationStructureKHR = fn Result (Device, DeferredOperationKHR, CopyMemoryToAccelerationStructureInfoKHR*);
alias PFN_vkCmdWriteAccelerationStructuresPropertiesKHR = fn void (CommandBuffer, uint, AccelerationStructureKHR*, QueryType, QueryPool, uint);
alias PFN_vkWriteAccelerationStructuresPropertiesKHR = fn Result (Device, uint, AccelerationStructureKHR*, QueryType, usz, void*, usz);
alias PFN_vkGetDeviceAccelerationStructureCompatibilityKHR = fn void (Device, AccelerationStructureVersionInfoKHR*, AccelerationStructureCompatibilityKHR*);
alias PFN_vkCreateAccelerationStructureKHR = fn Result (Device, AccelerationStructureCreateInfoKHR*, AllocationCallbacks*, AccelerationStructureKHR*);
alias PFN_vkCmdBuildAccelerationStructuresKHR = fn void (CommandBuffer, uint, AccelerationStructureBuildGeometryInfoKHR*, AccelerationStructureBuildRangeInfoKHR* );
alias PFN_vkCmdBuildAccelerationStructuresIndirectKHR = fn void (CommandBuffer, uint, AccelerationStructureBuildGeometryInfoKHR*, DeviceAddress*, uint*, uint* );
alias PFN_vkBuildAccelerationStructuresKHR = fn Result (Device, DeferredOperationKHR, uint, AccelerationStructureBuildGeometryInfoKHR*, AccelerationStructureBuildRangeInfoKHR* );
alias PFN_vkGetAccelerationStructureDeviceAddressKHR = fn DeviceAddress (Device, AccelerationStructureDeviceAddressInfoKHR*);
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
alias PFN_vkCmdSetSampleLocationsEnableEXT = fn void (CommandBuffer, uint);
alias PFN_vkGetAccelerationStructureBuildSizesKHR = fn void (Device, AccelerationStructureBuildTypeKHR, AccelerationStructureBuildGeometryInfoKHR*, uint*, AccelerationStructureBuildSizesInfoKHR*);
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
alias PFN_vkCmdBeginRenderingKHR = fn void (CommandBuffer, RenderingInfo*);
alias PFN_vkCmdEndRendering2EXT = fn void (CommandBuffer, RenderingEndInfoEXT*);
alias PFN_vkCmdEndRenderingKHR = fn void (CommandBuffer, RenderingEndInfoEXT*);

struct VK_extension_bindings {
  PFN_vkGetPhysicalDeviceDisplayPropertiesKHR vkGetPhysicalDeviceDisplayPropertiesKHR;
  PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR vkGetPhysicalDeviceDisplayPlanePropertiesKHR;
  PFN_vkGetDisplayPlaneSupportedDisplaysKHR vkGetDisplayPlaneSupportedDisplaysKHR;
  PFN_vkGetDisplayModePropertiesKHR vkGetDisplayModePropertiesKHR;
  PFN_vkCreateDisplayModeKHR vkCreateDisplayModeKHR;
  PFN_vkGetDisplayPlaneCapabilitiesKHR vkGetDisplayPlaneCapabilitiesKHR;
  PFN_vkCreateDisplayPlaneSurfaceKHR vkCreateDisplayPlaneSurfaceKHR;
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
  PFN_vkCreateXlibSurfaceKHR vkCreateXlibSurfaceKHR;
  PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR vkGetPhysicalDeviceXlibPresentationSupportKHR;
  PFN_vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR;
  PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR;
  PFN_vkCreateDebugReportCallbackEXT vkCreateDebugReportCallbackEXT;
  PFN_vkDestroyDebugReportCallbackEXT vkDestroyDebugReportCallbackEXT;
  PFN_vkDebugReportMessageEXT vkDebugReportMessageEXT;
  PFN_vkGetPhysicalDeviceFeatures2KHR vkGetPhysicalDeviceFeatures2KHR;
  PFN_vkGetPhysicalDeviceProperties2KHR vkGetPhysicalDeviceProperties2KHR;
  PFN_vkGetPhysicalDeviceFormatProperties2KHR vkGetPhysicalDeviceFormatProperties2KHR;
  PFN_vkGetPhysicalDeviceImageFormatProperties2KHR vkGetPhysicalDeviceImageFormatProperties2KHR;
  PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR vkGetPhysicalDeviceQueueFamilyProperties2KHR;
  PFN_vkGetPhysicalDeviceMemoryProperties2KHR vkGetPhysicalDeviceMemoryProperties2KHR;
  PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR vkGetPhysicalDeviceSparseImageFormatProperties2KHR;
  PFN_vkCmdPushDescriptorSetKHR vkCmdPushDescriptorSetKHR;
  PFN_vkCreateMacOSSurfaceMVK vkCreateMacOSSurfaceMVK;
  PFN_vkCreateMetalSurfaceEXT vkCreateMetalSurfaceEXT;
  PFN_vkCmdSetSampleLocationsEXT vkCmdSetSampleLocationsEXT;
  PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT vkGetPhysicalDeviceMultisamplePropertiesEXT;
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
  PFN_vkCreateRenderPass2KHR vkCreateRenderPass2KHR;
  PFN_vkCmdBeginRenderPass2KHR vkCmdBeginRenderPass2KHR;
  PFN_vkCmdNextSubpass2KHR vkCmdNextSubpass2KHR;
  PFN_vkCmdEndRenderPass2KHR vkCmdEndRenderPass2KHR;
  PFN_vkDestroyAccelerationStructureKHR vkDestroyAccelerationStructureKHR;
  PFN_vkCmdCopyAccelerationStructureKHR vkCmdCopyAccelerationStructureKHR;
  PFN_vkCopyAccelerationStructureKHR vkCopyAccelerationStructureKHR;
  PFN_vkCmdCopyAccelerationStructureToMemoryKHR vkCmdCopyAccelerationStructureToMemoryKHR;
  PFN_vkCopyAccelerationStructureToMemoryKHR vkCopyAccelerationStructureToMemoryKHR;
  PFN_vkCmdCopyMemoryToAccelerationStructureKHR vkCmdCopyMemoryToAccelerationStructureKHR;
  PFN_vkCopyMemoryToAccelerationStructureKHR vkCopyMemoryToAccelerationStructureKHR;
  PFN_vkCmdWriteAccelerationStructuresPropertiesKHR vkCmdWriteAccelerationStructuresPropertiesKHR;
  PFN_vkWriteAccelerationStructuresPropertiesKHR vkWriteAccelerationStructuresPropertiesKHR;
  PFN_vkGetDeviceAccelerationStructureCompatibilityKHR vkGetDeviceAccelerationStructureCompatibilityKHR;
  PFN_vkCreateAccelerationStructureKHR vkCreateAccelerationStructureKHR;
  PFN_vkCmdBuildAccelerationStructuresKHR vkCmdBuildAccelerationStructuresKHR;
  PFN_vkCmdBuildAccelerationStructuresIndirectKHR vkCmdBuildAccelerationStructuresIndirectKHR;
  PFN_vkBuildAccelerationStructuresKHR vkBuildAccelerationStructuresKHR;
  PFN_vkGetAccelerationStructureDeviceAddressKHR vkGetAccelerationStructureDeviceAddressKHR;
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
  PFN_vkCmdSetSampleLocationsEnableEXT vkCmdSetSampleLocationsEnableEXT;
  PFN_vkGetAccelerationStructureBuildSizesKHR vkGetAccelerationStructureBuildSizesKHR;
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
  PFN_vkCmdBeginRenderingKHR vkCmdBeginRenderingKHR;
  PFN_vkCmdEndRendering2EXT vkCmdEndRendering2EXT;
  PFN_vkCmdEndRenderingKHR vkCmdEndRenderingKHR;
}
VK_extension_bindings extensions;

fn void loadExtensions(Instance instance) {
   extensions.vkGetPhysicalDeviceDisplayPropertiesKHR = (PFN_vkGetPhysicalDeviceDisplayPropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDisplayPropertiesKHR");
   extensions.vkGetPhysicalDeviceDisplayPlanePropertiesKHR = (PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceDisplayPlanePropertiesKHR");
   extensions.vkGetDisplayPlaneSupportedDisplaysKHR = (PFN_vkGetDisplayPlaneSupportedDisplaysKHR)getInstanceProcAddr(instance,"vkGetDisplayPlaneSupportedDisplaysKHR");
   extensions.vkGetDisplayModePropertiesKHR = (PFN_vkGetDisplayModePropertiesKHR)getInstanceProcAddr(instance,"vkGetDisplayModePropertiesKHR");
   extensions.vkCreateDisplayModeKHR = (PFN_vkCreateDisplayModeKHR)getInstanceProcAddr(instance,"vkCreateDisplayModeKHR");
   extensions.vkGetDisplayPlaneCapabilitiesKHR = (PFN_vkGetDisplayPlaneCapabilitiesKHR)getInstanceProcAddr(instance,"vkGetDisplayPlaneCapabilitiesKHR");
   extensions.vkCreateDisplayPlaneSurfaceKHR = (PFN_vkCreateDisplayPlaneSurfaceKHR)getInstanceProcAddr(instance,"vkCreateDisplayPlaneSurfaceKHR");
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
   extensions.vkCreateXlibSurfaceKHR = (PFN_vkCreateXlibSurfaceKHR)getInstanceProcAddr(instance,"vkCreateXlibSurfaceKHR");
   extensions.vkGetPhysicalDeviceXlibPresentationSupportKHR = (PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceXlibPresentationSupportKHR");
   extensions.vkCreateXcbSurfaceKHR = (PFN_vkCreateXcbSurfaceKHR)getInstanceProcAddr(instance,"vkCreateXcbSurfaceKHR");
   extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR = (PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceXcbPresentationSupportKHR");
   extensions.vkCreateDebugReportCallbackEXT = (PFN_vkCreateDebugReportCallbackEXT)getInstanceProcAddr(instance,"vkCreateDebugReportCallbackEXT");
   extensions.vkDestroyDebugReportCallbackEXT = (PFN_vkDestroyDebugReportCallbackEXT)getInstanceProcAddr(instance,"vkDestroyDebugReportCallbackEXT");
   extensions.vkDebugReportMessageEXT = (PFN_vkDebugReportMessageEXT)getInstanceProcAddr(instance,"vkDebugReportMessageEXT");
   extensions.vkGetPhysicalDeviceFeatures2KHR = (PFN_vkGetPhysicalDeviceFeatures2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceFeatures2KHR");
   extensions.vkGetPhysicalDeviceProperties2KHR = (PFN_vkGetPhysicalDeviceProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceProperties2KHR");
   extensions.vkGetPhysicalDeviceFormatProperties2KHR = (PFN_vkGetPhysicalDeviceFormatProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceFormatProperties2KHR");
   extensions.vkGetPhysicalDeviceImageFormatProperties2KHR = (PFN_vkGetPhysicalDeviceImageFormatProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceImageFormatProperties2KHR");
   extensions.vkGetPhysicalDeviceQueueFamilyProperties2KHR = (PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceQueueFamilyProperties2KHR");
   extensions.vkGetPhysicalDeviceMemoryProperties2KHR = (PFN_vkGetPhysicalDeviceMemoryProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceMemoryProperties2KHR");
   extensions.vkGetPhysicalDeviceSparseImageFormatProperties2KHR = (PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceSparseImageFormatProperties2KHR");
   extensions.vkCmdPushDescriptorSetKHR = (PFN_vkCmdPushDescriptorSetKHR)getInstanceProcAddr(instance,"vkCmdPushDescriptorSetKHR");
   extensions.vkCreateMacOSSurfaceMVK = (PFN_vkCreateMacOSSurfaceMVK)getInstanceProcAddr(instance,"vkCreateMacOSSurfaceMVK");
   extensions.vkCreateMetalSurfaceEXT = (PFN_vkCreateMetalSurfaceEXT)getInstanceProcAddr(instance,"vkCreateMetalSurfaceEXT");
   extensions.vkCmdSetSampleLocationsEXT = (PFN_vkCmdSetSampleLocationsEXT)getInstanceProcAddr(instance,"vkCmdSetSampleLocationsEXT");
   extensions.vkGetPhysicalDeviceMultisamplePropertiesEXT = (PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT)getInstanceProcAddr(instance,"vkGetPhysicalDeviceMultisamplePropertiesEXT");
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
   extensions.vkCreateRenderPass2KHR = (PFN_vkCreateRenderPass2KHR)getInstanceProcAddr(instance,"vkCreateRenderPass2KHR");
   extensions.vkCmdBeginRenderPass2KHR = (PFN_vkCmdBeginRenderPass2KHR)getInstanceProcAddr(instance,"vkCmdBeginRenderPass2KHR");
   extensions.vkCmdNextSubpass2KHR = (PFN_vkCmdNextSubpass2KHR)getInstanceProcAddr(instance,"vkCmdNextSubpass2KHR");
   extensions.vkCmdEndRenderPass2KHR = (PFN_vkCmdEndRenderPass2KHR)getInstanceProcAddr(instance,"vkCmdEndRenderPass2KHR");
   extensions.vkDestroyAccelerationStructureKHR = (PFN_vkDestroyAccelerationStructureKHR)getInstanceProcAddr(instance,"vkDestroyAccelerationStructureKHR");
   extensions.vkCmdCopyAccelerationStructureKHR = (PFN_vkCmdCopyAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCmdCopyAccelerationStructureKHR");
   extensions.vkCopyAccelerationStructureKHR = (PFN_vkCopyAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCopyAccelerationStructureKHR");
   extensions.vkCmdCopyAccelerationStructureToMemoryKHR = (PFN_vkCmdCopyAccelerationStructureToMemoryKHR)getInstanceProcAddr(instance,"vkCmdCopyAccelerationStructureToMemoryKHR");
   extensions.vkCopyAccelerationStructureToMemoryKHR = (PFN_vkCopyAccelerationStructureToMemoryKHR)getInstanceProcAddr(instance,"vkCopyAccelerationStructureToMemoryKHR");
   extensions.vkCmdCopyMemoryToAccelerationStructureKHR = (PFN_vkCmdCopyMemoryToAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCmdCopyMemoryToAccelerationStructureKHR");
   extensions.vkCopyMemoryToAccelerationStructureKHR = (PFN_vkCopyMemoryToAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCopyMemoryToAccelerationStructureKHR");
   extensions.vkCmdWriteAccelerationStructuresPropertiesKHR = (PFN_vkCmdWriteAccelerationStructuresPropertiesKHR)getInstanceProcAddr(instance,"vkCmdWriteAccelerationStructuresPropertiesKHR");
   extensions.vkWriteAccelerationStructuresPropertiesKHR = (PFN_vkWriteAccelerationStructuresPropertiesKHR)getInstanceProcAddr(instance,"vkWriteAccelerationStructuresPropertiesKHR");
   extensions.vkGetDeviceAccelerationStructureCompatibilityKHR = (PFN_vkGetDeviceAccelerationStructureCompatibilityKHR)getInstanceProcAddr(instance,"vkGetDeviceAccelerationStructureCompatibilityKHR");
   extensions.vkCreateAccelerationStructureKHR = (PFN_vkCreateAccelerationStructureKHR)getInstanceProcAddr(instance,"vkCreateAccelerationStructureKHR");
   extensions.vkCmdBuildAccelerationStructuresKHR = (PFN_vkCmdBuildAccelerationStructuresKHR)getInstanceProcAddr(instance,"vkCmdBuildAccelerationStructuresKHR");
   extensions.vkCmdBuildAccelerationStructuresIndirectKHR = (PFN_vkCmdBuildAccelerationStructuresIndirectKHR)getInstanceProcAddr(instance,"vkCmdBuildAccelerationStructuresIndirectKHR");
   extensions.vkBuildAccelerationStructuresKHR = (PFN_vkBuildAccelerationStructuresKHR)getInstanceProcAddr(instance,"vkBuildAccelerationStructuresKHR");
   extensions.vkGetAccelerationStructureDeviceAddressKHR = (PFN_vkGetAccelerationStructureDeviceAddressKHR)getInstanceProcAddr(instance,"vkGetAccelerationStructureDeviceAddressKHR");
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
   extensions.vkCmdSetSampleLocationsEnableEXT = (PFN_vkCmdSetSampleLocationsEnableEXT)getInstanceProcAddr(instance,"vkCmdSetSampleLocationsEnableEXT");
   extensions.vkGetAccelerationStructureBuildSizesKHR = (PFN_vkGetAccelerationStructureBuildSizesKHR)getInstanceProcAddr(instance,"vkGetAccelerationStructureBuildSizesKHR");
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
   extensions.vkCmdBeginRenderingKHR = (PFN_vkCmdBeginRenderingKHR)getInstanceProcAddr(instance,"vkCmdBeginRenderingKHR");
   extensions.vkCmdEndRendering2EXT = (PFN_vkCmdEndRendering2EXT)getInstanceProcAddr(instance,"vkCmdEndRendering2EXT");
   extensions.vkCmdEndRenderingKHR = (PFN_vkCmdEndRenderingKHR)getInstanceProcAddr(instance,"vkCmdEndRenderingKHR");
}

fn void destroySurfaceKHR (Instance instance, SurfaceKHR surface, AllocationCallbacks* pAllocator) => extensions.vkDestroySurfaceKHR(instance, surface, pAllocator);
fn void destroySwapchainKHR (Device device, SwapchainKHR swapchain, AllocationCallbacks* pAllocator) => extensions.vkDestroySwapchainKHR(device, swapchain, pAllocator);
fn uint getPhysicalDeviceWaylandPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Display* display) => extensions.vkGetPhysicalDeviceWaylandPresentationSupportKHR(physicalDevice, queueFamilyIndex, display);
fn uint getPhysicalDeviceWin32PresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex) => extensions.vkGetPhysicalDeviceWin32PresentationSupportKHR(physicalDevice, queueFamilyIndex);
fn uint getPhysicalDeviceXlibPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Display* dpy, VisualID visualID) => extensions.vkGetPhysicalDeviceXlibPresentationSupportKHR(physicalDevice, queueFamilyIndex, dpy, visualID);
fn uint getPhysicalDeviceXcbPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Connection* connection, Window visual_id) => extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR(physicalDevice, queueFamilyIndex, connection, visual_id);
fn void destroyDebugReportCallbackEXT (Instance instance, DebugReportCallbackEXT callback, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugReportCallbackEXT(instance, callback, pAllocator);
fn void debugReportMessageEXT (Instance instance, DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objectType, ulong object, usz location, int messageCode, char* pLayerPrefix, char* pMessage) => extensions.vkDebugReportMessageEXT(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage);
fn void getPhysicalDeviceFeatures2KHR (PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures) => extensions.vkGetPhysicalDeviceFeatures2KHR(physicalDevice, pFeatures);
fn void getPhysicalDeviceProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties) => extensions.vkGetPhysicalDeviceProperties2KHR(physicalDevice, pProperties);
fn void getPhysicalDeviceFormatProperties2KHR (PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties) => extensions.vkGetPhysicalDeviceFormatProperties2KHR(physicalDevice, format, pFormatProperties);
fn void getPhysicalDeviceQueueFamilyProperties2KHR (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties) => extensions.vkGetPhysicalDeviceQueueFamilyProperties2KHR(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);
fn void getPhysicalDeviceMemoryProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties) => extensions.vkGetPhysicalDeviceMemoryProperties2KHR(physicalDevice, pMemoryProperties);
fn void getPhysicalDeviceSparseImageFormatProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint* pPropertyCount, SparseImageFormatProperties2* pProperties) => extensions.vkGetPhysicalDeviceSparseImageFormatProperties2KHR(physicalDevice, pFormatInfo, pPropertyCount, pProperties);
fn void cmdPushDescriptorSetKHR (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set, uint descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites) => extensions.vkCmdPushDescriptorSetKHR(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites);
fn void cmdSetSampleLocationsEXT (CommandBuffer commandBuffer, SampleLocationsInfoEXT* pSampleLocationsInfo) => extensions.vkCmdSetSampleLocationsEXT(commandBuffer, pSampleLocationsInfo);
fn void getPhysicalDeviceMultisamplePropertiesEXT (PhysicalDevice physicalDevice, SampleCountFlagBits samples, MultisamplePropertiesEXT* pMultisampleProperties) => extensions.vkGetPhysicalDeviceMultisamplePropertiesEXT(physicalDevice, samples, pMultisampleProperties);
fn void queueBeginDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueBeginDebugUtilsLabelEXT(queue, pLabelInfo);
fn void queueEndDebugUtilsLabelEXT (Queue queue) => extensions.vkQueueEndDebugUtilsLabelEXT(queue);
fn void queueInsertDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueInsertDebugUtilsLabelEXT(queue, pLabelInfo);
fn void cmdBeginDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdBeginDebugUtilsLabelEXT(commandBuffer, pLabelInfo);
fn void cmdEndDebugUtilsLabelEXT (CommandBuffer commandBuffer) => extensions.vkCmdEndDebugUtilsLabelEXT(commandBuffer);
fn void cmdInsertDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdInsertDebugUtilsLabelEXT(commandBuffer, pLabelInfo);
fn void destroyDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerEXT messenger, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugUtilsMessengerEXT(instance, messenger, pAllocator);
fn void submitDebugUtilsMessageEXT (Instance instance, DebugUtilsMessageSeverityFlagBitsEXT messageSeverity, DebugUtilsMessageTypeFlagsEXT messageTypes, DebugUtilsMessengerCallbackDataEXT* pCallbackData) => extensions.vkSubmitDebugUtilsMessageEXT(instance, messageSeverity, messageTypes, pCallbackData);
fn void cmdBeginRenderPass2KHR (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo) => extensions.vkCmdBeginRenderPass2KHR(commandBuffer, pRenderPassBegin, pSubpassBeginInfo);
fn void cmdNextSubpass2KHR (CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo) => extensions.vkCmdNextSubpass2KHR(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo);
fn void cmdEndRenderPass2KHR (CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo) => extensions.vkCmdEndRenderPass2KHR(commandBuffer, pSubpassEndInfo);
fn void destroyAccelerationStructureKHR (Device device, AccelerationStructureKHR accelerationStructure, AllocationCallbacks* pAllocator) => extensions.vkDestroyAccelerationStructureKHR(device, accelerationStructure, pAllocator);
fn void cmdCopyAccelerationStructureKHR (CommandBuffer commandBuffer, CopyAccelerationStructureInfoKHR* pInfo) => extensions.vkCmdCopyAccelerationStructureKHR(commandBuffer, pInfo);
fn void cmdCopyAccelerationStructureToMemoryKHR (CommandBuffer commandBuffer, CopyAccelerationStructureToMemoryInfoKHR* pInfo) => extensions.vkCmdCopyAccelerationStructureToMemoryKHR(commandBuffer, pInfo);
fn void cmdCopyMemoryToAccelerationStructureKHR (CommandBuffer commandBuffer, CopyMemoryToAccelerationStructureInfoKHR* pInfo) => extensions.vkCmdCopyMemoryToAccelerationStructureKHR(commandBuffer, pInfo);
fn void cmdWriteAccelerationStructuresPropertiesKHR (CommandBuffer commandBuffer, uint accelerationStructureCount, AccelerationStructureKHR* pAccelerationStructures, QueryType queryType, QueryPool queryPool, uint firstQuery) => extensions.vkCmdWriteAccelerationStructuresPropertiesKHR(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
fn void getDeviceAccelerationStructureCompatibilityKHR (Device device, AccelerationStructureVersionInfoKHR* pVersionInfo, AccelerationStructureCompatibilityKHR* pCompatibility) => extensions.vkGetDeviceAccelerationStructureCompatibilityKHR(device, pVersionInfo, pCompatibility);
fn void cmdBuildAccelerationStructuresKHR (CommandBuffer commandBuffer, uint infoCount, AccelerationStructureBuildGeometryInfoKHR* pInfos, AccelerationStructureBuildRangeInfoKHR*  ppBuildRangeInfos) => extensions.vkCmdBuildAccelerationStructuresKHR(commandBuffer, infoCount, pInfos, ppBuildRangeInfos);
fn void cmdBuildAccelerationStructuresIndirectKHR (CommandBuffer commandBuffer, uint infoCount, AccelerationStructureBuildGeometryInfoKHR* pInfos, DeviceAddress* pIndirectDeviceAddresses, uint* pIndirectStrides, uint*  ppMaxPrimitiveCounts) => extensions.vkCmdBuildAccelerationStructuresIndirectKHR(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, pIndirectStrides, ppMaxPrimitiveCounts);
fn DeviceAddress getAccelerationStructureDeviceAddressKHR (Device device, AccelerationStructureDeviceAddressInfoKHR* pInfo) => extensions.vkGetAccelerationStructureDeviceAddressKHR(device, pInfo);
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
fn void cmdSetSampleLocationsEnableEXT (CommandBuffer commandBuffer, uint sampleLocationsEnable) => extensions.vkCmdSetSampleLocationsEnableEXT(commandBuffer, sampleLocationsEnable);
fn void getAccelerationStructureBuildSizesKHR (Device device, AccelerationStructureBuildTypeKHR buildType, AccelerationStructureBuildGeometryInfoKHR* pBuildInfo, uint* pMaxPrimitiveCounts, AccelerationStructureBuildSizesInfoKHR* pSizeInfo) => extensions.vkGetAccelerationStructureBuildSizesKHR(device, buildType, pBuildInfo, pMaxPrimitiveCounts, pSizeInfo);
fn void getDescriptorSetLayoutSizeEXT (Device device, DescriptorSetLayout layout, DeviceSize* pLayoutSizeInBytes) => extensions.vkGetDescriptorSetLayoutSizeEXT(device, layout, pLayoutSizeInBytes);
fn void getDescriptorSetLayoutBindingOffsetEXT (Device device, DescriptorSetLayout layout, uint binding, DeviceSize* pOffset) => extensions.vkGetDescriptorSetLayoutBindingOffsetEXT(device, layout, binding, pOffset);
fn void getDescriptorEXT (Device device, DescriptorGetInfoEXT* pDescriptorInfo, usz dataSize, void* pDescriptor) => extensions.vkGetDescriptorEXT(device, pDescriptorInfo, dataSize, pDescriptor);
fn void cmdBindDescriptorBuffersEXT (CommandBuffer commandBuffer, uint bufferCount, DescriptorBufferBindingInfoEXT* pBindingInfos) => extensions.vkCmdBindDescriptorBuffersEXT(commandBuffer, bufferCount, pBindingInfos);
fn void cmdSetDescriptorBufferOffsetsEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint firstSet, uint setCount, uint* pBufferIndices, DeviceSize* pOffsets) => extensions.vkCmdSetDescriptorBufferOffsetsEXT(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, pBufferIndices, pOffsets);
fn void cmdBindDescriptorBufferEmbeddedSamplersEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set) => extensions.vkCmdBindDescriptorBufferEmbeddedSamplersEXT(commandBuffer, pipelineBindPoint, layout, set);
fn void cmdBeginRenderingKHR (CommandBuffer commandBuffer, RenderingInfo* pRenderingInfo) => extensions.vkCmdBeginRenderingKHR(commandBuffer, pRenderingInfo);
fn void cmdEndRendering2EXT (CommandBuffer commandBuffer, RenderingEndInfoEXT* pRenderingEndInfo) => extensions.vkCmdEndRendering2EXT(commandBuffer, pRenderingEndInfo);
fn void cmdEndRenderingKHR (CommandBuffer commandBuffer, RenderingEndInfoEXT* pRenderingEndInfo) => extensions.vkCmdEndRenderingKHR(commandBuffer, pRenderingEndInfo);

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
fn void? createXlibSurfaceKHR (Instance instance, XlibSurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateXlibSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
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
fn void? bindImageMemory2 (Device device, uint bindInfoCount, BindImageMemoryInfo* pBindInfos) {
  Result result = vkBindImageMemory2(device, bindInfoCount, pBindInfos);
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
fn void? createSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion) {
  Result result = vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion);
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
fn void? signalSemaphore (Device device, SemaphoreSignalInfo* pSignalInfo) {
  Result result = vkSignalSemaphore(device, pSignalInfo);
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
fn void? getPhysicalDeviceToolProperties (PhysicalDevice physicalDevice, uint* pToolCount, PhysicalDeviceToolProperties* pToolProperties) {
  Result result = vkGetPhysicalDeviceToolProperties(physicalDevice, pToolCount, pToolProperties);
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
fn void? createPrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PrivateDataSlot* pPrivateDataSlot) {
  Result result = vkCreatePrivateDataSlot(device, pCreateInfo, pAllocator, pPrivateDataSlot);
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
fn void? unmapMemory2 (Device device, MemoryUnmapInfo* pMemoryUnmapInfo) {
  Result result = vkUnmapMemory2(device, pMemoryUnmapInfo);
  switch(result) { 
       case ERROR_MEMORY_MAP_FAILED: return E_ERROR_MEMORY_MAP_FAILED~;
       case ERROR_UNKNOWN: return E_ERROR_UNKNOWN~;
       case ERROR_VALIDATION_FAILED: return E_ERROR_VALIDATION_FAILED~;
  }
}

fn Instance? InstanceCreateInfo.build(&self, AllocationCallbacks* pAllocator = null) {
   Instance response;
   createInstance(self, pAllocator, &response)!;
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
fn SurfaceKHR? XlibSurfaceCreateInfoKHR.build(&self, Instance instance, AllocationCallbacks* pAllocator = null) {
   SurfaceKHR response;
   createXlibSurfaceKHR(instance, self, pAllocator, &response)!;
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
fn DescriptorUpdateTemplate? DescriptorUpdateTemplateCreateInfo.build(&self, Device device, AllocationCallbacks* pAllocator = null) {
   DescriptorUpdateTemplate response;
   createDescriptorUpdateTemplate(device, self, pAllocator, &response)!;
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

