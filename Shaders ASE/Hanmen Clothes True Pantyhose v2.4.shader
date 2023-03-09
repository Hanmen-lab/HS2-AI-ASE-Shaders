// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Pantyhose"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (2,2,0,0)
		_WetUV("WetUV", Vector) = (5,5,0,0)
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color("Color", Color) = (1,1,1,1)
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0.6,0.65,0.65,0)
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_WeatheringUV("WeatheringUV", Vector) = (1,1,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = -1
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_Float0("Float0", Range( 0 , 3)) = 1
		[NoScaleOffset][Header (Detail Mask)]_DetailMask("", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1 (Grayscale))]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		[NoScaleOffset][Header (Detail2 (Grayscale))]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 9
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 1
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		_DetailAlpha1("DetailAlpha1", Range( 0 , 1)) = 0
		_DetailAlpha2("DetailAlpha2", Range( 0 , 1)) = 1
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		[Header (Color Mask Required (Optional))][Toggle(_EMISSIONCOLOR2_ON)] _EmissionColor2("Color1 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR3_ON)] _EmissionColor3("Color2 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR4_ON)] _EmissionColor4("Color3 is Emissive", Float) = 0
		[Header (Ambient Occlusion)]_OcculusionStrength("OcculusionStrength", Range( 0 , 1)) = 1
		_AlphaMaster("AlphaMaster", Range( 0 , 1)) = 1
		[Header (Metallic Roughness (Optional))]_Roughness("Roughness", Range( 0 , 1)) = 1
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		[Header (Color 4 Settings (Optional))]_Glossiness4("Glossiness4", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 1
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		[Header (Weathering)]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange1("WeatheringRange1", Range( 0 , 1)) = 0
		_WeatheringRange2("WeatheringRange2", Range( 0 , 1)) = 0
		_WeatheringRange3("WeatheringRange3", Range( 0 , 1)) = 0
		_WeatheringRange4("WeatheringRange4", Range( 0 , 1)) = 0
		_WeatheringRange5("WeatheringRange5", Range( 0 , 1)) = 0
		_WeatheringEmission("WeatheringEmission", Range( 0 , 1)) = 0.2
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.95
		_WeatheringUVSeed("WeatheringUVSeed", Range( 0 , 1)) = 0
		[Header (Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetGlossBase("WetGlossBase", Range( 0 , 2)) = 0.7294118
		_BodyColor1("BodyColor", Color) = (0.71,0.56,0.51,0)
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetSplatsAlbedoOffset("WetSplatsAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 2
		_WetOpacityStreaks("WetOpacityStreaks", Range( 0 , 2)) = 2
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0.903171
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0
		_WetColor("WetColor", Color) = (0,0,0,0)
		[Header(Fresnel Settings)]_FresnelPower("FresnelPower", Range( 0 , 10)) = 3
		_FresnelBias("FresnelBias", Range( 0 , 1)) = 0
		_FresnelScale("FresnelScale", Range( 0 , 10)) = 2
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		_FresnelMetallic("FresnelMetallic", Range( 0 , 1)) = 1
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+2" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Off
		ZWrite On
		ZTest LEqual
		Blend SrcAlpha OneMinusSrcAlpha
		
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR4_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#endif//ASE Sampling Macros

		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float3 worldPos;
			float3 worldNormal;
			INTERNAL_DATA
			half ASEVFace : VFACE;
		};

		uniform float _Cutoff;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _Metallic4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _DetailNormalMapScale2;
		uniform float4 _WetColor;
		uniform float4 _Color;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _CarvatureStrength;
		uniform float _AlphaEx;
		uniform float _AlphaMaster;
		uniform float _DetailAlpha1;
		uniform float _FresnelPower;
		uniform float _DetailGlossScale2;
		uniform float _DetailAlpha2;
		uniform float4 _WeatheringUV;
		uniform float4 _WetUV;
		uniform float _FresnelMetallic;
		uniform float _FresnelScale;
		uniform float _DetailMetallicScale2;
		uniform float _DetailMetallicScale;
		uniform float2 _DetailUV2;
		uniform float _DetailUVRotator;
		uniform float4 _WetStreaksUV;
		uniform float _WetGlossBase;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float4 _BodyColor1;
		uniform float _WetOpacitySplats;
		uniform float _Float0;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform float4 _EmissionColor;
		uniform float _WetAlbedoOffset;
		uniform float _DetailNormalMapScale;
		uniform float _DetailGlossScale;
		uniform float2 _patternuvbase;
		uniform float _DetailUV2Rotator;
		SamplerState sampler_DetailMainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _WeatheringAll;
		uniform float _WetSplatsAlbedoOffset;
		uniform float4 _WeatheringAlbedo;
		uniform float2 _DetailUV;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap2;
		uniform float _WeatheringRange3;
		SamplerState sampler_MetallicGlossMap;
		uniform float _FresnelBias;
		uniform float _EmissionStrength;
		uniform float _WeatheringRange2;
		uniform float _WetGlossSplats;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _WeatheringRange5;
		uniform float _WetOpacityStreaks;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _WeatheringRange1;
		uniform float _ExGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _WeatheringRange4;
		uniform float4 _BaseColor;
		uniform float _WeatheringUVSeed;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float _WetBumpOffset;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_linear_repeat;
		uniform float _WeatheringEmission;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap402_g132 = i.uv_texcoord;
			float3 tex2DNode402_g132 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g132 ), _Float0 );
			float2 UVScale107_g132 = _UVScalePattern;
			float2 uv_TexCoord152_g132 = i.uv_texcoord * ( _DetailUV * UVScale107_g132 );
			float cos162_g132 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g132 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g132 = mul( uv_TexCoord152_g132 - float2( 0.5,0.5 ) , float2x2( cos162_g132 , -sin162_g132 , sin162_g132 , cos162_g132 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g132 = rotator162_g132;
			float2 break194_g132 = Detail1UV173_g132;
			float temp_output_186_0_g132 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g132 = (float2(( break194_g132.x + temp_output_186_0_g132 ) , break194_g132.y));
			float4 tex2DNode243_g132 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g132 );
			float2 uv_DetailMask25_g132 = i.uv_texcoord;
			float4 tex2DNode25_g132 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g132 );
			float DetailMask130_g132 = tex2DNode25_g132.r;
			float temp_output_255_0_g132 = ( DetailMask130_g132 * _DetailNormalMapScale );
			float3 appendResult300_g132 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g132 ).g - tex2DNode243_g132.g ) * temp_output_255_0_g132 )));
			float2 appendResult222_g132 = (float2(break194_g132.x , ( break194_g132.y + temp_output_186_0_g132 )));
			float3 appendResult297_g132 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g132 ).g - tex2DNode243_g132.g ) * temp_output_255_0_g132 )));
			float3 normalizeResult348_g132 = normalize( cross( appendResult300_g132 , appendResult297_g132 ) );
			float3 DetailNormal1368_g132 = normalizeResult348_g132;
			float2 uv_TexCoord16_g132 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g132 );
			float cos19_g132 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g132 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g132 = mul( uv_TexCoord16_g132 - float2( 0.5,0.5 ) , float2x2( cos19_g132 , -sin19_g132 , sin19_g132 , cos19_g132 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g132 = rotator19_g132;
			float2 break24_g132 = Detail2UV20_g132;
			float temp_output_26_0_g132 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g132 = (float2(( break24_g132.x + temp_output_26_0_g132 ) , break24_g132.y));
			float4 tex2DNode38_g132 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g132 );
			float DetailMask235_g132 = tex2DNode25_g132.g;
			float temp_output_43_0_g132 = ( DetailMask235_g132 * _DetailNormalMapScale2 );
			float3 appendResult58_g132 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g132 ).g - tex2DNode38_g132.g ) * temp_output_43_0_g132 )));
			float2 appendResult33_g132 = (float2(break24_g132.x , ( break24_g132.y + temp_output_26_0_g132 )));
			float3 appendResult57_g132 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g132 ).g - tex2DNode38_g132.g ) * temp_output_43_0_g132 )));
			float3 normalizeResult69_g132 = normalize( cross( appendResult58_g132 , appendResult57_g132 ) );
			float3 DetailNormal276_g132 = normalizeResult69_g132;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 BaseNormal731_g132 = tex2DNode402_g132;
			float3 normalizeResult701_g132 = normalize( BlendNormals( ase_worldViewDir , BaseNormal731_g132 ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 normalizeResult700_g132 = normalize( BlendNormals( ase_worldNormal , BaseNormal731_g132 ) );
			float fresnelNdotV705_g132 = dot( normalizeResult700_g132, normalizeResult701_g132 );
			float fresnelNode705_g132 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV705_g132, _FresnelPower ) );
			float Fresnel707_g132 = saturate( fresnelNode705_g132 );
			float3 lerpResult767_g132 = lerp( BlendNormals( BlendNormals( tex2DNode402_g132 , DetailNormal1368_g132 ) , DetailNormal276_g132 ) , float3(0,0,1) , Fresnel707_g132);
			float2 appendResult657_g132 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g132 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g132 = i.uv_texcoord * appendResult657_g132 + appendResult658_g132;
			float2 WetStrUV669_g132 = uv_TexCoord660_g132;
			float2 break547_g132 = WetStrUV669_g132;
			float temp_output_541_0_g132 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g132 = (float2(( break547_g132.x + temp_output_541_0_g132 ) , break547_g132.y));
			float4 tex2DNode515_g132 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g132 );
			float3 appendResult523_g132 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g132 ).g - tex2DNode515_g132.g ) * 1.0 )));
			float2 appendResult534_g132 = (float2(break547_g132.x , ( break547_g132.y + temp_output_541_0_g132 )));
			float3 appendResult542_g132 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g132 ).g - tex2DNode515_g132.g ) * 1.0 )));
			float3 normalizeResult524_g132 = normalize( cross( appendResult523_g132 , appendResult542_g132 ) );
			float3 WetnessNormal545_g132 = normalizeResult524_g132;
			float ExGloss298_g132 = _ExGloss;
			float WetStr661_g132 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g132 ).g;
			float smoothstepResult651_g132 = smoothstep( ( 1.0 - ExGloss298_g132 ) , 1.0 , WetStr661_g132);
			float StreaksAlpha662_g132 = smoothstepResult651_g132;
			float WetOpStreaks673_g132 = _WetOpacityStreaks;
			float3 lerpResult98_g132 = lerp( lerpResult767_g132 , WetnessNormal545_g132 , ( StreaksAlpha662_g132 * WetOpStreaks673_g132 ));
			float2 appendResult115_g132 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g132 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult830_g132 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult832_g132 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult830_g132 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g132 = i.uv_texcoord * appendResult115_g132 + ( appendResult110_g132 + lerpResult832_g132 );
			float2 WeatheringUV144_g132 = uv_TexCoord127_g132;
			float2 break223_g132 = WeatheringUV144_g132;
			float temp_output_224_0_g132 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g132 = (float2(( break223_g132.x + temp_output_224_0_g132 ) , break223_g132.y));
			float4 tex2DNode266_g132 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g132 );
			float3 appendResult344_g132 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g132 ).b - tex2DNode266_g132.b ) * 2.0 )));
			float2 appendResult252_g132 = (float2(break223_g132.x , ( break223_g132.y + temp_output_224_0_g132 )));
			float3 appendResult339_g132 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g132 ).b - tex2DNode266_g132.b ) * 2.0 )));
			float3 normalizeResult398_g132 = normalize( cross( appendResult344_g132 , appendResult339_g132 ) );
			float3 WeatheringBump425_g132 = normalizeResult398_g132;
			float4 tex2DNode177_g132 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g132 );
			float2 uv_WeatheringMask100_g132 = i.uv_texcoord;
			float4 tex2DNode100_g132 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g132 );
			float clampResult161_g132 = clamp( ( tex2DNode100_g132.r - tex2DNode100_g132.g ) , 0.0 , 1.0 );
			float WMask1183_g132 = ( clampResult161_g132 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g132 = (0.7 + (_WeatheringRange1 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult253_g132 = clamp( ( ( tex2DNode177_g132.g * WMask1183_g132 ) - RangeCut1208_g132 ) , 0.0 , 1.0 );
			float clampResult159_g132 = clamp( ( tex2DNode100_g132.g - tex2DNode100_g132.r ) , 0.0 , 1.0 );
			float WMask2192_g132 = ( clampResult159_g132 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g132 = (0.7 + (_WeatheringRange2 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult251_g132 = clamp( ( ( tex2DNode177_g132.g * WMask2192_g132 ) - RangeCut2211_g132 ) , 0.0 , 1.0 );
			float WMask3190_g132 = ( tex2DNode100_g132.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g132 = (0.7 + (_WeatheringRange3 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult254_g132 = clamp( ( ( tex2DNode177_g132.g * WMask3190_g132 ) - RangeCut3210_g132 ) , 0.0 , 1.0 );
			float WMask4180_g132 = ( ( tex2DNode100_g132.r * tex2DNode100_g132.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g132 = (0.7 + (_WeatheringRange4 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult259_g132 = clamp( ( ( tex2DNode177_g132.g * WMask4180_g132 ) - RangeCut4205_g132 ) , 0.0 , 1.0 );
			float WMask5184_g132 = ( ( tex2DNode100_g132.r * tex2DNode100_g132.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g132 = (0.7 + (_WeatheringRange5 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult261_g132 = clamp( ( ( tex2DNode177_g132.g * WMask5184_g132 ) - RangeCut5201_g132 ) , 0.0 , 1.0 );
			float WMaskAll165_g132 = ceil( _WeatheringAll );
			float RangeCutAll171_g132 = (0.7 + (_WeatheringAll - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult215_g132 = clamp( ( ( tex2DNode177_g132.g * WMaskAll165_g132 ) - RangeCutAll171_g132 ) , 0.0 , 1.0 );
			float clampResult299_g132 = clamp( ( clampResult253_g132 + clampResult251_g132 + clampResult254_g132 + clampResult259_g132 + clampResult261_g132 + clampResult215_g132 ) , 0.0 , 1.0 );
			float lerpResult313_g132 = lerp( clampResult299_g132 , clampResult215_g132 , WMaskAll165_g132);
			float clampResult373_g132 = clamp( ( lerpResult313_g132 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g132 = clampResult373_g132;
			float3 lerpResult87_g132 = lerp( lerpResult98_g132 , WeatheringBump425_g132 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g132 ).b * WeatheringAlpha396_g132 ));
			float3 normalizeResult564_g132 = normalize( lerpResult87_g132 );
			float3 switchResult566_g132 = (((i.ASEVFace>0)?(normalizeResult564_g132):(-normalizeResult564_g132)));
			float3 NormalMix88_g132 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g132 : normalizeResult564_g132 );
			o.Normal = NormalMix88_g132;
			float2 uv_MainTex576_g132 = i.uv_texcoord;
			float4 tex2DNode576_g132 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g132 );
			float3 temp_output_284_0_g132 = (tex2DNode576_g132).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g132 = i.uv_texcoord;
			float4 tex2DNode196_g132 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g132 );
			float Carvature270_g132 = tex2DNode196_g132.r;
			float3 lerpResult331_g132 = lerp( ( temp_output_284_0_g132 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g132 * _CarvatureStrength ));
			float WetAlbedoOffset311_g132 = _WetAlbedoOffset;
			float3 temp_output_382_0_g132 = ( lerpResult331_g132 * WetAlbedoOffset311_g132 );
			float WetSplatsAlbedoOffset349_g132 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g132 = lerp( ( temp_output_382_0_g132 * WetSplatsAlbedoOffset349_g132 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g132 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g132 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g132 = i.uv_texcoord * appendResult287_g132 + appendResult285_g132;
			float2 WetUV578_g132 = uv_TexCoord317_g132;
			float WetSplats369_g132 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g132 ).b;
			float SplatsOp363_g132 = _WetOpacitySplats;
			float3 lerpResult460_g132 = lerp( temp_output_382_0_g132 , lerpResult411_g132 , ( ( StreaksAlpha662_g132 * WetOpStreaks673_g132 ) + ( WetSplats369_g132 * SplatsOp363_g132 ) ));
			float2 uv_OcclusionMap429_g132 = i.uv_texcoord;
			float4 tex2DNode429_g132 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g132 );
			float3 WetBodyOffset422_g132 = (_BodyColor1).rgb;
			float bodycoloralpha417_g132 = _BodyColor1.a;
			float3 lerpResult480_g132 = lerp( lerpResult460_g132 , ( tex2DNode429_g132.a == 1.0 ? lerpResult460_g132 : WetBodyOffset422_g132 ) , ( bodycoloralpha417_g132 * ( 1.0 - tex2DNode429_g132.a ) ));
			float3 lerpResult501_g132 = lerp( lerpResult331_g132 , lerpResult480_g132 , ExGloss298_g132);
			float WeatheringAlpha2466_g132 = lerpResult313_g132;
			float3 lerpResult505_g132 = lerp( lerpResult501_g132 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g132 * 0.282353 ));
			float3 DiffuseMix511_g132 = lerpResult505_g132;
			o.Albedo = DiffuseMix511_g132;
			float2 uv_MetallicGlossMap330_g132 = i.uv_texcoord;
			float4 tex2DNode330_g132 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g132 );
			float3 ColorTex354_g132 = temp_output_284_0_g132;
			float2 uv_ColorMask304_g132 = i.uv_texcoord;
			float4 tex2DNode304_g132 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g132 );
			float ColorMask3306_g132 = tex2DNode304_g132.g;
			float3 EC3414_g132 = ( ColorTex354_g132 * ( _EmissionStrength * ColorMask3306_g132 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g132 = EC3414_g132;
			#else
				float3 staticSwitch469_g132 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g132 = tex2DNode304_g132.r;
			float3 EC2456_g132 = ( ColorTex354_g132 * ( _EmissionStrength * ColorMask2351_g132 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g132 = EC2456_g132;
			#else
				float3 staticSwitch479_g132 = staticSwitch469_g132;
			#endif
			float ColorMask1358_g132 = ( 1.0 - ( tex2DNode304_g132.r + tex2DNode304_g132.g + tex2DNode304_g132.b ) );
			float3 EC1471_g132 = ( ColorTex354_g132 * ( _EmissionStrength * ColorMask1358_g132 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g132 = EC1471_g132;
			#else
				float3 staticSwitch498_g132 = staticSwitch479_g132;
			#endif
			float3 EmissionFinal510_g132 = ( tex2DNode330_g132.g * staticSwitch498_g132 );
			float WeatheringBumpMask813_g132 = tex2DNode177_g132.b;
			o.Emission = ( EmissionFinal510_g132 + ( ( WeatheringAlpha2466_g132 * WeatheringBumpMask813_g132 ) * _WeatheringEmission ) );
			float lerpResult399_g132 = lerp( 1.0 , tex2DNode330_g132.r , _MetallicMask);
			float2 uv_DetailMainTex338_g132 = i.uv_texcoord;
			float4 tex2DNode338_g132 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g132 );
			float lerpResult395_g132 = lerp( 1.0 , tex2DNode330_g132.r , _MetallicMask4);
			float ColorMask4347_g132 = tex2DNode304_g132.b;
			float lerpResult462_g132 = lerp( ( lerpResult399_g132 * tex2DNode338_g132.r ) , ( lerpResult395_g132 * _Metallic4 ) , ColorMask4347_g132);
			float4 tex2DNode291_g132 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g132 );
			float Detail1Alpha749_g132 = tex2DNode291_g132.r;
			float4 tex2DNode328_g132 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g132 );
			float Detail2Alpha747_g132 = tex2DNode328_g132.r;
			float temp_output_477_0_g132 = ( WetOpStreaks673_g132 * smoothstepResult651_g132 );
			float lerpResult800_g132 = lerp( saturate( ( ( lerpResult462_g132 - ( ( 1.0 - Detail1Alpha749_g132 ) * ( _DetailMetallicScale * DetailMask130_g132 ) ) ) - ( ( 1.0 - Detail2Alpha747_g132 ) * ( _DetailMetallicScale2 * DetailMask235_g132 ) ) ) ) , 0.0 , temp_output_477_0_g132);
			float lerpResult495_g132 = lerp( lerpResult800_g132 , 0.0 , WeatheringAlpha2466_g132);
			float lerpResult736_g132 = lerp( lerpResult495_g132 , _FresnelMetallic , Fresnel707_g132);
			o.Metallic = lerpResult736_g132;
			float lerpResult353_g132 = lerp( 1.0 , tex2DNode330_g132.r , _Roughness);
			float lerpResult336_g132 = lerp( 1.0 , tex2DNode330_g132.r , _Roughness4);
			float lerpResult384_g132 = lerp( ( lerpResult353_g132 * tex2DNode338_g132.b ) , ( _Glossiness4 * lerpResult336_g132 ) , ColorMask4347_g132);
			float WetGlossBase397_g132 = _WetGlossBase;
			float lerpResult470_g132 = lerp( saturate( ( ( lerpResult384_g132 - ( ( 1.0 - Detail1Alpha749_g132 ) * ( _DetailGlossScale * DetailMask130_g132 ) ) ) - ( ( 1.0 - Detail2Alpha747_g132 ) * ( _DetailGlossScale2 * DetailMask235_g132 ) ) ) ) , tex2DNode330_g132.a , ( WetGlossBase397_g132 * ExGloss298_g132 ));
			float SplatsGloss407_g132 = _WetGlossSplats;
			float temp_output_665_0_g132 = ( SplatsOp363_g132 * ExGloss298_g132 * WetSplats369_g132 );
			float lerpResult664_g132 = lerp( lerpResult470_g132 , SplatsGloss407_g132 , temp_output_665_0_g132);
			float lerpResult649_g132 = lerp( lerpResult664_g132 , 0.87 , temp_output_477_0_g132);
			float lerpResult499_g132 = lerp( lerpResult649_g132 , _WeatheringGloss , WeatheringAlpha396_g132);
			float GlossinessFinal513_g132 = saturate( lerpResult499_g132 );
			o.Smoothness = GlossinessFinal513_g132;
			float2 uv_OcclusionMap623_g132 = i.uv_texcoord;
			float lerpResult483_g132 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g132 ).g , _OcculusionStrength);
			float smoothstepResult621_g132 = smoothstep( 0.0 , 0.8 , tex2DNode291_g132.r);
			float lerpResult488_g132 = lerp( 1.0 , smoothstepResult621_g132 , ( _DetailOcculusionScale * DetailMask130_g132 ));
			float smoothstepResult622_g132 = smoothstep( 0.0 , 0.8 , tex2DNode328_g132.r);
			float lerpResult494_g132 = lerp( 1.0 , smoothstepResult622_g132 , ( _DetailOcculusionScale2 * DetailMask235_g132 ));
			float lerpResult620_g132 = lerp( ( lerpResult483_g132 * lerpResult488_g132 * lerpResult494_g132 ) , 1.0 , WeatheringAlpha396_g132);
			float OcclusionMix509_g132 = saturate( lerpResult620_g132 );
			o.Occlusion = OcclusionMix509_g132;
			float AlphaInput195_g132 = tex2DNode576_g132.a;
			float lerpResult727_g132 = lerp( ( AlphaInput195_g132 * _AlphaMaster ) , 1.0 , Fresnel707_g132);
			float lerpResult759_g132 = lerp( 0.0 , _DetailAlpha2 , Detail2Alpha747_g132);
			float lerpResult760_g132 = lerp( 0.0 , _DetailAlpha1 , Detail1Alpha749_g132);
			float lerpResult802_g132 = lerp( lerpResult727_g132 , 1.0 , saturate( ( ( lerpResult759_g132 * DetailMask235_g132 ) + ( lerpResult760_g132 * DetailMask130_g132 ) ) ));
			o.Alpha = ( WeatheringAlpha2466_g132 + saturate( lerpResult802_g132 ) );
			float clampResult592_g132 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g132 = tex2DNode196_g132.b;
			clip( ( step( pow( ( 1.0 - clampResult592_g132 ) , 0.2 ) , pow( TearingsMask340_g132 , 0.5 ) ) * AlphaInput195_g132 ) - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf Standard keepalpha fullforwardshadows exclude_path:deferred 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 5.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
6;6;1230;878;864.1307;2479.643;2.424994;True;False
Node;AmplifyShaderEditor.RangedFloatNode;1296;423.0901,-1541.554;Inherit;False;Property;_Cutoff;Cutoff;75;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.1;0.2416107;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1421;486.4866,-1801.568;Inherit;False;AIT Pantyhose;0;;132;49cf2620479b038468536ab556f9edd2;0;1;683;FLOAT;0;False;8;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;617;FLOAT;799
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1206.381,-1799.783;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Clothes True Pantyhose;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;1;False;-1;3;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.2416107;True;True;2;True;Transparent;3002;Transparent;ForwardOnly;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;False;-1;10;False;-1;0;5;False;-1;8;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;True;1296;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;1421;0
WireConnection;0;1;1421;557
WireConnection;0;2;1421;558
WireConnection;0;3;1421;559
WireConnection;0;4;1421;560
WireConnection;0;5;1421;561
WireConnection;0;9;1421;617
WireConnection;0;10;1421;799
ASEEND*/
//CHKSM=E47B26EA96FF89ABEF58145F62A89CE4C9305949
