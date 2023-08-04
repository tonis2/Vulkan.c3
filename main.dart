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
  "VkDependencyInfo"
];
var extensions = [
  "VK_KHR_surface",
  "VK_KHR_xcb_surface",
  "VK_KHR_swapchain",
  "VK_KHR_display",
  "VK_EXT_debug_report",
  "VK_KHR_portability_enumeration",
/*  "VK_EXT_debug_marker",*/
  "VK_EXT_debug_utils",
  // "VK_KHR_depth_stencil_resolve",
  // "VK_KHR_get_physical_device_properties2",
  // "VK_KHR_get_display_properties2",
  // "VK_KHR_get_surface_capabilities2",
  // "VK_KHR_synchronization2",
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
  "uint8_t": "char",
  "int8_t": "ichar",
  "size_t": "usz",
  "isize_t": "isz",
  "null": "void*",
  "HANDLE": "void*",
  "VkBool32": "bool",
  ...platformTypes
};

class VKstruct {
  bool returnedOnly;
  String? name;
  String? extendsStruct;
  String? category;
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
        node.findAllElements('member').map((node) => VKtype.fromXML(node)));
    return VKstruct(
        returnedOnly: returned == "true",
        name: name,
        values: values,
        extendsStruct: extendsStruct);
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
  String? category;
  List<VKenumValue> values;
  VKenum({required this.name, this.type, required this.values, this.comment});

  static fromXML(XmlElement node) {
    String? name = node.getAttribute("name");
    String? type = node.getAttribute("type");
    String? comment = node.getAttribute("comment");
    List<VKenumValue> values = List<VKenumValue>.from(node
        .findAllElements('enum')
        .where((element) => element.getAttribute("deprecated") == null)
        .map((node) => VKenumValue.fromXML(node)));

    return VKenum(type: type, name: name, values: values, comment: comment);
  }
}

class VKtype {
  String? type;
  String? name;
  String? requiredBy;
  String? api;
  String? category;

  VKtype(
      {required this.type,
      required this.name,
      required this.requiredBy,
      this.api});
  static fromXML(XmlElement node) {
    String? enumValue = node.getElement("enum")?.innerText;
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? requiredBy = node.getAttribute("requires");
    String? optional = node.getAttribute("optional");
    String? api = node.getAttribute("api");
    /* String? len = node.getAttribute("len");*/

    bool isPointer = node.innerText.contains("*");
    /*  bool nullTerminated = node.getAttribute("len") == "null-terminated";*/
    return VKtype(
        type:
            "${typeMap[type] ?? type}${enumValue != null ? "[${enumValue}]" : ""}${isPointer ? "*" : ""}",
        name: name,
        requiredBy: requiredBy,
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
        name: name,
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

  String camelCase() {
    return '${this[0].toLowerCase()}${this.substring(1)}';
  }
/*
  bool is_nv_extension() {
    return this.substring(this.length - 2) == "NV";
  }

  bool is_extension() {
    return this.substring(this.length - 3) == "EXT";
  }*/

  String to_bitvalue() {
    return "0x${(1 << int.parse(this)).toRadixString(16).padLeft(8, '0')}";
  }

/*  bool is_khr_extension() {
    return this.substring(this.length - 3) == "KHR";
  }

  bool is_qnx_extension() {
    return this.substring(this.length - 3) == "QNX";
  }*/

  String ext_num_enum(String offset, String? dir) {
    String newValue = (int.parse(this) - 1).toString();
    return "${dir ?? ""}1${newValue.padLeft(6, "0")}${offset.padLeft(3, "0")}";
  }
}

void main() {
  const API_VERSION = 1.1;
  const API = "vulkan";
  var output = File('./build/vk.c3');
  var windowOutput = File('./build/window.c3');

  final file = new File('assets/vk.xml');
  final document = XmlDocument.parse(file.readAsStringSync());

  // Find features for set api version
  var features = document.findAllElements("feature").where((element) =>
      double.parse(element.getAttribute("number")!) <= API_VERSION &&
      element.getAttribute("api") != "vulkansc");

  output.writeAsStringSync("");
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
      value.category = category;
      types.add(value);
    }

    if (category == "handle") {
      VKtype value = VKtype.fromXML(node);
      value.category = category;
      types.add(value);
    }

    if (category == "basetype") {
      VKtype value = VKtype.fromXML(node);
      value.category = category;
      types.add(value);
    }

    if (category == "enum") {
      var enumNode = document.findAllElements("enums").firstWhere((element) =>
          element.getAttribute("name") == name &&
          element.getAttribute("api") != "vulkansc");
      VKenum value = VKenum.fromXML(enumNode);
      value.category = category;
      enums.add(value);
    }

    if (category == "union") {
      VKstruct value = VKstruct.fromXML(node);
      value.category = category;
      structs.add(value);
    }

    if (category == "struct") {
      VKstruct value = VKstruct.fromXML(node);
      value.category = category;
      structs.add(value);
    }

    if (category == "funcpointer") {
      pointers.add(VKfnPointer.fromXML(node));
    }
  }

  // Parse by VK version
  features.forEach((feature) {
    var requirements = feature.findAllElements("require");
    requirements.forEach((element) {
      String? name = element.getAttribute("comment");

      if (name != null && name != "Header boilerplate") {
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
      }
    });
  });

