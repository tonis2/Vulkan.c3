<*
 The device-memory allocator: pages handed back, reused, never pinned, and
 deferred frees that wait out the frames in flight.

 `c3c test tests --trust=full`

 Every test makes its own `vk::MemoryAllocator` on one shared headless device,
 with 1 MB pages, so what it counts is its own and an allocation bigger than
 1 MB takes a dedicated page without costing real VRAM. `frames_in_flight` is
 left at its default of 2.
*>
module vk_tests::allocator;

import vk;
import std::core::test;

const sz PAGE = 1 << 20;
const sz MB = 1 << 20;

struct Gpu
{
	vk::Instance instance;
	vk::PhysicalDevice pdevice;
	vk::Device device;
	vk::DeviceQueue queue;
	bool ready;
}

Gpu gpu;

// The first device with a graphics queue, made once for the whole suite.
fn Gpu* shared_gpu()
{
	if (gpu.ready) return &gpu;

	gpu.instance = vk::createDefaultInstance({ .app_name = "allocator tests" })!!;
	vk::DeviceList devices = gpu.instance.getDevices()!!;
	defer devices.free();
	gpu.pdevice = devices[0];

	vk::QueuePropertiesList families = gpu.pdevice.getQueueProperties()!!;
	defer families.free();
	foreach (i, family : families)
	{
		if ((vk::QueueFlagBits)family.queueFlags & QUEUE_GRAPHICS_BIT)
		{
			gpu.queue.index = (uint)i;
			break;
		}
	}

	float priority = 1.0;
	vk::DeviceQueueCreateInfo queue_info = vk::deviceQueueCreateInfo()
		.setQueueFamilyIndex(gpu.queue.index)
		.setQueuePriorities({ priority });
	gpu.device = vk::deviceCreateInfo().setQueueCreateInfos({ queue_info }).build(gpu.pdevice)!!;
	gpu.queue.handle = gpu.device.getQueue(gpu.queue.index);
	gpu.ready = true;
	return &gpu;
}

macro @with_allocator(; @body(vk::MemoryAllocator* a))
{
	Gpu* g = shared_gpu();
	vk::MemoryAllocator a = {
		.device = g.device,
		.pdevice = g.pdevice,
		.queue = g.queue,
		.default_page_size = PAGE,
	};
	a.init()!!;
	defer a.free();

	@body(&a);
}

fn vk::Memory make(vk::MemoryAllocator* a, sz size)
{
	return vk::new_buffer(
		a,
		usage: BUFFER_USAGE_STORAGE_BUFFER_BIT | BUFFER_USAGE_TRANSFER_SRC_BIT | BUFFER_USAGE_TRANSFER_DST_BIT,
		properties: MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		data_size: size
	)!!;
}

fn vk::Memory make_host(vk::MemoryAllocator* a, sz size)
{
	return vk::new_buffer(
		a,
		usage: BUFFER_USAGE_STORAGE_BUFFER_BIT | BUFFER_USAGE_TRANSFER_DST_BIT,
		properties: MEMORY_PROPERTY_HOST_VISIBLE_BIT | MEMORY_PROPERTY_HOST_COHERENT_BIT,
		data_size: size
	)!!;
}

// ============================================================================
// Pages
// ============================================================================

// A freed big buffer's page does not stay under the next, bigger one.
fn void a_freed_page_does_not_stay_under_a_bigger_one() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory first = make(a, 4 * MB);
		first.free();
		test::@check(a.stats().idle_pages == 1, "the freed page was not idle: %d idle", a.stats().idle_pages);

		vk::Memory second = make(a, 8 * MB);
		defer second.free();
		vk::MemoryStats s = a.stats();
		test::@check(s.pages == 1, "the idle 4 MB page stayed beside the 8 MB one: %d pages", s.pages);
		test::@check(s.allocated < 9 * MB, "%d bytes held for one 8 MB buffer", s.allocated);
	};
}

// The same buffer made again at the same size takes the page it left.
fn void a_buffer_made_again_reuses_its_page() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory first = make(a, 4 * MB);
		vk::MemoryPage* page = first.page;
		first.free();

		vk::Memory again = make(a, 4 * MB);
		defer again.free();
		test::@check(again.page == page, "the same size made a new page");
		test::@check(a.stats().pages == 1, "%d pages for one buffer", a.stats().pages);
	};
}

