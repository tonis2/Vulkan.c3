module ecs;

import std::math;
import std::io;
import std::collections::list;
import std::collections::map;
import std::encoding::json;
import std::core::builtin;
import vk;

struct Component {
    uint id;
    uint size;
    uint buffer;
    usz used_size;
    usz offset;
    EntityManager* manager;
}

struct BufferView {
    uint component;
}

bitstruct Entity : ulong {
    uint id : 0..31;
    uint bitmask : 32..63;
}

bitstruct BufferID : ulong {
    uint component : 0..31;
    uint entity : 32..63;
}

alias ComponentMap = HashMap{String, Component};
alias ViewMap = HashMap{BufferID, BufferView};

fn usz alignUp(usz value, usz factor)  => value + factor - 1 - (value + factor - 1) % factor;

struct EntityManager {
    ComponentMap keys;
    ViewMap views;
    List{Component} components;
    List{Entity} entities;
    vk::BufferManager* bm;
}

fn EntityManager create_manager(vk::BufferManager* bm) {
    EntityManager manager = {
        .bm = bm,
    };
    return manager;
}

macro uint BufferID.hash(BufferID i) => builtin::@generic_hash((ulong)i);

fn void Component.reset(&self) => self.used_size = 0;

fn void EntityManager.free(&self) {
    self.keys.free();
    self.views.free();
    self.entities.free();
}

macro void EntityManager.@query(self, ...; @callback(Entity entity)) {
    foreach ENTITY: (entity: self.entities) {
        $for var $i = 0; $i < $vacount; $i++:
            if (!entity.has_name($vaarg[$i], self)) continue ENTITY;
        $endfor
        @callback(entity);
    }
}

fn bool Entity.has_name(self, String name, EntityManager manager) {
    Component? key = manager.keys[name];

    if (try key) {
        uint mask = 1 << key.id;
        return self.bitmask & mask == mask;
    }

    return false;
}

fn void EntityManager.create_view(&self, BufferID buffer, Component component) {
    self.views.set(buffer, {
        component.id, 
    });
}  

fn Component? EntityManager.new_component(&self, void* data = null, uint size = 0, uint buffer_index) {
    vk::Allocator buffer = self.bm.buffers[buffer_index];

    if (!(buffer.total_size() > buffer.get_used_size() + size)) return vk::COMPONENT_BUFFER_OVERFLOW~;

    Component component = {
        .id = (uint)self.components.len(),
        .size = size,
        .buffer = buffer_index,
        .offset = buffer.get_used_size(),
        .manager = self
    };

    self.components.push(component);

    if (data != null) {
        if (buffer.get_type() == GpuType.DEVICE_ONLY) {
            self.bm.uploadFN(buffer, data, size, component.offset);
        } else {
            buffer.upload(data, size, component.offset);
        }
    }

    buffer.set_used_size(buffer.get_used_size() + size);
    return component;
}

