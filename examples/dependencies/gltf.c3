import std::collections::object;
import std::io;
import std::ascii;
import std::math::matrix;
import std::math;
import std::core::mem;
import std::collections::list;
import std::encoding::json;
import std::encoding::base64;
import std::collections::map;

def PrimitiveList = List(<Object*>);
def NodeList = List(<Node>);
def SceneList= List(<Scene>);
def MeshList = List(<Mesh>);
def IndexList = List(<uint>);
def BufferList = List(<Buffer>);
def BufferViewList = List(<BufferView>);
def AccessorList = List(<Accessor>);
def CameraList = List(<Camera>);
def MaterialList = List(<Material>);
def ImageList = List(<Image>);
def SamplerList = List(<Sampler>);
def TextureList = List(<Texture>);

def ObjectInternalMap = HashMap(<String, Object*>);

enum Targets {
    ARRAY_BUFFER,
    ELEMENT_ARRAY_BUFFER
}

enum BufferType {
    IMAGE_JPEG,
    IMAGE_PNG,
    IMAGE_BMP,
    IMAGE_GIF,
    STREAM
}

enum AccessorType {
    SCALAR,
    VEC2,
    VEC3,
    VEC4,
    MAT2,
    MAT3,
    MAT4
}

enum Mode {
    POINTS,
    LINES,
    LINE_LOOP,
    LINE_STRIP,
    TRIANGLES,
    TRIANGLE_STRIP,
    TRIANGLE_FAN
}

enum DataType {
    ICHAR,
    CHAR,
    SHORT,
    USHORT,
    UINT,
    FLOAT,
}

enum WrapMode  {
    CLAMP_TO_EDGE,
    MIRRORED_REPEAT,
    REPEAT,
}

enum MinFilter {
    NEAREST,
    LINEAR,
    NEAREST_MIPMAP_NEAREST,
    LINEAR_MIPMAP_NEAREST,
    NEAREST_MIPMAP_LINEAR,
    LINEAR_MIPMAP_LINEAR,
}

enum MagFilter {
    NEAREST,
    LINEAR,
}

fault ParseError
{
    FILE_NOT_FOUND,
    FILE_NOT_READABLE,
    JSON_PARSE_FAILED,
    NO_BUFFER_VIEW,
    NO_BUFFER,
    BROKEN_BUFFER,
    KEY_NOT_FOUND
}

fault GltfError
{
    KEY_NOT_FOUND
}

struct Gltf {
    Object* json;
    String name;
    NodeList nodes;
    SceneList scenes;
    MeshList meshes;
    BufferList buffers;
    BufferViewList bufferViews;
    AccessorList accessors;
    CameraList cameras;
    MaterialList materials;
    ImageList images;
    SamplerList samplers;
    TextureList textures;
}

struct Scene {
    String name;
    IndexList nodes;
}

struct Node {
    String name;
    int mesh;
    int camera;
    Quaternionf rotation;
    Vec3f scale;
    Vec3f translation;
    Node* parent;
}

struct TextureInfo {
    uint index;
    Vec2f texCoord;
}

struct Material {
    String name;
    bool doubleSided;
    float[3] emissiveFactor;
    TextureInfo normalTexture;
    TextureInfo occlusionTexture;
    struct pbrMetallicRoughness {
        float[4] baseColorFactor;
        float metallicFactor;
        float roughnessFactor;
        TextureInfo baseColorTexture;
        TextureInfo metallicRoughnessTexture;
        TextureInfo emissiveTexture;
    }
}

struct Texture {
    uint sampler;
    uint source;
}

struct Image {
    String name;
    uint bufferView;
    BufferType mimeType;
}

struct Sampler {
    MagFilter magFilter;
    MinFilter minFilter;
    WrapMode wrap_s;
    WrapMode wrap_t;
}

struct Camera {
    String name;
    union
    {
        struct perspective {
            float aspectRatio;
            float yfov;
            float zfar;
            float znear;
        }
    }
}

