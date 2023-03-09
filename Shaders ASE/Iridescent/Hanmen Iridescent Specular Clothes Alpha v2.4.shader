// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Iridescent Specular Clothes Alpha"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
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
		_WeatheringEmission("WeatheringEmission", Range( 0 , 1)) = 0.2
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.95
		_WeatheringUVSeed("WeatheringUVSeed", Range( 0 , 1)) = 0
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
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		[HideInInspector][Header(Translucency)]_Translucency("Translucency", Range( 0 , 1)) = 1
		_TransmissionStrength("TransmissionStrength", Range( 0 , 5)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Header(Iridescence)][NoScaleOffset]_ColorRamp("ColorRamp", 2D) = "white" {}
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Header(Translucency)]
		_Translucency("Strength", Range( 0 , 50)) = 1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0.1
		_TransScattering("Scaterring Falloff", Range( 1 , 50)) = 2
		_TransDirect("Direct", Range( 0 , 1)) = 1
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.2
		_TransShadow("Shadow", Range( 0 , 1)) = 0.9
		[Header(Blending Options)][IntRange]_BlendSCR("BlendSCR", Range( 1 , 11)) = 5
		[IntRange]_BlendDST("BlendDST", Range( 1 , 11)) = 11
		[Header(Depth Setting)][Toggle]_ZWrite("ZWrite", Range( 0 , 1)) = 1
		[Header(Culling Setting)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		ZWrite [_ZWrite]
		ZTest LEqual
		Blend [_BlendSCR] [_BlendDST]
		
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR4_ON
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
			half ASEVFace : VFACE;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
		};

		struct SurfaceOutputStandardSpecularCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half3 Specular;
			half Smoothness;
			half Occlusion;
			half Alpha;
			half3 Transmission;
			half3 Translucency;
		};

		uniform float2 _UVScalePattern;
		uniform float2 _DetailUV;
		uniform float4 _WetColor;
		uniform float _DetailNormalMapScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float _DetailNormalMapScale2;
		uniform float _Float0;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		uniform float _DetailUVRotator;
		uniform float2 _patternuvbase;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _WeatheringGloss;
		uniform float _TransmissionStrength;
		uniform float2 _DetailUV2;
		uniform float _ExGloss;
		uniform float4 _WetStreaksUV;
		uniform float _CarvatureStrength;
		uniform float _AlphaMaster;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _AlphaEx;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _WetAlpha;
		uniform float4 _WeatheringAlbedo;
		uniform float4 _EmissionColor;
		uniform float4 _WeatheringUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _DetailGlossScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform float _DetailUV2Rotator;
		uniform float4 _BaseColor;
		uniform float _DetailMetallicScale;
		uniform float _Metallic4;
		uniform float _EmissionStrength;
		uniform float _WetGlossBase;
		uniform float4 _Color;
		uniform float _WetSplatsAlbedoOffset;
		uniform float _WetBumpOffset;
		uniform float4 _WetUV;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		SamplerState sampler_DetailMainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		SamplerState sampler_MetallicGlossMap2;
		uniform float _DetailMetallicScale2;
		uniform float _WetOpacitySplats;
		uniform float _WeatheringRange5;
		uniform float _WetGlossSplats;
		uniform float4 _BodyColor1;
		uniform float _WetOpacityStreaks;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _WeatheringRange3;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange2;
		uniform float _WetAlbedoOffset;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorRamp);
		SamplerState sampler_ColorRamp;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriBrightness;
		uniform float _IriHue;
		uniform half _ZWrite;
		uniform float _CullMode;
		uniform float _BlendDST;
		uniform float _BlendSCR;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_linear_repeat;
		uniform float _WeatheringUVSeed;
		uniform float _WeatheringEmission;
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
		uniform float _Cutoff;

		inline half4 LightingStandardSpecularCustom(SurfaceOutputStandardSpecularCustom s, half3 viewDir, UnityGI gi )
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

			half3 transmission = max(0 , -dot(s.Normal, gi.light.dir)) * gi.light.color * s.Transmission;
			half4 d = half4(s.Albedo * transmission , 0);

			SurfaceOutputStandardSpecular r;
			r.Albedo = s.Albedo;
			r.Normal = s.Normal;
			r.Emission = s.Emission;
			r.Specular = s.Specular;
			r.Smoothness = s.Smoothness;
			r.Occlusion = s.Occlusion;
			r.Alpha = s.Alpha;
			return LightingStandardSpecular (r, viewDir, gi) + c + d;
		}

		inline void LightingStandardSpecularCustom_GI(SurfaceOutputStandardSpecularCustom s, UnityGIInput data, inout UnityGI gi )
		{
			#if defined(UNITY_PASS_DEFERRED) && UNITY_ENABLE_REFLECTION_BUFFERS
				gi = UnityGlobalIllumination(data, s.Occlusion, s.Normal);
			#else
				UNITY_GLOSSY_ENV_FROM_SURFACE( g, s, data );
				gi = UnityGlobalIllumination( data, s.Occlusion, s.Normal, g );
			#endif
		}

		void surf( Input i , inout SurfaceOutputStandardSpecularCustom o )
		{
			float2 uv_BumpMap402_g9 = i.uv_texcoord;
			float WetBumpOffset303_g9 = _WetBumpOffset;
			float ExGloss298_g9 = _ExGloss;
			float2 UVScale107_g9 = _UVScalePattern;
			float2 uv_TexCoord152_g9 = i.uv_texcoord * ( _DetailUV * UVScale107_g9 );
			float cos162_g9 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g9 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g9 = mul( uv_TexCoord152_g9 - float2( 0.5,0.5 ) , float2x2( cos162_g9 , -sin162_g9 , sin162_g9 , cos162_g9 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g9 = rotator162_g9;
			float2 break194_g9 = Detail1UV173_g9;
			float temp_output_186_0_g9 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g9 = (float2(( break194_g9.x + temp_output_186_0_g9 ) , break194_g9.y));
			float4 tex2DNode243_g9 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g9 );
			float2 uv_DetailMask25_g9 = i.uv_texcoord;
			float4 tex2DNode25_g9 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g9 );
			float DetailMask130_g9 = tex2DNode25_g9.r;
			float temp_output_255_0_g9 = ( DetailMask130_g9 * _DetailNormalMapScale );
			float3 appendResult300_g9 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g9 ).g - tex2DNode243_g9.g ) * temp_output_255_0_g9 )));
			float2 appendResult222_g9 = (float2(break194_g9.x , ( break194_g9.y + temp_output_186_0_g9 )));
			float3 appendResult297_g9 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g9 ).g - tex2DNode243_g9.g ) * temp_output_255_0_g9 )));
			float3 normalizeResult348_g9 = normalize( cross( appendResult300_g9 , appendResult297_g9 ) );
			float3 DetailNormal1368_g9 = normalizeResult348_g9;
			float2 uv_TexCoord16_g9 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g9 );
			float cos19_g9 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g9 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g9 = mul( uv_TexCoord16_g9 - float2( 0.5,0.5 ) , float2x2( cos19_g9 , -sin19_g9 , sin19_g9 , cos19_g9 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g9 = rotator19_g9;
			float2 break24_g9 = Detail2UV20_g9;
			float temp_output_26_0_g9 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g9 = (float2(( break24_g9.x + temp_output_26_0_g9 ) , break24_g9.y));
			float4 tex2DNode38_g9 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g9 );
			float DetailMask235_g9 = tex2DNode25_g9.g;
			float temp_output_43_0_g9 = ( DetailMask235_g9 * _DetailNormalMapScale2 );
			float3 appendResult58_g9 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g9 ).g - tex2DNode38_g9.g ) * temp_output_43_0_g9 )));
			float2 appendResult33_g9 = (float2(break24_g9.x , ( break24_g9.y + temp_output_26_0_g9 )));
			float3 appendResult57_g9 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g9 ).g - tex2DNode38_g9.g ) * temp_output_43_0_g9 )));
			float3 normalizeResult69_g9 = normalize( cross( appendResult58_g9 , appendResult57_g9 ) );
			float3 DetailNormal276_g9 = normalizeResult69_g9;
			float2 appendResult657_g9 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g9 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g9 = i.uv_texcoord * appendResult657_g9 + appendResult658_g9;
			float2 WetStrUV669_g9 = uv_TexCoord660_g9;
			float2 break547_g9 = WetStrUV669_g9;
			float temp_output_541_0_g9 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g9 = (float2(( break547_g9.x + temp_output_541_0_g9 ) , break547_g9.y));
			float4 tex2DNode515_g9 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g9 );
			float3 appendResult523_g9 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g9 ).g - tex2DNode515_g9.g ) * 1.0 )));
			float2 appendResult534_g9 = (float2(break547_g9.x , ( break547_g9.y + temp_output_541_0_g9 )));
			float3 appendResult542_g9 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g9 ).g - tex2DNode515_g9.g ) * 1.0 )));
			float3 normalizeResult524_g9 = normalize( cross( appendResult523_g9 , appendResult542_g9 ) );
			float3 WetnessNormal545_g9 = normalizeResult524_g9;
			float WetStr661_g9 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g9 ).g;
			float smoothstepResult651_g9 = smoothstep( ( 1.0 - ExGloss298_g9 ) , 1.0 , WetStr661_g9);
			float StreaksAlpha662_g9 = smoothstepResult651_g9;
			float WetOpStreaks673_g9 = _WetOpacityStreaks;
			float3 lerpResult98_g9 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g9 ), ( _Float0 + ( WetBumpOffset303_g9 * ExGloss298_g9 ) ) ) , DetailNormal1368_g9 ) , DetailNormal276_g9 ) , WetnessNormal545_g9 , ( StreaksAlpha662_g9 * WetOpStreaks673_g9 ));
			float2 appendResult115_g9 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g9 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult735_g9 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult742_g9 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult735_g9 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g9 = i.uv_texcoord * appendResult115_g9 + ( appendResult110_g9 + lerpResult742_g9 );
			float2 WeatheringUV144_g9 = uv_TexCoord127_g9;
			float2 break223_g9 = WeatheringUV144_g9;
			float temp_output_224_0_g9 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g9 = (float2(( break223_g9.x + temp_output_224_0_g9 ) , break223_g9.y));
			float4 tex2DNode266_g9 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g9 );
			float3 appendResult344_g9 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g9 ).b - tex2DNode266_g9.b ) * 2.0 )));
			float2 appendResult252_g9 = (float2(break223_g9.x , ( break223_g9.y + temp_output_224_0_g9 )));
			float3 appendResult339_g9 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g9 ).b - tex2DNode266_g9.b ) * 2.0 )));
			float3 normalizeResult398_g9 = normalize( cross( appendResult344_g9 , appendResult339_g9 ) );
			float3 WeatheringBump425_g9 = normalizeResult398_g9;
			float4 tex2DNode177_g9 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g9 );
			float2 uv_WeatheringMask100_g9 = i.uv_texcoord;
			float4 tex2DNode100_g9 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g9 );
			float clampResult161_g9 = clamp( ( tex2DNode100_g9.r - tex2DNode100_g9.g ) , 0.0 , 1.0 );
			float WMask1183_g9 = ( clampResult161_g9 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g9 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g9 = clamp( ( ( tex2DNode177_g9.g * WMask1183_g9 ) - RangeCut1208_g9 ) , 0.0 , 1.0 );
			float clampResult159_g9 = clamp( ( tex2DNode100_g9.g - tex2DNode100_g9.r ) , 0.0 , 1.0 );
			float WMask2192_g9 = ( clampResult159_g9 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g9 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g9 = clamp( ( ( tex2DNode177_g9.g * WMask2192_g9 ) - RangeCut2211_g9 ) , 0.0 , 1.0 );
			float WMask3190_g9 = ( tex2DNode100_g9.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g9 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g9 = clamp( ( ( tex2DNode177_g9.g * WMask3190_g9 ) - RangeCut3210_g9 ) , 0.0 , 1.0 );
			float WMask4180_g9 = ( ( tex2DNode100_g9.r * tex2DNode100_g9.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g9 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g9 = clamp( ( ( tex2DNode177_g9.g * WMask4180_g9 ) - RangeCut4205_g9 ) , 0.0 , 1.0 );
			float WMask5184_g9 = ( ( tex2DNode100_g9.r * tex2DNode100_g9.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g9 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g9 = clamp( ( ( tex2DNode177_g9.g * WMask5184_g9 ) - RangeCut5201_g9 ) , 0.0 , 1.0 );
			float WMaskAll165_g9 = ceil( _WeatheringAll );
			float RangeCutAll171_g9 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g9 = clamp( ( ( tex2DNode177_g9.g * WMaskAll165_g9 ) - RangeCutAll171_g9 ) , 0.0 , 1.0 );
			float clampResult299_g9 = clamp( ( clampResult253_g9 + clampResult251_g9 + clampResult254_g9 + clampResult259_g9 + clampResult261_g9 + clampResult215_g9 ) , 0.0 , 1.0 );
			float lerpResult313_g9 = lerp( clampResult299_g9 , clampResult215_g9 , WMaskAll165_g9);
			float clampResult373_g9 = clamp( ( lerpResult313_g9 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g9 = clampResult373_g9;
			float3 lerpResult87_g9 = lerp( lerpResult98_g9 , WeatheringBump425_g9 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g9 ).b * WeatheringAlpha396_g9 ));
			float3 normalizeResult564_g9 = normalize( lerpResult87_g9 );
			float3 switchResult566_g9 = (((i.ASEVFace>0)?(normalizeResult564_g9):(-normalizeResult564_g9)));
			float3 NormalMix88_g9 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g9 : normalizeResult564_g9 );
			float3 temp_output_1511_557 = NormalMix88_g9;
			o.Normal = temp_output_1511_557;
			float2 uv_MainTex576_g9 = i.uv_texcoord;
			float4 tex2DNode576_g9 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g9 );
			float3 temp_output_284_0_g9 = (tex2DNode576_g9).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g9 = i.uv_texcoord;
			float4 tex2DNode196_g9 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g9 );
			float Carvature270_g9 = tex2DNode196_g9.r;
			float3 lerpResult331_g9 = lerp( ( temp_output_284_0_g9 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g9 * _CarvatureStrength ));
			float WetAlbedoOffset311_g9 = _WetAlbedoOffset;
			float3 temp_output_382_0_g9 = ( lerpResult331_g9 * WetAlbedoOffset311_g9 );
			float WetSplatsAlbedoOffset349_g9 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g9 = lerp( ( temp_output_382_0_g9 * WetSplatsAlbedoOffset349_g9 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g9 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g9 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g9 = i.uv_texcoord * appendResult287_g9 + appendResult285_g9;
			float2 WetUV578_g9 = uv_TexCoord317_g9;
			float WetSplats369_g9 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g9 ).b;
			float SplatsOp363_g9 = _WetOpacitySplats;
			float3 lerpResult460_g9 = lerp( temp_output_382_0_g9 , lerpResult411_g9 , ( ( StreaksAlpha662_g9 * WetOpStreaks673_g9 ) + ( WetSplats369_g9 * SplatsOp363_g9 ) ));
			float2 uv_OcclusionMap429_g9 = i.uv_texcoord;
			float4 tex2DNode429_g9 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g9 );
			float3 WetBodyOffset422_g9 = (_BodyColor1).rgb;
			float bodycoloralpha417_g9 = _BodyColor1.a;
			float3 lerpResult480_g9 = lerp( lerpResult460_g9 , ( tex2DNode429_g9.a == 1.0 ? lerpResult460_g9 : WetBodyOffset422_g9 ) , ( bodycoloralpha417_g9 * ( 1.0 - tex2DNode429_g9.a ) ));
			float3 lerpResult501_g9 = lerp( lerpResult331_g9 , lerpResult480_g9 , ExGloss298_g9);
			float WeatheringAlpha2466_g9 = lerpResult313_g9;
			float3 lerpResult505_g9 = lerp( lerpResult501_g9 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g9 * 0.282353 ));
			float3 DiffuseMix511_g9 = lerpResult505_g9;
			float3 temp_output_1511_0 = DiffuseMix511_g9;
			o.Albedo = temp_output_1511_0;
			float2 uv_MetallicGlossMap330_g9 = i.uv_texcoord;
			float4 tex2DNode330_g9 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g9 );
			float3 ColorTex354_g9 = temp_output_284_0_g9;
			float2 uv_ColorMask304_g9 = i.uv_texcoord;
			float4 tex2DNode304_g9 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g9 );
			float ColorMask3306_g9 = tex2DNode304_g9.g;
			float3 EC3414_g9 = ( ColorTex354_g9 * ( _EmissionStrength * ColorMask3306_g9 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g9 = EC3414_g9;
			#else
				float3 staticSwitch469_g9 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g9 = tex2DNode304_g9.r;
			float3 EC2456_g9 = ( ColorTex354_g9 * ( _EmissionStrength * ColorMask2351_g9 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g9 = EC2456_g9;
			#else
				float3 staticSwitch479_g9 = staticSwitch469_g9;
			#endif
			float ColorMask1358_g9 = ( 1.0 - ( tex2DNode304_g9.r + tex2DNode304_g9.g + tex2DNode304_g9.b ) );
			float3 EC1471_g9 = ( ColorTex354_g9 * ( _EmissionStrength * ColorMask1358_g9 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g9 = EC1471_g9;
			#else
				float3 staticSwitch498_g9 = staticSwitch479_g9;
			#endif
			float3 EmissionFinal510_g9 = ( tex2DNode330_g9.g * staticSwitch498_g9 );
			float WeatheringBumpMask706_g9 = tex2DNode177_g9.b;
			o.Emission = ( EmissionFinal510_g9 + ( ( WeatheringAlpha2466_g9 * WeatheringBumpMask706_g9 ) * _WeatheringEmission ) );
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g10 = dot( ase_tanViewDir , temp_output_1511_557 );
			float2 temp_cast_2 = (dotResult7_g10).xx;
			float3 temp_output_12_0_g10 = (SAMPLE_TEXTURE2D( _ColorRamp, sampler_ColorRamp, temp_cast_2 )).rgb;
			float temp_output_10_0_g10 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g10 = cos( temp_output_10_0_g10 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g10 = dot( _k7 , temp_output_12_0_g10 );
			float3 temp_output_32_0_g10 = ( ( ( ( ( ( temp_output_12_0_g10 * temp_output_13_0_g10 ) + ( cross( _k7 , temp_output_12_0_g10 ) * sin( temp_output_10_0_g10 ) ) + ( _k7 * dotResult14_g10 * ( 1.0 - temp_output_13_0_g10 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g10 = dot( temp_output_32_0_g10 , float3(0.39,0.59,0.11) );
			float3 temp_cast_3 = (dotResult34_g10).xxx;
			float3 lerpResult35_g10 = lerp( temp_cast_3 , temp_output_32_0_g10 , ( _IriSaturation * 2.0 ));
			float3 blendOpSrc1504 = lerpResult35_g10;
			float3 blendOpDest1504 = temp_output_1511_0;
			float lerpResult399_g9 = lerp( 1.0 , tex2DNode330_g9.r , _MetallicMask);
			float2 uv_DetailMainTex338_g9 = i.uv_texcoord;
			float4 tex2DNode338_g9 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g9 );
			float lerpResult395_g9 = lerp( 1.0 , tex2DNode330_g9.r , _MetallicMask4);
			float ColorMask4347_g9 = tex2DNode304_g9.b;
			float lerpResult462_g9 = lerp( ( lerpResult399_g9 * tex2DNode338_g9.r ) , ( lerpResult395_g9 * _Metallic4 ) , ColorMask4347_g9);
			float Detail1310_g9 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g9 ).r;
			float Detail2352_g9 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g9 ).r;
			float lerpResult495_g9 = lerp( saturate( ( ( lerpResult462_g9 - ( ( 1.0 - Detail1310_g9 ) * ( _DetailMetallicScale * DetailMask130_g9 ) ) ) - ( ( 1.0 - Detail2352_g9 ) * ( _DetailMetallicScale2 * DetailMask235_g9 ) ) ) ) , 0.0 , WeatheringAlpha2466_g9);
			float MetallicFinal512_g9 = saturate( lerpResult495_g9 );
			float temp_output_1511_559 = MetallicFinal512_g9;
			float3 lerpBlendMode1504 = lerp(blendOpDest1504,( 1.0 - ( ( 1.0 - blendOpDest1504) / max( blendOpSrc1504, 0.00001) ) ),temp_output_1511_559);
			half3 specColor1505 = (0).xxx;
			half oneMinusReflectivity1505 = 0;
			half3 diffuseAndSpecularFromMetallic1505 = DiffuseAndSpecularFromMetallic(( saturate( lerpBlendMode1504 )),temp_output_1511_559,specColor1505,oneMinusReflectivity1505);
			o.Specular = specColor1505;
			float lerpResult353_g9 = lerp( 1.0 , tex2DNode330_g9.r , _Roughness);
			float lerpResult336_g9 = lerp( 1.0 , tex2DNode330_g9.r , _Roughness4);
			float lerpResult384_g9 = lerp( ( lerpResult353_g9 * tex2DNode338_g9.b ) , ( _Glossiness4 * lerpResult336_g9 ) , ColorMask4347_g9);
			float WetGlossBase397_g9 = _WetGlossBase;
			float lerpResult470_g9 = lerp( saturate( ( ( lerpResult384_g9 - ( ( 1.0 - Detail1310_g9 ) * ( _DetailGlossScale * DetailMask130_g9 ) ) ) - ( ( 1.0 - Detail2352_g9 ) * ( _DetailGlossScale2 * DetailMask235_g9 ) ) ) ) , tex2DNode330_g9.a , ( WetGlossBase397_g9 * ExGloss298_g9 ));
			float SplatsGloss407_g9 = _WetGlossSplats;
			float lerpResult664_g9 = lerp( lerpResult470_g9 , SplatsGloss407_g9 , ( SplatsOp363_g9 * ExGloss298_g9 * WetSplats369_g9 ));
			float lerpResult649_g9 = lerp( lerpResult664_g9 , 0.87 , ( WetOpStreaks673_g9 * smoothstepResult651_g9 ));
			float lerpResult499_g9 = lerp( lerpResult649_g9 , _WeatheringGloss , WeatheringAlpha396_g9);
			float GlossinessFinal513_g9 = saturate( lerpResult499_g9 );
			o.Smoothness = GlossinessFinal513_g9;
			float2 uv_OcclusionMap623_g9 = i.uv_texcoord;
			float lerpResult483_g9 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g9 ).g , _OcculusionStrength);
			float smoothstepResult621_g9 = smoothstep( 0.0 , 0.8 , Detail1310_g9);
			float lerpResult488_g9 = lerp( 1.0 , smoothstepResult621_g9 , ( _DetailOcculusionScale * DetailMask130_g9 ));
			float smoothstepResult622_g9 = smoothstep( 0.0 , 0.8 , Detail2352_g9);
			float lerpResult494_g9 = lerp( 1.0 , smoothstepResult622_g9 , ( _DetailOcculusionScale2 * DetailMask235_g9 ));
			float lerpResult620_g9 = lerp( ( lerpResult483_g9 * lerpResult488_g9 * lerpResult494_g9 ) , 1.0 , WeatheringAlpha396_g9);
			float OcclusionMix509_g9 = saturate( lerpResult620_g9 );
			o.Occlusion = OcclusionMix509_g9;
			float3 temp_cast_4 = (_TransmissionStrength).xxx;
			o.Transmission = temp_cast_4;
			float Thickness507_g9 = tex2DNode330_g9.b;
			float3 temp_cast_5 = (( saturate( _Translucency ) * Thickness507_g9 )).xxx;
			o.Translucency = temp_cast_5;
			float AlphaInput195_g9 = tex2DNode576_g9.a;
			float OccAlpha219_g9 = tex2DNode196_g9.a;
			o.Alpha = saturate( ( ( ( AlphaInput195_g9 * _AlphaMaster ) * saturate( pow( OccAlpha219_g9 , ( _WetAlpha * ExGloss298_g9 ) ) ) ) + WeatheringAlpha2466_g9 ) );
			float clampResult592_g9 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g9 = tex2DNode196_g9.b;
			clip( ( step( pow( ( 1.0 - clampResult592_g9 ) , 0.2 ) , pow( TearingsMask340_g9 , 0.5 ) ) * AlphaInput195_g9 ) - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardSpecularCustom keepalpha fullforwardshadows exclude_path:deferred 

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
				SurfaceOutputStandardSpecularCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecularCustom, o )
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
129.2;6;1230;878;-407.6542;2569.054;2.092418;True;False
Node;AmplifyShaderEditor.FunctionNode;1511;1197.423,-1763.548;Inherit;False;AIT Clothes Alpha Function;0;;9;4853583e79bea4f4ba4a3e029903a9e1;0;0;10;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;750;FLOAT;562;FLOAT;617;FLOAT;637
Node;AmplifyShaderEditor.FunctionNode;1503;1583.581,-2027.428;Inherit;False;Iridiscence;73;;10;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1504;1843.928,-2032.178;Inherit;False;ColorBurn;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1505;2078.302,-2027.598;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1508;2419.83,-1172.63;Inherit;False;Property;_Cutoff;Cutoff;72;1;[Header];Fetch;True;1;Cutout Setting;0;0;True;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1510;2419.583,-1262.255;Half;False;Property;_ZWrite;ZWrite;88;2;[Header];[Toggle];Create;True;1;Depth Setting;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1507;2411.607,-1350.018;Inherit;False;Property;_CullMode;CullMode;89;2;[Header];[IntRange];Create;True;1;Culling Setting;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1512;2430.738,-996.0335;Inherit;False;Property;_BlendDST;BlendDST;87;1;[IntRange];Create;True;0;0;0;True;0;False;11;11;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1513;2426.646,-1083.573;Inherit;False;Property;_BlendSCR;BlendSCR;86;2;[Header];[IntRange];Create;True;1;Blending Options;0;0;True;0;False;5;5;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2445.23,-1771.036;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Iridescent Specular Clothes Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;2;True;1510;3;False;-1;False;-2.6;False;-1;1;False;-1;False;7;Custom;0;True;True;0;True;Transparent;2600;Transparent;ForwardOnly;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;255;False;-1;255;False;-1;255;False;-1;4;False;-1;0;False;-1;0;False;-1;0;False;-1;3;False;-1;0;False;-1;0;False;-1;3;False;-1;False;0;32;1;2;True;1;True;2;5;True;1513;10;True;1512;0;5;False;1466;10;False;1465;0;False;-1;0;False;1464;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;79;-1;-1;0;False;0;0;True;1507;-1;0;True;1508;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1503;1;1511;557
WireConnection;1504;0;1503;0
WireConnection;1504;1;1511;0
WireConnection;1504;2;1511;559
WireConnection;1505;0;1504;0
WireConnection;1505;1;1511;559
WireConnection;0;0;1511;0
WireConnection;0;1;1511;557
WireConnection;0;2;1511;558
WireConnection;0;3;1505;1
WireConnection;0;4;1511;560
WireConnection;0;5;1511;561
WireConnection;0;6;1511;750
WireConnection;0;7;1511;562
WireConnection;0;9;1511;617
WireConnection;0;10;1511;637
ASEEND*/
//CHKSM=F337E86C2F0CC5E352A7316198C5E62F8BE83BB9