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
var versions = ["VK_VERSION_1_0", "VK_VERSION_1_1", "VK_VERSION_1_2", "VK_VERSION_1_3"];

const API = "vulkan";
var extensions = [
  "VK_KHR_surface",
  "VK_KHR_xcb_surface",
  "VK_KHR_swapchain",
  "VK_KHR_display",
  "VK_KHR_portability_enumeration",
  "VK_KHR_push_descriptor",
  "VK_EXT_debug_report",
  "VK_EXT_debug_utils",
  "VK_EXT_swapchain_colorspace",
  "VK_KHR_portability_subset",
  //"VK_EXT_debug_marker",
  // "VK_KHR_depth_stencil_resolve",
  // "VK_KHR_get_physical_device_properties2",
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

var defaultValues = {
  "uint": 0,
  "short": 0,
  "int": 0,
};

class VKstruct {
  bool returnedOnly;
  String? name;
  String? extendsStruct;
  List<VKtype> values = [];

  VKstruct(
      {required this.returnedOnly,
      required this.name,
      required this.values,
      this.extendsStruct});
  static fromXML(XmlElement node) {
    String? returned = node.getAttribute("returnedonly");
    String? name = node.getAttribute("name");
    String? extendsStruct = node.getAttribute("structextends");
    List<VKtype> values = List<VKtype>.from(
        node.findAllElements('member').where((node) => node.getAttribute("api") != "vulkansc").map((node) => VKtype.fromXML(node)));
    return VKstruct(
        returnedOnly: returned == "true",
        name: name,
        values: values,
        extendsStruct: extendsStruct);
  }

  String? C3Name() {
    return name?.substring(2).camelCase().replaceAll("_", "");
  }
}

class VKenumValue {
  String? index;
  String? name;
  String? value;
  String? type;
  String? deprecated;
  String? alias;
  String? bitValue;
  VKenumValue(
      {required this.name,
      required this.value,
      required this.index,
      this.type,
      this.deprecated,
      this.alias,
      this.bitValue});

  static fromXML(XmlElement node) {
    String? index = node.getAttribute("index");
    String? name = node.getAttribute("name");
    String? value = node.getAttribute("value");
    String? type = node.getAttribute("type");
    String? deprecated = node.getAttribute("deprecated");
    String? alias = node.getAttribute("alias");
    String? bitpos = node.getAttribute("bitpos");
    String? bitValue;
    if (bitpos != null) {
      bitValue = bitpos.to_bitvalue();
    }
    return VKenumValue(
        index: index,
        name: name,
        value: value,
        type: type,
        deprecated: deprecated,
        alias: alias,
        bitValue: bitValue);
  }
}

class VKenum {
  String? type;
  String? name;
  String? comment;
  String? bit_width;
  List<VKenumValue> values;
  VKenum({required this.name, this.type, required this.values, this.comment, this.bit_width});

  static fromXML(XmlElement node) {
    String? name = node.getAttribute("name");
    String? type = node.getAttribute("type");
    String? comment = node.getAttribute("comment");
    String? bit_width = node.getAttribute("bitwidth");
    List<VKenumValue> values = List<VKenumValue>.from(node
        .findAllElements('enum')
        .where((element) => element.getAttribute("deprecated") == null)
        .map((node) => VKenumValue.fromXML(node)));
    return VKenum(type: type, name: name, values: values, comment: comment, bit_width: bit_width);
  }
}

class VKtype {
  String? type;
  String? name;
  String? requiredBy;
  String? api;
  String? defaultValue;
  List<String>? lenValue;
  String? altLen;
  bool isPointer;
  bool isDoublePointer;
  VKtype(
      {required this.type,
      required this.name,
      required this.requiredBy,
        this.isPointer = false,
        this.isDoublePointer = false,
        this.defaultValue,
        this.altLen,
        this.lenValue,
      this.api});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? requiredBy = node.getAttribute("requires");
    String? optional = node.getAttribute("optional");
    String? api = node.getAttribute("api");
    String? values = node.getAttribute("values");
    String? lenValue = node.getAttribute("len");
    String? altlen = node.getAttribute("altlen");
    String hasLen = node.getElement("name")!.following.toString();
    int pointing = node.innerText.split('*').length;
    bool isPointer = pointing > 1;
    bool isDoublePointer = pointing > 2;
    String? len;

    if (hasLen.substring(1, 2) == "[") {
      String? enumValue = node.getElement("enum")?.innerText;
      if (enumValue != null) {
        len = enumValue;
      } else {
        len = hasLen.substring(2, 3);
      }
    }

    /*  bool nullTerminated = node.getAttribute("len") == "null-terminated";*/
    return VKtype(
        type:
            "${typeMap[type] ?? type}${len != null ? "[${len}]" : ""}${isPointer ? "*" : ""}",
        name: replaceNames[name] ?? name,
        requiredBy: requiredBy,
        defaultValue: values,
        isPointer: isPointer,
        isDoublePointer: isDoublePointer,
        altLen: altlen,
        lenValue: lenValue?.split(",").toList(),
        api: api);
  }

}

