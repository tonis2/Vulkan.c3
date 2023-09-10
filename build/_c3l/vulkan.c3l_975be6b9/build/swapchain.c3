module vk;
import std::io;
import std::core::env;
import std::collections::list;

SwapchainCreateInfoKHR defaultSwapchain = {
    .sType = STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
    .pNext = null,
    .flags = 0,
    .imageArrayLayers = 1,
    .imageUsage = IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
    .imageSharingMode = SHARING_MODE_EXCLUSIVE,
    .compositeAlpha = COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
    .clipped = 0,
    .oldSwapchain = null,
};

struct SwapChain {
    SwapchainKHR swapchain;
    Image* images;
    ImageView* image_views;
    Format image_format;
    Extent2D extent;
    uint image_count;
}

fn void SwapChain.free(&self, Device device)
{
    destroySwapchainKHR(device, self.swapchain, null);
    for (int i = 0; i < self.image_count; ++i) {
        destroyImageView(device, self.image_views[i], null);
    }
    mem::free(self.images);
    mem::free(self.image_views);
}