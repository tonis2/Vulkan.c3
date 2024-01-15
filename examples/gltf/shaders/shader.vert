#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require

layout(buffer_reference, std140, scalar) buffer VertexBuffer {
  float data[];
};

layout(buffer_reference, std140, scalar) buffer PositionBuffer {
  vec3 data[];
};

layout(buffer_reference, std140, buffer_reference_align = 4) buffer UniformBuffer {
   mat4 projection;
   mat4 view;
};

layout(buffer_reference, std140, buffer_reference_align = 4) buffer MorphBuffer {
    uint accessor;
    uint offset;
    uint stride;
};

layout(binding = 0, std140, buffer_reference_align = 4) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   MorphBuffer[] morph_buffer;
};

struct MorphEntry {
    uint count;
    uint offset;
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
    MorphEntry morph;
} push_data;

void main() {
    vec3 position = vp;

   // for (uint i = 0; i < 2; i++) {
   //     MorphData morph = push_data.morph_data[i];
   //     uint offset = (morph.offset / morph.stride) + gl_VertexIndex;
   //     position += pos_buffer.data[offset] * morph.weight;
   //  }

    gl_Position = uniform_buffer.projection * uniform_buffer.view * push_data.model_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = tex_cord;
    outBaseColor = push_data.baseColor;
    textureIndex = push_data.texture;
}