module context;

import std::io;
import std::collections::list;
import vk;
import glfw;
import libc;
import helpers;

const VK_API_VERSION_1_1 = vk::@makeApiVersion(0,1,1,0);
const ENABLE_VALIDATION_LAYERS = true;
const MAX_FRAMES_IN_FLIGHT = 2;

def StringList = List(<ZString>);
def SemaphoreList = List(<VkSemaphore>);
def FenceList = List(<VkFence>);

fault ContextErrors
{
    FAILED_CREATING_VULKAN,
    FAILED_DRAWING_FRAME
}

struct VkContext {
      VkInstance instance;
      VkSurfaceKHR surface;
      VkDevice device;

      SwapChain swapchain;
      VkQueue graphics_queue;
      VkDebugUtilsMessengerEXT debugMessenger;
      VkCommandPool command_pool;
      VkCommandBuffer* command_buffers;

      SemaphoreList image_available_semaphores;
      SemaphoreList render_finished_semaphores;
      FenceList in_flight_fences;
      VkFence* images_in_flight;
      uint current_frame;
}

fn bool debugCallback(
    vk::VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
    vk::VkDebugUtilsMessageTypeFlagsEXT messageType,
    vk::VkDebugUtilsMessengerCallbackDataEXT* data,
    void* userData
) {
    if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    } else if (messageSeverity >= vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT) {
       libc::printf("%s \n", data.pMessage);
    }
    return false;
}

fn void VkContext.free(&self)
{
    vk::deviceWaitIdle(self.device);
    if (ENABLE_VALIDATION_LAYERS) {
      vk::destroyDebugUtilsMessengerEXT(self.instance, self.debugMessenger, null);
    }
    foreach (semaphore : self.image_available_semaphores) {
        vk::destroySemaphore(self.device, semaphore, null);
    }
    foreach (semaphore : self.render_finished_semaphores) {
        vk::destroySemaphore(self.device, semaphore, null);
    }
    foreach (fence : self.in_flight_fences) {
        vk::destroyFence(self.device, fence, null);
    }
    self.image_available_semaphores.free();
    self.render_finished_semaphores.free();
    self.in_flight_fences.free();
    mem::free(self.images_in_flight);

    self.swapchain.free(self.device);
    vk::destroySurfaceKHR(self.instance, self.surface, null);
    vk::destroyCommandPool(self.device, self.command_pool, null);
    mem::free(self.command_buffers);
    vk::destroyDevice(self.device, null);
    vk::destroyInstance(self.instance, null);
}


