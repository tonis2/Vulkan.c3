#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_shader_explicit_arithmetic_types_int8 : require
#extension GL_GOOGLE_include_directive : require

#include "types.glsl"

layout(buffer_reference, std140) readonly buffer VertexBuffer {
  vec3 position;
  vec3 normal;
  vec2 tex_cord;
  vec4 tangent;
  vec4 skin_pos;
  vec4 skin_weight;
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer JointBuffer {
  mat4 matrix;
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer UniformBuffer {
   mat4 projection;
   mat4 view;
};

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   Material material_buffer;
};

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    JointBuffer joint_buffer;
    int material_index;
    int8_t has_skin;

    uint8_t morph_count;
    uint morph_start;
    uint morph_offset;
    float[8] morph_weights;
};


// Shader out values
layout(location = 0) out Material m_buffer;
layout(location = 1) out int m_index;

layout(location = 2) out vec2 fragTexCoord;
layout(location = 3) out vec3 normal;
layout(location = 4) out mat3 tangent;


void main() {
    VertexBuffer vertex = vertex_buffer[gl_VertexIndex];

    vec3 position = vertex.position;
    mat4 skin_matrix = mat4(1);

    for (uint i = 0; i < morph_count; i++) {
        uint offset = morph_start + (i * morph_offset) + gl_VertexIndex;
        position += vertex_buffer[offset].position * morph_weights[i];
    }

    if (has_skin >= 0) {
        skin_matrix =
             vertex.skin_weight[0] * joint_buffer[uint(vertex.skin_pos[0])].matrix +
             vertex.skin_weight[1] * joint_buffer[uint(vertex.skin_pos[1])].matrix +
             vertex.skin_weight[2] * joint_buffer[uint(vertex.skin_pos[2])].matrix +
             vertex.skin_weight[3] * joint_buffer[uint(vertex.skin_pos[3])].matrix;
    }

    mat4 normalMatrix = skin_matrix;

    vec3 n = normalize(vertex.normal);
    vec4 t = normalize(vertex.tangent);

    vec3 normal_w = normalize(vec3(normalMatrix * vec4(n.xyz, 0.0)));
    vec3 tangent_w = normalize(vec3(model_matrix * vec4(t.xyz, 0.0)));
    vec3 bitangent_w = cross(normal_w, tangent_w) * t.w;

    // Out going parameters
    fragTexCoord = vertex.tex_cord;
    normal = normalize(mat3(normalMatrix) * vec3(skin_matrix * vec4(vertex.normal, 1.0)));
    tangent = mat3(tangent_w, bitangent_w, normal_w);
    m_buffer = material_buffer;
    m_index = material_index;
    
    gl_Position = uniform_buffer.projection * uniform_buffer.view * model_matrix * skin_matrix * vec4(position, 1.0);
}