  // Parse extensions
  extensions.forEach((name) {
    XmlElement extension = document
        .findAllElements("extension")
        .firstWhere((element) => element.getAttribute("name") == name);
    List<XmlElement> requirements =
        extension.findAllElements("require").toList();
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
          XmlElement VkNode = document.findAllElements(nodeType).firstWhere(
              (element) =>
                  element.getElement("proto")?.getElement("name")?.innerText ==
                  extension_name);
          VKCommand command = VKCommand.fromXML(VkNode);
          pointers.add(VKfnPointer(name: "PFN_${command.name?.substring(2).camelCase()}", values: command.values.map((entry) => entry.type!).toList(), returnType: command.returnType));
          extensionCommands.add(command);
        }
      });
    });
  });

  // Write the actual C3 code
  types.forEach((type) {
    if (type.category == "bitmask") {
      output.writeAsStringSync("def ${type.name} = ${type.type};\n",
          mode: FileMode.append);
    }
    if (type.category == "handle") {
      output.writeAsStringSync("def ${type.name} = void*;\n",
          mode: FileMode.append);
    }
    if (type.category == "basetype") {
      output.writeAsStringSync("def ${type.name} = ${type.type};\n",
          mode: FileMode.append);
    }
  });

  constants.forEach((value) {
    output.writeAsStringSync(
        "const ${typeMap[value.type] ?? value.type} ${value.name} = ${value.value?.replaceAll("ULL", "UL")};\n",
        mode: FileMode.append);
  });

  structs.where((element) => element.values.length != 0).forEach((type) {
    if (type.category == "struct") {
      String code =
          "struct ${type.name} {\n  ${type.values.where((struct) => struct.api != "vulkansc").map((value) {
        String? newName = replaceNames[value.name] ?? value.name;
        return "${platformTypes.keys.contains(value.type) ? value.type?.formatTypeName() : value.type} ${newName?.camelCase()};";
      }).join("\n  ")}\n}\n";
      output.writeAsStringSync(code, mode: FileMode.append);
    }
    if (type.category == "union") {
      String code =
          "union ${type.name} {\n  ${type.values.where((struct) => struct.api != "vulkansc").map((value) {
        String? newName = replaceNames[value.name] ?? value.name;
        return "${value.type} ${newName?.camelCase()};";
      }).join("\n  ")}\n}\n";

      output.writeAsStringSync(code, mode: FileMode.append);
    }
  });

  pointers.forEach((command) {
    String code =
        "def ${command.name} = fn ${command.returnType} (${command.values.map((value) => value).join(", ")});\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });

  commands.forEach((command) {
    String code =
        "extern fn ${command.returnType} ${command.name?.substring(2).camelCase().replaceAll("_", "")} (${command.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase().replaceAll("_", "")}").join(", ")}) @extern(\"${command.name}\");\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });

  // Extension bindings code
  output.writeAsStringSync("\nstruct VK_extension_bindings {\n", mode: FileMode.append);
  extensionCommands.forEach((command) {
    output.writeAsStringSync(" PFN_${command.name?.substring(2).camelCase()} ${command.name?.substring(2).camelCase()};\n", mode: FileMode.append);
  });
  output.writeAsStringSync("}", mode: FileMode.append);
  output.writeAsStringSync("\nVK_extension_bindings extensions;\n", mode: FileMode.append);

  // Write extension commands
  output.writeAsStringSync("\nfn void loadExtensions(VkInstance instance) {\n", mode: FileMode.append);
  extensionCommands.forEach((command) {
    String code =
        " extensions.${command.C3Name()} = (PFN_${command.name?.substring(2).camelCase()})getInstanceProcAddr(instance, \"${command.name}\");\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });
  output.writeAsStringSync("}\n", mode: FileMode.append);

  extensionCommands.forEach((command) {
    String code =
        "fn ${command.returnType} ${command.C3Name()} (${command.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase().replaceAll("_", "")}").join(", ")}) => extensions.${command.C3Name()}(${command.values.map((type) => type.name?.formatTypeName().camelCase().replaceAll("_","")).join(",")});\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });

//  Enums
  enums.forEach((entry) {
    String code =
        "\ndef ${entry.name} = distinct inline int;\n${entry.values.where((element) => element.alias == null).map((value) => "const ${entry.name} ${value.name?.toUpperCase()} = ${value.bitValue ?? value.value};").join("\n")}\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });

  // Make api version
  output.writeAsStringSync(
      "macro uint @makeApiVersion(uint \$variant, uint \$major, uint \$minor, uint \$patch) => ((\$variant << 29) | (\$major << 22) | (\$minor << 12) | \$patch);",
      mode: FileMode.append);

  // GLFW stuff
  windowOutput.writeAsStringSync("module window;\n");
  windowOutput.writeAsStringSync(
      "\nextern fn void* getInstanceProcAddress (VkInstance instance, char *procname) @extern(\"glfwGetInstanceProcAddress\");",
      mode: FileMode.append);
  windowOutput.writeAsStringSync(
      "\nextern fn VkResult createWindowSurface (VkInstance instance, GLFWwindow *window, VkAllocationCallbacks *allocator, VkSurfaceKHR *surface) @extern(\"glfwCreateWindowSurface\");",
      mode: FileMode.append);
}
