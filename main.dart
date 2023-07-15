import "dart:io";
import 'package:xml/xml.dart';

// const PLATFORM_TYPES = """
// def RROutput = ulong;
// def VisualID = uint;
// def Display = void*;
// def Window = ulong;
// def xcb_connection_t = void*;
// def xcb_window_t = uint;
// def xcb_visualid_t = uint;
// def MirConnection = *const void*;
// def MirSurface = void*;
// def HINSTANCE = void*;
// def HWND = *const void*;
// def wl_display = void*;
// def wl_surface = void*;
// def HANDLE = void*;
// def HMONITOR = HANDLE;
// def DWORD = ulong;
// def LPCWSTR = *uint;
// def zx_handle_t = uint;
// def _screen_buffer = void*;
// def _screen_context = void*;
// def _screen_window = void*;
// def SECURITY_ATTRIBUTES = void*;

// // Opaque types
// def ANativeWindow = void*;
// def AHardwareBuffer = void*;
// def CAMetalLayer = void*;
// def GgpStreamDescriptor = uint;
// def GgpFrameToken = ulong;
// def IDirectFB = void*;
// def IDirectFBSurface = void*;
// def __IOSurface = void*;
// def IOSurfaceRef = __IOSurface;
// def MTLBuffer_id =  void*;
// def MTLCommandQueue_id = void*;
// def MTLDevice_id = void*;
// def MTLSharedEvent_id = void*;
// def MTLTexture_id = void*;
// """;

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
  "HMONITOR": "Handle",
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
  "IOSurfaceRef": "__IOSurface",
  "MTLBuffer_id": "void*",
  "MTLCommandQueue_id": "void*",
  "MTLDevice_id": "void*",
  "MTLSharedEvent_id": "void*",
  "MTLTexture_id": "void*",
};

var replaceNames = {"module": "mod"};

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
  "HANDLE": "void*"
};

class VkStructMember {
  String? type;
  String? name;
  String? api;
  bool optional;
  VkStructMember({required this.type, required this.name, this.optional = false, this.api});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? api = node.getAttribute("api");
    bool optional = node.getAttribute("optional") == "true";
    return VkStructMember(type: typeMap[type] ?? type, name: name, api: api, optional: optional);
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
    return VKtype(type: type, name: name, requiredBy: requiredBy, api: api);
  }
}

String formatTypeName(String value) {
  value = value.replaceAll("_t", "");
  value = value.replaceAll("_", "");
  return value.capitalize();
}

extension ParseMethods on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${this.toLowerCase().substring(1)}';
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
}

void main() {
  final file = new File('assets/vk.xml');
  final document = XmlDocument.parse(file.readAsStringSync());
  List<VKstruct> structs = [];
  List<VKtype> bitmasks = [];
  List<VKenum> enums = [];
  List<VKtype> baseTypes = [];
  List<VKtype> handles = [];
  List<VKstruct> unions = [];

  document.findAllElements('type').forEach((XmlElement node) {
    String? category = node.getAttribute("category");
    if (category == "bitmask") {
      bitmasks.add(VKtype.fromXML(node));
    }
    if (category == "struct") {
      structs.add(VKstruct.fromXML(node));
    }
    if (category == "basetype") {
      baseTypes.add(VKtype.fromXML(node));
    }
    if (category == "handle") {
      handles.add(VKtype.fromXML(node));
    }
    if (category == "union") {
      unions.add(VKstruct.fromXML(node));
    }
  });

  document.findAllElements('enums').forEach((XmlElement node) {
    enums.add(VKenum.fromXML(node));
  });

  // Filter out some faulty and extension structs
  structs = structs
      .where((struct) =>
          struct.name != null &&
          struct.values.isNotEmpty &&
          struct.extendsStruct == null &&
          struct.name?.is_nv_extension() == false &&
          struct.name?.is_khr_extension() == false &&
          struct.name?.is_extension() == false)
      .toList();

  // Filter out some faulty and extension unions
  unions = unions
      .where((union) =>
          union.name != null &&
          union.values.isNotEmpty &&
          union.extendsStruct == null &&
          union.name?.is_nv_extension() == false &&
          union.name?.is_khr_extension() == false &&
          union.name?.is_extension() == false)
      .toList();

  // Write parsed data as C3 file
  var output = File('./build/vk.c3');
  output.writeAsStringSync("");
  output.writeAsStringSync("""
module vk;

// Platform type 
${platformTypes.entries.map((value) => "def ${formatTypeName(value.key)} = ${value.value};").join("\n")}

// Base types
${baseTypes.map((type) => "def ${type.name} = ${typeMap[type.type] ?? "void*"};").join("\n")}

// Handles
${handles.where((element) => element.name != null).map((type) => "def ${type.name} = void*;").join("\n")}

// Bitmasks
${bitmasks.where((mask) => mask.api != "vulkansc" && mask.name != null).map((type) => "def ${type.name} = ${typeMap[type.type] ?? type.type};").join("\n")}

// Structs
${structs.map((struct) {
    return "struct ${struct.name} {\n  ${struct.values.where((struct) => struct.api != "vulkansc").map((value) {
      bool formatType = platformTypes.keys.contains(value.type);
      String? newName = replaceNames[value.name] ?? value.name;
      return "${formatType ? formatTypeName(value.type ?? "") : value.type} ${newName?.camelCase()};";
    }).join("\n  ")}\n}\n";
  }).join("\n")}

// Unions
${unions.map((struct) {
    return "union ${struct.name} {\n  ${struct.values.where((struct) => struct.api != "vulkansc").map((value) {
      String? newName = replaceNames[value.name] ?? value.name;
      return "${value.type} ${newName?.camelCase()};";
    }).join("\n  ")}\n}\n";
  }).join("\n")}

// Enums
${enums.where((element) => element.name != null).map((entry) {
    if (entry.type == "bitmask") {
      return "def ${entry.name} = int;";
    }

    if (entry.type == "enum") {
      return "\ndef ${entry.name} = distinct inline int;\n${entry.values.where((element) => element.deprecated == null && element.alias == null).map((value) => "const ${entry.name} ${value.name?.toUpperCase()} = ${value.value};").join("\n")}";
    }

    if (entry.name == "API Constants") {
      return "${entry.values.map((entry) => "const ${entry.name} = ${entry.value?.replaceAll("ULL", "UL")};").join("\n")}";
    }

    return null;
  }).join("\n")}

""");
}
