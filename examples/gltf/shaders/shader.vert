#version 450
#extension GL_EXT_buffer_reference : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require

layout(buffer_reference, std140, scalar) buffer PositionBuffer {
  vec3 positions[];
};

layout(buffer_reference, std140, scalar) buffer TexCordBuffer {
  vec2 tex_pos[];
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
} push_data;

void main() {
    gl_Position = push_data.uniform_buffer.projection * push_data.uniform_buffer.view * push_data.model_matrix * vec4(vp, 1.0);

    gl_Position.y = -gl_Position.y;

    fragTexCoord = tex_cord;
    outBaseColor = push_data.baseColor;
    textureIndex = push_data.texture;
}