// A small allocation never lands in a big idle page.
fn void a_small_buffer_does_not_pin_a_big_page() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory big = make(a, 4 * MB);
		big.free();

		vk::Memory small = make(a, 1024);
		defer small.free();
		test::@check(!small.page.dedicated, "a 1 KB buffer was put in the 4 MB page");
		test::@check(a.stats().allocated <= PAGE, "%d bytes held for a 1 KB buffer", a.stats().allocated);
	};
}

// A shared page freed out of order comes back whole, alignment padding included.
fn void a_shared_page_freed_out_of_order_comes_back_whole() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory[6] held;
		sz[6] sizes = { 1000, 70_000, 300, 4096, 129_000, 17 };
		foreach (i, size : sizes) held[i] = make(a, size);
		vk::MemoryPage* page = held[0].page;
		foreach (m : held) test::@check(m.page == page, "six small buffers did not share a page");

		int[6] order = { 3, 0, 5, 1, 4, 2 };
		foreach (k, i : order)
		{
			held[i].free();
			if (k < 5)
			{
				sz live;
				foreach (j, m : held) if (m.size > 0) live += m.size + m.padding;
				test::@check(page.used_size == live, "after %d frees the page says %d used, %d live", k + 1, page.used_size, live);
			}
		}
		test::@check(page.idle(), "the page still counts %d allocations", page.live);
		test::@check(page.used_size == 0, "an empty page says %d bytes used", page.used_size);
		test::@check(page.free_blocks.len() == 1 && page.free_blocks[0].size == page.size, "an empty page is not one free block");
	};
}

// `trim()` gives back every page holding nothing, and only those.
fn void trim_gives_back_idle_pages_only() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory kept = make(a, 2 * MB);
		defer kept.free();
		vk::Memory gone = make(a, 1024);
		gone.free();

		sz released = a.trim();
		test::@check(released == PAGE, "trim gave back %d bytes, expected the one idle page", released);
		test::@check(a.stats().pages == 1 && a.stats().idle_pages == 0, "trim took the live page or left the idle one");
	};
}

// ============================================================================
// sync() and free_later()
// ============================================================================

// A `free_later` allocation holds its page through `frames_in_flight - 1`
// syncs and is gone after the `frames_in_flight`-th, page and all.
fn void free_later_waits_out_the_frames_in_flight() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory later = make(a, 4 * MB);
		later.free_later();
		test::@check(later.is_deleted() && later.buffer == null, "free_later left the Memory holding its buffer");
		test::@check(a.stats().pending >= 4 * MB, "%d bytes pending, expected the 4 MB buffer", a.stats().pending);
		test::@check(a.trim() == 0, "trim released a page with a pending free in it");

		a.sync();
		test::@check(a.stats().pages == 1 && a.stats().idle_pages == 0, "the first sync freed a buffer the GPU may still use");

		a.sync();
		vk::MemoryStats s = a.stats();
		test::@check(s.pending == 0, "%d bytes still pending after %d syncs", s.pending, a.frames_in_flight);
		test::@check(s.pages == 0, "%d pages left after the free and the page aged out", s.pages);
	};
}

// `sync(wait_idle: true)` frees everything queued and every empty page at once.
fn void sync_at_idle_frees_everything() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory big = make(a, 4 * MB);
		vk::Memory small = make(a, 1024);
		vk::Memory idle = make_host(a, 1024);
		big.free_later();
		small.free_later();
		idle.free();

		a.sync(wait_idle: true);
		vk::MemoryStats s = a.stats();
		test::@check(s.pending == 0 && s.pages == 0, "%d bytes pending and %d pages left after an idle sync", s.pending, s.pages);
	};
}

// `allocator.free()` waits for the GPU and releases what is still queued.
fn void allocator_free_releases_the_queue() @test
{
	Gpu* g = shared_gpu();
	vk::MemoryAllocator a = {
		.device = g.device,
		.pdevice = g.pdevice,
		.queue = g.queue,
		.default_page_size = PAGE,
	};
	a.init()!!;
	vk::Memory m = make(&a, 1024);
	m.free_later();
	vk::Memory kept = make_host(&a, 1024);
	(void)kept;

	a.free();
	test::@check(a.pages.len() == 0 && a.pending.len() == 0, "%d pages and %d queued frees left", a.pages.len(), a.pending.len());
}

