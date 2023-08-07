#version 450

layout (binding = 0) uniform Camera {
    mat4 projection;
    mat4 view;
} camera;

mat4 identity = mat4 (1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec3 inColor;
layout(location = 0) out vec3 fragColor;

void main() {
    gl_Position = camera.projection * camera.view * identity * vec4(inPosition, 1.0);
    fragColor = inColor;
}