struct Accessor {
    uint bufferView;
    uint offset;
    uint stride;
    uint count;
    bool normalize;
    Mode mode;
    DataType data_type;
    AccessorType type;
}

struct Mesh {
    String name;
    PrimitiveList primitives;
}

struct Primitive {
    uint vertice;
    uint indice;
    uint tex_cord;
    uint normal;
    Object* object;
}

struct BufferView {
    uint buffer;
    uint byteLength;
    uint offset;
    uint stride;
    Targets target;
}

struct Buffer {
    char* data;
    uint size;
    BufferType data_type;
}

// Parsing JSON to structs
fn void Scene.fromJson(Scene* self, Object* json) {
    String! name = json.get_string("name");
    Object*! sceneNodes = json.get("nodes");

    if (try name) self.name = name;
    if (try sceneNodes) foreach (node : sceneNodes.array) self.nodes.push((uint)node.f);
}

fn void Node.fromJson(Node* self, Object* json) {
    self.mesh = -1;
    self.camera = -1;
    self.rotation = quaternionf_identity();

    String! name = json.get_string("name");
    if (try name) self.name = name;

    // Parse node transforms
    Object*! rotation = json.get("rotation");
    Object*! scale = json.get("scale");
    Object*! translation = json.get("translation");

    int! mesh = json.get_int("mesh");
    int! camera = json.get_int("camera");

    if (try mesh) self.mesh = mesh;
    if (try camera) self.camera = camera;
    if (try rotation) {
        self.rotation = Quaternionf {(float)rotation.get_at(0).f, (float)rotation.get_at(1).f, (float)rotation.get_at(2).f, (float)rotation.get_at(3).f};
    }

    if (try scale) {
        self.scale = {(float)scale.get_at(0).f, (float)scale.get_at(1).f, (float)scale.get_at(2).f };
    }

    if (try translation) {
        float x = (float)translation.get_at(0).f;
        float y = (float)translation.get_at(1).f;
        float z = (float)translation.get_at(2).f;
        self.translation = {x, y, z};
    }
}

fn bool Node.hasMesh(Node* self) {
    return self.mesh != -1;
}

fn bool Node.hasCamera(Node* self) {
    return self.mesh != -1;
}

fn void Mesh.fromJson(Mesh* self, Object* json) {
    String! name = json.get_string("name");
    Object*! primitives = json.get("primitives");

    if (try name) self.name = name;
    if (try primitives) {
        foreach (primitive : primitives.array) {
            self.primitives.push(primitive);
        }
    }
}

fn void Mesh.recompose(Mesh* self) {
    // Get mesh total buffer size
/*    foreach (index, primitive: data.primitives) {
        Object* attributes = primitive.get("attributes")!!;
        uint*! indices = primitive.get_int("indices");

        foreach (index2, key : attributes.map.key_tlist())
        {
           Accessor accessor = content.accessors[attributes.get_int(key)!!];
           BufferView buffer_view = content.bufferViews[accessor.bufferView];

           if (index == 0 && index2 == 0) {
                offset = (usz)buffer_view.offset;
           }
           buffer_size += (usz)buffer_view.byteLength;
        }

        if (try indices) {
               Accessor accessor = content.accessors[indices];
               BufferView buffer_view = content.bufferViews[accessor.bufferView];
        }
    }*/
}

fn void BufferView.fromJson(BufferView* self, Object* json) {
    uint! buffer = json.get_int("buffer");
    uint! byteLength = json.get_int("byteLength");
    uint! offset = json.get_int("byteOffset");
    uint! target = json.get_int("target");

    if (try buffer) self.buffer = buffer;
    if (try byteLength) self.byteLength = byteLength;
    if (try offset) self.offset = offset;
    if (try target) {
        switch(target) {
            case 34962: {
                self.target = Targets.ARRAY_BUFFER;
            }
            case 34963: {
                self.target = Targets.ELEMENT_ARRAY_BUFFER;
            }
        }
    }
}