fn VkContext! init(GLFWwindow window) {

    VkContext context;
    StringList validations;
    StringList extensions;
    validations.add_array({"VK_LAYER_KHRONOS_validation"});
    extensions.add_array({"VK_EXT_debug_report", "VK_EXT_debug_utils"});
    ZString[] device_extensions = {"VK_KHR_swapchain"};

    defer {
        validations.free();
        extensions.free();
    };

    VkApplicationInfo appInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName = "Hello Triangle",
        .applicationVersion = VK_API_VERSION_1_1,
        .pEngineName = "Super engine",
        .engineVersion = VK_API_VERSION_1_1,
        .apiVersion = VK_API_VERSION_1_1,
        .pNext = null,
    };

    // Check if GPU supports requested extensions
    if (!helpers::checkExtensionsSupport(extensions.to_array())) {
        io::printfn("Requested extensions not available");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // SETUP extensions
    uint glfwExtensions_count = 0;
    ZString* glfwExtensions = (ZString*)glfw::getRequiredInstanceExtensions(&glfwExtensions_count);
    for (int i = 0; i < glfwExtensions_count; ++i) extensions.push(glfwExtensions[i]);

    if (ENABLE_VALIDATION_LAYERS) {
        extensions.push(vk::VK_EXT_DEBUG_UTILS_EXTENSION_NAME.zstr_tcopy());
    }

    VkInstanceCreateInfo createInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &appInfo,
        .enabledExtensionCount = (uint)extensions.len(),
        .ppEnabledExtensionNames = (char*)&extensions.to_array()[0],
    };

    VkDebugUtilsMessengerCreateInfoEXT debugInfo;
    if (ENABLE_VALIDATION_LAYERS && helpers::checkValidationLayerSupport(validations.to_array())) {
          debugInfo = {
            .sType = vk::VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
            .pNext = null,
            .flags = 0,
            .messageSeverity = vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT,
            .messageType = vk::VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | vk::VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT,
            .pfnUserCallback = (PFN_vkDebugUtilsMessengerCallbackEXT)&debugCallback,
            .pUserData = null,
        };
        createInfo.enabledLayerCount = (uint)validations.len();
        createInfo.ppEnabledLayerNames = (char*)&validations.to_array()[0];
        createInfo.pNext = &debugInfo;
    }

    if (vk::createInstance(&createInfo, null, &context.instance) != vk::VK_SUCCESS) {
      io::printfn("Failed to create instance");
      return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Must load extension pointers to cache, before using extensions !
    vk::loadExtensions(context.instance);

    // Load extension pointers
    if (ENABLE_VALIDATION_LAYERS) {
       if (vk::createDebugUtilsMessengerEXT(context.instance, &debugInfo, null, &context.debugMessenger) != vk::VK_SUCCESS) {
          io::printfn("Failed to create instance");
          return ContextErrors.FAILED_CREATING_VULKAN?;
        }
    }

    if (glfw::createWindowSurface(context.instance, window, null, &context.surface) != vk::VK_SUCCESS) {
        io::printfn("Failed creating surface");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    uint deviceCount;
    if (vk::enumeratePhysicalDevices(context.instance, &deviceCount, null) != vk::VK_SUCCESS) {
        io::printf("Failed getting devices");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    VkPhysicalDevice! physicalDevice = helpers::getSuitablePhysicalDevice(context.instance, context.surface, device_extensions);
    if (catch err = physicalDevice) {
        io::printfn("Failed to create physical device");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    QueueFamily! indices = helpers::findQueueFamily(physicalDevice, context.surface);
    if (catch err = indices) {
        io::printfn("Failed to get Queue family indices");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Set-up Queues
    float queuePriorities = 1.0;
    VkDeviceQueueCreateInfo graphicsInfo = { .sType = vk::VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
                                            .queueFamilyIndex = indices.graphics,
                                            .queueCount = 1,
                                            .pQueuePriorities = &queuePriorities};

    VkDeviceCreateInfo deviceCreateInfo = {
        .sType = vk::VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .pQueueCreateInfos = &graphicsInfo,
        .queueCreateInfoCount = 1,
        .pEnabledFeatures = {},
        .enabledExtensionCount = (uint)device_extensions.len,
        .ppEnabledExtensionNames = (char*)&device_extensions[0],
        .enabledLayerCount = 0,
        .pNext = null,
        .flags = 0,
    };

    if (ENABLE_VALIDATION_LAYERS) {
        deviceCreateInfo.enabledLayerCount = (uint)validations.len();
        deviceCreateInfo.ppEnabledLayerNames = (char*)&validations.to_array()[0];
    }

    if (vk::createDevice(physicalDevice, &deviceCreateInfo, null, &context.device) != vk::VK_SUCCESS) {
      io::printfn("Failed to create logical device");
      return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    vk::getDeviceQueue(context.device, indices.graphics, 0, &context.graphics_queue);

    if (catch err = helpers::create_swapchain(physicalDevice, context.device, context.surface, &context.swapchain)) {
        io::printfn("Failed to create swapchain");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Create command pool and command buffers
    VkCommandPoolCreateInfo pool_info = {
     .sType = vk::VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
     .pNext = null,
     .flags = 0,
     .queueFamilyIndex = indices.graphics,
    };

    if (vk::createCommandPool(context.device, &pool_info, null, &context.command_pool) != vk::VK_SUCCESS) {
        io::printfn("Failed to create command pool");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    context.command_buffers = malloc(VkCommandBuffer, context.swapchain.image_count);
    VkCommandBufferAllocateInfo command_buffer_info = {
        .sType = vk::VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = context.command_pool,
        .level = vk::VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = context.swapchain.image_count,
    };

    if (vk::allocateCommandBuffers(context.device, &command_buffer_info, context.command_buffers) != vk::VK_SUCCESS) {
        io::printfn("Failed to create command buffers");
        return ContextErrors.FAILED_CREATING_VULKAN?;
    }

    // Create Syncronisation buffers
    for (int i = 0; i < MAX_FRAMES_IN_FLIGHT; ++i) {
        VkSemaphore image_available;
        VkSemaphore render_finished;
        VkFence in_flight_fence;

        VkSemaphoreCreateInfo semaphore_info = {
            .sType = vk::VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
            .pNext = null,
            .flags = 0,
        };
        VkFenceCreateInfo fence_info = {
            .sType = vk::VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
            .pNext = null,
            .flags = vk::VK_FENCE_CREATE_SIGNALED_BIT,
        };
        if (vk::createSemaphore(context.device, &semaphore_info, null, &image_available) != vk::VK_SUCCESS) {
            io::printfn("Failed to create semaphore buffers");
            return ContextErrors.FAILED_CREATING_VULKAN?;
        }
        if (vk::createSemaphore(context.device, &semaphore_info, null, &render_finished) != vk::VK_SUCCESS) {
            io::printfn("Failed to create semaphore buffers");
            return ContextErrors.FAILED_CREATING_VULKAN?;
        }
        if (vk::createFence(context.device, &fence_info, null, &in_flight_fence) != vk::VK_SUCCESS) {
            io::printfn("Failed to create semaphore buffers");
            return ContextErrors.FAILED_CREATING_VULKAN?;
        }

        context.image_available_semaphores.push(image_available);
        context.render_finished_semaphores.push(render_finished);
        context.in_flight_fences.push(in_flight_fence);
    }

    context.images_in_flight = malloc(VkFence, context.swapchain.image_count);

    return context;
}


fn void! VkContext.draw_frame(&self)
{
   if (vk::waitForFences(self.device, 1, self.in_flight_fences[self.current_frame], true, uint.max) != vk::VK_SUCCESS) {
        io::printfn("Failed to create wait fence");
        return ContextErrors.FAILED_DRAWING_FRAME?;
   };

    uint image_index;
    VkResult next_image = vk::acquireNextImageKHR(self.device, self.swapchain.swapchain, uint.max, self.image_available_semaphores[self.current_frame], null, &image_index);

    if (next_image == vk::VK_ERROR_OUT_OF_DATE_KHR) {
        // Recreate swapchain
        io::printfn("Vk needs new swapchain");
    }

    if (next_image != vk::VK_SUCCESS || next_image != vk::VK_SUBOPTIMAL_KHR) {
        io::printfn("Failed to create wait fence");
        return ContextErrors.FAILED_DRAWING_FRAME?;
    }

    if (vk::waitForFences(self.device, 1, &self.images_in_flight[image_index], true, uint.max) != vk::VK_SUCCESS) {
        io::printfn("Previous frame still in use");
        return ContextErrors.FAILED_DRAWING_FRAME?;
    };

     self.images_in_flight[image_index] = self.in_flight_fences[self.current_frame];

    VkSemaphore[] wait_semaphores = {self.image_available_semaphores[self.current_frame]};
    VkSemaphore[] signal_semaphores = {self.render_finished_semaphores[self.current_frame]};
    VkPipelineStageFlags[] wait_stages = {vk::VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT};

    VkSubmitInfo submit_info = {
        .sType = vk::VK_STRUCTURE_TYPE_SUBMIT_INFO,
        .pNext = null,
        .waitSemaphoreCount = 1,
        .pWaitSemaphores = &wait_semaphores,
        .pWaitDstStageMask = &wait_stages,
        .commandBufferCount = 1,
        .pCommandBuffers = &self.command_buffers[image_index],
        .signalSemaphoreCount = 1,
        .pSignalSemaphores = &signal_semaphores,
    };

    vk::resetFences(self.device, 1, &self.in_flight_fences[self.current_frame]);
    if (vk::queueSubmit(self.graphics_queue, 1, &submit_info, self.in_flight_fences[self.current_frame]) != vk::VK_SUCCESS) {
        io::printfn("Submitting draw queue failed");
        return ContextErrors.FAILED_DRAWING_FRAME?;
    }

     VkSwapchainKHR[] swapchains = {self.swapchain.swapchain};
     VkPresentInfoKHR present_info = {
         .sType = vk::VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
         .pNext = null,
         .waitSemaphoreCount = 1,
         .pWaitSemaphores = &signal_semaphores,
         .swapchainCount = 1,
         .pSwapchains = &swapchains,
         .pImageIndices = &image_index,
         .pResults = null,
     };

    VkResult present_result = vk::queuePresentKHR(self.graphics_queue, &present_info);
    if (present_result == vk::VK_ERROR_OUT_OF_DATE_KHR || present_result == vk::VK_SUBOPTIMAL_KHR) {
        // Recreate SwapChain
        io::printfn("Vk needs new swapchain");
    } else if (present_result != vk::VK_SUCCESS) {
        io::printfn("Queue present failed");
        return ContextErrors.FAILED_DRAWING_FRAME?;
    }

    self.current_frame = (self.current_frame + 1) % MAX_FRAMES_IN_FLIGHT;
}