module vk; 
def PFN_vkAllocationFunction = fn void* (void*, usz, usz, SystemAllocationScope);
def PFN_vkFreeFunction = fn void (void*, void*);
def PFN_vkInternalAllocationNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
def PFN_vkInternalFreeNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
def PFN_vkReallocationFunction = fn void* (void*, void*, usz, usz, SystemAllocationScope);
def PFN_vkVoidFunction = fn void ();
def PFN_vkDebugReportCallbackEXT = fn Bool32 (DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char, char, void*);
def PFN_vkDebugUtilsMessengerCallbackEXT = fn Bool32 (DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT, void*);
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
extern fn void destroyPrivateDataSlot (Device device, PrivateDataSlot privateDataSlot, AllocationCallbacks* pAllocator) @extern("vkDestroyPrivateDataSlot");
extern fn void getPrivateData (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong* pData) @extern("vkGetPrivateData");
extern fn void cmdSetEvent2 (CommandBuffer commandBuffer, Event event, DependencyInfo* pDependencyInfo) @extern("vkCmdSetEvent2");
extern fn void cmdResetEvent2 (CommandBuffer commandBuffer, Event event, PipelineStageFlags2 stageMask) @extern("vkCmdResetEvent2");
extern fn void cmdWaitEvents2 (CommandBuffer commandBuffer, uint eventCount, Event* pEvents, DependencyInfo* pDependencyInfos) @extern("vkCmdWaitEvents2");
extern fn void cmdPipelineBarrier2 (CommandBuffer commandBuffer, DependencyInfo* pDependencyInfo) @extern("vkCmdPipelineBarrier2");
extern fn void cmdWriteTimestamp2 (CommandBuffer commandBuffer, PipelineStageFlags2 stage, QueryPool queryPool, uint query) @extern("vkCmdWriteTimestamp2");
extern fn void cmdCopyBuffer2 (CommandBuffer commandBuffer, CopyBufferInfo2* pCopyBufferInfo) @extern("vkCmdCopyBuffer2");
extern fn void cmdCopyImage2 (CommandBuffer commandBuffer, CopyImageInfo2* pCopyImageInfo) @extern("vkCmdCopyImage2");
extern fn void cmdCopyBufferToImage2 (CommandBuffer commandBuffer, CopyBufferToImageInfo2* pCopyBufferToImageInfo) @extern("vkCmdCopyBufferToImage2");
extern fn void cmdCopyImageToBuffer2 (CommandBuffer commandBuffer, CopyImageToBufferInfo2* pCopyImageToBufferInfo) @extern("vkCmdCopyImageToBuffer2");
extern fn void cmdBlitImage2 (CommandBuffer commandBuffer, BlitImageInfo2* pBlitImageInfo) @extern("vkCmdBlitImage2");
extern fn void cmdResolveImage2 (CommandBuffer commandBuffer, ResolveImageInfo2* pResolveImageInfo) @extern("vkCmdResolveImage2");
extern fn void cmdBeginRendering (CommandBuffer commandBuffer, RenderingInfo* pRenderingInfo) @extern("vkCmdBeginRendering");
extern fn void cmdEndRendering (CommandBuffer commandBuffer) @extern("vkCmdEndRendering");
extern fn void cmdSetCullMode (CommandBuffer commandBuffer, CullModeFlags cullMode) @extern("vkCmdSetCullMode");
extern fn void cmdSetFrontFace (CommandBuffer commandBuffer, FrontFace frontFace) @extern("vkCmdSetFrontFace");
extern fn void cmdSetPrimitiveTopology (CommandBuffer commandBuffer, PrimitiveTopology primitiveTopology) @extern("vkCmdSetPrimitiveTopology");
extern fn void cmdSetViewportWithCount (CommandBuffer commandBuffer, uint viewportCount, Viewport* pViewports) @extern("vkCmdSetViewportWithCount");
extern fn void cmdSetScissorWithCount (CommandBuffer commandBuffer, uint scissorCount, Rect2D* pScissors) @extern("vkCmdSetScissorWithCount");
extern fn void cmdBindVertexBuffers2 (CommandBuffer commandBuffer, uint firstBinding, uint bindingCount, Buffer* pBuffers, DeviceSize* pOffsets, DeviceSize* pSizes, DeviceSize* pStrides) @extern("vkCmdBindVertexBuffers2");
extern fn void cmdSetDepthTestEnable (CommandBuffer commandBuffer, Bool32 depthTestEnable) @extern("vkCmdSetDepthTestEnable");
extern fn void cmdSetDepthWriteEnable (CommandBuffer commandBuffer, Bool32 depthWriteEnable) @extern("vkCmdSetDepthWriteEnable");
extern fn void cmdSetDepthCompareOp (CommandBuffer commandBuffer, CompareOp depthCompareOp) @extern("vkCmdSetDepthCompareOp");
extern fn void cmdSetDepthBoundsTestEnable (CommandBuffer commandBuffer, Bool32 depthBoundsTestEnable) @extern("vkCmdSetDepthBoundsTestEnable");
extern fn void cmdSetStencilTestEnable (CommandBuffer commandBuffer, Bool32 stencilTestEnable) @extern("vkCmdSetStencilTestEnable");
extern fn void cmdSetStencilOp (CommandBuffer commandBuffer, StencilFaceFlags faceMask, StencilOp failOp, StencilOp passOp, StencilOp depthFailOp, CompareOp compareOp) @extern("vkCmdSetStencilOp");
extern fn void cmdSetRasterizerDiscardEnable (CommandBuffer commandBuffer, Bool32 rasterizerDiscardEnable) @extern("vkCmdSetRasterizerDiscardEnable");
extern fn void cmdSetDepthBiasEnable (CommandBuffer commandBuffer, Bool32 depthBiasEnable) @extern("vkCmdSetDepthBiasEnable");
extern fn void cmdSetPrimitiveRestartEnable (CommandBuffer commandBuffer, Bool32 primitiveRestartEnable) @extern("vkCmdSetPrimitiveRestartEnable");
extern fn void getDeviceBufferMemoryRequirements (Device device, DeviceBufferMemoryRequirements* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetDeviceBufferMemoryRequirements");
extern fn void getDeviceImageMemoryRequirements (Device device, DeviceImageMemoryRequirements* pInfo, MemoryRequirements2* pMemoryRequirements) @extern("vkGetDeviceImageMemoryRequirements");
extern fn void getDeviceImageSparseMemoryRequirements (Device device, DeviceImageMemoryRequirements* pInfo, uint* pSparseMemoryRequirementCount, SparseImageMemoryRequirements2* pSparseMemoryRequirements) @extern("vkGetDeviceImageSparseMemoryRequirements");
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
extern fn Result vkGetPhysicalDeviceToolProperties (PhysicalDevice physicaldevice, uint* ptoolcount, PhysicalDeviceToolProperties* ptoolproperties) @extern("vkGetPhysicalDeviceToolProperties");
extern fn Result vkCreatePrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pcreateinfo, AllocationCallbacks* pallocator, PrivateDataSlot* pprivatedataslot) @extern("vkCreatePrivateDataSlot");
extern fn Result vkSetPrivateData (Device device, ObjectType objecttype, ulong objecthandle, PrivateDataSlot privatedataslot, ulong data) @extern("vkSetPrivateData");
extern fn Result vkQueueSubmit2 (Queue queue, uint submitcount, SubmitInfo2* psubmits, Fence fence) @extern("vkQueueSubmit2");
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
fn void! getPhysicalDeviceToolProperties (PhysicalDevice physicalDevice, uint* pToolCount, PhysicalDeviceToolProperties* pToolProperties) {
  Result result = vkGetPhysicalDeviceToolProperties(physicalDevice, pToolCount, pToolProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! createPrivateDataSlot (Device device, PrivateDataSlotCreateInfo* pCreateInfo, AllocationCallbacks* pAllocator, PrivateDataSlot* pPrivateDataSlot) {
  Result result = vkCreatePrivateDataSlot(device, pCreateInfo, pAllocator, pPrivateDataSlot);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! setPrivateData (Device device, ObjectType objectType, ulong objectHandle, PrivateDataSlot privateDataSlot, ulong data) {
  Result result = vkSetPrivateData(device, objectType, objectHandle, privateDataSlot, data);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}
fn void! queueSubmit2 (Queue queue, uint submitCount, SubmitInfo2* pSubmits, Fence fence) {
  Result result = vkQueueSubmit2(queue, submitCount, pSubmits, fence);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
  }
}
def PFN_vkDestroySurfaceKHR = fn void (Instance, SurfaceKHR, AllocationCallbacks*);
def PFN_vkGetPhysicalDeviceSurfaceSupportKHR = fn Result (PhysicalDevice, uint, SurfaceKHR, Bool32*);
def PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR = fn Result (PhysicalDevice, SurfaceKHR, SurfaceCapabilitiesKHR*);
def PFN_vkGetPhysicalDeviceSurfaceFormatsKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, SurfaceFormatKHR*);
def PFN_vkGetPhysicalDeviceSurfacePresentModesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, PresentModeKHR*);
def PFN_vkCreateSwapchainKHR = fn Result (Device, SwapchainCreateInfoKHR*, AllocationCallbacks*, SwapchainKHR*);
def PFN_vkDestroySwapchainKHR = fn void (Device, SwapchainKHR, AllocationCallbacks*);
def PFN_vkGetSwapchainImagesKHR = fn Result (Device, SwapchainKHR, uint*, Image*);
def PFN_vkAcquireNextImageKHR = fn Result (Device, SwapchainKHR, ulong, Semaphore, Fence, uint*);
def PFN_vkQueuePresentKHR = fn Result (Queue, PresentInfoKHR*);
def PFN_vkGetDeviceGroupPresentCapabilitiesKHR = fn Result (Device, DeviceGroupPresentCapabilitiesKHR*);
def PFN_vkGetDeviceGroupSurfacePresentModesKHR = fn Result (Device, SurfaceKHR, DeviceGroupPresentModeFlagsKHR*);
def PFN_vkGetPhysicalDevicePresentRectanglesKHR = fn Result (PhysicalDevice, SurfaceKHR, uint*, Rect2D*);
def PFN_vkAcquireNextImage2KHR = fn Result (Device, AcquireNextImageInfoKHR*, uint*);
def PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPropertiesKHR*);
def PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = fn Result (PhysicalDevice, uint*, DisplayPlanePropertiesKHR*);
def PFN_vkGetDisplayPlaneSupportedDisplaysKHR = fn Result (PhysicalDevice, uint, uint*, DisplayKHR*);
def PFN_vkGetDisplayModePropertiesKHR = fn Result (PhysicalDevice, DisplayKHR, uint*, DisplayModePropertiesKHR*);
def PFN_vkCreateDisplayModeKHR = fn Result (PhysicalDevice, DisplayKHR, DisplayModeCreateInfoKHR*, AllocationCallbacks*, DisplayModeKHR*);
def PFN_vkGetDisplayPlaneCapabilitiesKHR = fn Result (PhysicalDevice, DisplayModeKHR, uint, DisplayPlaneCapabilitiesKHR*);
def PFN_vkCreateDisplayPlaneSurfaceKHR = fn Result (Instance, DisplaySurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkCreateXcbSurfaceKHR = fn Result (Instance, XcbSurfaceCreateInfoKHR*, AllocationCallbacks*, SurfaceKHR*);
def PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR = fn Bool32 (PhysicalDevice, uint, void**, uint);
def PFN_vkCreateDebugReportCallbackEXT = fn Result (Instance, DebugReportCallbackCreateInfoEXT*, AllocationCallbacks*, DebugReportCallbackEXT*);
def PFN_vkDestroyDebugReportCallbackEXT = fn void (Instance, DebugReportCallbackEXT, AllocationCallbacks*);
def PFN_vkDebugReportMessageEXT = fn void (Instance, DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char*, char*);
def PFN_vkCmdBeginRenderingKHR = fn void (CommandBuffer, RenderingInfo*);
def PFN_vkCmdEndRenderingKHR = fn void (CommandBuffer);
def PFN_vkGetPhysicalDeviceFeatures2KHR = fn void (PhysicalDevice, PhysicalDeviceFeatures2*);
def PFN_vkGetPhysicalDeviceProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceProperties2*);
def PFN_vkGetPhysicalDeviceFormatProperties2KHR = fn void (PhysicalDevice, Format, FormatProperties2*);
def PFN_vkGetPhysicalDeviceImageFormatProperties2KHR = fn Result (PhysicalDevice, PhysicalDeviceImageFormatInfo2*, ImageFormatProperties2*);
def PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR = fn void (PhysicalDevice, uint*, QueueFamilyProperties2*);
def PFN_vkGetPhysicalDeviceMemoryProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceMemoryProperties2*);
def PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR = fn void (PhysicalDevice, PhysicalDeviceSparseImageFormatInfo2*, uint*, SparseImageFormatProperties2*);
def PFN_vkCmdPushDescriptorSetKHR = fn void (CommandBuffer, PipelineBindPoint, PipelineLayout, uint, uint, WriteDescriptorSet*);
def PFN_vkCmdPushDescriptorSetWithTemplateKHR = fn void (CommandBuffer, DescriptorUpdateTemplate, PipelineLayout, uint, void*);
def PFN_vkCreateRenderPass2KHR = fn Result (Device, RenderPassCreateInfo2*, AllocationCallbacks*, RenderPass*);
def PFN_vkCmdBeginRenderPass2KHR = fn void (CommandBuffer, RenderPassBeginInfo*, SubpassBeginInfo*);
def PFN_vkCmdNextSubpass2KHR = fn void (CommandBuffer, SubpassBeginInfo*, SubpassEndInfo*);
def PFN_vkCmdEndRenderPass2KHR = fn void (CommandBuffer, SubpassEndInfo*);
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

