#version 450
#extension GL_EXT_buffer_reference : require
#extension GL_EXT_scalar_block_layout : require

layout(buffer_reference, std140, scalar) buffer PositionBuffer {
  vec3 positions[];
};

layout(buffer_reference, std140, scalar) buffer TexCordBuffer {
  vec2 tex_pos[];
};

layout(buffer_reference, std140, scalar) buffer NormalBuffer {
  vec3 normals[];
};

layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) out vec4 outBaseColor;
layout(location = 2) out int textureIndex;

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    vec4 baseColor;
    int texture;
    PositionBuffer position_buffer;
    TexCordBuffer tex_cord_buffer;
    NormalBuffer normal_buffer;
};

layout(binding = 0) uniform uniform_matrix
{
  mat4 projection;
  mat4 view;
  mat4 model;
};

void main() {

    vec3 pos = PositionBuffer(position_buffer).positions[gl_VertexIndex];
    vec2 cord = TexCordBuffer(tex_cord_buffer).tex_pos[gl_VertexIndex];
    vec3 norm = NormalBuffer(normal_buffer).normals[gl_VertexIndex];

    gl_Position = projection * view * model_matrix * vec4(pos, 1.0);
    gl_Position.y = -gl_Position.y;

    fragTexCoord = cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}