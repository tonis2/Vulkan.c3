module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import std::encoding::xml;

alias StructList = List{VkStruct};
alias CommandList = List{VkCommand};
alias ValueList = List{VkValue};
alias EnumList = List{VkEnum};

<*
 The text written directly inside an element, leading whitespace removed.

 vk.xml mixes text and child elements freely -- a member reads
 `<member>const <type>void</type>* <name>pNext</name></member>` -- and it is the
 run behind the last child element that carries the pointer or array suffix the
 generator is after, so a later run replaces an earlier one. Whitespace-only runs
 hold nothing and are skipped; an element without text yields "".
*>
fn String XmlNode.text_value(&self) {
    String text;
    foreach (child : self.children) {
        if (child.kind != TEXT) continue;
        String run = child.value.trim_left(" \t\r\n\v");
        if (run.len) text = run;
    }
    return text;
}

<* True when the element has child elements; text, comments and prologs don't count. *>
fn bool XmlNode.has_elements(&self) {
    foreach (child : self.children) if (child.kind == START_ELEMENT) return true;
    return false;
}

// Vulkan member/param names that collide with C3 keywords or generated type names
const String[2][*] RESERVED_RENAMES = {{"module", "mod"}, {"sz", "size"}};

fn String fix_reserved_name(String name) {
    foreach (pair : RESERVED_RENAMES) if (name == pair[0]) return pair[1];
    return name;
}

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
    bool from_extension;
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

fn VkEnum VkEnum.from_node(&self, XmlNode* node) {
    self.comment = node.attributes.get("comment") ?? "";
    self.name = node.attributes.get("name")!!;
    self.bitwidth = node.attributes.get("bitwidth") ?? "";

    foreach (entry : node.children) {
        if (entry.kind != START_ELEMENT) continue;
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

fn VkValue VkValue.from_node(&self, XmlNode* node) {

    foreach (entry : node.children) {
        if (entry.kind != START_ELEMENT) continue;
        if (entry.name == "name") self.name = entry.text_value();
        if (entry.name == "type") self.type = entry.text_value();
    }
    return *self;
}

fn VkStruct VkStruct.from_node(&self, XmlNode* node) {
    self.name = node.attributes.get("name") ?? "-";
    
    foreach (member : node.children) {
        if (member.kind != START_ELEMENT) continue;

        String? api = member.attributes.get("api");
        if (try api && api == "vulkansc") continue;

        String text = member.text_value();
        VkValue value;
        value.len = member.attributes.get("len") ?? "";
        value.defaultValue = member.attributes.get("values") ?? "";
        value.optional = member.attributes.has_key("optional");

        value.len = value.len.strip_suffix(",null-terminated");

        if (!value.optional && text != "" && text[0] != ':' && text[0] != '*') value.size = text;
 
        value.value = text.len > 1 ? text[0..0] : "";
        if (value.value == ":") value.value = "";

        foreach (entry : member.children) {
            if (entry.kind != START_ELEMENT) continue;
            // Enum used as SIZE element at vulkan :/
            if (entry.name == "enum") value.size = entry.text_value();
            if (entry.name == "type") value.type = entry.text_value();
            if (entry.name == "name") {
                value.name = fix_reserved_name(entry.text_value());
                if (value.name.len > 0 && value.name[0] >= 'A' && value.name[0] <= 'Z') {
                    value.name = value.name.copy(mem);
                    value.name[0] = value.name[0].to_lower();
                }
            };
        }

        // Lengths with latexmath expressions or multiple parts can't be mapped to a
        // single C3 slice-length assignment; drop them, but say so.
        if (value.len.contains("latexmath") || value.len.contains(",")) {
            diag.warn(&diag.lost_lengths, dstring::join(mem,
                {self.name, ".", value.name, ": unsupported len '", value.len, "' discarded"}, "").str_view());
            value.len = "";
        }
        if (value.len == "null-terminated") value.len = "";

        if (value.size != "" && value.size != "null-terminated" && value.size[0] != '[') {
            DString size_value = dstring::join(mem, {"[", value.size[3..], "]"}, "");
            value.size = size_value.copy_str(mem);
            size_value.free();
        }

        if (member.name != "comment") self.values.push(value); 
    }
    return *self;
}


fn VkCommand VkCommand.from_node(&self, XmlNode* node) {
    String? success_codes = node.attributes.get("successcodes");
    String? error_codes = node.attributes.get("errorcodes");

    if (try error_codes) {
        String[] error_codes_list = error_codes.split(mem, ",");
        foreach (code : error_codes_list) self.error_codes.push(code);
        free(error_codes_list);
    }
    
    foreach (member : node.children) {
        if (member.kind != START_ELEMENT) continue;

        String? api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;
        value.optional = member.attributes.has_key("optional");
        value.value = member.text_value().trim(" ");
        if (value.value.contains("const")) value.value = value.value[0..1];

        foreach (entry : member.children) {
            if (entry.kind != START_ELEMENT) continue;
            if (member.name == "proto") {
                if (entry.name == "name") self.name = entry.text_value();
                if (entry.name == "type") self.returnType = entry.text_value();
            } else if (!is_vulkansc) {
                if (entry.name == "type") value.type = entry.text_value();
                if (entry.name == "name") value.name = fix_reserved_name(entry.text_value());
            }
        }
        if (member.name == "param" && !is_vulkansc) self.values.push(value);
    }
    return *self;
}

fn VkCommand VkCommand.from_func_ptr(&self, XmlNode* node) {
    self.enabled = true;

    String text = node.text_value();
    if (text.len > 5) self.returnType = text;

    foreach (member : node.children) {
        if (member.kind != START_ELEMENT) continue;

        String? api = member.attributes.get("api");
        bool is_vulkansc = @ok(api) && api!! == "vulkansc";
        VkValue value;

        if (member.name == "name") self.name = member.text_value();
        if (member.name == "type") value.type = member.text_value();
        if (member.name == "type" && !is_vulkansc) self.values.push(value);
    }
    return *self;
}

