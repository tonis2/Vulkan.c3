curl https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml --output ./assets/vk.xml
dart run main.dart
cp ./build/*.c3 .
zip ./vulkan.c3l ./*.c3 ./manifest.json
rm ./*.c3