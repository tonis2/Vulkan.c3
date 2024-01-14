#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_shader_explicit_arithmetic_types_int8 : require

layout(buffer_reference, std140, scalar) buffer VertexBuffer {
  float data[];
};

layout(buffer_reference, std140, scalar) buffer PositionBuffer {
  vec3 data[];
};

struct MorphData {
    uint8_t stride;
    uint offset;
    float weight;
};

layout(buffer_reference, std430, buffer_reference_align = 16) readonly buffer UniformBuffer {
    mat4 projection;
    mat4 view;
    mat4 model;
};

layout(location = 0) in vec3 vp;
layout(location = 1) in vec2 tex_cord;
layout(location = 2) in vec3 normal;

layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) out vec4 outBaseColor;
layout(location = 2) out int textureIndex;

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    vec4 baseColor;
    int texture;
    UniformBuffer uniform_buffer;
    uint64_t vertex_buffer;
} push_data;

void main() {
    PositionBuffer pos_buffer = PositionBuffer(push_data.vertex_buffer);
    vec3 position = vp;

   // for (uint i = 0; i < 2; i++) {
   //     MorphData morph = push_data.morph_data[i];
   //     uint offset = (morph.offset / morph.stride) + gl_VertexIndex;
   //     position += pos_buffer.data[offset] * morph.weight;
   //  }

    gl_Position = push_data.uniform_buffer.projection * push_data.uniform_buffer.view * push_data.model_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = tex_cord;
    outBaseColor = push_data.baseColor;
    textureIndex = push_data.texture;
}