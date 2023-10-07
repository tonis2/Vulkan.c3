import 'helpers.dart';
import "dart:io";
import 'package:xml/xml.dart';

var platformTypes = {
  "RROutput": "ulong",
  "VisualID": "uint",
  "Display": "void*",
  "Window": "ulong",
  "xcb_connection_t": "void*",
  "xcb_window_t": "uint",
  "xcb_visualid_t": "uint",
  "MirConnection": "void*",
  "MirSurface": "void*",
  "HINSTANCE": "void*",
  "HWND": "void*",
  "wl_display": "void*",
  "wl_surface": "void*",
  "Handle": "void*",
  "HMONITOR": "void*",
  "DWORD": "ulong",
  "LPCWSTR": "uint*",
  "zx_handle_t": "uint",
  "_screen_buffer": "void*",
  "_screen_context": "void*",
  "_screen_window": "void*",
  "SECURITY_ATTRIBUTES": "void*",
  "ANativeWindow": "void*",
  "AHardwareBuffer": "void*",
  "CAMetalLayer": "void*",
  "GgpStreamDescriptor": "uint",
  "GgpFrameToken": "ulong",
  "IDirectFB": "void*",
  "IDirectFBSurface": "void*",
  "__IOSurface": "void*",
  "IOSurfaceRef": "void*",
  "MTLBuffer_id": "void*",
  "MTLCommandQueue_id": "void*",
  "MTLDevice_id": "void*",
  "MTLSharedEvent_id": "void*",
  "MTLTexture_id": "void*",
};

var replaceNames = {"module": "mod"};
var filteredNames = [
  "VkBaseInStructure",
  "VkBaseOutStructure",
  "VkPhysicalDeviceVulkan11Features",
  "VkPhysicalDeviceVulkan12Features",
  "VkPhysicalDeviceVulkan13Features",
  "VkPhysicalDeviceVulkan11Properties",
  "VkPhysicalDeviceVulkan12Properties",
  "VkPhysicalDeviceVulkan13Properties",
  "VkPipelineCreationFeedbackCreateInfo"
];


var filteredComments = [
  "API version macros",
  "Header boilerplate"
];

//"VK_VERSION_1_1", "VK_VERSION_1_2", "VK_VERSION_1_3"
var versions = ["VK_VERSION_1_0", "VK_VERSION_1_1", "VK_VERSION_1_2", "VK_VERSION_1_3"];

var enabled_extensions = [
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
  //"VK_EXT_debug_marker",
  // "VK_KHR_depth_stencil_resolve",
  // "VK_KHR_get_display_properties2",
  // "VK_KHR_get_surface_capabilities2",
  // "VK_KHR_bind_memory2",
  // "VK_KHR_display",
  // "VK_KHR_display_swapchain",
  // "VK_MVK_moltenvk",
  // "VK_MVK_macos_surface",
  // "VK_KHR_dynamic_rendering"
];

var typeMap = {
  "uint16_t": "uint",
  "int16_t": "short",
  "uint32_t": "uint",
  "int32_t": "int",
  "uint64_t": "ulong",
  "int64_t": "long",
  "uint8_t": "uint",
  "int8_t": "int",
  "size_t": "usz",
  "isize_t": "isz",
  "null": "void*",
  "HANDLE": "void*",
  ...platformTypes
};



