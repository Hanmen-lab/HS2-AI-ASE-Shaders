// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Alpha"
{
	Properties
	{
		[Header(Culling Setting)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 1
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (1,1,0,0)
		[Toggle(_METALLICGLOSSMAP)] _METALLICGLOSSMAP("METALLICGLOSSMAP", Float) = 1
		_WetUV("WetUV", Vector) = (1,1,0,0)
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0.6,0.65,0.65,0)
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_WeatheringUV("WeatheringUV", Vector) = (1,1,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_Float0("Float0", Range( 0 , 3)) = 1
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = 1
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
		[Header (Ambient Occlusion)]_OcculusionStrength("OcculusionStrength", Range( 0 , 1)) = 1
		[Header (Metallic Roughness (Optional))]_Roughness("Roughness", Range( 0 , 1)) = 0.8
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		[Header (Color 4 Settings (Optional))]_Glossiness4("Glossiness4", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 0.8
		_AlphaMaster("AlphaMaster", Range( 0 , 1)) = 1
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		[Header (Weathering)]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange1("WeatheringRange1", Range( 0 , 1)) = 0
		_RoughnessReflections("RoughnessReflections", Range( 0 , 1)) = 0.1648498
		_WeatheringRange2("WeatheringRange2", Range( 0 , 1)) = 0
		_WeatheringRange3("WeatheringRange3", Range( 0 , 1)) = 0
		_WeatheringRange4("WeatheringRange4", Range( 0 , 1)) = 0
		_WeatheringRange5("WeatheringRange5", Range( 0 , 1)) = 0
		_GlossinessReflection("GlossinessReflection", Range( 0 , 1)) = 1
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
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Toggle(_DITHERSWITCH_ON)] _DitherSwitch("DitherSwitch", Float) = 0
		[Toggle(_DITHERBLUENOISE_ON)] _DitherBluenoise("DitherBluenoise", Float) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
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
		#pragma shader_feature _METALLICGLOSSMAP
		#pragma multi_compile __ _DITHERBLUENOISE_ON
		#pragma multi_compile __ _DITHERSWITCH_ON
		#pragma multi_compile __ _SPECULARSETUP_ON
		#pragma multi_compile __ _IRIDISCENT_ON
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
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
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

		uniform float _WetGlossSplats;
		uniform float4 _WetStreaksUV;
		uniform float _CarvatureStrength;
		uniform float _WeatheringRange3;
		uniform float _WetAlbedoOffset;
		uniform float _WeatheringRange2;
		uniform sampler2D _WeatheringMask;
		uniform float _AlphaEx;
		uniform sampler2D _WeatheringMap;
		uniform float _DetailGlossScale;
		uniform float _WetSplatsAlbedoOffset;
		uniform float4 _WetUV;
		uniform sampler2D _DetailGlossMap;
		uniform float _GlossinessReflection;
		uniform float _ExGloss;
		uniform float _WetBumpOffset;
		uniform float _WetOpacityStreaks;
		uniform float _Float0;
		uniform float _WetAlpha;
		uniform float _Metallic4;
		uniform float _AlphaMaster;
		uniform float2 _DetailUV;
		uniform float _DetailNormalMapScale;
		uniform float _DetailNormalMapScale2;
		uniform float _RoughnessReflections;
		uniform float4 _BaseColor;
		uniform float _WetGlossBase;
		uniform float2 _DetailUV2;
		uniform float4 _BodyColor1;
		uniform float _DetailUV2Rotator;
		uniform sampler2D _DetailGlossMap2;
		uniform float _EmissionStrength;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringRange4;
		uniform float _WeatheringRange1;
		uniform sampler2D _WetnessMap;
		uniform float _DetailUVRotator;
		uniform float _WeatheringRange5;
		uniform float4 _EmissionColor;
		uniform float _WeatheringAll;
		uniform sampler2D _BumpMap;
		uniform float4 _WeatheringUV;
		uniform float _WetOpacitySplats;
		uniform float4 _WeatheringAlbedo;
		uniform float4 _WetColor;
		uniform sampler2D _DetailMainTex;
		uniform sampler2D _DetailMask;
		uniform sampler2D _MainTex;
		uniform float _DetailGlossScale2;
		uniform float _WeatheringGloss;
		uniform float _WeatheringUVSeed;
		uniform sampler2D _OcclusionMap;
		uniform float2 _patternuvbase;
		uniform sampler2D _MetallicGlossMap;
		uniform float4 _Color4;
		uniform sampler2D _Noise;
		uniform float _DetailMetallicScale2;
		uniform float _DetailMetallicScale;
		uniform sampler2D _ColorMask;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _TransDirect;
		uniform float _TransShadow;
		uniform float _TransScattering;
		uniform float _Translucency;
		uniform float _TransNormalDistortion;
		uniform float _TransAmbient;
		uniform float _NormalBackDirInvert;
		uniform float _CullMode;
		uniform float _Cutoff;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Roughness4;
		uniform float _Glossiness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		uniform sampler2D _SpecularMap;
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


		float3 GI2_g192( float3 normal )
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
			float2 uv_MainTex576_g188 = i.uv_texcoord;
			float4 tex2DNode576_g188 = tex2D( _MainTex, uv_MainTex576_g188 );
			float AlphaInput195_g188 = tex2DNode576_g188.a;
			float2 uv_OcclusionMap196_g188 = i.uv_texcoord;
			float4 tex2DNode196_g188 = tex2D( _OcclusionMap, uv_OcclusionMap196_g188 );
			float OccAlpha219_g188 = tex2DNode196_g188.a;
			float ExGloss298_g188 = _ExGloss;
			float2 appendResult115_g188 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g188 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult731_g188 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult737_g188 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g188 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g188 = i.uv_texcoord * appendResult115_g188 + ( appendResult110_g188 + lerpResult737_g188 );
			float2 WeatheringUV144_g188 = uv_TexCoord127_g188;
			float4 tex2DNode177_g188 = tex2D( _WeatheringMap, WeatheringUV144_g188 );
			float2 uv_WeatheringMask100_g188 = i.uv_texcoord;
			float4 tex2DNode100_g188 = tex2D( _WeatheringMask, uv_WeatheringMask100_g188 );
			float clampResult161_g188 = clamp( ( tex2DNode100_g188.r - tex2DNode100_g188.g ) , 0.0 , 1.0 );
			float WMask1183_g188 = ( clampResult161_g188 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g188 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g188 = clamp( ( ( tex2DNode177_g188.g * WMask1183_g188 ) - RangeCut1208_g188 ) , 0.0 , 1.0 );
			float clampResult159_g188 = clamp( ( tex2DNode100_g188.g - tex2DNode100_g188.r ) , 0.0 , 1.0 );
			float WMask2192_g188 = ( clampResult159_g188 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g188 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g188 = clamp( ( ( tex2DNode177_g188.g * WMask2192_g188 ) - RangeCut2211_g188 ) , 0.0 , 1.0 );
			float WMask3190_g188 = ( tex2DNode100_g188.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g188 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g188 = clamp( ( ( tex2DNode177_g188.g * WMask3190_g188 ) - RangeCut3210_g188 ) , 0.0 , 1.0 );
			float WMask4180_g188 = ( ( tex2DNode100_g188.r * tex2DNode100_g188.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g188 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g188 = clamp( ( ( tex2DNode177_g188.g * WMask4180_g188 ) - RangeCut4205_g188 ) , 0.0 , 1.0 );
			float WMask5184_g188 = ( ( tex2DNode100_g188.r * tex2DNode100_g188.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g188 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g188 = clamp( ( ( tex2DNode177_g188.g * WMask5184_g188 ) - RangeCut5201_g188 ) , 0.0 , 1.0 );
			float WMaskAll165_g188 = ceil( _WeatheringAll );
			float RangeCutAll171_g188 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g188 = clamp( ( ( tex2DNode177_g188.g * WMaskAll165_g188 ) - RangeCutAll171_g188 ) , 0.0 , 1.0 );
			float clampResult299_g188 = clamp( ( clampResult253_g188 + clampResult251_g188 + clampResult254_g188 + clampResult259_g188 + clampResult261_g188 + clampResult215_g188 ) , 0.0 , 1.0 );
			float lerpResult313_g188 = lerp( clampResult299_g188 , clampResult215_g188 , WMaskAll165_g188);
			float WeatheringAlpha2466_g188 = lerpResult313_g188;
			float temp_output_757_0_g188 = ( ( ( AlphaInput195_g188 * _AlphaMaster ) * saturate( pow( OccAlpha219_g188 , ( _WetAlpha * ExGloss298_g188 ) ) ) ) + WeatheringAlpha2466_g188 );
			float clampResult780_g188 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g188 = tex2DNode196_g188.b;
			float temp_output_778_0_g188 = step( pow( ( 1.0 - clampResult780_g188 ) , 0.2 ) , pow( TearingsMask340_g188 , 0.5 ) );
			clip( ( temp_output_778_0_g188 * AlphaInput195_g188 ) - _Cutoff);
			float outAlpha1631 = saturate( temp_output_757_0_g188 );
			float2 uv_ColorMask304_g188 = i.uv_texcoord;
			float4 tex2DNode304_g188 = tex2D( _ColorMask, uv_ColorMask304_g188 );
			float ColorMask4347_g188 = tex2DNode304_g188.b;
			float3 lerpResult815_g188 = lerp( (tex2DNode576_g188).rgb , (_Color4).rgb , ColorMask4347_g188);
			float3 temp_cast_1 = (1.0).xxx;
			float Carvature270_g188 = tex2DNode196_g188.r;
			float3 lerpResult331_g188 = lerp( ( lerpResult815_g188 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g188 * _CarvatureStrength ));
			float WetAlbedoOffset311_g188 = _WetAlbedoOffset;
			float3 temp_output_382_0_g188 = ( lerpResult331_g188 * WetAlbedoOffset311_g188 );
			float WetSplatsAlbedoOffset349_g188 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g188 = lerp( ( temp_output_382_0_g188 * WetSplatsAlbedoOffset349_g188 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult657_g188 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g188 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g188 = i.uv_texcoord * appendResult657_g188 + appendResult658_g188;
			float2 WetStrUV669_g188 = uv_TexCoord660_g188;
			float WetStr661_g188 = tex2D( _WetnessMap, WetStrUV669_g188 ).g;
			float smoothstepResult651_g188 = smoothstep( ( 1.0 - ExGloss298_g188 ) , 1.0 , WetStr661_g188);
			float StreaksAlpha662_g188 = smoothstepResult651_g188;
			float WetOpStreaks673_g188 = _WetOpacityStreaks;
			float2 appendResult287_g188 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g188 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g188 = i.uv_texcoord * appendResult287_g188 + appendResult285_g188;
			float2 WetUV578_g188 = uv_TexCoord317_g188;
			float WetSplats369_g188 = tex2D( _WetnessMap, WetUV578_g188 ).b;
			float SplatsOp363_g188 = _WetOpacitySplats;
			float3 lerpResult460_g188 = lerp( temp_output_382_0_g188 , lerpResult411_g188 , ( ( StreaksAlpha662_g188 * WetOpStreaks673_g188 ) + ( WetSplats369_g188 * SplatsOp363_g188 ) ));
			float2 uv_OcclusionMap429_g188 = i.uv_texcoord;
			float4 tex2DNode429_g188 = tex2D( _OcclusionMap, uv_OcclusionMap429_g188 );
			float3 WetBodyOffset422_g188 = (_BodyColor1).rgb;
			float bodycoloralpha417_g188 = _BodyColor1.a;
			float3 lerpResult480_g188 = lerp( lerpResult460_g188 , ( tex2DNode429_g188.a == 1.0 ? lerpResult460_g188 : WetBodyOffset422_g188 ) , ( bodycoloralpha417_g188 * ( 1.0 - tex2DNode429_g188.a ) ));
			float3 lerpResult501_g188 = lerp( lerpResult331_g188 , lerpResult480_g188 , ExGloss298_g188);
			float3 lerpResult505_g188 = lerp( lerpResult501_g188 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g188 * 0.282353 ));
			float3 DiffuseMix511_g188 = lerpResult505_g188;
			float3 temp_output_1642_0 = DiffuseMix511_g188;
			Gradient gradient37_g189 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float2 uv_BumpMap402_g188 = i.uv_texcoord;
			float WetBumpOffset303_g188 = _WetBumpOffset;
			float2 UVScale107_g188 = _UVScalePattern;
			float2 uv_TexCoord152_g188 = i.uv_texcoord * ( _DetailUV * UVScale107_g188 );
			float cos162_g188 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g188 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g188 = mul( uv_TexCoord152_g188 - float2( 0.5,0.5 ) , float2x2( cos162_g188 , -sin162_g188 , sin162_g188 , cos162_g188 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g188 = rotator162_g188;
			float2 break194_g188 = Detail1UV173_g188;
			float temp_output_186_0_g188 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g188 = (float2(( break194_g188.x + temp_output_186_0_g188 ) , break194_g188.y));
			float4 tex2DNode243_g188 = tex2D( _DetailGlossMap, Detail1UV173_g188 );
			float2 uv_DetailMask25_g188 = i.uv_texcoord;
			float4 tex2DNode25_g188 = tex2D( _DetailMask, uv_DetailMask25_g188 );
			float DetailMask130_g188 = tex2DNode25_g188.r;
			float temp_output_255_0_g188 = ( DetailMask130_g188 * _DetailNormalMapScale );
			float3 appendResult300_g188 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult218_g188 ).g - tex2DNode243_g188.g ) * temp_output_255_0_g188 )));
			float2 appendResult222_g188 = (float2(break194_g188.x , ( break194_g188.y + temp_output_186_0_g188 )));
			float3 appendResult297_g188 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult222_g188 ).g - tex2DNode243_g188.g ) * temp_output_255_0_g188 )));
			float3 normalizeResult348_g188 = normalize( cross( appendResult300_g188 , appendResult297_g188 ) );
			float3 DetailNormal1368_g188 = normalizeResult348_g188;
			float2 uv_TexCoord16_g188 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g188 );
			float cos19_g188 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g188 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g188 = mul( uv_TexCoord16_g188 - float2( 0.5,0.5 ) , float2x2( cos19_g188 , -sin19_g188 , sin19_g188 , cos19_g188 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g188 = rotator19_g188;
			float2 break24_g188 = Detail2UV20_g188;
			float temp_output_26_0_g188 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g188 = (float2(( break24_g188.x + temp_output_26_0_g188 ) , break24_g188.y));
			float4 tex2DNode38_g188 = tex2D( _DetailGlossMap2, Detail2UV20_g188 );
			float DetailMask235_g188 = tex2DNode25_g188.g;
			float temp_output_43_0_g188 = ( DetailMask235_g188 * _DetailNormalMapScale2 );
			float3 appendResult58_g188 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap2, appendResult34_g188 ).g - tex2DNode38_g188.g ) * temp_output_43_0_g188 )));
			float2 appendResult33_g188 = (float2(break24_g188.x , ( break24_g188.y + temp_output_26_0_g188 )));
			float3 appendResult57_g188 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap2, appendResult33_g188 ).g - tex2DNode38_g188.g ) * temp_output_43_0_g188 )));
			float3 normalizeResult69_g188 = normalize( cross( appendResult58_g188 , appendResult57_g188 ) );
			float3 DetailNormal276_g188 = normalizeResult69_g188;
			float2 break547_g188 = WetStrUV669_g188;
			float temp_output_541_0_g188 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g188 = (float2(( break547_g188.x + temp_output_541_0_g188 ) , break547_g188.y));
			float4 tex2DNode515_g188 = tex2D( _WetnessMap, WetStrUV669_g188 );
			float3 appendResult523_g188 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult546_g188 ).g - tex2DNode515_g188.g ) * 1.0 )));
			float2 appendResult534_g188 = (float2(break547_g188.x , ( break547_g188.y + temp_output_541_0_g188 )));
			float3 appendResult542_g188 = (float3(0.0 , 1.0 , ( ( tex2D( _WetnessMap, appendResult534_g188 ).g - tex2DNode515_g188.g ) * 1.0 )));
			float3 normalizeResult524_g188 = normalize( cross( appendResult523_g188 , appendResult542_g188 ) );
			float3 WetnessNormal545_g188 = normalizeResult524_g188;
			float3 lerpResult98_g188 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap402_g188 ), ( _Float0 + ( WetBumpOffset303_g188 * ExGloss298_g188 ) ) ) , DetailNormal1368_g188 ) , DetailNormal276_g188 ) , WetnessNormal545_g188 , ( StreaksAlpha662_g188 * WetOpStreaks673_g188 ));
			float2 break223_g188 = WeatheringUV144_g188;
			float temp_output_224_0_g188 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g188 = (float2(( break223_g188.x + temp_output_224_0_g188 ) , break223_g188.y));
			float4 tex2DNode266_g188 = tex2D( _WeatheringMap, WeatheringUV144_g188 );
			float3 appendResult344_g188 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult258_g188 ).b - tex2DNode266_g188.b ) * 2.0 )));
			float2 appendResult252_g188 = (float2(break223_g188.x , ( break223_g188.y + temp_output_224_0_g188 )));
			float3 appendResult339_g188 = (float3(0.0 , 1.0 , ( ( tex2D( _WeatheringMap, appendResult252_g188 ).b - tex2DNode266_g188.b ) * 2.0 )));
			float3 normalizeResult398_g188 = normalize( cross( appendResult344_g188 , appendResult339_g188 ) );
			float3 WeatheringBump425_g188 = normalizeResult398_g188;
			float clampResult373_g188 = clamp( ( lerpResult313_g188 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g188 = clampResult373_g188;
			float3 lerpResult87_g188 = lerp( lerpResult98_g188 , WeatheringBump425_g188 , ( tex2D( _WeatheringMap, WeatheringUV144_g188 ).b * WeatheringAlpha396_g188 ));
			float3 normalizeResult564_g188 = normalize( lerpResult87_g188 );
			float3 temp_output_1642_557 = normalizeResult564_g188;
			float dotResult7_g189 = dot( ase_tanViewDir , temp_output_1642_557 );
			float3 temp_output_12_0_g189 = (SampleGradient( gradient37_g189, dotResult7_g189 )).rgb;
			float temp_output_10_0_g189 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g189 = cos( temp_output_10_0_g189 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g189 = dot( _k7 , temp_output_12_0_g189 );
			float3 temp_output_32_0_g189 = ( ( ( ( ( ( temp_output_12_0_g189 * temp_output_13_0_g189 ) + ( cross( _k7 , temp_output_12_0_g189 ) * sin( temp_output_10_0_g189 ) ) + ( _k7 * dotResult14_g189 * ( 1.0 - temp_output_13_0_g189 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g189 = dot( temp_output_32_0_g189 , float3(0.39,0.59,0.11) );
			float3 temp_cast_2 = (dotResult34_g189).xxx;
			float3 lerpResult35_g189 = lerp( temp_cast_2 , temp_output_32_0_g189 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1595_0 = lerpResult35_g189;
			float3 blendOpSrc1596 = temp_output_1595_0;
			float3 blendOpDest1596 = temp_output_1642_0;
			float2 uv_MetallicGlossMap532_g188 = i.uv_texcoord;
			float4 tex2DNode532_g188 = tex2D( _MetallicGlossMap, uv_MetallicGlossMap532_g188 );
			float MetallicGlossMask800_g188 = tex2DNode532_g188.r;
			float lerpResult399_g188 = lerp( 1.0 , MetallicGlossMask800_g188 , _MetallicMask);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch793_g188 = lerpResult399_g188;
			#else
				float staticSwitch793_g188 = 1.0;
			#endif
			float2 uv_DetailMainTex528_g188 = i.uv_texcoord;
			float4 tex2DNode528_g188 = tex2D( _DetailMainTex, uv_DetailMainTex528_g188 );
			float MainMetallic797_g188 = tex2DNode528_g188.r;
			float lerpResult395_g188 = lerp( 1.0 , MetallicGlossMask800_g188 , _MetallicMask4);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch794_g188 = lerpResult395_g188;
			#else
				float staticSwitch794_g188 = 1.0;
			#endif
			float lerpResult462_g188 = lerp( ( staticSwitch793_g188 * MainMetallic797_g188 ) , ( staticSwitch794_g188 * _Metallic4 ) , ColorMask4347_g188);
			float Detail1310_g188 = tex2D( _DetailGlossMap, Detail1UV173_g188 ).r;
			float Detail2352_g188 = tex2D( _DetailGlossMap2, Detail2UV20_g188 ).r;
			float lerpResult495_g188 = lerp( saturate( ( ( lerpResult462_g188 - ( ( 1.0 - Detail1310_g188 ) * ( _DetailMetallicScale * DetailMask130_g188 ) ) ) - ( ( 1.0 - Detail2352_g188 ) * ( _DetailMetallicScale2 * DetailMask235_g188 ) ) ) ) , 0.0 , WeatheringAlpha2466_g188);
			float temp_output_1642_559 = saturate( lerpResult495_g188 );
			float3 lerpBlendMode1596 = lerp(blendOpDest1596,( blendOpSrc1596 * blendOpDest1596 ),temp_output_1642_559);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1597 = ( saturate( lerpBlendMode1596 ));
			#else
				float3 staticSwitch1597 = temp_output_1642_0;
			#endif
			half3 specColor1606 = (0).xxx;
			half oneMinusReflectivity1606 = 0;
			half3 diffuseAndSpecularFromMetallic1606 = DiffuseAndSpecularFromMetallic(staticSwitch1597,temp_output_1642_559,specColor1606,oneMinusReflectivity1606);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1603 = temp_output_1642_0;
			#else
				float3 staticSwitch1603 = diffuseAndSpecularFromMetallic1606;
			#endif
			float3 OutAlbedo1604 = staticSwitch1603;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 lightDir14_g193 = ase_worldlightDir;
			float3 viewDir15_g193 = ase_worldViewDir;
			float3 normalizeResult136_g193 = ASESafeNormalize( ( lightDir14_g193 + viewDir15_g193 ) );
			float dotResult137_g193 = dot( lightDir14_g193 , normalizeResult136_g193 );
			float LdotH139_g193 = saturate( dotResult137_g193 );
			float mgAlpha806_g188 = tex2DNode532_g188.a;
			float lerpResult353_g188 = lerp( 1.0 , mgAlpha806_g188 , _Roughness);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch790_g188 = lerpResult353_g188;
			#else
				float staticSwitch790_g188 = 1.0;
			#endif
			float MainGlossiness795_g188 = tex2DNode528_g188.b;
			float lerpResult336_g188 = lerp( 1.0 , mgAlpha806_g188 , _Roughness4);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch792_g188 = lerpResult336_g188;
			#else
				float staticSwitch792_g188 = 1.0;
			#endif
			float lerpResult384_g188 = lerp( ( staticSwitch790_g188 * MainGlossiness795_g188 ) , ( staticSwitch792_g188 * _Glossiness4 ) , ColorMask4347_g188);
			float WetGlossBase397_g188 = _WetGlossBase;
			float lerpResult470_g188 = lerp( saturate( ( ( lerpResult384_g188 - ( ( 1.0 - Detail1310_g188 ) * ( _DetailGlossScale * DetailMask130_g188 ) ) ) - ( ( 1.0 - Detail2352_g188 ) * ( _DetailGlossScale2 * DetailMask235_g188 ) ) ) ) , mgAlpha806_g188 , ( WetGlossBase397_g188 * ExGloss298_g188 ));
			float SplatsGloss407_g188 = _WetGlossSplats;
			float lerpResult664_g188 = lerp( lerpResult470_g188 , SplatsGloss407_g188 , ( SplatsOp363_g188 * ExGloss298_g188 * WetSplats369_g188 ));
			float lerpResult649_g188 = lerp( lerpResult664_g188 , 0.87 , ( WetOpStreaks673_g188 * smoothstepResult651_g188 ));
			float lerpResult499_g188 = lerp( lerpResult649_g188 , _WeatheringGloss , WeatheringAlpha396_g188);
			float GlossinessFinal513_g188 = saturate( lerpResult499_g188 );
			float outSmoothness1627 = GlossinessFinal513_g188;
			float smoothness169_g193 = outSmoothness1627;
			float perceprualRoughness188_g193 = ( 1.0 - smoothness169_g193 );
			half fd90273_g193 = ( 0.5 + ( 2.0 * LdotH139_g193 * LdotH139_g193 * perceprualRoughness188_g193 ) );
			float3 outNormal1623 = temp_output_1642_557;
			float3 normalizeResult25_g193 = normalize( (WorldNormalVector( i , outNormal1623 )) );
			float3 switchResult316_g193 = (((i.ASEVFace>0)?(normalizeResult25_g193):(-normalizeResult25_g193)));
			float3 normalDir28_g193 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g193 : normalizeResult25_g193 );
			float dotResult21_g193 = dot( lightDir14_g193 , normalDir28_g193 );
			float NdotL20_g193 = saturate( dotResult21_g193 );
			half lightScatter253_g193 = ( ( ( fd90273_g193 - 1.0 ) * pow( ( 1.0 - NdotL20_g193 ) , 5.0 ) ) + 1.0 );
			float dotResult56_g193 = dot( normalDir28_g193 , viewDir15_g193 );
			float NdotV55_g193 = saturate( dotResult56_g193 );
			half viewScatter254_g193 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g193 ) , 5.0 ) * ( fd90273_g193 - 1.0 ) ) );
			half disneydiffuse251_g193 = ( lightScatter253_g193 * viewScatter254_g193 );
			half Diffuseterm281_g193 = ( disneydiffuse251_g193 * NdotL20_g193 );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 lightAtten296_g193 = ( ase_lightColor.rgb * ase_lightAtten );
			UnityGI gi203_g193 = gi;
			float3 diffNorm203_g193 = normalDir28_g193;
			gi203_g193 = UnityGI_Base( data, 1, diffNorm203_g193 );
			float3 indirectDiffuse203_g193 = gi203_g193.indirect.diffuse + diffNorm203_g193 * 0.0001;
			float2 uv_OcclusionMap623_g188 = i.uv_texcoord;
			float lerpResult483_g188 = lerp( 1.0 , tex2D( _OcclusionMap, uv_OcclusionMap623_g188 ).g , _OcculusionStrength);
			float smoothstepResult621_g188 = smoothstep( 0.0 , 0.8 , Detail1310_g188);
			float lerpResult488_g188 = lerp( 1.0 , smoothstepResult621_g188 , ( _DetailOcculusionScale * DetailMask130_g188 ));
			float smoothstepResult622_g188 = smoothstep( 0.0 , 0.8 , Detail2352_g188);
			float lerpResult494_g188 = lerp( 1.0 , smoothstepResult622_g188 , ( _DetailOcculusionScale2 * DetailMask235_g188 ));
			float lerpResult620_g188 = lerp( ( lerpResult483_g188 * lerpResult488_g188 * lerpResult494_g188 ) , 1.0 , WeatheringAlpha396_g188);
			float OcclusionMix509_g188 = saturate( lerpResult620_g188 );
			float outAO1628 = OcclusionMix509_g188;
			float occlusion306_g193 = outAO1628;
			half Roughness64_g193 = max( ( perceprualRoughness188_g193 * perceprualRoughness188_g193 ) , 0.002 );
			half SmithJointGGXVisibilityTerm42_g193 = ( 0.5 / ( ( ( ( NdotV55_g193 * ( 1.0 - Roughness64_g193 ) ) + Roughness64_g193 ) * NdotL20_g193 ) + 1E-05 + ( NdotV55_g193 * ( Roughness64_g193 + ( ( 1.0 - Roughness64_g193 ) * NdotL20_g193 ) ) ) ) );
			float a266_g193 = ( Roughness64_g193 * Roughness64_g193 );
			float3 normalizeResult87_g193 = ASESafeNormalize( ( lightDir14_g193 + viewDir15_g193 ) );
			float dotResult88_g193 = dot( normalDir28_g193 , normalizeResult87_g193 );
			float NdotH90_g193 = saturate( dotResult88_g193 );
			float d99_g193 = ( ( ( ( NdotH90_g193 * a266_g193 ) - NdotH90_g193 ) * NdotH90_g193 ) + 1.0 );
			half GGXTerm43_g193 = ( ( ( 1.0 / UNITY_PI ) * a266_g193 ) / ( ( d99_g193 * d99_g193 ) + 1E-07 ) );
			float temp_output_36_0_g193 = ( SmithJointGGXVisibilityTerm42_g193 * GGXTerm43_g193 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g193 = sqrt( max( 0.0001 , temp_output_36_0_g193 ) );
			#else
				float staticSwitch5_g193 = temp_output_36_0_g193;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g193 = 0.0;
			#else
				float staticSwitch119_g193 = max( 0.0 , ( staticSwitch5_g193 * NdotL20_g193 ) );
			#endif
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1600 = temp_output_1595_0;
			#else
				float3 staticSwitch1600 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1618 = i.uv_texcoord;
			half3 specColor1601 = (0).xxx;
			half oneMinusReflectivity1601 = 0;
			half3 diffuseAndSpecularFromMetallic1601 = DiffuseAndSpecularFromMetallic(( staticSwitch1600 * (tex2D( _SpecularMap, uv_SpecularMap1618 )).rgb ),temp_output_1642_559,specColor1601,oneMinusReflectivity1601);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1602 = specColor1601;
			#else
				float3 staticSwitch1602 = specColor1606;
			#endif
			float3 OutSpecular1605 = staticSwitch1602;
			float3 SpecColor140_g193 = ( OutSpecular1605 * occlusion306_g193 );
			float SpecularTerm34_g193 = ( staticSwitch119_g193 * ( SpecColor140_g193.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			half3 FresnelTerm130_g193 = ( ( pow( ( 1.0 - LdotH139_g193 ) , 5.0 ) * ( 1.0 - SpecColor140_g193 ) ) + SpecColor140_g193 );
			half metallic176_g193 = 0.0;
			half localOneMinusReflectivity176_g193 = OneMinusReflectivity( metallic176_g193 );
			half GrazingTerm163_g193 = saturate( ( smoothness169_g193 + ( 1.0 - localOneMinusReflectivity176_g193 ) ) );
			float3 temp_cast_4 = (GrazingTerm163_g193).xxx;
			float3 lerpResult159_g193 = lerp( SpecColor140_g193 , temp_cast_4 , pow( ( 1.0 - NdotV55_g193 ) , 5.0 ));
			half3 FresnelLerp165_g193 = lerpResult159_g193;
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g193 = ( 1.0 - ( 0.28 * Roughness64_g193 * perceprualRoughness188_g193 ) );
			#else
				float staticSwitch183_g193 = ( 1.0 / ( ( Roughness64_g193 * Roughness64_g193 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g193 = staticSwitch183_g193;
			float3 indirectNormal299_g193 = normalDir28_g193;
			Unity_GlossyEnvironmentData g299_g193 = UnityGlossyEnvironmentSetup( smoothness169_g193, data.worldViewDir, indirectNormal299_g193, float3(0,0,0));
			float3 indirectSpecular299_g193 = UnityGI_IndirectSpecular( data, occlusion306_g193, indirectNormal299_g193, g299_g193 );
			#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g193 = float3( 0,0,0 );
			#else
				float3 staticSwitch313_g193 = ( FresnelLerp165_g193 * SurfaceReduction182_g193 * indirectSpecular299_g193 );
			#endif
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g193 = float3( 0,0,0 );
			#else
				float3 staticSwitch305_g193 = staticSwitch313_g193;
			#endif
			float EmissionMask799_g188 = tex2DNode532_g188.g;
			float WeatheringBumpMask718_g188 = tex2DNode177_g188.b;
			float3 outEmission1625 = ( ( EmissionMask799_g188 * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g188 * WeatheringBumpMask718_g188 ) * _WeatheringEmission ) );
			float3 normalizeResult61_g191 = normalize( (WorldNormalVector( i , outNormal1623 )) );
			float3 switchResult64_g191 = (((i.ASEVFace>0)?(normalizeResult61_g191):(-normalizeResult61_g191)));
			float3 normal2_g192 = ( _NormalBackDirInvert == 1.0 ? switchResult64_g191 : normalizeResult61_g191 );
			float3 localGI2_g192 = GI2_g192( normal2_g192 );
			float Thickness507_g188 = tex2DNode532_g188.b;
			float thickness1646 = Thickness507_g188;
			float temp_output_59_0_g191 = ( _Translucency * thickness1646 );
			float3 Diffuse1644 = temp_output_1642_0;
			float3 temp_output_6_0_g191 = Diffuse1644;
			float temp_output_74_0_g191 = outAO1628;
			c.rgb = ( ( ( OutAlbedo1604 * ( ( Diffuseterm281_g193 * lightAtten296_g193 ) + ( indirectDiffuse203_g193 * occlusion306_g193 ) ) ) + ( SpecularTerm34_g193 * lightAtten296_g193 * FresnelTerm130_g193 ) + staticSwitch305_g193 ) + outEmission1625 + saturate( ( ( localGI2_g192 * _TransAmbient ) * temp_output_59_0_g191 * temp_output_6_0_g191 * temp_output_74_0_g191 ) ) );
			c.a = outAlpha1631;
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
Version=18912
6;6;1511;878;-7937.662;2277.47;1.650195;True;False
Node;AmplifyShaderEditor.FunctionNode;1642;5560.153,-2425.048;Inherit;False;AIT Clothes Function;12;;188;d0644e5becc3a6145ad3ab18b1d3f488;0;0;12;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;812;FLOAT;561;SAMPLERSTATE;748;FLOAT;562;FLOAT;787;FLOAT;817;FLOAT;816
Node;AmplifyShaderEditor.FunctionNode;1595;5851.836,-2626.556;Inherit;False;Iridiscence;86;;189;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1611;6175.968,-2151.94;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1607;6288.398,-2282.267;Inherit;False;Property;_SpecColor;SpecColor;92;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1612;6222.102,-2125.577;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1618;6158.937,-2048.759;Inherit;True;Property;_SpecularMap;SpecularMap;93;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1608;6495.265,-2283.345;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1613;5905.209,-1876.744;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1600;6752.592,-2182.068;Inherit;False;Property;_Iridiscent2;Iridiscent;85;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1597;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1596;6141.151,-2630.663;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1617;6491.784,-2048.189;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1614;5949.149,-1852.577;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1597;6386.739,-2626.739;Inherit;False;Property;_Iridiscent;Iridiscent;85;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1619;6980.833,-2064.812;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1609;6039.75,-2742.274;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1601;7148.071,-1896.234;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1610;6103.462,-2773.03;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1606;6673.288,-2560.237;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1602;7477.574,-2540.774;Inherit;False;Property;_SpecularSetup;SpecularSetup;91;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1603;6996.55,-2825.649;Inherit;False;Property;_SpecularSetup2;SpecularSetup;91;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1602;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1533;5566.44,-1741.771;Inherit;False;Property;_Cutoff;Cutoff;84;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1628;5913.789,-2094.082;Inherit;False;outAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1635;8648.84,-2316.688;Inherit;False;1083.366;982.0896;Comment;14;1647;1645;1593;1284;1632;1640;1639;1626;1643;1630;1633;1629;1634;1624;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1646;5944.352,-1994.988;Inherit;False;thickness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1623;5911.21,-2356.282;Inherit;False;outNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1604;7287.419,-2825.826;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1605;7767.688,-2537.081;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1644;6026.532,-2878.263;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1627;5917.078,-2186.828;Inherit;False;outSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1629;8730.379,-1823.305;Inherit;False;1627;outSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1633;8754.425,-2179.128;Inherit;False;1604;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1634;8744.747,-2008.513;Inherit;False;1605;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1630;8777.33,-1742.289;Inherit;False;1628;outAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1624;8757.688,-2096.216;Inherit;False;1623;outNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;1621;5898.777,-1786.234;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1645;8757.082,-1552.958;Inherit;False;1644;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1647;8750.721,-1477.453;Inherit;False;1646;thickness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1625;5915.825,-2274.957;Inherit;False;outEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1643;8987.68,-1585.578;Inherit;False;Unity Translucency;1;;191;3081dbcb6ac8af842b2faa561ed4ff52;0;4;74;FLOAT;0;False;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.GetLocalVarNode;1626;8749.46,-1917.688;Inherit;False;1625;outEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1639;9050.925,-2112.491;Inherit;False;GGX Specular Light;10;;193;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1631;6144.856,-1784.521;Inherit;False;outAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1284;9409.168,-1501.194;Inherit;False;Property;_CullMode;CullMode;0;2;[Header];[IntRange];Create;True;1;Culling Setting;3;None;0;Front;1;Back;2;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1640;9297.329,-1932.29;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1632;8777.873,-1650.235;Inherit;False;1631;outAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;1593;9439.388,-2072.38;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Hanmen/Clothes True Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;True;1492;3;False;-1;False;1;False;-1;1;False;-1;False;7;Transparent;0.5;True;True;0;False;Transparent;;Transparent;ForwardOnly;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;2;5;False;1462;10;False;1463;0;5;False;-1;10;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;-1;-1;-1;0;False;0;0;True;1284;-1;0;True;1533;0;0;0;False;0.1;False;-1;0;False;-1;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1595;1;1642;557
WireConnection;1611;0;1595;0
WireConnection;1612;0;1611;0
WireConnection;1608;0;1607;0
WireConnection;1613;0;1642;559
WireConnection;1600;1;1608;0
WireConnection;1600;0;1612;0
WireConnection;1596;0;1595;0
WireConnection;1596;1;1642;0
WireConnection;1596;2;1642;559
WireConnection;1617;0;1618;0
WireConnection;1614;0;1613;0
WireConnection;1597;1;1642;0
WireConnection;1597;0;1596;0
WireConnection;1619;0;1600;0
WireConnection;1619;1;1617;0
WireConnection;1609;0;1642;0
WireConnection;1601;0;1619;0
WireConnection;1601;1;1614;0
WireConnection;1610;0;1609;0
WireConnection;1606;0;1597;0
WireConnection;1606;1;1642;559
WireConnection;1602;1;1606;1
WireConnection;1602;0;1601;1
WireConnection;1603;1;1606;0
WireConnection;1603;0;1610;0
WireConnection;1628;0;1642;561
WireConnection;1646;0;1642;562
WireConnection;1623;0;1642;557
WireConnection;1604;0;1603;0
WireConnection;1605;0;1602;0
WireConnection;1644;0;1642;0
WireConnection;1627;0;1642;560
WireConnection;1621;0;1642;817
WireConnection;1621;1;1642;816
WireConnection;1621;2;1533;0
WireConnection;1625;0;1642;558
WireConnection;1643;74;1630;0
WireConnection;1643;6;1645;0
WireConnection;1643;26;1624;0
WireConnection;1643;46;1647;0
WireConnection;1639;286;1633;0
WireConnection;1639;30;1624;0
WireConnection;1639;146;1634;0
WireConnection;1639;147;1629;0
WireConnection;1639;302;1630;0
WireConnection;1631;0;1621;0
WireConnection;1640;0;1639;0
WireConnection;1640;1;1626;0
WireConnection;1640;2;1643;68
WireConnection;1593;9;1632;0
WireConnection;1593;13;1640;0
ASEEND*/
//CHKSM=E714E7F7F9FE9CF2085FA681EBC0761691BAFAB5