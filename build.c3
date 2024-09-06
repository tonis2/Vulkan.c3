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

    // Find required nodes
    NodeList feature_nodes;
    defer feature_nodes.free();

    root_node.find(fn (node) => node.name == "feature", &feature_nodes);

    NodeList types_nodes;
    defer types_nodes.free();

    root_node.find(fn (node) => 
        node.children.len() > 0 &&
        (node.attributes.has_key("category") || node.attributes.has_key("type")), 
    &types_nodes);

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
    List(<VkStruct>) unions;

    defer {
        foreach (value : structs) value.base.free();
        foreach (value : commands) value.base.free();
        foreach (value : enums) value.base.free();
        foreach (value : unions) value.base.free();
        structs.free();
        commands.free();
        enums.free();
        unions.free();
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

                if (try alias && try child_name) continue;

                if (try child_name) {
                    VkValue value;
                    value.from_node(&child_node);
                    constants.push(value);
                }
            }
        }
    }

    foreach (node : types_nodes) {
        String! comment = node.attributes.get("comment");
        String! extends = node.attributes.get("structextends");
        String! name = node.attributes.get("name");
        String category = node.attributes.get("category") ?? node.attributes.get("type")!;

        if (try extends) continue;

        switch (category) {
            case "bitmask":
            case "enum": {
                if (try name) enums.push(VkEnum{}.from_node(node));
            }
            case "struct": {
                structs.push(VkStruct{}.from_node(node));
            }
            case "union": {
                unions.push(VkStruct{}.from_node(node));
            }
            case "handle": {
                handles.push(VkValue{}.from_handle(node));
            }
            case "command": {
                commands.push(VkCommand{}.from_node(node));
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

        // Add struct values
        foreach (value : entry.values) {
            if (value.size != "") {
                if (value.size[0] != '[') {
                    text_body.append(dstring::new_join({"   ", value.type, "[", value.size, "]", " ", value.name,";\n"}, ""));
                } else {
                    text_body.append(dstring::new_join({"   ", value.type, value.size, " ", value.name,";\n"}, ""));
                }
            } else {
                text_body.append(dstring::new_join({"   ", value.type, " ", value.name,";\n"}, ""));
            }
        }
        
        text_body.append_chars("}\n");
        vk_main.write(text_body.str_view())!!;
    }

    // Unions
    foreach (entry : unions) {
        DString text_body = dstring::new_join({"union ", entry.name, " { \n"}, "");
        defer text_body.free();

        // Add values
        foreach (value : entry.values) {
            if (value.size != "") {
                if (value.size[0] != '[') {
                    text_body.append(dstring::new_join({"   ", value.type, "[", value.size, "]", " ", value.name,";\n"}, ""));
                } else {
                    text_body.append(dstring::new_join({"   ", value.type, value.size, " ", value.name,";\n"}, ""));
                }
            } else {
                text_body.append(dstring::new_join({"   ", value.type, " ", value.name,";\n"}, ""));
            }
        }
        
        text_body.append_chars("}\n");
        vk_main.write(text_body.str_view())!!;
    }
}

   // foreach (feature : feature_nodes) {
    //     String! number = feature.attributes.get("number");
    //     String feature_api = feature.attributes.get("api")!;
    //     if (feature_api == "vulkansc") break;

    //     // Get only up-to required vulkan version
    //     if (try number && number.to_double()!! <= MAX_VERSION) {
    //         foreach (require: feature.children) {
    //             String! comment = require.attributes.get("comment");
                
    //             // Skip some required stuff, they are handled elsewhere 
    //             if (try comment) if (SKIPED_REQUIRES.contains(comment)) continue;
                
    //             foreach (entry : require.children) {
    //                 String! name = entry.attributes.get("name");
    //                 String! extends = entry.attributes.get("extends");

    //                 if (catch err = name) {
    //                     io::printfn("XML row broken at %s", entry.name);
    //                     continue;
    //                 } 

    //                 switch (entry.name) {
    //                     case "enum": {

    //                     }
    //                     case "type": {
    //                         for TYPES: (uint type_index; type_index < types_nodes.len(); type_index++) {
    //                             xml::Node* type_node = types_nodes[type_index];
    //                             String! node_name = type_node.attributes.get("name");
    //                             String! node_type = type_node.attributes.get("type");
    //                             String! type = type_node.attributes.get("type") ?? type_node.attributes.get("category");

    //                             // Found reference type xml node
    //                             if (try node_name && node_name == name && try type) {
    //                                 switch (type) {
    //                                     case "bitmask" :
    //                                     case "enum" : {
    //                                         enums.push(VkEnum{}.from_node(type_node));
    //                                     }
    //                                     case "struct": {
    //                                         structs.push(VkStruct{}.from_node(type_node));
    //                                     }
    //                                     case "basetype": {
    //                                         io::printfn("basetype %s", type_node.name);
    //                                     }
    //                                     case "union": {
    //                                         unions.push(VkStruct{}.from_node(type_node));
    //                                     }
    //                                     // case "funcpointer": {
    //                                     //     io::printfn("funcpointer %s", type_node.name);
    //                                     // }
    //                                     case "command": {
    //                                         commands.push(VkCommand{}.from_node(type_node));
    //                                     }
    //                                     default: {}
    //                                 }
    //                                 break TYPES;
    //                             }
    //                         }
    //                     }
    //                     case "command": {
    //                         io::printfn("command %s", name);
    //                     }
    //                     default: {
                  
    //                     }
    //                 }
    //             }
    //         }
    //     }
    // }