void main() {

  var mainOutput = File('./build/vk.c3');
  var buildersOutput = File('./build/builders.c3');
  var commandsOutput = File('./build/commands.c3');

  final file = new File('assets/vk.xml');
  final document = XmlDocument.parse(file.readAsStringSync());

  mainOutput.writeAsStringSync("");
  buildersOutput.writeAsStringSync("");
  commandsOutput.writeAsStringSync("");

  mainOutput.writeAsStringSync("module vk; \n", mode: FileMode.append);
  buildersOutput.writeAsStringSync("module vk; \n", mode: FileMode.append);
  commandsOutput.writeAsStringSync("module vk; \n", mode: FileMode.append);

  mainOutput.writeAsStringSync("// Platform types \n", mode: FileMode.append);
  mainOutput.writeAsStringSync(
      platformTypes.entries
          .map((value) => "def ${value.key.formatTypeName()} = ${value.value};")
          .join("\n"),
      mode: FileMode.append);
  mainOutput.writeAsStringSync("\n", mode: FileMode.append);

  List<VkValue> bitmasks = [];
  List<VkValue> handles = [];
  List<VkValue> basetypes = [];
  List<VkType> unions = [];
  List<VkType> pointers = [];
  List<VkType> structs = [];
  List<VkType> enums = [];
  List<VkValue> constants = [];
  List<VkType> commands = [];
  List<VkType> extensionCommands = [];
  List<VkValue> aliases = [];

  var features = document.findAllElements("feature").where((element) {
    String? apiName = element.getAttribute("name");
    return apiName != "VKSC_VERSION_1_0" && versions.contains(apiName);
  });

  var extensions = document.findAllElements("extension").where((element) {
    String? extension_name = element.getAttribute("name");
    String? depends = element.getAttribute("depends");
    bool isEnabled = enabled_extensions.contains(extension_name);
    if (depends != null && isEnabled) {
      var dependencies = depends.split("+").join(",").split(",").map((element) => versions.contains(element) || enabled_extensions.contains(element)).where((element) => !element);
      if (dependencies.isNotEmpty) {
        print("extension dependency not met $extension_name");
        return false;
      }
    }
    return isEnabled;
  });

  [...features, ...extensions].forEach((feature) {
    String? feature_number = feature.getAttribute("number");
    String? feature_comment = feature.getAttribute("comment");
    bool isExtension = feature.name.qualified == "extension";

    feature.findAllElements("require")
         .where((requirement) => !filteredComments.contains(requirement.getAttribute("comment")))
    .where((requirement) {
      String? dependency = requirement.getAttribute("depends");
      if (dependency != null) {
        return versions.contains(dependency) || enabled_extensions.contains(dependency);
      }
      else {
        return true;
      }
    })
        .forEach((requirement) {
      String? requirement_comment = requirement.getAttribute("comment");

      requirement.childElements.where((child) => !filteredNames.contains(child.getAttribute("name")) && child.getAttribute("api") != "vulkansc" ).forEach((child) {
          String nodeType = child.name.qualified;
          String? name = child.getAttribute("name");
          String? extension = child.getAttribute("extends");

          if (nodeType == "enum") {
            XmlElement? node = document.findParentNode(nodeType, name);

            // Extends previous enum
            if (extension != null) {
              String? offset = node?.getAttribute("offset");
              String? bit_pos = node?.getAttribute("bitpos");
              String? value = node?.getAttribute("value");
              VkType? parent_node = enums.where((element) => element.name == extension).firstOrNull;

              if (bit_pos != null) {
                parent_node?.values.add(VkValue(
                    name: name ?? "-",
                    defaultValue: bit_pos.to_bitvalue()));
              }
              else if (offset != null) {
                String? extension_nr = node?.getAttribute("extnumber");
                String? direction = node?.getAttribute("dir");
                parent_node?.values.add(VkValue(name: name ?? "-", defaultValue: extension_nr != null ? extension_nr.ext_num_enum(offset , direction) : feature_number?.ext_num_enum(offset , direction)));
              }
              else {
                parent_node?.values.add(VkValue(name: name ?? "-", defaultValue: value ?? "0"));
              }
            } else {
              constants.add(VkValue(name: name ?? "-" , type: node?.getAttribute("type"), defaultValue: node?.getAttribute("value")));
            }
          }

          if (nodeType == "type") {
            XmlElement? node = document.findParentNode(nodeType, name, hasCategory: true);
            String? node_category = node?.getAttribute("category");
            String? type = node?.getElement("type")?.innerText;

            switch(node_category) {
              case "handle": {
                handles.add(VkValue(name: name ?? "-", type: "void*"));
              }
              case "basetype":{
                basetypes.add(VkValue(name: name ?? "-", type: typeMap[type] ?? "void*"));
              }
              case "bitmask": {
                bitmasks.add(VkValue(name: name ?? "-", type: type ?? "void*"));
              }
              case "enum": {
                XmlElement? enum_parent = document.findParentNode("enums", name);
                var values = enum_parent?.findAllElements("enum")
                    .where((element) => element.getAttribute("alias") == null)
                    .map((entry) {
                      var default_value = entry.getAttribute("value");
                      var bit_pos = entry.getAttribute("bitpos");
                      return VkValue(name: entry.getAttribute("name") ?? "-", defaultValue: bit_pos != null ? bit_pos.to_bitvalue() : default_value);
                    }).toList();
                enums.add(VkType(name: name ?? "-" , category: nodeType, values: values ?? [], bitwidth: enum_parent?.getAttribute("bitwidth")));
              }
              case "union": {
                XmlElement? node = document.findParentNode("type", name, hasCategory: true);
                List<VkValue> values =
                    node?.findAllElements('member').map((node) => VkValue.fromXML(node)).toList() ?? [];
                unions.add(VkType(name: name ?? "-", values: values, category: "union"));
              }
              case "struct": {
                List<VkValue> values =
                node?.findAllElements('member').where((element) => element.getAttribute("api") != "vulkansc").map((node) => VkValue.fromXML(node)).toList() ?? [];
                structs.add(VkType(name: name ?? "-", values: values, category: "struct"));
              }
              case "funcpointer": {
                XmlElement? node = document.findParentNode("type", name, hasCategory: true);
                String? returnType = node?.innerText.split(" ")[1];
                var values = node?.findAllElements('type').map((element) => VkValue(type: typeMap[element.innerText] ?? element.innerText.replaceAll("void", "void*"), name: "-")).toList();
                pointers.add(VkType(category: "fnPointer", values: values ?? [], name: name ?? "-", returnType: typeMap[returnType] ?? returnType));
              }
            }
          }


          if (nodeType == "command") {
             XmlNode? node = document.findParentNode("proto", name)?.parent;
             bool hasAlias = false;
             if (node == null) {
               hasAlias = true;
               node = document.findParentNode("proto", name?.replaceAll("KHR", ""))?.parent;
             };

             XmlElement? proto = node?.getElement("proto");
             String? returnType = proto?.getElement("type")?.innerText;

             List<String> successCodes =
                 node?.getAttribute("successcodes")?.split(",").toList() ?? [];
             List<String> errorCodes =
                 node?.getAttribute("errorcodes")?.split(",").toList() ?? [];

             List<VkValue> values =
                 node?.childElements.where((element) => element.name.qualified == "param" && element.getAttribute("api") != "vulkansc").map((node) => VkValue.fromXML(node)).toList() ?? [];

             if (isExtension) {
               if (hasAlias) {
                 aliases.add(VkValue(name: name! + "KHR", defaultValue: name));
               }
               extensionCommands.add(VkType(name: name ?? "-", values: values, category: "command", successCodes: successCodes, errorCodes: errorCodes, returnType: typeMap[returnType] ?? returnType));
             } else {
               commands.add(VkType(name: name ?? "-", values: values, category: "command", successCodes: successCodes, errorCodes: errorCodes, returnType: typeMap[returnType] ?? returnType));
             }
          }
      });
    });
  });


  // Write all VKResults as C3 error
  VkType vulkan_results = enums.firstWhere((element) => element.name == "VkResult");
  List<String> error_names = vulkan_results.values.map((entry) => entry.name).toList();

  mainOutput.writeAsStringSync(
      """
fault VkErrors {
  ${vulkan_results.values.map((value) => value.name.substring(3)).join(",\n ")}
}
 """, mode: FileMode.append);

  mainOutput.writeAsStringSync(
      """
macro bool SurfaceFormatKHR.equals(SurfaceFormatKHR a, SurfaceFormatKHR b) => a.format == b.format && a.colorSpace == b.colorSpace;
macro bool PresentModeKHR.equals(PresentModeKHR a, PresentModeKHR b) => a == b;
 """, mode: FileMode.append);


  handles.forEach((type) {
    mainOutput.writeAsStringSync("distinct ${type.name.C3Name} = inline ${type.type};\n",
        mode: FileMode.append);
  });

  basetypes.forEach((element) {
    mainOutput.writeAsStringSync("def ${element.name.C3Name} = ${element.type?.C3Name};\n",
        mode: FileMode.append);
  });

  bitmasks.forEach((element) {
    mainOutput.writeAsStringSync("def ${element.name.C3Name} = ${element.type?.C3Name};\n",
        mode: FileMode.append);
  });

  constants.forEach((value) {
    mainOutput.writeAsStringSync(
        "const ${value.name.substring(3)} = ${value.defaultValue?.replaceAll("ULL", "UL")};\n",
        mode: FileMode.append);
  });

  unions.forEach((element) {
    String code = "union ${element.name.C3Name} {\n  ${element.values.map((value) => "${value.type?.C3Name} ${value.name.camelCase()};").join("\n  ")}\n}\n";
    mainOutput.writeAsStringSync(code, mode: FileMode.append);
  });

  enums.forEach((entry) {
    String code =
        "\ndistinct ${entry.name.C3Name} = inline ${entry.bitwidth != null ? "ulong" : "int"};\n${entry.values.map((value) => "const ${entry.name.C3Name} ${value.name.C3Name.toUpperCase().substring(1)} = ${value.defaultValue};").join("\n")}\n";
    mainOutput.writeAsStringSync(code, mode: FileMode.append);
  });

  structs.where((element) => element.values.length != 0).forEach((type) {
    String code = "struct ${type.name.C3Name} {\n ${type.values.map((value) =>"${value.type?.C3Name} ${value.name.camelCase()};").join("\n ")}\n}\n";
    mainOutput.writeAsStringSync(code, mode: FileMode.append);
  });

  // Struct builders
  structs.where((element) => element.values.length != 0 && element.values[0].defaultValue != null && !filteredNames.contains(element.name)).forEach((type) {
    buildersOutput.writeAsStringSync(
        """\n
fn ${type.name.C3Name} ${type.name.C3Name.camelCase()}Builder() {
  ${type.name.C3Name} defaultValue = {
    .sType = ${type.values[0].defaultValue?.substring(3)},
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
${type.values.skip(1).map((element) {
  bool isArrayValue = element.lenValue != null && element.lenValue![0] != "null-terminated";
  String fnName = element.name.capitalizeName();

  if (element.isPointer) {
    fnName = element.name.substring(1).capitalizeName();
  }

  if (element.isDoublePointer) {
    fnName = element.name.substring(2).capitalizeName();
  }

  if (element.type == "char*" && isArrayValue) {
    return """
fn ${type.name.C3Name} ${type.name.C3Name}.set${fnName}(self, ZString[] ${element.name}) {
  self.${element.lenValue![0]} = (uint)${element.name}.len;
  self.${element.name} = (char*)&${element.name}[0];
  return self;
}
""";
}

if (isArrayValue && (element.type != "void*")) {
  return """
fn ${type.name.C3Name} ${type.name.C3Name}.set${fnName}(self, ${element.type?.C3Name.replaceAll("*", "")}[] ${element.name}) {
  self.${element.lenValue?[0]} = (uint)${element.name}.len;
  self.${element.name} = &${element.name}[0];
  return self;
}
""";
          }

          return """
fn ${type.name.C3Name} ${type.name.C3Name}.set${fnName}(self, ${element.type?.C3Name} ${element.name}) {
  self.${element.name} = ${element.name};
  return self;
}
       """;
        }).join("\n")}
""", mode: FileMode.append);
  });

  pointers.forEach((command) {
    String code =
        "def ${command.name} = fn ${command.returnType?.C3Name} (${command.values.map((value) => value.type?.C3Name).join(", ")});\n";
    commandsOutput.writeAsStringSync(code, mode: FileMode.append);
  });

  commands.where((element) => element.errorCodes.isEmpty).forEach((command) {
    String code =
        "extern fn ${command.returnType?.C3Name} ${command.name.C3Name.camelCase()} (${command.values.map((type) => "${type.type?.C3Name} ${type.name}").join(", ")}) @extern(\"${command.name}\");\n";
    commandsOutput.writeAsStringSync(code, mode: FileMode.append);
  });

  commands.where((element) => element.errorCodes.isNotEmpty).forEach((command) {
    String code =
        "extern fn ${command.returnType?.C3Name} ${command.name.camelCase()} (${command.values.map((type) => "${type.type?.C3Name} ${type.name.formatTypeName().camelCase()}").join(", ")}) @extern(\"${command.name}\");\n";
    commandsOutput.writeAsStringSync(code, mode: FileMode.append);
  });

// Write commands with C3 error handling
  commands.where((element) => element.errorCodes.isNotEmpty).forEach((command) {
    String code =
    """
fn void! ${command.name.C3Name.camelCase()} (${command.values.map((type) => "${type.type?.C3Name} ${type.name.camelCase()}").join(", ")}) {
  Result result = ${command.name.camelCase()}(${command.values.map((type) => "${type.name.camelCase()}").join(", ")});
  switch(result) {
    ${command.errorCodes.where((value) => error_names.contains(value)).map((err) => "case ${err.substring(3)}: \n        return VkErrors.${err.substring(3)}?;").join("\n    ")}
  }
}
""";
    commandsOutput.writeAsStringSync(code, mode: FileMode.append);
  });

// Extension bindings code
commandsOutput.writeAsStringSync("""
${extensionCommands.map((command) => "def PFN_${command.name} = fn ${command.returnType?.C3Name} (${command.values.map((type) => "${type.type?.C3Name}").join(", ")});").join("\n")}

struct VK_extension_bindings {
 ${extensionCommands.map((command) => "PFN_${command.name} ${command.name.camelCase()};").join("\n ")}
}
VK_extension_bindings extensions;
fn void loadExtensions(Instance instance) {
  ${extensionCommands.map((command) => "extensions.${command.name.camelCase()} = (PFN_${command.name})getInstanceProcAddr(instance, \"${command.name}\");").join("\n  ")}
}
${extensionCommands.where((entry) => entry.errorCodes.isEmpty).map((command) => "fn ${command.returnType?.C3Name} ${command.name.C3Name.camelCase()} (${command.values.map((type) => "${type.type?.C3Name} ${type.name.camelCase()}").join(", ")}) => extensions.${command.name.camelCase()}(${command.values.map((type) => type.name.camelCase()).join(",")});").join("\n")}
${extensionCommands.where((entry) => entry.errorCodes.isNotEmpty).map((command)  {
    return """
fn void! ${command.name.C3Name.camelCase()} (${command.values.map((type) => "${type.type?.C3Name} ${type.name.camelCase()}").join(", ")}) {
  Result result = extensions.${command.name.camelCase()}(${command.values.map((type) => "${type.name.camelCase()}").join(", ")});
  switch(result) {
    ${command.errorCodes.where((value) => error_names.contains(value)).map((err) => "case ${err.substring(3)}: \n        return VkErrors.${err.substring(3)}?;").join("\n    ")}
  }
}
""";
  }).join("\n")}
""", mode: FileMode.append);
}