struct VK_extension_bindings {
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
 PFN_vkGetDeviceGroupPresentCapabilitiesKHR vkGetDeviceGroupPresentCapabilitiesKHR;
 PFN_vkGetDeviceGroupSurfacePresentModesKHR vkGetDeviceGroupSurfacePresentModesKHR;
 PFN_vkGetPhysicalDevicePresentRectanglesKHR vkGetPhysicalDevicePresentRectanglesKHR;
 PFN_vkAcquireNextImage2KHR vkAcquireNextImage2KHR;
 PFN_vkGetPhysicalDeviceDisplayPropertiesKHR vkGetPhysicalDeviceDisplayPropertiesKHR;
 PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR vkGetPhysicalDeviceDisplayPlanePropertiesKHR;
 PFN_vkGetDisplayPlaneSupportedDisplaysKHR vkGetDisplayPlaneSupportedDisplaysKHR;
 PFN_vkGetDisplayModePropertiesKHR vkGetDisplayModePropertiesKHR;
 PFN_vkCreateDisplayModeKHR vkCreateDisplayModeKHR;
 PFN_vkGetDisplayPlaneCapabilitiesKHR vkGetDisplayPlaneCapabilitiesKHR;
 PFN_vkCreateDisplayPlaneSurfaceKHR vkCreateDisplayPlaneSurfaceKHR;
 PFN_vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR;
 PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR vkGetPhysicalDeviceXcbPresentationSupportKHR;
 PFN_vkCreateDebugReportCallbackEXT vkCreateDebugReportCallbackEXT;
 PFN_vkDestroyDebugReportCallbackEXT vkDestroyDebugReportCallbackEXT;
 PFN_vkDebugReportMessageEXT vkDebugReportMessageEXT;
 PFN_vkCmdBeginRenderingKHR vkCmdBeginRenderingKHR;
 PFN_vkCmdEndRenderingKHR vkCmdEndRenderingKHR;
 PFN_vkGetPhysicalDeviceFeatures2KHR vkGetPhysicalDeviceFeatures2KHR;
 PFN_vkGetPhysicalDeviceProperties2KHR vkGetPhysicalDeviceProperties2KHR;
 PFN_vkGetPhysicalDeviceFormatProperties2KHR vkGetPhysicalDeviceFormatProperties2KHR;
 PFN_vkGetPhysicalDeviceImageFormatProperties2KHR vkGetPhysicalDeviceImageFormatProperties2KHR;
 PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR vkGetPhysicalDeviceQueueFamilyProperties2KHR;
 PFN_vkGetPhysicalDeviceMemoryProperties2KHR vkGetPhysicalDeviceMemoryProperties2KHR;
 PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR vkGetPhysicalDeviceSparseImageFormatProperties2KHR;
 PFN_vkCmdPushDescriptorSetKHR vkCmdPushDescriptorSetKHR;
 PFN_vkCmdPushDescriptorSetWithTemplateKHR vkCmdPushDescriptorSetWithTemplateKHR;
 PFN_vkCreateRenderPass2KHR vkCreateRenderPass2KHR;
 PFN_vkCmdBeginRenderPass2KHR vkCmdBeginRenderPass2KHR;
 PFN_vkCmdNextSubpass2KHR vkCmdNextSubpass2KHR;
 PFN_vkCmdEndRenderPass2KHR vkCmdEndRenderPass2KHR;
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
}
VK_extension_bindings extensions;
fn void loadExtensions(Instance instance) {
  extensions.vkDestroySurfaceKHR = (PFN_vkDestroySurfaceKHR)getInstanceProcAddr(instance, "vkDestroySurfaceKHR");
  extensions.vkGetPhysicalDeviceSurfaceSupportKHR = (PFN_vkGetPhysicalDeviceSurfaceSupportKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR");
  extensions.vkGetPhysicalDeviceSurfaceCapabilitiesKHR = (PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
  extensions.vkGetPhysicalDeviceSurfaceFormatsKHR = (PFN_vkGetPhysicalDeviceSurfaceFormatsKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR");
  extensions.vkGetPhysicalDeviceSurfacePresentModesKHR = (PFN_vkGetPhysicalDeviceSurfacePresentModesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR");
  extensions.vkCreateSwapchainKHR = (PFN_vkCreateSwapchainKHR)getInstanceProcAddr(instance, "vkCreateSwapchainKHR");
  extensions.vkDestroySwapchainKHR = (PFN_vkDestroySwapchainKHR)getInstanceProcAddr(instance, "vkDestroySwapchainKHR");
  extensions.vkGetSwapchainImagesKHR = (PFN_vkGetSwapchainImagesKHR)getInstanceProcAddr(instance, "vkGetSwapchainImagesKHR");
  extensions.vkAcquireNextImageKHR = (PFN_vkAcquireNextImageKHR)getInstanceProcAddr(instance, "vkAcquireNextImageKHR");
  extensions.vkQueuePresentKHR = (PFN_vkQueuePresentKHR)getInstanceProcAddr(instance, "vkQueuePresentKHR");
  extensions.vkGetDeviceGroupPresentCapabilitiesKHR = (PFN_vkGetDeviceGroupPresentCapabilitiesKHR)getInstanceProcAddr(instance, "vkGetDeviceGroupPresentCapabilitiesKHR");
  extensions.vkGetDeviceGroupSurfacePresentModesKHR = (PFN_vkGetDeviceGroupSurfacePresentModesKHR)getInstanceProcAddr(instance, "vkGetDeviceGroupSurfacePresentModesKHR");
  extensions.vkGetPhysicalDevicePresentRectanglesKHR = (PFN_vkGetPhysicalDevicePresentRectanglesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDevicePresentRectanglesKHR");
  extensions.vkAcquireNextImage2KHR = (PFN_vkAcquireNextImage2KHR)getInstanceProcAddr(instance, "vkAcquireNextImage2KHR");
  extensions.vkGetPhysicalDeviceDisplayPropertiesKHR = (PFN_vkGetPhysicalDeviceDisplayPropertiesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPropertiesKHR");
  extensions.vkGetPhysicalDeviceDisplayPlanePropertiesKHR = (PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR");
  extensions.vkGetDisplayPlaneSupportedDisplaysKHR = (PFN_vkGetDisplayPlaneSupportedDisplaysKHR)getInstanceProcAddr(instance, "vkGetDisplayPlaneSupportedDisplaysKHR");
  extensions.vkGetDisplayModePropertiesKHR = (PFN_vkGetDisplayModePropertiesKHR)getInstanceProcAddr(instance, "vkGetDisplayModePropertiesKHR");
  extensions.vkCreateDisplayModeKHR = (PFN_vkCreateDisplayModeKHR)getInstanceProcAddr(instance, "vkCreateDisplayModeKHR");
  extensions.vkGetDisplayPlaneCapabilitiesKHR = (PFN_vkGetDisplayPlaneCapabilitiesKHR)getInstanceProcAddr(instance, "vkGetDisplayPlaneCapabilitiesKHR");
  extensions.vkCreateDisplayPlaneSurfaceKHR = (PFN_vkCreateDisplayPlaneSurfaceKHR)getInstanceProcAddr(instance, "vkCreateDisplayPlaneSurfaceKHR");
  extensions.vkCreateXcbSurfaceKHR = (PFN_vkCreateXcbSurfaceKHR)getInstanceProcAddr(instance, "vkCreateXcbSurfaceKHR");
  extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR = (PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceXcbPresentationSupportKHR");
  extensions.vkCreateDebugReportCallbackEXT = (PFN_vkCreateDebugReportCallbackEXT)getInstanceProcAddr(instance, "vkCreateDebugReportCallbackEXT");
  extensions.vkDestroyDebugReportCallbackEXT = (PFN_vkDestroyDebugReportCallbackEXT)getInstanceProcAddr(instance, "vkDestroyDebugReportCallbackEXT");
  extensions.vkDebugReportMessageEXT = (PFN_vkDebugReportMessageEXT)getInstanceProcAddr(instance, "vkDebugReportMessageEXT");
  extensions.vkCmdBeginRenderingKHR = (PFN_vkCmdBeginRenderingKHR)getInstanceProcAddr(instance, "vkCmdBeginRenderingKHR");
  extensions.vkCmdEndRenderingKHR = (PFN_vkCmdEndRenderingKHR)getInstanceProcAddr(instance, "vkCmdEndRenderingKHR");
  extensions.vkGetPhysicalDeviceFeatures2KHR = (PFN_vkGetPhysicalDeviceFeatures2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures2KHR");
  extensions.vkGetPhysicalDeviceProperties2KHR = (PFN_vkGetPhysicalDeviceProperties2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties2KHR");
  extensions.vkGetPhysicalDeviceFormatProperties2KHR = (PFN_vkGetPhysicalDeviceFormatProperties2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceFormatProperties2KHR");
  extensions.vkGetPhysicalDeviceImageFormatProperties2KHR = (PFN_vkGetPhysicalDeviceImageFormatProperties2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceImageFormatProperties2KHR");
  extensions.vkGetPhysicalDeviceQueueFamilyProperties2KHR = (PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties2KHR");
  extensions.vkGetPhysicalDeviceMemoryProperties2KHR = (PFN_vkGetPhysicalDeviceMemoryProperties2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties2KHR");
  extensions.vkGetPhysicalDeviceSparseImageFormatProperties2KHR = (PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR)getInstanceProcAddr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties2KHR");
  extensions.vkCmdPushDescriptorSetKHR = (PFN_vkCmdPushDescriptorSetKHR)getInstanceProcAddr(instance, "vkCmdPushDescriptorSetKHR");
  extensions.vkCmdPushDescriptorSetWithTemplateKHR = (PFN_vkCmdPushDescriptorSetWithTemplateKHR)getInstanceProcAddr(instance, "vkCmdPushDescriptorSetWithTemplateKHR");
  extensions.vkCreateRenderPass2KHR = (PFN_vkCreateRenderPass2KHR)getInstanceProcAddr(instance, "vkCreateRenderPass2KHR");
  extensions.vkCmdBeginRenderPass2KHR = (PFN_vkCmdBeginRenderPass2KHR)getInstanceProcAddr(instance, "vkCmdBeginRenderPass2KHR");
  extensions.vkCmdNextSubpass2KHR = (PFN_vkCmdNextSubpass2KHR)getInstanceProcAddr(instance, "vkCmdNextSubpass2KHR");
  extensions.vkCmdEndRenderPass2KHR = (PFN_vkCmdEndRenderPass2KHR)getInstanceProcAddr(instance, "vkCmdEndRenderPass2KHR");
  extensions.vkSetDebugUtilsObjectNameEXT = (PFN_vkSetDebugUtilsObjectNameEXT)getInstanceProcAddr(instance, "vkSetDebugUtilsObjectNameEXT");
  extensions.vkSetDebugUtilsObjectTagEXT = (PFN_vkSetDebugUtilsObjectTagEXT)getInstanceProcAddr(instance, "vkSetDebugUtilsObjectTagEXT");
  extensions.vkQueueBeginDebugUtilsLabelEXT = (PFN_vkQueueBeginDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkQueueBeginDebugUtilsLabelEXT");
  extensions.vkQueueEndDebugUtilsLabelEXT = (PFN_vkQueueEndDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkQueueEndDebugUtilsLabelEXT");
  extensions.vkQueueInsertDebugUtilsLabelEXT = (PFN_vkQueueInsertDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkQueueInsertDebugUtilsLabelEXT");
  extensions.vkCmdBeginDebugUtilsLabelEXT = (PFN_vkCmdBeginDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkCmdBeginDebugUtilsLabelEXT");
  extensions.vkCmdEndDebugUtilsLabelEXT = (PFN_vkCmdEndDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkCmdEndDebugUtilsLabelEXT");
  extensions.vkCmdInsertDebugUtilsLabelEXT = (PFN_vkCmdInsertDebugUtilsLabelEXT)getInstanceProcAddr(instance, "vkCmdInsertDebugUtilsLabelEXT");
  extensions.vkCreateDebugUtilsMessengerEXT = (PFN_vkCreateDebugUtilsMessengerEXT)getInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT");
  extensions.vkDestroyDebugUtilsMessengerEXT = (PFN_vkDestroyDebugUtilsMessengerEXT)getInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT");
  extensions.vkSubmitDebugUtilsMessageEXT = (PFN_vkSubmitDebugUtilsMessageEXT)getInstanceProcAddr(instance, "vkSubmitDebugUtilsMessageEXT");
  extensions.vkGetDescriptorSetLayoutSizeEXT = (PFN_vkGetDescriptorSetLayoutSizeEXT)getInstanceProcAddr(instance, "vkGetDescriptorSetLayoutSizeEXT");
  extensions.vkGetDescriptorSetLayoutBindingOffsetEXT = (PFN_vkGetDescriptorSetLayoutBindingOffsetEXT)getInstanceProcAddr(instance, "vkGetDescriptorSetLayoutBindingOffsetEXT");
  extensions.vkGetDescriptorEXT = (PFN_vkGetDescriptorEXT)getInstanceProcAddr(instance, "vkGetDescriptorEXT");
  extensions.vkCmdBindDescriptorBuffersEXT = (PFN_vkCmdBindDescriptorBuffersEXT)getInstanceProcAddr(instance, "vkCmdBindDescriptorBuffersEXT");
  extensions.vkCmdSetDescriptorBufferOffsetsEXT = (PFN_vkCmdSetDescriptorBufferOffsetsEXT)getInstanceProcAddr(instance, "vkCmdSetDescriptorBufferOffsetsEXT");
  extensions.vkCmdBindDescriptorBufferEmbeddedSamplersEXT = (PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT)getInstanceProcAddr(instance, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT");
  extensions.vkGetBufferOpaqueCaptureDescriptorDataEXT = (PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance, "vkGetBufferOpaqueCaptureDescriptorDataEXT");
  extensions.vkGetImageOpaqueCaptureDescriptorDataEXT = (PFN_vkGetImageOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance, "vkGetImageOpaqueCaptureDescriptorDataEXT");
  extensions.vkGetImageViewOpaqueCaptureDescriptorDataEXT = (PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance, "vkGetImageViewOpaqueCaptureDescriptorDataEXT");
  extensions.vkGetSamplerOpaqueCaptureDescriptorDataEXT = (PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT)getInstanceProcAddr(instance, "vkGetSamplerOpaqueCaptureDescriptorDataEXT");
}
fn void destroySurfaceKHR (Instance instance, SurfaceKHR surface, AllocationCallbacks* pAllocator) => extensions.vkDestroySurfaceKHR(instance,surface,pAllocator);
fn void destroySwapchainKHR (Device device, SwapchainKHR swapchain, AllocationCallbacks* pAllocator) => extensions.vkDestroySwapchainKHR(device,swapchain,pAllocator);
fn Bool32 getPhysicalDeviceXcbPresentationSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, void** connection, uint visual_id) => extensions.vkGetPhysicalDeviceXcbPresentationSupportKHR(physicalDevice,queueFamilyIndex,connection,visual_id);
fn void destroyDebugReportCallbackEXT (Instance instance, DebugReportCallbackEXT callback, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugReportCallbackEXT(instance,callback,pAllocator);
fn void debugReportMessageEXT (Instance instance, DebugReportFlagsEXT flags, DebugReportObjectTypeEXT objectType, ulong object, usz location, int messageCode, char* pLayerPrefix, char* pMessage) => extensions.vkDebugReportMessageEXT(instance,flags,objectType,object,location,messageCode,pLayerPrefix,pMessage);
fn void cmdBeginRenderingKHR (CommandBuffer commandBuffer, RenderingInfo* pRenderingInfo) => extensions.vkCmdBeginRenderingKHR(commandBuffer,pRenderingInfo);
fn void cmdEndRenderingKHR (CommandBuffer commandBuffer) => extensions.vkCmdEndRenderingKHR(commandBuffer);
fn void getPhysicalDeviceFeatures2KHR (PhysicalDevice physicalDevice, PhysicalDeviceFeatures2* pFeatures) => extensions.vkGetPhysicalDeviceFeatures2KHR(physicalDevice,pFeatures);
fn void getPhysicalDeviceProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceProperties2* pProperties) => extensions.vkGetPhysicalDeviceProperties2KHR(physicalDevice,pProperties);
fn void getPhysicalDeviceFormatProperties2KHR (PhysicalDevice physicalDevice, Format format, FormatProperties2* pFormatProperties) => extensions.vkGetPhysicalDeviceFormatProperties2KHR(physicalDevice,format,pFormatProperties);
fn void getPhysicalDeviceQueueFamilyProperties2KHR (PhysicalDevice physicalDevice, uint* pQueueFamilyPropertyCount, QueueFamilyProperties2* pQueueFamilyProperties) => extensions.vkGetPhysicalDeviceQueueFamilyProperties2KHR(physicalDevice,pQueueFamilyPropertyCount,pQueueFamilyProperties);
fn void getPhysicalDeviceMemoryProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceMemoryProperties2* pMemoryProperties) => extensions.vkGetPhysicalDeviceMemoryProperties2KHR(physicalDevice,pMemoryProperties);
fn void getPhysicalDeviceSparseImageFormatProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceSparseImageFormatInfo2* pFormatInfo, uint* pPropertyCount, SparseImageFormatProperties2* pProperties) => extensions.vkGetPhysicalDeviceSparseImageFormatProperties2KHR(physicalDevice,pFormatInfo,pPropertyCount,pProperties);
fn void cmdPushDescriptorSetKHR (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set, uint descriptorWriteCount, WriteDescriptorSet* pDescriptorWrites) => extensions.vkCmdPushDescriptorSetKHR(commandBuffer,pipelineBindPoint,layout,set,descriptorWriteCount,pDescriptorWrites);
fn void cmdPushDescriptorSetWithTemplateKHR (CommandBuffer commandBuffer, DescriptorUpdateTemplate descriptorUpdateTemplate, PipelineLayout layout, uint set, void* pData) => extensions.vkCmdPushDescriptorSetWithTemplateKHR(commandBuffer,descriptorUpdateTemplate,layout,set,pData);
fn void cmdBeginRenderPass2KHR (CommandBuffer commandBuffer, RenderPassBeginInfo* pRenderPassBegin, SubpassBeginInfo* pSubpassBeginInfo) => extensions.vkCmdBeginRenderPass2KHR(commandBuffer,pRenderPassBegin,pSubpassBeginInfo);
fn void cmdNextSubpass2KHR (CommandBuffer commandBuffer, SubpassBeginInfo* pSubpassBeginInfo, SubpassEndInfo* pSubpassEndInfo) => extensions.vkCmdNextSubpass2KHR(commandBuffer,pSubpassBeginInfo,pSubpassEndInfo);
fn void cmdEndRenderPass2KHR (CommandBuffer commandBuffer, SubpassEndInfo* pSubpassEndInfo) => extensions.vkCmdEndRenderPass2KHR(commandBuffer,pSubpassEndInfo);
fn void queueBeginDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueBeginDebugUtilsLabelEXT(queue,pLabelInfo);
fn void queueEndDebugUtilsLabelEXT (Queue queue) => extensions.vkQueueEndDebugUtilsLabelEXT(queue);
fn void queueInsertDebugUtilsLabelEXT (Queue queue, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkQueueInsertDebugUtilsLabelEXT(queue,pLabelInfo);
fn void cmdBeginDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdBeginDebugUtilsLabelEXT(commandBuffer,pLabelInfo);
fn void cmdEndDebugUtilsLabelEXT (CommandBuffer commandBuffer) => extensions.vkCmdEndDebugUtilsLabelEXT(commandBuffer);
fn void cmdInsertDebugUtilsLabelEXT (CommandBuffer commandBuffer, DebugUtilsLabelEXT* pLabelInfo) => extensions.vkCmdInsertDebugUtilsLabelEXT(commandBuffer,pLabelInfo);
fn void destroyDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerEXT messenger, AllocationCallbacks* pAllocator) => extensions.vkDestroyDebugUtilsMessengerEXT(instance,messenger,pAllocator);
fn void submitDebugUtilsMessageEXT (Instance instance, DebugUtilsMessageSeverityFlagBitsEXT messageSeverity, DebugUtilsMessageTypeFlagsEXT messageTypes, DebugUtilsMessengerCallbackDataEXT* pCallbackData) => extensions.vkSubmitDebugUtilsMessageEXT(instance,messageSeverity,messageTypes,pCallbackData);
fn void getDescriptorSetLayoutSizeEXT (Device device, DescriptorSetLayout layout, DeviceSize* pLayoutSizeInBytes) => extensions.vkGetDescriptorSetLayoutSizeEXT(device,layout,pLayoutSizeInBytes);
fn void getDescriptorSetLayoutBindingOffsetEXT (Device device, DescriptorSetLayout layout, uint binding, DeviceSize* pOffset) => extensions.vkGetDescriptorSetLayoutBindingOffsetEXT(device,layout,binding,pOffset);
fn void getDescriptorEXT (Device device, DescriptorGetInfoEXT* pDescriptorInfo, usz dataSize, void* pDescriptor) => extensions.vkGetDescriptorEXT(device,pDescriptorInfo,dataSize,pDescriptor);
fn void cmdBindDescriptorBuffersEXT (CommandBuffer commandBuffer, uint bufferCount, DescriptorBufferBindingInfoEXT* pBindingInfos) => extensions.vkCmdBindDescriptorBuffersEXT(commandBuffer,bufferCount,pBindingInfos);
fn void cmdSetDescriptorBufferOffsetsEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint firstSet, uint setCount, uint* pBufferIndices, DeviceSize* pOffsets) => extensions.vkCmdSetDescriptorBufferOffsetsEXT(commandBuffer,pipelineBindPoint,layout,firstSet,setCount,pBufferIndices,pOffsets);
fn void cmdBindDescriptorBufferEmbeddedSamplersEXT (CommandBuffer commandBuffer, PipelineBindPoint pipelineBindPoint, PipelineLayout layout, uint set) => extensions.vkCmdBindDescriptorBufferEmbeddedSamplersEXT(commandBuffer,pipelineBindPoint,layout,set);
fn void! getPhysicalDeviceSurfaceSupportKHR (PhysicalDevice physicalDevice, uint queueFamilyIndex, SurfaceKHR surface, Bool32* pSupported) {
  Result result = extensions.vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported);
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
  Result result = extensions.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities);
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
  Result result = extensions.vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
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
  Result result = extensions.vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! createSwapchainKHR (Device device, SwapchainCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SwapchainKHR* pSwapchain) {
  Result result = extensions.vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
    case ERROR_NATIVE_WINDOW_IN_USE_KHR: 
        return VkErrors.ERROR_NATIVE_WINDOW_IN_USE_KHR?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}

fn void! getSwapchainImagesKHR (Device device, SwapchainKHR swapchain, uint* pSwapchainImageCount, Image* pSwapchainImages) {
  Result result = extensions.vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! acquireNextImageKHR (Device device, SwapchainKHR swapchain, ulong timeout, Semaphore semaphore, Fence fence, uint* pImageIndex) {
  Result result = extensions.vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_OUT_OF_DATE_KHR: 
        return VkErrors.ERROR_OUT_OF_DATE_KHR?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! queuePresentKHR (Queue queue, PresentInfoKHR* pPresentInfo) {
  Result result = extensions.vkQueuePresentKHR(queue, pPresentInfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_OUT_OF_DATE_KHR: 
        return VkErrors.ERROR_OUT_OF_DATE_KHR?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getDeviceGroupPresentCapabilitiesKHR (Device device, DeviceGroupPresentCapabilitiesKHR* pDeviceGroupPresentCapabilities) {
  Result result = extensions.vkGetDeviceGroupPresentCapabilitiesKHR(device, pDeviceGroupPresentCapabilities);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getDeviceGroupSurfacePresentModesKHR (Device device, SurfaceKHR surface, DeviceGroupPresentModeFlagsKHR* pModes) {
  Result result = extensions.vkGetDeviceGroupSurfacePresentModesKHR(device, surface, pModes);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDevicePresentRectanglesKHR (PhysicalDevice physicalDevice, SurfaceKHR surface, uint* pRectCount, Rect2D* pRects) {
  Result result = extensions.vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, pRectCount, pRects);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! acquireNextImage2KHR (Device device, AcquireNextImageInfoKHR* pAcquireInfo, uint* pImageIndex) {
  Result result = extensions.vkAcquireNextImage2KHR(device, pAcquireInfo, pImageIndex);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_DEVICE_LOST: 
        return VkErrors.ERROR_DEVICE_LOST?;
    case ERROR_OUT_OF_DATE_KHR: 
        return VkErrors.ERROR_OUT_OF_DATE_KHR?;
    case ERROR_SURFACE_LOST_KHR: 
        return VkErrors.ERROR_SURFACE_LOST_KHR?;
  }
}

fn void! getPhysicalDeviceDisplayPropertiesKHR (PhysicalDevice physicalDevice, uint* pPropertyCount, DisplayPropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getPhysicalDeviceDisplayPlanePropertiesKHR (PhysicalDevice physicalDevice, uint* pPropertyCount, DisplayPlanePropertiesKHR* pProperties) {
  Result result = extensions.vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getDisplayPlaneSupportedDisplaysKHR (PhysicalDevice physicalDevice, uint planeIndex, uint* pDisplayCount, DisplayKHR* pDisplays) {
  Result result = extensions.vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getDisplayModePropertiesKHR (PhysicalDevice physicalDevice, DisplayKHR display, uint* pPropertyCount, DisplayModePropertiesKHR* pProperties) {
  Result result = extensions.vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDisplayModeKHR (PhysicalDevice physicalDevice, DisplayKHR display, DisplayModeCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, DisplayModeKHR* pMode) {
  Result result = extensions.vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_INITIALIZATION_FAILED: 
        return VkErrors.ERROR_INITIALIZATION_FAILED?;
  }
}

fn void! getDisplayPlaneCapabilitiesKHR (PhysicalDevice physicalDevice, DisplayModeKHR mode, uint planeIndex, DisplayPlaneCapabilitiesKHR* pCapabilities) {
  Result result = extensions.vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDisplayPlaneSurfaceKHR (Instance instance, DisplaySurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createXcbSurfaceKHR (Instance instance, XcbSurfaceCreateInfoKHR* pCreateInfo, AllocationCallbacks* pAllocator, SurfaceKHR* pSurface) {
  Result result = extensions.vkCreateXcbSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDebugReportCallbackEXT (Instance instance, DebugReportCallbackCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, DebugReportCallbackEXT* pCallback) {
  Result result = extensions.vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}

fn void! getPhysicalDeviceImageFormatProperties2KHR (PhysicalDevice physicalDevice, PhysicalDeviceImageFormatInfo2* pImageFormatInfo, ImageFormatProperties2* pImageFormatProperties) {
  Result result = extensions.vkGetPhysicalDeviceImageFormatProperties2KHR(physicalDevice, pImageFormatInfo, pImageFormatProperties);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
    case ERROR_FORMAT_NOT_SUPPORTED: 
        return VkErrors.ERROR_FORMAT_NOT_SUPPORTED?;
  }
}

fn void! createRenderPass2KHR (Device device, RenderPassCreateInfo2* pCreateInfo, AllocationCallbacks* pAllocator, RenderPass* pRenderPass) {
  Result result = extensions.vkCreateRenderPass2KHR(device, pCreateInfo, pAllocator, pRenderPass);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! setDebugUtilsObjectNameEXT (Device device, DebugUtilsObjectNameInfoEXT* pNameInfo) {
  Result result = extensions.vkSetDebugUtilsObjectNameEXT(device, pNameInfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! setDebugUtilsObjectTagEXT (Device device, DebugUtilsObjectTagInfoEXT* pTagInfo) {
  Result result = extensions.vkSetDebugUtilsObjectTagEXT(device, pTagInfo);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! createDebugUtilsMessengerEXT (Instance instance, DebugUtilsMessengerCreateInfoEXT* pCreateInfo, AllocationCallbacks* pAllocator, DebugUtilsMessengerEXT* pMessenger) {
  Result result = extensions.vkCreateDebugUtilsMessengerEXT(instance, pCreateInfo, pAllocator, pMessenger);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
  }
}

fn void! getBufferOpaqueCaptureDescriptorDataEXT (Device device, BufferCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetBufferOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getImageOpaqueCaptureDescriptorDataEXT (Device device, ImageCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetImageOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getImageViewOpaqueCaptureDescriptorDataEXT (Device device, ImageViewCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetImageViewOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

fn void! getSamplerOpaqueCaptureDescriptorDataEXT (Device device, SamplerCaptureDescriptorDataInfoEXT* pInfo, void* pData) {
  Result result = extensions.vkGetSamplerOpaqueCaptureDescriptorDataEXT(device, pInfo, pData);
  switch(result) {
    case ERROR_OUT_OF_HOST_MEMORY: 
        return VkErrors.ERROR_OUT_OF_HOST_MEMORY?;
    case ERROR_OUT_OF_DEVICE_MEMORY: 
        return VkErrors.ERROR_OUT_OF_DEVICE_MEMORY?;
  }
}

