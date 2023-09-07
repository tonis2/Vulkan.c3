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
var versions = ["VK_VERSION_1_0"];

var enabled_extensions = [
  "VK_KHR_surface",
/*  "VK_KHR_xcb_surface",
  "VK_KHR_swapchain",
  "VK_KHR_display",
  "VK_KHR_portability_enumeration",
  "VK_KHR_push_descriptor",
  "VK_EXT_debug_report",
  "VK_EXT_debug_utils",
  "VK_EXT_swapchain_colorspace",
  "VK_KHR_portability_subset",*/
/*  "VK_KHR_dynamic_rendering"*/
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

  var output = File('./build/vk.c3');
  var builders = File('./build/builders.c3');

  final file = new File('assets/vk.xml');
  final document = XmlDocument.parse(file.readAsStringSync());

  output.writeAsStringSync("");
  builders.writeAsStringSync("");
  builders.writeAsStringSync("module vk; \n", mode: FileMode.append);
  output.writeAsStringSync("module vk; \n", mode: FileMode.append);

  output.writeAsStringSync("// Platform types \n", mode: FileMode.append);
  output.writeAsStringSync(
      platformTypes.entries
          .map((value) => "def ${value.key.formatTypeName()} = ${value.value};")
          .join("\n"),
      mode: FileMode.append);
  output.writeAsStringSync("\n", mode: FileMode.append);

  List<VkType> types = [];
  List<VkValue> bitmasks = [];
  List<VkValue> handles = [];
  List<VkValue> basetypes = [];
  List<VkType> unions = [];
  List<VkType> structs = [];
  List<VkType> pointers = [];
  List<VkType> enums = [];
  List<VkValue> constants = [];
  List<VkType> commands = [];
  List<VkType> extensionCommands = [];

  var features = document.findAllElements("feature").where((element) {
    String? apiName = element.getAttribute("name");
    return apiName != "VKSC_VERSION_1_0" && versions.contains(apiName);
  });

  var extensions = document.findAllElements("extension").where((element) {
    String? extension_name = element.getAttribute("name");
    String? depends = element.getAttribute("depends");
    bool isEnabled = enabled_extensions.contains(extension_name);
    if (depends != null && isEnabled) {
      var dependencies = depends.split(",").map((element) => versions.contains(element) || enabled_extensions.contains(element)).where((element) => !element);
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

    feature.findAllElements("require")
         .where((requirement) => !filteredComments.contains(requirement.getAttribute("comment")))
        .forEach((requirement) {
      String? requirement_comment = requirement.getAttribute("comment");

      requirement.childElements.where((child) => !filteredNames.contains(child.getAttribute("name"))).forEach((child) {
          String nodeType = child.name.qualified;
          String? name = child.getAttribute("name");
          String? extension = child.getAttribute("extends");

          if (nodeType == "enum") {
            XmlElement? node = document.findParentNode(nodeType, name);
            String? direction = node?.getAttribute("dir");
            String? offset = node?.getAttribute("offset");

            if (requirement_comment == "API constants") {
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
                    .map((entry) {
                      var default_value = entry.getAttribute("value");
                      var bit_pos = entry.getAttribute("bitpos");
                      return VkValue(name: entry.getAttribute("name") ?? "-", defaultValue: bit_pos != null ? bit_pos.to_bitvalue() : default_value);
                    }).toList();

                enums.add(VkType(name: name ?? "-" , category: nodeType, values: values ?? [], bitwidth: enum_parent?.getAttribute("bitwidth")));
              }
              case "union": {}
              case "struct": {
                structs.add(VkType.fromStructXML(node!));
              }
              case "funcpointer": {}
            }
          }
      });
    });
  });

  handles.forEach((type) {
    output.writeAsStringSync("def ${type.name.C3Name} = distinct inline ${type.type};\n",
        mode: FileMode.append);
  });

  basetypes.forEach((element) {
    output.writeAsStringSync("def ${element.name.C3Name} = ${element.type};\n",
        mode: FileMode.append);
  });

  bitmasks.forEach((element) {
    output.writeAsStringSync("def ${element.name.C3Name} = ${element.type};\n",
        mode: FileMode.append);
  });

  constants.forEach((value) {
    output.writeAsStringSync(
        "const ${typeMap[value.type] ?? value.type} ${value.name.substring(3)} = ${value.defaultValue?.replaceAll("ULL", "UL")};\n",
        mode: FileMode.append);
  });

  enums.forEach((entry) {
    String code =
        "\ndef ${entry.name.C3Name} = distinct inline ${entry.bitwidth != null ? "ulong" : "int"};\n${entry.values.map((value) => "const ${entry.name.C3Name} ${value.name.C3Name.toUpperCase().substring(1)} = ${value.defaultValue};").join("\n")}\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });

  structs.where((element) => element.values.length != 0).forEach((type) {
    String code = "struct ${type.name.C3Name} {\n ${type.values.map((value) =>"${value.type?.C3Name} ${value.name.camelCase()};").join("\n ")}\n}\n";
    output.writeAsStringSync(code, mode: FileMode.append);
  });


  // Struct builders
  structs.where((element) => element.values.length != 0 && element.values[0].defaultValue != null && !filteredNames.contains(element.name)).forEach((type) {
    builders.writeAsStringSync(
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

/*  if (element.isDoublePointer) {
    fnName = element.name!.substring(2).capitalizeName()!;
  }*/

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
}

class VkType {
  String name;
  String? comment;
  String category;
  String? bitwidth;
  List<String>? successCodes;
  List<String>? errorCodes;
  List<VkValue> values;

  VkType({ this.name = "-", required this.category, required this.values, this.comment, this.successCodes, this.errorCodes, this.bitwidth});

  static fromStructXML(XmlElement element) {
    String? name = element.getAttribute("name");
    List<VkValue> values = List<VkValue>.from(
        element.findAllElements('member').map((node) {
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

          if (altlen != null) lenValue = "codeSize";
          if (replaceNames.containsKey(name)) name = replaceNames[name];

          if (typeMap.containsKey(type)) type = typeMap[type];
          if (len != null) type = "$type[${len}]";
          if (isPointer) type = "$type*";

          return VkValue(name: name ?? "-", type: type ?? "-", lenValue: lenValue?.split(",").toList(), defaultValue: default_value);
        }));

      return VkType(name: name ?? "-", values: values, category: "struct");
  }

  static fromEnumXML(XmlElement element) {
    String? name = element.getAttribute("name");
    List<VkValue> values = List<VkValue>.from(
        element.findAllElements('member').map((node) {
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

          if (altlen != null) lenValue = "codeSize";
          if (replaceNames.containsKey(name)) name = replaceNames[name];

          if (typeMap.containsKey(type)) type = typeMap[type];
          if (len != null) type = "$type[${len}]";
          if (isPointer) type = "$type*";

          return VkValue(name: name ?? "-", type: type ?? "-", lenValue: lenValue?.split(",").toList(), defaultValue: default_value);
        }));

    return VkType(name: name ?? "-", values: values, category: "struct");
  }
}

class VkValue {
  String name;
  String? bitpos;
  String? type;
  bool isPointer;
  String? api;
  String? defaultValue;
  List<String>? lenValue;

  VkValue({required this.name, this.type, this.bitpos, this.isPointer = false, this.api, this.defaultValue, this.lenValue});
}