class VKfnPointer {
  String? name;
  String? requiredBy;
  String? returnType;
  List<String> values;
  VKfnPointer(
      {required this.name,
      required this.values,
      required this.returnType,
      this.requiredBy
      });
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? returnType = node.innerText.split(" ")[1];
    String? requiredBy = node.getAttribute("requires");
    List<String> values =
        List<String>.from(node.findAllElements('type').map((value) {
      bool isOptional = value.following.toString().contains("*");
      return "${typeMap[value.innerText] ?? value.innerText}${isOptional ? "*" : ""}";
    }));
    return VKfnPointer(
        name: name,
        requiredBy: requiredBy,
        values: values,
        returnType: typeMap[returnType] ?? returnType);
  }
}

class VKCommand {
  String? name;
  String? returnType;
  List<String> successCodes;
  List<String> errorCodes;
  List<VKtype> values;
  VKCommand(
      {required this.name,
      required this.values,
      required this.successCodes,
      required this.errorCodes,
      required this.returnType});
  static fromXML(XmlElement node) {
    XmlElement? proto = node.getElement("proto");
    String? name = proto?.getElement("name")?.innerText;
    String? returnType = proto?.getElement("type")?.innerText;
    List<String> successCodes =
        node.getAttribute("successcodes")?.split(",").toList() ?? [];
    List<String> errorCodes =
        node.getAttribute("errorcodes")?.split(",").toList() ?? [];

    List<VKtype> values = List<VKtype>.from(node
        .findAllElements('param')
        .where((element) =>
            element.getElement("type") != null &&
            element.getAttribute("api") != "vulkansc")
        .map((value) => VKtype.fromXML(value)));

    return VKCommand(
        name: name?.replaceAll("_", ""),
        values: values,
        returnType: typeMap[returnType] ?? returnType,
        errorCodes: errorCodes,
        successCodes: successCodes);
  }

  String? C3Name() {
    return name?.substring(2).camelCase().replaceAll("_", "");
  }

  String valuesString() {
    return values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase().replaceAll("_", "")}").join(", ");
  }
}

extension ParseMethods on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${this.toLowerCase().substring(1)}';
  }

  String formatTypeName() {
    var value = this;
    value = value.replaceAll("_t", "");
    value = value.replaceAll("_", "");
    value = value.capitalize();
    return value;
  }

  String capitalizeName() {
    return '${this?[0].toUpperCase()}${this?.substring(1)}';
  }

  String camelCase() {
    return '${this[0].toLowerCase()}${this.substring(1)}';
  }

  String to_bitvalue() {
    return "0x${(1 << int.parse(this)).toRadixString(16).padLeft(8, '0')}";
  }

  String ext_num_enum(String offset, String? dir) {
    String newValue = (int.parse(this) - 1).toString();
    return "${dir ?? ""}1${newValue.padLeft(6, "0")}${offset.padLeft(3, "0")}";
  }
}