fn void Accessor.fromJson(Accessor* self, Object* json) {
    Object*! dataType = json.get("componentType");
    Object*! objectType = json.get("type");
    Object*! bufferView = json.get("bufferView");
    Object*! count = json.get("count");
    Object*! offset = json.get("offset");
    Object*! stride = json.get("stride");
    Object*! normalize = json.get("normalize");
    Object*! mode = json.get("mode");

    if (try count) self.count = (uint)count.f;
    if (try offset) self.offset = (uint)offset.f;
    if (try normalize) self.normalize = normalize.b;
    if (try stride) self.stride = (uint)stride.f;
    if (try bufferView) self.bufferView = (uint)bufferView.f;
    if (try mode) {
        switch((uint)mode.f) {
            case 0:
                self.mode = Mode.POINTS;
            case 1:
                self.mode = Mode.LINES;
            case 2:
                self.mode = Mode.LINE_LOOP;
            case 3:
                self.mode = Mode.LINE_STRIP;
            case 4:
                self.mode = Mode.TRIANGLES;
            case 5:
                self.mode = Mode.TRIANGLE_STRIP;
            case 6:
                self.mode = Mode.TRIANGLE_FAN;
        }
    }

    if (try dataType) {
        switch(dataType.f) {
            case 5120:
                self.data_type = DataType.ICHAR;
            case 5121:
                self.data_type = DataType.CHAR;
            case 5122:
                self.data_type = DataType.SHORT;
            case 5123:
                self.data_type = DataType.USHORT;
            case 5125:
                self.data_type = DataType.UINT;
            case 5126:
                self.data_type = DataType.FLOAT;
        }

        String! object_type = objectType.s;
        if (try object_type) {
            if (object_type == "SCALAR") {
                self.type = AccessorType.SCALAR;
            }

            if (object_type == "VEC2") {
                self.type = AccessorType.VEC2;
            }

            if (object_type == "VEC3") {
                self.type = AccessorType.VEC3;
            }

            if (object_type == "VEC4") {
                self.type = AccessorType.VEC4;
            }

            if (object_type == "MAT2") {
                self.type = AccessorType.MAT2;
            }

            if (object_type == "MAT3") {
                self.type = AccessorType.MAT3;
            }

            if (object_type == "MAT4") {
                self.type = AccessorType.MAT4;
            }
        }
    }
}

fn void! Buffer.fromJson(Buffer* self, Object* json) {
    uint! size = json.get_int("byteLength");
    String! data = json.get_string("uri");
    BufferType bufferType;

    if (catch size, data) {
        io::printf("Buffer has no size or data \n");
        return ParseError.BROKEN_BUFFER?;
    }

    String[] bufferHeader = data.split(",");
    defer mem::free(bufferHeader);
    char[] parsedBuffer = mem::malloc(char, size + 2);

    // Parse buffer from base64 to bytes
    if (mem::equals(bufferHeader[0], "data:application/octet-stream;base64")) {
        Base64Decoder decoder;
        decoder.init(base64::STD_ALPHABET, -1)!;

        // Decode buffer from base64
        if (catch err = decoder.decode(bufferHeader[1], parsedBuffer)) {
            io::printfn("Buffer parsing error: '%s'.", err);
            return ParseError.BROKEN_BUFFER?;
        };
        bufferType = BufferType.STREAM;
    }

    self.data = parsedBuffer;
    self.size = size;
    self.data_type = bufferType;
}

fn void! Camera.fromJson(Camera* self, Object* json) {
    String! cameraType = json.get_string("type");
    String! name = json.get_string("name");

    if (try name) self.name = name;
    if (try cameraType) {
        if (mem::equals(cameraType, "perspective")) {
            Object*! perspective = json.get("perspective");

            if (catch err = perspective) return ParseError.BROKEN_BUFFER?;

            float! aspectRatio = (float)perspective.get_float("aspectRatio");
            float! yfov = (float)perspective.get_float("yfov");
            float! zfar = (float)perspective.get_float("zfar");
            float! znear = (float)perspective.get_float("znear");

            if (catch err = aspectRatio, yfov, zfar, znear) return ParseError.BROKEN_BUFFER?;

            self.perspective = {
                aspectRatio,
                yfov,
                zfar,
                znear
            };
        }
    }
}