class VkType {
  String name;
  String? comment;
  String category;
  String? bitwidth;
  String? returnType;
  List<String> successCodes = [];
  List<String> errorCodes = [];
  List<VkValue> values;

  VkType({ this.name = "-", required this.category, required this.values, this.comment, this.successCodes = const [], this.errorCodes = const [], this.bitwidth, this.returnType});
}

class VkValue {
  String name;
  String? bitpos;
  String? type;
  bool isPointer;
  bool isDoublePointer;
  String? api;
  String? defaultValue;
  List<String>? lenValue;

  VkValue({required this.name, this.type, this.bitpos, this.isPointer = false, this.isDoublePointer = false, this.api, this.defaultValue, this.lenValue});


  static VkValue fromXML(XmlNode node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? lenValue = node.getAttribute("len");
    String? altlen = node.getAttribute("altlen");
    String? default_value = node.getAttribute("values");

    String? len;
    String? hasLen = node.getElement("name")?.following.toString();

    int pointing = node.innerText.split('*').length;
    bool isPointer = pointing > 1;
    bool isDoublePointer = pointing > 2;

    if (hasLen?.substring(1, 2) == "[") {
      String? enumValue = node.getElement("enum")?.innerText;
      if (enumValue != null) {
        len = enumValue.substring(3);
      } else {
        len = hasLen?.substring(2, 3);
      }
    }

    if (altlen != null) {
      lenValue = null;
    }
    if (replaceNames.containsKey(name)) name = replaceNames[name];

    if (typeMap.containsKey(type)) type = typeMap[type];
    if (len != null) type = "$type[${len}]";
    if (isPointer) type = "$type*";

    return VkValue(name: name ?? "-", type: type ?? "-", lenValue: lenValue?.split(",").toList(), defaultValue: default_value, isPointer: isPointer, isDoublePointer: isDoublePointer);
  }
}

