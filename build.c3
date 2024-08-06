module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import xml;

const MAX_VERSION = 1.0;

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
            VkEnum enum_value = {
                .base.name = name,
                .base.comment = comment ?? "-",
                .type = type ?? "-"
            };

            foreach (index, enum_node: node.children) {
                String! enum_name = enum_node.get_attrib_value("name");
                String! alias = enum_node.get_attrib_value("alias");

                if (try alias && try enum_name) {
                    // VkValue value;
                    // mem::copy(&enum_value.values[index - 1], &value, 1);
                    // value.name = enum_name;
                    // enum_value.base.values.push(value);
                    continue;
                }

                if (try enum_name) {
                    VkValue value;
                    value.from_enum(enum_node);
                    enum_value.base.values.push(value);
                }
            }
            enums.push(enum_value);
        }
    }



    foreach (feature : features) {
        String! number = feature.get_attrib_value("number");
        String feature_api = feature.get_attrib_value("api")!;
        if (feature_api == "vulkansc") break;

        // Get only up-to required vulkan version
        if (try number && number.to_double()!! <= MAX_VERSION) {
            foreach (require : feature.children) {
                foreach (entry : require.children) {
                    switch (entry.name) {
                        case "enum": {
                            String name = entry.get_attrib_value("name")!;
                            String! bitpos = entry.get_attrib_value("bitpos");
                            String! value = entry.get_attrib_value("value");
                            String! extends = entry.get_attrib_value("extends");

                            if (try extends) {
                                // Find enum node
                                foreach (node: doc.rootNode.children) {
                                    String! enum_name = node.get_attrib_value("name");
                                    String! type = node.get_attrib_value("type");
                                    
                                    // if (try enum_name && enum_name == name) io::printfn("enum %s", enum_name);
                                }
                            }
                            // enums.push({.base.name = name ?? "-" });
                        }
                        case "type": {

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

    foreach (enum_entry : enums) {
        DString text_body;
        defer text_body.free();
        
        // Comment
        text_body.append_chars("//".concat(enum_entry.name).concat("\n"));

        // Add values
        foreach (value : enum_entry.values) {
            text_body.append_chars("const ".concat(value.name).concat(" = ").concat(value.value).concat(";\n"));
        }

        vk_main.write(text_body.str_view())!!;
    }
}