fn void Material.fromJson(Material* self, Object* json) {
    String! name = json.get_string("name");
    bool! doubleSided = json.get_bool("doubleSided");
    Object*! pbrMetallicRoughness = json.get("pbrMetallicRoughness");
    Object*! occlusionTexture = pbrMetallicRoughness.get("baseColorTexture");
    Object*! normalTexture = pbrMetallicRoughness.get("baseColorTexture");

    if (try name) self.name = name;
    if (try doubleSided) self.doubleSided = doubleSided;

    if (try occlusionTexture) self.occlusionTexture.fromJson(occlusionTexture);
    if (try normalTexture) self.normalTexture.fromJson(normalTexture);

    if (try pbrMetallicRoughness) {
        double! metallicFactor = pbrMetallicRoughness.get_float("metallicFactor");
        double! roughnessFactor = pbrMetallicRoughness.get_float("roughnessFactor");
        Object*! baseColorTexture = pbrMetallicRoughness.get("baseColorTexture");
        Object*! baseColorFactor = pbrMetallicRoughness.get("baseColorFactor");
        Object*! metallicRoughnessTexture = pbrMetallicRoughness.get("baseColorTexture");
        self.pbrMetallicRoughness.baseColorFactor = {1.0, 1.0, 1.0, 1.0};

        if (try metallicFactor && try roughnessFactor) {
            self.pbrMetallicRoughness.metallicFactor = (float)metallicFactor;
            self.pbrMetallicRoughness.roughnessFactor = (float)roughnessFactor;
        }

        if (try baseColorFactor) {
            self.pbrMetallicRoughness.baseColorFactor = float[4] {(float)baseColorFactor.get_at(0).f, (float)baseColorFactor.get_at(1).f, (float)baseColorFactor.get_at(2).f, (float)baseColorFactor.get_at(3).f};
        }

        if (try baseColorTexture) self.pbrMetallicRoughness.baseColorTexture.fromJson(baseColorTexture);
        if (try metallicRoughnessTexture) self.pbrMetallicRoughness.metallicRoughnessTexture.fromJson(metallicRoughnessTexture);
    }
}

fn void TextureInfo.fromJson(TextureInfo* self, Object* json) {
    uint! index = json.get_int("index");
    Object*! texCoord = json.get("texCoord");

    if (try index) self.index = index;
    if (try texCoord) {
        self.texCoord = Vec2f{(float)texCoord.get_at(0).f, (float)texCoord.get_at(1).f};
    }
}

fn void Texture.fromJson(Texture* self, Object* json) {
    uint! sampler = json.get_int("sampler");
    uint! source = json.get_int("source");

    if (try sampler) self.sampler = sampler;
    if (try source) self.source = source;
}

fn void Sampler.fromJson(Sampler* self, Object* json) {
    uint! magFilter = json.get_int("magFilter");
    uint! minFilter = json.get_int("minFilter");
    uint! wrapS = json.get_int("wrapS");
    uint! wrapT = json.get_int("wrapt");

    if (try wrapS) {
        switch(wrapS) {
            case 33071:
                self.wrap_s = WrapMode.CLAMP_TO_EDGE;
            case 33648:
                self.wrap_s = WrapMode.MIRRORED_REPEAT;
            case 10497:
                self.wrap_s = WrapMode.REPEAT;
        }
    }

    if (try wrapT) {
        switch(wrapT) {
            case 33071:
                self.wrap_t = WrapMode.CLAMP_TO_EDGE;
            case 33648:
                self.wrap_t = WrapMode.MIRRORED_REPEAT;
            case 10497:
                self.wrap_t = WrapMode.REPEAT;
        }
    }

    if (try magFilter) {
        switch(magFilter) {
            case 9728:
                self.magFilter = MagFilter.LINEAR;
            case 9729:
                self.magFilter = MagFilter.NEAREST;
        }
    }

    if (try minFilter) {
        switch(minFilter) {
            case 9728:
                self.minFilter = MinFilter.NEAREST;
            case 9729:
                self.minFilter = MinFilter.LINEAR;
            case 9984:
                self.minFilter = MinFilter.NEAREST_MIPMAP_NEAREST;
            case 9985:
                self.minFilter = MinFilter.LINEAR_MIPMAP_NEAREST;
            case 9986:
                self.minFilter = MinFilter.NEAREST_MIPMAP_LINEAR;
            case 9987:
                self.minFilter = MinFilter.LINEAR_MIPMAP_LINEAR;
        }
    }
}

