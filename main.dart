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
var filteredNames = ["VkBaseInStructure", "VkBaseOutStructure", "VkDependencyInfo"];

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
  "void": "void*",
  "char": "char*"
};

class VkStructMember {
  String? type;
  String? name;
  String? api;
  bool optional;
  bool nullTerminated;
  VkStructMember(
      {required this.type, required this.name, this.optional = false, this.api, this.nullTerminated = false});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? api = node.getAttribute("api");
    bool optional = node.getAttribute("optional") == "true";
    bool nullTerminated = node.getAttribute("len") == "null-terminated";
    return VkStructMember(
        type: typeMap[type] ?? type, name: name, api: api, optional: optional, nullTerminated: nullTerminated);
  }
}

class VKstruct {
  bool returnedOnly;
  String? name;
  String? extendsStruct;
  List<VkStructMember> values = [];
  VKstruct({required this.returnedOnly, required this.name, required this.values, this.extendsStruct});
  static fromXML(XmlElement node) {
    String? returned = node.getAttribute("returnedonly");
    String? name = node.getAttribute("name");
    String? extendsStruct = node.getAttribute("structextends");
    List<VkStructMember> values =
        List<VkStructMember>.from(node.findAllElements('member').map((node) => VkStructMember.fromXML(node)));
    return VKstruct(returnedOnly: returned == "true", name: name, values: values, extendsStruct: extendsStruct);
  }
}

class VKenumValue {
  String? index;
  String? name;
  String? value;
  String? type;
  String? deprecated;
  String? alias;
  VKenumValue({required this.name, required this.value, required this.index, this.type, this.deprecated, this.alias});

  static fromXML(XmlElement node) {
    String? index = node.getAttribute("index");
    String? name = node.getAttribute("name");
    String? value = node.getAttribute("value");
    String? type = node.getAttribute("type");
    String? deprecated = node.getAttribute("deprecated");
    String? alias = node.getAttribute("alias");
    return VKenumValue(index: index, name: name, value: value, type: type, deprecated: deprecated, alias: alias);
  }
}

class VKenum {
  String? type;
  String? name;
  String? comment;
  List<VKenumValue> values;
  VKenum({required this.name, this.type, required this.values, this.comment});

  static fromXML(XmlElement node) {
    String? name = node.getAttribute("name");
    String? type = node.getAttribute("type");
    String? comment = node.getAttribute("comment");
    List<VKenumValue> values =
        List<VKenumValue>.from(node.findAllElements('enum').map((node) => VKenumValue.fromXML(node)));

    return VKenum(type: type, name: name, values: values, comment: comment);
  }
}

class VKtype {
  String? type;
  String? name;
  String? requiredBy;
  String? api;

  VKtype({required this.type, required this.name, required this.requiredBy, this.api});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? requiredBy = node.getAttribute("requires");
    String? api = node.getAttribute("api");
    return VKtype(type: typeMap[type] ?? type, name: name, requiredBy: requiredBy, api: api);
  }
}

class VKfnPointer {
  String? name;
  String? requiredBy;
  String? returnType;
  List<String> values;
  VKfnPointer({required this.name, required this.requiredBy, required this.values, required this.returnType});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? returnType = node.innerText.split(" ")[1];
    String? requiredBy = node.getAttribute("requires");
    List<String> values =
        List<String>.from(node.findAllElements('type').map((value) => typeMap[value.innerText] ?? value.innerText));
    return VKfnPointer(
        name: name, requiredBy: requiredBy, values: values, returnType: typeMap[returnType] ?? returnType);
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
    List<String> successCodes = node.getAttribute("successcodes")?.split(",").toList() ?? [];
    List<String> errorCodes = node.getAttribute("errorcodes")?.split(",").toList() ?? [];

    List<VKtype> values = List<VKtype>.from(node
        .findAllElements('param')
        .where((element) => element.getElement("type") != null)
        .map((value) => VKtype.fromXML(value)));

    return VKCommand(
        name: name,
        values: values,
        returnType: typeMap[returnType] ?? returnType,
        errorCodes: errorCodes,
        successCodes: successCodes);
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

  bool is_nv_extension() {
    return this.substring(this.length - 2) == "NV";
  }

