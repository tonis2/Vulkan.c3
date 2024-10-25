// Shader written in Slang https://github.com/shader-slang/slang

// Uniform data to be passed from application -> shader.

[[vk::binding(0, 0)]] 
cbuffer Uniforms
{
    float4x4 projection;
    float4x4 view;
}

// Per-vertex attributes to be assembled from bound vertex buffers.
struct VertexInput
{
    float3	position;
    float4	color;
};

// Output of the fragment shader
struct Fragment
{
    float4 color;
};

// Vertex  Shader
struct VertexOutPut
{
    Fragment    coarseVertex;
    float4      sv_position : SV_Position;
};

[shader("vertex")]
VertexOutPut vertexMain(VertexInput assembledVertex)
{
    VertexOutPut output;

    float3 position = assembledVertex.position;
    float4x4 identity_matrix = float4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);

    output.coarseVertex.color = assembledVertex.color;
    output.sv_position = mul(mul(mul(projection, view), identity_matrix), float4(position, 1.0));

    return output;
}

// Fragment Shader

[shader("fragment")]
float4 fragmentMain(Fragment coarseVertex) : SV_Target
{
    return coarseVertex.color;
}