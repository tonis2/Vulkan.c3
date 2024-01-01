#version 450

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
};

layout(binding = 0) uniform uniform_matrix
{
  mat4 projection;
  mat4 view;
  mat4 model;
};

void main() {
    gl_Position = projection * view * model_matrix * vec4(vp, 1.0);
    gl_Position.y = -gl_Position.y;

    fragTexCoord = tex_cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}