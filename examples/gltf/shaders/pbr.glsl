#define PI 3.1415926
#define GAMMA 2.2

struct Material
{
  vec3 albedo;
  vec3 emissive;
  float roughness;
  float metalness;
  float occlusion;
};

struct Light {
    vec3 position;
    vec3 color;
    uint padding;
    uint type;
    float intensity;
    float range;
    float inner_cone_angle;
    float outer_cone_angle;
    uint node;
};

vec3 Uncharted2ToneMapping(vec3 color)
{
  float A = 0.22;//0.15;
  float B = 0.30;//0.50;
  float C = 0.10;
  float D = 0.20;
  float E = 0.01;//0.02;
  float F = 0.30;//0.30;
  float W = 11.2;
  float exposure = 2.;
  color *= exposure;
  color = ((color * (A * color + C * B) + D * E) / (color * (A * color + B) + D * F)) - E / F;
  float white = ((W * (A * W + C * B) + D * E) / (W * (A * W + B) + D * F)) - E / F;
  color /= white;
  color = pow(color, vec3(1. / GAMMA));
  return color;
}

// Schlick-Frensel curve approximation
vec3 FresnelSchlick(vec3 F0, float cosTheta)
{
    return mix(F0, vec3(1.0), pow(1.01 - cosTheta, 5.0));
}

// Schlick-Frensel approximation with added roughness lerp for ambient IBL
// See: https://seblagarde.wordpress.com/2011/08/17/hello-world/
vec3 FresnelSchlickWithRoughness(vec3 F0, float cosTheta, float roughness)
{
  return F0 + (max(vec3(1.0 - roughness), F0) - F0) * pow(1.0 - cosTheta, 5.0);
}

// NDF
float DistributionGGX(vec3 N, vec3 H, float roughness)
{
    float a      = roughness*roughness;
    float a2     = a*a;
    float NdotH  = max(dot(N, H), 0.0);
    float NdotH2 = NdotH*NdotH;

    float num   = a2;
    float denom = (NdotH2 * (a2 - 1.0) + 1.0);
    denom = PI * denom * denom;

    return num / denom;
}

// G
float GeometrySchlickGGX(float NdotV, float roughness)
{
    float r = (roughness + 1.0);
    float k = (r*r) / 8.0;

    float num   = NdotV;
    float denom = NdotV * (1.0 - k) + k;

    return num / denom;
}

// F
float GeometrySmith(vec3 N, vec3 V, vec3 L, float roughness)
{
    float NdotV = max(dot(N, V), 0.0);
    float NdotL = max(dot(N, L), 0.0);
    float ggx2  = GeometrySchlickGGX(NdotV, roughness);
    float ggx1  = GeometrySchlickGGX(NdotL, roughness);

    return ggx1 * ggx2;
}

// Simple phong specular calculation with normalization
vec3 PhongSpecular(vec3 V, vec3 L, vec3 N, vec3 specular, float roughness)
{
    vec3 R = reflect(-L, N);
    float spec = max(0.0, dot(V, R));
    float k = 1.999 / (roughness * roughness);
    return min(1.0, 3.0 * 0.0398 * k) * pow(spec, min(10000.0, k)) * specular;
}

// Full Cook-Torrence BRDF
vec3 CookTorrenceSpecularBRDF(vec3 F, vec3 N, vec3 V, vec3 H, vec3 L, float roughness)
{
  float D = DistributionGGX(N, H, roughness);
  float G = GeometrySmith(N, V, L, roughness);

  vec3 numerator    = D * G * F;
  float denominator = 4.0 * max(dot(N, V), 0.0) * max(dot(N, L), 0.0);
  vec3 specular     = numerator / max(denominator, 0.001);

  return specular;
}

// PBR Direct lighting
vec3 DirectRadiance(vec3 P, vec3 N, vec3 V, Material m, vec3 F0, Light light)
{
  // Direction to light in viewspace
  vec3 L = normalize(light.position.xyz - P);

  // Half-Vector between light and eye in viewspace
  vec3 H = normalize(L + V);
  float HdV = max(0.001, dot(H, V));

  float NDF = DistributionGGX(N, H, m.roughness);
  float G = GeometrySmith(N, V, L, m.roughness);
  vec3 F = FresnelSchlick(F0, HdV);
  vec3 kD = (vec3(1.0, 1.0, 1.0) - F) * (1.0 - m.metalness);

  float NdotL = max(dot(N, L), 0.0);
  float denominator = max(4.0 * max(dot(N, V), 0.0) * NdotL, 0.001);

  vec3 numerator = NDF * G * F;
  vec3 specular = numerator / denominator;

  // Point/Directional light attenuation
  // float A = mix(1.0f, 1.0 / (1.0 + 0.1 * dot(light.position - P, light.position - P)), light.range);


  // float diffuseCoefficient = max(dot(normalize(N), normalize(L)), 0.0);
  //vec3 diffuse = NdL * light.color.rgb * m.albedo;

  // L
  vec3 radiance = light.color * 5;

  return (kD * m.albedo / vec3(PI, PI, PI) + specular) * radiance * NdotL;
}

// PBR IBL from Env map
// vec3 IBLAmbientRadiance(vec3 N, vec3 V, Material m, vec3 F0)
// {
//   vec3 worldN = (InvView * vec4(N, 0)).xyz;	// World normal
//   vec3 worldV = (InvView * vec4(V, 0)).xyz;	// World view
//   vec3 irradiance = pow(texture(EnvIrrMap, worldN).xyz, vec3(GAMMA));

//   // cos(angle) between surface normal and eye
//   float NdV = max(0.001, dot(worldN, worldV));
//   vec3 kS = FresnelSchlickWithRoughness(F0, NdV, m.Roughness);
//   vec3 kD = 1.0 - kS;

//   vec3 diffuseBrdf = m.Albedo * (1.0 - m.Metalness); // Lambert diffuse
//   vec3 diffuse = kD * diffuseBrdf * irradiance;

//   const float MAX_REFLECTION_LOD = 6.0;
//   vec3 R = reflect(-worldV, worldN);
//   vec2 envBRDF  = texture(EnvBrdfLUT, vec2(NdV, m.Roughness)).rg;
//   vec3 prefilteredColor = pow(textureLod(EnvPrefilterMap, R,  m.Roughness * MAX_REFLECTION_LOD).rgb, vec3(GAMMA));
//   vec3 specular = prefilteredColor * (kS * envBRDF.x + envBRDF.y);

//   return AmbientTerm * (diffuse + specular) * m.Occlusion; // IBL ambient
// }


// float D_GGX(float NoH, float a) {
//     float a2 = a * a;
//     float f = (NoH * a2 - NoH) * NoH + 1.0;
//     return a2 / (PI * f * f);
// }

// vec3 F_Schlick(float u, vec3 f0) {
//     return f0 + (vec3(1.0) - f0) * pow(1.0 - u, 5.0);
// }

// float V_SmithGGXCorrelated(float NoV, float NoL, float a) {
//     float a2 = a * a;
//     float GGXL = NoV * sqrt((-NoL * a2 + NoL) * NoL + a2);
//     float GGXV = NoL * sqrt((-NoV * a2 + NoV) * NoV + a2);
//     return 0.5 / (GGXV + GGXL);
// }

// float Fd_Lambert() {
//     return 1.0 / PI;
// }

// float microfacetDistribution(float alphaRoughness, float NdotH) {
//     float f = (NdotH * alphaRoughness - NdotH) * NdotH + 1.0;
//     return alphaRoughness / (PI * f * f);
// }