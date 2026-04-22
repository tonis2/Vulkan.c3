// Textured cube shader (Slang)

[[vk::binding(0, 0)]]
cbuffer Uniforms
{
    float4x4 projection;
    float4x4 view;
}

[[vk::binding(1, 0)]]
Sampler2D tex;

struct VertexInput
{
    float3 position;
    float2 uv;
};

struct Fragment
{
    float2 uv;
};

struct VertexOutput
{
    Fragment    coarseVertex;
    float4      sv_position : SV_Position;
};

[shader("vertex")]
VertexOutput vertexMain(VertexInput assembledVertex)
{
    VertexOutput output;

    output.coarseVertex.uv = assembledVertex.uv;
    output.sv_position = mul(float4(assembledVertex.position, 1.0), mul(view, projection));

    return output;
}

[shader("fragment")]
float4 fragmentMain(Fragment coarseVertex) : SV_Target
{
    return tex.Sample(coarseVertex.uv);
}
