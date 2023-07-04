import "dart:io";
import 'package:xml/xml.dart';

class VkStructMember {
  String? type;
  String? name;
  VkStructMember({required this.type, required this.name});
  static fromXML(XmlElement node) {
    String? name = node.getElement("name")?.innerText;
    String? type = node.getElement("type")?.innerText;
    return VkStructMember(type: type, name: name);
  }
}

class VKenumValue {
  String? index;
  String? name;
  String? value;
  VKenumValue({
    required this.name,
    required this.value,
    required this.index,
  });
  static fromXML(XmlElement node) {
    String? index = node.getAttribute("index");
    String? name = node.getAttribute("name");
    String? value = node.getAttribute("value");
    return VKenumValue(index: index, name: name, value: value);
  }
}

class VKenum {
  String? type;
  String? name;
  List<VKenumValue> values;
  VKenum({required this.name, this.type, required this.values});
  static fromXML(XmlElement node) {
    String? name = node.getAttribute("name");
    String? type = node.getAttribute("type");
    List<VKenumValue> values =
        List<VKenumValue>.from(node.findAllElements('enum').map((node) => VKenumValue.fromXML(node)));
    return VKenum(type: type, name: name, values: values);
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
  List<VKtype> types = [];
  List<VKenum> enums = [];
  List<VKtype> baseTypes = [];
  List<VKtype> handles = [];

  document.findAllElements('type').forEach((XmlElement node) {
    String? category = node.getAttribute("category");
    if (category == "bitmask") {
      types.add(VKtype.fromXML(node));
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

  document.findAllElements('enum').forEach((XmlElement node) {
    String? category = node.getAttribute("type");
    if (category == "bitmask") {
      enums.add(VKenum.fromXML(node));
    }
  });

  baseTypes.forEach((element) {
    print(element.name);
    print(element.type);
  });
}
