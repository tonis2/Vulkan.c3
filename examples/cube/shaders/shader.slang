// Shader written in Slang https://github.com/shader-slang/slang

// Camera matrices, pushed with vkCmdPushConstants every frame.
struct Camera
{
    float4x4 projection;
    float4x4 view;
};

[[vk::push_constant]]
ConstantBuffer<Camera> camera;

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

    output.coarseVertex.color = assembledVertex.color;
    output.sv_position = mul(mul(camera.projection, camera.view), float4(assembledVertex.position, 1.0));

    return output;
}

// Fragment Shader

[shader("fragment")]
float4 fragmentMain(Fragment coarseVertex) : SV_Target
{
    return coarseVertex.color;
}