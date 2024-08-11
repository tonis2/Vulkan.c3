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

fn void VkEnum.from_node(&self, XmlNode* node) {
    self.base.name = node.get_attrib_value("name") ?? "-";
    self.base.comment = node.get_attrib_value("comment") ?? "-";

    foreach (entry : node.children) {
        String! name = entry.get_attrib_value("name");
        String! value = entry.get_attrib_value("value");
        String! bitpos = entry.get_attrib_value("bitpos");

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

fn void VkValue.from_node(&self, XmlNode* node) {
    String! value = node.get_attrib_value("value");
    String! type = node.get_attrib_value("type");
    String! name = node.get_attrib_value("name");

    self.name = name ?? "-";
    self.type = type ?? "-";
    self.value = value ?? ".";
}