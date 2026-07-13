<*
 VK_LUNARG_direct_driver_loading — use a Vulkan driver the application ships
 itself, instead of one installed on the machine.

 Normally the loader discovers drivers by scanning for ICD manifests (the JSON
 files under /usr/local/share/vulkan/icd.d, the Windows registry, or whatever
 `VK_DRIVER_FILES` points at). An application that bundles its own driver cannot
 rely on any of that — it has nothing installed to find. This extension closes
 the gap: hand the loader the driver's `vk_icdGetInstanceProcAddr` in the
 `InstanceCreateInfo` pNext chain and it is used directly. No ICD manifest, no
 environment variable, no system installation.

     `PFN_vkGetInstanceProcAddrLUNARG icd = vk::loadDriver(path)!;`
     `DirectDriverLoadingInfoLUNARG driver = vk::directDriverInfo(icd);`
     `DirectDriverLoadingListLUNARG drivers = vk::directDriverList(&driver, 1);`
     `instance_info.pNext = &drivers;`
     `// ...and enable vk::DIRECT_DRIVER_LOADING_EXTENSION_NAME on the instance.`

 This is worth reaching for only when you actually ship the driver. On Linux and
 Windows the right driver is bound to the GPU and the kernel module, so the
 machine's own is the only correct one and it is always already installed — let
 the loader find it. It earns its keep where there is no system driver to find:
 a Metal translation layer on macOS, or a software rasterizer shipped for
 headless CI.

 Note the loader itself is still required — an ICD exports only the three
 `vk_icd*` entry points, never `vkCreateInstance`, so it cannot be linked
 against directly.
*>
module vk;

extern fn void* loadLibraryA(char* name) @cname("LoadLibraryA") @private @if(env::WIN32);
extern fn void* getProcAddress(void* handle, char* symbol) @cname("GetProcAddress") @private @if(env::WIN32);

extern fn void* dlopen(char* filename, int flags) @cname("dlopen") @private @if(!env::WIN32);
extern fn void* dlsym(void* handle, char* symbol) @cname("dlsym") @private @if(!env::WIN32);
const int RTLD_LAZY @private @if(!env::WIN32) = 1;

const ZString DIRECT_DRIVER_LOADING_EXTENSION_NAME = "VK_LUNARG_direct_driver_loading";

faultdef DRIVER_NOT_LOADED;

<*
 The entry point every Vulkan driver exports, whatever the platform: the ICD
 interface the loader itself talks to.
*>
alias PFN_vkGetInstanceProcAddrLUNARG = fn PFN_vkVoidFunction(Instance, char*);

<*
 One driver handed to the loader. `pfnGetInstanceProcAddr` is what `loadDriver`
 returns.
*>
struct DirectDriverLoadingInfoLUNARG {
   StructureType sType;
   void* pNext;
   DirectDriverLoadingFlagsLUNARG flags;
   PFN_vkGetInstanceProcAddrLUNARG pfnGetInstanceProcAddr;
}

<*
 The list of directly-loaded drivers, chained into `InstanceCreateInfo.pNext`.
 EXCLUSIVE mode uses only these drivers; INCLUSIVE adds them to whatever the
 loader discovers on the machine.
*>
struct DirectDriverLoadingListLUNARG {
   StructureType sType;
   void* pNext;
   DirectDriverLoadingModeLUNARG mode;
   uint driverCount;
   DirectDriverLoadingInfoLUNARG* pDrivers;
}

<*
 Open a driver shared library and hand back its ICD entry point.

 @param path : `Path to the driver (.dylib / .so / .dll) the application ships.`
 @return `The driver's vk_icdGetInstanceProcAddr, ready for directDriverInfo.`
 @return? DRIVER_NOT_LOADED : `The file could not be opened, or exports no ICD entry point.`
