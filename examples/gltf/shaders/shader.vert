#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require

layout(buffer_reference, scalar) readonly buffer VertexBuffer {
  float data[];
};

layout(buffer_reference, std140, buffer_reference_align = 4) readonly buffer JointBuffer {
  mat4 data[];
};

layout(buffer_reference, std140, buffer_reference_align = 4) buffer UniformBuffer {
   mat4 projection;
   mat4 view;
};

layout(buffer_reference, std430, buffer_reference_align = 4) buffer BufferMap {
    uint stride;
    uint type;
    uint weight_index;
    uint offset;
    uint size;
    int next_row;
};

#define VEC4(map, data) \
    vec4(data[(map.offset / 4 + gl_VertexIndex * map.size) + 0], data[(map.offset / 4 + gl_VertexIndex * map.size) + 1], data[(map.offset / 4 + gl_VertexIndex * map.size) + 2], data[(map.offset / 4 + gl_VertexIndex * map.size) + 3]);

#define VEC3(map, data) \
    vec3(data[(map.offset / 4 + gl_VertexIndex * map.size) + 0], data[(map.offset / 4 + gl_VertexIndex * map.size) + 1], data[(map.offset / 4 + gl_VertexIndex * map.size) + 2]);

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   BufferMap buffer_map;
   JointBuffer joint_buffer;
};

layout(location = 0) in vec3 vp;
layout(location = 1) in vec2 tex_cord;
layout(location = 2) in vec3 normal;

layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) out vec4 outBaseColor;
layout(location = 2) out int textureIndex;

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    vec4 baseColor;
    int texture;
    int morph_index;
    float[8] weights;
    int joint_index;
    int weight_index;
};

// Morph types
// "POSITION" = 0
// "TANGENT" = 1
// "NORMAL" = 2

void main() {
    vec3 position = vp;
    mat4 skin_matrix = mat4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1);

    if (joint_index >= 0) {
        vec4 joint_weights = VEC4(buffer_map[weight_index], vertex_buffer.data);
        vec4 joint_indexes = VEC4(buffer_map[joint_index], vertex_buffer.data);
        skin_matrix = joint_weights[0] * joint_buffer.data[uint(joint_indexes[0])] +
                      joint_weights[1] * joint_buffer.data[uint(joint_indexes[1])] +
                      joint_weights[2] * joint_buffer.data[uint(joint_indexes[2])] +
                      joint_weights[3] * joint_buffer.data[uint(joint_indexes[3])];
    }

    if (morph_index > -1) {
        BufferMap morph_data = buffer_map[morph_index];

        // Calculate morph target updates
        while (morph_data.next_row > -1) {
            if (morph_data.type == 0) {
                vec3 morph_pos = VEC3(morph_data, vertex_buffer.data);
                position += morph_pos * weights[morph_data.weight_index];
            }
            morph_data = buffer_map[morph_data.next_row];
        }
    }

    gl_Position = uniform_buffer.projection * uniform_buffer.view * model_matrix * skin_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = tex_cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}