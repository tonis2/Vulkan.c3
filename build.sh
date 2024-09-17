mkdir -p ./assets
curl https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml --output ./assets/vk.xml
c3c run build
cp ./vk/*.c3 .
zip ./vulkan.c3l ./*.c3 ./manifest.json
rm ./*.c3