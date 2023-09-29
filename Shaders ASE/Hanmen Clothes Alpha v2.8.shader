// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Alpha"
{
	Properties
	{
		[Header(Culling Setting)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
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
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
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
			half ASEVFace : VFACE;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
		};

		uniform float _EmissionStrength;
		uniform float _Metallic4;
		uniform float _WetGlossBase;
		uniform float _DetailGlossScale2;
		uniform sampler2D _DetailMainTex;
		uniform sampler2D _ColorMask;
		uniform sampler2D _BumpMap;
		uniform float _DetailMetallicScale;
		uniform float4 _BaseColor;
		uniform float _DetailUV2Rotator;
		uniform float4 _WeatheringUV;
		uniform sampler2D _MetallicGlossMap;
		uniform float _WetOpacityStreaks;
		uniform sampler2D _OcclusionMap;
		uniform float _DetailMetallicScale2;
		uniform float _WetOpacitySplats;
		uniform float _WeatheringRange5;
		uniform float _TransmissionStrength;
		uniform float _WeatheringRange2;
		uniform float _WeatheringRange4;
		uniform float _WetAlbedoOffset;
		uniform float _WeatheringRange1;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange3;
		uniform float _WetGlossSplats;
		uniform float4 _Color;
		uniform float _WetSplatsAlbedoOffset;
		uniform sampler2D _DetailMask;
		uniform sampler2D _WeatheringMap;
		uniform float _WetBumpOffset;
		uniform float4 _BodyColor1;
		uniform float4 _WetUV;
		uniform float _DetailGlossScale;
		uniform sampler2D _WetnessMap;
		uniform float _Float0;
		uniform float _DetailNormalMapScale2;
		uniform float4 _WetColor;
		uniform float2 _DetailUV;
		uniform float2 _UVScalePattern;
		uniform sampler2D _DetailGlossMap;
		uniform float _DetailNormalMapScale;
		uniform sampler2D _MainTex;
		uniform float _AlphaMaster;
		uniform float4 _WeatheringAlbedo;
		uniform float4 _EmissionColor;
		uniform float _AlphaEx;
		uniform sampler2D _DetailGlossMap2;
		uniform float _WetAlpha;
		uniform float2 _patternuvbase;
		uniform sampler2D _WeatheringMask;
		uniform float _WeatheringGloss;
		uniform float _DetailUVRotator;
		uniform float _ExGloss;
		uniform float2 _DetailUV2;
		uniform float4 _WetStreaksUV;
		uniform float _CarvatureStrength;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _Cutoff;
		uniform float _CullMode;
		uniform float _NormalBackDirInvert;
		uniform float _WeatheringUVSeed;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _WeatheringEmission;
		uniform sampler2D _SpecularMap;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;


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


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_BumpMap402_g177 = i.uv_texcoord;
			float WetBumpOffset303_g177 = _WetBumpOffset;
			float ExGloss298_g177 = _ExGloss;
			float2 UVScale107_g177 = _UVScalePattern;
			float2 uv_TexCoord152_g177 = i.uv_texcoord * ( _DetailUV * UVScale107_g177 );
			float cos162_g177 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g177 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g177 = mul( uv_TexCoord152_g177 - float2( 0.5,0.5 ) , float2x2( cos162_g177 , -sin162_g177 , sin162_g177 , cos162_g177 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g177 = rotator162_g177;
			float2 break194_g177 = Detail1UV173_g177;
			float temp_output_186_0_g177 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g177 = (float2(( break194_g177.x + temp_output_186_0_g177 ) , break194_g177.y));
			float4 tex2DNode243_g177 = tex2D( _DetailGlossMap, Detail1UV173_g177 );
			float2 uv_DetailMask25_g177 = i.uv_texcoord;
			float4 tex2DNode25_g177 = tex2D( _DetailMask, uv_DetailMask25_g177 );
			float DetailMask130_g177 = tex2DNode25_g177.r;
			float temp_output_255_0_g177 = ( DetailMask130_g177 * _DetailNormalMapScale );
			float3 appendResult300_g177 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult218_g177 ).g - tex2DNode243_g177.g ) * temp_output_255_0_g177 )));
			float2 appendResult222_g177 = (float2(break194_g177.x , ( break194_g177.y + temp_output_186_0_g177 )));
			float3 appendResult297_g177 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult222_g177 ).g - tex2DNode243_g177.g ) * temp_output_255_0_g177 )));
			float3 normalizeResult348_g177 = normalize( cross( appendResult300_g177 , appendResult297_g177 ) );
			float3 DetailNormal1368_g177 = normalizeResult348_g177;
			float2 uv_TexCoord16_g177 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g177 );
			float cos19_g177 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g177 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g177 = mul( uv_TexCoord16_g177 - float2( 0.5,0.5 ) , float2x2( cos19_g177 , -sin19_g177 , sin19_g177 , cos19_g177 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g177 = rotator19_g177;
			float2 break24_g177 = Detail2UV20_g177;
			float temp_output_26_0_g177 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g177 = (float2(( break24_g177.x + temp_output_26_0_g177 ) , break24_g177.y));
			float4 tex2DNode38_g177 = tex2D( _DetailGlossMap2, Detail2UV20_g177 );
			float DetailMask235_g177 = tex2DNode25_g177.g;
			float temp_output_43_0_g177 = ( DetailMask235_g177 * _DetailNormalMapScale2 );
			float3 appendResult58_g177 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap2, appendResult34_g177 ).g - tex2DNode38_g177.g ) * temp_output_43_0_g177 )));
			float2 appendResult33_g177 = (float2(break24_g177.x , ( break24_g177.y + temp_output_26_0_g177 )));
			float3 appendResult57_g177 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap2, appendResult33_g177 ).g - tex2DNode38_g177.g ) * temp_output_43_0_g177 )));
			float3 normalizeResult69_g177 = normalize( cross( appendResult58_g177 , appendResult57_g177 ) );
			float3 DetailNormal276_g177 = normalizeResult69_g177;
			float2 appendResult657_g177 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g177 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g177 = i.uv_texcoord * appendResult657_g177 + appendResult658_g177;
			float2 WetStrUV669_g177 = uv_TexCoord660_g177;
			float2 break547_g177 = WetStrUV669_g177;
			float temp_output_541_0_g177 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g177 = (float2(( break547_g177.x + temp_output_541_0_g177 ) , break547_g177.y));
			float4 tex2DNode515_g177 = tex2D( _WetnessMap, WetStrUV669_g177 );
			float3 appendResult523_g177 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult546_g177 ).g - tex2DNode515_g177.g ) * 1.0 )));
			float2 appendResult534_g177 = (float2(break547_g177.x , ( break547_g177.y + temp_output_541_0_g177 )));
			float3 appendResult542_g177 = (float3(0.0 , 1.0 , ( ( tex2D( _WetnessMap, appendResult534_g177 ).g - tex2DNode515_g177.g ) * 1.0 )));
			float3 normalizeResult524_g177 = normalize( cross( appendResult523_g177 , appendResult542_g177 ) );
			float3 WetnessNormal545_g177 = normalizeResult524_g177;
			float WetStr661_g177 = tex2D( _WetnessMap, WetStrUV669_g177 ).g;
			float smoothstepResult651_g177 = smoothstep( ( 1.0 - ExGloss298_g177 ) , 1.0 , WetStr661_g177);
			float StreaksAlpha662_g177 = smoothstepResult651_g177;
			float WetOpStreaks673_g177 = _WetOpacityStreaks;
			float3 lerpResult98_g177 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap402_g177 ), ( _Float0 + ( WetBumpOffset303_g177 * ExGloss298_g177 ) ) ) , DetailNormal1368_g177 ) , DetailNormal276_g177 ) , WetnessNormal545_g177 , ( StreaksAlpha662_g177 * WetOpStreaks673_g177 ));
			float2 appendResult115_g177 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g177 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult735_g177 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult742_g177 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult735_g177 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g177 = i.uv_texcoord * appendResult115_g177 + ( appendResult110_g177 + lerpResult742_g177 );
			float2 WeatheringUV144_g177 = uv_TexCoord127_g177;
			float2 break223_g177 = WeatheringUV144_g177;
			float temp_output_224_0_g177 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g177 = (float2(( break223_g177.x + temp_output_224_0_g177 ) , break223_g177.y));
			float4 tex2DNode266_g177 = tex2D( _WeatheringMap, WeatheringUV144_g177 );
			float3 appendResult344_g177 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult258_g177 ).b - tex2DNode266_g177.b ) * 2.0 )));
			float2 appendResult252_g177 = (float2(break223_g177.x , ( break223_g177.y + temp_output_224_0_g177 )));
			float3 appendResult339_g177 = (float3(0.0 , 1.0 , ( ( tex2D( _WeatheringMap, appendResult252_g177 ).b - tex2DNode266_g177.b ) * 2.0 )));
			float3 normalizeResult398_g177 = normalize( cross( appendResult344_g177 , appendResult339_g177 ) );
			float3 WeatheringBump425_g177 = normalizeResult398_g177;
			float4 tex2DNode177_g177 = tex2D( _WeatheringMap, WeatheringUV144_g177 );
			float2 uv_WeatheringMask100_g177 = i.uv_texcoord;
			float4 tex2DNode100_g177 = tex2D( _WeatheringMask, uv_WeatheringMask100_g177 );
			float clampResult161_g177 = clamp( ( tex2DNode100_g177.r - tex2DNode100_g177.g ) , 0.0 , 1.0 );
			float WMask1183_g177 = ( clampResult161_g177 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g177 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult253_g177 = clamp( ( ( tex2DNode177_g177.g * WMask1183_g177 ) - RangeCut1208_g177 ) , 0.0 , 1.0 );
			float clampResult159_g177 = clamp( ( tex2DNode100_g177.g - tex2DNode100_g177.r ) , 0.0 , 1.0 );
			float WMask2192_g177 = ( clampResult159_g177 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g177 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult251_g177 = clamp( ( ( tex2DNode177_g177.g * WMask2192_g177 ) - RangeCut2211_g177 ) , 0.0 , 1.0 );
			float WMask3190_g177 = ( tex2DNode100_g177.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g177 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult254_g177 = clamp( ( ( tex2DNode177_g177.g * WMask3190_g177 ) - RangeCut3210_g177 ) , 0.0 , 1.0 );
			float WMask4180_g177 = ( ( tex2DNode100_g177.r * tex2DNode100_g177.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g177 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult259_g177 = clamp( ( ( tex2DNode177_g177.g * WMask4180_g177 ) - RangeCut4205_g177 ) , 0.0 , 1.0 );
			float WMask5184_g177 = ( ( tex2DNode100_g177.r * tex2DNode100_g177.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g177 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult261_g177 = clamp( ( ( tex2DNode177_g177.g * WMask5184_g177 ) - RangeCut5201_g177 ) , 0.0 , 1.0 );
			float WMaskAll165_g177 = ceil( _WeatheringAll );
			float RangeCutAll171_g177 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
			float clampResult215_g177 = clamp( ( ( tex2DNode177_g177.g * WMaskAll165_g177 ) - RangeCutAll171_g177 ) , 0.0 , 1.0 );
			float clampResult299_g177 = clamp( ( clampResult253_g177 + clampResult251_g177 + clampResult254_g177 + clampResult259_g177 + clampResult261_g177 + clampResult215_g177 ) , 0.0 , 1.0 );
			float lerpResult313_g177 = lerp( clampResult299_g177 , clampResult215_g177 , WMaskAll165_g177);
			float clampResult373_g177 = clamp( ( lerpResult313_g177 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g177 = clampResult373_g177;
			float3 lerpResult87_g177 = lerp( lerpResult98_g177 , WeatheringBump425_g177 , ( tex2D( _WeatheringMap, WeatheringUV144_g177 ).b * WeatheringAlpha396_g177 ));
			float3 normalizeResult564_g177 = normalize( lerpResult87_g177 );
			float3 switchResult566_g177 = (((i.ASEVFace>0)?(normalizeResult564_g177):(-normalizeResult564_g177)));
			float3 NormalMix88_g177 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g177 : normalizeResult564_g177 );
			float3 temp_output_1620_557 = NormalMix88_g177;
			o.Normal = temp_output_1620_557;
			float2 uv_MainTex576_g177 = i.uv_texcoord;
			float4 tex2DNode576_g177 = tex2D( _MainTex, uv_MainTex576_g177 );
			float3 temp_output_284_0_g177 = (tex2DNode576_g177).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g177 = i.uv_texcoord;
			float4 tex2DNode196_g177 = tex2D( _OcclusionMap, uv_OcclusionMap196_g177 );
			float Carvature270_g177 = tex2DNode196_g177.r;
			float3 lerpResult331_g177 = lerp( ( temp_output_284_0_g177 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g177 * _CarvatureStrength ));
			float WetAlbedoOffset311_g177 = _WetAlbedoOffset;
			float3 temp_output_382_0_g177 = ( lerpResult331_g177 * WetAlbedoOffset311_g177 );
			float WetSplatsAlbedoOffset349_g177 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g177 = lerp( ( temp_output_382_0_g177 * WetSplatsAlbedoOffset349_g177 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g177 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g177 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g177 = i.uv_texcoord * appendResult287_g177 + appendResult285_g177;
			float2 WetUV578_g177 = uv_TexCoord317_g177;
			float WetSplats369_g177 = tex2D( _WetnessMap, WetUV578_g177 ).b;
			float SplatsOp363_g177 = _WetOpacitySplats;
			float3 lerpResult460_g177 = lerp( temp_output_382_0_g177 , lerpResult411_g177 , ( ( StreaksAlpha662_g177 * WetOpStreaks673_g177 ) + ( WetSplats369_g177 * SplatsOp363_g177 ) ));
			float2 uv_OcclusionMap429_g177 = i.uv_texcoord;
			float4 tex2DNode429_g177 = tex2D( _OcclusionMap, uv_OcclusionMap429_g177 );
			float3 WetBodyOffset422_g177 = (_BodyColor1).rgb;
			float bodycoloralpha417_g177 = _BodyColor1.a;
			float3 lerpResult480_g177 = lerp( lerpResult460_g177 , ( tex2DNode429_g177.a == 1.0 ? lerpResult460_g177 : WetBodyOffset422_g177 ) , ( bodycoloralpha417_g177 * ( 1.0 - tex2DNode429_g177.a ) ));
			float3 lerpResult501_g177 = lerp( lerpResult331_g177 , lerpResult480_g177 , ExGloss298_g177);
			float WeatheringAlpha2466_g177 = lerpResult313_g177;
			float3 lerpResult505_g177 = lerp( lerpResult501_g177 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g177 * 0.282353 ));
			float3 DiffuseMix511_g177 = lerpResult505_g177;
			float3 temp_output_1620_0 = DiffuseMix511_g177;
			Gradient gradient37_g178 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g178 = dot( ase_tanViewDir , temp_output_1620_557 );
			float3 temp_output_12_0_g178 = (SampleGradient( gradient37_g178, dotResult7_g178 )).rgb;
			float temp_output_10_0_g178 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g178 = cos( temp_output_10_0_g178 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g178 = dot( _k7 , temp_output_12_0_g178 );
			float3 temp_output_32_0_g178 = ( ( ( ( ( ( temp_output_12_0_g178 * temp_output_13_0_g178 ) + ( cross( _k7 , temp_output_12_0_g178 ) * sin( temp_output_10_0_g178 ) ) + ( _k7 * dotResult14_g178 * ( 1.0 - temp_output_13_0_g178 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g178 = dot( temp_output_32_0_g178 , float3(0.39,0.59,0.11) );
			float3 temp_cast_2 = (dotResult34_g178).xxx;
			float3 lerpResult35_g178 = lerp( temp_cast_2 , temp_output_32_0_g178 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1595_0 = lerpResult35_g178;
			float3 blendOpSrc1596 = temp_output_1595_0;
			float3 blendOpDest1596 = temp_output_1620_0;
			float2 uv_MetallicGlossMap330_g177 = i.uv_texcoord;
			float4 tex2DNode330_g177 = tex2D( _MetallicGlossMap, uv_MetallicGlossMap330_g177 );
			float lerpResult399_g177 = lerp( 1.0 , tex2DNode330_g177.r , _MetallicMask);
			float2 uv_DetailMainTex338_g177 = i.uv_texcoord;
			float4 tex2DNode338_g177 = tex2D( _DetailMainTex, uv_DetailMainTex338_g177 );
			float lerpResult395_g177 = lerp( 1.0 , tex2DNode330_g177.r , _MetallicMask4);
			float2 uv_ColorMask304_g177 = i.uv_texcoord;
			float4 tex2DNode304_g177 = tex2D( _ColorMask, uv_ColorMask304_g177 );
			float ColorMask4347_g177 = tex2DNode304_g177.b;
			float lerpResult462_g177 = lerp( ( lerpResult399_g177 * tex2DNode338_g177.r ) , ( lerpResult395_g177 * _Metallic4 ) , ColorMask4347_g177);
			float Detail1310_g177 = tex2D( _DetailGlossMap, Detail1UV173_g177 ).r;
			float Detail2352_g177 = tex2D( _DetailGlossMap2, Detail2UV20_g177 ).r;
			float lerpResult495_g177 = lerp( saturate( ( ( lerpResult462_g177 - ( ( 1.0 - Detail1310_g177 ) * ( _DetailMetallicScale * DetailMask130_g177 ) ) ) - ( ( 1.0 - Detail2352_g177 ) * ( _DetailMetallicScale2 * DetailMask235_g177 ) ) ) ) , 0.0 , WeatheringAlpha2466_g177);
			float MetallicFinal512_g177 = saturate( lerpResult495_g177 );
			float temp_output_1620_559 = MetallicFinal512_g177;
			float3 lerpBlendMode1596 = lerp(blendOpDest1596,( blendOpSrc1596 * blendOpDest1596 ),temp_output_1620_559);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1597 = ( saturate( lerpBlendMode1596 ));
			#else
				float3 staticSwitch1597 = temp_output_1620_0;
			#endif
			half3 specColor1606 = (0).xxx;
			half oneMinusReflectivity1606 = 0;
			half3 diffuseAndSpecularFromMetallic1606 = DiffuseAndSpecularFromMetallic(staticSwitch1597,temp_output_1620_559,specColor1606,oneMinusReflectivity1606);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1603 = temp_output_1620_0;
			#else
				float3 staticSwitch1603 = diffuseAndSpecularFromMetallic1606;
			#endif
			float3 OutAlbedo1604 = staticSwitch1603;
			o.Albedo = OutAlbedo1604;
			float WeatheringBumpMask706_g177 = tex2DNode177_g177.b;
			o.Emission = ( ( tex2DNode330_g177.g * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g177 * WeatheringBumpMask706_g177 ) * _WeatheringEmission ) );
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1600 = temp_output_1595_0;
			#else
				float3 staticSwitch1600 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1618 = i.uv_texcoord;
			half3 specColor1601 = (0).xxx;
			half oneMinusReflectivity1601 = 0;
			half3 diffuseAndSpecularFromMetallic1601 = DiffuseAndSpecularFromMetallic(( staticSwitch1600 * (tex2D( _SpecularMap, uv_SpecularMap1618 )).rgb ),temp_output_1620_559,specColor1601,oneMinusReflectivity1601);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1602 = specColor1601;
			#else
				float3 staticSwitch1602 = specColor1606;
			#endif
			float3 OutSpecular1605 = staticSwitch1602;
			o.Specular = OutSpecular1605;
			float lerpResult353_g177 = lerp( 1.0 , tex2DNode330_g177.r , _Roughness);
			float lerpResult336_g177 = lerp( 1.0 , tex2DNode330_g177.r , _Roughness4);
			float lerpResult384_g177 = lerp( ( lerpResult353_g177 * tex2DNode338_g177.b ) , ( _Glossiness4 * lerpResult336_g177 ) , ColorMask4347_g177);
			float WetGlossBase397_g177 = _WetGlossBase;
			float lerpResult470_g177 = lerp( saturate( ( ( lerpResult384_g177 - ( ( 1.0 - Detail1310_g177 ) * ( _DetailGlossScale * DetailMask130_g177 ) ) ) - ( ( 1.0 - Detail2352_g177 ) * ( _DetailGlossScale2 * DetailMask235_g177 ) ) ) ) , tex2DNode330_g177.a , ( WetGlossBase397_g177 * ExGloss298_g177 ));
			float SplatsGloss407_g177 = _WetGlossSplats;
			float lerpResult664_g177 = lerp( lerpResult470_g177 , SplatsGloss407_g177 , ( SplatsOp363_g177 * ExGloss298_g177 * WetSplats369_g177 ));
			float lerpResult649_g177 = lerp( lerpResult664_g177 , 0.87 , ( WetOpStreaks673_g177 * smoothstepResult651_g177 ));
			float lerpResult499_g177 = lerp( lerpResult649_g177 , _WeatheringGloss , WeatheringAlpha396_g177);
			float GlossinessFinal513_g177 = saturate( lerpResult499_g177 );
			o.Smoothness = GlossinessFinal513_g177;
			float2 uv_OcclusionMap623_g177 = i.uv_texcoord;
			float lerpResult483_g177 = lerp( 1.0 , tex2D( _OcclusionMap, uv_OcclusionMap623_g177 ).g , _OcculusionStrength);
			float smoothstepResult621_g177 = smoothstep( 0.0 , 0.8 , Detail1310_g177);
			float lerpResult488_g177 = lerp( 1.0 , smoothstepResult621_g177 , ( _DetailOcculusionScale * DetailMask130_g177 ));
			float smoothstepResult622_g177 = smoothstep( 0.0 , 0.8 , Detail2352_g177);
			float lerpResult494_g177 = lerp( 1.0 , smoothstepResult622_g177 , ( _DetailOcculusionScale2 * DetailMask235_g177 ));
			float lerpResult620_g177 = lerp( ( lerpResult483_g177 * lerpResult488_g177 * lerpResult494_g177 ) , 1.0 , WeatheringAlpha396_g177);
			float OcclusionMix509_g177 = saturate( lerpResult620_g177 );
			o.Occlusion = OcclusionMix509_g177;
			float AlphaInput195_g177 = tex2DNode576_g177.a;
			float OccAlpha219_g177 = tex2DNode196_g177.a;
			o.Alpha = saturate( ( ( ( AlphaInput195_g177 * _AlphaMaster ) * saturate( pow( OccAlpha219_g177 , ( _WetAlpha * ExGloss298_g177 ) ) ) ) + WeatheringAlpha2466_g177 ) );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d11_9x d3d11 
		#pragma surface surf StandardSpecular alpha:fade keepalpha fullforwardshadows 

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
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
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
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
6;0.4;1513;884;-5569.601;2361.081;1.49303;True;False
Node;AmplifyShaderEditor.FunctionNode;1620;5557.863,-2131.498;Inherit;False;AIT Clothes Alpha Function;2;;177;4853583e79bea4f4ba4a3e029903a9e1;0;0;10;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;750;FLOAT;562;FLOAT;617;FLOAT;637
Node;AmplifyShaderEditor.FunctionNode;1595;5857.037,-2514.187;Inherit;False;Iridiscence;72;;178;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1607;6288.398,-2282.267;Inherit;False;Property;_SpecColor;SpecColor;78;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BlendOpsNode;1596;6150.141,-2518.292;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1611;6120.516,-2149.168;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1612;6166.65,-2122.805;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1608;6495.265,-2283.345;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1618;6190.341,-2048.261;Inherit;True;Property;_SpecularMap;SpecularMap;79;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1609;5918.391,-2647.883;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1597;6395.729,-2514.368;Inherit;False;Property;_Iridiscent;Iridiscent;71;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1610;5982.104,-2678.639;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1617;6509.233,-2048.189;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1600;6752.592,-2182.068;Inherit;False;Property;_Iridiscent2;Iridiscent;71;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1597;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1606;6673.288,-2560.237;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1613;5905.209,-1876.744;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1603;7022.296,-2735.543;Inherit;False;Property;_SpecularSetup2;SpecularSetup;77;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1602;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1614;5949.149,-1852.577;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1619;6980.833,-2064.812;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1601;7148.071,-1896.234;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;1604;7313.165,-2735.72;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1616;7972.563,-2697.892;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1602;7477.574,-2540.774;Inherit;False;Property;_SpecularSetup;SpecularSetup;77;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1605;7767.688,-2537.081;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1615;8017.337,-2675.749;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1533;6740.934,-1575.263;Inherit;False;Property;_Cutoff;Cutoff;1;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1284;6739.674,-1473.357;Inherit;False;Property;_CullMode;CullMode;0;2;[Header];[IntRange];Create;True;1;Culling Setting;3;None;0;Front;1;Back;2;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;1593;8113.32,-2146.176;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Clothes True Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;True;1492;3;False;-1;False;1;False;-1;1;False;-1;False;7;Transparent;0.5;True;True;0;False;Transparent;;Transparent;All;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;2;5;False;1462;10;False;1463;0;5;False;-1;10;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;-1;-1;-1;0;False;0;0;True;1284;-1;0;True;1533;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1595;1;1620;557
WireConnection;1596;0;1595;0
WireConnection;1596;1;1620;0
WireConnection;1596;2;1620;559
WireConnection;1611;0;1595;0
WireConnection;1612;0;1611;0
WireConnection;1608;0;1607;0
WireConnection;1609;0;1620;0
WireConnection;1597;1;1620;0
WireConnection;1597;0;1596;0
WireConnection;1610;0;1609;0
WireConnection;1617;0;1618;0
WireConnection;1600;1;1608;0
WireConnection;1600;0;1612;0
WireConnection;1606;0;1597;0
WireConnection;1606;1;1620;559
WireConnection;1613;0;1620;559
WireConnection;1603;1;1606;0
WireConnection;1603;0;1610;0
WireConnection;1614;0;1613;0
WireConnection;1619;0;1600;0
WireConnection;1619;1;1617;0
WireConnection;1601;0;1619;0
WireConnection;1601;1;1614;0
WireConnection;1604;0;1603;0
WireConnection;1616;0;1604;0
WireConnection;1602;1;1606;1
WireConnection;1602;0;1601;1
WireConnection;1605;0;1602;0
WireConnection;1615;0;1616;0
WireConnection;1593;0;1615;0
WireConnection;1593;1;1620;557
WireConnection;1593;2;1620;558
WireConnection;1593;3;1605;0
WireConnection;1593;4;1620;560
WireConnection;1593;5;1620;561
WireConnection;1593;9;1620;617
ASEEND*/
//CHKSM=8AC25DED3436A27DC20FCA95BF5596F1AE99F9DB