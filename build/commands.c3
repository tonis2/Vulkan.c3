module vk; 
extern fn void destroyInstance (Instance instance, AllocationCallbacks* pAllocator) @extern("vkDestroyInstance");
extern fn void getPhysicalDeviceFeatures (PhysicalDevice physicalDevice, PhysicalDeviceFeatures* pFeatures) @extern("vkGetPhysicalDeviceFeatures");
extern fn void getPhysicalDeviceFormatProperties (PhysicalDevice physicalDevice, Format format, FormatProperties* pFormatProperties) @extern("vkGetPhysicalDeviceFormatProperties");
extern fn void getPhysicalDeviceProperties (PhysicalDevice physicalDevice, PhysicalDeviceProperties* pProperties) @extern("vkGetPhysicalDeviceProperties");
extern fn void getPhysicalDeviceQueueFamilyProperties (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties* pQueueFamilyProperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties");
extern fn void getPhysicalDeviceMemoryProperties (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties* pMemoryProperties) @extern("vkGetPhysicalDeviceMemoryProperties");
extern fn PFN_vkVoidFunction getInstanceProcAddr (Instance instance, char* pName) @extern("vkGetInstanceProcAddr");
extern fn PFN_vkVoidFunction getDeviceProcAddr (Device device, char* pName) @extern("vkGetDeviceProcAddr");
extern fn void destroyDevice (Device device, AllocationCallbacks* pAllocator) @extern("vkDestroyDevice");
extern fn void getDeviceQueue (Device device, uint queueFamilyIndex, uint queueIndex, Queue* pQueue) @extern("vkGetDeviceQueue");
extern fn void freeMemory (Device device, DeviceMemory memory, AllocationCallbacks* pAllocator) @extern("vkFreeMemory");
extern fn void unmapMemory (Device device, DeviceMemory memory) @extern("vkUnmapMemory");
extern fn void getDeviceMemoryCommitment (Device device, DeviceMemory memory, DeviceSize* pCommittedMemoryInBytes) @extern("vkGetDeviceMemoryCommitment");
extern fn void getBufferMemoryRequirements (Device device, Buffer buffer, MemoryRequirements* pMemoryRequirements) @extern("vkGetBufferMemoryRequirements");
extern fn void getImageMemoryRequirements (Device device, Image image, MemoryRequirements* pMemoryRequirements) @extern("vkGetImageMemoryRequirements");
extern fn void getImageSparseMemoryRequirements (Device device, Image image, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements* pSparseMemoryRequirements) @extern("vkGetImageSparseMemoryRequirements");
extern fn void getPhysicalDeviceSparseImageFormatProperties (PhysicalDevice physicalDevice, Format format, ImageType type, SampleCountFlagBits samples, ImageUsageFlags usage, ImageTiling tiling, uint* pPropertyCount, SparseImageFormatProperties* pProperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties");
extern fn void destroyFence (Device device, Fence fence, AllocationCallbacks* pAllocator) @extern("vkDestroyFence");
extern fn void destroySemaphore (Device device, Semaphore semaphore, AllocationCallbacks* pAllocator) @extern("vkDestroySemaphore");
extern fn void destroyEvent (Device device, Event event, AllocationCallbacks* pAllocator) @extern("vkDestroyEvent");
extern fn void destroyQueryPool (Device device, QueryPool queryPool, AllocationCallbacks* pAllocator) @extern("vkDestroyQueryPool");
extern fn void destroyBuffer (Device device, Buffer buffer, AllocationCallbacks* pAllocator) @extern("vkDestroyBuffer");
extern fn void destroyBufferView (Device device, BufferView bufferView, AllocationCallbacks* pAllocator) @extern("vkDestroyBufferView");
extern fn void destroyImage (Device device, Image image, AllocationCallbacks* pAllocator) @extern("vkDestroyImage");
extern fn void getImageSubresourceLayout (Device device, Image image, ImageSubresource* pSubresource, SubresourceLayout* pLayout) @extern("vkGetImageSubresourceLayout");
extern fn void destroyImageView (Device device, ImageView imageView, AllocationCallbacks* pAllocator) @extern("vkDestroyImageView");
extern fn void destroyShaderModule (Device device, ShaderModule shaderModule, AllocationCallbacks* pAllocator) @extern("vkDestroyShaderModule");
extern fn void destroyPipelineCache (Device device, PipelineCache pipelineCache, AllocationCallbacks* pAllocator) @extern("vkDestroyPipelineCache");
extern fn void destroyPipeline (Device device, Pipeline pipeline, AllocationCallbacks* pAllocator) @extern("vkDestroyPipeline");
extern fn void destroyPipelineLayout (Device device, PipelineLayout pipelineLayout, AllocationCallbacks* pAllocator) @extern("vkDestroyPipelineLayout");
extern fn void destroySampler (Device device, Sampler sampler, AllocationCallbacks* pAllocator) @extern("vkDestroySampler");
extern fn void destroyDescriptorSetLayout (Device device, DescriptorSetLayout descriptorSetLayout, AllocationCallbacks* pAllocator) @extern("vkDestroyDescriptorSetLayout");
extern fn void destroyDescriptorPool (Device device, DescriptorPool descriptorPool, AllocationCallbacks* pAllocator) @extern("vkDestroyDescriptorPool");
extern fn Result resetDescriptorPool (Device device, DescriptorPool descriptorPool, DescriptorPoolResetFlags flags) @extern("vkResetDescriptorPool");
extern fn Result freeDescriptorSets (Device device, DescriptorPool descriptorPool, uint descriptorSetCount, DescriptorSet* pDescriptorSets) @extern("vkFreeDescriptorSets");
extern fn void updateDescriptorSets (Device device, uint descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites, uint descriptorCopyCount, CopyDescriptorSet* pDescriptorCopies) @extern("vkUpdateDescriptorSets");
extern fn void destroyFramebuffer (Device device, Framebuffer framebuffer, AllocationCallbacks* pAllocator) @extern("vkDestroyFramebuffer");
extern fn void destroyRenderPass (Device device, RenderPass renderPass, AllocationCallbacks* pAllocator) @extern("vkDestroyRenderPass");
extern fn void getRenderAreaGranularity (Device device, RenderPass renderPass, Extent2D* pGranularity) @extern("vkGetRenderAreaGranularity");
extern fn void destroyCommandPool (Device device, CommandPool commandPool, AllocationCallbacks* pAllocator) @extern("vkDestroyCommandPool");
extern fn void freeCommandBuffers (Device device, CommandPool commandPool, uint commandBufferCount, CommandBuffer* pCommandBuffers) @extern("vkFreeCommandBuffers");
extern fn void cmdBindPipeline (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, Pipeline pipeline) @extern("vkCmdBindPipeline");
extern fn void cmdSetViewport (CommandBuffer commandBuffer, uint firstViewport, uint viewportCount, Viewport* pViewports) @extern("vkCmdSetViewport");
extern fn void cmdSetScissor (CommandBuffer commandBuffer, uint firstScissor, uint scissorCount, Rect2D* pScissors) @extern("vkCmdSetScissor");
extern fn void cmdSetLineWidth (CommandBuffer commandBuffer, float lineWidth) @extern("vkCmdSetLineWidth");
extern fn void cmdSetDepthBias (CommandBuffer commandBuffer, float depthBiasConstantFactor, float depthBiasClamp, float depthBiasSlopeFactor) @extern("vkCmdSetDepthBias");
extern fn void cmdSetBlendConstants (CommandBuffer commandBuffer, float[4] blendConstants) @extern("vkCmdSetBlendConstants");
extern fn void cmdSetDepthBounds (CommandBuffer commandBuffer, float minDepthBounds, float maxDepthBounds) @extern("vkCmdSetDepthBounds");
extern fn void cmdSetStencilCompareMask (CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint compareMask) @extern("vkCmdSetStencilCompareMask");
extern fn void cmdSetStencilWriteMask (CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint writeMask) @extern("vkCmdSetStencilWriteMask");
extern fn void cmdSetStencilReference (CommandBuffer commandBuffer, StencilFaceFlags faceMask, uint reference) @extern("vkCmdSetStencilReference");
extern fn void cmdBindDescriptorSets (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint firstSet, uint descriptorSetCount, DescriptorSet* pDescriptorSets, uint dynamicOffsetCount, uint* pDynamicOffsets) @extern("vkCmdBindDescriptorSets");
extern fn void cmdBindIndexBuffer (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, IndexType indexType) @extern("vkCmdBindIndexBuffer");
extern fn void cmdBindVertexBuffers (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, Buffer* pBuffers, DeviceSize* pOffsets) @extern("vkCmdBindVertexBuffers");
extern fn void cmdDraw (CommandBuffer commandBuffer, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance) @extern("vkCmdDraw");
extern fn void cmdDrawIndexed (CommandBuffer commandBuffer, uint indexCount, uint instanceCount, uint firstIndex, int vertexOffset, uint firstInstance) @extern("vkCmdDrawIndexed");
extern fn void cmdDrawIndirect (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint drawCount, uint stride) @extern("vkCmdDrawIndirect");
extern fn void cmdDrawIndexedIndirect (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, uint drawCount, uint stride) @extern("vkCmdDrawIndexedIndirect");
extern fn void cmdDispatch (CommandBuffer commandBuffer, uint groupCountX, uint groupCountY, uint groupCountZ) @extern("vkCmdDispatch");
extern fn void cmdDispatchIndirect (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset) @extern("vkCmdDispatchIndirect");
extern fn void cmdCopyBuffer (CommandBuffer commandBuffer, Buffer srcBuffer, Buffer dstBuffer, uint regionCount, BufferCopy* pRegions) @extern("vkCmdCopyBuffer");
extern fn void cmdCopyImage (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint regionCount, ImageCopy* pRegions) @extern("vkCmdCopyImage");
extern fn void cmdBlitImage (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint regionCount, ImageBlit* pRegions, Filter filter) @extern("vkCmdBlitImage");
extern fn void cmdCopyBufferToImage (CommandBuffer commandBuffer, Buffer srcBuffer, Image dstImage, ImageLayout dstImageLayout, uint regionCount, BufferImageCopy* pRegions) @extern("vkCmdCopyBufferToImage");
extern fn void cmdCopyImageToBuffer (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Buffer dstBuffer, uint regionCount, BufferImageCopy* pRegions) @extern("vkCmdCopyImageToBuffer");
extern fn void cmdUpdateBuffer (CommandBuffer commandBuffer, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize dataSize, void* pData) @extern("vkCmdUpdateBuffer");
extern fn void cmdFillBuffer (CommandBuffer commandBuffer, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize size, uint data) @extern("vkCmdFillBuffer");
extern fn void cmdClearColorImage (CommandBuffer commandBuffer, Image image, ImageLayout imageLayout, ClearColorValue* pColor, uint rangeCount, ImageSubresourceRange* pRanges) @extern("vkCmdClearColorImage");
extern fn void cmdClearDepthStencilImage (CommandBuffer commandBuffer, Image image, ImageLayout imageLayout, ClearDepthStencilValue* pDepthStencil, uint rangeCount, ImageSubresourceRange* pRanges) @extern("vkCmdClearDepthStencilImage");
extern fn void cmdClearAttachments (CommandBuffer commandBuffer, uint attachmentCount, ClearAttachment* pAttachments, uint rectCount, ClearRect* pRects) @extern("vkCmdClearAttachments");
extern fn void cmdResolveImage (CommandBuffer commandBuffer, Image srcImage, ImageLayout srcImageLayout, Image dstImage, ImageLayout dstImageLayout, uint regionCount, ImageResolve* pRegions) @extern("vkCmdResolveImage");
extern fn void cmdSetEvent (CommandBuffer commandBuffer, Event event, PipelineStageFlags stageMask) @extern("vkCmdSetEvent");
extern fn void cmdResetEvent (CommandBuffer commandBuffer, Event event, PipelineStageFlags stageMask) @extern("vkCmdResetEvent");
extern fn void cmdWaitEvents (CommandBuffer commandBuffer, uint eventCount, Event* pEvents, PipelineStageFlags srcStageMask, PipelineStageFlags dstStageMask, uint memoryBarrierCount, MemoryBarrier* pMemoryBarriers, uint bufferMemoryBarrierCount, BufferMemoryBarrier* pBufferMemoryBarriers, uint imageMemoryBarrierCount, ImageMemoryBarrier* pImageMemoryBarriers) @extern("vkCmdWaitEvents");
extern fn void cmdPipelineBarrier (CommandBuffer commandBuffer, PipelineStageFlags srcStageMask, PipelineStageFlags dstStageMask, DependencyFlags dependencyFlags, uint memoryBarrierCount, MemoryBarrier* pMemoryBarriers, uint bufferMemoryBarrierCount, BufferMemoryBarrier* pBufferMemoryBarriers, uint imageMemoryBarrierCount, ImageMemoryBarrier* pImageMemoryBarriers) @extern("vkCmdPipelineBarrier");
extern fn void cmdBeginQuery (CommandBuffer commandBuffer, QueryPool queryPool, uint query, QueryControlFlags flags) @extern("vkCmdBeginQuery");
extern fn void cmdEndQuery (CommandBuffer commandBuffer, QueryPool queryPool, uint query) @extern("vkCmdEndQuery");
extern fn void cmdResetQueryPool (CommandBuffer commandBuffer, QueryPool queryPool, uint firstQuery, uint queryCount) @extern("vkCmdResetQueryPool");
extern fn void cmdWriteTimestamp (CommandBuffer commandBuffer, PipelineStageFlagBits pipelineStage, QueryPool queryPool, uint query) @extern("vkCmdWriteTimestamp");
extern fn void cmdCopyQueryPoolResults (CommandBuffer commandBuffer, QueryPool queryPool, uint firstQuery, uint queryCount, Buffer dstBuffer, DeviceSize dstOffset, DeviceSize stride, QueryResultFlags flags) @extern("vkCmdCopyQueryPoolResults");
extern fn void cmdPushConstants (CommandBuffer commandBuffer, PipelineLayout layout, ShaderStageFlags stageFlags, uint offset, uint size, void* pValues) @extern("vkCmdPushConstants");
extern fn void cmdBeginRenderPass (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassContents contents) @extern("vkCmdBeginRenderPass");
extern fn void cmdNextSubpass (CommandBuffer commandBuffer, SubpassContents contents) @extern("vkCmdNextSubpass");
extern fn void cmdEndRenderPass (CommandBuffer commandBuffer) @extern("vkCmdEndRenderPass");
extern fn void cmdExecuteCommands (CommandBuffer commandBuffer, uint commandBufferCount, CommandBuffer* pCommandBuffers) @extern("vkCmdExecuteCommands");
extern fn void getDeviceGroupPeerMemoryFeatures (Device device, uint heapIndex, uint localDeviceIndex, uint remoteDeviceIndex, PeerMemoryFeatureFlags* pPeerMemoryFeatures) @extern("vkGetDeviceGroupPeerMemoryFeatures");
extern fn void cmdSetDeviceMask (CommandBuffer commandBuffer, uint deviceMask) @extern("vkCmdSetDeviceMask");
extern fn void cmdDispatchBase (CommandBuffer commandBuffer, uint baseGroupX, uint baseGroupY, uint baseGroupZ, uint groupCountX, uint groupCountY, uint groupCountZ) @extern("vkCmdDispatchBase");
extern fn void getImageMemoryRequirements2 (Device device, ImageMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetImageMemoryRequirements2");
extern fn void getBufferMemoryRequirements2 (Device device, BufferMemoryRequirementsInfo2* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetBufferMemoryRequirements2");
extern fn void getImageSparseMemoryRequirements2 (Device device, ImageSparseMemoryRequirementsInfo2* pInfo, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements) @extern("vkGetImageSparseMemoryRequirements2");
extern fn void getPhysicalDeviceFeatures2 (PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures) @extern("vkGetPhysicalDeviceFeatures2");
extern fn void getPhysicalDeviceProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties) @extern("vkGetPhysicalDeviceProperties2");
extern fn void getPhysicalDeviceFormatProperties2 (PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties) @extern("vkGetPhysicalDeviceFormatProperties2");
extern fn void getPhysicalDeviceQueueFamilyProperties2 (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties) @extern("vkGetPhysicalDeviceQueueFamilyProperties2");
extern fn void getPhysicalDeviceMemoryProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties) @extern("vkGetPhysicalDeviceMemoryProperties2");
extern fn void getPhysicalDeviceSparseImageFormatProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint* pPropertyCount, SparseImageFormatProperties2* pProperties) @extern("vkGetPhysicalDeviceSparseImageFormatProperties2");
extern fn void trimCommandPool (Device device, CommandPool commandPool, CommandPoolTrimFlags flags) @extern("vkTrimCommandPool");
extern fn void getDeviceQueue2 (Device device, DeviceQueueInfo2* pQueueInfo, Queue* pQueue) @extern("vkGetDeviceQueue2");
extern fn void destroySamplerYcbcrConversion (Device device, SamplerYcbcrConversion ycbcrConversion, AllocationCallbacks* pAllocator) @extern("vkDestroySamplerYcbcrConversion");
extern fn void destroyDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplate descriptorUpdateTemplate, AllocationCallbacks* pAllocator) @extern("vkDestroyDescriptorUpdateTemplate");
extern fn void updateDescriptorSetWithTemplate (Device device, DescriptorSet descriptorSet, DescriptorUpdateTemplate descriptorUpdateTemplate, void* pData) @extern("vkUpdateDescriptorSetWithTemplate");
extern fn void getPhysicalDeviceExternalBufferProperties (PhysicalDevice physicalDevice, PhysicalDeviceExternalBufferInfo* pExternalBufferInfo, ExternalBufferProperties* pExternalBufferProperties) @extern("vkGetPhysicalDeviceExternalBufferProperties");
extern fn void getPhysicalDeviceExternalFenceProperties (PhysicalDevice physicalDevice, PhysicalDeviceExternalFenceInfo* pExternalFenceInfo, ExternalFenceProperties* pExternalFenceProperties) @extern("vkGetPhysicalDeviceExternalFenceProperties");
extern fn void getPhysicalDeviceExternalSemaphoreProperties (PhysicalDevice physicalDevice, PhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo, ExternalSemaphoreProperties* pExternalSemaphoreProperties) @extern("vkGetPhysicalDeviceExternalSemaphoreProperties");
extern fn void getDescriptorSetLayoutSupport (Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, DescriptorSetLayoutSupport* pSupport) @extern("vkGetDescriptorSetLayoutSupport");
extern fn void cmdDrawIndirectCount (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) @extern("vkCmdDrawIndirectCount");
extern fn void cmdDrawIndexedIndirectCount (CommandBuffer commandBuffer, Buffer buffer, DeviceSize offset, Buffer countBuffer, DeviceSize countBufferOffset, uint maxDrawCount, uint stride) @extern("vkCmdDrawIndexedIndirectCount");
extern fn void cmdBeginRenderPass2 (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo) @extern("vkCmdBeginRenderPass2");
extern fn void cmdNextSubpass2 (CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo) @extern("vkCmdNextSubpass2");
extern fn void cmdEndRenderPass2 (CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo) @extern("vkCmdEndRenderPass2");
extern fn void resetQueryPool (Device device, QueryPool queryPool, uint firstQuery, uint queryCount) @extern("vkResetQueryPool");
extern fn DeviceAddress getBufferDeviceAddress (Device device, BufferDeviceAddressInfo* pInfo) @extern("vkGetBufferDeviceAddress");
extern fn ulong getBufferOpaqueCaptureAddress (Device device, BufferDeviceAddressInfo* pInfo) @extern("vkGetBufferOpaqueCaptureAddress");
extern fn ulong getDeviceMemoryOpaqueCaptureAddress (Device device, DeviceMemoryOpaqueCaptureAddressInfo* pInfo) @extern("vkGetDeviceMemoryOpaqueCaptureAddress");
extern fn void destroySurfaceKHR (Instance instance, SurfaceKHR surface, AllocationCallbacks* pAllocator) @extern("vkDestroySurfaceKHR");
extern fn Result vkCreateInstance (InstanceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Instance* pinstance) @extern("vkCreateInstance");
extern fn Result vkEnumeratePhysicalDevices (Instance instance, uint* pphysicaldevicecount, PhysicalDevice* pphysicaldevices) @extern("vkEnumeratePhysicalDevices");
extern fn Result vkGetPhysicalDeviceImageFormatProperties (PhysicalDevice physicaldevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pimageformatproperties) @extern("vkGetPhysicalDeviceImageFormatProperties");
extern fn Result vkCreateDevice (PhysicalDevice physicaldevice, DeviceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Device* pdevice) @extern("vkCreateDevice");
extern fn Result vkEnumerateInstanceExtensionProperties (char* playername, uint* ppropertycount, ExtensionProperties* pproperties) @extern("vkEnumerateInstanceExtensionProperties");
extern fn Result vkEnumerateDeviceExtensionProperties (PhysicalDevice physicaldevice, char* playername, uint* ppropertycount, ExtensionProperties* pproperties) @extern("vkEnumerateDeviceExtensionProperties");
extern fn Result vkEnumerateInstanceLayerProperties (uint* ppropertycount, LayerProperties* pproperties) @extern("vkEnumerateInstanceLayerProperties");
extern fn Result vkEnumerateDeviceLayerProperties (PhysicalDevice physicaldevice, uint* ppropertycount, LayerProperties* pproperties) @extern("vkEnumerateDeviceLayerProperties");
extern fn Result vkQueueSubmit (Queue queue, uint submitcount, SubmitInfo* psubmits, Fence fence) @extern("vkQueueSubmit");
extern fn Result vkQueueWaitIdle (Queue queue) @extern("vkQueueWaitIdle");
extern fn Result vkDeviceWaitIdle (Device device) @extern("vkDeviceWaitIdle");
extern fn Result vkAllocateMemory (Device device, MemoryAllocateInfo* pallocateinfo, AllocationCallbacks* pallocator, DeviceMemory* pmemory) @extern("vkAllocateMemory");
extern fn Result vkMapMemory (Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void* ppdata) @extern("vkMapMemory");
extern fn Result vkFlushMappedMemoryRanges (Device device, uint memoryrangecount, MappedMemoryRange* pmemoryranges) @extern("vkFlushMappedMemoryRanges");
extern fn Result vkInvalidateMappedMemoryRanges (Device device, uint memoryrangecount, MappedMemoryRange* pmemoryranges) @extern("vkInvalidateMappedMemoryRanges");
extern fn Result vkBindBufferMemory (Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryoffset) @extern("vkBindBufferMemory");
extern fn Result vkBindImageMemory (Device device, Image image, DeviceMemory memory, DeviceSize memoryoffset) @extern("vkBindImageMemory");
extern fn Result vkQueueBindSparse (Queue queue, uint bindinfocount, BindSparseInfo* pbindinfo, Fence fence) @extern("vkQueueBindSparse");
extern fn Result vkCreateFence (Device device, FenceCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Fence* pfence) @extern("vkCreateFence");
extern fn Result vkResetFences (Device device, uint fencecount, Fence* pfences) @extern("vkResetFences");
extern fn Result vkGetFenceStatus (Device device, Fence fence) @extern("vkGetFenceStatus");
extern fn Result vkWaitForFences (Device device, uint fencecount, Fence* pfences, Bool32 waitall, ulong timeout) @extern("vkWaitForFences");
extern fn Result vkCreateSemaphore (Device device, SemaphoreCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Semaphore* psemaphore) @extern("vkCreateSemaphore");
extern fn Result vkCreateEvent (Device device, EventCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Event* pevent) @extern("vkCreateEvent");
extern fn Result vkGetEventStatus (Device device, Event event) @extern("vkGetEventStatus");
extern fn Result vkSetEvent (Device device, Event event) @extern("vkSetEvent");
extern fn Result vkResetEvent (Device device, Event event) @extern("vkResetEvent");
extern fn Result vkCreateQueryPool (Device device, QueryPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, QueryPool* pquerypool) @extern("vkCreateQueryPool");
extern fn Result vkGetQueryPoolResults (Device device, QueryPool querypool, uint firstquery, uint querycount, usz datasize, void* pdata, DeviceSize stride, QueryResultFlags flags) @extern("vkGetQueryPoolResults");
extern fn Result vkCreateBuffer (Device device, BufferCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Buffer* pbuffer) @extern("vkCreateBuffer");
extern fn Result vkCreateBufferView (Device device, BufferViewCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, BufferView* pview) @extern("vkCreateBufferView");
extern fn Result vkCreateImage (Device device, ImageCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Image* pimage) @extern("vkCreateImage");
extern fn Result vkCreateImageView (Device device, ImageViewCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, ImageView* pview) @extern("vkCreateImageView");
extern fn Result vkCreateShaderModule (Device device, ShaderModuleCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, ShaderModule* pshadermodule) @extern("vkCreateShaderModule");
extern fn Result vkCreatePipelineCache (Device device, PipelineCacheCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PipelineCache* ppipelinecache) @extern("vkCreatePipelineCache");
extern fn Result vkGetPipelineCacheData (Device device, PipelineCache pipelinecache, usz* pdatasize, void* pdata) @extern("vkGetPipelineCacheData");
extern fn Result vkMergePipelineCaches (Device device, PipelineCache dstcache, uint srccachecount, PipelineCache* psrccaches) @extern("vkMergePipelineCaches");
extern fn Result vkCreateGraphicsPipelines (Device device, PipelineCache pipelinecache, uint createinfocount, GraphicsPipelineCreateInfo* pcreateinfos, AllocationCallbacks* pallocator, Pipeline* ppipelines) @extern("vkCreateGraphicsPipelines");
extern fn Result vkCreateComputePipelines (Device device, PipelineCache pipelinecache, uint createinfocount, ComputePipelineCreateInfo* pcreateinfos, AllocationCallbacks* pallocator, Pipeline* ppipelines) @extern("vkCreateComputePipelines");
extern fn Result vkCreatePipelineLayout (Device device, PipelineLayoutCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PipelineLayout* ppipelinelayout) @extern("vkCreatePipelineLayout");
extern fn Result vkCreateSampler (Device device, SamplerCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Sampler* psampler) @extern("vkCreateSampler");
extern fn Result vkCreateDescriptorSetLayout (Device device, DescriptorSetLayoutCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorSetLayout* psetlayout) @extern("vkCreateDescriptorSetLayout");
extern fn Result vkCreateDescriptorPool (Device device, DescriptorPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorPool* pdescriptorpool) @extern("vkCreateDescriptorPool");
extern fn Result vkAllocateDescriptorSets (Device device, DescriptorSetAllocateInfo* pallocateinfo, DescriptorSet* pdescriptorsets) @extern("vkAllocateDescriptorSets");
extern fn Result vkCreateFramebuffer (Device device, FramebufferCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, Framebuffer* pframebuffer) @extern("vkCreateFramebuffer");
extern fn Result vkCreateRenderPass (Device device, RenderPassCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, RenderPass* prenderpass) @extern("vkCreateRenderPass");
extern fn Result vkCreateCommandPool (Device device, CommandPoolCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, CommandPool* pcommandpool) @extern("vkCreateCommandPool");
extern fn Result vkResetCommandPool (Device device, CommandPool commandpool, CommandPoolResetFlags flags) @extern("vkResetCommandPool");
extern fn Result vkAllocateCommandBuffers (Device device, CommandBufferAllocateInfo* pallocateinfo, CommandBuffer* pcommandbuffers) @extern("vkAllocateCommandBuffers");
extern fn Result vkBeginCommandBuffer (CommandBuffer commandbuffer, CommandBufferBeginInfo* pbegininfo) @extern("vkBeginCommandBuffer");
extern fn Result vkEndCommandBuffer (CommandBuffer commandbuffer) @extern("vkEndCommandBuffer");
extern fn Result vkResetCommandBuffer (CommandBuffer commandbuffer, CommandBufferResetFlags flags) @extern("vkResetCommandBuffer");
extern fn Result vkEnumerateInstanceVersion (uint* papiversion) @extern("vkEnumerateInstanceVersion");
extern fn Result vkBindBufferMemory2 (Device device, uint bindinfocount, BindBufferMemoryInfo* pbindinfos) @extern("vkBindBufferMemory2");
extern fn Result vkBindImageMemory2 (Device device, uint bindinfocount, BindImageMemoryInfo* pbindinfos) @extern("vkBindImageMemory2");
extern fn Result vkEnumeratePhysicalDeviceGroups (Instance instance, uint* pphysicaldevicegroupcount, PhysicalDeviceGroupProperties* pphysicaldevicegroupproperties) @extern("vkEnumeratePhysicalDeviceGroups");
extern fn Result vkGetPhysicalDeviceImageFormatProperties2 (PhysicalDevice physicaldevice, PhysicalDeviceImageFormatInfo2* pimageformatinfo, ImageFormatProperties2* pimageformatproperties) @extern("vkGetPhysicalDeviceImageFormatProperties2");
extern fn Result vkCreateSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, SamplerYcbcrConversion* pycbcrconversion) @extern("vkCreateSamplerYcbcrConversion");
extern fn Result vkCreateDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplateCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, DescriptorUpdateTemplate* pdescriptorupdatetemplate) @extern("vkCreateDescriptorUpdateTemplate");
extern fn Result vkCreateRenderPass2 (Device device, RenderPassCreateInfo2* pcreateinfo, AllocationCallbacks* pallocator, RenderPass* prenderpass) @extern("vkCreateRenderPass2");
extern fn Result vkGetSemaphoreCounterValue (Device device, Semaphore semaphore, ulong* pvalue) @extern("vkGetSemaphoreCounterValue");
extern fn Result vkWaitSemaphores (Device device, SemaphoreWaitInfo* pwaitinfo, ulong timeout) @extern("vkWaitSemaphores");
extern fn Result vkSignalSemaphore (Device device, SemaphoreSignalInfo* psignalinfo) @extern("vkSignalSemaphore");
extern fn Result vkGetPhysicalDeviceSurfaceSupportKHR (PhysicalDevice physicaldevice, uint queuefamilyindex, SurfaceKHR surface, Bool32* psupported) @extern("vkGetPhysicalDeviceSurfaceSupportKHR");
extern fn Result vkGetPhysicalDeviceSurfaceCapabilitiesKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, SurfaceCapabilitiesKHR* psurfacecapabilities) @extern("vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
extern fn Result vkGetPhysicalDeviceSurfaceFormatsKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, uint* psurfaceformatcount, SurfaceFormatKHR* psurfaceformats) @extern("vkGetPhysicalDeviceSurfaceFormatsKHR");
extern fn Result vkGetPhysicalDeviceSurfacePresentModesKHR (PhysicalDevice physicaldevice, SurfaceKHR surface, uint* ppresentmodecount, PresentModeKHR* ppresentmodes) @extern("vkGetPhysicalDeviceSurfacePresentModesKHR");
fn void! createInstance (InstanceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Instance* pInstance) {
  Result result = vkCreateInstance(pCreateInfo, pAllocator, pInstance);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
    case ERROR_LAYER_NOT_PRESENT: 
        return VkErrors.ERROR_LAYER_NOT_PRESENT?;
    case ERROR_EXTENSION_NOT_PRESENT: 
        return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
    case ERROR_INCOMPATIBLE_DRIVER: 
        return VkErrors.ERROR_INCOMPATIBLE_DRIVER?;
  }
}
fn void! enumeratePhysicalDevices (Instance instance, uint* pPhysicalDeviceCount, PhysicalDevice* pPhysicalDevices) {
  Result result = vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties (PhysicalDevice physicalDevice, Format format, ImageType type, ImageTiling tiling, ImageUsageFlags usage, ImageCreateFlags flags, ImageFormatProperties* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FORMAT_NOT_SUPPORTED: 
        return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createDevice (PhysicalDevice physicalDevice, DeviceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Device* pDevice) {
  Result result = vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
    case ERROR_EXTENSION_NOT_PRESENT: 
        return VkErrors.ERROR_EXTENSION_NOT_PRESENT?;
    case ERROR_FEATURE_NOT_PRESENT: 
        return VkErrors.ERROR_FEATURE_NOT_PRESENT?;
    case ERROR_TOO_MANY_OBJECTS: 
        return VkErrors.ERROR_TOO_MANY_OBJECTS?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! enumerateInstanceExtensionProperties (char* pLayerName, uint* pPropertyCount, ExtensionProperties* pProperties) {
  Result result = vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_LAYER_NOT_PRESENT: 
        return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! enumerateDeviceExtensionProperties (PhysicalDevice physicalDevice, char* pLayerName, uint* pPropertyCount, ExtensionProperties* pProperties) {
  Result result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_LAYER_NOT_PRESENT: 
        return VkErrors.ERROR_LAYER_NOT_PRESENT?;
  }
}
fn void! enumerateInstanceLayerProperties (uint* pPropertyCount, LayerProperties* pProperties) {
  Result result = vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateDeviceLayerProperties (PhysicalDevice physicalDevice, uint* pPropertyCount, LayerProperties* pProperties) {
  Result result = vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! queueSubmit (Queue queue, uint submitCount, SubmitInfo* pSubmits, Fence fence) {
  Result result = vkQueueSubmit(queue, submitCount, pSubmits, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! queueWaitIdle (Queue queue) {
  Result result = vkQueueWaitIdle(queue);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! deviceWaitIdle (Device device) {
  Result result = vkDeviceWaitIdle(device);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! allocateMemory (Device device, MemoryAllocateInfo* pAllocateInfo, AllocationCallbacks* pAllocator, DeviceMemory* pMemory) {
  Result result = vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INVALID_EXTERNAL_HANDLE: 
        return VkErrors.ERROR_INVALID_EXTERNAL_HANDLE?;
  }
}
fn void! mapMemory (Device device, DeviceMemory memory, DeviceSize offset, DeviceSize size, MemoryMapFlags flags, void* ppData) {
  Result result = vkMapMemory(device, memory, offset, size, flags, ppData);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_MEMORY_MAP_FAILED: 
        return VkErrors.ERROR_MEMORY_MAP_FAILED?;
  }
}
fn void! flushMappedMemoryRanges (Device device, uint memoryRangeCount, MappedMemoryRange* pMemoryRanges) {
  Result result = vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! invalidateMappedMemoryRanges (Device device, uint memoryRangeCount, MappedMemoryRange* pMemoryRanges) {
  Result result = vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindBufferMemory (Device device, Buffer buffer, DeviceMemory memory, DeviceSize memoryOffset) {
  Result result = vkBindBufferMemory(device, buffer, memory, memoryOffset);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindImageMemory (Device device, Image image, DeviceMemory memory, DeviceSize memoryOffset) {
  Result result = vkBindImageMemory(device, image, memory, memoryOffset);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! queueBindSparse (Queue queue, uint bindInfoCount, BindSparseInfo* pBindInfo, Fence fence) {
  Result result = vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createFence (Device device, FenceCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Fence* pFence) {
  Result result = vkCreateFence(device, pCreateInfo, pAllocator, pFence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetFences (Device device, uint fenceCount, Fence* pFences) {
  Result result = vkResetFences(device, fenceCount, pFences);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getFenceStatus (Device device, Fence fence) {
  Result result = vkGetFenceStatus(device, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitForFences (Device device, uint fenceCount, Fence* pFences, Bool32 waitAll, ulong timeout) {
  Result result = vkWaitForFences(device, fenceCount, pFences, waitAll, timeout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createSemaphore (Device device, SemaphoreCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Semaphore* pSemaphore) {
  Result result = vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createEvent (Device device, EventCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Event* pEvent) {
  Result result = vkCreateEvent(device, pCreateInfo, pAllocator, pEvent);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getEventStatus (Device device, Event event) {
  Result result = vkGetEventStatus(device, event);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! setEvent (Device device, Event event) {
  Result result = vkSetEvent(device, event);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetEvent (Device device, Event event) {
  Result result = vkResetEvent(device, event);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createQueryPool (Device device, QueryPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, QueryPool* pQueryPool) {
  Result result = vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getQueryPoolResults (Device device, QueryPool queryPool, uint firstQuery, uint queryCount, usz dataSize, void* pData, DeviceSize stride, QueryResultFlags flags) {
  Result result = vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! createBuffer (Device device, BufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Buffer* pBuffer) {
  Result result = vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createBufferView (Device device, BufferViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, BufferView* pView) {
  Result result = vkCreateBufferView(device, pCreateInfo, pAllocator, pView);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImage (Device device, ImageCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Image* pImage) {
  Result result = vkCreateImage(device, pCreateInfo, pAllocator, pImage);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createImageView (Device device, ImageViewCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ImageView* pView) {
  Result result = vkCreateImageView(device, pCreateInfo, pAllocator, pView);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createShaderModule (Device device, ShaderModuleCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, ShaderModule* pShaderModule) {
  Result result = vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createPipelineCache (Device device, PipelineCacheCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineCache* pPipelineCache) {
  Result result = vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPipelineCacheData (Device device, PipelineCache pipelineCache, usz* pDataSize, void* pData) {
  Result result = vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! mergePipelineCaches (Device device, PipelineCache dstCache, uint srcCacheCount, PipelineCache* pSrcCaches) {
  Result result = vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createGraphicsPipelines (Device device, PipelineCache pipelineCache, uint createInfoCount, GraphicsPipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createComputePipelines (Device device, PipelineCache pipelineCache, uint createInfoCount, ComputePipelineCreateInfo* pCreateInfos, AllocationCallbacks* pAllocator, Pipeline* pPipelines) {
  Result result = vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createPipelineLayout (Device device, PipelineLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PipelineLayout* pPipelineLayout) {
  Result result = vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createSampler (Device device, SamplerCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Sampler* pSampler) {
  Result result = vkCreateSampler(device, pCreateInfo, pAllocator, pSampler);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorSetLayout (Device device, DescriptorSetLayoutCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorSetLayout* pSetLayout) {
  Result result = vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorPool (Device device, DescriptorPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorPool* pDescriptorPool) {
  Result result = vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! allocateDescriptorSets (Device device, DescriptorSetAllocateInfo* pAllocateInfo, DescriptorSet* pDescriptorSets) {
  Result result = vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FRAGMENTED_POOL: 
        return VkErrors.ERROR_FRAGMENTED_POOL?;
    case ERROR_OUT_OF_POOL_MEMORY: 
        return VkErrors.ERROR_OUT_OF_POOL_MEMORY?;
  }
}
fn void! createFramebuffer (Device device, FramebufferCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, Framebuffer* pFramebuffer) {
  Result result = vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRenderPass (Device device, RenderPassCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) {
  Result result = vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createCommandPool (Device device, CommandPoolCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, CommandPool* pCommandPool) {
  Result result = vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetCommandPool (Device device, CommandPool commandPool, CommandPoolResetFlags flags) {
  Result result = vkResetCommandPool(device, commandPool, flags);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! allocateCommandBuffers (Device device, CommandBufferAllocateInfo* pAllocateInfo, CommandBuffer* pCommandBuffers) {
  Result result = vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! beginCommandBuffer (CommandBuffer commandBuffer, CommandBufferBeginInfo* pBeginInfo) {
  Result result = vkBeginCommandBuffer(commandBuffer, pBeginInfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! endCommandBuffer (CommandBuffer commandBuffer) {
  Result result = vkEndCommandBuffer(commandBuffer);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! resetCommandBuffer (CommandBuffer commandBuffer, CommandBufferResetFlags flags) {
  Result result = vkResetCommandBuffer(commandBuffer, flags);
  switch(result) {
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumerateInstanceVersion (uint* pApiVersion) {
  Result result = vkEnumerateInstanceVersion(pApiVersion);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! bindBufferMemory2 (Device device, uint bindInfoCount, BindBufferMemoryInfo* pBindInfos) {
  Result result = vkBindBufferMemory2(device, bindInfoCount, pBindInfos);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! bindImageMemory2 (Device device, uint bindInfoCount, BindImageMemoryInfo* pBindInfos) {
  Result result = vkBindImageMemory2(device, bindInfoCount, pBindInfos);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! enumeratePhysicalDeviceGroups (Instance instance, uint* pPhysicalDeviceGroupCount, PhysicalDeviceGroupProperties* pPhysicalDeviceGroupProperties) {
  Result result = vkEnumeratePhysicalDeviceGroups(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}
fn void! getPhysicalDeviceImageFormatProperties2 (PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties) {
  Result result = vkGetPhysicalDeviceImageFormatProperties2(physicalDevice, pImageFormatInfo, pImageFormatProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FORMAT_NOT_SUPPORTED: 
        return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}
fn void! createSamplerYcbcrConversion (Device device, SamplerYcbcrConversionCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, SamplerYcbcrConversion* pYcbcrConversion) {
  Result result = vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createDescriptorUpdateTemplate (Device device, DescriptorUpdateTemplateCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, DescriptorUpdateTemplate* pDescriptorUpdateTemplate) {
  Result result = vkCreateDescriptorUpdateTemplate(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! createRenderPass2 (Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) {
  Result result = vkCreateRenderPass2(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getSemaphoreCounterValue (Device device, Semaphore semaphore, ulong* pValue) {
  Result result = vkGetSemaphoreCounterValue(device, semaphore, pValue);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! waitSemaphores (Device device, SemaphoreWaitInfo* pWaitInfo, ulong timeout) {
  Result result = vkWaitSemaphores(device, pWaitInfo, timeout);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
fn void! signalSemaphore (Device device, SemaphoreSignalInfo* pSignalInfo) {
  Result result = vkSignalSemaphore(device, pSignalInfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}
fn void! getPhysicalDeviceSurfaceSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, SurfaceKHR surface, Bool32* pSupported) {
  Result result = vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceCapabilitiesKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, SurfaceCapabilitiesKHR* pSurfaceCapabilities) {
  Result result = vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfaceFormatsKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, uint* pSurfaceFormatCount, SurfaceFormatKHR* pSurfaceFormats) {
  Result result = vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
fn void! getPhysicalDeviceSurfacePresentModesKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, uint* pPresentModeCount, PresentModeKHR* pPresentModes) {
  Result result = vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}
