// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Alpha"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.1
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = -1
		[NoScaleOffset][Header (Detail1)]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header (Detail2)]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		[NoScaleOffset]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color("Color", Color) = (1,1,1,1)
		_Color2("Color2", Color) = (1,1,1,1)
		_Color3("Color3", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 0
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_Float0("Float0", Range( 0 , 3)) = 1
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 1
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 1
		[Header (Color Mask Required (Optional))][Toggle(_EMISSIONCOLOR2_ON)] _EmissionColor2("Color1 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR3_ON)] _EmissionColor3("Color2 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR4_ON)] _EmissionColor4("Color3 is Emissive", Float) = 0
		[Header (Ambient Occlusion)]_OcculusionStrength("OcculusionStrength", Range( 0 , 1)) = 1
		[Header (Glossiness Roughness)]_Glossiness("Glossiness", Range( 0 , 1)) = 0
		_Glossiness2("Glossiness2", Range( 0 , 1)) = 0
		_Glossiness3("Glossiness3", Range( 0 , 1)) = 0
		_Glossiness4("Glossiness4", Range( 0 , 1)) = 0
		_Roughness("Roughness", Range( 0 , 1)) = 1
		_Roughness2("Roughness2", Range( 0 , 1)) = 1
		_Roughness3("Roughness3", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 1
		[Header (Metallic Maps)]_Metallic("Metallic", Range( 0 , 1)) = 0
		_Metallic2("Metallic2", Range( 0 , 1)) = 0
		_Metallic3("Metallic3", Range( 0 , 1)) = 0
		_Metallic4("Metallic4", Range( 0 , 1)) = 0
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		_MetallicMask2("MetallicMask2", Range( 0 , 1)) = 1
		_MetallicMask3("MetallicMask3", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		[Header(Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetnessPower("WetnessPower", Range( 0 , 2)) = 0.8
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		[HideInInspector][Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 6
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
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
		#pragma shader_feature _EMISSIONCOLOR4_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
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
			half ASEVFace : VFACE;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
		};

		uniform float _MetallicMask3;
		uniform float _Metallic3;
		uniform float _Metallic;
		uniform float _Glossiness3;
		uniform float _TransmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _DetailMetallicScale2;
		uniform float _MetallicMask2;
		uniform float _Glossiness2;
		uniform float4 _EmissionColor;
		uniform float _Glossiness;
		uniform float _DetailUV2Rotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _Roughness2;
		uniform float2 _DetailUV;
		uniform float _DetailGlossScale;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float _DetailNormalMapScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _Metallic4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		uniform float _MetallicMask;
		uniform float _DetailMetallicScale;
		uniform float _EmissionStrength;
		uniform float _Metallic2;
		uniform float _Roughness;
		uniform float _WetAlbedoOffset;
		uniform float _Float0;
		uniform float _DetailNormalMapScale2;
		uniform float2 _DetailUV2;
		uniform float4 _BaseColor;
		uniform float _DetailGlossScale2;
		uniform float _CarvatureStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _WetnessPower;
		uniform float4 _Color;
		uniform float _ExGloss;
		uniform float4 _Color2;
		uniform float4 _Color3;
		uniform float4 _Color4;
		SamplerState sampler_TextureSample20;
		uniform float _Roughness3;
		uniform float _AlphaEx;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _CullMode;
		uniform float _Cutoff;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		uniform float _MetallicMask4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
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
			float2 uv_BumpMap180_g6 = i.uv_texcoord;
			float2 uv_TexCoord76_g6 = i.uv_texcoord * _DetailUV;
			float cos78_g6 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin78_g6 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator78_g6 = mul( uv_TexCoord76_g6 - float2( 0.5,0.5 ) , float2x2( cos78_g6 , -sin78_g6 , sin78_g6 , cos78_g6 )) + float2( 0.5,0.5 );
			float2 Detail1UV79_g6 = rotator78_g6;
			float2 break13_g6 = Detail1UV79_g6;
			float temp_output_14_0_g6 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult24_g6 = (float2(( break13_g6.x + temp_output_14_0_g6 ) , break13_g6.y));
			float4 tex2DNode85_g6 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g6 );
			float2 uv_DetailMask81_g6 = i.uv_texcoord;
			float4 tex2DNode81_g6 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g6 );
			float DetailMask183_g6 = tex2DNode81_g6.r;
			float temp_output_42_0_g6 = ( DetailMask183_g6 * _DetailNormalMapScale );
			float3 appendResult56_g6 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g6 ).g - tex2DNode85_g6.g ) * temp_output_42_0_g6 )));
			float2 appendResult27_g6 = (float2(break13_g6.x , ( break13_g6.y + temp_output_14_0_g6 )));
			float3 appendResult58_g6 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g6 ).g - tex2DNode85_g6.g ) * temp_output_42_0_g6 )));
			float3 normalizeResult66_g6 = normalize( cross( appendResult56_g6 , appendResult58_g6 ) );
			float3 DetailNormal171_g6 = normalizeResult66_g6;
			float2 uv_TexCoord7_g6 = i.uv_texcoord * _DetailUV2;
			float cos10_g6 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin10_g6 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator10_g6 = mul( uv_TexCoord7_g6 - float2( 0.5,0.5 ) , float2x2( cos10_g6 , -sin10_g6 , sin10_g6 , cos10_g6 )) + float2( 0.5,0.5 );
			float2 Detail2UV12_g6 = rotator10_g6;
			float2 break20_g6 = Detail2UV12_g6;
			float temp_output_21_0_g6 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult32_g6 = (float2(( break20_g6.x + temp_output_21_0_g6 ) , break20_g6.y));
			float4 tex2DNode41_g6 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g6 );
			float DetailMask284_g6 = tex2DNode81_g6.g;
			float temp_output_49_0_g6 = ( DetailMask284_g6 * _DetailNormalMapScale2 );
			float3 appendResult63_g6 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g6 ).g - tex2DNode41_g6.g ) * temp_output_49_0_g6 )));
			float2 appendResult31_g6 = (float2(break20_g6.x , ( break20_g6.y + temp_output_21_0_g6 )));
			float3 appendResult64_g6 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g6 ).g - tex2DNode41_g6.g ) * temp_output_49_0_g6 )));
			float3 normalizeResult70_g6 = normalize( cross( appendResult63_g6 , appendResult64_g6 ) );
			float3 DetailNormal272_g6 = normalizeResult70_g6;
			float3 normalizeResult262_g6 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g6 ), _Float0 ) , DetailNormal171_g6 ) , DetailNormal272_g6 ) );
			float3 switchResult303_g6 = (((i.ASEVFace>0)?(normalizeResult262_g6):(-normalizeResult262_g6)));
			float3 NormalMix321_g6 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g6 : normalizeResult262_g6 );
			float3 temp_output_1432_342 = NormalMix321_g6;
			o.Normal = temp_output_1432_342;
			float2 uv_MainTex119_g6 = i.uv_texcoord;
			float4 tex2DNode119_g6 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g6 );
			float3 temp_output_206_0_g6 = ( (tex2DNode119_g6).rgb * (_BaseColor).rgb );
			float3 Color1128_g6 = (_Color).rgb;
			float2 uv_ColorMask86_g6 = i.uv_texcoord;
			float4 tex2DNode86_g6 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g6 );
			float ColorMask199_g6 = ( 1.0 - ( tex2DNode86_g6.r + tex2DNode86_g6.g + tex2DNode86_g6.b ) );
			float3 Color2121_g6 = (_Color2).rgb;
			float ColorMask296_g6 = tex2DNode86_g6.r;
			float3 Color3123_g6 = (_Color3).rgb;
			float ColorMask3102_g6 = tex2DNode86_g6.g;
			float3 Color4136_g6 = (_Color4).rgb;
			float ColorMask494_g6 = tex2DNode86_g6.b;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap186_g6 = i.uv_texcoord;
			float Carvature197_g6 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g6 ).r;
			float3 lerpResult289_g6 = lerp( ( ( temp_output_206_0_g6 * Color1128_g6 * ColorMask199_g6 ) + ( Color2121_g6 * ColorMask296_g6 * temp_output_206_0_g6 ) + ( Color3123_g6 * ColorMask3102_g6 * temp_output_206_0_g6 ) + ( Color4136_g6 * ColorMask494_g6 * temp_output_206_0_g6 ) ) , temp_cast_0 , ( Carvature197_g6 * _CarvatureStrength ));
			float ExGloss255_g6 = _ExGloss;
			float3 lerpResult313_g6 = lerp( lerpResult289_g6 , ( lerpResult289_g6 * _WetAlbedoOffset ) , ExGloss255_g6);
			float3 DiffuseMix326_g6 = lerpResult313_g6;
			float3 temp_output_1432_345 = DiffuseMix326_g6;
			Gradient gradient37_g176 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1432_342 );
			float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
			float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
			float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
			float3 temp_cast_1 = (dotResult34_g176).xxx;
			float3 lerpResult35_g176 = lerp( temp_cast_1 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1433_0 = lerpResult35_g176;
			float3 blendOpSrc1434 = temp_output_1433_0;
			float3 blendOpDest1434 = temp_output_1432_345;
			float2 uv_MetallicGlossMap139_g6 = i.uv_texcoord;
			float4 tex2DNode139_g6 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g6 );
			float lerpResult167_g6 = lerp( 1.0 , tex2DNode139_g6.r , _MetallicMask);
			float lerpResult193_g6 = lerp( 1.0 , tex2DNode139_g6.r , _MetallicMask2);
			float lerpResult181_g6 = lerp( 1.0 , tex2DNode139_g6.r , _MetallicMask3);
			float lerpResult208_g6 = lerp( 1.0 , tex2DNode139_g6.r , _MetallicMask4);
			float lerpResult281_g6 = lerp( ( ( lerpResult167_g6 * _Metallic * ColorMask199_g6 ) + ( lerpResult193_g6 * _Metallic2 * ColorMask296_g6 ) + ( lerpResult181_g6 * _Metallic3 * ColorMask3102_g6 ) ) , ( lerpResult208_g6 * _Metallic4 ) , ColorMask494_g6);
			float Detail1148_g6 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g6 ).r;
			float Detail2194_g6 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g6 ).r;
			float MetallicFinal328_g6 = saturate( ( ( lerpResult281_g6 - ( ( 1.0 - Detail1148_g6 ) * ( _DetailMetallicScale * DetailMask183_g6 ) ) ) - ( ( 1.0 - Detail2194_g6 ) * ( _DetailMetallicScale2 * DetailMask284_g6 ) ) ) );
			float temp_output_1432_340 = MetallicFinal328_g6;
			float3 lerpBlendMode1434 = lerp(blendOpDest1434,( blendOpSrc1434 * blendOpDest1434 ),temp_output_1432_340);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1435 = ( saturate( lerpBlendMode1434 ));
			#else
				float3 staticSwitch1435 = temp_output_1432_345;
			#endif
			half3 specColor1436 = (0).xxx;
			half oneMinusReflectivity1436 = 0;
			half3 diffuseAndSpecularFromMetallic1436 = DiffuseAndSpecularFromMetallic(staticSwitch1435,temp_output_1432_340,specColor1436,oneMinusReflectivity1436);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1437 = temp_output_1432_345;
			#else
				float3 staticSwitch1437 = diffuseAndSpecularFromMetallic1436;
			#endif
			float3 OutAlbedo1438 = staticSwitch1437;
			o.Albedo = OutAlbedo1438;
			float3 EC3204_g6 = ( Color3123_g6 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch271_g6 = EC3204_g6;
			#else
				float3 staticSwitch271_g6 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float3 EC2238_g6 = ( Color2121_g6 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch294_g6 = EC2238_g6;
			#else
				float3 staticSwitch294_g6 = staticSwitch271_g6;
			#endif
			float3 EC1269_g6 = ( Color1128_g6 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch308_g6 = EC1269_g6;
			#else
				float3 staticSwitch308_g6 = staticSwitch294_g6;
			#endif
			float3 EmissionFinal324_g6 = ( tex2DNode139_g6.g * staticSwitch308_g6 );
			o.Emission = EmissionFinal324_g6;
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1443 = temp_output_1433_0;
			#else
				float3 staticSwitch1443 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1451 = i.uv_texcoord;
			half3 specColor1444 = (0).xxx;
			half oneMinusReflectivity1444 = 0;
			half3 diffuseAndSpecularFromMetallic1444 = DiffuseAndSpecularFromMetallic(( staticSwitch1443 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1451 )).rgb ),temp_output_1432_340,specColor1444,oneMinusReflectivity1444);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1439 = specColor1444;
			#else
				float3 staticSwitch1439 = specColor1436;
			#endif
			float3 OutSpecular1440 = staticSwitch1439;
			o.Specular = OutSpecular1440;
			float lerpResult143_g6 = lerp( 1.0 , tex2DNode139_g6.r , _Roughness);
			float Glossiness1153_g6 = _Glossiness;
			float lerpResult158_g6 = lerp( 1.0 , tex2DNode139_g6.r , _Roughness2);
			float Glossiness2152_g6 = _Glossiness2;
			float lerpResult157_g6 = lerp( 1.0 , tex2DNode139_g6.r , _Roughness3);
			float Glossiness3154_g6 = _Glossiness3;
			float lerpResult187_g6 = lerp( 1.0 , tex2DNode139_g6.r , _Roughness4);
			float lerpResult230_g6 = lerp( ( ( lerpResult143_g6 * Glossiness1153_g6 * ColorMask199_g6 ) + ( lerpResult158_g6 * Glossiness2152_g6 * ColorMask296_g6 ) + ( lerpResult157_g6 * Glossiness3154_g6 * ColorMask3102_g6 ) ) , ( _Glossiness4 * lerpResult187_g6 ) , ColorMask494_g6);
			float lerpResult305_g6 = lerp( ( ( lerpResult230_g6 - ( ( 1.0 - Detail1148_g6 ) * ( _DetailGlossScale * DetailMask183_g6 ) ) ) - ( ( 1.0 - Detail2194_g6 ) * ( _DetailGlossScale2 * DetailMask284_g6 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g6 ));
			float GlossinessFinal327_g6 = saturate( lerpResult305_g6 );
			o.Smoothness = GlossinessFinal327_g6;
			float2 uv_OcclusionMap259_g6 = i.uv_texcoord;
			float4 tex2DNode259_g6 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g6 );
			float lerpResult298_g6 = lerp( 1.0 , tex2DNode259_g6.g , _OcculusionStrength);
			float smoothstepResult266_g6 = smoothstep( 0.0 , 0.8 , Detail1148_g6);
			float lerpResult297_g6 = lerp( 1.0 , smoothstepResult266_g6 , ( _DetailOcculusionScale * DetailMask183_g6 ));
			float smoothstepResult274_g6 = smoothstep( 0.0 , 0.8 , Detail2194_g6);
			float lerpResult299_g6 = lerp( 1.0 , smoothstepResult274_g6 , ( _DetailOcculusionScale2 * DetailMask284_g6 ));
			float OcclusionMix323_g6 = saturate( ( lerpResult298_g6 * lerpResult297_g6 * lerpResult299_g6 ) );
			o.Occlusion = OcclusionMix323_g6;
			float AlphaInput137_g6 = tex2DNode119_g6.a;
			float Color1Alpha101_g6 = _Color.a;
			float Color2Alpha97_g6 = _Color2.a;
			float Color3Alpha98_g6 = _Color3.a;
			float Color4Alpha100_g6 = _Color4.a;
			float clampResult353_g6 = clamp( _AlphaEx , 0.2 , 1.0 );
			float Tear361_g6 = tex2DNode259_g6.b;
			o.Alpha = saturate( ( ( AlphaInput137_g6 * ( ( Color1Alpha101_g6 * ColorMask199_g6 ) + ( Color2Alpha97_g6 * ColorMask296_g6 ) + ( Color3Alpha98_g6 * ColorMask3102_g6 ) + ( Color4Alpha100_g6 * ColorMask494_g6 ) ) ) * step( pow( ( 1.0 - clampResult353_g6 ) , 0.2 ) , pow( Tear361_g6 , 0.5 ) ) ) );
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
53.2;16.4;1513;884;5386.303;3925.97;3.011019;True;False
Node;AmplifyShaderEditor.FunctionNode;1432;-4415.347,-2618.956;Inherit;False;AIT Item Alpha Function;2;;6;a30aeebcf908255408b5738a06ef06df;0;0;10;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;346;FLOAT;351;FLOAT;347;FLOAT;348;FLOAT;344
Node;AmplifyShaderEditor.FunctionNode;1433;-4200.16,-2821.338;Inherit;False;Iridiscence;60;;176;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1441;-3816.678,-2408.3;Inherit;False;Property;_SpecColor;SpecColor;66;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1448;-3949.412,-2279.099;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1449;-3907.649,-2235.138;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1442;-3608.811,-2408.378;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1451;-3878.938,-2167.773;Inherit;True;Property;_SpecularMap;SpecularMap;67;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1450;-3576.045,-2167.701;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1453;-4081.569,-2135.987;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;1434;-3959.779,-2825.442;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1443;-3369.068,-2282.165;Inherit;False;Property;_Iridiscent3;Iridiscent;59;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1435;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1452;-3104.445,-2184.323;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1435;-3715.672,-2823.518;Inherit;False;Property;_Iridiscent;Iridiscent;59;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1445;-4032.937,-2927.514;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1454;-4047.008,-2104.307;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1436;-3435.611,-2831.156;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1446;-3966.996,-2951.692;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1444;-2926.009,-2156.725;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1437;-3086.604,-3008.66;Inherit;False;Property;_SpecularSetup3;SpecularSetup;65;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1439;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1439;-2778.777,-2810.056;Inherit;False;Property;_SpecularSetup;SpecularSetup;65;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1438;-2795.734,-3006.639;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-2366.679,-1907.096;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1440;-2463.491,-2809.51;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1424;-2388.763,-2010.004;Inherit;False;Property;_Cutoff;Cutoff;1;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;-2204.468,-2631.583;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Item Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;2;True;1413;3;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.1;True;True;0;False;Transparent;2600;Transparent;All;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;True;1415;10;True;1412;0;5;False;-1;8;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;-1;-1;-1;0;False;0;0;True;1344;-1;0;True;1424;0;0;0;False;0.1;False;-1;0;False;1414;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1433;1;1432;342
WireConnection;1448;0;1433;0
WireConnection;1449;0;1448;0
WireConnection;1442;0;1441;0
WireConnection;1450;0;1451;0
WireConnection;1453;0;1432;340
WireConnection;1434;0;1433;0
WireConnection;1434;1;1432;345
WireConnection;1434;2;1432;340
WireConnection;1443;1;1442;0
WireConnection;1443;0;1449;0
WireConnection;1452;0;1443;0
WireConnection;1452;1;1450;0
WireConnection;1435;1;1432;345
WireConnection;1435;0;1434;0
WireConnection;1445;0;1432;345
WireConnection;1454;0;1453;0
WireConnection;1436;0;1435;0
WireConnection;1436;1;1432;340
WireConnection;1446;0;1445;0
WireConnection;1444;0;1452;0
WireConnection;1444;1;1454;0
WireConnection;1437;1;1436;0
WireConnection;1437;0;1446;0
WireConnection;1439;1;1436;1
WireConnection;1439;0;1444;1
WireConnection;1438;0;1437;0
WireConnection;1440;0;1439;0
WireConnection;0;0;1438;0
WireConnection;0;1;1432;342
WireConnection;0;2;1432;341
WireConnection;0;3;1440;0
WireConnection;0;4;1432;0
WireConnection;0;5;1432;346
WireConnection;0;9;1432;348
ASEEND*/
//CHKSM=FAF740730A407ED960783F219F6661EDA7C3A4F2