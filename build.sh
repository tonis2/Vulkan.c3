mkdir -p ./assets
curl https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml --output ./assets/vk.xml
c3c run build

# Same layout the release workflow ships: sources under vk/ (what manifest.json
# declares) and the macOS loader + driver dylibs the bindings dlopen at runtime.
# rm first -- zip appends to an existing archive instead of replacing it.
rm -f ./vulkan.c3l
zip -r ./vulkan.c3l ./vk macos-aarch64 manifest.json
