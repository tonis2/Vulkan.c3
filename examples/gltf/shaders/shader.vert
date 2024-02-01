#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_shader_explicit_arithmetic_types_int8 : require

layout(buffer_reference, std430) readonly buffer VertexBuffer {
  vec3 position;
  vec3 normal;
  vec2 tex_cord;
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer JointBuffer {
  mat4 data[];
};

layout(buffer_reference, scalar, buffer_reference_align = 4) readonly buffer MorphBuffer {
    uint first_vertex;
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer UniformBuffer {
   mat4 projection;
   mat4 view;
};

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   uint64_t index_buffer;
   JointBuffer joint_buffer;
   MorphBuffer morph_buffer;
};

layout(location = 0) in vec3 vp;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 tex_cord;

layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) out vec4 outBaseColor;
layout(location = 2) out int textureIndex;

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    vec4 baseColor;
    int8_t texture;
    int8_t joint_index;
    int8_t weight_index;
    uint8_t morph_index;
    uint8_t morph_targets;
    float[8] weights;
};

// Morph types
// "POSITION" = 0
// "TANGENT" = 1
// "NORMAL" = 2

void main() {
    VertexBuffer vertex = vertex_buffer[gl_VertexIndex];
    vec3 position = vp;
    mat4 skin_matrix = mat4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1);

    for (uint i = 0; i < morph_targets; i++) {
        MorphBuffer morph_info = morph_buffer[morph_index + i];
        uint offset = morph_info.first_vertex + gl_VertexIndex;
        vec3 morph_pos = vertex_buffer[offset].position;
        position += morph_pos * weights[i];
    }

    gl_Position = uniform_buffer.projection * uniform_buffer.view * model_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = vertex.tex_cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}