void main() {

  var output = File('./build/vk.c3');
  var builders = File('./build/builders.c3');
  var windowOutput = File('./build/window.c3');

  final file = new File('assets/vk.xml');
  final document = XmlDocument.parse(file.readAsStringSync());

  output.writeAsStringSync("");
  builders.writeAsStringSync("");
  builders.writeAsStringSync("module vk; \n", mode: FileMode.append);
  output.writeAsStringSync("module vk; \n", mode: FileMode.append);

  // Plaform types
  output.writeAsStringSync("// Platform types \n", mode: FileMode.append);
  output.writeAsStringSync(
      platformTypes.entries
          .map((value) => "def ${value.key.formatTypeName()} = ${value.value};")
          .join("\n"),
      mode: FileMode.append);
  output.writeAsStringSync("\n", mode: FileMode.append);

  List<VKtype> types = [];
  List<VKtype> bitmasks = [];
  List<VKtype> handles = [];
  List<VKtype> basetypes = [];
  List<VKstruct> unions = [];
  List<VKstruct> structs = [];
  List<VKfnPointer> pointers = [];
  List<VKCommand> commands = [];
  List<VKCommand> extensionCommands = [];
  List<VKenum> enums = [];
  List<VKenumValue> constants = [];

  void parseType(String nodeType, String name) {
    // Find the Vulkan type in XML and parse it
    List<XmlElement> vkNode =
        document.findAllElements(nodeType).where((element) {
      bool hasName = (element.getAttribute("name") == name) ||
          (element.getElement("name")?.innerText == name);
      return hasName &&
          element.getAttribute("category") != null &&
          element.getAttribute("api") != "vulkansc";
    }).toList();

    if (vkNode.length == 0) return;
    XmlElement node = vkNode.first;
    String category = node.getAttribute("category")!;

    // Parse Vulkan types
    if (category == "bitmask") {
      VKtype value = VKtype.fromXML(node);
      bitmasks.add(value);
    }

    if (category == "handle") {
      VKtype value = VKtype.fromXML(node);
      handles.add(value);
    }

    if (category == "basetype") {
      VKtype value = VKtype.fromXML(node);
      basetypes.add(value);
    }

    if (category == "enum") {
      var enumNode = document.findAllElements("enums").firstWhere((element) =>
          element.getAttribute("name") == name &&
          element.getAttribute("api") != "vulkansc");
      VKenum value = VKenum.fromXML(enumNode);
      enums.add(value);
    }

    if (category == "union") {
      VKstruct value = VKstruct.fromXML(node);
      unions.add(value);
    }

    if (category == "struct") {
      VKstruct value = VKstruct.fromXML(node);
      structs.add(value);
    }

    if (category == "funcpointer") {
      pointers.add(VKfnPointer.fromXML(node));
    }
  }

  // Find features for set api version
  var features = document.findAllElements("feature").where((element) {
    String? apiName = element.getAttribute("name");
    return apiName != "VKSC_VERSION_1_0" && versions.contains(apiName);
  });

  // Parse by VK version
  features.forEach((feature) {
    var requirements = feature.findAllElements("require");
    String? version = feature.getAttribute("number");
    String? comment = feature.getAttribute("comment");
    requirements.forEach((element) {
      // Loop throught api required components
      element.childElements.forEach((child) {
        String nodeType = child.name.qualified;
        String? name = child.getAttribute("name");
        if (name == null || filteredNames.contains(name)) return;
        if (nodeType == "enum") {
          String? extension = child.getAttribute("extends");
          if (extension == null) {
            var enumNode = document
                .findAllElements("enum")
                .firstWhere((value) => value.getAttribute("name") == name);
            String? value = enumNode.getAttribute("value");
            String? type = enumNode.getAttribute("type");
            String? alias = enumNode.getAttribute("alias");
            constants.add(VKenumValue(
                name: name,
                value: value,
                index: null,
                type: type,
                alias: alias));
          }

          if (extension != null) {
            // Extend previous enums
            String? extNumber = child.getAttribute("extnumber");
            String? offset = child.getAttribute("offset");
            String? name = child.getAttribute("name");
            String? bitpos = child.getAttribute("bitpos");
            String? dir = child.getAttribute("dir");

            var previousEnum =
            enums.where((element) => element.name == extension);

            if (previousEnum.length != 0 && offset != null) {
              previousEnum.first.values.add(VKenumValue(
                  name: name,
                  value: extNumber?.ext_num_enum(offset, dir),
                  index: null,
                  type: "uint"));
            }

            if (previousEnum.length != 0 && bitpos != null) {
              previousEnum.first.values.add(VKenumValue(
                  name: name, value: bitpos.to_bitvalue(), index: null));
            }
          }
        }

        if (nodeType == "type") {
          parseType(nodeType, name);
        }

        if (nodeType == "command") {
          XmlElement VkNode = document.findAllElements(nodeType).firstWhere(
                  (element) =>
              element
                  .getElement("proto")
                  ?.getElement("name")
                  ?.innerText ==
                  name);

          commands.add(VKCommand.fromXML(VkNode));
        }
      });
    });
  });


  // Parse extensions
  extensions.forEach((name) {
    XmlElement extension = document
        .findAllElements("extension")
        .firstWhere((element) => element.getAttribute("name") == name);
    List<XmlElement> requirements =
        extension.findAllElements("require").where((element) {
          // Filter out dependency requirements
          String? depends = element.getAttribute("depends");
          if (depends != null) return (extensions.contains(depends) || versions.contains(depends));
          return true;
        }).toList();

    String? number = extension.getAttribute("number")!;

    requirements.forEach((element) {
      element.childElements.forEach((node) {
        String? extension_name = node.getAttribute("name");
        String? extension = node.getAttribute("extends");
        String? api = node.getAttribute("api");
        String nodeType = node.name.qualified;
        if (api == "vulkansc") return;

        if (nodeType == "enum") {
          // Add enum extension to parent
          if (extension != null) {
            String? offset = node.getAttribute("offset");
            String? bitpos = node.getAttribute("bitpos");
            VKenum parent =
                enums.firstWhere((entry) => entry.name == extension);
            if (offset != null) {
              String? dir = node.getAttribute("dir");
              parent.values.add(VKenumValue(
                  name: extension_name,
                  value: number.ext_num_enum(offset, dir),
                  index: null,
                  type: "uint"));
            }

            if (bitpos != null) {
              parent.values.add(VKenumValue(
                  name: extension_name,
                  value: bitpos.to_bitvalue(),
                  index: null));
            }
          } else {
            // parse enum constant
            String? value = node.getAttribute("value");
            if (value != null) {
              bool is_number = int.tryParse(value) != null;
              constants.add(VKenumValue(
                  name: extension_name,
                  value: value,
                  index: value,
                  type: is_number ? "uint" : "String"));
            }
          }
        }

        if (nodeType == "type") {
          parseType(nodeType, extension_name!);
        }

        if (nodeType == "command") {
          XmlElement? alias = document.findAllElements("command").where(
                  (element) => ((element.getAttribute("name") == extension_name) && (element.getAttribute("alias") != null))).firstOrNull;
          if (alias != null) return;
          XmlElement VkNode = document.findAllElements(nodeType).firstWhere(
              (element) =>
                  element.getElement("proto")?.getElement("name")?.innerText == extension_name);
          VKCommand command = VKCommand.fromXML(VkNode);
          pointers.add(VKfnPointer(name: "PFN_${command.name?.substring(2).camelCase()}", values: command.values.map((entry) => entry.type!).toList(), returnType: command.returnType));
          extensionCommands.add(command);
        }
      });
    });
  });


// Write all VKResults as C3 error
VKenum vulkan_results = enums.firstWhere((element) => element.name == "VkResult");
List<String> error_names = vulkan_results.values.map((entry) => entry.name ?? "-").toList();

output.writeAsStringSync(
"""
fault VkErrors {
  ${vulkan_results.values.map((value) => value.name).join(",\n ")}
}
 """, mode: FileMode.append);


// Write the actual C3 code


bitmasks.forEach((element) {
  output.writeAsStringSync("def ${element.name} = ${element.type};\n",
      mode: FileMode.append);
});

handles.forEach((element) {
  output.writeAsStringSync("def ${element.name} = distinct inline void*;\n",
      mode: FileMode.append);
});

basetypes.forEach((element) {
  output.writeAsStringSync("def ${element.name} = ${element.type};\n",
      mode: FileMode.append);
});

constants.forEach((value) {
  output.writeAsStringSync(
      "const ${typeMap[value.type] ?? value.type} ${value.name} = ${value.value?.replaceAll("ULL", "UL")};\n",
      mode: FileMode.append);
});

unions.forEach((element) {
  String code = "union ${element.name} {\n  ${element.values.map((value) => "${value.type} ${value.name?.camelCase()};").join("\n  ")}\n}\n";
  output.writeAsStringSync(code, mode: FileMode.append);
});

structs.where((element) => element.values.length != 0).forEach((type) {
  String code = "struct ${type.name} {\n ${type.values.map((value) =>"${platformTypes.keys.contains(value.type) ? value.type?.formatTypeName() : value.type} ${value.name?.camelCase()};").join("\n ")}\n}\n";
  output.writeAsStringSync(code, mode: FileMode.append);
});

// Struct builders
structs.where((element) => element.values.length != 0 && element.values[0].defaultValue != null && !filteredNames.contains(element.name)).forEach((type) {
  builders.writeAsStringSync(
"""\n
fn ${type.name} ${type.C3Name()}Builder() {
  ${type.name} defaultValue = {
    .sType = ${type.values[0].defaultValue},
    .pNext = null
  };
  return defaultValue;
}

// Skip the .sType value
${type.values.skip(1).where((element) => element.altLen == null).map((element) {
bool isArrayValue = element.lenValue != null && element.lenValue![0] != "null-terminated";
String fnName = element.name!.capitalizeName();

if (element.isPointer) {
  fnName = element.name!.substring(1).capitalizeName()!;
}

if (element.isDoublePointer) {
  fnName = element.name!.substring(2).capitalizeName()!;
}

if (element.type == "char*" && isArrayValue) {
  return """
fn ${type.name} ${type.name}.set${fnName}(self, ZString[] ${element.name}) {
  self.${element.lenValue![0]} = (uint)${element.name}.len;
  self.${element.name} = (char*)&${element.name}[0];
  return self;
}
""";
}

if (isArrayValue && (element.type != "void*")) {
  return """
fn ${type.name} ${type.name}.set${fnName}(self, ${element.type?.substring(0, element.type!.length - 1)}[] ${element.name}) {
  self.${element.lenValue![0]} = (uint)${element.name}.len;
  self.${element.name} = &${element.name}[0];
  return self;
}
""";
}

return """
fn ${type.name} ${type.name}.set${fnName}(self, ${element.type} ${element.name}) {
  self.${element.name} = ${element.name};
  return self;
}
       """;
}).join("\n")}
""", mode: FileMode.append);
});

pointers.forEach((command) {
  String code =
      "def ${command.name} = fn ${command.returnType} (${command.values.map((value) => value).join(", ")});\n";
  output.writeAsStringSync(code, mode: FileMode.append);
});

commands.forEach((command) {
  String code =
      "extern fn ${command.returnType} ${command.errorCodes.isEmpty ? command.C3Name() :command.name?.camelCase() } (${command.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase()}").join(", ")}) @extern(\"${command.name}\");\n";
  output.writeAsStringSync(code, mode: FileMode.append);
});


