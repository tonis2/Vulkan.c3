#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(binding = 1) uniform sampler2D texSampler[2];
layout(location = 0) in vec2 fragTexCoord;
layout(location = 1) in vec4 baseColor;
layout(location = 2) flat in int textureIndex;

layout(location = 0) out vec4 outColor;

void main() {
    if (textureIndex == -1) {
        outColor = baseColor;
    }
    else {
        outColor = texture(texSampler[textureIndex], fragTexCoord) * baseColor;
    }
}