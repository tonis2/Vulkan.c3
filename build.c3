module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import xml;

const MAX_VERSION = 1.0;

const String[*] SKIPED_REQUIRES = {"Header boilerplate", "API constants", "API version macros"};

macro bool String[*].contains(self, String key) {
    foreach (value : self) {
        if (value == key) return true;
    }
    return false;
}

fn void! main() {
    xml::Node root_node = xml::load_file("assets/vk.xml")!!;
    defer root_node.free();

    NodeList features;
    defer features.free();

    root_node.find(fn (node) => node.name == "feature", &features);

    NodeList types;
    defer types.free();

    root_node.find(fn (node) => node.name == "type" && node.attributes.has_key("category"), &types);

    List(<VkStruct>) structs;
    List(<VkCommand>) commands;
    List(<VkEnum>) enums;
    List(<VkValue>) constants;

    defer {
        structs.free();
        commands.free();
        enums.free();
    }

    // Create api contants
    foreach (node: root_node.children) {
        String! name = node.attributes.get("name");
        String! type = node.attributes.get("type");
        String! comment = node.attributes.get("comment");
        
        if (try name && name == "API Constants") {
            foreach (child_node: node.children) {
                String! child_name = child_node.attributes.get("name");
                String! alias = child_node.attributes.get("alias");

                if (try alias && try child_name) {
                    // VkValue value;
                    // mem::copy(&enum_value.values[index - 1], &value, 1);
                    // value.name = enum_name;
                    // enum_value.base.values.push(value);
                    continue;
                }

                if (try child_name) {
                    VkValue value;
                    value.from_node(&child_node);
                    constants.push(value);
                }
            }
        }
    }

    foreach (feature : features) {
        String! number = feature.attributes.get("number");
        String feature_api = feature.attributes.get("api")!;
        if (feature_api == "vulkansc") break;

        // Get only up-to required vulkan version
        if (try number && number.to_double()!! <= MAX_VERSION) {
            for REQUIRES: (uint index; index < feature.children.len(); index++) {

                xml::Node require = feature.children[index];
                String! comment = require.attributes.get("comment");
                
                // Skip some required stuff, they are handled elsewhere 
                if (try comment) if (SKIPED_REQUIRES.contains(comment)) continue REQUIRES;
                
                foreach (entry : require.children) {
                    switch (entry.name) {
                        case "enum": {
                            // String name = entry.attributes.get("name")!;
                            // String! bitpos = entry.attributes.get("bitpos");
                            // String! value = entry.attributes.get("value");
                            // String! extends = entry.attributes.get("extends");

                            // if (try extends) {
                            //     // Find enum node
                            //     foreach (node: doc.rootNode.children) {
                            //         String! enum_name = node.attributes.get("name");
                            //         String! type = node.attributes.get("type");
                                    
                            //         //if (try enum_name && enum_name == name) io::printfn("enum %s", enum_name);
                            //     }
                            // }
                            // enums.push({.base.name = name ?? "-" });
                        }
                        case "type": {
                            String name = entry.attributes.get("name")!;
                            String! extends = entry.attributes.get("extends");

                            for TYPES: (uint type_index; type_index < types.len(); type_index++) {
                                xml::Node* type_node = types[type_index];
                                String! node_name = type_node.attributes.get("name");
                                String! node_type = type_node.attributes.get("type");
                                String! type = type_node.attributes.get("type") ?? type_node.attributes.get("category");

                                // Found reference type xml node
                                if (try node_name && node_name == name && try type) {
                                    switch (type) {
                                        case "enum": {
                                            VkEnum value;
                                            value.from_node(type_node);
                                            enums.push(value);
                                        }
                                        case "bitmask": {
                                            VkEnum value;
                                            value.from_node(type_node);
                                            enums.push(value);
                                        }
                                        case "struct": {
                                            //io::printfn("%s", node_name);
                                            // VkEnum value;
                                            // value.from_node(type_node);
                                            // enums.push(value);
                                        }
                                        default: {}
                                    }
                                    break TYPES;
                                }
                            }
                        }
                        default: {
                  
                        }
                    }
                }
            }
        }
    }

    // Build C3 files
    File vk_main = io::file::open("build2/vk.c3", "wb")!!;

    foreach (value : constants) {
        DString text_body = dstring::new_join({"const ", value.name, " = ", value.value, ";\n"}, "");
        defer text_body.free();
        
        vk_main.write(text_body.str_view())!!;
    }

    foreach (enum_entry : enums) {
        DString text_body = dstring::new_join({"distinct ", enum_entry.name, " = ", "inline uint;\n"}, "");
        defer text_body.free();

        // Add values
        foreach (value : enum_entry.values) {
            text_body.append(dstring::new_join({"const ",enum_entry.name," ",value.name," = ",value.value,";\n"}, ""));
        }
        
        text_body.append_chars("\n");
        vk_main.write(text_body.str_view())!!;
    }
}

