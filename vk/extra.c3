module vk;

macro uint @makeApiVersion(uint $variant, uint $major, uint $minor, uint $patch) => (($variant << 29) | ($major << 22) | ($minor << 12) | $patch);

typedef Display = inline void*;
typedef Connection = inline void*;
typedef Window = inline ulong;
typedef Hinstance = inline ulong;
typedef Hwnd = inline void*;
typedef VisualID = inline ulong;
typedef CAMetalLayer = inline void*;
typedef WLSurface = inline void*;

alias PFN_vkAllocationFunction = fn void* (void*, usz, usz, SystemAllocationScope);
alias PFN_vkFreeFunction = fn void (void*, void*);
alias PFN_vkInternalAllocationNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
alias PFN_vkInternalFreeNotification = fn void (void*, usz, InternalAllocationType, SystemAllocationScope);
alias PFN_vkReallocationFunction = fn void* (void*, void*, usz, usz, SystemAllocationScope);
alias PFN_vkVoidFunction = fn void ();
alias PFN_vkDebugReportCallbackEXT = fn uint (DebugReportFlagsEXT, DebugReportObjectTypeEXT, ulong, usz, int, char, char, void*);
alias PFN_vkDebugUtilsMessengerCallbackEXT = fn uint (DebugUtilsMessageSeverityFlagBitsEXT, DebugUtilsMessageTypeFlagsEXT, DebugUtilsMessengerCallbackDataEXT, void*);

