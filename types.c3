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
}

struct VkValue {
    String name;
    String comment;
    String value;
    String type;
    String size;
    bool optional;
}

fn VkEnum VkEnum.from_node(&self, xml::Node* node) {
    self.name = node.attributes.get("name") ?? "-";
    self.comment = node.attributes.get("comment") ?? "-";

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
                char[32] buffer;
                String res = (String)io::bprintf(&buffer, "0x%08x", (ulong)1 << bitpos.to_uint()!!)!!;
          
                self.values.push(
                    VkValue {
                        .name = name,
                        .value = res.copy()
                    }
                );
            }
        }
    }
    return *self;
}

fn VkValue VkValue.from_node(&self, xml::Node* node) {
    String! value = node.attributes.get("value");
    String! type = node.attributes.get("type");
    String! name = node.attributes.get("name");

    self.name = name ?? "-";
    self.type = type ?? "-";
    self.value = value ?? ".";
    return *self;
}

fn VkValue VkValue.from_handle(&self, xml::Node* node) {
    self.type = "node*";
    foreach (entry : node.children) {
        if (entry.name == "name") self.name = entry.value;
    }
    return *self;
}

fn VkStruct VkStruct.from_node(&self, xml::Node* node) {
    self.name = node.attributes.get("name") ?? "-";
    
    foreach (member : node.children) {
        VkValue value;
        String! node_value = member.attributes.get("values");

        if (try node_value) value.value = node_value; 
        value.optional = member.attributes.has_key("optional");
        if (!value.optional && member.value != "" && member.value[0] != '*') value.size = member.value;

        foreach (entry : member.children) {
            // Actually used as SIZE element at vulkan :/
            if (entry.name == "enum") value.size = entry.value;
            if (entry.name == "type") value.type = entry.value;
            if (entry.name == "name") value.name = entry.value;
        }
        if (member.name != "comment") self.values.push(value); 
    }
    return *self;
}


fn VkCommand VkCommand.from_node(&self, xml::Node* node) {
    self.name = node.attributes.get("name") ?? "-";
    String! success_codes = node.attributes.get("successcodes");
    String! error_codes = node.attributes.get("errorcodes");
    
    foreach (member : node.children) {
        VkValue value;
        // if (try node_value) value.value = node_value; 
        // value.optional = member.attributes.has_key("optional");
        // if (!value.optional && member.value != "" && member.value[0] != '*') value.size = member.value;

        foreach (entry : member.children) {
            // Actually used as SIZE element at vulkan :/
            // if (entry.name == "proto") value.size = entry.value;
            // if (entry.name == "param") value.type = entry.value;
            // if (entry.name == "name") value.name = entry.value;
        }
        // if (member.name != "comment") self.values.push(value); 
    }
    return *self;
}