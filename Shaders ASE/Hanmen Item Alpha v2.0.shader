// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Alpha"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
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
		_DetailGlossScale1("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale3("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 1
		[Header (Color Mask Required (Optional))][Toggle(_EMISSIONCOLOR1_ON)] _EmissionColor1("Color1 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR2_ON)] _EmissionColor2("Color2 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR3_ON)] _EmissionColor3("Color3 is Emissive", Float) = 0
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
		[Header(Translucency)]
		_Translucency("Strength", Range( 0 , 50)) = 1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0.1
		_TransScattering("Scaterring Falloff", Range( 1 , 50)) = 2
		_TransDirect("Direct", Range( 0 , 1)) = 1
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.2
		_TransShadow("Shadow", Range( 0 , 1)) = 0.9
		[HideInInspector]_Translucency("Translucency", Range( 0 , 50)) = 1
		[Header(Blending Options)][IntRange]_BlendSCR("BlendSCR", Range( 1 , 11)) = 5
		[IntRange]_BlendDST("BlendDST", Range( 1 , 11)) = 11
		[Header(Depth Setting)][Toggle]_ZWrite("ZWrite", Range( 0 , 1)) = 1
		[Header(Alpha to coverage)][Toggle]_AlphaToMask("AlphaToMask", Range( 0 , 1)) = 0
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
		
		AlphaToMask [_AlphaToMask]
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR1_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#endif//ASE Sampling Macros

		struct Input
		{
			float2 uv_texcoord;
			half ASEVFace : VFACE;
		};

		struct SurfaceOutputStandardCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			half3 Translucency;
		};

		uniform half _ZWrite;
		uniform float _BlendSCR;
		uniform float _AlphaToMask;
		uniform float _BlendDST;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _CullMode;
		uniform float _Float0;
		uniform float2 _DetailUV;
		uniform float _DetailUVRotator;
		SamplerState sampler_trilinear_repeat;
		uniform float _DetailNormalMapScale;
		uniform float2 _DetailUV2;
		uniform float _DetailUV2Rotator;
		uniform float _DetailNormalMapScale2;
		uniform float4 _BaseColor;
		uniform float4 _Color;
		uniform float4 _Color2;
		uniform float4 _Color3;
		uniform float4 _Color4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _CarvatureStrength;
		uniform float _WetAlbedoOffset;
		uniform float _ExGloss;
		uniform float4 _EmissionColor;
		uniform float _EmissionStrength;
		uniform float _MetallicMask;
		uniform float _Metallic;
		uniform float _MetallicMask2;
		uniform float _Metallic2;
		uniform float _MetallicMask3;
		uniform float _Metallic3;
		uniform float _MetallicMask4;
		uniform float _Metallic4;
		uniform float _DetailMetallicScale;
		uniform float _DetailMetallicScale2;
		uniform float _Roughness;
		uniform float _Glossiness;
		uniform float _Roughness2;
		uniform float _Glossiness2;
		uniform float _Roughness3;
		uniform float _Glossiness3;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _DetailGlossScale1;
		uniform float _DetailGlossScale3;
		uniform float _WetnessPower;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		uniform half _Translucency;
		uniform half _TransNormalDistortion;
		uniform half _TransScattering;
		uniform half _TransDirect;
		uniform half _TransAmbient;
		uniform half _TransShadow;

		inline half4 LightingStandardCustom(SurfaceOutputStandardCustom s, half3 viewDir, UnityGI gi )
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

			SurfaceOutputStandard r;
			r.Albedo = s.Albedo;
			r.Normal = s.Normal;
			r.Emission = s.Emission;
			r.Metallic = s.Metallic;
			r.Smoothness = s.Smoothness;
			r.Occlusion = s.Occlusion;
			r.Alpha = s.Alpha;
			return LightingStandard (r, viewDir, gi) + c;
		}

		inline void LightingStandardCustom_GI(SurfaceOutputStandardCustom s, UnityGIInput data, inout UnityGI gi )
		{
			#if defined(UNITY_PASS_DEFERRED) && UNITY_ENABLE_REFLECTION_BUFFERS
				gi = UnityGlobalIllumination(data, s.Occlusion, s.Normal);
			#else
				UNITY_GLOSSY_ENV_FROM_SURFACE( g, s, data );
				gi = UnityGlobalIllumination( data, s.Occlusion, s.Normal, g );
			#endif
		}

		void surf( Input i , inout SurfaceOutputStandardCustom o )
		{
			float2 uv_BumpMap1179 = i.uv_texcoord;
			float2 uv_TexCoord233 = i.uv_texcoord * _DetailUV;
			float cos234 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin234 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator234 = mul( uv_TexCoord233 - float2( 0.5,0.5 ) , float2x2( cos234 , -sin234 , sin234 , cos234 )) + float2( 0.5,0.5 );
			float2 Detail1UV785 = rotator234;
			float2 break753 = Detail1UV785;
			float temp_output_747_0 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult756 = (float2(( break753.x + temp_output_747_0 ) , break753.y));
			float4 tex2DNode743 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV785 );
			float2 uv_DetailMask1182 = i.uv_texcoord;
			float4 tex2DNode1182 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask1182 );
			float DetailMask1366 = tex2DNode1182.r;
			float temp_output_733_0 = ( DetailMask1366 * _DetailNormalMapScale );
			float3 appendResult745 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult756 ).g - tex2DNode743.g ) * temp_output_733_0 )));
			float2 appendResult748 = (float2(break753.x , ( break753.y + temp_output_747_0 )));
			float3 appendResult752 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult748 ).g - tex2DNode743.g ) * temp_output_733_0 )));
			float3 normalizeResult755 = normalize( cross( appendResult745 , appendResult752 ) );
			float3 DetailNormal1836 = normalizeResult755;
			float2 uv_TexCoord236 = i.uv_texcoord * _DetailUV2;
			float cos237 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin237 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator237 = mul( uv_TexCoord236 - float2( 0.5,0.5 ) , float2x2( cos237 , -sin237 , sin237 , cos237 )) + float2( 0.5,0.5 );
			float2 Detail2UV786 = rotator237;
			float2 break763 = Detail2UV786;
			float temp_output_762_0 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult767 = (float2(( break763.x + temp_output_762_0 ) , break763.y));
			float4 tex2DNode770 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV786 );
			float DetailMask2367 = tex2DNode1182.g;
			float temp_output_734_0 = ( DetailMask2367 * _DetailNormalMapScale2 );
			float3 appendResult776 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult767 ).g - tex2DNode770.g ) * temp_output_734_0 )));
			float2 appendResult766 = (float2(break763.x , ( break763.y + temp_output_762_0 )));
			float3 appendResult775 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult766 ).g - tex2DNode770.g ) * temp_output_734_0 )));
			float3 normalizeResult778 = normalize( cross( appendResult776 , appendResult775 ) );
			float3 DetailNormal2837 = normalizeResult778;
			float3 NormalMix496 = BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap1179 ), _Float0 ) , DetailNormal1836 ) , DetailNormal2837 );
			float3 normalizeResult1392 = normalize( NormalMix496 );
			float3 switchResult1395 = (((i.ASEVFace>0)?(normalizeResult1392):(-normalizeResult1392)));
			o.Normal = switchResult1395;
			float2 uv_MainTex1185 = i.uv_texcoord;
			float4 tex2DNode1185 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex1185 );
			float3 temp_output_1273_0 = ( (tex2DNode1185).rgb * (_BaseColor).rgb );
			float3 Color11267 = (_Color).rgb;
			float2 uv_ColorMask1183 = i.uv_texcoord;
			float4 tex2DNode1183 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask1183 );
			float ColorMask1378 = ( 1.0 - ( tex2DNode1183.r + tex2DNode1183.g + tex2DNode1183.b ) );
			float3 Color21265 = (_Color2).rgb;
			float ColorMask2375 = tex2DNode1183.r;
			float3 Color31262 = (_Color3).rgb;
			float ColorMask3376 = tex2DNode1183.g;
			float3 Color41270 = (_Color4).rgb;
			float ColorMask4377 = tex2DNode1183.b;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap23 = i.uv_texcoord;
			float Carvature1330 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap23 ).r;
			float3 lerpResult1325 = lerp( ( ( temp_output_1273_0 * Color11267 * ColorMask1378 ) + ( Color21265 * ColorMask2375 * temp_output_1273_0 ) + ( Color31262 * ColorMask3376 * temp_output_1273_0 ) + ( Color41270 * ColorMask4377 * temp_output_1273_0 ) ) , temp_cast_0 , ( Carvature1330 * _CarvatureStrength ));
			float ExGloss1334 = _ExGloss;
			float3 lerpResult1331 = lerp( lerpResult1325 , ( lerpResult1325 * _WetAlbedoOffset ) , ExGloss1334);
			float3 DiffuseMix501 = lerpResult1331;
			o.Albedo = DiffuseMix501;
			float2 uv_MetallicGlossMap1239 = i.uv_texcoord;
			float4 tex2DNode1239 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap1239 );
			float3 EC3588 = ( Color31262 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch564 = EC3588;
			#else
				float3 staticSwitch564 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float3 EC2594 = ( Color21265 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch609 = EC2594;
			#else
				float3 staticSwitch609 = staticSwitch564;
			#endif
			float3 EC1603 = ( Color11267 * _EmissionStrength );
			#ifdef _EMISSIONCOLOR1_ON
				float3 staticSwitch610 = EC1603;
			#else
				float3 staticSwitch610 = staticSwitch609;
			#endif
			float3 EmissionFinal580 = ( tex2DNode1239.g * staticSwitch610 );
			o.Emission = EmissionFinal580;
			float lerpResult1223 = lerp( 1.0 , tex2DNode1239.b , _MetallicMask);
			float lerpResult1219 = lerp( 1.0 , tex2DNode1239.b , _MetallicMask2);
			float lerpResult1224 = lerp( 1.0 , tex2DNode1239.b , _MetallicMask3);
			float lerpResult1229 = lerp( 1.0 , tex2DNode1239.b , _MetallicMask4);
			float lerpResult1235 = lerp( ( ( lerpResult1223 * _Metallic * ColorMask1378 ) + ( lerpResult1219 * _Metallic2 * ColorMask2375 ) + ( lerpResult1224 * _Metallic3 * ColorMask3376 ) ) , ( lerpResult1229 * _Metallic4 ) , ColorMask4377);
			float Detail11361 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV785 ).r;
			float Detail21362 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV786 ).r;
			float clampResult1380 = clamp( ( ( lerpResult1235 - ( ( 1.0 - Detail11361 ) * ( _DetailMetallicScale * DetailMask1366 ) ) ) - ( ( 1.0 - Detail21362 ) * ( _DetailMetallicScale2 * DetailMask2367 ) ) ) , 0.0 , 1.0 );
			float MetallicFinal636 = clampResult1380;
			o.Metallic = MetallicFinal636;
			float lerpResult1213 = lerp( 1.0 , tex2DNode1239.r , _Roughness);
			float Glossiness11205 = _Glossiness;
			float lerpResult1212 = lerp( 1.0 , tex2DNode1239.r , _Roughness2);
			float Glossiness21204 = _Glossiness2;
			float lerpResult1214 = lerp( 1.0 , tex2DNode1239.r , _Roughness3);
			float Glossiness31203 = _Glossiness3;
			float lerpResult1217 = lerp( 1.0 , tex2DNode1239.r , _Roughness4);
			float lerpResult1248 = lerp( ( ( lerpResult1213 * Glossiness11205 * ColorMask1378 ) + ( lerpResult1212 * Glossiness21204 * ColorMask2375 ) + ( lerpResult1214 * Glossiness31203 * ColorMask3376 ) ) , ( _Glossiness4 * lerpResult1217 ) , ColorMask4377);
			float lerpResult1343 = lerp( ( ( lerpResult1248 - ( ( 1.0 - Detail11361 ) * ( _DetailGlossScale1 * DetailMask1366 ) ) ) - ( ( 1.0 - Detail21362 ) * ( _DetailGlossScale3 * DetailMask2367 ) ) ) , 1.0 , ( _WetnessPower * ExGloss1334 ));
			float clampResult1379 = clamp( lerpResult1343 , 0.0 , 1.0 );
			float GlossinessFinal584 = clampResult1379;
			o.Smoothness = GlossinessFinal584;
			float2 uv_OcclusionMap1178 = i.uv_texcoord;
			float lerpResult519 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap1178 ).g , _OcculusionStrength);
			float smoothstepResult1409 = smoothstep( 0.0 , 0.8 , Detail11361);
			float lerpResult457 = lerp( 1.0 , smoothstepResult1409 , ( _DetailOcculusionScale * DetailMask1366 ));
			float smoothstepResult1410 = smoothstep( 0.0 , 0.8 , Detail21362);
			float lerpResult462 = lerp( 1.0 , smoothstepResult1410 , ( _DetailOcculusionScale2 * DetailMask2367 ));
			float OcclusionMix553 = saturate( ( lerpResult519 * lerpResult457 * lerpResult462 ) );
			o.Occlusion = OcclusionMix553;
			float3 temp_cast_1 = (( _Translucency / 10.0 )).xxx;
			o.Translucency = temp_cast_1;
			float AlphaInput426 = tex2DNode1185.a;
			float Color1Alpha1263 = _Color.a;
			float Color2Alpha1261 = _Color2.a;
			float Color3Alpha1259 = _Color3.a;
			float Color4Alpha1264 = _Color4.a;
			float AlphaMix487 = ( AlphaInput426 * ( ( Color1Alpha1263 * ColorMask1378 ) + ( Color2Alpha1261 * ColorMask2375 ) + ( Color3Alpha1259 * ColorMask3376 ) + ( Color4Alpha1264 * ColorMask4377 ) ) );
			o.Alpha = AlphaMix487;
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf StandardCustom keepalpha fullforwardshadows exclude_path:deferred 

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
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
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
				o.worldPos = worldPos;
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
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				SurfaceOutputStandardCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardCustom, o )
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
42;92;1230;772;5082.916;-3268.685;3.670135;True;False
Node;AmplifyShaderEditor.CommentaryNode;329;-3165.211,2761.059;Inherit;False;3235.085;1139.023;Comment;30;755;751;745;752;757;749;754;758;733;742;369;750;743;222;748;756;741;744;747;753;785;746;234;233;235;327;240;836;1305;1403;Detail Normal Map 1;1,0,0,1;0;0
Node;AmplifyShaderEditor.Vector2Node;327;-3062.235,2930.808;Inherit;False;Property;_DetailUV;DetailUV;16;0;Create;True;0;0;0;True;0;False;1,1;32,32;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CommentaryNode;330;-3159.167,4119.344;Inherit;False;3206.373;1317.682;Comment;30;778;777;776;775;774;773;771;734;772;231;769;770;768;370;767;766;765;764;763;762;761;786;237;236;238;326;251;837;1306;1404;Detail Normal Map 2;0.03088689,1,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;240;-2987.291,3203.865;Inherit;False;Property;_DetailUVRotator;DetailUVRotator;18;0;Create;True;0;0;0;True;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;233;-2761.745,2913.699;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;235;-2718.881,3048.565;Inherit;False;Constant;_Anchor2;Anchor2;52;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PiNode;1305;-2693.816,3205.169;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;326;-3071.57,4262.615;Inherit;False;Property;_DetailUV2;DetailUV2;17;0;Create;True;0;0;0;True;0;False;1,1;32,16;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;251;-3006.258,4568.135;Inherit;False;Property;_DetailUV2Rotator;DetailUV2Rotator;19;0;Create;True;0;0;0;True;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1306;-2692.061,4570.329;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;238;-2756.803,4395.838;Inherit;False;Constant;_Anchor;Anchor;52;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RotatorNode;234;-2447.82,2951.124;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;236;-2791.574,4246.75;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RotatorNode;237;-2522.011,4353.193;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;785;-2253.117,2946.207;Inherit;False;Detail1UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode;746;-2538.119,3657.621;Inherit;False;False;2;0;FLOAT;0.25;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;761;-2555.157,5061.711;Inherit;False;False;2;0;FLOAT;0.25;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;204;-4801.545,-4370.751;Inherit;False;1295.923;836.1025;Comment;3;260;261;1182;Detail Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.ScaleNode;747;-2039.256,3644.093;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;786;-2321.545,4351.415;Inherit;False;Detail2UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;753;-2134.583,3530.912;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerStateNode;1402;-5658.274,-2691.073;Inherit;False;0;0;0;2;-1;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1401;-5437.93,-2689.679;Inherit;False;samplerDetail;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleAddOpNode;744;-1819.232,3528.092;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1182;-4673.394,-4038.252;Inherit;True;Property;_TextureSample12;Texture Sample 12;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;21;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;260;-3764.918,-4255.997;Inherit;False;218.3544;268.5316;Comment;1;366;;1,0,0,1;0;0
Node;AmplifyShaderEditor.BreakToComponentsNode;763;-2166.301,4939.543;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ScaleNode;762;-2070.975,5052.723;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;741;-1829.777,3673.248;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;764;-1861.495,5081.878;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1403;-1785.503,3145.416;Inherit;False;1401;samplerDetail;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;366;-3753.613,-4218.067;Inherit;True;DetailMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;261;-3763.666,-3952.873;Inherit;False;226.1978;261.4764;Comment;1;367;;0,1,0.1183066,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;748;-1686.643,3651.629;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;756;-1666.428,3525.531;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;765;-1850.95,4936.724;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;222;-3131.034,3583.323;Inherit;False;Property;_DetailNormalMapScale;DetailNormalMapScale;22;1;[Header];Create;True;1;Detail Settings;0;0;True;0;False;1;1.73;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;767;-1698.146,4934.162;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;743;-1463.982,2926.891;Inherit;True;Property;_TextureSample5;Texture Sample 5;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;766;-1718.361,5060.259;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;167;-2945.609,-4631.46;Inherit;False;3187.355;1711.04;Comment;38;501;1325;1331;1328;1329;1283;1326;1327;1281;1279;1280;1282;1320;1273;1324;1278;1274;1275;1277;1317;1276;426;1272;1319;1323;1316;658;1271;1315;1185;1322;1321;1318;1269;1253;1332;1336;1335;Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1404;-1866.765,4542.145;Inherit;False;1401;samplerDetail;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.CommentaryNode;202;-4784.887,-6004.904;Inherit;False;1331.589;1285.219;Comment;7;180;379;276;275;277;179;1183;Color Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;201;-3005.145,-2568.217;Inherit;False;4407.201;3272.803;MetallicGlossMap;94;580;88;573;569;37;87;1235;1248;1247;1246;1245;1244;1243;1242;1241;1240;1239;1238;1237;1236;1234;1233;1232;1231;1230;1229;1228;1227;1226;1225;1224;1223;1222;1220;1219;1218;1217;1216;1215;1214;1213;1212;1211;1210;1209;1208;1207;1206;1205;1204;1203;584;636;579;608;606;607;1249;1251;1252;1338;1339;1342;1343;1345;1346;1347;1348;1349;1350;1351;1352;1353;1354;1355;1356;1357;1358;1363;1364;1365;1366;1367;1368;1369;1370;1371;1372;1373;1374;1375;1376;1379;1380;Metallic Glossiness Emission;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;369;-2947.239,3426.352;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;750;-1476.67,3453.447;Inherit;True;Property;_TextureSample7;Texture Sample 7;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;367;-3744.565,-3912.063;Inherit;True;DetailMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;742;-1471.023,3215.953;Inherit;True;Property;_TextureSample6;Texture Sample 6;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;733;-2529.016,3433.029;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1253;-2835.38,-3973.466;Inherit;False;834.1038;882.979;Comment;16;1270;1268;1267;1266;1265;1264;1263;1262;1261;1260;1259;1258;1257;1256;1255;1254;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;758;-1125.918,3400.47;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;769;-1502.741,4624.584;Inherit;True;Property;_TextureSample4;Texture Sample 4;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;231;-3043.331,5093.626;Inherit;False;Property;_DetailNormalMapScale2;DetailNormalMapScale2;23;0;Create;True;0;0;0;True;0;False;1;1;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;768;-1508.388,4862.078;Inherit;True;Property;_TextureSample8;Texture Sample 8;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1183;-4706.432,-5624.965;Inherit;True;Property;_TextureSample13;Texture Sample 13;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;113;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;770;-1495.7,4335.522;Inherit;True;Property;_NormalCreate01;NormalCreate 01;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;754;-1119.737,3167.636;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;370;-2987.45,4888.088;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-2855.768,-179.1227;Float;False;Property;_EmissionStrength;EmissionStrength;30;0;Create;True;0;0;0;True;1;Header (Emission (Tex Required));False;1;0;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;772;-1151.455,4576.268;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;734;-2542.934,4892.25;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;179;-4317.314,-5885;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1258;-2784.345,-3288.953;Inherit;False;Property;_Color4;Color4;14;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;463;-3005.259,842.5394;Inherit;False;3050.134;1494.415;Comment;23;553;519;462;70;552;457;441;784;55;781;54;442;780;788;787;1178;1361;1362;1399;1400;1405;1409;1410;AO;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;771;-1157.636,4809.102;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1254;-2782.4,-3505.43;Inherit;False;Property;_Color3;Color3;13;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;749;-928.1171,3214.346;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;757;-943.8752,3357.582;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1257;-2775.973,-3906.095;Inherit;False;Property;_Color;Color;11;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1310;-2344.925,52.00921;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1255;-2778.931,-3702.888;Inherit;False;Property;_Color2;Color2;12;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1266;-2499.743,-3905.28;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;276;-3777.125,-5332.016;Inherit;False;234.0894;272.1377;Color Mask 3;1;376;;0,1,0.001329422,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;752;-718.707,3393.894;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1405;-2968.375,1562.024;Inherit;False;1401;samplerDetail;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode;1307;-2364.351,96.61713;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;745;-745.622,3165.121;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1268;-2485.578,-3279.45;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1256;-2493.412,-3503.643;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;774;-975.5932,4766.213;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;773;-959.8351,4622.978;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1311;-2287.648,67.25244;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;787;-2941.214,1242.167;Inherit;False;785;Detail1UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;275;-3774.71,-5631.217;Inherit;False;237.4373;272.2484;Color Mask 2;1;375;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;379;-3777.42,-5941.748;Inherit;False;249.3828;282.3601;Color Mask 1;1;378;;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;180;-4101.538,-5885.058;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1260;-2496.419,-3698.292;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1313;-597.9083,102.7084;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CrossProductOpNode;751;-584.4581,3267.156;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1237;-2768.008,-2289.337;Inherit;False;Property;_Glossiness2;Glossiness2;36;0;Create;True;0;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;776;-777.3399,4573.752;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1238;-2775.076,-2447.259;Float;False;Property;_Glossiness;Glossiness;35;0;Create;True;0;0;0;True;1;Header (Glossiness Roughness);False;0;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1265;-2243.399,-3697.612;Inherit;False;Color2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1206;-2259.932,-2429.37;Inherit;False;Property;_Roughness;Roughness;39;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1236;-2768.914,-2206.739;Inherit;False;Property;_Glossiness3;Glossiness3;37;0;Create;True;0;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1262;-2243.532,-3504.048;Inherit;False;Color3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;775;-750.425,4802.525;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1270;-2239.993,-3280.114;Inherit;False;Color4;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1308;-2301.411,112.8604;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;375;-3751.598,-5586.388;Inherit;True;ColorMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;378;-3751.661,-5887.997;Inherit;True;ColorMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;607;-912.3947,218.3641;Inherit;False;883.1132;181.1651;Comment;3;588;574;1303;;0,1,0.03845549,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1208;-2264.7,-2048.589;Inherit;False;Property;_Roughness3;Roughness3;41;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;-3756.057,-5290.191;Inherit;True;ColorMask3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;788;-2944.628,1790.74;Inherit;False;786;Detail2UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1207;-2260.194,-2211.823;Inherit;False;Property;_Roughness2;Roughness2;40;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1267;-2250.476,-3907.439;Inherit;False;Color1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1239;-2766.119,-1955.749;Inherit;True;Property;_TextureSample19;Texture Sample 19;8;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header(Packed (Gloss Emission Metallic));False;-1;None;25c9e2dfc1a2b3d47a235b9819e76c90;True;0;False;white;Auto;False;Instance;1180;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;780;-2717.123,1220.531;Inherit;True;Property;_TextureSample0;Texture Sample 0;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;495;301.9477,-3969.426;Inherit;False;2402.645;450.0555;Comment;7;838;839;374;496;252;1179;44;Normal Mix;0.8967471,0.5424528,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;1213;-1938.302,-2465.765;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1321;-1980.594,-3247.835;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1209;-2262.226,-1904.344;Inherit;False;Property;_Roughness4;Roughness4;42;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;781;-2723.666,1769.263;Inherit;True;Property;_TextureSample1;Texture Sample 1;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1361;-2301.446,1239.03;Inherit;False;Detail1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CrossProductOpNode;777;-616.1771,4675.787;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;755;-424.7832,3284.703;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1309;-1487.222,133.1644;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1214;-1929.156,-2138.285;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1318;-1989.159,-3708.21;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1246;-1712.919,-1913.155;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1244;-1715.236,-2111.456;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1322;-1987.018,-3928.762;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1205;-2498.875,-2439.869;Inherit;False;Glossiness1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;606;-1927.39,206.9781;Inherit;False;935.4625;182.3688;Comment;3;594;593;1301;;1,0,0.1222792,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1215;-2279.223,-1423.636;Inherit;False;Property;_MetallicMask2;MetallicMask2;48;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1210;-2270.448,-1593.745;Inherit;False;Property;_MetallicMask;MetallicMask;47;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1204;-2494.936,-2289.873;Inherit;False;Glossiness2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1203;-2494.805,-2203.63;Inherit;False;Glossiness3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1212;-1929.815,-2312.661;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1303;-869.6821,279.9229;Inherit;False;1262;Color3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1315;-1978.453,-3500.506;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1185;-2807.395,-4543.834;Inherit;True;Property;_TextureSample15;Texture Sample 15;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;277;-3779.827,-5021.562;Inherit;False;233.8684;272.193;Color Mask 4;1;377;;0.2971698,0.505544,1,1;0;0
Node;AmplifyShaderEditor.WireNode;1312;-518.7231,123.0125;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1269;-2751.418,-4260.514;Inherit;False;Property;_BaseColor;BaseColor;10;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1245;-1705.935,-1734.356;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1211;-2281.158,-1280.9;Inherit;False;Property;_MetallicMask3;MetallicMask3;49;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;658;-2391.94,-4540.16;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1323;-1924.061,-4139.89;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;37;-2849.736,-437.7511;Inherit;False;Property;_EmissionColor;EmissionColor;15;0;Create;True;0;0;0;True;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1301;-1884.847,259.378;Inherit;False;1265;Color2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1218;-1378.606,-2309.752;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1271;-1797.458,-3248.246;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1216;-2263.302,-1094.33;Inherit;False;Property;_MetallicMask4;MetallicMask4;50;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;44;444.7511,-3877.628;Inherit;False;Property;_Float0;Float0;21;0;Create;True;0;0;0;True;2;Header (Bump);;False;1;1;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1242;-2764.683,-1734.824;Inherit;False;Property;_Metallic;Metallic;43;0;Create;True;0;0;0;True;1;Header (Metallic Maps);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1240;-2768.303,-2059.057;Inherit;False;Property;_Glossiness4;Glossiness4;38;0;Create;True;0;0;0;False;0;False;0;0.792;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1219;-1924.768,-1571.496;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1224;-1923.122,-1385.206;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1345;-860.3914,-2015.04;Inherit;False;1361;Detail1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1220;-1382.134,-2458.881;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1222;-1373.914,-2162.619;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;836;-194.6561,3263.052;Inherit;True;DetailNormal1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1241;-2767.998,-1571.453;Inherit;False;Property;_Metallic2;Metallic2;44;0;Create;True;0;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1223;-1929.505,-1741.629;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1346;-933.7983,-1929.925;Inherit;False;Property;_DetailGlossScale1;DetailGlossScale;24;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1347;-858.8682,-1842.15;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1314;-1452.705,159.5594;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;23;-4799.922,-2975.028;Inherit;True;Property;_OcclusionMap;OcclusionMap;9;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;e1845ed57c4c8ce47b68d67c68e10b14;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1243;-2768.433,-1367.015;Inherit;False;Property;_Metallic3;Metallic3;45;0;Create;True;0;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1319;-1931.344,-3920.197;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1362;-2301.43,1787.891;Inherit;False;Detail2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;608;-2829.42,199.2913;Inherit;False;848.699;220.9863;Comment;3;603;602;824;;0,0,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;377;-3758.815,-4982.157;Inherit;True;ColorMask4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1316;-1946.333,-3673.95;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1217;-1929.96,-1998.232;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1272;-2460.988,-4260.355;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;574;-443.5185,281.9927;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;778;-456.5022,4693.334;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1231;-1167.708,-2330.192;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;-265.5917,278.2783;Inherit;False;EC3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1230;-1375.85,-1749.262;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1273;-1870.94,-4276.296;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1352;-232.7463,-1828.337;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;824;-2780.787,257.164;Inherit;False;1267;Color1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1364;-740.3571,-1022.887;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1363;-815.2871,-1110.662;Inherit;False;Property;_DetailMetallicScale;DetailMetallicScale;26;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1375;-741.8802,-1195.777;Inherit;False;1361;Detail1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1226;-2259.391,-987.287;Inherit;False;Property;_Metallic4;Metallic4;46;0;Create;True;0;0;0;True;0;False;0;0.881;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1348;-232.6873,-2011.634;Inherit;False;1362;Detail2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1232;-1375.471,-1395.352;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1228;-1377.128,-1584.747;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;593;-1371.304,262.6713;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1179;812.208,-3909.266;Inherit;True;Property;_TextureSample3;Texture Sample 3;4;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;244;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1275;-1925.03,-3339.824;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;838;1151.335,-3725.038;Inherit;False;836;DetailNormal1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1274;-1913.599,-3559.553;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1277;-1761.029,-3271.972;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1333;-4605.113,-3385.952;Inherit;False;Property;_ExGloss;ExGloss;51;1;[Header];Create;True;1;Wetness;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1227;-1175.519,-1966.947;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1349;-302.8622,-1918.986;Inherit;False;Property;_DetailGlossScale3;DetailGlossScale2;25;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1278;-1913.865,-3785.23;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1320;-1897.084,-3952.316;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1330;-4486.896,-3002.657;Inherit;False;Carvature;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1350;-608.9252,-1925.301;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1324;-1898.639,-4173.171;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;837;-223.1501,4689.553;Inherit;True;DetailNormal2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;569;-2636.411,-435.6244;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1351;-631.5602,-2009.738;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1229;-1926.847,-1204.297;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;579;-2210.172,-486.0453;Inherit;False;2152.793;515.479;If toggled Color 3 used as Emission Color and Glossiness3 as Emission Strength;6;610;613;609;564;612;611;Color Mask Required;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;1317;-1909.932,-3697.504;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1276;-1914.856,-4047.412;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1225;-1374.594,-1994.698;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1365;-184.3511,-1099.723;Inherit;False;Property;_DetailMetallicScale2;DetailMetallicScale2;27;0;Create;True;0;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1328;-1233.335,-3883.782;Inherit;False;Property;_CarvatureStrength;CarvatureStrength;20;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;573;-2391.517,-430.2157;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;55;-2719.32,1985.837;Inherit;False;Property;_DetailOcculusionScale2;DetailOcculusionScale2;29;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1263;-2507.476,-3814.018;Inherit;False;Color1Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1355;7.750668,-1912.84;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1261;-2506.922,-3604.075;Inherit;False;Color2Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1259;-2504.909,-3411.175;Inherit;False;Color3Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;602;-2341.817,259.2357;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-2701.678,1426.843;Inherit;False;Property;_DetailOcculusionScale;DetailOcculusionScale;28;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1264;-2486.993,-3188.113;Inherit;False;Color4Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;273;-3184.721,-5996.699;Inherit;False;1452.091;1086.245;Comment;16;487;1297;1197;1296;1292;1294;1293;1295;1286;1284;1290;1285;1289;1288;1291;1287;Alpha;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1368;-114.2352,-1009.074;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;594;-1212.947,257.6467;Inherit;False;EC2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1334;-4127.113,-3385.952;Inherit;False;ExGloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;442;-2669.698,1520.11;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1233;-1373.753,-1199.385;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;839;1671.704,-3722.726;Inherit;False;837;DetailNormal2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1353;-14.80322,-2006.385;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1234;-1104.527,-1514.52;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1376;-114.1762,-1192.371;Inherit;False;1362;Detail2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1354;-466.1792,-2009.659;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1367;-513.049,-1190.475;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;-1615.208,-3429.658;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1327;-1149.563,-3967.554;Inherit;False;1330;Carvature;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1366;-490.414,-1106.038;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1247;-1163.567,-1153.473;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1282;-1612.031,-3727.252;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;-1613.026,-3986.885;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1248;-886.0092,-2329.303;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;611;-2157.154,-164.6089;Inherit;False;588;EC3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1281;-1619.873,-4274.505;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;252;1394.11,-3905.142;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-2691.49,2086.245;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;374;1942.326,-3901.251;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1409;-2066.607,1166.031;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.8;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1286;-3144.542,-5795.21;Inherit;False;1263;Color1Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1291;-3130.384,-5369.535;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1284;-3135.457,-5539.015;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;70;-2715.201,1122.98;Inherit;False;Property;_OcculusionStrength;OcculusionStrength;34;0;Create;True;0;0;0;False;1;Header (Ambient Occlusion);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1283;-1201.343,-4274.922;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1410;-2051.318,1666.53;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.8;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1339;312.5521,-1822.949;Inherit;False;Property;_WetnessPower;WetnessPower;52;0;Create;True;0;0;0;True;0;False;0.8;0.8;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1356;-562.29,-2330.389;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;612;-1472.144,-144.5901;Inherit;False;594;EC2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1285;-3130.542,-5212.178;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1178;-2726.443,911.4077;Inherit;True;Property;_TextureSample2;Texture Sample 2;9;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;23;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;1235;-828.8521,-1511.825;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1289;-3134.8,-5453.093;Inherit;False;1259;Color3Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;784;-2214.872,1353.263;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;552;-2215.485,1921.321;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;603;-2191.974,255.0385;Inherit;False;EC1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1329;-905.9794,-3963.686;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1371;126.2617,-1093.577;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1370;-347.6681,-1190.396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1290;-3139.873,-5622.573;Inherit;False;1261;Color2Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1288;-3140.126,-5711.653;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1326;-1114.765,-4053.903;Inherit;False;Constant;_Float3;Float 1;65;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1287;-3133.957,-5290.737;Inherit;False;1264;Color4Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1357;153.3032,-2006.208;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1252;-2439.316,-809.8936;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1369;103.7079,-1187.122;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1338;357.1661,-1665.041;Inherit;False;1334;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;564;-1928.695,-432.036;Inherit;False;Property;_EmissionColor3;Color3 is Emissive;33;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-666.6217,-156.5294;Inherit;False;603;EC1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;609;-1237.706,-427.6735;Inherit;False;Property;_EmissionColor2;Color2 is Emissive;32;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;457;-1829.432,1220.785;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1249;-2421.254,-738.182;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1293;-2778.001,-5793.43;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1372;271.8143,-1186.945;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1295;-2778.832,-5319.938;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;426;-2392.468,-4446.844;Inherit;False;AlphaInput;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1358;-42.66344,-2326.417;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1325;-835.1971,-4275.718;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;-2777.855,-5634.608;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;519;-1882.308,942.0994;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1336;-1095.794,-3747.705;Inherit;False;Property;_WetAlbedoOffset;WetAlbedoOffset;53;0;Create;True;0;0;0;True;0;False;0.6;0.6;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1373;-443.7789,-1511.126;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;462;-1810.436,1768.416;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;2453.467,-3907.819;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1342;662.0782,-1809.658;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1294;-2776.45,-5468.534;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1343;806.9359,-2323.432;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1296;-2538.956,-5795.153;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1374;75.84763,-1507.154;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1335;-582.7941,-4158.705;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;499;-4406.845,-2884.479;Inherit;False;496;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1197;-3142.724,-5945.05;Inherit;False;426;AlphaInput;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;610;-365.5624,-426.8469;Inherit;False;Property;_EmissionColor1;Color1 is Emissive;31;0;Create;False;0;0;0;True;1;Header (Color Mask Required (Optional));False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1399;-1314.434,947.8819;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1332;-763.1315,-3750.025;Inherit;False;1334;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1251;-2370.954,-714.3139;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1379;989.8966,-2321.371;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1297;-2354.751,-5933.662;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1392;-4206.127,-2879.912;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1400;-985.6055,947.2668;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1380;860.9473,-1506.347;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1331;-335.4149,-4273.128;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;88;353.0712,-733.7742;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;584;1164.439,-2329.607;Inherit;True;GlossinessFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;487;-2088.33,-5935.523;Inherit;False;AlphaMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1391;-4610.789,-2039.569;Inherit;False;Property;_Translucency;Translucency;61;1;[HideInInspector];Fetch;True;0;0;0;True;0;False;1;0;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1394;-4432.397,-1934.661;Inherit;False;Constant;_Float5;Float 5;61;0;Create;True;0;0;0;False;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1396;-4037.489,-2797.653;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;501;-46.3727,-4276.661;Inherit;True;DiffuseMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;553;-279.845,946.6089;Inherit;False;OcclusionMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;636;1070.588,-1511.157;Inherit;True;MetallicFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;580;1079.302,-737.6529;Inherit;True;EmissionFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1180;-4801.554,-2520.489;Inherit;True;Property;_MetallicGlossMap;MetallicGlossMap;8;1;[NoScaleOffset];Create;True;0;0;0;True;2;Header(Packed (R_Gloss G_Emission B_MetallicMask));;False;-1;None;c3fb9cc4f8539b344b35f7e70cb77c36;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;581;-4271.922,-2568.848;Inherit;False;580;EmissionFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1412;-3565.298,-1782.942;Inherit;False;Property;_BlendDST;BlendDST;63;1;[IntRange];Create;True;0;0;0;True;0;False;11;11;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1414;-3556.93,-1965.446;Inherit;False;Property;_AlphaToMask;AlphaToMask;65;2;[Header];[Toggle];Create;True;1;Alpha to coverage;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1413;-3575.343,-1673.832;Half;False;Property;_ZWrite;ZWrite;64;2;[Header];[Toggle];Create;True;1;Depth Setting;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1415;-3565.281,-1872.47;Inherit;False;Property;_BlendSCR;BlendSCR;62;2;[Header];[IntRange];Create;True;1;Blending Options;0;0;True;0;False;5;5;1;11;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-3904.845,-1855.339;Inherit;False;Property;_CullMode;CullMode;1;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;554;-4261.558,-2321.789;Inherit;False;553;OcclusionMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-4801.416,-2314.095;Inherit;True;Property;_MainTex;MainTex;2;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (RGB Color A Cutoff);False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwitchByFaceNode;1395;-3884.461,-2873.584;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;21;-5120.606,-2305.265;Inherit;True;Property;_DetailMask;DetailMask;5;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (R_Detail1 G_Detail2);False;-1;None;a572787717c1e0a4d847c348013171c9;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;113;-5137.525,-2524.153;Inherit;True;Property;_ColorMask;ColorMask;3;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;826f80ee0ad07444c8558af826a4df2e;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1408;-4187.568,-2212.564;Inherit;False;487;AlphaMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;760;-5131.691,-2982.96;Inherit;True;Property;_DetailGlossMap;DetailGlossMap;6;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (Detail1);False;-1;None;1e613ac794c1e3b4cbb6d0e1349dc524;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;779;-5132.224,-2743.078;Inherit;True;Property;_DetailGlossMap2;DetailGlossMap2;7;1;[NoScaleOffset];Create;True;0;0;0;True;2;Header (Detail2);;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;515;-4257.257,-2751.427;Inherit;False;501;DiffuseMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;635;-4263.368,-2488.121;Inherit;False;636;MetallicFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;244;-4797.906,-2744.617;Inherit;True;Property;_BumpMap;BumpMap;4;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;70fc240355ab1274f8b77e0d89e090af;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;2;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;1393;-4201.398,-2063.66;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;586;-4278.787,-2404.664;Inherit;False;584;GlossinessFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;-3665.885,-2622.859;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Item Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;2;True;1413;3;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.01;True;True;0;True;Transparent;2600;Transparent;ForwardOnly;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;True;1415;10;True;1412;0;5;False;-1;8;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;54;-1;-1;0;False;0;0;True;1344;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;True;1414;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;233;0;327;0
WireConnection;1305;0;240;0
WireConnection;1306;0;251;0
WireConnection;234;0;233;0
WireConnection;234;1;235;0
WireConnection;234;2;1305;0
WireConnection;236;0;326;0
WireConnection;237;0;236;0
WireConnection;237;1;238;0
WireConnection;237;2;1306;0
WireConnection;785;0;234;0
WireConnection;747;0;746;0
WireConnection;786;0;237;0
WireConnection;753;0;785;0
WireConnection;1401;0;1402;0
WireConnection;744;0;753;0
WireConnection;744;1;747;0
WireConnection;763;0;786;0
WireConnection;762;0;761;0
WireConnection;741;0;753;1
WireConnection;741;1;747;0
WireConnection;764;0;763;1
WireConnection;764;1;762;0
WireConnection;366;0;1182;1
WireConnection;748;0;753;0
WireConnection;748;1;741;0
WireConnection;756;0;744;0
WireConnection;756;1;753;1
WireConnection;765;0;763;0
WireConnection;765;1;762;0
WireConnection;767;0;765;0
WireConnection;767;1;763;1
WireConnection;743;1;785;0
WireConnection;743;7;1403;0
WireConnection;766;0;763;0
WireConnection;766;1;764;0
WireConnection;750;1;748;0
WireConnection;750;7;1403;0
WireConnection;367;0;1182;2
WireConnection;742;1;756;0
WireConnection;742;7;1403;0
WireConnection;733;0;369;0
WireConnection;733;1;222;0
WireConnection;758;0;750;2
WireConnection;758;1;743;2
WireConnection;769;1;767;0
WireConnection;769;7;1404;0
WireConnection;768;1;766;0
WireConnection;768;7;1404;0
WireConnection;770;1;786;0
WireConnection;770;7;1404;0
WireConnection;754;0;742;2
WireConnection;754;1;743;2
WireConnection;772;0;769;2
WireConnection;772;1;770;2
WireConnection;734;0;370;0
WireConnection;734;1;231;0
WireConnection;179;0;1183;1
WireConnection;179;1;1183;2
WireConnection;179;2;1183;3
WireConnection;771;0;768;2
WireConnection;771;1;770;2
WireConnection;749;0;754;0
WireConnection;749;1;733;0
WireConnection;757;0;758;0
WireConnection;757;1;733;0
WireConnection;1310;0;87;0
WireConnection;1266;0;1257;0
WireConnection;752;2;757;0
WireConnection;1307;0;87;0
WireConnection;745;2;749;0
WireConnection;1268;0;1258;0
WireConnection;1256;0;1254;0
WireConnection;774;0;771;0
WireConnection;774;1;734;0
WireConnection;773;0;772;0
WireConnection;773;1;734;0
WireConnection;1311;0;1310;0
WireConnection;180;0;179;0
WireConnection;1260;0;1255;0
WireConnection;1313;0;1311;0
WireConnection;751;0;745;0
WireConnection;751;1;752;0
WireConnection;776;2;773;0
WireConnection;1265;0;1260;0
WireConnection;1262;0;1256;0
WireConnection;775;2;774;0
WireConnection;1270;0;1268;0
WireConnection;1308;0;1307;0
WireConnection;375;0;1183;1
WireConnection;378;0;180;0
WireConnection;376;0;1183;2
WireConnection;1267;0;1266;0
WireConnection;780;1;787;0
WireConnection;780;7;1405;0
WireConnection;1213;1;1239;1
WireConnection;1213;2;1206;0
WireConnection;1321;0;1270;0
WireConnection;781;1;788;0
WireConnection;781;7;1405;0
WireConnection;1361;0;780;1
WireConnection;777;0;776;0
WireConnection;777;1;775;0
WireConnection;755;0;751;0
WireConnection;1309;0;1308;0
WireConnection;1214;1;1239;1
WireConnection;1214;2;1208;0
WireConnection;1318;0;1265;0
WireConnection;1322;0;1267;0
WireConnection;1205;0;1238;0
WireConnection;1204;0;1237;0
WireConnection;1203;0;1236;0
WireConnection;1212;1;1239;1
WireConnection;1212;2;1207;0
WireConnection;1315;0;1262;0
WireConnection;1312;0;1313;0
WireConnection;658;0;1185;0
WireConnection;1323;0;1322;0
WireConnection;1218;0;1212;0
WireConnection;1218;1;1204;0
WireConnection;1218;2;1246;0
WireConnection;1271;0;1321;0
WireConnection;1219;1;1239;3
WireConnection;1219;2;1215;0
WireConnection;1224;1;1239;3
WireConnection;1224;2;1211;0
WireConnection;1220;0;1213;0
WireConnection;1220;1;1205;0
WireConnection;1220;2;1244;0
WireConnection;1222;0;1214;0
WireConnection;1222;1;1203;0
WireConnection;1222;2;1245;0
WireConnection;836;0;755;0
WireConnection;1223;1;1239;3
WireConnection;1223;2;1210;0
WireConnection;1314;0;1309;0
WireConnection;1319;0;1318;0
WireConnection;1362;0;781;1
WireConnection;377;0;1183;3
WireConnection;1316;0;1315;0
WireConnection;1217;1;1239;1
WireConnection;1217;2;1209;0
WireConnection;1272;0;1269;0
WireConnection;574;0;1303;0
WireConnection;574;1;1312;0
WireConnection;778;0;777;0
WireConnection;1231;0;1220;0
WireConnection;1231;1;1218;0
WireConnection;1231;2;1222;0
WireConnection;588;0;574;0
WireConnection;1230;0;1223;0
WireConnection;1230;1;1242;0
WireConnection;1230;2;1244;0
WireConnection;1273;0;658;0
WireConnection;1273;1;1272;0
WireConnection;1232;0;1224;0
WireConnection;1232;1;1243;0
WireConnection;1232;2;1245;0
WireConnection;1228;0;1219;0
WireConnection;1228;1;1241;0
WireConnection;1228;2;1246;0
WireConnection;593;0;1301;0
WireConnection;593;1;1314;0
WireConnection;1179;5;44;0
WireConnection;1277;0;1271;0
WireConnection;1320;0;1319;0
WireConnection;1330;0;23;1
WireConnection;1350;0;1346;0
WireConnection;1350;1;1347;0
WireConnection;1324;0;1323;0
WireConnection;837;0;778;0
WireConnection;569;0;37;0
WireConnection;1351;0;1345;0
WireConnection;1229;1;1239;3
WireConnection;1229;2;1216;0
WireConnection;1317;0;1316;0
WireConnection;1225;0;1240;0
WireConnection;1225;1;1217;0
WireConnection;573;0;569;0
WireConnection;573;1;87;0
WireConnection;1263;0;1257;4
WireConnection;1355;0;1349;0
WireConnection;1355;1;1352;0
WireConnection;1261;0;1255;4
WireConnection;1259;0;1254;4
WireConnection;602;0;824;0
WireConnection;602;1;87;0
WireConnection;1264;0;1258;4
WireConnection;594;0;593;0
WireConnection;1334;0;1333;0
WireConnection;1233;0;1229;0
WireConnection;1233;1;1226;0
WireConnection;1353;0;1348;0
WireConnection;1234;0;1230;0
WireConnection;1234;1;1228;0
WireConnection;1234;2;1232;0
WireConnection;1354;0;1351;0
WireConnection;1354;1;1350;0
WireConnection;1367;0;1375;0
WireConnection;1280;0;1277;0
WireConnection;1280;1;1275;0
WireConnection;1280;2;1273;0
WireConnection;1366;0;1363;0
WireConnection;1366;1;1364;0
WireConnection;1282;0;1317;0
WireConnection;1282;1;1274;0
WireConnection;1282;2;1273;0
WireConnection;1279;0;1320;0
WireConnection;1279;1;1278;0
WireConnection;1279;2;1273;0
WireConnection;1248;0;1231;0
WireConnection;1248;1;1225;0
WireConnection;1248;2;1227;0
WireConnection;1281;0;1273;0
WireConnection;1281;1;1324;0
WireConnection;1281;2;1276;0
WireConnection;252;0;1179;0
WireConnection;252;1;838;0
WireConnection;374;0;252;0
WireConnection;374;1;839;0
WireConnection;1409;0;1361;0
WireConnection;1283;0;1281;0
WireConnection;1283;1;1279;0
WireConnection;1283;2;1282;0
WireConnection;1283;3;1280;0
WireConnection;1410;0;1362;0
WireConnection;1356;0;1248;0
WireConnection;1356;1;1354;0
WireConnection;1235;0;1234;0
WireConnection;1235;1;1233;0
WireConnection;1235;2;1247;0
WireConnection;784;0;54;0
WireConnection;784;1;442;0
WireConnection;552;0;55;0
WireConnection;552;1;441;0
WireConnection;603;0;602;0
WireConnection;1329;0;1327;0
WireConnection;1329;1;1328;0
WireConnection;1371;0;1365;0
WireConnection;1371;1;1368;0
WireConnection;1370;0;1367;0
WireConnection;1370;1;1366;0
WireConnection;1357;0;1353;0
WireConnection;1357;1;1355;0
WireConnection;1252;0;1239;2
WireConnection;1369;0;1376;0
WireConnection;564;1;573;0
WireConnection;564;0;611;0
WireConnection;609;1;564;0
WireConnection;609;0;612;0
WireConnection;457;1;1409;0
WireConnection;457;2;784;0
WireConnection;1249;0;1252;0
WireConnection;1293;0;1286;0
WireConnection;1293;1;1288;0
WireConnection;1372;0;1369;0
WireConnection;1372;1;1371;0
WireConnection;1295;0;1287;0
WireConnection;1295;1;1285;0
WireConnection;426;0;1185;4
WireConnection;1358;0;1356;0
WireConnection;1358;1;1357;0
WireConnection;1325;0;1283;0
WireConnection;1325;1;1326;0
WireConnection;1325;2;1329;0
WireConnection;1292;0;1290;0
WireConnection;1292;1;1284;0
WireConnection;519;1;1178;2
WireConnection;519;2;70;0
WireConnection;1373;0;1235;0
WireConnection;1373;1;1370;0
WireConnection;462;1;1410;0
WireConnection;462;2;552;0
WireConnection;496;0;374;0
WireConnection;1342;0;1339;0
WireConnection;1342;1;1338;0
WireConnection;1294;0;1289;0
WireConnection;1294;1;1291;0
WireConnection;1343;0;1358;0
WireConnection;1343;2;1342;0
WireConnection;1296;0;1293;0
WireConnection;1296;1;1292;0
WireConnection;1296;2;1294;0
WireConnection;1296;3;1295;0
WireConnection;1374;0;1373;0
WireConnection;1374;1;1372;0
WireConnection;1335;0;1325;0
WireConnection;1335;1;1336;0
WireConnection;610;1;609;0
WireConnection;610;0;613;0
WireConnection;1399;0;519;0
WireConnection;1399;1;457;0
WireConnection;1399;2;462;0
WireConnection;1251;0;1249;0
WireConnection;1379;0;1343;0
WireConnection;1297;0;1197;0
WireConnection;1297;1;1296;0
WireConnection;1392;0;499;0
WireConnection;1400;0;1399;0
WireConnection;1380;0;1374;0
WireConnection;1331;0;1325;0
WireConnection;1331;1;1335;0
WireConnection;1331;2;1332;0
WireConnection;88;0;1251;0
WireConnection;88;1;610;0
WireConnection;584;0;1379;0
WireConnection;487;0;1297;0
WireConnection;1396;0;1392;0
WireConnection;501;0;1331;0
WireConnection;553;0;1400;0
WireConnection;636;0;1380;0
WireConnection;580;0;88;0
WireConnection;1395;0;1392;0
WireConnection;1395;1;1396;0
WireConnection;760;7;1401;0
WireConnection;779;7;1401;0
WireConnection;1393;0;1391;0
WireConnection;1393;1;1394;0
WireConnection;0;0;515;0
WireConnection;0;1;1395;0
WireConnection;0;2;581;0
WireConnection;0;3;635;0
WireConnection;0;4;586;0
WireConnection;0;5;554;0
WireConnection;0;7;1393;0
WireConnection;0;9;1408;0
ASEEND*/
//CHKSM=98FBC40E84A150E3ED6205592DB0FD952499EDDC
