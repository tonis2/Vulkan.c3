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

class VKstruct {
  bool returnedOnly;
  String? name;
  List<VkStructMember> members = [];
  VKstruct({required this.returnedOnly, required this.name, required this.members});
  static fromXML(XmlElement node) {
    String? returned = node.getAttribute("returnedonly");
    String? name = node.getAttribute("name");
    List<VkStructMember> members =
        List<VkStructMember>.from(node.findAllElements('member').map((node) => VkStructMember.fromXML(node)));

    return VKstruct(returnedOnly: returned == "true", name: name, members: members);
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
  document.findAllElements('type').forEach((XmlElement node) {
    String? category = node.getAttribute("category");

    if (category == "bitmask") {
      types.add(VKtype.fromXML(node));
    }

    if (category == "struct") {
      structs.add(VKstruct.fromXML(node));
    }
  });

  structs.forEach((element) {
    print(element.name);
  });
}
