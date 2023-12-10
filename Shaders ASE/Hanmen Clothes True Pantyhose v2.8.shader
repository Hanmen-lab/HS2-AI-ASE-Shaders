// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Pantyhose"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (2,2,0,0)
		_WetUV("WetUV", Vector) = (5,5,0,0)
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
		_DetailUV("DetailUV", Vector) = (100,100,0,0)
		[NoScaleOffset][Header (Detail2 (Grayscale))]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 9
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 1
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		_DetailAlpha1("DetailAlpha1", Range( 0 , 1)) = 1
		_DetailAlpha2("DetailAlpha2", Range( 0 , 1)) = 0
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
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		_FresnelMetallic("FresnelMetallic", Range( 0 , 1)) = 1
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		_ZWrite("ZWrite", Range( 0 , 1)) = 1
		[Header(Culling Setting)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.1
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+2" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile __ _SPECULARSETUP_ON
		#pragma multi_compile __ _IRIDISCENT_ON
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
			float3 worldPos;
			float3 worldNormal;
			INTERNAL_DATA
			half ASEVFace : VFACE;
		};

		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _ZWrite;
		uniform float _CullMode;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _Metallic4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _DetailNormalMapScale2;
		uniform float4 _WetColor;
		uniform float4 _Color;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _CarvatureStrength;
		uniform float _DetailMetallicScale2;
		uniform float _AlphaEx;
		uniform float _AlphaMaster;
		uniform float _FresnelPower;
		uniform float4 _WetUV;
		uniform float4 _WeatheringUV;
		uniform float _FresnelMetallic;
		uniform float _DetailAlpha2;
		uniform float _DetailGlossScale2;
		uniform float _FresnelScale;
		uniform float _DetailMetallicScale;
		uniform float2 _DetailUV2;
		uniform float _DetailUVRotator;
		uniform float4 _WetStreaksUV;
		uniform float _WetGlossBase;
		uniform float4 _BodyColor1;
		uniform float _WetOpacitySplats;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float _Float0;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform float _DetailUV2Rotator;
		uniform float4 _EmissionColor;
		uniform float _WetAlbedoOffset;
		uniform float _DetailNormalMapScale;
		uniform float _DetailGlossScale;
		uniform float2 _patternuvbase;
		SamplerState sampler_DetailMainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _WetSplatsAlbedoOffset;
		uniform float4 _WeatheringAlbedo;
		uniform float _WeatheringRange3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap2;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringGloss;
		SamplerState sampler_MetallicGlossMap;
		uniform float _EmissionStrength;
		uniform float _WeatheringRange2;
		uniform float _WetGlossSplats;
		uniform float _FresnelBias;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _WeatheringRange5;
		uniform float _WetOpacityStreaks;
		uniform float _WeatheringRange1;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _WeatheringUVSeed;
		uniform float _WeatheringRange4;
		uniform float4 _BaseColor;
		uniform float _ExGloss;
		uniform float _WeatheringAll;
		uniform float _WetBumpOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float2 _DetailUV;
		uniform float _DetailAlpha1;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_linear_repeat;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _WeatheringEmission;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		uniform float _Cutoff;


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
			float2 uv_BumpMap402_g182 = i.uv_texcoord;
			float3 tex2DNode402_g182 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g182 ), _Float0 );
			float2 UVScale107_g182 = _UVScalePattern;
			float2 uv_TexCoord152_g182 = i.uv_texcoord * ( _DetailUV * UVScale107_g182 );
			float cos162_g182 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin162_g182 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator162_g182 = mul( uv_TexCoord152_g182 - float2( 0.5,0.5 ) , float2x2( cos162_g182 , -sin162_g182 , sin162_g182 , cos162_g182 )) + float2( 0.5,0.5 );
			float2 Detail1UV173_g182 = rotator162_g182;
			float2 break194_g182 = Detail1UV173_g182;
			float temp_output_186_0_g182 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult218_g182 = (float2(( break194_g182.x + temp_output_186_0_g182 ) , break194_g182.y));
			float4 tex2DNode243_g182 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g182 );
			float2 uv_DetailMask25_g182 = i.uv_texcoord;
			float4 tex2DNode25_g182 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g182 );
			float DetailMask130_g182 = tex2DNode25_g182.r;
			float temp_output_255_0_g182 = ( DetailMask130_g182 * _DetailNormalMapScale );
			float3 appendResult300_g182 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g182 ).g - tex2DNode243_g182.g ) * temp_output_255_0_g182 )));
			float2 appendResult222_g182 = (float2(break194_g182.x , ( break194_g182.y + temp_output_186_0_g182 )));
			float3 appendResult297_g182 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g182 ).g - tex2DNode243_g182.g ) * temp_output_255_0_g182 )));
			float3 normalizeResult348_g182 = normalize( cross( appendResult300_g182 , appendResult297_g182 ) );
			float3 DetailNormal1368_g182 = normalizeResult348_g182;
			float2 uv_TexCoord16_g182 = i.uv_texcoord * ( _DetailUV2 * UVScale107_g182 );
			float cos19_g182 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin19_g182 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator19_g182 = mul( uv_TexCoord16_g182 - float2( 0.5,0.5 ) , float2x2( cos19_g182 , -sin19_g182 , sin19_g182 , cos19_g182 )) + float2( 0.5,0.5 );
			float2 Detail2UV20_g182 = rotator19_g182;
			float2 break24_g182 = Detail2UV20_g182;
			float temp_output_26_0_g182 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult34_g182 = (float2(( break24_g182.x + temp_output_26_0_g182 ) , break24_g182.y));
			float4 tex2DNode38_g182 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g182 );
			float DetailMask235_g182 = tex2DNode25_g182.g;
			float temp_output_43_0_g182 = ( DetailMask235_g182 * _DetailNormalMapScale2 );
			float3 appendResult58_g182 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g182 ).g - tex2DNode38_g182.g ) * temp_output_43_0_g182 )));
			float2 appendResult33_g182 = (float2(break24_g182.x , ( break24_g182.y + temp_output_26_0_g182 )));
			float3 appendResult57_g182 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g182 ).g - tex2DNode38_g182.g ) * temp_output_43_0_g182 )));
			float3 normalizeResult69_g182 = normalize( cross( appendResult58_g182 , appendResult57_g182 ) );
			float3 DetailNormal276_g182 = normalizeResult69_g182;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 BaseNormal731_g182 = tex2DNode402_g182;
			float3 normalizeResult701_g182 = normalize( BlendNormals( ase_worldViewDir , BaseNormal731_g182 ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 normalizeResult700_g182 = normalize( BlendNormals( ase_worldNormal , BaseNormal731_g182 ) );
			float fresnelNdotV705_g182 = dot( normalizeResult700_g182, normalizeResult701_g182 );
			float fresnelNode705_g182 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV705_g182, _FresnelPower ) );
			float Fresnel707_g182 = saturate( fresnelNode705_g182 );
			float3 lerpResult767_g182 = lerp( BlendNormals( BlendNormals( tex2DNode402_g182 , DetailNormal1368_g182 ) , DetailNormal276_g182 ) , float3(0,0,1) , Fresnel707_g182);
			float2 appendResult657_g182 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
			float2 appendResult658_g182 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
			float2 uv_TexCoord660_g182 = i.uv_texcoord * appendResult657_g182 + appendResult658_g182;
			float2 WetStrUV669_g182 = uv_TexCoord660_g182;
			float2 break547_g182 = WetStrUV669_g182;
			float temp_output_541_0_g182 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult546_g182 = (float2(( break547_g182.x + temp_output_541_0_g182 ) , break547_g182.y));
			float4 tex2DNode515_g182 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g182 );
			float3 appendResult523_g182 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g182 ).g - tex2DNode515_g182.g ) * 1.0 )));
			float2 appendResult534_g182 = (float2(break547_g182.x , ( break547_g182.y + temp_output_541_0_g182 )));
			float3 appendResult542_g182 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g182 ).g - tex2DNode515_g182.g ) * 1.0 )));
			float3 normalizeResult524_g182 = normalize( cross( appendResult523_g182 , appendResult542_g182 ) );
			float3 WetnessNormal545_g182 = normalizeResult524_g182;
			float ExGloss298_g182 = _ExGloss;
			float WetStr661_g182 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g182 ).g;
			float smoothstepResult651_g182 = smoothstep( ( 1.0 - ExGloss298_g182 ) , 1.0 , WetStr661_g182);
			float StreaksAlpha662_g182 = smoothstepResult651_g182;
			float WetOpStreaks673_g182 = _WetOpacityStreaks;
			float3 lerpResult98_g182 = lerp( lerpResult767_g182 , WetnessNormal545_g182 , ( StreaksAlpha662_g182 * WetOpStreaks673_g182 ));
			float2 appendResult115_g182 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult110_g182 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 temp_cast_0 = (_WeatheringUVSeed).xx;
			float dotResult830_g182 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
			float lerpResult832_g182 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult830_g182 ) * 43758.55 ) ));
			float2 uv_TexCoord127_g182 = i.uv_texcoord * appendResult115_g182 + ( appendResult110_g182 + lerpResult832_g182 );
			float2 WeatheringUV144_g182 = uv_TexCoord127_g182;
			float2 break223_g182 = WeatheringUV144_g182;
			float temp_output_224_0_g182 = ( pow( 0.2 , 2.0 ) * 0.1 );
			float2 appendResult258_g182 = (float2(( break223_g182.x + temp_output_224_0_g182 ) , break223_g182.y));
			float4 tex2DNode266_g182 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g182 );
			float3 appendResult344_g182 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g182 ).b - tex2DNode266_g182.b ) * 2.0 )));
			float2 appendResult252_g182 = (float2(break223_g182.x , ( break223_g182.y + temp_output_224_0_g182 )));
			float3 appendResult339_g182 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g182 ).b - tex2DNode266_g182.b ) * 2.0 )));
			float3 normalizeResult398_g182 = normalize( cross( appendResult344_g182 , appendResult339_g182 ) );
			float3 WeatheringBump425_g182 = normalizeResult398_g182;
			float4 tex2DNode177_g182 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g182 );
			float2 uv_WeatheringMask100_g182 = i.uv_texcoord;
			float4 tex2DNode100_g182 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g182 );
			float clampResult161_g182 = clamp( ( tex2DNode100_g182.r - tex2DNode100_g182.g ) , 0.0 , 1.0 );
			float WMask1183_g182 = ( clampResult161_g182 * ceil( _WeatheringRange1 ) );
			float RangeCut1208_g182 = (0.7 + (_WeatheringRange1 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult253_g182 = clamp( ( ( tex2DNode177_g182.g * WMask1183_g182 ) - RangeCut1208_g182 ) , 0.0 , 1.0 );
			float clampResult159_g182 = clamp( ( tex2DNode100_g182.g - tex2DNode100_g182.r ) , 0.0 , 1.0 );
			float WMask2192_g182 = ( clampResult159_g182 * ceil( _WeatheringRange2 ) );
			float RangeCut2211_g182 = (0.7 + (_WeatheringRange2 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult251_g182 = clamp( ( ( tex2DNode177_g182.g * WMask2192_g182 ) - RangeCut2211_g182 ) , 0.0 , 1.0 );
			float WMask3190_g182 = ( tex2DNode100_g182.b * ceil( _WeatheringRange3 ) );
			float RangeCut3210_g182 = (0.7 + (_WeatheringRange3 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult254_g182 = clamp( ( ( tex2DNode177_g182.g * WMask3190_g182 ) - RangeCut3210_g182 ) , 0.0 , 1.0 );
			float WMask4180_g182 = ( ( tex2DNode100_g182.r * tex2DNode100_g182.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4205_g182 = (0.7 + (_WeatheringRange4 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult259_g182 = clamp( ( ( tex2DNode177_g182.g * WMask4180_g182 ) - RangeCut4205_g182 ) , 0.0 , 1.0 );
			float WMask5184_g182 = ( ( tex2DNode100_g182.r * tex2DNode100_g182.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5201_g182 = (0.7 + (_WeatheringRange5 - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult261_g182 = clamp( ( ( tex2DNode177_g182.g * WMask5184_g182 ) - RangeCut5201_g182 ) , 0.0 , 1.0 );
			float WMaskAll165_g182 = ceil( _WeatheringAll );
			float RangeCutAll171_g182 = (0.7 + (_WeatheringAll - 0.0) * (0.2 - 0.7) / (1.0 - 0.0));
			float clampResult215_g182 = clamp( ( ( tex2DNode177_g182.g * WMaskAll165_g182 ) - RangeCutAll171_g182 ) , 0.0 , 1.0 );
			float clampResult299_g182 = clamp( ( clampResult253_g182 + clampResult251_g182 + clampResult254_g182 + clampResult259_g182 + clampResult261_g182 + clampResult215_g182 ) , 0.0 , 1.0 );
			float lerpResult313_g182 = lerp( clampResult299_g182 , clampResult215_g182 , WMaskAll165_g182);
			float clampResult373_g182 = clamp( ( lerpResult313_g182 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha396_g182 = clampResult373_g182;
			float3 lerpResult87_g182 = lerp( lerpResult98_g182 , WeatheringBump425_g182 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g182 ).b * WeatheringAlpha396_g182 ));
			float3 normalizeResult564_g182 = normalize( lerpResult87_g182 );
			float3 switchResult566_g182 = (((i.ASEVFace>0)?(normalizeResult564_g182):(-normalizeResult564_g182)));
			float3 NormalMix88_g182 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g182 : normalizeResult564_g182 );
			float3 temp_output_1456_557 = NormalMix88_g182;
			o.Normal = temp_output_1456_557;
			float2 uv_MainTex576_g182 = i.uv_texcoord;
			float4 tex2DNode576_g182 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g182 );
			float3 temp_output_284_0_g182 = (tex2DNode576_g182).rgb;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_OcclusionMap196_g182 = i.uv_texcoord;
			float4 tex2DNode196_g182 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g182 );
			float Carvature270_g182 = tex2DNode196_g182.r;
			float3 lerpResult331_g182 = lerp( ( temp_output_284_0_g182 * (_BaseColor).rgb ) , temp_cast_1 , ( Carvature270_g182 * _CarvatureStrength ));
			float WetAlbedoOffset311_g182 = _WetAlbedoOffset;
			float3 temp_output_382_0_g182 = ( lerpResult331_g182 * WetAlbedoOffset311_g182 );
			float WetSplatsAlbedoOffset349_g182 = _WetSplatsAlbedoOffset;
			float3 lerpResult411_g182 = lerp( ( temp_output_382_0_g182 * WetSplatsAlbedoOffset349_g182 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult287_g182 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult285_g182 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord317_g182 = i.uv_texcoord * appendResult287_g182 + appendResult285_g182;
			float2 WetUV578_g182 = uv_TexCoord317_g182;
			float WetSplats369_g182 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g182 ).b;
			float SplatsOp363_g182 = _WetOpacitySplats;
			float3 lerpResult460_g182 = lerp( temp_output_382_0_g182 , lerpResult411_g182 , ( ( StreaksAlpha662_g182 * WetOpStreaks673_g182 ) + ( WetSplats369_g182 * SplatsOp363_g182 ) ));
			float2 uv_OcclusionMap429_g182 = i.uv_texcoord;
			float4 tex2DNode429_g182 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g182 );
			float3 WetBodyOffset422_g182 = (_BodyColor1).rgb;
			float bodycoloralpha417_g182 = _BodyColor1.a;
			float3 lerpResult480_g182 = lerp( lerpResult460_g182 , ( tex2DNode429_g182.a == 1.0 ? lerpResult460_g182 : WetBodyOffset422_g182 ) , ( bodycoloralpha417_g182 * ( 1.0 - tex2DNode429_g182.a ) ));
			float3 lerpResult501_g182 = lerp( lerpResult331_g182 , lerpResult480_g182 , ExGloss298_g182);
			float WeatheringAlpha2466_g182 = lerpResult313_g182;
			float3 lerpResult505_g182 = lerp( lerpResult501_g182 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g182 * 0.282353 ));
			float3 DiffuseMix511_g182 = lerpResult505_g182;
			float3 temp_output_1456_0 = DiffuseMix511_g182;
			Gradient gradient37_g180 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g180 = dot( ase_tanViewDir , temp_output_1456_557 );
			float3 temp_output_12_0_g180 = (SampleGradient( gradient37_g180, dotResult7_g180 )).rgb;
			float temp_output_10_0_g180 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g180 = cos( temp_output_10_0_g180 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g180 = dot( _k7 , temp_output_12_0_g180 );
			float3 temp_output_32_0_g180 = ( ( ( ( ( ( temp_output_12_0_g180 * temp_output_13_0_g180 ) + ( cross( _k7 , temp_output_12_0_g180 ) * sin( temp_output_10_0_g180 ) ) + ( _k7 * dotResult14_g180 * ( 1.0 - temp_output_13_0_g180 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g180 = dot( temp_output_32_0_g180 , float3(0.39,0.59,0.11) );
			float3 temp_cast_2 = (dotResult34_g180).xxx;
			float3 lerpResult35_g180 = lerp( temp_cast_2 , temp_output_32_0_g180 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1426_0 = lerpResult35_g180;
			float3 blendOpSrc1427 = temp_output_1426_0;
			float3 blendOpDest1427 = temp_output_1456_0;
			float2 uv_MetallicGlossMap330_g182 = i.uv_texcoord;
			float4 tex2DNode330_g182 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g182 );
			float lerpResult399_g182 = lerp( 1.0 , tex2DNode330_g182.r , _MetallicMask);
			float2 uv_DetailMainTex338_g182 = i.uv_texcoord;
			float4 tex2DNode338_g182 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g182 );
			float lerpResult395_g182 = lerp( 1.0 , tex2DNode330_g182.r , _MetallicMask4);
			float2 uv_ColorMask304_g182 = i.uv_texcoord;
			float4 tex2DNode304_g182 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g182 );
			float ColorMask4347_g182 = tex2DNode304_g182.b;
			float lerpResult462_g182 = lerp( ( lerpResult399_g182 * tex2DNode338_g182.r ) , ( lerpResult395_g182 * _Metallic4 ) , ColorMask4347_g182);
			float4 tex2DNode291_g182 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g182 );
			float Detail1Alpha749_g182 = tex2DNode291_g182.r;
			float4 tex2DNode328_g182 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g182 );
			float Detail2Alpha747_g182 = tex2DNode328_g182.r;
			float temp_output_477_0_g182 = ( WetOpStreaks673_g182 * smoothstepResult651_g182 );
			float lerpResult800_g182 = lerp( saturate( ( ( lerpResult462_g182 - ( ( 1.0 - Detail1Alpha749_g182 ) * ( _DetailMetallicScale * DetailMask130_g182 ) ) ) - ( ( 1.0 - Detail2Alpha747_g182 ) * ( _DetailMetallicScale2 * DetailMask235_g182 ) ) ) ) , 0.0 , temp_output_477_0_g182);
			float lerpResult495_g182 = lerp( lerpResult800_g182 , 0.0 , WeatheringAlpha2466_g182);
			float lerpResult736_g182 = lerp( lerpResult495_g182 , _FresnelMetallic , Fresnel707_g182);
			float temp_output_1456_559 = lerpResult736_g182;
			float3 lerpBlendMode1427 = lerp(blendOpDest1427,( blendOpSrc1427 * blendOpDest1427 ),temp_output_1456_559);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1428 = ( saturate( lerpBlendMode1427 ));
			#else
				float3 staticSwitch1428 = temp_output_1456_0;
			#endif
			half3 specColor1429 = (0).xxx;
			half oneMinusReflectivity1429 = 0;
			half3 diffuseAndSpecularFromMetallic1429 = DiffuseAndSpecularFromMetallic(staticSwitch1428,temp_output_1456_559,specColor1429,oneMinusReflectivity1429);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1430 = temp_output_1456_0;
			#else
				float3 staticSwitch1430 = diffuseAndSpecularFromMetallic1429;
			#endif
			float3 OutAlbedo1431 = staticSwitch1430;
			o.Albedo = OutAlbedo1431;
			float WeatheringBumpMask813_g182 = tex2DNode177_g182.b;
			o.Emission = ( ( tex2DNode330_g182.g * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g182 * WeatheringBumpMask813_g182 ) * _WeatheringEmission ) );
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1436 = temp_output_1426_0;
			#else
				float3 staticSwitch1436 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1450 = i.uv_texcoord;
			half3 specColor1437 = (0).xxx;
			half oneMinusReflectivity1437 = 0;
			half3 diffuseAndSpecularFromMetallic1437 = DiffuseAndSpecularFromMetallic(( staticSwitch1436 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1450 )).rgb ),temp_output_1456_559,specColor1437,oneMinusReflectivity1437);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1432 = specColor1437;
			#else
				float3 staticSwitch1432 = specColor1429;
			#endif
			float3 OutSpecular1433 = staticSwitch1432;
			o.Specular = OutSpecular1433;
			float lerpResult353_g182 = lerp( 1.0 , tex2DNode330_g182.r , _Roughness);
			float lerpResult336_g182 = lerp( 1.0 , tex2DNode330_g182.r , _Roughness4);
			float lerpResult384_g182 = lerp( ( lerpResult353_g182 * tex2DNode338_g182.b ) , ( _Glossiness4 * lerpResult336_g182 ) , ColorMask4347_g182);
			float WetGlossBase397_g182 = _WetGlossBase;
			float lerpResult470_g182 = lerp( saturate( ( ( lerpResult384_g182 - ( ( 1.0 - Detail1Alpha749_g182 ) * ( _DetailGlossScale * DetailMask130_g182 ) ) ) - ( ( 1.0 - Detail2Alpha747_g182 ) * ( _DetailGlossScale2 * DetailMask235_g182 ) ) ) ) , tex2DNode330_g182.a , ( WetGlossBase397_g182 * ExGloss298_g182 ));
			float SplatsGloss407_g182 = _WetGlossSplats;
			float temp_output_665_0_g182 = ( SplatsOp363_g182 * ExGloss298_g182 * WetSplats369_g182 );
			float lerpResult664_g182 = lerp( lerpResult470_g182 , SplatsGloss407_g182 , temp_output_665_0_g182);
			float lerpResult649_g182 = lerp( lerpResult664_g182 , 0.87 , temp_output_477_0_g182);
			float lerpResult499_g182 = lerp( lerpResult649_g182 , _WeatheringGloss , WeatheringAlpha396_g182);
			float GlossinessFinal513_g182 = saturate( lerpResult499_g182 );
			o.Smoothness = GlossinessFinal513_g182;
			float2 uv_OcclusionMap623_g182 = i.uv_texcoord;
			float lerpResult483_g182 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g182 ).g , _OcculusionStrength);
			float smoothstepResult621_g182 = smoothstep( 0.0 , 0.8 , tex2DNode291_g182.r);
			float lerpResult488_g182 = lerp( 1.0 , smoothstepResult621_g182 , ( _DetailOcculusionScale * DetailMask130_g182 ));
			float smoothstepResult622_g182 = smoothstep( 0.0 , 0.8 , tex2DNode328_g182.r);
			float lerpResult494_g182 = lerp( 1.0 , smoothstepResult622_g182 , ( _DetailOcculusionScale2 * DetailMask235_g182 ));
			float lerpResult620_g182 = lerp( ( lerpResult483_g182 * lerpResult488_g182 * lerpResult494_g182 ) , 1.0 , WeatheringAlpha396_g182);
			float OcclusionMix509_g182 = saturate( lerpResult620_g182 );
			o.Occlusion = OcclusionMix509_g182;
			float AlphaInput195_g182 = tex2DNode576_g182.a;
			float lerpResult727_g182 = lerp( ( AlphaInput195_g182 * _AlphaMaster ) , 1.0 , Fresnel707_g182);
			float lerpResult759_g182 = lerp( 0.0 , _DetailAlpha2 , Detail2Alpha747_g182);
			float lerpResult760_g182 = lerp( 0.0 , _DetailAlpha1 , Detail1Alpha749_g182);
			float lerpResult802_g182 = lerp( lerpResult727_g182 , 1.0 , saturate( ( ( lerpResult759_g182 * DetailMask235_g182 ) + ( lerpResult760_g182 * DetailMask130_g182 ) ) ));
			float temp_output_1456_617 = ( WeatheringAlpha2466_g182 + saturate( lerpResult802_g182 ) );
			float clampResult592_g182 = clamp( _AlphaEx , 0.2 , 1.0 );
			float TearingsMask340_g182 = tex2DNode196_g182.b;
			float temp_output_1456_799 = ( step( pow( ( 1.0 - clampResult592_g182 ) , 0.2 ) , pow( TearingsMask340_g182 , 0.5 ) ) * AlphaInput195_g182 );
			clip( temp_output_1456_799 - _Cutoff);
			o.Alpha = temp_output_1456_617;
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 
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
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
6;0.4;1512;884;172.7224;2033.262;1;True;False
Node;AmplifyShaderEditor.FunctionNode;1456;352.4866,-1800.568;Inherit;False;AIT Pantyhose;0;;182;49cf2620479b038468536ab556f9edd2;0;1;683;FLOAT;0;False;8;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;617;FLOAT;799
Node;AmplifyShaderEditor.FunctionNode;1426;560.8418,-1945.572;Inherit;False;Iridiscence;79;;180;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1442;789.3605,-1794.978;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1439;1176.91,-1801.519;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1434;926.121,-1721.89;Inherit;False;Property;_SpecColor;SpecColor;78;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BlendOpsNode;1427;801.2207,-1949.676;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1445;585.1564,-2088.578;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1435;1132.987,-1719.738;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1450;876.179,-1500.404;Inherit;True;Property;_SpecularMap;SpecularMap;72;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1438;1243.955,-1819.506;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1428;1045.329,-1948.98;Inherit;False;Property;_Iridiscent;Iridiscent;76;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1447;724.2257,-1295.492;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1449;1179.072,-1500.332;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1446;628.6558,-2112.938;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1429;1301.198,-1941.031;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1436;1388.464,-1614.763;Inherit;False;Property;_Iridiscent3;Iridiscent;76;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1428;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1451;1650.672,-1516.954;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1430;1660.017,-2171.935;Inherit;False;Property;_SpecularSetup3;SpecularSetup;75;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1432;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1448;758.218,-1280.308;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1437;1666.531,-1325.079;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;1431;1950.886,-2172.112;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1432;1937.418,-1923.079;Inherit;False;Property;_SpecularSetup;SpecularSetup;75;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1444;2489.999,-2135.106;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1296;313.8718,-1549.955;Inherit;False;Property;_Cutoff;Cutoff;77;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.1;0.565;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;1425;704.3643,-1595.878;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1433;2232.441,-1921.02;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1422;441.2249,-1442.068;Inherit;False;Property;_ZWrite;ZWrite;73;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1424;446.9639,-1351;Inherit;False;Property;_CullMode;CullMode;74;2;[Header];[IntRange];Create;True;1;Culling Setting;3;None;0;Front;1;Back;2;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1443;2519.433,-2113.849;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1453;1331.772,-1399.945;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2588.583,-1798.026;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Clothes True Pantyhose;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;1422;0;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.2416107;True;True;2;False;Transparent;3002;Transparent;All;3;d3d9;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;False;-1;10;False;-1;0;5;False;-1;8;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;1424;-1;0;True;1296;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1426;1;1456;557
WireConnection;1442;0;1456;559
WireConnection;1439;0;1442;0
WireConnection;1427;0;1426;0
WireConnection;1427;1;1456;0
WireConnection;1427;2;1456;559
WireConnection;1445;0;1456;0
WireConnection;1435;0;1434;0
WireConnection;1438;0;1439;0
WireConnection;1428;1;1456;0
WireConnection;1428;0;1427;0
WireConnection;1447;0;1456;559
WireConnection;1449;0;1450;0
WireConnection;1446;0;1445;0
WireConnection;1429;0;1428;0
WireConnection;1429;1;1438;0
WireConnection;1436;1;1435;0
WireConnection;1436;0;1426;0
WireConnection;1451;0;1436;0
WireConnection;1451;1;1449;0
WireConnection;1430;1;1429;0
WireConnection;1430;0;1446;0
WireConnection;1448;0;1447;0
WireConnection;1437;0;1451;0
WireConnection;1437;1;1448;0
WireConnection;1431;0;1430;0
WireConnection;1432;1;1429;1
WireConnection;1432;0;1437;1
WireConnection;1444;0;1431;0
WireConnection;1425;0;1456;617
WireConnection;1425;1;1456;799
WireConnection;1425;2;1296;0
WireConnection;1433;0;1432;0
WireConnection;1443;0;1444;0
WireConnection;1453;0;1456;617
WireConnection;1453;1;1456;799
WireConnection;0;0;1443;0
WireConnection;0;1;1456;557
WireConnection;0;2;1456;558
WireConnection;0;3;1433;0
WireConnection;0;4;1456;560
WireConnection;0;5;1456;561
WireConnection;0;9;1425;0
ASEEND*/
//CHKSM=4ECB73CD8822AC69BF54301AC03822D18AC874F9