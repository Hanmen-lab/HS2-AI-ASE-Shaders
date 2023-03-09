// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Iridescent Specular Item Alpha"
{
	Properties
	{
		[Header(Iridescence)][NoScaleOffset]_ColorRamp("ColorRamp", 2D) = "white" {}
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1)]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header (Detail2)]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
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
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Translucency)]
		_Translucency("Strength", Range( 0 , 50)) = 1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0.1
		_TransScattering("Scaterring Falloff", Range( 1 , 50)) = 2
		_TransDirect("Direct", Range( 0 , 1)) = 1
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.2
		_TransShadow("Shadow", Range( 0 , 1)) = 0.9
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.1
		[Header(Blending Options)][IntRange]_BlendSCR("BlendSCR", Range( 1 , 11)) = 5
		[IntRange]_BlendDST("BlendDST", Range( 1 , 11)) = 11
		[Header(Depth Setting)][Toggle]_ZWrite("ZWrite", Range( 0 , 1)) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		ZWrite [_ZWrite]
		ZTest LEqual
		Blend [_BlendSCR] [_BlendDST]
		
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR4_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
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

		uniform float _WetnessPower;
		uniform float4 _Color2;
		uniform float4 _Color3;
		uniform float4 _Color4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_TextureSample20;
		uniform float _ExGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float4 _Color;
		uniform float _Roughness3;
		uniform float _Metallic;
		uniform float _Metallic3;
		uniform float _EmissionStrength;
		uniform float _Metallic2;
		uniform float _DetailUV2Rotator;
		uniform float _DetailGlossScale;
		uniform float _WetAlbedoOffset;
		uniform float _Float0;
		uniform float _DetailNormalMapScale2;
		uniform float2 _DetailUV2;
		uniform float _DetailGlossScale2;
		uniform float4 _BaseColor;
		uniform float _CarvatureStrength;
		uniform float _MetallicMask;
		uniform float _DetailMetallicScale2;
		uniform float _Glossiness2;
		uniform float _Roughness2;
		uniform float _MetallicMask2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _Glossiness3;
		uniform float _Roughness;
		uniform float _MetallicMask3;
		uniform float _Glossiness;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		SamplerState sampler_MetallicGlossMap;
		uniform float2 _DetailUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _Metallic4;
		uniform float _DetailNormalMapScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _TransmissionStrength;
		uniform float4 _EmissionColor;
		uniform float _DetailMetallicScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorRamp);
		SamplerState sampler_ColorRamp;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriBrightness;
		uniform float _IriHue;
		uniform float _CullMode;
		uniform half _ZWrite;
		uniform float _BlendSCR;
		uniform float _BlendDST;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		uniform float _MetallicMask4;
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
		uniform float _Cutoff;

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
			float2 uv_BumpMap180_g2 = i.uv_texcoord;
			float2 uv_TexCoord76_g2 = i.uv_texcoord * _DetailUV;
			float cos78_g2 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin78_g2 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator78_g2 = mul( uv_TexCoord76_g2 - float2( 0.5,0.5 ) , float2x2( cos78_g2 , -sin78_g2 , sin78_g2 , cos78_g2 )) + float2( 0.5,0.5 );
			float2 Detail1UV79_g2 = rotator78_g2;
			float2 break13_g2 = Detail1UV79_g2;
			float temp_output_14_0_g2 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult24_g2 = (float2(( break13_g2.x + temp_output_14_0_g2 ) , break13_g2.y));
			float4 tex2DNode85_g2 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g2 );
			float2 uv_DetailMask81_g2 = i.uv_texcoord;
			float4 tex2DNode81_g2 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g2 );
			float DetailMask183_g2 = tex2DNode81_g2.r;
			float temp_output_42_0_g2 = ( DetailMask183_g2 * _DetailNormalMapScale );
			float3 appendResult56_g2 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g2 ).g - tex2DNode85_g2.g ) * temp_output_42_0_g2 )));
			float2 appendResult27_g2 = (float2(break13_g2.x , ( break13_g2.y + temp_output_14_0_g2 )));
			float3 appendResult58_g2 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g2 ).g - tex2DNode85_g2.g ) * temp_output_42_0_g2 )));
			float3 normalizeResult66_g2 = normalize( cross( appendResult56_g2 , appendResult58_g2 ) );
			float3 DetailNormal171_g2 = normalizeResult66_g2;
			float2 uv_TexCoord7_g2 = i.uv_texcoord * _DetailUV2;
			float cos10_g2 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin10_g2 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator10_g2 = mul( uv_TexCoord7_g2 - float2( 0.5,0.5 ) , float2x2( cos10_g2 , -sin10_g2 , sin10_g2 , cos10_g2 )) + float2( 0.5,0.5 );
			float2 Detail2UV12_g2 = rotator10_g2;
			float2 break20_g2 = Detail2UV12_g2;
			float temp_output_21_0_g2 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult32_g2 = (float2(( break20_g2.x + temp_output_21_0_g2 ) , break20_g2.y));
			float4 tex2DNode41_g2 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g2 );
			float DetailMask284_g2 = tex2DNode81_g2.g;
			float temp_output_49_0_g2 = ( DetailMask284_g2 * _DetailNormalMapScale2 );
			float3 appendResult63_g2 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g2 ).g - tex2DNode41_g2.g ) * temp_output_49_0_g2 )));
			float2 appendResult31_g2 = (float2(break20_g2.x , ( break20_g2.y + temp_output_21_0_g2 )));
			float3 appendResult64_g2 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g2 ).g - tex2DNode41_g2.g ) * temp_output_49_0_g2 )));
			float3 normalizeResult70_g2 = normalize( cross( appendResult63_g2 , appendResult64_g2 ) );
			float3 DetailNormal272_g2 = normalizeResult70_g2;
			float3 normalizeResult262_g2 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g2 ), _Float0 ) , DetailNormal171_g2 ) , DetailNormal272_g2 ) );
			float3 switchResult303_g2 = (((i.ASEVFace>0)?(normalizeResult262_g2):(-normalizeResult262_g2)));
			float3 NormalMix321_g2 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g2 : normalizeResult262_g2 );
			float3 temp_output_1418_342 = NormalMix321_g2;
			o.Normal = temp_output_1418_342;
			float2 uv_MainTex119_g2 = i.uv_texcoord;
			float4 tex2DNode119_g2 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g2 );
			float3 temp_output_206_0_g2 = ( (tex2DNode119_g2).rgb * (_BaseColor).rgb );
			float3 Color1128_g2 = (_Color).rgb;
			float2 uv_ColorMask86_g2 = i.uv_texcoord;
			float4 tex2DNode86_g2 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g2 );
			float ColorMask199_g2 = ( 1.0 - ( tex2DNode86_g2.r + tex2DNode86_g2.g + tex2DNode86_g2.b ) );
			float3 Color2121_g2 = (_Color2).rgb;
			float ColorMask296_g2 = tex2DNode86_g2.r;
			float3 Color3123_g2 = (_Color3).rgb;
			float ColorMask3102_g2 = tex2DNode86_g2.g;
			float3 Color4136_g2 = (_Color4).rgb;
			float ColorMask494_g2 = tex2DNode86_g2.b;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap186_g2 = i.uv_texcoord;
			float Carvature197_g2 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g2 ).r;
			float3 lerpResult289_g2 = lerp( ( ( temp_output_206_0_g2 * Color1128_g2 * ColorMask199_g2 ) + ( Color2121_g2 * ColorMask296_g2 * temp_output_206_0_g2 ) + ( Color3123_g2 * ColorMask3102_g2 * temp_output_206_0_g2 ) + ( Color4136_g2 * ColorMask494_g2 * temp_output_206_0_g2 ) ) , temp_cast_0 , ( Carvature197_g2 * _CarvatureStrength ));
			float ExGloss255_g2 = _ExGloss;
			float3 lerpResult313_g2 = lerp( lerpResult289_g2 , ( lerpResult289_g2 * _WetAlbedoOffset ) , ExGloss255_g2);
			float3 DiffuseMix326_g2 = lerpResult313_g2;
			float3 temp_output_1418_345 = DiffuseMix326_g2;
			o.Albedo = temp_output_1418_345;
			float2 uv_MetallicGlossMap139_g2 = i.uv_texcoord;
			float4 tex2DNode139_g2 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g2 );
			float3 EC3204_g2 = ( Color3123_g2 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch271_g2 = EC3204_g2;
			#else
				float3 staticSwitch271_g2 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float3 EC2238_g2 = ( Color2121_g2 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch294_g2 = EC2238_g2;
			#else
				float3 staticSwitch294_g2 = staticSwitch271_g2;
			#endif
			float3 EC1269_g2 = ( Color1128_g2 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch308_g2 = EC1269_g2;
			#else
				float3 staticSwitch308_g2 = staticSwitch294_g2;
			#endif
			float3 EmissionFinal324_g2 = ( tex2DNode139_g2.g * staticSwitch308_g2 );
			o.Emission = EmissionFinal324_g2;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float dotResult7_g3 = dot( ase_tanViewDir , temp_output_1418_342 );
			float2 temp_cast_1 = (dotResult7_g3).xx;
			float3 temp_output_12_0_g3 = (SAMPLE_TEXTURE2D( _ColorRamp, sampler_ColorRamp, temp_cast_1 )).rgb;
			float temp_output_10_0_g3 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g3 = cos( temp_output_10_0_g3 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g3 = dot( _k7 , temp_output_12_0_g3 );
			float3 temp_output_32_0_g3 = ( ( ( ( ( ( temp_output_12_0_g3 * temp_output_13_0_g3 ) + ( cross( _k7 , temp_output_12_0_g3 ) * sin( temp_output_10_0_g3 ) ) + ( _k7 * dotResult14_g3 * ( 1.0 - temp_output_13_0_g3 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g3 = dot( temp_output_32_0_g3 , float3(0.39,0.59,0.11) );
			float3 temp_cast_2 = (dotResult34_g3).xxx;
			float3 lerpResult35_g3 = lerp( temp_cast_2 , temp_output_32_0_g3 , ( _IriSaturation * 2.0 ));
			float3 blendOpSrc1414 = lerpResult35_g3;
			float3 blendOpDest1414 = temp_output_1418_345;
			float lerpResult167_g2 = lerp( 1.0 , tex2DNode139_g2.b , _MetallicMask);
			float lerpResult193_g2 = lerp( 1.0 , tex2DNode139_g2.b , _MetallicMask2);
			float lerpResult181_g2 = lerp( 1.0 , tex2DNode139_g2.b , _MetallicMask3);
			float lerpResult208_g2 = lerp( 1.0 , tex2DNode139_g2.b , _MetallicMask4);
			float lerpResult281_g2 = lerp( ( ( lerpResult167_g2 * _Metallic * ColorMask199_g2 ) + ( lerpResult193_g2 * _Metallic2 * ColorMask296_g2 ) + ( lerpResult181_g2 * _Metallic3 * ColorMask3102_g2 ) ) , ( lerpResult208_g2 * _Metallic4 ) , ColorMask494_g2);
			float Detail1148_g2 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g2 ).r;
			float Detail2194_g2 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g2 ).r;
			float MetallicFinal328_g2 = saturate( ( ( lerpResult281_g2 - ( ( 1.0 - Detail1148_g2 ) * ( _DetailMetallicScale * DetailMask183_g2 ) ) ) - ( ( 1.0 - Detail2194_g2 ) * ( _DetailMetallicScale2 * DetailMask284_g2 ) ) ) );
			float temp_output_1418_340 = MetallicFinal328_g2;
			float3 lerpBlendMode1414 = lerp(blendOpDest1414,( blendOpSrc1414 * blendOpDest1414 ),temp_output_1418_340);
			half3 specColor1415 = (0).xxx;
			half oneMinusReflectivity1415 = 0;
			half3 diffuseAndSpecularFromMetallic1415 = DiffuseAndSpecularFromMetallic(( saturate( lerpBlendMode1414 )),temp_output_1418_340,specColor1415,oneMinusReflectivity1415);
			o.Specular = specColor1415;
			float lerpResult143_g2 = lerp( 1.0 , tex2DNode139_g2.r , _Roughness);
			float Glossiness1153_g2 = _Glossiness;
			float lerpResult158_g2 = lerp( 1.0 , tex2DNode139_g2.r , _Roughness2);
			float Glossiness2152_g2 = _Glossiness2;
			float lerpResult157_g2 = lerp( 1.0 , tex2DNode139_g2.r , _Roughness3);
			float Glossiness3154_g2 = _Glossiness3;
			float lerpResult187_g2 = lerp( 1.0 , tex2DNode139_g2.r , _Roughness4);
			float lerpResult230_g2 = lerp( ( ( lerpResult143_g2 * Glossiness1153_g2 * ColorMask199_g2 ) + ( lerpResult158_g2 * Glossiness2152_g2 * ColorMask296_g2 ) + ( lerpResult157_g2 * Glossiness3154_g2 * ColorMask3102_g2 ) ) , ( _Glossiness4 * lerpResult187_g2 ) , ColorMask494_g2);
			float lerpResult305_g2 = lerp( ( ( lerpResult230_g2 - ( ( 1.0 - Detail1148_g2 ) * ( _DetailGlossScale * DetailMask183_g2 ) ) ) - ( ( 1.0 - Detail2194_g2 ) * ( _DetailGlossScale2 * DetailMask284_g2 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g2 ));
			float GlossinessFinal327_g2 = saturate( lerpResult305_g2 );
			o.Smoothness = GlossinessFinal327_g2;
			float2 uv_OcclusionMap259_g2 = i.uv_texcoord;
			float lerpResult298_g2 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g2 ).g , _OcculusionStrength);
			float smoothstepResult266_g2 = smoothstep( 0.0 , 0.8 , Detail1148_g2);
			float lerpResult297_g2 = lerp( 1.0 , smoothstepResult266_g2 , ( _DetailOcculusionScale * DetailMask183_g2 ));
			float smoothstepResult274_g2 = smoothstep( 0.0 , 0.8 , Detail2194_g2);
			float lerpResult299_g2 = lerp( 1.0 , smoothstepResult274_g2 , ( _DetailOcculusionScale2 * DetailMask284_g2 ));
			float OcclusionMix323_g2 = saturate( ( lerpResult298_g2 * lerpResult297_g2 * lerpResult299_g2 ) );
			o.Occlusion = OcclusionMix323_g2;
			float3 temp_cast_3 = (_TransmissionStrength).xxx;
			o.Transmission = temp_cast_3;
			float3 temp_cast_4 = (saturate( _Translucency )).xxx;
			o.Translucency = temp_cast_4;
			float AlphaInput137_g2 = tex2DNode119_g2.a;
			float Color1Alpha101_g2 = _Color.a;
			float Color2Alpha97_g2 = _Color2.a;
			float Color3Alpha98_g2 = _Color3.a;
			float Color4Alpha100_g2 = _Color4.a;
			o.Alpha = saturate( ( AlphaInput137_g2 * ( ( Color1Alpha101_g2 * ColorMask199_g2 ) + ( Color2Alpha97_g2 * ColorMask296_g2 ) + ( Color3Alpha98_g2 * ColorMask3102_g2 ) + ( Color4Alpha100_g2 * ColorMask494_g2 ) ) ) );
			clip( AlphaInput137_g2 - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardSpecularCustom keepalpha fullforwardshadows exclude_path:deferred 

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
				SurfaceOutputStandardSpecularCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecularCustom, o )
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
129.2;0.4;1230;884;5778.871;3481.623;2.453185;True;False
Node;AmplifyShaderEditor.FunctionNode;1418;-4959.902,-2610.021;Inherit;False;AIT Item Alpha Function;6;;2;a30aeebcf908255408b5738a06ef06df;0;0;10;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;346;FLOAT;351;FLOAT;347;FLOAT;348;FLOAT;344
Node;AmplifyShaderEditor.FunctionNode;1411;-4677.742,-3033.657;Inherit;False;Iridiscence;0;;3;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1414;-4328.441,-3044.044;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1415;-4036.794,-3040.126;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1420;-3709.972,-2127.508;Inherit;False;Property;_Cutoff;Cutoff;70;1;[Header];Fetch;True;1;Cutout Setting;0;0;True;0;False;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-3709.216,-2039.764;Inherit;False;Property;_CullMode;CullMode;62;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1423;-3710.832,-1956.472;Inherit;False;Property;_BlendSCR;BlendSCR;71;2;[Header];[IntRange];Create;True;1;Blending Options;0;0;True;0;False;5;5;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1422;-3703.677,-1867.209;Inherit;False;Property;_BlendDST;BlendDST;72;1;[IntRange];Create;True;0;0;0;True;0;False;11;11;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1421;-3706.178,-1770.648;Half;False;Property;_ZWrite;ZWrite;73;2;[Header];[Toggle];Create;True;1;Depth Setting;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;-3665.885,-2622.859;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Iridescent Specular Item Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;2;True;1421;3;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.1;True;True;0;True;Transparent;2600;Transparent;ForwardOnly;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;True;1423;10;True;1422;0;5;False;-1;8;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;63;-1;-1;0;False;0;0;True;1344;-1;0;True;1420;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1411;1;1418;342
WireConnection;1414;0;1411;0
WireConnection;1414;1;1418;345
WireConnection;1414;2;1418;340
WireConnection;1415;0;1414;0
WireConnection;1415;1;1418;340
WireConnection;0;0;1418;345
WireConnection;0;1;1418;342
WireConnection;0;2;1418;341
WireConnection;0;3;1415;1
WireConnection;0;4;1418;0
WireConnection;0;5;1418;346
WireConnection;0;6;1418;351
WireConnection;0;7;1418;347
WireConnection;0;9;1418;348
WireConnection;0;10;1418;344
ASEEND*/
//CHKSM=E0D8A944FE1288FA5EEC5668A57DEC1C9BAC57DD