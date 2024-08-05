// Lib taken from https://github.com/Zeejfps/c3-lib-xml
module xml;
import std::io;
import std::collections;

def XmlAttributeList = List(<XmlAttribute*>);
def XmlNodeList = List(<XmlNode*>);

fault XmlFault {
	ATTRIBUTE_NOT_FOUND
}

struct XmlAttribute {
	String name;
	String value;
	Allocator allocator;
}

struct XmlNode {
	String name;
	String value;
	XmlAttributeList attributes;
	XmlNodeList children;
	Allocator allocator;
}

struct XmlDoc {
	Allocator allocator;
	XmlNode* rootNode;
}

fn XmlDoc*! read_file(File file, Allocator allocator = allocator::heap()) {
	char[] buff = allocator::new_array(allocator, char, 2048);
	defer allocator::free(allocator, buff);

	XmlDoc* doc = allocator::new(allocator, XmlDoc);
	doc.allocator = allocator;

	XmlReader* reader = new_reader(doc, allocator);
	defer reader.free();

	while (!file.eof()) {
		usz! bytesRead = file.read(buff);
		if (catch f = bytesRead) {
			return f?;
		}
		char[] data = buff[0:bytesRead];
		reader.read(data);
	}

	return doc;
}

fn void XmlDoc.free(&self) {
	if (!self.allocator) return;
	self.rootNode.free();
	allocator::free(self.allocator, self);
}

fn void XmlNode.free(&node) {
	if (node.allocator == null) {
		return;
	}

	// NOTE(Zee): Does it make sense for the node to free its own children?
	foreach(child : node.children) {
		child.free();
	}

	foreach(attribute : node.attributes) {
		attribute.free();
	}

	node.children.free();
	node.attributes.free();
	node.name.free(node.allocator);
	node.value.free(node.allocator);

	// TODO: Free Name and Value
	allocator::free(node.allocator, node);
}

fn void XmlAttribute.free(&self) {
	if (self.allocator == null) {
		return;
	}
	self.name.free(self.allocator);
	self.value.free(self.allocator);
	// TODO: Free Name and Value;
	allocator::free(self.allocator, self);
}

fn void XmlDoc.find_nodes_by_tag_name(&self, char[] type, XmlNodeList* cache) {
	XmlNode* node = self.rootNode;
	node.find_nodes_by_tag_name(type, cache);
}

fn void XmlNode.find_nodes_by_tag_name(&self, char[] type, XmlNodeList* cache) {
	if (self.name == type) {
		cache.push(self);
	}

	for (usz i = 0; i < self.children.size; i++) {
		XmlNode* childNode = self.children[i];
		childNode.find_nodes_by_tag_name(type, cache);
	}
}

def SearchCallback = fn bool (XmlNode*);

fn XmlNodeList XmlDoc.find(self, SearchCallback search_fn) {
	XmlNodeList cache;
	XmlNode* node = self.rootNode;

	for (usz i = 0; i < node.children.size; i++) {
		if (search_fn(node.children[i])) cache.push(node);
	}
	return cache;
}

fn String! XmlNode.get_attrib_value(&self, char[] name) {
	for (usz i = 0; i < self.attributes.size; i++) {
		XmlAttribute* attribute = self.attributes[i];
		if (attribute.name == name) {
			return (String)attribute.value;
		}
	}
	return XmlFault.ATTRIBUTE_NOT_FOUND?;
}

fn void XmlDoc.print_as_tree(&doc, OutStream stream) {
	doc.rootNode.print_as_tree(stream, 0, 0, 0);
}

fn void XmlNode.print_as_tree(&node, OutStream stream, int depth, usz childIndex, usz childCount) {

	for (int i = 0; i < depth - 1; i++) {
		io::fprintf(stream, "%c", '│')!!;
	}

	if (childCount > 0) {
		if(childIndex == childCount - 1) {
			io::fprintf(stream, "%c", '└')!!;
		} else {
			io::fprintf(stream, "%c", '├')!!;
		}
	}

	io::fprintf(stream, "%s", node.name, node.attributes.size)!!;
	for (usz i = 0; i < node.attributes.size; i++) {
		XmlAttribute* attribute = node.attributes[i];
		io::fprintf(stream, ", %s=\"%s\"", attribute.name, attribute.value)!!;
	}

	if (node.value.len > 0) {
		String v = (String)node.value;
		String trimmed = v.trim();
		if (trimmed.len > 0) {
			io::fprintf(stream, " \"%s\"", trimmed)!!;
		}
	}

	io::fprint(stream, "\n")!!;

	depth = depth + 1;
	for (usz i = 0; i < node.children.size; i++) {
		XmlNode* child = node.children[i];
		child.print_as_tree(stream, depth, i, node.children.size);
	}
}