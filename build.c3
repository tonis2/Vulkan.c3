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

fn void! main(String[] args) {

    xml::Node root_node = xml::load_file("assets/vk.xml")!!;
    defer root_node.free();

    NodeList feature_nodes;
    defer feature_nodes.free();

    root_node.find(fn (node) => node.name == "feature", &feature_nodes);

    NodeList types_nodes;
    defer types_nodes.free();

    root_node.find(fn (node) => node.children.len() > 0 && node.attributes.has_key("name"), &types_nodes);

    NodeList handle_nodes;
    defer handle_nodes.free();

    root_node.find(fn (node) => node.children.len() > 0 && node.attributes.has_key("category") && node.attributes["category"]!! == "handle", &handle_nodes);


    NodeList command_nodes;
    defer command_nodes.free();

    root_node.find(fn (node) => {|
        if (node.name == "command" && node.children.len() > 0) {
            if (node.attributes.has_key("api") && node.attributes["api"]!! == "vulkansc") {
                 return false;
            };
            return true;
        }
        return false;
    |}, &command_nodes);

    List(<VkStruct>) structs;
    List(<VkCommand>) commands;
    List(<VkEnum>) enums;
    List(<VkValue>) constants;
    List(<VkValue>) handles;

    defer {
        foreach (value : structs) value.base.free();
        foreach (value : commands) value.base.free();
        foreach (value : enums) value.base.free();
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

    // Parse handle nodes
    foreach (node: handle_nodes) {
        handles.push(VkValue{}.from_handle(node));
    }

    foreach (feature : feature_nodes) {
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

                        }
                        case "type": {
                            String name = entry.attributes.get("name")!;
                            String! extends = entry.attributes.get("extends");

                            for TYPES: (uint type_index; type_index < types_nodes.len(); type_index++) {
                                xml::Node* type_node = types_nodes[type_index];
                                String! node_name = type_node.attributes.get("name");
                                String! node_type = type_node.attributes.get("type");
                                String! type = type_node.attributes.get("type") ?? type_node.attributes.get("category");

                                // Found reference type xml node
                                if (try node_name && node_name == name && try type) {
                                    switch (type) {
                                        case "bitmask" :
                                        case "enum" : {
                                            enums.push(VkEnum{}.from_node(type_node));
                                        }
                                        case "struct": {
                                            structs.push(VkStruct{}.from_node(type_node));
                                        }
                                        case "basetype": {
                                            io::printfn("basetype %s", type_node.name);
                                        }
                                        case "union": {
                                            io::printfn("union %s", type_node.name);
                                        }
                                        // case "funcpointer": {
                                        //     io::printfn("funcpointer %s", type_node.name);
                                        // }
                                        // case "command": {
                                        //     io::printfn("command %s", type_node.name);
                                        // }
                                        default: {}
                                    }
                                    break TYPES;
                                }
                            }
                        }
                        case "command": {

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
    
    vk_main.write("\n")!!;


    // Handles
    foreach (entry : handles) {
        DString text_body = dstring::new_join({"distinct ", entry.name, " = void*;\n"}, "");
        defer text_body.free();
        vk_main.write(text_body.str_view())!!;
    }

    vk_main.write("\n")!!;

    // Enums
    foreach (enum_entry : enums) {
        String enum_type = "uint";
        if (enum_entry.name == "VkResult") enum_type = "int";

        DString text_body = dstring::new_join({"distinct ", enum_entry.name, " = ", "inline ", enum_type, ";\n"}, "");
        defer text_body.free();
        // Add values
        foreach (value : enum_entry.values) {
            text_body.append(dstring::new_join({"const ",enum_entry.name," ",value.name," = ",value.value,";\n"}, ""));
        }
        
        text_body.append_chars("\n");
        vk_main.write(text_body.str_view())!!;
    }
    // Structs
    foreach (entry : structs) {
        DString text_body = dstring::new_join({"struct ", entry.name, " { \n"}, "");
        defer text_body.free();

        // Add values
        foreach (value : entry.values) {
            text_body.append(dstring::new_join({"   ", value.type," ", value.name,";\n"}, ""));
        }
        
        text_body.append_chars("}\n");
        vk_main.write(text_body.str_view())!!;
    }
}

