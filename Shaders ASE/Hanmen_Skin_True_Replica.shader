// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Next-Gen Body"
{
	Properties
	{
		[HideInInspector]SSS_shader("", Float) = 1
		[NoScaleOffset]_AlphaMask("AlphaMask", 2D) = "white" {}
		[NoScaleOffset]_AlphaMask2("AlphaMask2", 2D) = "white" {}
		[NoScaleOffset]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Normal]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Normal]_BumpMap2("BumpMap2", 2D) = "bump" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset]_Texture2("Texture2", 2D) = "white" {}
		[NoScaleOffset]_Texture3("Texture3", 2D) = "black" {}
		[NoScaleOffset]_NailMask("NailMask", 2D) = "white" {}
		[NoScaleOffset]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		[NoScaleOffset]_ProfileTex("ProfileTex", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,0)
		_Color2("Color2 (Nipples)", Color) = (1,0.5424528,0.5424528,0)
		_Color3("Color3 (Hairs)", Color) = (1,1,1,0)
		_Color13("Color13 (Nails)", Color) = (1,1,1,0.5019608)
		[Header (Specularity)]_SpecColor("SpecColor", Color) = (0.2,0.2,0.2,0)
		_NailSpecularColor("NailSpecularColor", Color) = (0.5,0.5,0.5,0)
		_OcclusionColor("OcclusionColor", Color) = (0,0,0,0)
		_SubNipColor("Subsurface Nipple Color", Color) = (0,0,0,0)
		_VeinsColor("VeinsColor", Color) = (0,0,0,0)
		[Header (Separate Profile)]_ProfileColor("Profile Color", Color) = (0,0,0,0)
		_DetailUV("DetailUV", Vector) = (100,100,0,0)
		_Texture3UV("Texture3UV", Vector) = (0,0,0,0)
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_Cutoff2("Cutoff2", Range( 0 , 1)) = 0.5
		_ExAlpha("ExAlpha", Range( 0 , 1)) = 0
		_AlbedoTile("AlbedoTile", Range( 1 , 20)) = 1
		_Texture3Rotator("Texture3Rotator", Range( -1 , 1)) = 0
		_BumpScale("BumpScale", Range( 0 , 1)) = 1
		_BumpScale3("BumpScale3", Range( 0 , 1)) = 1
		_BumpScale2("BumpScale2", Range( 0 , 1)) = 1
		_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 0.25
		_NipScale("NipScale", Range( 0 , 1)) = 0.7
		_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_Gloss("Gloss", Range( 0 , 1)) = 1
		_SecondaryGloss("SecondaryGloss", Range( 0 , 1)) = 0
		_SecondaryGlossPower("SecondaryGlossPower", Range( 0 , 2)) = 0
		_NipGloss("NipGloss", Range( 0 , 1)) = 0
		_NailGloss("NailGloss", Range( 0 , 1)) = 0
		[Header (Ambient Occlusion)]_OcclusionStrength("OcclusionStrength", Range( 0 , 1)) = 0
		[NoScaleOffset]_SubsurfaceAlbedo("SubsurfaceAlbedo", 2D) = "white" {}
		_AlbedoOpacity("AlbedoOpacity", Range( 0 , 1)) = 1
		_SubsurfaceAlbedoOpacity("SubsurfaceAlbedoOpacity", Range( 0 , 1)) = 0
		_VeinsOpacity("VeinsOpacity", Range( 0 , 2)) = 1
		_SubsurfaceAlbedoSaturation("SubsurfaceAlbedoSaturation", Range( 0 , 1)) = 1
		_TransmissionColor("TransmissionColor", Color) = (0.2,0.2,0.2,0)
		_TransOcclusion("TransOcclusion", Range( 0 , 1)) = 1
		_TransRange("TransRange", Range( 0 , 5)) = 0.5
		_TransShadows("TransShadows", Range( 0 , 1)) = 1
		_TransBase("TransBase", Range( 0 , 5)) = 1
		_TransDynamic("TransDynamic", Range( 0 , 1)) = 1
		[HideInInspector]_CavityStrength("CavityStrength", Range( 0 , 1)) = 1
		[HideInInspector][Toggle(SUBSURFACE_PARALLAX)]SUBSURFACE_PARALLAX("SUBSURFACE_PARALLAX", Float) = 0
		[HideInInspector]_SubSurfaceParallax("SubSurface Parallax", Range( -0.002 , 0)) = -0.000363
		[HideInInspector]_FresnelIntensity("FresnelIntensity", Range( 0 , 1)) = 1
		[HideInInspector]_alpha_a("alpha_a", Float) = 1
		[HideInInspector]_alpha_c("alpha_c", Float) = 0
		_SpecularRim("SpecularRim", Range( 0 , 1)) = 0
		[HideInInspector]_alpha_d("alpha_d", Float) = 0
		[HideInInspector]_alpha_b("alpha_b", Float) = 0
		[HideInInspector][NoScaleOffset]_LightingTexBlurred("LightingTexBlurred", 2D) = "white" {}
		_BumpMap3("BumpMap3", 2D) = "bump" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "AlphaTest-40" "IsEmissive" = "true"  }
		Cull Back
		AlphaToMask On
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
			float3 worldNormal;
			INTERNAL_DATA
			float2 uv3_texcoord3;
			float4 vertexColor : COLOR;
			float2 uv2_texcoord2;
			float4 screenPos;
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

		uniform sampler2D _DetailMainTex;
		uniform float _Cutoff;
		uniform sampler2D _AlphaMask2;
		uniform float _Cutoff2;
		uniform sampler2D _AlphaMask;
		uniform sampler2D _DetailGlossMap;
		uniform sampler2D _Texture3;
		uniform sampler2D _BumpMap3;
		uniform float4 _BumpMap3_ST;
		uniform half _BumpScale3;
		uniform float2 _DetailUV;
		uniform float4 _Texture3UV;
		uniform float _Texture3Rotator;
		uniform float4 _OcclusionMap_ST;
		uniform float _ExGloss;
		uniform float4 _Color13;
		uniform float4 _Color2;
		uniform float4 _Color3;
		uniform float _alpha_d;
		uniform float _alpha_a;
		uniform float _alpha_b;
		uniform float _alpha_c;
		uniform float _ExAlpha;
		uniform float4 _NailSpecularColor;
		uniform float _Gloss;
		uniform float _NailGloss;
		uniform float _NipGloss;
		uniform float _SpecularRim;
		uniform float _SecondaryGloss;
		uniform float _SecondaryGlossPower;


		float3 ShadeSH9326( float3 worldNormal )
		{
			return ShadeSH9(float4(worldNormal,1));
		}


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
			float2 uv_AlphaMask266 = i.uv_texcoord;
			float4 tex2DNode266 = tex2D( _AlphaMask, uv_AlphaMask266 );
			float3 appendResult238 = (float3(_alpha_d , _alpha_a , _alpha_b));
			float3 break262 = ( 1.0 - appendResult238 );
			float exgloss297 = _ExGloss;
			float2 uv_AlphaMask2259 = i.uv_texcoord;
			float AlphaMask233 = min( max( max( min( max( tex2DNode266.r , break262.y ) , max( tex2DNode266.g , break262.z ) ) , ( tex2DNode266.b * _alpha_c ) ) , ( exgloss297 == _ExAlpha ? 0.0 : 0.0 ) ) , max( tex2D( _AlphaMask2, uv_AlphaMask2259 ).r , break262.x ) );
			SurfaceOutputStandardSpecular s573 = (SurfaceOutputStandardSpecular ) 0;
			float3 temp_cast_3 = (0.0).xxx;
			s573.Albedo = temp_cast_3;
			float2 uv_BumpMap117 = i.uv_texcoord;
			float2 uv_BumpMap2116 = i.uv_texcoord;
			float2 uv_BumpMap3 = i.uv_texcoord * _BumpMap3_ST.xy + _BumpMap3_ST.zw;
			float2 uv_TexCoord187 = i.uv_texcoord * _DetailUV;
			float2 DetailUV588 = uv_TexCoord187;
			float2 break175 = DetailUV588;
			float temp_output_171_0 = ( pow( 0.3 , 2.0 ) * 0.1 );
			float2 appendResult179 = (float2(( break175.x + temp_output_171_0 ) , break175.y));
			float4 tex2DNode168 = tex2D( _DetailGlossMap, DetailUV588 );
			float2 uv_NailMask96 = i.uv_texcoord;
			float2 appendResult540 = (float2(_Texture3UV.x , _Texture3UV.y));
			float2 uv3_TexCoord545 = i.uv3_texcoord3 + appendResult540;
			float cos546 = cos( ( _Texture3Rotator * UNITY_PI ) );
			float sin546 = sin( ( _Texture3Rotator * UNITY_PI ) );
			float2 rotator546 = mul( uv3_TexCoord545 - float2( 0.3,0.4 ) , float2x2( cos546 , -sin546 , sin546 , cos546 )) + float2( 0.3,0.4 );
			float2 _Vector0 = float2(0.1,0.43);
			float2 appendResult548 = (float2(_Texture3UV.z , _Texture3UV.w));
			float2 PublicHairUV25 = (( rotator546 - _Vector0 )*appendResult548 + _Vector0);
			float4 tex2DNode86 = tex2D( _Texture3, PublicHairUV25 );
			float hair46 = ( tex2DNode86.b * i.vertexColor.g );
			float temp_output_98_0 = ( tex2D( _NailMask, uv_NailMask96 ).g * ( 1.0 - (1.0 + (_DetailNormalMapScale - 0.0) * (13.0 - 1.0) / (9.0 - 0.0)) ) * ( 1.0 - hair46 ) );
			float3 appendResult170 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult179 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float2 appendResult172 = (float2(break175.x , ( break175.y + temp_output_171_0 )));
			float3 appendResult174 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult172 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float3 normalizeResult186 = normalize( cross( appendResult170 , appendResult174 ) );
			float3 DetailNormal188 = normalizeResult186;
			float2 _Vector2 = float2(0.5,0.5);
			float2 clampResult38 = clamp( ( ( ( 1.0 - (-1.0 + (_NipScale - 0.0) * (0.1 - -1.0) / (1.0 - 0.0)) ) * ( i.uv2_texcoord2 - _Vector2 ) ) + _Vector2 ) , float2( 0,0 ) , float2( 1,1 ) );
			float2 NipUV239 = clampResult38;
			float2 break200 = NipUV239;
			float temp_output_194_0 = ( pow( 0.3 , 3.0 ) * 0.2 );
			float2 appendResult206 = (float2(( break200.x + temp_output_194_0 ) , break200.y));
			float4 tex2DNode197 = tex2D( _Texture2, NipUV239 );
			float2 _Vector1 = float2(0.5,0.5);
			float2 clampResult24 = clamp( ( ( ( 1.0 - (-3.0 + (_NipScale - 0.0) * (0.2 - -3.0) / (1.0 - 0.0)) ) * ( i.uv2_texcoord2 - _Vector1 ) ) + _Vector1 ) , float2( 0,0 ) , float2( 1,1 ) );
			float2 NipUV127 = clampResult24;
			float lerpResult113 = lerp( 0.0 , 1.0 , ( tex2D( _Texture2, NipUV127 ).b * ( 1.0 - i.vertexColor.g ) ));
			float temp_output_121_0 = ( lerpResult113 * 7.0 );
			float3 appendResult198 = (float3(1.0 , 0.0 , ( ( tex2D( _Texture2, appendResult206 ).g - tex2DNode197.g ) * temp_output_121_0 )));
			float2 appendResult195 = (float2(break200.x , ( break200.y + temp_output_194_0 )));
			float3 appendResult192 = (float3(0.0 , 1.0 , ( ( tex2D( _Texture2, appendResult195 ).g - tex2DNode197.g ) * temp_output_121_0 )));
			float3 normalizeResult208 = normalize( cross( appendResult198 , appendResult192 ) );
			float3 NipNormal211 = normalizeResult208;
			float2 break149 = PublicHairUV25;
			float temp_output_154_0 = ( pow( 0.2 , 3.0 ) * 0.1 );
			float2 appendResult146 = (float2(( break149.x + temp_output_154_0 ) , break149.y));
			float4 tex2DNode160 = tex2D( _Texture3, PublicHairUV25 );
			float3 appendResult156 = (float3(1.0 , 0.0 , ( ( tex2D( _Texture3, appendResult146 ).g - tex2DNode160.g ) * 2.0 )));
			float2 appendResult153 = (float2(break149.x , ( break149.y + temp_output_154_0 )));
			float3 appendResult150 = (float3(0.0 , 1.0 , ( ( tex2D( _Texture3, appendResult153 ).g - tex2DNode160.g ) * 2.0 )));
			float3 normalizeResult147 = normalize( cross( appendResult156 , appendResult150 ) );
			float3 HairNormal163 = normalizeResult147;
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
			float3 NormalMix376 = BlendNormals( BlendNormals( BlendNormals( BlendNormals( BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap117 ), _BumpScale ) , UnpackScaleNormal( tex2D( _BumpMap2, uv_BumpMap2116 ), _BumpScale2 ) ) , UnpackScaleNormal( tex2D( _BumpMap3, uv_BumpMap3 ), _BumpScale3 ) ) , DetailNormal188 ) , NipNormal211 ) , HairNormal163 ) , WetNormal463 );
			s573.Normal = WorldNormalVector( i , NormalMix376 );
			s573.Emission = float3( 0,0,0 );
			float4 color530 = IsGammaSpace() ? float4(0.2,0.2,0.2,0) : float4(0.03310476,0.03310476,0.03310476,0);
			float3 nailglosscolor504 = (_NailSpecularColor).rgb;
			float2 uv_NailMask83 = i.uv_texcoord;
			float4 tex2DNode83 = tex2D( _NailMask, uv_NailMask83 );
			float nails426 = tex2DNode83.b;
			float3 lerpResult496 = lerp( (( exgloss297 == 0.0 ? (_SpecColor).rgb : (color530).rgb )).xyz , nailglosscolor504 , nails426);
			float3 Specular306 = lerpResult496;
			s573.Specular = Specular306;
			float2 uv_NailMask538 = i.uv_texcoord;
			float4 tex2DNode538 = tex2D( _NailMask, uv_NailMask538 );
			float lerpResult583 = lerp( 0.85 , tex2D( _DetailGlossMap, DetailUV588 ).a , tex2DNode538.g);
			float2 uv_OcclusionMap270 = i.uv_texcoord;
			float wetness_alpha468 = ( tex2DNode538.r * exgloss297 );
			float lerpResult425 = lerp( ( ( lerpResult583 - ( 1.0 - tex2D( _OcclusionMap, uv_OcclusionMap270 ).r ) ) + wetness_alpha468 ) , _NailGloss , nails426);
			float temp_output_280_0 = ( tex2D( _Texture2, NipUV127 ).b * ( 1.0 - i.vertexColor.g ) );
			float lerpResult293 = lerp( lerpResult425 , ( _NipGloss * temp_output_280_0 ) , temp_output_280_0);
			float lerpResult294 = lerp( lerpResult293 , 0.5 , hair46);
			float GlossMapsMix295 = lerpResult294;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float fresnelNdotV603 = dot( (WorldNormalVector( i , NormalMix376 )), ase_worldViewDir );
			float fresnelNode603 = ( 1.0 + ( 1.0 - (1.0 + (_SpecularRim - 0.0) * (2.0 - 1.0) / (1.0 - 0.0)) ) * pow( 1.0 - fresnelNdotV603, 4.0 ) );
			float lerpResult604 = lerp( 1.0 , ( ( exgloss297 == 0.0 ? _Gloss : 1.0 ) * GlossMapsMix295 ) , fresnelNode603);
			float Smoothness307 = lerpResult604;
			s573.Smoothness = Smoothness307;
			float2 uv_OcclusionMap216 = i.uv_texcoord;
			float4 tex2DNode216 = tex2D( _OcclusionMap, uv_OcclusionMap216 );
			float lerpResult219 = lerp( 1.0 , tex2DNode216.g , _OcclusionStrength);
			float occlusion220 = lerpResult219;
			s573.Occlusion = occlusion220;

			data.light = gi.light;

			UnityGI gi573 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g573 = UnityGlossyEnvironmentSetup( s573.Smoothness, data.worldViewDir, s573.Normal, float3(0,0,0));
			gi573 = UnityGlobalIllumination( data, s573.Occlusion, s573.Normal, g573 );
			#endif

			float3 surfResult573 = LightingStandardSpecular ( s573, viewDir, gi573 ).rgb;
			surfResult573 += s573.Emission;

			#ifdef UNITY_PASS_FORWARDADD//573
			surfResult573 -= s573.Emission;
			#endif//573
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 normalizeResult559 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult561 = dot( normalizeResult559 , normalize( (WorldNormalVector( i , NormalMix376 )) ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 Specularity2572 = ( pow( max( dotResult561 , 0.0 ) , exp( ( _SecondaryGloss * 10 ) ) ) * ( ase_lightColor.rgb * ase_lightAtten * ( _SecondaryGloss * GlossMapsMix295 * _SecondaryGlossPower ) ) );
			c.rgb = ( surfResult573 + Specularity2572 );
			c.a = 1;
			clip( AlphaMask233 - _Cutoff2 );
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
			float2 uv_NailMask321 = i.uv_texcoord;
			float2 uv_OcclusionMap216 = i.uv_texcoord;
			float4 tex2DNode216 = tex2D( _OcclusionMap, uv_OcclusionMap216 );
			float occlusion_sample217 = tex2DNode216.g;
			float lerpResult317 = lerp( 1.0 , occlusion_sample217 , _TransOcclusion);
			float2 uv_BumpMap117 = i.uv_texcoord;
			float2 uv_BumpMap2116 = i.uv_texcoord;
			float2 uv_BumpMap3 = i.uv_texcoord * _BumpMap3_ST.xy + _BumpMap3_ST.zw;
			float2 uv_TexCoord187 = i.uv_texcoord * _DetailUV;
			float2 DetailUV588 = uv_TexCoord187;
			float2 break175 = DetailUV588;
			float temp_output_171_0 = ( pow( 0.3 , 2.0 ) * 0.1 );
			float2 appendResult179 = (float2(( break175.x + temp_output_171_0 ) , break175.y));
			float4 tex2DNode168 = tex2D( _DetailGlossMap, DetailUV588 );
			float2 uv_NailMask96 = i.uv_texcoord;
			float2 appendResult540 = (float2(_Texture3UV.x , _Texture3UV.y));
			float2 uv3_TexCoord545 = i.uv3_texcoord3 + appendResult540;
			float cos546 = cos( ( _Texture3Rotator * UNITY_PI ) );
			float sin546 = sin( ( _Texture3Rotator * UNITY_PI ) );
			float2 rotator546 = mul( uv3_TexCoord545 - float2( 0.3,0.4 ) , float2x2( cos546 , -sin546 , sin546 , cos546 )) + float2( 0.3,0.4 );
			float2 _Vector0 = float2(0.1,0.43);
			float2 appendResult548 = (float2(_Texture3UV.z , _Texture3UV.w));
			float2 PublicHairUV25 = (( rotator546 - _Vector0 )*appendResult548 + _Vector0);
			float4 tex2DNode86 = tex2D( _Texture3, PublicHairUV25 );
			float hair46 = ( tex2DNode86.b * i.vertexColor.g );
			float temp_output_98_0 = ( tex2D( _NailMask, uv_NailMask96 ).g * ( 1.0 - (1.0 + (_DetailNormalMapScale - 0.0) * (13.0 - 1.0) / (9.0 - 0.0)) ) * ( 1.0 - hair46 ) );
			float3 appendResult170 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult179 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float2 appendResult172 = (float2(break175.x , ( break175.y + temp_output_171_0 )));
			float3 appendResult174 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult172 ).g - tex2DNode168.g ) * temp_output_98_0 )));
			float3 normalizeResult186 = normalize( cross( appendResult170 , appendResult174 ) );
			float3 DetailNormal188 = normalizeResult186;
			float2 _Vector2 = float2(0.5,0.5);
			float2 clampResult38 = clamp( ( ( ( 1.0 - (-1.0 + (_NipScale - 0.0) * (0.1 - -1.0) / (1.0 - 0.0)) ) * ( i.uv2_texcoord2 - _Vector2 ) ) + _Vector2 ) , float2( 0,0 ) , float2( 1,1 ) );
			float2 NipUV239 = clampResult38;
			float2 break200 = NipUV239;
			float temp_output_194_0 = ( pow( 0.3 , 3.0 ) * 0.2 );
			float2 appendResult206 = (float2(( break200.x + temp_output_194_0 ) , break200.y));
			float4 tex2DNode197 = tex2D( _Texture2, NipUV239 );
			float2 _Vector1 = float2(0.5,0.5);
			float2 clampResult24 = clamp( ( ( ( 1.0 - (-3.0 + (_NipScale - 0.0) * (0.2 - -3.0) / (1.0 - 0.0)) ) * ( i.uv2_texcoord2 - _Vector1 ) ) + _Vector1 ) , float2( 0,0 ) , float2( 1,1 ) );
			float2 NipUV127 = clampResult24;
			float lerpResult113 = lerp( 0.0 , 1.0 , ( tex2D( _Texture2, NipUV127 ).b * ( 1.0 - i.vertexColor.g ) ));
			float temp_output_121_0 = ( lerpResult113 * 7.0 );
			float3 appendResult198 = (float3(1.0 , 0.0 , ( ( tex2D( _Texture2, appendResult206 ).g - tex2DNode197.g ) * temp_output_121_0 )));
			float2 appendResult195 = (float2(break200.x , ( break200.y + temp_output_194_0 )));
			float3 appendResult192 = (float3(0.0 , 1.0 , ( ( tex2D( _Texture2, appendResult195 ).g - tex2DNode197.g ) * temp_output_121_0 )));
			float3 normalizeResult208 = normalize( cross( appendResult198 , appendResult192 ) );
			float3 NipNormal211 = normalizeResult208;
			float2 break149 = PublicHairUV25;
			float temp_output_154_0 = ( pow( 0.2 , 3.0 ) * 0.1 );
			float2 appendResult146 = (float2(( break149.x + temp_output_154_0 ) , break149.y));
			float4 tex2DNode160 = tex2D( _Texture3, PublicHairUV25 );
			float3 appendResult156 = (float3(1.0 , 0.0 , ( ( tex2D( _Texture3, appendResult146 ).g - tex2DNode160.g ) * 2.0 )));
			float2 appendResult153 = (float2(break149.x , ( break149.y + temp_output_154_0 )));
			float3 appendResult150 = (float3(0.0 , 1.0 , ( ( tex2D( _Texture3, appendResult153 ).g - tex2DNode160.g ) * 2.0 )));
			float3 normalizeResult147 = normalize( cross( appendResult156 , appendResult150 ) );
			float3 HairNormal163 = normalizeResult147;
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
			float3 NormalMix376 = BlendNormals( BlendNormals( BlendNormals( BlendNormals( BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap117 ), _BumpScale ) , UnpackScaleNormal( tex2D( _BumpMap2, uv_BumpMap2116 ), _BumpScale2 ) ) , UnpackScaleNormal( tex2D( _BumpMap3, uv_BumpMap3 ), _BumpScale3 ) ) , DetailNormal188 ) , NipNormal211 ) , HairNormal163 ) , WetNormal463 );
			float3 worldNormal326 = normalize( (WorldNormalVector( i , NormalMix376 )) );
			float3 localShadeSH9326 = ShadeSH9326( worldNormal326 );
			float3 transmission_deferred335 = ( ( tex2D( _NailMask, uv_NailMask321 ).a * lerpResult317 * (_TransmissionColor).rgb ) * localShadeSH9326 * _TransBase );
			float2 uv_MainTex85 = i.uv_texcoord;
			float3 nails_color418 = (_Color13).rgb;
			float2 uv_NailMask83 = i.uv_texcoord;
			float4 tex2DNode83 = tex2D( _NailMask, uv_NailMask83 );
			float nails_alpha417 = ( _Color13.a * tex2DNode83.b );
			float3 lerpResult70 = lerp( (tex2D( _MainTex, uv_MainTex85 )).rgb , nails_color418 , nails_alpha417);
			float4 tex2DNode594 = tex2D( _Texture2, NipUV127 );
			float3 nip_color413 = ( (_Color2).rgb * tex2DNode594.r );
			float nip_alpha404 = ( _Color2.a * tex2DNode594.b * ( 1.0 - i.vertexColor.g ) );
			float3 lerpResult73 = lerp( lerpResult70 , nip_color413 , nip_alpha404);
			float3 hairs_color419 = (_Color3).rgb;
			float hairs_alpha407 = ( tex2DNode86.b * _Color3.a * i.vertexColor.g );
			float3 lerpResult76 = lerp( lerpResult73 , hairs_color419 , hairs_alpha407);
			float2 uv_NailMask538 = i.uv_texcoord;
			float4 tex2DNode538 = tex2D( _NailMask, uv_NailMask538 );
			float wetness_alpha468 = ( tex2DNode538.r * exgloss297 );
			float3 lerpResult517 = lerp( lerpResult76 , ( lerpResult76 - float3( 0.03,0.03,0.03 ) ) , wetness_alpha468);
			float3 color72 = (_Color).rgb;
			float3 albedo79 = ( lerpResult517 * color72 );
			float3 temp_output_327_0 = (albedo79).xyz;
			float grayscale329 = Luminance(temp_output_327_0);
			float3 temp_cast_1 = (( grayscale329 * 6.0 )).xxx;
			float3 temp_cast_2 = (1.0).xxx;
			float3 lerpResult340 = lerp( temp_cast_2 , temp_output_327_0 , _AlbedoOpacity);
			float3 lerpResult344 = lerp( temp_cast_1 , lerpResult340 , _SubsurfaceAlbedoSaturation);
			float3 albedo_final354 = lerpResult344;
			float3 Albedo332 = albedo_final354;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 screenPos332 = ase_screenPos;
			float3 localLightingPass332 = LightingPass332( Albedo332 , screenPos332 );
			float3 lighting_pass336 = localLightingPass332;
			float3 emission_final352 = ( transmission_deferred335 + lighting_pass336 );
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
				float4 customPack1 : TEXCOORD1;
				float2 customPack2 : TEXCOORD2;
				float4 screenPos : TEXCOORD3;
				float4 tSpace0 : TEXCOORD4;
				float4 tSpace1 : TEXCOORD5;
				float4 tSpace2 : TEXCOORD6;
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
				o.customPack1.zw = customInputData.uv3_texcoord3;
				o.customPack1.zw = v.texcoord2;
				o.customPack2.xy = customInputData.uv2_texcoord2;
				o.customPack2.xy = v.texcoord1;
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
				surfIN.uv3_texcoord3 = IN.customPack1.zw;
				surfIN.uv2_texcoord2 = IN.customPack2.xy;
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
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
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
7;1;1782;1010;8467.4;6935.722;8.565358;True;False
Node;AmplifyShaderEditor.CommentaryNode;6;-4273.842,-290.735;Inherit;False;1479.01;543.1064;Comment;11;29;27;26;24;23;20;16;15;14;13;11;NipUV1;1,0.9665769,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-4643.621,-235.1727;Inherit;False;Property;_NipScale;NipScale;34;0;Fetch;True;0;0;True;0;False;0.7;0.604;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1;-4952.338,-1322.795;Inherit;False;2078.383;809.2136;Public Hair UV;13;25;551;541;545;546;550;549;548;547;544;543;540;542;PubHairUV;1,0.9499159,0,1;0;0
Node;AmplifyShaderEditor.Vector4Node;551;-4814.948,-1193.989;Inherit;False;Property;_Texture3UV;Texture3UV;24;0;Create;True;0;0;True;0;False;0,0,0,0;0,0,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;26;-4244.511,-146.5046;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;28;-4278.671,403.6348;Inherit;False;1479.573;566.1851;Comment;10;39;38;37;36;35;34;33;32;31;30;NipUV2;1,0.982059,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;541;-4784.024,-695.8649;Inherit;False;Property;_Texture3Rotator;Texture3Rotator;29;0;Create;True;0;0;True;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;542;-4608.187,-828.067;Inherit;False;Constant;_center;center;27;0;Create;True;0;0;True;0;False;0.3,0.4;0.3,0.4;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;29;-4219.837,-3.040674;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;540;-4426.561,-1131.323;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;30;-4203.753,445.6851;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;543;-4359.373,-662.3445;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;544;-4251.492,-841.7491;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;545;-4218.708,-1216.644;Inherit;False;2;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0.2,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RotatorNode;546;-3893.538,-1217.019;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.3,0.425;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;32;-4132.849,637.6142;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;547;-3700.44,-779.6196;Inherit;False;Constant;_Vector0;Vector 0;54;0;Create;True;0;0;False;0;False;0.1,0.43;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;31;-4120.985,808.8212;Inherit;False;Constant;_Vector2;Vector 2;25;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TFHCRemapNode;33;-4118.258,461.6514;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;-1;False;4;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;35;-3836.32,578.8223;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;14;-4079.19,-56.03403;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;548;-4429.991,-1011.949;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;34;-3832.651,717.8757;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;549;-3565.536,-1114.509;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;11;-4067.329,115.1702;Inherit;False;Constant;_Vector1;Vector 1;25;0;Create;True;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CommentaryNode;167;-3049.769,-3932.132;Inherit;False;3244.838;925.0759;Comment;28;188;186;173;174;170;184;183;98;177;176;180;168;97;584;96;181;467;172;94;104;179;101;169;178;171;175;185;590;DetailGlossMap to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.TFHCRemapNode;13;-4063.601,-231.9942;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;-3;False;4;FLOAT;0.2;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;550;-3387.068,-1036.307;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;15;-3778.993,24.22495;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;36;-3658.347,642.4224;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;16;-3782.663,-114.8247;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;590;-3031.407,-3339.158;Inherit;False;850.5859;235.0637;Comment;3;587;187;588;;1,0.9878479,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;20;-3604.688,-51.22623;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;44;-4722.7,-4494.832;Inherit;False;1278.518;650.297;;10;407;419;75;411;47;46;424;415;86;45;PubicHair;1,1,1,1;0;0
Node;AmplifyShaderEditor.Vector2Node;587;-2980.107,-3265.095;Inherit;False;Property;_DetailUV;DetailUV;23;0;Create;True;0;0;True;0;False;100,100;100,100;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;37;-3490.109,789.1684;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;25;-3156.046,-1075.843;Inherit;False;PublicHairUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;187;-2709.14,-3284.013;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;100,100;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;23;-3436.452,95.51737;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;45;-4680.203,-4427.769;Inherit;False;25;PublicHairUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ClampOpNode;38;-3270.715,786.8002;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT2;1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;39;-3042.102,793.9707;Inherit;False;NipUV2;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode;185;-2098.491,-3173.557;Inherit;False;False;2;0;FLOAT;0.3;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;-2422.521,-3289.158;Inherit;False;DetailUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;86;-4426.75,-4449.797;Inherit;True;Property;_TextureSample3;Texture Sample 3;9;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;191;-2885.665,-5017.015;Inherit;False;3080.578;936.3349;Comment;27;89;90;99;103;109;118;113;121;197;210;204;192;205;209;208;207;206;203;193;201;200;199;198;196;195;194;211;Nipples Height to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.VertexColorNode;415;-4674.009,-4032.854;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;24;-3242.431,98.91605;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT2;1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;52;-4762.221,-3539.486;Inherit;False;1082.559;755.3503;Nails;10;504;426;417;418;499;498;416;410;56;83;Nails;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;162;-2471.617,-2759.325;Inherit;False;2533.256;931.9565;Comment;20;147;155;145;152;161;159;143;146;142;144;148;149;150;151;153;154;156;158;160;163;Hairs to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;118;-2183.022,-4888.271;Inherit;False;39;NipUV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;27;-3037.833,95.99754;Inherit;False;NipUV1;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-3825.716,-4412.369;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;175;-2012.031,-3278.111;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.CommentaryNode;51;-4709.081,-2338.88;Inherit;False;1183.034;571.855;Nipples;11;63;53;55;67;404;413;65;408;64;593;594;Nipples;1,1,1,1;0;0
Node;AmplifyShaderEditor.ScaleNode;171;-1916.703,-3164.931;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;207;-2098.646,-4258.439;Inherit;False;False;2;0;FLOAT;0.3;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;43;472.3747,-5794.33;Inherit;False;2962.075;1403.361;Comment;16;79;78;517;77;508;518;76;422;73;423;70;414;405;421;420;48;Albedo Mix;0.3113208,0.3113208,0.3113208,1;0;0
Node;AmplifyShaderEditor.ColorNode;64;-4669.524,-2282.69;Inherit;False;Property;_Color2;Color2 (Nipples);14;0;Create;False;0;0;True;0;False;1,0.5424528,0.5424528,0;0.6886792,0.1916602,0.1916602,0.7607843;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;200;-2012.187,-4362.993;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;83;-4711.592,-3245.869;Inherit;True;Property;_TextureSample0;Texture Sample 0;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;161;-2371.834,-2681.828;Inherit;False;25;PublicHairUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;89;-2741.048,-4774.9;Inherit;False;27;NipUV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode;155;-2231.92,-2000.75;Inherit;False;False;2;0;FLOAT;0.2;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;441;-2694.22,-6257.338;Inherit;False;2533.256;931.9565;Comment;21;460;459;458;457;456;455;454;453;452;451;450;449;448;447;446;445;444;443;462;463;466;Wetness to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.VertexColorNode;53;-4662.776,-1957.646;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;178;-1707.223,-3135.775;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;55;-4674.625,-2073.435;Inherit;False;27;NipUV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;101;-2760.178,-3852.881;Inherit;False;Property;_DetailNormalMapScale;DetailNormalMapScale;33;0;Fetch;True;0;0;True;0;False;0.25;2.511546;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;169;-1696.678,-3280.93;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;56;-4708.048,-3456.194;Inherit;False;Property;_Color13;Color13 (Nails);16;0;Create;False;0;0;True;0;False;1,1,1,0.5019608;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.VertexColorNode;99;-2560.893,-4408.352;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScaleNode;194;-1916.858,-4249.813;Inherit;False;0.2;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;46;-3682.47,-4414.508;Inherit;False;hair;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;594;-4417.812,-2095.894;Inherit;True;Property;_TextureSample31;Texture Sample 31;8;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;41;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;408;-4356.445,-2284.123;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;268;437.2572,-1901.623;Inherit;False;2720.566;1630.993;Comment;21;295;294;293;292;425;437;282;583;276;270;427;275;273;428;589;595;596;288;291;597;598;Glossiness Mix;0.4575472,0.9384768,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;193;-1696.834,-4365.813;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;410;-4501.467,-3455.046;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;462;-2589.214,-6176.558;Inherit;False;0;222;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;48;576.4445,-5114.65;Inherit;False;814.7977;591.2971;MAIN;5;72;412;68;409;85;MainTex;1,1,1,1;0;0
Node;AmplifyShaderEditor.ScaleNode;154;-2050.132,-1992.124;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;443;-2454.523,-5498.764;Inherit;False;False;2;0;FLOAT;0.2;False;1;FLOAT;3.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;94;-2771.21,-3437.707;Inherit;False;46;hair;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;90;-2508.453,-4791.388;Inherit;True;Property;_TextureSample9;Texture Sample 9;8;0;Create;True;0;0;True;0;False;-1;None;None;True;1;False;black;Auto;False;Instance;41;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;179;-1543.874,-3283.49;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;63;-4119.509,-1908.52;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;149;-2163.46,-2104.303;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;416;-4237.677,-3357.247;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;467;-1800.826,-3418.126;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCRemapNode;104;-2453.129,-3850.362;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;9;False;3;FLOAT;1;False;4;FLOAT;13;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;209;-1707.379,-4220.659;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;103;-2277.486,-4492.931;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;172;-1564.089,-3157.394;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;584;-2251.95,-3848.586;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;168;-1341.428,-3882.132;Inherit;True;Property;_NormalCreate01;NormalCreate 01;7;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;47;-4684.281,-4254.675;Inherit;False;Property;_Color3;Color3 (Hairs);15;0;Create;False;0;0;True;0;False;1,1,1,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;445;-2368.063,-5603.316;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ScaleNode;444;-2272.735,-5490.138;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;195;-1564.245,-4242.277;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;97;-2554.538,-3432.706;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;142;-1840.652,-1962.968;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;180;-1348.47,-3593.07;Inherit;True;Property;_TextureSample7;Texture Sample 7;7;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;206;-1544.03,-4368.373;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;417;-3954.954,-3362.894;Inherit;False;nails_alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;65;-3942.214,-2284.304;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;85;611.6579,-5039.5;Inherit;True;Property;_TextureSample2;Texture Sample 2;3;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;42;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;158;-1848.108,-2107.123;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;109;-2014.134,-4600.595;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;96;-2769.532,-3650.867;Inherit;True;Property;_TextureSample5;Texture Sample 5;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;67;-3935.744,-2184.008;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;428;497.836,-1334.717;Inherit;False;1041.669;334.7586;Comment;5;269;297;439;468;538;Wetness to Gloss;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;418;-3957.121,-3453.838;Inherit;False;nails_color;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;181;-1354.116,-3355.574;Inherit;True;Property;_TextureSample8;Texture Sample 8;7;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;409;1153.799,-5034.848;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;146;-1695.304,-2109.683;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;269;530.5771,-1096.829;Inherit;False;Property;_ExGloss;ExGloss;35;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;197;-1356.21,-4911.436;Inherit;True;Property;_TextureSample26;Texture Sample 26;8;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;41;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;177;-1003.365,-3408.553;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;204;-1348.626,-4677.952;Inherit;True;Property;_TextureSample10;Texture Sample 10;8;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;41;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;113;-1843.084,-4650.898;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;75;-3857.024,-4135.423;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;411;-4372.36,-4213.042;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;420;1405.125,-4878.279;Inherit;False;418;nails_color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;413;-3750.51,-2238.527;Inherit;False;nip_color;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;421;1406.577,-4784.709;Inherit;False;417;nails_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;98;-2025.288,-3597.912;Inherit;True;3;3;0;FLOAT;0;False;1;FLOAT;2;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;210;-1354.272,-4440.458;Inherit;True;Property;_TextureSample11;Texture Sample 11;8;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;41;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;176;-997.1838,-3641.388;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;447;-2063.256,-5460.981;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;446;-2052.712,-5606.137;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;153;-1697.519,-1984.586;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;404;-3743.265,-2072.415;Inherit;False;nip_alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;70;1675.447,-5033.046;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;205;-1003.521,-4493.436;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;419;-3687.241,-4258.872;Inherit;False;hairs_color;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;183;-805.5638,-3594.677;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;538;518.8054,-1293.865;Inherit;True;Property;_TextureSample29;Texture Sample 29;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;449;-1920.122,-5482.6;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;297;863.5113,-1097.432;Inherit;False;exgloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;405;1720.631,-4780.739;Inherit;False;404;nip_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;159;-1487.546,-2182.768;Inherit;True;Property;_TextureSample6;Texture Sample 6;9;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;184;-821.3219,-3451.441;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;87;416.611,-4085.643;Inherit;False;2930.126;1288.473;Comment;14;465;128;126;164;212;125;190;607;606;120;608;102;107;609;Normal Mix;0.7484773,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;407;-3692.619,-4108.204;Inherit;False;hairs_alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;121;-1642.452,-4632.04;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;7;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;160;-1474.858,-2709.325;Inherit;True;Property;_TextureSample27;Texture Sample 27;9;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;199;-997.3388,-4726.27;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;414;1722.783,-4884.675;Inherit;False;413;nip_color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;143;-1481.899,-2420.262;Inherit;True;Property;_TextureSample4;Texture Sample 4;9;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;81;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;448;-1899.907,-5608.697;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;174;-596.155,-3415.128;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;73;1997.923,-5034.887;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;423;1975.871,-4799.36;Inherit;False;407;hairs_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;439;1119.376,-1262.098;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;68;617.7746,-4735.13;Inherit;False;Property;_Color;Color;13;0;Fetch;True;0;0;True;0;False;1,1,1,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;144;-1136.794,-2235.746;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;170;-623.0696,-3643.902;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;451;-1710.149,-5680.782;Inherit;True;Property;_TextureSample21;Texture Sample 21;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;450;-1704.502,-5918.275;Inherit;True;Property;_TextureSample18;Texture Sample 18;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;201;-821.4778,-4536.324;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;452;-1697.351,-6206.338;Inherit;True;Property;_TextureSample28;Texture Sample 28;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;148;-1130.613,-2468.58;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;203;-805.7198,-4679.559;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;102;482.33,-3460.88;Inherit;False;757.8655;366.5611;Comment;2;116;108;Normal Map 2;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;107;482.9177,-3931.581;Inherit;False;754.3678;390.5132;Comment;2;117;110;Normal Map1;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;1977.871,-4887.078;Inherit;False;419;hairs_color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;608;500.325,-2936.893;Half;False;Property;_BumpScale3;BumpScale3;31;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;108;530.9584,-3208.226;Half;False;Property;_BumpScale2;BumpScale2;32;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;110;519.1345,-3662.658;Inherit;False;Property;_BumpScale;BumpScale;30;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;453;-1359.397,-5733.76;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;76;2264.029,-5035.478;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;454;-1353.216,-5966.594;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;198;-623.2258,-4728.785;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;412;884.2498,-4721.879;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;173;-461.9072,-3541.866;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;192;-596.3109,-4500.011;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;468;1308.321,-1266.576;Inherit;False;wetness_alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;152;-938.9941,-2421.869;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;145;-954.7524,-2278.633;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;466;-1278.01,-6112.262;Inherit;False;297;exgloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;606;890.5049,-3062.882;Inherit;True;Property;_BumpMap3;BumpMap3;63;0;Create;True;0;0;True;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;150;-729.5854,-2242.321;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;455;-1161.597,-5919.883;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;116;891.9323,-3407.787;Inherit;True;Property;_BumpMap2333;BumpMap2333;5;0;Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;130;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalizeNode;186;-290.2312,-3539.32;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;196;-462.0628,-4626.749;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;596;500.0127,-921.5047;Inherit;False;1272.095;559.0971;Comment;7;289;286;280;278;279;271;272;Nipples Gloss;1,1,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;156;-756.4999,-2471.094;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;1157.013,-4718.443;Inherit;False;color;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;518;2443.946,-4917.167;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0.03,0.03,0.03;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;117;882.8821,-3883.042;Inherit;True;Property;_BumpMap7777;BumpMap7777;4;0;Fetch;False;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;129;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;508;2390.946,-4813.167;Inherit;False;468;wetness_alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;456;-1177.355,-5776.646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;589;563.3914,-1605.771;Inherit;False;588;DetailUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CrossProductOpNode;151;-595.3373,-2369.059;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;2677.066,-4812.748;Inherit;False;72;color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;223;-2566.011,-1566.133;Inherit;False;2756.717;1394.752;Comment;38;235;233;232;231;230;228;227;238;239;240;241;242;243;244;245;246;247;248;249;250;251;252;253;254;255;256;257;258;259;260;261;262;263;264;265;266;267;537;Alpha Mask Mix by essu;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;188;-100.4746,-3537.165;Inherit;True;DetailNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;609;1420.325,-3109.693;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.VertexColorNode;271;837.0269,-564.4076;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;272;550.0127,-499.2535;Inherit;False;27;NipUV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;458;-952.1887,-5740.334;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;208;-290.3871,-4624.202;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;517;2670.946,-5034.067;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;457;-979.1024,-5969.107;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;120;1424.477,-3871.042;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;273;840.8361,-1629.127;Inherit;True;Property;_TextureSample14;Texture Sample 14;7;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;137;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;308;-2331.186,1681.458;Inherit;False;3481.855;1913.182;Comment;6;355;356;338;319;315;309;SSSSS by David Miranda;0.7064003,1,0.6462264,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;78;2935.999,-5034.965;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;227;-2492.703,-485.3287;Inherit;False;Property;_alpha_b;alpha_b;61;1;[HideInInspector];Create;True;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;270;828.8824,-1834.599;Inherit;True;Property;_TextureSample13;Texture Sample 6;11;0;Create;False;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;222;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;211;-106.0541,-4625.091;Inherit;True;NipNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;459;-817.9407,-5867.073;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;190;1956.912,-3716.506;Inherit;False;188;DetailNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;232;-2490.05,-320.3268;Inherit;False;Property;_alpha_d;alpha_d;60;1;[HideInInspector];Create;True;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;278;1189.395,-519.7242;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;607;1762.081,-3869.302;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-2494.683,-568.4907;Inherit;False;Property;_alpha_a;alpha_a;57;1;[HideInInspector];Create;True;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;279;762.0789,-777.654;Inherit;True;Property;_TextureSample17;Texture Sample 17;8;0;Create;True;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;41;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalizeNode;147;-423.6611,-2366.512;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;280;1430.05,-701.8925;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;460;-646.2647,-5864.525;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;286;556.9634,-871.5047;Inherit;False;Property;_NipGloss;NipGloss;39;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;583;1192.731,-1555.308;Inherit;False;3;0;FLOAT;0.85;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;276;1187.469,-1807.449;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;315;-2237.707,1786.02;Inherit;False;1950.029;618.0199;Albedo Scene View;13;354;344;340;339;334;333;331;329;327;316;358;591;592;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;163;-243.9667,-2370.892;Inherit;True;HairNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;212;2292.912,-3716.506;Inherit;False;211;NipNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;125;2196.912,-3876.506;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;238;-1600.614,-711.2769;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;79;3184.128,-5038.608;Inherit;True;albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;126;2516.911,-3876.506;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;316;-2192.206,1851.486;Inherit;True;79;albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;463;-442.4846,-5865.372;Inherit;False;WetNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;426;-3955.648,-3176.198;Inherit;False;nails;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;595;1569.813,-1337.349;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;282;1403.171,-1734.048;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;289;1607.639,-867.2263;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;243;-1455.673,-710.3339;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;164;2612.911,-3716.506;Inherit;False;163;HairNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;128;2868.911,-3876.506;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;327;-1978.725,1830.223;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;598;1929.218,-845.6661;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;288;2001.672,-667.1026;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;427;1750.138,-1489.971;Inherit;False;426;nails;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;437;1633.132,-1732.352;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;275;1672.962,-1587.202;Inherit;False;Property;_NailGloss;NailGloss;40;0;Create;True;0;0;True;0;False;0;0.164;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;262;-1287.437,-710.6299;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;465;2932.911,-3716.506;Inherit;False;463;WetNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;215;578.2522,-2697.189;Inherit;False;1155.898;568.112;Comment;6;221;220;219;218;217;216;Ambient Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;425;2030.206,-1732.173;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;228;-2488.188,-406.4876;Inherit;False;Property;_alpha_c;alpha_c;58;1;[HideInInspector];Create;True;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;331;-1934.012,2001.012;Inherit;False;Constant;_Float22;Float 22;39;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;266;-2119.748,-1356.98;Inherit;True;Property;_TextureSample16;Texture Sample 16;1;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;213;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;251;-988.9311,-638.0529;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;291;2041.367,-705.1617;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;464;3188.911,-3876.506;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;329;-1702.663,1837.414;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;216;619.9622,-2645.189;Inherit;True;Property;_TextureSample12;Texture Sample 12;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;222;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;245;-997.931,-661.0529;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;333;-2048.442,2122.587;Inherit;False;Property;_AlbedoOpacity;AlbedoOpacity;43;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;597;1978.48,-889.2678;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;552;-2322.537,185.9867;Inherit;False;2382.827;1004.301;;20;572;571;570;569;568;567;566;565;564;562;561;560;559;558;557;556;555;554;553;579;Secondary Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;244;-1710.086,-1120.749;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;553;-2064.537,235.9858;Float;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;339;-1488.708,1899.428;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;6;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;248;-975.9311,-696.0529;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;241;-955.9311,-664.0529;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;309;-2228.832,2512.059;Inherit;False;1693.552;1024.997;BASE_TRANSMISSION_DEFERRED;18;370;369;368;363;335;328;326;325;324;321;320;318;317;314;313;312;311;310;Transmission;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;230;-2489.72,-665.1989;Inherit;False;Property;_ExAlpha;ExAlpha;27;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;217;1483.963,-2600.046;Inherit;False;occlusion_sample;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;298;486.157,204.1439;Inherit;False;2382.45;1318.708;Comment;23;307;306;303;496;505;495;305;301;536;300;527;531;529;532;530;299;599;600;601;602;603;604;605;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;292;2325.67,-1528.287;Inherit;False;46;hair;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-1654.758,2194.345;Inherit;False;Property;_SubsurfaceAlbedoSaturation;SubsurfaceAlbedoSaturation;46;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;340;-1500.582,2003.631;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;3476.911,-3876.506;Inherit;False;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;554;-2073.501,421.5478;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;267;-2097.328,-363.6157;Inherit;False;297;exgloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;293;2322.656,-1731.937;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;310;-2149.473,2880.057;Inherit;False;217;occlusion_sample;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;294;2628.798,-1732.511;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0.5;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;311;-2122.116,3071.517;Inherit;False;Property;_TransmissionColor;TransmissionColor;47;0;Fetch;False;0;0;True;0;False;0.2,0.2,0.2,0;0.5,0.2999993,0.1999993,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;312;-2147.338,2776.085;Inherit;False;Constant;_Float7;Float 7;39;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;314;-2146.107,2970.291;Inherit;False;Property;_TransOcclusion;TransOcclusion;48;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;498;-4695.441,-3012.27;Inherit;False;Property;_NailSpecularColor;NailSpecularColor;18;0;Create;True;0;0;True;0;False;0.5,0.5,0.5,0;0.3018865,0.3018865,0.3018865,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;240;-675.7752,-1093.077;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;530;525.1138,393.2907;Inherit;False;Constant;_WetColor;WetColor;54;0;Create;True;0;0;False;0;False;0.2,0.2,0.2,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;313;-2107.63,3257.858;Inherit;True;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;250;-966.9311,-1159.052;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;599;523.2198,1336.26;Inherit;False;Property;_SpecularRim;SpecularRim;59;0;Create;True;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;249;-1700.302,-553.9807;Inherit;True;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;556;-2279,582.5937;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;299;524.7849,577.2469;Inherit;False;Property;_SpecColor;SpecColor;17;0;Fetch;False;0;0;True;1;Header (Specularity);False;0.2,0.2,0.2,0;0.1999984,0.1999984,0.1999984,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;344;-1314.799,1942.679;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;555;-1696.537,331.9858;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;246;-995.931,-1255.053;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;247;-923.2258,-1233.296;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;319;-252.8226,1792.06;Inherit;False;783.1226;440.5972;Lighting Pass to Emission;4;336;332;323;322;;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldNormalVector;318;-1819.224,3244.922;Inherit;True;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;295;2886.806,-1736.371;Inherit;True;GlossMapsMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;531;806.8435,468.2244;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;600;1658.002,1272.408;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;260;-924.4278,-1328.907;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;317;-1782.567,2773.885;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;559;-1509.437,331.2129;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;499;-4429.692,-3012.093;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;558;-1513.95,654.1407;Inherit;False;224;160;Play with this value;1;563;;1,0,0,1;0;0
Node;AmplifyShaderEditor.TFHCRemapNode;605;1383.403,1341.66;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;560;-2111.086,839.1126;Inherit;False;Property;_SecondaryGloss;SecondaryGloss;37;0;Create;True;0;0;True;0;False;0;0.515;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;255;-644.9305,-1126.052;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;354;-595.0772,1937.515;Inherit;True;albedo_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;300;514.9512,878.4294;Inherit;False;Property;_Gloss;Gloss;36;0;Create;True;0;0;True;0;False;1;0.701;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;557;-2064.537,587.9857;Inherit;True;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ComponentMaskNode;320;-1813.905,3072.72;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;529;538.1936,770.6786;Inherit;False;297;exgloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;532;809.5838,618.4452;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;261;-1013.346,-685.6208;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;265;-524.1998,-538.9117;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;321;-2159.621,2560.676;Inherit;True;Property;_TextureSample19;Texture Sample 19;10;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMinOpNode;264;-779.7706,-1292.907;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;326;-1464.121,2956.785;Inherit;False;return ShadeSH9(float4(worldNormal,1))@;3;False;1;True;worldNormal;FLOAT3;0,0,0;In;;Inherit;False;ShadeSH9;True;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;323;-211.545,1833.243;Inherit;True;354;albedo_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;601;1890.664,1210.667;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WireNode;258;-995.3461,-710.6208;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;324;-1493.924,2710.462;Inherit;True;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;301;521.4709,1000.478;Inherit;True;295;GlossMapsMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;536;1100.675,782.8912;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;527;1084.531,485.825;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;602;1896.333,1395.421;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;252;-644.4332,-1237.427;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;504;-3947.649,-3013.948;Inherit;False;nailglosscolor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;239;-502.5998,-609.3107;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;563;-1463.95,704.1407;Inherit;False;10;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;325;-1517.653,3273.973;Inherit;False;Property;_TransBase;TransBase;51;0;Fetch;True;0;0;True;0;False;1;1;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;561;-1273.77,380.0907;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;322;-209.8489,2040.737;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;564;-2066.85,955.7947;Inherit;True;295;GlossMapsMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;562;-1814.435,1059.184;Inherit;False;Property;_SecondaryGlossPower;SecondaryGlossPower;38;0;Create;True;0;0;True;0;False;0;0.515;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;259;-2108.077,-1015.246;Inherit;True;Property;_TextureSample15;Texture Sample 15;2;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;214;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;495;1788.224,595.9896;Inherit;False;426;nails;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;568;-1088.73,380.4437;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;332;62.11108,1857.038;Inherit;False;#if !defined(SCENE_VIEW)$            half3 LightingPass = 0@$            float4 coords = 0@$			coords = UNITY_PROJ_COORD(screenPos)@$            coords.w += .0001@$			float2 screenUV = coords.xy / coords.w@$            $               #ifdef UNITY_SINGLE_PASS_STEREO$				float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex]@$			    screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy@$               #endif$            if (unity_StereoEyeIndex == 0)$                LightingPass = tex2D(LightingTexBlurred, screenUV).rgb@$            else$                LightingPass = tex2D(LightingTexBlurredR, screenUV).rgb@$$            return Albedo * LightingPass@$#else$return 0@$            #endif;3;False;2;True;Albedo;FLOAT3;0,0,0;In;;Inherit;False;True;screenPos;FLOAT4;0,0,0,0;In;;Inherit;False;LightingPass;True;False;0;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;505;1749.129,484.7668;Inherit;False;504;nailglosscolor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;567;-1136.604,934.3478;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;263;-610.7363,-1304.857;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;328;-1096.466,2708.666;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;253;-507.6001,-1240.209;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;579;-1177.62,707.9077;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;305;1759.463,370.8914;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;303;2070.909,977.4068;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;603;2210.427,1214.004;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;1;False;2;FLOAT;-2;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;254;-1006.346,-935.6215;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;218;615.8171,-2429.822;Inherit;False;Property;_OcclusionStrength;OcclusionStrength;41;0;Fetch;True;0;0;True;2;Header (Ambient Occlusion);;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;566;-1139.38,802.3307;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ExpOpNode;565;-1093.438,532.3726;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;569;-762.187,824.6107;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;219;1181.162,-2473;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;496;2068.414,374.3936;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;336;297.5981,1850.096;Inherit;True;lighting_pass;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;570;-905.8271,380.8898;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;8;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;338;-358.8902,2461.767;Inherit;False;1404;370;Final Emission;4;352;346;342;341;;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;604;2398.93,978.464;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;256;-462.517,-1305.531;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;335;-891.5058,2695.439;Inherit;True;transmission_deferred;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;242;-911.6153,-1016.21;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;571;-406.6414,755.5718;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;220;1483.133,-2478.776;Inherit;False;occlusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;306;2245.763,368.9224;Inherit;True;Specular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;342;-344.3972,2666.22;Inherit;False;335;transmission_deferred;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;341;-339.8911,2522.767;Inherit;False;336;lighting_pass;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;307;2640.916,972.2747;Inherit;True;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;257;-297.3369,-1046.314;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;525;3327.161,-1191.589;Inherit;False;Constant;_Float0;Float 0;59;0;Create;True;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;375;3278.599,-983.655;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;380;3297.511,-666.7593;Inherit;False;220;occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;572;-181.5984,749.7777;Inherit;False;Specularity2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;379;3278.511,-752.7595;Inherit;False;307;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;378;3283.238,-878.9263;Inherit;False;306;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;346;78.11021,2574.767;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;233;-110.0272,-1145.809;Inherit;True;AlphaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;381;3682.498,-584.5338;Inherit;False;233;AlphaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;350;1648.306,1930.486;Inherit;False;693.5801;490.9063;Comment;5;367;366;362;359;357;NOT USED?;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;355;610.0756,1818.606;Inherit;False;226;165;SSS FLAG;1;371;;1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;356;-397.8947,2979.629;Inherit;False;371.0001;461.4971;Comment;1;360;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CustomStandardSurface;573;3691.433,-1000.961;Inherit;False;Specular;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;382;-3555.763,1271.208;Inherit;False;753.0234;1336.969;Comment;11;222;130;137;214;81;82;213;372;41;129;42;Samplers;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;389;-3400.938,2901.443;Inherit;False;306;716.3667;Comment;3;386;402;403;Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;352;749.6372,2566.83;Inherit;True;emission_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;575;3274.462,-571.4216;Inherit;False;572;Specularity2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;137;-3149.435,1970.597;Inherit;True;Property;_DetailGlossMap;DetailGlossMap;7;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;b2f732d831bc0a0428dc284136328ab6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;363;-1440.131,3135.876;Inherit;False;72;color;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;129;-3140.881,1329.868;Inherit;True;Property;_BumpMap;BumpMap;4;2;[NoScaleOffset];[Normal];Fetch;True;0;0;True;0;False;-1;None;4921f99b2658c9f44b6008e01cc074dd;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;576;4017.462,-676.4216;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;574;3992.408,-908.8833;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;367;1689.31,2003.914;Inherit;False;Property;_CavityStrength;CavityStrength;53;1;[HideInInspector];Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;592;-937.0914,2199.988;Inherit;False;Property;_VeinsColor;VeinsColor;21;0;Fetch;True;0;0;True;0;False;0,0,0,0;0.3021084,0.6612161,0.6886792,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;366;1692.538,2090.211;Inherit;False;Property;_FresnelIntensity;FresnelIntensity;56;1;[HideInInspector];Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;591;-614.7917,2292.915;Inherit;False;Property;_VeinsOpacity;VeinsOpacity;45;0;Fetch;True;0;0;True;0;False;1;0.655;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;402;-3359.037,3157.458;Inherit;True;Property;_ProfileTex;ProfileTex;12;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;81;-3482.177,2174.117;Inherit;True;Property;_Texture3;Texture3;9;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;38b0615a1e0f78f4e988acf996a8b2d4;True;2;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;360;-341.4554,3250.266;Inherit;False;Property;_ProfileColor;Profile Color;22;0;Fetch;True;0;0;True;1;Header (Separate Profile);False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;358;-609.8317,2201.568;Inherit;False;Property;_SubsurfaceAlbedoOpacity;SubsurfaceAlbedoOpacity;44;0;Fetch;True;0;0;True;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;386;-3347.47,2951.443;Inherit;True;Property;_LightingTexBlurred;LightingTexBlurred;62;2;[HideInInspector];[NoScaleOffset];Fetch;True;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;222;-3147.924,2374.345;Inherit;True;Property;_OcclusionMap;OcclusionMap;11;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;47574949a5d1dc741b14e51e893df3f2;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;41;-3485.976,1967.4;Inherit;True;Property;_Texture2;Texture2;8;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;bf41a03c828ba3a41af6012fe4190a4b;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;130;-3139.51,1553.625;Inherit;True;Property;_BumpMap2;BumpMap2;5;2;[NoScaleOffset];[Normal];Fetch;True;0;0;True;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;371;654.9729,1871.002;Inherit;False;Property;SSS_shader;;0;1;[HideInInspector];Fetch;False;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;221;646.7312,-2326.063;Inherit;False;Property;_OcclusionColor;OcclusionColor;19;0;Fetch;True;0;0;True;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;82;-3147.268,2173.102;Inherit;True;Property;_NailMask;NailMask;10;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;57c03d04a00a70946a925913536908e6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;403;-3350.037,3375.458;Inherit;True;Property;_SubsurfaceAlbedo;SubsurfaceAlbedo;42;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;None;7a780cc17671c30408e629876eb7829c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;362;1994.107,2001.008;Inherit;False;Property;_AlbedoTile;AlbedoTile;28;0;Fetch;True;0;0;True;0;False;1;1;1;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;368;-915.767,3033.454;Inherit;False;Property;_TransDynamic;TransDynamic;52;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;372;-3139.961,1761.14;Inherit;True;Property;_DetailMainTex;DetailMainTex;6;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;593;-3778.357,-1956.028;Inherit;False;Property;_SubNipColor;Subsurface Nipple Color;20;0;Fetch;False;0;0;True;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;369;-915.6915,3293.055;Inherit;False;Property;_TransShadows;TransShadows;50;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;214;-3505.763,1546.024;Inherit;True;Property;_AlphaMask2;AlphaMask2;2;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;42;-3493.139,1757.313;Inherit;True;Property;_MainTex;MainTex;3;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;a0a5313746f432e478d4a920d2a3d99b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;235;-136.7428,-860.3015;Inherit;False;Property;_Cutoff2;Cutoff2;26;0;Create;True;0;0;True;0;False;0.5;0.497;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;213;-3503.206,1331.988;Inherit;True;Property;_AlphaMask;AlphaMask;1;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;357;1695.577,2278.858;Inherit;False;Property;_SubSurfaceParallax;SubSurface Parallax;55;1;[HideInInspector];Fetch;True;0;0;True;0;False;-0.000363;-0.000363;-0.002;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;370;-914.2963,3164.909;Inherit;False;Property;_TransRange;TransRange;49;0;Fetch;True;0;0;True;0;False;0.5;0.5;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;377;3261.238,-1095.926;Inherit;False;352;emission_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;537;-151.5556,-725.2649;Inherit;False;Property;_Cutoff;Cutoff;25;0;Create;True;0;0;True;0;False;0.5;0.474;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;359;1694.812,2183.555;Inherit;False;Property;SUBSURFACE_PARALLAX;SUBSURFACE_PARALLAX;54;1;[HideInInspector];Fetch;False;0;0;True;1;Toggle(SUBSURFACE_PARALLAX);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;4190.871,-1139.873;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Hanmen/Next-Gen Body;False;False;False;False;False;False;False;True;False;False;False;False;False;False;False;False;True;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.474;True;True;-40;True;Opaque;;AlphaTest;All;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;10;10000;True;1;True;0;1;False;-1;6;False;-1;0;5;False;-1;1;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;True;0;0;False;-1;-1;0;True;235;1;Include;;True;2ba580a89acd8064088f619c7025925c;Custom;0;0;False;0.1;False;-1;0;False;-1;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;26;0;7;0
WireConnection;29;0;26;0
WireConnection;540;0;551;1
WireConnection;540;1;551;2
WireConnection;30;0;29;0
WireConnection;543;0;541;0
WireConnection;544;0;542;0
WireConnection;545;1;540;0
WireConnection;546;0;545;0
WireConnection;546;1;544;0
WireConnection;546;2;543;0
WireConnection;33;0;30;0
WireConnection;35;0;33;0
WireConnection;548;0;551;3
WireConnection;548;1;551;4
WireConnection;34;0;32;0
WireConnection;34;1;31;0
WireConnection;549;0;546;0
WireConnection;549;1;547;0
WireConnection;13;0;7;0
WireConnection;550;0;549;0
WireConnection;550;1;548;0
WireConnection;550;2;547;0
WireConnection;15;0;14;0
WireConnection;15;1;11;0
WireConnection;36;0;35;0
WireConnection;36;1;34;0
WireConnection;16;0;13;0
WireConnection;20;0;16;0
WireConnection;20;1;15;0
WireConnection;37;0;36;0
WireConnection;37;1;31;0
WireConnection;25;0;550;0
WireConnection;187;0;587;0
WireConnection;23;0;20;0
WireConnection;23;1;11;0
WireConnection;38;0;37;0
WireConnection;39;0;38;0
WireConnection;588;0;187;0
WireConnection;86;1;45;0
WireConnection;24;0;23;0
WireConnection;27;0;24;0
WireConnection;424;0;86;3
WireConnection;424;1;415;2
WireConnection;175;0;588;0
WireConnection;171;0;185;0
WireConnection;200;0;118;0
WireConnection;178;0;175;1
WireConnection;178;1;171;0
WireConnection;169;0;175;0
WireConnection;169;1;171;0
WireConnection;194;0;207;0
WireConnection;46;0;424;0
WireConnection;594;1;55;0
WireConnection;408;0;64;0
WireConnection;193;0;200;0
WireConnection;193;1;194;0
WireConnection;410;0;56;0
WireConnection;154;0;155;0
WireConnection;90;1;89;0
WireConnection;179;0;169;0
WireConnection;179;1;175;1
WireConnection;63;0;53;2
WireConnection;149;0;161;0
WireConnection;416;0;56;4
WireConnection;416;1;83;3
WireConnection;467;0;588;0
WireConnection;104;0;101;0
WireConnection;209;0;200;1
WireConnection;209;1;194;0
WireConnection;103;0;99;2
WireConnection;172;0;175;0
WireConnection;172;1;178;0
WireConnection;584;0;104;0
WireConnection;168;1;467;0
WireConnection;445;0;462;0
WireConnection;444;0;443;0
WireConnection;195;0;200;0
WireConnection;195;1;209;0
WireConnection;97;0;94;0
WireConnection;142;0;149;1
WireConnection;142;1;154;0
WireConnection;180;1;179;0
WireConnection;206;0;193;0
WireConnection;206;1;200;1
WireConnection;417;0;416;0
WireConnection;65;0;408;0
WireConnection;65;1;594;1
WireConnection;158;0;149;0
WireConnection;158;1;154;0
WireConnection;109;0;90;3
WireConnection;109;1;103;0
WireConnection;67;0;64;4
WireConnection;67;1;594;3
WireConnection;67;2;63;0
WireConnection;418;0;410;0
WireConnection;181;1;172;0
WireConnection;409;0;85;0
WireConnection;146;0;158;0
WireConnection;146;1;149;1
WireConnection;197;1;118;0
WireConnection;177;0;181;2
WireConnection;177;1;168;2
WireConnection;204;1;206;0
WireConnection;113;2;109;0
WireConnection;75;0;86;3
WireConnection;75;1;47;4
WireConnection;75;2;415;2
WireConnection;411;0;47;0
WireConnection;413;0;65;0
WireConnection;98;0;96;2
WireConnection;98;1;584;0
WireConnection;98;2;97;0
WireConnection;210;1;195;0
WireConnection;176;0;180;2
WireConnection;176;1;168;2
WireConnection;447;0;445;1
WireConnection;447;1;444;0
WireConnection;446;0;445;0
WireConnection;446;1;444;0
WireConnection;153;0;149;0
WireConnection;153;1;142;0
WireConnection;404;0;67;0
WireConnection;70;0;409;0
WireConnection;70;1;420;0
WireConnection;70;2;421;0
WireConnection;205;0;210;2
WireConnection;205;1;197;2
WireConnection;419;0;411;0
WireConnection;183;0;176;0
WireConnection;183;1;98;0
WireConnection;449;0;445;0
WireConnection;449;1;447;0
WireConnection;297;0;269;0
WireConnection;159;1;153;0
WireConnection;184;0;177;0
WireConnection;184;1;98;0
WireConnection;407;0;75;0
WireConnection;121;0;113;0
WireConnection;160;1;161;0
WireConnection;199;0;204;2
WireConnection;199;1;197;2
WireConnection;143;1;146;0
WireConnection;448;0;446;0
WireConnection;448;1;445;1
WireConnection;174;2;184;0
WireConnection;73;0;70;0
WireConnection;73;1;414;0
WireConnection;73;2;405;0
WireConnection;439;0;538;1
WireConnection;439;1;297;0
WireConnection;144;0;159;2
WireConnection;144;1;160;2
WireConnection;170;2;183;0
WireConnection;451;1;449;0
WireConnection;450;1;448;0
WireConnection;201;0;205;0
WireConnection;201;1;121;0
WireConnection;452;1;462;0
WireConnection;148;0;143;2
WireConnection;148;1;160;2
WireConnection;203;0;199;0
WireConnection;203;1;121;0
WireConnection;453;0;451;1
WireConnection;453;1;452;1
WireConnection;76;0;73;0
WireConnection;76;1;422;0
WireConnection;76;2;423;0
WireConnection;454;0;450;1
WireConnection;454;1;452;1
WireConnection;198;2;203;0
WireConnection;412;0;68;0
WireConnection;173;0;170;0
WireConnection;173;1;174;0
WireConnection;192;2;201;0
WireConnection;468;0;439;0
WireConnection;152;0;148;0
WireConnection;145;0;144;0
WireConnection;606;5;608;0
WireConnection;150;2;145;0
WireConnection;455;0;454;0
WireConnection;455;1;466;0
WireConnection;116;5;108;0
WireConnection;186;0;173;0
WireConnection;196;0;198;0
WireConnection;196;1;192;0
WireConnection;156;2;152;0
WireConnection;72;0;412;0
WireConnection;518;0;76;0
WireConnection;117;5;110;0
WireConnection;456;0;453;0
WireConnection;456;1;466;0
WireConnection;151;0;156;0
WireConnection;151;1;150;0
WireConnection;188;0;186;0
WireConnection;609;0;606;0
WireConnection;458;2;456;0
WireConnection;208;0;196;0
WireConnection;517;0;76;0
WireConnection;517;1;518;0
WireConnection;517;2;508;0
WireConnection;457;2;455;0
WireConnection;120;0;117;0
WireConnection;120;1;116;0
WireConnection;273;1;589;0
WireConnection;78;0;517;0
WireConnection;78;1;77;0
WireConnection;211;0;208;0
WireConnection;459;0;457;0
WireConnection;459;1;458;0
WireConnection;278;0;271;2
WireConnection;607;0;120;0
WireConnection;607;1;609;0
WireConnection;279;1;272;0
WireConnection;147;0;151;0
WireConnection;280;0;279;3
WireConnection;280;1;278;0
WireConnection;460;0;459;0
WireConnection;583;1;273;4
WireConnection;583;2;538;2
WireConnection;276;0;270;1
WireConnection;163;0;147;0
WireConnection;125;0;607;0
WireConnection;125;1;190;0
WireConnection;238;0;232;0
WireConnection;238;1;231;0
WireConnection;238;2;227;0
WireConnection;79;0;78;0
WireConnection;126;0;125;0
WireConnection;126;1;212;0
WireConnection;463;0;460;0
WireConnection;426;0;83;3
WireConnection;595;0;468;0
WireConnection;282;0;583;0
WireConnection;282;1;276;0
WireConnection;289;0;286;0
WireConnection;289;1;280;0
WireConnection;243;0;238;0
WireConnection;128;0;126;0
WireConnection;128;1;164;0
WireConnection;327;0;316;0
WireConnection;598;0;289;0
WireConnection;288;0;280;0
WireConnection;437;0;282;0
WireConnection;437;1;595;0
WireConnection;262;0;243;0
WireConnection;425;0;437;0
WireConnection;425;1;275;0
WireConnection;425;2;427;0
WireConnection;251;0;262;2
WireConnection;291;0;288;0
WireConnection;464;0;128;0
WireConnection;464;1;465;0
WireConnection;329;0;327;0
WireConnection;245;0;262;1
WireConnection;597;0;598;0
WireConnection;244;0;266;3
WireConnection;244;1;228;0
WireConnection;339;0;329;0
WireConnection;248;0;245;0
WireConnection;241;0;251;0
WireConnection;217;0;216;2
WireConnection;340;0;331;0
WireConnection;340;1;327;0
WireConnection;340;2;333;0
WireConnection;376;0;464;0
WireConnection;293;0;425;0
WireConnection;293;1;597;0
WireConnection;293;2;291;0
WireConnection;294;0;293;0
WireConnection;294;2;292;0
WireConnection;240;0;244;0
WireConnection;250;0;241;0
WireConnection;249;0;267;0
WireConnection;249;1;230;0
WireConnection;344;0;339;0
WireConnection;344;1;340;0
WireConnection;344;2;334;0
WireConnection;555;0;553;0
WireConnection;555;1;554;0
WireConnection;246;0;248;0
WireConnection;247;0;266;2
WireConnection;247;1;250;0
WireConnection;318;0;313;0
WireConnection;295;0;294;0
WireConnection;531;0;530;0
WireConnection;260;0;266;1
WireConnection;260;1;246;0
WireConnection;317;0;312;0
WireConnection;317;1;310;0
WireConnection;317;2;314;0
WireConnection;559;0;555;0
WireConnection;499;0;498;0
WireConnection;605;0;599;0
WireConnection;255;0;240;0
WireConnection;354;0;344;0
WireConnection;557;0;556;0
WireConnection;320;0;311;0
WireConnection;532;0;299;0
WireConnection;261;0;262;0
WireConnection;265;0;249;0
WireConnection;264;0;260;0
WireConnection;264;1;247;0
WireConnection;326;0;318;0
WireConnection;601;0;600;0
WireConnection;258;0;261;0
WireConnection;324;0;321;4
WireConnection;324;1;317;0
WireConnection;324;2;320;0
WireConnection;536;0;529;0
WireConnection;536;2;300;0
WireConnection;527;0;529;0
WireConnection;527;2;532;0
WireConnection;527;3;531;0
WireConnection;602;0;605;0
WireConnection;252;0;255;0
WireConnection;504;0;499;0
WireConnection;239;0;265;0
WireConnection;563;0;560;0
WireConnection;561;0;559;0
WireConnection;561;1;557;0
WireConnection;568;0;561;0
WireConnection;332;0;323;0
WireConnection;332;1;322;0
WireConnection;567;0;560;0
WireConnection;567;1;564;0
WireConnection;567;2;562;0
WireConnection;263;0;264;0
WireConnection;263;1;252;0
WireConnection;328;0;324;0
WireConnection;328;1;326;0
WireConnection;328;2;325;0
WireConnection;253;0;239;0
WireConnection;305;0;527;0
WireConnection;303;0;536;0
WireConnection;303;1;301;0
WireConnection;603;0;601;0
WireConnection;603;2;602;0
WireConnection;254;0;258;0
WireConnection;565;0;563;0
WireConnection;569;0;566;1
WireConnection;569;1;579;0
WireConnection;569;2;567;0
WireConnection;219;1;216;2
WireConnection;219;2;218;0
WireConnection;496;0;305;0
WireConnection;496;1;505;0
WireConnection;496;2;495;0
WireConnection;336;0;332;0
WireConnection;570;0;568;0
WireConnection;570;1;565;0
WireConnection;604;1;303;0
WireConnection;604;2;603;0
WireConnection;256;0;263;0
WireConnection;256;1;253;0
WireConnection;335;0;328;0
WireConnection;242;0;259;1
WireConnection;242;1;254;0
WireConnection;571;0;570;0
WireConnection;571;1;569;0
WireConnection;220;0;219;0
WireConnection;306;0;496;0
WireConnection;307;0;604;0
WireConnection;257;0;256;0
WireConnection;257;1;242;0
WireConnection;572;0;571;0
WireConnection;346;0;342;0
WireConnection;346;1;341;0
WireConnection;233;0;257;0
WireConnection;573;0;525;0
WireConnection;573;1;375;0
WireConnection;573;3;378;0
WireConnection;573;4;379;0
WireConnection;573;5;380;0
WireConnection;352;0;346;0
WireConnection;576;0;381;0
WireConnection;574;0;573;0
WireConnection;574;1;575;0
WireConnection;0;0;525;0
WireConnection;0;2;377;0
WireConnection;0;10;576;0
WireConnection;0;13;574;0
ASEEND*/
//CHKSM=B6392B53FBFC1A3C590F9A5493B5D2E8E7662CE2