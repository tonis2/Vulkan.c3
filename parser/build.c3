module parser;

import std::io;
import std::core;
import std::math;
import std::collections::list;
import std::collections::map;
import xml;

const MAX_VERSION = 1.4;
const String VERSION_LABEL = "1.4"; // keep in sync with MAX_VERSION

alias TypeMap = HashMap{String, String};

const String[*] ALLOWED_PLATFORMS = {
    "win32", "xlib", "xcb", "wayland", "macos", "metal", "ios", "xlib_xrandr", "provisional"
};

fn int main(String[] args) {

    foreach (arg : args) if (arg == "--strict") diag.strict = true;

    DynamicArenaAllocator allocator;
    allocator.init(allocator: mem, page_size: 256);
    defer allocator.free();

    TypeMap type_values;
    TypeMap enum_alias_to_canonical;
    enum_alias_to_canonical.init_with_key_values(&allocator);

    type_values.init_with_key_values(
        &allocator,
        "uint16_t", "uint",
        "int16_t", "short",
        "uint32_t", "uint",
        "int32_t", "int",
        "uint64_t", "ulong",
        "int64_t", "long",
        "uint8_t", "uint",
        "int8_t", "int",
        "size_t", "sz",
        "isize_t", "sz",
        "null", "void*",
        "HANDLE", "void*",
        "VkBool32", "uint",
        "xcb_connection_t", "Connection",
        "xcb_visualid_t", "Window",
        "xcb_window_t", "Window",
        "wl_display", "Display",
        "zx_handle_t", "Display",
        "HINSTANCE", "HInstance",
        "wl_surface", "WLSurface",
        "HWND", "HWnd",
        "DWORD", "DWord",
        "HMONITOR", "HMonitor",
        "MTLDevice_id", "void*",
        "MTLCommandQueue_id", "void*",
        "MTLBuffer_id", "void*",
        "MTLTexture_id", "void*",
        "MTLSharedEvent_id", "void*",
        "IOSurfaceRef", "void*",
        "LPCWSTR", "LpcWstr",
        "SECURITY_ATTRIBUTES", "SecurityAttributes",
        "(~0ULL)", "(~0UL)"
    );
    
    xml::Parser parser = xml::load_file("assets/vk.xml")!!;
    defer parser.free();

    Node root_node = parser.root;

    File main_file = io::file::open("vk/vk.c3", "wb")!!;
    defer main_file.close()!!;

    File command_file = io::file::open("vk/commands.c3", "wb")!!;
    defer command_file.close()!!;

    File builders_core_file = io::file::open("vk/builders_core.c3", "wb")!!;
    defer builders_core_file.close()!!;

    File builders_ext_file = io::file::open("vk/builders_ext.c3", "wb")!!;
    defer builders_ext_file.close()!!;

    // Find required nodes
    NodeList feature_nodes;
    defer feature_nodes.free();

    NodeList command_nodes;
    defer command_nodes.free();

    NodeList types_nodes;
    defer types_nodes.free();

    root_node.find(fn (node) => node.name == "feature" || node.name == "extension", &feature_nodes);
    root_node.find(fn (node) => (node.attributes.has_key("category") || node.attributes.has_key("type")), &types_nodes);
    root_node.find(fn (node) {
        if (node.name == "command") {
            if (node.attributes.has_key("api") && node.attributes["api"]!! == "vulkansc") {
                 return false;
            };
            return true;
        }
        return false;
    }, &command_nodes);

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
        String? name = node.attributes.get("name");
        String? type = node.attributes.get("type");
        String? comment = node.attributes.get("comment");
        
        if (try name && name == "API Constants") {
            foreach (child: node.children) {
                String? child_name = child.attributes.get("name");
                String? alias_name = child.attributes.get("alias");
                String? value = child.attributes.get("value");

                if (try alias_name && try child_name) continue;

                VkValue data = {
                    .type = type ?? "",
                    .value = value ?? "",
                    .name = child_name!!
                };

                if (try child_name) {
                    constants.push(data);
                }
            }
        }
    }

    String header_version = "unknown";

    foreach (usz i, node : types_nodes) {
        String? comment = node.attributes.get("comment");
        String? extends = node.attributes.get("structextends");
        String? name = node.attributes.get("name");
        String? alias_name = node.attributes.get("alias");
        String category = node.attributes.get("category") ?? node.attributes.get("type")!!;

        if (try alias_name && try name) {

            switch (category) {
                 case "struct": {
                    // Find the source struct by alias name instead of assuming it's the previous node
                    foreach (&src : structs) {
                        if (src.name == alias_name) {
                            VkStruct value;
                            value.name = name;
                            value.alias_name = alias_name;
                            foreach (v : src.values) value.values.push(v);
                            if (value.values.len() > 0) structs.push(value);
                            break;
                        }
                    }
                }
            }
        } 
        
        if (node.children.len() > 0) {
            switch (category) {
                case "enum": {
                    if (try name) enums.push((VkEnum){}.from_node(node));
                }
                case "struct": {
                    structs.push((VkStruct){}.from_node(node));
                }
                case "union": {
                    unions.push((VkStruct){}.from_node(node));
                }
                case "handle": {
                    handles.push((VkValue){}.from_node(node));
                }
                case "bitmask": {
                    if (node.name == "type") {
                            VkValue value = (VkValue){}.from_node(node);
                            if (!basetypes.contains_value(value.name)) basetypes.push(value);
                    };
                if (node.name == "enums") enums.push((VkEnum){}.from_node(node));
                }
                case "basetype": {
                    basetypes.push((VkValue){}.from_node(node));
                }
                case "define": {
                    // <type category="define">#define <name>VK_HEADER_VERSION</name> 353</type>
                    // The spec carries a second, vulkansc-only define with its own version.
                    String? define_api = node.attributes.get("api");
                    if (try define_api && define_api == "vulkansc") continue;
                    foreach (child : node.children) {
                        if (child.name == "name" && child.value == "VK_HEADER_VERSION") {
                            String[] parts = node.value.trim(" \t\r\n").split(mem, " ");
                            String candidate = parts.len > 0 ? parts[parts.len - 1].trim(" \t\r\n") : "";
                            bool numeric = candidate.len > 0;
                            foreach (c : candidate) if (c < '0' || c > '9') numeric = false;
                            if (numeric) {
                                header_version = candidate;
                            } else {
                                diag.warn(&diag.bad_prefixes, "could not parse VK_HEADER_VERSION from vk.xml");
                            }
                        }
                    }
                }
            }
        }
    }

    // Parse commands
    foreach (usz i, node : command_nodes) {
        String? alias_name = node.attributes.get("alias");
        String? name = node.attributes.get("name");

        if (node.children.len() > 0) {
            VkCommand command = (VkCommand){}.from_node(node);
            commands.push(command);
        }

        if (try alias_name && try name) {
            // Find the source command by alias name instead of assuming it's the previous node
            foreach (&src : commands) {
                if (src.name == alias_name) {
                    VkCommand command;
                    command.returnType = src.returnType;
                    command.extension = src.extension;
                    foreach (v : src.values) command.values.push(v);
                    foreach (c : src.error_codes) command.error_codes.push(c);
                    foreach (c : src.success_codes) command.success_codes.push(c);
                    command.name = name;
                    commands.push(command);
                    break;
                }
            }
        }
    };

    // Enable correct features before writing C3 code
    foreach (feature : feature_nodes) {
        String? number = feature.attributes.get("number");
        String? extension_name = feature.attributes.get("name");
        String? feature_api = feature.attributes.get("api");

        if (@ok(feature_api) && feature_api!! == "vulkansc") continue;

        String? supported = feature.attributes.get("supported");
        if (try supported && (supported == "disabled" || supported == "vulkansc")) {
            diag.note_unique(&diag.skipped_extensions, dstring::join(mem,
                {extension_name ?? "?", " (supported=", supported, ")"}, "").str_view());
            continue;
        }

        bool is_extension = feature.name == "extension";

        String? platform = feature.attributes.get("platform");
        bool enabled = is_extension ? (!@ok(platform) || ALLOWED_PLATFORMS.contains(platform!!)) : true;

        if (is_extension && !enabled) {
            diag.note_unique(&diag.skipped_extensions, dstring::join(mem,
                {extension_name ?? "?", " (platform '", platform!!, "')"}, "").str_view());
        }
        if (is_extension && enabled) diag.extensions_enabled++;

        // Get only up-to required vulkan version
        if (((@ok(number) && number.to_double()!! <= MAX_VERSION) || is_extension)) {
            foreach (require: feature.children) {
                String? depends = require.attributes.get("depends");

                foreach (entry : require.children) {
                    String? name = entry.attributes.get("name");
                    String? extends = entry.attributes.get("extends");
                    String? value = entry.attributes.get("value");

                    if (catch err = name) continue;

                    foreach (&node: unions) if (node.name == name && enabled) {
                        node.enabled = true;
                    }

                    switch (entry.name) {
                        case "type": {
                            if (try extends) {} 
                            else {
                                foreach (&node : structs) {
                                    if (node.name == name && node.enabled == false) {
                                        node.enabled = enabled;
                                        // Core <feature> elements precede <extensions> in vk.xml,
                                        // so types shared with core keep from_extension = false.
                                        node.from_extension = is_extension;
                                        break;
                                    }
                                }
                            }
                        }
                        case "command": {
                            foreach (&node : commands) {
                                if (node.name == name && node.enabled == false) {
                                    node.extension = is_extension;
                                    node.enabled = enabled;
                                    break;
                                }
                            }
                        }
                        case "enum": {
                            if (try extends) {
                                String? extnumber = entry.attributes.get("extnumber") ?? number;
                                String? offset = entry.attributes.get("offset");
                                String? bitpos = entry.attributes.get("bitpos");
                                String? dir = entry.attributes.get("dir");
                                String? alias_name = entry.attributes.get("alias");
                                VkEnum* enum_parent = null;

                                // Extends previous enum
                                foreach (&item: enums) {
                                    if (item.name == extends) enum_parent = item;
                                }

                                if (!enum_parent) {
                                    VkEnum base = { .base.name = extends };
                                    enums.push(base);
                                    enum_parent = &enums[enums.len() - 1];
                                };

                                if (try alias_name) {
                                    enum_alias_to_canonical.set(name, alias_name);
                                    continue;
                                }

                                String vk_value = value ?? "";

                                if (try bitpos) vk_value = bitpos.from_bit_pos();
                                if (try extnumber && try offset) {
                                    vk_value = extnumber.from_ext_value(offset, negative_value: @ok(dir));
                                };
                                if (vk_value == "") continue;

                                if (!enum_parent.contains_value(name)) {
                                     VkValue data = {
                                        .name = name,
                                        .value = vk_value
                                    };
                                    enum_parent.values.push(data);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Build C3 files
    write_header(&main_file, header_version);
    write_header(&command_file, header_version);
    write_header(&builders_core_file, header_version);
    write_header(&builders_ext_file, header_version);



    // Constants
    foreach (value : constants) {
        String type = type_values[value.value] ?? value.value;

        DString text_body = dstring::join(&allocator, {"const ", value.name.strip_checked("VK_", "constant"), " = ", type, ";\n"}, "");
        defer text_body.free();
        main_file.write(text_body.str_view())!!;
    }

    if (header_version != "unknown") {
        main_file.write(dstring::join(&allocator, {"const HEADER_VERSION = ", header_version, ";\n"}, "").str_view())!!;
    }

    main_file.write("\n")!!;

    // Handles
    foreach (entry : handles) {
        DString text_body = dstring::join(&allocator, {"typedef ", entry.name.strip_checked("Vk", "handle"), " = inline void*;\n"}, "");
        defer text_body.free();
        main_file.write(text_body.str_view())!!;
    }

    main_file.write("\n")!!;

    // Enums (emitted before BaseTypes so the Flags aliases below can point at the FlagBits constdefs)
    HashMap{String, bool} emitted_flag_bits;
    emitted_flag_bits.init_with_key_values(&allocator);

    foreach (entry : enums) {
        String enum_type = "uint";
        if (entry.name == "VkResult" || entry.negative) enum_type = "int";
        if (entry.bitwidth == "64") enum_type = "ulong";

        String enum_name = entry.name.strip_checked("Vk", "enum");

        bool is_flag_bits = entry.name.contains("FlagBits");
        if (is_flag_bits) emitted_flag_bits.set(enum_name, true);

        DString text_body;
        defer text_body.free();

        // FlagBits are emitted as constdef just like the other enums: constdef supports
        // non-contiguous/arbitrary values and bitwise OR, which is exactly what bitmasks need.
        text_body.append(dstring::join(&allocator, {"constdef ", enum_name, " : ", enum_type, "\n{\n"}, ""));
        foreach (value : entry.values) {
            value.name.convert_to_upper();
            if (!value.name.starts_with("VK_")) {
                diag.warn(&diag.bad_prefixes, dstring::join(mem,
                    {"enum value '", value.name, "' in ", entry.name, " lacks VK_ prefix — skipped"}, "").str_view());
                continue;
            }
            text_body.append(dstring::join(&allocator, {"    ", value.name[3..], " = ", value.value, ",\n"}, ""));
        }
        text_body.append_string("}\n\n");

        main_file.write(text_body.str_view())!!;
        diag.enums_emitted++;
    }

    // BaseTypes
    foreach (entry : basetypes) {
        if (entry.type == "") continue;

        String type = type_values[entry.type] ?? entry.type.remove_vk();

        // A Vulkan `XFlags` type is `typedef VkFlags`; point it at its `XFlagBits` constdef
        // (when one exists) so OR-combined flag values assign to struct fields without a cast.
        String base_name = entry.name.strip_checked("Vk", "basetype");
        if (base_name.ends_with_flags_suffix()) {
            String fb_name = base_name.flags_to_flag_bits();
            if (emitted_flag_bits.has_key(fb_name)) type = fb_name;
        }

        DString text_body = dstring::join(&allocator, {"alias ", base_name, " = ", type, ";\n"}, "");
        main_file.write(text_body.str_view())!!;
    }

    main_file.write("\n")!!;

    // Write C3 errors
    foreach (entry : enums) {
        if (entry.name == "VkResult") {
            DString text_body = dstring::join(&allocator, {"faultdef ",}, "");
            foreach (value : entry.values) if (value.value[0] == '-') text_body.append(dstring::join(&allocator, {" E_", value.name.strip_checked("VK_", "result code"), ",\n"}, ""));
            text_body.append(";\n");

            main_file.write(text_body.str_view())!!;

            break;
        }
    }
    main_file.write("\n")!!;

    DString creators_core;
    DString creators_ext;
    defer creators_core.free();
    defer creators_ext.free();

    // Collect all known type names so we can skip structs/commands referencing undefined types
    HashMap{String, bool} known_types;
    known_types.init_with_key_values(&allocator,
        "void", true, "int", true, "uint", true, "long", true, "ulong", true,
        "short", true, "usz", true, "isz", true, "char", true, "float", true, "double", true,
        // Types defined in extra.c3
        "PFN_vkAllocationFunction", true, "PFN_vkFreeFunction", true,
        "PFN_vkInternalAllocationNotification", true, "PFN_vkInternalFreeNotification", true,
        "PFN_vkReallocationFunction", true, "PFN_vkVoidFunction", true,
        "PFN_vkDebugReportCallbackEXT", true, "PFN_vkDebugUtilsMessengerCallbackEXT", true
    );
    foreach (entry : structs) if (entry.enabled) known_types.set(entry.name, true);
    foreach (entry : unions) if (entry.enabled) known_types.set(entry.name, true);
    foreach (entry : enums) known_types.set(entry.name, true);
    foreach (entry : handles) known_types.set(entry.name, true);
    foreach (entry : basetypes) known_types.set(entry.name, true);

    // Iteratively remove structs/unions with unresolvable member types.
    // removed_types separates root-cause unknowns from cascade removals in the diagnostics.
    HashMap{String, bool} removed_types;
    removed_types.init_with_key_values(&allocator);

    bool changed = true;
    while (changed) {
        changed = false;
        foreach (&entry : structs) {
            if (!entry.enabled) continue;
            foreach (value : entry.values) {
                if (value.type.len > 0 && !type_values.has_key(value.type) && !known_types.has_key(value.type)) {
                    entry.enabled = false;
                    known_types.remove(entry.name);
                    removed_types.set(entry.name, true);
                    diag.record_dropped_type(&diag.dropped_structs, entry.name, value.name, value.type, &removed_types);
                    changed = true;
                    break;
                }
            }
        }
        foreach (&entry : unions) {
            if (!entry.enabled) continue;
            foreach (value : entry.values) {
                if (value.type.len > 0 && !type_values.has_key(value.type) && !known_types.has_key(value.type)) {
                    entry.enabled = false;
                    known_types.remove(entry.name);
                    removed_types.set(entry.name, true);
                    diag.record_dropped_type(&diag.dropped_structs, entry.name, value.name, value.type, &removed_types);
                    changed = true;
                    break;
                }
            }
        }
    }

    // Structs
    foreach (entry : structs) {
        if (!entry.enabled) continue;

        // Skip structs referencing undefined types
        bool has_missing_type = false;
        foreach (value : entry.values) {
            if (value.type.len > 0 && !type_values.has_key(value.type) && !known_types.has_key(value.type)) {
                has_missing_type = true;
                break;
            }
        }
        if (has_missing_type) continue;
        diag.structs_emitted++;

        // Builders for extension-only structs land in builders_ext.c3
        DString* creator_functions = entry.from_extension ? &creators_ext : &creators_core;

        bool has_struct_type = entry.values[0].type == "VkStructureType" && entry.values[0].defaultValue != "";

        String name = entry.name.remove_vk();

        DString text_body = dstring::join(&allocator, {"struct ", name, " {\n"}, "");
        defer text_body.free();

        if (has_struct_type) {
            creator_functions.append(dstring::join(&allocator, {"fn ", name, " ", name.to_lower_case(), "() => ",
            "{ .sType = ", entry.values[0].defaultValue.strip_checked("VK_", "sType value"), ", .pNext = null };\n"}, ""));
        }

        // Add struct values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type.remove_vk();

            if (has_struct_type && i > 0) {
                String value_name = value.value == "*" ? value.name[1..].capitalize() : value.name.capitalize();
                if (value.len != "" && type != "void") {

                    DString buffer = dstring::join(&allocator, {"fn ", name, " ", name, ".set", type == "char" ? value_name[1..] : value_name, "(&self, ", type == "char" ? "ZString" : type, value.size != "" ? value.size : "[]", " ", value.name.to_lower_case(), ") {\n",
                    "   self.", value.len, "= (uint)", value.name.to_lower_case(), ".len;\n"},  "");

                    if (type == "char") {
                        buffer.append(dstring::join(&allocator, {"   self.", value.name, " = (char*)&", value.name.to_lower_case(), "[0];\n", "   return *self;\n}\n"},""));
                    } else if (value.size != "") {
                        buffer.append(dstring::join(&allocator, {"   self.", value.name, " = ", value.name.to_lower_case(), ";\n", "   return *self;\n}\n"},""));
                    } else {
                        buffer.append(dstring::join(&allocator, {"   self.", value.name, " = &", value.name.to_lower_case(), "[0];\n", "   return *self;\n}\n"}, ""));
                    }
                    creator_functions.append(buffer);
                } else {
                    creator_functions.append(dstring::join(&allocator, {"fn ", name, " ", name, ".set", value_name, "(&self, ", type, value.size != "" ? value.size : value.value, " ", value.name.to_lower_case(), ") {\n",
                    "   self.", value.name, " = ", value.name.to_lower_case(), ";\n", "   return *self;\n}\n"
                    }, ""));
                }
            }

            if (value.size != "") {
                text_body.append(dstring::join(&allocator, {"   ", type, value.size, " ", value.name,";\n"}, ""));
            } else {
                text_body.append(dstring::join(&allocator, {"   ", type, value.value, " ", value.name,";\n"}, ""));
            }
        }
        
        text_body.append_string("}\n");
        main_file.write(text_body.str_view())!!;
    }

    builders_core_file.write(creators_core.str_view())!!;
    builders_ext_file.write(creators_ext.str_view())!!;
    main_file.write("\n")!!;

    // Unions
    foreach (entry : unions) {
        if (!entry.enabled) continue;

        bool has_missing_type = false;
        foreach (value : entry.values) {
            if (value.type.len > 0 && !type_values.has_key(value.type) && !known_types.has_key(value.type)) {
                has_missing_type = true;
                break;
            }
        }
        if (has_missing_type) continue;
        diag.unions_emitted++;

        DString text_body = dstring::join(&allocator, {"union ", entry.name.strip_checked("Vk", "union"), " { \n"}, "");
        defer text_body.free();

        // Add values
        foreach (value : entry.values) {
            String type = type_values[value.type] ?? value.type.remove_vk();

            if (value.size != "") {
                text_body.append(dstring::join(&allocator, {"   ", type, value.size, " ", value.name,";\n"}, ""));
            } else {
                text_body.append(dstring::join(&allocator, {"   ", type, value.value, " ", value.name,";\n"}, ""));
            }
        }
        
        text_body.append_string("}\n");
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

    // Maps each CreateInfo type to the index (into `commands`) of the command
    // chosen to back its generated `.build()` method.
    HashMap{String, usz} builder_types;
    builder_types.init_with_key_values(&allocator);

    foreach (usz command_index, entry : commands) {
        if (entry.enabled == false) continue;

        // Skip commands that reference types we haven't generated
        bool has_missing_type = false;
        foreach (value : entry.values) {
            String raw_type = value.type;
            if (raw_type.len > 0 && !type_values.has_key(raw_type) && !known_types.has_key(raw_type)) {
                has_missing_type = true;
                diag.record_dropped_type(&diag.dropped_commands, entry.name, value.name, raw_type, &removed_types);
                break;
            }
        }
        if (has_missing_type) continue;
        diag.commands_emitted++;

        String return_type = type_values[entry.returnType] ?? entry.returnType.remove_vk();
        bool no_result = return_type != "Result";
        bool create_command = entry.name[2..].starts_with("Create");

        String extension_def = dstring::join(&allocator, {"PFN_", entry.name}, "").str_view();

        if (!entry.extension) {
            base_commands.append(dstring::join(&allocator, {"extern fn ", return_type, " ", no_result ? entry.name[2..].to_lower_case() : entry.name, "("}, ""));
        }

        if (no_result && entry.extension) {
            extension_functions.append(dstring::join(&allocator, {"fn ", return_type, " ", entry.name.remove_vk().to_lower_case(), " ("}, ""));
        }

        if (entry.extension) {
            extension_definitions.append(dstring::join(&allocator, {"alias ", extension_def, " = fn ", return_type, " ("}, ""));
            extension_pointers.append(dstring::join(&allocator, {"  ", extension_def, " ", entry.name, ";\n"}, ""));
            extension_bind.append(dstring::join(&allocator, {"   extensions.", entry.name, " = (", extension_def, ")getInstanceProcAddr(instance,\"", entry.name, "\");\n"}, ""));
        }

        if (create_command) {
            String command_name;
            {
                foreach (value : entry.values) if (value.type.contains("CreateInfo")) command_name = value.type;
            }
            // Pick the canonical builder command per CreateInfo type: fewest params wins;
            // on ties prefer a core command over an extension alias (e.g. vkCreateRenderPass2
            // over vkCreateRenderPass2KHR) so .build() links statically instead of going
            // through a runtime-loaded function pointer.
            if (command_name.len > 0) {
                if (!builder_types.has_key(command_name)) {
                    builder_types.set(command_name, command_index);
                } else {
                    VkCommand current = commands[(sz)builder_types[command_name]!!];
                    if (entry.values.len() < current.values.len()
                        || (entry.values.len() == current.values.len() && current.extension && !entry.extension)) {
                        builder_types.set(command_name, command_index);
                    }
                }
            }
        }
      
        // Add values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type.remove_vk();
            String fn_values = dstring::join(&allocator, {type, value.value, i == entry.values.len() - 1 ? "" : ", "}, "").str_view();

            if (entry.extension) {
                extension_definitions.append(fn_values);
                if (no_result) extension_functions.append(dstring::join(&allocator, {type, value.value, " ", value.name, i == entry.values.len() - 1 ? ")" : ", "}, ""));
            } 
            
            if (!entry.extension) base_commands.append(fn_values); 
        }

        if (entry.extension) {
            if (no_result) {
                extension_functions.append(dstring::join(&allocator, {" => extensions.", entry.name, "("}, ""));
                foreach (i, value : entry.values) extension_functions.append(dstring::join(&allocator, {value.name, i == entry.values.len() - 1 ? ");\n" : ", "}, ""));   
            }
            extension_definitions.append(dstring::join(&allocator, {");\n"}, ""));
        } else {
            base_commands.append(dstring::join(&allocator, {")", " @cname(\"", entry.name, "\"); \n"}, ""));
        }
    }

    // Generate .build() methods for create commands (second pass, using the command
    // selected per CreateInfo type in the first pass)
    foreach (usz command_index, entry : commands) {
        if (entry.enabled == false) continue;
        if (!entry.name[2..].starts_with("Create")) continue;

        String command_name;
        {
            foreach (value : entry.values) if (value.type.contains("CreateInfo")) command_name = value.type;
        }
        if (command_name.len == 0) continue;
        if (!builder_types.has_key(command_name) || builder_types[command_name]!! != command_index) continue;

        String result_type = entry.values[entry.values.len() - 1].type;

        create_commands.append(dstring::join(&allocator, {"fn ", result_type.remove_vk(), "? ", command_name.remove_vk(), ".build(&self, "}, ""));

        foreach (i, value : entry.values) {
            if (value.type == command_name || value.type == result_type) continue;
            String type = type_values[value.type] ?? value.type.remove_vk();
            String default_value = "";
            if (value.optional) {
                bool is_pointer = value.value.len > 0 || type.ends_with("*");
                default_value = is_pointer ? " = null" : dstring::join(&allocator, {" = (", type, ")null"}, "").str_view();
            }
            if (type == "uint") default_value = " = 1";

            create_commands.append(dstring::join(&allocator, {type, value.value, " ", value.name, default_value, i == entry.values.len() - 2 ? ") {\n" : ", "}, ""));
        }

        create_commands.append(dstring::join(&allocator, {"   ", result_type.remove_vk(), " response;\n", "   ", entry.name.remove_vk().to_lower_case(), "("}, ""));

        foreach (i, value : entry.values) {
            String name = value.name;
            if (value.type == command_name) name = "self";
            if (value.type == result_type) name = "&response";
            create_commands.append(dstring::join(&allocator, {name, i == entry.values.len() - 1 ? ")!;\n" : ", "}, ""));
        }

        if (result_type == "VkInstance") {
            create_commands.append("   loadExtensions(response);\n");
        }
        create_commands.append("   return response;\n}\n");
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

        // Skip commands that reference types we haven't generated
        bool has_missing_type = false;
        foreach (value : entry.values) {
            String raw_type = value.type;
            if (raw_type.len > 0 && !type_values.has_key(raw_type) && !known_types.has_key(raw_type)) {
                has_missing_type = true;
                break;
            }
        }
        if (has_missing_type) continue;

        String return_type = type_values[entry.returnType] ?? entry.returnType.remove_vk();

        DString text_body;
        text_body.append("fn void? ");
        text_body.append(dstring::join(&allocator, {entry.name[2..].to_lower_case(), " ("}, ""));

        defer text_body.free();

        // Add values
        foreach (i, value : entry.values) {
            String type = type_values[value.type] ?? value.type;
            text_body.append(dstring::join(&allocator, {type.remove_vk(), value.value, " ", value.name, i == entry.values.len() - 1 ? "" : ", "}, ""));
        }

        text_body.append(dstring::join(&allocator, {")", " {\n"}, ""));

        if (entry.extension) {
            text_body.append("  Result result = extensions.");
        } else {
            text_body.append("  Result result = ");
        }

        text_body.append(dstring::join(&allocator, {entry.name, "("}, ""));

        foreach (i, value : entry.values) text_body.append(dstring::join(&allocator, {value.name, i == entry.values.len() - 1 ? "" : ", "}, ""));
        text_body.append(");\n");

        if (entry.error_codes.len() > 0) {
            text_body.append("  switch(result) { \n");
            HashMap{String, bool} seen_cases;
            seen_cases.init_with_key_values(&allocator);
            defer seen_cases.free();
            foreach (i, value : entry.error_codes) {
                if (!value.starts_with("VK_ERROR")) {
                    diag.note_unique(&diag.skipped_result_codes, value);
                    continue;
                }
                String canonical = enum_alias_to_canonical[value] ?? value;
                if (seen_cases.has_key(canonical)) continue;
                seen_cases.set(canonical, true);
                text_body.append(dstring::join(&allocator, {"       case ", canonical[3..], ": return E_", canonical[3..], "~;\n"}, ""));
            }
            text_body.append("  }\n");
        } else {
            text_body.append("  if (result != 0) return E_ERROR_UNKNOWN?;\n");
        }

        text_body.append("}\n");

        command_file.write(text_body.str_view())!!;
    }
    
    command_file.write("\n")!!;
    command_file.write(create_commands.str_view())!!;
    command_file.write("\n")!!;

    diag.report();
    return diag.strict && diag.has_warnings() ? 1 : 0;
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
    return res.copy(mem);
}

fn String String.to_lower_case(self) {
    if (self.len == 0) return self;
    String new_value = self.copy(mem);
    new_value[0] = new_value[0].to_lower();
    return new_value;
}

fn String String.capitalize(self) {
    if (self.len == 0) return self;
    String new_value = self.copy(mem);
    new_value[0] = new_value[0].to_upper();
    return new_value;
}

// True when the name is a Vulkan `XFlags` type: it ends with "Flags" followed only by an
// optional version digit and an optional uppercase vendor suffix (e.g. "Flags", "Flags2KHR").
fn bool String.ends_with_flags_suffix(self) {
    usz end = self.len;
    while (end > 0 && self[end - 1] >= 'A' && self[end - 1] <= 'Z') end--; // vendor caps (KHR, EXT, NV, ...)
    while (end > 0 && self[end - 1] >= '0' && self[end - 1] <= '9') end--; // version digit
    return end >= 5 && self[:end].ends_with("Flags");
}

// Maps an `XFlags` name to its `XFlagBits` enum name: QueueFlags -> QueueFlagBits,
// AccessFlags2KHR -> AccessFlagBits2KHR. Only valid when ends_with_flags_suffix() is true.
fn String String.flags_to_flag_bits(self) {
    usz end = self.len;
    while (end > 0 && self[end - 1] >= 'A' && self[end - 1] <= 'Z') end--;
    while (end > 0 && self[end - 1] >= '0' && self[end - 1] <= '9') end--;
    char[64] buffer;
    String res = (String)io::bprintf(&buffer, "%sFlagBits%s", self[:end - 5], self[end..])!!;
    return res.copy(mem);
}

// No timestamp on purpose: regenerating from the same spec must produce identical files.
fn void write_header(File* file, String header_version) {
    DString header = dstring::join(mem, {
        "// Generated by parser/build.c3 from vk.xml (Vulkan ", VERSION_LABEL,
        ", VK_HEADER_VERSION ", header_version, "). Do not edit.\n",
        "module vk;\n"}, "");
    defer header.free();
    file.write(header.str_view())!!;
}

// Strip an expected prefix ("VK_"/"Vk"), warning instead of silently slicing
// garbage when the name doesn't carry it.
fn String String.strip_checked(self, String prefix, String ctx) {
    if (self.len > prefix.len && self[:prefix.len] == prefix) return self[prefix.len..];
    diag.warn(&diag.bad_prefixes, dstring::join(mem,
        {ctx, ": '", self, "' lacks expected prefix '", prefix, "'"}, "").str_view());
    return self;
}

fn String String.remove_vk(self) {
    if (self.len < 2) return self;
    if (self[0..1] == "Vk" || self[0..1] == "vk") {
         return self.copy(mem)[2..];
    }
    return self;
}

fn String String.from_ext_value(&self, String offset, bool negative_value = false) {
    char[32] buffer;
    DString value;
  
    uint ext_int = self.to_uint()!! - 1;
    uint offset_int = offset.to_uint()!!;

    if (negative_value) value.append_string("-");
    value.append_string("1");
    value.append_repeat('0', 6 - self.len);
    value.append_string((String)io::bprintf(&buffer, "%s", ext_int)!!);
    value.append_repeat('0', 3 - offset.len);
    value.append_string(offset);

    String res = value.copy_str(mem);
    value.free();
    return res;
}