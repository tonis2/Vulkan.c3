module glfw;
import vk;
import std::io;

def GLFWwindow = void*;
def GLFWmonitor = void*;
def GLproc = void*;
def KeyCallback = fn void(GLFWwindow window, int key, int scancode, int action, int mods);
def MouseCallback = fn void(GLFWwindow window, int button, int action, int mods);
def MouseEvent = fn void(EventHandler*);
def KeyboardEvent = fn void(EventHandler*, uint key);

fault GlfwErrors {
  FAILED_CREATING_SURFACE,
}

const GLFW_RELEASE = 0;
const GLFW_PRESS = 1;
const GLFW_REPEAT = 2;

const CONTEXT_VERSION_MAJOR = 0x00022002;
const CONTEXT_VERSION_MINOR = 0x00022003;
const CONTEXT_REVISION = 0x00022004;

const CONTEXT_RELEASE_BEHAVIOR = 0x00022009;
const CONTEXT_CREATION_API = 0x0002200B;
const COCOA_RETINA_FRAMEBUFFER = 0x00023001;
const COCOA_FRAME_NAME = 0x00023002;

const COCOA_GRAPHICS_SWITCHING = 0x00023003;
const X11_CLASS_NAME = 0x00024001;
const X11_INSTANCE_NAME = 0x00024002;

const OPENGL_PROFILE = 0x00022008;
const OPENGL_CORE_PROFILE = 0x00032001;
const OPENGL_COMPAT_PROFILE = 0x00032002;
const OPENGL_FORWARD_COMPAT = 0x00022006;

const GLFW_CLIENT_API = 0x00022001;
const GLFW_CONTEXT_VERSION_MAJOR = 0x00022002;
const GLFW_CONTEXT_VERSION_MINOR = 0x00022003;
const GLFW_NO_API = 0;
const GLFW_RESIZABLE = 0x00020003;
const GLFW_TRUE = 1;
const GLFW_FALSE = 0;

EventHandler* handle;

struct EventHandler {
    double mouse_x_pos;
    double mouse_y_pos;
    double mouse_x_delta;
    double mouse_y_delta;
    bool left_mouse_click;
    bool right_mouse_click;
    GLFWwindow window;
    KeyboardEvent on_keyboard_event;
    MouseEvent on_mouse_event;
    uint last_key;
}


fn EventHandler createHandler(EventHandler info) {
    setMouseButtonCallback(info.window, (MouseCallback*)&mouseEvents);
    setKeyCallback(info.window, (KeyCallback*)&keyboardEvents);
    handle = &info;
    return info;
}

fn void mouseEvents(GLFWwindow window, int button, int action, int mods) {
    // left mouse button action
    if (button == 0) {
        if (action == 1) {
            handle.left_mouse_click = true;
        } else {
            handle.left_mouse_click = false;
        }
    }

    // right button
    if (button == 1) {
        if (action == 1) {
            handle.right_mouse_click = true;
        } else {
            handle.right_mouse_click = false;
        }
    }

  /*  handle.on_mouse_event(handle);*/
}

fn void keyboardEvents(GLFWwindow window, int key, int scancode, int action, int mods) {
    handle.last_key = key;
    /*handle.on_keyboard_event(handle, key);*/
}


fn void EventHandler.update(&self) {
    glfw::pollEvents();
    double x_local, y_local;
    getCursorPos(self.window, &x_local, &y_local);

    self.mouse_x_delta = x_local - self.mouse_x_pos;
    self.mouse_y_delta = y_local - self.mouse_y_pos;

    self.mouse_x_pos = x_local;
    self.mouse_y_pos = y_local;
}

extern fn void init() @extern("glfwInit");
extern fn void windowHint(int, int) @extern("glfwWindowHint");
extern fn void pollEvents() @extern("glfwPollEvents");
extern fn void swapBuffers(GLFWwindow window) @extern("glfwSwapBuffers");
extern fn void destroyWindow(GLFWwindow window) @extern("glfwDestroyWindow");
extern fn void makeContextCurrent(GLFWwindow window) @extern("glfwMakeContextCurrent");
extern fn void getFramebufferSize(GLFWwindow window, uint* width, uint* height) @extern("glfwGetFramebufferSize");
extern fn double getTime() @extern("glfwGetTime");
extern fn void terminate() @extern("glfwTerminate");

extern fn GLproc getProcAddress(char*) @extern("glfwGetProcAddress");
extern fn bool windowShouldClose(GLFWwindow window) @extern("glfwWindowShouldClose");
extern fn bool getCursorPos(GLFWwindow window, double* x_pos, double* y_pos) @extern("glfwGetCursorPos");
extern fn void setKeyCallback(GLFWwindow window, KeyCallback* callback) @extern("glfwSetKeyCallback");
extern fn void setMouseButtonCallback(GLFWwindow window, MouseCallback* callback) @extern("glfwSetMouseButtonCallback");
extern fn GLFWwindow createWindow(int, int, char*, GLFWmonitor, GLFWwindow) @extern("glfwCreateWindow");

extern fn char* getRequiredInstanceExtensions (uint *count) @extern("glfwGetRequiredInstanceExtensions");
extern fn void* getInstanceProcAddress (vk::Instance instance, char *procname) @extern("glfwGetInstanceProcAddress");
extern fn vk::Result vKcreateWindowSurface (vk::Instance instance, GLFWwindow *window, vk::AllocationCallbacks *allocator, vk::SurfaceKHR *surface) @extern("glfwCreateWindowSurface");

fn vk::SurfaceKHR! createWindowSurface(vk::Instance instance, GLFWwindow *window, vk::AllocationCallbacks *allocator) {
    vk::SurfaceKHR surface;
    if (vKcreateWindowSurface(instance, window, allocator, &surface) != 0)
    {
        return GlfwErrors.FAILED_CREATING_SURFACE?;
    }

    return surface;
}