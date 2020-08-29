// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Replica Iridescence"
{
	Properties
	{
		[NoScaleOffset][Header(leave empty when using RendNormal)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Header(leave empty when using RendNormal)]_ColorMask("ColorMask", 2D) = "black" {}
		[HideInInspector][NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "white" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset]_DetailMask("DetailMask", 2D) = "black" {}
		[NoScaleOffset][Header(Grayscale Bump)]_DetailGlossMap("DetailGlossMap", 2D) = "black" {}
		[NoScaleOffset][Header(Grayscale Bump)]_DetailGlossMap2("DetailGlossMap2", 2D) = "black" {}
		[NoScaleOffset][Header(Packed (Gloss Emission Metallic))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		[NoScaleOffset]_ColorRamp("ColorRamp", 2D) = "white" {}
		[NoScaleOffset]_Mask("Mask", 2D) = "white" {}
		[NoScaleOffset][Header(Packed (AO Curvature Tearings))]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		[NoScaleOffset][Header (Dithering Noise)]_NoiseTexture("NoiseTexture", 2D) = "white" {}
		_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color("Color", Color) = (1,1,1,1)
		_Color2("Color2", Color) = (1,1,1,1)
		_Color3("Color3", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		_patternuv1("patternuv1", Vector) = (1,1,0,0)
		_patternuv2("patternuv2", Vector) = (1,1,0,0)
		_patternuv3("patternuv3", Vector) = (1,0,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( 0 , 1)) = 1
		[Header (Zero Disable Dithering)]_Cutoff("Cutoff", Range( 0 , 1)) = 0
		_DitheringPattern("DitheringPattern", Range( 0 , 1)) = 0
		_BumpScale("BumpScale", Range( 0 , 3)) = 1
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( -3 , 9)) = 1
		_DetailNormalMapScale("DetailNormalMapScale", Range( -3 , 9)) = 1
		_DetailUVRotator("DetailUVRotator", Range( 1 , 360)) = 1
		_DetailUVRotator2("DetailUVRotator2", Range( 1 , 360)) = 1
		_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		[Toggle(_EMISSIONCOLOR1_ON)] _EmissionColor1("Color1 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR2_ON)] _EmissionColor2("Color2 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR3_ON)] _EmissionColor3("Color3 is Emissive", Float) = 0
		[Header (Ambient Occlusion)]_OcclusionStrength("OcclusionStrength", Range( 0 , 1)) = 1
		_DetailOcclusionScale("DetailOcclusionScale", Range( 0 , 1)) = 0
		_DetailOcclusionScale2("DetailOcclusionScale2", Range( 0 , 1)) = 0
		_DetailOcclusionContrast("DetailOcclusionContrast", Range( 0 , 2)) = 1
		_DetailOcclusionContrast2("DetailOcclusionContrast2", Range( 0 , 2)) = 1
		[Header (Glossiness Roughness)]_Glossiness("Glossiness", Range( 0 , 2)) = 1
		_Glossiness2("Glossiness2", Range( 0 , 2)) = 1.147624
		_Glossiness3("Glossiness3", Range( 0 , 2)) = 1
		_Glossiness4("Glossiness4", Range( 0 , 2)) = 1
		_Roughness("Roughness", Range( 0 , 1)) = 1
		_Roughness2("Roughness2", Range( 0 , 1)) = 1
		_Roughness3("Roughness3", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 1
		[Header (Metallic Maps)]_Metallic("Metallic", Range( 0 , 1)) = 1
		_Metallic2("Metallic2", Range( 0 , 1)) = 1
		_Metallic3("Metallic3", Range( 0 , 1)) = 1
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		_MetallicMask2("MetallicMask2", Range( 0 , 1)) = 1
		_MetallicMask3("MetallicMask3", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		[Header (Iridescence)]_IriHue("IriHue", Range( 0 , 1)) = 0.5064838
		_IriSaturation("IriSaturation", Range( 0 , 1)) = 0.5688156
		_IriBrightness("IriBrightness", Range( 0 , 1)) = 0.6471324
		_IriContrast("IriContrast", Range( 0 , 1)) = 0.5840003
		[Header (Weathering (NOT WORKING))]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange1("WeatheringRange1", Range( 0 , 1)) = 0
		_WeatheringRange2("WeatheringRange2", Range( 0 , 1)) = 0
		_WeatheringRange3("WeatheringRange3", Range( 0 , 1)) = 0
		_WeatheringRange4("WeatheringRange4", Range( 0 , 1)) = 0
		_WeatheringRange5("WeatheringRange5", Range( 0 , 1)) = 0
		_WeatheringRange6("WeatheringRange6", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		AlphaToMask On
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR1_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
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
			float4 screenPosition;
		};

		uniform float _Cutoff;
		uniform float _WeatheringRange4;
		uniform float2 _patternuv3;
		uniform float2 _patternuv2;
		uniform float2 _patternuv1;
		uniform float _WeatheringRange3;
		uniform float2 _UVScalePattern;
		uniform float _WeatheringRange5;
		uniform float _WeatheringRange6;
		uniform float _WeatheringRange2;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange1;
		uniform sampler2D _BumpMap;
		uniform float _BumpScale;
		uniform sampler2D _DetailGlossMap;
		uniform float2 _DetailUV;
		uniform float _DetailUVRotator;
		uniform float _DetailNormalMapScale;
		uniform sampler2D _DetailMask;
		uniform sampler2D _DetailGlossMap2;
		uniform float2 _DetailUV2;
		uniform float _DetailUVRotator2;
		uniform float _DetailNormalMapScale2;
		uniform sampler2D _MainTex;
		uniform float4 _BaseColor;
		uniform float4 _Color;
		uniform sampler2D _ColorMask;
		uniform float4 _Color2;
		uniform float4 _Color3;
		uniform float4 _Color4;
		uniform sampler2D _MetallicGlossMap;
		uniform float4 _EmissionColor;
		uniform float _EmissionStrength;
		uniform float _Glossiness3;
		uniform float _Glossiness2;
		uniform float _Glossiness;
		uniform sampler2D _ColorRamp;
		uniform sampler2D _Mask;
		uniform float _IriHue;
		uniform float _IriContrast;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _MetallicMask;
		uniform float _Metallic;
		uniform sampler2D _DetailMainTex;
		uniform float _MetallicMask2;
		uniform float _Metallic2;
		uniform float _MetallicMask3;
		uniform float _Metallic3;
		uniform float _MetallicMask4;
		uniform float _Metallic4;
		uniform float _Roughness;
		uniform float _Roughness2;
		uniform float _Roughness3;
		uniform float _Roughness4;
		uniform float _Glossiness4;
		uniform float _DetailOcclusionContrast;
		uniform float _DetailOcclusionScale;
		uniform float _DetailOcclusionContrast2;
		uniform float _DetailOcclusionScale2;
		uniform sampler2D _OcclusionMap;
		uniform float _OcclusionStrength;
		uniform float _DitheringPattern;
		uniform sampler2D _NoiseTexture;
		float4 _NoiseTexture_TexelSize;
		uniform float _AlphaEx;


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
		}

		inline float DitherNoiseTex( float4 screenPos, sampler2D noiseTexture, float4 noiseTexelSize )
		{
			float dither = tex2Dlod( noiseTexture, float4( screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0, 0 ) ).g;
			float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
			dither = ( 1 - ditherRate ) * dither + ditherRate;
			return dither;
		}


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


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_BumpMap244 = i.uv_texcoord;
			float3 tex2DNode244 = UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap244 ), 2.0 );
			float3 appendResult247 = (float3(( tex2DNode244.r * _BumpScale ) , ( tex2DNode244.g * _BumpScale ) , 1.0));
			float2 uv_TexCoord233 = i.uv_texcoord * _DetailUV;
			float cos234 = cos( radians( _DetailUVRotator ) );
			float sin234 = sin( radians( _DetailUVRotator ) );
			float2 rotator234 = mul( uv_TexCoord233 - float2( 0.5,0.5 ) , float2x2( cos234 , -sin234 , sin234 , cos234 )) + float2( 0.5,0.5 );
			float2 temp_output_2_0_g27 = rotator234;
			float2 break6_g27 = temp_output_2_0_g27;
			float temp_output_25_0_g27 = ( pow( 0.5 , 3.0 ) * 0.1 );
			float2 appendResult8_g27 = (float2(( break6_g27.x + temp_output_25_0_g27 ) , break6_g27.y));
			float4 tex2DNode14_g27 = tex2D( _DetailGlossMap, temp_output_2_0_g27 );
			float temp_output_4_0_g27 = 1.0;
			float3 appendResult13_g27 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult8_g27 ).g - tex2DNode14_g27.g ) * temp_output_4_0_g27 )));
			float2 appendResult9_g27 = (float2(break6_g27.x , ( break6_g27.y + temp_output_25_0_g27 )));
			float3 appendResult16_g27 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult9_g27 ).g - tex2DNode14_g27.g ) * temp_output_4_0_g27 )));
			float3 normalizeResult22_g27 = normalize( cross( appendResult13_g27 , appendResult16_g27 ) );
			float3 break358 = normalizeResult22_g27;
			float2 uv_DetailMask21 = i.uv_texcoord;
			float4 tex2DNode21 = tex2D( _DetailMask, uv_DetailMask21 );
			float DetailMask1366 = tex2DNode21.r;
			float3 appendResult243 = (float3(( break358.x * _DetailNormalMapScale * DetailMask1366 ) , ( break358.y * _DetailNormalMapScale * DetailMask1366 ) , break358.z));
			float2 uv_TexCoord236 = i.uv_texcoord * _DetailUV2;
			float cos237 = cos( radians( _DetailUVRotator2 ) );
			float sin237 = sin( radians( _DetailUVRotator2 ) );
			float2 rotator237 = mul( uv_TexCoord236 - float2( 0.5,0.5 ) , float2x2( cos237 , -sin237 , sin237 , cos237 )) + float2( 0.5,0.5 );
			float2 temp_output_2_0_g26 = rotator237;
			float2 break6_g26 = temp_output_2_0_g26;
			float temp_output_25_0_g26 = ( pow( 0.5 , 3.0 ) * 0.1 );
			float2 appendResult8_g26 = (float2(( break6_g26.x + temp_output_25_0_g26 ) , break6_g26.y));
			float4 tex2DNode14_g26 = tex2D( _DetailGlossMap2, temp_output_2_0_g26 );
			float temp_output_4_0_g26 = 2.0;
			float3 appendResult13_g26 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap2, appendResult8_g26 ).g - tex2DNode14_g26.g ) * temp_output_4_0_g26 )));
			float2 appendResult9_g26 = (float2(break6_g26.x , ( break6_g26.y + temp_output_25_0_g26 )));
			float3 appendResult16_g26 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap2, appendResult9_g26 ).g - tex2DNode14_g26.g ) * temp_output_4_0_g26 )));
			float3 normalizeResult22_g26 = normalize( cross( appendResult13_g26 , appendResult16_g26 ) );
			float3 break365 = normalizeResult22_g26;
			float DetailMask2367 = tex2DNode21.g;
			float3 appendResult228 = (float3(( break365.x * _DetailNormalMapScale2 * DetailMask2367 ) , ( break365.y * _DetailNormalMapScale2 * DetailMask2367 ) , 1.0));
			float3 normalizeResult325 = normalize( BlendNormals( appendResult247 , BlendNormals( appendResult243 , appendResult228 ) ) );
			float3 NormalMix496 = normalizeResult325;
			o.Normal = NormalMix496;
			float2 uv_MainTex1 = i.uv_texcoord;
			float4 tex2DNode1 = tex2D( _MainTex, uv_MainTex1 );
			float3 temp_output_121_0 = ( (tex2DNode1).rgb * (_BaseColor).rgb );
			float3 Color1600 = (_Color).rgb;
			float2 uv_ColorMask113 = i.uv_texcoord;
			float4 tex2DNode113 = tex2D( _ColorMask, uv_ColorMask113 );
			float ColorMask1378 = ( 1.0 - ( tex2DNode113.r + tex2DNode113.g + tex2DNode113.b ) );
			float3 Color2598 = (_Color2).rgb;
			float ColorMask2375 = tex2DNode113.r;
			float3 Color3565 = (_Color3).rgb;
			float ColorMask3376 = tex2DNode113.g;
			float3 Color4690 = (_Color4).rgb;
			float ColorMask4377 = tex2DNode113.b;
			float3 DiffuseMix501 = ( ( temp_output_121_0 * Color1600 * ColorMask1378 ) + ( Color2598 * ColorMask2375 * temp_output_121_0 ) + ( Color3565 * ColorMask3376 * temp_output_121_0 ) + ( Color4690 * ColorMask4377 * temp_output_121_0 ) );
			o.Albedo = DiffuseMix501;
			float2 uv_MetallicGlossMap15 = i.uv_texcoord;
			float4 tex2DNode15 = tex2D( _MetallicGlossMap, uv_MetallicGlossMap15 );
			float Glossiness3575 = _Glossiness3;
			float3 EC3588 = ( Color3565 * (0.0 + (Glossiness3575 - 0.0) * (20.0 - 0.0) / (2.0 - 0.0)) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch564 = EC3588;
			#else
				float3 staticSwitch564 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float Glossiness2595 = _Glossiness2;
			float3 EC2594 = ( Color2598 * (0.0 + (Glossiness2595 - 0.0) * (20.0 - 0.0) / (2.0 - 0.0)) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch609 = EC2594;
			#else
				float3 staticSwitch609 = staticSwitch564;
			#endif
			float Glossiness1596 = _Glossiness;
			float3 EC1603 = ( Color1600 * (0.0 + (Glossiness1596 - 0.0) * (20.0 - 0.0) / (2.0 - 0.0)) );
			#ifdef _EMISSIONCOLOR1_ON
				float3 staticSwitch610 = EC1603;
			#else
				float3 staticSwitch610 = staticSwitch609;
			#endif
			float3 EmissionFinal580 = ( tex2DNode15.g * staticSwitch610 );
			o.Emission = EmissionFinal580;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult631 = dot( ase_tanViewDir , NormalMix496 );
			float2 temp_cast_0 = (dotResult631).xx;
			float3 temp_output_621_0 = (tex2D( _ColorRamp, temp_cast_0 )).rgb;
			float2 uv_Mask629 = i.uv_texcoord;
			float3 temp_output_619_0 = (tex2D( _Mask, uv_Mask629 )).rgb;
			float3 temp_output_35_0_g29 = (max( ( temp_output_621_0 * temp_output_619_0 ) , ( temp_output_621_0 * ( 1.0 - temp_output_619_0 ) ) )).xyz;
			float temp_output_9_0_g29 = radians( ( 360.0 * _IriHue ) );
			float temp_output_16_0_g29 = cos( temp_output_9_0_g29 );
			float3 _k = float3(0.57735,0.57735,0.57735);
			float dotResult23_g29 = dot( _k , temp_output_35_0_g29 );
			float3 temp_output_33_0_g29 = ( ( ( ( ( ( temp_output_35_0_g29 * temp_output_16_0_g29 ) + ( cross( _k , temp_output_35_0_g29 ) * sin( temp_output_9_0_g29 ) ) + ( _k * dotResult23_g29 * ( 1.0 - temp_output_16_0_g29 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult36_g29 = dot( temp_output_33_0_g29 , float3(0.39,0.59,0.11) );
			float3 temp_cast_1 = (dotResult36_g29).xxx;
			float3 lerpResult37_g29 = lerp( temp_cast_1 , temp_output_33_0_g29 , ( _IriSaturation * 2.0 ));
			float lerpResult642 = lerp( 1.0 , tex2DNode15.b , _MetallicMask);
			float2 uv_DetailMainTex343 = i.uv_texcoord;
			float4 tex2DNode343 = tex2D( _DetailMainTex, uv_DetailMainTex343 );
			float DetailMainTexR400 = tex2DNode343.r;
			float lerpResult643 = lerp( 1.0 , tex2DNode15.b , _MetallicMask2);
			float lerpResult644 = lerp( 1.0 , tex2DNode15.b , _MetallicMask3);
			float lerpResult645 = lerp( 1.0 , tex2DNode15.b , _MetallicMask4);
			float MetallicFinal636 = ( ( lerpResult642 * _Metallic * ColorMask1378 * DetailMainTexR400 ) + ( lerpResult643 * _Metallic2 * ColorMask2375 * DetailMainTexR400 ) + ( lerpResult644 * _Metallic3 * ColorMask3376 * DetailMainTexR400 ) + ( lerpResult645 * _Metallic4 * ColorMask4377 * DetailMainTexR400 ) );
			float3 lerpResult627 = lerp( DiffuseMix501 , lerpResult37_g29 , MetallicFinal636);
			float3 Specular634 = lerpResult627;
			o.Specular = Specular634;
			float lerpResult526 = lerp( 1.0 , tex2DNode15.r , _Roughness);
			float DetailMainTexB401 = tex2DNode343.b;
			float lerpResult529 = lerp( 1.0 , tex2DNode15.r , _Roughness2);
			float lerpResult531 = lerp( 1.0 , tex2DNode15.r , _Roughness3);
			float lerpResult534 = lerp( 1.0 , tex2DNode15.r , _Roughness4);
			float GlossinessFinal584 = ( ( lerpResult526 * Glossiness1596 * ColorMask1378 * DetailMainTexB401 ) + ( lerpResult529 * Glossiness2595 * ColorMask2375 * DetailMainTexB401 ) + ( lerpResult531 * Glossiness3575 * ColorMask3376 * DetailMainTexB401 ) + ( lerpResult534 * _Glossiness4 * ColorMask4377 * DetailMainTexB401 ) );
			o.Smoothness = GlossinessFinal584;
			float3 DetailTex1434 = (tex2D( _DetailGlossMap, rotator234 )).rgb;
			float3 lerpResult457 = lerp( float3( 1,1,1 ) , DetailTex1434 , _DetailOcclusionScale);
			float3 DetailTex2435 = (tex2D( _DetailGlossMap2, rotator237 )).rgb;
			float3 lerpResult462 = lerp( float3( 1,1,1 ) , DetailTex2435 , _DetailOcclusionScale2);
			float2 uv_OcclusionMap23 = i.uv_texcoord;
			float4 tex2DNode23 = tex2D( _OcclusionMap, uv_OcclusionMap23 );
			float lerpResult519 = lerp( 1.0 , tex2DNode23.r , _OcclusionStrength);
			float3 OcclusionMix553 = ( (CalculateContrast(_DetailOcclusionContrast,float4( ( lerpResult457 * DetailMask1366 ) , 0.0 ))).rgb + (CalculateContrast(_DetailOcclusionContrast2,float4( ( lerpResult462 * DetailMask2367 ) , 0.0 ))).rgb + lerpResult519 );
			o.Occlusion = OcclusionMix553.x;
			o.Alpha = 1;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float dither691 = DitherNoiseTex( ase_screenPosNorm, _NoiseTexture, _NoiseTexture_TexelSize);
			float Color1Alpha664 = _Color.a;
			float AlphaInput426 = tex2DNode1.a;
			float Color2Alpha673 = _Color2.a;
			float Color3Alpha674 = _Color3.a;
			float Color4Alpha689 = _Color4.a;
			float temp_output_684_0 = ( ( Color1Alpha664 * ColorMask1378 * AlphaInput426 ) + ( Color2Alpha673 * ColorMask2375 * AlphaInput426 ) + ( Color3Alpha674 * ColorMask3376 * AlphaInput426 ) + ( Color4Alpha689 * ColorMask4377 * AlphaInput426 ) );
			float TearingsMask405 = tex2DNode23.b;
			float temp_output_705_0 = ( 1.0 - _AlphaEx );
			clip( TearingsMask405 - temp_output_705_0);
			float lerpResult701 = lerp( temp_output_684_0 , temp_output_684_0 , temp_output_705_0);
			dither691 = step( dither691, lerpResult701 );
			float2 clipScreen696 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither696 = Dither8x8Bayer( fmod(clipScreen696.x, 8), fmod(clipScreen696.y, 8) );
			dither696 = step( dither696, lerpResult701 );
			float AlphaMix487 = ( 0.0 == _DitheringPattern ? dither691 : dither696 );
			clip( AlphaMix487 - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			AlphaToMask Off
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
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18301
7;1;1906;1010;-2749.95;4391.005;1.608015;True;True
Node;AmplifyShaderEditor.CommentaryNode;330;-3246.307,2779.413;Inherit;False;2110.352;1021.486;Comment;17;435;428;228;227;229;365;370;231;364;237;357;238;236;239;251;326;545;Detail Normal Map 2;0.03088689,1,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;251;-3130.994,3149.796;Inherit;False;Property;_DetailUVRotator2;DetailUVRotator2;36;0;Create;True;0;0;True;0;False;1;1;1;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;326;-3196.307,2845.276;Inherit;False;Property;_DetailUV2;DetailUV2;24;0;Create;True;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RadiansOpNode;239;-2844.876,3148.714;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;236;-2916.308,2829.412;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;238;-2881.537,2978.498;Inherit;False;Constant;_Anchor;Anchor;52;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CommentaryNode;329;-3254.552,1933.334;Inherit;False;2088.792;751.3556;Comment;17;356;369;243;224;225;358;222;354;234;241;235;233;327;240;429;434;544;Detail Normal Map 1;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;204;-4881.353,-1474.031;Inherit;False;1295.923;836.1025;Comment;3;21;260;261;Detail Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;261;-3843.482,-1056.154;Inherit;False;226.1978;261.4764;Comment;1;367;;0,1,0.1183066,1;0;0
Node;AmplifyShaderEditor.SamplerNode;21;-4799.965,-1171.476;Inherit;True;Property;_DetailMask;DetailMask;4;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;669e2e389199cb14484c62b5d986e916;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;357;-2903.452,3304.615;Inherit;True;Property;_DetailGlossMap2;DetailGlossMap2;6;1;[NoScaleOffset];Create;True;0;0;False;1;Header(Grayscale Bump);False;None;None;False;black;Auto;Texture2D;-1;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;240;-3103.608,2273.501;Inherit;False;Property;_DetailUVRotator;DetailUVRotator;35;0;Create;True;0;0;True;0;False;1;1;1;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;237;-2646.747,2935.854;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;327;-3178.552,2000.443;Inherit;False;Property;_DetailUV;DetailUV;23;0;Create;True;0;0;True;0;False;1,1;128,128;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;364;-2319.388,2876.842;Inherit;True;NormalCreate;-1;;26;e12f7ae19d416b942820e3932b56220f;0;4;1;SAMPLER2D;;False;2;FLOAT2;0,0;False;3;FLOAT;0.5;False;4;FLOAT;2;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;233;-2878.061,1983.334;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RadiansOpNode;241;-2797.633,2278.436;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;235;-2835.196,2118.201;Inherit;False;Constant;_Anchor2;Anchor2;52;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;367;-3824.382,-1015.345;Inherit;True;DetailMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-2333.235,3097.981;Inherit;False;Property;_DetailNormalMapScale2;DetailNormalMapScale2;33;0;Create;True;0;0;True;0;False;1;1;-3;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;234;-2608.501,2089.776;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;370;-2226.676,3281.662;Inherit;True;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;365;-2040.215,2879.539;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.CommentaryNode;260;-3844.734,-1359.277;Inherit;False;218.3544;268.5316;Comment;1;366;;1,0,0,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;356;-2855.6,2421.885;Inherit;True;Property;_DetailGlossMap;DetailGlossMap;5;1;[NoScaleOffset];Create;True;0;0;False;1;Header(Grayscale Bump);False;None;3feaabc461051e444ab7638aa48df641;False;black;Auto;Texture2D;-1;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;227;-1671.725,2885.479;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;229;-1672.078,3078.355;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;354;-2305.588,2035.909;Inherit;True;NormalCreate;-1;;27;e12f7ae19d416b942820e3932b56220f;0;4;1;SAMPLER2D;;False;2;FLOAT2;0,0;False;3;FLOAT;0.5;False;4;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;328;-2879.542,1280.46;Inherit;False;1273.336;387.5185;Comment;5;244;44;249;246;247;Main Normal Map;0.8923174,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;366;-3833.429,-1321.347;Inherit;True;DetailMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;369;-1974.962,2368.372;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;222;-2316.494,2257.118;Inherit;False;Property;_DetailNormalMapScale;DetailNormalMapScale;34;0;Create;True;0;0;True;0;False;1;3;-3;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;244;-2829.542,1330.46;Inherit;True;Property;_BumpMap;BumpMap;3;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;4becda1c30faf38448fc60764e3e21b4;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;2;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;44;-2806.776,1552.979;Inherit;False;Property;_BumpScale;BumpScale;32;0;Create;True;0;0;True;0;False;1;1;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;228;-1458.135,2889.607;Inherit;True;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;358;-2013.729,2038.383;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;224;-1632.834,2015.55;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;516;-1104.415,2878.674;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;225;-1624.301,2225.749;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;246;-2201.633,1332.858;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;249;-2200.878,1459.032;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;167;-2989.873,-4094.182;Inherit;False;2049.302;1525.593;Comment;19;501;166;145;165;123;124;384;381;382;121;383;5;426;1;657;658;671;672;700;Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;495;-921.8405,1642.939;Inherit;False;952.3704;493.188;Comment;4;496;325;252;374;Normal Mix;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;202;-4841.058,-2960.576;Inherit;False;1331.589;1285.219;Comment;7;180;379;276;275;277;179;113;Color Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;247;-1838.159,1326.358;Inherit;True;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;517;-1012.357,2169.82;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;243;-1423.816,2061.448;Inherit;True;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;201;-3016.858,-2424.756;Inherit;False;2136.406;2170.424;MetallicGlossMap;47;580;584;194;579;88;193;192;191;154;573;394;526;187;402;395;396;155;397;534;529;398;189;531;569;570;87;532;533;530;525;37;393;575;188;15;595;596;654;649;636;650;651;648;647;646;653;652;Metallic Glossiness Emission;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;113;-4754.807,-2597.038;Inherit;True;Property;_ColorMask;ColorMask;1;1;[NoScaleOffset];Create;True;0;0;False;1;Header(leave empty when using RendNormal);False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;518;-998.5473,1734.841;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;374;-866.9236,1981.109;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;700;-2973.343,-3495.231;Inherit;False;834.1038;882.979;Comment;16;33;31;160;566;597;71;565;656;599;598;674;690;689;673;664;600;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;179;-4373.488,-2840.672;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;589;-2973.292,-26.39705;Inherit;False;1930.029;987.407;Comment;3;606;608;607;EmissionColors;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;33;-2920.363,-3027.196;Inherit;False;Property;_Color3;Color3;19;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;188;-2980.712,-2120.723;Inherit;False;Property;_Glossiness3;Glossiness3;48;0;Create;True;0;0;True;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;252;-655.3549,1729.192;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;463;-566.1154,-3897.788;Inherit;False;2408.946;1139;Comment;22;558;55;562;70;551;553;462;552;441;439;438;442;563;54;557;561;560;546;457;519;405;23;AO;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;23;-512.5675,-3847.788;Inherit;True;Property;_OcclusionMap;OcclusionMap;10;1;[NoScaleOffset];Create;True;0;0;True;1;Header(Packed (AO Curvature Tearings));False;-1;None;cc8e1ed2ea6526d428adb797993cfc40;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;275;-3830.885,-2586.889;Inherit;False;237.4373;272.2484;Color Mask 2;1;375;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;277;-3836.002,-1977.232;Inherit;False;233.8684;272.193;Color Mask 4;1;377;;0.2971698,0.505544,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;276;-3833.3,-2287.686;Inherit;False;234.0894;272.1377;Color Mask 3;1;376;;0,1,0.001329422,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;379;-3833.595,-2897.42;Inherit;False;249.3828;282.3601;Color Mask 1;1;378;;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;31;-2916.894,-3224.654;Inherit;False;Property;_Color2;Color2;18;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1;-2918.63,-4016.658;Inherit;True;Property;_MainTex;MainTex;0;1;[NoScaleOffset];Create;True;0;0;False;2;Header(leave empty when using RendNormal);;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;607;-2873.679,47.86253;Inherit;False;876.0251;365.46;Comment;5;568;576;578;588;574;;0,1,0.03845549,1;0;0
Node;AmplifyShaderEditor.ComponentMaskNode;566;-2631.375,-3025.409;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;187;-2979.806,-2203.322;Inherit;False;Property;_Glossiness2;Glossiness2;47;0;Create;True;0;0;True;0;False;1.147624;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;160;-2922.308,-2810.72;Inherit;False;Property;_Color4;Color4;20;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;575;-2706.603,-2117.615;Inherit;False;Glossiness3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;325;-426.8797,1731.103;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;180;-4157.713,-2840.73;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;71;-2913.936,-3427.86;Inherit;False;Property;_Color;Color;17;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;-3812.231,-2245.863;Inherit;True;ColorMask3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;428;-2328.814,3546.423;Inherit;True;Property;_TextureSample3;Texture Sample 3;52;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;606;-2817.889,516.9686;Inherit;False;928.3743;363.1198;Comment;5;592;590;594;593;591;;1,0,0.1222792,1;0;0
Node;AmplifyShaderEditor.SamplerNode;429;-2304.58,2454.424;Inherit;True;Property;_TextureSample4;Texture Sample 4;53;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;377;-3814.99,-1937.828;Inherit;True;ColorMask4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;673;-2644.885,-3125.841;Inherit;False;Color2Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;674;-2642.872,-2932.941;Inherit;False;Color3Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;-190.4471,1727.315;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;273;-3055.206,-5430.896;Inherit;False;2223.139;1128.51;Comment;30;487;696;691;697;694;692;684;685;676;678;681;687;680;686;427;675;683;668;679;406;682;698;699;660;701;705;707;708;43;709;Alpha;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;664;-2645.439,-3335.784;Inherit;False;Color1Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;155;-2979.723,-2289.734;Float;False;Property;_Glossiness;Glossiness;46;0;Create;True;0;0;True;1;Header (Glossiness Roughness);False;1;0.507;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;378;-3807.837,-2843.669;Inherit;True;ColorMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;689;-2624.956,-2709.881;Inherit;False;Color4Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;595;-2706.734,-2203.858;Inherit;False;Glossiness2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;659;-517.075,-5266.651;Inherit;False;2292.625;867.3462;Comment;20;632;633;631;629;628;619;620;621;622;623;617;615;614;624;616;625;626;655;627;634;Iridescence;0,0.9176164,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;464;-4516.315,-3812.423;Inherit;False;885.5959;359.197;Comment;3;343;400;401;RenderTexture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;565;-2381.495,-3025.814;Inherit;False;Color3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;426;-2597.63,-3924.036;Inherit;False;AlphaInput;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;656;-2623.541,-2801.217;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;-2836.837,191.3582;Inherit;False;575;Glossiness3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;597;-2634.382,-3220.058;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;375;-3807.772,-2542.06;Inherit;True;ColorMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;405;-6.249552,-3558.932;Inherit;False;TearingsMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;682;-3001.181,-4861.11;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;686;-3004.755,-4782.312;Inherit;False;689;Color4Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;544;-1971.097,2507.296;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;675;-3010.925,-5203.228;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;568;-2828.601,105.1727;Inherit;False;565;Color3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;598;-2381.362,-3219.378;Inherit;False;Color2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;343;-4466.315,-3736.518;Inherit;True;Property;_DetailMainTex;DetailMainTex;2;2;[HideInInspector];[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;427;-3009.175,-5378.085;Inherit;False;426;AlphaInput;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;687;-3001.34,-4703.753;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;633;-467.075,-4690.619;Inherit;False;496;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;680;-3010.671,-5114.148;Inherit;False;673;Color2Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;632;-446.44,-4884.733;Inherit;False;Tangent;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;596;-2701.734,-2294.858;Inherit;False;Glossiness1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;608;-1968.121,45.73243;Inherit;False;859.3313;401.7373;Comment;5;605;604;603;601;602;;0,0,0,1;0;0
Node;AmplifyShaderEditor.TFHCRemapNode;578;-2611.903,224.4808;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;0;False;4;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;599;-2637.706,-3427.045;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;406;-3010.172,-4615.994;Inherit;True;405;TearingsMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;683;-3005.597,-4944.668;Inherit;False;674;Color3Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;679;-3006.255,-5030.59;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;545;-1902.13,3582.916;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;592;-2767.889,657.8353;Inherit;False;595;Glossiness2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;5;-2889.381,-3782.278;Inherit;False;Property;_BaseColor;BaseColor;16;0;Create;True;0;0;True;0;False;1,1,1,1;0.8301887,0.8301887,0.8301887,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;690;-2377.956,-2801.881;Inherit;False;Color4;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;668;-3015.341,-5286.784;Inherit;False;664;Color1Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;685;-2646.249,-4890.954;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;591;-2548.511,678.0884;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;0;False;4;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;629;-444.3225,-5190.211;Inherit;True;Property;_Mask;Mask;9;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;574;-2415.152,158.6418;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;649;-2482.246,-1507.73;Inherit;False;Property;_MetallicMask;MetallicMask;58;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;672;-1935.422,-2770.013;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;43;-3011.366,-4396.086;Inherit;False;Property;_AlphaEx;AlphaEx;29;0;Create;True;0;0;True;1;Header (Cloth Tearings);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;647;-2492.956,-1194.885;Inherit;False;Property;_MetallicMask3;MetallicMask3;60;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;657;-2598.951,-3782.119;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;435;-1605.665,3512.878;Inherit;True;DetailTex2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;434;-1628.703,2403.158;Inherit;True;DetailTex1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;681;-2643.868,-5039.55;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;646;-2475.1,-1008.314;Inherit;False;Property;_MetallicMask4;MetallicMask4;61;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;590;-2749.127,566.9686;Inherit;False;598;Color2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;37;-2938.032,-643.5629;Inherit;False;Property;_EmissionColor;EmissionColor;21;0;Create;True;0;0;True;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;658;-2597.104,-4017.353;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;15;-2862.437,-1778.464;Inherit;True;Property;_MetallicGlossMap;MetallicGlossMap;7;1;[NoScaleOffset];Create;True;0;0;True;1;Header(Packed (Gloss Emission Metallic));False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;605;-1907.121,210.2587;Inherit;False;596;Glossiness1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;400;-3885.719,-3762.423;Inherit;False;DetailMainTexR;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2388.439,-3429.204;Inherit;False;Color1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;-2645.273,-5205.624;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;676;-2645.419,-5364.446;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;631;-205.6533,-4885.791;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;710;-2576.7,-4657.864;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;648;-2491.021,-1337.621;Inherit;False;Property;_MetallicMask2;MetallicMask2;59;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;642;-2141.303,-1655.614;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;395;-1933.498,-1999.584;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;569;-2724.707,-641.4363;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-517.3156,-3524.131;Inherit;False;Property;_DetailOcclusionScale;DetailOcclusionScale;42;0;Create;True;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;628;-73.91304,-4919.877;Inherit;True;Property;_ColorRamp;ColorRamp;8;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;750ded71dcdc1ea4d95922cab689d3af;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;383;-2064.232,-3076.251;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;579;-2298.468,-691.8571;Inherit;False;889.9937;335.6628;If toggled Color 3 used as Emission Color and Glossiness3 as Emission Strength;6;564;612;609;613;610;611;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;438;-212.3398,-3362.473;Inherit;False;434;DetailTex1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;396;-1943.952,-1772.196;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;671;-1898.992,-2793.739;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;645;-2137.558,-1108.879;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;654;-1949.962,-1000.338;Inherit;False;400;DetailMainTexR;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;652;-2833.373,-1179.768;Inherit;False;Property;_Metallic3;Metallic3;56;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;684;-2398.986,-5365.393;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;705;-2690.695,-4397.03;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;643;-2136.566,-1485.481;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;-215.1506,-3027.668;Inherit;False;435;DetailTex2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;121;-2070.903,-3797.06;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;-2243.578,148.992;Inherit;False;EC3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;709;-2394.743,-5050.623;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;55;-518.9586,-3050.73;Inherit;False;Property;_DetailOcclusionScale2;DetailOcclusionScale2;43;0;Create;True;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;651;-2839.232,-1281.605;Inherit;False;Property;_Metallic2;Metallic2;55;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;381;-2062.955,-3543.838;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;650;-2841.608,-1372.776;Inherit;False;Property;_Metallic;Metallic;54;0;Create;True;0;0;True;1;Header (Metallic Maps);False;1;0.523;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;593;-2357.608,613.7114;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;604;-1879.549,100.7324;Inherit;False;600;Color1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-2944.063,-462.0282;Float;False;Property;_EmissionStrength;EmissionStrength;37;0;Create;True;0;0;True;0;False;0;0;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;382;-2067.032,-3301.928;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;397;-1937.126,-1477.04;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;619;-110.7807,-5190.216;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;398;-1928.812,-1176.848;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;384;-2068.061,-2912.268;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;644;-2134.92,-1299.191;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;653;-2832.415,-1074.565;Inherit;False;Property;_Metallic4;Metallic4;57;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;601;-1703.679,234.4698;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;0;False;4;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;123;-1753.13,-3523.639;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;442;-216.5002,-3269.057;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;145;-1757.836,-3796.269;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;641;-1588.024,-1113.91;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;611;-2249.538,-493.0225;Inherit;False;588;EC3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;457;189.0431,-3450.96;Inherit;True;3;0;FLOAT3;1,1,1;False;1;FLOAT3;1,1,1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;573;-2479.813,-636.0275;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;594;-2132.515,621.2166;Inherit;False;EC2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;602;-1467.138,145.5179;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;638;-1587.648,-1663.247;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;707;-2300.44,-4634.896;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;165;-1753.171,-2951.424;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;621;-25.00293,-4700.146;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;639;-1588.926,-1498.732;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;462;165.4592,-3088.979;Inherit;True;3;0;FLOAT3;1,1,1;False;1;FLOAT3;1,1,1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;124;-1749.994,-3249.018;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;708;-2224.842,-5296.225;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;620;266.2058,-5012.82;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-221.906,-2912.155;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;640;-1587.269,-1309.337;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;622;436.0757,-5216.651;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;558;-520.6837,-3403.662;Inherit;False;Property;_DetailOcclusionContrast;DetailOcclusionContrast;44;0;Create;True;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;525;-2471.729,-2343.355;Inherit;False;Property;_Roughness;Roughness;50;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;563;-518.8065,-3177.435;Inherit;False;Property;_DetailOcclusionContrast2;DetailOcclusionContrast2;45;0;Create;True;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;603;-1322.79,141.3208;Inherit;False;EC1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-2471.992,-2125.807;Inherit;False;Property;_Roughness2;Roughness2;51;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;401;-3892.437,-3568.226;Inherit;False;DetailMainTexB;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;546;464.0365,-3453.721;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;552;478.518,-3083.958;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;623;444.0087,-5105.933;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;637;-1316.325,-1428.505;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;564;-2266.281,-641.9345;Inherit;False;Property;_EmissionColor3;Color3 is Emissive;40;0;Create;False;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;532;-2476.498,-1962.575;Inherit;False;Property;_Roughness3;Roughness3;52;0;Create;True;0;0;True;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;533;-2474.024,-1818.33;Inherit;False;Property;_Roughness4;Roughness4;53;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;166;-1407.883,-3389.801;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;612;-1989.547,-489.3508;Inherit;False;594;EC2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;701;-1997.124,-5367.184;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;393;-2538.67,-1560.561;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;402;-1945.927,-2308.482;Inherit;False;401;DetailMainTexB;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;529;-2141.613,-2226.646;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;615;336.1459,-4801.324;Inherit;False;Property;_IriSaturation;IriSaturation;63;0;Create;True;0;0;True;0;False;0.5688156;0.5688156;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-1711.212,-489.03;Inherit;False;603;EC1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;624;600.1519,-5119.596;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;698;-1772.425,-4775.368;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;617;336.1459,-4881.324;Inherit;False;Property;_IriHue;IriHue;62;0;Create;True;0;0;True;1;Header (Iridescence);False;0.5064838;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;526;-2150.099,-2379.75;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;699;-1740.315,-5083.679;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;616;336.1459,-4609.323;Inherit;False;Property;_IriContrast;IriContrast;65;0;Create;True;0;0;True;0;False;0.5840003;0.5840003;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleContrastOpNode;562;730.0184,-3178.765;Inherit;True;2;1;COLOR;0,0,0,0;False;0;FLOAT;1.5;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;189;-2977.565,-2034.867;Inherit;False;Property;_Glossiness4;Glossiness4;49;0;Create;True;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;570;-2534.525,-858.7187;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;501;-1200.526,-3392.925;Inherit;True;DiffuseMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleContrastOpNode;557;713.4955,-3487.338;Inherit;True;2;1;COLOR;0,0,0,0;False;0;FLOAT;1.5;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;609;-1988.442,-641.2705;Inherit;False;Property;_EmissionColor2;Color2 is Emissive;39;0;Create;False;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;70;-516.6466,-3620.789;Inherit;False;Property;_OcclusionStrength;OcclusionStrength;41;0;Create;True;0;0;False;1;Header (Ambient Occlusion);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;614;336.1459,-4705.323;Inherit;False;Property;_IriBrightness;IriBrightness;64;0;Create;True;0;0;True;0;False;0.6471324;0.6471324;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;692;-2090.55,-4610.288;Inherit;True;Property;_NoiseTexture;NoiseTexture;15;1;[NoScaleOffset];Create;True;0;0;True;2;Header (Dithering Noise);;False;d469c63fdf99cd243a05047268aeaa5d;ff9ecda1adbaedb46baced3a2f67ad34;False;white;Auto;Texture2D;-1;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.LerpOp;531;-2140.954,-2052.27;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;534;-2141.758,-1912.217;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;636;-1123.865,-1432.044;Inherit;True;MetallicFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;625;730.0356,-4942.454;Inherit;True;HSBC;-1;;29;00214d7b097fb4242b71bd607065f471;0;5;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;610;-1697.196,-643.7545;Inherit;False;Property;_EmissionColor1;Color1 is Emissive;38;0;Create;False;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;561;990.6568,-3162.245;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;560;973.6568,-3416.245;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;191;-1590.404,-2223.737;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;154;-1593.931,-2372.866;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;655;747.9329,-4514.304;Inherit;False;636;MetallicFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;697;-1678.112,-5010.682;Inherit;False;Property;_DitheringPattern;DitheringPattern;31;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;626;765.3318,-5095.902;Inherit;False;501;DiffuseMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;394;-2470.715,-815.1758;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DitheringNode;691;-1642.506,-4871.288;Inherit;False;2;False;3;0;FLOAT;0;False;1;SAMPLER2D;;False;2;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DitheringNode;696;-1628.158,-4707.775;Inherit;False;1;False;3;0;FLOAT;0;False;1;SAMPLER2D;;False;2;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;519;124.7936,-3796.479;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;192;-1585.712,-2076.604;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;193;-1585.302,-1927.868;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;627;1083.332,-4980.902;Inherit;True;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;194;-1340.215,-2216.972;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;551;1283.859,-3822.238;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;88;-1318.456,-839.868;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;694;-1307.857,-4915.208;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;553;1589.862,-3824.274;Inherit;False;OcclusionMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;487;-1063.493,-5008.843;Inherit;True;AlphaMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;584;-1163.385,-2219.773;Inherit;True;GlossinessFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;634;1532.549,-4985.576;Inherit;False;Specular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;580;-1138.686,-845.5486;Inherit;True;EmissionFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;475;4465.38,-3251.036;Inherit;False;Property;_WeatheringRange6;WeatheringRange6;72;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;515;299.9669,-2090.145;Inherit;False;501;DiffuseMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;554;300.4991,-1668.844;Inherit;False;553;OcclusionMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;25;4478.635,-4209.044;Inherit;True;Property;_WeatheringMask;WeatheringMask;12;1;[NoScaleOffset];Fetch;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;470;4461.111,-3676.041;Inherit;False;Property;_WeatheringRange1;WeatheringRange1;67;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;24;4485.181,-3985.625;Inherit;True;Property;_WeatheringMap;WeatheringMap;11;1;[NoScaleOffset];Fetch;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;469;4457.841,-3757.388;Inherit;False;Property;_WeatheringAll;WeatheringAll;66;0;Create;True;0;0;True;2;Header (Weathering (NOT WORKING));;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;586;282.2704,-1745.719;Inherit;False;584;GlossinessFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;499;301.0743,-2001.078;Inherit;False;496;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;471;4472.111,-3592.041;Inherit;False;Property;_WeatheringRange2;WeatheringRange2;68;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;474;4465.501,-3342.036;Inherit;False;Property;_WeatheringRange5;WeatheringRange5;71;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;581;291.1351,-1910.903;Inherit;False;580;EmissionFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;38;4173.739,-3214.858;Inherit;False;Property;_UVScalePattern;UVScalePattern;22;0;Create;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;472;4478.111,-3515.041;Inherit;False;Property;_WeatheringRange3;WeatheringRange3;69;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;39;3987.352,-3216.45;Inherit;False;Property;_patternuv1;patternuv1;25;0;Create;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;42;3986.352,-3607.828;Inherit;False;Property;_patternuvbase;patternuvbase;28;0;Fetch;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;40;3988.352,-3344.45;Inherit;False;Property;_patternuv2;patternuv2;26;0;Create;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;41;3988.352,-3477.451;Inherit;False;Property;_patternuv3;patternuv3;27;0;Create;False;0;0;True;0;False;1,0;1,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;28;3644.734,-3264.372;Inherit;True;Property;_AlphaMask2;AlphaMask2;14;1;[HideInInspector];Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;473;4468.502,-3430.538;Inherit;False;Property;_WeatheringRange4;WeatheringRange4;70;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;660;-1192.936,-5313.964;Inherit;False;Property;_Cutoff;Cutoff;30;0;Create;True;0;0;True;1;Header (Zero Disable Dithering);False;0;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;635;316.6887,-1830.176;Inherit;False;634;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;29;3647.175,-3477.446;Inherit;True;Property;_AlphaMask;AlphaMask;13;1;[HideInInspector];Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;491;314.392,-1578.384;Inherit;False;487;AlphaMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;775.4478,-1929.078;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Clothes True Replica Iridescence;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.5;True;True;0;False;TransparentCutout;2600;AlphaTest;All;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;5;False;-1;10;False;-1;0;2;False;-1;0;False;-1;6;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;True;0;0;False;-1;-1;0;True;660;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;239;0;251;0
WireConnection;236;0;326;0
WireConnection;237;0;236;0
WireConnection;237;1;238;0
WireConnection;237;2;239;0
WireConnection;364;1;357;0
WireConnection;364;2;237;0
WireConnection;233;0;327;0
WireConnection;241;0;240;0
WireConnection;367;0;21;2
WireConnection;234;0;233;0
WireConnection;234;1;235;0
WireConnection;234;2;241;0
WireConnection;365;0;364;0
WireConnection;227;0;365;0
WireConnection;227;1;231;0
WireConnection;227;2;370;0
WireConnection;229;0;365;1
WireConnection;229;1;231;0
WireConnection;229;2;370;0
WireConnection;354;1;356;0
WireConnection;354;2;234;0
WireConnection;366;0;21;1
WireConnection;228;0;227;0
WireConnection;228;1;229;0
WireConnection;358;0;354;0
WireConnection;224;0;358;0
WireConnection;224;1;222;0
WireConnection;224;2;369;0
WireConnection;516;0;228;0
WireConnection;225;0;358;1
WireConnection;225;1;222;0
WireConnection;225;2;369;0
WireConnection;246;0;244;1
WireConnection;246;1;44;0
WireConnection;249;0;244;2
WireConnection;249;1;44;0
WireConnection;247;0;246;0
WireConnection;247;1;249;0
WireConnection;517;0;516;0
WireConnection;243;0;224;0
WireConnection;243;1;225;0
WireConnection;243;2;358;2
WireConnection;518;0;247;0
WireConnection;374;0;243;0
WireConnection;374;1;517;0
WireConnection;179;0;113;1
WireConnection;179;1;113;2
WireConnection;179;2;113;3
WireConnection;252;0;518;0
WireConnection;252;1;374;0
WireConnection;566;0;33;0
WireConnection;575;0;188;0
WireConnection;325;0;252;0
WireConnection;180;0;179;0
WireConnection;376;0;113;2
WireConnection;428;0;357;0
WireConnection;428;1;237;0
WireConnection;429;0;356;0
WireConnection;429;1;234;0
WireConnection;377;0;113;3
WireConnection;673;0;31;4
WireConnection;674;0;33;4
WireConnection;496;0;325;0
WireConnection;664;0;71;4
WireConnection;378;0;180;0
WireConnection;689;0;160;4
WireConnection;595;0;187;0
WireConnection;565;0;566;0
WireConnection;426;0;1;4
WireConnection;656;0;160;0
WireConnection;597;0;31;0
WireConnection;375;0;113;1
WireConnection;405;0;23;3
WireConnection;544;0;429;0
WireConnection;598;0;597;0
WireConnection;596;0;155;0
WireConnection;578;0;576;0
WireConnection;599;0;71;0
WireConnection;545;0;428;0
WireConnection;690;0;656;0
WireConnection;685;0;686;0
WireConnection;685;1;687;0
WireConnection;685;2;427;0
WireConnection;591;0;592;0
WireConnection;574;0;568;0
WireConnection;574;1;578;0
WireConnection;672;0;690;0
WireConnection;657;0;5;0
WireConnection;435;0;545;0
WireConnection;434;0;544;0
WireConnection;681;0;683;0
WireConnection;681;1;682;0
WireConnection;681;2;427;0
WireConnection;658;0;1;0
WireConnection;400;0;343;1
WireConnection;600;0;599;0
WireConnection;678;0;680;0
WireConnection;678;1;679;0
WireConnection;678;2;427;0
WireConnection;676;0;668;0
WireConnection;676;1;675;0
WireConnection;676;2;427;0
WireConnection;631;0;632;0
WireConnection;631;1;633;0
WireConnection;710;0;406;0
WireConnection;642;1;15;3
WireConnection;642;2;649;0
WireConnection;569;0;37;0
WireConnection;628;1;631;0
WireConnection;671;0;672;0
WireConnection;645;1;15;3
WireConnection;645;2;646;0
WireConnection;684;0;676;0
WireConnection;684;1;678;0
WireConnection;684;2;681;0
WireConnection;684;3;685;0
WireConnection;705;0;43;0
WireConnection;643;1;15;3
WireConnection;643;2;648;0
WireConnection;121;0;658;0
WireConnection;121;1;657;0
WireConnection;588;0;574;0
WireConnection;709;0;710;0
WireConnection;593;0;590;0
WireConnection;593;1;591;0
WireConnection;619;0;629;0
WireConnection;644;1;15;3
WireConnection;644;2;647;0
WireConnection;601;0;605;0
WireConnection;123;0;598;0
WireConnection;123;1;382;0
WireConnection;123;2;121;0
WireConnection;145;0;121;0
WireConnection;145;1;600;0
WireConnection;145;2;381;0
WireConnection;641;0;645;0
WireConnection;641;1;653;0
WireConnection;641;2;398;0
WireConnection;641;3;654;0
WireConnection;457;1;438;0
WireConnection;457;2;54;0
WireConnection;573;0;569;0
WireConnection;573;1;87;0
WireConnection;594;0;593;0
WireConnection;602;0;604;0
WireConnection;602;1;601;0
WireConnection;638;0;642;0
WireConnection;638;1;650;0
WireConnection;638;2;395;0
WireConnection;638;3;654;0
WireConnection;707;0;705;0
WireConnection;165;0;671;0
WireConnection;165;1;384;0
WireConnection;165;2;121;0
WireConnection;621;0;628;0
WireConnection;639;0;643;0
WireConnection;639;1;651;0
WireConnection;639;2;396;0
WireConnection;639;3;654;0
WireConnection;462;1;439;0
WireConnection;462;2;55;0
WireConnection;124;0;565;0
WireConnection;124;1;383;0
WireConnection;124;2;121;0
WireConnection;708;0;684;0
WireConnection;708;1;709;0
WireConnection;708;2;705;0
WireConnection;620;0;619;0
WireConnection;640;0;644;0
WireConnection;640;1;652;0
WireConnection;640;2;397;0
WireConnection;640;3;654;0
WireConnection;622;0;621;0
WireConnection;622;1;619;0
WireConnection;603;0;602;0
WireConnection;401;0;343;3
WireConnection;546;0;457;0
WireConnection;546;1;442;0
WireConnection;552;0;462;0
WireConnection;552;1;441;0
WireConnection;623;0;621;0
WireConnection;623;1;620;0
WireConnection;637;0;638;0
WireConnection;637;1;639;0
WireConnection;637;2;640;0
WireConnection;637;3;641;0
WireConnection;564;1;573;0
WireConnection;564;0;611;0
WireConnection;166;0;145;0
WireConnection;166;1;123;0
WireConnection;166;2;124;0
WireConnection;166;3;165;0
WireConnection;701;0;684;0
WireConnection;701;1;708;0
WireConnection;701;2;707;0
WireConnection;393;0;15;2
WireConnection;529;1;15;1
WireConnection;529;2;530;0
WireConnection;624;0;622;0
WireConnection;624;1;623;0
WireConnection;698;0;701;0
WireConnection;526;1;15;1
WireConnection;526;2;525;0
WireConnection;699;0;701;0
WireConnection;562;1;552;0
WireConnection;562;0;563;0
WireConnection;570;0;393;0
WireConnection;501;0;166;0
WireConnection;557;1;546;0
WireConnection;557;0;558;0
WireConnection;609;1;564;0
WireConnection;609;0;612;0
WireConnection;531;1;15;1
WireConnection;531;2;532;0
WireConnection;534;1;15;1
WireConnection;534;2;533;0
WireConnection;636;0;637;0
WireConnection;625;1;624;0
WireConnection;625;2;617;0
WireConnection;625;3;615;0
WireConnection;625;4;614;0
WireConnection;625;5;616;0
WireConnection;610;1;609;0
WireConnection;610;0;613;0
WireConnection;561;0;562;0
WireConnection;560;0;557;0
WireConnection;191;0;529;0
WireConnection;191;1;595;0
WireConnection;191;2;396;0
WireConnection;191;3;402;0
WireConnection;154;0;526;0
WireConnection;154;1;596;0
WireConnection;154;2;395;0
WireConnection;154;3;402;0
WireConnection;394;0;570;0
WireConnection;691;0;699;0
WireConnection;691;1;692;0
WireConnection;696;0;698;0
WireConnection;519;1;23;1
WireConnection;519;2;70;0
WireConnection;192;0;531;0
WireConnection;192;1;575;0
WireConnection;192;2;397;0
WireConnection;192;3;402;0
WireConnection;193;0;534;0
WireConnection;193;1;189;0
WireConnection;193;2;398;0
WireConnection;193;3;402;0
WireConnection;627;0;626;0
WireConnection;627;1;625;0
WireConnection;627;2;655;0
WireConnection;194;0;154;0
WireConnection;194;1;191;0
WireConnection;194;2;192;0
WireConnection;194;3;193;0
WireConnection;551;0;560;0
WireConnection;551;1;561;0
WireConnection;551;2;519;0
WireConnection;88;0;394;0
WireConnection;88;1;610;0
WireConnection;694;1;697;0
WireConnection;694;2;691;0
WireConnection;694;3;696;0
WireConnection;553;0;551;0
WireConnection;487;0;694;0
WireConnection;584;0;194;0
WireConnection;634;0;627;0
WireConnection;580;0;88;0
WireConnection;0;0;515;0
WireConnection;0;1;499;0
WireConnection;0;2;581;0
WireConnection;0;3;635;0
WireConnection;0;4;586;0
WireConnection;0;5;554;0
WireConnection;0;10;491;0
ASEEND*/
//CHKSM=845413B141E0EFD0DBB0A97F3D7B8F2BCC38BC21