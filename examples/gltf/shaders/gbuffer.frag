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
layout(location = 2) in vec3 v_normal;
layout(location = 3) in vec3 position;

layout(location = 0) out vec4 outColor;
layout(location = 1) out vec4 outNormal;
layout(location = 2) out vec4 outPosition;

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

vec4 getEmissive(Material material) {
    Texture value = material.emissiveTexture;
    if (value.source >= 0) {
        return texture(materialSamplers[value.source], tex_cord) * material.emissiveFactor;
    }
    return vec4(0.0);
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
        return texture(materialSamplers[value.source], tex_cord).rgb;
    }
    return vec3(1);
}

const float specularStrength = 0.5;
const float LIGHT_INTENSITY = 1.0;
const vec3 LIGHT_COLOR = vec3(1.0);
const vec3 LIGHT_DIR = vec3(0.0,0.0,-1.0);
const float AMBIENT_STRENGTH = 0.1;


vec3 calculateLight(Material material) {   
    // vec4 baseColor = getBaseColor(material);
    // vec3 normal = getNormal(material);

    // vec3 lightDir = normalize(LIGHT_DIR - position);
    // float diff = max(dot(normal, lightDir), 0.0);

    // vec3 diffuse = diff * LIGHT_COLOR;
    // vec3 reflectDir = reflect(-lightDir, normal);
    // vec3 viewDir = normalize(camera_pos - position);

    // float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
    // vec3 specular = specularStrength * spec * LIGHT_COLOR;  
    // vec3 ambient = AMBIENT_STRENGTH * LIGHT_COLOR;

    // return (ambient + diffuse + specular) * baseColor.rgb;

    // vec3 f0 = vec3(0.04);
    // vec3 normal = getNormal(material);

    // vec2 mrSample = getRoughnessMetallic(material);
    // float perceptualRoughness = mrSample.r * material.roughnessFactor;
    // float metallic = mrSample.g * material.metallicFactor;

    // vec4 baseColor = getBaseColor(material);
    // vec3 diffuseColor = baseColor.rgb * (vec3(1.0) - f0) * (1.0 - metallic);
    // vec3 specularColor = mix(f0, baseColor.rgb, metallic);

    // float reflectance = max(max(specularColor.r, specularColor.g), specularColor.b);
    // vec3 reflectance0 = specularColor.rgb;
    // vec3 reflectance90 = vec3(clamp(reflectance * 50.0, 0.0, 1.0));
    // float alphaRoughness = pow(perceptualRoughness, 4);

    // vec3 pointToLight = -LIGHT_DIRECTION;

    // vec3 view = normalize(camera_pos - position);
    // vec3 n = normalize(normal);           // Outward direction of surface point
    // vec3 v = normalize(view);             // Direction from surface point to view
    // vec3 l = normalize(pointToLight);     // Direction from surface point to light
    // vec3 h = normalize(l + v);            // Direction of the vector between l and v

    // float NdotL = clamp(dot(n, l), 0.0, 1.0);
    // float NdotH = clamp(dot(n, h), 0.0, 1.0);
    // float VdotH = clamp(dot(v, h), 0.0, 1.0);
    // float NdotV = clamp(dot(n, v), 0.0, 1.0);

    // if (NdotL > 0.0 || NdotV > 0.0) {
    //     vec3 F = reflectance0 + (reflectance90 - reflectance0) * pow(clamp(1.0 - VdotH, 0.0, 1.0), 5.0);
    //     float D = microfacetDistribution(alphaRoughness, NdotH);
    //     vec3 diffuseContrib = (1.0 - F) * (diffuseColor / M_PI);
    //     vec3 specContrib = F * D;

    //     return LIGHT_INTENSITY * LIGHT_COLOR * NdotL * (diffuseContrib + specContrib);
    // }

    return vec3(0.0);
}


void main() {
    Material material;
    outColor = vec4(0.5, 0.5, 0.5, 1.0);

    if (material_index >= 0) {
        material = material_buffer[material_index];

        //vec3 color = calculateLight(material);
        // color += getEmissive(material).rgb;
        // color = clamp(color, 0.0, 1.0);
        // color = mix(color, color * getOcclusion(material), 1.0);

        outColor = getBaseColor(material);
        outNormal = vec4(getNormal(material), 1.0);
        outPosition = vec4(position, 1.0);
    }
}