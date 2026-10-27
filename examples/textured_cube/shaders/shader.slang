// Textured cube shader (Slang)

// Camera matrices, pushed with vkCmdPushConstants every frame.
struct Camera
{
    float4x4 projection;
    float4x4 view;
};

[[vk::push_constant]]
ConstantBuffer<Camera> camera;

[[vk::binding(0, 0)]]
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
    output.sv_position = mul(mul(camera.projection, camera.view), float4(assembledVertex.position, 1.0));
    return output;
}

[shader("fragment")]
float4 fragmentMain(Fragment coarseVertex) : SV_Target
{
    float4 color = tex.Sample(coarseVertex.uv);
    return float4(lerp(float3(1.0), color.rgb, color.a), 1.0);
}
