float square(float x) { return x * x; }
float2 square(float2 x) { return x * x; }
float3 square(float3 x) { return x * x; }
float4 square(float4 x) { return x * x; }

float4 Load(RWStructuredBuffer<float4> buffer, uint2 coord, uint2 size)
{
    return buffer[coord.x + coord.y * size.x];
}

void Write(RWStructuredBuffer<float4> buffer, uint2 coord, uint2 size, float4 value)
{
    buffer[coord.x + coord.y * size.x] = value;
}