fn void Image.fromJson(Image* self, Object* json) {
    uint! bufferView = json.get_int("bufferView");
    String! name = json.get_string("name");
    String! mimeType = json.get_string("mimeType");

    if (try bufferView) self.bufferView = bufferView;
    if (try name) self.name = name;
    if (try mimeType) {
        if (mem::equals(mimeType, "image/jpeg")) {
            self.mimeType = BufferType.IMAGE_JPEG;
        }

        if (mem::equals(mimeType, "image/png")) {
            self.mimeType = BufferType.IMAGE_PNG;
        }

        if (mem::equals(mimeType, "image/bmp")) {
            self.mimeType = BufferType.IMAGE_BMP;
        }
    }
}


fn Gltf! loadFile(String path) {
    File! file = file::open(path, "r");
    if (catch err = file)
    {
        if (err == IoError.FILE_NOT_FOUND) {
            return ParseError.FILE_NOT_FOUND?;
        }

        return ParseError.FILE_NOT_READABLE?;
    }

    Gltf content;
    Object*! gltfJson = json::parse(&file);

    if (catch err = gltfJson) {
        return ParseError.JSON_PARSE_FAILED?;
    }

    content.json = gltfJson;

    // JSON data
    Object*! scenes = gltfJson.get("scenes");
    Object*! nodes = gltfJson.get("nodes");
    Object*! meshes = gltfJson.get("meshes");
    Object*! bufferViews = gltfJson.get("bufferViews");
    Object*! accessors = gltfJson.get("accessors");
    Object*! buffers = gltfJson.get("buffers");
    Object*! cameras = gltfJson.get("cameras");
    Object*! materials = gltfJson.get("materials");
    Object*! images = gltfJson.get("images");
    Object*! samplers = gltfJson.get("samplers");
    Object*! textures = gltfJson.get("textures");

    // Parse scenes
    if (try scenes) {
        foreach (scene : scenes.array) {
            Scene data;
            data.fromJson(scene);
            content.scenes.push(data);
        }
    }

    // Parse nodes
    if (try nodes) {
        foreach (node : nodes.array) {
           Node data;
           data.fromJson(node);
           content.nodes.push(data);
        }
    }

    if (try bufferViews) {
        foreach (bufferView : bufferViews.array) {
            BufferView data;
            data.fromJson(bufferView);
            content.bufferViews.push(data);
        }
    }

    // Parse accessors
    if (try accessors) {
        foreach (accessor : accessors.array) {
            Accessor data;
            data.fromJson(accessor);
            content.accessors.push(data);
        }
    }

    // Parse buffers
    if (try buffers) {
        foreach (buffer : buffers.array) {
            Buffer data;
            if (catch err = data.fromJson(buffer)) {}
            else {content.buffers.push(data);}
        }
    }

    // Parse cameras
    if (try cameras) {
        foreach (camera : cameras.array) {
            Camera data;
            if (catch err = data.fromJson(camera)) {}
            else {content.cameras.push(data);}
        }
    }
    // Parse materials
    if (try materials) {
        foreach (material_json : materials.array) {
            Material material;
            material.fromJson(material_json);
            content.materials.push(material);
        }
    }
    // Parse images
    if (try images) {
        foreach (image : images.array) {
            Image data;
            data.fromJson(image);
            content.images.push(data);
        }
    }

    if (try samplers) {
        foreach (sampler : samplers.array) {
            Sampler data;
            data.fromJson(sampler);
            content.samplers.push(data);
        }
    }

    if (try textures) {
        foreach (texture : textures.array) {
            Texture data;
            data.fromJson(texture);
            content.textures.push(data);
        }
    }

    // Parse meshes
    if (try meshes) {
        foreach (mesh : meshes.array) {
            Mesh data;
            data.fromJson(mesh);
            content.meshes.push(data);
        }
    }

    if (catch file.close()) {}
    return content;
}

