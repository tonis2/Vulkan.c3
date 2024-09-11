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
    bool enabled;
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
    String len;
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
                self.values.push(
                    VkValue {
                        .name = name,
                        .value = bitpos.from_bit_pos()
                    }
                );
            }
        }
    }
    return *self;
}

fn VkValue VkValue.from_node(&self, xml::Node* node) {

    foreach (entry : node.children) {
        if (entry.name == "name") self.name = entry.value;
        if (entry.name == "type") self.type = entry.value;
    }
    return *self;
}

fn VkStruct VkStruct.from_node(&self, xml::Node* node) {
    self.name = node.attributes.get("name") ?? "-";
    
    foreach (member : node.children) {
        VkValue value;
        String! node_value = member.attributes.get("values");
        String! len = member.attributes.get("len");
        
        if (try len) value.len = len;
        if (try node_value) value.value = node_value;
        if (!value.optional && member.value != "" && member.value[0] != ':' && member.value[0] != '*') value.size = member.value;

        value.optional = member.attributes.has_key("optional");
        value.value = member.value.len > 1 ? member.value[0..0] : "";

        foreach (entry : member.children) {
            // Enum used as SIZE element at vulkan :/
            if (entry.name == "enum") value.size = entry.value;
            if (entry.name == "type") value.type = entry.value;
            if (entry.name == "name") value.name = entry.value;
        }
        if (member.name != "comment") self.values.push(value); 
    }
    return *self;
}


fn VkCommand VkCommand.from_node(&self, xml::Node* node) {
    String! success_codes = node.attributes.get("successcodes");
    String! error_codes = node.attributes.get("errorcodes");
    
    foreach (member : node.children) {
        String! api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;
        value.value = member.value.trim(" ");

        foreach (entry : member.children) {
            if (member.name == "proto") {
                if (entry.name == "name") self.name = entry.value;
                if (entry.name == "type") self.returnType = entry.value;
            } else if (!is_vulkansc) {
                if (entry.name == "type") value.type = entry.value;
                if (entry.name == "name") value.name = entry.value;
            }
        }
        if (member.name == "param" && !is_vulkansc) self.values.push(value);
    }
    return *self;
}

fn VkCommand VkCommand.from_func_ptr(&self, xml::Node* node) {
    self.enabled = true;
    if (node.value.len > 5) self.returnType = node.value;
    //node.value[7..(node.value.len + 7 - 10)]
    foreach (member : node.children) {
        String! api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;

        if (member.name == "name") self.name = member.value;
        if (member.name == "type") value.type = member.value;
        if (member.name == "type" && !is_vulkansc) self.values.push(value);
    }
    return *self;
}

