// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Next-Gen Face"
{
	Properties
	{
		[HideInInspector]SSS_shader("", Float) = 1
		[HideInInspector][NoScaleOffset]_LightingTexBlurred("LightingTexBlurred", 2D) = "white" {}
		[NoScaleOffset]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Normal]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Normal]_BumpMap2("BumpMap2", 2D) = "bump" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset]_Texture3("Texture3", 2D) = "black" {}
		[NoScaleOffset]_NailMask("NailMask", 2D) = "white" {}
		[NoScaleOffset]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "white" {}
		[NoScaleOffset]_SubsurfaceAlbedo("SubsurfaceAlbedo", 2D) = "white" {}
		[NoScaleOffset]_ProfileTex("ProfileTex", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,0)
		_Color3("Color3 (Hairs)", Color) = (1,1,1,0)
		_WeatheringSpecular("WeatheringSpecular", Color) = (0,0,0,0)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0,0,0,0)
		_WeatheringUV("WeatheringUV", Color) = (0,0,0,0)
		[Header (Specularity)]_SpecColor("SpecColor", Color) = (0.2,0.2,0.2,0)
		_OcclusionColor("OcclusionColor", Color) = (0,0,0,0)
		_TransmissionColor("TransmissionColor", Color) = (0.2,0.2,0.2,0)
		[Header (Separate Profile)]_ProfileColor("Profile Color", Color) = (0,0,0,0)
		_Blushcolor("Blushcolor", Color) = (0.6320754,0.2295745,0.2295745,0.4705882)
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_AlbedoTile("AlbedoTile", Range( 1 , 20)) = 1
		_Texture3Rotator("Texture3Rotator", Range( -1 , 1)) = 0
		_BumpScale("BumpScale", Range( 0 , 1)) = 1
		_BumpScale2("BumpScale2", Range( 0 , 1)) = 1
		_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 0.25
		[Header (Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_Gloss("Gloss", Range( 0 , 1)) = 1
		_SecondaryGlossPower("SecondaryGlossPower", Range( 0 , 2)) = 0
		_SecondaryGloss("SecondaryGloss", Range( 0 , 1)) = 0
		[Header (Blush)]_Texture4Scale("Texture4Scale", Range( 0 , 1)) = 0
		[Header (Ambient Occlusion)]_OcclusionStrength("OcclusionStrength", Range( 0 , 1)) = 0
		_AlbedoOpacity("AlbedoOpacity", Range( 0 , 1)) = 1
		_SubsurfaceAlbedoOpacity("SubsurfaceAlbedoOpacity", Range( 0 , 1)) = 0
		_SubsurfaceAlbedoSaturation("SubsurfaceAlbedoSaturation", Range( 0 , 1)) = 1
		[Header (Transmission)]_TransBase("TransBase", Range( 0 , 5)) = 1
		_TransDynamic("TransDynamic", Range( 0 , 1)) = 1
		_TransRange("TransRange", Range( 0 , 5)) = 0.5
		_VeinsOpacity("VeinsOpacity", Range( 0 , 2)) = 1
		_TransOcclusion("TransOcclusion", Range( 0 , 1)) = 1
		_TransShadows("TransShadows", Range( 0 , 1)) = 1
		[HideInInspector]_CavityStrength("CavityStrength", Range( 0 , 1)) = 1
		[HideInInspector][Toggle(SUBSURFACE_PARALLAX)]SUBSURFACE_PARALLAX("SUBSURFACE_PARALLAX", Float) = 0
		[HideInInspector]_SubSurfaceParallax("SubSurface Parallax", Range( -0.002 , 0)) = -0.000363
		[HideInInspector]_FresnelIntensity("FresnelIntensity", Range( 0 , 1)) = 1
		[Header (Juice Texture)]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange6("WeatheringRange6", Range( 0 , 1)) = 0
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.8
		_WeatheringBumpPower("WeatheringBumpPower", Range( 0 , 9)) = 0
		_Texture3UV("Texture3UV", Vector) = (0,0,0,0)
		_DetailUV("DetailUV", Vector) = (24,24,0,0)
		_VeinsColor("VeinsColor", Color) = (0,0,0,0)
		_EyebrowGloss("EyebrowGloss", Range( 0 , 1)) = 0.5
		_SpecularRim("SpecularRim", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "AlphaTest-40" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile_instancing
		#include "Assets/SSS/Resources/SSS_Common.hlsl"
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
			float2 uv2_texcoord2;
			float4 vertexColor : COLOR;
			float4 screenPos;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
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

		uniform sampler2D _WeatheringMask;
		uniform sampler2D _DetailMainTex;
		uniform float _Cutoff;
		uniform sampler2D _Texture3;
		uniform sampler2D _DetailGlossMap;
		uniform sampler2D _WeatheringMap;
		uniform float4 _Color3;
		uniform float4 _Texture3UV;
		uniform float _Texture3Rotator;
		uniform float4 _Blushcolor;
		uniform float _Texture4Scale;
		uniform float _ExGloss;
		uniform float4 _WeatheringAlbedo;
		uniform float4 _WeatheringUV;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange6;
		uniform float2 _DetailUV;
		uniform float4 _OcclusionMap_ST;
		uniform float _WeatheringBumpPower;
		uniform float4 _WeatheringSpecular;
		uniform float _Gloss;
		uniform float _EyebrowGloss;
		uniform float _WeatheringGloss;
		uniform float _SpecularRim;
		uniform float _SecondaryGloss;
		uniform float _SecondaryGlossPower;


		float3 LightingPass332( float3 Albedo, float4 screenPos )
		{
			#if !defined(SCENE_VIEW)
			            half3 LightingPass = 0;
			            float4 coords = 0;
						coords = UNITY_PROJ_COORD(screenPos);
			            coords.w += .0001;
						float2 screenUV = coords.xy / coords.w;
			            
			               #ifdef UNITY_SINGLE_PASS_STEREO
							float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex];
						    screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy;
			               #endif
			            if (unity_StereoEyeIndex == 0)
			                LightingPass = tex2D(LightingTexBlurred, screenUV).rgb;
			            else
			                LightingPass = tex2D(LightingTexBlurredR, screenUV).rgb;
			            return Albedo * LightingPass;
			#else
			return 0;
			            #endif
		}


		float3 ShadeSH9326( float3 worldNormal )
		{
			return ShadeSH9(float4(worldNormal,1));
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
			SurfaceOutputStandardSpecular s698 = (SurfaceOutputStandardSpecular ) 0;
			float3 temp_cast_3 = (0.0).xxx;
			s698.Albedo = temp_cast_3;
			float2 uv_BumpMap117 = i.uv_texcoord;
			float2 uv_BumpMap2116 = i.uv_texcoord;
			float2 uv_TexCoord187 = i.uv_texcoord * _DetailUV;
			float2 break175 = uv_TexCoord187;
			float temp_output_171_0 = ( pow( 0.3 , 2.0 ) * 0.1 );
			float2 appendResult179 = (float2(( break175.x + temp_output_171_0 ) , break175.y));
			float2 DetailUV754 = uv_TexCoord187;
			float4 tex2DNode168 = tex2D( _DetailGlossMap, DetailUV754 );
			float2 uv_NailMask96 = i.uv_texcoord;
			float2 appendResult3 = (float2(_Texture3UV.x , _Texture3UV.y));
			float2 uv2_TexCoord5 = i.uv2_texcoord2 + appendResult3;
			float cos22 = cos( ( _Texture3Rotator * UNITY_PI ) );
			float sin22 = sin( ( _Texture3Rotator * UNITY_PI ) );
			float2 rotator22 = mul( uv2_TexCoord5 - float2( 0.3,0.4 ) , float2x2( cos22 , -sin22 , sin22 , cos22 )) + float2( 0.3,0.4 );
			float2 _Vector0 = float2(0.1,0.43);
			float2 appendResult746 = (float2(_Texture3UV.z , _Texture3UV.w));
			float2 EyebrowsUV25 = (( rotator22 - _Vector0 )*appendResult746 + _Vector0);
			float4 tex2DNode86 = tex2D( _Texture3, EyebrowsUV25 );
			float hair46 = ( tex2DNode86.b * i.vertexColor.g );
			float temp_output_98_0 = ( tex2D( _NailMask, uv_NailMask96 ).g * ( 1.0 - _DetailNormalMapScale ) * ( 1.0 - hair46 ) );
			float3 appendResult170 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult179 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float2 appendResult172 = (float2(break175.x , ( break175.y + temp_output_171_0 )));
			float3 appendResult174 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult172 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float3 normalizeResult186 = normalize( cross( appendResult170 , appendResult174 ) );
			float3 DetailNormal188 = normalizeResult186;
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float2 break445 = uv_OcclusionMap;
			float temp_output_444_0 = ( pow( 0.2 , 3.5 ) * 0.1 );
			float2 appendResult448 = (float2(( break445.x + temp_output_444_0 ) , break445.y));
			float4 tex2DNode452 = tex2D( _NailMask, uv_OcclusionMap );
			float exgloss297 = _ExGloss;
			float3 appendResult457 = (float3(1.0 , 0.0 , ( ( tex2D( _NailMask, appendResult448 ).r - tex2DNode452.r ) * exgloss297 )));
			float2 appendResult449 = (float2(break445.x , ( break445.y + temp_output_444_0 )));
			float3 appendResult458 = (float3(0.0 , 1.0 , ( ( tex2D( _NailMask, appendResult449 ).r - tex2DNode452.r ) * exgloss297 )));
			float3 normalizeResult460 = normalize( cross( appendResult457 , appendResult458 ) );
			float3 WetNormal463 = normalizeResult460;
			float2 break149 = EyebrowsUV25;
			float temp_output_154_0 = ( pow( 0.2 , 3.0 ) * 0.1 );
			float2 appendResult146 = (float2(( break149.x + temp_output_154_0 ) , break149.y));
			float4 tex2DNode160 = tex2D( _Texture3, EyebrowsUV25 );
			float3 appendResult156 = (float3(1.0 , 0.0 , ( ( tex2D( _Texture3, appendResult146 ).g - tex2DNode160.g ) * 1.0 )));
			float2 appendResult153 = (float2(break149.x , ( break149.y + temp_output_154_0 )));
			float3 appendResult150 = (float3(0.0 , 1.0 , ( ( tex2D( _Texture3, appendResult153 ).g - tex2DNode160.g ) * 1.0 )));
			float3 normalizeResult147 = normalize( cross( appendResult156 , appendResult150 ) );
			float3 HairNormal163 = normalizeResult147;
			float hairs_alpha407 = ( tex2DNode86.b * ( _Color3.a * 1.5 ) * i.vertexColor.g );
			float3 lerpResult759 = lerp( BlendNormals( BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap117 ), _BumpScale ) , UnpackScaleNormal( tex2D( _BumpMap2, uv_BumpMap2116 ), _BumpScale2 ) ) , DetailNormal188 ) , WetNormal463 ) , HairNormal163 , hairs_alpha407);
			float2 appendResult561 = (float2(_WeatheringUV.r , _WeatheringUV.g));
			float2 uv_TexCoord559 = i.uv_texcoord * appendResult561 + float2( 0,-0.03 );
			float2 WeatheringUV562 = uv_TexCoord559;
			float2 break567 = WeatheringUV562;
			float temp_output_568_0 = ( pow( 0.4 , 3.5 ) * 0.1 );
			float2 appendResult571 = (float2(( break567.x + temp_output_568_0 ) , break567.y));
			float4 tex2DNode573 = tex2D( _WeatheringMap, WeatheringUV562 );
			float3 appendResult582 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult571 ).b - tex2DNode573.b ) * _WeatheringBumpPower )));
			float2 appendResult572 = (float2(break567.x , ( break567.y + temp_output_568_0 )));
			float3 appendResult581 = (float3(0.0 , 1.0 , ( ( tex2D( _WeatheringMap, appendResult572 ).b - tex2DNode573.b ) * _WeatheringBumpPower )));
			float3 normalizeResult584 = normalize( cross( appendResult582 , appendResult581 ) );
			float3 WeatheringBump585 = normalizeResult584;
			float2 uv_WeatheringMask555 = i.uv_texcoord;
			float4 tex2DNode555 = tex2D( _WeatheringMask, uv_WeatheringMask555 );
			float temp_output_590_0 = max( _WeatheringAll , _WeatheringRange6 );
			float WeatheringBumpPower591 = ( tex2DNode555.g * ( temp_output_590_0 > 0.0 ? 1.0 : 0.0 ) );
			float3 lerpResult646 = lerp( lerpResult759 , WeatheringBump585 , ( tex2D( _WeatheringMap, WeatheringUV562 ).b * WeatheringBumpPower591 ));
			float3 NormalMix376 = lerpResult646;
			s698.Normal = WorldNormalVector( i , NormalMix376 );
			s698.Emission = float3( 0,0,0 );
			float4 color544 = IsGammaSpace() ? float4(0.2,0.2,0.2,0) : float4(0.03310476,0.03310476,0.03310476,0);
			float3 temp_output_548_0 = ( exgloss297 == 0.0 ? (_SpecColor).rgb : (color544).rgb );
			float4 tex2DNode557 = tex2D( _WeatheringMap, WeatheringUV562 );
			float WeatheringPower599 = ( tex2DNode555.g * temp_output_590_0 );
			float temp_output_679_0 = (( temp_output_590_0 >= 0.51 && temp_output_590_0 <= 1.0 ) ? 0.0 :  0.05 );
			float clampResult614 = clamp( ( ( ( tex2DNode557.g * WeatheringPower599 ) - temp_output_679_0 ) * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha611 = clampResult614;
			float3 lerpResult653 = lerp( (temp_output_548_0).xyz , (_WeatheringSpecular).rgb , WeatheringAlpha611);
			float3 Specularity1541 = lerpResult653;
			s698.Specular = Specularity1541;
			float temp_output_550_0 = ( exgloss297 == 0.0 ? _Gloss : 1.0 );
			float2 uv_NailMask730 = i.uv_texcoord;
			float4 tex2DNode730 = tex2D( _NailMask, uv_NailMask730 );
			float lerpResult756 = lerp( 0.85 , tex2D( _DetailGlossMap, DetailUV754 ).a , tex2DNode730.g);
			float2 uv_OcclusionMap270 = i.uv_texcoord;
			float lerpResult294 = lerp( ( lerpResult756 - ( 1.0 - tex2D( _OcclusionMap, uv_OcclusionMap270 ).r ) ) , _EyebrowGloss , hair46);
			float wetness_alpha468 = ( tex2DNode730.r * exgloss297 );
			float2 uv_DetailMainTex383 = i.uv_texcoord;
			float lerpResult392 = lerp( ( lerpResult294 + wetness_alpha468 ) , 1.0 , tex2D( _DetailMainTex, uv_DetailMainTex383 ).b);
			float GlossMapsMix295 = lerpResult392;
			float lerpResult659 = lerp( ( temp_output_550_0 * GlossMapsMix295 ) , _WeatheringGloss , WeatheringAlpha611);
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float fresnelNdotV763 = dot( (WorldNormalVector( i , NormalMix376 )), ase_worldViewDir );
			float fresnelNode763 = ( 1.0 + ( 1.0 - (1.0 + (_SpecularRim - 0.0) * (2.0 - 1.0) / (1.0 - 0.0)) ) * pow( 1.0 - fresnelNdotV763, 4.0 ) );
			float lerpResult766 = lerp( 1.0 , lerpResult659 , fresnelNode763);
			float Smoothness542 = lerpResult766;
			s698.Smoothness = Smoothness542;
			float2 uv_OcclusionMap216 = i.uv_texcoord;
			float4 tex2DNode216 = tex2D( _OcclusionMap, uv_OcclusionMap216 );
			float lerpResult219 = lerp( 1.0 , tex2DNode216.g , _OcclusionStrength);
			float occlusion220 = lerpResult219;
			s698.Occlusion = occlusion220;

			data.light = gi.light;

			UnityGI gi698 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g698 = UnityGlossyEnvironmentSetup( s698.Smoothness, data.worldViewDir, s698.Normal, float3(0,0,0));
			gi698 = UnityGlobalIllumination( data, s698.Occlusion, s698.Normal, g698 );
			#endif

			float3 surfResult698 = LightingStandardSpecular ( s698, viewDir, gi698 ).rgb;
			surfResult698 += s698.Emission;

			#ifdef UNITY_PASS_FORWARDADD//698
			surfResult698 -= s698.Emission;
			#endif//698
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 normalizeResult706 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult709 = dot( normalizeResult706 , normalize( (WorldNormalVector( i , NormalMix376 )) ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float2 uv_OcclusionMap762 = i.uv_texcoord;
			float3 Specularity2719 = ( pow( max( dotResult709 , 0.0 ) , exp( ( _SecondaryGloss * 10 ) ) ) * ( ase_lightColor.rgb * ase_lightAtten * ( _SecondaryGloss * tex2D( _OcclusionMap, uv_OcclusionMap762 ).r * _SecondaryGlossPower ) ) );
			c.rgb = ( surfResult698 + Specularity2719 );
			c.a = 1;
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
			float temp_output_525_0 = 0.0;
			float3 temp_cast_0 = (temp_output_525_0).xxx;
			o.Albedo = temp_cast_0;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_MainTex85 = i.uv_texcoord;
			float3 hairs_color419 = (_Color3).rgb;
			float2 appendResult3 = (float2(_Texture3UV.x , _Texture3UV.y));
			float2 uv2_TexCoord5 = i.uv2_texcoord2 + appendResult3;
			float cos22 = cos( ( _Texture3Rotator * UNITY_PI ) );
			float sin22 = sin( ( _Texture3Rotator * UNITY_PI ) );
			float2 rotator22 = mul( uv2_TexCoord5 - float2( 0.3,0.4 ) , float2x2( cos22 , -sin22 , sin22 , cos22 )) + float2( 0.3,0.4 );
			float2 _Vector0 = float2(0.1,0.43);
			float2 appendResult746 = (float2(_Texture3UV.z , _Texture3UV.w));
			float2 EyebrowsUV25 = (( rotator22 - _Vector0 )*appendResult746 + _Vector0);
			float4 tex2DNode86 = tex2D( _Texture3, EyebrowsUV25 );
			float hairs_alpha407 = ( tex2DNode86.b * ( _Color3.a * 1.5 ) * i.vertexColor.g );
			float3 lerpResult76 = lerp( (tex2D( _MainTex, uv_MainTex85 )).rgb , hairs_color419 , hairs_alpha407);
			float3 BlushColor690 = (_Blushcolor).rgb;
			float2 uv_NailMask474 = i.uv_texcoord;
			float BlushAlpha683 = ( ( tex2D( _NailMask, uv_NailMask474 ).b * _Texture4Scale ) * _Blushcolor.a );
			float3 lerpResult684 = lerp( lerpResult76 , BlushColor690 , BlushAlpha683);
			float2 uv_NailMask730 = i.uv_texcoord;
			float4 tex2DNode730 = tex2D( _NailMask, uv_NailMask730 );
			float exgloss297 = _ExGloss;
			float wetness_alpha468 = ( tex2DNode730.r * exgloss297 );
			float3 lerpResult517 = lerp( lerpResult684 , ( lerpResult684 - float3( 0.03,0.03,0.03 ) ) , wetness_alpha468);
			float2 appendResult561 = (float2(_WeatheringUV.r , _WeatheringUV.g));
			float2 uv_TexCoord559 = i.uv_texcoord * appendResult561 + float2( 0,-0.03 );
			float2 WeatheringUV562 = uv_TexCoord559;
			float4 tex2DNode557 = tex2D( _WeatheringMap, WeatheringUV562 );
			float2 uv_WeatheringMask555 = i.uv_texcoord;
			float4 tex2DNode555 = tex2D( _WeatheringMask, uv_WeatheringMask555 );
			float temp_output_590_0 = max( _WeatheringAll , _WeatheringRange6 );
			float WeatheringBumpPower591 = ( tex2DNode555.g * ( temp_output_590_0 > 0.0 ? 1.0 : 0.0 ) );
			float temp_output_679_0 = (( temp_output_590_0 >= 0.51 && temp_output_590_0 <= 1.0 ) ? 0.0 :  0.05 );
			float clampResult658 = clamp( ( ( tex2DNode557.g * WeatheringBumpPower591 ) - temp_output_679_0 ) , 0.0 , 1.0 );
			float WeatheringAlpha2626 = clampResult658;
			float3 lerpResult608 = lerp( lerpResult517 , (_WeatheringAlbedo).rgb , WeatheringAlpha2626);
			float3 color72 = (_Color).rgb;
			float3 albedo79 = ( lerpResult608 * color72 );
			float3 lerpResult340 = lerp( temp_cast_1 , (albedo79).xyz , _AlbedoOpacity);
			float grayscale329 = Luminance(lerpResult340);
			float3 temp_cast_2 = (( grayscale329 * 6.0 )).xxx;
			float3 lerpResult344 = lerp( temp_cast_2 , lerpResult340 , _SubsurfaceAlbedoSaturation);
			float3 albedo_final354 = lerpResult344;
			float3 Albedo332 = albedo_final354;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 screenPos332 = ase_screenPos;
			float3 localLightingPass332 = LightingPass332( Albedo332 , screenPos332 );
			float3 lighting_pass336 = localLightingPass332;
			float2 uv_NailMask321 = i.uv_texcoord;
			float2 uv_OcclusionMap216 = i.uv_texcoord;
			float4 tex2DNode216 = tex2D( _OcclusionMap, uv_OcclusionMap216 );
			float occlusion_sample217 = tex2DNode216.g;
			float lerpResult317 = lerp( 1.0 , occlusion_sample217 , _TransOcclusion);
			float2 uv_BumpMap117 = i.uv_texcoord;
			float2 uv_BumpMap2116 = i.uv_texcoord;
			float2 uv_TexCoord187 = i.uv_texcoord * _DetailUV;
			float2 break175 = uv_TexCoord187;
			float temp_output_171_0 = ( pow( 0.3 , 2.0 ) * 0.1 );
			float2 appendResult179 = (float2(( break175.x + temp_output_171_0 ) , break175.y));
			float2 DetailUV754 = uv_TexCoord187;
			float4 tex2DNode168 = tex2D( _DetailGlossMap, DetailUV754 );
			float2 uv_NailMask96 = i.uv_texcoord;
			float hair46 = ( tex2DNode86.b * i.vertexColor.g );
			float temp_output_98_0 = ( tex2D( _NailMask, uv_NailMask96 ).g * ( 1.0 - _DetailNormalMapScale ) * ( 1.0 - hair46 ) );
			float3 appendResult170 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult179 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float2 appendResult172 = (float2(break175.x , ( break175.y + temp_output_171_0 )));
			float3 appendResult174 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult172 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float3 normalizeResult186 = normalize( cross( appendResult170 , appendResult174 ) );
			float3 DetailNormal188 = normalizeResult186;
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float2 break445 = uv_OcclusionMap;
			float temp_output_444_0 = ( pow( 0.2 , 3.5 ) * 0.1 );
			float2 appendResult448 = (float2(( break445.x + temp_output_444_0 ) , break445.y));
			float4 tex2DNode452 = tex2D( _NailMask, uv_OcclusionMap );
			float3 appendResult457 = (float3(1.0 , 0.0 , ( ( tex2D( _NailMask, appendResult448 ).r - tex2DNode452.r ) * exgloss297 )));
			float2 appendResult449 = (float2(break445.x , ( break445.y + temp_output_444_0 )));
			float3 appendResult458 = (float3(0.0 , 1.0 , ( ( tex2D( _NailMask, appendResult449 ).r - tex2DNode452.r ) * exgloss297 )));
			float3 normalizeResult460 = normalize( cross( appendResult457 , appendResult458 ) );
			float3 WetNormal463 = normalizeResult460;
			float2 break149 = EyebrowsUV25;
			float temp_output_154_0 = ( pow( 0.2 , 3.0 ) * 0.1 );
			float2 appendResult146 = (float2(( break149.x + temp_output_154_0 ) , break149.y));
			float4 tex2DNode160 = tex2D( _Texture3, EyebrowsUV25 );
			float3 appendResult156 = (float3(1.0 , 0.0 , ( ( tex2D( _Texture3, appendResult146 ).g - tex2DNode160.g ) * 1.0 )));
			float2 appendResult153 = (float2(break149.x , ( break149.y + temp_output_154_0 )));
			float3 appendResult150 = (float3(0.0 , 1.0 , ( ( tex2D( _Texture3, appendResult153 ).g - tex2DNode160.g ) * 1.0 )));
			float3 normalizeResult147 = normalize( cross( appendResult156 , appendResult150 ) );
			float3 HairNormal163 = normalizeResult147;
			float3 lerpResult759 = lerp( BlendNormals( BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap117 ), _BumpScale ) , UnpackScaleNormal( tex2D( _BumpMap2, uv_BumpMap2116 ), _BumpScale2 ) ) , DetailNormal188 ) , WetNormal463 ) , HairNormal163 , hairs_alpha407);
			float2 break567 = WeatheringUV562;
			float temp_output_568_0 = ( pow( 0.4 , 3.5 ) * 0.1 );
			float2 appendResult571 = (float2(( break567.x + temp_output_568_0 ) , break567.y));
			float4 tex2DNode573 = tex2D( _WeatheringMap, WeatheringUV562 );
			float3 appendResult582 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult571 ).b - tex2DNode573.b ) * _WeatheringBumpPower )));
			float2 appendResult572 = (float2(break567.x , ( break567.y + temp_output_568_0 )));
			float3 appendResult581 = (float3(0.0 , 1.0 , ( ( tex2D( _WeatheringMap, appendResult572 ).b - tex2DNode573.b ) * _WeatheringBumpPower )));
			float3 normalizeResult584 = normalize( cross( appendResult582 , appendResult581 ) );
			float3 WeatheringBump585 = normalizeResult584;
			float3 lerpResult646 = lerp( lerpResult759 , WeatheringBump585 , ( tex2D( _WeatheringMap, WeatheringUV562 ).b * WeatheringBumpPower591 ));
			float3 NormalMix376 = lerpResult646;
			float3 worldNormal326 = normalize( (WorldNormalVector( i , NormalMix376 )) );
			float3 localShadeSH9326 = ShadeSH9326( worldNormal326 );
			float3 transmission_deferred335 = ( ( tex2D( _NailMask, uv_NailMask321 ).a * lerpResult317 * (_TransmissionColor).rgb ) * localShadeSH9326 * _TransBase );
			float3 emission_final352 = ( lighting_pass336 + transmission_deferred335 );
			o.Emission = emission_final352;
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d11_9x d3d11 
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows nodynlightmap 

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
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float4 customPack1 : TEXCOORD1;
				float4 screenPos : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				half4 color : COLOR0;
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
				o.customPack1.zw = customInputData.uv2_texcoord2;
				o.customPack1.zw = v.texcoord1;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.screenPos = ComputeScreenPos( o.pos );
				o.color = v.color;
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
				surfIN.uv2_texcoord2 = IN.customPack1.zw;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.screenPos = IN.screenPos;
				surfIN.vertexColor = IN.color;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
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
Version=18707
7;7;1782;1004;-494.7715;-1164.035;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;1;-4854.533,-1290.193;Inherit;False;1849.755;707.9641;;13;25;751;746;10;750;22;5;741;747;8;9;3;732;Eyebrows;1,0.9499159,0,1;0;0
Node;AmplifyShaderEditor.Vector4Node;732;-4821.84,-1195.093;Inherit;False;Property;_Texture3UV;Texture3UV;53;0;Create;True;0;0;True;0;False;0,0,0,0;0.046,0.1078,1,1.1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;3;-4529.74,-1165.029;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;9;-4789.398,-696.9695;Inherit;False;Property;_Texture3Rotator;Texture3Rotator;26;0;Create;True;0;0;True;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;8;-4711.366,-861.7732;Inherit;False;Constant;_center;center;27;0;Create;True;0;0;True;0;False;0.3,0.4;0.3,0.4;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PiNode;747;-4462.552,-696.0508;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;741;-4354.671,-875.4554;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;5;-4224.083,-1217.748;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0.2,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RotatorNode;22;-3899.912,-1218.123;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.3,0.425;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;750;-3803.619,-813.3258;Inherit;False;Constant;_Vector0;Vector 0;54;0;Create;True;0;0;False;0;False;0.1,0.43;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;746;-4533.17,-1045.655;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;10;-3668.715,-1148.215;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;751;-3490.247,-1070.013;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;25;-3246.273,-1075.562;Inherit;False;EyebrowsUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;44;-4830.735,-4148.386;Inherit;False;1005.048;544.7848;PublicHair;11;415;47;46;75;411;86;45;407;419;424;697;Eyebrows;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;45;-4788.238,-4081.324;Inherit;False;25;EyebrowsUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.VertexColorNode;415;-4771.172,-3799.376;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;86;-4535.678,-4103.246;Inherit;True;Property;_TextureSample3;Texture Sample 3;7;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-4190.594,-4077.151;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;167;-2799.886,-4216.204;Inherit;False;3042.425;1172.196;Comment;42;641;101;104;638;189;637;97;94;187;98;633;636;634;628;632;629;631;627;188;186;173;170;174;183;184;176;177;168;181;180;179;172;169;529;178;171;528;175;185;96;753;754;DetailGlossMap to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;46;-4047.348,-4079.29;Inherit;False;hair;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;563;-4831.016,-1982.216;Inherit;False;1010.912;430.6406;Comment;5;562;559;561;560;682;WeatheringUV;0.9856402,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;554;-4846.549,-3358.058;Inherit;False;1869.881;1076.625;Comment;25;611;614;625;610;606;618;619;605;599;592;626;658;663;662;664;557;587;591;595;594;555;590;589;588;679;Weathering;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;94;-2768.821,-3641.788;Inherit;False;46;hair;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;753;-2709.09,-4149.645;Inherit;False;Property;_DetailUV;DetailUV;54;0;Create;True;0;0;True;0;False;24,24;24,24;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;588;-4764.436,-3070.358;Inherit;False;Property;_WeatheringAll;WeatheringAll;49;0;Create;True;0;0;True;1;Header (Juice Texture);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;560;-4769.003,-1932.216;Inherit;False;Property;_WeatheringUV;WeatheringUV;18;0;Create;True;0;0;True;0;False;0,0,0,0;1,0.9,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;97;-2583.626,-3640.034;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;589;-4759.734,-2974.541;Inherit;False;Property;_WeatheringRange6;WeatheringRange6;50;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;638;-1759.502,-3617.787;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;561;-4506.559,-1903.703;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;101;-2748.378,-4016.672;Inherit;False;Property;_DetailNormalMapScale;DetailNormalMapScale;29;0;Fetch;True;0;0;True;0;False;0.25;0.5087057;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;590;-4455.288,-3034.872;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;682;-4540.906,-1769.792;Inherit;False;Constant;_Vector1;Vector 1;49;0;Create;True;0;0;False;0;False;0,-0.03;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;187;-2473.828,-4141.714;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;555;-4796.969,-3295.787;Inherit;True;Property;_TextureSample15;Texture Sample 15;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;552;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;189;-1847.885,-4014.376;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;96;-2744.896,-3913.595;Inherit;True;Property;_TextureSample5;Texture Sample 5;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;641;-2187.368,-4035.253;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;637;-1708.325,-3635.573;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;594;-4260.65,-3040.164;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;559;-4317.646,-1918.488;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;5,0.9;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;185;-2063.165,-3457.628;Inherit;False;False;2;0;FLOAT;0.3;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;441;573.6385,-5240.357;Inherit;False;2533.256;931.9565;Comment;21;460;459;458;457;456;455;454;453;452;451;450;449;448;447;446;445;444;443;462;463;466;Wetness to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;472;-4820.173,-5162.793;Inherit;False;1132.53;735.6841;Blush settings;11;683;477;476;473;474;687;688;686;690;691;692;Blush;1,1,1,1;0;0
Node;AmplifyShaderEditor.BreakToComponentsNode;175;-2070.929,-3573.292;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;98;-1643.407,-3863.159;Inherit;True;3;3;0;FLOAT;0;False;1;FLOAT;2;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;595;-4060.65,-3059.164;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;562;-4066.103,-1908.826;Inherit;False;WeatheringUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;628;-1424.109,-3701.968;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;474;-4772.035,-5096.259;Inherit;True;Property;_TextureSample25;Texture Sample 25;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;443;813.3356,-4481.782;Inherit;False;False;2;0;FLOAT;0.2;False;1;FLOAT;3.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;171;-1881.377,-3449.002;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;564;-2582.594,-5266.69;Inherit;False;2647.625;920.0429;Comment;22;585;584;583;582;581;579;580;578;577;573;575;574;571;572;570;569;568;567;565;586;695;696;Weathering to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;47;-4790.764,-3985.894;Inherit;False;Property;_Color3;Color3 (Hairs);15;0;Create;False;0;0;True;0;False;1,1,1,0;0.3207502,0.1800419,0.1800419,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;462;678.6448,-5159.576;Inherit;False;0;222;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;162;-2490.987,-2712.957;Inherit;False;2533.256;931.9565;Comment;20;147;155;145;152;161;159;143;146;142;144;148;149;150;151;153;154;156;158;160;163;Hairs to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;587;-4786.069,-2827.831;Inherit;False;562;WeatheringUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;528;-1771.154,-3491.2;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;591;-3303.788,-3062.874;Inherit;True;WeatheringBumpPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;686;-4773.648,-4756.793;Inherit;False;Property;_Blushcolor;Blushcolor;23;0;Create;True;0;0;True;0;False;0.6320754,0.2295745,0.2295745,0.4705882;0.6320754,0.2295721,0.2295721,0.4705882;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RelayNode;476;-4449.957,-5020.279;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;664;-4814.127,-2598.103;Inherit;True;591;WeatheringBumpPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;169;-1661.352,-3565.001;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;178;-1671.897,-3419.846;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;634;-1081.764,-3673.003;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;43;-2553.606,-1341.061;Inherit;False;2783.712;1407.82;Comment;22;79;78;76;77;423;422;48;508;517;518;235;608;613;668;671;674;675;676;677;684;685;689;Albedo Mix;0.3113208,0.3113208,0.3113208,1;0;0
Node;AmplifyShaderEditor.BreakToComponentsNode;445;899.7955,-4586.335;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;557;-4531.627,-2870.139;Inherit;True;Property;_TextureSample16;Texture Sample 16;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;551;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;697;-4451.492,-3809.321;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;161;-2391.204,-2635.46;Inherit;False;25;EyebrowsUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode;155;-2248.616,-1955.72;Inherit;False;False;2;0;FLOAT;0.2;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;529;-1735.154,-3507.2;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;695;-2528.305,-4514.909;Inherit;False;Constant;_WeatheringBump;WeatheringBump;50;0;Create;True;0;0;True;0;False;0.4;0.4;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;268;387.6861,-1603.906;Inherit;False;2620.078;1131.702;Comment;15;295;392;383;437;470;294;292;282;276;756;270;273;755;428;761;Glossiness Mix;0.4575472,0.9384768,1,1;0;0
Node;AmplifyShaderEditor.WireNode;692;-4262.184,-4637.36;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;444;995.1235,-4473.156;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;473;-4760.476,-4873.275;Inherit;False;Property;_Texture4Scale;Texture4Scale;34;0;Create;True;0;0;False;1;Header (Blush);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;627;-1420.768,-3941.358;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;754;-2066.819,-4144.87;Inherit;False;DetailUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;149;-2182.83,-2057.935;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.DynamicAppendNode;179;-1508.548,-3567.561;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCCompareWithRange;679;-4291.844,-2500.048;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;586;-2386.104,-5188.386;Inherit;False;562;WeatheringUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScaleNode;154;-2069.502,-1945.757;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;75;-4221.903,-3800.204;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;477;-4281.74,-5020.228;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;691;-4235.273,-4662.349;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;48;-2421.114,-1183.633;Inherit;False;725.8331;586.7349;MAIN;5;72;412;409;68;85;MainTex;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;447;1204.604,-4444;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;446;1215.148,-4589.155;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;172;-1528.763,-3441.465;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;428;664.6888,-1026.801;Inherit;False;1059.144;366.2868;Comment;5;468;439;297;269;730;Wetness to Gloss;1,1,1,1;0;0
Node;AmplifyShaderEditor.PowerNode;565;-2228.527,-4509.116;Inherit;False;False;2;0;FLOAT;0.43;False;1;FLOAT;3.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;636;-998.669,-3585.682;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;662;-4015.928,-2615.003;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;411;-4485.054,-3908.535;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;633;-924.0239,-3578.64;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;269;717.3635,-768.2124;Inherit;False;Property;_ExGloss;ExGloss;30;0;Create;True;0;0;True;1;Header (Wetness);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;688;-4097.66,-5017.789;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;567;-2142.067,-4612.668;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;181;-1318.79,-3639.645;Inherit;True;Property;_TextureSample8;Texture Sample 8;6;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;663;-3830.029,-2613.701;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;158;-1867.478,-2060.755;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;407;-4057.497,-3772.985;Inherit;False;hairs_alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;568;-2046.739,-4499.489;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;168;-1306.102,-4166.204;Inherit;True;Property;_NormalCreate01;NormalCreate 01;6;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;629;-888.814,-3965.95;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;142;-1860.021,-1916.601;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;180;-1313.144,-3877.141;Inherit;True;Property;_TextureSample7;Texture Sample 7;6;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;687;-4482.644,-4754.518;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;449;1347.737,-4465.618;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;419;-4051.268,-3906.25;Inherit;False;hairs_color;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;85;-2385.901,-1108.482;Inherit;True;Property;_TextureSample2;Texture Sample 2;2;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;42;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;448;1367.952,-4591.715;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;632;-838.1115,-3596.949;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;658;-3479.05,-2730.924;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;423;-1661.514,-931.0319;Inherit;False;407;hairs_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;451;1565.71,-4664.8;Inherit;True;Property;_TextureSample21;Texture Sample 21;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;569;-1837.259,-4470.333;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;-1661.955,-1022.923;Inherit;False;419;hairs_color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;631;-814.169,-3946.232;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;177;-968.039,-3692.624;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;730;723.0737,-981.1148;Inherit;True;Property;_TextureSample24;Texture Sample 24;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;570;-1826.715,-4615.488;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;146;-1714.673,-2063.315;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;690;-3930.774,-4756.822;Inherit;True;BlushColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;153;-1716.889,-1938.219;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;450;1563.357,-4901.294;Inherit;True;Property;_TextureSample18;Texture Sample 18;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;683;-3930.589,-5023.35;Inherit;True;BlushAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;452;1560.398,-5178.357;Inherit;True;Property;_TextureSample28;Texture Sample 28;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;176;-961.8578,-3925.459;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;297;996.8649,-767.2281;Inherit;False;exgloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;409;-2008.003,-1106.111;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;466;1989.849,-5095.28;Inherit;False;297;exgloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;184;-785.9959,-3735.512;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;143;-1501.269,-2373.894;Inherit;True;Property;_TextureSample4;Texture Sample 4;7;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;454;1914.643,-4949.612;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;453;1908.462,-4716.778;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;159;-1506.916,-2137.4;Inherit;True;Property;_TextureSample6;Texture Sample 6;7;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;674;-1219.81,-664.9891;Inherit;False;Property;_WeatheringAlbedo;WeatheringAlbedo;17;0;Create;True;0;0;True;0;False;0,0,0,0;0.6,0.65,0.65,0.6509804;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;183;-770.2378,-3878.748;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;571;-1673.911,-4618.048;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;160;-1494.228,-2662.957;Inherit;True;Property;_TextureSample27;Texture Sample 27;7;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;439;1261.08,-782.2025;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;76;-1399.466,-1101.964;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;689;-1403.1,-936.9453;Inherit;False;690;BlushColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;626;-3266.203,-2734.008;Inherit;False;WeatheringAlpha2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;572;-1694.126,-4491.952;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;685;-1402.071,-850.6409;Inherit;False;683;BlushAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;575;-1494.506,-4929.627;Inherit;True;Property;_TextureSample23;Texture Sample 23;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;551;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;174;-560.829,-3699.199;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-1213.233,-454.4293;Inherit;False;626;WeatheringAlpha2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;144;-1156.164,-2189.378;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;148;-1149.982,-2422.212;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;170;-587.7436,-3927.973;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;455;2106.262,-4902.901;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;468;1456.027,-774.9299;Inherit;False;wetness_alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;675;-929.1608,-664.5765;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;574;-1484.153,-4690.133;Inherit;True;Property;_TextureSample22;Texture Sample 22;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;551;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;68;-2379.784,-804.1115;Inherit;False;Property;_Color;Color;14;0;Fetch;True;0;0;True;0;False;1,1,1,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;684;-1110.121,-1102.914;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;456;2090.504,-4759.664;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;573;-1502.581,-5209.867;Inherit;True;Property;_TextureSample29;Texture Sample 29;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;551;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;87;563.2144,-4092.7;Inherit;False;2716.209;922.7764;Comment;19;693;694;652;650;647;651;376;646;464;598;465;125;164;120;190;107;102;759;760;Normal Mix;0.7484773,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;107;631.121,-3938.638;Inherit;False;754.3678;255.0435;Comment;2;110;117;Normal Map1;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;671;-636.7791,-422.6149;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;412;-2154.37,-804.5468;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;457;2288.757,-4952.126;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;696;-1157.666,-4850.86;Inherit;False;Property;_WeatheringBumpPower;WeatheringBumpPower;52;0;Create;True;0;0;True;0;False;0;7.53;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;145;-948.7177,-2224.242;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;102;630.7186,-3608.71;Inherit;False;757.8655;258.7115;Comment;2;108;116;Normal Map 2;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;578;-1133.401,-4743.111;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;577;-1127.22,-4975.945;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;677;-659.3279,-645.2473;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;518;-899.5118,-1023.831;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0.03,0.03,0.03;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;508;-977.5962,-921.2964;Inherit;False;468;wetness_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;458;2315.671,-4723.353;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;152;-947.3633,-2377.501;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CrossProductOpNode;173;-426.5812,-3825.937;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;580;-864.3683,-4948.451;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;668;-603.6127,-453.3036;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;579;-861.7625,-4739.625;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;-1922.666,-803.3925;Inherit;False;color;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;108;706.9673,-3511.255;Half;False;Property;_BumpScale2;BumpScale2;28;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;150;-748.9545,-2195.953;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;156;-775.8691,-2424.726;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;186;-254.9052,-3823.391;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;517;-675.7311,-1101.072;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;676;-639.8868,-668.1725;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;110;684.436,-3843.327;Inherit;False;Property;_BumpScale;BumpScale;27;0;Fetch;True;0;0;True;0;False;1;0.5063668;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CrossProductOpNode;459;2449.919,-4850.091;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;-377.6237,-879.1259;Inherit;False;72;color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;608;-430.0428,-1100.984;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0.6,0.65,0.65;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;116;1040.322,-3555.617;Inherit;True;Property;_BumpMap2333;BumpMap2333;4;0;Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;130;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;651;1533.177,-3518.79;Inherit;False;562;WeatheringUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.NormalizeNode;460;2621.595,-4847.544;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;151;-614.7064,-2322.691;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;582;-681.8731,-4981.934;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;117;1031.085,-3890.099;Inherit;True;Property;_BumpMap7777;BumpMap7777;3;0;Fetch;False;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;129;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;581;-654.9594,-4753.162;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;188;-65.1486,-3821.236;Inherit;True;DetailNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;592;-4300.809,-3239.039;Inherit;False;2;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CrossProductOpNode;583;-520.7113,-4879.898;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;463;2825.375,-4848.39;Inherit;False;WetNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;78;-215.2522,-1101.875;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;647;1753.579,-3334.819;Inherit;False;591;WeatheringBumpPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;120;1576.262,-3883.472;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;147;-443.0301,-2320.144;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;650;1753.92,-3533.777;Inherit;True;Property;_TextureSample17;Texture Sample 17;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;551;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;190;1635.713,-3730.188;Inherit;False;188;DetailNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;308;-2945.452,388.309;Inherit;False;3481.855;1913.182;Comment;7;355;356;338;319;315;309;350;SSSSS by David Miranda;0.7064003,1,0.6462264,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;315;-2851.973,492.871;Inherit;False;1950.029;618.0199;Albedo Scene View;15;354;344;340;339;334;333;331;329;327;316;358;527;526;757;758;;1,1,1,1;0;0
Node;AmplifyShaderEditor.NormalizeNode;584;-349.0347,-4877.352;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;465;2001.679,-3738.533;Inherit;False;463;WetNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;125;1887.235,-3881.898;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;599;-3272.653,-3239.622;Inherit;False;WeatheringPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;755;444.9005,-1306.726;Inherit;False;754;DetailUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;652;2088.905,-3358.188;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;79;-21.08078,-1107.843;Inherit;True;albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;163;-263.3359,-2324.524;Inherit;True;HairNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;164;2263.168,-3719.892;Inherit;False;163;HairNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;-4805.358,-2695.697;Inherit;False;599;WeatheringPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;464;2220.151,-3882.951;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;760;2249.111,-3620.771;Inherit;False;407;hairs_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;316;-2806.472,558.337;Inherit;True;79;albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;694;2464.771,-3331.951;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;273;690.777,-1331.41;Inherit;True;Property;_TextureSample14;Texture Sample 14;6;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;270;678.8234,-1536.882;Inherit;True;Property;_TextureSample13;Texture Sample 6;9;0;Create;False;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;222;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;585;-190.427,-4879.936;Inherit;False;WeatheringBump;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;693;2502.835,-3373.642;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;619;-4211.384,-2660.119;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;598;2543.002,-3733.886;Inherit;False;585;WeatheringBump;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;756;1038.189,-1257.791;Inherit;False;3;0;FLOAT;0.85;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;759;2522.394,-3882.471;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;331;-2485.26,713.1141;Inherit;False;Constant;_Float22;Float 22;39;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;333;-2794.39,809.8641;Inherit;False;Property;_AlbedoOpacity;AlbedoOpacity;36;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;276;1037.411,-1509.732;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;327;-2504.44,558.3909;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;700;886.9061,982.9597;Inherit;False;2382.827;1004.301;;20;719;718;716;714;715;709;711;706;721;722;712;710;707;705;704;703;701;724;727;762;Secondary Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;215;578.2522,-2697.189;Inherit;False;1155.898;568.112;Comment;6;221;220;219;218;217;216;Ambient Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;618;-4160.892,-2679.27;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;282;1252.05,-1433.177;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;292;1554.652,-1242.859;Inherit;False;46;hair;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;340;-2228.806,714.544;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;761;1503.213,-1338.941;Inherit;False;Property;_EyebrowGloss;EyebrowGloss;56;0;Create;True;0;0;True;0;False;0.5;0.5038513;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;646;2808.137,-3882.145;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-2804.646,1006.184;Inherit;False;Property;_SubsurfaceAlbedoSaturation;SubsurfaceAlbedoSaturation;38;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;294;1914.611,-1434.67;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0.6;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;704;1135.942,1218.521;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;3033.464,-3886.084;Inherit;False;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;216;619.9622,-2645.189;Inherit;True;Property;_TextureSample12;Texture Sample 12;9;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;222;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;606;-4070.561,-2879.51;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;470;1970.314,-1245.401;Inherit;False;468;wetness_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;329;-2028.602,579.0269;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;703;1144.906,1032.959;Float;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;339;-1698.832,581.3851;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;6;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;705;1512.906,1128.959;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;217;1482.963,-2624.046;Inherit;False;occlusion_sample;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;527;-1737.354,834.188;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;437;2213.829,-1434.041;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;526;-1742.765,723.2549;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;610;-3839.209,-2878.19;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;722;930.4427,1379.567;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;309;-2843.098,1218.91;Inherit;False;1693.552;1024.997;BASE_TRANSMISSION_DEFERRED;17;370;369;368;335;328;326;325;324;321;320;318;317;314;313;312;311;310;Transmission;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;383;1797.815,-1013.149;Inherit;True;Property;_TextureSample20;Texture Sample 20;5;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;372;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;721;1098.357,1636.086;Inherit;False;Property;_SecondaryGloss;SecondaryGloss;33;0;Create;True;0;0;True;0;False;0;0.515;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;706;1700.005,1128.186;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;625;-3646.666,-2944.225;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;707;1144.906,1384.959;Inherit;True;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;530;882.6504,-332.1435;Inherit;False;2428.817;1187.717;Comment;31;771;772;775;763;766;659;661;537;616;539;549;534;541;653;538;655;673;672;548;545;547;533;550;546;299;544;543;531;769;542;776;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;310;-2763.74,1586.908;Inherit;False;217;occlusion_sample;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;701;1695.492,1451.114;Inherit;False;224;160;Play with this value;1;708;;1,0,0,1;0;0
Node;AmplifyShaderEditor.LerpOp;392;2462.982,-1432.325;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;312;-2761.605,1482.936;Inherit;False;Constant;_Float7;Float 7;39;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;311;-2736.383,1778.368;Inherit;False;Property;_TransmissionColor;TransmissionColor;21;0;Fetch;False;0;0;True;0;False;0.2,0.2,0.2,0;0.5,0.2999957,0.1999956,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;313;-2721.897,1964.709;Inherit;True;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;314;-2760.374,1677.142;Inherit;False;Property;_TransOcclusion;TransOcclusion;43;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;344;-1371.77,578.139;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;614;-3479.877,-2945.13;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;769;927.6992,731.902;Inherit;False;Property;_SpecularRim;SpecularRim;57;0;Create;True;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;318;-2433.491,1951.773;Inherit;True;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;531;912.0892,355.5585;Inherit;False;Property;_Gloss;Gloss;31;0;Create;True;0;0;True;0;False;1;0.1525482;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;543;925.3009,238.436;Inherit;False;297;exgloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;295;2755.373,-1437.208;Inherit;True;GlossMapsMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;708;1745.492,1501.114;Inherit;False;10;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;319;-867.0891,498.9111;Inherit;False;783.1226;440.5972;Lighting Pass to Emission;4;336;332;323;322;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;354;-1152.892,574.1299;Inherit;True;albedo_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;762;1053.394,1748.979;Inherit;True;Property;_TextureSample1;Texture Sample 1;9;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;222;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;321;-2773.887,1267.527;Inherit;True;Property;_TextureSample19;Texture Sample 19;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;299;914.0719,33.991;Inherit;False;Property;_SpecColor;SpecColor;19;0;Fetch;False;0;0;True;1;Header (Specularity);False;0.2,0.2,0.2,0;0.1999997,0.1999997,0.1999997,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;544;914.3794,-146.373;Inherit;False;Constant;_WetColor;WetColor;54;0;Create;True;0;0;False;0;False;0.2,0.2,0.2,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DotProductOpNode;709;1935.672,1177.064;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;317;-2396.834,1480.736;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;727;1390.122,1886.66;Inherit;False;Property;_SecondaryGlossPower;SecondaryGlossPower;32;0;Create;True;0;0;True;0;False;0;0.515;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;320;-2428.172,1779.571;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightAttenuation;714;2029.613,1740.172;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;546;1198.849,78.78141;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;776;1445.385,681.1363;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;550;1522.675,239.1331;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;325;-2131.92,1980.824;Inherit;False;Property;_TransBase;TransBase;39;0;Fetch;True;0;0;True;1;Header (Transmission);False;1;1;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;324;-2108.191,1417.313;Inherit;True;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;322;-824.1154,747.588;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;724;1695.686,1723.24;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;715;2070.063,1599.304;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ExpOpNode;711;2116.005,1329.346;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;547;1327.644,50.05009;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;611;-3267.385,-2950.055;Inherit;False;WeatheringAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;710;2120.713,1177.417;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;533;917.9645,464.1914;Inherit;True;295;GlossMapsMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;545;1196.109,-71.43914;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;772;2065.23,608.9517;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;326;-2078.388,1663.636;Inherit;False;return ShadeSH9(float4(worldNormal,1))@;3;False;1;True;worldNormal;FLOAT3;0,0,0;In;;Inherit;False;ShadeSH9;True;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;323;-825.8114,540.0941;Inherit;True;354;albedo_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;548;1523.184,-60.83824;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;771;2303.561,731.9646;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;328;-1710.733,1415.517;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;712;2303.615,1177.863;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;8;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;672;2229.917,-63.15502;Inherit;False;Property;_WeatheringSpecular;WeatheringSpecular;16;0;Create;True;0;0;True;0;False;0,0,0,0;0.3499972,0.3499972,0.3499972,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;716;2447.255,1815.36;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;661;1396.706,589.9135;Inherit;False;Property;_WeatheringGloss;WeatheringGloss;51;0;Create;True;0;0;True;0;False;0.8;0.8;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;537;1724.745,450.526;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;775;2297.892,547.2109;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;332;-552.1552,563.889;Inherit;False;#if !defined(SCENE_VIEW)$            half3 LightingPass = 0@$            float4 coords = 0@$			coords = UNITY_PROJ_COORD(screenPos)@$            coords.w += .0001@$			float2 screenUV = coords.xy / coords.w@$            $               #ifdef UNITY_SINGLE_PASS_STEREO$				float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex]@$			    screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy@$               #endif$            if (unity_StereoEyeIndex == 0)$                LightingPass = tex2D(LightingTexBlurred, screenUV).rgb@$            else$                LightingPass = tex2D(LightingTexBlurredR, screenUV).rgb@$$            return Albedo * LightingPass@$#else$return 0@$            #endif;3;False;2;True;Albedo;FLOAT3;0,0,0;In;;Inherit;False;True;screenPos;FLOAT4;0,0,0,0;In;;Inherit;False;LightingPass;True;False;0;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;616;1775.457,610.8676;Inherit;False;611;WeatheringAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;763;2617.655,550.5477;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT;-2;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;338;-973.1566,1168.618;Inherit;False;1404;370;Final Emission;4;352;346;342;341;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;655;2225.706,176.9721;Inherit;False;611;WeatheringAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;718;2802.8,1552.545;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;673;2493.859,-62.56575;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;336;-316.6682,556.9471;Inherit;True;lighting_pass;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;335;-1505.772,1402.29;Inherit;True;transmission_deferred;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;218;615.8171,-2429.822;Inherit;False;Property;_OcclusionStrength;OcclusionStrength;35;0;Fetch;True;0;0;True;2;Header (Ambient Occlusion);;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;538;2194.706,-167.2411;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;659;2051.804,447.2306;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.83;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;341;-954.1575,1229.618;Inherit;False;336;lighting_pass;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;342;-958.6636,1373.071;Inherit;False;335;transmission_deferred;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;766;2881.648,418.3097;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;219;1181.162,-2506;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;653;2861.713,-158.0019;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0.35,0.35,0.35;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;719;3027.843,1546.751;Inherit;False;Specularity2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;346;-500.1561,1245.618;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;3066.981,412.9149;Inherit;True;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;220;1486.133,-2492.776;Inherit;False;occlusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;3054.398,-156.8851;Inherit;True;Specularity1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;723;3365.355,-584.4557;Inherit;False;719;Specularity2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;525;3395.091,-1134.713;Inherit;False;Constant;_Float0;Float 0;59;0;Create;True;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;375;3369.997,-957.3392;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;352;135.371,1238.72;Inherit;True;emission_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;729;3816.595,-554.9038;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;378;3353.524,-863.3257;Inherit;False;541;Specularity1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;379;3364.527,-763.6569;Inherit;False;542;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;380;3383.527,-677.6566;Inherit;False;220;occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;382;-4178.851,-273.7572;Inherit;False;753.0234;1336.969;Comment;10;222;130;137;81;82;372;129;42;551;552;Samplers;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;389;-4024.026,1356.478;Inherit;False;306;716.3667;Comment;3;386;402;403;Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;356;-1012.161,1686.48;Inherit;False;371.0001;461.4971;Comment;1;360;;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;728;3876.036,-589.1967;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomStandardSurface;698;3709.991,-959.3553;Inherit;False;Specular;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;377;3342.781,-1047.399;Inherit;False;352;emission_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;350;-414.8556,1724.009;Inherit;False;693.5801;490.9063;Comment;5;367;366;362;359;357;NOT USED?;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;355;-4.190615,525.4571;Inherit;False;226;165;SSS FLAG;1;371;;1,0,0,1;0;0
Node;AmplifyShaderEditor.TFHCRemapNode;104;-2089.434,-4014.095;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;9;False;3;FLOAT;1;False;4;FLOAT;13;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;403;-3968.016,1835.492;Inherit;True;Property;_SubsurfaceAlbedo;SubsurfaceAlbedo;12;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.WireNode;731;4113.792,-1018.412;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;369;-1529.958,1999.906;Inherit;False;Property;_TransShadows;TransShadows;44;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;360;-955.7218,1957.117;Inherit;False;Property;_ProfileColor;Profile Color;22;0;Fetch;True;0;0;True;1;Header (Separate Profile);False;0,0,0,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;534;2012.404,17.51601;Inherit;False;COLOR;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;137;-3772.523,425.632;Inherit;True;Property;_DetailGlossMap;DetailGlossMap;6;0;Create;True;0;0;True;0;False;-1;None;b6ca718829aa9bc4d8699b068d11f1e9;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;551;-4112.435,217.5125;Inherit;True;Property;_WeatheringMap;WeatheringMap;11;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;18d34fa19e88120418048a5d29c70b80;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;42;-4116.227,-214.0522;Inherit;True;Property;_MainTex;MainTex;2;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;4014ff9c4d73f1147bfe0d19356c8aab;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;386;-3970.558,1406.478;Inherit;True;Property;_LightingTexBlurred;LightingTexBlurred;1;2;[HideInInspector];[NoScaleOffset];Fetch;True;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;758;-1464.27,848.0796;Inherit;False;Property;_VeinsColor;VeinsColor;55;0;Fetch;True;0;0;True;0;False;0,0,0,0;0.3021088,0.661216,0.6886792,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;367;-373.8517,1797.437;Inherit;False;Property;_CavityStrength;CavityStrength;45;1;[HideInInspector];Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;222;-3771.012,829.3798;Inherit;True;Property;_OcclusionMap;OcclusionMap;9;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;80f87e9162912cb40a69e9cad2e98c09;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;358;-1191.724,840.744;Inherit;False;Property;_SubsurfaceAlbedoOpacity;SubsurfaceAlbedoOpacity;37;0;Fetch;True;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;357;-367.5846,2072.381;Inherit;False;Property;_SubSurfaceParallax;SubSurface Parallax;47;1;[HideInInspector];Fetch;True;0;0;True;0;False;-0.000363;-0.000363;-0.002;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;221;646.7312,-2326.063;Inherit;False;Property;_OcclusionColor;OcclusionColor;20;0;Fetch;True;0;0;True;0;False;0,0,0,0;0.2547116,0.09491272,0.09491272,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;549;1783.923,17.922;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;235;-278.0352,-168.5904;Inherit;False;Property;_Cutoff;Cutoff;24;0;Create;True;0;0;True;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;371;40.70667,577.8531;Inherit;False;Property;SSS_shader;;0;1;[HideInInspector];Fetch;False;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;552;-4109.435,429.5126;Inherit;True;Property;_WeatheringMask;WeatheringMask;10;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;9bbd543a489e4f64fbb614583620644b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;362;-69.05493,1794.531;Inherit;False;Property;_AlbedoTile;AlbedoTile;25;0;Fetch;True;0;0;True;0;False;1;1;1;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;370;-1528.563,1871.76;Inherit;False;Property;_TransRange;TransRange;41;0;Fetch;True;0;0;True;0;False;0.5;0.5;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;366;-370.6236,1883.734;Inherit;False;Property;_FresnelIntensity;FresnelIntensity;48;1;[HideInInspector];Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;402;-3966.821,1614.192;Inherit;True;Property;_ProfileTex;ProfileTex;13;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;372;-3763.049,216.175;Inherit;True;Property;_DetailMainTex;DetailMainTex;5;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;130;-3763.658,8.660002;Inherit;True;Property;_BumpMap2;BumpMap2;4;2;[NoScaleOffset];[Normal];Fetch;True;0;0;True;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;368;-1530.033,1740.305;Inherit;False;Property;_TransDynamic;TransDynamic;40;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;82;-3770.356,628.1367;Inherit;True;Property;_NailMask;NailMask;8;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;8bd8d1582883bd44581607b7100adf7c;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;699;4108.604,-908.6036;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;359;-368.3495,1977.078;Inherit;False;Property;SUBSURFACE_PARALLAX;SUBSURFACE_PARALLAX;46;1;[HideInInspector];Fetch;False;0;0;True;1;Toggle(SUBSURFACE_PARALLAX);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;539;2197.411,276.0707;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;757;-1193.97,924.0066;Inherit;False;Property;_VeinsOpacity;VeinsOpacity;42;0;Fetch;True;0;0;True;0;False;1;0.992;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;129;-3763.969,-216.9282;Inherit;True;Property;_BumpMap;BumpMap;3;2;[NoScaleOffset];[Normal];Fetch;True;0;0;True;0;False;-1;None;7d90d1c4dcc6e4349a1aea0367818df7;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;81;-4115.125,7.752043;Inherit;True;Property;_Texture3;Texture3;7;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;a8b471b438eb77a428b3501816c22924;True;1;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;4311.318,-1137.718;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Hanmen/Next-Gen Face;False;False;False;False;False;False;False;True;False;False;False;False;False;False;False;False;True;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0;True;True;-40;True;Opaque;;AlphaTest;All;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;10;10000;True;1;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;True;235;1;Include;;True;2ba580a89acd8064088f619c7025925c;Custom;0;0;False;0.1;False;-1;0;False;-1;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;3;0;732;1
WireConnection;3;1;732;2
WireConnection;747;0;9;0
WireConnection;741;0;8;0
WireConnection;5;1;3;0
WireConnection;22;0;5;0
WireConnection;22;1;741;0
WireConnection;22;2;747;0
WireConnection;746;0;732;3
WireConnection;746;1;732;4
WireConnection;10;0;22;0
WireConnection;10;1;750;0
WireConnection;751;0;10;0
WireConnection;751;1;746;0
WireConnection;751;2;750;0
WireConnection;25;0;751;0
WireConnection;86;1;45;0
WireConnection;424;0;86;3
WireConnection;424;1;415;2
WireConnection;46;0;424;0
WireConnection;97;0;94;0
WireConnection;638;0;97;0
WireConnection;561;0;560;1
WireConnection;561;1;560;2
WireConnection;590;0;588;0
WireConnection;590;1;589;0
WireConnection;187;0;753;0
WireConnection;189;0;101;0
WireConnection;641;0;187;0
WireConnection;637;0;638;0
WireConnection;594;0;590;0
WireConnection;559;0;561;0
WireConnection;559;1;682;0
WireConnection;175;0;641;0
WireConnection;98;0;96;2
WireConnection;98;1;189;0
WireConnection;98;2;637;0
WireConnection;595;0;555;2
WireConnection;595;1;594;0
WireConnection;562;0;559;0
WireConnection;628;0;98;0
WireConnection;171;0;185;0
WireConnection;528;0;175;1
WireConnection;591;0;595;0
WireConnection;476;0;474;3
WireConnection;169;0;175;0
WireConnection;169;1;171;0
WireConnection;178;0;528;0
WireConnection;178;1;171;0
WireConnection;634;0;628;0
WireConnection;445;0;462;0
WireConnection;557;1;587;0
WireConnection;697;0;47;4
WireConnection;529;0;175;0
WireConnection;692;0;686;4
WireConnection;444;0;443;0
WireConnection;627;0;98;0
WireConnection;754;0;187;0
WireConnection;149;0;161;0
WireConnection;179;0;169;0
WireConnection;179;1;175;1
WireConnection;679;0;590;0
WireConnection;154;0;155;0
WireConnection;75;0;86;3
WireConnection;75;1;697;0
WireConnection;75;2;415;2
WireConnection;477;0;476;0
WireConnection;477;1;473;0
WireConnection;691;0;692;0
WireConnection;447;0;445;1
WireConnection;447;1;444;0
WireConnection;446;0;445;0
WireConnection;446;1;444;0
WireConnection;172;0;529;0
WireConnection;172;1;178;0
WireConnection;565;0;695;0
WireConnection;636;0;634;0
WireConnection;662;0;557;2
WireConnection;662;1;664;0
WireConnection;411;0;47;0
WireConnection;633;0;636;0
WireConnection;688;0;477;0
WireConnection;688;1;691;0
WireConnection;567;0;586;0
WireConnection;181;1;172;0
WireConnection;663;0;662;0
WireConnection;663;1;679;0
WireConnection;158;0;149;0
WireConnection;158;1;154;0
WireConnection;407;0;75;0
WireConnection;568;0;565;0
WireConnection;168;1;754;0
WireConnection;629;0;627;0
WireConnection;142;0;149;1
WireConnection;142;1;154;0
WireConnection;180;1;179;0
WireConnection;687;0;686;0
WireConnection;449;0;445;0
WireConnection;449;1;447;0
WireConnection;419;0;411;0
WireConnection;448;0;446;0
WireConnection;448;1;445;1
WireConnection;632;0;633;0
WireConnection;658;0;663;0
WireConnection;451;1;449;0
WireConnection;569;0;567;1
WireConnection;569;1;568;0
WireConnection;631;0;629;0
WireConnection;177;0;181;2
WireConnection;177;1;168;2
WireConnection;570;0;567;0
WireConnection;570;1;568;0
WireConnection;146;0;158;0
WireConnection;146;1;149;1
WireConnection;690;0;687;0
WireConnection;153;0;149;0
WireConnection;153;1;142;0
WireConnection;450;1;448;0
WireConnection;683;0;688;0
WireConnection;452;1;462;0
WireConnection;176;0;180;2
WireConnection;176;1;168;2
WireConnection;297;0;269;0
WireConnection;409;0;85;0
WireConnection;184;0;177;0
WireConnection;184;1;632;0
WireConnection;143;1;146;0
WireConnection;454;0;450;1
WireConnection;454;1;452;1
WireConnection;453;0;451;1
WireConnection;453;1;452;1
WireConnection;159;1;153;0
WireConnection;183;0;176;0
WireConnection;183;1;631;0
WireConnection;571;0;570;0
WireConnection;571;1;567;1
WireConnection;160;1;161;0
WireConnection;439;0;730;1
WireConnection;439;1;297;0
WireConnection;76;0;409;0
WireConnection;76;1;422;0
WireConnection;76;2;423;0
WireConnection;626;0;658;0
WireConnection;572;0;567;0
WireConnection;572;1;569;0
WireConnection;575;1;571;0
WireConnection;174;2;184;0
WireConnection;144;0;159;2
WireConnection;144;1;160;2
WireConnection;148;0;143;2
WireConnection;148;1;160;2
WireConnection;170;2;183;0
WireConnection;455;0;454;0
WireConnection;455;1;466;0
WireConnection;468;0;439;0
WireConnection;675;0;674;0
WireConnection;574;1;572;0
WireConnection;684;0;76;0
WireConnection;684;1;689;0
WireConnection;684;2;685;0
WireConnection;456;0;453;0
WireConnection;456;1;466;0
WireConnection;573;1;586;0
WireConnection;671;0;613;0
WireConnection;412;0;68;0
WireConnection;457;2;455;0
WireConnection;145;0;144;0
WireConnection;578;0;574;3
WireConnection;578;1;573;3
WireConnection;577;0;575;3
WireConnection;577;1;573;3
WireConnection;677;0;675;0
WireConnection;518;0;684;0
WireConnection;458;2;456;0
WireConnection;152;0;148;0
WireConnection;173;0;170;0
WireConnection;173;1;174;0
WireConnection;580;0;577;0
WireConnection;580;1;696;0
WireConnection;668;0;671;0
WireConnection;579;0;578;0
WireConnection;579;1;696;0
WireConnection;72;0;412;0
WireConnection;150;2;145;0
WireConnection;156;2;152;0
WireConnection;186;0;173;0
WireConnection;517;0;684;0
WireConnection;517;1;518;0
WireConnection;517;2;508;0
WireConnection;676;0;677;0
WireConnection;459;0;457;0
WireConnection;459;1;458;0
WireConnection;608;0;517;0
WireConnection;608;1;676;0
WireConnection;608;2;668;0
WireConnection;116;5;108;0
WireConnection;460;0;459;0
WireConnection;151;0;156;0
WireConnection;151;1;150;0
WireConnection;582;2;580;0
WireConnection;117;5;110;0
WireConnection;581;2;579;0
WireConnection;188;0;186;0
WireConnection;592;0;555;2
WireConnection;592;1;590;0
WireConnection;583;0;582;0
WireConnection;583;1;581;0
WireConnection;463;0;460;0
WireConnection;78;0;608;0
WireConnection;78;1;77;0
WireConnection;120;0;117;0
WireConnection;120;1;116;0
WireConnection;147;0;151;0
WireConnection;650;1;651;0
WireConnection;584;0;583;0
WireConnection;125;0;120;0
WireConnection;125;1;190;0
WireConnection;599;0;592;0
WireConnection;652;0;650;3
WireConnection;652;1;647;0
WireConnection;79;0;78;0
WireConnection;163;0;147;0
WireConnection;464;0;125;0
WireConnection;464;1;465;0
WireConnection;694;0;652;0
WireConnection;273;1;755;0
WireConnection;585;0;584;0
WireConnection;693;0;694;0
WireConnection;619;0;605;0
WireConnection;756;1;273;4
WireConnection;756;2;730;2
WireConnection;759;0;464;0
WireConnection;759;1;164;0
WireConnection;759;2;760;0
WireConnection;276;0;270;1
WireConnection;327;0;316;0
WireConnection;618;0;619;0
WireConnection;282;0;756;0
WireConnection;282;1;276;0
WireConnection;340;0;331;0
WireConnection;340;1;327;0
WireConnection;340;2;333;0
WireConnection;646;0;759;0
WireConnection;646;1;598;0
WireConnection;646;2;693;0
WireConnection;294;0;282;0
WireConnection;294;1;761;0
WireConnection;294;2;292;0
WireConnection;376;0;646;0
WireConnection;606;0;557;2
WireConnection;606;1;618;0
WireConnection;329;0;340;0
WireConnection;339;0;329;0
WireConnection;705;0;703;0
WireConnection;705;1;704;0
WireConnection;217;0;216;2
WireConnection;527;0;334;0
WireConnection;437;0;294;0
WireConnection;437;1;470;0
WireConnection;526;0;340;0
WireConnection;610;0;606;0
WireConnection;610;1;679;0
WireConnection;706;0;705;0
WireConnection;625;0;610;0
WireConnection;707;0;722;0
WireConnection;392;0;437;0
WireConnection;392;2;383;3
WireConnection;344;0;339;0
WireConnection;344;1;526;0
WireConnection;344;2;527;0
WireConnection;614;0;625;0
WireConnection;318;0;313;0
WireConnection;295;0;392;0
WireConnection;708;0;721;0
WireConnection;354;0;344;0
WireConnection;709;0;706;0
WireConnection;709;1;707;0
WireConnection;317;0;312;0
WireConnection;317;1;310;0
WireConnection;317;2;314;0
WireConnection;320;0;311;0
WireConnection;546;0;299;0
WireConnection;776;0;769;0
WireConnection;550;0;543;0
WireConnection;550;2;531;0
WireConnection;324;0;321;4
WireConnection;324;1;317;0
WireConnection;324;2;320;0
WireConnection;724;0;721;0
WireConnection;724;1;762;1
WireConnection;724;2;727;0
WireConnection;711;0;708;0
WireConnection;547;0;543;0
WireConnection;611;0;614;0
WireConnection;710;0;709;0
WireConnection;545;0;544;0
WireConnection;326;0;318;0
WireConnection;548;0;547;0
WireConnection;548;2;546;0
WireConnection;548;3;545;0
WireConnection;771;0;776;0
WireConnection;328;0;324;0
WireConnection;328;1;326;0
WireConnection;328;2;325;0
WireConnection;712;0;710;0
WireConnection;712;1;711;0
WireConnection;716;0;715;1
WireConnection;716;1;714;0
WireConnection;716;2;724;0
WireConnection;537;0;550;0
WireConnection;537;1;533;0
WireConnection;775;0;772;0
WireConnection;332;0;323;0
WireConnection;332;1;322;0
WireConnection;763;0;775;0
WireConnection;763;2;771;0
WireConnection;718;0;712;0
WireConnection;718;1;716;0
WireConnection;673;0;672;0
WireConnection;336;0;332;0
WireConnection;335;0;328;0
WireConnection;538;0;548;0
WireConnection;659;0;537;0
WireConnection;659;1;661;0
WireConnection;659;2;616;0
WireConnection;766;1;659;0
WireConnection;766;2;763;0
WireConnection;219;1;216;2
WireConnection;219;2;218;0
WireConnection;653;0;538;0
WireConnection;653;1;673;0
WireConnection;653;2;655;0
WireConnection;719;0;718;0
WireConnection;346;0;341;0
WireConnection;346;1;342;0
WireConnection;542;0;766;0
WireConnection;220;0;219;0
WireConnection;541;0;653;0
WireConnection;352;0;346;0
WireConnection;729;0;723;0
WireConnection;728;0;729;0
WireConnection;698;0;525;0
WireConnection;698;1;375;0
WireConnection;698;3;378;0
WireConnection;698;4;379;0
WireConnection;698;5;380;0
WireConnection;104;0;101;0
WireConnection;731;0;377;0
WireConnection;534;0;549;0
WireConnection;534;1;549;1
WireConnection;534;2;549;2
WireConnection;534;3;550;0
WireConnection;549;0;548;0
WireConnection;699;0;698;0
WireConnection;699;1;728;0
WireConnection;539;0;534;0
WireConnection;0;0;525;0
WireConnection;0;2;731;0
WireConnection;0;13;699;0
ASEEND*/
//CHKSM=F715809B43A2B96679E6B6DE9DBD94AD1413E817