fn void Gltf.free(Gltf* self) {
    foreach (mesh : self.meshes) {
        mesh.primitives.free();
    }

    foreach (buffer : self.buffers) {
        buffer.free();
    }

    self.cameras.free();
    self.accessors.free();
    self.bufferViews.free();
    self.buffers.free();
    self.scenes.free();
    self.nodes.free();
    self.images.free();
    self.meshes.free();
    self.materials.free();
    self.textures.free();
    self.samplers.free();
    self.json.free();
}

fn Node! Gltf.getNode(Gltf* self, String name) {
    foreach (node : self.nodes) {
        if (mem::equals(node.name, name)) {
            return node;
        }
    }
    return GltfError.KEY_NOT_FOUND?;
}

fn uint! Object.getValue(Object* primitive, String key) {
    if (mem::equals(key, "indices") || mem::equals(key, "material")) {
        uint! value = primitive.get_int(key);
        if (try value) return value;
    }
    else {
        Object*! attributes = primitive.get("attributes");
        if (try attributes) {
            uint! value = attributes.get_int(key);
            if (try value) return value;
        }
    }
    return GltfError.KEY_NOT_FOUND?;
}

fn Accessor! Gltf.getAccessor(Gltf* data, Object* primitive, String key) {
    if (mem::equals(key, "indices")) {
        Object*! value = primitive.get(key);
        if (try value) return data.accessors[(uint)value.f];
    } else {
        Object*! attributes = primitive.get("attributes");
        if (try attributes) {
            Object*! value = attributes.get(key);
            if (try value) return data.accessors[(uint)value.f];
        }
    }

    return GltfError.KEY_NOT_FOUND?;
}


fn BufferView! Gltf.getBufferView(Gltf* data, Object* primitive, String key) {
    Accessor! accessor = data.getAccessor(primitive, key);
    if (catch accessor) {
        return GltfError.KEY_NOT_FOUND?;
    }
    return data.bufferViews[accessor.bufferView];
}

fn uint Accessor.componentLen(Accessor* self) {
    switch(self.type) {
        case AccessorType.SCALAR:
            return 1;
        case AccessorType.VEC2:
            return 2;
        case AccessorType.VEC3:
            return 3;
        case AccessorType.VEC4:
            return 4;
        case AccessorType.MAT2:
            return 4;
        case AccessorType .MAT3:
            return 9;
        case AccessorType.MAT4:
            return 16;
    }
}

fn uint Accessor.componentSize(Accessor* self) {
    return self.dataSize() * self.componentLen();
}

fn uint Accessor.dataSize(Accessor* self) {
    switch(self.data_type) {
        case DataType.ICHAR:
            return ichar.sizeof;
        case DataType.CHAR:
            return char.sizeof;
        case DataType.SHORT:
            return short.sizeof;
        case DataType.USHORT:
            return ushort.sizeof;
        case DataType.UINT:
            return uint.sizeof;
        case DataType.FLOAT:
            return float.sizeof;
    }
}


