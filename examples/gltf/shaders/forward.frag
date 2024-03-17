#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_GOOGLE_include_directive : require

#include "pbr.glsl"

const float ambient = 0.8;

layout (binding = 0) uniform sampler2D gbufferSamplers[];

layout (buffer_reference, std140, buffer_reference_align = 4) readonly buffer LightsBuffer {
   Light data[];
};

layout( push_constant ) uniform constants
{
    LightsBuffer lights;
    uint light_count;
};

layout(location = 0) in vec2 tex_cord;
layout(location = 0) out vec4 outFragcolor;

void main() 
{
    // Get G-Buffer values
    vec3 albedo = texture(gbufferSamplers[0], tex_cord).rgb;
    vec3 normal = texture(gbufferSamplers[1], tex_cord).rgb;
    vec4 positionRoughness = texture(gbufferSamplers[2], tex_cord);
    vec4 emissiveMetallic = texture(gbufferSamplers[3], tex_cord);

    vec3 emissive = emissiveMetallic.rgb;
    vec3 position = positionRoughness.rgb;

    float metallic = emissiveMetallic.a;
    float roughness = positionRoughness.a;

    Material material = Material(
        albedo,
        emissive,
        roughness,
        metallic,
        1
    );

    // Direction to eye in viewspace
    vec3 V = normalize(-position);
    vec3 F0 = mix(vec3(0.04), material.albedo, material.metalness);

    vec3 result = vec3(0);

    for (int i = 0; i < light_count; ++i)
    {   
        Light light = lights.data[i];
        result += DirectRadiance(position, normal, V, material, F0, light);
        // // result += IBLAmbientRadiance(N, V, m, F0);
        result += material.emissive;


        // vec3 light_direction;
        // float light_strength = 1.0;

        // light_direction = light.position.xyz - position;
        // float distanceToLight = length(light.position.xyz - position);
        // light_strength = 1.0 / (light.intensity * pow(distanceToLight, 2));


        // float diffuseCoefficient = max(dot(normalize(normal), normalize(light_direction)), 0.0);
        // vec3 diffuse = diffuseCoefficient * light.color.rgb * albedo;
        // result += diffuse;
    }

    // result = result / (result + vec3(1.0));
    // result = pow(result, vec3(1.0/GAMMA));

    outFragcolor = vec4(result, 1.0);
}
