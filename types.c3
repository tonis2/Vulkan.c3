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
    bool extension;
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
    String defaultValue;
    String type;
    String size;
    String len;
    bool optional;
}

fn void VkCommand.free(&self) {
    self.success_codes.free();
    self.error_codes.free();
    self.base.free();
}

fn VkEnum VkEnum.from_node(&self, xml::Node node) {
    self.comment = node.attributes.get("comment") ?? "";
    self.name = node.attributes.get("name")!!;

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

fn VkValue VkValue.from_node(&self, xml::Node node) {

    foreach (entry : node.children) {
        if (entry.name == "name") self.name = entry.value;
        if (entry.name == "type") self.type = entry.value;
    }
    return *self;
}

fn VkStruct VkStruct.from_node(&self, xml::Node node) {
    self.name = node.attributes.get("name") ?? "-";
    
    foreach (member : node.children) {
        VkValue value;
        value.len = member.attributes.get("len") ?? "";
        value.defaultValue = member.attributes.get("values") ?? "";

        if (value.len.contains("null-terminated") || value.len.contains("latexmath")) value.len = "";
        if (!value.optional && member.value != "" && member.value[0] != ':' && member.value[0] != '*') value.size = member.value;

        value.optional = member.attributes.has_key("optional");
        value.value = member.value.len > 1 ? member.value[0..0] : "";
        if (value.value == ":") value.value = "";

        foreach (entry : member.children) {
            // Enum used as SIZE element at vulkan :/
            if (entry.name == "enum") value.size = entry.value;
            if (entry.name == "type") value.type = entry.value;
            if (entry.name == "name") {
                value.name = entry.value;
                if (value.name == "module") value.name = "mod";
            };
        }

        if (value.size != "" && value.size != "null-terminated" && value.size[0] != '[') {
            DString size_value = dstring::new_join({"[", value.size[3..], "]"}, "");
            value.size = size_value.copy_str();
            size_value.free();
        }

        if (member.name != "comment") self.values.push(value); 
    }
    return *self;
}


fn VkCommand VkCommand.from_node(&self, xml::Node node) {
    String! success_codes = node.attributes.get("successcodes");
    String! error_codes = node.attributes.get("errorcodes");

    if (try error_codes) {
        String[] error_codes_list = error_codes.split(",");
        foreach (code : error_codes_list) self.error_codes.push(code);
        free(error_codes_list);
    }
    
    foreach (member : node.children) {
        String! api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;
        value.value = member.value.trim(" ");
        if (value.value.contains("const")) value.value = value.value[0..1];

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

fn VkCommand VkCommand.from_func_ptr(&self, xml::Node node) {
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

