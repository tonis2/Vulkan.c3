#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_shader_explicit_arithmetic_types_int8 : require

layout(buffer_reference, std140) readonly buffer VertexBuffer {
  vec3 position;
  vec3 normal;
  vec2 tex_cord;
  vec4 skin_pos;
  vec4 skin_weight;
};

layout(buffer_reference, std430) readonly buffer JointBuffer {
  mat4 matrix;
};

layout(buffer_reference, scalar, buffer_reference_align = 4) readonly buffer MorphBuffer {
    uint data[];
};

layout(buffer_reference, std430, buffer_reference_align = 4) readonly buffer UniformBuffer {
   mat4 projection;
   mat4 view;
};

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   JointBuffer joint_buffer;
   MorphBuffer morph_buffer;
};

layout(location = 0) in vec3 vp;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 tex_cord;
layout(location = 3) in vec4 skin_pos;
layout(location = 4) in vec4 skin_weight;

layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) out vec4 outBaseColor;
layout(location = 2) out int textureIndex;

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    vec4 baseColor;
    uint morph_index;
    int8_t texture;
    uint8_t morph_count;
    float[8] morph_weights;
};

void main() {
    VertexBuffer vertex = vertex_buffer[gl_VertexIndex];
    vec3 position = vertex.position;
    mat4 skin_matrix = mat4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1);

    for (uint i = 0; i <= morph_count; i++) {
        uint offset = morph_buffer.data[morph_index + i] + gl_VertexIndex;
        position += vertex_buffer[offset].position * morph_weights[i];
    }

    skin_matrix =
         skin_weight[0] * joint_buffer[uint(skin_pos[0])].matrix +
         skin_weight[1] * joint_buffer[uint(skin_pos[1])].matrix +
         skin_weight[2] * joint_buffer[uint(skin_pos[2])].matrix +
         skin_weight[3] * joint_buffer[uint(skin_pos[3])].matrix;

    gl_Position = uniform_buffer.projection * uniform_buffer.view * model_matrix * skin_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = vertex.tex_cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}