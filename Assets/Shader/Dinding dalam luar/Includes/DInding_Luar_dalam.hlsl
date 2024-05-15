#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void DInding_Luar_dalam_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 name, Texture2D image_37364, Texture2D image_37366, Texture2D image_37368, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_37364 = node_image_texture(image_37364, name, 0);
	float4 _ImageTexture_37368 = node_image_texture(image_37368, name, 0);
	float4 _NormalMap_37370; node_normal_map(_ImageTexture_37368, 1, _NormalMap_37370);
	float4 _ImageTexture_37366 = node_image_texture(image_37366, name, 0);

	Color = _ImageTexture_37364;
	Normal = _NormalMap_37370;
	Smoothness = 0.0;
	Emission = _ImageTexture_37366;
	AmbientOcculusion = 0.0;
	Metallic = 0.0;
	Specular = float4(0.0, 0.0, 0.0, 0.0);
}