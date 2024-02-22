#extension GL_EXT_scalar_block_layout : require

struct Texture {
    int index;
    int samp;
    int source;
    uint texCoord;
};

layout (buffer_reference, scalar) readonly buffer Material {
    bool doubleSided;
    float emissiveStrength;
    float metallicFactor;
    float roughnessFactor;
    vec4 emissiveFactor;
    vec4 baseColorFactor;
    Texture normalTexture;
    Texture occlusionTexture;
    Texture emissiveTexture;
    Texture baseColorTexture;
    Texture metallicRoughnessTexture;
};




