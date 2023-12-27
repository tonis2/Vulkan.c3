module gltf;

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
def AnimationSamplers = List(<AnimationSampler>);
def ChannelList = List(<Channel>);
def AnimationList = List(<Animation>);
def SkinList = List(<Skin>);
def PrimitiveMap = HashMap(<String, usz>);
def PrimitiveList = List(<PrimitiveMap>);

def TimeSamples = List(<float>);

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

enum Property {
    TRANSLATION,
    ROTATION,
    SCALE,
    WEIGHTS
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
    AnimationList animations;
    SkinList skins;
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
    Matrix4f matrix;
    Vec3f scale;
    Vec3f translation;
    IndexList children;
}

struct Mesh {
    String name;
    usz scene;
    PrimitiveList primitives;
    IndexList children;
}

struct TextureInfo {
    uint index;
    Vec2f texCoord;
}

struct Animation {
    String name;
    AnimationSamplers samplers;
    ChannelList channels;
}

struct AnimationSampler {
    TimeSamples times;
    uint input;
    uint output;
    Interpolation interpolation;
}

struct Channel {
    uint sampler;
    struct target {
        uint node;
        Property path;
    }
}

struct Skin {
    String name;
    uint inverseBindMatrices;
    uint skeleton;
    IndexList joints;
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
    uint view;
    ImageType mimeType;
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
    uint stride;
    uint count;
    bool normalize;
    Mode mode;
    DataType data_type;
    AccessorType type;
}

struct BufferView {
    uint buffer;
    uint byteLength;
    uint offset;
    uint stride;
    Targets target;
}

struct Buffer {
    char[] data;
    char[] uri;
    uint size;
    ResourceType type;
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
    self.rotation = quaternionf_identity();
    self.scale = {1, 1, 1};
    self.translation = {0, 0, 0};
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

    if (try name) self.name = name.copy();
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

    if (try matrix) {
        foreach (index, value: matrix.array) self.matrix.m[index] = (float)value.f;
    } else {
        self.matrix = self.recompose();
    }

    if (try children) {
        foreach (node : children.array) self.children.push((uint)node.f);
    }
}

fn bool Node.hasMesh(self) {
    return self.mesh != -1;
}

fn void Node.free(self) {
    self.children.free();
    self.name.free();
}

fn bool Node.hasCamera(self) {
    return self.camera != -1;
}

fn void Mesh.fromJson(&self, Object* json) {
    String! name = json.get_string("name");
    Object*! primitives = json.get("primitives");

    if (try name) self.name = name.copy();
    if (try primitives) {
        foreach (primitive : primitives.array) {
            PrimitiveMap primitive_map;
            Object*! attributes = primitive.get("attributes");

            uint! indices = primitive.get_int("indices");
            uint! material = primitive.get_int("material");

            if (try indices) primitive_map["indices"] = indices;
            if (try material) primitive_map["material"] = material;

            if (try attributes) {
                foreach (key : attributes.map.key_tlist()) {
                    primitive_map[key] = (usz)attributes.map[key]!!.f;
                }
            }

            self.primitives.push(primitive_map);
        }
    }
}

fn void Mesh.free(&self) {
    self.children.free();
    foreach (primitive : self.primitives) primitive.free();
    self.primitives.free();
    self.name.free();
}

