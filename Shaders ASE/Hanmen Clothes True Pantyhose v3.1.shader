// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Pantyhose"
{
	Properties
	{
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 1
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Header(RENDER TEXTURES (Leave Empty))][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (2,2,0,0)
		_WetUV("WetUV", Vector) = (5,5,0,0)
		_Color4("Color4", Color) = (1,1,1,1)
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
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
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 9
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		[Header (Metallic Roughness (Optional))]_Roughness("Roughness", Range( 0 , 1)) = 0.8
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		_DetailAlpha1("DetailAlpha1", Range( 0 , 5)) = 1
		[Header (Color 4 Settings (Optional))]_Glossiness4("Glossiness4", Range( 0 , 1)) = 1
		_DetailAlpha2("DetailAlpha2", Range( 0 , 5)) = 0
		_Roughness4("Roughness4", Range( 0 , 1)) = 0.8
		[Header (Ambient Occlusion)]_OcculusionStrength("OcculusionStrength", Range( 0 , 1)) = 1
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_AlphaMaster("AlphaMaster", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		_RoughnessReflections("RoughnessReflections", Range( 0 , 1)) = 0.1648498
		[Header (Weathering)]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange1("WeatheringRange1", Range( 0 , 1)) = 0
		_WeatheringRange2("WeatheringRange2", Range( 0 , 1)) = 0
		_GlossinessReflection("GlossinessReflection", Range( 0 , 1)) = 1
		_WeatheringRange3("WeatheringRange3", Range( 0 , 1)) = 0
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.95
		_WeatheringEmission("WeatheringEmission", Range( 0 , 1)) = 0.2
		_WeatheringRange4("WeatheringRange4", Range( 0 , 1)) = 0
		_WeatheringRange5("WeatheringRange5", Range( 0 , 1)) = 0
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
		_FresnelBumpSmooth("FresnelBumpSmooth", Range( 0 , 1)) = 1
		_FresnelMetallic("FresnelMetallic", Range( 0 , 1)) = 0
		_FresnelOcclusion("FresnelOcclusion", Range( 0 , 1)) = 1
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.1
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent-1" "IgnoreProjector" = "True" }
		Cull [_CullMode]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile __ _SPECULARSETUP_ON
		#pragma multi_compile __ _IRIDISCENT_ON
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
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

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float4 _WetStreaksUV;
		uniform float _FresnelPower;
		uniform float2 _DetailUV2;
		uniform float _DetailGlossScale;
		uniform float _AlphaEx;
		uniform float _CarvatureStrength;
		uniform float _DetailUV2Rotator;
		uniform float _DetailNormalMapScale2;
		uniform float4 _Color4;
		uniform float _DetailMetallicScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _Float0;
		uniform float4 _WetUV;
		uniform float _DetailUVRotator;
		uniform float _WeatheringRange5;
		uniform float4 _WeatheringUV;
		uniform float _WetGlossSplats;
		uniform float _GlossinessReflection;
		uniform float _WeatheringAll;
		uniform float _WetAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _WetOpacityStreaks;
		uniform float _WetOpacitySplats;
		uniform float _WetSplatsAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float _WeatheringRange1;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float4 _BodyColor1;
		uniform float _WeatheringRange2;
		uniform float _WeatheringRange4;
		uniform float _FresnelScale;
		uniform float4 _WetColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _ExGloss;
		uniform float _DetailAlpha2;
		uniform float _FresnelBias;
		uniform float2 _patternuvbase;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex;
		uniform float _WeatheringRange3;
		uniform float _DetailGlossScale2;
		uniform float4 _WeatheringAlbedo;
		uniform float _WetGlossBase;
		uniform float2 _DetailUV;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringUVSeed;
		uniform float _WeatheringGloss;
		uniform float _RoughnessReflections;
		uniform float _EmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		uniform float _WetBumpOffset;
		uniform float4 _EmissionColor;
		uniform float _DetailNormalMapScale;
		uniform float _Metallic4;
		uniform float _DetailMetallicScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _DetailAlpha1;
		uniform float4 _BaseColor;
		uniform float _AlphaMaster;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _TransDirect;
		uniform float _TransNormalDistortion;
		uniform float _TransAmbient;
		uniform float _TransShadow;
		uniform float _TransScattering;
		uniform float _Translucency;
		uniform float _NormalBackDirInvert;
		uniform float _CullMode;
		uniform float4 _MainTex_ST;
		SamplerState sampler_trilinear_repeat;
		uniform float _Cutoff;
		SamplerState sampler_linear_repeat;
		uniform float _FresnelBumpSmooth;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _FresnelMetallic;
		uniform float _Roughness;
		uniform float _Roughness4;
		uniform float _Glossiness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		uniform float _FresnelOcclusion;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
		uniform float _WeatheringEmission;


		half OneMinusReflectivity( half metallic )
		{
			   return OneMinusReflectivityFromMetallic(metallic);
		}


		struct Gradient
		{
			int type;
			int colorsLength;
			int alphasLength;
			float4 colors[8];
			float2 alphas[8];
		};


		Gradient NewGradient(int type, int colorsLength, int alphasLength, 
		float4 colors0, float4 colors1, float4 colors2, float4 colors3, float4 colors4, float4 colors5, float4 colors6, float4 colors7,
		float2 alphas0, float2 alphas1, float2 alphas2, float2 alphas3, float2 alphas4, float2 alphas5, float2 alphas6, float2 alphas7)
		{
			Gradient g;
			g.type = type;
			g.colorsLength = colorsLength;
			g.alphasLength = alphasLength;
			g.colors[ 0 ] = colors0;
			g.colors[ 1 ] = colors1;
			g.colors[ 2 ] = colors2;
			g.colors[ 3 ] = colors3;
			g.colors[ 4 ] = colors4;
			g.colors[ 5 ] = colors5;
			g.colors[ 6 ] = colors6;
			g.colors[ 7 ] = colors7;
			g.alphas[ 0 ] = alphas0;
			g.alphas[ 1 ] = alphas1;
			g.alphas[ 2 ] = alphas2;
			g.alphas[ 3 ] = alphas3;
			g.alphas[ 4 ] = alphas4;
			g.alphas[ 5 ] = alphas5;
			g.alphas[ 6 ] = alphas6;
			g.alphas[ 7 ] = alphas7;
			return g;
		}


		float4 SampleGradient( Gradient gradient, float time )
		{
			float3 color = gradient.colors[0].rgb;
			UNITY_UNROLL
			for (int c = 1; c < 8; c++)
			{
			float colorPos = saturate((time - gradient.colors[c-1].w) / ( 0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, (float)gradient.colorsLength-1));
			color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
			}
			#ifndef UNITY_COLORSPACE_GAMMA
			color = half3(GammaToLinearSpaceExact(color.r), GammaToLinearSpaceExact(color.g), GammaToLinearSpaceExact(color.b));
			#endif
			float alpha = gradient.alphas[0].x;
			UNITY_UNROLL
			for (int a = 1; a < 8; a++)
			{
			float alphaPos = saturate((time - gradient.alphas[a-1].y) / ( 0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, (float)gradient.alphasLength-1));
			alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
			}
			return float4(color, alpha);
		}


		inline float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max( 0.001f , dot( inVec , inVec ) );
			return inVec* rsqrt( dp3);
		}


		float3 GI2_g774( float3 normal )
		{
			return ShadeSH9(half4(normal, 1.0));
		}


		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float2 appendResult115_g771 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g771 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult830_g771 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult832_g771 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult830_g771 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g771 = i.uv_texcoord * appendResult115_g771 + ( appendResult110_g771 + lerpResult832_g771 );
			float2 WeatheringUV144_g771 = uv_TexCoord127_g771;
			float4 tex2DNode177_g771 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g771 );
			float2 uv_WeatheringMask100_g771 = i.uv_texcoord;
			float4 tex2DNode100_g771 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g771 );
			float clampResult161_g771 = clamp( ( tex2DNode100_g771.r - tex2DNode100_g771.g ) , 0.0 , 1.0 );
			float WMask1183_g771 = ( clampResult161_g771 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g771 = (0.7 + (_WeatheringRange1 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult253_g771 = clamp( ( ( tex2DNode177_g771.g * WMask1183_g771 ) - RangeCut1208_g771 ) , 0.0 , 1.0 );
			float clampResult159_g771 = clamp( ( tex2DNode100_g771.g - tex2DNode100_g771.r ) , 0.0 , 1.0 );
			float WMask2192_g771 = ( clampResult159_g771 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g771 = (0.7 + (_WeatheringRange2 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult251_g771 = clamp( ( ( tex2DNode177_g771.g * WMask2192_g771 ) - RangeCut2211_g771 ) , 0.0 , 1.0 );
			float WMask3190_g771 = ( tex2DNode100_g771.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g771 = (0.7 + (_WeatheringRange3 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult254_g771 = clamp( ( ( tex2DNode177_g771.g * WMask3190_g771 ) - RangeCut3210_g771 ) , 0.0 , 1.0 );
			float WMask4180_g771 = ( ( tex2DNode100_g771.r * tex2DNode100_g771.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g771 = (0.7 + (_WeatheringRange4 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult259_g771 = clamp( ( ( tex2DNode177_g771.g * WMask4180_g771 ) - RangeCut4205_g771 ) , 0.0 , 1.0 );
			float WMask5184_g771 = ( ( tex2DNode100_g771.r * tex2DNode100_g771.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g771 = (0.7 + (_WeatheringRange5 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult261_g771 = clamp( ( ( tex2DNode177_g771.g * WMask5184_g771 ) - RangeCut5201_g771 ) , 0.0 , 1.0 );
			float WMaskAll165_g771 = ceil( _WeatheringAll );
			float RangeCutAll171_g771 = (0.7 + (_WeatheringAll - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult215_g771 = clamp( ( ( tex2DNode177_g771.g * WMaskAll165_g771 ) - RangeCutAll171_g771 ) , 0.0 , 1.0 );
			float clampResult299_g771 = clamp( ( clampResult253_g771 + clampResult251_g771 + clampResult254_g771 + clampResult259_g771 + clampResult261_g771 + clampResult215_g771 ) , 0.0 , 1.0 );
			float lerpResult313_g771 = lerp( clampResult299_g771 , clampResult215_g771 , WMaskAll165_g771);
			float WeatheringAlpha2466_g771 = lerpResult313_g771;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 tex2DNode576_g771 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex );
			float AlphaInput195_g771 = tex2DNode576_g771.a;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float2 uv_BumpMap402_g771 = i.uv_texcoord;
			float3 tex2DNode402_g771 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g771 ), _Float0 );
			float3 BaseNormal731_g771 = tex2DNode402_g771;
			float3 normalizeResult701_g771 = normalize( BlendNormals( ase_worldViewDir , BaseNormal731_g771 ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 normalizeResult700_g771 = normalize( BlendNormals( ase_worldNormal , BaseNormal731_g771 ) );
			float fresnelNdotV705_g771 = dot( normalizeResult700_g771, normalizeResult701_g771 );
			float fresnelNode705_g771 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV705_g771, _FresnelPower ) );
			float Fresnel707_g771 = saturate( fresnelNode705_g771 );
			float lerpResult727_g771 = lerp( ( _AlphaMaster * AlphaInput195_g771 ) , 1.0 , Fresnel707_g771);
			float2 UVScale107_g771 = _UVScalePattern;
			float2 uv_TexCoord16_g771 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g771 );
			float cos19_g771 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g771 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g771 = mul( uv_TexCoord16_g771 - float2( 0.5,0.5 ) , float2x2( cos19_g771 , -sin19_g771 , sin19_g771 , cos19_g771 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g771 = rotator19_g771;
			float4 tex2DNode328_g771 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g771 );
			float Detail2Alpha747_g771 = tex2DNode328_g771.r;
			float lerpResult759_g771 = lerp( 0.0 , _DetailAlpha2 , Detail2Alpha747_g771);
			float2 uv_DetailMask25_g771 = i.uv_texcoord;
			float4 tex2DNode25_g771 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g771 );
			float DetailMask235_g771 = tex2DNode25_g771.g;
			float2 uv_TexCoord152_g771 = i.uv_texcoord * ( _DetailUV * UVScale107_g771 );
			float cos162_g771 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g771 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g771 = mul( uv_TexCoord152_g771 - float2( 0.5,0.5 ) , float2x2( cos162_g771 , -sin162_g771 , sin162_g771 , cos162_g771 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g771 = rotator162_g771;
			float4 tex2DNode291_g771 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g771 );
			float Detail1Alpha749_g771 = tex2DNode291_g771.r;
			float lerpResult760_g771 = lerp( 0.0 , _DetailAlpha1 , Detail1Alpha749_g771);
			float DetailMask130_g771 = tex2DNode25_g771.r;
			float lerpResult802_g771 = lerp( lerpResult727_g771 , 1.0 , saturate( ( ( lerpResult759_g771 * DetailMask235_g771 ) + ( lerpResult760_g771 * DetailMask130_g771 ) ) ));
			float clampResult592_g771 = clamp( _AlphaEx , 0.2 , 1.0 );
			float2 uv_OcclusionMap196_g771 = i.uv_texcoord;
			float4 tex2DNode196_g771 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g771 );
			float TearingsMask340_g771 = tex2DNode196_g771.b;
			clip( ( step( pow( ( 1.0 - clampResult592_g771 ) , 0.2 ) , pow( TearingsMask340_g771 , 0.5 ) ) * AlphaInput195_g771 ) - _Cutoff);
			float OutOp1476 = ( WeatheringAlpha2466_g771 + saturate( lerpResult802_g771 ) );
			float3 ColorTex354_g771 = (tex2DNode576_g771).rgb;
			float2 uv_ColorMask304_g771 = i.uv_texcoord;
			float ColorMask4347_g771 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g771 ).b;
			float3 lerpResult887_g771 = lerp( ColorTex354_g771 , (_Color4).rgb , ( _Color4.a * ColorMask4347_g771 ));
			float3 temp_cast_1 = (1.0).xxx;
			float Carvature270_g771 = tex2DNode196_g771.r;
			float3 lerpResult331_g771 = lerp( ( lerpResult887_g771 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g771 * _CarvatureStrength ));
			float WetAlbedoOffset311_g771 = _WetAlbedoOffset;
			float3 temp_output_382_0_g771 = ( lerpResult331_g771 * WetAlbedoOffset311_g771 );
			float WetSplatsAlbedoOffset349_g771 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g771 = lerp( ( temp_output_382_0_g771 * WetSplatsAlbedoOffset349_g771 ) , (_WetColor).rgb , _WetColor.a);
			float ExGloss298_g771 = _ExGloss;
			float2 appendResult657_g771 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g771 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g771 = i.uv_texcoord * appendResult657_g771 + appendResult658_g771;
			float2 WetStrUV669_g771 = uv_TexCoord660_g771;
			float WetStr661_g771 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g771 ).g;
			float smoothstepResult922_g771 = smoothstep( ( 1.0 - ExGloss298_g771 ) , 1.0 , WetStr661_g771);
			float StreaksAlpha930_g771 = smoothstepResult922_g771;
			float WetOpStreaks673_g771 = _WetOpacityStreaks;
			float2 appendResult287_g771 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g771 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g771 = i.uv_texcoord * appendResult287_g771 + appendResult285_g771;
			float2 WetUV578_g771 = uv_TexCoord317_g771;
			float WetSplats369_g771 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g771 ).b;
			float SplatsOp363_g771 = _WetOpacitySplats;
			float3 lerpResult460_g771 = lerp( temp_output_382_0_g771 , lerpResult411_g771 , ( ( StreaksAlpha930_g771 * WetOpStreaks673_g771 ) + ( WetSplats369_g771 * SplatsOp363_g771 ) ));
			float2 uv_OcclusionMap429_g771 = i.uv_texcoord;
			float4 tex2DNode429_g771 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g771 );
			float3 WetBodyOffset422_g771 = (_BodyColor1).rgb;
			float bodycoloralpha417_g771 = _BodyColor1.a;
			float3 lerpResult480_g771 = lerp( lerpResult460_g771 , ( tex2DNode429_g771.a == 1.0 ? lerpResult460_g771 : WetBodyOffset422_g771 ) , ( bodycoloralpha417_g771 * ( 1.0 - tex2DNode429_g771.a ) ));
			float3 lerpResult501_g771 = lerp( lerpResult331_g771 , lerpResult480_g771 , ExGloss298_g771);
			float3 lerpResult505_g771 = lerp( lerpResult501_g771 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g771 * 0.282353 ));
			float3 DiffuseMix511_g771 = lerpResult505_g771;
			float3 Diffuse1467 = DiffuseMix511_g771;
			Gradient gradient37_g772 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float2 break194_g771 = Detail1UV173_g771;
			float saferPower168_g771 = max( 0.25 , 0.0001 );
			float temp_output_186_0_g771 = ( pow( saferPower168_g771 , 1.0 ) * 0.01 );
			float2 appendResult218_g771 = (float2(( break194_g771.x + temp_output_186_0_g771 ) , break194_g771.y));
			float4 tex2DNode243_g771 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g771 );
			float temp_output_255_0_g771 = ( DetailMask130_g771 * _DetailNormalMapScale );
			float3 appendResult300_g771 = (float3(-1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g771 ).g - tex2DNode243_g771.g ) * temp_output_255_0_g771 )));
			float2 appendResult222_g771 = (float2(break194_g771.x , ( break194_g771.y + temp_output_186_0_g771 )));
			float3 appendResult297_g771 = (float3(0.0 , -1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g771 ).g - tex2DNode243_g771.g ) * temp_output_255_0_g771 )));
			float3 normalizeResult348_g771 = normalize( cross( appendResult300_g771 , appendResult297_g771 ) );
			float3 DetailNormal1368_g771 = normalizeResult348_g771;
			float2 break24_g771 = Detail2UV20_g771;
			float saferPower22_g771 = max( 0.25 , 0.0001 );
			float temp_output_26_0_g771 = ( pow( saferPower22_g771 , 1.0 ) * 0.01 );
			float2 appendResult34_g771 = (float2(( break24_g771.x + temp_output_26_0_g771 ) , break24_g771.y));
			float4 tex2DNode38_g771 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g771 );
			float temp_output_43_0_g771 = ( DetailMask235_g771 * _DetailNormalMapScale2 );
			float3 appendResult58_g771 = (float3(-1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g771 ).g - tex2DNode38_g771.g ) * temp_output_43_0_g771 )));
			float2 appendResult33_g771 = (float2(break24_g771.x , ( break24_g771.y + temp_output_26_0_g771 )));
			float3 appendResult57_g771 = (float3(0.0 , -1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g771 ).g - tex2DNode38_g771.g ) * temp_output_43_0_g771 )));
			float3 normalizeResult69_g771 = normalize( cross( appendResult58_g771 , appendResult57_g771 ) );
			float3 DetailNormal276_g771 = normalizeResult69_g771;
			float lerpResult874_g771 = lerp( 0.0 , Fresnel707_g771 , _FresnelBumpSmooth);
			float3 lerpResult767_g771 = lerp( BlendNormals( BlendNormals( tex2DNode402_g771 , DetailNormal1368_g771 ) , DetailNormal276_g771 ) , float3(0,0,1) , lerpResult874_g771);
			float2 break547_g771 = WetStrUV669_g771;
			float temp_output_541_0_g771 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g771 = (float2(( break547_g771.x + temp_output_541_0_g771 ) , break547_g771.y));
			float4 tex2DNode515_g771 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g771 );
			float3 appendResult523_g771 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g771 ).g - tex2DNode515_g771.g ) * 1.0 )));
			float2 appendResult534_g771 = (float2(break547_g771.x , ( break547_g771.y + temp_output_541_0_g771 )));
			float3 appendResult542_g771 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g771 ).g - tex2DNode515_g771.g ) * 1.0 )));
			float3 normalizeResult524_g771 = normalize( cross( appendResult523_g771 , appendResult542_g771 ) );
			float3 WetnessNormal545_g771 = normalizeResult524_g771;
			float3 lerpResult98_g771 = lerp( lerpResult767_g771 , WetnessNormal545_g771 , ( StreaksAlpha930_g771 * WetOpStreaks673_g771 ));
			float2 break223_g771 = WeatheringUV144_g771;
			float temp_output_224_0_g771 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g771 = (float2(( break223_g771.x + temp_output_224_0_g771 ) , break223_g771.y));
			float4 tex2DNode266_g771 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g771 );
			float3 appendResult344_g771 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g771 ).b - tex2DNode266_g771.b ) * 2.0 )));
			float2 appendResult252_g771 = (float2(break223_g771.x , ( break223_g771.y + temp_output_224_0_g771 )));
			float3 appendResult339_g771 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g771 ).b - tex2DNode266_g771.b ) * 2.0 )));
			float3 normalizeResult398_g771 = normalize( cross( appendResult344_g771 , appendResult339_g771 ) );
			float3 WeatheringBump425_g771 = normalizeResult398_g771;
			float clampResult373_g771 = clamp( ( lerpResult313_g771 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g771 = clampResult373_g771;
			float3 lerpResult87_g771 = lerp( lerpResult98_g771 , WeatheringBump425_g771 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g771 ).b * WeatheringAlpha396_g771 ));
			float3 normalizeResult564_g771 = normalize( lerpResult87_g771 );
			float3 OutNormal1473 = normalizeResult564_g771;
			float dotResult7_g772 = dot( ase_tanViewDir , OutNormal1473 );
			float3 temp_output_12_0_g772 = (SampleGradient( gradient37_g772, dotResult7_g772 )).rgb;
			float temp_output_10_0_g772 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g772 = cos( temp_output_10_0_g772 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g772 = dot( _k7 , temp_output_12_0_g772 );
			float3 temp_output_32_0_g772 = ( ( ( ( ( ( temp_output_12_0_g772 * temp_output_13_0_g772 ) + ( cross( _k7 , temp_output_12_0_g772 ) * sin( temp_output_10_0_g772 ) ) + ( _k7 * dotResult14_g772 * ( 1.0 - temp_output_13_0_g772 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g772 = dot( temp_output_32_0_g772 , float3(0.39,0.59,0.11) );
			float3 temp_cast_2 = (dotResult34_g772).xxx;
			float3 lerpResult35_g772 = lerp( temp_cast_2 , temp_output_32_0_g772 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1424_0 = lerpResult35_g772;
			float3 blendOpSrc1428 = temp_output_1424_0;
			float3 blendOpDest1428 = Diffuse1467;
			float2 uv_MetallicGlossMap532_g771 = i.uv_texcoord;
			float4 tex2DNode532_g771 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g771 );
			float MetallicGlossMask905_g771 = tex2DNode532_g771.r;
			float lerpResult968_g771 = lerp( 1.0 , MetallicGlossMask905_g771 , _MetallicMask);
			float2 uv_DetailMainTex528_g771 = i.uv_texcoord;
			float4 tex2DNode528_g771 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g771 );
			float MainMetallic994_g771 = tex2DNode528_g771.r;
			float lerpResult966_g771 = lerp( 1.0 , MetallicGlossMask905_g771 , _MetallicMask4);
			float lerpResult964_g771 = lerp( ( lerpResult968_g771 * MainMetallic994_g771 ) , ( lerpResult966_g771 * _Metallic4 ) , ColorMask4347_g771);
			float lerpResult999_g771 = lerp( saturate( ( ( lerpResult964_g771 - ( ( 1.0 - Detail1Alpha749_g771 ) * ( _DetailMetallicScale * DetailMask130_g771 ) ) ) - ( ( 1.0 - Detail2Alpha747_g771 ) * ( _DetailMetallicScale2 * DetailMask235_g771 ) ) ) ) , 1.0 , ( Fresnel707_g771 * _FresnelMetallic ));
			float lerpResult923_g771 = lerp( lerpResult999_g771 , 0.0 , WeatheringAlpha2466_g771);
			float OutMet1477 = saturate( lerpResult923_g771 );
			float3 lerpBlendMode1428 = lerp(blendOpDest1428,( blendOpSrc1428 * blendOpDest1428 ),OutMet1477);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1433 = ( saturate( lerpBlendMode1428 ));
			#else
				float3 staticSwitch1433 = Diffuse1467;
			#endif
			half3 specColor1437 = (0).xxx;
			half oneMinusReflectivity1437 = 0;
			half3 diffuseAndSpecularFromMetallic1437 = DiffuseAndSpecularFromMetallic(staticSwitch1433,OutMet1477,specColor1437,oneMinusReflectivity1437);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1440 = Diffuse1467;
			#else
				float3 staticSwitch1440 = diffuseAndSpecularFromMetallic1437;
			#endif
			float3 OutAlbedo1443 = staticSwitch1440;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 lightDir14_g775 = ase_worldlightDir;
			float3 viewDir15_g775 = ase_worldViewDir;
			float3 normalizeResult136_g775 = ASESafeNormalize( ( lightDir14_g775 + viewDir15_g775 ) );
			float dotResult137_g775 = dot( lightDir14_g775 , normalizeResult136_g775 );
			float LdotH139_g775 = saturate( dotResult137_g775 );
			float mgAlpha904_g771 = tex2DNode532_g771.a;
			float lerpResult944_g771 = lerp( 1.0 , mgAlpha904_g771 , _Roughness);
			float MainGlossiness993_g771 = tex2DNode528_g771.b;
			float lerpResult940_g771 = lerp( 1.0 , mgAlpha904_g771 , _Roughness4);
			float lerpResult960_g771 = lerp( ( lerpResult944_g771 * MainGlossiness993_g771 ) , ( lerpResult940_g771 * _Glossiness4 ) , ColorMask4347_g771);
			float temp_output_936_0_g771 = ( ( 1.0 - Detail1Alpha749_g771 ) * ( _DetailGlossScale * DetailMask130_g771 ) );
			float temp_output_934_0_g771 = ( ( 1.0 - Detail2Alpha747_g771 ) * ( _DetailGlossScale2 * DetailMask235_g771 ) );
			float WetGlossBase397_g771 = _WetGlossBase;
			float lerpResult920_g771 = lerp( saturate( ( ( lerpResult960_g771 - temp_output_936_0_g771 ) - temp_output_934_0_g771 ) ) , mgAlpha904_g771 , ( WetGlossBase397_g771 * ExGloss298_g771 ));
			float SplatsGloss407_g771 = _WetGlossSplats;
			float lerpResult914_g771 = lerp( lerpResult920_g771 , SplatsGloss407_g771 , ( SplatsOp363_g771 * ExGloss298_g771 * WetSplats369_g771 ));
			float lerpResult918_g771 = lerp( lerpResult914_g771 , 0.87 , ( WetOpStreaks673_g771 * smoothstepResult922_g771 ));
			float lerpResult927_g771 = lerp( lerpResult918_g771 , _WeatheringGloss , WeatheringAlpha396_g771);
			float GlossinessFinal949_g771 = saturate( lerpResult927_g771 );
			float OutSmoothness1471 = GlossinessFinal949_g771;
			float smoothness169_g775 = OutSmoothness1471;
			float perceprualRoughness188_g775 = ( 1.0 - smoothness169_g775 );
			half fd90273_g775 = ( 0.5 + ( 2.0 * LdotH139_g775 * LdotH139_g775 * perceprualRoughness188_g775 ) );
			float3 normalizeResult25_g775 = normalize( (WorldNormalVector( i , OutNormal1473 )) );
			float3 switchResult316_g775 = (((i.ASEVFace>0)?(normalizeResult25_g775):(-normalizeResult25_g775)));
			float3 normalDir28_g775 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g775 : normalizeResult25_g775 );
			float dotResult21_g775 = dot( lightDir14_g775 , normalDir28_g775 );
			float NdotL20_g775 = saturate( dotResult21_g775 );
			half lightScatter253_g775 = ( ( ( fd90273_g775 - 1.0 ) * pow( ( 1.0 - NdotL20_g775 ) , 5.0 ) ) + 1.0 );
			float dotResult56_g775 = dot( normalDir28_g775 , viewDir15_g775 );
			float NdotV55_g775 = saturate( dotResult56_g775 );
			half viewScatter254_g775 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g775 ) , 5.0 ) * ( fd90273_g775 - 1.0 ) ) );
			half disneydiffuse251_g775 = ( lightScatter253_g775 * viewScatter254_g775 );
			half Diffuseterm281_g775 = ( disneydiffuse251_g775 * NdotL20_g775 );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 lightAtten296_g775 = ( ase_lightColor.rgb * ase_lightAtten );
			UnityGI gi203_g775 = gi;
			float3 diffNorm203_g775 = normalDir28_g775;
			gi203_g775 = UnityGI_Base( data, 1, diffNorm203_g775 );
			float3 indirectDiffuse203_g775 = gi203_g775.indirect.diffuse + diffNorm203_g775 * 0.0001;
			float2 uv_OcclusionMap623_g771 = i.uv_texcoord;
			float lerpResult483_g771 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g771 ).g , _OcculusionStrength);
			float smoothstepResult621_g771 = smoothstep( 0.0 , 0.8 , tex2DNode291_g771.r);
			float lerpResult488_g771 = lerp( 1.0 , smoothstepResult621_g771 , ( _DetailOcculusionScale * DetailMask130_g771 ));
			float smoothstepResult622_g771 = smoothstep( 0.0 , 0.8 , tex2DNode328_g771.r);
			float lerpResult494_g771 = lerp( 1.0 , smoothstepResult622_g771 , ( _DetailOcculusionScale2 * DetailMask235_g771 ));
			float temp_output_1006_0_g771 = ( 1.0 - ( Fresnel707_g771 * _FresnelOcclusion ) );
			float temp_output_497_0_g771 = ( lerpResult483_g771 * lerpResult488_g771 * lerpResult494_g771 * temp_output_1006_0_g771 );
			float OutAO1470 = temp_output_497_0_g771;
			float occlusion306_g775 = OutAO1470;
			half Roughness64_g775 = max( ( perceprualRoughness188_g775 * perceprualRoughness188_g775 ) , 0.002 );
			half SmithJointGGXVisibilityTerm42_g775 = ( 0.5 / ( ( ( ( NdotV55_g775 * ( 1.0 - Roughness64_g775 ) ) + Roughness64_g775 ) * NdotL20_g775 ) + 1E-05 + ( NdotV55_g775 * ( Roughness64_g775 + ( ( 1.0 - Roughness64_g775 ) * NdotL20_g775 ) ) ) ) );
			float a266_g775 = ( Roughness64_g775 * Roughness64_g775 );
			float3 normalizeResult87_g775 = ASESafeNormalize( ( lightDir14_g775 + viewDir15_g775 ) );
			float dotResult88_g775 = dot( normalDir28_g775 , normalizeResult87_g775 );
			float NdotH90_g775 = saturate( dotResult88_g775 );
			float d99_g775 = ( ( ( ( NdotH90_g775 * a266_g775 ) - NdotH90_g775 ) * NdotH90_g775 ) + 1.0 );
			half GGXTerm43_g775 = ( ( ( 1.0 / UNITY_PI ) * a266_g775 ) / ( ( d99_g775 * d99_g775 ) + 1E-07 ) );
			float temp_output_36_0_g775 = ( SmithJointGGXVisibilityTerm42_g775 * GGXTerm43_g775 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g775 = sqrt( max( 0.0001 , temp_output_36_0_g775 ) );
			#else
				float staticSwitch5_g775 = temp_output_36_0_g775;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g775 = 0.0;
			#else
				float staticSwitch119_g775 = max( 0.0 , ( staticSwitch5_g775 * NdotL20_g775 ) );
			#endif
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1438 = temp_output_1424_0;
			#else
				float3 staticSwitch1438 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1431 = i.uv_texcoord;
			half3 specColor1442 = (0).xxx;
			half oneMinusReflectivity1442 = 0;
			half3 diffuseAndSpecularFromMetallic1442 = DiffuseAndSpecularFromMetallic(( staticSwitch1438 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1431 )).rgb ),OutMet1477,specColor1442,oneMinusReflectivity1442);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1444 = specColor1442;
			#else
				float3 staticSwitch1444 = specColor1437;
			#endif
			float3 OutSpec1486 = staticSwitch1444;
			float3 SpecColor140_g775 = ( OutSpec1486 * occlusion306_g775 );
			float SpecularTerm34_g775 = ( staticSwitch119_g775 * ( SpecColor140_g775.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			half3 FresnelTerm130_g775 = ( ( pow( ( 1.0 - LdotH139_g775 ) , 5.0 ) * ( 1.0 - SpecColor140_g775 ) ) + SpecColor140_g775 );
			half metallic176_g775 = 0.0;
			half localOneMinusReflectivity176_g775 = OneMinusReflectivity( metallic176_g775 );
			half GrazingTerm163_g775 = saturate( ( smoothness169_g775 + ( 1.0 - localOneMinusReflectivity176_g775 ) ) );
			float3 temp_cast_4 = (GrazingTerm163_g775).xxx;
			float3 lerpResult159_g775 = lerp( SpecColor140_g775 , temp_cast_4 , pow( ( 1.0 - NdotV55_g775 ) , 5.0 ));
			half3 FresnelLerp165_g775 = lerpResult159_g775;
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g775 = ( 1.0 - ( 0.28 * Roughness64_g775 * perceprualRoughness188_g775 ) );
			#else
				float staticSwitch183_g775 = ( 1.0 / ( ( Roughness64_g775 * Roughness64_g775 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g775 = staticSwitch183_g775;
			float3 indirectNormal299_g775 = normalDir28_g775;
			Unity_GlossyEnvironmentData g299_g775 = UnityGlossyEnvironmentSetup( smoothness169_g775, data.worldViewDir, indirectNormal299_g775, float3(0,0,0));
			float3 indirectSpecular299_g775 = UnityGI_IndirectSpecular( data, occlusion306_g775, indirectNormal299_g775, g299_g775 );
			#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g775 = float3( 0,0,0 );
			#else
				float3 staticSwitch313_g775 = ( FresnelLerp165_g775 * SurfaceReduction182_g775 * indirectSpecular299_g775 );
			#endif
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g775 = float3( 0,0,0 );
			#else
				float3 staticSwitch305_g775 = staticSwitch313_g775;
			#endif
			float EmissionMask903_g771 = tex2DNode532_g771.g;
			float WeatheringBumpMask813_g771 = tex2DNode177_g771.b;
			float3 OutEmission1475 = ( ( EmissionMask903_g771 * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g771 * WeatheringBumpMask813_g771 ) * _WeatheringEmission ) );
			float3 normalizeResult61_g773 = normalize( (WorldNormalVector( i , OutNormal1473 )) );
			float3 switchResult64_g773 = (((i.ASEVFace>0)?(normalizeResult61_g773):(-normalizeResult61_g773)));
			float3 normal2_g774 = ( _NormalBackDirInvert == 1.0 ? switchResult64_g773 : normalizeResult61_g773 );
			float3 localGI2_g774 = GI2_g774( normal2_g774 );
			float temp_output_59_0_g773 = ( _Translucency * 1.0 );
			float3 temp_output_6_0_g773 = Diffuse1467;
			float temp_output_74_0_g773 = OutAO1470;
			c.rgb = ( ( ( OutAlbedo1443 * ( ( Diffuseterm281_g775 * lightAtten296_g775 ) + ( indirectDiffuse203_g775 * occlusion306_g775 ) ) ) + ( SpecularTerm34_g775 * lightAtten296_g775 * FresnelTerm130_g775 ) + staticSwitch305_g775 ) + OutEmission1475 + saturate( ( ( localGI2_g774 * _TransAmbient ) * temp_output_59_0_g773 * temp_output_6_0_g773 * temp_output_74_0_g773 ) ) );
			c.a = OutOp1476;
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d11_9x d3d11 
		#pragma surface surf StandardCustomLighting alpha:fade keepalpha fullforwardshadows 

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
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
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
6;0.4;1524;884;-832.6818;3490.546;3.450812;True;False
Node;AmplifyShaderEditor.FunctionNode;1642;1645.265,-1871.037;Inherit;False;AIT Anisotropic Pantyhose;11;;771;08af0a6459a452e4fb71b757a6dcf124;0;0;13;FLOAT;998;FLOAT;881;FLOAT;882;FLOAT3;0;FLOAT3;557;FLOAT;990;FLOAT;991;FLOAT3;558;FLOAT;992;SAMPLERSTATE;996;FLOAT;561;FLOAT;617;FLOAT;799
Node;AmplifyShaderEditor.RegisterLocalVarNode;1473;2177.35,-1940.101;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1498;2999.038,-2258.369;Inherit;False;2669.274;1020.429;Comment;20;1486;1444;1443;1440;1437;1447;1442;1439;1433;1448;1438;1428;1435;1497;1483;1424;1431;1430;1427;1496;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1467;2177.853,-2022.287;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1477;2176.772,-1857.735;Inherit;False;OutMet;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1496;3049.038,-1630.589;Inherit;False;1473;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1427;3690.849,-1756.404;Inherit;False;Property;_SpecColor;SpecColor;89;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1430;3925.589,-1755.994;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1431;3668.781,-1536.66;Inherit;True;Property;_SpecularMap;SpecularMap;86;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1424;3275.464,-1624.484;Inherit;False;Iridiscence;90;;772;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1483;3344.497,-1410.559;Inherit;False;1477;OutMet;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1497;3304.947,-2067.309;Inherit;False;1467;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1438;4179.324,-1652.709;Inherit;False;Property;_Iridiscent4;Iridiscent;88;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1433;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1435;3971.674,-1536.588;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1428;3593.823,-1985.932;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1448;3538.037,-2130.599;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1433;3834.931,-2070.927;Inherit;False;Property;_Iridiscent;Iridiscent;88;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1439;4443.274,-1553.21;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1442;4599.401,-1433.267;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1447;3588.74,-2157.641;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1437;4088.999,-1972.487;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1440;4452.619,-2208.169;Inherit;False;Property;_SpecularSetup4;SpecularSetup;87;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1444;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1444;5023.821,-1953.157;Inherit;False;Property;_SpecularSetup;SpecularSetup;87;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1640;1978.591,-1327.81;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1443;4743.488,-2208.369;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1471;2178.917,-1775.02;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1486;5406.31,-1952.511;Inherit;False;OutSpec;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1418;1858.464,-1221.876;Inherit;False;Property;_Cutoff;Cutoff;95;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1470;2180.415,-1517.822;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1495;6596.367,-2389.722;Inherit;False;1706.642;1230.222;Comment;14;0;1482;1385;1457;1481;1466;1468;1478;1479;1489;1480;1488;1490;1635;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.ClipNode;1445;2182.27,-1322.163;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1480;6736.013,-1743.487;Inherit;False;1470;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1475;2177.624,-1691.617;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1488;6718.659,-2339.722;Inherit;False;1443;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1479;6722.185,-1569.675;Inherit;False;1473;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1478;6717.935,-2251.374;Inherit;False;1473;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1490;6692.752,-2075.715;Inherit;False;1471;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1468;6735.151,-1657.434;Inherit;False;1467;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1489;6735.53,-2162.682;Inherit;False;1486;OutSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1481;7119.607,-1818.771;Inherit;False;1475;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1476;2428.628,-1328.273;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1466;7038.911,-1638.253;Inherit;False;Unity Translucency;2;;773;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;74;FLOAT;0;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.FunctionNode;1635;7122.289,-2203.435;Inherit;False;GGX Specular Light;0;;775;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1638;1703.308,-1367.281;Inherit;False;Constant;_Float21;Float 21;10;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1385;7712.61,-1604.745;Inherit;False;Property;_CullMode;CullMode;96;1;[IntRange];Create;True;0;0;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1557;2180.542,-1603.197;Inherit;False;detsam;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1457;7561.61,-1835.06;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1482;7411.905,-1587.764;Inherit;False;1476;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1562;2177.208,-2106.263;Inherit;False;OutFresnel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;7758.838,-2062.943;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Hanmen/Clothes True Pantyhose;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;2;True;1419;3;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.1;True;True;-1;False;Transparent;2600;Transparent;All;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;119;False;-1;122;False;-1;104;False;-1;6;False;-1;1;False;-1;1;False;-1;3;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;False;-1;10;False;-1;0;1;False;-1;10;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;1385;-1;0;True;1418;0;0;0;False;0.1;False;-1;0;False;-1;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1473;0;1642;557
WireConnection;1467;0;1642;0
WireConnection;1477;0;1642;990
WireConnection;1430;0;1427;0
WireConnection;1424;1;1496;0
WireConnection;1438;1;1430;0
WireConnection;1438;0;1424;0
WireConnection;1435;0;1431;0
WireConnection;1428;0;1424;0
WireConnection;1428;1;1497;0
WireConnection;1428;2;1483;0
WireConnection;1448;0;1497;0
WireConnection;1433;1;1497;0
WireConnection;1433;0;1428;0
WireConnection;1439;0;1438;0
WireConnection;1439;1;1435;0
WireConnection;1442;0;1439;0
WireConnection;1442;1;1483;0
WireConnection;1447;0;1448;0
WireConnection;1437;0;1433;0
WireConnection;1437;1;1483;0
WireConnection;1440;1;1437;0
WireConnection;1440;0;1447;0
WireConnection;1444;1;1437;1
WireConnection;1444;0;1442;1
WireConnection;1640;0;1642;799
WireConnection;1443;0;1440;0
WireConnection;1471;0;1642;991
WireConnection;1486;0;1444;0
WireConnection;1470;0;1642;561
WireConnection;1445;0;1642;617
WireConnection;1445;1;1640;0
WireConnection;1445;2;1418;0
WireConnection;1475;0;1642;558
WireConnection;1476;0;1445;0
WireConnection;1466;6;1468;0
WireConnection;1466;26;1479;0
WireConnection;1466;74;1480;0
WireConnection;1635;286;1488;0
WireConnection;1635;30;1478;0
WireConnection;1635;146;1489;0
WireConnection;1635;147;1490;0
WireConnection;1635;302;1480;0
WireConnection;1557;0;1642;996
WireConnection;1457;0;1635;0
WireConnection;1457;1;1481;0
WireConnection;1457;2;1466;68
WireConnection;1562;0;1642;998
WireConnection;0;9;1482;0
WireConnection;0;13;1457;0
ASEEND*/
//CHKSM=39AD73F8C579B99D2C7D74650C2F12DF8E460E5F