  bool is_extension() {
    return this.substring(this.length - 3) == "EXT";
  }

  bool is_khr_extension() {
    return this.substring(this.length - 3) == "KHR";
  }

  bool is_qnx_extension() {
    return this.substring(this.length - 3) == "QNX";
  }
}

void main() {
  const API_VERSION = 1.0;
  const API = "vulkan";
  var output = File('./build/vk.c3');

  final file = new File('assets/vk.xml');
  final document = XmlDocument.parse(file.readAsStringSync());
  List<VKenum> enums = [];

  document.findAllElements('enums').forEach((XmlElement node) {
    enums.add(VKenum.fromXML(node));
  });

  // Find features for set api version
  var features = document
      .findAllElements("feature")
      .where((element) => double.parse(element.getAttribute("number")!) <= API_VERSION);

  output.writeAsStringSync("");
  output.writeAsStringSync("module vk; \n", mode: FileMode.append);

  // Plaform types
  output.writeAsStringSync("// Platform types \n", mode: FileMode.append);
  output.writeAsStringSync(
      platformTypes.entries.map((value) => "def ${value.key.formatTypeName()} = ${value.value};").join("\n"),
      mode: FileMode.append);
  output.writeAsStringSync("\n", mode: FileMode.append);

  features.forEach((feature) {
    var requirements = feature.findAllElements("require");
    requirements.forEach((element) {
      String? name = element.getAttribute("comment");

      if (name != null && name != "Header boilerplate") {
        // Write the api name
        output.writeAsStringSync("\n// ${name.toUpperCase()} \n", mode: FileMode.append);

        // Loop throught api required components
        element.childElements.forEach((child) {
          String nodeType = child.name.qualified;
          String? name = child.getAttribute("name");
          if (name == null || filteredNames.contains(name)) return;
          if (nodeType == "type") {
            // Find the Vulkan type in XML and parse it
            XmlElement VkNode = document.findAllElements(nodeType).where((element) {
              bool hasName = (element.getAttribute("name") == name) || (element.getElement("name")?.innerText == name);
              return hasName && element.getAttribute("category") != null && element.getAttribute("api") != "vulkansc";
            }).first;

            // Write the actual C3 code

            String category = VkNode.getAttribute("category")!;

            if (category == "bitmask") {
              VKtype value = VKtype.fromXML(VkNode);
              output.writeAsStringSync("def ${value.name} = ${value.type};\n", mode: FileMode.append);
            }

            if (category == "handle") {
              VKtype value = VKtype.fromXML(VkNode);
              output.writeAsStringSync("def ${value.name} = void*;\n", mode: FileMode.append);
            }

            if (category == "basetype") {
              VKtype value = VKtype.fromXML(VkNode);
              output.writeAsStringSync("def ${value.name} = ${value.type};\n", mode: FileMode.append);
            }

            if (category == "union") {
              VKstruct value = VKstruct.fromXML(VkNode);
              String code =
                  "union ${value.name} {\n  ${value.values.where((struct) => struct.api != "vulkansc").map((value) {
                String? newName = replaceNames[value.name] ?? value.name;
                return "${value.type} ${newName?.camelCase()};";
              }).join("\n  ")}\n}\n";

              output.writeAsStringSync(code, mode: FileMode.append);
            }

            if (category == "struct") {
              VKstruct value = VKstruct.fromXML(VkNode);
              String code =
                  "struct ${value.name} {\n  ${value.values.where((struct) => struct.api != "vulkansc").map((value) {
                String? newName = replaceNames[value.name] ?? value.name;
                return "${platformTypes.keys.contains(value.type) ? value.type?.formatTypeName() : value.type} ${newName?.camelCase()};";
              }).join("\n  ")}\n}\n";
              output.writeAsStringSync(code, mode: FileMode.append);
            }

            if (category == "funcpointer") {
              VKfnPointer value = VKfnPointer.fromXML(VkNode);
              String code =
                  "def ${value.name} = fn ${value.returnType} (${value.values.map((value) => value).join(", ")});";
              output.writeAsStringSync(code, mode: FileMode.append);
            }
          }

          // if (nodeType == "enum") {
          //   XmlElement VkNode =
          //       document.findAllElements(nodeType).where((element) => element.getAttribute("name") == name).first;

          //   VKenum value = VKenum.fromXML(VkNode);

          //   print(value.type);

          //   if (value.type == "bitmask") {
          //     output.writeAsStringSync("def ${value.name} = int;", mode: FileMode.append);
          //   }

          //   if (value.type == "enum") {
          //     String code =
          //         "\ndef ${value.name} = distinct inline int;\n${value.values.where((element) => element.deprecated == null && element.alias == null).map((value) => "const ${value.name} ${value.name?.toUpperCase()} = ${value.value};").join("\n")}";
          //     output.writeAsStringSync(code, mode: FileMode.append);
          //   }

          //   if (value.type == "API Constants") {
          //     output.writeAsStringSync(
          //         "${value.values.map((entry) => "const ${entry.name} = ${entry.value?.replaceAll("ULL", "UL")};").join("\n")}",
          //         mode: FileMode.append);
          //   }
          // }

          if (nodeType == "command") {
            XmlElement VkNode = document
                .findAllElements(nodeType)
                .where((element) => element.getElement("proto")?.getElement("name")?.innerText == name)
                .first;
            VKCommand value = VKCommand.fromXML(VkNode);
            String code =
                "extern fn ${value.returnType} ${value.name?.substring(2).camelCase().replaceAll("_", "")} (${value.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase().replaceAll("_", "")}").join(", ")}) @extern(\"${value.name}\");\n";
            output.writeAsStringSync(code, mode: FileMode.append);
          }
        });
      }
    });
  });

