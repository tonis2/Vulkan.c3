module types;
import vk;

struct QueueFamily {
    int graphics;
    int present;
    int compute;
}

fn bool QueueFamily.is_ready(&self)
{
    return self.graphics >= 0 && self.present >= 0;
}

struct SurfaceCapabilities {
    VkSurfaceCapabilitiesKHR capabilities;
    VkSurfaceFormatKHR* formats;
    VkPresentModeKHR* present_modes;
    uint format_count;
    uint present_count;
}

fn void SurfaceCapabilities.free(&self)
{
   mem::free(self.formats);
   mem::free(self.present_modes);
}