macro Component? EntityManager.@create_component(&self, #type = null, uint size = 0, void* data = null, int buffer_index = -1) {
    uint default_buffer = buffer_index >= 0 ? buffer_index : 0;
    //$typeof(#type).typeid.kindof == STRUCT &&& 
    if (size == 0 && data == null) {
        $if $typeof(#type).has_tagof("BUFFER"):
            default_buffer = $typeof(#type).tagof("BUFFER");
        $endif
        return self.new_component(&&#type, $typeof(#type).sizeof, default_buffer);
    } else {
        return self.new_component(data, size, default_buffer);
    }
}

macro Entity? EntityManager.@create_entity(&self, ...) {
    String type_name;
    Entity entity = {.id = (uint)self.entities.len()};

    uint size = 0;
    uint buffer_index = 0;
    uint type_id = 0;
    Component component;

    // Loop over entity data
    $for var $i = 0; $i < $vacount; $i++:
        buffer_index = 0;
        type_name = $typeof($vaarg[$i]).nameof;
        size += $typeof($vaarg[$i]).sizeof;

        $if $typeof($vaarg[$i]).has_tagof("BUFFER"):
            buffer_index = $typeof($vaarg[$i]).tagof("BUFFER");
        $endif

        $if $typeof($vaarg[$i]).nameof == "Component":
            // Todo: Component needs name
            component = $vaarg[$i];
        $else
            component = self.@create_component($vaarg[$i], buffer_index: buffer_index)!;
        $endif
    
        if (!self.keys.has_key(type_name)) {
            self.keys.set(type_name, { .id = (uint)self.keys.len(), .buffer = component.buffer });
        }
        
        type_id = self.keys[type_name]!!.id;
        entity.bitmask |= 1 << type_id;

        self.create_view(
            (BufferID) { .component = type_id, .entity = entity.id },
            component
        );

    $endfor

    self.entities.push(entity);
    return entity;
}

macro bool Entity.@has_type(self, #type, EntityManager manager) {
    Component? key = manager.keys[#type.nameof];

    if (try key) {
        uint mask = 1 << key.id;
        return self.bitmask & mask == mask;
    }

    return false;
}

<*
 @require ($kindof(#type) != OPTIONAL && $kindof(#type) != POINTER) : "Added type should not be optional or pointer"
*>
macro void? Entity.@add(&self, #type, EntityManager* manager, int buffer_index = -1) {
    String type_name = $typeof(#type).nameof;
    uint size = $typeof(#type).sizeof;

    Component component = manager.@create_component(#type, buffer_index: buffer_index)!;

    if (!manager.keys.has_key(type_name)) {
        manager.keys.set(type_name, 
        {
            .id = (uint)manager.keys.len(),
            .buffer = component.buffer,
        });
    }

    Entity* target = manager.entities.get_ref(self.id);
    uint type_id = manager.keys[type_name]!.id;
    target.bitmask |= 1 << type_id;

    manager.create_view(
        (BufferID) { .component = type_id, .entity = self.id },
        component
    );
}

fn void Entity.add_component(&self, String type_name, Component component, EntityManager* manager) {
    if (!manager.keys.has_key(type_name)) {
        manager.keys[type_name] = {
            .id = (uint)manager.keys.len(),
            .buffer = component.buffer,
        };
    }

    uint type_id = manager.keys[type_name]!!.id;
    Entity* target = manager.entities.get_ref(self.id);
    target.bitmask |= 1 << type_id;

    manager.create_view(
        (BufferID) { .component = type_id, .entity = self.id },
        component
    );
}

fn uint get_size(Entity entity, EntityManager manager) {
    uint size;
    manager.views.@each(;BufferID key, BufferView view) {
        if (key.entity == entity.id) size += manager.components[view.component].size;
    };
 
    return size;
}

// macro Entity.@set_value(self, #type, #data, EntityManager manager, usz offset = 0) {
//     Component component = manager.keys[#type.nameof]!!;
//     BufferID index = {
//         .component = component.id,
//         .entity = self.id,
//     };

//     Allocator buffer = manager.buffers[component.buffer];
//     uint type_offset = manager.views[index]!!;

//     return buffer.upload(&&#data, $typeof(#data).sizeof, type_offset + offset);
// }


<*
 @require self.size > (self.used_size + size) : "Component total size is too small"
*>
macro void Component.@push(&self, #data, usz size = 0, usz offset = 0, bool auto_increase = true) {
    usz data_size = size;
    vk::Allocator buffer = self.manager.bm.buffers[self.buffer];
    usz data_offset = self.offset + offset + (self.used_size * (auto_increase ? 1 : 0));

    $if $kindof(#data) == POINTER: {
        if (size == 0) data_size = $typeof(*#data).sizeof;
    }
    $else {
        if (size == 0) data_size = $typeof(#data).sizeof;
    }
    $endif

    $if $kindof(#data) == POINTER: {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            self.manager.bm.uploadFN(buffer, #data, data_size, data_offset);
        } else  {
            buffer.upload(#data, data_size, data_offset);
        }
    }
    $else {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            self.manager.bm.uploadFN(buffer, &&#data, data_size, data_offset);
        } else  {
            buffer.upload(&&#data, data_size, data_offset);
        }
    }
    $endif

    self.used_size += data_size;
}


<*
 @require ($typeof(#target).nameof == "Entity" || $typeof(#target).nameof == "Component") : "Target can only be compontent or entity"
*>
macro @upload(EntityManager manager, #target, #data, usz size = 0, usz offset = 0, bool update_size = false) {
    usz data_size = size;
    vk::Allocator buffer;
    usz data_offset = 0;
    String type_name;

    $if $kindof(#data) == POINTER: {
        if (size == 0) data_size = $typeof(*#data).sizeof;
        type_name = $typeof(*#data).nameof;
    }
    $else {
        if (size == 0) data_size = $typeof(#data).sizeof;
        type_name = $typeof(#data).nameof;
    }   
    $endif

    $if $typeof(#target).nameof == "Component":
        buffer = manager.bm.buffers[#target.buffer];
        data_offset = #target.offset + offset;
    $endif;

    $if $typeof(#target).nameof == "Entity":
        Component component_info = manager.keys[type_name]!!;
        BufferID index = {
            .component = component_info.id,
            .entity = #target.id,
        };

        data_offset = (uint)manager.components[manager.views[index]!!.component].offset + offset;
        buffer = manager.bm.buffers[component_info.buffer];
    $endif;

    $if $kindof(#data) == POINTER: {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            manager.bm.uploadFN(buffer, #data, data_size, data_offset);
        } else  {
            buffer.upload(#data, data_size, data_offset);
        }
    }
    $else {
        if (buffer.get_type() == GpuType.DEVICE_ONLY.ordinal) {
            manager.bm.uploadFN(buffer, &&#data, data_size, data_offset);
        } else  {
            buffer.upload(&&#data, data_size, data_offset);
        }
    }
    $endif
}


<*
 @require ($typeof(#target).nameof == "Entity" || $typeof(#target).nameof == "Component") : "Target can only be compontent or entity"
*>
macro @get(EntityManager manager, #target, #type, usz offset = 0) {
    usz $type_size = #type.sizeof;
    $if $typeof(#target).nameof == "Component":
        vk::Allocator buffer = manager.bm.buffers[#target.buffer];
        usz type_offset = #target.offset;
        return bitcast(*(char[$type_size]*)buffer.data()[type_offset..(type_offset + $type_size)], #type);
    $endif;

    $if $typeof(#target).nameof == "Entity":
        Component component = manager.keys[#type.nameof]!!;
        BufferID index = {
            .component = component.id,
            .entity = #target.id,
        };

        vk::Allocator buffer = manager.bm.buffers[component.buffer];
        uint type_offset = (uint)manager.components[manager.views[index]!!.component].offset;
        return bitcast(*(char[$type_size]*)buffer.data()[type_offset..(type_offset + $type_size)], #type);
    $endif;
}

<*
 @require ($typeof(#target).nameof == "Entity" || $typeof(#target).nameof == "Component") : "Target can only be compontent or entity"
*>
macro @get_ref(EntityManager manager, #target, #type = null, usz offset = 0) {

    $if $typeof(#target).nameof == "Component":
        usz type_offset = #target.offset;
        vk::Allocator buffer = manager.bm.buffers[#target.buffer];
        return (void*)buffer.data() + type_offset;
    $endif;

    $if $typeof(#target).nameof == "Entity":
        Component component = manager.keys[#type.nameof]!;
        BufferID index = {
            .component = component.id,
            .entity = #target.id,
        };

        uint type_offset = (uint)manager.components[manager.views[index]!.component].offset;
        return (void*)manager.bm.buffers[component.buffer].data() + type_offset;
    $endif;
}

fn void* Component.get_ref(&self) => (void*)(self.manager.bm.buffers[self.buffer].data() + self.offset);
fn ulong Component.get_address(&self) => self.manager.bm.buffers[self.buffer].get_address() + self.offset;
fn char* Component.data(&self) => self.manager.bm.buffers[self.buffer].data() + self.offset;

// <*
//  @require self.size != 0 && self.used_size != 0 : `Component is empty`
// *>
// fn Node* Component.get(&self, usz index) @operator([]) @inline
// {
// 	return (void*)self.manager.buffers[self.buffer].data() + self.offset + (index * Node.sizeof);
// }

macro @get_address(EntityManager manager, #target, #type = null, usz offset = 0) {
    $if $typeof(#target).nameof == "Component":
        return manager.bm.buffers[#target.buffer].get_address() + #target.offset + offset;
    $endif;

    $if $typeof(#target).nameof == "Entity":
        Component component = manager.keys[#type.nameof]!!;
        BufferID index = {
            .component = component.id,
            .entity = #target.id,
        };

        Allocator buffer = manager.bm.buffers[component.buffer];
        uint type_offset = (uint)manager.components[manager.views[index]!!].offset;
        return manager.bm.buffers[component.buffer].get_address() + type_offset + offset;
    $endif;
}

macro @get_offset(EntityManager manager, #target, String type = "") {
    $if $typeof(#target).nameof == "Component":
        return (uint)#target.offset;
    $endif;

    $if $typeof(#target).nameof == "Entity":
        if (type != "") {
            Component component = manager.keys[type]!;
            BufferID index = {
                .component = component.id,
                .entity = #target.id,
            };
            return (uint)manager.components[manager.views[index]!!.component].offset;
        }

        // 2240
        manager.views.@each(;BufferID id, BufferView view) {
            if (id.entity == #target.id) {
                Component component = manager.components[view.component];
                return (usz)component.offset;
            }
        };
    $endif;

    return vk::NO_KEY_FOUND~;
}

