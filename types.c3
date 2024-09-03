module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import libc;
import xml;

struct Base {
    String name;
    String comment;
    List(<VkValue>) values;
}

fn void Base.free(&self) {
    self.values.free();
}

struct VkStruct {
    inline Base base;
}

struct VkCommand {
    inline Base base;
    String returnType;
    List(<String>) success_codes;
    List(<String>) error_codes;
}

struct VkEnum {
    inline Base base;
    uint bitpos;
    uint bitwidth;
    String type;
}

struct VkValue {
    String name;
    String comment;
    String value;
    String type;
    bool optional;
}

fn void VkEnum.from_node(&self, xml::Node* node) {
    self.base.name = node.attributes.get("name") ?? "-";
    self.base.comment = node.attributes.get("comment") ?? "-";

    foreach (entry : node.children) {
        String! name = entry.attributes.get("name");
        String! value = entry.attributes.get("value");
        String! bitpos = entry.attributes.get("bitpos");

        if (try name) {
            if (try value) {
                self.values.push(
                    VkValue {
                        .name = name,
                        .value = value
                    }
                );
            }
            if (try bitpos) {
                char[10] buffer;
                String res = (String)io::bprintf(&buffer, "0x%08x", 1 << bitpos.to_int()!!)!!;
                
                self.values.push(
                    VkValue {
                        .name = name,
                        .value = res.copy(allocator::heap())
                    }
                );
            }
        }
    }
}

fn void VkValue.from_node(&self, xml::Node* node) {
    String! value = node.attributes.get("value");
    String! type = node.attributes.get("type");
    String! name = node.attributes.get("name");

    self.name = name ?? "-";
    self.type = type ?? "-";
    self.value = value ?? ".";
}

fn VkStruct VkStruct.from_node(&self, xml::Node* node) {
    self.name = node.attributes.get("name") ?? "-";
    
    foreach (member : node.children) {
        VkValue struct_value;
        String! value = member.attributes.get("values");
        String! len = member.attributes.get("len");
       
        if (try value) struct_value.value = value;
        struct_value.optional = member.attributes.has_key("optional");

        foreach (entry : member.children) {
            if (entry.name == "type") struct_value.type = entry.value;
            if (entry.name == "name") struct_value.name = entry.value;
        }
        if (member.name != "comment") self.values.push(struct_value); 
    }
    return *self;
}