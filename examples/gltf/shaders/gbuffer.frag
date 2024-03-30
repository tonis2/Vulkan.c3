#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_EXT_nonuniform_qualifier : require
#extension GL_GOOGLE_include_directive : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_buffer_reference2 : require

#define M_PI 3.141592653589793

#include "types.glsl"

layout(binding = 1) uniform sampler2D materialSamplers[];

layout(location = 0) in flat int material_index;
layout(location = 1) in vec2 tex_cord;
layout(location = 2) in vec3 in_normal;
layout(location = 3) in vec3 in_position;

layout(location = 0) out vec4 outColor;
layout(location = 1) out vec4 outNormal;
layout(location = 2) out vec4 outPosition;
layout(location = 3) out vec4 outEmissiveMetallic;

vec3 linearToSrgb(vec3 color) {
    return pow(color, vec3(1.0 / 2.2));
}

vec4 srgbToLinear(vec4 srgbIn) {
    return vec4(pow(srgbIn.xyz, vec3(2.2)), srgbIn.w);
}

float microfacetDistribution(float alphaRoughness, float NdotH) {
    float f = (NdotH * alphaRoughness - NdotH) * NdotH + 1.0;
    return alphaRoughness / (M_PI * f * f);
}

vec4 getBaseColor(Material material) {
    Texture value = material.baseColorTexture;
    if (value.source >= 0) {
        return texture(materialSamplers[value.source], tex_cord) * material.baseColorFactor;
    }

    return material.baseColorFactor;
}

vec2 getRoughnessMetallic(Material material) {
    Texture value = material.metallicRoughnessTexture;
    if (value.source >= 0) {
        return texture(materialSamplers[value.source], tex_cord).gb;
    }
    return vec2(1.0, 1.0);
}

vec3 getEmissive(Material material) {
    Texture value = material.emissiveTexture;
    if (value.source >= 0) {
        return texture(materialSamplers[value.source], tex_cord).rgb * material.emissiveFactor.rgb;
    }
    return vec3(0.0);
}

float getOcclusion(Material material) {
    Texture value = material.occlusionTexture;
    if (value.source >= 0) {
        return texture(materialSamplers[value.source], tex_cord).r;
    }
    return 1.0;
}

vec3 getNormal(Material material) {
    Texture value = material.normalTexture;
    if (value.source >= 0) {
        vec3 tangentNormal = texture(materialSamplers[value.source], tex_cord).rgb * 2.0 - 1.0;
        vec3 q1 = dFdx(in_position);
        vec3 q2 = dFdy(in_position);
        vec2 st1 = dFdx(tex_cord);
        vec2 st2 = dFdy(tex_cord);

        vec3 N = normalize(in_normal);
        vec3 T = normalize(q1 * st2.t - q2 * st1.t);
        vec3 B = -normalize(cross(N, T));
        mat3 TBN = mat3(T, B, N);

        return normalize(TBN * tangentNormal);
    }
    return in_normal;
}

void main() {
    Material material;
    outColor = vec4(0.5, 0.5, 0.5, 1.0);

    if (material_index >= 0) {
        material = material_buffer[material_index];
        vec3 emissive = getEmissive(material);
        vec2 metallic_roughness = getRoughnessMetallic(material);

        outColor = getBaseColor(material);
        outNormal = vec4(getNormal(material), 1.0);
        outPosition = vec4(in_position, metallic_roughness.g);
        outEmissiveMetallic = vec4(emissive, metallic_roughness.r);
    }
}