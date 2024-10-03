// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Alpha"
{
	Properties
	{
		[Header(Backface Settings)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[Toggle]_NormalBackDirInvert("Normal Invert", Range( 0 , 1)) = 1
		_AlphaMaster("AlphaMaster", Range( 0 , 1)) = 1
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) MetallicMask)][Header((G) Emission)][Header((B) Thickness)][Header((A) Roughness)]_MetallicGlossMap("", 2D) = "white" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (1,1,0,0)
		_WetUV("WetUV", Vector) = (1,1,0,0)
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0.6,0.65,0.65,0)
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_WeatheringUV("WeatheringUV", Vector) = (1,1,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_Float0("Float0", Range( 0 , 3)) = 1
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = 1
		[NoScaleOffset][Header (Detail Mask)]_DetailMask("", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1 (Grayscale))]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header (Detail2 (Grayscale))]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 9
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		[Header (Ambient Occlusion)]_OcculusionStrength("OcculusionStrength", Range( 0 , 1)) = 1
		[Header (Metallic Roughness (Optional))]_Roughness("Roughness", Range( 0 , 1)) = 0.8
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		[Header (Color 4 Settings (Optional))]_Glossiness4("Glossiness4", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 0.8
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		_RoughnessReflections("RoughnessReflections", Range( 0 , 1)) = 0.1648498
		_GlossinessReflection("GlossinessReflection", Range( 0 , 1)) = 1
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
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 0
		_WetOpacityStreaks("WetOpacityStreaks", Range( 0 , 2)) = 0
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0.5
		_WetColor("WetColor", Color) = (0,0,0,0)
		_WetAlpha("WetAlpha", Range( 0 , 10)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		[Toggle(_EMISSIONCOLORTEXBASE_ON)] _EmissionColorTexBase("EmissionColorTexBase", Float) = 0
		[Header(Emission Effect)][NoScaleOffset]_EffectMap("EffectMap", 2D) = "white" {}
		_UVScroll("UVScroll", Vector) = (1,1,0,0)
		_UVScrollRotator("UVScrollRotator", Range( -1 , 1)) = 0
		[Header(Fresnel Settings)]_FresnelPower("FresnelPower", Range( 0 , 10)) = 3
		_FresnelBias("FresnelBias", Range( 0 , 1)) = 0
		_FresnelScale("FresnelScale", Range( 0 , 10)) = 0
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[HideInInspector][Toggle(_SHADERTYPE_CLOTHING)] _SHADERTYPE_CLOTHING("SHADERTYPE_CLOTHING", Float) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" }
		Cull [_CullMode]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile __ _EMISSIONCOLORTEXBASE_ON
		#pragma shader_feature _SHADERTYPE_CLOTHING
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
			float3 worldPos;
			float3 worldNormal;
			INTERNAL_DATA
			float2 uv_texcoord;
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
		uniform float _DetailGlossScale;
		uniform float _WetGlossSplats;
		uniform float _WeatheringRange3;
		uniform float _WeatheringRange2;
		uniform float4 _WetStreaksUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float4 _WetUV;
		uniform float _CarvatureStrength;
		uniform float _GlossinessReflection;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _Float0;
		uniform float _WetSplatsAlbedoOffset;
		uniform float4 _BodyColor1;
		uniform float _Metallic4;
		uniform float _WetAlbedoOffset;
		uniform float2 _DetailUV;
		uniform float _RoughnessReflections;
		uniform float4 _WeatheringAlbedo;
		uniform float _DetailNormalMapScale;
		uniform float _DetailNormalMapScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float4 _BaseColor;
		uniform float _WetBumpOffset;
		uniform float _WetGlossBase;
		uniform float _DetailUV2Rotator;
		uniform float2 _DetailUV2;
		uniform float _WetOpacityStreaks;
		uniform float4 _WetColor;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringRange5;
		uniform float _WeatheringRange4;
		uniform float _WeatheringRange1;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _ExGloss;
		uniform float _WetOpacitySplats;
		uniform float2 _patternuvbase;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _WeatheringAll;
		uniform float _DetailUVRotator;
		uniform float4 _WeatheringUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex;
		uniform float _DetailGlossScale2;
		uniform float _WeatheringUVSeed;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _WeatheringGloss;
		uniform float _DetailMetallicScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _DetailMetallicScale;
		uniform float _WetAlpha;
		uniform float _AlphaEx;
		uniform float _AlphaMaster;
		uniform float _UVScrollRotator;
		uniform float4 _UVScroll;
		uniform float4 _EmissionColor;
		uniform float _EmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		uniform float4 _Color4;
		uniform float _CullMode;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_linear_repeat;
		uniform float _FresnelBias;
		uniform float _FresnelScale;
		uniform float _FresnelPower;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Roughness4;
		uniform float _Glossiness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
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


		float3 GI2_g197( float3 normal )
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
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float2 uv_BumpMap402_g200 = i.uv_texcoord;
			float WetBumpOffset303_g200 = _WetBumpOffset;
			float ExGloss298_g200 = _ExGloss;
			float2 UVScale107_g200 = _UVScalePattern;
			float2 uv_TexCoord152_g200 = i.uv_texcoord * ( _DetailUV * UVScale107_g200 );
			float cos162_g200 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g200 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g200 = mul( uv_TexCoord152_g200 - float2( 0.5,0.5 ) , float2x2( cos162_g200 , -sin162_g200 , sin162_g200 , cos162_g200 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g200 = rotator162_g200;
			float2 break194_g200 = Detail1UV173_g200;
			float saferPower168_g200 = abs( 0.25 );
			float temp_output_186_0_g200 = ( pow( saferPower168_g200 , 3.0 ) * 0.2 );
			float2 appendResult218_g200 = (float2(( break194_g200.x + temp_output_186_0_g200 ) , break194_g200.y));
			float4 tex2DNode243_g200 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g200 );
			float2 uv_DetailMask25_g200 = i.uv_texcoord;
			float4 tex2DNode25_g200 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g200 );
			float DetailMask130_g200 = tex2DNode25_g200.r;
			float temp_output_255_0_g200 = ( DetailMask130_g200 * _DetailNormalMapScale );
			float temp_output_283_0_g200 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g200 ).g - tex2DNode243_g200.g ) * temp_output_255_0_g200 );
			float3 appendResult300_g200 = (float3(1.0 , 0.0 , temp_output_283_0_g200));
			float2 appendResult222_g200 = (float2(break194_g200.x , ( break194_g200.y + temp_output_186_0_g200 )));
			float temp_output_268_0_g200 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g200 ).g - tex2DNode243_g200.g ) * temp_output_255_0_g200 );
			float3 appendResult297_g200 = (float3(0.0 , 1.0 , temp_output_268_0_g200));
			float3 normalizeResult348_g200 = normalize( cross( appendResult300_g200 , appendResult297_g200 ) );
			float3 DetailNormal1368_g200 = normalizeResult348_g200;
			float2 uv_TexCoord16_g200 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g200 );
			float cos19_g200 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g200 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g200 = mul( uv_TexCoord16_g200 - float2( 0.5,0.5 ) , float2x2( cos19_g200 , -sin19_g200 , sin19_g200 , cos19_g200 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g200 = rotator19_g200;
			float2 break24_g200 = Detail2UV20_g200;
			float saferPower22_g200 = abs( 0.25 );
			float temp_output_26_0_g200 = ( pow( saferPower22_g200 , 3.0 ) * 0.2 );
			float2 appendResult34_g200 = (float2(( break24_g200.x + temp_output_26_0_g200 ) , break24_g200.y));
			float4 tex2DNode38_g200 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g200 );
			float DetailMask235_g200 = tex2DNode25_g200.g;
			float temp_output_43_0_g200 = ( DetailMask235_g200 * _DetailNormalMapScale2 );
			float temp_output_50_0_g200 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g200 ).g - tex2DNode38_g200.g ) * temp_output_43_0_g200 );
			float3 appendResult58_g200 = (float3(1.0 , 0.0 , temp_output_50_0_g200));
			float2 appendResult33_g200 = (float2(break24_g200.x , ( break24_g200.y + temp_output_26_0_g200 )));
			float temp_output_53_0_g200 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g200 ).g - tex2DNode38_g200.g ) * temp_output_43_0_g200 );
			float3 appendResult57_g200 = (float3(0.0 , 1.0 , temp_output_53_0_g200));
			float3 normalizeResult69_g200 = normalize( cross( appendResult58_g200 , appendResult57_g200 ) );
			float3 DetailNormal276_g200 = normalizeResult69_g200;
			float2 appendResult657_g200 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g200 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g200 = i.uv_texcoord * appendResult657_g200 + appendResult658_g200;
			float2 WetStrUV669_g200 = uv_TexCoord660_g200;
			float2 break547_g200 = WetStrUV669_g200;
			float temp_output_541_0_g200 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g200 = (float2(( break547_g200.x + temp_output_541_0_g200 ) , break547_g200.y));
			float4 tex2DNode515_g200 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g200 );
			float3 appendResult523_g200 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g200 ).g - tex2DNode515_g200.g ) * 1.0 )));
			float2 appendResult534_g200 = (float2(break547_g200.x , ( break547_g200.y + temp_output_541_0_g200 )));
			float3 appendResult542_g200 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g200 ).g - tex2DNode515_g200.g ) * 1.0 )));
			float3 normalizeResult524_g200 = normalize( cross( appendResult523_g200 , appendResult542_g200 ) );
			float3 WetnessNormal545_g200 = normalizeResult524_g200;
			float WetStr661_g200 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g200 ).g;
			float smoothstepResult651_g200 = smoothstep( ( 1.0 - ExGloss298_g200 ) , 1.0 , WetStr661_g200);
			float StreaksAlpha662_g200 = smoothstepResult651_g200;
			float WetOpStreaks673_g200 = _WetOpacityStreaks;
			float3 lerpResult98_g200 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g200 ), ( _Float0 + ( WetBumpOffset303_g200 * ExGloss298_g200 ) ) ) , DetailNormal1368_g200 ) , DetailNormal276_g200 ) , WetnessNormal545_g200 , ( StreaksAlpha662_g200 * WetOpStreaks673_g200 ));
			float2 appendResult115_g200 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g200 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult731_g200 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult737_g200 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g200 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g200 = i.uv_texcoord * appendResult115_g200 + ( appendResult110_g200 + lerpResult737_g200 );
			float2 WeatheringUV144_g200 = uv_TexCoord127_g200;
			float2 break223_g200 = WeatheringUV144_g200;
			float temp_output_224_0_g200 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g200 = (float2(( break223_g200.x + temp_output_224_0_g200 ) , break223_g200.y));
			float4 tex2DNode266_g200 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g200 );
			float3 appendResult344_g200 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g200 ).b - tex2DNode266_g200.b ) * 2.0 )));
			float2 appendResult252_g200 = (float2(break223_g200.x , ( break223_g200.y + temp_output_224_0_g200 )));
			float3 appendResult339_g200 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g200 ).b - tex2DNode266_g200.b ) * 2.0 )));
			float3 normalizeResult398_g200 = normalize( cross( appendResult344_g200 , appendResult339_g200 ) );
			float3 WeatheringBump425_g200 = normalizeResult398_g200;
			float4 tex2DNode177_g200 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g200 );
			float2 uv_WeatheringMask100_g200 = i.uv_texcoord;
			float4 tex2DNode100_g200 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g200 );
			float clampResult161_g200 = clamp( ( tex2DNode100_g200.r - tex2DNode100_g200.g ) , 0.0 , 1.0 );
			float WMask1183_g200 = ( clampResult161_g200 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g200 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g200 = clamp( ( ( tex2DNode177_g200.g * WMask1183_g200 ) - RangeCut1208_g200 ) , 0.0 , 1.0 );
			float clampResult159_g200 = clamp( ( tex2DNode100_g200.g - tex2DNode100_g200.r ) , 0.0 , 1.0 );
			float WMask2192_g200 = ( clampResult159_g200 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g200 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g200 = clamp( ( ( tex2DNode177_g200.g * WMask2192_g200 ) - RangeCut2211_g200 ) , 0.0 , 1.0 );
			float WMask3190_g200 = ( tex2DNode100_g200.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g200 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g200 = clamp( ( ( tex2DNode177_g200.g * WMask3190_g200 ) - RangeCut3210_g200 ) , 0.0 , 1.0 );
			float WMask4180_g200 = ( ( tex2DNode100_g200.r * tex2DNode100_g200.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g200 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g200 = clamp( ( ( tex2DNode177_g200.g * WMask4180_g200 ) - RangeCut4205_g200 ) , 0.0 , 1.0 );
			float WMask5184_g200 = ( ( tex2DNode100_g200.r * tex2DNode100_g200.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g200 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g200 = clamp( ( ( tex2DNode177_g200.g * WMask5184_g200 ) - RangeCut5201_g200 ) , 0.0 , 1.0 );
			float WMaskAll165_g200 = ceil( _WeatheringAll );
			float RangeCutAll171_g200 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g200 = clamp( ( ( tex2DNode177_g200.g * WMaskAll165_g200 ) - RangeCutAll171_g200 ) , 0.0 , 1.0 );
			float clampResult299_g200 = clamp( ( clampResult253_g200 + clampResult251_g200 + clampResult254_g200 + clampResult259_g200 + clampResult261_g200 + clampResult215_g200 ) , 0.0 , 1.0 );
			float lerpResult313_g200 = lerp( clampResult299_g200 , clampResult215_g200 , WMaskAll165_g200);
			float clampResult373_g200 = clamp( ( lerpResult313_g200 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g200 = clampResult373_g200;
			float3 lerpResult87_g200 = lerp( lerpResult98_g200 , WeatheringBump425_g200 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g200 ).b * WeatheringAlpha396_g200 ));
			float3 normalizeResult564_g200 = normalize( lerpResult87_g200 );
			float3 temp_output_1650_557 = normalizeResult564_g200;
			float3 outNormal1623 = temp_output_1650_557;
			float3 switchResult1653 = (((i.ASEVFace>0)?(outNormal1623):(-outNormal1623)));
			float3 NormalFace1658 = ( _NormalBackDirInvert == 1.0 ? switchResult1653 : outNormal1623 );
			float fresnelNdotV1664 = dot( (WorldNormalVector( i , NormalFace1658 )), ase_worldViewDir );
			float fresnelNode1664 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV1664, _FresnelPower ) );
			float2 uv_MainTex576_g200 = i.uv_texcoord;
			float4 tex2DNode576_g200 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g200 );
			float AlphaInput195_g200 = tex2DNode576_g200.a;
			float2 uv_OcclusionMap196_g200 = i.uv_texcoord;
			float4 tex2DNode196_g200 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g200 );
			float OccAlpha219_g200 = tex2DNode196_g200.a;
			float WeatheringAlpha2466_g200 = lerpResult313_g200;
			float clampResult780_g200 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g200 = tex2DNode196_g200.b;
			clip( ( step( pow( ( 1.0 - clampResult780_g200 ) , 0.2 ) , pow( TearingsMask340_g200 , 0.5 ) ) * AlphaInput195_g200 ) - 0.002);
			float outAlpha1663 = saturate( ( fresnelNode1664 + saturate( ( ( AlphaInput195_g200 * _AlphaMaster * saturate( pow( OccAlpha219_g200 , ( _WetAlpha * ExGloss298_g200 ) ) ) ) + WeatheringAlpha2466_g200 ) ) ) );
			float2 uv_ColorMask304_g200 = i.uv_texcoord;
			float ColorMask4347_g200 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g200 ).b;
			float3 lerpResult815_g200 = lerp( (tex2DNode576_g200).rgb , (tex2DNode576_g200).rgb , ( _Color4.a * ColorMask4347_g200 ));
			float3 temp_cast_1 = (1.0).xxx;
			float Carvature270_g200 = tex2DNode196_g200.r;
			float3 lerpResult331_g200 = lerp( ( lerpResult815_g200 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g200 * _CarvatureStrength ));
			float WetAlbedoOffset311_g200 = _WetAlbedoOffset;
			float3 temp_output_382_0_g200 = ( lerpResult331_g200 * WetAlbedoOffset311_g200 );
			float WetSplatsAlbedoOffset349_g200 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g200 = lerp( ( temp_output_382_0_g200 * WetSplatsAlbedoOffset349_g200 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g200 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g200 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g200 = i.uv_texcoord * appendResult287_g200 + appendResult285_g200;
			float2 WetUV578_g200 = uv_TexCoord317_g200;
			float WetSplats369_g200 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g200 ).b;
			float SplatsOp363_g200 = _WetOpacitySplats;
			float3 lerpResult460_g200 = lerp( temp_output_382_0_g200 , lerpResult411_g200 , ( ( StreaksAlpha662_g200 * WetOpStreaks673_g200 ) + ( WetSplats369_g200 * SplatsOp363_g200 ) ));
			float2 uv_OcclusionMap429_g200 = i.uv_texcoord;
			float4 tex2DNode429_g200 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g200 );
			float3 WetBodyOffset422_g200 = (_BodyColor1).rgb;
			float bodycoloralpha417_g200 = _BodyColor1.a;
			float3 lerpResult480_g200 = lerp( lerpResult460_g200 , ( tex2DNode429_g200.a == 1.0 ? lerpResult460_g200 : WetBodyOffset422_g200 ) , ( bodycoloralpha417_g200 * ( 1.0 - tex2DNode429_g200.a ) ));
			float3 lerpResult501_g200 = lerp( lerpResult331_g200 , lerpResult480_g200 , ExGloss298_g200);
			float3 lerpResult505_g200 = lerp( lerpResult501_g200 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g200 * 0.282353 ));
			float3 DiffuseMix511_g200 = lerpResult505_g200;
			float3 temp_output_1650_0 = DiffuseMix511_g200;
			Gradient gradient37_g195 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g195 = dot( ase_tanViewDir , temp_output_1650_557 );
			float3 temp_output_12_0_g195 = (SampleGradient( gradient37_g195, dotResult7_g195 )).rgb;
			float temp_output_10_0_g195 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g195 = cos( temp_output_10_0_g195 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g195 = dot( _k7 , temp_output_12_0_g195 );
			float3 temp_output_32_0_g195 = ( ( ( ( ( ( temp_output_12_0_g195 * temp_output_13_0_g195 ) + ( cross( _k7 , temp_output_12_0_g195 ) * sin( temp_output_10_0_g195 ) ) + ( _k7 * dotResult14_g195 * ( 1.0 - temp_output_13_0_g195 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g195 = dot( temp_output_32_0_g195 , float3(0.39,0.59,0.11) );
			float3 temp_cast_2 = (dotResult34_g195).xxx;
			float3 lerpResult35_g195 = lerp( temp_cast_2 , temp_output_32_0_g195 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1595_0 = lerpResult35_g195;
			float3 blendOpSrc1596 = temp_output_1595_0;
			float3 blendOpDest1596 = temp_output_1650_0;
			float2 uv_MetallicGlossMap532_g200 = i.uv_texcoord;
			float4 tex2DNode532_g200 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g200 );
			float MetallicGlossMask800_g200 = tex2DNode532_g200.r;
			float lerpResult399_g200 = lerp( 1.0 , MetallicGlossMask800_g200 , _MetallicMask);
			float2 uv_DetailMainTex528_g200 = i.uv_texcoord;
			float4 tex2DNode528_g200 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g200 );
			float MainMetallic797_g200 = tex2DNode528_g200.r;
			float lerpResult395_g200 = lerp( 1.0 , MetallicGlossMask800_g200 , _MetallicMask4);
			float lerpResult462_g200 = lerp( ( lerpResult399_g200 * MainMetallic797_g200 ) , ( lerpResult395_g200 * _Metallic4 ) , ColorMask4347_g200);
			float Detail1310_g200 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g200 ).r;
			float Detail2352_g200 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g200 ).r;
			float lerpResult495_g200 = lerp( saturate( ( ( lerpResult462_g200 - ( ( 1.0 - Detail1310_g200 ) * ( _DetailMetallicScale * DetailMask130_g200 ) ) ) - ( ( 1.0 - Detail2352_g200 ) * ( _DetailMetallicScale2 * DetailMask235_g200 ) ) ) ) , 0.0 , WeatheringAlpha2466_g200);
			float temp_output_1650_559 = saturate( lerpResult495_g200 );
			float3 lerpBlendMode1596 = lerp(blendOpDest1596,( blendOpSrc1596 * blendOpDest1596 ),temp_output_1650_559);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1597 = ( saturate( lerpBlendMode1596 ));
			#else
				float3 staticSwitch1597 = temp_output_1650_0;
			#endif
			half3 specColor1606 = (0).xxx;
			half oneMinusReflectivity1606 = 0;
			half3 diffuseAndSpecularFromMetallic1606 = DiffuseAndSpecularFromMetallic(staticSwitch1597,temp_output_1650_559,specColor1606,oneMinusReflectivity1606);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1603 = temp_output_1650_0;
			#else
				float3 staticSwitch1603 = diffuseAndSpecularFromMetallic1606;
			#endif
			float3 OutAlbedo1604 = staticSwitch1603;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 lightDir14_g198 = ase_worldlightDir;
			float3 viewDir15_g198 = ase_worldViewDir;
			float3 normalizeResult136_g198 = ASESafeNormalize( ( lightDir14_g198 + viewDir15_g198 ) );
			float dotResult137_g198 = dot( lightDir14_g198 , normalizeResult136_g198 );
			float LdotH139_g198 = saturate( dotResult137_g198 );
			float mgAlpha806_g200 = tex2DNode532_g200.a;
			float lerpResult353_g200 = lerp( 1.0 , mgAlpha806_g200 , _Roughness);
			float MainGlossiness795_g200 = tex2DNode528_g200.b;
			float lerpResult336_g200 = lerp( 1.0 , mgAlpha806_g200 , _Roughness4);
			float lerpResult384_g200 = lerp( ( lerpResult353_g200 * MainGlossiness795_g200 ) , ( lerpResult336_g200 * _Glossiness4 ) , ColorMask4347_g200);
			float WetGlossBase397_g200 = _WetGlossBase;
			float lerpResult470_g200 = lerp( saturate( ( ( lerpResult384_g200 - ( ( 1.0 - Detail1310_g200 ) * ( _DetailGlossScale * DetailMask130_g200 ) ) ) - ( ( 1.0 - Detail2352_g200 ) * ( _DetailGlossScale2 * DetailMask235_g200 ) ) ) ) , mgAlpha806_g200 , ( WetGlossBase397_g200 * ExGloss298_g200 ));
			float SplatsGloss407_g200 = _WetGlossSplats;
			float lerpResult664_g200 = lerp( lerpResult470_g200 , SplatsGloss407_g200 , ( SplatsOp363_g200 * ExGloss298_g200 * WetSplats369_g200 ));
			float lerpResult649_g200 = lerp( lerpResult664_g200 , 0.87 , ( WetOpStreaks673_g200 * smoothstepResult651_g200 ));
			float lerpResult499_g200 = lerp( lerpResult649_g200 , _WeatheringGloss , WeatheringAlpha396_g200);
			float GlossinessFinal513_g200 = saturate( lerpResult499_g200 );
			float outSmoothness1627 = GlossinessFinal513_g200;
			float smoothness169_g198 = outSmoothness1627;
			float perceprualRoughness188_g198 = ( 1.0 - smoothness169_g198 );
			half fd90273_g198 = ( 0.5 + ( 2.0 * LdotH139_g198 * LdotH139_g198 * perceprualRoughness188_g198 ) );
			float3 normalizeResult25_g198 = normalize( (WorldNormalVector( i , NormalFace1658 )) );
			float3 normalDir28_g198 = normalizeResult25_g198;
			float dotResult21_g198 = dot( lightDir14_g198 , normalDir28_g198 );
			float NdotL20_g198 = saturate( dotResult21_g198 );
			half lightScatter253_g198 = ( ( ( fd90273_g198 - 1.0 ) * pow( ( 1.0 - NdotL20_g198 ) , 5.0 ) ) + 1.0 );
			float dotResult56_g198 = dot( normalDir28_g198 , viewDir15_g198 );
			float NdotV55_g198 = saturate( dotResult56_g198 );
			half viewScatter254_g198 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g198 ) , 5.0 ) * ( fd90273_g198 - 1.0 ) ) );
			half disneydiffuse251_g198 = ( lightScatter253_g198 * viewScatter254_g198 );
			half Diffuseterm281_g198 = ( disneydiffuse251_g198 * NdotL20_g198 );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 lightAtten296_g198 = ( ase_lightColor.rgb * ase_lightAtten );
			UnityGI gi203_g198 = gi;
			float3 diffNorm203_g198 = normalDir28_g198;
			gi203_g198 = UnityGI_Base( data, 1, diffNorm203_g198 );
			float3 indirectDiffuse203_g198 = gi203_g198.indirect.diffuse + diffNorm203_g198 * 0.0001;
			float OcclusionG832_g200 = tex2DNode196_g200.g;
			float lerpResult483_g200 = lerp( 1.0 , OcclusionG832_g200 , _OcculusionStrength);
			float smoothstepResult621_g200 = smoothstep( 0.0 , 0.8 , Detail1310_g200);
			float lerpResult488_g200 = lerp( 1.0 , smoothstepResult621_g200 , ( _DetailOcculusionScale * DetailMask130_g200 ));
			float smoothstepResult622_g200 = smoothstep( 0.0 , 0.8 , Detail2352_g200);
			float lerpResult494_g200 = lerp( 1.0 , smoothstepResult622_g200 , ( _DetailOcculusionScale2 * DetailMask235_g200 ));
			float lerpResult620_g200 = lerp( ( lerpResult483_g200 * lerpResult488_g200 * lerpResult494_g200 ) , 1.0 , WeatheringAlpha396_g200);
			float OcclusionMix509_g200 = saturate( lerpResult620_g200 );
			float outAO1628 = OcclusionMix509_g200;
			float occlusion306_g198 = outAO1628;
			half Roughness64_g198 = max( ( perceprualRoughness188_g198 * perceprualRoughness188_g198 ) , 0.002 );
			half SmithJointGGXVisibilityTerm42_g198 = ( 0.5 / ( ( ( ( NdotV55_g198 * ( 1.0 - Roughness64_g198 ) ) + Roughness64_g198 ) * NdotL20_g198 ) + 1E-05 + ( NdotV55_g198 * ( Roughness64_g198 + ( ( 1.0 - Roughness64_g198 ) * NdotL20_g198 ) ) ) ) );
			float a266_g198 = ( Roughness64_g198 * Roughness64_g198 );
			float3 normalizeResult87_g198 = ASESafeNormalize( ( lightDir14_g198 + viewDir15_g198 ) );
			float dotResult88_g198 = dot( normalDir28_g198 , normalizeResult87_g198 );
			float NdotH90_g198 = saturate( dotResult88_g198 );
			float d99_g198 = ( ( ( ( NdotH90_g198 * a266_g198 ) - NdotH90_g198 ) * NdotH90_g198 ) + 1.0 );
			half GGXTerm43_g198 = ( ( ( 1.0 / UNITY_PI ) * a266_g198 ) / ( ( d99_g198 * d99_g198 ) + 1E-07 ) );
			float temp_output_36_0_g198 = ( SmithJointGGXVisibilityTerm42_g198 * GGXTerm43_g198 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g198 = sqrt( max( 0.0001 , temp_output_36_0_g198 ) );
			#else
				float staticSwitch5_g198 = temp_output_36_0_g198;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g198 = 0.0;
			#else
				float staticSwitch119_g198 = max( 0.0 , ( staticSwitch5_g198 * NdotL20_g198 ) );
			#endif
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1600 = temp_output_1595_0;
			#else
				float3 staticSwitch1600 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1618 = i.uv_texcoord;
			half3 specColor1601 = (0).xxx;
			half oneMinusReflectivity1601 = 0;
			half3 diffuseAndSpecularFromMetallic1601 = DiffuseAndSpecularFromMetallic(( staticSwitch1600 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1618 )).rgb ),temp_output_1650_559,specColor1601,oneMinusReflectivity1601);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1602 = specColor1601;
			#else
				float3 staticSwitch1602 = specColor1606;
			#endif
			float3 OutSpecular1605 = staticSwitch1602;
			float3 SpecColor140_g198 = OutSpecular1605;
			float SpecularTerm34_g198 = ( staticSwitch119_g198 * ( SpecColor140_g198.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			half3 FresnelTerm130_g198 = ( ( pow( ( 1.0 - LdotH139_g198 ) , 5.0 ) * ( 1.0 - SpecColor140_g198 ) ) + SpecColor140_g198 );
			half metallic176_g198 = 0.0;
			half localOneMinusReflectivity176_g198 = OneMinusReflectivity( metallic176_g198 );
			half GrazingTerm163_g198 = saturate( ( smoothness169_g198 + ( 1.0 - localOneMinusReflectivity176_g198 ) ) );
			float3 temp_cast_4 = (GrazingTerm163_g198).xxx;
			float3 lerpResult159_g198 = lerp( SpecColor140_g198 , temp_cast_4 , pow( ( 1.0 - NdotV55_g198 ) , 5.0 ));
			half3 FresnelLerp165_g198 = lerpResult159_g198;
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g198 = ( 1.0 - ( 0.28 * Roughness64_g198 * perceprualRoughness188_g198 ) );
			#else
				float staticSwitch183_g198 = ( 1.0 / ( ( Roughness64_g198 * Roughness64_g198 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g198 = staticSwitch183_g198;
			float3 indirectNormal299_g198 = normalDir28_g198;
			Unity_GlossyEnvironmentData g299_g198 = UnityGlossyEnvironmentSetup( smoothness169_g198, data.worldViewDir, indirectNormal299_g198, float3(0,0,0));
			float3 indirectSpecular299_g198 = UnityGI_IndirectSpecular( data, occlusion306_g198, indirectNormal299_g198, g299_g198 );
			#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g198 = float3( 0,0,0 );
			#else
				float3 staticSwitch313_g198 = ( FresnelLerp165_g198 * SurfaceReduction182_g198 * indirectSpecular299_g198 );
			#endif
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g198 = float3( 0,0,0 );
			#else
				float3 staticSwitch305_g198 = staticSwitch313_g198;
			#endif
			float EmissionMask799_g200 = tex2DNode532_g200.g;
			float3 CLEANCOLOR838_g200 = lerpResult815_g200;
			#ifdef _EMISSIONCOLORTEXBASE_ON
				float3 staticSwitch837_g200 = CLEANCOLOR838_g200;
			#else
				float3 staticSwitch837_g200 = (_EmissionColor).rgb;
			#endif
			float2 appendResult842_g200 = (float2(_UVScroll.x , _UVScroll.y));
			float2 appendResult848_g200 = (float2(_UVScroll.z , _UVScroll.w));
			float2 uv_TexCoord840_g200 = i.uv_texcoord * appendResult842_g200;
			float2 panner841_g200 = ( _Time.y * ( appendResult842_g200 * appendResult848_g200 ) + uv_TexCoord840_g200);
			float cos850_g200 = cos( ( _UVScrollRotator * UNITY_PI ) );
			float sin850_g200 = sin( ( _UVScrollRotator * UNITY_PI ) );
			float2 rotator850_g200 = mul( panner841_g200 - float2( 0.5,0.5 ) , float2x2( cos850_g200 , -sin850_g200 , sin850_g200 , cos850_g200 )) + float2( 0.5,0.5 );
			float WeatheringBumpMask718_g200 = tex2DNode177_g200.b;
			float3 outEmission1625 = ( ( EmissionMask799_g200 * staticSwitch837_g200 * _EmissionStrength * (SAMPLE_TEXTURE2D( _EffectMap, sampler_MainTex, rotator850_g200 )).rgb ) + ( ( WeatheringAlpha2466_g200 * WeatheringBumpMask718_g200 ) * _WeatheringEmission ) );
			float3 normalizeResult61_g196 = normalize( (WorldNormalVector( i , outNormal1623 )) );
			float3 normal2_g197 = normalizeResult61_g196;
			float3 localGI2_g197 = GI2_g197( normal2_g197 );
			float3 temp_output_69_15_g196 = localGI2_g197;
			float Thickness507_g200 = tex2DNode532_g200.b;
			float thickness1646 = Thickness507_g200;
			float temp_output_59_0_g196 = ( _Translucency * thickness1646 );
			float3 temp_output_6_0_g196 = OutAlbedo1604;
			c.rgb = ( ( ( OutAlbedo1604 * ( ( Diffuseterm281_g198 * lightAtten296_g198 ) + ( indirectDiffuse203_g198 * occlusion306_g198 ) ) ) + ( SpecularTerm34_g198 * lightAtten296_g198 * FresnelTerm130_g198 ) + staticSwitch305_g198 ) + outEmission1625 + ( ( temp_output_69_15_g196 * _TransAmbient ) * temp_output_59_0_g196 * temp_output_6_0_g196 ) );
			c.a = outAlpha1663;
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
		#pragma surface surf StandardCustomLighting alpha:fade keepalpha fullforwardshadows exclude_path:deferred 

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
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18935
283.6;194;1221;738;-4139.014;3405.76;3.741413;True;False
Node;AmplifyShaderEditor.FunctionNode;1595;5851.836,-2626.556;Inherit;False;Iridiscence;86;;195;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1611;6175.968,-2151.94;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1608;6495.265,-2283.345;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1612;6222.102,-2125.577;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1613;5905.209,-1876.744;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1600;6752.592,-2182.068;Inherit;False;Property;_Iridiscent2;Iridiscent;85;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1597;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1596;6141.151,-2630.663;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1617;6491.784,-2048.189;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1609;6039.75,-2742.274;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1614;5949.149,-1852.577;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1597;6386.739,-2626.739;Inherit;False;Property;_Iridiscent;Iridiscent;85;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1619;6980.833,-2064.812;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1601;7148.071,-1896.234;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1610;6103.462,-2773.03;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1606;6673.288,-2560.237;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1602;7477.574,-2540.774;Inherit;False;Property;_SpecularSetup;SpecularSetup;91;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1603;6996.55,-2825.649;Inherit;False;Property;_SpecularSetup2;SpecularSetup;91;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1602;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1627;5917.078,-2186.828;Inherit;False;outSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1605;7767.688,-2537.081;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1623;5911.21,-2356.282;Inherit;False;outNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1635;8648.84,-2316.688;Inherit;False;1083.366;982.0896;Comment;15;1647;1645;1593;1284;1632;1640;1639;1626;1643;1630;1633;1629;1634;1624;1660;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1646;5944.352,-1994.988;Inherit;False;thickness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1628;5913.789,-2094.082;Inherit;False;outAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1629;8730.379,-1823.305;Inherit;False;1627;outSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1625;5915.825,-2274.957;Inherit;False;outEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1630;8777.33,-1742.289;Inherit;False;1628;outAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1634;8744.747,-2008.513;Inherit;False;1605;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1633;8754.425,-2179.128;Inherit;False;1604;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1643;8987.68,-1585.578;Inherit;False;Unity Translucency;77;;196;3081dbcb6ac8af842b2faa561ed4ff52;0;3;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.GetLocalVarNode;1626;8749.46,-1917.688;Inherit;False;1625;outEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1639;9050.925,-2112.491;Inherit;False;GGX Specular Light;-1;;198;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1640;9297.329,-1932.29;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;1593;9439.388,-2072.38;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Hanmen/Clothes True Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;True;1492;3;False;-1;False;1;False;-1;1;False;-1;False;7;Transparent;0.5;True;True;0;False;Transparent;;Transparent;ForwardOnly;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;2;5;False;1462;10;False;1463;0;5;False;-1;10;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;Legacy Shaders/Diffuse;-1;-1;-1;-1;0;False;0;0;True;1284;-1;0;True;1533;0;0;0;False;0.1;False;-1;0;False;-1;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.ClipNode;1621;6093.832,-1692.706;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1618;6158.937,-2048.759;Inherit;True;Property;_SpecularMap;SpecularMap;93;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1650;5560.153,-2425.048;Inherit;False;AIT Clothes Function;2;;200;d0644e5becc3a6145ad3ab18b1d3f488;0;0;11;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;812;FLOAT;561;SAMPLERSTATE;748;FLOAT;562;FLOAT;787;FLOAT;817
Node;AmplifyShaderEditor.RegisterLocalVarNode;1644;6026.532,-2878.263;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1651;5886.353,-1648.936;Inherit;False;Constant;_Float21;Float 21;10;0;Create;True;0;0;0;False;0;False;0.002;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1284;9410.468,-1499.894;Inherit;False;Property;_CullMode;CullMode;0;2;[Header];[IntRange];Create;True;1;Backface Settings;3;None;0;Front;1;Back;2;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1607;6288.398,-2282.267;Inherit;False;Property;_SpecColor;SpecColor;92;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwitchByFaceNode;1653;7421.196,-1398.148;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1654;7619.414,-1439.794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1655;7222.414,-1377.357;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1656;7462.37,-1304.914;Inherit;False;Constant;_Float22;Float 5;73;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1657;7714.489,-1339.759;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1658;7898.901,-1322.936;Inherit;False;NormalFace;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1652;7258.057,-1187.058;Inherit;False;1623;outNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1624;8757.688,-2096.216;Inherit;False;1658;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1647;8757.222,-1415.053;Inherit;False;1646;thickness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1645;8763.583,-1490.558;Inherit;False;1604;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1660;8770.515,-1584.815;Inherit;False;1623;outNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1659;7320.496,-1520.047;Inherit;False;Property;_NormalBackDirInvert;Normal Invert;1;1;[Toggle];Create;False;1;;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1664;6216.814,-1474.122;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1665;5900.143,-1387.13;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1666;5884.934,-1548.185;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1667;5649.25,-1554.766;Inherit;False;1658;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1668;6505.066,-1494.165;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1669;6654.888,-1494.96;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1670;5824.217,-1201.951;Inherit;False;Property;_FresnelBias;FresnelBias;75;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1671;5829.225,-1118.279;Inherit;False;Property;_FresnelScale;FresnelScale;76;0;Create;True;0;0;0;True;0;False;0;1.37;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1672;5830.705,-1037.22;Inherit;False;Property;_FresnelPower;FresnelPower;74;1;[Header];Create;True;1;Fresnel Settings;0;0;True;0;False;3;3.48;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1632;8767.474,-1668.435;Inherit;False;1663;outAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1673;6919.552,-1181.275;Inherit;False;Property;_SHADERTYPE_CLOTHING;SHADERTYPE_CLOTHING;94;0;Create;False;0;0;0;True;1;HideInInspector;False;0;1;1;True;_SHADERTYPE_CLOTHING;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1663;6899.648,-1503.238;Inherit;False;outAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1604;7399.661,-2822.084;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
WireConnection;1595;1;1650;557
WireConnection;1611;0;1595;0
WireConnection;1608;0;1607;0
WireConnection;1612;0;1611;0
WireConnection;1613;0;1650;559
WireConnection;1600;1;1608;0
WireConnection;1600;0;1612;0
WireConnection;1596;0;1595;0
WireConnection;1596;1;1650;0
WireConnection;1596;2;1650;559
WireConnection;1617;0;1618;0
WireConnection;1609;0;1650;0
WireConnection;1614;0;1613;0
WireConnection;1597;1;1650;0
WireConnection;1597;0;1596;0
WireConnection;1619;0;1600;0
WireConnection;1619;1;1617;0
WireConnection;1601;0;1619;0
WireConnection;1601;1;1614;0
WireConnection;1610;0;1609;0
WireConnection;1606;0;1597;0
WireConnection;1606;1;1650;559
WireConnection;1602;1;1606;1
WireConnection;1602;0;1601;1
WireConnection;1603;1;1606;0
WireConnection;1603;0;1610;0
WireConnection;1627;0;1650;560
WireConnection;1605;0;1602;0
WireConnection;1623;0;1650;557
WireConnection;1646;0;1650;562
WireConnection;1628;0;1650;561
WireConnection;1625;0;1650;558
WireConnection;1643;6;1645;0
WireConnection;1643;26;1660;0
WireConnection;1643;46;1647;0
WireConnection;1639;286;1633;0
WireConnection;1639;30;1624;0
WireConnection;1639;146;1634;0
WireConnection;1639;147;1629;0
WireConnection;1639;302;1630;0
WireConnection;1640;0;1639;0
WireConnection;1640;1;1626;0
WireConnection;1640;2;1643;68
WireConnection;1593;9;1632;0
WireConnection;1593;13;1640;0
WireConnection;1621;0;1650;817
WireConnection;1621;1;1650;787
WireConnection;1621;2;1651;0
WireConnection;1644;0;1650;0
WireConnection;1653;0;1652;0
WireConnection;1653;1;1655;0
WireConnection;1654;0;1659;0
WireConnection;1655;0;1652;0
WireConnection;1657;0;1654;0
WireConnection;1657;1;1656;0
WireConnection;1657;2;1653;0
WireConnection;1657;3;1652;0
WireConnection;1658;0;1657;0
WireConnection;1664;0;1666;0
WireConnection;1664;4;1665;0
WireConnection;1664;1;1670;0
WireConnection;1664;2;1671;0
WireConnection;1664;3;1672;0
WireConnection;1666;0;1667;0
WireConnection;1668;0;1664;0
WireConnection;1668;1;1621;0
WireConnection;1669;0;1668;0
WireConnection;1663;0;1669;0
WireConnection;1604;0;1603;0
ASEEND*/
//CHKSM=099D5071956892E1814D5757F876FDFAFDC0D644