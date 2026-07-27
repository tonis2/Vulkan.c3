<*
 Volk-style bootstrap for the Vulkan loader.

 Nothing in these bindings links against Vulkan: every command is a function
 pointer, resolved at runtime in three stages.

 1. `vk::init()` opens the loader library, pulls `vkGetInstanceProcAddr` out
    of it, and binds the global-level commands — enough to query instance
    extensions and layers and to call `vkCreateInstance`.
 2. Creating an instance (`InstanceCreateInfo.build`, or `loadExtensions`
    directly) binds every remaining command through `vkGetInstanceProcAddr`,
    core and extension alike.
 3. `vk::loadDeviceCommands(device)` is an optional third stage: it rebinds
    device-level commands through `vkGetDeviceProcAddr`, so calls dispatch
    straight into the driver instead of through the loader trampoline.

 `init` must run before anything else in this library. The pointers start out
 null, and a command called before `init` is a crash, not a link error. The
 pointer table is global — one loader per process, and the second and later
 instances reuse whatever the last `loadExtensions` bound, which is the same
 assumption the `extensions` table always made.
*>
module vk;

faultdef LOADER_NOT_FOUND;

<*
 The directory this .c3l occupies, taken from the compile-time path of this
 source file with its last two segments (`vk/loader.c3`) cut off.

 c3c builds this library from source, so this file's own path is the one thing
 that always knows where the checkout ended up — a submodule under
 `dependencies/`, a vendored copy under `lib/`, the folder c3c unpacks a
 downloaded .c3l into, or a plain clone. That makes the shipped loader and
 driver findable without the working directory having to be the project root,
 which is what every relative candidate below silently assumes.

 The path names the build machine, so it means nothing once the binary is
 copied elsewhere. That costs nothing: it is tried after `@executable_path`,
 and a path that will not open is simply skipped.
*>
fn String c3l_root() @private => trim_segments($$FILEPATH, 2);

<*
 Drop `count` trailing path segments. Both separators are handled rather than
 guessing which platform's c3c produced the path.
*>
fn String trim_segments(String path, uint count) @private
{
	usz cut = path.len;
	for (uint i = 0; i < count; i++)
	{
		while (cut > 0 && path[cut - 1] != '/' && path[cut - 1] != '\\') cut--;
		if (cut > 0) cut--;
	}
	return path[:cut];
}

<*
 Open a file the .c3l ships in its platform folder, located relative to this
 source file rather than to the working directory.
*>
fn bool bind_bundled_loader(String name) @private @if(env::DARWIN)
{
	@pool()
	{
		return bind_loader(string::tformat("%s/macos-aarch64/%s", c3l_root(), name));
	};
}

<*
 Where the loader is looked for when the caller states no preference. Linux
 and Windows use the names the platform installs it under, searched by the
 system linker in its usual places.

 macOS has no system Vulkan, so the library ships the loader itself, in the
 `macos-aarch64/` directory this .c3l carries — and dyld searches no fallback
 directories for a bare dlopen name, so every location is spelled out: next to
 the executable (a shipped app), the folder c3c unpacks a downloaded .c3l
 into, the checkout of this repository (its examples, or a project vendoring
 it as a submodule under lib/), and last a LunarG SDK system install. The
 paths with a slash are resolved against the working directory, which for
 `c3c run` is the project root.

 That working-directory assumption is why `init` falls back to `c3l_root`: it
 covers the layouts not guessed here — `dependencies/`, the c3c convention —
 and holds whatever directory the program is run from.
*>
const String[*] DEFAULT_LOADER_PATHS @private @if(env::WIN32) = { "vulkan-1.dll" };
const String[*] DEFAULT_LOADER_PATHS @private @if(env::DARWIN) = {
	"@executable_path/libvulkan.1.dylib",
	"build/unpacked_c3l/vulkan.c3l/macos-aarch64/libvulkan.1.dylib",
	"macos-aarch64/libvulkan.1.dylib",
	"lib/vulkan.c3l/macos-aarch64/libvulkan.1.dylib",
	"libvulkan.dylib", "libvulkan.1.dylib",
	"/usr/local/lib/libvulkan.1.dylib", "/usr/local/lib/libvulkan.dylib",
};
const String[*] DEFAULT_LOADER_PATHS @private @if(!env::WIN32 && !env::DARWIN) = { "libvulkan.so.1", "libvulkan.so" };

<*
 Whether `init` has already found a loader.
*>
fn bool initialized() => getInstanceProcAddr != null;

<*
 Open the Vulkan loader and bind the global-level commands. Idempotent: once a
 loader is bound, further calls return immediately.

 @param loader_paths : `Candidate loader paths tried before the platform default names, most preferred first.`
 @return? LOADER_NOT_FOUND : `No candidate could be opened, or none exports vkGetInstanceProcAddr.`
*>
fn void? init(String[] loader_paths = {})
{
	if (initialized()) return;
	foreach (path : loader_paths) if (bind_loader(path)) return;
	foreach (path : DEFAULT_LOADER_PATHS) if (bind_loader(path)) return;
	// Last, because it is the only candidate that cannot be wrong about which
	// copy the caller meant: the one this build compiled against.
	$if env::DARWIN:
		if (bind_bundled_loader("libvulkan.1.dylib")) return;
	$endif
	return LOADER_NOT_FOUND~;
}

<*
 Open one candidate and, when it exports vkGetInstanceProcAddr, bind the
 global-level commands from it. The library handle is deliberately never
 closed: the loader stays resident for the life of the process.
*>
fn bool bind_loader(String path) @private
{
	@pool()
	{
		void* handle;
		$if env::WIN32:
			handle = loadLibraryA(path.zstr_tcopy());
		$else
			handle = dlopen(path.zstr_tcopy(), RTLD_LAZY);
		$endif
		if (handle == null) return false;

		void* entry;
		$if env::WIN32:
			entry = getProcAddress(handle, "vkGetInstanceProcAddr");
		$else
			entry = dlsym(handle, "vkGetInstanceProcAddr");
		$endif
		if (entry == null) return false;

		loadGlobalCommands((PFN_vkGetInstanceProcAddr)entry);
		return true;
	};
}
