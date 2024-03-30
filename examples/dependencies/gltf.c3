module gltf;

import std::time;
import std::collections::object;
import std::io;
import std::core::string;
import std::math::matrix;
import std::math;
import std::core::mem;
import std::collections::list;
import std::encoding::json;
import std::encoding::base64;
import std::collections::map;

def Animations = List(<AnimationMixer>);
def SkinList = List(<Skin>);
def AttributeMap = HashMap(<String, usz>);

const PUNCTUAL_LIGHT_EXTENSION = "KHR_lights_punctual";

enum Targets {
    ARRAY_BUFFER,
    ELEMENT_ARRAY_BUFFER
}

enum ImageType {
    IMAGE_JPEG,
    IMAGE_PNG,
    IMAGE_BMP,
    IMAGE_GIF,
}

enum Interpolation {
    LINEAR,
    STEP,
    CUBICSPLINE,
}

enum AnimationProperty {
    TRANSLATION,
    ROTATION,
    SCALE,
    WEIGHTS
}

enum LightType: uint {
    DIRECTIONAL,
    POINT,
    SPOT,
}

enum ResourceType {
    ENCODED_BIN,
    ENCODED_BASE64,
    EXTERNAL_BIN
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

enum WrapMode {
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
    UNSUPPORTED_GLTF_VERSION,
    NO_BUFFER_VIEW,
    NO_BUFFER,
    BROKEN_BUFFER,
    KEY_NOT_FOUND
}

struct Gltf {
    String name;
    List(<Node>) nodes;
    List(<Scene>) scenes;
    List(<Mesh>) meshes;
    List(<Buffer>) buffers;
    List(<BufferView>) bufferViews;
    List(<Image>) images;
    List(<Accessor>) accessors;
    List(<Camera>) cameras;
    List(<Material>) materials;
    List(<Sampler>) samplers;
    List(<Texture>) textures;
    List(<Animation>) animations;
    List(<Light>) lights;
    List(<String>) extensions;
    SkinList skins;
}

struct Scene {
    String name;
    List(<uint>) nodes;
}

struct Node {
    Node* parent;
    String name;
    int mesh;
    int camera;
    int skin;
    int light;
    Quaternionf rotation;
    Matrix4f matrix;
    Vec3f scale;
    Vec3f translation;
    List(<uint>) children;
    List(<float>) weights;
}

struct Primitive {
    AttributeMap attributes;
    List(<AttributeMap>) targets;
}

struct Mesh {
    String name;
    usz scene;
    List(<Primitive>) primitives;
    List(<uint>) children;
    List(<float>) weights;
}

struct Animation {
    String name;
    List(<AnimationSampler>) samplers;
    List(<Channel>) channels;
}

struct AnimationSampler {
    uint input;
    uint output;
    Interpolation interpolation;
}

struct Channel {
    uint sampler;
    struct target {
        uint node;
        AnimationProperty path;
    }
}

union AnimationValue
{
    Vec3f translation;
    Vec3f scale;
    Quaternionf rotation;
    float weight;
}

struct MixerChannel {
    inline Channel channel;
    double time;
    double max_time;
    List(<float>) times;
    List(<AnimationValue>) values;
}

struct AnimationMixer {
    String name;
    List(<AnimationSampler>) samplers;
    List(<MixerChannel>) channels;
}

struct Skin {
    String name;
    uint inverseBindAccessor;
    uint skeleton;
    List(<uint>) joints;
    List(<Matrix4f>) inverseBindMatrices;
}

struct Material {
    bool doubleSided;
    float emissiveStrength;
    float metallicFactor;
    float roughnessFactor;
    Vec4f emissiveFactor;
    Vec4f baseColorFactor;
    Texture normalTexture;
    Texture occlusionTexture;
    Texture emissiveTexture;
    Texture baseColorTexture;
    Texture metallicRoughnessTexture;
}

struct Texture {
    int sampler;
    int source;
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
    uint view;
    usz offset;
    uint count;
    bool normalize;
    Mode mode;
    DataType data_type;
    AccessorType type;
    List(<float>) min;
    List(<float>) max;
}

struct BufferView {
    uint buffer;
    usz byteLength;
    usz offset;
    uint byteStride;
    Targets target;
}

struct Buffer {
    char[] data;
    char[] uri;
    uint size;
    ResourceType type;
}

struct Image {
    String name;
    int view;
    char[] uri;
    char[] data;
    ImageType mimeType;
    ResourceType type;
}

struct Light {
    Vec3f position;
    Vec3f color;
    LightType type;
    float intensity;
    float range;
    float inner_cone_angle;
    float outer_cone_angle;
    uint node;
}

// Parsing JSON to structs
fn void Scene.fromJson(&self, Object* json) {
    String! name = json.get_string("name");
    Object*! nodes = json.get("nodes");
    if (try name) self.name = name.copy();
    if (try nodes) foreach (node : nodes.array) self.nodes.push((uint)node.f);
}

fn void Scene.free(self) {
    self.nodes.free();
    self.name.free();
}

fn void Node.fromJson(&self, Object* json) {
    self.mesh = -1;
    self.camera = -1;
    self.skin = -1;
    self.light = -1;
    self.rotation = {0,0,0,1};
    self.scale = {1,1,1};
    self.translation = {0,0,0};
    self.matrix = MATRIX4F_IDENTITY;

    String! name = json.get_string("name");
    // Parse node transforms
    Object*! rotation = json.get("rotation");
    Object*! scale = json.get("scale");
    Object*! translation = json.get("translation");
    Object*! matrix = json.get("matrix");
    Object*! children = json.get("children");

    int! mesh = json.get_int("mesh");
    int! camera = json.get_int("camera");
    int! skin = json.get_int("skin");

    Object*! light = json.getExtension(PUNCTUAL_LIGHT_EXTENSION);

    if (try name) self.name = name.copy();
    if (try skin) self.skin = skin;
    if (try mesh) self.mesh = mesh;
    if (try camera) self.camera = camera;
    if (try rotation) {
        self.rotation = Quaternionf {(float)rotation.get_at(0).f, (float)rotation.get_at(1).f, (float)rotation.get_at(2).f, (float)rotation.get_at(3).f};
    }

    if (try scale) {
        self.scale = {(float)scale.get_at(0).f, (float)scale.get_at(1).f, (float)scale.get_at(2).f};
    }

    if (try translation) {
        float x = (float)translation.get_at(0).f;
        float y = (float)translation.get_at(1).f;
        float z = (float)translation.get_at(2).f;
        self.translation = {x, y, z};
    }

    if (try matrix) {
        foreach (index, value: matrix.array) self.matrix.m[index] = (float)value.f;
    }

    if (try children) {
        foreach (node : children.array) self.children.push((uint)node.f);
    }

    if (try light) {
        self.light = light.get_int("light")!!;
    }
}

fn bool Node.hasMesh(self) {
    return self.mesh != -1;
}

fn bool Node.hasSkin(self) {
    return self.skin != -1;
}

fn bool Node.hasCamera(self) {
    return self.camera != -1;
}

fn bool Node.hasLight(self) {
    return self.light != -1;
}

fn void Node.free(self) {
    self.children.free();
    self.weights.free();
    self.name.free();
}

fn void Mesh.fromJson(&self, Object* json) {
    String! name = json.get_string("name");
    Object*! primitives = json.get("primitives");
    Object*! weights = json.get("weights");

    if (try name) self.name = name.copy();
    if (try weights) {
        foreach (weight : weights.array) self.weights.push((float)weight.f);
    }

    if (try primitives) {
        foreach (primitive : primitives.array) {
            Primitive data;
            Object*! attributes = primitive.get("attributes");
            Object*! targets = primitive.get("targets");

            uint! indices = primitive.get_int("indices");
            uint! material = primitive.get_int("material");
            uint! mode = primitive.get_int("mode");

            if (try indices) data.attributes["indices"] = indices;
            if (try material) data.attributes["material"] = material;
            if (try mode) data.attributes["mode"] = mode;

            if (try attributes) {
                foreach (key : attributes.map.key_tlist()) {
                    data.attributes[key] = (usz)attributes.map[key]!!.f;
                }
            }

            if (try targets) {
                foreach (target : targets.array) {
                    AttributeMap target_attibutes;
                    foreach (key : target.map.key_tlist()) {
                        target_attibutes[key] = (usz)target.map[key]!!.f;
                    }
                    data.targets.push(target_attibutes);
                }
            }

            self.primitives.push(data);
        }
    }
}

fn void Primitive.free(&self) {
    self.attributes.free();
    foreach (target : self.targets) target.free();
    self.targets.free();
}

fn void Mesh.free(&self) {
    self.children.free();
    foreach (primitive : self.primitives) primitive.free();
    self.primitives.free();
    self.name.free();
    self.weights.free();
}

fn void BufferView.fromJson(&self, Object* json) {
    uint! buffer = json.get_int("buffer");
    uint! byteLength = json.get_int("byteLength");
    uint! offset = json.get_int("byteOffset");
    uint! target = json.get_int("target");
    uint! stride = json.get_int("byteStride");

    if (try buffer) self.buffer = buffer;
    if (try stride) self.byteStride = stride;
    if (try byteLength) self.byteLength = byteLength;
    if (try offset) self.offset = offset;
    if (try target) {
        switch (target) {
            case 34962: {
                self.target = Targets.ARRAY_BUFFER;
            }
            case 34963: {
                self.target = Targets.ELEMENT_ARRAY_BUFFER;
            }
        }
    }
}

fn void Accessor.fromJson(&self, Object* json) {
    uint! bufferView = json.get_int("bufferView");
    uint! count = json.get_int("count");
    usz! offset = json.get_int("byteOffset");
    uint! mode = json.get_int("mode");
    uint! dataType = json.get_int("componentType");
    String! objectType = json.get_string("type");
    Object*! normalize = json.get("normalize");
    Object*! min = json.get("min");
    Object*! max = json.get("max");

    if (try count) self.count = count;
    if (try offset) self.offset = offset;
    if (try normalize) self.normalize = normalize.b;
    if (try bufferView) self.view = bufferView;
    if (try mode) {
        switch (mode) {
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
        switch (dataType) {
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

        if (try objectType) {
            switch (objectType) {
                case "SCALAR": self.type = AccessorType.SCALAR;
                case "VEC2": self.type = AccessorType.VEC2;
                case "VEC3": self.type = AccessorType.VEC3;
                case "VEC4": self.type = AccessorType.VEC4;
                case "MAT2": self.type = AccessorType.MAT2;
                case "MAT3": self.type = AccessorType.MAT3;
                case "MAT4": self.type = AccessorType.MAT4;
            }
        }

        if (try max) {
            foreach (value : max.array) self.max.push((float)value.f);
        }

        if (try min) {
            foreach (value : min.array) self.min.push((float)value.f);
        }
    }
}


fn void Accessor.free(&self) {
    self.min.free();
    self.max.free();
}

fn void! Image.fromJson(&self, Object* json) {
    int! bufferView = json.get_int("bufferView");
    String! name = json.get_string("name");
    String! mimeType = json.get_string("mimeType");
    String! uri = json.get_string("uri");
    self.type = ResourceType.ENCODED_BIN;

    if (try bufferView) self.view = bufferView;
    if (try name) self.name = name;
    if (try mimeType) {
        switch (mimeType) {
            case "image/jpeg": self.mimeType = ImageType.IMAGE_JPEG;
            case "image/png": self.mimeType = ImageType.IMAGE_PNG;
            case "image/bmp": self.mimeType = ImageType.IMAGE_BMP;
        }
    }

    if (try uri) {
        String data_string = (String)uri;
        usz offset = data_string.index_of_char(';')!;
        switch (uri[0..offset]) {
            case "data:image/jpeg": self.mimeType = ImageType.IMAGE_JPEG;
            case "data:image/png": self.mimeType = ImageType.IMAGE_PNG;
            case "data:image/bmp": self.mimeType = ImageType.IMAGE_BMP;
        }
        self.uri = uri.copy();
        if (uri.ends_with(".bin")) {
            self.type = ResourceType.EXTERNAL_BIN;
        }
        else {
            self.type = ResourceType.ENCODED_BASE64;
            self.data = parse_base64(self.uri, uri.len)!;
        }
    }
}

fn bool Image.hasView(self) {
   return self.view > 0;
}

fn void Image.free(&self) {
    mem::free(self.uri);
    mem::free(self.data);
}

fn void! Buffer.fromJson(&self, Object* json) {
    uint! size = json.get_int("byteLength");
    String! uri = json.get_string("uri");
    String! data = json.get_string("data");
    String! name = json.get_string("name");
    self.type = ResourceType.ENCODED_BIN;

    if (try size) {
       self.size = size;
    }

    if (try uri) {
        self.uri = uri.copy();
        if (uri.ends_with(".bin")) {
            self.type = ResourceType.EXTERNAL_BIN;
        }
        else {
            self.type = ResourceType.ENCODED_BASE64;
            self.data = parse_base64(self.uri, self.size)!;
        }
    }
}

fn void Buffer.free(&self) {
    mem::free(self.data);
    mem::free(self.uri);
}

fn void Camera.fromJson(&self, Object* json) {
    String! cameraType = json.get_string("type");
    String! name = json.get_string("name");

    if (try name) self.name = name;
    if (try cameraType) {
        if (cameraType == "perspective") {
            Object*! perspective = json.get("perspective");
            if (try perspective) {
                float! aspectRatio = (float)perspective.get_float("aspectRatio");
                float! yfov = (float)perspective.get_float("yfov");
                float! zfar = (float)perspective.get_float("zfar");
                float! znear = (float)perspective.get_float("znear");

                if (try aspectRatio && try yfov && try zfar && try znear) {
                    self.perspective = {
                        aspectRatio,
                        yfov,
                        zfar,
                        znear
                    };
                }
            }
        }
    }
}

fn void! Material.fromJson(&self, Object* json, Gltf data) {
    bool! doubleSided = json.get_bool("doubleSided");
    Object*! pbrMetallicRoughness = json.get("pbrMetallicRoughness");
    Object*! occlusionTexture = json.get("occlusionTexture");
    Object*! normalTexture = json.get("normalTexture");
    Object*! emissiveTexture = json.get("emissiveTexture");
    Object*! emissiveFactor = json.get("emissiveFactor");

    self.baseColorFactor = {1.0, 1.0, 1.0, 1.0};
    self.emissiveFactor = {1.0, 1.0, 1.0, 1.0};

    self.baseColorTexture = {-1, -1};
    self.metallicRoughnessTexture = {-1, -1};
    self.occlusionTexture = {-1, -1};
    self.emissiveTexture =  {-1, -1};
    self.normalTexture =  {-1, -1};

    self.roughnessFactor = 0;
    self.metallicFactor = 0;
    self.emissiveStrength = 1.0;

    if (try doubleSided) self.doubleSided = doubleSided;
    if (try emissiveFactor) {
        self.emissiveFactor = {(float)emissiveFactor.get_at(0).f, (float)emissiveFactor.get_at(1).f, (float)emissiveFactor.get_at(2).f, 1.0};
    }

    if (try pbrMetallicRoughness) {
        double! metallicFactor = pbrMetallicRoughness.get_float("metallicFactor");
        double! roughnessFactor = pbrMetallicRoughness.get_float("roughnessFactor");

        Object*! baseColorTexture = pbrMetallicRoughness.get("baseColorTexture");
        Object*! baseColorFactor = pbrMetallicRoughness.get("baseColorFactor");
        Object*! metallicRoughnessTexture = pbrMetallicRoughness.get("metallicRoughnessTexture");

        if (try metallicFactor && try roughnessFactor) {
            self.metallicFactor = (float)metallicFactor;
            self.roughnessFactor = (float)roughnessFactor;
        }

        if (try baseColorFactor) {
            self.baseColorFactor = Vec4f {(float)baseColorFactor.get_at(0).f, (float)baseColorFactor.get_at(1).f, (float)baseColorFactor.get_at(2).f, (float)baseColorFactor.get_at(3).f};
        }

        if (try baseColorTexture) self.baseColorTexture = data.textures[baseColorTexture.get_int("index")!];
        if (try metallicRoughnessTexture) self.metallicRoughnessTexture = data.textures[metallicRoughnessTexture.get_int("index")!];
    }

    if (try occlusionTexture) self.occlusionTexture = data.textures[occlusionTexture.get_int("index")!];
    if (try normalTexture) self.normalTexture = data.textures[normalTexture.get_int("index")!];
    if (try emissiveTexture) self.emissiveTexture = data.textures[emissiveTexture.get_int("index")!];
}

fn void Texture.fromJson(&self, Object* json) {
    uint! sampler = json.get_int("sampler");
    uint! source = json.get_int("source");

    if (try sampler) self.sampler = sampler;
    if (try source) self.source = source;
}

fn void Sampler.fromJson(&self, Object* json) {
    uint! magFilter = json.get_int("magFilter");
    uint! minFilter = json.get_int("minFilter");
    uint! wrapS = json.get_int("wrapS");
    uint! wrapT = json.get_int("wrapt");

    if (try wrapS) {
        switch (wrapS) {
            case 33071:
                self.wrap_s = WrapMode.CLAMP_TO_EDGE;
            case 33648:
                self.wrap_s = WrapMode.MIRRORED_REPEAT;
            case 10497:
                self.wrap_s = WrapMode.REPEAT;
        }
    }

    if (try wrapT) {
        switch (wrapT) {
            case 33071:
                self.wrap_t = WrapMode.CLAMP_TO_EDGE;
            case 33648:
                self.wrap_t = WrapMode.MIRRORED_REPEAT;
            case 10497:
                self.wrap_t = WrapMode.REPEAT;
        }
    }

    if (try magFilter) {
        switch (magFilter) {
            case 9728:
                self.magFilter = MagFilter.LINEAR;
            case 9729:
                self.magFilter = MagFilter.NEAREST;
        }
    }

    if (try minFilter) {
        switch (minFilter) {
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

fn void Animation.fromJson(&self, Object* json) {
    String! name = json.get_string("name");
    Object*! channels = json.get("channels");
    Object*! samplers = json.get("samplers");

    if (try name) self.name = name.copy();
    if (try samplers) {
        foreach (sampler : samplers.array) {
            AnimationSampler animation_sampler;

            uint! input = sampler.get_int("input");
            uint! output = sampler.get_int("output");
            String! interpolation = sampler.get_string("interpolation");

            if (try input) animation_sampler.input = input;
            if (try output) animation_sampler.output = output;
            if (try interpolation) {
               switch (interpolation) {
                    case "LINEAR": animation_sampler.interpolation = Interpolation.LINEAR;
                    case "STEP": animation_sampler.interpolation = Interpolation.STEP;
                    case "CUBICSPLINE": animation_sampler.interpolation = Interpolation.CUBICSPLINE;
                }
            }

            self.samplers.push(animation_sampler);
        }
    }

    if (try channels) {
        foreach (channel : channels.array) {
            Channel channel_data;
            uint! sampler = channel.get_int("sampler");
            Object*! target = channel.get("target");

            if (try sampler) channel_data.sampler = sampler;
            if (try target) {
                uint! node = target.get_int("node");
                String! path = target.get_string("path");

                if (try node) channel_data.target.node = node;
                if (try path) {
                    switch (path) {
                        case "translation": channel_data.target.path = AnimationProperty.TRANSLATION;
                        case "rotation": channel_data.target.path = AnimationProperty.ROTATION;
                        case "scale": channel_data.target.path = AnimationProperty.SCALE;
                        case "weights": channel_data.target.path = AnimationProperty.WEIGHTS;
                    }
                }
            };
            self.channels.push(channel_data);
        }
    }
}

fn void Animation.free(&self) {
    self.channels.free();
    self.samplers.free();
    self.name.free();
}

fn void AnimationMixer.free(&self) {
    foreach (channel: self.channels) {
        channel.times.free();
        channel.values.free();
    };
    self.channels.free();
    self.samplers.free();
    self.name.free();
}

fn void Skin.fromJson(&self, Object* json) {
    String! name = json.get_string("name");
    uint! skeleton = json.get_int("skeleton");
    uint! inverseBindMatrices = json.get_int("inverseBindMatrices");
    Object*! joints = json.get("joints");

    if (try name) self.name = name;
    if (try skeleton) self.skeleton = skeleton;
    if (try inverseBindMatrices) self.inverseBindAccessor = inverseBindMatrices;
    if (try joints) {
        foreach (joint : joints.array) self.joints.push((uint)joint.f);
    }
}

fn void Skin.free(&self) {
    self.joints.free();
    self.inverseBindMatrices.free();
    self.name.free();
}

fn void Light.fromJson(&self, Object* json) {
    String! name = json.get_string("name");
    String! type = json.get_string("type");
    float! intensity = (float)json.get_float("intensity");
    float! range = (float)json.get_float("range");
    Object*! color = json.get("color");
    Object*! spot = json.get("spot");

    self.color = {1.0, 1.0, 1.0};

    // if (try name) self.name = name.copy();
    if (try color) self.color = {(float)color.get_at(0).f, (float)color.get_at(1).f, (float)color.get_at(2).f};
    if (try intensity) self.intensity = intensity;
    if (try range) self.range = range;
    if (try type) {
        switch (type) {
            case "directional": self.type = LightType.DIRECTIONAL;
            case "point": self.type = LightType.POINT;
            case "spot": self.type = LightType.SPOT;
        }
    };

    if (try spot && self.type == LightType.SPOT) {
        self.inner_cone_angle = (float)spot.get_float("innerConeAngle") ?? 0.0;
        self.outer_cone_angle = (float)spot.get_float("outerConeAngle") ?? math::PI / 4.0;
    }
}

fn Gltf! loadFile(String path) {
    File! file = file::open(path, "r");
    defer file.close()!!;

    if (catch err = file) {
        io::printfn("Failed to find the gltf file");
        return ParseError.FILE_NOT_FOUND?;
    }

    return parse(&file);
}

fn Gltf! parse(InStream* stream) {
    Gltf content;
    Object*! gltfJson;
    char[12] gltf_header;
    char[] binary_buffer;

    if (catch err = stream.read(&gltf_header)) {
      io::printfn("GLTF parsing error %s", err);
      return ParseError.JSON_PARSE_FAILED?;
    }

    // if magic bytes == glTF, it means its in glb format
    bool is_glb = (gltf_header[0..3] == "glTF");

    if (is_glb) {
        char[8] json_header;
        char[8] binary_header;

        uint version = bitcast(*(char[4]*)gltf_header[4..7], uint);
        uint gltf_size = bitcast(*(char[4]*)gltf_header[8..11], uint);

        if (version != 2) {
            return ParseError.UNSUPPORTED_GLTF_VERSION?;
        }

        if (catch err = stream.read(&json_header)) {
          return ParseError.JSON_PARSE_FAILED?;
        }

        uint json_chunk_length = bitcast(*(char[4]*)json_header[0..3], uint);
        char[4] json_chunk_type = json_header[4..7];

        if (catch err = stream.read(&json_header)) {
          return ParseError.JSON_PARSE_FAILED?;
        }

        if (json_chunk_type[0..] != "JSON") {
            return ParseError.UNSUPPORTED_GLTF_VERSION?;
        }

        stream.seek(20, Seek.SET)!;
        gltfJson = json::parse(stream);
        stream.seek((usz)20 + json_chunk_length, Seek.SET)!;

        if (catch err = stream.read(&binary_header)) {
          return ParseError.JSON_PARSE_FAILED?;
        }

        uint binary_chunk_length = bitcast(*(char[4]*)binary_header[0..3], uint);
        char[4] binary_chunk_type = binary_header[4..7];

        if (binary_chunk_type[0..] != "BIN\0") {
            return ParseError.UNSUPPORTED_GLTF_VERSION?;
        }

        // Create binary buffer data
        stream.seek((usz)gltf_size - binary_chunk_length, Seek.SET)!;
        binary_buffer = mem::new_array(char, binary_chunk_length);

        if (catch err = stream.read(binary_buffer)) {
            return ParseError.JSON_PARSE_FAILED?;
        }
    } else {
      stream.seek(0, Seek.SET)!;
      gltfJson = json::parse(stream);
    }

    if (catch err = gltfJson) {
        return ParseError.JSON_PARSE_FAILED?;
    }

    defer gltfJson.free();

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
    Object*! animations = gltfJson.get("animations");
    Object*! skins = gltfJson.get("skins");
    Object*! extensions = gltfJson.get("extensions");
    Object*! extensionsUsed = gltfJson.get("extensionsUsed");


    // Parse extensions used
    if (try extensionsUsed) {
        foreach (value : extensionsUsed.array) {
            switch (value.s) {
                case PUNCTUAL_LIGHT_EXTENSION : content.extensions.push(PUNCTUAL_LIGHT_EXTENSION);
                default: {}
            }
        }
    }


    if (try extensions) {
        Object*! lights = gltfJson.getExtension(PUNCTUAL_LIGHT_EXTENSION);

        // Parse light extension
        if (try lights) {
            foreach (light: lights.map["lights"]!!.array) {
              Light data;
              data.fromJson(light);
              content.lights.push(data);
            }
        }
    }

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
        foreach (uint i, node : nodes.array) {
           Node data;
           data.fromJson(node);
           content.nodes.push(data);

           if (data.hasLight()) {
                Light* light = &content.lights[data.light];
                // light.node = i;
                light.position = data.translation;
           }
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

    // Parse cameras
    if (try cameras) {
        foreach (camera : cameras.array) {
            Camera data;
            data.fromJson(camera);
            content.cameras.push(data);
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

    // Parse materials
    if (try materials) {
        foreach (json : materials.array) {
            Material material;
            material.fromJson(json, content)!;
            content.materials.push(material);
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

    // Parse buffers
    if (try buffers) {
        foreach (buffer : buffers.array) {
            Buffer data;
            data.fromJson(buffer)!;
            content.buffers.push(data);
        }

        if (is_glb) {
            Buffer* buffer = &content.buffers[0];
            buffer.data = binary_buffer;
        }
    }

    // Parse images
    if (try images) {
        foreach (image : images.array) {
            Image data;
            data.fromJson(image)!;
            content.images.push(data);
        }
    }

    // Parse animations
    if (try animations) {
       foreach (animation : animations.array) {
            Animation data;
            data.fromJson(animation);
            content.animations.push(data);
        }
    }

    // Parse skins
    if (try skins) {
       foreach (skin : skins.array) {
            Skin data;
            data.fromJson(skin);
            content.skins.push(data);
        }
    }

    // Match meshes to scenes
    foreach (scene_index, scene : content.scenes) {
         foreach (node : scene.nodes) {
             content.nodes[node].mapValues(scene_index, &content);
         }
    }

    return content;
}

fn void Gltf.free(Gltf* self) {
    foreach (mesh : self.meshes) mesh.free();
    foreach (node : self.nodes) node.free();
    foreach (buffer : self.buffers) buffer.free();
    foreach (scene : self.scenes) scene.free();
    foreach (animation : self.animations) animation.free();
    foreach (accessor : self.accessors) accessor.free();

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
    self.lights.free();
    self.extensions.free();
}

fn Node! Gltf.getNode(Gltf* self, String name) {
    foreach (node : self.nodes) {
        if (node.name == name) {
            return node;
        }
    }
    return ParseError.KEY_NOT_FOUND?;
}

fn AnimationMixer Gltf.loadAnimation(self, Animation animation) {
    AnimationMixer mixer = animation.mixer();

    foreach (index, &channel: mixer.channels) {
        AnimationSampler sampler = mixer.samplers[channel.sampler];
        Accessor time_accessor = self.accessors[sampler.input];

        if (time_accessor.max.len() > 0) {
            channel.max_time = time_accessor.max[0];
        } else {
            io::printfn("Animation has no max time");
        }

        // Parse animation timing values, from buffer
        for (ulong i; i < time_accessor.count; i++) {
            channel.times.push(self.@castBuffer(time_accessor, i, float));
        }

        // Parse animation transform values, from buffer
        Accessor value_accessor = self.accessors[sampler.output];
        for (ulong i; i < value_accessor.count; i++) {
            switch (channel.target.path) {
                case TRANSLATION: {
                    channel.values.push(AnimationValue {
                        .translation = self.@castBuffer(value_accessor, i, Vec3f)
                    });
                }
                case SCALE: {
                    channel.values.push(AnimationValue {
                        .scale = self.@castBuffer(value_accessor, i, Vec3f)
                    });
                }
                case ROTATION: {
                    channel.values.push(AnimationValue {
                        .rotation = self.@castBuffer(value_accessor, i, Quaternionf)
                    });
                }
                case WEIGHTS: {
                    channel.values.push(AnimationValue {
                       .weight = self.@castBuffer(value_accessor, i, float)
                    });
                }
            }
        }
    }

    return mixer;
}

fn AnimationMixer Animation.mixer(self) {
    AnimationMixer copy = AnimationMixer {
        .name = self.name.copy(),
    };

    foreach (value : self.samplers) copy.samplers.push(value);
    foreach (value : self.channels) {
        copy.channels.push(
            MixerChannel {
               .channel.sampler = value.sampler,
               .channel.target = value.target
            }
        );
    };
    return copy;
}

fn void Gltf.animate(&self, AnimationMixer* animation, NanoDuration time) {
   double current_time = time.to_sec();

   foreach (index, &channel: animation.channels) {
        AnimationSampler sampler = animation.samplers[channel.sampler];
        channel.time += current_time;
        if (channel.time > channel.max_time) channel.time = 0;

        usz time_index = 0;
        for (usz i; i < channel.times.len(); i++) {
            if (channel.time < channel.times[i]) {
                time_index = i;
                break;
            };
        }

       // Animation target node
       Node* node = &self.nodes[channel.target.node];

       if (channel.target.path == WEIGHTS) {
            foreach (i, weight: node.weights) node.weights[i] = channel.values[time_index * node.weights.len() + i].weight;
       } else {
            double prev_time = channel.times[time_index - 1];
            double next_time = channel.times[time_index];

            AnimationValue prev_value = channel.values[time_index - 1];
            AnimationValue next_value = channel.values[time_index];
            double interpolation_value = (channel.time - prev_time) / (next_time - prev_time);

            //io::printfn("%d %s", index, channel.target.path);
            if (sampler.interpolation == LINEAR) {
                switch (channel.target.path) {
                    case TRANSLATION: {
                        node.translation = prev_value.translation.lerp(next_value.translation, (float)interpolation_value);
                    }
                    case ROTATION: {
                        node.rotation = prev_value.rotation.slerp(next_value.rotation, (float)interpolation_value);
                    }
                    case SCALE: {
                        node.scale = prev_value.scale.lerp(next_value.scale, (float)interpolation_value);
                    }
                    default: {}
                }
            }

            if (sampler.interpolation == STEP) {
                switch (channel.target.path) {
                    case TRANSLATION: {
                        node.translation = next_value.translation;
                    }
                    case ROTATION: {
                        node.rotation = next_value.rotation;
                    }
                    case SCALE: {
                        node.scale = next_value.scale;
                    }
                    default: {}
                }
            }
       }
   }
}

fn uint Accessor.componentLen(Accessor* self) {
    switch (self.type) {
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
        case AccessorType.MAT3:
            return 9;
        case AccessorType.MAT4:
            return 16;
    }
}

fn uint Accessor.stride(Accessor* self) {
    return self.dataSize() * self.componentLen();
}

fn uint Accessor.dataSize(Accessor* self) {
    switch (self.data_type) {
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
fn Matrix4f Node.localMatrix(&self) {
    Quaternionf rotation = self.rotation.normalize();
    float x = rotation.i;
    float y = rotation.j;
    float z = rotation.k;
    float w = rotation.l;

    return Matrix4f {
        1 - 2*y*y - 2*z*z * self.scale.x, 2*x*y - 2*z*w, 2*x*z + 2*y*w, self.translation.x,
        2*x*y + 2*z*w, 1 - 2*x*x - 2*z*z * self.scale.y, 2*y*z - 2*x*w, self.translation.y,
        2*x*z - 2*y*w, 2*y*z + 2*x*w , 1 - 2*x*x - 2*y*y * self.scale.z, self.translation.z,
        0.0, 0.0, 0.0, 1.0,
    };
}

fn void Node.mapValues(&self, usz scene_index, Gltf* data) @private {
    if (self.hasMesh()) {
        Mesh mesh = data.meshes[self.mesh];
        mesh.scene = scene_index;
        foreach (weight: mesh.weights) self.weights.push(weight);
    }

    foreach (node_index : self.children) {
        Node* node = &data.nodes[node_index];
        node.parent = self;
        node.mapValues(scene_index, data);
    }
}

fn Matrix4f Node.globalMatrix(&self) {
    Matrix4f global_matrix = self.localMatrix();
    Node* node = self;

    while (node.parent != null) {
        global_matrix = node.parent.localMatrix().mul(global_matrix);
        node = node.parent;
    }

    return global_matrix;
}

fn char[]! parse_base64(char[] data, usz size) {
    char[] buffer_data = mem::new_array(char, (usz)(size + 2));
    Base64Decoder decoder;
    decoder.init(base64::STD_ALPHABET, -1)!;
    // Decode buffer from base64
    // Offset base64 header
    String data_string = (String)data;
    usz offset = data_string.index_of_char(';')! + 8;
    if (catch err = decoder.decode(data[offset..], buffer_data)) {
        io::printfn("Buffer parsing error: '%s'.", err);
        return ParseError.BROKEN_BUFFER?;
    };
    return buffer_data;
}

fn char[]! Buffer.from_binary(self, InStream* stream) {
    char[] data = mem::new_array(char, self.size);
    usz file_size = stream.seek(0, Seek.END)!;
    stream.seek(file_size - self.size, Seek.SET)!;
    stream.read(data)!;
    return data;
}

macro Gltf.@castBuffer(&self, Accessor accessor, usz index, #type) {
    BufferView bufferView = self.bufferViews[accessor.view];
    Buffer buffer = self.buffers[bufferView.buffer];
    usz index_offset = bufferView.byteStride > 0 ? bufferView.byteStride : accessor.stride();
    usz start_offset = accessor.offset + bufferView.offset;

    return bitcast(*(char[#type.sizeof]*)buffer.data[(start_offset + (index * index_offset))..], #type);
}

fn void Gltf.debugBuffer(Gltf* self, Accessor accessor) {
    BufferView bufferView = self.bufferViews[accessor.view];
    Buffer buffer = self.buffers[bufferView.buffer];

    for (uint i = 0; i < accessor.count ; i += 1) {
        char[] data = buffer.data[(accessor.offset + bufferView.offset + (usz)(i * accessor.stride()))..];

        switch (accessor.type) {
           case AccessorType.SCALAR:
                ushort value = bitcast(*(char[ushort.sizeof]*)data, ushort);
                io::printfn("Parsed scalar %d", value);
           case AccessorType.VEC2:
                Vec2f vec =  bitcast(*(char[Vec2f.sizeof]*)data, Vec2f);
                io::printfn("Parsed Vec2 %f %f", vec.x, vec.y);
           case AccessorType.VEC3:
                Vec3f vec =  bitcast(*(char[Vec3f.sizeof]*)data, Vec3f);
                io::printfn("Parsed Vec3 %f %f %f", vec.x, vec.y, vec.z);
           case AccessorType.VEC4:
                Vec4f vec =  bitcast(*(char[Vec4f.sizeof]*)data, Vec4f);
                io::printfn("Parsed Vec4 %f %f %f %f", vec.x, vec.y, vec.z, vec.w);
           default: {}
        }
    }

    io::printf(" \n _______ \n%d");
}

fn void Animations.release(self) {
    foreach (animation: self) animation.free();
    self.free();
}

fn Object*! Object.getExtension(self, String extension) {
   return self.map["extensions"]!.map[extension];
}