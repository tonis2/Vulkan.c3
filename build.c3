module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import std::collections::map;
import xml;

def TypeMap = HashMap(<String, String>);

const String[*] SKIPED_REQUIRES = {"Header boilerplate", "API constants", "API version macros"};
const MAX_VERSION = 1.1;

fn void! main(String[] args) {

    TypeMap type_values = *TypeMap{}.new_init_with_key_values(
        "uint16_t", "uint",
        "int16_t", "short",
        "uint32_t", "uint",
        "int32_t", "int",
        "uint64_t", "ulong",
        "int64_t", "long",
        "uint8_t", "uint",
        "int8_t", "int",
        "size_t", "usz",
        "isize_t", "isz",
        "null", "void*",
        "HANDLE", "void*",
        "char*", "ZString",
        "VkBool32", "uint"
    );
    defer type_values.free();
    
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
    List(<VkValue>) basetypes;
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
        basetypes.free();
    }

    // Create api contants
    foreach (node: root_node.children) {
        String! name = node.attributes.get("name");
        String! type = node.attributes.get("type");
        String! comment = node.attributes.get("comment");
        
        if (try name && name == "API Constants") {
            foreach (child: node.children) {
                String! child_name = child.attributes.get("name");
                String! alias = child.attributes.get("alias");
                String! value = child.attributes.get("value");

                if (try alias && try child_name) continue;

                if (try child_name) {
                    constants.push(VkValue {
                        .type = type ?? "",
                        .value = value ?? "",
                        .name = child_name
                    });
                }
            }
        }
    }

    foreach (node : types_nodes) {
        String! comment = node.attributes.get("comment");
        String! extends = node.attributes.get("structextends");
        String! name = node.attributes.get("name");
        String category = node.attributes.get("category") ?? node.attributes.get("type")!;

        // if (try extends) ;

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
                handles.push(VkValue{}.from_node(node));
            }
            case "basetype": {
                basetypes.push(VkValue{}.from_node(node));
            }
        }
    }

    // Parse commands
    foreach (node : command_nodes) commands.push(VkCommand{}.from_node(node));


    // Enable correct features before writing C3 code
    foreach (feature : feature_nodes) {
        String! number = feature.attributes.get("number");
        String feature_api = feature.attributes.get("api")!;
        if (feature_api == "vulkansc") break;

        // Get only up-to required vulkan version
        if (try number && number.to_double()!! <= MAX_VERSION) {
            foreach (require: feature.children) {
                foreach (entry : require.children) {
                    String! name = entry.attributes.get("name");
                    String! extends = entry.attributes.get("extends");
                    String! extnumber = entry.attributes.get("extnumber");
                    String! offset = entry.attributes.get("offset");
                    String! bitpos = entry.attributes.get("bitpos");
                    String! dir = entry.attributes.get("dir");

                    if (catch err = name) {
                        continue;
                    } 

                    switch (entry.name) {
                        case "type": {
                            if (try extends) {

                            } else {
                                foreach (&node : structs) {
                                    if (node.name == name) {
                                        node.enabled = true;
                                        break;
                                    }
                                }  
                            }
 
                        }
                        case "command": {
                            if (try extends) {}
                            else {
                                foreach (&node : commands) {
                                    if (node.name == name) {
                                        node.enabled = true;
                                        break;
                                    }
                                }
                            }
                    
                        }
                        case "enum": {
                            if (try extends) {}
                            else {
                                foreach (&node : commands) {
                                    if (node.name == name) {
                                        node.enabled = true;
                                        break;
                                    }
                                }
                            }

                        }
                        default: {}
                    }
                }
            }
        }
    }


    // Build C3 files
    File vk_main = io::file::open("build2/vk.c3", "wb")!!;

    vk_main.write("module vk;\n")!!;

    // Constants
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

    // BaseTypes
    foreach (entry : basetypes) {
        if (entry.type == "") continue;
        DString text_body = dstring::new_join({"def ", entry.name, " = ", entry.type, ";\n"}, "");
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
        if (!entry.enabled) continue;
        DString text_body = dstring::new_join({"struct ", entry.name, " { \n"}, "");
        defer text_body.free();

        // Add struct values
        foreach (value : entry.values) {
            String type = type_values[value.type] ?? value.type;

            if (value.size != "" && value.size != "null-terminated") {
                if (value.size[0] != '[') {
                    text_body.append(dstring::new_join({"   ", type, "[", value.size, "]", " ", value.name,";\n"}, ""));
                } else {
                    text_body.append(dstring::new_join({"   ", type, value.size, " ", value.name,";\n"}, ""));
                }
            } else {
                text_body.append(dstring::new_join({"   ", type, value.value, " ", value.name,";\n"}, ""));
            }
        }
        
        text_body.append_chars("}\n");
        vk_main.write(text_body.str_view())!!;
    }

    // Unions
    foreach (entry : unions) {
        if (!entry.enabled) continue;
        DString text_body = dstring::new_join({"union ", entry.name, " { \n"}, "");
        defer text_body.free();

        // Add values
        foreach (value : entry.values) {
            String type = type_values[value.type] ?? value.type;

            if (value.size != "") {
                if (value.size[0] != '[') {
                    text_body.append(dstring::new_join({"   ", type, "[", value.size, "]", " ", value.name,";\n"}, ""));
                } else {
                    text_body.append(dstring::new_join({"   ", type, value.size, " ", value.name,";\n"}, ""));
                }
            } else {
                text_body.append(dstring::new_join({"   ", type, " ", value.name,";\n"}, ""));
            }
        }
        
        text_body.append_chars("}\n");
        vk_main.write(text_body.str_view())!!;
    }

    // Commands
    foreach (entry : commands) {
        if (!entry.enabled) continue;
        DString text_body = dstring::new_join({"extern fn ", entry.returnType, " ", entry.name, " ("}, "");
        defer text_body.free();

        // Add values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type;

            text_body.append(dstring::new_join({type, value.value, " ", value.name, i == entry.values.len() - 1 ? "" : ", "}, ""));
        }

        text_body.append(dstring::new_join({")", " @extern(\"", entry.name, "\"); \n"}, ""));
        vk_main.write(text_body.str_view())!!;
    }
}


macro HashMap* HashMap.new_init_with_key_values(&self, ..., uint capacity = 32, float load_factor = 0.1, Allocator allocator = allocator::heap())
{
	self.new_init(capacity, load_factor, allocator);
	$for (var $i = 0; $i < $vacount; $i += 2)
		self.set($vaarg[$i], $vaarg[$i+1]);
	$endfor
	return self;
}

macro bool String[*].contains(self, String key) {
    foreach (value : self) {
        if (value == key) return true;
    }
    return false;
}