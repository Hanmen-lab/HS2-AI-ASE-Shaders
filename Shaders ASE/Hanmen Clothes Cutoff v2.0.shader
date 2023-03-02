// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[Toggle]_DitherBlueNoise("DitherBlueNoise", Range( 0 , 1)) = 1
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
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
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Header(Dithering)][Toggle]_DitherSwitch("DitherSwitch", Range( 0 , 1)) = 1
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Header(Translucency)]
		_Translucency("Strength", Range( 0 , 50)) = 1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0.1
		_TransScattering("Scaterring Falloff", Range( 1 , 50)) = 2
		_TransDirect("Direct", Range( 0 , 1)) = 1
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.2
		_TransShadow("Shadow", Range( 0 , 1)) = 0.9
		[Header(Blending Options)][IntRange]_BlendSCR("BlendSCR", Range( 1 , 11)) = 5
		[IntRange]_BlendDST("BlendDST", Range( 1 , 11)) = 11
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Off
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR4_ON
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#endif//ASE Sampling Macros

		#pragma only_renderers d3d11_9x d3d11 
		#pragma surface surf StandardCustom keepalpha addshadow fullforwardshadows exclude_path:deferred vertex:vertexDataFunc 
		struct Input
		{
			float2 uv_texcoord;
			half ASEVFace : VFACE;
			float4 screenPosition;
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

		uniform float _Cutoff;
		uniform float _BlendSCR;
		uniform float _BlendDST;
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
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		float4 _Noise_TexelSize;
		SamplerState sampler_Noise;


		inline float Dither8x8Bayer( int x, int y )
		{
			const float dither[ 64 ] = {
				 1, 49, 13, 61,  4, 52, 16, 64,
				33, 17, 45, 29, 36, 20, 48, 32,
				 9, 57,  5, 53, 12, 60,  8, 56,
				41, 25, 37, 21, 44, 28, 40, 24,
				 3, 51, 15, 63,  2, 50, 14, 62,
				35, 19, 47, 31, 34, 18, 46, 30,
				11, 59,  7, 55, 10, 58,  6, 54,
				43, 27, 39, 23, 42, 26, 38, 22};
			int r = y * 8 + x;
			return dither[r] / 64; // same # of instructions as pre-dividing due to compiler magic
		}


		inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
		{
			float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
			float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
			dither = ( 1 - ditherRate ) * dither + ditherRate;
			return dither;
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
		}

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
			float2 uv_BumpMap402_g12 = i.uv_texcoord;
			float WetBumpOffset303_g12 = _WetBumpOffset;
			float ExGloss298_g12 = _ExGloss;
			float2 UVScale107_g12 = _UVScalePattern;
			float2 uv_TexCoord152_g12 = i.uv_texcoord * ( _DetailUV * UVScale107_g12 );
			float cos162_g12 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g12 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g12 = mul( uv_TexCoord152_g12 - float2( 0.5,0.5 ) , float2x2( cos162_g12 , -sin162_g12 , sin162_g12 , cos162_g12 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g12 = rotator162_g12;
			float2 break194_g12 = Detail1UV173_g12;
			float temp_output_186_0_g12 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g12 = (float2(( break194_g12.x + temp_output_186_0_g12 ) , break194_g12.y));
			float4 tex2DNode243_g12 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g12 );
			float2 uv_DetailMask25_g12 = i.uv_texcoord;
			float4 tex2DNode25_g12 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g12 );
			float DetailMask130_g12 = tex2DNode25_g12.r;
			float temp_output_255_0_g12 = ( DetailMask130_g12 * _DetailNormalMapScale );
			float3 appendResult300_g12 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g12 ).g - tex2DNode243_g12.g ) * temp_output_255_0_g12 )));
			float2 appendResult222_g12 = (float2(break194_g12.x , ( break194_g12.y + temp_output_186_0_g12 )));
			float3 appendResult297_g12 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g12 ).g - tex2DNode243_g12.g ) * temp_output_255_0_g12 )));
			float3 normalizeResult348_g12 = normalize( cross( appendResult300_g12 , appendResult297_g12 ) );
			float3 DetailNormal1368_g12 = normalizeResult348_g12;
			float2 uv_TexCoord16_g12 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g12 );
			float cos19_g12 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g12 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g12 = mul( uv_TexCoord16_g12 - float2( 0.5,0.5 ) , float2x2( cos19_g12 , -sin19_g12 , sin19_g12 , cos19_g12 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g12 = rotator19_g12;
			float2 break24_g12 = Detail2UV20_g12;
			float temp_output_26_0_g12 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g12 = (float2(( break24_g12.x + temp_output_26_0_g12 ) , break24_g12.y));
			float4 tex2DNode38_g12 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g12 );
			float DetailMask235_g12 = tex2DNode25_g12.g;
			float temp_output_43_0_g12 = ( DetailMask235_g12 * _DetailNormalMapScale2 );
			float3 appendResult58_g12 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g12 ).g - tex2DNode38_g12.g ) * temp_output_43_0_g12 )));
			float2 appendResult33_g12 = (float2(break24_g12.x , ( break24_g12.y + temp_output_26_0_g12 )));
			float3 appendResult57_g12 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g12 ).g - tex2DNode38_g12.g ) * temp_output_43_0_g12 )));
			float3 normalizeResult69_g12 = normalize( cross( appendResult58_g12 , appendResult57_g12 ) );
			float3 DetailNormal276_g12 = normalizeResult69_g12;
			float2 appendResult657_g12 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g12 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g12 = i.uv_texcoord * appendResult657_g12 + appendResult658_g12;
			float2 WetStrUV669_g12 = uv_TexCoord660_g12;
			float2 break547_g12 = WetStrUV669_g12;
			float temp_output_541_0_g12 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g12 = (float2(( break547_g12.x + temp_output_541_0_g12 ) , break547_g12.y));
			float4 tex2DNode515_g12 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g12 );
			float3 appendResult523_g12 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g12 ).g - tex2DNode515_g12.g ) * 1.0 )));
			float2 appendResult534_g12 = (float2(break547_g12.x , ( break547_g12.y + temp_output_541_0_g12 )));
			float3 appendResult542_g12 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g12 ).g - tex2DNode515_g12.g ) * 1.0 )));
			float3 normalizeResult524_g12 = normalize( cross( appendResult523_g12 , appendResult542_g12 ) );
			float3 WetnessNormal545_g12 = normalizeResult524_g12;
			float WetStr661_g12 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g12 ).g;
			float smoothstepResult651_g12 = smoothstep( ( 1.0 - ExGloss298_g12 ) , 1.0 , WetStr661_g12);
			float StreaksAlpha662_g12 = smoothstepResult651_g12;
			float WetOpStreaks673_g12 = _WetOpacityStreaks;
			float3 lerpResult98_g12 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g12 ), ( _Float0 + ( WetBumpOffset303_g12 * ExGloss298_g12 ) ) ) , DetailNormal1368_g12 ) , DetailNormal276_g12 ) , WetnessNormal545_g12 , ( StreaksAlpha662_g12 * WetOpStreaks673_g12 ));
			float2 appendResult115_g12 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g12 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 uv_TexCoord127_g12 = i.uv_texcoord * appendResult115_g12 + ( appendResult110_g12 / float2( 100,100 ) );
			float2 WeatheringUV144_g12 = uv_TexCoord127_g12;
			float2 break223_g12 = WeatheringUV144_g12;
			float temp_output_224_0_g12 = ( pow( 0.15 , 2.0 ) * 0.1 );
			float2 appendResult258_g12 = (float2(( break223_g12.x + temp_output_224_0_g12 ) , break223_g12.y));
			float4 tex2DNode266_g12 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g12 );
			float3 appendResult344_g12 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g12 ).b - tex2DNode266_g12.b ) * 2.0 )));
			float2 appendResult252_g12 = (float2(break223_g12.x , ( break223_g12.y + temp_output_224_0_g12 )));
			float3 appendResult339_g12 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g12 ).b - tex2DNode266_g12.b ) * 2.0 )));
			float3 normalizeResult398_g12 = normalize( cross( appendResult344_g12 , appendResult339_g12 ) );
			float3 WeatheringBump425_g12 = normalizeResult398_g12;
			float4 tex2DNode177_g12 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g12 );
			float2 uv_WeatheringMask100_g12 = i.uv_texcoord;
			float4 tex2DNode100_g12 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g12 );
			float clampResult161_g12 = clamp( ( tex2DNode100_g12.r - tex2DNode100_g12.g ) , 0.0 , 1.0 );
			float WMask1183_g12 = ( clampResult161_g12 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g12 = (( _WeatheringRange1 >= 0.51 && _WeatheringRange1 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult253_g12 = clamp( ( ( tex2DNode177_g12.g * WMask1183_g12 ) - RangeCut1208_g12 ) , 0.0 , 1.0 );
			float clampResult159_g12 = clamp( ( tex2DNode100_g12.g - tex2DNode100_g12.r ) , 0.0 , 1.0 );
			float WMask2192_g12 = ( clampResult159_g12 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g12 = (( _WeatheringRange2 >= 0.51 && _WeatheringRange2 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult251_g12 = clamp( ( ( tex2DNode177_g12.g * WMask2192_g12 ) - RangeCut2211_g12 ) , 0.0 , 1.0 );
			float WMask3190_g12 = ( tex2DNode100_g12.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g12 = (( _WeatheringRange3 >= 0.51 && _WeatheringRange3 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult254_g12 = clamp( ( ( tex2DNode177_g12.g * WMask3190_g12 ) - RangeCut3210_g12 ) , 0.0 , 1.0 );
			float WMask4180_g12 = ( ( tex2DNode100_g12.r * tex2DNode100_g12.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g12 = (( _WeatheringRange4 >= 0.51 && _WeatheringRange4 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult259_g12 = clamp( ( ( tex2DNode177_g12.g * WMask4180_g12 ) - RangeCut4205_g12 ) , 0.0 , 1.0 );
			float WMask5184_g12 = ( ( tex2DNode100_g12.r * tex2DNode100_g12.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g12 = (( _WeatheringRange5 >= 0.51 && _WeatheringRange5 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult261_g12 = clamp( ( ( tex2DNode177_g12.g * WMask5184_g12 ) - RangeCut5201_g12 ) , 0.0 , 1.0 );
			float WMaskAll165_g12 = ceil( _WeatheringAll );
			float RangeCutAll171_g12 = (( _WeatheringAll >= 0.51 && _WeatheringAll <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult215_g12 = clamp( ( ( tex2DNode177_g12.g * WMaskAll165_g12 ) - RangeCutAll171_g12 ) , 0.0 , 1.0 );
			float clampResult299_g12 = clamp( ( clampResult253_g12 + clampResult251_g12 + clampResult254_g12 + clampResult259_g12 + clampResult261_g12 + clampResult215_g12 ) , 0.0 , 1.0 );
			float lerpResult313_g12 = lerp( clampResult299_g12 , clampResult215_g12 , WMaskAll165_g12);
			float clampResult373_g12 = clamp( ( lerpResult313_g12 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g12 = clampResult373_g12;
			float3 lerpResult87_g12 = lerp( lerpResult98_g12 , WeatheringBump425_g12 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g12 ).b * WeatheringAlpha396_g12 ));
			float3 normalizeResult564_g12 = normalize( lerpResult87_g12 );
			float3 switchResult566_g12 = (((i.ASEVFace>0)?(normalizeResult564_g12):(-normalizeResult564_g12)));
			float3 NormalMix88_g12 = switchResult566_g12;
			o.Normal = NormalMix88_g12;
			float2 uv_MainTex576_g12 = i.uv_texcoord;
			float4 tex2DNode576_g12 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g12 );
			float3 temp_output_284_0_g12 = (tex2DNode576_g12).rgb;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap196_g12 = i.uv_texcoord;
			float4 tex2DNode196_g12 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g12 );
			float Carvature270_g12 = tex2DNode196_g12.r;
			float3 lerpResult331_g12 = lerp( ( temp_output_284_0_g12 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g12 * _CarvatureStrength ));
			float WetAlbedoOffset311_g12 = _WetAlbedoOffset;
			float3 temp_output_382_0_g12 = ( lerpResult331_g12 * WetAlbedoOffset311_g12 );
			float WetSplatsAlbedoOffset349_g12 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g12 = lerp( ( temp_output_382_0_g12 * WetSplatsAlbedoOffset349_g12 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g12 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g12 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g12 = i.uv_texcoord * appendResult287_g12 + appendResult285_g12;
			float2 WetUV578_g12 = uv_TexCoord317_g12;
			float WetSplats369_g12 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g12 ).b;
			float SplatsOp363_g12 = _WetOpacitySplats;
			float3 lerpResult460_g12 = lerp( temp_output_382_0_g12 , lerpResult411_g12 , ( ( StreaksAlpha662_g12 * WetOpStreaks673_g12 ) + ( WetSplats369_g12 * SplatsOp363_g12 ) ));
			float2 uv_OcclusionMap429_g12 = i.uv_texcoord;
			float4 tex2DNode429_g12 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g12 );
			float3 WetBodyOffset422_g12 = (_BodyColor1).rgb;
			float bodycoloralpha417_g12 = _BodyColor1.a;
			float3 lerpResult480_g12 = lerp( lerpResult460_g12 , ( tex2DNode429_g12.a == 1.0 ? lerpResult460_g12 : WetBodyOffset422_g12 ) , ( bodycoloralpha417_g12 * ( 1.0 - tex2DNode429_g12.a ) ));
			float3 lerpResult501_g12 = lerp( lerpResult331_g12 , lerpResult480_g12 , ExGloss298_g12);
			float WeatheringAlpha2466_g12 = lerpResult313_g12;
			float3 lerpResult505_g12 = lerp( lerpResult501_g12 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g12 * 0.282353 ));
			float3 DiffuseMix511_g12 = lerpResult505_g12;
			o.Albedo = DiffuseMix511_g12;
			float2 uv_MetallicGlossMap330_g12 = i.uv_texcoord;
			float4 tex2DNode330_g12 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g12 );
			float3 ColorTex354_g12 = temp_output_284_0_g12;
			float2 uv_ColorMask304_g12 = i.uv_texcoord;
			float4 tex2DNode304_g12 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g12 );
			float ColorMask3306_g12 = tex2DNode304_g12.g;
			float3 EC3414_g12 = ( ColorTex354_g12 * ( _EmissionStrength * ColorMask3306_g12 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g12 = EC3414_g12;
			#else
				float3 staticSwitch469_g12 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g12 = tex2DNode304_g12.r;
			float3 EC2456_g12 = ( ColorTex354_g12 * ( _EmissionStrength * ColorMask2351_g12 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g12 = EC2456_g12;
			#else
				float3 staticSwitch479_g12 = staticSwitch469_g12;
			#endif
			float ColorMask1358_g12 = ( 1.0 - ( tex2DNode304_g12.r + tex2DNode304_g12.g + tex2DNode304_g12.b ) );
			float3 EC1471_g12 = ( ColorTex354_g12 * ( _EmissionStrength * ColorMask1358_g12 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g12 = EC1471_g12;
			#else
				float3 staticSwitch498_g12 = staticSwitch479_g12;
			#endif
			float3 EmissionFinal510_g12 = ( tex2DNode330_g12.g * staticSwitch498_g12 );
			o.Emission = EmissionFinal510_g12;
			float lerpResult399_g12 = lerp( 1.0 , tex2DNode330_g12.r , _MetallicMask);
			float2 uv_DetailMainTex338_g12 = i.uv_texcoord;
			float4 tex2DNode338_g12 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g12 );
			float lerpResult395_g12 = lerp( 1.0 , tex2DNode330_g12.r , _MetallicMask4);
			float ColorMask4347_g12 = tex2DNode304_g12.b;
			float lerpResult462_g12 = lerp( ( lerpResult399_g12 * tex2DNode338_g12.r ) , ( lerpResult395_g12 * _Metallic4 ) , ColorMask4347_g12);
			float Detail1310_g12 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g12 ).r;
			float Detail2352_g12 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g12 ).r;
			float lerpResult495_g12 = lerp( ( ( lerpResult462_g12 - ( ( 1.0 - Detail1310_g12 ) * ( _DetailMetallicScale * DetailMask130_g12 ) ) ) - ( ( 1.0 - Detail2352_g12 ) * ( _DetailMetallicScale2 * DetailMask235_g12 ) ) ) , 0.0 , WeatheringAlpha2466_g12);
			float MetallicFinal512_g12 = saturate( lerpResult495_g12 );
			o.Metallic = MetallicFinal512_g12;
			float lerpResult353_g12 = lerp( 1.0 , tex2DNode330_g12.r , _Roughness);
			float lerpResult336_g12 = lerp( 1.0 , tex2DNode330_g12.r , _Roughness4);
			float lerpResult384_g12 = lerp( ( lerpResult353_g12 * tex2DNode338_g12.b ) , ( _Glossiness4 * lerpResult336_g12 ) , ColorMask4347_g12);
			float WetGlossBase397_g12 = _WetGlossBase;
			float lerpResult470_g12 = lerp( ( ( lerpResult384_g12 - ( ( 1.0 - Detail1310_g12 ) * ( _DetailGlossScale * DetailMask130_g12 ) ) ) - ( ( 1.0 - Detail2352_g12 ) * ( _DetailGlossScale2 * DetailMask235_g12 ) ) ) , tex2DNode330_g12.a , ( WetGlossBase397_g12 * ExGloss298_g12 ));
			float SplatsGloss407_g12 = _WetGlossSplats;
			float lerpResult664_g12 = lerp( lerpResult470_g12 , SplatsGloss407_g12 , ( SplatsOp363_g12 * ExGloss298_g12 * WetSplats369_g12 ));
			float lerpResult649_g12 = lerp( lerpResult664_g12 , 0.87 , ( WetOpStreaks673_g12 * smoothstepResult651_g12 ));
			float lerpResult499_g12 = lerp( lerpResult649_g12 , 0.8 , WeatheringAlpha396_g12);
			float GlossinessFinal513_g12 = saturate( lerpResult499_g12 );
			o.Smoothness = GlossinessFinal513_g12;
			float2 uv_OcclusionMap623_g12 = i.uv_texcoord;
			float lerpResult483_g12 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g12 ).g , _OcculusionStrength);
			float smoothstepResult621_g12 = smoothstep( 0.0 , 0.8 , Detail1310_g12);
			float lerpResult488_g12 = lerp( 1.0 , smoothstepResult621_g12 , ( _DetailOcculusionScale * DetailMask130_g12 ));
			float smoothstepResult622_g12 = smoothstep( 0.0 , 0.8 , Detail2352_g12);
			float lerpResult494_g12 = lerp( 1.0 , smoothstepResult622_g12 , ( _DetailOcculusionScale2 * DetailMask235_g12 ));
			float lerpResult620_g12 = lerp( ( lerpResult483_g12 * lerpResult488_g12 * lerpResult494_g12 ) , 1.0 , WeatheringAlpha396_g12);
			float OcclusionMix509_g12 = saturate( lerpResult620_g12 );
			o.Occlusion = OcclusionMix509_g12;
			float Thickness507_g12 = tex2DNode330_g12.b;
			float3 temp_cast_1 = (( ( _Translucency / 10.0 ) * Thickness507_g12 )).xxx;
			o.Translucency = temp_cast_1;
			o.Alpha = 1;
			float BlueNoise643_g12 = _DitherBlueNoise;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen629_g12 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither629_g12 = Dither8x8Bayer( fmod(clipScreen629_g12.x, 8), fmod(clipScreen629_g12.y, 8) );
			float2 clipScreen641_g12 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither641_g12 = Dither8x8Bayer( fmod(clipScreen641_g12.x, 8), fmod(clipScreen641_g12.y, 8) );
			float AlphaInput195_g12 = tex2DNode576_g12.a;
			dither641_g12 = step( dither641_g12, AlphaInput195_g12 );
			float dither640_g12 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither640_g12 = step( dither640_g12, AlphaInput195_g12 );
			float OccAlpha219_g12 = tex2DNode196_g12.a;
			float temp_output_593_0_g12 = saturate( pow( OccAlpha219_g12 , ( _WetAlpha * ExGloss298_g12 ) ) );
			float temp_output_598_0_g12 = ( ( ( _DitherSwitch > 0.0 ? ( BlueNoise643_g12 == 0.0 ? dither641_g12 : dither640_g12 ) : AlphaInput195_g12 ) * _AlphaMaster ) * temp_output_593_0_g12 );
			dither629_g12 = step( dither629_g12, temp_output_598_0_g12 );
			float dither630_g12 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither630_g12 = step( dither630_g12, temp_output_598_0_g12 );
			float clampResult592_g12 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g12 = tex2DNode196_g12.b;
			float temp_output_602_0_g12 = step( pow( ( 1.0 - clampResult592_g12 ) , 0.2 ) , pow( TearingsMask340_g12 , 0.5 ) );
			clip( saturate( ( ( ( BlueNoise643_g12 == 0.0 ? dither629_g12 : dither630_g12 ) + WeatheringAlpha2466_g12 ) * temp_output_602_0_g12 ) ) - _Cutoff );
		}

		ENDCG
	}
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
99.2;70.4;1230;814;-1199.155;1801.635;2.441549;True;False
Node;AmplifyShaderEditor.RangedFloatNode;1546;3580.156,-823.86;Inherit;False;Property;_Cutoff;Cutoff;70;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.5;0.541;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1550;2873.941,-990.8857;Inherit;False;Property;_BlendSCR;BlendSCR;78;2;[Header];[IntRange];Create;True;1;Blending Options;0;0;True;0;False;5;5;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1549;2871.81,-909.3183;Inherit;False;Property;_BlendDST;BlendDST;79;1;[IntRange];Create;True;0;0;0;True;0;False;11;11;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1559;2863.307,-1272.695;Inherit;False;AIT Clothes Function;0;;12;d0644e5becc3a6145ad3ab18b1d3f488;0;0;9;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;562;FLOAT;617;FLOAT;637
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;3587.755,-1271.375;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Clothes True Cutoff;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;1;True;1551;3;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.541;True;True;0;False;TransparentCutout;2450;AlphaTest;ForwardOnly;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;5;True;1550;10;True;1549;2;5;False;-1;10;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;71;-1;-1;0;False;0;0;False;1210;-1;0;True;1546;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;1559;0
WireConnection;0;1;1559;557
WireConnection;0;2;1559;558
WireConnection;0;3;1559;559
WireConnection;0;4;1559;560
WireConnection;0;5;1559;561
WireConnection;0;7;1559;562
WireConnection;0;10;1559;637
ASEEND*/
//CHKSM=8B3EA289609A97F59F83698768C4437FB6544559
