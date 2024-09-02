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
    uint pointer_level;
}

fn void VkEnum.from_node(&self, xml::Node node) {
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

fn void VkValue.from_node(&self, xml::Node node) {
    String! value = node.attributes.get("value");
    String! type = node.attributes.get("type");
    String! name = node.attributes.get("name");

    self.name = name ?? "-";
    self.type = type ?? "-";
    self.value = value ?? ".";
}