// Write commands with C3 error handling
commands.where((element) => element.errorCodes.isNotEmpty).forEach((command) {
    String code =
"""
fn void! ${command.C3Name()} (${command.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase()}").join(", ")}) {
  VkResult result = ${command.name?.camelCase()}(${command.values.map((type) => "${type.name?.formatTypeName().camelCase()}").join(", ")});
  switch(result) {
    ${command.errorCodes.where((value) => error_names.contains(value)).map((err) => "case ${err}: \n        return VkErrors.${err}?;").join("\n    ")}
  }
}
""";
  output.writeAsStringSync(code, mode: FileMode.append);
});


// Extension bindings code
 output.writeAsStringSync("""
struct VK_extension_bindings {
 ${extensionCommands.map((command) => "PFN_${command.name?.substring(2).camelCase()} ${command.name?.substring(2).camelCase()};").join("\n ")}
}
VK_extension_bindings extensions;
fn void loadExtensions(VkInstance instance) {
  ${extensionCommands.map((command) => "extensions.${command.C3Name()} = (PFN_${command.name?.substring(2).camelCase()})getInstanceProcAddr(instance, \"${command.name}\");").join("\n  ")}
}
${extensionCommands.where((entry) => entry.errorCodes.isEmpty).map((command) => "fn ${command.returnType} ${command.C3Name()} (${command.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase().replaceAll("_", "")}").join(", ")}) => extensions.${command.C3Name()}(${command.values.map((type) => type.name?.formatTypeName().camelCase().replaceAll("_","")).join(",")});").join("\n")}
${extensionCommands.where((entry) => entry.errorCodes.isNotEmpty).map((command)  {
  return """
fn void! ${command.C3Name()} (${command.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase()}").join(", ")}) {
  VkResult result = extensions.${command.C3Name()}(${command.values.map((type) => "${type.name?.formatTypeName().camelCase()}").join(", ")});
  switch(result) {
    ${command.errorCodes.where((value) => error_names.contains(value)).map((err) => "case ${err}: \n        return VkErrors.${err}?;").join("\n    ")}
  }
}
""";
 }).join("\n")}
""", mode: FileMode.append);

