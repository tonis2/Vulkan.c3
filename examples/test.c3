import std::io;
import std::collections::list;
import std::math;
import rgfw;
import vk;

const WIDTH = 800;
const HEIGHT = 600;
const VK_API_VERSION_1_3 = vk::@makeApiVersion(0,1,3,0);
const ENABLE_VALIDATION_LAYERS = false;
const MAX_FRAMES_IN_FLIGHT = 2;

Instance instance;
DebugUtilsMessengerEXT debug_messenger;
PhysicalDevice physical_device;
QueueFamily queue_family;
Device device;
SurfaceKHR surface;
SwapchainKHR swapchain;


ZStringList validations;
ZStringList extensions;
ZStringList device_extensions;

fn void! main(String[] args)
{

}