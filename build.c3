import std::io;
import std::core;
import std::math;
import std::collections::list;
import xml;

const MAX_VERSION = 1.2;

struct Base {
    String name;
    String comment;
    List(<VkValue>) values;
}

struct VkStruct {
    inline Base base;
}

struct VkCommand {
    inline Base base;
    String returnType;
    List(<String>) success_codes;
    List(<String>) error_codes;
}

struct VkEnum {
    inline Base base;
    uint bitpos;
    uint bitwidth;
}

struct VkValue {
    String name;
    String comment;
    String default_value;
    String type;
    uint pointer_level;
}

fn void! main() {
    
    File xmlFile = io::file::open("assets/vk.xml", "r")!!;
    defer xmlFile.close()!!;

    XmlDoc* doc = xml::read_file(xmlFile)!!;
    defer doc.free();

    XmlNodeList features;
    defer features.free();

    XmlNodeList enums_xml = doc.find(fn (entry) => {|
        String tag_name = entry.name;
        String! type = entry.get_attrib_value("type");
        if (try type && type == "enum" && tag_name == "enums") return true;
        return false;
    |});

    defer enums_xml.free();

    io::printfn("enums xml %d", enums_xml.len());

    // XmlNodeList structs_xml;
    // defer structs_xml.free();

    // doc.find_nodes_by_tag_name("enums", &structs_xml);

    List(<VkStruct>) structs;
    List(<VkCommand>) commands;
    List(<VkEnum>) enums;

    defer {
        structs.free();
        commands.free();
        enums.free();
    }

    foreach (feature : features) {
        String! number = feature.get_attrib_value("number");

        // Get only up-to required vulkan version
        if (try number && number.to_double()!! <= MAX_VERSION) {
            foreach (require : feature.children) {
                foreach (entry : require.children) {
                    switch (entry.name) {
                        case "enum": {
                            String! name = entry.get_attrib_value("name");
                            String! bitpos = entry.get_attrib_value("bitpos");
                            String! value = entry.get_attrib_value("value");
                            enums.push({.base.name = name ?? "-" });
                        }
                        case "type": {

                        }
                        default: {

                        }
                    }
                }
            }
        }
    }

    foreach (entry : enums) {
        io::printfn("enum %s", entry.name);
    }
    // foreach (node : bookNodes) {
    // char[]! id = node.get_attrib_value("id");
    // if (catch err = id) {
    //     io::printf("attribute not found\n");
    //     continue;
    // }
    io::printfn("xml");

}

