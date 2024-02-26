#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_EXT_nonuniform_qualifier : require
#extension GL_GOOGLE_include_directive : require


layout(binding = 0) uniform sampler2D gbufferSamplers[];
layout(location = 0) in vec2 tex_cord;
layout(location = 0) out vec4 outFragcolor;


void main() 
{
    // Get G-Buffer values
    vec3 postition = texture(gbufferSamplers[3], tex_cord).rgb;
    vec3 normal = texture(gbufferSamplers[2], tex_cord).rgb;
    vec4 color = texture(gbufferSamplers[1], tex_cord);

    #define ambient 0.8


    outFragcolor = color;	
}