fn void BufferView.fromJson(&self, Object* json) {
    uint! buffer = json.get_int("buffer");
    uint! byteLength = json.get_int("byteLength");
    uint! offset = json.get_int("byteOffset");
    uint! target = json.get_int("target");
    uint! stride = json.get_int("byteStride");

    if (try buffer) self.buffer = buffer;
    if (try stride) self.stride = stride;
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

fn void Accessor.fromJson(&self, Object* json) {

    uint! bufferView = json.get_int("bufferView");
    uint! count = json.get_int("count");
    usz! offset = json.get_int("offset");
    uint! stride = json.get_int("stride");
    uint! mode = json.get_int("mode");
    uint! dataType = json.get_int("componentType");
    String! objectType = json.get_string("type");
    Object*! normalize = json.get("normalize");

    if (try count) self.count = count;
    if (try offset) self.offset = offset;
    if (try normalize) self.normalize = normalize.b;
    if (try stride) self.stride = stride;
    if (try bufferView) self.view = bufferView;
    if (try mode) {
        switch(mode) {
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
        switch(dataType) {
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
    }
}

fn void! Buffer.fromJson(&self, Object* json) {
    uint! size = json.get_int("byteLength");
    String! uri = json.get_string("uri");
    String! data = json.get_string("data");
    ResourceType buffer_type = ResourceType.ENCODED_BIN;

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
            self.data = self.from_base64()!;
        }
    }
}

fn void! Camera.fromJson(&self, Object* json) {
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

fn void Material.fromJson(&self, Object* json) {
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

fn void TextureInfo.fromJson(&self, Object* json) {
    uint! index = json.get_int("index");
    uint! texCoord = json.get_int("texCoord");

    if (try index) self.index = index;
    if (try texCoord) self.texCoord = texCoord;
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

fn void Image.fromJson(&self, Object* json) {
    uint! bufferView = json.get_int("bufferView");
    String! name = json.get_string("name");
    String! mimeType = json.get_string("mimeType");

    if (try bufferView) self.view = bufferView;
    if (try name) self.name = name;
    if (try mimeType) {
        switch (mimeType) {
            case "image/jpeg": self.mimeType = ImageType.IMAGE_JPEG;
            case "image/png": self.mimeType = ImageType.IMAGE_PNG;
            case "image/bmp": self.mimeType = ImageType.IMAGE_BMP;
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
                String! path = target.get_string("sampler");

                if (try node) channel_data.target.node = node;
                if (try path) {
                    switch (path) {
                        case "TRANSLATION": channel_data.target.path = Property.TRANSLATION;
                        case "ROTATION": channel_data.target.path = Property.ROTATION;
                        case "SCALE": channel_data.target.path = Property.SCALE;
                        case "WEIGHTS": channel_data.target.path = Property.WEIGHTS;
                    }
                }
            };

            self.channels.push(channel_data);
        }
    }
}

fn void Animation.free(&self) {
    foreach (sampler: self.samplers) sampler.times.free();
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
    if (try inverseBindMatrices) self.inverseBindMatrices = inverseBindMatrices;
    if (try joints) {
        foreach (joint : joints.array) self.joints.push((uint)joint.f);
    }
}

fn void Skin.free(&self) {
    self.joints.free();
    self.name.free();
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
             content.nodes[node].setMeshScene(scene_index, &content);
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
}

fn Node! Gltf.getNode(Gltf* self, String name) {
    foreach (node : self.nodes) {
        if (node.name == name) {
            return node;
        }
    }
    return ParseError.KEY_NOT_FOUND?;
}

fn Animation! Gltf.getAnimation(Gltf* self, String name) {
    foreach (animation : self.animations) {
        if (animation.name == name) {
            // Parse samplers data from buffer
            foreach (&sampler: animation.samplers) {
                Accessor time_accessor = self.accessors[sampler.input];
                for (uint i; i < time_accessor.count; i++) {
                    sampler.times.push(self.@castBuffer(time_accessor, i * time_accessor.componentSize(), float));
                }
            }
            return animation;
        }
    }
    return ParseError.KEY_NOT_FOUND?;
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
        0.0,self.scale.y, 0.0, 0.0,
        0.0, 0.0,self.scale.z, 0.0,
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

   return translation.mul(rotation).mul(scale);
}

fn void Buffer.free(Buffer* self) {
    mem::free(self.data);
    mem::free(self.uri);
}

macro Gltf.@castBuffer(Gltf* self, Accessor accessor, uint offset, #type) {
    BufferView bufferView = self.bufferViews[accessor.view];
    Buffer buffer = self.buffers[bufferView.buffer];
    return bitcast(*(char[#type.sizeof]*)buffer.data[accessor.offset + bufferView.offset + offset..], #type);
}

fn void Node.setMeshScene(Node self, usz scene_index, Gltf* data) {
    if (self.hasMesh()) {
        Mesh mesh = data.meshes[self.mesh];
        mesh.scene = scene_index;
    }
    foreach (node_index : self.children) {
        Node node = data.nodes[node_index];
        node.setMeshScene(scene_index, data);
    }
}

fn PrimitiveMap Mesh.lastPrimitive(Mesh self) {
   return self.primitives[self.primitives.len() - 1];
}

fn char[]! Buffer.from_base64(self) {
    char[] buffer_data = mem::new_array(char, (usz)(self.size + 2));
    Base64Decoder decoder;
    decoder.init(base64::STD_ALPHABET, -1)!;
    // Decode buffer from base64
    // Offset base64 header
    if (catch err = decoder.decode(self.uri[37..], buffer_data)) {
        io::printfn("Buffer parsing error: '%s'.", err);
        return ParseError.BROKEN_BUFFER?;
    };
    return buffer_data;
}

/*fn char[]! Buffer.from_binary(self, InStream* stream) {
    char[] data = mem::malloc(char, self.size);
    usz file_size = stream.seek(0, Seek.END)!;
    stream.seek(file_size - self.size, Seek.SET)!;
    stream.read(data)!;
    return data;
}*/


fn void! Gltf.get_buffer(Gltf* self, Accessor accessor) {
    BufferView bufferView = self.bufferViews[accessor.view];
    Buffer buffer = self.buffers[bufferView.buffer];

    for (uint i = 0; i < accessor.count ; i += 1) {
        char[] data = buffer.data[(accessor.offset + bufferView.offset + (usz)(i * accessor.componentSize()))..];

        switch (accessor.type) {
           case AccessorType.SCALAR:
                float value = bitcast(*(char[float.sizeof]*)data, float);
                io::printfn("Parsed int %f", value);
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
