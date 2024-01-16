#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_EXT_shader_explicit_arithmetic_types_int64 : require

layout(buffer_reference, std140, scalar) buffer VertexBuffer {
  float data[];
};

layout(buffer_reference, std140, scalar) buffer PositionBuffer {
  vec3 data[];
};

layout(buffer_reference, std140, buffer_reference_align = 4) buffer UniformBuffer {
   mat4 projection;
   mat4 view;
};

layout(buffer_reference, std140, buffer_reference_align = 4) buffer MorphBuffer {
    uint target_index;
    uint buffer_index;
    uint type;
    int next_row;
};

layout(binding = 0, std140, scalar) buffer AddressBuffer {
   UniformBuffer uniform_buffer;
   VertexBuffer vertex_buffer;
   MorphBuffer morph_buffer;
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
    float[2] weights;
} push_data;


// Morph types
// "POSITION" = 0
// "TANGENT" = 1
// "NORMAL" = 2

void main() {
    vec3 position = vp;

    if (push_data.morph_index > -1) {
        MorphBuffer morph_data = morph_buffer[push_data.morph_index];
        PositionBuffer pos_buffer = PositionBuffer(vertex_buffer);

        // Calculate morph target updates
        while (morph_data.next_row > -1) {
            if (morph_data.type == 0) {
                position += pos_buffer.data[morph_data.buffer_index + gl_VertexIndex] * push_data.weights[morph_data.target_index];
            }
            morph_data = morph_buffer[morph_data.next_row];
        }
    }

    gl_Position = uniform_buffer.projection * uniform_buffer.view * push_data.model_matrix * vec4(position, 1.0);
    gl_Position.y = -gl_Position.y;
    fragTexCoord = tex_cord;
    outBaseColor = push_data.baseColor;
    textureIndex = push_data.texture;
}