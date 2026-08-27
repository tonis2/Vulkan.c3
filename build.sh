mkdir -p ./assets
curl https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml --output ./assets/vk.xml
c3c run build

# The KosmicKrisp driver is not committed -- it is a release asset, so that
# neither it nor the versions it replaced charge a clone anything. Same fetch the
# release workflow does; it verifies against driver.sha256 and is a no-op once
# the file is there.
./fetch-driver.sh

# Same layout the release workflow ships: sources under vk/ (what manifest.json
# declares) and the macOS loader + driver dylibs the bindings dlopen at runtime.
# rm first -- zip appends to an existing archive instead of replacing it.
rm -f ./vulkan.c3l
zip -r ./vulkan.c3l ./vk macos-aarch64 manifest.json
