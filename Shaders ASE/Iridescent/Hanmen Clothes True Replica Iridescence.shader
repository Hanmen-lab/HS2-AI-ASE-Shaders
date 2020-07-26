// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Replica Iridescence"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
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
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "white" {}
		[HideInInspector]_AlphaMask("AlphaMask", 2D) = "white" {}
		[HideInInspector]_AlphaMask2("AlphaMask2", 2D) = "white" {}
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
		_AlphaEx("AlphaEx", Range( 0 , 1)) = 1
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
		Tags{ "RenderType" = "Opaque"  "Queue" = "AlphaTest+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Off
		AlphaToMask On
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
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
		};

		uniform float2 _UVScalePattern;
		uniform float2 _patternuv3;
		uniform float _WeatheringRange6;
		uniform float _WeatheringRange2;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange5;
		uniform sampler2D _AlphaMask;
		uniform sampler2D _AlphaMask2;
		uniform float2 _patternuv2;
		uniform float _WeatheringRange3;
		uniform float2 _patternuv1;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange4;
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
		uniform float _AlphaEx;
		uniform float _Cutoff = 0.5;


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
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
			float ColorMask4377 = tex2DNode113.b;
			float3 DiffuseMix501 = ( ( temp_output_121_0 * Color1600 * ColorMask1378 ) + ( Color2598 * ColorMask2375 * temp_output_121_0 ) + ( Color3565 * ColorMask3376 * temp_output_121_0 ) + ( (_Color4).rgb * ColorMask4377 * temp_output_121_0 ) );
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
			float AlphaInput426 = tex2DNode1.a;
			float TearingsMask405 = tex2DNode23.b;
			float clampResult424 = clamp( ( _AlphaEx + TearingsMask405 ) , 0.0 , 1.0 );
			float AlphaMix487 = ( AlphaInput426 * clampResult424 );
			clip( AlphaMix487 - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows 

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
7;1;1906;1010;-54.10193;2692.944;1;True;True
Node;AmplifyShaderEditor.CommentaryNode;330;-3132.971,1451.76;Inherit;False;2110.352;1021.486;Comment;17;435;428;228;227;229;365;370;231;364;237;357;238;236;239;251;326;545;Detail Normal Map 2;0.03088689,1,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;251;-3017.658,1822.143;Inherit;False;Property;_DetailUVRotator2;DetailUVRotator2;36;0;Create;True;0;0;True;0;False;1;1;1;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;326;-3082.971,1517.623;Inherit;False;Property;_DetailUV2;DetailUV2;26;0;Create;True;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CommentaryNode;204;-4881.353,-1474.031;Inherit;False;1386.626;968.3772;Comment;3;261;260;21;Detail Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;329;-3141.216,605.681;Inherit;False;2088.792;751.3556;Comment;17;356;369;243;224;225;358;222;354;234;241;235;233;327;240;429;434;544;Detail Normal Map 1;1,0,0,1;0;0
Node;AmplifyShaderEditor.RadiansOpNode;239;-2731.54,1821.061;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;238;-2768.201,1650.845;Inherit;False;Constant;_Anchor;Anchor;52;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;236;-2802.972,1501.759;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;240;-2990.272,945.848;Inherit;False;Property;_DetailUVRotator;DetailUVRotator;35;0;Create;True;0;0;True;0;False;1;1;1;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;327;-3065.216,672.7898;Inherit;False;Property;_DetailUV;DetailUV;25;0;Create;True;0;0;True;0;False;1,1;128,128;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;21;-4740.626,-1108.93;Inherit;True;Property;_DetailMask;DetailMask;7;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;669e2e389199cb14484c62b5d986e916;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;357;-2790.116,1976.962;Inherit;True;Property;_DetailGlossMap2;DetailGlossMap2;9;1;[NoScaleOffset];Create;True;0;0;False;1;Header(Grayscale Bump);False;None;None;False;black;Auto;Texture2D;-1;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.CommentaryNode;261;-3772.7,-1133.787;Inherit;False;226.1978;261.4764;Comment;1;367;;0,1,0.1183066,1;0;0
Node;AmplifyShaderEditor.RotatorNode;237;-2533.411,1608.201;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;233;-2764.725,655.6811;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;235;-2721.86,790.5479;Inherit;False;Constant;_Anchor2;Anchor2;52;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RadiansOpNode;241;-2684.297,950.783;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;364;-2206.052,1549.189;Inherit;True;NormalCreate;1;;26;e12f7ae19d416b942820e3932b56220f;0;4;1;SAMPLER2D;;False;2;FLOAT2;0,0;False;3;FLOAT;0.5;False;4;FLOAT;2;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;367;-3753.599,-1092.978;Inherit;True;DetailMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;365;-1926.879,1551.886;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.CommentaryNode;260;-3765.369,-1419.746;Inherit;False;218.3544;268.5316;Comment;1;366;;1,0,0,1;0;0
Node;AmplifyShaderEditor.RotatorNode;234;-2495.165,762.1228;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;370;-2113.34,1954.009;Inherit;True;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;356;-2742.264,1094.232;Inherit;True;Property;_DetailGlossMap;DetailGlossMap;8;1;[NoScaleOffset];Create;True;0;0;False;1;Header(Grayscale Bump);False;None;3feaabc461051e444ab7638aa48df641;False;black;Auto;Texture2D;-1;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-2219.899,1770.328;Inherit;False;Property;_DetailNormalMapScale2;DetailNormalMapScale2;33;0;Create;True;0;0;True;0;False;1;1;-3;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;354;-2192.252,708.2557;Inherit;True;NormalCreate;1;;27;e12f7ae19d416b942820e3932b56220f;0;4;1;SAMPLER2D;;False;2;FLOAT2;0,0;False;3;FLOAT;0.5;False;4;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;328;-2766.206,-47.19342;Inherit;False;1273.336;387.5185;Comment;5;244;44;249;246;247;Main Normal Map;0.8923174,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;227;-1558.389,1557.826;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;366;-3754.064,-1381.816;Inherit;True;DetailMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;229;-1558.742,1750.702;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;358;-1900.393,710.7295;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.DynamicAppendNode;228;-1344.799,1561.954;Inherit;True;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;44;-2693.44,225.3259;Inherit;False;Property;_BumpScale;BumpScale;32;0;Create;True;0;0;True;0;False;1;1;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;369;-1861.626,1040.719;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;222;-2203.158,929.4646;Inherit;False;Property;_DetailNormalMapScale;DetailNormalMapScale;34;0;Create;True;0;0;True;0;False;1;3;-3;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;244;-2716.206,2.806656;Inherit;True;Property;_BumpMap;BumpMap;6;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;4becda1c30faf38448fc60764e3e21b4;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;2;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;249;-2087.542,131.3784;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;246;-2088.297,5.205174;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;225;-1510.965,898.0957;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;224;-1519.498,687.897;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;516;-991.0792,1551.021;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;247;-1724.823,-1.294937;Inherit;True;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;243;-1310.48,733.7949;Inherit;True;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;495;-808.5043,315.2859;Inherit;False;952.3704;493.188;Comment;4;496;325;252;374;Normal Mix;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;517;-899.0203,842.1666;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;374;-753.5873,653.4558;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;167;-2989.873,-4094.182;Inherit;False;2049.302;1525.593;Comment;27;501;166;145;165;123;124;384;381;382;31;121;33;160;383;71;5;426;1;565;566;597;598;599;600;656;657;658;Diffuse Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;201;-3016.858,-2424.756;Inherit;False;2136.406;2170.424;MetallicGlossMap;47;580;584;194;579;88;193;192;191;154;573;394;526;187;402;395;396;155;397;534;529;398;189;531;569;570;87;532;533;530;525;37;393;575;188;15;595;596;654;649;636;650;651;648;647;646;653;652;Metallic Glossiness Emission;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;518;-885.2112,407.1882;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;202;-4841.058,-2960.576;Inherit;False;1331.589;1285.219;Comment;7;180;379;276;275;277;179;113;Color Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;188;-2980.712,-2120.723;Inherit;False;Property;_Glossiness3;Glossiness3;48;0;Create;True;0;0;True;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;589;345.8419,38.36653;Inherit;False;1930.029;987.407;Comment;3;606;608;607;EmissionColors;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;33;-2772.279,-3198.169;Inherit;False;Property;_Color3;Color3;21;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BlendNormalsNode;252;-542.0186,401.5384;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;607;445.4551,112.6261;Inherit;False;876.0251;365.46;Comment;5;568;576;578;588;574;;0,1,0.03845549,1;0;0
Node;AmplifyShaderEditor.ComponentMaskNode;566;-2566.802,-3192.705;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;575;-2706.603,-2117.615;Inherit;False;Glossiness3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;113;-4754.807,-2597.038;Inherit;True;Property;_ColorMask;ColorMask;4;1;[NoScaleOffset];Create;True;0;0;False;1;Header(leave empty when using RendNormal);False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalizeNode;325;-313.5434,403.4502;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;31;-2772.279,-3390.173;Inherit;False;Property;_Color2;Color2;20;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;187;-2979.806,-2203.322;Inherit;False;Property;_Glossiness2;Glossiness2;47;0;Create;True;0;0;True;0;False;1.147624;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;-77.11081,399.6619;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;428;-2215.478,2218.77;Inherit;True;Property;_TextureSample3;Texture Sample 3;52;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;464;-4516.315,-3812.423;Inherit;False;885.5959;359.197;Comment;3;343;400;401;RenderTexture;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;429;-2191.244,1126.771;Inherit;True;Property;_TextureSample4;Texture Sample 4;53;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;155;-2979.723,-2289.734;Float;False;Property;_Glossiness;Glossiness;46;0;Create;True;0;0;True;1;Header (Glossiness Roughness);False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;606;501.2444,581.7321;Inherit;False;928.3743;363.1198;Comment;5;592;590;594;593;591;;1,0,0.1222792,1;0;0
Node;AmplifyShaderEditor.ColorNode;71;-2766.175,-3596.156;Inherit;False;Property;_Color;Color;19;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;595;-2706.734,-2203.858;Inherit;False;Glossiness2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;659;-611.7302,-3230.958;Inherit;False;2292.625;867.3462;Comment;20;632;633;631;629;628;619;620;621;622;623;617;615;614;624;616;625;626;655;627;634;Iridescence;0,0.9176164,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;565;-2363.921,-3191.11;Inherit;False;Color3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;179;-4376.208,-2791.72;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;597;-2566.808,-3388.354;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;482.2968,256.1218;Inherit;False;575;Glossiness3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;544;-1857.761,1179.643;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;343;-4466.315,-3736.518;Inherit;True;Property;_DetailMainTex;DetailMainTex;5;2;[HideInInspector];[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;180;-4161.793,-2793.137;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;568;490.533,169.9363;Inherit;False;565;Color3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;598;-2364.788,-3387.674;Inherit;False;Color2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;599;-2552.132,-3596.341;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;277;-3836.002,-1977.232;Inherit;False;233.8684;272.193;Comment;1;377;;0.2971698,0.505544,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;592;551.2444,722.5988;Inherit;False;595;Glossiness2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;545;-1788.794,2255.263;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;632;-541.0952,-2849.041;Inherit;False;Tangent;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ColorNode;5;-2749.773,-3787.989;Inherit;False;Property;_BaseColor;BaseColor;18;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TFHCRemapNode;578;707.2309,289.2444;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;0;False;4;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;608;1351.013,110.496;Inherit;False;859.3313;401.7373;Comment;5;605;604;603;601;602;;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;379;-3833.595,-2897.42;Inherit;False;249.3828;282.3601;Comment;1;378;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;1;-2779.555,-4026.198;Inherit;True;Property;_MainTex;MainTex;3;1;[NoScaleOffset];Create;True;0;0;False;2;Header(leave empty when using RendNormal);;False;-1;None;bff79bdb615947644a6f8418fed6ca0d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;596;-2701.734,-2294.858;Inherit;False;Glossiness1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;275;-3830.885,-2586.889;Inherit;False;237.4373;272.2484;Color Mask 2;1;375;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;276;-3833.3,-2287.686;Inherit;False;234.0894;272.1377;Comment;1;376;;0,1,0.001329422,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;633;-561.7302,-2654.927;Inherit;False;496;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;434;-1515.367,1075.505;Inherit;True;DetailTex1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;400;-3885.719,-3762.423;Inherit;False;DetailMainTexR;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;378;-3807.837,-2843.669;Inherit;True;ColorMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;435;-1492.329,2185.225;Inherit;True;DetailTex2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;629;-538.9777,-3154.518;Inherit;True;Property;_Mask;Mask;12;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;647;-2492.956,-1194.885;Inherit;False;Property;_MetallicMask3;MetallicMask3;60;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;648;-2491.021,-1337.621;Inherit;False;Property;_MetallicMask2;MetallicMask2;59;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2339.866,-3598.5;Inherit;False;Color1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;646;-2475.1,-1008.314;Inherit;False;Property;_MetallicMask4;MetallicMask4;61;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;657;-2543.96,-3787.83;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;649;-2482.246,-1507.73;Inherit;False;Property;_MetallicMask;MetallicMask;58;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;463;-187.6425,1358.782;Inherit;False;2408.946;1139;Comment;22;558;55;562;70;551;553;462;552;441;439;438;442;563;54;557;561;560;546;457;519;405;23;AO;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;160;-2771.626,-3002.724;Inherit;False;Property;_Color4;Color4;22;0;Create;True;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DotProductOpNode;631;-300.3085,-2850.098;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;591;770.6227,742.8519;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;0;False;4;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;574;903.9816,223.4054;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;1412.013,275.0223;Inherit;False;596;Glossiness1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;590;570.0071,631.7321;Inherit;False;598;Color2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;15;-2862.437,-1778.464;Inherit;True;Property;_MetallicGlossMap;MetallicGlossMap;10;1;[NoScaleOffset];Create;True;0;0;True;1;Header(Packed (Gloss Emission Metallic));False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;658;-2491.113,-4025.064;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;-3812.231,-2245.863;Inherit;True;ColorMask3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;37;-2856.218,-834.6846;Inherit;False;Property;_EmissionColor;EmissionColor;23;0;Create;True;0;0;True;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;377;-3814.99,-1937.828;Inherit;True;ColorMask4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;375;-3807.772,-2542.06;Inherit;True;ColorMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;579;-2186.773,-682.351;Inherit;False;889.9937;335.6628;If toggled Color 3 used as Emission Color and Glossiness3 as Emission Strength;6;564;612;609;613;610;611;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;1075.556,213.7556;Inherit;False;EC3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;650;-2841.608,-1372.776;Inherit;False;Property;_Metallic;Metallic;54;0;Create;True;0;0;True;1;Header (Metallic Maps);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;397;-1937.126,-1477.04;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;642;-2141.303,-1655.614;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;601;1615.455,299.2334;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;0;False;4;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;656;-2562.967,-2978.513;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;604;1439.585,165.496;Inherit;False;600;Color1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;645;-2137.558,-1108.879;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;643;-2136.566,-1485.481;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;651;-2839.232,-1281.605;Inherit;False;Property;_Metallic2;Metallic2;55;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-138.8426,1732.439;Inherit;False;Property;_DetailOcclusionScale;DetailOcclusionScale;42;0;Create;True;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-2862.248,-653.15;Float;False;Property;_EmissionStrength;EmissionStrength;37;0;Create;True;0;0;True;0;False;0;0;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;395;-1950.561,-2129.877;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;23;-134.0945,1408.782;Inherit;True;Property;_OcclusionMap;OcclusionMap;13;1;[NoScaleOffset];Create;True;0;0;True;1;Header(Packed (AO Curvature Tearings));False;-1;None;cc8e1ed2ea6526d428adb797993cfc40;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;55;-140.4857,2205.84;Inherit;False;Property;_DetailOcclusionScale2;DetailOcclusionScale2;43;0;Create;True;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;652;-2833.373,-1179.768;Inherit;False;Property;_Metallic3;Metallic3;56;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;619;-205.4359,-3154.523;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;382;-2109.362,-3495.347;Inherit;True;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;121;-2113.233,-4001.224;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;654;-1949.962,-1000.338;Inherit;False;400;DetailMainTexR;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;653;-2832.415,-1074.565;Inherit;False;Property;_Metallic4;Metallic4;57;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;396;-1943.952,-1772.196;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;628;-168.5682,-2884.184;Inherit;True;Property;_ColorRamp;ColorRamp;11;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;750ded71dcdc1ea4d95922cab689d3af;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;569;-2642.892,-832.5579;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;398;-1928.812,-1176.848;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;381;-2105.285,-3737.257;Inherit;True;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;593;961.5254,678.4749;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;438;166.1334,1894.097;Inherit;False;434;DetailTex1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;163.3224,2228.902;Inherit;False;435;DetailTex2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;384;-2104.056,-3034.952;Inherit;True;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;383;-2106.562,-3269.67;Inherit;True;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;644;-2134.92,-1299.191;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;641;-1588.024,-1113.91;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;165;-1792.366,-3194.998;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;145;-1789.554,-3978.044;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;573;-2397.998,-827.1492;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;640;-1587.269,-1309.337;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;457;567.5166,1805.61;Inherit;True;3;0;FLOAT3;1,1,1;False;1;FLOAT3;1,1,1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;620;171.5506,-2977.127;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;621;-119.6581,-2664.454;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;611;-2137.843,-483.5165;Inherit;False;588;EC3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;124;-1792.323,-3456.544;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;462;543.9326,2167.591;Inherit;True;3;0;FLOAT3;1,1,1;False;1;FLOAT3;1,1,1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;442;161.9729,1987.513;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;602;1851.996,210.2815;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;273;-644.0839,-4057.579;Inherit;False;1472.836;557.9236;Comment;7;487;424;421;419;43;406;427;Alpha;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;594;1186.619,685.9801;Inherit;False;EC2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;638;-1587.648,-1663.247;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;123;-1795.459,-3717.058;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;405;372.2235,1697.638;Inherit;False;TearingsMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;156.5672,2344.415;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;639;-1588.926,-1498.732;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;43;-612.8152,-3822.152;Inherit;False;Property;_AlphaEx;AlphaEx;31;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;623;349.3536,-3070.24;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;564;-2154.586,-632.4284;Inherit;False;Property;_EmissionColor3;Color3 is Emissive;40;0;Create;False;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;612;-1877.851,-479.8448;Inherit;False;594;EC2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;533;-2474.024,-1818.33;Inherit;False;Property;_Roughness4;Roughness4;53;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;558;-142.2109,1852.908;Inherit;False;Property;_DetailOcclusionContrast;DetailOcclusionContrast;44;0;Create;True;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-2471.992,-2125.807;Inherit;False;Property;_Roughness2;Roughness2;51;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;637;-1316.325,-1428.505;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;552;856.9913,2172.612;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;406;-606.086,-3632.065;Inherit;False;405;TearingsMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;546;842.5101,1802.849;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;532;-2476.498,-1962.575;Inherit;False;Property;_Roughness3;Roughness3;52;0;Create;True;0;0;True;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;393;-2538.67,-1560.561;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;563;-140.3335,2079.135;Inherit;False;Property;_DetailOcclusionContrast2;DetailOcclusionContrast2;45;0;Create;True;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;622;341.4206,-3180.958;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;401;-3892.437,-3568.226;Inherit;False;DetailMainTexB;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;525;-2471.729,-2343.355;Inherit;False;Property;_Roughness;Roughness;50;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;166;-1450.212,-3583.22;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;603;1996.344,206.0844;Inherit;False;EC1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;624;505.4969,-3083.903;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleContrastOpNode;562;1108.492,2077.805;Inherit;True;2;1;COLOR;0,0,0,0;False;0;FLOAT;1.5;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;614;241.4907,-2669.631;Inherit;False;Property;_IriBrightness;IriBrightness;64;0;Create;True;0;0;True;0;False;0.6471324;0.6471324;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;570;-2535.578,-1015.803;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;617;241.4907,-2845.631;Inherit;False;Property;_IriHue;IriHue;62;0;Create;True;0;0;True;1;Header (Iridescence);False;0.5064838;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;529;-2141.613,-2226.646;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;419;-303.5581,-3729.764;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;531;-2140.954,-2052.27;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleContrastOpNode;557;1091.969,1769.232;Inherit;True;2;1;COLOR;0,0,0,0;False;0;FLOAT;1.5;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-1599.516,-479.524;Inherit;False;603;EC1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;636;-1123.865,-1432.044;Inherit;True;MetallicFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;534;-2141.758,-1912.217;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;402;-1949.029,-2272.806;Inherit;False;401;DetailMainTexB;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;189;-2977.565,-2034.867;Inherit;False;Property;_Glossiness4;Glossiness4;49;0;Create;True;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;70;-138.1737,1635.781;Inherit;False;Property;_OcclusionStrength;OcclusionStrength;41;0;Create;True;0;0;False;1;Header (Ambient Occlusion);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;609;-1876.746,-631.7644;Inherit;False;Property;_EmissionColor2;Color2 is Emissive;39;0;Create;False;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;426;-2439.135,-3900.494;Inherit;False;AlphaInput;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;616;241.4907,-2573.631;Inherit;False;Property;_IriContrast;IriContrast;65;0;Create;True;0;0;True;0;False;0.5840003;0.5840003;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;501;-1242.855,-3586.344;Inherit;True;DiffuseMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;615;241.4907,-2765.631;Inherit;False;Property;_IriSaturation;IriSaturation;63;0;Create;True;0;0;True;0;False;0.5688156;0.5688156;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;526;-2150.099,-2379.75;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;193;-1585.302,-1927.868;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;424;126.6994,-3732.877;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;192;-1585.712,-2076.604;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;655;653.2779,-2478.612;Inherit;False;636;MetallicFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;191;-1590.404,-2223.737;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;427;-598.0529,-4004.768;Inherit;False;426;AlphaInput;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;519;503.267,1416.304;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;626;670.6769,-3060.209;Inherit;False;501;DiffuseMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;625;635.3807,-2906.761;Inherit;True;HSBC;-1;;29;00214d7b097fb4242b71bd607065f471;0;5;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;610;-1585.5,-634.2484;Inherit;False;Property;_EmissionColor1;Color1 is Emissive;38;0;Create;False;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;561;1369.13,2094.325;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;394;-2479.954,-941.561;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;560;1352.13,1840.325;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;154;-1593.931,-2372.866;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;194;-1340.215,-2216.972;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;421;432.52,-3874.9;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;627;988.6763,-2945.209;Inherit;True;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;551;1662.332,1434.332;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;88;-1320.967,-952.9504;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;584;-1163.385,-2219.773;Inherit;True;GlossinessFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;580;-1122.051,-956.5845;Inherit;True;EmissionFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;553;1968.335,1432.296;Inherit;False;OcclusionMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;487;598.1962,-3884.781;Inherit;True;AlphaMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;634;1437.894,-2949.883;Inherit;False;Specular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;581;291.1351,-1910.903;Inherit;False;580;EmissionFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;475;2512.524,-4184.594;Inherit;False;Property;_WeatheringRange6;WeatheringRange6;72;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;40;1983.764,-4287.004;Inherit;False;Property;_patternuv2;patternuv2;28;0;Create;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;472;2473.524,-4457.595;Inherit;False;Property;_WeatheringRange3;WeatheringRange3;69;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;473;2505.524,-4368.594;Inherit;False;Property;_WeatheringRange4;WeatheringRange4;70;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;469;2453.254,-4699.942;Inherit;False;Property;_WeatheringAll;WeatheringAll;66;0;Create;True;0;0;True;2;Header (Weathering (NOT WORKING));;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;28;1640.147,-4206.926;Inherit;True;Property;_AlphaMask2;AlphaMask2;17;1;[HideInInspector];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;586;282.2704,-1745.719;Inherit;False;584;GlossinessFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;515;299.9669,-2090.145;Inherit;False;501;DiffuseMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;39;1982.764,-4159.004;Inherit;False;Property;_patternuv1;patternuv1;27;0;Create;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;635;316.6887,-1830.176;Inherit;False;634;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;470;2456.524,-4618.595;Inherit;False;Property;_WeatheringRange1;WeatheringRange1;67;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;474;2502.524,-4275.594;Inherit;False;Property;_WeatheringRange5;WeatheringRange5;71;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;554;300.4991,-1668.844;Inherit;False;553;OcclusionMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;471;2467.524,-4534.595;Inherit;False;Property;_WeatheringRange2;WeatheringRange2;68;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;25;2474.047,-5151.598;Inherit;True;Property;_WeatheringMask;WeatheringMask;15;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;41;1983.764,-4420.005;Inherit;False;Property;_patternuv3;patternuv3;29;0;Create;False;0;0;True;0;False;1,0;1,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;499;301.0743,-2001.078;Inherit;False;496;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;38;2169.152,-4157.412;Inherit;False;Property;_UVScalePattern;UVScalePattern;24;0;Create;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;491;327.9237,-1580.348;Inherit;False;487;AlphaMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;24;2480.593,-4928.179;Inherit;True;Property;_WeatheringMap;WeatheringMap;14;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;42;1981.764,-4550.382;Inherit;False;Property;_patternuvbase;patternuvbase;30;0;Fetch;False;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;29;1642.587,-4420;Inherit;True;Property;_AlphaMask;AlphaMask;16;1;[HideInInspector];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;784.4478,-2110.078;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Clothes True Replica Iridescence;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;True;0;True;Opaque;2600;AlphaTest;All;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;5;False;-1;10;False;-1;0;5;False;-1;10;False;-1;6;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;True;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;239;0;251;0
WireConnection;236;0;326;0
WireConnection;237;0;236;0
WireConnection;237;1;238;0
WireConnection;237;2;239;0
WireConnection;233;0;327;0
WireConnection;241;0;240;0
WireConnection;364;1;357;0
WireConnection;364;2;237;0
WireConnection;367;0;21;2
WireConnection;365;0;364;0
WireConnection;234;0;233;0
WireConnection;234;1;235;0
WireConnection;234;2;241;0
WireConnection;354;1;356;0
WireConnection;354;2;234;0
WireConnection;227;0;365;0
WireConnection;227;1;231;0
WireConnection;227;2;370;0
WireConnection;366;0;21;1
WireConnection;229;0;365;1
WireConnection;229;1;231;0
WireConnection;229;2;370;0
WireConnection;358;0;354;0
WireConnection;228;0;227;0
WireConnection;228;1;229;0
WireConnection;249;0;244;2
WireConnection;249;1;44;0
WireConnection;246;0;244;1
WireConnection;246;1;44;0
WireConnection;225;0;358;1
WireConnection;225;1;222;0
WireConnection;225;2;369;0
WireConnection;224;0;358;0
WireConnection;224;1;222;0
WireConnection;224;2;369;0
WireConnection;516;0;228;0
WireConnection;247;0;246;0
WireConnection;247;1;249;0
WireConnection;243;0;224;0
WireConnection;243;1;225;0
WireConnection;243;2;358;2
WireConnection;517;0;516;0
WireConnection;374;0;243;0
WireConnection;374;1;517;0
WireConnection;518;0;247;0
WireConnection;252;0;518;0
WireConnection;252;1;374;0
WireConnection;566;0;33;0
WireConnection;575;0;188;0
WireConnection;325;0;252;0
WireConnection;496;0;325;0
WireConnection;428;0;357;0
WireConnection;428;1;237;0
WireConnection;429;0;356;0
WireConnection;429;1;234;0
WireConnection;595;0;187;0
WireConnection;565;0;566;0
WireConnection;179;0;113;1
WireConnection;179;1;113;2
WireConnection;179;2;113;3
WireConnection;597;0;31;0
WireConnection;544;0;429;0
WireConnection;180;0;179;0
WireConnection;598;0;597;0
WireConnection;599;0;71;0
WireConnection;545;0;428;0
WireConnection;578;0;576;0
WireConnection;596;0;155;0
WireConnection;434;0;544;0
WireConnection;400;0;343;1
WireConnection;378;0;180;0
WireConnection;435;0;545;0
WireConnection;600;0;599;0
WireConnection;657;0;5;0
WireConnection;631;0;632;0
WireConnection;631;1;633;0
WireConnection;591;0;592;0
WireConnection;574;0;568;0
WireConnection;574;1;578;0
WireConnection;658;0;1;0
WireConnection;376;0;113;2
WireConnection;377;0;113;3
WireConnection;375;0;113;1
WireConnection;588;0;574;0
WireConnection;642;1;15;3
WireConnection;642;2;649;0
WireConnection;601;0;605;0
WireConnection;656;0;160;0
WireConnection;645;1;15;3
WireConnection;645;2;646;0
WireConnection;643;1;15;3
WireConnection;643;2;648;0
WireConnection;619;0;629;0
WireConnection;121;0;658;0
WireConnection;121;1;657;0
WireConnection;628;1;631;0
WireConnection;569;0;37;0
WireConnection;593;0;590;0
WireConnection;593;1;591;0
WireConnection;644;1;15;3
WireConnection;644;2;647;0
WireConnection;641;0;645;0
WireConnection;641;1;653;0
WireConnection;641;2;398;0
WireConnection;641;3;654;0
WireConnection;165;0;656;0
WireConnection;165;1;384;0
WireConnection;165;2;121;0
WireConnection;145;0;121;0
WireConnection;145;1;600;0
WireConnection;145;2;381;0
WireConnection;573;0;569;0
WireConnection;573;1;87;0
WireConnection;640;0;644;0
WireConnection;640;1;652;0
WireConnection;640;2;397;0
WireConnection;640;3;654;0
WireConnection;457;1;438;0
WireConnection;457;2;54;0
WireConnection;620;0;619;0
WireConnection;621;0;628;0
WireConnection;124;0;565;0
WireConnection;124;1;383;0
WireConnection;124;2;121;0
WireConnection;462;1;439;0
WireConnection;462;2;55;0
WireConnection;602;0;604;0
WireConnection;602;1;601;0
WireConnection;594;0;593;0
WireConnection;638;0;642;0
WireConnection;638;1;650;0
WireConnection;638;2;395;0
WireConnection;638;3;654;0
WireConnection;123;0;598;0
WireConnection;123;1;382;0
WireConnection;123;2;121;0
WireConnection;405;0;23;3
WireConnection;639;0;643;0
WireConnection;639;1;651;0
WireConnection;639;2;396;0
WireConnection;639;3;654;0
WireConnection;623;0;621;0
WireConnection;623;1;620;0
WireConnection;564;1;573;0
WireConnection;564;0;611;0
WireConnection;637;0;638;0
WireConnection;637;1;639;0
WireConnection;637;2;640;0
WireConnection;637;3;641;0
WireConnection;552;0;462;0
WireConnection;552;1;441;0
WireConnection;546;0;457;0
WireConnection;546;1;442;0
WireConnection;393;0;15;2
WireConnection;622;0;621;0
WireConnection;622;1;619;0
WireConnection;401;0;343;3
WireConnection;166;0;145;0
WireConnection;166;1;123;0
WireConnection;166;2;124;0
WireConnection;166;3;165;0
WireConnection;603;0;602;0
WireConnection;624;0;622;0
WireConnection;624;1;623;0
WireConnection;562;1;552;0
WireConnection;562;0;563;0
WireConnection;570;0;393;0
WireConnection;529;1;15;1
WireConnection;529;2;530;0
WireConnection;419;0;43;0
WireConnection;419;1;406;0
WireConnection;531;1;15;1
WireConnection;531;2;532;0
WireConnection;557;1;546;0
WireConnection;557;0;558;0
WireConnection;636;0;637;0
WireConnection;534;1;15;1
WireConnection;534;2;533;0
WireConnection;609;1;564;0
WireConnection;609;0;612;0
WireConnection;426;0;1;4
WireConnection;501;0;166;0
WireConnection;526;1;15;1
WireConnection;526;2;525;0
WireConnection;193;0;534;0
WireConnection;193;1;189;0
WireConnection;193;2;398;0
WireConnection;193;3;402;0
WireConnection;424;0;419;0
WireConnection;192;0;531;0
WireConnection;192;1;575;0
WireConnection;192;2;397;0
WireConnection;192;3;402;0
WireConnection;191;0;529;0
WireConnection;191;1;595;0
WireConnection;191;2;396;0
WireConnection;191;3;402;0
WireConnection;519;1;23;1
WireConnection;519;2;70;0
WireConnection;625;1;624;0
WireConnection;625;2;617;0
WireConnection;625;3;615;0
WireConnection;625;4;614;0
WireConnection;625;5;616;0
WireConnection;610;1;609;0
WireConnection;610;0;613;0
WireConnection;561;0;562;0
WireConnection;394;0;570;0
WireConnection;560;0;557;0
WireConnection;154;0;526;0
WireConnection;154;1;596;0
WireConnection;154;2;395;0
WireConnection;154;3;402;0
WireConnection;194;0;154;0
WireConnection;194;1;191;0
WireConnection;194;2;192;0
WireConnection;194;3;193;0
WireConnection;421;0;427;0
WireConnection;421;1;424;0
WireConnection;627;0;626;0
WireConnection;627;1;625;0
WireConnection;627;2;655;0
WireConnection;551;0;560;0
WireConnection;551;1;561;0
WireConnection;551;2;519;0
WireConnection;88;0;394;0
WireConnection;88;1;610;0
WireConnection;584;0;194;0
WireConnection;580;0;88;0
WireConnection;553;0;551;0
WireConnection;487;0;421;0
WireConnection;634;0;627;0
WireConnection;0;0;515;0
WireConnection;0;1;499;0
WireConnection;0;2;581;0
WireConnection;0;3;635;0
WireConnection;0;4;586;0
WireConnection;0;5;554;0
WireConnection;0;10;491;0
ASEEND*/
//CHKSM=A1376965EA0F39345E67CCADB7B883715E634F83
