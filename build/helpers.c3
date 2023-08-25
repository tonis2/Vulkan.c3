module vk;

fn void VkDevice.free(&self)
{
    vk::destroyDevice(self, null);
}