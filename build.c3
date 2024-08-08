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
    
    File xmlFile = io::file::open("assets/vk.xml", "r")!!;
    defer xmlFile.close()!!;

    XmlDoc* doc = xml::read_file(xmlFile)!!;
    defer doc.free();

    XmlNodeList features;
    defer features.free();

    doc.find_nodes_by_tag_name("feature", &features);

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
    foreach (node: doc.rootNode.children) {
        String! name = node.get_attrib_value("name");
        String! type = node.get_attrib_value("type");
        String! comment = node.get_attrib_value("comment");
        
        if (try name && name == "API Constants") {
            foreach (child_node: node.children) {
                String! child_name = child_node.get_attrib_value("name");
                String! alias = child_node.get_attrib_value("alias");

                if (try alias && try child_name) {
                    // VkValue value;
                    // mem::copy(&enum_value.values[index - 1], &value, 1);
                    // value.name = enum_name;
                    // enum_value.base.values.push(value);
                    continue;
                }

                if (try child_name) {
                    VkValue value;
                    value.from_node(child_node);
                    constants.push(value);
                }
            }
         
        }
    }



    foreach (feature : features) {
        String! number = feature.get_attrib_value("number");
        String feature_api = feature.get_attrib_value("api")!;
        if (feature_api == "vulkansc") break;

        // Get only up-to required vulkan version
        if (try number && number.to_double()!! <= MAX_VERSION) {
            for REQUIRES: (uint index; index < feature.children.len(); index++) {

                XmlNode* require = feature.children[index];
                String! comment = require.get_attrib_value("comment");
                
                // Skip some required stuff, they are handled elsewhere 
                if (try comment) if (SKIPED_REQUIRES.contains(comment)) continue REQUIRES;
                
                foreach (entry : require.children) {
                    switch (entry.name) {
                        case "enum": {
                            // String name = entry.get_attrib_value("name")!;
                            // String! bitpos = entry.get_attrib_value("bitpos");
                            // String! value = entry.get_attrib_value("value");
                            // String! extends = entry.get_attrib_value("extends");

                            // if (try extends) {
                            //     // Find enum node
                            //     foreach (node: doc.rootNode.children) {
                            //         String! enum_name = node.get_attrib_value("name");
                            //         String! type = node.get_attrib_value("type");
                                    
                            //         //if (try enum_name && enum_name == name) io::printfn("enum %s", enum_name);
                            //     }
                            // }
                            // enums.push({.base.name = name ?? "-" });
                        }
                        case "type": {
                            String name = entry.get_attrib_value("name")!;
                            String! extends = entry.get_attrib_value("extends");

                            for TYPES: (uint type_index; type_index < doc.rootNode.children.len(); type_index++) {
                                XmlNode* type_node = doc.rootNode.children[type_index];
                                String! node_name = type_node.get_attrib_value("name");
                                String! node_type = type_node.get_attrib_value("type");
                                String! type = type_node.get_attrib_value("type") ?? type_node.get_attrib_value("category");

                                // Found reference type xml node
                                if (try node_name && node_name == name && try type) {
                                    io::printfn("type %s", type);
                                    switch (type) {
                                        case "enum": {
                                            VkEnum value;
                                            value.from_node(type_node);
                                            enums.push(value);
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
        DString text_body;
        defer text_body.free();
        
        // // Comment
        // text_body.append_chars("//".concat(enum_entry.name).concat("\n"));

        text_body.append_chars("const ".concat(value.name).concat(" = ").concat(value.value).concat(";\n"));

        vk_main.write(text_body.str_view())!!;
    }


    foreach (enum_entry : enums) {
        DString text_body;
        defer text_body.free();

        // Comment
        text_body.append_chars("//".concat(enum_entry.name).concat("\n"));
        text_body.append_chars("distinct ".concat(enum_entry.name).concat(" = ").concat("uint"));
        // Add values
        foreach (value : enum_entry.values) {
            // text_body.append_chars("const ".concat(enum_entry.name).concat(" = ").concat(value.value).concat(";\n"));
        }

        vk_main.write(text_body.str_view())!!;
    }
}

