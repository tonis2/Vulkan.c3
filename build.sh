mkdir -p ./assets
curl https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml --output ./assets/vk.xml
c3c run build

# Neither macOS dylib is committed -- both are release assets, so that neither
# they nor the versions they replaced charge a clone anything. Same fetch the
# release workflow does; it verifies against dylibs.sha256 and is a no-op once
# the files are there.
./fetch-dylibs.sh

# Same layout the release workflow ships: sources under vk/ (what manifest.json
# declares) and the macOS loader + driver dylibs the bindings dlopen at runtime.
# rm first -- zip appends to an existing archive instead of replacing it.
rm -f ./vulkan.c3l
zip -r ./vulkan.c3l ./vk macos-aarch64 manifest.json
