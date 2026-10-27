# GPU memory allocation

A guide to the memory allocator in `vk/buffer.c3`: creating buffers and images,
freeing them safely while frames are in flight, and sub-allocating many small
ranges from a few big buffers.

For setting up the instance, device and swapchain, see the [README](README.md).

## Contents

- [Memory allocator](#memory-allocator)
  - [Setting up the allocator](#setting-up-the-allocator)
  - [Choosing memory properties](#choosing-memory-properties)
  - [Example: vertex and index buffers](#example-vertex-and-index-buffers-device-local)
  - [Example: a uniform buffer updated every frame](#example-a-uniform-buffer-updated-every-frame-host-visible)
  - [Example: appending data with `push`](#example-appending-data-with-push)
  - [Example: an empty device-local buffer you fill later](#example-an-empty-device-local-buffer-you-fill-later)
  - [Example: buffer device addresses](#example-buffer-device-addresses-bindless-style)
  - [Example: image memory](#example-image-memory-textures-depth-buffers)
  - [Freeing memory](#freeing-memory)
  - [Allocator statistics](#allocator-statistics)
- [Sub-allocating with BufferManager](#sub-allocating-with-buffermanager)

---

## Memory allocator

`vk/buffer.c3` has a small GPU memory allocator. Vulkan only allows a limited
number of `vkAllocateMemory` calls, so the allocator reserves memory in large
**pages** and places each buffer or image inside one:

```
MemoryAllocator
 ├── MemoryPage  (64 MB, DEVICE_LOCAL)        ← one vkAllocateMemory each
 │    ├── Memory   vertex buffer
 │    ├── Memory   index buffer
 │    └── [free]   reused by the next allocation that fits
 └── MemoryPage  (64 MB, HOST_VISIBLE | HOST_COHERENT, persistently mapped)
      └── Memory   uniform buffer
```

| Type | What it is |
|---|---|
| `vk::MemoryAllocator` | Owns the pages. Create one per device. |
| `vk::Memory` | One allocation: a `vk::Buffer` (or `vk::Image`), its offset and size inside a page, and its device address. |
| `vk::BufferManager` / `vk::Region` | Optional sub-allocation of many small ranges from a few large buffers. See [Sub-allocating with BufferManager](#sub-allocating-with-buffermanager). |

### Setting up the allocator

```c3
vk::DeviceQueue graphics_queue = {
    .index  = selection.graphics_queue_index,
    .handle = device.getQueue(selection.graphics_queue_index),
};

vk::MemoryAllocator allocator = {
    .device  = device,
    .pdevice = physical_device,
    .queue   = graphics_queue,                    // used for staging uploads
    .flags   = MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT, // only if you use buffer device addresses
    .frames_in_flight = 2,                        // the frame count you give FrameSync (default 2)
    // .default_page_size = 256_000_000,          // optional, the default is 64 MB
};
allocator.init()!;
defer allocator.free();
```

- `queue` is where staging copies are submitted. Any queue that supports
  transfers will do; most programs pass the graphics queue.
- `flags` is passed to every page as `VkMemoryAllocateFlagsInfo`. Set
  `MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT` if any buffer uses
  `BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT` (and enable the `bufferDeviceAddress`
  device feature).
- `frames_in_flight` is how many frames the GPU can be behind the CPU. Set it
  to the frame count you pass to `FrameSync`. It decides how long
  [`free_later`](#freeing-memory) waits.
- An allocation bigger than `default_page_size` gets a page of its own.

### Choosing memory properties

| You want… | `properties` | How data gets there |
|---|---|---|
| Static GPU data: meshes, indices, lookup tables | `MEMORY_PROPERTY_DEVICE_LOCAL_BIT` | Through a staging buffer, which is done for you |
| Data the CPU rewrites often: uniforms, per-frame data | `MEMORY_PROPERTY_HOST_VISIBLE_BIT \| MEMORY_PROPERTY_HOST_COHERENT_BIT` | `memcpy` into mapped memory |
| Data the CPU reads back: readbacks, query results | `MEMORY_PROPERTY_HOST_VISIBLE_BIT \| MEMORY_PROPERTY_HOST_CACHED_BIT` | `memcpy` out of `mem.data()` |

Host-visible pages are mapped once when they are created and stay mapped, so
you never call `vkMapMemory` yourself.

### Example: vertex and index buffers (device-local)

If you pass `data` to a `DEVICE_LOCAL` buffer, `new_buffer` adds
`BUFFER_USAGE_TRANSFER_DST_BIT`, creates a temporary staging buffer, copies the
data on `allocator.queue`, waits for the copy, and frees the staging buffer:

```c3
vk::Memory vertex_buffer = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_VERTEX_BUFFER_BIT,
    properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
    data:       vertices.ptr,
    data_size:  Vertex::size * vertices.len,
)!;
defer vertex_buffer.free();

vk::Memory index_buffer = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_INDEX_BUFFER_BIT,
    properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
    data:       indices.ptr,
    data_size:  ushort::size * indices.len,
)!;
defer index_buffer.free();

// While recording:
vk::cmdBindVertexBuffers(cmd, 0, 1, (vk::Buffer[]){ vertex_buffer.buffer }, (vk::DeviceSize[]){ 0 });
vk::cmdBindIndexBuffer(cmd, index_buffer.buffer, 0, INDEX_TYPE_UINT16);
```

To copy on a different queue (a dedicated transfer queue, for example), pass
`queue: &transfer_queue`.

### Example: a uniform buffer updated every frame (host-visible)

The GPU can still be reading the uniforms of the frames in flight, so keep one
buffer per frame and write only the current frame's. Each `new_buffer` call
aligns its buffer for you, so there is no offset math:

```c3
vk::Memory[FRAMES_IN_FLIGHT] uniform_buffers;
foreach (&buf : uniform_buffers) {
    *buf = vk::new_buffer(
        allocator:  &allocator,
        usage:      BUFFER_USAGE_UNIFORM_BUFFER_BIT,
        properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
        data_size:  UniformData::size,
    )!;
}
defer foreach (&buf : uniform_buffers) buf.free();

// Every frame, after frame_sync.beginFrame, a plain memcpy into mapped memory:
uint frame = frame_sync.current_frame;
uniform_buffers[frame].upload(&&uniforms, UniformData::size, offset: 0);

// One descriptor set per frame, each pointing at that frame's buffer (done once at setup):
vk::WriteDescriptorSet write = vk::writeDescriptorSet()
    .setDescriptorType(DESCRIPTOR_TYPE_UNIFORM_BUFFER)
    .setBufferInfo({ { .buffer = uniform_buffers[frame].buffer, .offset = 0, .range = UniformData::size } });
// ...then bind sets[frame] with vk::cmdBindDescriptorSets when recording.
```

> [!TIP]
> For up to 128 bytes, such as camera matrices, push constants
> (`vkCmdPushConstants`) need no buffer at all, and each frame's command buffer
> carries its own copy. Both examples pass their camera that way.

### Example: appending data with `push`

`Memory.push` copies data to the end of what has been written so far and moves
`used_size` forward. This works for building instance lists or debug lines on
the CPU each frame:

```c3
vk::Memory instances = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_STORAGE_BUFFER_BIT,
    properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
    data_size:  InstanceData::size * MAX_INSTANCES,
)!;
defer instances.free();

instances.set_used_size(0);              // start over each frame
foreach (&obj : scene_objects)
{
    InstanceData d = { .model = obj.transform, .color = obj.color };
    instances.push(&d, InstanceData::size);
}
uint instance_count = (uint)(instances.used_size / InstanceData::size);

// Raw access to the mapped bytes:
InstanceData* first = (InstanceData*)instances.data();
```

### Example: an empty device-local buffer you fill later

Create the buffer without `data`, and add `BUFFER_USAGE_TRANSFER_DST_BIT`
yourself, since `new_buffer` only adds it automatically when you pass data.
Then upload whenever you need to:

```c3
vk::Memory gpu_buffer = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_STORAGE_BUFFER_BIT | BUFFER_USAGE_TRANSFER_DST_BIT,
    properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
    data_size:  64 * 1024 * 1024,
)!;
defer gpu_buffer.free();

// Replace the contents from offset 0 (stages, copies and waits):
gpu_buffer.upload_from_stage(particles.ptr, Particle::size * particles.len)!;

// Or write into a sub-range at any byte offset:
vk::stage_upload_at(&allocator, gpu_buffer.buffer, &&new_particle, Particle::size, dst_offset: 42 * Particle::size)!;
```

Both calls wait for the copy before returning (`vkQueueWaitIdle`). They suit
loading time and occasional updates. For data that changes every frame, use a
host-visible buffer.

### Example: buffer device addresses (bindless style)

Add `BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT` (and create the allocator with
`MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT`). The address is queried once and stored on
the `Memory`:

```c3
vk::Memory materials = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_STORAGE_BUFFER_BIT | BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT,
    properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
    data:       material_data.ptr,
    data_size:  MaterialData::size * material_data.len,
)!;
defer materials.free();

PushConstants pc = { .materials = materials.address };  // vk::DeviceAddress (ulong)
vk::cmdPushConstants(cmd, pipeline_layout, SHADER_STAGE_ALL, 0, PushConstants::size, &pc);
```

### Example: image memory (textures, depth buffers)

Create the `vk::Image` yourself, then let the allocator find memory for it and
bind it:

```c3
vk::Image depth_image = vk::imageCreateInfo()
    .setImageType(IMAGE_TYPE_2D)
    .setFormat(depth_format)
    .setExtent({ .width = width, .height = height, .depth = 1 })
    .setMipLevels(1)
    .setArrayLayers(1)
    .setSamples(SAMPLE_COUNT_1_BIT)
    .setTiling(IMAGE_TILING_OPTIMAL)
    .setUsage(IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT)
    .build(device)!;

vk::Memory depth_memory = vk::create_image_buffer(depth_image, &allocator, MEMORY_PROPERTY_DEVICE_LOCAL_BIT)!;
defer depth_memory.free();   // destroys the image too, and returns its memory range
```

To upload pixels into a texture, put them in a host-visible staging buffer and
copy inside `@single_time_command`:

```c3
vk::Memory stage = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_TRANSFER_SRC_BIT,
    properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
    data:       pixels.ptr,
    data_size:  pixels.len,
)!;
defer stage.free();

device.@single_time_command(queue: allocator.queue; vk::CommandBuffer cmd)
{
    // barrier UNDEFINED -> TRANSFER_DST_OPTIMAL, then:
    vk::cmdCopyBufferToImage(cmd, stage.buffer, image, IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &copy_region);
    // barrier TRANSFER_DST_OPTIMAL -> SHADER_READ_ONLY_OPTIMAL (see vk::transferBarrier)
}!;
```

`examples/context.c3` (`Context.createTexture`) has the complete version,
barriers included.

### Freeing memory

| Call | Use it when |
|---|---|
| `mem.free()` | The GPU is done with the buffer: staging buffers, after `device.waitIdle()`, at shutdown. Frees it right away. |
| `mem.free_later()` | Frames that use the buffer may still be in flight. It is freed once the GPU can no longer be using it. |
| `allocator.sync()` | Call it **once per frame**, right after the frame fence wait. It frees what `free_later()` queued and gives empty pages back to the driver. |

```c3
while (running)
{
    uint image = frame_sync.beginFrame(device, swapchain.handle)!;  // waits on the frame fence
    allocator.sync();

    if (unload_requested)
    {
        // The frames in flight may still read these. That's fine:
        model.vertices.free_later();
        model.indices.free_later();
    }
    ...
}
```

How it works:

- `free_later()` copies the buffer's handles into a queue and empties the
  `Memory` straight away, so a `free()` after it does nothing and the `Memory`
  can go out of scope.
- `sync()` destroys a queued buffer once `frames_in_flight` syncs have passed.
  By then the frame fence has confirmed that every frame which could use it has
  finished.
- A page that holds nothing goes back to the driver once it has also gone
  unused for `frames_in_flight` syncs. A page that is emptied and refilled every
  frame, for example by staging uploads, is kept instead of being re-created
  every frame.

`sync()` is the only call a frame loop needs. Outside one, for example after
unloading a level, `allocator.sync(wait_idle: true)` waits for the GPU itself
(`vkDeviceWaitIdle`), then frees everything queued and gives every empty page
back at once. It stalls the GPU, so don't call it every frame.

**Shutdown:** `allocator.free()` also waits for the GPU, then releases
everything still queued and every page. So buffers freed with `free_later()`
need no extra step:

```c3
mesh.vertices.free_later();
mesh.indices.free_later();
allocator.free();          // waits for the GPU, destroys both, releases all pages

device.waitIdle();         // still needed for pipelines, swapchain, etc.
// ... destroy the rest, then the device last
```

`mem.free()` destroys right away, so before calling it at shutdown wait for the
GPU with `device.waitIdle()` first. With `defer`, declare the allocator
*before* the buffers so it is freed *after* them.

### Allocator statistics

```c3
vk::MemoryStats s = allocator.stats();
io::printfn("reserved: %d bytes in %d pages", s.allocated, s.pages);   // device memory held
io::printfn("used:     %d bytes", s.used);                             // handed out, padding included
io::printfn("idle:     %d bytes in %d empty pages", s.idle, s.idle_pages);
io::printfn("pending:  %d bytes waiting on free_later", s.pending);
io::printfn("holes:    %d bytes", allocator.total_fragmented());       // free space in pages still in use
```

---

## Sub-allocating with BufferManager

Larger renderers often keep all their data in a **few big buffers** and hand out
ranges inside them, so a whole scene can be bound with one or two buffers, or
reached through one device address each. `vk::BufferManager` does this, and
`vk::Region` is one range inside one of its buffers.

```
BufferManager
 ├── [0] GPU buffer   (DEVICE_LOCAL)   │ vertices │ indices │ skinned output │
 └── [1] HOST buffer  (HOST_VISIBLE)   │ materials │ lights │ uniforms │ ...
                                          ▲ each one is a vk::Region
```

### Setting up

```c3
constdef Pool : inline uint { GPU, HOST }

vk::Memory gpu_buffer = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_STORAGE_BUFFER_BIT | BUFFER_USAGE_INDEX_BUFFER_BIT
              | BUFFER_USAGE_TRANSFER_DST_BIT  | BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT,
    properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
    data_size:  gpu_size,
)!;

vk::Memory host_buffer = vk::new_buffer(
    allocator:  &allocator,
    usage:      BUFFER_USAGE_STORAGE_BUFFER_BIT | BUFFER_USAGE_UNIFORM_BUFFER_BIT
              | BUFFER_USAGE_INDIRECT_BUFFER_BIT | BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT,
    properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
    data_size:  host_size,
)!;

// The index into this list is the buffer's id in alloc() below.
vk::BufferManager bm = vk::create_buffer_manager({ (vk::Allocator)&gpu_buffer, (vk::Allocator)&host_buffer });
defer bm.free();   // frees gpu_buffer and host_buffer as well
```

### Allocating and writing regions

```c3
// Reserve ranges (size in bytes). Passing `data` uploads it right away.
vk::Region vertices  = bm.alloc(Pool.GPU,  (uint)(Vertex::size * vertex_count), vertex_data)!;
vk::Region materials = bm.alloc(Pool.HOST, (uint)(MaterialData::size * MAX_MATERIALS))!;
vk::Region lights    = bm.alloc(Pool.HOST, (uint)(LightData::size * MAX_LIGHTS))!;

// Regions are packed back to back. If you bind a region as a descriptor at its
// offset, round the offset up to the device's alignment limit:
vk::PhysicalDeviceProperties props;
vk::getPhysicalDeviceProperties(physical_device, &props);
uint ubo_alignment = (uint)props.limits.minUniformBufferOffsetAlignment;

vk::Region uniform   = bm.alloc(Pool.HOST, (uint)UniformData::size, alignment: ubo_alignment)!;

// @push appends a value (or the value behind a pointer). The size comes from the type.
foreach (mat : scene_materials) materials.@push(mat);

LightData sun = { .position = { 0.5, 0.8, 0.4, 0.0 }, .color = { 1.0, 0.95, 0.85, 3.0 } };
lights.@push(sun);

// Start over and write again (e.g. per frame):
lights.reset();
lights.@push(sun);

// @region_upload overwrites at a byte offset inside the region and doesn't move the cursor:
vk::@region_upload(uniform, frame_uniforms);
vk::@region_upload(lights, sun, offset: 2 * LightData::size);

// Region device address = buffer address + region offset. Pass it to shaders:
UniformData u = {
    .vertices  = vertices.get_address(),
    .materials = materials.get_address(),
    .lights    = lights.get_address(),
};

// For HOST_VISIBLE regions you can also access the mapped bytes directly:
MaterialData* mats = (MaterialData*)materials.data();
```

`alloc` returns `vk::COMPONENT_BUFFER_OVERFLOW` when the backing buffer is full.

### Writing to device-local regions

A `DEVICE_LOCAL` buffer can't be written with `memcpy`. When `alloc(..., data)`,
`@push` or `@region_upload` target one, the data goes through a staging buffer
using `vk::stage_upload_at`, which copies and waits for each call.

That is fine for occasional writes. To handle them yourself, for example to
stage them through a dedicated transfer queue, pass an `uploadFN` and it is called
instead. It gets the destination buffer, the data, its size and the byte offset,
and has to get the data there (data to staging buffer to GPU). This one does the
same as the default, but on `transfer_queue`:

```c3
vk::DeviceQueue transfer_queue;   // set up at startup. An uploadFN is a plain function, so it can't capture it

fn void upload_to_gpu(vk::Allocator buffer, void* data, sz size, sz offset)
{
    vk::Memory* memory = (vk::Memory*)buffer.ptr;
    vk::stage_upload_at(memory.allocator, memory.buffer, data, size, offset, queue: &transfer_queue)!!;
}

vk::BufferManager bm = vk::create_buffer_manager(
    { (vk::Allocator)&gpu_buffer, (vk::Allocator)&host_buffer },
    uploadFN: &upload_to_gpu,
);
```

For bulk loading, the fastest approach is to fill one big staging buffer
yourself and copy it with a single `cmdCopyBuffer` into `gpu_buffer.buffer` at
`region.offset`.

### CPU-only buffers: `LocalBuffer`

`vk::LocalBuffer` implements the same `vk::Allocator` interface using ordinary
heap memory that grows as needed. You can add it to a `BufferManager` next to
GPU buffers, as a CPU-side mirror or scratch space that uses the same `Region`
API:

```c3
vk::LocalBuffer cpu_mirror;
vk::BufferManager bm = vk::create_buffer_manager({
    (vk::Allocator)&gpu_buffer,
    (vk::Allocator)&host_buffer,
    (vk::Allocator)&cpu_mirror,
});

vk::Region scratch = bm.alloc(2, 4096)!;
scratch.@push(some_struct);
```

### Things to keep in mind

- **Pass `alignment:` for descriptor-bound regions.** By default `bm.alloc`
  packs regions back to back. A region bound as a uniform or storage buffer at
  its offset needs `minUniformBufferOffsetAlignment` /
  `minStorageBufferOffsetAlignment`.
- **Don't move the `BufferManager`** after allocating regions. Each `Region`
  keeps a pointer to it, so keep it in a struct field that stays put.
- **Region memory is not returned.** Regions are allocated linearly. To start
  over, free the `BufferManager` and build a new one. `bm.free()` frees its
  buffers now. `bm.free_later()` frees them the same way as `Memory.free_later()`,
  so you can drop a whole scene while frames are still in flight.
