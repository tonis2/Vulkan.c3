#version 450

layout(location = 0) in vec3 vp;
layout(location = 1) in vec4 v_color;
layout(location = 0) out vec4 outColor;

layout(binding = 0) uniform matrix
{
  mat4 projection;
  mat4 view;
  mat4 model;
};

void main() {
    outColor = v_color;
    gl_Position = projection * view * model * vec4(vp, 1.0);
}