module window;

extern fn void* getInstanceProcAddress (VkInstance instance, char *procname) @extern("glfwGetInstanceProcAddress");
extern fn VkResult createWindowSurface (VkInstance instance, GLFWwindow *window, VkAllocationCallbacks *allocator, VkSurfaceKHR *surface) @extern("glfwCreateWindowSurface");