// `free()` after `free_later()` does nothing: the buffer is destroyed once.
fn void free_after_free_later_does_nothing() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory keep = make(a, 1024);
		defer keep.free();
		vk::Memory m = make(a, 1024);
		vk::MemoryPage* page = m.page;
		sz queued = m.size + m.padding;

		m.free_later();
		m.free();
		m.free_later();
		test::@check(a.stats().pending == queued, "%d bytes pending, expected %d", a.stats().pending, queued);
		test::@check(page.live == 2, "the second free gave the block back early: %d live", page.live);

		a.sync(wait_idle: true);
		test::@check(page.live == 1, "the block was given back %d times", 2 - page.live);
	};
}

fn void queue_a_temporary(vk::MemoryAllocator* a)
{
	vk::Memory tmp = make(a, 1024);
	tmp.free_later();
}

// No pointer to the Memory is kept, so it may go out of scope before the sync.
fn void free_later_on_a_temporary() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		queue_a_temporary(a);
		queue_a_temporary(a);
		int[64] scribble;  // reuse the stack the temporaries lived in
		foreach (&x : scribble) *x = -1;

		a.sync(wait_idle: true);
		test::@check(a.stats().pages == 0, "%d pages left after freeing two temporaries", a.stats().pages);
	};
}

// A page emptied and refilled every frame is kept, not remade every sync, and
// goes back once it has gone unused for `frames_in_flight` syncs.
fn void a_page_refilled_every_frame_is_kept() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		for (int frame = 0; frame < 6; frame++)
		{
			vk::Memory stage = make_host(a, 1024);
			stage.free();
			a.sync();
			test::@check(a.stats().pages == 1, "frame %d: the staging page was given back while still in use", frame);
		}
		a.sync();
		test::@check(a.stats().pages == 0, "the page stayed after going unused: %d pages", a.stats().pages);
	};
}

// An empty page that nobody uses goes back on its own, without trim().
fn void an_unused_empty_page_goes_back_on_sync() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory m = make(a, 1024);
		m.free();
		a.sync();
		test::@check(a.stats().pages == 1, "the page went back before frames_in_flight syncs");
		a.sync();
		test::@check(a.stats().pages == 0, "the empty page was kept: %d pages", a.stats().pages);
	};
}

// ============================================================================
// BufferManager
// ============================================================================

// `bm.free_later()` queues every buffer it holds.
fn void buffer_manager_free_later() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory gpu_buffer = make(a, 2048);
		vk::Memory host_buffer = make_host(a, 2048);
		vk::LocalBuffer cpu;
		vk::BufferManager bm = vk::create_buffer_manager({
			(vk::Allocator)&gpu_buffer, (vk::Allocator)&host_buffer, (vk::Allocator)&cpu,
		});
		bm.alloc(1, 64)!!;
		bm.alloc(2, 64)!!;

		bm.free_later();
		test::@check(gpu_buffer.is_deleted() && host_buffer.is_deleted() && cpu.is_deleted(), "a buffer was not freed");
		test::@check(cpu.mapped == null, "the CPU buffer was not freed at once");
		test::@check(a.stats().pending > 0, "nothing was queued");

		a.sync(wait_idle: true);
		test::@check(a.stats().pages == 0, "%d pages left", a.stats().pages);
	};
}

// Device-local regions take data without an uploadFN, at aligned offsets.
fn void buffer_manager_device_local_upload_and_alignment() @test
{
	@with_allocator(; vk::MemoryAllocator* a)
	{
		vk::Memory gpu_buffer = make(a, 4096);
		vk::Memory readback = make_host(a, 4096);
		defer readback.free();
		vk::BufferManager bm = vk::create_buffer_manager({ (vk::Allocator)&gpu_buffer });
		defer bm.free();

		uint[4] init = { 1, 2, 3, 4 };
		vk::Region first = bm.alloc(0, 16, &init)!!;
		vk::Region second = bm.alloc(0, 64, alignment: 256)!!;
		second.@push((uint)0xCAFE);
		vk::@region_upload(first, (uint)99, offset: 8);
		test::@check(second.offset == 256, "the aligned region starts at %d", second.offset);

		a.device.@single_time_command(queue: a.queue; vk::CommandBuffer cmd)
		{
			vk::cmdCopyBuffer(cmd, gpu_buffer.buffer, readback.buffer, 1, (vk::BufferCopy[]){ { .size = 4096 } });
		}!!;
		uint* r = (uint*)readback.data();
		test::@check(r[0] == 1 && r[1] == 2 && r[2] == 99 && r[3] == 4, "the first region reads %d %d %d %d", r[0], r[1], r[2], r[3]);
		test::@check(r[64] == 0xCAFE, "the pushed value reads %x", r[64]);
	};
}
