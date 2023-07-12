import "dart:io";
import 'package:xml/xml.dart';

var typeMap = {"uint32_t": "uint", "uint64_t": "ulong", "int32_t": "int", "int64_t": "long"};

class VkStructMember {
  String? type;
  String? name;
  VkStructMember({required this.type, required this.name});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;

    return VkStructMember(type: typeMap[type] ?? type, name: name);
  }
}

class VKstruct {
  bool returnedOnly;
  String? name;
  List<VkStructMember> values = [];
  VKstruct({required this.returnedOnly, required this.name, required this.values});
  static fromXML(XmlElement node) {
    String? returned = node.getAttribute("returnedonly");
    String? name = node.getAttribute("name");
    List<VkStructMember> values =
        List<VkStructMember>.from(node.findAllElements('member').map((node) => VkStructMember.fromXML(node)));
    return VKstruct(returnedOnly: returned == "true", name: name, values: values);
  }

  String build() {
    return """
struct $name {
  ${values.map((value) => "${value.type} ${value.name};").join("\n  ")}
}
""";
  }
}

class VKenumValue {
  String? index;
  String? name;
  String? value;
  String? type;
  VKenumValue({required this.name, required this.value, required this.index, this.type});

  static fromXML(XmlElement node) {
    String? index = node.getAttribute("index");
    String? name = node.getAttribute("name");
    String? value = node.getAttribute("value");
    String? type = node.getAttribute("type");
    return VKenumValue(index: index, name: name, value: value, type: type);
  }
}

class VKenum {
  String? type;
  String? name;
  String? comment;
  List<VKenumValue> values;
  VKenum({required this.name, this.type, required this.values, this.comment});

  String? build() {
    if (type == "bitmask") {
      return "const $name = int;";
    }

    if (type == "enum") {
      return """
enum $name : int {
 ${values.map((entry) => "${entry.name} : ${entry.value}").join("\n ")}
}
""";
    }

    return null;
  }

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
  VKtype({required this.type, required this.name, required this.requiredBy});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    String? requiredBy = node.getAttribute("requires");
    return VKtype(type: type, name: name, requiredBy: requiredBy);
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
  });

  document.findAllElements('enums').forEach((XmlElement node) {
    enums.add(VKenum.fromXML(node));
  });

  // baseTypes.forEach((element) {
  //   print(element.name);
  //   print(element.type);
  // });

  var output = File('./build/vk.c3');
  output.writeAsStringSync("");
  output.writeAsStringSync("""
module vk;

// Base types
${baseTypes.map((type) => "def ${type.name} = ${type.type != null ? typeMap[type.type] : "void*"};").join("\n")}

// Handles
${handles.where((element) => element.name != null).map((type) => "def ${type.name} = void*;").join("\n")}

// Bitmasks
${bitmasks.where((element) => element.name != null).map((type) => "def ${type.name} = ${type.type};").join("\n")}

// Structs
${structs.where((element) => element.name != null && element.values.isNotEmpty).map((struct) => struct.build()).join("\n")}

// Enums
${enums.where((element) => element.name != null).map((entry) => entry.build()).join("\n")}
""");
}
