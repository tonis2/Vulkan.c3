mkdir -p ./assets
curl https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml --output ./assets/vk.xml
c3c run build

# The KosmicKrisp driver is not committed -- it lives on the `driver` orphan
# branch, one revision at a time, so that bumping it does not charge every clone
# for the versions it replaced. Same fetch the release workflow does.
if [ ! -f ./macos-aarch64/libvulkan_kosmickrisp.dylib ]; then
  git fetch --depth 1 origin driver
  git cat-file blob FETCH_HEAD:libvulkan_kosmickrisp.dylib \
    > ./macos-aarch64/libvulkan_kosmickrisp.dylib
  chmod 755 ./macos-aarch64/libvulkan_kosmickrisp.dylib
fi

# Same layout the release workflow ships: sources under vk/ (what manifest.json
# declares) and the macOS loader + driver dylibs the bindings dlopen at runtime.
# rm first -- zip appends to an existing archive instead of replacing it.
rm -f ./vulkan.c3l
zip -r ./vulkan.c3l ./vk macos-aarch64 manifest.json
