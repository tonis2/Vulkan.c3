module vk;

extern fn Result vkCreateInstance(InstanceCreateInfo*, AllocationCallbacks*, Instance*) @extern("vkCreateInstance"); 
extern fn void destroyInstance(Instance, AllocationCallbacks*) @extern("vkDestroyInstance"); 
extern fn Result vkEnumeratePhysicalDevices(Instance, uint*, PhysicalDevice*) @extern("vkEnumeratePhysicalDevices"); 
extern fn PFN_vkVoidFunction vkGetDeviceProcAddr(Device, char*) @extern("vkGetDeviceProcAddr"); 
extern fn PFN_vkVoidFunction vkGetInstanceProcAddr(Instance, char*) @extern("vkGetInstanceProcAddr"); 
extern fn void getPhysicalDeviceProperties(PhysicalDevice, PhysicalDeviceProperties*) @extern("vkGetPhysicalDeviceProperties"); 
extern fn void getPhysicalDeviceQueueFamilyProperties(PhysicalDevice, uint*, QueueFamilyProperties*) @extern("vkGetPhysicalDeviceQueueFamilyProperties"); 
extern fn void getPhysicalDeviceMemoryProperties(PhysicalDevice, PhysicalDeviceMemoryProperties*) @extern("vkGetPhysicalDeviceMemoryProperties"); 
extern fn void getPhysicalDeviceFeatures(PhysicalDevice, PhysicalDeviceFeatures*) @extern("vkGetPhysicalDeviceFeatures"); 
extern fn void getPhysicalDeviceFormatProperties(PhysicalDevice, Format, FormatProperties*) @extern("vkGetPhysicalDeviceFormatProperties"); 
extern fn Result vkGetPhysicalDeviceImageFormatProperties(PhysicalDevice, Format, ImageType, ImageTiling, ImageUsageFlags, ImageCreateFlags, ImageFormatProperties*) @extern("vkGetPhysicalDeviceImageFormatProperties"); 
extern fn Result vkCreateDevice(PhysicalDevice, DeviceCreateInfo*, AllocationCallbacks*, Device*) @extern("vkCreateDevice"); 
extern fn void destroyDevice(Device, AllocationCallbacks*) @extern("vkDestroyDevice"); 
extern fn Result vkEnumerateInstanceVersion(uint*) @extern("vkEnumerateInstanceVersion"); 
extern fn Result vkEnumerateInstanceLayerProperties(uint*, LayerProperties*) @extern("vkEnumerateInstanceLayerProperties"); 
extern fn Result vkEnumerateInstanceExtensionProperties(char*, uint*, ExtensionProperties*) @extern("vkEnumerateInstanceExtensionProperties"); 
extern fn Result vkEnumerateDeviceLayerProperties(PhysicalDevice, uint*, LayerProperties*) @extern("vkEnumerateDeviceLayerProperties"); 
extern fn Result vkEnumerateDeviceExtensionProperties(PhysicalDevice, char*, uint*, ExtensionProperties*) @extern("vkEnumerateDeviceExtensionProperties"); 
extern fn void getDeviceQueue(Device, uint, uint, Queue*) @extern("vkGetDeviceQueue"); 
extern fn Result vkQueueSubmit(Queue, uint, SubmitInfo*, Fence) @extern("vkQueueSubmit"); 
extern fn Result vkQueueWaitIdle(Queue) @extern("vkQueueWaitIdle"); 
extern fn Result vkDeviceWaitIdle(Device) @extern("vkDeviceWaitIdle"); 
extern fn Result vkAllocateMemory(Device, MemoryAllocateInfo*, AllocationCallbacks*, DeviceMemory*) @extern("vkAllocateMemory"); 
extern fn void freeMemory(Device, DeviceMemory, AllocationCallbacks*) @extern("vkFreeMemory"); 
extern fn Result vkMapMemory(Device, DeviceMemory, DeviceSize, DeviceSize, MemoryMapFlags, void**) @extern("vkMapMemory"); 
extern fn void unmapMemory(Device, DeviceMemory) @extern("vkUnmapMemory"); 
extern fn Result vkFlushMappedMemoryRanges(Device, uint, MappedMemoryRange*) @extern("vkFlushMappedMemoryRanges"); 
extern fn Result vkInvalidateMappedMemoryRanges(Device, uint, MappedMemoryRange*) @extern("vkInvalidateMappedMemoryRanges"); 
extern fn void getDeviceMemoryCommitment(Device, DeviceMemory, DeviceSize*) @extern("vkGetDeviceMemoryCommitment"); 
extern fn void getBufferMemoryRequirements(Device, Buffer, MemoryRequirements*) @extern("vkGetBufferMemoryRequirements"); 
extern fn Result vkBindBufferMemory(Device, Buffer, DeviceMemory, DeviceSize) @extern("vkBindBufferMemory"); 
extern fn void getImageMemoryRequirements(Device, Image, MemoryRequirements*) @extern("vkGetImageMemoryRequirements"); 
extern fn Result vkBindImageMemory(Device, Image, DeviceMemory, DeviceSize) @extern("vkBindImageMemory"); 
extern fn void getImageSparseMemoryRequirements(Device, Image, uint*, SparseImageMemoryRequirements*) @extern("vkGetImageSparseMemoryRequirements"); 
extern fn void getPhysicalDeviceSparseImageFormatProperties(PhysicalDevice, Format, ImageType, SampleCountFlagBits, ImageUsageFlags, ImageTiling, uint*, SparseImageFormatProperties*) @extern("vkGetPhysicalDeviceSparseImageFormatProperties"); 
extern fn Result vkQueueBindSparse(Queue, uint, BindSparseInfo*, Fence) @extern("vkQueueBindSparse"); 
extern fn Result vkCreateFence(Device, FenceCreateInfo*, AllocationCallbacks*, Fence*) @extern("vkCreateFence"); 
extern fn void destroyFence(Device, Fence, AllocationCallbacks*) @extern("vkDestroyFence"); 
extern fn Result vkResetFences(Device, uint, Fence*) @extern("vkResetFences"); 
extern fn Result vkGetFenceStatus(Device, Fence) @extern("vkGetFenceStatus"); 
extern fn Result vkWaitForFences(Device, uint, Fence*, uint, ulong) @extern("vkWaitForFences"); 
extern fn Result vkCreateSemaphore(Device, SemaphoreCreateInfo*, AllocationCallbacks*, Semaphore*) @extern("vkCreateSemaphore"); 
extern fn void destroySemaphore(Device, Semaphore, AllocationCallbacks*) @extern("vkDestroySemaphore"); 
extern fn Result vkCreateEvent(Device, EventCreateInfo*, AllocationCallbacks*, Event*) @extern("vkCreateEvent"); 
extern fn void destroyEvent(Device, Event, AllocationCallbacks*) @extern("vkDestroyEvent"); 
extern fn Result vkGetEventStatus(Device, Event) @extern("vkGetEventStatus"); 
extern fn Result vkSetEvent(Device, Event) @extern("vkSetEvent"); 
extern fn Result vkResetEvent(Device, Event) @extern("vkResetEvent"); 
extern fn Result vkCreateQueryPool(Device, QueryPoolCreateInfo*, AllocationCallbacks*, QueryPool*) @extern("vkCreateQueryPool"); 
extern fn void destroyQueryPool(Device, QueryPool, AllocationCallbacks*) @extern("vkDestroyQueryPool"); 
extern fn Result vkGetQueryPoolResults(Device, QueryPool, uint, uint, usz, void*, DeviceSize, QueryResultFlags) @extern("vkGetQueryPoolResults"); 
extern fn void resetQueryPool(Device, QueryPool, uint, uint) @extern("vkResetQueryPool"); 
extern fn Result vkCreateBuffer(Device, BufferCreateInfo*, AllocationCallbacks*, Buffer*) @extern("vkCreateBuffer"); 
extern fn void destroyBuffer(Device, Buffer, AllocationCallbacks*) @extern("vkDestroyBuffer"); 
extern fn Result vkCreateBufferView(Device, BufferViewCreateInfo*, AllocationCallbacks*, BufferView*) @extern("vkCreateBufferView"); 
extern fn void destroyBufferView(Device, BufferView, AllocationCallbacks*) @extern("vkDestroyBufferView"); 
extern fn Result vkCreateImage(Device, ImageCreateInfo*, AllocationCallbacks*, Image*) @extern("vkCreateImage"); 
extern fn void destroyImage(Device, Image, AllocationCallbacks*) @extern("vkDestroyImage"); 
extern fn void getImageSubresourceLayout(Device, Image, ImageSubresource*, SubresourceLayout*) @extern("vkGetImageSubresourceLayout"); 
extern fn Result vkCreateImageView(Device, ImageViewCreateInfo*, AllocationCallbacks*, ImageView*) @extern("vkCreateImageView"); 
extern fn void destroyImageView(Device, ImageView, AllocationCallbacks*) @extern("vkDestroyImageView"); 
extern fn Result vkCreateShaderModule(Device, ShaderModuleCreateInfo*, AllocationCallbacks*, ShaderModule*) @extern("vkCreateShaderModule"); 
extern fn void destroyShaderModule(Device, ShaderModule, AllocationCallbacks*) @extern("vkDestroyShaderModule"); 
extern fn Result vkCreatePipelineCache(Device, PipelineCacheCreateInfo*, AllocationCallbacks*, PipelineCache*) @extern("vkCreatePipelineCache"); 
extern fn void destroyPipelineCache(Device, PipelineCache, AllocationCallbacks*) @extern("vkDestroyPipelineCache"); 
extern fn Result vkGetPipelineCacheData(Device, PipelineCache, usz*, void*) @extern("vkGetPipelineCacheData"); 
extern fn Result vkMergePipelineCaches(Device, PipelineCache, uint, PipelineCache*) @extern("vkMergePipelineCaches"); 
extern fn Result vkCreateGraphicsPipelines(Device, PipelineCache, uint, GraphicsPipelineCreateInfo*, AllocationCallbacks*, Pipeline*) @extern("vkCreateGraphicsPipelines"); 
extern fn Result vkCreateComputePipelines(Device, PipelineCache, uint, ComputePipelineCreateInfo*, AllocationCallbacks*, Pipeline*) @extern("vkCreateComputePipelines"); 
extern fn void destroyPipeline(Device, Pipeline, AllocationCallbacks*) @extern("vkDestroyPipeline"); 
extern fn Result vkCreatePipelineLayout(Device, PipelineLayoutCreateInfo*, AllocationCallbacks*, PipelineLayout*) @extern("vkCreatePipelineLayout"); 
extern fn void destroyPipelineLayout(Device, PipelineLayout, AllocationCallbacks*) @extern("vkDestroyPipelineLayout"); 
extern fn Result vkCreateSampler(Device, SamplerCreateInfo*, AllocationCallbacks*, Sampler*) @extern("vkCreateSampler"); 
extern fn void destroySampler(Device, Sampler, AllocationCallbacks*) @extern("vkDestroySampler"); 
extern fn Result vkCreateDescriptorSetLayout(Device, DescriptorSetLayoutCreateInfo*, AllocationCallbacks*, DescriptorSetLayout*) @extern("vkCreateDescriptorSetLayout"); 
extern fn void destroyDescriptorSetLayout(Device, DescriptorSetLayout, AllocationCallbacks*) @extern("vkDestroyDescriptorSetLayout"); 
extern fn Result vkCreateDescriptorPool(Device, DescriptorPoolCreateInfo*, AllocationCallbacks*, DescriptorPool*) @extern("vkCreateDescriptorPool"); 
extern fn void destroyDescriptorPool(Device, DescriptorPool, AllocationCallbacks*) @extern("vkDestroyDescriptorPool"); 
extern fn Result vkResetDescriptorPool(Device, DescriptorPool, DescriptorPoolResetFlags) @extern("vkResetDescriptorPool"); 
extern fn Result vkAllocateDescriptorSets(Device, DescriptorSetAllocateInfo*, DescriptorSet*) @extern("vkAllocateDescriptorSets"); 
extern fn Result vkFreeDescriptorSets(Device, DescriptorPool, uint, DescriptorSet*) @extern("vkFreeDescriptorSets"); 
extern fn void updateDescriptorSets(Device, uint, WriteDescriptorSet*, uint, CopyDescriptorSet*) @extern("vkUpdateDescriptorSets"); 
extern fn Result vkCreateFramebuffer(Device, FramebufferCreateInfo*, AllocationCallbacks*, Framebuffer*) @extern("vkCreateFramebuffer"); 
extern fn void destroyFramebuffer(Device, Framebuffer, AllocationCallbacks*) @extern("vkDestroyFramebuffer"); 
extern fn Result vkCreateRenderPass(Device, RenderPassCreateInfo*, AllocationCallbacks*, RenderPass*) @extern("vkCreateRenderPass"); 
extern fn void destroyRenderPass(Device, RenderPass, AllocationCallbacks*) @extern("vkDestroyRenderPass"); 
extern fn void getRenderAreaGranularity(Device, RenderPass, Extent2D*) @extern("vkGetRenderAreaGranularity"); 
extern fn Result vkCreateCommandPool(Device, CommandPoolCreateInfo*, AllocationCallbacks*, CommandPool*) @extern("vkCreateCommandPool"); 
extern fn void destroyCommandPool(Device, CommandPool, AllocationCallbacks*) @extern("vkDestroyCommandPool"); 
extern fn Result vkResetCommandPool(Device, CommandPool, CommandPoolResetFlags) @extern("vkResetCommandPool"); 
extern fn Result vkAllocateCommandBuffers(Device, CommandBufferAllocateInfo*, CommandBuffer*) @extern("vkAllocateCommandBuffers"); 
extern fn void freeCommandBuffers(Device, CommandPool, uint, CommandBuffer*) @extern("vkFreeCommandBuffers"); 
extern fn Result vkBeginCommandBuffer(CommandBuffer, CommandBufferBeginInfo*) @extern("vkBeginCommandBuffer"); 
extern fn Result vkEndCommandBuffer(CommandBuffer) @extern("vkEndCommandBuffer"); 
extern fn Result vkResetCommandBuffer(CommandBuffer, CommandBufferResetFlags) @extern("vkResetCommandBuffer"); 
extern fn void cmdBindPipeline(CommandBuffer, PipelineBindPoint, Pipeline) @extern("vkCmdBindPipeline"); 
extern fn void cmdSetViewport(CommandBuffer, uint, uint, Viewport*) @extern("vkCmdSetViewport"); 
extern fn void cmdSetScissor(CommandBuffer, uint, uint, Rect2D*) @extern("vkCmdSetScissor"); 
extern fn void cmdSetLineWidth(CommandBuffer, float) @extern("vkCmdSetLineWidth"); 
extern fn void cmdSetDepthBias(CommandBuffer, float, float, float) @extern("vkCmdSetDepthBias"); 
extern fn void cmdSetBlendConstants(CommandBuffer, float[4]) @extern("vkCmdSetBlendConstants"); 
extern fn void cmdSetDepthBounds(CommandBuffer, float, float) @extern("vkCmdSetDepthBounds"); 
extern fn void cmdSetStencilCompareMask(CommandBuffer, StencilFaceFlags, uint) @extern("vkCmdSetStencilCompareMask"); 
extern fn void cmdSetStencilWriteMask(CommandBuffer, StencilFaceFlags, uint) @extern("vkCmdSetStencilWriteMask"); 
extern fn void cmdSetStencilReference(CommandBuffer, StencilFaceFlags, uint) @extern("vkCmdSetStencilReference"); 
extern fn void cmdBindDescriptorSets(CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, DescriptorSet*, uint, uint*) @extern("vkCmdBindDescriptorSets"); 
extern fn void cmdBindIndexBuffer(CommandBuffer, Buffer, DeviceSize, IndexType) @extern("vkCmdBindIndexBuffer"); 
extern fn void cmdBindVertexBuffers(CommandBuffer, uint, uint, Buffer*, DeviceSize*) @extern("vkCmdBindVertexBuffers"); 
extern fn void cmdDraw(CommandBuffer, uint, uint, uint, uint) @extern("vkCmdDraw"); 
extern fn void cmdDrawIndexed(CommandBuffer, uint, uint, uint, int, uint) @extern("vkCmdDrawIndexed"); 
extern fn void cmdDrawIndirect(CommandBuffer, Buffer, DeviceSize, uint, uint) @extern("vkCmdDrawIndirect"); 
extern fn void cmdDrawIndexedIndirect(CommandBuffer, Buffer, DeviceSize, uint, uint) @extern("vkCmdDrawIndexedIndirect"); 
extern fn void cmdDispatch(CommandBuffer, uint, uint, uint) @extern("vkCmdDispatch"); 
extern fn void cmdDispatchIndirect(CommandBuffer, Buffer, DeviceSize) @extern("vkCmdDispatchIndirect"); 
extern fn void cmdCopyBuffer(CommandBuffer, Buffer, Buffer, uint, BufferCopy*) @extern("vkCmdCopyBuffer"); 
extern fn void cmdCopyImage(CommandBuffer, Image, ImageLayout, Image, ImageLayout, uint, ImageCopy*) @extern("vkCmdCopyImage"); 
extern fn void cmdBlitImage(CommandBuffer, Image, ImageLayout, Image, ImageLayout, uint, ImageBlit*, Filter) @extern("vkCmdBlitImage"); 
extern fn void cmdCopyBufferToImage(CommandBuffer, Buffer, Image, ImageLayout, uint, BufferImageCopy*) @extern("vkCmdCopyBufferToImage"); 
extern fn void cmdCopyImageToBuffer(CommandBuffer, Image, ImageLayout, Buffer, uint, BufferImageCopy*) @extern("vkCmdCopyImageToBuffer"); 
extern fn void cmdUpdateBuffer(CommandBuffer, Buffer, DeviceSize, DeviceSize, void*) @extern("vkCmdUpdateBuffer"); 
extern fn void cmdFillBuffer(CommandBuffer, Buffer, DeviceSize, DeviceSize, uint) @extern("vkCmdFillBuffer"); 
extern fn void cmdClearColorImage(CommandBuffer, Image, ImageLayout, ClearColorValue*, uint, ImageSubresourceRange*) @extern("vkCmdClearColorImage"); 
extern fn void cmdClearDepthStencilImage(CommandBuffer, Image, ImageLayout, ClearDepthStencilValue*, uint, ImageSubresourceRange*) @extern("vkCmdClearDepthStencilImage"); 
extern fn void cmdClearAttachments(CommandBuffer, uint, ClearAttachment*, uint, ClearRect*) @extern("vkCmdClearAttachments"); 
extern fn void cmdResolveImage(CommandBuffer, Image, ImageLayout, Image, ImageLayout, uint, ImageResolve*) @extern("vkCmdResolveImage"); 
extern fn void cmdSetEvent(CommandBuffer, Event, PipelineStageFlags) @extern("vkCmdSetEvent"); 
extern fn void cmdResetEvent(CommandBuffer, Event, PipelineStageFlags) @extern("vkCmdResetEvent"); 
extern fn void cmdWaitEvents(CommandBuffer, uint, Event*, PipelineStageFlags, PipelineStageFlags, uint, MemoryBarrier*, uint, BufferMemoryBarrier*, uint, ImageMemoryBarrier*) @extern("vkCmdWaitEvents"); 
extern fn void cmdPipelineBarrier(CommandBuffer, PipelineStageFlags, PipelineStageFlags, DependencyFlags, uint, MemoryBarrier*, uint, BufferMemoryBarrier*, uint, ImageMemoryBarrier*) @extern("vkCmdPipelineBarrier"); 
extern fn void cmdBeginQuery(CommandBuffer, QueryPool, uint, QueryControlFlags) @extern("vkCmdBeginQuery"); 
extern fn void cmdEndQuery(CommandBuffer, QueryPool, uint) @extern("vkCmdEndQuery"); 
extern fn void cmdResetQueryPool(CommandBuffer, QueryPool, uint, uint) @extern("vkCmdResetQueryPool"); 
extern fn void cmdWriteTimestamp(CommandBuffer, PipelineStageFlagBits, QueryPool, uint) @extern("vkCmdWriteTimestamp"); 
extern fn void cmdCopyQueryPoolResults(CommandBuffer, QueryPool, uint, uint, Buffer, DeviceSize, DeviceSize, QueryResultFlags) @extern("vkCmdCopyQueryPoolResults"); 
extern fn void cmdPushConstants(CommandBuffer, PipelineLayout, ShaderStageFlags, uint, uint, void*) @extern("vkCmdPushConstants"); 
extern fn void cmdBeginRenderPass(CommandBuffer, RenderPassBeginInfo*, SubpassContents) @extern("vkCmdBeginRenderPass"); 
extern fn void cmdNextSubpass(CommandBuffer, SubpassContents) @extern("vkCmdNextSubpass"); 
extern fn void cmdEndRenderPass(CommandBuffer) @extern("vkCmdEndRenderPass"); 
extern fn void cmdExecuteCommands(CommandBuffer, uint, CommandBuffer*) @extern("vkCmdExecuteCommands"); 
extern fn void getPhysicalDeviceFeatures2(PhysicalDevice, PhysicalDeviceFeatures2*) @extern("vkGetPhysicalDeviceFeatures2"); 
extern fn void getPhysicalDeviceProperties2(PhysicalDevice, PhysicalDeviceProperties2*) @extern("vkGetPhysicalDeviceProperties2"); 
extern fn void getPhysicalDeviceFormatProperties2(PhysicalDevice, Format, FormatProperties2*) @extern("vkGetPhysicalDeviceFormatProperties2"); 
extern fn Result vkGetPhysicalDeviceImageFormatProperties2(PhysicalDevice, PhysicalDeviceImageFormatInfo2*, ImageFormatProperties2*) @extern("vkGetPhysicalDeviceImageFormatProperties2"); 
extern fn void getPhysicalDeviceQueueFamilyProperties2(PhysicalDevice, uint*, QueueFamilyProperties2*) @extern("vkGetPhysicalDeviceQueueFamilyProperties2"); 
extern fn void getPhysicalDeviceMemoryProperties2(PhysicalDevice, PhysicalDeviceMemoryProperties2*) @extern("vkGetPhysicalDeviceMemoryProperties2"); 
extern fn void getPhysicalDeviceSparseImageFormatProperties2(PhysicalDevice, PhysicalDeviceSparseImageFormatInfo2*, uint*, SparseImageFormatProperties2*) @extern("vkGetPhysicalDeviceSparseImageFormatProperties2"); 
extern fn void trimCommandPool(Device, CommandPool, CommandPoolTrimFlags) @extern("vkTrimCommandPool"); 
extern fn void getPhysicalDeviceExternalBufferProperties(PhysicalDevice, PhysicalDeviceExternalBufferInfo*, ExternalBufferProperties*) @extern("vkGetPhysicalDeviceExternalBufferProperties"); 
extern fn void getPhysicalDeviceExternalSemaphoreProperties(PhysicalDevice, PhysicalDeviceExternalSemaphoreInfo*, ExternalSemaphoreProperties*) @extern("vkGetPhysicalDeviceExternalSemaphoreProperties"); 
extern fn void getPhysicalDeviceExternalFenceProperties(PhysicalDevice, PhysicalDeviceExternalFenceInfo*, ExternalFenceProperties*) @extern("vkGetPhysicalDeviceExternalFenceProperties"); 
extern fn Result vkEnumeratePhysicalDeviceGroups(Instance, uint*, PhysicalDeviceGroupProperties*) @extern("vkEnumeratePhysicalDeviceGroups"); 
extern fn void getDeviceGroupPeerMemoryFeatures(Device, uint, uint, uint, PeerMemoryFeatureFlags*) @extern("vkGetDeviceGroupPeerMemoryFeatures"); 
extern fn Result vkBindBufferMemory2(Device, uint, BindBufferMemoryInfo*) @extern("vkBindBufferMemory2"); 
extern fn Result vkBindImageMemory2(Device, uint, BindImageMemoryInfo*) @extern("vkBindImageMemory2"); 
extern fn void cmdSetDeviceMask(CommandBuffer, uint) @extern("vkCmdSetDeviceMask"); 
extern fn void cmdDispatchBase(CommandBuffer, uint, uint, uint, uint, uint, uint) @extern("vkCmdDispatchBase"); 
extern fn Result vkCreateDescriptorUpdateTemplate(Device, DescriptorUpdateTemplateCreateInfo*, AllocationCallbacks*, DescriptorUpdateTemplate*) @extern("vkCreateDescriptorUpdateTemplate"); 
extern fn void destroyDescriptorUpdateTemplate(Device, DescriptorUpdateTemplate, AllocationCallbacks*) @extern("vkDestroyDescriptorUpdateTemplate"); 
extern fn void updateDescriptorSetWithTemplate(Device, DescriptorSet, DescriptorUpdateTemplate, void*) @extern("vkUpdateDescriptorSetWithTemplate"); 
extern fn void getBufferMemoryRequirements2(Device, BufferMemoryRequirementsInfo2*, MemoryRequirements2*) @extern("vkGetBufferMemoryRequirements2"); 
extern fn void getImageMemoryRequirements2(Device, ImageMemoryRequirementsInfo2*, MemoryRequirements2*) @extern("vkGetImageMemoryRequirements2"); 
extern fn void getImageSparseMemoryRequirements2(Device, ImageSparseMemoryRequirementsInfo2*, uint*, SparseImageMemoryRequirements2*) @extern("vkGetImageSparseMemoryRequirements2"); 
extern fn void getDeviceBufferMemoryRequirements(Device, DeviceBufferMemoryRequirements*, MemoryRequirements2*) @extern("vkGetDeviceBufferMemoryRequirements"); 
extern fn void getDeviceImageMemoryRequirements(Device, DeviceImageMemoryRequirements*, MemoryRequirements2*) @extern("vkGetDeviceImageMemoryRequirements"); 
extern fn void getDeviceImageSparseMemoryRequirements(Device, DeviceImageMemoryRequirements*, uint*, SparseImageMemoryRequirements2*) @extern("vkGetDeviceImageSparseMemoryRequirements"); 
extern fn Result vkCreateSamplerYcbcrConversion(Device, SamplerYcbcrConversionCreateInfo*, AllocationCallbacks*, SamplerYcbcrConversion*) @extern("vkCreateSamplerYcbcrConversion"); 
extern fn void destroySamplerYcbcrConversion(Device, SamplerYcbcrConversion, AllocationCallbacks*) @extern("vkDestroySamplerYcbcrConversion"); 
extern fn void getDeviceQueue2(Device, DeviceQueueInfo2*, Queue*) @extern("vkGetDeviceQueue2"); 
extern fn void getDescriptorSetLayoutSupport(Device, DescriptorSetLayoutCreateInfo*, DescriptorSetLayoutSupport*) @extern("vkGetDescriptorSetLayoutSupport"); 
extern fn Result vkCreateRenderPass2(Device, RenderPassCreateInfo2*, AllocationCallbacks*, RenderPass*) @extern("vkCreateRenderPass2"); 
extern fn void cmdBeginRenderPass2(CommandBuffer, RenderPassBeginInfo*, SubpassBeginInfo*) @extern("vkCmdBeginRenderPass2"); 
extern fn void cmdNextSubpass2(CommandBuffer, SubpassBeginInfo*, SubpassEndInfo*) @extern("vkCmdNextSubpass2"); 
extern fn void cmdEndRenderPass2(CommandBuffer, SubpassEndInfo*) @extern("vkCmdEndRenderPass2"); 
extern fn Result vkGetSemaphoreCounterValue(Device, Semaphore, ulong*) @extern("vkGetSemaphoreCounterValue"); 
extern fn Result vkWaitSemaphores(Device, SemaphoreWaitInfo*, ulong) @extern("vkWaitSemaphores"); 
extern fn Result vkSignalSemaphore(Device, SemaphoreSignalInfo*) @extern("vkSignalSemaphore"); 
extern fn void cmdDrawIndirectCount(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint) @extern("vkCmdDrawIndirectCount"); 
extern fn void cmdDrawIndexedIndirectCount(CommandBuffer, Buffer, DeviceSize, Buffer, DeviceSize, uint, uint) @extern("vkCmdDrawIndexedIndirectCount"); 
extern fn ulong vkGetBufferOpaqueCaptureAddress(Device, BufferDeviceAddressInfo*) @extern("vkGetBufferOpaqueCaptureAddress"); 
extern fn DeviceAddress vkGetBufferDeviceAddress(Device, BufferDeviceAddressInfo*) @extern("vkGetBufferDeviceAddress"); 
extern fn ulong vkGetDeviceMemoryOpaqueCaptureAddress(Device, DeviceMemoryOpaqueCaptureAddressInfo*) @extern("vkGetDeviceMemoryOpaqueCaptureAddress"); 
extern fn Result vkGetPhysicalDeviceToolProperties(PhysicalDevice, uint*, PhysicalDeviceToolProperties*) @extern("vkGetPhysicalDeviceToolProperties"); 
extern fn void cmdSetCullMode(CommandBuffer, CullModeFlags) @extern("vkCmdSetCullMode"); 
extern fn void cmdSetFrontFace(CommandBuffer, FrontFace) @extern("vkCmdSetFrontFace"); 
extern fn void cmdSetPrimitiveTopology(CommandBuffer, PrimitiveTopology) @extern("vkCmdSetPrimitiveTopology"); 
extern fn void cmdSetViewportWithCount(CommandBuffer, uint, Viewport*) @extern("vkCmdSetViewportWithCount"); 
extern fn void cmdSetScissorWithCount(CommandBuffer, uint, Rect2D*) @extern("vkCmdSetScissorWithCount"); 
extern fn void cmdBindVertexBuffers2(CommandBuffer, uint, uint, Buffer*, DeviceSize*, DeviceSize*, DeviceSize*) @extern("vkCmdBindVertexBuffers2"); 
extern fn void cmdSetDepthTestEnable(CommandBuffer, uint) @extern("vkCmdSetDepthTestEnable"); 
extern fn void cmdSetDepthWriteEnable(CommandBuffer, uint) @extern("vkCmdSetDepthWriteEnable"); 
extern fn void cmdSetDepthCompareOp(CommandBuffer, CompareOp) @extern("vkCmdSetDepthCompareOp"); 
extern fn void cmdSetDepthBoundsTestEnable(CommandBuffer, uint) @extern("vkCmdSetDepthBoundsTestEnable"); 
extern fn void cmdSetStencilTestEnable(CommandBuffer, uint) @extern("vkCmdSetStencilTestEnable"); 
extern fn void cmdSetStencilOp(CommandBuffer, StencilFaceFlags, StencilOp, StencilOp, StencilOp, CompareOp) @extern("vkCmdSetStencilOp"); 
extern fn void cmdSetRasterizerDiscardEnable(CommandBuffer, uint) @extern("vkCmdSetRasterizerDiscardEnable"); 
extern fn void cmdSetDepthBiasEnable(CommandBuffer, uint) @extern("vkCmdSetDepthBiasEnable"); 
extern fn void cmdSetPrimitiveRestartEnable(CommandBuffer, uint) @extern("vkCmdSetPrimitiveRestartEnable"); 
extern fn Result vkCreatePrivateDataSlot(Device, PrivateDataSlotCreateInfo*, AllocationCallbacks*, PrivateDataSlot*) @extern("vkCreatePrivateDataSlot"); 
extern fn void destroyPrivateDataSlot(Device, PrivateDataSlot, AllocationCallbacks*) @extern("vkDestroyPrivateDataSlot"); 
extern fn Result vkSetPrivateData(Device, ObjectType, ulong, PrivateDataSlot, ulong) @extern("vkSetPrivateData"); 
extern fn void getPrivateData(Device, ObjectType, ulong, PrivateDataSlot, ulong*) @extern("vkGetPrivateData"); 
extern fn void cmdCopyBuffer2(CommandBuffer, CopyBufferInfo2*) @extern("vkCmdCopyBuffer2"); 
extern fn void cmdCopyImage2(CommandBuffer, CopyImageInfo2*) @extern("vkCmdCopyImage2"); 
extern fn void cmdBlitImage2(CommandBuffer, BlitImageInfo2*) @extern("vkCmdBlitImage2"); 
extern fn void cmdCopyBufferToImage2(CommandBuffer, CopyBufferToImageInfo2*) @extern("vkCmdCopyBufferToImage2"); 
extern fn void cmdCopyImageToBuffer2(CommandBuffer, CopyImageToBufferInfo2*) @extern("vkCmdCopyImageToBuffer2"); 
extern fn void cmdResolveImage2(CommandBuffer, ResolveImageInfo2*) @extern("vkCmdResolveImage2"); 
extern fn void cmdSetEvent2(CommandBuffer, Event, DependencyInfo*) @extern("vkCmdSetEvent2"); 
extern fn void cmdResetEvent2(CommandBuffer, Event, PipelineStageFlags2) @extern("vkCmdResetEvent2"); 
extern fn void cmdWaitEvents2(CommandBuffer, uint, Event*, DependencyInfo*) @extern("vkCmdWaitEvents2"); 
extern fn void cmdPipelineBarrier2(CommandBuffer, DependencyInfo*) @extern("vkCmdPipelineBarrier2"); 
extern fn Result vkQueueSubmit2(Queue, uint, SubmitInfo2*, Fence) @extern("vkQueueSubmit2"); 
extern fn void cmdWriteTimestamp2(CommandBuffer, PipelineStageFlags2, QueryPool, uint) @extern("vkCmdWriteTimestamp2"); 
extern fn void cmdBeginRendering(CommandBuffer, RenderingInfo*) @extern("vkCmdBeginRendering"); 
extern fn void cmdEndRendering(CommandBuffer) @extern("vkCmdEndRendering"); 

def PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPropertiesKHR*);
def PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPlanePropertiesKHR*);
def PFN_vkGetDisplayPlaneSupportedDisplaysKHR = fn Result (PhysicalDevice, uint, uint*, DisplayKHR*);
def PFN_vkGetDisplayModePropertiesKHR = fn Result (PhysicalDevice, DisplayKHR, uint*, DisplayModePropertiesKHR*);
def PFN_vkCreateDisplayModeKHR = fn Result (PhysicalDevice, DisplayKHR, DisplayModeCreateInfoKHR*, AllocationCallbacks*, DisplayModeKHR*);
def PFN_vkGetDisplayPlaneCapabilitiesKHR = fn Result (PhysicalDevice, DisplayModeKHR, uint, DisplayPlaneCapabilitiesKHR*);
def PFN_vkCreateDisplayPlaneSurfaceKHR = fn Result (Instance, DisplaySurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkDestroySurfaceKHR = fn void (Instance, SurfaceKHR, AllocationCallbacks*);
def PFN_vkGetPhysicalDeviceSurfaceSupportKHR = fn Result (PhysicalDevice, uint, SurfaceKHR, uint*);
def PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR = fn Result (PhysicalDevice, SurfaceKHR, SurfaceCapabilitiesKHR*);
def PFN_vkGetPhysicalDeviceSurfaceFormatsKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, SurfaceFormatKHR*);
def PFN_vkGetPhysicalDeviceSurfacePresentModesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, PresentModeKHR*);
def PFN_vkCreateSwapchainKHR = fn Result (Device, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
def PFN_vkDestroySwapchainKHR = fn void (Device, SwapchainKHR, AllocationCallbacks*);
def PFN_vkGetSwapchainImagesKHR = fn Result (Device, SwapchainKHR, uint*, Image*);
def PFN_vkAcquireNextImageKHR = fn Result (Device, SwapchainKHR, ulong, Semaphore, Fence, uint*);
def PFN_vkQueuePresentKHR = fn Result (Queue, PresentInfoKHR*);
def PFN_vkCreateWin32SurfaceKHR = fn Result (Instance, Win32SurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR = fn uint (PhysicalDevice, uint);
def PFN_vkCreateXlibSurfaceKHR = fn Result (Instance, XlibSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR = fn uint (PhysicalDevice, uint, Display*, VisualID);
def PFN_vkCreateXcbSurfaceKHR = fn Result (Instance, XcbSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR = fn uint (PhysicalDevice, uint, Display*, Window);
def PFN_vkCreateDebugReportCallbackEXT = fn Result (Instance, DebugReportCallbackCreateInfoEXT*, AllocationCallbacks*, DebugReportCallbackEXT*);
def PFN_vkDestroyDebugReportCallbackEXT = fn void (Instance, DebugReportCallbackEXT, AllocationCallbacks*);
def PFN_vkDebugReportMessageEXT = fn void (Instance, DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*);
def PFN_vkCmdPushDescriptorSetKHR = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*);
def PFN_vkCreateMacOSSurfaceMVK = fn Result (Instance, MacOSSurfaceCreateInfoMVK*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkSetDebugUtilsObjectNameEXT = fn Result (Device, DebugUtilsObjectNameInfoEXT*);
def PFN_vkSetDebugUtilsObjectTagEXT = fn Result (Device, DebugUtilsObjectTagInfoEXT*);
def PFN_vkQueueBeginDebugUtilsLabelEXT = fn void (Queue, DebugUtilsLabelEXT*);
def PFN_vkQueueEndDebugUtilsLabelEXT = fn void (Queue);
def PFN_vkQueueInsertDebugUtilsLabelEXT = fn void (Queue, DebugUtilsLabelEXT*);
def PFN_vkCmdBeginDebugUtilsLabelEXT = fn void (CommandBuffer, DebugUtilsLabelEXT*);
def PFN_vkCmdEndDebugUtilsLabelEXT = fn void (CommandBuffer);
def PFN_vkCmdInsertDebugUtilsLabelEXT = fn void (CommandBuffer, DebugUtilsLabelEXT*);
def PFN_vkCreateDebugUtilsMessengerEXT = fn Result (Instance, DebugUtilsMessengerCreateInfoEXT*, AllocationCallbacks*, DebugUtilsMessengerEXT*);
def PFN_vkDestroyDebugUtilsMessengerEXT = fn void (Instance, DebugUtilsMessengerEXT, AllocationCallbacks*);
def PFN_vkSubmitDebugUtilsMessageEXT = fn void (Instance, DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT*);
def PFN_vkGetDescriptorSetLayoutSizeEXT = fn void (Device, DescriptorSetLayout, DeviceSize*);
def PFN_vkGetDescriptorSetLayoutBindingOffsetEXT = fn void (Device, DescriptorSetLayout, uint, DeviceSize*);
def PFN_vkGetDescriptorEXT = fn void (Device, DescriptorGetInfoEXT*, usz, void*);
def PFN_vkCmdBindDescriptorBuffersEXT = fn void (CommandBuffer, uint, DescriptorBufferBindingInfoEXT*);
def PFN_vkCmdSetDescriptorBufferOffsetsEXT = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, uint*, DeviceSize*);
def PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint);
def PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT = fn Result (Device, BufferCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetImageOpaqueCaptureDescriptorDataEXT = fn Result (Device, ImageCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT = fn Result (Device, ImageViewCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT = fn Result (Device, SamplerCaptureDescriptorDataInfoEXT*, void*);
def PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = fn Result (Device, AccelerationStructureCaptureDescriptorDataInfoEXT*, void*);

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
  PFN_vkCreateWin32SurfaceKHR vkCreateWin32SurfaceKHR;
  PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR vkGetPhysicalDeviceWin32PresentationSupportKHR;
  PFN_vkCreateXlibSurfaceKHR vkCreateXlibSurfaceKHR;
  PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR vkGetPhysicalDeviceXlibPresentationSupportKHR;
  PFN_vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR;
  PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR;
  PFN_vkCreateDebugReportCallbackEXT vkCreateDebugReportCallbackEXT;
  PFN_vkDestroyDebugReportCallbackEXT vkDestroyDebugReportCallbackEXT;
  PFN_vkDebugReportMessageEXT vkDebugReportMessageEXT;
  PFN_vkCmdPushDescriptorSetKHR vkCmdPushDescriptorSetKHR;
  PFN_vkCreateMacOSSurfaceMVK vkCreateMacOSSurfaceMVK;
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
   extensions.vkCreateWin32SurfaceKHR = (PFN_vkCreateWin32SurfaceKHR)getInstanceProcAddr(instance,"vkCreateWin32SurfaceKHR");
   extensions.vkGetPhysicalDeviceWin32PresentationSupportKHR = (PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceWin32PresentationSupportKHR");
   extensions.vkCreateXlibSurfaceKHR = (PFN_vkCreateXlibSurfaceKHR)getInstanceProcAddr(instance,"vkCreateXlibSurfaceKHR");
   extensions.vkGetPhysicalDeviceXlibPresentationSupportKHR = (PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceXlibPresentationSupportKHR");
   extensions.vkCreateXcbSurfaceKHR = (PFN_vkCreateXcbSurfaceKHR)getInstanceProcAddr(instance,"vkCreateXcbSurfaceKHR");
   extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR = (PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR)getInstanceProcAddr(instance,"vkGetPhysicalDeviceXcbPresentationSupportKHR");
   extensions.vkCreateDebugReportCallbackEXT = (PFN_vkCreateDebugReportCallbackEXT)getInstanceProcAddr(instance,"vkCreateDebugReportCallbackEXT");
   extensions.vkDestroyDebugReportCallbackEXT = (PFN_vkDestroyDebugReportCallbackEXT)getInstanceProcAddr(instance,"vkDestroyDebugReportCallbackEXT");
   extensions.vkDebugReportMessageEXT = (PFN_vkDebugReportMessageEXT)getInstanceProcAddr(instance,"vkDebugReportMessageEXT");
   extensions.vkCmdPushDescriptorSetKHR = (PFN_vkCmdPushDescriptorSetKHR)getInstanceProcAddr(instance,"vkCmdPushDescriptorSetKHR");
   extensions.vkCreateMacOSSurfaceMVK = (PFN_vkCreateMacOSSurfaceMVK)getInstanceProcAddr(instance,"vkCreateMacOSSurfaceMVK");
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
}

fn void destroySurfaceKHR (Instance instance, SurfaceKHR surface, AllocationCallbacks* pAllocator) => extensions.vkDestroySurfaceKHR(instance, surface, pAllocator);
fn void destroySwapchainKHR (Device device, SwapchainKHR swapchain, AllocationCallbacks* pAllocator) => extensions.vkDestroySwapchainKHR(device, swapchain, pAllocator);
fn uint getPhysicalDeviceWin32PresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex) => extensions.vkGetPhysicalDeviceWin32PresentationSupportKHR(physicalDevice, queueFamilyIndex);
fn uint getPhysicalDeviceXlibPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Display* dpy, VisualID visualID) => extensions.vkGetPhysicalDeviceXlibPresentationSupportKHR(physicalDevice, queueFamilyIndex, dpy, visualID);
fn uint getPhysicalDeviceXcbPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, Display* connection, Window visual_id) => extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR(physicalDevice, queueFamilyIndex, connection, visual_id);
fn void destroyDebugReportCallbackEXT (Instance instance, DebugReportCallbackEXT callback, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugReportCallbackEXT(instance, callback, pAllocator);
fn void debugReportMessageEXT (Instance instance, DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objectType, ulong object, usz location, int messageCode, char* pLayerPrefix, char* pMessage) => extensions.vkDebugReportMessageEXT(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage);
fn void cmdPushDescriptorSetKHR (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set, uint descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites) => extensions.vkCmdPushDescriptorSetKHR(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites);
fn void queueBeginDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueBeginDebugUtilsLabelEXT(queue, pLabelInfo);
fn void queueEndDebugUtilsLabelEXT (Queue queue) => extensions.vkQueueEndDebugUtilsLabelEXT(queue);
fn void queueInsertDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueInsertDebugUtilsLabelEXT(queue, pLabelInfo);
fn void cmdBeginDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdBeginDebugUtilsLabelEXT(commandBuffer, pLabelInfo);
fn void cmdEndDebugUtilsLabelEXT (CommandBuffer commandBuffer) => extensions.vkCmdEndDebugUtilsLabelEXT(commandBuffer);
fn void cmdInsertDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdInsertDebugUtilsLabelEXT(commandBuffer, pLabelInfo);
fn void destroyDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerEXT messenger, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugUtilsMessengerEXT(instance, messenger, pAllocator);
fn void submitDebugUtilsMessageEXT (Instance instance, DebugUtilsMessageSeverityFlagBitsEXT messageSeverity, DebugUtilsMessageTypeFlagsEXT messageTypes, DebugUtilsMessengerCallbackDataEXT* pCallbackData) => extensions.vkSubmitDebugUtilsMessageEXT(instance, messageSeverity, messageTypes, pCallbackData);
fn void getDescriptorSetLayoutSizeEXT (Device device, DescriptorSetLayout layout, DeviceSize* pLayoutSizeInBytes) => extensions.vkGetDescriptorSetLayoutSizeEXT(device, layout, pLayoutSizeInBytes);
fn void getDescriptorSetLayoutBindingOffsetEXT (Device device, DescriptorSetLayout layout, uint binding, DeviceSize* pOffset) => extensions.vkGetDescriptorSetLayoutBindingOffsetEXT(device, layout, binding, pOffset);
fn void getDescriptorEXT (Device device, DescriptorGetInfoEXT* pDescriptorInfo, usz dataSize, void* pDescriptor) => extensions.vkGetDescriptorEXT(device, pDescriptorInfo, dataSize, pDescriptor);
fn void cmdBindDescriptorBuffersEXT (CommandBuffer commandBuffer, uint bufferCount, DescriptorBufferBindingInfoEXT* pBindingInfos) => extensions.vkCmdBindDescriptorBuffersEXT(commandBuffer, bufferCount, pBindingInfos);
fn void cmdSetDescriptorBufferOffsetsEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint firstSet, uint setCount, uint* pBufferIndices, DeviceSize* pOffsets) => extensions.vkCmdSetDescriptorBufferOffsetsEXT(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, pBufferIndices, pOffsets);
fn void cmdBindDescriptorBufferEmbeddedSamplersEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set) => extensions.vkCmdBindDescriptorBufferEmbeddedSamplersEXT(commandBuffer, pipelineBindPoint, layout, set);

fn void! createInstance (VkInstanceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkInstance* pInstance) {
  Result result = vkCreateInstance(pCreateInfo, pAllocator, pInstance);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_LAYER_NOT_PRESENT: return VkErrors.ERROR_LAYER_NOT_PRESENT?;
       case ERROR_EXTENSION_NOT_PRESENT: return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
       case ERROR_INCOMPATIBLE_DRIVER: return VkErrors.ERROR_INCOMPATIBLE_DRIVER?;
  }
}
fn void! enumeratePhysicalDevices (VkInstance instance, uint* pPhysicalDeviceCount, VkPhysicalDevice* pPhysicalDevices) {
  Result result = vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties (VkPhysicalDevice physicalDevice, VkFormat format, VkImageType type, VkImageTiling tiling, VkImageUsageFlags usage, VkImageCreateFlags flags, VkImageFormatProperties* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createDevice (VkPhysicalDevice physicalDevice, VkDeviceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDevice* pDevice) {
  Result result = vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_EXTENSION_NOT_PRESENT: return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
       case ERROR_FEATURE_NOT_PRESENT: return VkErrors.ERROR_FEATURE_NOT_PRESENT?;
       case ERROR_TOO_MANY_OBJECTS: return VkErrors.ERROR_TOO_MANY_OBJECTS?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! enumerateInstanceVersion (uint* pApiVersion) {
  Result result = vkEnumerateInstanceVersion(pApiVersion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! enumerateInstanceLayerProperties (uint* pPropertyCount, VkLayerProperties* pProperties) {
  Result result = vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateInstanceExtensionProperties (char* pLayerName, uint* pPropertyCount, VkExtensionProperties* pProperties) {
  Result result = vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_LAYER_NOT_PRESENT: return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! enumerateDeviceLayerProperties (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkLayerProperties* pProperties) {
  Result result = vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateDeviceExtensionProperties (VkPhysicalDevice physicalDevice, char* pLayerName, uint* pPropertyCount, VkExtensionProperties* pProperties) {
  Result result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_LAYER_NOT_PRESENT: return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! queueSubmit (VkQueue queue, uint submitCount, VkSubmitInfo* pSubmits, VkFence fence) {
  Result result = vkQueueSubmit(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! queueWaitIdle (VkQueue queue) {
  Result result = vkQueueWaitIdle(queue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! deviceWaitIdle (VkDevice device) {
  Result result = vkDeviceWaitIdle(device);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! allocateMemory (VkDevice device, VkMemoryAllocateInfo* pAllocateInfo, VkAllocationCallbacks* pAllocator, VkDeviceMemory* pMemory) {
  Result result = vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_EXTERNAL_HANDLE: return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! mapMemory (VkDevice device, VkDeviceMemory memory, VkDeviceSize offset, VkDeviceSize size, VkMemoryMapFlags flags, void** ppData) {
  Result result = vkMapMemory(device, memory, offset, size, flags, ppData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_MEMORY_MAP_FAILED: return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! flushMappedMemoryRanges (VkDevice device, uint memoryRangeCount, VkMappedMemoryRange* pMemoryRanges) {
  Result result = vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! invalidateMappedMemoryRanges (VkDevice device, uint memoryRangeCount, VkMappedMemoryRange* pMemoryRanges) {
  Result result = vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindBufferMemory (VkDevice device, VkBuffer buffer, VkDeviceMemory memory, VkDeviceSize memoryOffset) {
  Result result = vkBindBufferMemory(device, buffer, memory, memoryOffset);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! bindImageMemory (VkDevice device, VkImage image, VkDeviceMemory memory, VkDeviceSize memoryOffset) {
  Result result = vkBindImageMemory(device, image, memory, memoryOffset);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! queueBindSparse (VkQueue queue, uint bindInfoCount, VkBindSparseInfo* pBindInfo, VkFence fence) {
  Result result = vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createFence (VkDevice device, VkFenceCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFence* pFence) {
  Result result = vkCreateFence(device, pCreateInfo, pAllocator, pFence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetFences (VkDevice device, uint fenceCount, VkFence* pFences) {
  Result result = vkResetFences(device, fenceCount, pFences);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getFenceStatus (VkDevice device, VkFence fence) {
  Result result = vkGetFenceStatus(device, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitForFences (VkDevice device, uint fenceCount, VkFence* pFences, uint waitAll, ulong timeout) {
  Result result = vkWaitForFences(device, fenceCount, pFences, waitAll, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createSemaphore (VkDevice device, VkSemaphoreCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSemaphore* pSemaphore) {
  Result result = vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createEvent (VkDevice device, VkEventCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkEvent* pEvent) {
  Result result = vkCreateEvent(device, pCreateInfo, pAllocator, pEvent);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getEventStatus (VkDevice device, VkEvent event) {
  Result result = vkGetEventStatus(device, event);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! setEvent (VkDevice device, VkEvent event) {
  Result result = vkSetEvent(device, event);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetEvent (VkDevice device, VkEvent event) {
  Result result = vkResetEvent(device, event);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createQueryPool (VkDevice device, VkQueryPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkQueryPool* pQueryPool) {
  Result result = vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getQueryPoolResults (VkDevice device, VkQueryPool queryPool, uint firstQuery, uint queryCount, usz dataSize, void* pData, VkDeviceSize stride, VkQueryResultFlags flags) {
  Result result = vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createBuffer (VkDevice device, VkBufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBuffer* pBuffer) {
  Result result = vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createBufferView (VkDevice device, VkBufferViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkBufferView* pView) {
  Result result = vkCreateBufferView(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImage (VkDevice device, VkImageCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImage* pImage) {
  Result result = vkCreateImage(device, pCreateInfo, pAllocator, pImage);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_COMPRESSION_EXHAUSTED_EXT: return VkErrors.ERROR_COMPRESSION_EXHAUSTED_EXT?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createImageView (VkDevice device, VkImageViewCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkImageView* pView) {
  Result result = vkCreateImageView(device, pCreateInfo, pAllocator, pView);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createShaderModule (VkDevice device, VkShaderModuleCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkShaderModule* pShaderModule) {
  Result result = vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! createPipelineCache (VkDevice device, VkPipelineCacheCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineCache* pPipelineCache) {
  Result result = vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelineCacheData (VkDevice device, VkPipelineCache pipelineCache, usz* pDataSize, void* pData) {
  Result result = vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! mergePipelineCaches (VkDevice device, VkPipelineCache dstCache, uint srcCacheCount, VkPipelineCache* pSrcCaches) {
  Result result = vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createGraphicsPipelines (VkDevice device, VkPipelineCache pipelineCache, uint createInfoCount, VkGraphicsPipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! createComputePipelines (VkDevice device, VkPipelineCache pipelineCache, uint createInfoCount, VkComputePipelineCreateInfo* pCreateInfos, VkAllocationCallbacks* pAllocator, VkPipeline* pPipelines) {
  Result result = vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_SHADER_NV: return VkErrors.ERROR_INVALID_SHADER_NV?;
  }
}
fn void! createPipelineLayout (VkDevice device, VkPipelineLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPipelineLayout* pPipelineLayout) {
  Result result = vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createSampler (VkDevice device, VkSamplerCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSampler* pSampler) {
  Result result = vkCreateSampler(device, pCreateInfo, pAllocator, pSampler);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! createDescriptorSetLayout (VkDevice device, VkDescriptorSetLayoutCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorSetLayout* pSetLayout) {
  Result result = vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorPool (VkDevice device, VkDescriptorPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorPool* pDescriptorPool) {
  Result result = vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FRAGMENTATION_EXT: return VkErrors.ERROR_FRAGMENTATION_EXT?;
  }
}
fn void! resetDescriptorPool (VkDevice device, VkDescriptorPool descriptorPool, VkDescriptorPoolResetFlags flags) {
  Result result = vkResetDescriptorPool(device, descriptorPool, flags);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! allocateDescriptorSets (VkDevice device, VkDescriptorSetAllocateInfo* pAllocateInfo, VkDescriptorSet* pDescriptorSets) {
  Result result = vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FRAGMENTED_POOL: return VkErrors.ERROR_FRAGMENTED_POOL?;
       case ERROR_OUT_OF_POOL_MEMORY: return VkErrors.ERROR_OUT_OF_POOL_MEMORY?;
  }
}
fn void! freeDescriptorSets (VkDevice device, VkDescriptorPool descriptorPool, uint descriptorSetCount, VkDescriptorSet* pDescriptorSets) {
  Result result = vkFreeDescriptorSets(device, descriptorPool, descriptorSetCount, pDescriptorSets);
  if (result != 0) VkErrors.ERROR_UNKNOWN?;
}
fn void! createFramebuffer (VkDevice device, VkFramebufferCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkFramebuffer* pFramebuffer) {
  Result result = vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRenderPass (VkDevice device, VkRenderPassCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass) {
  Result result = vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createCommandPool (VkDevice device, VkCommandPoolCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkCommandPool* pCommandPool) {
  Result result = vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetCommandPool (VkDevice device, VkCommandPool commandPool, VkCommandPoolResetFlags flags) {
  Result result = vkResetCommandPool(device, commandPool, flags);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! allocateCommandBuffers (VkDevice device, VkCommandBufferAllocateInfo* pAllocateInfo, VkCommandBuffer* pCommandBuffers) {
  Result result = vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! beginCommandBuffer (VkCommandBuffer commandBuffer, VkCommandBufferBeginInfo* pBeginInfo) {
  Result result = vkBeginCommandBuffer(commandBuffer, pBeginInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! endCommandBuffer (VkCommandBuffer commandBuffer) {
  Result result = vkEndCommandBuffer(commandBuffer);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR: return VkErrors.ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR?;
  }
}
fn void! resetCommandBuffer (VkCommandBuffer commandBuffer, VkCommandBufferResetFlags flags) {
  Result result = vkResetCommandBuffer(commandBuffer, flags);
  switch(result) { 
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceDisplayPropertiesKHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkDisplayPropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceDisplayPlanePropertiesKHR (VkPhysicalDevice physicalDevice, uint* pPropertyCount, VkDisplayPlanePropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDisplayPlaneSupportedDisplaysKHR (VkPhysicalDevice physicalDevice, uint planeIndex, uint* pDisplayCount, VkDisplayKHR* pDisplays) {
  Result result = extensions.vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getDisplayModePropertiesKHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, uint* pPropertyCount, VkDisplayModePropertiesKHR* pProperties) {
  Result result = extensions.vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDisplayModeKHR (VkPhysicalDevice physicalDevice, VkDisplayKHR display, VkDisplayModeCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDisplayModeKHR* pMode) {
  Result result = extensions.vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getDisplayPlaneCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkDisplayModeKHR mode, uint planeIndex, VkDisplayPlaneCapabilitiesKHR* pCapabilities) {
  Result result = extensions.vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDisplayPlaneSurfaceKHR (VkInstance instance, VkDisplaySurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = extensions.vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceSurfaceSupportKHR (VkPhysicalDevice physicalDevice, uint queueFamilyIndex, VkSurfaceKHR surface, uint* pSupported) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceCapabilitiesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, VkSurfaceCapabilitiesKHR* pSurfaceCapabilities) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceFormatsKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint* pSurfaceFormatCount, VkSurfaceFormatKHR* pSurfaceFormats) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfacePresentModesKHR (VkPhysicalDevice physicalDevice, VkSurfaceKHR surface, uint* pPresentModeCount, VkPresentModeKHR* pPresentModes) {
  Result result = extensions.vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! createSwapchainKHR (VkDevice device, VkSwapchainCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSwapchainKHR* pSwapchain) {
  Result result = extensions.vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
       case ERROR_COMPRESSION_EXHAUSTED_EXT: return VkErrors.ERROR_COMPRESSION_EXHAUSTED_EXT?;
  }
}
fn void! getSwapchainImagesKHR (VkDevice device, VkSwapchainKHR swapchain, uint* pSwapchainImageCount, VkImage* pSwapchainImages) {
  Result result = extensions.vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! acquireNextImageKHR (VkDevice device, VkSwapchainKHR swapchain, ulong timeout, VkSemaphore semaphore, VkFence fence, uint* pImageIndex) {
  Result result = extensions.vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! queuePresentKHR (VkQueue queue, VkPresentInfoKHR* pPresentInfo) {
  Result result = extensions.vkQueuePresentKHR(queue, pPresentInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
       case ERROR_OUT_OF_DATE_KHR: return VkErrors.ERROR_OUT_OF_DATE_KHR?;
       case ERROR_SURFACE_LOST_KHR: return VkErrors.ERROR_SURFACE_LOST_KHR?;
       case ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT: return VkErrors.ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT?;
  }
}
fn void! createWin32SurfaceKHR (VkInstance instance, VkWin32SurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = extensions.vkCreateWin32SurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createXlibSurfaceKHR (VkInstance instance, VkXlibSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = extensions.vkCreateXlibSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createXcbSurfaceKHR (VkInstance instance, VkXcbSurfaceCreateInfoKHR* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = extensions.vkCreateXcbSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDebugReportCallbackEXT (VkInstance instance, VkDebugReportCallbackCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugReportCallbackEXT* pCallback) {
  Result result = extensions.vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties2 (VkPhysicalDevice physicalDevice, VkPhysicalDeviceImageFormatInfo2* pImageFormatInfo, VkImageFormatProperties2* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties2(physicalDevice, pImageFormatInfo, pImageFormatProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_FORMAT_NOT_SUPPORTED: return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
       case ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR: return VkErrors.ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR?;
       case ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR: return VkErrors.ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR?;
  }
}
fn void! enumeratePhysicalDeviceGroups (VkInstance instance, uint* pPhysicalDeviceGroupCount, VkPhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) {
  Result result = vkEnumeratePhysicalDeviceGroups(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INITIALIZATION_FAILED: return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! bindBufferMemory2 (VkDevice device, uint bindInfoCount, VkBindBufferMemoryInfo* pBindInfos) {
  Result result = vkBindBufferMemory2(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR: return VkErrors.ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR?;
  }
}
fn void! bindImageMemory2 (VkDevice device, uint bindInfoCount, VkBindImageMemoryInfo* pBindInfos) {
  Result result = vkBindImageMemory2(device, bindInfoCount, pBindInfos);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorUpdateTemplate (VkDevice device, VkDescriptorUpdateTemplateCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDescriptorUpdateTemplate* pDescriptorUpdateTemplate) {
  Result result = vkCreateDescriptorUpdateTemplate(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createMacOSSurfaceMVK (VkInstance instance, VkMacOSSurfaceCreateInfoMVK* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSurfaceKHR* pSurface) {
  Result result = extensions.vkCreateMacOSSurfaceMVK(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_NATIVE_WINDOW_IN_USE_KHR: return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
  }
}
fn void! createSamplerYcbcrConversion (VkDevice device, VkSamplerYcbcrConversionCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkSamplerYcbcrConversion* pYcbcrConversion) {
  Result result = vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! setDebugUtilsObjectNameEXT (VkDevice device, VkDebugUtilsObjectNameInfoEXT* pNameInfo) {
  Result result = extensions.vkSetDebugUtilsObjectNameEXT(device, pNameInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! setDebugUtilsObjectTagEXT (VkDevice device, VkDebugUtilsObjectTagInfoEXT* pTagInfo) {
  Result result = extensions.vkSetDebugUtilsObjectTagEXT(device, pTagInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDebugUtilsMessengerEXT (VkInstance instance, VkDebugUtilsMessengerCreateInfoEXT* pCreateInfo, VkAllocationCallbacks* pAllocator, VkDebugUtilsMessengerEXT* pMessenger) {
  Result result = extensions.vkCreateDebugUtilsMessengerEXT(instance, pCreateInfo, pAllocator, pMessenger);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createRenderPass2 (VkDevice device, VkRenderPassCreateInfo2* pCreateInfo, VkAllocationCallbacks* pAllocator, VkRenderPass* pRenderPass) {
  Result result = vkCreateRenderPass2(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSemaphoreCounterValue (VkDevice device, VkSemaphore semaphore, ulong* pValue) {
  Result result = vkGetSemaphoreCounterValue(device, semaphore, pValue);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitSemaphores (VkDevice device, VkSemaphoreWaitInfo* pWaitInfo, ulong timeout) {
  Result result = vkWaitSemaphores(device, pWaitInfo, timeout);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! signalSemaphore (VkDevice device, VkSemaphoreSignalInfo* pSignalInfo) {
  Result result = vkSignalSemaphore(device, pSignalInfo);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceToolProperties (VkPhysicalDevice physicalDevice, uint* pToolCount, VkPhysicalDeviceToolProperties* pToolProperties) {
  Result result = vkGetPhysicalDeviceToolProperties(physicalDevice, pToolCount, pToolProperties);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createPrivateDataSlot (VkDevice device, VkPrivateDataSlotCreateInfo* pCreateInfo, VkAllocationCallbacks* pAllocator, VkPrivateDataSlot* pPrivateDataSlot) {
  Result result = vkCreatePrivateDataSlot(device, pCreateInfo, pAllocator, pPrivateDataSlot);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! setPrivateData (VkDevice device, VkObjectType objectType, ulong objectHandle, VkPrivateDataSlot privateDataSlot, ulong data) {
  Result result = vkSetPrivateData(device, objectType, objectHandle, privateDataSlot, data);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! queueSubmit2 (VkQueue queue, uint submitCount, VkSubmitInfo2* pSubmits, VkFence fence) {
  Result result = vkQueueSubmit2(queue, submitCount, pSubmits, fence);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
       case ERROR_DEVICE_LOST: return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! getBufferOpaqueCaptureDescriptorDataEXT (VkDevice device, VkBufferCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetBufferOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getImageOpaqueCaptureDescriptorDataEXT (VkDevice device, VkImageCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetImageOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getImageViewOpaqueCaptureDescriptorDataEXT (VkDevice device, VkImageViewCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetImageViewOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSamplerOpaqueCaptureDescriptorDataEXT (VkDevice device, VkSamplerCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetSamplerOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getAccelerationStructureOpaqueCaptureDescriptorDataEXT (VkDevice device, VkAccelerationStructureCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) { 
       case ERROR_OUT_OF_HOST_MEMORY: return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
       case ERROR_OUT_OF_DEVICE_MEMORY: return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
