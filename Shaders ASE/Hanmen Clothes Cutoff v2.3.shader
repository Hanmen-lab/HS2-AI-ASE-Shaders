// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
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
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.95
		_WeatheringEmission("WeatheringEmission", Range( 0 , 1)) = 0.2
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
		[Header(Dithering)][Toggle]_DitherSwitch("DitherSwitch", Range( 0 , 1)) = 1
		[Toggle]_DitherBlueNoise("DitherBlueNoise", Range( 0 , 1)) = 1
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		[HideInInspector][Header(Translucency)]_Translucency("Translucency", Range( 0 , 1)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Header(Translucency)]
		_Translucency("Strength", Range( 0 , 50)) = 1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0.1
		_TransScattering("Scaterring Falloff", Range( 1 , 50)) = 2
		_TransDirect("Direct", Range( 0 , 1)) = 1
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.2
		_TransShadow("Shadow", Range( 0 , 1)) = 0.9
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
		uniform float4 _WetColor;
		uniform float2 _DetailUV;
		uniform float4 _WeatheringAlbedo;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float2 _UVScalePattern;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		uniform float _Float0;
		uniform float4 _WetStreaksUV;
		uniform float _DetailNormalMapScale;
		uniform float _DetailMetallicScale2;
		SamplerState sampler_MetallicGlossMap2;
		uniform float _DetailUVRotator;
		uniform float _AlphaEx;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _WeatheringRange3;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange5;
		uniform float _WeatheringRange4;
		uniform float _WeatheringGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float2 _DetailUV2;
		uniform float2 _patternuvbase;
		uniform float _CarvatureStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _ExGloss;
		uniform float _DetailUV2Rotator;
		uniform float4 _EmissionColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		SamplerState sampler_DetailMainTex;
		uniform float _EmissionStrength;
		uniform float _Metallic4;
		uniform float4 _BaseColor;
		uniform float _WetOpacityStreaks;
		uniform float _WetSplatsAlbedoOffset;
		uniform float _WetBumpOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float4 _WetUV;
		uniform float _WetAlbedoOffset;
		uniform float4 _Color;
		uniform float _WetAlpha;
		uniform float4 _WeatheringUV;
		uniform float _WetOpacitySplats;
		uniform float _DetailNormalMapScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _WetGlossSplats;
		uniform float4 _BodyColor1;
		uniform float _DetailGlossScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _DetailMetallicScale;
		uniform float _AlphaMaster;
		uniform half _DitherSwitch;
		uniform float _DitherBlueNoise;
		uniform float _WetGlossBase;
		uniform float _WeatheringUVSeed;
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
			float2 uv_BumpMap402_g72 = i.uv_texcoord;
			float WetBumpOffset303_g72 = _WetBumpOffset;
			float ExGloss298_g72 = _ExGloss;
			float2 UVScale107_g72 = _UVScalePattern;
			float2 uv_TexCoord152_g72 = i.uv_texcoord * ( _DetailUV * UVScale107_g72 );
			float cos162_g72 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g72 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g72 = mul( uv_TexCoord152_g72 - float2( 0.5,0.5 ) , float2x2( cos162_g72 , -sin162_g72 , sin162_g72 , cos162_g72 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g72 = rotator162_g72;
			float2 break194_g72 = Detail1UV173_g72;
			float temp_output_186_0_g72 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g72 = (float2(( break194_g72.x + temp_output_186_0_g72 ) , break194_g72.y));
			float4 tex2DNode243_g72 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g72 );
			float2 uv_DetailMask25_g72 = i.uv_texcoord;
			float4 tex2DNode25_g72 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g72 );
			float DetailMask130_g72 = tex2DNode25_g72.r;
			float temp_output_255_0_g72 = ( DetailMask130_g72 * _DetailNormalMapScale );
			float3 appendResult300_g72 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g72 ).g - tex2DNode243_g72.g ) * temp_output_255_0_g72 )));
			float2 appendResult222_g72 = (float2(break194_g72.x , ( break194_g72.y + temp_output_186_0_g72 )));
			float3 appendResult297_g72 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g72 ).g - tex2DNode243_g72.g ) * temp_output_255_0_g72 )));
			float3 normalizeResult348_g72 = normalize( cross( appendResult300_g72 , appendResult297_g72 ) );
			float3 DetailNormal1368_g72 = normalizeResult348_g72;
			float2 uv_TexCoord16_g72 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g72 );
			float cos19_g72 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g72 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g72 = mul( uv_TexCoord16_g72 - float2( 0.5,0.5 ) , float2x2( cos19_g72 , -sin19_g72 , sin19_g72 , cos19_g72 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g72 = rotator19_g72;
			float2 break24_g72 = Detail2UV20_g72;
			float temp_output_26_0_g72 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g72 = (float2(( break24_g72.x + temp_output_26_0_g72 ) , break24_g72.y));
			float4 tex2DNode38_g72 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g72 );
			float DetailMask235_g72 = tex2DNode25_g72.g;
			float temp_output_43_0_g72 = ( DetailMask235_g72 * _DetailNormalMapScale2 );
			float3 appendResult58_g72 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g72 ).g - tex2DNode38_g72.g ) * temp_output_43_0_g72 )));
			float2 appendResult33_g72 = (float2(break24_g72.x , ( break24_g72.y + temp_output_26_0_g72 )));
			float3 appendResult57_g72 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g72 ).g - tex2DNode38_g72.g ) * temp_output_43_0_g72 )));
			float3 normalizeResult69_g72 = normalize( cross( appendResult58_g72 , appendResult57_g72 ) );
			float3 DetailNormal276_g72 = normalizeResult69_g72;
			float2 appendResult657_g72 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g72 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g72 = i.uv_texcoord * appendResult657_g72 + appendResult658_g72;
			float2 WetStrUV669_g72 = uv_TexCoord660_g72;
			float2 break547_g72 = WetStrUV669_g72;
			float temp_output_541_0_g72 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g72 = (float2(( break547_g72.x + temp_output_541_0_g72 ) , break547_g72.y));
			float4 tex2DNode515_g72 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g72 );
			float3 appendResult523_g72 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g72 ).g - tex2DNode515_g72.g ) * 1.0 )));
			float2 appendResult534_g72 = (float2(break547_g72.x , ( break547_g72.y + temp_output_541_0_g72 )));
			float3 appendResult542_g72 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g72 ).g - tex2DNode515_g72.g ) * 1.0 )));
			float3 normalizeResult524_g72 = normalize( cross( appendResult523_g72 , appendResult542_g72 ) );
			float3 WetnessNormal545_g72 = normalizeResult524_g72;
			float WetStr661_g72 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g72 ).g;
			float smoothstepResult651_g72 = smoothstep( ( 1.0 - ExGloss298_g72 ) , 1.0 , WetStr661_g72);
			float StreaksAlpha662_g72 = smoothstepResult651_g72;
			float WetOpStreaks673_g72 = _WetOpacityStreaks;
			float3 lerpResult98_g72 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g72 ), ( _Float0 + ( WetBumpOffset303_g72 * ExGloss298_g72 ) ) ) , DetailNormal1368_g72 ) , DetailNormal276_g72 ) , WetnessNormal545_g72 , ( StreaksAlpha662_g72 * WetOpStreaks673_g72 ));
			float2 appendResult115_g72 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g72 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult731_g72 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult737_g72 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g72 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g72 = i.uv_texcoord * appendResult115_g72 + ( appendResult110_g72 + lerpResult737_g72 );
			float2 WeatheringUV144_g72 = uv_TexCoord127_g72;
			float2 break223_g72 = WeatheringUV144_g72;
			float temp_output_224_0_g72 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g72 = (float2(( break223_g72.x + temp_output_224_0_g72 ) , break223_g72.y));
			float4 tex2DNode266_g72 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g72 );
			float3 appendResult344_g72 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g72 ).b - tex2DNode266_g72.b ) * 2.0 )));
			float2 appendResult252_g72 = (float2(break223_g72.x , ( break223_g72.y + temp_output_224_0_g72 )));
			float3 appendResult339_g72 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g72 ).b - tex2DNode266_g72.b ) * 2.0 )));
			float3 normalizeResult398_g72 = normalize( cross( appendResult344_g72 , appendResult339_g72 ) );
			float3 WeatheringBump425_g72 = normalizeResult398_g72;
			float4 tex2DNode177_g72 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g72 );
			float2 uv_WeatheringMask100_g72 = i.uv_texcoord;
			float4 tex2DNode100_g72 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g72 );
			float clampResult161_g72 = clamp( ( tex2DNode100_g72.r - tex2DNode100_g72.g ) , 0.0 , 1.0 );
			float WMask1183_g72 = ( clampResult161_g72 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g72 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g72 = clamp( ( ( tex2DNode177_g72.g * WMask1183_g72 ) - RangeCut1208_g72 ) , 0.0 , 1.0 );
			float clampResult159_g72 = clamp( ( tex2DNode100_g72.g - tex2DNode100_g72.r ) , 0.0 , 1.0 );
			float WMask2192_g72 = ( clampResult159_g72 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g72 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g72 = clamp( ( ( tex2DNode177_g72.g * WMask2192_g72 ) - RangeCut2211_g72 ) , 0.0 , 1.0 );
			float WMask3190_g72 = ( tex2DNode100_g72.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g72 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g72 = clamp( ( ( tex2DNode177_g72.g * WMask3190_g72 ) - RangeCut3210_g72 ) , 0.0 , 1.0 );
			float WMask4180_g72 = ( ( tex2DNode100_g72.r * tex2DNode100_g72.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g72 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g72 = clamp( ( ( tex2DNode177_g72.g * WMask4180_g72 ) - RangeCut4205_g72 ) , 0.0 , 1.0 );
			float WMask5184_g72 = ( ( tex2DNode100_g72.r * tex2DNode100_g72.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g72 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g72 = clamp( ( ( tex2DNode177_g72.g * WMask5184_g72 ) - RangeCut5201_g72 ) , 0.0 , 1.0 );
			float WMaskAll165_g72 = ceil( _WeatheringAll );
			float RangeCutAll171_g72 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g72 = clamp( ( ( tex2DNode177_g72.g * WMaskAll165_g72 ) - RangeCutAll171_g72 ) , 0.0 , 1.0 );
			float clampResult299_g72 = clamp( ( clampResult253_g72 + clampResult251_g72 + clampResult254_g72 + clampResult259_g72 + clampResult261_g72 + clampResult215_g72 ) , 0.0 , 1.0 );
			float lerpResult313_g72 = lerp( clampResult299_g72 , clampResult215_g72 , WMaskAll165_g72);
			float clampResult373_g72 = clamp( ( lerpResult313_g72 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g72 = clampResult373_g72;
			float3 lerpResult87_g72 = lerp( lerpResult98_g72 , WeatheringBump425_g72 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g72 ).b * WeatheringAlpha396_g72 ));
			float3 normalizeResult564_g72 = normalize( lerpResult87_g72 );
			float3 switchResult566_g72 = (((i.ASEVFace>0)?(normalizeResult564_g72):(-normalizeResult564_g72)));
			float3 NormalMix88_g72 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g72 : normalizeResult564_g72 );
			o.Normal = NormalMix88_g72;
			float2 uv_MainTex576_g72 = i.uv_texcoord;
			float4 tex2DNode576_g72 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g72 );
			float3 temp_output_284_0_g72 = (tex2DNode576_g72).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g72 = i.uv_texcoord;
			float4 tex2DNode196_g72 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g72 );
			float Carvature270_g72 = tex2DNode196_g72.r;
			float3 lerpResult331_g72 = lerp( ( temp_output_284_0_g72 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g72 * _CarvatureStrength ));
			float WetAlbedoOffset311_g72 = _WetAlbedoOffset;
			float3 temp_output_382_0_g72 = ( lerpResult331_g72 * WetAlbedoOffset311_g72 );
			float WetSplatsAlbedoOffset349_g72 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g72 = lerp( ( temp_output_382_0_g72 * WetSplatsAlbedoOffset349_g72 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g72 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g72 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g72 = i.uv_texcoord * appendResult287_g72 + appendResult285_g72;
			float2 WetUV578_g72 = uv_TexCoord317_g72;
			float WetSplats369_g72 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g72 ).b;
			float SplatsOp363_g72 = _WetOpacitySplats;
			float3 lerpResult460_g72 = lerp( temp_output_382_0_g72 , lerpResult411_g72 , ( ( StreaksAlpha662_g72 * WetOpStreaks673_g72 ) + ( WetSplats369_g72 * SplatsOp363_g72 ) ));
			float2 uv_OcclusionMap429_g72 = i.uv_texcoord;
			float4 tex2DNode429_g72 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g72 );
			float3 WetBodyOffset422_g72 = (_BodyColor1).rgb;
			float bodycoloralpha417_g72 = _BodyColor1.a;
			float3 lerpResult480_g72 = lerp( lerpResult460_g72 , ( tex2DNode429_g72.a == 1.0 ? lerpResult460_g72 : WetBodyOffset422_g72 ) , ( bodycoloralpha417_g72 * ( 1.0 - tex2DNode429_g72.a ) ));
			float3 lerpResult501_g72 = lerp( lerpResult331_g72 , lerpResult480_g72 , ExGloss298_g72);
			float WeatheringAlpha2466_g72 = lerpResult313_g72;
			float3 lerpResult505_g72 = lerp( lerpResult501_g72 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g72 * 0.282353 ));
			float3 DiffuseMix511_g72 = lerpResult505_g72;
			o.Albedo = DiffuseMix511_g72;
			float2 uv_MetallicGlossMap330_g72 = i.uv_texcoord;
			float4 tex2DNode330_g72 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g72 );
			float3 ColorTex354_g72 = temp_output_284_0_g72;
			float2 uv_ColorMask304_g72 = i.uv_texcoord;
			float4 tex2DNode304_g72 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g72 );
			float ColorMask3306_g72 = tex2DNode304_g72.g;
			float3 EC3414_g72 = ( ColorTex354_g72 * ( _EmissionStrength * ColorMask3306_g72 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g72 = EC3414_g72;
			#else
				float3 staticSwitch469_g72 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g72 = tex2DNode304_g72.r;
			float3 EC2456_g72 = ( ColorTex354_g72 * ( _EmissionStrength * ColorMask2351_g72 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g72 = EC2456_g72;
			#else
				float3 staticSwitch479_g72 = staticSwitch469_g72;
			#endif
			float ColorMask1358_g72 = ( 1.0 - ( tex2DNode304_g72.r + tex2DNode304_g72.g + tex2DNode304_g72.b ) );
			float3 EC1471_g72 = ( ColorTex354_g72 * ( _EmissionStrength * ColorMask1358_g72 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g72 = EC1471_g72;
			#else
				float3 staticSwitch498_g72 = staticSwitch479_g72;
			#endif
			float3 EmissionFinal510_g72 = ( tex2DNode330_g72.g * staticSwitch498_g72 );
			float WeatheringBumpMask718_g72 = tex2DNode177_g72.b;
			o.Emission = ( EmissionFinal510_g72 + ( ( WeatheringAlpha2466_g72 * WeatheringBumpMask718_g72 ) * _WeatheringEmission ) );
			float lerpResult399_g72 = lerp( 1.0 , tex2DNode330_g72.r , _MetallicMask);
			float2 uv_DetailMainTex338_g72 = i.uv_texcoord;
			float4 tex2DNode338_g72 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g72 );
			float lerpResult395_g72 = lerp( 1.0 , tex2DNode330_g72.r , _MetallicMask4);
			float ColorMask4347_g72 = tex2DNode304_g72.b;
			float lerpResult462_g72 = lerp( ( lerpResult399_g72 * tex2DNode338_g72.r ) , ( lerpResult395_g72 * _Metallic4 ) , ColorMask4347_g72);
			float Detail1310_g72 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g72 ).r;
			float Detail2352_g72 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g72 ).r;
			float lerpResult495_g72 = lerp( saturate( ( ( lerpResult462_g72 - ( ( 1.0 - Detail1310_g72 ) * ( _DetailMetallicScale * DetailMask130_g72 ) ) ) - ( ( 1.0 - Detail2352_g72 ) * ( _DetailMetallicScale2 * DetailMask235_g72 ) ) ) ) , 0.0 , WeatheringAlpha2466_g72);
			float MetallicFinal512_g72 = saturate( lerpResult495_g72 );
			o.Metallic = MetallicFinal512_g72;
			float lerpResult353_g72 = lerp( 1.0 , tex2DNode330_g72.r , _Roughness);
			float lerpResult336_g72 = lerp( 1.0 , tex2DNode330_g72.r , _Roughness4);
			float lerpResult384_g72 = lerp( ( lerpResult353_g72 * tex2DNode338_g72.b ) , ( _Glossiness4 * lerpResult336_g72 ) , ColorMask4347_g72);
			float WetGlossBase397_g72 = _WetGlossBase;
			float lerpResult470_g72 = lerp( saturate( ( ( lerpResult384_g72 - ( ( 1.0 - Detail1310_g72 ) * ( _DetailGlossScale * DetailMask130_g72 ) ) ) - ( ( 1.0 - Detail2352_g72 ) * ( _DetailGlossScale2 * DetailMask235_g72 ) ) ) ) , tex2DNode330_g72.a , ( WetGlossBase397_g72 * ExGloss298_g72 ));
			float SplatsGloss407_g72 = _WetGlossSplats;
			float lerpResult664_g72 = lerp( lerpResult470_g72 , SplatsGloss407_g72 , ( SplatsOp363_g72 * ExGloss298_g72 * WetSplats369_g72 ));
			float lerpResult649_g72 = lerp( lerpResult664_g72 , 0.87 , ( WetOpStreaks673_g72 * smoothstepResult651_g72 ));
			float lerpResult499_g72 = lerp( lerpResult649_g72 , _WeatheringGloss , WeatheringAlpha396_g72);
			float GlossinessFinal513_g72 = saturate( lerpResult499_g72 );
			o.Smoothness = GlossinessFinal513_g72;
			float2 uv_OcclusionMap623_g72 = i.uv_texcoord;
			float lerpResult483_g72 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g72 ).g , _OcculusionStrength);
			float smoothstepResult621_g72 = smoothstep( 0.0 , 0.8 , Detail1310_g72);
			float lerpResult488_g72 = lerp( 1.0 , smoothstepResult621_g72 , ( _DetailOcculusionScale * DetailMask130_g72 ));
			float smoothstepResult622_g72 = smoothstep( 0.0 , 0.8 , Detail2352_g72);
			float lerpResult494_g72 = lerp( 1.0 , smoothstepResult622_g72 , ( _DetailOcculusionScale2 * DetailMask235_g72 ));
			float lerpResult620_g72 = lerp( ( lerpResult483_g72 * lerpResult488_g72 * lerpResult494_g72 ) , 1.0 , WeatheringAlpha396_g72);
			float OcclusionMix509_g72 = saturate( lerpResult620_g72 );
			o.Occlusion = OcclusionMix509_g72;
			float Thickness507_g72 = tex2DNode330_g72.b;
			float3 temp_cast_2 = (( ( _Translucency / 10.0 ) * Thickness507_g72 )).xxx;
			o.Translucency = temp_cast_2;
			o.Alpha = 1;
			float clampResult592_g72 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g72 = tex2DNode196_g72.b;
			float BlueNoise643_g72 = _DitherBlueNoise;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen691_g72 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither691_g72 = Dither8x8Bayer( fmod(clipScreen691_g72.x, 8), fmod(clipScreen691_g72.y, 8) );
			float AlphaInput195_g72 = tex2DNode576_g72.a;
			dither691_g72 = step( dither691_g72, AlphaInput195_g72 );
			float dither692_g72 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither692_g72 = step( dither692_g72, AlphaInput195_g72 );
			float2 clipScreen629_g72 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither629_g72 = Dither8x8Bayer( fmod(clipScreen629_g72.x, 8), fmod(clipScreen629_g72.y, 8) );
			float OccAlpha219_g72 = tex2DNode196_g72.a;
			float temp_output_703_0_g72 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g72 , ( _WetAlpha * ExGloss298_g72 ) ) ) ) + WeatheringAlpha2466_g72 );
			dither629_g72 = step( dither629_g72, temp_output_703_0_g72 );
			float dither630_g72 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither630_g72 = step( dither630_g72, temp_output_703_0_g72 );
			clip( ( ( step( pow( ( 1.0 - clampResult592_g72 ) , 0.2 ) , pow( TearingsMask340_g72 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g72 == 0.0 ? dither691_g72 : dither692_g72 ) : AlphaInput195_g72 ) ) * ( BlueNoise643_g72 == 0.0 ? dither629_g72 : dither630_g72 ) ) - _Cutoff );
		}

		ENDCG
	}
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
-188.4;387.2;1230;884;-1584.547;1740.171;2.126041;True;False
Node;AmplifyShaderEditor.RangedFloatNode;1546;2825.757,-1027.499;Inherit;False;Property;_Cutoff;Cutoff;74;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.5;0.066;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1613;2851.307,-1276.908;Inherit;False;AIT Clothes Function;0;;72;d0644e5becc3a6145ad3ab18b1d3f488;0;1;683;FLOAT;0;False;8;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;562;FLOAT;637
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;3587.755,-1271.375;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Clothes True Cutoff;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;1;True;1551;3;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.066;True;True;0;False;TransparentCutout;2450;AlphaTest;ForwardOnly;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;5;True;1550;10;True;1549;2;5;False;-1;10;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;75;-1;-1;0;False;0;0;False;1210;-1;0;True;1546;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;1613;0
WireConnection;0;1;1613;557
WireConnection;0;2;1613;558
WireConnection;0;3;1613;559
WireConnection;0;4;1613;560
WireConnection;0;5;1613;561
WireConnection;0;7;1613;562
WireConnection;0;10;1613;637
ASEEND*/
//CHKSM=9D5FA24210748C889D603D8A27ED5E7C2816E793
