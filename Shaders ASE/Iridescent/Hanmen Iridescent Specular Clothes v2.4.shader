// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Iridescent Specular Clothes"
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
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Off
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
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
			float4 screenPosition;
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
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorRamp);
		SamplerState sampler_ColorRamp;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriBrightness;
		uniform float _IriHue;
		uniform float _Cutoff;
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
			float2 uv_BumpMap402_g4 = i.uv_texcoord;
			float WetBumpOffset303_g4 = _WetBumpOffset;
			float ExGloss298_g4 = _ExGloss;
			float2 UVScale107_g4 = _UVScalePattern;
			float2 uv_TexCoord152_g4 = i.uv_texcoord * ( _DetailUV * UVScale107_g4 );
			float cos162_g4 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g4 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g4 = mul( uv_TexCoord152_g4 - float2( 0.5,0.5 ) , float2x2( cos162_g4 , -sin162_g4 , sin162_g4 , cos162_g4 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g4 = rotator162_g4;
			float2 break194_g4 = Detail1UV173_g4;
			float temp_output_186_0_g4 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g4 = (float2(( break194_g4.x + temp_output_186_0_g4 ) , break194_g4.y));
			float4 tex2DNode243_g4 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g4 );
			float2 uv_DetailMask25_g4 = i.uv_texcoord;
			float4 tex2DNode25_g4 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g4 );
			float DetailMask130_g4 = tex2DNode25_g4.r;
			float temp_output_255_0_g4 = ( DetailMask130_g4 * _DetailNormalMapScale );
			float3 appendResult300_g4 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g4 ).g - tex2DNode243_g4.g ) * temp_output_255_0_g4 )));
			float2 appendResult222_g4 = (float2(break194_g4.x , ( break194_g4.y + temp_output_186_0_g4 )));
			float3 appendResult297_g4 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g4 ).g - tex2DNode243_g4.g ) * temp_output_255_0_g4 )));
			float3 normalizeResult348_g4 = normalize( cross( appendResult300_g4 , appendResult297_g4 ) );
			float3 DetailNormal1368_g4 = normalizeResult348_g4;
			float2 uv_TexCoord16_g4 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g4 );
			float cos19_g4 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g4 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g4 = mul( uv_TexCoord16_g4 - float2( 0.5,0.5 ) , float2x2( cos19_g4 , -sin19_g4 , sin19_g4 , cos19_g4 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g4 = rotator19_g4;
			float2 break24_g4 = Detail2UV20_g4;
			float temp_output_26_0_g4 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g4 = (float2(( break24_g4.x + temp_output_26_0_g4 ) , break24_g4.y));
			float4 tex2DNode38_g4 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g4 );
			float DetailMask235_g4 = tex2DNode25_g4.g;
			float temp_output_43_0_g4 = ( DetailMask235_g4 * _DetailNormalMapScale2 );
			float3 appendResult58_g4 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g4 ).g - tex2DNode38_g4.g ) * temp_output_43_0_g4 )));
			float2 appendResult33_g4 = (float2(break24_g4.x , ( break24_g4.y + temp_output_26_0_g4 )));
			float3 appendResult57_g4 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g4 ).g - tex2DNode38_g4.g ) * temp_output_43_0_g4 )));
			float3 normalizeResult69_g4 = normalize( cross( appendResult58_g4 , appendResult57_g4 ) );
			float3 DetailNormal276_g4 = normalizeResult69_g4;
			float2 appendResult657_g4 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g4 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g4 = i.uv_texcoord * appendResult657_g4 + appendResult658_g4;
			float2 WetStrUV669_g4 = uv_TexCoord660_g4;
			float2 break547_g4 = WetStrUV669_g4;
			float temp_output_541_0_g4 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g4 = (float2(( break547_g4.x + temp_output_541_0_g4 ) , break547_g4.y));
			float4 tex2DNode515_g4 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g4 );
			float3 appendResult523_g4 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g4 ).g - tex2DNode515_g4.g ) * 1.0 )));
			float2 appendResult534_g4 = (float2(break547_g4.x , ( break547_g4.y + temp_output_541_0_g4 )));
			float3 appendResult542_g4 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g4 ).g - tex2DNode515_g4.g ) * 1.0 )));
			float3 normalizeResult524_g4 = normalize( cross( appendResult523_g4 , appendResult542_g4 ) );
			float3 WetnessNormal545_g4 = normalizeResult524_g4;
			float WetStr661_g4 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g4 ).g;
			float smoothstepResult651_g4 = smoothstep( ( 1.0 - ExGloss298_g4 ) , 1.0 , WetStr661_g4);
			float StreaksAlpha662_g4 = smoothstepResult651_g4;
			float WetOpStreaks673_g4 = _WetOpacityStreaks;
			float3 lerpResult98_g4 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g4 ), ( _Float0 + ( WetBumpOffset303_g4 * ExGloss298_g4 ) ) ) , DetailNormal1368_g4 ) , DetailNormal276_g4 ) , WetnessNormal545_g4 , ( StreaksAlpha662_g4 * WetOpStreaks673_g4 ));
			float2 appendResult115_g4 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g4 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult731_g4 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult737_g4 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g4 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g4 = i.uv_texcoord * appendResult115_g4 + ( appendResult110_g4 + lerpResult737_g4 );
			float2 WeatheringUV144_g4 = uv_TexCoord127_g4;
			float2 break223_g4 = WeatheringUV144_g4;
			float temp_output_224_0_g4 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g4 = (float2(( break223_g4.x + temp_output_224_0_g4 ) , break223_g4.y));
			float4 tex2DNode266_g4 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g4 );
			float3 appendResult344_g4 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g4 ).b - tex2DNode266_g4.b ) * 2.0 )));
			float2 appendResult252_g4 = (float2(break223_g4.x , ( break223_g4.y + temp_output_224_0_g4 )));
			float3 appendResult339_g4 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g4 ).b - tex2DNode266_g4.b ) * 2.0 )));
			float3 normalizeResult398_g4 = normalize( cross( appendResult344_g4 , appendResult339_g4 ) );
			float3 WeatheringBump425_g4 = normalizeResult398_g4;
			float4 tex2DNode177_g4 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g4 );
			float2 uv_WeatheringMask100_g4 = i.uv_texcoord;
			float4 tex2DNode100_g4 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g4 );
			float clampResult161_g4 = clamp( ( tex2DNode100_g4.r - tex2DNode100_g4.g ) , 0.0 , 1.0 );
			float WMask1183_g4 = ( clampResult161_g4 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g4 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g4 = clamp( ( ( tex2DNode177_g4.g * WMask1183_g4 ) - RangeCut1208_g4 ) , 0.0 , 1.0 );
			float clampResult159_g4 = clamp( ( tex2DNode100_g4.g - tex2DNode100_g4.r ) , 0.0 , 1.0 );
			float WMask2192_g4 = ( clampResult159_g4 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g4 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g4 = clamp( ( ( tex2DNode177_g4.g * WMask2192_g4 ) - RangeCut2211_g4 ) , 0.0 , 1.0 );
			float WMask3190_g4 = ( tex2DNode100_g4.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g4 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g4 = clamp( ( ( tex2DNode177_g4.g * WMask3190_g4 ) - RangeCut3210_g4 ) , 0.0 , 1.0 );
			float WMask4180_g4 = ( ( tex2DNode100_g4.r * tex2DNode100_g4.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g4 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g4 = clamp( ( ( tex2DNode177_g4.g * WMask4180_g4 ) - RangeCut4205_g4 ) , 0.0 , 1.0 );
			float WMask5184_g4 = ( ( tex2DNode100_g4.r * tex2DNode100_g4.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g4 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g4 = clamp( ( ( tex2DNode177_g4.g * WMask5184_g4 ) - RangeCut5201_g4 ) , 0.0 , 1.0 );
			float WMaskAll165_g4 = ceil( _WeatheringAll );
			float RangeCutAll171_g4 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g4 = clamp( ( ( tex2DNode177_g4.g * WMaskAll165_g4 ) - RangeCutAll171_g4 ) , 0.0 , 1.0 );
			float clampResult299_g4 = clamp( ( clampResult253_g4 + clampResult251_g4 + clampResult254_g4 + clampResult259_g4 + clampResult261_g4 + clampResult215_g4 ) , 0.0 , 1.0 );
			float lerpResult313_g4 = lerp( clampResult299_g4 , clampResult215_g4 , WMaskAll165_g4);
			float clampResult373_g4 = clamp( ( lerpResult313_g4 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g4 = clampResult373_g4;
			float3 lerpResult87_g4 = lerp( lerpResult98_g4 , WeatheringBump425_g4 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g4 ).b * WeatheringAlpha396_g4 ));
			float3 normalizeResult564_g4 = normalize( lerpResult87_g4 );
			float3 switchResult566_g4 = (((i.ASEVFace>0)?(normalizeResult564_g4):(-normalizeResult564_g4)));
			float3 NormalMix88_g4 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g4 : normalizeResult564_g4 );
			float3 temp_output_1515_557 = NormalMix88_g4;
			o.Normal = temp_output_1515_557;
			float2 uv_MainTex576_g4 = i.uv_texcoord;
			float4 tex2DNode576_g4 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g4 );
			float3 temp_output_284_0_g4 = (tex2DNode576_g4).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g4 = i.uv_texcoord;
			float4 tex2DNode196_g4 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g4 );
			float Carvature270_g4 = tex2DNode196_g4.r;
			float3 lerpResult331_g4 = lerp( ( temp_output_284_0_g4 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g4 * _CarvatureStrength ));
			float WetAlbedoOffset311_g4 = _WetAlbedoOffset;
			float3 temp_output_382_0_g4 = ( lerpResult331_g4 * WetAlbedoOffset311_g4 );
			float WetSplatsAlbedoOffset349_g4 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g4 = lerp( ( temp_output_382_0_g4 * WetSplatsAlbedoOffset349_g4 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g4 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g4 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g4 = i.uv_texcoord * appendResult287_g4 + appendResult285_g4;
			float2 WetUV578_g4 = uv_TexCoord317_g4;
			float WetSplats369_g4 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g4 ).b;
			float SplatsOp363_g4 = _WetOpacitySplats;
			float3 lerpResult460_g4 = lerp( temp_output_382_0_g4 , lerpResult411_g4 , ( ( StreaksAlpha662_g4 * WetOpStreaks673_g4 ) + ( WetSplats369_g4 * SplatsOp363_g4 ) ));
			float2 uv_OcclusionMap429_g4 = i.uv_texcoord;
			float4 tex2DNode429_g4 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g4 );
			float3 WetBodyOffset422_g4 = (_BodyColor1).rgb;
			float bodycoloralpha417_g4 = _BodyColor1.a;
			float3 lerpResult480_g4 = lerp( lerpResult460_g4 , ( tex2DNode429_g4.a == 1.0 ? lerpResult460_g4 : WetBodyOffset422_g4 ) , ( bodycoloralpha417_g4 * ( 1.0 - tex2DNode429_g4.a ) ));
			float3 lerpResult501_g4 = lerp( lerpResult331_g4 , lerpResult480_g4 , ExGloss298_g4);
			float WeatheringAlpha2466_g4 = lerpResult313_g4;
			float3 lerpResult505_g4 = lerp( lerpResult501_g4 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g4 * 0.282353 ));
			float3 DiffuseMix511_g4 = lerpResult505_g4;
			float3 temp_output_1515_0 = DiffuseMix511_g4;
			o.Albedo = temp_output_1515_0;
			float2 uv_MetallicGlossMap330_g4 = i.uv_texcoord;
			float4 tex2DNode330_g4 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g4 );
			float3 ColorTex354_g4 = temp_output_284_0_g4;
			float2 uv_ColorMask304_g4 = i.uv_texcoord;
			float4 tex2DNode304_g4 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g4 );
			float ColorMask3306_g4 = tex2DNode304_g4.g;
			float3 EC3414_g4 = ( ColorTex354_g4 * ( _EmissionStrength * ColorMask3306_g4 ) );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g4 = EC3414_g4;
			#else
				float3 staticSwitch469_g4 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2351_g4 = tex2DNode304_g4.r;
			float3 EC2456_g4 = ( ColorTex354_g4 * ( _EmissionStrength * ColorMask2351_g4 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g4 = EC2456_g4;
			#else
				float3 staticSwitch479_g4 = staticSwitch469_g4;
			#endif
			float ColorMask1358_g4 = ( 1.0 - ( tex2DNode304_g4.r + tex2DNode304_g4.g + tex2DNode304_g4.b ) );
			float3 EC1471_g4 = ( ColorTex354_g4 * ( _EmissionStrength * ColorMask1358_g4 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g4 = EC1471_g4;
			#else
				float3 staticSwitch498_g4 = staticSwitch479_g4;
			#endif
			float3 EmissionFinal510_g4 = ( tex2DNode330_g4.g * staticSwitch498_g4 );
			float WeatheringBumpMask718_g4 = tex2DNode177_g4.b;
			o.Emission = ( EmissionFinal510_g4 + ( ( WeatheringAlpha2466_g4 * WeatheringBumpMask718_g4 ) * _WeatheringEmission ) );
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g5 = dot( ase_tanViewDir , temp_output_1515_557 );
			float2 temp_cast_2 = (dotResult7_g5).xx;
			float3 temp_output_12_0_g5 = (SAMPLE_TEXTURE2D( _ColorRamp, sampler_ColorRamp, temp_cast_2 )).rgb;
			float temp_output_10_0_g5 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g5 = cos( temp_output_10_0_g5 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g5 = dot( _k7 , temp_output_12_0_g5 );
			float3 temp_output_32_0_g5 = ( ( ( ( ( ( temp_output_12_0_g5 * temp_output_13_0_g5 ) + ( cross( _k7 , temp_output_12_0_g5 ) * sin( temp_output_10_0_g5 ) ) + ( _k7 * dotResult14_g5 * ( 1.0 - temp_output_13_0_g5 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g5 = dot( temp_output_32_0_g5 , float3(0.39,0.59,0.11) );
			float3 temp_cast_3 = (dotResult34_g5).xxx;
			float3 lerpResult35_g5 = lerp( temp_cast_3 , temp_output_32_0_g5 , ( _IriSaturation * 2.0 ));
			float3 blendOpSrc1511 = lerpResult35_g5;
			float3 blendOpDest1511 = temp_output_1515_0;
			float lerpResult399_g4 = lerp( 1.0 , tex2DNode330_g4.r , _MetallicMask);
			float2 uv_DetailMainTex338_g4 = i.uv_texcoord;
			float4 tex2DNode338_g4 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g4 );
			float lerpResult395_g4 = lerp( 1.0 , tex2DNode330_g4.r , _MetallicMask4);
			float ColorMask4347_g4 = tex2DNode304_g4.b;
			float lerpResult462_g4 = lerp( ( lerpResult399_g4 * tex2DNode338_g4.r ) , ( lerpResult395_g4 * _Metallic4 ) , ColorMask4347_g4);
			float Detail1310_g4 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g4 ).r;
			float Detail2352_g4 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g4 ).r;
			float lerpResult495_g4 = lerp( saturate( ( ( lerpResult462_g4 - ( ( 1.0 - Detail1310_g4 ) * ( _DetailMetallicScale * DetailMask130_g4 ) ) ) - ( ( 1.0 - Detail2352_g4 ) * ( _DetailMetallicScale2 * DetailMask235_g4 ) ) ) ) , 0.0 , WeatheringAlpha2466_g4);
			float MetallicFinal512_g4 = saturate( lerpResult495_g4 );
			float temp_output_1515_559 = MetallicFinal512_g4;
			float3 lerpBlendMode1511 = lerp(blendOpDest1511,( 1.0 - ( ( 1.0 - blendOpDest1511) / max( blendOpSrc1511, 0.00001) ) ),temp_output_1515_559);
			half3 specColor1512 = (0).xxx;
			half oneMinusReflectivity1512 = 0;
			half3 diffuseAndSpecularFromMetallic1512 = DiffuseAndSpecularFromMetallic(( saturate( lerpBlendMode1511 )),temp_output_1515_559,specColor1512,oneMinusReflectivity1512);
			o.Specular = specColor1512;
			float lerpResult353_g4 = lerp( 1.0 , tex2DNode330_g4.r , _Roughness);
			float lerpResult336_g4 = lerp( 1.0 , tex2DNode330_g4.r , _Roughness4);
			float lerpResult384_g4 = lerp( ( lerpResult353_g4 * tex2DNode338_g4.b ) , ( _Glossiness4 * lerpResult336_g4 ) , ColorMask4347_g4);
			float WetGlossBase397_g4 = _WetGlossBase;
			float lerpResult470_g4 = lerp( saturate( ( ( lerpResult384_g4 - ( ( 1.0 - Detail1310_g4 ) * ( _DetailGlossScale * DetailMask130_g4 ) ) ) - ( ( 1.0 - Detail2352_g4 ) * ( _DetailGlossScale2 * DetailMask235_g4 ) ) ) ) , tex2DNode330_g4.a , ( WetGlossBase397_g4 * ExGloss298_g4 ));
			float SplatsGloss407_g4 = _WetGlossSplats;
			float lerpResult664_g4 = lerp( lerpResult470_g4 , SplatsGloss407_g4 , ( SplatsOp363_g4 * ExGloss298_g4 * WetSplats369_g4 ));
			float lerpResult649_g4 = lerp( lerpResult664_g4 , 0.87 , ( WetOpStreaks673_g4 * smoothstepResult651_g4 ));
			float lerpResult499_g4 = lerp( lerpResult649_g4 , _WeatheringGloss , WeatheringAlpha396_g4);
			float GlossinessFinal513_g4 = saturate( lerpResult499_g4 );
			o.Smoothness = GlossinessFinal513_g4;
			float2 uv_OcclusionMap623_g4 = i.uv_texcoord;
			float lerpResult483_g4 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g4 ).g , _OcculusionStrength);
			float smoothstepResult621_g4 = smoothstep( 0.0 , 0.8 , Detail1310_g4);
			float lerpResult488_g4 = lerp( 1.0 , smoothstepResult621_g4 , ( _DetailOcculusionScale * DetailMask130_g4 ));
			float smoothstepResult622_g4 = smoothstep( 0.0 , 0.8 , Detail2352_g4);
			float lerpResult494_g4 = lerp( 1.0 , smoothstepResult622_g4 , ( _DetailOcculusionScale2 * DetailMask235_g4 ));
			float lerpResult620_g4 = lerp( ( lerpResult483_g4 * lerpResult488_g4 * lerpResult494_g4 ) , 1.0 , WeatheringAlpha396_g4);
			float OcclusionMix509_g4 = saturate( lerpResult620_g4 );
			o.Occlusion = OcclusionMix509_g4;
			float3 temp_cast_4 = (_TransmissionStrength).xxx;
			o.Transmission = temp_cast_4;
			float Thickness507_g4 = tex2DNode330_g4.b;
			float3 temp_cast_5 = (( saturate( _Translucency ) * Thickness507_g4 )).xxx;
			o.Translucency = temp_cast_5;
			o.Alpha = 1;
			float clampResult592_g4 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g4 = tex2DNode196_g4.b;
			float BlueNoise643_g4 = _DitherBlueNoise;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen691_g4 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither691_g4 = Dither8x8Bayer( fmod(clipScreen691_g4.x, 8), fmod(clipScreen691_g4.y, 8) );
			float AlphaInput195_g4 = tex2DNode576_g4.a;
			dither691_g4 = step( dither691_g4, AlphaInput195_g4 );
			float dither692_g4 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither692_g4 = step( dither692_g4, AlphaInput195_g4 );
			float2 clipScreen629_g4 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither629_g4 = Dither8x8Bayer( fmod(clipScreen629_g4.x, 8), fmod(clipScreen629_g4.y, 8) );
			float OccAlpha219_g4 = tex2DNode196_g4.a;
			float temp_output_703_0_g4 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g4 , ( _WetAlpha * ExGloss298_g4 ) ) ) ) + WeatheringAlpha2466_g4 );
			dither629_g4 = step( dither629_g4, temp_output_703_0_g4 );
			float dither630_g4 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
			dither630_g4 = step( dither630_g4, temp_output_703_0_g4 );
			clip( ( ( step( pow( ( 1.0 - clampResult592_g4 ) , 0.2 ) , pow( TearingsMask340_g4 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g4 == 0.0 ? dither691_g4 : dither692_g4 ) : AlphaInput195_g4 ) ) * ( BlueNoise643_g4 == 0.0 ? dither629_g4 : dither630_g4 ) ) - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardSpecularCustom keepalpha fullforwardshadows exclude_path:deferred vertex:vertexDataFunc 

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
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 customPack2 : TEXCOORD2;
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
				vertexDataFunc( v, customInputData );
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
				o.customPack2.xyzw = customInputData.screenPosition;
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
				surfIN.screenPosition = IN.customPack2.xyzw;
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
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
129.2;0.4;1230;884;-1793.754;1862.189;1.605271;True;False
Node;AmplifyShaderEditor.FunctionNode;1515;2148.367,-1262.712;Inherit;False;AIT Clothes Function;0;;4;d0644e5becc3a6145ad3ab18b1d3f488;0;0;9;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;748;FLOAT;562;FLOAT;637
Node;AmplifyShaderEditor.FunctionNode;1510;2506.175,-1691.992;Inherit;False;Iridiscence;76;;5;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1511;2795.695,-1698.992;Inherit;False;ColorBurn;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1512;3070.721,-1693.835;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1514;3507.367,-813.0862;Inherit;False;Property;_Cutoff;Cutoff;75;0;Create;True;0;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;3587.755,-1271.375;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Iridescent Specular Clothes;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;1;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.5;True;True;0;False;TransparentCutout;2450;AlphaTest;ForwardOnly;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;1;False;-1;10;False;-1;1;5;False;-1;8;False;-1;6;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;82;-1;-1;0;False;0;0;False;1210;-1;0;True;1514;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1510;1;1515;557
WireConnection;1511;0;1510;0
WireConnection;1511;1;1515;0
WireConnection;1511;2;1515;559
WireConnection;1512;0;1511;0
WireConnection;1512;1;1515;559
WireConnection;0;0;1515;0
WireConnection;0;1;1515;557
WireConnection;0;2;1515;558
WireConnection;0;3;1512;1
WireConnection;0;4;1515;560
WireConnection;0;5;1515;561
WireConnection;0;6;1515;748
WireConnection;0;7;1515;562
WireConnection;0;10;1515;637
ASEEND*/
//CHKSM=396B679DD67A4023E1F96ADD106AFBC182FEE073