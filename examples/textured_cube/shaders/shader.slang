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

    float3 position = assembledVertex.position;
    float4x4 identity_matrix = float4x4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    output.sv_position = mul(mul(mul(projection, view), identity_matrix), float4(position, 1.0));

    return output;
}

[shader("fragment")]
float4 fragmentMain(Fragment coarseVertex) : SV_Target
{
    float4 color = tex.Sample(coarseVertex.uv);
    return float4(lerp(float3(1.0), color.rgb, color.a), 1.0);
}
