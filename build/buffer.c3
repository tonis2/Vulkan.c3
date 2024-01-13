module vk;
import std::io;
import std::collections::list;
import std::collections::map;

def BlockList = List(<MemoryBlock>);
def AllocationList = List(<Allocation>);

fault BufferError
{
    BUFFER_TOO_SMALL,
    ALLOCATION_NOT_FOUND,
    ALLOCATION_HAS_NO_ROOM
}

/*struct MemoryPool {
    ulong size;
    BufferList buffers;
    Device device;

    PhysicalDevice pdevice;
    AllocationList allocations;
}*/

/*
fn Allocation! MemoryPool.createBuffer(&self, BufferCreateInfo buffer_info, MemoryPropertyFlags properties) {
    Buffer buffer;
    createBuffer(device, &info, null, &buffer)!;
    MemoryRequirements mem_reqs = buffer.memoryRequirements(self.device);
    bool found_memory = false;

    foreach (allocation : self.allocations) {
        if ((allocation.properties & properties) == properties) {
            bindBufferMemory(self.device, buffer, allocation.memory, allocation.used_size)!;
            found_memory = true;
            break;
        }
    }
    if (!found_memory) return BufferError.ALLOCATION_NOT_FOUND;
}
*/


fn usz roundUp(usz value, usz factor)  => value + factor - 1 - (value + factor - 1) % factor;

enum BufferType {
    IMAGE,
    BUFFER,
}

struct Allocation {
    Device device;
    PhysicalDevice pdevice;
    DeviceMemory memory;
    ulong size;
    BlockList blocks;
    ulong used_size;
    uint buffer_count;
    bool device_address;
    void* mapped;
    MemoryPropertyFlags properties;
}

fn Allocation! Allocation.build(&self) {
    DeviceMemory memory;

    if (self.device_address == true) {
        memory = memoryAllocateInfoBuilder()
                .setAllocationSize(self.size)
                .setNext(&&MemoryAllocateFlagsInfo {.sType = STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO, .flags = MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT | MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT })
                .setMemoryTypeIndex(self.pdevice.getMemoryType2(self.properties))
                .build(self.device)!;
    } else {
       memory = memoryAllocateInfoBuilder()
                .setAllocationSize(self.size)
                .setMemoryTypeIndex(self.pdevice.getMemoryType2(self.properties))
                .build(self.device)!;
    }

    self.memory = memory;
    self.used_size = 0;
    self.buffer_count = 0;

    // Map data, when not meanth for DEVICE LOCAL memory
    if (self.properties & MEMORY_PROPERTY_DEVICE_LOCAL_BIT != self.properties) {
        vk::mapMemory(self.device, self.memory, 0, self.size, 0, &self.mapped)!;
    }

    return *self;
}

fn void Allocation.free(&self) {
    foreach (block_info: self.blocks) block_info.free(self.device);
    freeMemory(self.device, self.memory, null);
    self.blocks.free();
}

struct MemoryBlock {
    uint id;
    BufferType type;
    Buffer buffer;
    vk::Image image;
    DeviceMemory memory;
    ulong size;
    ulong offset;
    void* mapped;
    bool is_used;
    DeviceAddress address;
}

macro void! Device.@staging_buffer(self, usz size, void* data, PhysicalDevice pdevice; @body(Buffer buffer))
{
    Buffer staging_buffer = BufferCreateInfo {
      .sType = STRUCTURE_TYPE_BUFFER_CREATE_INFO,
      .pNext = null,
      .flags = 0,
      .size = size,
      .usage = BUFFER_USAGE_TRANSFER_SRC_BIT,
      .sharingMode = SHARING_MODE_EXCLUSIVE,
      .queueFamilyIndexCount = 0,
      .pQueueFamilyIndices = null,
    }.build(self)!;

    MemoryRequirements mem_reqs = staging_buffer.memoryRequirements(self);
    DeviceMemory memory = memoryAllocateInfoBuilder()
                .setAllocationSize(mem_reqs.size)
                .setMemoryTypeIndex(pdevice.getMemoryType(MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,  mem_reqs.memoryTypeBits))
                .build(self)!;

    bindBufferMemory(self, staging_buffer, memory, 0)!;
    void* mapped;
    vk::mapMemory(self, memory, 0, size, 0, &mapped)!;
    mem::copy(mapped, data, size);
    vk::unmapMemory(self, memory);

    @body(staging_buffer);

    destroyBuffer(self, staging_buffer, null);
    freeMemory(self, memory, null);
}

fn void MemoryBlock.free(&self, Device device)
{
    if (self.type == BufferType.BUFFER) {
        destroyBuffer(device, self.buffer, null);
    }

    if (self.type == BufferType.IMAGE) {
        destroyImage(device, self.image, null);
    }
}

fn MemoryBlock MemoryBlock.getAddress(&self, Device device)
{
    BufferDeviceAddressInfo address_info = {
        .sType = STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO,
        .buffer = self.buffer
    };
    self.address = getBufferDeviceAddress(device, &address_info);
    return *self;
}

fn void MemoryBlock.upload(&self, void* data, ulong size, Device device)
{
    mem::copy(self.mapped + self.offset, data, size);
}

fn MemoryBlock! vk::Buffer.bind(self, Allocation* allocation)
{
    MemoryRequirements mem_reqs = self.memoryRequirements(allocation.device);

    if (allocation.size - allocation.used_size < mem_reqs.size) {
       io::printfn("Allocation has no room");
       return BufferError.ALLOCATION_HAS_NO_ROOM?;
    }

    usz offset = roundUp(allocation.used_size, mem_reqs.alignment);
    bindBufferMemory(allocation.device, self, allocation.memory, offset)!;

    MemoryBlock block = {
        .is_used = true,
        .offset = offset,
        .id = allocation.buffer_count - 1,
        .buffer = self,
        .memory = allocation.memory,
        .size = mem_reqs.size,
        .mapped = allocation.mapped,
        .type = BufferType.BUFFER,
    };

    allocation.used_size += mem_reqs.size;
    allocation.buffer_count += 1;
    allocation.blocks.push(block);

    return block;
}

fn MemoryBlock! vk::Image.bind(self, Allocation* allocation)
{
    vk::MemoryRequirements mem_reqs = self.getMemoryRequirements(allocation.device);

    if (allocation.size - allocation.used_size < mem_reqs.size) {
       io::printfn("Allocation has no room");
       return BufferError.ALLOCATION_HAS_NO_ROOM?;
    }

    usz offset = roundUp(allocation.used_size, mem_reqs.alignment);
    bindImageMemory(allocation.device, self, allocation.memory, offset)!;

    MemoryBlock block = {
        .is_used = true,
        .offset = offset,
        .id = allocation.buffer_count - 1,
        .image = self,
        .size = mem_reqs.size,
        .memory = allocation.memory,
        .type = BufferType.IMAGE,
    };

    allocation.used_size += mem_reqs.size;
    allocation.buffer_count += 1;
    allocation.blocks.push(block);

    return block;
}

fn MemoryRequirements Buffer.memoryRequirements(self, Device device) {
    MemoryRequirements mem_reqs;
    getBufferMemoryRequirements(device, self, &mem_reqs);
    return mem_reqs;
}

fn DeviceMemory! MemoryAllocateInfo.build(&self, Device device) {
    DeviceMemory memory;
    allocateMemory(device, self, null, &memory)!;
    return memory;
}