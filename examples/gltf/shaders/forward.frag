#version 450
#extension GL_ARB_separate_shader_objects : enable
#extension GL_EXT_nonuniform_qualifier : require
#extension GL_EXT_scalar_block_layout : require

layout(binding = 0) uniform sampler2D gbufferSamplers[];

layout(binding = 1) uniform Lights {
   vec3 position;
   vec3 color;
   float intensity;
   float range;
   uint type;
   float inner_cone_angle;
   float outer_cone_angle;
};

layout(location = 0) in vec2 tex_cord;
layout(location = 0) out vec4 outFragcolor;

void main() 
{
    // Get G-Buffer values
    vec4 color = texture(gbufferSamplers[0], tex_cord);
    vec3 normal = texture(gbufferSamplers[1], tex_cord).rgb;
    vec3 postition = texture(gbufferSamplers[2], tex_cord).rgb;

    #define ambient 0.8

    outFragcolor = color;	
}
