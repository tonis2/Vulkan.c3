
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
    return '${this[0].toUpperCase()}${this.substring(1)}';
  }

  String get C3Name {
    bool hasVK = this.toLowerCase().substring(0, 2).contains("vk");
    return hasVK ? this.substring(2) : this;
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