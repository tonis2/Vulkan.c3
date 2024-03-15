#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require

const float ambient = 0.8;

layout (binding = 0) uniform sampler2D gbufferSamplers[];

layout (buffer_reference, std140, buffer_reference_align = 4) readonly buffer Light {
    vec3 position;
    vec3 color;
    uint padding;
    uint type;
    float intensity;
    float range;
    float inner_cone_angle;
    float outer_cone_angle;
    uint node;
};

layout( push_constant ) uniform constants
{
    Light lights;
    uint light_count;
};


layout(location = 0) in vec2 tex_cord;
layout(location = 0) out vec4 outFragcolor;

void main() 
{
    // Get G-Buffer values
    vec4 color = texture(gbufferSamplers[0], tex_cord);
    vec3 normal = texture(gbufferSamplers[1], tex_cord).rgb;
    vec3 postition = texture(gbufferSamplers[2], tex_cord).rgb;
    vec3 fragcolor = color.rgb * ambient;

    for (int i = 0; i < light_count; ++i)
    {
        Light light = lights[i];
        vec3 light_direction;
        float light_strength = 1.0;

        if (light.type == 0) {
            //directional light
            light_direction = -light.position.xyz;
            light_strength = 1.0; //no attenuation for directional lights
        } else {
            //point light
            light_direction = light.position.xyz - postition;
            float distanceToLight = length(light.position.xyz - postition);
            light_strength = 1.0 / (light.intensity * pow(distanceToLight, 2));
        }

        float diffuseCoefficient = max(dot(normalize(normal), normalize(light_direction)), 0.0);
        vec3 diffuse = diffuseCoefficient * light.color.rgb * color.rgb;

        fragcolor += diffuse;
    }

    outFragcolor = vec4(fragcolor, 1.0);
}
