module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import std::collections::map;
import xml;

const MAX_VERSION = 1.3;

def TypeMap = HashMap(<String, String>);

const String[*] ACTIVE_EXTENSIONS = {
  "VK_KHR_portability_enumeration",
  "VK_KHR_portability_subset",
  "VK_KHR_push_descriptor",
  "VK_KHR_surface",
  "VK_KHR_xcb_surface",
  "VK_KHR_swapchain",
  "VK_KHR_display",
  "VK_EXT_debug_report",
  "VK_EXT_debug_utils",
  "VK_EXT_swapchain_colorspace",
  "VK_KHR_get_physical_device_properties2",
  "VK_KHR_depth_stencil_resolve",
  "VK_KHR_create_renderpass2",
  "VK_KHR_maintenance2",
  "VK_KHR_multiview",
  "VK_KHR_dynamic_rendering",
  "VK_EXT_descriptor_buffer",
  "VK_KHR_xlib_surface",
  "VK_MVK_macos_surface",
  "VK_KHR_win32_surface",
  "VK_KHR_acceleration_structure"
};

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
        "VkBool32", "uint",
        "xcb_connection_t", "Connection",
        "xcb_visualid_t", "Window",
        "xcb_window_t", "Window",
        "wl_display", "Display",
        "zx_handle_t", "Display",
        "HINSTANCE", "Hinstance",
        "HWND", "Hwnd",
        "(~0ULL)", "(~0UL)"
    );

    defer type_values.free();
    
    xml::Node root_node = xml::load_file("assets/vk.xml")!!;
    defer root_node.free();

    File main_file = io::file::open("vk/vk.c3", "wb")!!;
    defer main_file.close()!!;

    File command_file = io::file::open("vk/commands.c3", "wb")!!;
    defer command_file.close()!!;

    File builders_file = io::file::open("vk/builders.c3", "wb")!!;
    defer builders_file.close()!!;

    // Find required nodes
    NodeList feature_nodes;
    defer feature_nodes.free();

    NodeList command_nodes;
    defer command_nodes.free();

    NodeList types_nodes;
    defer types_nodes.free();

    root_node.find(fn (node) => node.name == "feature" || node.name == "extension", &feature_nodes);

    root_node.find(fn (node) => 
        node.children.len() > 0 &&
        (node.attributes.has_key("category") || node.attributes.has_key("type")), 
    &types_nodes);

    root_node.find(fn (node) => {|
        if (node.name == "command" && node.children.len() > 0) {
            if (node.attributes.has_key("api") && node.attributes["api"]!! == "vulkansc") {
                 return false;
            };
            return true;
        }
        return false;
    |}, &command_nodes);

    StructList structs;
    CommandList commands;
    EnumList enums;
    ValueList constants;
    ValueList handles;
    ValueList basetypes;
    StructList unions;

    defer {
        foreach (value : structs) value.base.free();
        foreach (value : commands) value.free();;
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

        switch (category) {
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
            case "bitmask": {
               if (node.name == "type") {
                    VkValue value = VkValue{}.from_node(node);
                    if (!basetypes.contains_value(value.name)) basetypes.push(value);
               };
               if (node.name == "enums") enums.push(VkEnum{}.from_node(node));
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
        String! extension_name = feature.attributes.get("name");
        String! feature_api = feature.attributes.get("api");

        if (@ok(feature_api) && feature_api!! == "vulkansc") continue;

        bool is_extension = feature.name == "extension";

        // Get only up-to required vulkan version
        if (((@ok(number) && number.to_double()!! <= MAX_VERSION) || is_extension)) {
            foreach (require: feature.children) {
                foreach (entry : require.children) {
                    String! name = entry.attributes.get("name");
                    String! extends = entry.attributes.get("extends");
                    String! value = entry.attributes.get("value");

                    if (catch err = name) continue;

                    foreach (&node: unions) if (node.name == name && ACTIVE_EXTENSIONS.contains(extension_name!!) || node.name == name && is_extension == false) {
                        node.enabled = true;
                    }

                    bool enabled = is_extension ? ACTIVE_EXTENSIONS.contains(extension_name!!) : true;

                    switch (entry.name) {
                        case "type": {
                            if (try extends) {} 
                            else {
                                foreach (&node : structs) {
                                    if (node.name == name) {
                                        node.enabled = enabled;
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
                                        node.extension = is_extension;
                                        node.enabled = enabled;
                                        break;
                                    }
                                }
                            }
                        }
                        case "enum": {
                            if (try extends) {
                                String! extnumber = entry.attributes.get("extnumber") ?? number;
                                String! offset = entry.attributes.get("offset");
                                String! bitpos = entry.attributes.get("bitpos");
                                String! dir = entry.attributes.get("dir");
                                String! alias = entry.attributes.get("alias");

                                // Extends previous enum
                                VkEnum* enum_parent = {|
                                    foreach (&item: enums) {
                                        if (item.name == extends) return item;
                                    }
                                    return null;
                                |};

                                if (!enum_parent) {
                                    enums.push(VkEnum { .base.name = extends });
                                    enum_parent = &enums[enums.len() - 1];
                                };

                                if (try alias) {
                                    foreach (node: enum_parent.values) {
                                        if (node.name == alias) {
                                            if (!enum_parent.contains_value(name)) {
                                                VkValue alias_node = node;
                                                alias_node.name = name;
                                                enum_parent.values.push(alias_node);
                                            }
                                        }
                                    }
                                }

                                String vk_value = value ?? "";

                                if (try bitpos) vk_value = bitpos.from_bit_pos();
                                if (try extnumber && try offset) vk_value = extnumber.from_ext_value(offset, negative_value: @ok(dir));
                                if (vk_value == "") continue;

                                if (!enum_parent.contains_value(name)) {
                                    enum_parent.values.push(
                                        VkValue {
                                            .name = name,
                                            .value = vk_value
                                        }
                                    );
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Build C3 files
    main_file.write("module vk;\n")!!;
    command_file.write("module vk;\n")!!;
    builders_file.write("module vk;\n")!!;

    DynamicArenaAllocator allocator;
    allocator.init(page_size: 256, allocator: allocator::heap());
    defer allocator.free();

    // Constants
    foreach (value : constants) {
        String type = type_values[value.value] ?? value.value;

        DString text_body = dstring::new_join({"const ", value.name[3..], " = ", type, ";\n"}, "", allocator: &allocator);
        defer text_body.free();
        main_file.write(text_body.str_view())!!;
    }
    
    main_file.write("\n")!!;

    // Handles
    foreach (entry : handles) {
        DString text_body = dstring::new_join({"distinct ", entry.name[2..], " = inline void*;\n"}, "", allocator: &allocator);
        defer text_body.free();
        main_file.write(text_body.str_view())!!;
    }

    main_file.write("\n")!!;

    // BaseTypes
    foreach (entry : basetypes) {
        if (entry.type == "") continue;

        String type = type_values[entry.type] ?? entry.type.remove_vk();
        DString text_body = dstring::new_join({"def ", entry.name[2..], " = ", type, ";\n"}, "");
        main_file.write(text_body.str_view())!!;
    }

    main_file.write("\n")!!;

    // Enums
    foreach (entry : enums) {
        String enum_type = "uint";
        if (entry.name == "VkResult" || entry.negative) enum_type = "int";
        if (entry.bitwidth == "64") enum_type = "ulong";

        DString text_body = dstring::new_join({"distinct ", entry.name[2..], " = ", "inline ", enum_type, ";\n"}, "", allocator: &allocator);
        defer text_body.free();
        // Add values
        foreach (value : entry.values) {
            value.name.convert_ascii_to_upper();
            text_body.append(dstring::new_join({"const ", entry.name[2..]," ", value.name[3..]," = ", value.value,";\n"}, "", allocator: &allocator));
        }
        
        text_body.append_chars("\n");
        main_file.write(text_body.str_view())!!;
    }

    // Write C3 errors
    foreach (entry : enums) {
        if (entry.name == "VkResult") {
            DString text_body = dstring::new_join({"fault VkErrors {\n",}, "");
            foreach (value : entry.values) if (value.value[0] == '-') text_body.append(dstring::new_join({" ", value.name[3..], ",\n"}, "", allocator: &allocator));
            text_body.append("}\n");

            main_file.write(text_body.str_view())!!;

            break;
        }
    }
    main_file.write("\n")!!;

    DString creator_functions;
    defer creator_functions.free();

    // Structs
    foreach (entry : structs) {
        if (!entry.enabled) continue;
        bool has_struct_type = entry.values[0].type == "VkStructureType" && entry.values[0].defaultValue != "";

        String name = entry.name.remove_vk();

        DString text_body = dstring::new_join({"struct ", name, " {\n"}, "", allocator: &allocator);
        defer text_body.free();

        if (has_struct_type) {
            creator_functions.append(dstring::new_join({"fn ", name, " ", name.to_lower_case().strip_end("KHR"), "() => ",
            name,
            " { .sType = ", entry.values[0].defaultValue[3..], ", .pNext = null };\n"}, "", allocator: &allocator));
        }

        // Add struct values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type.remove_vk();

            if (has_struct_type && i > 0) {
                String value_name = value.value == "*" ? value.name[1..].capitalize() : value.name.capitalize();
                if (value.len != "" && type != "void") {

                    DString buffer = dstring::new_join({"fn ", name, " ", name, ".set", type == "char" ? value_name[1..] : value_name, "(&self, ", type == "char" ? "ZString" : type, value.size != "" ? value.size : "[]", " ", value.name.to_lower_case(), ") {\n",
                    "   self.", value.len, "= (uint)", value.name.to_lower_case(), ".len;\n"},  "", allocator: &allocator);

                    if (type == "char") {
                        buffer.append(dstring::new_join({"   self.", value.name, " = (char*)&", value.name.to_lower_case(), "[0];\n", "   return *self;\n}\n"},"", allocator: &allocator));
                    } else if (value.size != "") {
                        buffer.append(dstring::new_join({"   self.", value.name, " = ", value.name.to_lower_case(), ";\n", "   return *self;\n}\n"},"", allocator: &allocator));
                    } else {
                        buffer.append(dstring::new_join({"   self.", value.name, " = &", value.name.to_lower_case(), "[0];\n", "   return *self;\n}\n"}, "", allocator: &allocator));
                    }
                    creator_functions.append(buffer);
                } else {
                    creator_functions.append(dstring::new_join({"fn ", name, " ", name, ".set", value_name, "(&self, ", type, value.size != "" ? value.size : value.value, " ", value.name.to_lower_case(), ") {\n",
                    "   self.", value.name, " = ", value.name.to_lower_case(), ";\n", "   return *self;\n}\n"
                    }, "", allocator: &allocator));
                }
            }

            if (value.size != "") {
                text_body.append(dstring::new_join({"   ", type, value.size, " ", value.name,";\n"}, "", allocator: &allocator));
            } else {
                text_body.append(dstring::new_join({"   ", type, value.value, " ", value.name,";\n"}, "", allocator: &allocator));
            }
        }
        
        text_body.append_chars("}\n");
        main_file.write(text_body.str_view())!!;
    }

    builders_file.write(creator_functions.str_view())!!;
    main_file.write("\n")!!;

    // Unions
    foreach (entry : unions) {
        if (!entry.enabled) continue;
        DString text_body = dstring::new_join({"union ", entry.name[2..], " { \n"}, "", allocator: &allocator);
        defer text_body.free();

        // Add values
        foreach (value : entry.values) {
            String type = type_values[value.type] ?? value.type.remove_vk();

            if (value.size != "") {
                text_body.append(dstring::new_join({"   ", type, value.size, " ", value.name,";\n"}, "", allocator: &allocator));
            } else {
                text_body.append(dstring::new_join({"   ", type, value.value, " ", value.name,";\n"}, "", allocator: &allocator));
            }
        }
        
        text_body.append_chars("}\n");
        main_file.write(text_body.str_view())!!;
    }

    command_file.write("\n")!!;

    // Build commands
    DString extension_definitions;
    DString extension_pointers;
    DString extension_bind;
    DString extension_functions;
    DString base_commands;
    DString create_commands;

    defer {
        base_commands.free();
        extension_definitions.free();
        extension_pointers.free();
        extension_bind.free();
        extension_functions.free();
        create_commands.free();
    }

    extension_pointers.append("struct VK_extension_bindings {\n");
    extension_bind.append("fn void loadExtensions(Instance instance) {\n");
    
    foreach (entry : commands) {
        if (!entry.enabled) continue;

        String return_type = type_values[entry.returnType] ?? entry.returnType.remove_vk();
        bool no_result = return_type != "Result";
        bool create_command = entry.name.contains("Create");

        String extension_def = dstring::new_join({"PFN_", entry.name}, "", allocator: &allocator).str_view();

        if (!entry.extension) {
            base_commands.append(dstring::new_join({"extern fn ", return_type, " ", no_result ? entry.name[2..].to_lower_case() : entry.name, "("}, "", allocator: &allocator));
        }

        if (no_result && entry.extension) {
            extension_functions.append(dstring::new_join({"fn ", return_type, " ", entry.name.remove_vk().to_lower_case(), " ("}, "", allocator: &allocator));
        }

        if (entry.extension) {
            extension_definitions.append(dstring::new_join({"def ", extension_def, " = fn ", return_type, " ("}, "", allocator: &allocator));
            extension_pointers.append(dstring::new_join({"  ", extension_def, " ", entry.name, ";\n"}, "", allocator: &allocator));
            extension_bind.append(dstring::new_join({"   extensions.", entry.name, " = (", extension_def, ")getInstanceProcAddr(instance,\"", entry.name, "\");\n"}, "", allocator: &allocator));
        }

        if (create_command) {
            String command_name = {|
                foreach (value : entry.values) if (value.type.contains("CreateInfo")) return value.type;
                return "";
            |};
            String result_type = entry.values[entry.values.len() - 1].type;

            create_commands.append(dstring::new_join({"fn ", result_type.remove_vk(), "! ", command_name.remove_vk(), ".build(&self, "}, "", allocator: &allocator));

            foreach (i, value : entry.values) {
                if (value.type == command_name || value.type == result_type) continue;
                String type = type_values[value.type] ?? value.type.remove_vk();
                String default_value = "";
                if (value.optional) default_value = " = null";
                if (type == "uint") default_value = " = 1";
                
                create_commands.append(dstring::new_join({type, value.value, " ", value.name, default_value, i == entry.values.len() - 2 ? ") {\n" : ", "}, "", allocator: &allocator));
            }

            create_commands.append(dstring::new_join({"   ", result_type.remove_vk(), " response;\n", "   ", entry.name.remove_vk().to_lower_case(), "("}, "", allocator: &allocator));

            foreach (i, value : entry.values) {
                String name = value.name;
                if (value.type == command_name) name = "self";
                if (value.type == result_type) name = "&response";
                create_commands.append(dstring::new_join({name, i == entry.values.len() - 1 ? ")!;\n" : ", "}, "", allocator: &allocator));
            }

            create_commands.append("   return response;\n}\n");
        }
      
        // Add values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type.remove_vk();
            String fn_values = dstring::new_join({type, value.value, i == entry.values.len() - 1 ? "" : ", "}, "", allocator: &allocator).str_view();

            if (entry.extension) {
                extension_definitions.append(fn_values);
                if (no_result) extension_functions.append(dstring::new_join({type, value.value, " ", value.name, i == entry.values.len() - 1 ? ")" : ", "}, "", allocator: &allocator));
            } 
            
            if (!entry.extension) base_commands.append(fn_values); 
        }

        if (entry.extension) {
            if (no_result) {
                extension_functions.append(dstring::new_join({" => extensions.", entry.name, "("}, ""));
                foreach (i, value : entry.values) extension_functions.append(dstring::new_join({value.name, i == entry.values.len() - 1 ? ");\n" : ", "}, "", allocator: &allocator));   
            }
            extension_definitions.append(dstring::new_join({");\n"}, "", allocator: &allocator));
        } else {
            base_commands.append(dstring::new_join({")", " @extern(\"", entry.name, "\"); \n"}, "", allocator: &allocator));
        }
    }

    extension_pointers.append("}\nVK_extension_bindings extensions;\n");
    extension_bind.append("}\n");

    command_file.write(base_commands.str_view())!!;
    command_file.write("\n")!!;
    command_file.write(extension_definitions.str_view())!!;
    command_file.write("\n")!!;
    command_file.write(extension_pointers.str_view())!!;
    command_file.write("\n")!!;
    command_file.write(extension_bind.str_view())!!;
    command_file.write("\n")!!;
    command_file.write(extension_functions.str_view())!!;
    command_file.write("\n")!!;

    main_file.write("\n")!!;

    // Commands with error handling
    foreach (entry : commands) {
        if (!entry.enabled || entry.returnType != "VkResult") continue;
        String return_type = type_values[entry.returnType] ?? entry.returnType.remove_vk();

        DString text_body;
        text_body.append("fn void! ");
        text_body.append(dstring::new_join({entry.name[2..].to_lower_case(), " ("}, "", allocator: &allocator));

        defer text_body.free();

        // Add values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type;
            text_body.append(dstring::new_join({type.remove_vk(), value.value, " ", value.name, i == entry.values.len() - 1 ? "" : ", "}, "", allocator: &allocator));
        }

        text_body.append(dstring::new_join({")", " {\n"}, "", allocator: &allocator));

        if (entry.extension) {
            text_body.append("  Result result = extensions.");
        } else {
            text_body.append("  Result result = ");
        }

        text_body.append(dstring::new_join({entry.name, "("}, "", allocator: &allocator));

        foreach (i, value : entry.values) text_body.append(dstring::new_join({value.name, i == entry.values.len() - 1 ? "" : ", "}, "", allocator: &allocator));
        text_body.append(");\n");

        if (entry.error_codes.len() > 0) {
            text_body.append("  switch(result) { \n");
            foreach (i, value : entry.error_codes) {
                text_body.append(dstring::new_join({"       case ", value[3..], ": return VkErrors.", value[3..], "?;\n"}, "", allocator: &allocator));
            }
            text_body.append("  }\n");
        } else {
            text_body.append("  if (result != 0) return VkErrors.ERROR_UNKNOWN?;\n");
        }

        text_body.append("}\n");

        command_file.write(text_body.str_view())!!;
    }
    
    command_file.write("\n")!!;
    command_file.write(create_commands.str_view())!!;
    command_file.write("\n")!!;
}

macro bool String[*].contains(self, String key) {
    foreach (value : self) {
        if (value == key) return true;
    }
    return false;
}

fn String String.from_bit_pos(&self) {
    char[32] buffer;
    String res = (String)io::bprintf(&buffer, "0x%08x", (ulong)1 << self.to_uint()!!)!!;
    return res.copy();
}

fn String String.to_lower_case(self) {
    String new_value = self.copy();
    new_value[0] = new_value[0].to_lower();
    return new_value;
}

fn String String.capitalize(self) {
    String new_value = self.copy();
    new_value[0] = new_value[0].to_upper();
    return new_value;
}

fn String String.remove_vk(self) {
    if (self[0..1] == "Vk" || self[0..1] == "vk") {
         return self.copy()[2..];
    }
    return self;
}

fn String String.from_ext_value(&self, String offset, bool negative_value = false) {
    char[32] buffer;
    DString value;
    uint ext_int = self.to_uint()!! - 1;
    uint offset_int = offset.to_uint()!!;

    if (negative_value) value.append_chars("-");
    value.append_chars("1");
    value.append_repeat('0', 6 - self.len);
    value.append_chars((String)io::bprintf(&buffer, "%s", ext_int)!!);
    value.append_repeat('0', 3 - offset.len);
    value.append_chars(offset);

    String res = value.copy_str();
    value.free();
    return res;
}