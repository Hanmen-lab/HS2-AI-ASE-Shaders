// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
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
		[Toggle]_DitherBlueNoise("DitherBlueNoise", Range( 0 , 1)) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		[HideInInspector][Header(Translucency)]_Translucency("Translucency", Range( 0 , 1)) = 1
		_TransmissionStrength("TransmissionStrength", Range( 0 , 5)) = 1
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
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
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
			half3 Transmission;
			half3 Translucency;
		};

		uniform float _Cutoff;
		uniform float4 _WetColor;
		uniform float2 _UVScalePattern;
		uniform float2 _DetailUV;
		uniform float4 _WeatheringAlbedo;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float _DetailNormalMapScale;
		uniform float4 _WetStreaksUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap2;
		uniform float4 _Color;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange5;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _WeatheringRange3;
		uniform float _DitherBlueNoise;
		uniform float _WeatheringRange4;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange2;
		uniform float _WeatheringGloss;
		uniform float _AlphaEx;
		SamplerState sampler_MetallicGlossMap;
		uniform float _Float0;
		uniform float _CarvatureStrength;
		uniform float2 _patternuvbase;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _DetailMetallicScale2;
		uniform half _DitherSwitch;
		uniform float2 _DetailUV2;
		uniform float _DetailNormalMapScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _ExGloss;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform float4 _EmissionColor;
		SamplerState sampler_DetailMainTex;
		uniform float _DetailUV2Rotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float4 _BaseColor;
		uniform float _Metallic4;
		uniform float _EmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _WetOpacitySplats;
		uniform float _WetBumpOffset;
		uniform float _WetOpacityStreaks;
		uniform float _WetAlbedoOffset;
		uniform float4 _WetUV;
		uniform float _DetailGlossScale2;
		uniform float _WetAlpha;
		uniform float4 _WeatheringUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _AlphaMaster;
		uniform float _WetGlossSplats;
		uniform float _WetGlossBase;
		uniform float4 _BodyColor1;
		uniform float _WetSplatsAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _WeatheringUVSeed;
		uniform float _DetailMetallicScale;
		uniform float _TransmissionStrength;
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

			half3 transmission = max(0 , -dot(s.Normal, gi.light.dir)) * gi.light.color * s.Transmission;
			half4 d = half4(s.Albedo * transmission , 0);

			SurfaceOutputStandard r;
			r.Albedo = s.Albedo;
			r.Normal = s.Normal;
			r.Emission = s.Emission;
			r.Metallic = s.Metallic;
			r.Smoothness = s.Smoothness;
			r.Occlusion = s.Occlusion;
			r.Alpha = s.Alpha;
			return LightingStandard (r, viewDir, gi) + c + d;
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
			float2 uv_BumpMap402_g89 = i.uv_texcoord;
			float WetBumpOffset303_g89 = _WetBumpOffset;
			float ExGloss298_g89 = _ExGloss;
			float2 UVScale107_g89 = _UVScalePattern;
			float2 uv_TexCoord152_g89 = i.uv_texcoord * ( _DetailUV * UVScale107_g89 );
			float cos162_g89 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g89 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g89 = mul( uv_TexCoord152_g89 - float2( 0.5,0.5 ) , float2x2( cos162_g89 , -sin162_g89 , sin162_g89 , cos162_g89 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g89 = rotator162_g89;
			float2 break194_g89 = Detail1UV173_g89;
			float temp_output_186_0_g89 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g89 = (float2(( break194_g89.x + temp_output_186_0_g89 ) , break194_g89.y));
			float4 tex2DNode243_g89 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g89 );
			float2 uv_DetailMask25_g89 = i.uv_texcoord;
			float4 tex2DNode25_g89 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g89 );
			float DetailMask130_g89 = tex2DNode25_g89.r;
			float temp_output_255_0_g89 = ( DetailMask130_g89 * _DetailNormalMapScale );
			float3 appendResult300_g89 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g89 ).g - tex2DNode243_g89.g ) * temp_output_255_0_g89 )));
			float2 appendResult222_g89 = (float2(break194_g89.x , ( break194_g89.y + temp_output_186_0_g89 )));
			float3 appendResult297_g89 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g89 ).g - tex2DNode243_g89.g ) * temp_output_255_0_g89 )));
			float3 normalizeResult348_g89 = normalize( cross( appendResult300_g89 , appendResult297_g89 ) );
			float3 DetailNormal1368_g89 = normalizeResult348_g89;
			float2 uv_TexCoord16_g89 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g89 );
			float cos19_g89 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g89 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g89 = mul( uv_TexCoord16_g89 - float2( 0.5,0.5 ) , float2x2( cos19_g89 , -sin19_g89 , sin19_g89 , cos19_g89 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g89 = rotator19_g89;
			float2 break24_g89 = Detail2UV20_g89;
			float temp_output_26_0_g89 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g89 = (float2(( break24_g89.x + temp_output_26_0_g89 ) , break24_g89.y));
			float4 tex2DNode38_g89 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g89 );
			float DetailMask235_g89 = tex2DNode25_g89.g;
			float temp_output_43_0_g89 = ( DetailMask235_g89 * _DetailNormalMapScale2 );
			float3 appendResult58_g89 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g89 ).g - tex2DNode38_g89.g ) * temp_output_43_0_g89 )));
			float2 appendResult33_g89 = (float2(break24_g89.x , ( break24_g89.y + temp_output_26_0_g89 )));
			float3 appendResult57_g89 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g89 ).g - tex2DNode38_g89.g ) * temp_output_43_0_g89 )));
			float3 normalizeResult69_g89 = normalize( cross( appendResult58_g89 , appendResult57_g89 ) );
			float3 DetailNormal276_g89 = normalizeResult69_g89;
			float2 appendResult657_g89 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g89 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g89 = i.uv_texcoord * appendResult657_g89 + appendResult658_g89;
			float2 WetStrUV669_g89 = uv_TexCoord660_g89;
			float2 break547_g89 = WetStrUV669_g89;
			float temp_output_541_0_g89 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g89 = (float2(( break547_g89.x + temp_output_541_0_g89 ) , break547_g89.y));
			float4 tex2DNode515_g89 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g89 );
			float3 appendResult523_g89 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g89 ).g - tex2DNode515_g89.g ) * 1.0 )));
			float2 appendResult534_g89 = (float2(break547_g89.x , ( break547_g89.y + temp_output_541_0_g89 )));
			float3 appendResult542_g89 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g89 ).g - tex2DNode515_g89.g ) * 1.0 )));
			float3 normalizeResult524_g89 = normalize( cross( appendResult523_g89 , appendResult542_g89 ) );
			float3 WetnessNormal545_g89 = normalizeResult524_g89;
			float WetStr661_g89 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g89 ).g;
			float smoothstepResult651_g89 = smoothstep( ( 1.0 - ExGloss298_g89 ) , 1.0 , WetStr661_g89);
			float StreaksAlpha662_g89 = smoothstepResult651_g89;
			float WetOpStreaks673_g89 = _WetOpacityStreaks;
			float3 lerpResult98_g89 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g89 ), ( _Float0 + ( WetBumpOffset303_g89 * ExGloss298_g89 ) ) ) , DetailNormal1368_g89 ) , DetailNormal276_g89 ) , WetnessNormal545_g89 , ( StreaksAlpha662_g89 * WetOpStreaks673_g89 ));
			float2 appendResult115_g89 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g89 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult731_g89 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult737_g89 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g89 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g89 = i.uv_texcoord * appendResult115_g89 + ( appendResult110_g89 + lerpResult737_g89 );
			float2 WeatheringUV144_g89 = uv_TexCoord127_g89;
			float2 break223_g89 = WeatheringUV144_g89;
			float temp_output_224_0_g89 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g89 = (float2(( break223_g89.x + temp_output_224_0_g89 ) , break223_g89.y));
			float4 tex2DNode266_g89 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g89 );
			float3 appendResult344_g89 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g89 ).b - tex2DNode266_g89.b ) * 2.0 )));
			float2 appendResult252_g89 = (float2(break223_g89.x , ( break223_g89.y + temp_output_224_0_g89 )));
			float3 appendResult339_g89 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g89 ).b - tex2DNode266_g89.b ) * 2.0 )));
			float3 normalizeResult398_g89 = normalize( cross( appendResult344_g89 , appendResult339_g89 ) );
			float3 WeatheringBump425_g89 = normalizeResult398_g89;
			float4 tex2DNode177_g89 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g89 );
			float2 uv_WeatheringMask100_g89 = i.uv_texcoord;
			float4 tex2DNode100_g89 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g89 );
			float clampResult161_g89 = clamp( ( tex2DNode100_g89.r - tex2DNode100_g89.g ) , 0.0 , 1.0 );
			float WMask1183_g89 = ( clampResult161_g89 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g89 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g89 = clamp( ( ( tex2DNode177_g89.g * WMask1183_g89 ) - RangeCut1208_g89 ) , 0.0 , 1.0 );
			float clampResult159_g89 = clamp( ( tex2DNode100_g89.g - tex2DNode100_g89.r ) , 0.0 , 1.0 );
			float WMask2192_g89 = ( clampResult159_g89 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g89 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g89 = clamp( ( ( tex2DNode177_g89.g * WMask2192_g89 ) - RangeCut2211_g89 ) , 0.0 , 1.0 );
			float WMask3190_g89 = ( tex2DNode100_g89.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g89 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g89 = clamp( ( ( tex2DNode177_g89.g * WMask3190_g89 ) - RangeCut3210_g89 ) , 0.0 , 1.0 );
			float WMask4180_g89 = ( ( tex2DNode100_g89.r * tex2DNode100_g89.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g89 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g89 = clamp( ( ( tex2DNode177_g89.g * WMask4180_g89 ) - RangeCut4205_g89 ) , 0.0 , 1.0 );
			float WMask5184_g89 = ( ( tex2DNode100_g89.r * tex2DNode100_g89.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g89 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g89 = clamp( ( ( tex2DNode177_g89.g * WMask5184_g89 ) - RangeCut5201_g89 ) , 0.0 , 1.0 );
			float WMaskAll165_g89 = ceil( _WeatheringAll );
			float RangeCutAll171_g89 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g89 = clamp( ( ( tex2DNode177_g89.g * WMaskAll165_g89 ) - RangeCutAll171_g89 ) , 0.0 , 1.0 );
			float clampResult299_g89 = clamp( ( clampResult253_g89 + clampResult251_g89 + clampResult254_g89 + clampResult259_g89 + clampResult261_g89 + clampResult215_g89 ) , 0.0 , 1.0 );
			float lerpResult313_g89 = lerp( clampResult299_g89 , clampResult215_g89 , WMaskAll165_g89);
			float clampResult373_g89 = clamp( ( lerpResult313_g89 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g89 = clampResult373_g89;
			float3 lerpResult87_g89 = lerp( lerpResult98_g89 , WeatheringBump425_g89 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g89 ).b * WeatheringAlpha396_g89 ));
			float3 normalizeResult564_g89 = normalize( lerpResult87_g89 );
			float3 switchResult566_g89 = (((i.ASEVFace>0)?(normalizeResult564_g89):(-normalizeResult564_g89)));
			float3 NormalMix88_g89 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g89 : normalizeResult564_g89 );
			o.Normal = NormalMix88_g89;
			float2 uv_MainTex576_g89 = i.uv_texcoord;
			float4 tex2DNode576_g89 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g89 );
			float3 temp_output_284_0_g89 = (tex2DNode576_g89).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g89 = i.uv_texcoord;
			float4 tex2DNode196_g89 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g89 );
			float Carvature270_g89 = tex2DNode196_g89.r;
			float3 lerpResult331_g89 = lerp( ( temp_output_284_0_g89 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g89 * _CarvatureStrength ));
			float WetAlbedoOffset311_g89 = _WetAlbedoOffset;
			float3 temp_output_382_0_g89 = ( lerpResult331_g89 * WetAlbedoOffset311_g89 );
			float WetSplatsAlbedoOffset349_g89 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g89 = lerp( ( temp_output_382_0_g89 * WetSplatsAlbedoOffset349_g89 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g89 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g89 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g89 = i.uv_texcoord * appendResult287_g89 + appendResult285_g89;
			float2 WetUV578_g89 = uv_TexCoord317_g89;
			float WetSplats369_g89 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g89 ).b;
			float SplatsOp363_g89 = _WetOpacitySplats;
			float3 lerpResult460_g89 = lerp( temp_output_382_0_g89 , lerpResult411_g89 , ( ( StreaksAlpha662_g89 * WetOpStreaks673_g89 ) + ( WetSplats369_g89 * SplatsOp363_g89 ) ));
			float2 uv_OcclusionMap429_g89 = i.uv_texcoord;
			float4 tex2DNode429_g89 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g89 );
			float3 WetBodyOffset422_g89 = (_BodyColor1).rgb;
			float bodycoloralpha417_g89 = _BodyColor1.a;
			float3 lerpResult480_g89 = lerp( lerpResult460_g89 , ( tex2DNode429_g89.a == 1.0 ? lerpResult460_g89 : WetBodyOffset422_g89 ) , ( bodycoloralpha417_g89 * ( 1.0 - tex2DNode429_g89.a ) ));
			float3 lerpResult501_g89 = lerp( lerpResult331_g89 , lerpResult480_g89 , ExGloss298_g89);
			float WeatheringAlpha2466_g89 = lerpResult313_g89;
			float3 lerpResult505_g89 = lerp( lerpResult501_g89 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g89 * 0.282353 ));
			float3 DiffuseMix511_g89 = lerpResult505_g89;
			o.Albedo = DiffuseMix511_g89;
			float2 uv_MetallicGlossMap330_g89 = i.uv_texcoord;
			float4 tex2DNode330_g89 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g89 );
			float3 ColorTex354_g89 = temp_output_284_0_g89;
			float2 uv_ColorMask304_g89 = i.uv_texcoord;
			float4 tex2DNode304_g89 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g89 );
			float ColorMask3306_g89 = tex2DNode304_g89.g;
			float3 EC3414_g89 = ( ColorTex354_g89 * ( _EmissionStrength * ColorMask3306_g89 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g89 = EC3414_g89;
			#else
				float3 staticSwitch469_g89 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g89 = tex2DNode304_g89.r;
			float3 EC2456_g89 = ( ColorTex354_g89 * ( _EmissionStrength * ColorMask2351_g89 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g89 = EC2456_g89;
			#else
				float3 staticSwitch479_g89 = staticSwitch469_g89;
			#endif
			float ColorMask1358_g89 = ( 1.0 - ( tex2DNode304_g89.r + tex2DNode304_g89.g + tex2DNode304_g89.b ) );
			float3 EC1471_g89 = ( ColorTex354_g89 * ( _EmissionStrength * ColorMask1358_g89 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g89 = EC1471_g89;
			#else
				float3 staticSwitch498_g89 = staticSwitch479_g89;
			#endif
			float3 EmissionFinal510_g89 = ( tex2DNode330_g89.g * staticSwitch498_g89 );
			float WeatheringBumpMask718_g89 = tex2DNode177_g89.b;
			o.Emission = ( EmissionFinal510_g89 + ( ( WeatheringAlpha2466_g89 * WeatheringBumpMask718_g89 ) * _WeatheringEmission ) );
			float lerpResult399_g89 = lerp( 1.0 , tex2DNode330_g89.r , _MetallicMask);
			float2 uv_DetailMainTex338_g89 = i.uv_texcoord;
			float4 tex2DNode338_g89 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g89 );
			float lerpResult395_g89 = lerp( 1.0 , tex2DNode330_g89.r , _MetallicMask4);
			float ColorMask4347_g89 = tex2DNode304_g89.b;
			float lerpResult462_g89 = lerp( ( lerpResult399_g89 * tex2DNode338_g89.r ) , ( lerpResult395_g89 * _Metallic4 ) , ColorMask4347_g89);
			float Detail1310_g89 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g89 ).r;
			float Detail2352_g89 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g89 ).r;
			float lerpResult495_g89 = lerp( saturate( ( ( lerpResult462_g89 - ( ( 1.0 - Detail1310_g89 ) * ( _DetailMetallicScale * DetailMask130_g89 ) ) ) - ( ( 1.0 - Detail2352_g89 ) * ( _DetailMetallicScale2 * DetailMask235_g89 ) ) ) ) , 0.0 , WeatheringAlpha2466_g89);
			float MetallicFinal512_g89 = saturate( lerpResult495_g89 );
			o.Metallic = MetallicFinal512_g89;
			float lerpResult353_g89 = lerp( 1.0 , tex2DNode330_g89.r , _Roughness);
			float lerpResult336_g89 = lerp( 1.0 , tex2DNode330_g89.r , _Roughness4);
			float lerpResult384_g89 = lerp( ( lerpResult353_g89 * tex2DNode338_g89.b ) , ( _Glossiness4 * lerpResult336_g89 ) , ColorMask4347_g89);
			float WetGlossBase397_g89 = _WetGlossBase;
			float lerpResult470_g89 = lerp( saturate( ( ( lerpResult384_g89 - ( ( 1.0 - Detail1310_g89 ) * ( _DetailGlossScale * DetailMask130_g89 ) ) ) - ( ( 1.0 - Detail2352_g89 ) * ( _DetailGlossScale2 * DetailMask235_g89 ) ) ) ) , tex2DNode330_g89.a , ( WetGlossBase397_g89 * ExGloss298_g89 ));
			float SplatsGloss407_g89 = _WetGlossSplats;
			float lerpResult664_g89 = lerp( lerpResult470_g89 , SplatsGloss407_g89 , ( SplatsOp363_g89 * ExGloss298_g89 * WetSplats369_g89 ));
			float lerpResult649_g89 = lerp( lerpResult664_g89 , 0.87 , ( WetOpStreaks673_g89 * smoothstepResult651_g89 ));
			float lerpResult499_g89 = lerp( lerpResult649_g89 , _WeatheringGloss , WeatheringAlpha396_g89);
			float GlossinessFinal513_g89 = saturate( lerpResult499_g89 );
			o.Smoothness = GlossinessFinal513_g89;
			float2 uv_OcclusionMap623_g89 = i.uv_texcoord;
			float lerpResult483_g89 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g89 ).g , _OcculusionStrength);
			float smoothstepResult621_g89 = smoothstep( 0.0 , 0.8 , Detail1310_g89);
			float lerpResult488_g89 = lerp( 1.0 , smoothstepResult621_g89 , ( _DetailOcculusionScale * DetailMask130_g89 ));
			float smoothstepResult622_g89 = smoothstep( 0.0 , 0.8 , Detail2352_g89);
			float lerpResult494_g89 = lerp( 1.0 , smoothstepResult622_g89 , ( _DetailOcculusionScale2 * DetailMask235_g89 ));
			float lerpResult620_g89 = lerp( ( lerpResult483_g89 * lerpResult488_g89 * lerpResult494_g89 ) , 1.0 , WeatheringAlpha396_g89);
			float OcclusionMix509_g89 = saturate( lerpResult620_g89 );
			o.Occlusion = OcclusionMix509_g89;
			float3 temp_cast_2 = (_TransmissionStrength).xxx;
			o.Transmission = temp_cast_2;
			float Thickness507_g89 = tex2DNode330_g89.b;
			float3 temp_cast_3 = (( saturate( _Translucency ) * Thickness507_g89 )).xxx;
			o.Translucency = temp_cast_3;
			o.Alpha = 1;
			float clampResult592_g89 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g89 = tex2DNode196_g89.b;
			float BlueNoise643_g89 = _DitherBlueNoise;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen691_g89 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither691_g89 = Dither8x8Bayer( fmod(clipScreen691_g89.x, 8), fmod(clipScreen691_g89.y, 8) );
			float AlphaInput195_g89 = tex2DNode576_g89.a;
			dither691_g89 = step( dither691_g89, AlphaInput195_g89 );
			float dither692_g89 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither692_g89 = step( dither692_g89, AlphaInput195_g89 );
			float2 clipScreen629_g89 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither629_g89 = Dither8x8Bayer( fmod(clipScreen629_g89.x, 8), fmod(clipScreen629_g89.y, 8) );
			float OccAlpha219_g89 = tex2DNode196_g89.a;
			float temp_output_703_0_g89 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g89 , ( _WetAlpha * ExGloss298_g89 ) ) ) ) + WeatheringAlpha2466_g89 );
			dither629_g89 = step( dither629_g89, temp_output_703_0_g89 );
			float dither630_g89 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither630_g89 = step( dither630_g89, temp_output_703_0_g89 );
			clip( ( ( step( pow( ( 1.0 - clampResult592_g89 ) , 0.2 ) , pow( TearingsMask340_g89 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g89 == 0.0 ? dither691_g89 : dither692_g89 ) : AlphaInput195_g89 ) ) * ( BlueNoise643_g89 == 0.0 ? dither629_g89 : dither630_g89 ) ) - _Cutoff );
		}

		ENDCG
	}
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
129.2;0.4;1230;884;-2308.717;1622.385;1.506942;True;False
Node;AmplifyShaderEditor.RangedFloatNode;1546;2840.639,-1012.617;Inherit;False;Property;_Cutoff;Cutoff;75;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.5;0.495;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1631;2851.307,-1276.908;Inherit;False;AIT Clothes Function;0;;89;d0644e5becc3a6145ad3ab18b1d3f488;0;0;9;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;748;FLOAT;562;FLOAT;637
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;3587.755,-1271.375;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Clothes True Cutoff;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;1;True;1551;3;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.495;True;True;0;False;TransparentCutout;2450;AlphaTest;ForwardOnly;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;5;True;1550;10;True;1549;2;5;False;-1;10;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;76;-1;-1;0;False;0;0;False;1210;-1;0;True;1546;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;1631;0
WireConnection;0;1;1631;557
WireConnection;0;2;1631;558
WireConnection;0;3;1631;559
WireConnection;0;4;1631;560
WireConnection;0;5;1631;561
WireConnection;0;6;1631;748
WireConnection;0;7;1631;562
WireConnection;0;10;1631;637
ASEEND*/
//CHKSM=607E1C88DA80799A95A7049029E82CC24A8795A3
