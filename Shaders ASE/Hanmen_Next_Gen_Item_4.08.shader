// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Next-Gen Item"
{
	Properties
	{
		[Header(Backface Settings)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
		[Header(Alpha Clip Value)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
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
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = 1
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_BumpScale("BumpScale", Range( 0 , 3)) = 1
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 1
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		[Header (Ambient Occlusion)]_OcclusionStrength("OcclusionStrength", Range( 0 , 1)) = 1
		[Header (Glossiness Roughness)]_Glossiness("Glossiness", Range( 0 , 1)) = 0.85
		_Glossiness2("Glossiness2", Range( 0 , 1)) = 0
		_Glossiness3("Glossiness3", Range( 0 , 1)) = 0
		_Glossiness4("Glossiness4", Range( 0 , 1)) = 0
		_Roughness("Roughness", Range( 0 , 1)) = 0
		_Roughness2("Roughness2", Range( 0 , 1)) = 0
		_Roughness3("Roughness3", Range( 0 , 1)) = 0
		_Roughness4("Roughness4", Range( 0 , 1)) = 0
		[Header (Metallic Maps)]_Metallic("Metallic", Range( 0 , 1)) = 0
		_Metallic2("Metallic2", Range( 0 , 1)) = 0
		_Metallic3("Metallic3", Range( 0 , 1)) = 0
		_Metallic4("Metallic4", Range( 0 , 1)) = 0
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 0
		_MetallicMask2("MetallicMask2", Range( 0 , 1)) = 0
		_MetallicMask3("MetallicMask3", Range( 0 , 1)) = 0
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 0
		[Header(Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetnessPower("WetnessPower", Range( 0 , 2)) = 0.8
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		_alpha("alpha", Range( 0 , 1)) = 1
		_SpecGlossMap("SpecGlossMap", 2D) = "white" {}
		_GlossMapScale("GlossMapScale", Range( 0 , 1)) = 0.2
		_EmissionMap("EmissionMap", 2D) = "black" {}
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_SubsurfaceBump("SubsurfaceBump", Range( 0 , 2)) = 0
		_ProfileTex("ProfileTex", 2D) = "white" {}
		[Header (Separate Profile)]_ProfileColor("Profile Color", Color) = (0.7,0.45,0.36,1)
		[NoScaleOffset]_ThicknessMap("ThicknessMap", 2D) = "white" {}
		[NoScaleOffset]_SubsurfaceAlbedo("SubsurfaceAlbedo", 2D) = "white" {}
		_AlbedoOpacity("AlbedoOpacity", Range( 0 , 1)) = 0.87
		_SubsurfaceAlbedoSaturation("SubsurfaceAlbedoSaturation", Range( 0 , 1)) = 0.5
		_SubsurfaceAlbedoOpacity("SubsurfaceAlbedoOpacity", Range( 0 , 1)) = 0.5
		_TestAlbedo("TestAlbedo", Range( 1 , 10)) = 1
		_OcclusionColor("OcclusionColor", Color) = (0,0,0,1)
		_VeinsOpacity("VeinsOpacity", Range( 0 , 2)) = 0
		_TransmissionColor("Transmission Color", Color) = (0.5,0.5,0.5,1)
		[HideInInspector][Toggle]SSS_shader("SSS_shader", Range( 0 , 1)) = 1
		_Translucency("Translucency", Range( 0 , 50)) = 35.39931
		_SubColor("SubColor", Color) = (1,1,1,1)
		[Header(Translucency)]_TransNormalDistortion("TransNormalDistortion", Range( 0 , 1)) = 0.8315294
		_TransScattering("TransScattering", Range( 1 , 50)) = 1
		_SubsurfaceSaturation("SubsurfaceSaturation", Range( 0 , 1)) = 1
		_TransAmbient("TransAmbient", Range( 0 , 1)) = 0
		_SubsurfaceContrast("SubsurfaceContrast", Range( 0 , 1)) = 0.5
		_TransDirect("TransDirect", Range( 0 , 1)) = 1
		_SubsurfaceBrightness("SubsurfaceBrightness", Range( 0 , 1)) = 0.8
		_TransRim("TransRim", Range( 0 , 1)) = 1
		_SubsurfaceHue("SubsurfaceHue", Range( 0 , 1)) = 0
		_TransShadow("TransShadow", Range( 0 , 1)) = 0.75
		_SSSWidth("SSSWidth", Range( 0 , 1)) = 0.01
		_SSSBoundary("SSSBoundary", Int) = 0
		_SSSProfile("SSSProfile", Int) = 0
		_SSSModeID("SSSModeID", Int) = 1
		[Header(Specularity)][Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" }
	LOD 0

		Cull [_CullMode]
		CGINCLUDE
		#pragma target 5.0 
		ENDCG
		
		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 5.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			
			CGPROGRAM
			#if defined(SHADER_API_GLCORE) || defined(SHADER_API_GLES) || defined(SHADER_API_GLES3) || defined(SHADER_API_D3D9)
			#define FRONT_FACE_SEMANTIC VFACE
			#define FRONT_FACE_TYPE float
			#else
			#define FRONT_FACE_SEMANTIC SV_IsFrontFace
			#define FRONT_FACE_TYPE bool
			#endif
			#pragma multi_compile_fwdbase
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityCG.cginc"
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma shader_feature SCENE_VIEW
			#pragma multi_compile __ _SHADERTYPE_ITEM
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _TEMPORALFILTER_ON
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#endif//ASE Sampling Macros
			

			//This is a late directive
			
			uniform float _VeinsOpacity;
			uniform float _TransDirect;
			uniform float4 _SubColor;
			uniform float _TransRim;
			uniform float _SubsurfaceAlbedoOpacity;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThicknessMap);
			SamplerState sampler_ThicknessMap;
			uniform float _SubsurfaceHue;
			uniform float _SubsurfaceBump;
			uniform float _Translucency;
			uniform float4 _OcclusionColor;
			uniform float SSS_shader;
			uniform float _TransShadow;
			uniform int _SSSBoundary;
			uniform float _SubsurfaceBrightness;
			uniform float _TransScattering;
			uniform float _TransNormalDistortion;
			uniform float4 _ProfileColor;
			uniform float _TransAmbient;
			uniform float4 _TransmissionColor;
			uniform float _SubsurfaceSaturation;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceAlbedo);
			SamplerState sampler_SubsurfaceAlbedo;
			uniform float _SubsurfaceContrast;
			uniform int _SSSProfile;
			uniform int _SSSModeID;
			uniform float _SSSWidth;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _WetnessPower;
			uniform float _ExGloss;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _MetallicMask;
			uniform float _EmissionStrength;
			uniform float4 _EmissionColor;
			uniform float4 _Color3;
			uniform float4 _Color4;
			uniform float _Roughness3;
			uniform float _MetallicMask2;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _DetailNormalMapScale2;
			uniform float _WetAlbedoOffset;
			uniform float _Roughness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DetailGlossScale;
			uniform float _Metallic2;
			uniform float _DetailUV2Rotator;
			uniform float _Glossiness3;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float2 _DetailUV;
			uniform float _Metallic4;
			uniform float _Glossiness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailUVRotator;
			uniform float _DetailMetallicScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _OcclusionStrength;
			uniform float _MetallicMask3;
			uniform float _BumpScale;
			uniform float _Roughness;
			uniform float _AlphaEx;
			uniform float _CullMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurred);
			SamplerState samplerLightingTexBlurred;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurredR);
			SamplerState samplerLightingTexBlurredR;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecGlossMap);
			uniform float4 _SpecGlossMap_ST;
			SamplerState sampler_SpecGlossMap;
			uniform float _MetallicMask4;
			uniform float _GlossMapScale;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _AlbedoOpacity;
			uniform float _SubsurfaceAlbedoSaturation;
			uniform float _TestAlbedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
			uniform float4 _EmissionMap_ST;
			SamplerState sampler_EmissionMap;
			uniform float _alpha;
			float PackUIntToFloat( uint i, uint numBits )
			{
				uint maxInt = 0xFFFFFFFFu >> (32u - numBits);
				return saturate(i * rcp(maxInt));
			}
			
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float3 LightingPass725( float3 Albedo, float4 screenPos )
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
				                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurred, sampler_MainTex, screenUV).rgb;
				            else
				                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurredR, sampler_MainTex, screenUV).rgb;
				            return Albedo * LightingPass;
				#else
				return 0;
				            #endif
			}
			
			float getInterleavedGradientNoise8Bit9_g474( int x, int y )
			{
				return frac(52.9829189*frac(0.06711056*x + 0.00583715*y));
			}
			
			float IGNAnimated12_g475( float2 uv, float iFrame )
			{
				    uint frame = uint(iFrame);
				    
				    if((frame & 2u) != 0u) uv = float2(-uv.y, uv.x);
				    if((frame & 1u) != 0u) uv.x = -uv.x;
				return frac(uv.x*0.7548776662 + uv.y*0.56984029 + float(frame)*0.41421356*1.0);
			}
			

			uniform float _Cutoff;
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_SHADOW_COORDS(6)
				float4 ase_lmap : TEXCOORD7;
				float4 ase_sh : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord2.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.ase_texcoord5.xyz = ase_worldPos;
				#ifdef DYNAMICLIGHTMAP_ON //dynlm
				o.ase_lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif //dynlm
				#ifdef LIGHTMAP_ON //stalm
				o.ase_lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif //stalm
				#ifndef LIGHTMAP_ON //nstalm
				#if UNITY_SHOULD_SAMPLE_SH //sh
				o.ase_sh.xyz = 0;
				#ifdef VERTEXLIGHT_ON //vl
				o.ase_sh.xyz += Shade4PointLights (
				unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
				unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
				unity_4LightAtten0, ase_worldPos, ase_worldNormal);
				#endif //vl
				o.ase_sh.xyz = ShadeSHPerVertex (ase_worldNormal, o.ase_sh.xyz);
				#endif //sh
				#endif //nstalm
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord9 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC) : SV_Target
			{
				float3 outColor;
				float outAlpha;


				float2 uv_BumpMap180_g243 = i.ase_texcoord1.xy;
				float2 texCoord76_g243 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g243 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g243 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g243 = mul( texCoord76_g243 - float2( 0.5,0.5 ) , float2x2( cos78_g243 , -sin78_g243 , sin78_g243 , cos78_g243 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g243 = rotator78_g243;
				float2 break13_g243 = Detail1UV79_g243;
				float temp_output_14_0_g243 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g243 = (float2(( break13_g243.x + temp_output_14_0_g243 ) , break13_g243.y));
				float4 tex2DNode85_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g243 );
				float2 uv_DetailMask81_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g243 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g243 );
				float DetailMask183_g243 = tex2DNode81_g243.r;
				float temp_output_42_0_g243 = ( DetailMask183_g243 * _DetailNormalMapScale );
				float3 appendResult56_g243 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g243 ).g - tex2DNode85_g243.g ) * temp_output_42_0_g243 )));
				float2 appendResult27_g243 = (float2(break13_g243.x , ( break13_g243.y + temp_output_14_0_g243 )));
				float3 appendResult58_g243 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g243 ).g - tex2DNode85_g243.g ) * temp_output_42_0_g243 )));
				float3 normalizeResult66_g243 = normalize( cross( appendResult56_g243 , appendResult58_g243 ) );
				float3 DetailNormal171_g243 = normalizeResult66_g243;
				float2 texCoord7_g243 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g243 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g243 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g243 = mul( texCoord7_g243 - float2( 0.5,0.5 ) , float2x2( cos10_g243 , -sin10_g243 , sin10_g243 , cos10_g243 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g243 = rotator10_g243;
				float2 break20_g243 = Detail2UV12_g243;
				float temp_output_21_0_g243 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g243 = (float2(( break20_g243.x + temp_output_21_0_g243 ) , break20_g243.y));
				float4 tex2DNode41_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g243 );
				float DetailMask284_g243 = tex2DNode81_g243.g;
				float temp_output_49_0_g243 = ( DetailMask284_g243 * _DetailNormalMapScale2 );
				float3 appendResult63_g243 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g243 ).g - tex2DNode41_g243.g ) * temp_output_49_0_g243 )));
				float2 appendResult31_g243 = (float2(break20_g243.x , ( break20_g243.y + temp_output_21_0_g243 )));
				float3 appendResult64_g243 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g243 ).g - tex2DNode41_g243.g ) * temp_output_49_0_g243 )));
				float3 normalizeResult70_g243 = normalize( cross( appendResult63_g243 , appendResult64_g243 ) );
				float3 DetailNormal272_g243 = normalizeResult70_g243;
				float3 normalizeResult262_g243 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g243 ), _BumpScale ) , DetailNormal171_g243 ) , DetailNormal272_g243 ) );
				float3 switchResult303_g243 = (((ase_vface>0)?(normalizeResult262_g243):(-normalizeResult262_g243)));
				float3 Normalout805 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g243 : normalizeResult262_g243 );
				float3 temp_output_30_0_g240 = Normalout805;
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g240 = temp_output_30_0_g240;
				float3 worldNormal29_g240 = float3(dot(tanToWorld0,tanNormal29_g240), dot(tanToWorld1,tanNormal29_g240), dot(tanToWorld2,tanNormal29_g240));
				float3 normalizeResult25_g240 = normalize( worldNormal29_g240 );
				float3 normalDir28_g240 = normalizeResult25_g240;
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g240 = ase_worldViewDir;
				float dotResult56_g240 = dot( normalDir28_g240 , viewDir15_g240 );
				float NdotV55_g240 = saturate( dotResult56_g240 );
				float2 uv_MetallicGlossMap139_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g243 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g243 );
				float lerpResult143_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness);
				float Glossiness1153_g243 = _Glossiness;
				float2 uv_ColorMask86_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g243 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g243 );
				float ColorMask199_g243 = ( 1.0 - ( tex2DNode86_g243.r + tex2DNode86_g243.g + tex2DNode86_g243.b ) );
				float lerpResult158_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness2);
				float Glossiness2152_g243 = _Glossiness2;
				float ColorMask296_g243 = tex2DNode86_g243.r;
				float lerpResult157_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness3);
				float Glossiness3154_g243 = _Glossiness3;
				float ColorMask3102_g243 = tex2DNode86_g243.g;
				float lerpResult187_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness4);
				float ColorMask494_g243 = tex2DNode86_g243.b;
				float lerpResult230_g243 = lerp( ( ( lerpResult143_g243 * Glossiness1153_g243 * ColorMask199_g243 ) + ( lerpResult158_g243 * Glossiness2152_g243 * ColorMask296_g243 ) + ( lerpResult157_g243 * Glossiness3154_g243 * ColorMask3102_g243 ) ) , ( _Glossiness4 * lerpResult187_g243 ) , ColorMask494_g243);
				float Detail1148_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g243 ).r;
				float Detail2194_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g243 ).r;
				float ExGloss255_g243 = _ExGloss;
				float lerpResult305_g243 = lerp( ( ( lerpResult230_g243 - ( ( 1.0 - Detail1148_g243 ) * ( _DetailGlossScale * DetailMask183_g243 ) ) ) - ( ( 1.0 - Detail2194_g243 ) * ( _DetailGlossScale2 * DetailMask284_g243 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g243 ));
				float2 uv_SpecGlossMap = i.ase_texcoord1.xy * _SpecGlossMap_ST.xy + _SpecGlossMap_ST.zw;
				float4 tex2DNode933 = SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_SpecGlossMap, uv_SpecGlossMap );
				float Gloss851 = ( saturate( lerpResult305_g243 ) * tex2DNode933.a );
				float smoothness169_g240 = Gloss851;
				float perceprualRoughness188_g240 = ( 1.0 - smoothness169_g240 );
				half Roughness64_g240 = max( ( perceprualRoughness188_g240 * perceprualRoughness188_g240 ) , 0.002 );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 lightDir14_g240 = worldSpaceLightDir;
				float dotResult21_g240 = dot( lightDir14_g240 , normalDir28_g240 );
				float NdotL20_g240 = saturate( dotResult21_g240 );
				half SmithJointGGXVisibilityTerm42_g240 = ( 0.5 / ( ( ( ( NdotV55_g240 * ( 1.0 - Roughness64_g240 ) ) + Roughness64_g240 ) * NdotL20_g240 ) + 1E-05 + ( NdotV55_g240 * ( Roughness64_g240 + ( ( 1.0 - Roughness64_g240 ) * NdotL20_g240 ) ) ) ) );
				float a266_g240 = ( Roughness64_g240 * Roughness64_g240 );
				float3 normalizeResult87_g240 = ASESafeNormalize( ( lightDir14_g240 + viewDir15_g240 ) );
				float dotResult88_g240 = dot( normalDir28_g240 , normalizeResult87_g240 );
				float NdotH90_g240 = saturate( dotResult88_g240 );
				float d99_g240 = ( ( ( ( NdotH90_g240 * a266_g240 ) - NdotH90_g240 ) * NdotH90_g240 ) + 1.0 );
				half GGXTerm43_g240 = ( ( ( 1.0 / UNITY_PI ) * a266_g240 ) / ( ( d99_g240 * d99_g240 ) + 1E-07 ) );
				float SpecularTerm1357_g240 = ( SmithJointGGXVisibilityTerm42_g240 * GGXTerm43_g240 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g240 = sqrt( max( 0.0001 , SpecularTerm1357_g240 ) );
				#else
				float staticSwitch5_g240 = SpecularTerm1357_g240;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g240 = 0.0;
				#else
				float staticSwitch119_g240 = max( 0.0 , ( staticSwitch5_g240 * NdotL20_g240 ) );
				#endif
				float2 uv_MainTex119_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g243 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g243 );
				float3 temp_output_206_0_g243 = ( (tex2DNode119_g243).rgb * (_BaseColor).rgb );
				float3 Color1128_g243 = (_Color).rgb;
				float3 Color2121_g243 = (_Color2).rgb;
				float3 Color3123_g243 = (_Color3).rgb;
				float3 Color4136_g243 = (_Color4).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g243 = i.ase_texcoord1.xy;
				float Carvature197_g243 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g243 ).r;
				float3 lerpResult289_g243 = lerp( ( ( temp_output_206_0_g243 * Color1128_g243 * ColorMask199_g243 ) + ( Color2121_g243 * ColorMask296_g243 * temp_output_206_0_g243 ) + ( Color3123_g243 * ColorMask3102_g243 * temp_output_206_0_g243 ) + ( Color4136_g243 * ColorMask494_g243 * temp_output_206_0_g243 ) ) , temp_cast_0 , ( Carvature197_g243 * _CarvatureStrength ));
				float3 lerpResult313_g243 = lerp( lerpResult289_g243 , ( lerpResult289_g243 * _WetAlbedoOffset ) , ExGloss255_g243);
				float3 DiffuseMix326_g243 = lerpResult313_g243;
				float lerpResult167_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask);
				float lerpResult193_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask2);
				float lerpResult181_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask3);
				float lerpResult208_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask4);
				float lerpResult281_g243 = lerp( ( ( lerpResult167_g243 * _Metallic * ColorMask199_g243 ) + ( lerpResult193_g243 * _Metallic2 * ColorMask296_g243 ) + ( lerpResult181_g243 * _Metallic3 * ColorMask3102_g243 ) ) , ( lerpResult208_g243 * _Metallic4 ) , ColorMask494_g243);
				#ifdef _SPECULARSETUP_ON
				float staticSwitch935 = _GlossMapScale;
				#else
				float staticSwitch935 = saturate( ( ( lerpResult281_g243 - ( ( 1.0 - Detail1148_g243 ) * ( _DetailMetallicScale * DetailMask183_g243 ) ) ) - ( ( 1.0 - Detail2194_g243 ) * ( _DetailMetallicScale2 * DetailMask284_g243 ) ) ) );
				#endif
				half3 specColor786 = (0).xxx;
				half oneMinusReflectivity786 = 0;
				half3 diffuseAndSpecularFromMetallic786 = DiffuseAndSpecularFromMetallic(DiffuseMix326_g243,staticSwitch935,specColor786,oneMinusReflectivity786);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch932 = (tex2DNode933).rgb;
				#else
				float3 staticSwitch932 = specColor786;
				#endif
				float3 Spec849 = staticSwitch932;
				float3 SpecColor140_g240 = Spec849;
				float Specular134_g240 = ( staticSwitch119_g240 * ( SpecColor140_g240.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g240 = ( ase_lightColor.rgb * ase_atten );
				float3 normalizeResult136_g240 = ASESafeNormalize( ( lightDir14_g240 + viewDir15_g240 ) );
				float dotResult137_g240 = dot( lightDir14_g240 , normalizeResult136_g240 );
				float LdotH139_g240 = saturate( dotResult137_g240 );
				half3 FresnelTerm130_g240 = ( ( pow( ( 1.0 - LdotH139_g240 ) , 5.0 ) * ( 1.0 - SpecColor140_g240 ) ) + SpecColor140_g240 );
				half metallic176_g240 = 0.0;
				half localOneMinusReflectivity176_g240 = OneMinusReflectivity( metallic176_g240 );
				half GrazingTerm163_g240 = saturate( ( smoothness169_g240 + ( 1.0 - localOneMinusReflectivity176_g240 ) ) );
				float3 temp_cast_2 = (GrazingTerm163_g240).xxx;
				float3 lerpResult159_g240 = lerp( SpecColor140_g240 , temp_cast_2 , pow( ( 1.0 - NdotV55_g240 ) , 5.0 ));
				half3 FresnelLerp165_g240 = lerpResult159_g240;
				float2 uv_OcclusionMap259_g243 = i.ase_texcoord1.xy;
				float lerpResult298_g243 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g243 ).g , _OcclusionStrength);
				float smoothstepResult266_g243 = smoothstep( 0.0 , 0.8 , Detail1148_g243);
				float lerpResult297_g243 = lerp( 1.0 , smoothstepResult266_g243 , ( _DetailOcculusionScale * DetailMask183_g243 ));
				float smoothstepResult274_g243 = smoothstep( 0.0 , 0.8 , Detail2194_g243);
				float lerpResult299_g243 = lerp( 1.0 , smoothstepResult274_g243 , ( _DetailOcculusionScale2 * DetailMask284_g243 ));
				float OcclusionMix323_g243 = saturate( ( lerpResult298_g243 * lerpResult297_g243 * lerpResult299_g243 ) );
				float AOout787 = OcclusionMix323_g243;
				float AO779 = AOout787;
				float occlusion306_g240 = AO779;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g240 = ( 1.0 - ( 0.28 * Roughness64_g240 * perceprualRoughness188_g240 ) );
				#else
				float staticSwitch183_g240 = ( 1.0 / ( ( Roughness64_g240 * Roughness64_g240 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g240 = staticSwitch183_g240;
				float3 normal198_g240 = temp_output_30_0_g240;
				float3 tanNormal299_g240 = normal198_g240;
				UnityGIInput data;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data );
				data.worldPos = ase_worldPos;
				data.worldViewDir = ase_worldViewDir;
				data.probeHDR[0] = unity_SpecCube0_HDR;
				data.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION //specdataif0
				data.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif //specdataif0
				#if UNITY_SPECCUBE_BOX_PROJECTION //specdataif1
				data.boxMax[0] = unity_SpecCube0_BoxMax;
				data.probePosition[0] = unity_SpecCube0_ProbePosition;
				data.boxMax[1] = unity_SpecCube1_BoxMax;
				data.boxMin[1] = unity_SpecCube1_BoxMin;
				data.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif //specdataif1
				Unity_GlossyEnvironmentData g299_g240 = UnityGlossyEnvironmentSetup( smoothness169_g240, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g240), dot(tanToWorld1,tanNormal299_g240), dot(tanToWorld2,tanNormal299_g240)), float3(0,0,0));
				float3 indirectSpecular299_g240 = UnityGI_IndirectSpecular( data, occlusion306_g240, float3(dot(tanToWorld0,tanNormal299_g240), dot(tanToWorld1,tanNormal299_g240), dot(tanToWorld2,tanNormal299_g240)), g299_g240 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g240 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g240 = ( ( FresnelLerp165_g240 * occlusion306_g240 ) * SurfaceReduction182_g240 * indirectSpecular299_g240 );
				#endif
				float3 Albedo785 = diffuseAndSpecularFromMetallic786;
				float3 temp_output_715_0 = (Albedo785).xyz;
				float grayscale718 = Luminance(temp_output_715_0);
				float3 temp_cast_3 = (grayscale718).xxx;
				float3 temp_cast_4 = (1.0).xxx;
				float3 lerpResult717 = lerp( temp_cast_4 , temp_output_715_0 , _AlbedoOpacity);
				float3 lerpResult719 = lerp( temp_cast_3 , lerpResult717 , _SubsurfaceAlbedoSaturation);
				float3 albedo_final723 = ( lerpResult719 * _TestAlbedo );
				float3 lightDir14_g239 = worldSpaceLightDir;
				float3 viewDir15_g239 = ase_worldViewDir;
				float3 normalizeResult136_g239 = ASESafeNormalize( ( lightDir14_g239 + viewDir15_g239 ) );
				float dotResult137_g239 = dot( lightDir14_g239 , normalizeResult136_g239 );
				float LdotH139_g239 = saturate( dotResult137_g239 );
				float smoothness169_g239 = Gloss851;
				float perceprualRoughness188_g239 = ( 1.0 - smoothness169_g239 );
				half fd90273_g239 = ( 0.5 + ( 2.0 * LdotH139_g239 * LdotH139_g239 * perceprualRoughness188_g239 ) );
				float3 tanNormal29_g239 = Normalout805;
				float3 worldNormal29_g239 = float3(dot(tanToWorld0,tanNormal29_g239), dot(tanToWorld1,tanNormal29_g239), dot(tanToWorld2,tanNormal29_g239));
				float3 normalizeResult25_g239 = normalize( worldNormal29_g239 );
				float3 normalDir28_g239 = normalizeResult25_g239;
				float dotResult21_g239 = dot( lightDir14_g239 , normalDir28_g239 );
				float NdotL20_g239 = saturate( dotResult21_g239 );
				half lightScatter253_g239 = ( ( ( fd90273_g239 - 1.0 ) * pow( ( 1.0 - NdotL20_g239 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g239 = dot( normalDir28_g239 , viewDir15_g239 );
				float NdotV55_g239 = saturate( dotResult56_g239 );
				half viewScatter254_g239 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g239 ) , 5.0 ) * ( fd90273_g239 - 1.0 ) ) );
				half disneydiffuse251_g239 = ( lightScatter253_g239 * viewScatter254_g239 );
				half Diffuseterm281_g239 = ( disneydiffuse251_g239 * NdotL20_g239 );
				float3 lightAtten296_g239 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g239;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g239 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g239
				data203_g239.lightmapUV = i.ase_lmap;
				#endif //dylm203_g239
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g239
				data203_g239.ambient = i.ase_sh;
				#endif //fsh203_g239
				UnityGI gi203_g239 = UnityGI_Base(data203_g239, 1, normalDir28_g239);
				float occlusion306_g239 = AO779;
				half Roughness64_g239 = max( ( perceprualRoughness188_g239 * perceprualRoughness188_g239 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g239 = ( 0.5 / ( ( ( ( NdotV55_g239 * ( 1.0 - Roughness64_g239 ) ) + Roughness64_g239 ) * NdotL20_g239 ) + 1E-05 + ( NdotV55_g239 * ( Roughness64_g239 + ( ( 1.0 - Roughness64_g239 ) * NdotL20_g239 ) ) ) ) );
				float a266_g239 = ( Roughness64_g239 * Roughness64_g239 );
				float3 normalizeResult87_g239 = ASESafeNormalize( ( lightDir14_g239 + viewDir15_g239 ) );
				float dotResult88_g239 = dot( normalDir28_g239 , normalizeResult87_g239 );
				float NdotH90_g239 = saturate( dotResult88_g239 );
				float d99_g239 = ( ( ( ( NdotH90_g239 * a266_g239 ) - NdotH90_g239 ) * NdotH90_g239 ) + 1.0 );
				half GGXTerm43_g239 = ( ( ( 1.0 / UNITY_PI ) * a266_g239 ) / ( ( d99_g239 * d99_g239 ) + 1E-07 ) );
				float temp_output_36_0_g239 = ( SmithJointGGXVisibilityTerm42_g239 * GGXTerm43_g239 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g239 = sqrt( max( 0.0001 , temp_output_36_0_g239 ) );
				#else
				float staticSwitch5_g239 = temp_output_36_0_g239;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g239 = 0.0;
				#else
				float staticSwitch119_g239 = max( 0.0 , ( staticSwitch5_g239 * NdotL20_g239 ) );
				#endif
				float3 SpecColor140_g239 = Spec849;
				float SpecularTerm34_g239 = ( staticSwitch119_g239 * ( SpecColor140_g239.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g239 = ( ( pow( ( 1.0 - LdotH139_g239 ) , 5.0 ) * ( 1.0 - SpecColor140_g239 ) ) + SpecColor140_g239 );
				half metallic176_g239 = 0.0;
				half localOneMinusReflectivity176_g239 = OneMinusReflectivity( metallic176_g239 );
				half GrazingTerm163_g239 = saturate( ( smoothness169_g239 + ( 1.0 - localOneMinusReflectivity176_g239 ) ) );
				float3 temp_cast_6 = (GrazingTerm163_g239).xxx;
				float3 lerpResult159_g239 = lerp( SpecColor140_g239 , temp_cast_6 , pow( ( 1.0 - NdotV55_g239 ) , 5.0 ));
				half3 FresnelLerp165_g239 = lerpResult159_g239;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g239 = ( 1.0 - ( 0.28 * Roughness64_g239 * perceprualRoughness188_g239 ) );
				#else
				float staticSwitch183_g239 = ( 1.0 / ( ( Roughness64_g239 * Roughness64_g239 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g239 = staticSwitch183_g239;
				Unity_GlossyEnvironmentData g299_g239 = UnityGlossyEnvironmentSetup( smoothness169_g239, ase_worldViewDir, normalDir28_g239, float3(0,0,0));
				float3 indirectSpecular299_g239 = UnityGI_IndirectSpecular( data, occlusion306_g239, normalDir28_g239, g299_g239 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g239 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g239 = ( FresnelLerp165_g239 * SurfaceReduction182_g239 * indirectSpecular299_g239 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g239 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g239 = staticSwitch313_g239;
				#endif
				#ifdef SCENE_VIEW
				float3 staticSwitch895 = ( ( albedo_final723 * ( ( Diffuseterm281_g239 * lightAtten296_g239 ) + ( gi203_g239.indirect.diffuse * occlusion306_g239 ) ) ) + ( SpecularTerm34_g239 * lightAtten296_g239 * FresnelTerm130_g239 ) + staticSwitch305_g239 );
				#else
				float3 staticSwitch895 = ( ( Specular134_g240 * lightAtten296_g240 * FresnelTerm130_g240 ) + staticSwitch305_g240 );
				#endif
				float3 Albedo725 = albedo_final723;
				float4 screenPos = i.ase_texcoord9;
				float4 screenPos725 = screenPos;
				float3 localLightingPass725 = LightingPass725( Albedo725 , screenPos725 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch726 = float3( 0,0,0 );
				#else
				float3 staticSwitch726 = localLightingPass725;
				#endif
				float3 lighting_pass727 = staticSwitch726;
				float2 uv_EmissionMap = i.ase_texcoord1.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float3 Emi836 = ( (SAMPLE_TEXTURE2D( _EmissionMap, sampler_EmissionMap, uv_EmissionMap )).rgb * (_EmissionColor).rgb );
				float3 Emi2871 = ( tex2DNode139_g243.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 EmissionFinal875 = ( Emi836 + Emi2871 );
				#ifdef SCENE_VIEW
				float3 staticSwitch897 = EmissionFinal875;
				#else
				float3 staticSwitch897 = ( lighting_pass727 + EmissionFinal875 );
				#endif
				
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g474 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g474 = (int)(temp_output_1_0_g474).x;
				int y9_g474 = (int)(temp_output_1_0_g474).y;
				float localgetInterleavedGradientNoise8Bit9_g474 = getInterleavedGradientNoise8Bit9_g474( x9_g474 , y9_g474 );
				float Color1Alpha101_g243 = _Color.a;
				float Color2Alpha97_g243 = _Color2.a;
				float lerpResult362_g243 = lerp( Color1Alpha101_g243 , Color2Alpha97_g243 , ColorMask296_g243);
				float Color3Alpha98_g243 = _Color3.a;
				float lerpResult364_g243 = lerp( lerpResult362_g243 , Color3Alpha98_g243 , ColorMask3102_g243);
				float Color4Alpha100_g243 = _Color4.a;
				float lerpResult367_g243 = lerp( lerpResult364_g243 , Color4Alpha100_g243 , ColorMask494_g243);
				float AlphaInput137_g243 = tex2DNode119_g243.a;
				float OutOp942 = ( saturate( ( lerpResult367_g243 * AlphaInput137_g243 ) ) * _alpha );
				float2 temp_output_1_0_g475 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g475 = temp_output_1_0_g475;
				float mulTime15_g475 = _Time.y * 60.0;
				float iFrame12_g475 = mulTime15_g475;
				float localIGNAnimated12_g475 = IGNAnimated12_g475( uv12_g475 , iFrame12_g475 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch950 = step( localIGNAnimated12_g475 , OutOp942 );
				#else
				float staticSwitch950 = step( localgetInterleavedGradientNoise8Bit9_g474 , OutOp942 );
				#endif
				float clampResult353_g243 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap375_g243 = i.ase_texcoord1.xy;
				float Mask943 = ( step( pow( ( 1.0 - clampResult353_g243 ) , 0.2 ) , pow( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap375_g243 ).b , 0.5 ) ) * AlphaInput137_g243 );
				float temp_output_951_0 = ( staticSwitch950 * Mask943 );
				float Clip947 = temp_output_951_0;
				
				
				outColor = ( staticSwitch895 + staticSwitch897 );
				outAlpha = Clip947;
				clip(outAlpha - _Cutoff);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}
		
		
		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One
			CGPROGRAM
			#if defined(SHADER_API_GLCORE) || defined(SHADER_API_GLES) || defined(SHADER_API_GLES3) || defined(SHADER_API_D3D9)
			#define FRONT_FACE_SEMANTIC VFACE
			#define FRONT_FACE_TYPE float
			#else
			#define FRONT_FACE_SEMANTIC SV_IsFrontFace
			#define FRONT_FACE_TYPE bool
			#endif
			#pragma multi_compile_fwdbase
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityCG.cginc"
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma shader_feature SCENE_VIEW
			#pragma multi_compile __ _SHADERTYPE_ITEM
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _TEMPORALFILTER_ON
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#endif//ASE Sampling Macros
			

			//This is a late directive
			
			uniform float _VeinsOpacity;
			uniform float _TransDirect;
			uniform float4 _SubColor;
			uniform float _TransRim;
			uniform float _SubsurfaceAlbedoOpacity;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThicknessMap);
			SamplerState sampler_ThicknessMap;
			uniform float _SubsurfaceHue;
			uniform float _SubsurfaceBump;
			uniform float _Translucency;
			uniform float4 _OcclusionColor;
			uniform float SSS_shader;
			uniform float _TransShadow;
			uniform int _SSSBoundary;
			uniform float _SubsurfaceBrightness;
			uniform float _TransScattering;
			uniform float _TransNormalDistortion;
			uniform float4 _ProfileColor;
			uniform float _TransAmbient;
			uniform float4 _TransmissionColor;
			uniform float _SubsurfaceSaturation;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceAlbedo);
			SamplerState sampler_SubsurfaceAlbedo;
			uniform float _SubsurfaceContrast;
			uniform int _SSSProfile;
			uniform int _SSSModeID;
			uniform float _SSSWidth;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _WetnessPower;
			uniform float _ExGloss;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _MetallicMask;
			uniform float _EmissionStrength;
			uniform float4 _EmissionColor;
			uniform float4 _Color3;
			uniform float4 _Color4;
			uniform float _Roughness3;
			uniform float _MetallicMask2;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _DetailNormalMapScale2;
			uniform float _WetAlbedoOffset;
			uniform float _Roughness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DetailGlossScale;
			uniform float _Metallic2;
			uniform float _DetailUV2Rotator;
			uniform float _Glossiness3;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float2 _DetailUV;
			uniform float _Metallic4;
			uniform float _Glossiness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailUVRotator;
			uniform float _DetailMetallicScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _OcclusionStrength;
			uniform float _MetallicMask3;
			uniform float _BumpScale;
			uniform float _Roughness;
			uniform float _AlphaEx;
			uniform float _CullMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurred);
			SamplerState samplerLightingTexBlurred;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurredR);
			SamplerState samplerLightingTexBlurredR;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecGlossMap);
			uniform float4 _SpecGlossMap_ST;
			SamplerState sampler_SpecGlossMap;
			uniform float _MetallicMask4;
			uniform float _GlossMapScale;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _AlbedoOpacity;
			uniform float _SubsurfaceAlbedoSaturation;
			uniform float _TestAlbedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
			uniform float4 _EmissionMap_ST;
			SamplerState sampler_EmissionMap;
			uniform float _alpha;
			float PackUIntToFloat( uint i, uint numBits )
			{
				uint maxInt = 0xFFFFFFFFu >> (32u - numBits);
				return saturate(i * rcp(maxInt));
			}
			
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float3 LightingPass725( float3 Albedo, float4 screenPos )
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
				                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurred, sampler_MainTex, screenUV).rgb;
				            else
				                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurredR, sampler_MainTex, screenUV).rgb;
				            return Albedo * LightingPass;
				#else
				return 0;
				            #endif
			}
			
			float getInterleavedGradientNoise8Bit9_g474( int x, int y )
			{
				return frac(52.9829189*frac(0.06711056*x + 0.00583715*y));
			}
			
			float IGNAnimated12_g475( float2 uv, float iFrame )
			{
				    uint frame = uint(iFrame);
				    
				    if((frame & 2u) != 0u) uv = float2(-uv.y, uv.x);
				    if((frame & 1u) != 0u) uv.x = -uv.x;
				return frac(uv.x*0.7548776662 + uv.y*0.56984029 + float(frame)*0.41421356*1.0);
			}
			

			uniform float _Cutoff;
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_SHADOW_COORDS(6)
				float4 ase_lmap : TEXCOORD7;
				float4 ase_sh : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord2.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.ase_texcoord5.xyz = ase_worldPos;
				#ifdef DYNAMICLIGHTMAP_ON //dynlm
				o.ase_lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif //dynlm
				#ifdef LIGHTMAP_ON //stalm
				o.ase_lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif //stalm
				#ifndef LIGHTMAP_ON //nstalm
				#if UNITY_SHOULD_SAMPLE_SH //sh
				o.ase_sh.xyz = 0;
				#ifdef VERTEXLIGHT_ON //vl
				o.ase_sh.xyz += Shade4PointLights (
				unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
				unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
				unity_4LightAtten0, ase_worldPos, ase_worldNormal);
				#endif //vl
				o.ase_sh.xyz = ShadeSHPerVertex (ase_worldNormal, o.ase_sh.xyz);
				#endif //sh
				#endif //nstalm
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord9 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 uv_BumpMap180_g243 = i.ase_texcoord1.xy;
				float2 texCoord76_g243 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g243 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g243 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g243 = mul( texCoord76_g243 - float2( 0.5,0.5 ) , float2x2( cos78_g243 , -sin78_g243 , sin78_g243 , cos78_g243 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g243 = rotator78_g243;
				float2 break13_g243 = Detail1UV79_g243;
				float temp_output_14_0_g243 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g243 = (float2(( break13_g243.x + temp_output_14_0_g243 ) , break13_g243.y));
				float4 tex2DNode85_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g243 );
				float2 uv_DetailMask81_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g243 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g243 );
				float DetailMask183_g243 = tex2DNode81_g243.r;
				float temp_output_42_0_g243 = ( DetailMask183_g243 * _DetailNormalMapScale );
				float3 appendResult56_g243 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g243 ).g - tex2DNode85_g243.g ) * temp_output_42_0_g243 )));
				float2 appendResult27_g243 = (float2(break13_g243.x , ( break13_g243.y + temp_output_14_0_g243 )));
				float3 appendResult58_g243 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g243 ).g - tex2DNode85_g243.g ) * temp_output_42_0_g243 )));
				float3 normalizeResult66_g243 = normalize( cross( appendResult56_g243 , appendResult58_g243 ) );
				float3 DetailNormal171_g243 = normalizeResult66_g243;
				float2 texCoord7_g243 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g243 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g243 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g243 = mul( texCoord7_g243 - float2( 0.5,0.5 ) , float2x2( cos10_g243 , -sin10_g243 , sin10_g243 , cos10_g243 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g243 = rotator10_g243;
				float2 break20_g243 = Detail2UV12_g243;
				float temp_output_21_0_g243 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g243 = (float2(( break20_g243.x + temp_output_21_0_g243 ) , break20_g243.y));
				float4 tex2DNode41_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g243 );
				float DetailMask284_g243 = tex2DNode81_g243.g;
				float temp_output_49_0_g243 = ( DetailMask284_g243 * _DetailNormalMapScale2 );
				float3 appendResult63_g243 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g243 ).g - tex2DNode41_g243.g ) * temp_output_49_0_g243 )));
				float2 appendResult31_g243 = (float2(break20_g243.x , ( break20_g243.y + temp_output_21_0_g243 )));
				float3 appendResult64_g243 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g243 ).g - tex2DNode41_g243.g ) * temp_output_49_0_g243 )));
				float3 normalizeResult70_g243 = normalize( cross( appendResult63_g243 , appendResult64_g243 ) );
				float3 DetailNormal272_g243 = normalizeResult70_g243;
				float3 normalizeResult262_g243 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g243 ), _BumpScale ) , DetailNormal171_g243 ) , DetailNormal272_g243 ) );
				float3 switchResult303_g243 = (((ase_vface>0)?(normalizeResult262_g243):(-normalizeResult262_g243)));
				float3 Normalout805 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g243 : normalizeResult262_g243 );
				float3 temp_output_30_0_g240 = Normalout805;
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g240 = temp_output_30_0_g240;
				float3 worldNormal29_g240 = float3(dot(tanToWorld0,tanNormal29_g240), dot(tanToWorld1,tanNormal29_g240), dot(tanToWorld2,tanNormal29_g240));
				float3 normalizeResult25_g240 = normalize( worldNormal29_g240 );
				float3 normalDir28_g240 = normalizeResult25_g240;
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g240 = ase_worldViewDir;
				float dotResult56_g240 = dot( normalDir28_g240 , viewDir15_g240 );
				float NdotV55_g240 = saturate( dotResult56_g240 );
				float2 uv_MetallicGlossMap139_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g243 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g243 );
				float lerpResult143_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness);
				float Glossiness1153_g243 = _Glossiness;
				float2 uv_ColorMask86_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g243 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g243 );
				float ColorMask199_g243 = ( 1.0 - ( tex2DNode86_g243.r + tex2DNode86_g243.g + tex2DNode86_g243.b ) );
				float lerpResult158_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness2);
				float Glossiness2152_g243 = _Glossiness2;
				float ColorMask296_g243 = tex2DNode86_g243.r;
				float lerpResult157_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness3);
				float Glossiness3154_g243 = _Glossiness3;
				float ColorMask3102_g243 = tex2DNode86_g243.g;
				float lerpResult187_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness4);
				float ColorMask494_g243 = tex2DNode86_g243.b;
				float lerpResult230_g243 = lerp( ( ( lerpResult143_g243 * Glossiness1153_g243 * ColorMask199_g243 ) + ( lerpResult158_g243 * Glossiness2152_g243 * ColorMask296_g243 ) + ( lerpResult157_g243 * Glossiness3154_g243 * ColorMask3102_g243 ) ) , ( _Glossiness4 * lerpResult187_g243 ) , ColorMask494_g243);
				float Detail1148_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g243 ).r;
				float Detail2194_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g243 ).r;
				float ExGloss255_g243 = _ExGloss;
				float lerpResult305_g243 = lerp( ( ( lerpResult230_g243 - ( ( 1.0 - Detail1148_g243 ) * ( _DetailGlossScale * DetailMask183_g243 ) ) ) - ( ( 1.0 - Detail2194_g243 ) * ( _DetailGlossScale2 * DetailMask284_g243 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g243 ));
				float2 uv_SpecGlossMap = i.ase_texcoord1.xy * _SpecGlossMap_ST.xy + _SpecGlossMap_ST.zw;
				float4 tex2DNode933 = SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_SpecGlossMap, uv_SpecGlossMap );
				float Gloss851 = ( saturate( lerpResult305_g243 ) * tex2DNode933.a );
				float smoothness169_g240 = Gloss851;
				float perceprualRoughness188_g240 = ( 1.0 - smoothness169_g240 );
				half Roughness64_g240 = max( ( perceprualRoughness188_g240 * perceprualRoughness188_g240 ) , 0.002 );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 lightDir14_g240 = worldSpaceLightDir;
				float dotResult21_g240 = dot( lightDir14_g240 , normalDir28_g240 );
				float NdotL20_g240 = saturate( dotResult21_g240 );
				half SmithJointGGXVisibilityTerm42_g240 = ( 0.5 / ( ( ( ( NdotV55_g240 * ( 1.0 - Roughness64_g240 ) ) + Roughness64_g240 ) * NdotL20_g240 ) + 1E-05 + ( NdotV55_g240 * ( Roughness64_g240 + ( ( 1.0 - Roughness64_g240 ) * NdotL20_g240 ) ) ) ) );
				float a266_g240 = ( Roughness64_g240 * Roughness64_g240 );
				float3 normalizeResult87_g240 = ASESafeNormalize( ( lightDir14_g240 + viewDir15_g240 ) );
				float dotResult88_g240 = dot( normalDir28_g240 , normalizeResult87_g240 );
				float NdotH90_g240 = saturate( dotResult88_g240 );
				float d99_g240 = ( ( ( ( NdotH90_g240 * a266_g240 ) - NdotH90_g240 ) * NdotH90_g240 ) + 1.0 );
				half GGXTerm43_g240 = ( ( ( 1.0 / UNITY_PI ) * a266_g240 ) / ( ( d99_g240 * d99_g240 ) + 1E-07 ) );
				float SpecularTerm1357_g240 = ( SmithJointGGXVisibilityTerm42_g240 * GGXTerm43_g240 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g240 = sqrt( max( 0.0001 , SpecularTerm1357_g240 ) );
				#else
				float staticSwitch5_g240 = SpecularTerm1357_g240;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g240 = 0.0;
				#else
				float staticSwitch119_g240 = max( 0.0 , ( staticSwitch5_g240 * NdotL20_g240 ) );
				#endif
				float2 uv_MainTex119_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g243 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g243 );
				float3 temp_output_206_0_g243 = ( (tex2DNode119_g243).rgb * (_BaseColor).rgb );
				float3 Color1128_g243 = (_Color).rgb;
				float3 Color2121_g243 = (_Color2).rgb;
				float3 Color3123_g243 = (_Color3).rgb;
				float3 Color4136_g243 = (_Color4).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g243 = i.ase_texcoord1.xy;
				float Carvature197_g243 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g243 ).r;
				float3 lerpResult289_g243 = lerp( ( ( temp_output_206_0_g243 * Color1128_g243 * ColorMask199_g243 ) + ( Color2121_g243 * ColorMask296_g243 * temp_output_206_0_g243 ) + ( Color3123_g243 * ColorMask3102_g243 * temp_output_206_0_g243 ) + ( Color4136_g243 * ColorMask494_g243 * temp_output_206_0_g243 ) ) , temp_cast_0 , ( Carvature197_g243 * _CarvatureStrength ));
				float3 lerpResult313_g243 = lerp( lerpResult289_g243 , ( lerpResult289_g243 * _WetAlbedoOffset ) , ExGloss255_g243);
				float3 DiffuseMix326_g243 = lerpResult313_g243;
				float lerpResult167_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask);
				float lerpResult193_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask2);
				float lerpResult181_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask3);
				float lerpResult208_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask4);
				float lerpResult281_g243 = lerp( ( ( lerpResult167_g243 * _Metallic * ColorMask199_g243 ) + ( lerpResult193_g243 * _Metallic2 * ColorMask296_g243 ) + ( lerpResult181_g243 * _Metallic3 * ColorMask3102_g243 ) ) , ( lerpResult208_g243 * _Metallic4 ) , ColorMask494_g243);
				#ifdef _SPECULARSETUP_ON
				float staticSwitch935 = _GlossMapScale;
				#else
				float staticSwitch935 = saturate( ( ( lerpResult281_g243 - ( ( 1.0 - Detail1148_g243 ) * ( _DetailMetallicScale * DetailMask183_g243 ) ) ) - ( ( 1.0 - Detail2194_g243 ) * ( _DetailMetallicScale2 * DetailMask284_g243 ) ) ) );
				#endif
				half3 specColor786 = (0).xxx;
				half oneMinusReflectivity786 = 0;
				half3 diffuseAndSpecularFromMetallic786 = DiffuseAndSpecularFromMetallic(DiffuseMix326_g243,staticSwitch935,specColor786,oneMinusReflectivity786);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch932 = (tex2DNode933).rgb;
				#else
				float3 staticSwitch932 = specColor786;
				#endif
				float3 Spec849 = staticSwitch932;
				float3 SpecColor140_g240 = Spec849;
				float Specular134_g240 = ( staticSwitch119_g240 * ( SpecColor140_g240.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g240 = ( ase_lightColor.rgb * ase_atten );
				float3 normalizeResult136_g240 = ASESafeNormalize( ( lightDir14_g240 + viewDir15_g240 ) );
				float dotResult137_g240 = dot( lightDir14_g240 , normalizeResult136_g240 );
				float LdotH139_g240 = saturate( dotResult137_g240 );
				half3 FresnelTerm130_g240 = ( ( pow( ( 1.0 - LdotH139_g240 ) , 5.0 ) * ( 1.0 - SpecColor140_g240 ) ) + SpecColor140_g240 );
				half metallic176_g240 = 0.0;
				half localOneMinusReflectivity176_g240 = OneMinusReflectivity( metallic176_g240 );
				half GrazingTerm163_g240 = saturate( ( smoothness169_g240 + ( 1.0 - localOneMinusReflectivity176_g240 ) ) );
				float3 temp_cast_2 = (GrazingTerm163_g240).xxx;
				float3 lerpResult159_g240 = lerp( SpecColor140_g240 , temp_cast_2 , pow( ( 1.0 - NdotV55_g240 ) , 5.0 ));
				half3 FresnelLerp165_g240 = lerpResult159_g240;
				float2 uv_OcclusionMap259_g243 = i.ase_texcoord1.xy;
				float lerpResult298_g243 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g243 ).g , _OcclusionStrength);
				float smoothstepResult266_g243 = smoothstep( 0.0 , 0.8 , Detail1148_g243);
				float lerpResult297_g243 = lerp( 1.0 , smoothstepResult266_g243 , ( _DetailOcculusionScale * DetailMask183_g243 ));
				float smoothstepResult274_g243 = smoothstep( 0.0 , 0.8 , Detail2194_g243);
				float lerpResult299_g243 = lerp( 1.0 , smoothstepResult274_g243 , ( _DetailOcculusionScale2 * DetailMask284_g243 ));
				float OcclusionMix323_g243 = saturate( ( lerpResult298_g243 * lerpResult297_g243 * lerpResult299_g243 ) );
				float AOout787 = OcclusionMix323_g243;
				float AO779 = AOout787;
				float occlusion306_g240 = AO779;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g240 = ( 1.0 - ( 0.28 * Roughness64_g240 * perceprualRoughness188_g240 ) );
				#else
				float staticSwitch183_g240 = ( 1.0 / ( ( Roughness64_g240 * Roughness64_g240 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g240 = staticSwitch183_g240;
				float3 normal198_g240 = temp_output_30_0_g240;
				float3 tanNormal299_g240 = normal198_g240;
				UnityGIInput data;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data );
				data.worldPos = ase_worldPos;
				data.worldViewDir = ase_worldViewDir;
				data.probeHDR[0] = unity_SpecCube0_HDR;
				data.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION //specdataif0
				data.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif //specdataif0
				#if UNITY_SPECCUBE_BOX_PROJECTION //specdataif1
				data.boxMax[0] = unity_SpecCube0_BoxMax;
				data.probePosition[0] = unity_SpecCube0_ProbePosition;
				data.boxMax[1] = unity_SpecCube1_BoxMax;
				data.boxMin[1] = unity_SpecCube1_BoxMin;
				data.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif //specdataif1
				Unity_GlossyEnvironmentData g299_g240 = UnityGlossyEnvironmentSetup( smoothness169_g240, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g240), dot(tanToWorld1,tanNormal299_g240), dot(tanToWorld2,tanNormal299_g240)), float3(0,0,0));
				float3 indirectSpecular299_g240 = UnityGI_IndirectSpecular( data, occlusion306_g240, float3(dot(tanToWorld0,tanNormal299_g240), dot(tanToWorld1,tanNormal299_g240), dot(tanToWorld2,tanNormal299_g240)), g299_g240 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g240 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g240 = ( ( FresnelLerp165_g240 * occlusion306_g240 ) * SurfaceReduction182_g240 * indirectSpecular299_g240 );
				#endif
				float3 Albedo785 = diffuseAndSpecularFromMetallic786;
				float3 temp_output_715_0 = (Albedo785).xyz;
				float grayscale718 = Luminance(temp_output_715_0);
				float3 temp_cast_3 = (grayscale718).xxx;
				float3 temp_cast_4 = (1.0).xxx;
				float3 lerpResult717 = lerp( temp_cast_4 , temp_output_715_0 , _AlbedoOpacity);
				float3 lerpResult719 = lerp( temp_cast_3 , lerpResult717 , _SubsurfaceAlbedoSaturation);
				float3 albedo_final723 = ( lerpResult719 * _TestAlbedo );
				float3 lightDir14_g239 = worldSpaceLightDir;
				float3 viewDir15_g239 = ase_worldViewDir;
				float3 normalizeResult136_g239 = ASESafeNormalize( ( lightDir14_g239 + viewDir15_g239 ) );
				float dotResult137_g239 = dot( lightDir14_g239 , normalizeResult136_g239 );
				float LdotH139_g239 = saturate( dotResult137_g239 );
				float smoothness169_g239 = Gloss851;
				float perceprualRoughness188_g239 = ( 1.0 - smoothness169_g239 );
				half fd90273_g239 = ( 0.5 + ( 2.0 * LdotH139_g239 * LdotH139_g239 * perceprualRoughness188_g239 ) );
				float3 tanNormal29_g239 = Normalout805;
				float3 worldNormal29_g239 = float3(dot(tanToWorld0,tanNormal29_g239), dot(tanToWorld1,tanNormal29_g239), dot(tanToWorld2,tanNormal29_g239));
				float3 normalizeResult25_g239 = normalize( worldNormal29_g239 );
				float3 normalDir28_g239 = normalizeResult25_g239;
				float dotResult21_g239 = dot( lightDir14_g239 , normalDir28_g239 );
				float NdotL20_g239 = saturate( dotResult21_g239 );
				half lightScatter253_g239 = ( ( ( fd90273_g239 - 1.0 ) * pow( ( 1.0 - NdotL20_g239 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g239 = dot( normalDir28_g239 , viewDir15_g239 );
				float NdotV55_g239 = saturate( dotResult56_g239 );
				half viewScatter254_g239 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g239 ) , 5.0 ) * ( fd90273_g239 - 1.0 ) ) );
				half disneydiffuse251_g239 = ( lightScatter253_g239 * viewScatter254_g239 );
				half Diffuseterm281_g239 = ( disneydiffuse251_g239 * NdotL20_g239 );
				float3 lightAtten296_g239 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g239;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g239 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g239
				data203_g239.lightmapUV = i.ase_lmap;
				#endif //dylm203_g239
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g239
				data203_g239.ambient = i.ase_sh;
				#endif //fsh203_g239
				UnityGI gi203_g239 = UnityGI_Base(data203_g239, 1, normalDir28_g239);
				float occlusion306_g239 = AO779;
				half Roughness64_g239 = max( ( perceprualRoughness188_g239 * perceprualRoughness188_g239 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g239 = ( 0.5 / ( ( ( ( NdotV55_g239 * ( 1.0 - Roughness64_g239 ) ) + Roughness64_g239 ) * NdotL20_g239 ) + 1E-05 + ( NdotV55_g239 * ( Roughness64_g239 + ( ( 1.0 - Roughness64_g239 ) * NdotL20_g239 ) ) ) ) );
				float a266_g239 = ( Roughness64_g239 * Roughness64_g239 );
				float3 normalizeResult87_g239 = ASESafeNormalize( ( lightDir14_g239 + viewDir15_g239 ) );
				float dotResult88_g239 = dot( normalDir28_g239 , normalizeResult87_g239 );
				float NdotH90_g239 = saturate( dotResult88_g239 );
				float d99_g239 = ( ( ( ( NdotH90_g239 * a266_g239 ) - NdotH90_g239 ) * NdotH90_g239 ) + 1.0 );
				half GGXTerm43_g239 = ( ( ( 1.0 / UNITY_PI ) * a266_g239 ) / ( ( d99_g239 * d99_g239 ) + 1E-07 ) );
				float temp_output_36_0_g239 = ( SmithJointGGXVisibilityTerm42_g239 * GGXTerm43_g239 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g239 = sqrt( max( 0.0001 , temp_output_36_0_g239 ) );
				#else
				float staticSwitch5_g239 = temp_output_36_0_g239;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g239 = 0.0;
				#else
				float staticSwitch119_g239 = max( 0.0 , ( staticSwitch5_g239 * NdotL20_g239 ) );
				#endif
				float3 SpecColor140_g239 = Spec849;
				float SpecularTerm34_g239 = ( staticSwitch119_g239 * ( SpecColor140_g239.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g239 = ( ( pow( ( 1.0 - LdotH139_g239 ) , 5.0 ) * ( 1.0 - SpecColor140_g239 ) ) + SpecColor140_g239 );
				half metallic176_g239 = 0.0;
				half localOneMinusReflectivity176_g239 = OneMinusReflectivity( metallic176_g239 );
				half GrazingTerm163_g239 = saturate( ( smoothness169_g239 + ( 1.0 - localOneMinusReflectivity176_g239 ) ) );
				float3 temp_cast_6 = (GrazingTerm163_g239).xxx;
				float3 lerpResult159_g239 = lerp( SpecColor140_g239 , temp_cast_6 , pow( ( 1.0 - NdotV55_g239 ) , 5.0 ));
				half3 FresnelLerp165_g239 = lerpResult159_g239;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g239 = ( 1.0 - ( 0.28 * Roughness64_g239 * perceprualRoughness188_g239 ) );
				#else
				float staticSwitch183_g239 = ( 1.0 / ( ( Roughness64_g239 * Roughness64_g239 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g239 = staticSwitch183_g239;
				Unity_GlossyEnvironmentData g299_g239 = UnityGlossyEnvironmentSetup( smoothness169_g239, ase_worldViewDir, normalDir28_g239, float3(0,0,0));
				float3 indirectSpecular299_g239 = UnityGI_IndirectSpecular( data, occlusion306_g239, normalDir28_g239, g299_g239 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g239 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g239 = ( FresnelLerp165_g239 * SurfaceReduction182_g239 * indirectSpecular299_g239 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g239 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g239 = staticSwitch313_g239;
				#endif
				#ifdef SCENE_VIEW
				float3 staticSwitch895 = ( ( albedo_final723 * ( ( Diffuseterm281_g239 * lightAtten296_g239 ) + ( gi203_g239.indirect.diffuse * occlusion306_g239 ) ) ) + ( SpecularTerm34_g239 * lightAtten296_g239 * FresnelTerm130_g239 ) + staticSwitch305_g239 );
				#else
				float3 staticSwitch895 = ( ( Specular134_g240 * lightAtten296_g240 * FresnelTerm130_g240 ) + staticSwitch305_g240 );
				#endif
				float3 Albedo725 = albedo_final723;
				float4 screenPos = i.ase_texcoord9;
				float4 screenPos725 = screenPos;
				float3 localLightingPass725 = LightingPass725( Albedo725 , screenPos725 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch726 = float3( 0,0,0 );
				#else
				float3 staticSwitch726 = localLightingPass725;
				#endif
				float3 lighting_pass727 = staticSwitch726;
				float2 uv_EmissionMap = i.ase_texcoord1.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float3 Emi836 = ( (SAMPLE_TEXTURE2D( _EmissionMap, sampler_EmissionMap, uv_EmissionMap )).rgb * (_EmissionColor).rgb );
				float3 Emi2871 = ( tex2DNode139_g243.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 EmissionFinal875 = ( Emi836 + Emi2871 );
				#ifdef SCENE_VIEW
				float3 staticSwitch897 = EmissionFinal875;
				#else
				float3 staticSwitch897 = ( lighting_pass727 + EmissionFinal875 );
				#endif
				
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g474 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g474 = (int)(temp_output_1_0_g474).x;
				int y9_g474 = (int)(temp_output_1_0_g474).y;
				float localgetInterleavedGradientNoise8Bit9_g474 = getInterleavedGradientNoise8Bit9_g474( x9_g474 , y9_g474 );
				float Color1Alpha101_g243 = _Color.a;
				float Color2Alpha97_g243 = _Color2.a;
				float lerpResult362_g243 = lerp( Color1Alpha101_g243 , Color2Alpha97_g243 , ColorMask296_g243);
				float Color3Alpha98_g243 = _Color3.a;
				float lerpResult364_g243 = lerp( lerpResult362_g243 , Color3Alpha98_g243 , ColorMask3102_g243);
				float Color4Alpha100_g243 = _Color4.a;
				float lerpResult367_g243 = lerp( lerpResult364_g243 , Color4Alpha100_g243 , ColorMask494_g243);
				float AlphaInput137_g243 = tex2DNode119_g243.a;
				float OutOp942 = ( saturate( ( lerpResult367_g243 * AlphaInput137_g243 ) ) * _alpha );
				float2 temp_output_1_0_g475 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g475 = temp_output_1_0_g475;
				float mulTime15_g475 = _Time.y * 60.0;
				float iFrame12_g475 = mulTime15_g475;
				float localIGNAnimated12_g475 = IGNAnimated12_g475( uv12_g475 , iFrame12_g475 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch950 = step( localIGNAnimated12_g475 , OutOp942 );
				#else
				float staticSwitch950 = step( localgetInterleavedGradientNoise8Bit9_g474 , OutOp942 );
				#endif
				float clampResult353_g243 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap375_g243 = i.ase_texcoord1.xy;
				float Mask943 = ( step( pow( ( 1.0 - clampResult353_g243 ) , 0.2 ) , pow( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap375_g243 ).b , 0.5 ) ) * AlphaInput137_g243 );
				float temp_output_951_0 = ( staticSwitch950 * Mask943 );
				float Clip947 = temp_output_951_0;
				
				
				outColor = ( staticSwitch895 + staticSwitch897 );
				outAlpha = Clip947;
				//clip(outAlpha - _Cutoff);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			Name "Deferred"
			Tags { "LightMode"="Deferred" }

			CGINCLUDE
			#pragma target 5.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			
			CGPROGRAM
			#if defined(SHADER_API_GLCORE) || defined(SHADER_API_GLES) || defined(SHADER_API_GLES3) || defined(SHADER_API_D3D9)
			#define FRONT_FACE_SEMANTIC VFACE
			#define FRONT_FACE_TYPE float
			#else
			#define FRONT_FACE_SEMANTIC SV_IsFrontFace
			#define FRONT_FACE_TYPE bool
			#endif
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_prepassfinal
			#ifndef UNITY_PASS_DEFERRED
			#define UNITY_PASS_DEFERRED
			#endif
			#include "UnityCG.cginc"
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature SCENE_VIEW
			#pragma multi_compile __ _SHADERTYPE_ITEM
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _TEMPORALFILTER_ON
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#endif//ASE Sampling Macros
			

			uniform float _VeinsOpacity;
			uniform float _TransDirect;
			uniform float4 _SubColor;
			uniform float _TransRim;
			uniform float _SubsurfaceAlbedoOpacity;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThicknessMap);
			SamplerState sampler_ThicknessMap;
			uniform float _SubsurfaceHue;
			uniform float _SubsurfaceBump;
			uniform float _Translucency;
			uniform float4 _OcclusionColor;
			uniform float SSS_shader;
			uniform float _TransShadow;
			uniform int _SSSBoundary;
			uniform float _SubsurfaceBrightness;
			uniform float _TransScattering;
			uniform float _TransNormalDistortion;
			uniform float4 _ProfileColor;
			uniform float _TransAmbient;
			uniform float4 _TransmissionColor;
			uniform float _SubsurfaceSaturation;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceAlbedo);
			SamplerState sampler_SubsurfaceAlbedo;
			uniform float _SubsurfaceContrast;
			uniform int _SSSProfile;
			uniform int _SSSModeID;
			uniform float _SSSWidth;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _WetnessPower;
			uniform float _ExGloss;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _MetallicMask;
			uniform float _EmissionStrength;
			uniform float4 _EmissionColor;
			uniform float4 _Color3;
			uniform float4 _Color4;
			uniform float _Roughness3;
			uniform float _MetallicMask2;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _DetailNormalMapScale2;
			uniform float _WetAlbedoOffset;
			uniform float _Roughness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DetailGlossScale;
			uniform float _Metallic2;
			uniform float _DetailUV2Rotator;
			uniform float _Glossiness3;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float2 _DetailUV;
			uniform float _Metallic4;
			uniform float _Glossiness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailUVRotator;
			uniform float _DetailMetallicScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _OcclusionStrength;
			uniform float _MetallicMask3;
			uniform float _BumpScale;
			uniform float _Roughness;
			uniform float _AlphaEx;
			uniform float _CullMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurred);
			SamplerState samplerLightingTexBlurred;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurredR);
			SamplerState samplerLightingTexBlurredR;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			uniform float _GlossMapScale;
			uniform float _AlbedoOpacity;
			uniform float _SubsurfaceAlbedoSaturation;
			uniform float _TestAlbedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecGlossMap);
			uniform float4 _SpecGlossMap_ST;
			SamplerState sampler_SpecGlossMap;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
			uniform float4 _EmissionMap_ST;
			SamplerState sampler_EmissionMap;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _alpha;
			float PackUIntToFloat( uint i, uint numBits )
			{
				uint maxInt = 0xFFFFFFFFu >> (32u - numBits);
				return saturate(i * rcp(maxInt));
			}
			
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			float3 LightingPass725( float3 Albedo, float4 screenPos )
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
				                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurred, sampler_MainTex, screenUV).rgb;
				            else
				                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurredR, sampler_MainTex, screenUV).rgb;
				            return Albedo * LightingPass;
				#else
				return 0;
				            #endif
			}
			
			float3 GI2_g238( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float getInterleavedGradientNoise8Bit9_g474( int x, int y )
			{
				return frac(52.9829189*frac(0.06711056*x + 0.00583715*y));
			}
			
			float IGNAnimated12_g475( float2 uv, float iFrame )
			{
				    uint frame = uint(iFrame);
				    
				    if((frame & 2u) != 0u) uv = float2(-uv.y, uv.x);
				    if((frame & 1u) != 0u) uv.x = -uv.x;
				return frac(uv.x*0.7548776662 + uv.y*0.56984029 + float(frame)*0.41421356*1.0);
			}
			

			uniform float _Cutoff;
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord2.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord5 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			void frag (v2f i , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC, out half4 outGBuffer0 : SV_Target0, out half4 outGBuffer1 : SV_Target1, out half4 outGBuffer2 : SV_Target2, out half4 outGBuffer3 : SV_Target3)
			{
				float3 temp_cast_0 = (0.0).xxx;
				float2 uv_MainTex119_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g243 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g243 );
				float3 temp_output_206_0_g243 = ( (tex2DNode119_g243).rgb * (_BaseColor).rgb );
				float3 Color1128_g243 = (_Color).rgb;
				float2 uv_ColorMask86_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g243 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g243 );
				float ColorMask199_g243 = ( 1.0 - ( tex2DNode86_g243.r + tex2DNode86_g243.g + tex2DNode86_g243.b ) );
				float3 Color2121_g243 = (_Color2).rgb;
				float ColorMask296_g243 = tex2DNode86_g243.r;
				float3 Color3123_g243 = (_Color3).rgb;
				float ColorMask3102_g243 = tex2DNode86_g243.g;
				float3 Color4136_g243 = (_Color4).rgb;
				float ColorMask494_g243 = tex2DNode86_g243.b;
				float3 temp_cast_1 = (1.0).xxx;
				float2 uv_OcclusionMap186_g243 = i.ase_texcoord1.xy;
				float Carvature197_g243 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g243 ).r;
				float3 lerpResult289_g243 = lerp( ( ( temp_output_206_0_g243 * Color1128_g243 * ColorMask199_g243 ) + ( Color2121_g243 * ColorMask296_g243 * temp_output_206_0_g243 ) + ( Color3123_g243 * ColorMask3102_g243 * temp_output_206_0_g243 ) + ( Color4136_g243 * ColorMask494_g243 * temp_output_206_0_g243 ) ) , temp_cast_1 , ( Carvature197_g243 * _CarvatureStrength ));
				float ExGloss255_g243 = _ExGloss;
				float3 lerpResult313_g243 = lerp( lerpResult289_g243 , ( lerpResult289_g243 * _WetAlbedoOffset ) , ExGloss255_g243);
				float3 DiffuseMix326_g243 = lerpResult313_g243;
				float2 uv_MetallicGlossMap139_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g243 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g243 );
				float lerpResult167_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask);
				float lerpResult193_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask2);
				float lerpResult181_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask3);
				float lerpResult208_g243 = lerp( 1.0 , tex2DNode139_g243.b , _MetallicMask4);
				float lerpResult281_g243 = lerp( ( ( lerpResult167_g243 * _Metallic * ColorMask199_g243 ) + ( lerpResult193_g243 * _Metallic2 * ColorMask296_g243 ) + ( lerpResult181_g243 * _Metallic3 * ColorMask3102_g243 ) ) , ( lerpResult208_g243 * _Metallic4 ) , ColorMask494_g243);
				float2 texCoord76_g243 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g243 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g243 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g243 = mul( texCoord76_g243 - float2( 0.5,0.5 ) , float2x2( cos78_g243 , -sin78_g243 , sin78_g243 , cos78_g243 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g243 = rotator78_g243;
				float Detail1148_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g243 ).r;
				float2 uv_DetailMask81_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g243 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g243 );
				float DetailMask183_g243 = tex2DNode81_g243.r;
				float2 texCoord7_g243 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g243 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g243 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g243 = mul( texCoord7_g243 - float2( 0.5,0.5 ) , float2x2( cos10_g243 , -sin10_g243 , sin10_g243 , cos10_g243 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g243 = rotator10_g243;
				float Detail2194_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g243 ).r;
				float DetailMask284_g243 = tex2DNode81_g243.g;
				#ifdef _SPECULARSETUP_ON
				float staticSwitch935 = _GlossMapScale;
				#else
				float staticSwitch935 = saturate( ( ( lerpResult281_g243 - ( ( 1.0 - Detail1148_g243 ) * ( _DetailMetallicScale * DetailMask183_g243 ) ) ) - ( ( 1.0 - Detail2194_g243 ) * ( _DetailMetallicScale2 * DetailMask284_g243 ) ) ) );
				#endif
				half3 specColor786 = (0).xxx;
				half oneMinusReflectivity786 = 0;
				half3 diffuseAndSpecularFromMetallic786 = DiffuseAndSpecularFromMetallic(DiffuseMix326_g243,staticSwitch935,specColor786,oneMinusReflectivity786);
				float3 Albedo785 = diffuseAndSpecularFromMetallic786;
				float3 temp_output_715_0 = (Albedo785).xyz;
				float grayscale718 = Luminance(temp_output_715_0);
				float3 temp_cast_2 = (grayscale718).xxx;
				float3 temp_cast_3 = (1.0).xxx;
				float3 lerpResult717 = lerp( temp_cast_3 , temp_output_715_0 , _AlbedoOpacity);
				float3 lerpResult719 = lerp( temp_cast_2 , lerpResult717 , _SubsurfaceAlbedoSaturation);
				float3 albedo_final723 = ( lerpResult719 * _TestAlbedo );
				#ifdef SCENE_VIEW
				float3 staticSwitch890 = albedo_final723;
				#else
				float3 staticSwitch890 = temp_cast_0;
				#endif
				float4 appendResult902 = (float4(staticSwitch890 , 1.0));
				
				float2 uv_SpecGlossMap = i.ase_texcoord1.xy * _SpecGlossMap_ST.xy + _SpecGlossMap_ST.zw;
				float4 tex2DNode933 = SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_SpecGlossMap, uv_SpecGlossMap );
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch932 = (tex2DNode933).rgb;
				#else
				float3 staticSwitch932 = specColor786;
				#endif
				float3 Spec849 = staticSwitch932;
				float lerpResult143_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness);
				float Glossiness1153_g243 = _Glossiness;
				float lerpResult158_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness2);
				float Glossiness2152_g243 = _Glossiness2;
				float lerpResult157_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness3);
				float Glossiness3154_g243 = _Glossiness3;
				float lerpResult187_g243 = lerp( 1.0 , tex2DNode139_g243.r , _Roughness4);
				float lerpResult230_g243 = lerp( ( ( lerpResult143_g243 * Glossiness1153_g243 * ColorMask199_g243 ) + ( lerpResult158_g243 * Glossiness2152_g243 * ColorMask296_g243 ) + ( lerpResult157_g243 * Glossiness3154_g243 * ColorMask3102_g243 ) ) , ( _Glossiness4 * lerpResult187_g243 ) , ColorMask494_g243);
				float lerpResult305_g243 = lerp( ( ( lerpResult230_g243 - ( ( 1.0 - Detail1148_g243 ) * ( _DetailGlossScale * DetailMask183_g243 ) ) ) - ( ( 1.0 - Detail2194_g243 ) * ( _DetailGlossScale2 * DetailMask284_g243 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g243 ));
				float Gloss851 = ( saturate( lerpResult305_g243 ) * tex2DNode933.a );
				float4 appendResult908 = (float4(Spec849 , Gloss851));
				
				float2 uv_BumpMap180_g243 = i.ase_texcoord1.xy;
				float2 break13_g243 = Detail1UV79_g243;
				float temp_output_14_0_g243 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g243 = (float2(( break13_g243.x + temp_output_14_0_g243 ) , break13_g243.y));
				float4 tex2DNode85_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g243 );
				float temp_output_42_0_g243 = ( DetailMask183_g243 * _DetailNormalMapScale );
				float3 appendResult56_g243 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g243 ).g - tex2DNode85_g243.g ) * temp_output_42_0_g243 )));
				float2 appendResult27_g243 = (float2(break13_g243.x , ( break13_g243.y + temp_output_14_0_g243 )));
				float3 appendResult58_g243 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g243 ).g - tex2DNode85_g243.g ) * temp_output_42_0_g243 )));
				float3 normalizeResult66_g243 = normalize( cross( appendResult56_g243 , appendResult58_g243 ) );
				float3 DetailNormal171_g243 = normalizeResult66_g243;
				float2 break20_g243 = Detail2UV12_g243;
				float temp_output_21_0_g243 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g243 = (float2(( break20_g243.x + temp_output_21_0_g243 ) , break20_g243.y));
				float4 tex2DNode41_g243 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g243 );
				float temp_output_49_0_g243 = ( DetailMask284_g243 * _DetailNormalMapScale2 );
				float3 appendResult63_g243 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g243 ).g - tex2DNode41_g243.g ) * temp_output_49_0_g243 )));
				float2 appendResult31_g243 = (float2(break20_g243.x , ( break20_g243.y + temp_output_21_0_g243 )));
				float3 appendResult64_g243 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g243 ).g - tex2DNode41_g243.g ) * temp_output_49_0_g243 )));
				float3 normalizeResult70_g243 = normalize( cross( appendResult63_g243 , appendResult64_g243 ) );
				float3 DetailNormal272_g243 = normalizeResult70_g243;
				float3 normalizeResult262_g243 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g243 ), _BumpScale ) , DetailNormal171_g243 ) , DetailNormal272_g243 ) );
				float3 switchResult303_g243 = (((ase_vface>0)?(normalizeResult262_g243):(-normalizeResult262_g243)));
				float3 Normalout805 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g243 : normalizeResult262_g243 );
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal918 = Normalout805;
				float3 worldNormal918 = float3(dot(tanToWorld0,tanNormal918), dot(tanToWorld1,tanNormal918), dot(tanToWorld2,tanNormal918));
				float4 appendResult923 = (float4(( ( worldNormal918 * 0.5 ) + 0.5 ) , 1.0));
				
				float2 uv_EmissionMap = i.ase_texcoord1.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
				float3 Emi836 = ( (SAMPLE_TEXTURE2D( _EmissionMap, sampler_EmissionMap, uv_EmissionMap )).rgb * (_EmissionColor).rgb );
				float3 Emi2871 = ( tex2DNode139_g243.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 EmissionFinal875 = ( Emi836 + Emi2871 );
				float3 Albedo725 = albedo_final723;
				float4 screenPos = i.ase_texcoord5;
				float4 screenPos725 = screenPos;
				float3 localLightingPass725 = LightingPass725( Albedo725 , screenPos725 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch726 = float3( 0,0,0 );
				#else
				float3 staticSwitch726 = localLightingPass725;
				#endif
				float3 lighting_pass727 = staticSwitch726;
				float3 normal2_g238 = worldNormal918;
				float3 localGI2_g238 = GI2_g238( normal2_g238 );
				float2 uv_OcclusionMap259_g243 = i.ase_texcoord1.xy;
				float lerpResult298_g243 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g243 ).g , _OcclusionStrength);
				float smoothstepResult266_g243 = smoothstep( 0.0 , 0.8 , Detail1148_g243);
				float lerpResult297_g243 = lerp( 1.0 , smoothstepResult266_g243 , ( _DetailOcculusionScale * DetailMask183_g243 ));
				float smoothstepResult274_g243 = smoothstep( 0.0 , 0.8 , Detail2194_g243);
				float lerpResult299_g243 = lerp( 1.0 , smoothstepResult274_g243 , ( _DetailOcculusionScale2 * DetailMask284_g243 ));
				float OcclusionMix323_g243 = saturate( ( lerpResult298_g243 * lerpResult297_g243 * lerpResult299_g243 ) );
				float AOout787 = OcclusionMix323_g243;
				#ifdef SCENE_VIEW
				float3 staticSwitch924 = ( albedo_final723 * localGI2_g238 * AOout787 );
				#else
				float3 staticSwitch924 = lighting_pass727;
				#endif
				float3 temp_output_914_0 = ( EmissionFinal875 + staticSwitch924 );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch907 = temp_output_914_0;
				#else
				float3 staticSwitch907 = exp2( -temp_output_914_0 );
				#endif
				float4 appendResult926 = (float4(staticSwitch907 , 1.0));
				
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g474 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g474 = (int)(temp_output_1_0_g474).x;
				int y9_g474 = (int)(temp_output_1_0_g474).y;
				float localgetInterleavedGradientNoise8Bit9_g474 = getInterleavedGradientNoise8Bit9_g474( x9_g474 , y9_g474 );
				float Color1Alpha101_g243 = _Color.a;
				float Color2Alpha97_g243 = _Color2.a;
				float lerpResult362_g243 = lerp( Color1Alpha101_g243 , Color2Alpha97_g243 , ColorMask296_g243);
				float Color3Alpha98_g243 = _Color3.a;
				float lerpResult364_g243 = lerp( lerpResult362_g243 , Color3Alpha98_g243 , ColorMask3102_g243);
				float Color4Alpha100_g243 = _Color4.a;
				float lerpResult367_g243 = lerp( lerpResult364_g243 , Color4Alpha100_g243 , ColorMask494_g243);
				float AlphaInput137_g243 = tex2DNode119_g243.a;
				float OutOp942 = ( saturate( ( lerpResult367_g243 * AlphaInput137_g243 ) ) * _alpha );
				float2 temp_output_1_0_g475 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g475 = temp_output_1_0_g475;
				float mulTime15_g475 = _Time.y * 60.0;
				float iFrame12_g475 = mulTime15_g475;
				float localIGNAnimated12_g475 = IGNAnimated12_g475( uv12_g475 , iFrame12_g475 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch950 = step( localIGNAnimated12_g475 , OutOp942 );
				#else
				float staticSwitch950 = step( localgetInterleavedGradientNoise8Bit9_g474 , OutOp942 );
				#endif
				float clampResult353_g243 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap375_g243 = i.ase_texcoord1.xy;
				float Mask943 = ( step( pow( ( 1.0 - clampResult353_g243 ) , 0.2 ) , pow( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap375_g243 ).b , 0.5 ) ) * AlphaInput137_g243 );
				float temp_output_951_0 = ( staticSwitch950 * Mask943 );
				float Clip947 = temp_output_951_0;
				
				
				outGBuffer0 = appendResult902;
				outGBuffer1 = appendResult908;
				outGBuffer2 = appendResult923;
				outGBuffer3 = appendResult926;
				float outAlpha = Clip947;
				clip(outAlpha - _Cutoff);
			}
			ENDCG
		}
		
		
		Pass
		{
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			ColorMask RGBA
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
            //Cull Back
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#pragma shader_feature SCENE_VIEW
			#pragma multi_compile __ _SHADERTYPE_ITEM
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#endif//ASE Sampling Macros
			

			uniform float _VeinsOpacity;
			uniform float _TransDirect;
			uniform float4 _SubColor;
			uniform float _TransRim;
			uniform float _SubsurfaceAlbedoOpacity;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThicknessMap);
			SamplerState sampler_ThicknessMap;
			uniform float _SubsurfaceHue;
			uniform float _SubsurfaceBump;
			uniform float _Translucency;
			uniform float4 _OcclusionColor;
			uniform float SSS_shader;
			uniform float _TransShadow;
			uniform int _SSSBoundary;
			uniform float _SubsurfaceBrightness;
			uniform float _TransScattering;
			uniform float _TransNormalDistortion;
			uniform float4 _ProfileColor;
			uniform float _TransAmbient;
			uniform float4 _TransmissionColor;
			uniform float _SubsurfaceSaturation;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceAlbedo);
			SamplerState sampler_SubsurfaceAlbedo;
			uniform float _SubsurfaceContrast;
			uniform int _SSSProfile;
			uniform int _SSSModeID;
			uniform float _SSSWidth;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _WetnessPower;
			uniform float _ExGloss;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _MetallicMask;
			uniform float _EmissionStrength;
			uniform float4 _EmissionColor;
			uniform float4 _Color3;
			uniform float4 _Color4;
			uniform float _Roughness3;
			uniform float _MetallicMask2;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _DetailNormalMapScale2;
			uniform float _WetAlbedoOffset;
			uniform float _Roughness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DetailGlossScale;
			uniform float _Metallic2;
			uniform float _DetailUV2Rotator;
			uniform float _Glossiness3;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float2 _DetailUV;
			uniform float _Metallic4;
			uniform float _Glossiness2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailUVRotator;
			uniform float _DetailMetallicScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _OcclusionStrength;
			uniform float _MetallicMask3;
			uniform float _BumpScale;
			uniform float _Roughness;
			uniform float _AlphaEx;
			uniform float _CullMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurred);
			SamplerState samplerLightingTexBlurred;
			UNITY_DECLARE_TEX2D_NOSAMPLER(LightingTexBlurredR);
			SamplerState samplerLightingTexBlurredR;
			uniform float _alpha;
			float PackUIntToFloat( uint i, uint numBits )
			{
				uint maxInt = 0xFFFFFFFFu >> (32u - numBits);
				return saturate(i * rcp(maxInt));
			}
			
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			

			sampler3D _DitherMaskLOD;
			uniform float _Cutoff;

			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i 
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif			
			) : SV_Target
			{
				float outAlpha;
				float Color1Alpha101_g243 = _Color.a;
				float Color2Alpha97_g243 = _Color2.a;
				float2 uv_ColorMask86_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g243 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g243 );
				float ColorMask296_g243 = tex2DNode86_g243.r;
				float lerpResult362_g243 = lerp( Color1Alpha101_g243 , Color2Alpha97_g243 , ColorMask296_g243);
				float Color3Alpha98_g243 = _Color3.a;
				float ColorMask3102_g243 = tex2DNode86_g243.g;
				float lerpResult364_g243 = lerp( lerpResult362_g243 , Color3Alpha98_g243 , ColorMask3102_g243);
				float Color4Alpha100_g243 = _Color4.a;
				float ColorMask494_g243 = tex2DNode86_g243.b;
				float lerpResult367_g243 = lerp( lerpResult364_g243 , Color4Alpha100_g243 , ColorMask494_g243);
				float2 uv_MainTex119_g243 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g243 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g243 );
				float AlphaInput137_g243 = tex2DNode119_g243.a;
				float OutOp942 = ( saturate( ( lerpResult367_g243 * AlphaInput137_g243 ) ) * _alpha );
				float clampResult353_g243 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap375_g243 = i.ase_texcoord1.xy;
				float Mask943 = ( step( pow( ( 1.0 - clampResult353_g243 ) , 0.2 ) , pow( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap375_g243 ).b , 0.5 ) ) * AlphaInput137_g243 );
				float AlphaSC954 = ( OutOp942 * Mask943 );
				
				
				outAlpha = AlphaSC954;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = i.pos;
				#endif
				half alphaRef = tex3D(_DitherMaskLOD, float3(vpos.xy * 0.25, outAlpha * 0.9375)).a;
				//half alphaRef = outAlpha;
				clip(alphaRef - 0.01);
	
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback "Legacy Shaders/Diffuse"
}
/*ASEBEGIN
Version=18935
192.8;6;1337;878;-6510.959;3960.707;1;True;False
Node;AmplifyShaderEditor.RegisterLocalVarNode;805;4374.64,-4439.769;Inherit;False;Normalout;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;751;2573.189,-2856.216;Inherit;False;1781.598;1537.865;Comment;2;779;788;Specular AO;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;711;2529.143,-3584.173;Inherit;False;1950.029;618.0199;Albedo Scene View;11;723;721;720;719;718;717;716;715;714;713;712;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;712;2574.63,-3518.708;Inherit;True;785;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;714;2832.838,-3369.182;Inherit;False;Constant;_Float24;Float 22;39;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;713;2685.309,-3181.147;Inherit;False;Property;_AlbedoOpacity;AlbedoOpacity;68;0;Create;True;0;0;0;True;0;False;0.87;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;715;2813.125,-3518.971;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;717;3266.268,-3366.563;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;716;3115.362,-3175.849;Inherit;False;Property;_SubsurfaceAlbedoSaturation;SubsurfaceAlbedoSaturation;69;0;Create;True;0;0;0;True;0;False;0.5;0.6;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;718;3209.397,-3519.781;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;788;2732.198,-2706.554;Inherit;False;787;AOout;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;719;3526.79,-3514.71;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;720;3576.591,-3165.755;Inherit;False;Property;_TestAlbedo;TestAlbedo;71;0;Create;True;0;0;0;True;0;False;1;1;1;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;721;3963.519,-3513.026;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;722;4619.907,-3395.379;Inherit;False;1287.607;499.7825;Lighting Pass to Emission;5;728;727;726;725;724;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;723;4219.108,-3517.382;Inherit;True;albedo_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;724;4662.88,-3146.702;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;871;4376.405,-4363.144;Inherit;False;Emi2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;728;4665.168,-3346.227;Inherit;True;723;albedo_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;726;5220.522,-3337.877;Inherit;False;Property;_UNITY_PASS_FORWARD_ADD3;UNITY_PASS_FORWARD_ADD;39;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;ToggleOff;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;727;5633.771,-3336.014;Inherit;True;lighting_pass;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;867;4219.954,-7384.455;Inherit;False;3001.254;2052.541;Comment;38;839;708;891;890;883;846;866;847;855;886;885;864;880;865;830;859;860;858;863;861;862;900;901;902;903;904;907;908;912;913;914;917;918;920;922;923;924;926;Prepass Final;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;742;3632.542,-3984.358;Inherit;False;Property;_VeinsOpacity;VeinsOpacity;73;0;Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;733;3633.489,-4361.539;Inherit;False;Property;_TransDirect;TransDirect;83;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;823;3364.41,-4821.654;Inherit;False;Property;_SubColor;SubColor;77;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;810;2631.328,-3800.751;Inherit;False;Constant;_Float1;Float 1;24;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;738;3633.489,-4171.539;Inherit;False;Property;_TransRim;TransRim;85;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;741;3635.501,-4077.706;Inherit;False;Property;_SubsurfaceAlbedoOpacity;SubsurfaceAlbedoOpacity;70;0;Create;True;0;0;0;True;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;82;3024.415,-4640.77;Inherit;True;Property;_ThicknessMap;ThicknessMap;66;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;822;3647.053,-5095.228;Inherit;False;Property;_SubsurfaceHue;SubsurfaceHue;86;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;824;3636.048,-3887.891;Inherit;False;Property;_SubsurfaceBump;SubsurfaceBump;63;0;Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;735;3642.489,-4712.539;Inherit;False;Property;_Translucency;Translucency;76;0;Create;True;0;0;0;True;0;False;35.39931;35.39931;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;745;3342.56,-4209.94;Inherit;False;Property;_OcclusionColor;OcclusionColor;72;0;Create;True;0;0;0;True;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;901;5181.547,-6568.897;Inherit;False;Property;SSS_shader;SSS_shader;75;2;[HideInInspector];[Toggle];Create;False;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;732;3642.489,-4536.539;Inherit;False;Property;_TransShadow;TransShadow;87;0;Create;True;0;0;0;True;0;False;0.75;0.75;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;739;3020.346,-4447.356;Inherit;True;Property;_ProfileTex;ProfileTex;64;0;Fetch;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.IntNode;863;6488.47,-5744.708;Inherit;False;Property;_SSSBoundary;SSSBoundary;89;0;Create;True;0;0;0;True;0;False;0;0;True;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;821;3645.6,-4909.618;Inherit;False;Property;_SubsurfaceBrightness;SubsurfaceBrightness;84;0;Create;True;0;0;0;True;0;False;0.8;0.8;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;737;3642.489,-4456.539;Inherit;False;Property;_TransScattering;TransScattering;79;0;Create;True;0;0;0;True;0;False;1;1;1;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;736;3642.489,-4632.539;Inherit;False;Property;_TransNormalDistortion;TransNormalDistortion;78;1;[Header];Create;True;1;Translucency;0;0;True;0;False;0.8315294;0.8315294;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;740;3360.538,-4622.374;Inherit;False;Property;_ProfileColor;Profile Color;65;0;Create;True;0;0;0;True;1;Header (Separate Profile);False;0.7,0.45,0.36,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;734;3631.489,-4267.539;Inherit;False;Property;_TransAmbient;TransAmbient;81;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;744;3344.062,-4413.674;Inherit;False;Property;_TransmissionColor;Transmission Color;74;0;Create;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.1999997,0.1999997,0.1999997,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;819;3644.146,-5005.557;Inherit;False;Property;_SubsurfaceSaturation;SubsurfaceSaturation;80;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;746;3032.867,-4218.16;Inherit;True;Property;_SubsurfaceAlbedo;SubsurfaceAlbedo;67;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;820;3649.348,-4817.281;Inherit;False;Property;_SubsurfaceContrast;SubsurfaceContrast;82;0;Create;True;0;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;862;6736.846,-5856.506;Inherit;False;uint maxInt = 0xFFFFFFFFu >> (32u - numBits)@$return saturate(i * rcp(maxInt))@;1;Create;2;True;i;OBJECT;0;In;uint;Inherit;False;True;numBits;OBJECT;0;In;uint;Inherit;False;PackUIntToFloat;False;True;0;5cf0943b2190f794c8bb78a70d8e1976;False;2;0;OBJECT;0;False;1;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;922;5949.24,-6085.806;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;924;6141.451,-6114.546;Inherit;False;Property;SCENE_VIEW3;SCENE_VIEW;35;0;Create;False;0;0;0;True;0;False;1;0;0;False;SCENE_VIEW;Toggle;2;Key0;Key1;Reference;888;False;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;913;6413.557,-6678.714;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;912;6021.623,-6661.97;Inherit;False;Constant;_Float33;Float 30;88;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;908;6587.109,-6962.723;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;907;6799.995,-6454.868;Inherit;False;Property;_Keyword5;Keyword 2;88;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_HDR_ON;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;903;5649.054,-6062.131;Inherit;False;Global Illumination;-1;;238;618026ac6bfd8394b9cb2d8d0ecddb28;1,19,1;1;37;FLOAT3;0,0,0;False;1;FLOAT3;15
Node;AmplifyShaderEditor.NegateNode;900;6482.283,-6526.648;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;914;6316.974,-6430.899;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;866;6971.148,-5950.511;Inherit;False;COLOR;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.IntNode;864;6504.91,-5860.582;Inherit;False;Property;_SSSProfile;SSSProfile;90;0;Create;True;0;0;0;True;0;False;0;0;True;0;1;INT;0
Node;AmplifyShaderEditor.CustomExpressionNode;865;6739.271,-5738.828;Inherit;False;uint maxInt = 0xFFFFFFFFu >> (32u - numBits)@$return saturate(i * rcp(maxInt))@;1;Create;2;True;i;OBJECT;0;In;uint;Inherit;False;True;numBits;OBJECT;8;In;uint;Inherit;False;PackUIntToFloat;False;True;0;5cf0943b2190f794c8bb78a70d8e1976;False;2;0;OBJECT;0;False;1;OBJECT;8;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;861;6493.975,-5630.632;Inherit;False;Property;_SSSModeID;SSSModeID;91;0;Create;True;0;0;0;True;0;False;1;1;True;0;1;INT;0
Node;AmplifyShaderEditor.CustomExpressionNode;860;6751.77,-5627.866;Inherit;False;uint maxInt = 0xFFFFFFFFu >> (32u - numBits)@$return saturate(i * rcp(maxInt))@;1;Create;2;True;i;OBJECT;0;In;uint;Inherit;False;True;numBits;OBJECT;8;In;uint;Inherit;False;PackUIntToFloat;False;True;0;5cf0943b2190f794c8bb78a70d8e1976;False;2;0;OBJECT;0;False;1;OBJECT;8;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;902;6566.862,-7156.021;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;859;6396.522,-5953.525;Inherit;False;Property;_SSSWidth;SSSWidth;88;0;Create;True;0;0;0;True;0;False;0.01;0.01;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Exp2OpNode;920;6649.49,-6526.409;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;918;5367.454,-6784.855;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;885;6320.377,-6905.24;Inherit;False;851;Gloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;830;5645.514,-6958.913;Inherit;False;Property;_Cutoff;Cutoff;62;0;Fetch;True;0;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;917;6232.43,-6784.413;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;891;5542.539,-7205.202;Inherit;False;Constant;_Float19;Float 19;34;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;855;5146.61,-6786.732;Inherit;False;805;Normalout;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;880;6029.336,-6448.166;Inherit;False;875;EmissionFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;926;7032.934,-6447.678;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;923;6597.386,-6732.372;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.IntNode;858;6504.798,-5469.97;Inherit;False;Constant;_SSSModeID2;NumBits;102;0;Create;False;0;0;0;False;0;False;8;0;True;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;883;6327.355,-6981.824;Inherit;False;849;Spec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;890;5738.539,-7165.202;Inherit;False;Property;_Keyword1;Keyword 1;35;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;888;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;839;6908.939,-4542.077;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;847;5217.275,-7146.994;Inherit;False;723;albedo_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;708;6978.686,-7001.445;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;904;5860.314,-6295.218;Inherit;False;727;lighting_pass;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;725;4934.691,-3334.828;Inherit;False;#if !defined(SCENE_VIEW)$            half3 LightingPass = 0@$            float4 coords = 0@$			coords = UNITY_PROJ_COORD(screenPos)@$            coords.w += .0001@$			float2 screenUV = coords.xy / coords.w@$            $               #ifdef UNITY_SINGLE_PASS_STEREO$				float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex]@$			    screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy@$               #endif$            if (unity_StereoEyeIndex == 0)$                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurred, sampler_MainTex, screenUV).rgb@$            else$                LightingPass = SAMPLE_TEXTURE2D(LightingTexBlurredR, sampler_MainTex, screenUV).rgb@$$            return Albedo * LightingPass@$#else$return 0@$            #endif;3;Create;2;True;Albedo;FLOAT3;0,0,0;In;;Inherit;False;True;screenPos;FLOAT4;0,0,0,0;In;;Inherit;False;LightingPass;True;False;0;;False;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;869;6116.482,-4952.538;Inherit;False;805;Normalout;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;896;6114.497,-5060.582;Inherit;False;723;albedo_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;377;6355.144,-4602.124;Inherit;False;727;lighting_pass;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;380;6128.113,-4622.091;Inherit;False;779;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;898;6597.078,-4596.621;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;889;6381.822,-5055.874;Inherit;False;GGX Specular Light;1;;239;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;710;6381.587,-4818.867;Inherit;False;GGX Specular Only;-1;;240;640db32e4bea8eb419ba28dede45a910;0;5;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;403;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;899;6705.91,-4432.449;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;897;6788.563,-4600.567;Inherit;False;Property;_Keyword4;Keyword 1;35;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;888;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;895;6669.588,-4948.49;Inherit;False;Property;_Keyword3;Keyword 1;35;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;888;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;700;7069.495,-4617.185;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;706;7387.015,-4617.712;Float;False;True;-1;2;ASEMaterialInspector;0;7;Hanmen/Next-Gen Item;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;True;958;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;707;7387.015,-4511.912;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;709;7387.015,-4262.712;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;868;6128.086,-4838.777;Inherit;False;849;Spec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;932;5702.984,-4424.04;Inherit;False;Property;_SpecularSetup;SpecularSetup;92;0;Create;True;0;0;0;False;1;Header(Specularity);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;934;5259.343,-3954.024;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;849;6002.256,-4422.771;Inherit;False;Spec;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;936;4606.857,-4318.098;Inherit;False;Property;_GlossMapScale;GlossMapScale;57;0;Create;True;0;0;0;True;0;False;0.2;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;834;2875.93,-4980.649;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;832;2881.133,-5153.547;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;835;3155.314,-5024.861;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;836;3305.883,-5027.682;Inherit;False;Emi;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;786;5099.896,-4603.389;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;938;4419.156,-4575.292;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;937;4360.18,-4562.39;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;935;4828.544,-4453.016;Inherit;False;Property;_Keyword2;Keyword 2;92;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;932;False;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;785;5538.98,-4648.188;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;877;6333.792,-4431.121;Inherit;False;875;EmissionFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;787;4377.364,-4210.702;Inherit;False;AOout;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;779;3287.563,-2720.989;Float;True;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;833;2654.934,-4970.247;Inherit;False;Property;_EmissionColor;EmissionColor;59;0;Fetch;True;0;0;0;True;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;831;2567.836,-5160.05;Inherit;True;Property;_EmissionMap;EmissionMap;60;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;886;5725.879,-5962.5;Inherit;False;787;AOout;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;939;4026.43,-4520.084;Inherit;False;AIT Item Function 1;3;;243;ad510b5e93257fd489f03104b8d9f326;0;0;8;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;346;FLOAT;371;FLOAT;373
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;940;4698.194,-4164.717;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;942;4877.311,-4171.227;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;873;4007.845,-3715.641;Inherit;False;871;Emi2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;874;4214.84,-3748.496;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;875;4368.116,-3751.139;Inherit;False;EmissionFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;872;4012.777,-3802.706;Inherit;False;836;Emi;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;943;4372.068,-4121.38;Inherit;False;Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;941;4320.368,-4027.671;Inherit;False;Property;_alpha;alpha;55;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;953;7117.181,-3764.373;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;954;7653.786,-3771.523;Inherit;False;AlphaSC;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;956;6195.478,-3773.645;Inherit;False;942;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;955;7126.636,-3412.698;Inherit;False;Property;_Cutoff;Cutoff;4;1;[Header];Fetch;True;1;Alpha Clip Value;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;884;6781.856,-4273.531;Inherit;False;947;Clip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;957;6743.186,-4158.006;Inherit;False;954;AlphaSC;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;948;6521.335,-3625.506;Inherit;False;Dither IGN;-1;;474;0a81f9c8808949b40b4d9bf0cdce67ca;1,11,0;1;10;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;949;6520.402,-3476.076;Inherit;False;Dither IGN;-1;;475;0a81f9c8808949b40b4d9bf0cdce67ca;1,11,1;1;10;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;950;6714.866,-3568.459;Inherit;False;Property;_TemporalFilter;TemporalFilter;14;0;Create;False;0;0;0;True;0;False;1;0;0;False;_TEMPORALFILTER_ON;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;846;6651.695,-6615.335;Inherit;False;947;Clip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;958;6439.15,-3068.29;Inherit;False;Property;_CullMode;CullMode;0;2;[Header];[IntRange];Create;True;1;Backface Settings;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;870;6102.449,-4728.309;Inherit;False;851;Gloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;930;5559.941,-5006.178;Inherit;True;Global;LightingTexBlurred;LightingTexBlurred;58;1;[HideInInspector];Create;False;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;931;5569.276,-5232.783;Inherit;True;Global;LightingTexBlurredR;LightingTexBlurredR;61;1;[HideInInspector];Create;False;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;888;5731.143,-4153.375;Inherit;False;Property;_SCENE_VIEW;SCENE_VIEW;35;0;Create;True;0;0;0;True;0;False;0;0;0;False;SCENE_VIEW;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;809;5732.883,-4268.373;Inherit;False;Property;_SHADERTYPE_ITEM;SHADERTYPE_ITEM;83;0;Create;True;0;0;0;True;0;False;1;1;1;False;_SHADERTYPE_ITEM;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;959;5275.346,-3854.358;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;851;5529.471,-3861.092;Inherit;False;Gloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;962;4295.881,-3822.553;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;963;4348.749,-3802.219;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;961;4379.249,-3934.393;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;964;4415.85,-3916.092;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;933;3952.586,-4253.013;Inherit;True;Property;_SpecGlossMap;SpecGlossMap;56;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClipNode;952;7496.237,-3433.551;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;947;7662.515,-3561.68;Inherit;False;Clip;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;946;6817.879,-3398.417;Inherit;False;943;Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;951;7145.868,-3561.724;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
WireConnection;805;0;939;342
WireConnection;715;0;712;0
WireConnection;717;0;714;0
WireConnection;717;1;715;0
WireConnection;717;2;713;0
WireConnection;718;0;715;0
WireConnection;719;0;718;0
WireConnection;719;1;717;0
WireConnection;719;2;716;0
WireConnection;721;0;719;0
WireConnection;721;1;720;0
WireConnection;723;0;721;0
WireConnection;871;0;939;341
WireConnection;726;1;725;0
WireConnection;727;0;726;0
WireConnection;862;0;864;0
WireConnection;862;1;858;0
WireConnection;922;0;847;0
WireConnection;922;1;903;15
WireConnection;922;2;886;0
WireConnection;924;1;904;0
WireConnection;924;0;922;0
WireConnection;913;0;917;0
WireConnection;913;1;912;0
WireConnection;908;0;883;0
WireConnection;908;3;885;0
WireConnection;907;1;920;0
WireConnection;907;0;914;0
WireConnection;903;37;918;0
WireConnection;900;0;914;0
WireConnection;914;0;880;0
WireConnection;914;1;924;0
WireConnection;866;0;859;0
WireConnection;866;1;862;0
WireConnection;866;2;865;0
WireConnection;866;3;860;0
WireConnection;865;0;863;0
WireConnection;865;1;858;0
WireConnection;860;0;861;0
WireConnection;860;1;858;0
WireConnection;902;0;890;0
WireConnection;920;0;900;0
WireConnection;918;0;855;0
WireConnection;917;0;918;0
WireConnection;917;1;912;0
WireConnection;926;0;907;0
WireConnection;923;0;913;0
WireConnection;890;1;891;0
WireConnection;890;0;847;0
WireConnection;708;0;902;0
WireConnection;708;1;908;0
WireConnection;708;2;923;0
WireConnection;708;3;926;0
WireConnection;708;4;846;0
WireConnection;725;0;728;0
WireConnection;725;1;724;0
WireConnection;898;0;377;0
WireConnection;898;1;877;0
WireConnection;889;286;896;0
WireConnection;889;30;869;0
WireConnection;889;146;868;0
WireConnection;889;147;870;0
WireConnection;889;302;380;0
WireConnection;710;30;869;0
WireConnection;710;146;868;0
WireConnection;710;147;870;0
WireConnection;710;302;380;0
WireConnection;899;0;877;0
WireConnection;897;1;898;0
WireConnection;897;0;899;0
WireConnection;895;1;710;0
WireConnection;895;0;889;0
WireConnection;700;0;895;0
WireConnection;700;1;897;0
WireConnection;706;0;700;0
WireConnection;706;1;884;0
WireConnection;709;0;957;0
WireConnection;932;1;786;1
WireConnection;932;0;934;0
WireConnection;934;0;964;0
WireConnection;849;0;932;0
WireConnection;834;0;833;0
WireConnection;832;0;831;0
WireConnection;835;0;832;0
WireConnection;835;1;834;0
WireConnection;836;0;835;0
WireConnection;786;0;938;0
WireConnection;786;1;935;0
WireConnection;938;0;937;0
WireConnection;937;0;939;345
WireConnection;935;1;939;340
WireConnection;935;0;936;0
WireConnection;785;0;786;0
WireConnection;787;0;939;346
WireConnection;779;0;788;0
WireConnection;940;0;939;371
WireConnection;940;1;941;0
WireConnection;942;0;940;0
WireConnection;874;0;872;0
WireConnection;874;1;873;0
WireConnection;875;0;874;0
WireConnection;943;0;939;373
WireConnection;953;0;956;0
WireConnection;953;1;946;0
WireConnection;954;0;953;0
WireConnection;948;10;956;0
WireConnection;949;10;956;0
WireConnection;950;1;948;0
WireConnection;950;0;949;0
WireConnection;959;0;939;0
WireConnection;959;1;963;0
WireConnection;851;0;959;0
WireConnection;962;0;933;4
WireConnection;963;0;962;0
WireConnection;961;0;933;0
WireConnection;964;0;961;0
WireConnection;952;1;951;0
WireConnection;952;2;955;0
WireConnection;947;0;951;0
WireConnection;951;0;950;0
WireConnection;951;1;946;0
ASEEND*/
//CHKSM=CD072AC60711F2937639BC5B41408D14378C46A6
