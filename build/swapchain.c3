module vk;
import std::io;
import std::core::env;
import std::collections::list;

VkSwapchainCreateInfoKHR defaultSwapchain = {
    .sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null,
    .flags = 0,
    .imageArrayLayers = 1,
    .imageUsage = VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
    .imageSharingMode = VK_SHARING_MODE_EXCLUSIVE,
    .compositeAlpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
    .clipped = 0,
    .oldSwapchain = null,
};

struct SwapChain {
    VkSwapchainKHR swapchain;
    VkImage* images;
    VkImageView* image_views;
    VkFormat image_format;
    VkExtent2D extent;
    uint image_count;
}

fn void SwapChain.free(&self, VkDevice device)
{
    destroySwapchainKHR(device, self.swapchain, null);
    for (int i = 0; i < self.image_count; ++i) {
        destroyImageView(device, self.image_views[i], null);
    }
    mem::free(self.images);
    mem::free(self.image_views);
}