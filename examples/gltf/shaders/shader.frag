#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(binding = 1) uniform sampler2D texSampler[2];
layout(location = 0) in vec2 fragTexCoord;
layout(location = 1) flat in uint textureIndex;

layout(location = 0) out vec4 outColor;

void main() {
    outColor = texture(texSampler[textureIndex], fragTexCoord);
}