//  Enums
enums.forEach((entry) {
  String code =
      "\ndef ${entry.name} = distinct inline ${entry?.bit_width != null ? "ulong" : "int"};\n${entry.values.where((element) => element.alias == null).map((value) => "const ${entry.name} ${value.name?.toUpperCase()} = ${value.bitValue ?? value.value};").join("\n")}\n";
  output.writeAsStringSync(code, mode: FileMode.append);
});

// Make api version
output.writeAsStringSync(
"macro uint @makeApiVersion(uint \$variant, uint \$major, uint \$minor, uint \$patch) => ((\$variant << 29) | (\$major << 22) | (\$minor << 12) | \$patch);",
mode: FileMode.append);

  // GLFW stuff
/*  windowOutput.writeAsStringSync("module window;\n");
  windowOutput.writeAsStringSync(
      "\nextern fn void* getInstanceProcAddress (VkInstance instance, char *procname) @extern(\"glfwGetInstanceProcAddress\");",
      mode: FileMode.append);
  windowOutput.writeAsStringSync(
      "\nextern fn VkResult createWindowSurface (VkInstance instance, GLFWwindow *window, VkAllocationCallbacks *allocator, VkSurfaceKHR *surface) @extern(\"glfwCreateWindowSurface\");",
      mode: FileMode.append);*/
}
