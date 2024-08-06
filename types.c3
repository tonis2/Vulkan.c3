module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import xml;

struct Base {
    String name;
    String comment;
    List(<VkValue>) values;
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

fn void VkValue.from_enum(&self, XmlNode* node) {
    String! value = node.get_attrib_value("value");
    String! type = node.get_attrib_value("type");
    String! name = node.get_attrib_value("name");

    self.name = name ?? "invalid";
    self.type = type ?? "invalid";
    self.value = value ?? "invalid";
}