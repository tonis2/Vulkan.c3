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
  vec3 H = normalize(L + V);

// cos(angle) between surface normal and light
  float diffuseCoefficient = max(dot(normalize(N), normalize(L)), 0.0);

  // cos(angle) between surface half vector and eye
  float HdV = max(dot(normalize(H), normalize(V)), 0.0);

  // // Cook Torrence Terms
  // vec3 F = FresnelSchlick(F0, HdV);
  // vec3 kD =  vec3(1.0) - F;

  // // BRDF
  // vec3 specBrdf = CookTorrenceSpecularBRDF(F, N, V, H, L, m.roughness);
  // vec3 diffuseBrdf = kD * (m.albedo / PI) * (1.0 - m.metalness); // Lambert diffuse

  // // Point/Directional light attenuation
  // float A = mix(1.0f, 1.0 / (1.0 + 0.1 * dot(light.position - P, light.position.xyz - P)), light.range);

  // // // L
  // vec3 radiance = A * light.color * 5;
  // vec3 phong = PhongSpecular(V, L, N, vec3(1), m.roughness);

  vec3 diffuse = diffuseCoefficient * light.color.rgb * m.albedo;

  return diffuse;
}
