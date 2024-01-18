#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require

layout(buffer_reference, scalar) readonly buffer VertexBuffer {
  float data[];
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

layout(binding = 0, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   BufferMap buffer_map;
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
};

// Morph types
// "POSITION" = 0
// "TANGENT" = 1
// "NORMAL" = 2

void main() {
    vec3 position = vp;

    if (morph_index > -1) {
        BufferMap morph_data = buffer_map[morph_index];

        // Calculate morph target updates
        while (morph_data.next_row > -1) {
            if (morph_data.type == 0) {
                uint offset = (morph_data.offset / 4 + gl_VertexIndex * 3);
                vec3 morph_pos = vec3(vertex_buffer.data[offset + 0], vertex_buffer.data[offset + 1], vertex_buffer.data[offset + 2]);
                position += morph_pos * weights[morph_data.weight_index];
            }
            morph_data = buffer_map[morph_data.next_row];
        }
    }

    gl_Position = uniform_buffer.projection * uniform_buffer.view * model_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = tex_cord;
    outBaseColor = baseColor;
    textureIndex = texture;
}