module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import xml;

alias StructList = List{VkStruct};
alias CommandList = List{VkCommand};
alias ValueList = List{VkValue};
alias EnumList = List{VkEnum};

struct Base {
    String name;
    String comment;
    String alias_name;
    ValueList values;
    bool enabled;
}

fn bool ValueList.contains_value(self, String value_name) {
    foreach (child: self) if (child.name == value_name) return true;
    return false;
}

fn bool Base.contains_value(self, String value_name) {
    foreach (value: self.values) if (value.name == value_name) return true;
    return false;
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
    List{String} success_codes;
    List{String} error_codes;
}

struct VkEnum {
    inline Base base;
    String bitwidth;
    bool negative;
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
    self.bitwidth = node.attributes.get("bitwidth") ?? "";

    foreach (entry : node.children) {
        String? name = entry.attributes.get("name");
        String? value = entry.attributes.get("value");
        String? bitpos = entry.attributes.get("bitpos");
        VkValue result;
        if (try name) {
            if (try value) {
                if (value[0] == '-') self.negative = true;
                 VkValue data = {
                        .name = name,
                        .value = value
                };
                self.values.push(data);
            }
            if (try bitpos) {
                VkValue data = {
                    .name = name,
                    .value = bitpos.from_bit_pos()
                };
                self.values.push(data);
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
        String? api = member.attributes.get("api");
        if (try api && api == "vulkansc") continue;

        VkValue value;
        value.len = member.attributes.get("len") ?? "";
        value.defaultValue = member.attributes.get("values") ?? "";
        value.optional = member.attributes.has_key("optional");

        value.len = value.len.strip_end(",null-terminated");

        if (value.len.contains("latexmath") || value.len.contains(",") || value.len == "null-terminated") value.len = "";
        if (!value.optional && member.value != "" && member.value[0] != ':' && member.value[0] != '*') value.size = member.value;
 
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
            DString size_value = dstring::join(mem, {"[", value.size[3..], "]"}, "");
            value.size = size_value.copy_str(mem);
            size_value.free();
        }

        if (member.name != "comment") self.values.push(value); 
    }
    return *self;
}


fn VkCommand VkCommand.from_node(&self, xml::Node node) {
    String? success_codes = node.attributes.get("successcodes");
    String? error_codes = node.attributes.get("errorcodes");

    if (try error_codes) {
        String[] error_codes_list = error_codes.split(mem, ",");
        foreach (code : error_codes_list) self.error_codes.push(code);
        free(error_codes_list);
    }
    
    foreach (member : node.children) {
        String? api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;
        value.optional = member.attributes.has_key("optional");
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
        String? api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;

        if (member.name == "name") self.name = member.value;
        if (member.name == "type") value.type = member.value;
        if (member.name == "type" && !is_vulkansc) self.values.push(value);
    }
    return *self;
}

