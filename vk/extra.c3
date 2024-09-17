module vk;

macro uint @makeApiVersion(uint $variant, uint $major, uint $minor, uint $patch) => (($variant << 29) | ($major << 22) | ($minor << 12) | $patch);

distinct Display = inline void*;
distinct Connection = inline void*;
distinct Window = inline ulong;
distinct Hinstance = inline ulong;
distinct Hwnd = inline void*;
distinct VisualID = inline ulong;


def PFN_vkAllocationFunction = fn void* (void*, usz, usz, SystemAllocationScope);
def PFN_vkFreeFunction = fn void (void*, void*);
def PFN_vkInternalAllocationNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
def PFN_vkInternalFreeNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
def PFN_vkReallocationFunction = fn void* (void*, void*, usz, usz, SystemAllocationScope);
def PFN_vkVoidFunction = fn void ();
def PFN_vkDebugReportCallbackEXT = fn uint (DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char, char, void*);
def PFN_vkDebugUtilsMessengerCallbackEXT = fn uint (DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT, void*);