*>
fn PFN_vkGetInstanceProcAddrLUNARG? loadDriver(String path)
{
	@pool()
	{
		void* handle;
		$if env::WIN32:
			handle = loadLibraryA(path.zstr_tcopy());
		$else
			handle = dlopen(path.zstr_tcopy(), RTLD_LAZY);
		$endif
		if (handle == null) return DRIVER_NOT_LOADED~;

		void* entry;
		$if env::WIN32:
			entry = getProcAddress(handle, "vk_icdGetInstanceProcAddr");
		$else
			entry = dlsym(handle, "vk_icdGetInstanceProcAddr");
		$endif
		if (entry == null) return DRIVER_NOT_LOADED~;

		return (PFN_vkGetInstanceProcAddrLUNARG)entry;
	};
}

<*
 Try each path in turn and return the first driver that loads. Lets an app state
 a preference order — an override, next to the executable, the library folder —
 without caring which one exists.

 @param paths : `Candidate driver paths, most preferred first.`
 @return? DRIVER_NOT_LOADED : `None of the paths yielded a usable driver.`
*>
fn PFN_vkGetInstanceProcAddrLUNARG? findDriver(String[] paths)
{
	foreach (path : paths)
	{
		if (try icd = loadDriver(path)) return icd;
	}
	return DRIVER_NOT_LOADED~;
}

<*
 The driver this library ships for macOS, the one platform with no system
 Vulkan: KosmicKrisp, a Metal translation layer, in the `macos-aarch64/`
 directory the .c3l carries. Looked for in the same locations as the bundled
 loader (see DEFAULT_LOADER_PATHS in loader.c3) — but only the bundled ones:
 an installed driver is the loader's own discovery to make, not direct
 loading's.

 Finding nothing is not an error: fall back to the loader's discovery, which
 is what happens when developing against a system Vulkan SDK.

 @return? DRIVER_NOT_LOADED : `No bundled driver — fall back to the loader's own discovery.`
*>
fn PFN_vkGetInstanceProcAddrLUNARG? findBundledDriver() @if(env::DARWIN)
{
	return findDriver({
		"@executable_path/libvulkan_kosmickrisp.dylib",
		"build/unpacked_c3l/vulkan.c3l/macos-aarch64/libvulkan_kosmickrisp.dylib",
		"macos-aarch64/libvulkan_kosmickrisp.dylib",
		"lib/vulkan.c3l/macos-aarch64/libvulkan_kosmickrisp.dylib",
	});
}

<*
 No bundled driver on this platform: the machine's own driver is bound to the
 GPU and the kernel module, and the loader finds it.

 @return? DRIVER_NOT_LOADED : `Always — nothing is bundled here.`
*>
fn PFN_vkGetInstanceProcAddrLUNARG? findBundledDriver() @if(!env::DARWIN)
{
	return DRIVER_NOT_LOADED~;
}

<*
 Whether the loader on this machine implements direct driver loading. Older
 loaders do not, so probe before enabling the extension and fall back to the
 loader's own driver discovery.
*>
fn bool supportsDirectDriverLoading()
{
	ZStringList probe;
	probe.push(DIRECT_DRIVER_LOADING_EXTENSION_NAME);
	defer probe.free();

	if (catch checkInstanceExtensionSupport(probe)) return false;
	return true;
}

<*
 @param icd : `The driver entry point from loadDriver / findDriver.`
 @return `A driver entry for a DirectDriverLoadingListLUNARG.`
*>
fn DirectDriverLoadingInfoLUNARG directDriverInfo(PFN_vkGetInstanceProcAddrLUNARG icd)
{
	return {
		.sType = StructureType.STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_INFO_LUNARG,
		.pNext = null,
		.flags = 0,
		.pfnGetInstanceProcAddr = icd,
	};
}

<*
 @param drivers : `The driver entries, which must outlive vkCreateInstance.`
 @param count : `How many entries.`
 @param mode : `EXCLUSIVE (default) uses only these drivers; INCLUSIVE also uses installed ones.`
 @return `The list to chain into InstanceCreateInfo.pNext.`
*>
fn DirectDriverLoadingListLUNARG directDriverList(
	DirectDriverLoadingInfoLUNARG* drivers,
	uint count,
	DirectDriverLoadingModeLUNARG mode = DirectDriverLoadingModeLUNARG.DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG
)
{
	return {
		.sType = StructureType.STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_LIST_LUNARG,
		.pNext = null,
		.mode = mode,
		.driverCount = count,
		.pDrivers = drivers,
	};
}
