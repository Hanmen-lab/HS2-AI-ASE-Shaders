// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Alpha"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[Toggle]_DitherBlueNoise("DitherBlueNoise", Range( 0 , 1)) = 1
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (1,1,0,0)
		_WetUV("WetUV", Vector) = (1,1,0,0)
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
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
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
		[Header (Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetGlossBase("WetGlossBase", Range( 0 , 2)) = 0.8
		_BodyColor1("BodyColor", Color) = (0.71,0.56,0.51,0)
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetSplatsAlbedoOffset("WetSplatsAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetAlpha("WetAlpha", Range( 0 , 10)) = 0
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 0
		_WetOpacityStreaks("WetOpacityStreaks", Range( 0 , 2)) = 0
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0.5
		_WetColor("WetColor", Color) = (0,0,0,0)
		[HideInInspector]_Translucency("Translucency", Range( 0 , 1)) = 0
		[Header(Dithering)][Toggle]_DitherSwitch("DitherSwitch", Range( 0 , 1)) = 1
		[Header(Translucency)]
		_Translucency("Strength", Range( 0 , 50)) = 1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0.1
		_TransScattering("Scaterring Falloff", Range( 1 , 50)) = 2
		_TransDirect("Direct", Range( 0 , 1)) = 1
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.2
		_TransShadow("Shadow", Range( 0 , 1)) = 0.9
		[Header(Blending Options)][IntRange]_BlendSCR("BlendSCR", Range( 1 , 11)) = 5
		[IntRange]_BlendDST("BlendDST", Range( 1 , 11)) = 11
		[Header(Culling Setting)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Depth Setting)][Toggle]_ZWrite("ZWrite", Range( 0 , 1)) = 0
		[Header(Alpha to coverage)][Toggle]_AlphaToMask("AlphaToMask", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		ZWrite [_ZWrite]
		ZTest LEqual
		Blend [_BlendSCR] [_BlendDST] , SrcAlpha OneMinusSrcAlpha
		
		AlphaToMask [_AlphaToMask]
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR4_ON
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#endif//ASE Sampling Macros

		struct Input
		{
			float2 uv_texcoord;
			half ASEVFace : VFACE;
		};

		struct SurfaceOutputStandardCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			half3 Translucency;
		};

		uniform half _ZWrite;
		uniform float _BlendSCR;
		uniform float _BlendDST;
		uniform float _CullMode;
		uniform float _AlphaToMask;
		uniform float4 _BaseColor;
		uniform float _AlphaMaster;
		uniform float _EmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform half _DitherSwitch;
		uniform float _DetailNormalMapScale;
		uniform float _Metallic4;
		uniform float _WetAlpha;
		uniform float _DetailUV2Rotator;
		SamplerState sampler_DetailMainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float4 _Color;
		uniform float _DetailGlossScale2;
		uniform float _WetSplatsAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _DetailMetallicScale;
		uniform float _WetGlossBase;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap2;
		uniform float _WetBumpOffset;
		uniform float _WetOpacityStreaks;
		uniform float _WetOpacitySplats;
		uniform float4 _BodyColor1;
		uniform float _WetAlbedoOffset;
		uniform float4 _WetUV;
		uniform float _ExGloss;
		uniform float _WetGlossSplats;
		uniform float _DetailMetallicScale2;
		uniform float _DitherBlueNoise;
		uniform float4 _EmissionColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float4 _WetColor;
		uniform float _WeatheringAll;
		uniform float _CarvatureStrength;
		uniform float _DetailNormalMapScale2;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringRange2;
		uniform float _WeatheringRange1;
		SamplerState sampler_MetallicGlossMap;
		uniform float4 _WeatheringAlbedo;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float2 _DetailUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _WeatheringRange4;
		uniform float _Float0;
		uniform float4 _WeatheringUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float _AlphaEx;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _WeatheringRange3;
		uniform float _WeatheringRange5;
		uniform float2 _DetailUV2;
		uniform float2 _patternuvbase;
		uniform float4 _WetStreaksUV;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_linear_repeat;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		uniform half _Translucency;
		uniform half _TransNormalDistortion;
		uniform half _TransScattering;
		uniform half _TransDirect;
		uniform half _TransAmbient;
		uniform half _TransShadow;

		inline half4 LightingStandardCustom(SurfaceOutputStandardCustom s, half3 viewDir, UnityGI gi )
		{
			#if !defined(DIRECTIONAL)
			float3 lightAtten = gi.light.color;
			#else
			float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, _TransShadow );
			#endif
			half3 lightDir = gi.light.dir + s.Normal * _TransNormalDistortion;
			half transVdotL = pow( saturate( dot( viewDir, -lightDir ) ), _TransScattering );
			half3 translucency = lightAtten * (transVdotL * _TransDirect + gi.indirect.diffuse * _TransAmbient) * s.Translucency;
			half4 c = half4( s.Albedo * translucency * _Translucency, 0 );

			SurfaceOutputStandard r;
			r.Albedo = s.Albedo;
			r.Normal = s.Normal;
			r.Emission = s.Emission;
			r.Metallic = s.Metallic;
			r.Smoothness = s.Smoothness;
			r.Occlusion = s.Occlusion;
			r.Alpha = s.Alpha;
			return LightingStandard (r, viewDir, gi) + c;
		}

		inline void LightingStandardCustom_GI(SurfaceOutputStandardCustom s, UnityGIInput data, inout UnityGI gi )
		{
			#if defined(UNITY_PASS_DEFERRED) && UNITY_ENABLE_REFLECTION_BUFFERS
				gi = UnityGlobalIllumination(data, s.Occlusion, s.Normal);
			#else
				UNITY_GLOSSY_ENV_FROM_SURFACE( g, s, data );
				gi = UnityGlobalIllumination( data, s.Occlusion, s.Normal, g );
			#endif
		}

		void surf( Input i , inout SurfaceOutputStandardCustom o )
		{
			float2 uv_BumpMap402_g34 = i.uv_texcoord;
			float WetBumpOffset303_g34 = _WetBumpOffset;
			float ExGloss298_g34 = _ExGloss;
			float2 UVScale107_g34 = _UVScalePattern;
			float2 uv_TexCoord152_g34 = i.uv_texcoord * ( _DetailUV * UVScale107_g34 );
			float cos162_g34 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g34 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g34 = mul( uv_TexCoord152_g34 - float2( 0.5,0.5 ) , float2x2( cos162_g34 , -sin162_g34 , sin162_g34 , cos162_g34 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g34 = rotator162_g34;
			float2 break194_g34 = Detail1UV173_g34;
			float temp_output_186_0_g34 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g34 = (float2(( break194_g34.x + temp_output_186_0_g34 ) , break194_g34.y));
			float4 tex2DNode243_g34 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g34 );
			float2 uv_DetailMask25_g34 = i.uv_texcoord;
			float4 tex2DNode25_g34 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g34 );
			float DetailMask130_g34 = tex2DNode25_g34.r;
			float temp_output_255_0_g34 = ( DetailMask130_g34 * _DetailNormalMapScale );
			float3 appendResult300_g34 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g34 ).g - tex2DNode243_g34.g ) * temp_output_255_0_g34 )));
			float2 appendResult222_g34 = (float2(break194_g34.x , ( break194_g34.y + temp_output_186_0_g34 )));
			float3 appendResult297_g34 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g34 ).g - tex2DNode243_g34.g ) * temp_output_255_0_g34 )));
			float3 normalizeResult348_g34 = normalize( cross( appendResult300_g34 , appendResult297_g34 ) );
			float3 DetailNormal1368_g34 = normalizeResult348_g34;
			float2 uv_TexCoord16_g34 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g34 );
			float cos19_g34 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g34 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g34 = mul( uv_TexCoord16_g34 - float2( 0.5,0.5 ) , float2x2( cos19_g34 , -sin19_g34 , sin19_g34 , cos19_g34 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g34 = rotator19_g34;
			float2 break24_g34 = Detail2UV20_g34;
			float temp_output_26_0_g34 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g34 = (float2(( break24_g34.x + temp_output_26_0_g34 ) , break24_g34.y));
			float4 tex2DNode38_g34 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g34 );
			float DetailMask235_g34 = tex2DNode25_g34.g;
			float temp_output_43_0_g34 = ( DetailMask235_g34 * _DetailNormalMapScale2 );
			float3 appendResult58_g34 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g34 ).g - tex2DNode38_g34.g ) * temp_output_43_0_g34 )));
			float2 appendResult33_g34 = (float2(break24_g34.x , ( break24_g34.y + temp_output_26_0_g34 )));
			float3 appendResult57_g34 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g34 ).g - tex2DNode38_g34.g ) * temp_output_43_0_g34 )));
			float3 normalizeResult69_g34 = normalize( cross( appendResult58_g34 , appendResult57_g34 ) );
			float3 DetailNormal276_g34 = normalizeResult69_g34;
			float2 appendResult657_g34 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g34 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g34 = i.uv_texcoord * appendResult657_g34 + appendResult658_g34;
			float2 WetStrUV669_g34 = uv_TexCoord660_g34;
			float2 break547_g34 = WetStrUV669_g34;
			float temp_output_541_0_g34 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g34 = (float2(( break547_g34.x + temp_output_541_0_g34 ) , break547_g34.y));
			float4 tex2DNode515_g34 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g34 );
			float3 appendResult523_g34 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g34 ).g - tex2DNode515_g34.g ) * 1.0 )));
			float2 appendResult534_g34 = (float2(break547_g34.x , ( break547_g34.y + temp_output_541_0_g34 )));
			float3 appendResult542_g34 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g34 ).g - tex2DNode515_g34.g ) * 1.0 )));
			float3 normalizeResult524_g34 = normalize( cross( appendResult523_g34 , appendResult542_g34 ) );
			float3 WetnessNormal545_g34 = normalizeResult524_g34;
			float WetStr661_g34 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g34 ).g;
			float smoothstepResult651_g34 = smoothstep( ( 1.0 - ExGloss298_g34 ) , 1.0 , WetStr661_g34);
			float StreaksAlpha662_g34 = smoothstepResult651_g34;
			float WetOpStreaks673_g34 = _WetOpacityStreaks;
			float3 lerpResult98_g34 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g34 ), ( _Float0 + ( WetBumpOffset303_g34 * ExGloss298_g34 ) ) ) , DetailNormal1368_g34 ) , DetailNormal276_g34 ) , WetnessNormal545_g34 , ( StreaksAlpha662_g34 * WetOpStreaks673_g34 ));
			float2 appendResult115_g34 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g34 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 uv_TexCoord127_g34 = i.uv_texcoord * appendResult115_g34 + ( appendResult110_g34 / float2( 100,100 ) );
			float2 WeatheringUV144_g34 = uv_TexCoord127_g34;
			float2 break223_g34 = WeatheringUV144_g34;
			float temp_output_224_0_g34 = ( pow( 0.15 , 2.0 ) * 0.1 );
			float2 appendResult258_g34 = (float2(( break223_g34.x + temp_output_224_0_g34 ) , break223_g34.y));
			float4 tex2DNode266_g34 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g34 );
			float3 appendResult344_g34 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g34 ).b - tex2DNode266_g34.b ) * 2.0 )));
			float2 appendResult252_g34 = (float2(break223_g34.x , ( break223_g34.y + temp_output_224_0_g34 )));
			float3 appendResult339_g34 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g34 ).b - tex2DNode266_g34.b ) * 2.0 )));
			float3 normalizeResult398_g34 = normalize( cross( appendResult344_g34 , appendResult339_g34 ) );
			float3 WeatheringBump425_g34 = normalizeResult398_g34;
			float4 tex2DNode177_g34 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g34 );
			float2 uv_WeatheringMask100_g34 = i.uv_texcoord;
			float4 tex2DNode100_g34 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g34 );
			float clampResult161_g34 = clamp( ( tex2DNode100_g34.r - tex2DNode100_g34.g ) , 0.0 , 1.0 );
			float WMask1183_g34 = ( clampResult161_g34 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g34 = (( _WeatheringRange1 >= 0.51 && _WeatheringRange1 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult253_g34 = clamp( ( ( tex2DNode177_g34.g * WMask1183_g34 ) - RangeCut1208_g34 ) , 0.0 , 1.0 );
			float clampResult159_g34 = clamp( ( tex2DNode100_g34.g - tex2DNode100_g34.r ) , 0.0 , 1.0 );
			float WMask2192_g34 = ( clampResult159_g34 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g34 = (( _WeatheringRange2 >= 0.51 && _WeatheringRange2 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult251_g34 = clamp( ( ( tex2DNode177_g34.g * WMask2192_g34 ) - RangeCut2211_g34 ) , 0.0 , 1.0 );
			float WMask3190_g34 = ( tex2DNode100_g34.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g34 = (( _WeatheringRange3 >= 0.51 && _WeatheringRange3 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult254_g34 = clamp( ( ( tex2DNode177_g34.g * WMask3190_g34 ) - RangeCut3210_g34 ) , 0.0 , 1.0 );
			float WMask4180_g34 = ( ( tex2DNode100_g34.r * tex2DNode100_g34.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g34 = (( _WeatheringRange4 >= 0.51 && _WeatheringRange4 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult259_g34 = clamp( ( ( tex2DNode177_g34.g * WMask4180_g34 ) - RangeCut4205_g34 ) , 0.0 , 1.0 );
			float WMask5184_g34 = ( ( tex2DNode100_g34.r * tex2DNode100_g34.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g34 = (( _WeatheringRange5 >= 0.51 && _WeatheringRange5 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult261_g34 = clamp( ( ( tex2DNode177_g34.g * WMask5184_g34 ) - RangeCut5201_g34 ) , 0.0 , 1.0 );
			float WMaskAll165_g34 = ceil( _WeatheringAll );
			float RangeCutAll171_g34 = (( _WeatheringAll >= 0.51 && _WeatheringAll <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult215_g34 = clamp( ( ( tex2DNode177_g34.g * WMaskAll165_g34 ) - RangeCutAll171_g34 ) , 0.0 , 1.0 );
			float clampResult299_g34 = clamp( ( clampResult253_g34 + clampResult251_g34 + clampResult254_g34 + clampResult259_g34 + clampResult261_g34 + clampResult215_g34 ) , 0.0 , 1.0 );
			float lerpResult313_g34 = lerp( clampResult299_g34 , clampResult215_g34 , WMaskAll165_g34);
			float clampResult373_g34 = clamp( ( lerpResult313_g34 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g34 = clampResult373_g34;
			float3 lerpResult87_g34 = lerp( lerpResult98_g34 , WeatheringBump425_g34 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g34 ).b * WeatheringAlpha396_g34 ));
			float3 normalizeResult564_g34 = normalize( lerpResult87_g34 );
			float3 switchResult566_g34 = (((i.ASEVFace>0)?(normalizeResult564_g34):(-normalizeResult564_g34)));
			float3 NormalMix88_g34 = switchResult566_g34;
			o.Normal = NormalMix88_g34;
			float2 uv_MainTex576_g34 = i.uv_texcoord;
			float4 tex2DNode576_g34 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g34 );
			float3 temp_output_284_0_g34 = (tex2DNode576_g34).rgb;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap196_g34 = i.uv_texcoord;
			float4 tex2DNode196_g34 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g34 );
			float Carvature270_g34 = tex2DNode196_g34.r;
			float3 lerpResult331_g34 = lerp( ( temp_output_284_0_g34 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g34 * _CarvatureStrength ));
			float WetAlbedoOffset311_g34 = _WetAlbedoOffset;
			float3 temp_output_382_0_g34 = ( lerpResult331_g34 * WetAlbedoOffset311_g34 );
			float WetSplatsAlbedoOffset349_g34 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g34 = lerp( ( temp_output_382_0_g34 * WetSplatsAlbedoOffset349_g34 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g34 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g34 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g34 = i.uv_texcoord * appendResult287_g34 + appendResult285_g34;
			float2 WetUV578_g34 = uv_TexCoord317_g34;
			float WetSplats369_g34 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g34 ).b;
			float SplatsOp363_g34 = _WetOpacitySplats;
			float3 lerpResult460_g34 = lerp( temp_output_382_0_g34 , lerpResult411_g34 , ( ( StreaksAlpha662_g34 * WetOpStreaks673_g34 ) + ( WetSplats369_g34 * SplatsOp363_g34 ) ));
			float2 uv_OcclusionMap429_g34 = i.uv_texcoord;
			float4 tex2DNode429_g34 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g34 );
			float3 WetBodyOffset422_g34 = (_BodyColor1).rgb;
			float bodycoloralpha417_g34 = _BodyColor1.a;
			float3 lerpResult480_g34 = lerp( lerpResult460_g34 , ( tex2DNode429_g34.a == 1.0 ? lerpResult460_g34 : WetBodyOffset422_g34 ) , ( bodycoloralpha417_g34 * ( 1.0 - tex2DNode429_g34.a ) ));
			float3 lerpResult501_g34 = lerp( lerpResult331_g34 , lerpResult480_g34 , ExGloss298_g34);
			float WeatheringAlpha2466_g34 = lerpResult313_g34;
			float3 lerpResult505_g34 = lerp( lerpResult501_g34 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g34 * 0.282353 ));
			float3 DiffuseMix511_g34 = lerpResult505_g34;
			o.Albedo = DiffuseMix511_g34;
			float2 uv_MetallicGlossMap330_g34 = i.uv_texcoord;
			float4 tex2DNode330_g34 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g34 );
			float3 ColorTex354_g34 = temp_output_284_0_g34;
			float2 uv_ColorMask304_g34 = i.uv_texcoord;
			float4 tex2DNode304_g34 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g34 );
			float ColorMask3306_g34 = tex2DNode304_g34.g;
			float3 EC3414_g34 = ( ColorTex354_g34 * ( _EmissionStrength * ColorMask3306_g34 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g34 = EC3414_g34;
			#else
				float3 staticSwitch469_g34 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g34 = tex2DNode304_g34.r;
			float3 EC2456_g34 = ( ColorTex354_g34 * ( _EmissionStrength * ColorMask2351_g34 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g34 = EC2456_g34;
			#else
				float3 staticSwitch479_g34 = staticSwitch469_g34;
			#endif
			float ColorMask1358_g34 = ( 1.0 - ( tex2DNode304_g34.r + tex2DNode304_g34.g + tex2DNode304_g34.b ) );
			float3 EC1471_g34 = ( ColorTex354_g34 * ( _EmissionStrength * ColorMask1358_g34 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g34 = EC1471_g34;
			#else
				float3 staticSwitch498_g34 = staticSwitch479_g34;
			#endif
			float3 EmissionFinal510_g34 = ( tex2DNode330_g34.g * staticSwitch498_g34 );
			o.Emission = EmissionFinal510_g34;
			float lerpResult399_g34 = lerp( 1.0 , tex2DNode330_g34.r , _MetallicMask);
			float2 uv_DetailMainTex338_g34 = i.uv_texcoord;
			float4 tex2DNode338_g34 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g34 );
			float lerpResult395_g34 = lerp( 1.0 , tex2DNode330_g34.r , _MetallicMask4);
			float ColorMask4347_g34 = tex2DNode304_g34.b;
			float lerpResult462_g34 = lerp( ( lerpResult399_g34 * tex2DNode338_g34.r ) , ( lerpResult395_g34 * _Metallic4 ) , ColorMask4347_g34);
			float Detail1310_g34 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g34 ).r;
			float Detail2352_g34 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g34 ).r;
			float lerpResult495_g34 = lerp( ( ( lerpResult462_g34 - ( ( 1.0 - Detail1310_g34 ) * ( _DetailMetallicScale * DetailMask130_g34 ) ) ) - ( ( 1.0 - Detail2352_g34 ) * ( _DetailMetallicScale2 * DetailMask235_g34 ) ) ) , 0.0 , WeatheringAlpha2466_g34);
			float MetallicFinal512_g34 = saturate( lerpResult495_g34 );
			o.Metallic = MetallicFinal512_g34;
			float lerpResult353_g34 = lerp( 1.0 , tex2DNode330_g34.r , _Roughness);
			float lerpResult336_g34 = lerp( 1.0 , tex2DNode330_g34.r , _Roughness4);
			float lerpResult384_g34 = lerp( ( lerpResult353_g34 * tex2DNode338_g34.b ) , ( _Glossiness4 * lerpResult336_g34 ) , ColorMask4347_g34);
			float WetGlossBase397_g34 = _WetGlossBase;
			float lerpResult470_g34 = lerp( ( ( lerpResult384_g34 - ( ( 1.0 - Detail1310_g34 ) * ( _DetailGlossScale * DetailMask130_g34 ) ) ) - ( ( 1.0 - Detail2352_g34 ) * ( _DetailGlossScale2 * DetailMask235_g34 ) ) ) , tex2DNode330_g34.a , ( WetGlossBase397_g34 * ExGloss298_g34 ));
			float SplatsGloss407_g34 = _WetGlossSplats;
			float lerpResult664_g34 = lerp( lerpResult470_g34 , SplatsGloss407_g34 , ( SplatsOp363_g34 * ExGloss298_g34 * WetSplats369_g34 ));
			float lerpResult649_g34 = lerp( lerpResult664_g34 , 0.87 , ( WetOpStreaks673_g34 * smoothstepResult651_g34 ));
			float lerpResult499_g34 = lerp( lerpResult649_g34 , 0.8 , WeatheringAlpha396_g34);
			float GlossinessFinal513_g34 = saturate( lerpResult499_g34 );
			o.Smoothness = GlossinessFinal513_g34;
			float2 uv_OcclusionMap623_g34 = i.uv_texcoord;
			float lerpResult483_g34 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g34 ).g , _OcculusionStrength);
			float smoothstepResult621_g34 = smoothstep( 0.0 , 0.8 , Detail1310_g34);
			float lerpResult488_g34 = lerp( 1.0 , smoothstepResult621_g34 , ( _DetailOcculusionScale * DetailMask130_g34 ));
			float smoothstepResult622_g34 = smoothstep( 0.0 , 0.8 , Detail2352_g34);
			float lerpResult494_g34 = lerp( 1.0 , smoothstepResult622_g34 , ( _DetailOcculusionScale2 * DetailMask235_g34 ));
			float lerpResult620_g34 = lerp( ( lerpResult483_g34 * lerpResult488_g34 * lerpResult494_g34 ) , 1.0 , WeatheringAlpha396_g34);
			float OcclusionMix509_g34 = saturate( lerpResult620_g34 );
			o.Occlusion = OcclusionMix509_g34;
			float Thickness507_g34 = tex2DNode330_g34.b;
			float3 temp_cast_1 = (( ( _Translucency / 10.0 ) * Thickness507_g34 )).xxx;
			o.Translucency = temp_cast_1;
			float AlphaInput195_g34 = tex2DNode576_g34.a;
			float OccAlpha219_g34 = tex2DNode196_g34.a;
			float temp_output_593_0_g34 = saturate( pow( OccAlpha219_g34 , ( _WetAlpha * ExGloss298_g34 ) ) );
			float clampResult592_g34 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g34 = tex2DNode196_g34.b;
			float temp_output_602_0_g34 = step( pow( ( 1.0 - clampResult592_g34 ) , 0.2 ) , pow( TearingsMask340_g34 , 0.5 ) );
			o.Alpha = saturate( ( ( ( AlphaInput195_g34 * _AlphaMaster * temp_output_593_0_g34 ) + WeatheringAlpha2466_g34 ) * temp_output_602_0_g34 ) );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardCustom keepalpha fullforwardshadows exclude_path:deferred 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			AlphaToMask Off
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
				float3 worldPos : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
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
				o.worldPos = worldPos;
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
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				SurfaceOutputStandardCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardCustom, o )
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
99.2;70;1230;814;-4152.181;2352.74;3.441843;True;False
Node;AmplifyShaderEditor.RangedFloatNode;1492;5915.375,-1277.453;Half;False;Property;_ZWrite;ZWrite;81;2;[Header];[Toggle];Create;True;1;Depth Setting;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1462;5913.945,-1555.675;Inherit;False;Property;_BlendSCR;BlendSCR;78;2;[Header];[IntRange];Create;True;1;Blending Options;0;0;True;0;False;5;5;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1463;5915.928,-1468.136;Inherit;False;Property;_BlendDST;BlendDST;79;1;[IntRange];Create;True;0;0;0;True;0;False;11;11;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1284;5915.013,-1369.499;Inherit;False;Property;_CullMode;CullMode;80;2;[Header];[IntRange];Create;True;1;Culling Setting;3;None;0;Front;1;Back;2;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1464;5914.921,-1647.331;Inherit;False;Property;_AlphaToMask;AlphaToMask;82;2;[Header];[Toggle];Create;True;1;Alpha to coverage;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1529;5909.251,-1917.337;Inherit;False;AIT Clothes Function;1;;34;d0644e5becc3a6145ad3ab18b1d3f488;0;0;9;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;562;FLOAT;617;FLOAT;637
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;6772.752,-1909.432;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Clothes True Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;1;True;1492;3;False;-1;False;-2.62;False;-1;1;False;-1;False;0;Custom;0.01;True;True;0;True;Transparent;2600;Transparent;ForwardOnly;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;255;False;-1;255;False;-1;255;False;-1;4;False;-1;0;False;-1;0;False;-1;0;False;-1;3;False;-1;0;False;-1;0;False;-1;3;False;-1;False;0;32;1;2;True;1;True;2;5;True;1462;10;True;1463;2;5;False;1466;10;False;1465;0;False;-1;0;False;1464;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;71;-1;-1;0;False;0;0;True;1284;-1;0;False;1503;0;0;0;False;0.1;False;-1;0;True;1464;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;1529;0
WireConnection;0;1;1529;557
WireConnection;0;2;1529;558
WireConnection;0;3;1529;559
WireConnection;0;4;1529;560
WireConnection;0;5;1529;561
WireConnection;0;7;1529;562
WireConnection;0;9;1529;617
ASEEND*/
//CHKSM=B13D480C13182059D391A831E7A3F1CF0F1F7D6C
