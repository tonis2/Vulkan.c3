#version 450
#extension GL_EXT_buffer_reference2 : require
#extension GL_GOOGLE_include_directive : require
#extension GL_EXT_scalar_block_layout : require
#extension GL_ARB_gpu_shader_int64 : require

layout (location = 0) out vec2 out_texcord;

void main() {
    out_texcord = vec2((gl_VertexIndex << 1) & 2, gl_VertexIndex & 2);
    gl_Position = vec4(out_texcord * 2.0f + -1.0f, 0.0f, 1.0f);
}