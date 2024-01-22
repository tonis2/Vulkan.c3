#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require
#extension GL_EXT_shader_explicit_arithmetic_types_int8 : require

layout(buffer_reference, std140) readonly buffer VertexBuffer {
  vec3 position;
  vec3 normal;
  vec2 tex_cord;
};

layout(buffer_reference, scalar) readonly buffer FloatBuffer {
  float data[];
};

layout(buffer_reference, scalar) readonly buffer CharBuffer {
  uint8_t data[];
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

#define UVEC4(map, data) \
    uvec4(data[(map.offset + gl_VertexIndex * map.size) + 0], data[(map.offset + gl_VertexIndex * map.size) + 1], data[(map.offset + gl_VertexIndex * map.size) + 2], data[(map.offset + gl_VertexIndex * map.size) + 3]);

#define VEC4(map, data) \
    vec4(data[(map.offset / 4 + gl_VertexIndex * map.size) + 0], data[(map.offset / 4 + gl_VertexIndex * map.size) + 1], data[(map.offset / 4 + gl_VertexIndex * map.size) + 2], data[(map.offset / 4 + gl_VertexIndex * map.size) + 3]);

#define VEC3(map, data) \
    vec3(data[(map.offset / 4 + gl_VertexIndex * map.size) + 0], data[(map.offset / 4 + gl_VertexIndex * map.size) + 1], data[(map.offset / 4 + gl_VertexIndex * map.size) + 2]);

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   uint64_t index_buffer;
   BufferMap buffer_map;
   JointBuffer joint_buffer;
};

layout(location = 0) in vec3 vp;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 tex_cord;


layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) out vec4 outBaseColor;
layout(location = 2) out int textureIndex;

layout( push_constant ) uniform constants
{
    mat4 model_matrix;
    vec4 baseColor;
    int texture;
    float[8] weights;
    int8_t joint_index;
    int8_t weight_index;
    int8_t morph_index;
};

// Morph types
// "POSITION" = 0
// "TANGENT" = 1
// "NORMAL" = 2

void main() {
    vec3 position = vp;
    mat4 skin_matrix = mat4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1);

    if (joint_index >= 0 && false) {
        vec4 joint_weights2 = VEC4(buffer_map[weight_index], FloatBuffer(vertex_buffer).data);
        uvec4 joint_indexes2 = UVEC4(buffer_map[joint_index], CharBuffer(vertex_buffer).data);
        skin_matrix =
             joint_weights2.x * joint_buffer.data[uint(joint_indexes2.x)] +
             joint_weights2.y * joint_buffer.data[uint(joint_indexes2.y)] +
             joint_weights2.z * joint_buffer.data[uint(joint_indexes2.z)] +
             joint_weights2.w * joint_buffer.data[uint(joint_indexes2.w)];
    }

    if (morph_index > -1 && false) {
        BufferMap morph_data = buffer_map[morph_index];

        // Calculate morph target updates
        while (morph_data.next_row > -1) {
            if (morph_data.type == 0) {
                vec3 morph_pos = VEC3(morph_data, FloatBuffer(vertex_buffer).data);
                position += morph_pos * weights[morph_data.weight_index];
            }
            morph_data = buffer_map[morph_data.next_row];
        }
    }

    VertexBuffer vertex = vertex_buffer[gl_VertexIndex];

    gl_Position = uniform_buffer.projection * uniform_buffer.view * model_matrix * skin_matrix * vec4(vertex.position,1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = vertex.tex_cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}