//  Enums
  enums.where((element) => element.name != null).forEach((entry) {
    if (entry.type == "enum" || entry.type == "bitmask") {
      String code =
          "\ndef ${entry.name} = distinct inline int;\n${entry.values.where((element) => element.deprecated == null && element.alias == null).map((value) => "const ${entry.name} ${value.name?.toUpperCase()} = ${value.value};").join("\n")}\n";
      output.writeAsStringSync(code, mode: FileMode.append);
    }

    if (entry.name == "API Constants") {
      String code =
          "${entry.values.map((entry) => "const ${entry.name} = ${entry.value?.replaceAll("ULL", "UL")};").join("\n")}\n";
      output.writeAsStringSync(code, mode: FileMode.append);
    }
  });
}

  // Write parsed data as C3 file
// Platform type 
// ${platformTypes.entries.map((value) => "def ${value.key.formatTypeName()} = ${value.value};").join("\n")}

// // Base types
// ${baseTypes.map((type) => "def ${type.name} = ${type.type};").join("\n")}

// // Handles
// ${handles.where((element) => element.name != null).map((type) => "def ${type.name} = void*;").join("\n")}

// // Bitmasks
// ${bitmasks.where((mask) => mask.api != "vulkansc" && mask.name != null).map((type) => "def ${type.name} = ${type.type};").join("\n")}

// // Structs
// ${structs.map((struct) {
//     return "struct ${struct.name} {\n  ${struct.values.where((struct) => struct.api != "vulkansc").map((value) {
//       bool formatType = platformTypes.keys.contains(value.type);
//       String? newName = replaceNames[value.name] ?? value.name;
//       return "${formatType ? value.type?.formatTypeName() : value.type} ${newName?.camelCase()};";
//     }).join("\n  ")}\n}\n";
//   }).join("\n")}

// // Unions
// ${unions.map((struct) {
    // return "union ${struct.name} {\n  ${struct.values.where((struct) => struct.api != "vulkansc").map((value) {
    //   String? newName = replaceNames[value.name] ?? value.name;
    //   return "${value.type} ${newName?.camelCase()};";
    // }).join("\n  ")}\n}\n";
//   }).join("\n")}



// // Functions pointers
// ${functionsPtrs.map((element) => "def ${element.name} = fn ${element.returnType} (${element.values.map((value) => value).join(", ")});").join("\n")}

// // Commands
// ${commands.map((element) => "extern fn ${element.returnType} ${element.name?.substring(2).camelCase().replaceAll("_", "")} (${element.values.map((type) => "${type.type} ${type.name?.formatTypeName().camelCase().replaceAll("_", "")}").join(", ")}) @extern(\"${element.name}\");").join("\n")}