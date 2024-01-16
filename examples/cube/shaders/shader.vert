#version 450

layout(location = 0) in vec3 vp;
layout(location = 1) in vec4 v_color;
layout(location = 0) out vec4 outColor;

layout(binding = 0) uniform uniform_matrix
{
  mat4 projection;
  mat4 view;
};

void main() {
    mat4 identity_matrix = mat4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    outColor = v_color;
    gl_Position = projection * view * identity_matrix * vec4(vp, 1.0);
}