// Returns matrix from node transform, scale, rotation
fn Matrix4f Node.recompose(Node* self) {
   Matrix4f translation = {
        1.0, 0.0, 0.0, 0.0,
        0.0, 1.0, 0.0, 0.0,
        0.0, 0.0, 1.0, 0.0,
        self.translation.x, self.translation.y, self.translation.z, 1.0,
   };

    Matrix4f scale = {
        self.scale.x, 0.0, 0.0, 0.0,
        0.0,   self.scale.y, 0.0, 0.0,
        0.0, 0.0,   self.scale.z, 0.0,
        0.0, 0.0, 0.0, 1.0,
    };

   Matrix4f rotation = {|
        float x = self.rotation.i;
        float y = self.rotation.j;
        float z = self.rotation.k;
        float w = self.rotation.l;

        float x2 = x + x;
        float y2 = y + y;
        float z2 = z + z;

        float xx2 = x2 * x;
        float xy2 = x2 * y;
        float xz2 = x2 * z;

        float yy2 = y2 * y;
        float yz2 = y2 * z;
        float zz2 = z2 * z;

        float sy2 = y2 * w;
        float sz2 = z2 * w;
        float sx2 = x2 * w;

        return {
            1.0 - yy2 - zz2, xy2 + sz2, xz2 - sy2, 0.0,
            xy2 - sz2, 1.0 - xx2 - zz2, yz2 + sx2, 0.0,
            xz2 + sy2, yz2 - sx2, 1.0 - xx2 - yy2, 0.0,
            0.0, 0.0, 0.0, 1.0,
        };
   |};

   return scale.mul(translation).mul(rotation);
}

fn void Buffer.free(Buffer* self) {
    mem::free(self.data);
}

/*fn void! Gltf.get_buffer(Gltf* self, Accessor accessor, uint offset_index) @inline {
    BufferView bufferView = self.bufferViews[accessor.bufferView];
    Buffer buffer = self.buffers[bufferView.buffer];
    char* data = (buffer.data + accessor.offset + bufferView.offset);

    for (int i = 0; i < accessor.componentLen(); ++i) {
        if (accessor.data_type == DataType.USHORT) {
            ushort value = bitcast(char[2]{data[i], data[i + 1]}, ushort);
            io::printf("Parsed USHORT %d \n", value);
        }

        if (accessor.data_type == DataType.SHORT) {
            short value = bitcast(char[2]{data[i], data[i + 1]}, short);
            io::printf("Parsed SHORT %d \n", value);
        }

        if (accessor.data_type == DataType.UINT) {
            uint value = bitcast(char[4]{data[i], data[i + 1], data[i + 2], data[i + 3]}, uint);
            io::printf("Parsed UINT %d \n", value);
        }

        if (accessor.data_type == DataType.FLOAT) {
            float value = bitcast(*(char[4]*&input, float);
            io::printf("Parsed FLOAT %f \n", value);
        }
    }
}*/

macro Gltf.@cast_buffer(Gltf* self, Accessor accessor, uint offset, #type) {
    BufferView bufferView = self.bufferViews[accessor.bufferView];
    Buffer buffer = self.buffers[bufferView.buffer];
    char* data = (buffer.data + accessor.offset + bufferView.offset + offset);
    return bitcast(*(char[#type.sizeof]*)data, #type);
}

fn void! Gltf.get_buffer(Gltf* self, Accessor accessor) @inline {
    BufferView bufferView = self.bufferViews[accessor.bufferView];
    Buffer buffer = self.buffers[bufferView.buffer];
    char* data = (buffer.data + accessor.offset + bufferView.offset);

    for (uint i = 0; i < accessor.count ; i += 1) {
        if (accessor.data_type == DataType.USHORT) {
            ushort value = bitcast(char[2]{data[i], data[i + 1]}, ushort);
            io::printf("Parsed USHORT %d \n", value);
        }

        if (accessor.data_type == DataType.SHORT) {
            short value = bitcast(char[2]{data[i], data[i + 1]}, short);
            io::printf("Parsed SHORT %d \n", value);
        }

        if (accessor.data_type == DataType.UINT) {
            uint value = bitcast(char[4]{data[i], data[i + 1], data[i + 2], data[i + 3]}, uint);
            io::printf("Parsed UINT %d \n", value);
        }

        if (accessor.data_type == DataType.FLOAT) {
            Vec3f vec = bitcast(*(char[Vec3f.sizeof]*)&data[i + accessor.componentSize()], Vec3f);
            io::printf("Parsed Vec %f %f %f \n", vec.x, vec.y, vec.z);
        }
    }
        io::printf(" \n _______ \n%d");
}
