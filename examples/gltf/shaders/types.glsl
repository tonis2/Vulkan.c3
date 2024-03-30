#extension GL_EXT_scalar_block_layout : require

struct Texture {
    int samp;
    int source;
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer JointBuffer {
  mat4 matrix;
};

layout(buffer_reference, std140) readonly buffer VertexBuffer {
  vec3 position;
  vec3 normal;
  vec2 tex_cord;
  vec4 tangent;
  vec4 skin_pos;
  vec4 skin_weight;
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer UniformBuffer {
   mat4 projection;
   mat4 view;
   vec3 camera_pos;
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

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   Material material_buffer;
};