#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_EXT_nonuniform_qualifier : require
#extension GL_GOOGLE_include_directive : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_buffer_reference2 : require
#include "types.glsl"

layout(binding = 1) uniform sampler2D texSampler[];

layout(location = 0) in Material material_buffer;
layout(location = 1) in flat int material_index;
layout(location = 2) in vec2 fragTexCoord;
layout(location = 3) in vec3 normal;
layout(location = 4) in mat3 tangent;

layout(location = 0) out vec4 outColor;

void main() {
    Material material;
    outColor = vec4(0.5, 0.5, 0.5, 1.0);

    if (material_index >= 0) {
        material = material_buffer[material_index];
        outColor = material.baseColorFactor;
    }

    if (material.baseColorTexture.source >= 0) {
        outColor = texture(texSampler[material.baseColorTexture.source], fragTexCoord) * material.baseColorFactor;
    }

}