// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Cutoff"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Translucency)]_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		_TransmissionShadow("TransmissionShadow", Range( 0 , 1)) = 1
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
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
		[HideInInspector][Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		[Header(Dithering)][Toggle]_DitherSwitch("DitherSwitch", Range( 0 , 1)) = 1
		[Toggle]_DitherBlueNoise("DitherBlueNoise", Range( 0 , 1)) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		_TransmissionStrength("TransmissionStrength", Range( 0 , 5)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		Tags { "RenderType"="TransparentCutout" }
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
		Cull [_CullMode]
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
		#include "UnityStandardUtils.cginc"
		#include "Lighting.cginc"
		#include "AutoLight.cginc"
		#include "UnityStandardBRDF.cginc"
		#include "UnityShaderVariables.cginc"
		#define ASE_NEEDS_VERT_NORMAL
		#define ASE_SHADOWS 1
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
		
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		SamplerState sampler_Noise;
		uniform float _WetnessPower;
		uniform float4 _Color2;
		uniform float _ExGloss;
		uniform float4 _EmissionColor;
		uniform float _Roughness;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_TextureSample20;
		uniform float4 _Color4;
		uniform float4 _Color3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _EmissionStrength;
		uniform float4 _Color;
		uniform float _Metallic;
		uniform float _Metallic3;
		uniform float _Metallic2;
		uniform half _DitherSwitch;
		uniform float _Float0;
		uniform float _WetAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _Translucency;
		uniform float _DetailGlossScale2;
		uniform float4 _BaseColor;
		uniform float _CarvatureStrength;
		uniform float _DitherBlueNoise;
		uniform float _DetailGlossScale;
		uniform float _DetailNormalMapScale2;
		uniform float _Glossiness;
		uniform float _Glossiness2;
		uniform float _MetallicMask3;
		uniform float _MetallicMask2;
		uniform float2 _DetailUV2;
		uniform float _DetailUV2Rotator;
		uniform float _Roughness3;
		uniform float _Roughness2;
		uniform float _DetailMetallicScale2;
		uniform float _MetallicMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		SamplerState sampler_MetallicGlossMap;
		uniform float _Glossiness3;
		uniform float _DetailNormalMapScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _Metallic4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _TransmissionStrength;
		uniform float2 _DetailUV;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _DetailMetallicScale;
		uniform float _TransDirect;
		uniform float _TransShadow;
		uniform float _TransScattering;
		uniform float _TransAmbient;
		uniform float _TransNormalDistortion;
		uniform float _TransmissionShadow;
		uniform float _CullMode;
		uniform float _MetallicMask4;
		SamplerState sampler_trilinear_repeat;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _NormalBackDirInvert;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		float4 _Noise_TexelSize;
		SamplerState sampler_point_repeat;
		half OneMinusReflectivity( half metallic )
		{
			   return OneMinusReflectivityFromMetallic(metallic);
		}
		
		inline float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max( 0.001f , dot( inVec , inVec ) );
			return inVec* rsqrt( dp3);
		}
		
		float3 GI2_g33( float3 normal )
		{
			return ShadeSH9(half4(normal, 1.0));
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
		
		inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
		{
			float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
			float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
			dither = ( 1 - ditherRate ) * dither + ditherRate;
			return dither;
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
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
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

				float2 uv_MainTex119_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g31 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g31 );
				float3 temp_output_206_0_g31 = ( (tex2DNode119_g31).rgb * (_BaseColor).rgb );
				float3 Color1128_g31 = (_Color).rgb;
				float2 uv_ColorMask86_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g31 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g31 );
				float ColorMask199_g31 = ( 1.0 - ( tex2DNode86_g31.r + tex2DNode86_g31.g + tex2DNode86_g31.b ) );
				float3 Color2121_g31 = (_Color2).rgb;
				float ColorMask296_g31 = tex2DNode86_g31.r;
				float3 Color3123_g31 = (_Color3).rgb;
				float ColorMask3102_g31 = tex2DNode86_g31.g;
				float3 Color4136_g31 = (_Color4).rgb;
				float ColorMask494_g31 = tex2DNode86_g31.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g31 = i.ase_texcoord1.xy;
				float Carvature197_g31 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g31 ).r;
				float3 lerpResult289_g31 = lerp( ( ( temp_output_206_0_g31 * Color1128_g31 * ColorMask199_g31 ) + ( Color2121_g31 * ColorMask296_g31 * temp_output_206_0_g31 ) + ( Color3123_g31 * ColorMask3102_g31 * temp_output_206_0_g31 ) + ( Color4136_g31 * ColorMask494_g31 * temp_output_206_0_g31 ) ) , temp_cast_0 , ( Carvature197_g31 * _CarvatureStrength ));
				float ExGloss255_g31 = _ExGloss;
				float3 lerpResult313_g31 = lerp( lerpResult289_g31 , ( lerpResult289_g31 * _WetAlbedoOffset ) , ExGloss255_g31);
				float3 DiffuseMix326_g31 = lerpResult313_g31;
				float3 temp_output_1438_345 = DiffuseMix326_g31;
				float2 uv_MetallicGlossMap139_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g31 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g31 );
				float lerpResult167_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask);
				float lerpResult193_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask2);
				float lerpResult181_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask3);
				float lerpResult208_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask4);
				float lerpResult281_g31 = lerp( ( ( lerpResult167_g31 * _Metallic * ColorMask199_g31 ) + ( lerpResult193_g31 * _Metallic2 * ColorMask296_g31 ) + ( lerpResult181_g31 * _Metallic3 * ColorMask3102_g31 ) ) , ( lerpResult208_g31 * _Metallic4 ) , ColorMask494_g31);
				float2 texCoord76_g31 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g31 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g31 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g31 = mul( texCoord76_g31 - float2( 0.5,0.5 ) , float2x2( cos78_g31 , -sin78_g31 , sin78_g31 , cos78_g31 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g31 = rotator78_g31;
				float Detail1148_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 ).r;
				float2 uv_DetailMask81_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g31 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g31 );
				float DetailMask183_g31 = tex2DNode81_g31.r;
				float2 texCoord7_g31 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g31 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g31 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g31 = mul( texCoord7_g31 - float2( 0.5,0.5 ) , float2x2( cos10_g31 , -sin10_g31 , sin10_g31 , cos10_g31 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g31 = rotator10_g31;
				float Detail2194_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 ).r;
				float DetailMask284_g31 = tex2DNode81_g31.g;
				float MetallicFinal328_g31 = saturate( ( ( lerpResult281_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailMetallicScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailMetallicScale2 * DetailMask284_g31 ) ) ) );
				half3 specColor1435 = (0).xxx;
				half oneMinusReflectivity1435 = 0;
				half3 diffuseAndSpecularFromMetallic1435 = DiffuseAndSpecularFromMetallic(temp_output_1438_345,MetallicFinal328_g31,specColor1435,oneMinusReflectivity1435);
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g35 = worldSpaceLightDir;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g35 = ase_worldViewDir;
				float3 normalizeResult136_g35 = ASESafeNormalize( ( lightDir14_g35 + viewDir15_g35 ) );
				float dotResult137_g35 = dot( lightDir14_g35 , normalizeResult136_g35 );
				float LdotH139_g35 = saturate( dotResult137_g35 );
				float lerpResult143_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness);
				float Glossiness1153_g31 = _Glossiness;
				float lerpResult158_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness2);
				float Glossiness2152_g31 = _Glossiness2;
				float lerpResult157_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness3);
				float Glossiness3154_g31 = _Glossiness3;
				float lerpResult187_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness4);
				float lerpResult230_g31 = lerp( ( ( lerpResult143_g31 * Glossiness1153_g31 * ColorMask199_g31 ) + ( lerpResult158_g31 * Glossiness2152_g31 * ColorMask296_g31 ) + ( lerpResult157_g31 * Glossiness3154_g31 * ColorMask3102_g31 ) ) , ( _Glossiness4 * lerpResult187_g31 ) , ColorMask494_g31);
				float lerpResult305_g31 = lerp( ( ( lerpResult230_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailGlossScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailGlossScale2 * DetailMask284_g31 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g31 ));
				float GlossinessFinal327_g31 = saturate( lerpResult305_g31 );
				float temp_output_1438_0 = GlossinessFinal327_g31;
				float smoothness169_g35 = temp_output_1438_0;
				float perceprualRoughness188_g35 = ( 1.0 - smoothness169_g35 );
				half fd90273_g35 = ( 0.5 + ( 2.0 * LdotH139_g35 * LdotH139_g35 * perceprualRoughness188_g35 ) );
				float2 uv_BumpMap180_g31 = i.ase_texcoord1.xy;
				float2 break13_g31 = Detail1UV79_g31;
				float temp_output_14_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g31 = (float2(( break13_g31.x + temp_output_14_0_g31 ) , break13_g31.y));
				float4 tex2DNode85_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 );
				float temp_output_42_0_g31 = ( DetailMask183_g31 * _DetailNormalMapScale );
				float3 appendResult56_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float2 appendResult27_g31 = (float2(break13_g31.x , ( break13_g31.y + temp_output_14_0_g31 )));
				float3 appendResult58_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float3 normalizeResult66_g31 = normalize( cross( appendResult56_g31 , appendResult58_g31 ) );
				float3 DetailNormal171_g31 = normalizeResult66_g31;
				float2 break20_g31 = Detail2UV12_g31;
				float temp_output_21_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g31 = (float2(( break20_g31.x + temp_output_21_0_g31 ) , break20_g31.y));
				float4 tex2DNode41_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 );
				float temp_output_49_0_g31 = ( DetailMask284_g31 * _DetailNormalMapScale2 );
				float3 appendResult63_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float2 appendResult31_g31 = (float2(break20_g31.x , ( break20_g31.y + temp_output_21_0_g31 )));
				float3 appendResult64_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float3 normalizeResult70_g31 = normalize( cross( appendResult63_g31 , appendResult64_g31 ) );
				float3 DetailNormal272_g31 = normalizeResult70_g31;
				float3 normalizeResult262_g31 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g31 ), _Float0 ) , DetailNormal171_g31 ) , DetailNormal272_g31 ) );
				float3 switchResult303_g31 = (((ase_vface>0)?(normalizeResult262_g31):(-normalizeResult262_g31)));
				float3 NormalMix321_g31 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g31 : normalizeResult262_g31 );
				float3 temp_output_1438_342 = NormalMix321_g31;
				float3 temp_output_30_0_g35 = temp_output_1438_342;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g35 = temp_output_30_0_g35;
				float3 worldNormal29_g35 = float3(dot(tanToWorld0,tanNormal29_g35), dot(tanToWorld1,tanNormal29_g35), dot(tanToWorld2,tanNormal29_g35));
				float3 normalizeResult25_g35 = normalize( worldNormal29_g35 );
				float3 normalDir28_g35 = normalizeResult25_g35;
				float dotResult21_g35 = dot( lightDir14_g35 , normalDir28_g35 );
				float NdotL20_g35 = saturate( dotResult21_g35 );
				half lightScatter253_g35 = ( ( ( fd90273_g35 - 1.0 ) * pow( ( 1.0 - NdotL20_g35 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g35 = dot( normalDir28_g35 , viewDir15_g35 );
				float NdotV55_g35 = saturate( dotResult56_g35 );
				half viewScatter254_g35 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g35 ) , 5.0 ) * ( fd90273_g35 - 1.0 ) ) );
				half disneydiffuse251_g35 = ( lightScatter253_g35 * viewScatter254_g35 );
				half Diffuseterm281_g35 = ( disneydiffuse251_g35 * NdotL20_g35 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g35 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g35 = temp_output_30_0_g35;
				float3 tanNormal203_g35 = normal198_g35;
				UnityGIInput data203_g35;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g35 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g35
				data203_g35.lightmapUV = i.ase_lmap;
				#endif //dylm203_g35
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g35
				data203_g35.ambient = i.ase_sh;
				#endif //fsh203_g35
				UnityGI gi203_g35 = UnityGI_Base(data203_g35, 1, float3(dot(tanToWorld0,tanNormal203_g35), dot(tanToWorld1,tanNormal203_g35), dot(tanToWorld2,tanNormal203_g35)));
				float2 uv_OcclusionMap259_g31 = i.ase_texcoord1.xy;
				float lerpResult298_g31 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g31 ).g , _OcculusionStrength);
				float smoothstepResult266_g31 = smoothstep( 0.0 , 0.8 , Detail1148_g31);
				float lerpResult297_g31 = lerp( 1.0 , smoothstepResult266_g31 , ( _DetailOcculusionScale * DetailMask183_g31 ));
				float smoothstepResult274_g31 = smoothstep( 0.0 , 0.8 , Detail2194_g31);
				float lerpResult299_g31 = lerp( 1.0 , smoothstepResult274_g31 , ( _DetailOcculusionScale2 * DetailMask284_g31 ));
				float OcclusionMix323_g31 = saturate( ( lerpResult298_g31 * lerpResult297_g31 * lerpResult299_g31 ) );
				float temp_output_1438_346 = OcclusionMix323_g31;
				float occlusion306_g35 = temp_output_1438_346;
				half Roughness64_g35 = max( ( perceprualRoughness188_g35 * perceprualRoughness188_g35 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g35 = ( 0.5 / ( ( ( ( NdotV55_g35 * ( 1.0 - Roughness64_g35 ) ) + Roughness64_g35 ) * NdotL20_g35 ) + 1E-05 + ( NdotV55_g35 * ( Roughness64_g35 + ( ( 1.0 - Roughness64_g35 ) * NdotL20_g35 ) ) ) ) );
				float a266_g35 = ( Roughness64_g35 * Roughness64_g35 );
				float3 normalizeResult87_g35 = ASESafeNormalize( ( lightDir14_g35 + viewDir15_g35 ) );
				float dotResult88_g35 = dot( normalDir28_g35 , normalizeResult87_g35 );
				float NdotH90_g35 = saturate( dotResult88_g35 );
				float d99_g35 = ( ( ( ( NdotH90_g35 * a266_g35 ) - NdotH90_g35 ) * NdotH90_g35 ) + 1.0 );
				half GGXTerm43_g35 = ( ( ( 1.0 / UNITY_PI ) * a266_g35 ) / ( ( d99_g35 * d99_g35 ) + 1E-07 ) );
				float temp_output_36_0_g35 = ( SmithJointGGXVisibilityTerm42_g35 * GGXTerm43_g35 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g35 = sqrt( max( 0.0001 , temp_output_36_0_g35 ) );
				#else
				float staticSwitch5_g35 = temp_output_36_0_g35;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g35 = 0.0;
				#else
				float staticSwitch119_g35 = max( 0.0 , ( staticSwitch5_g35 * NdotL20_g35 ) );
				#endif
				float3 SpecColor140_g35 = specColor1435;
				float SpecularTerm34_g35 = ( staticSwitch119_g35 * ( SpecColor140_g35.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g35 = ( ( pow( ( 1.0 - LdotH139_g35 ) , 5.0 ) * ( 1.0 - SpecColor140_g35 ) ) + SpecColor140_g35 );
				half metallic176_g35 = 0.0;
				half localOneMinusReflectivity176_g35 = OneMinusReflectivity( metallic176_g35 );
				half GrazingTerm163_g35 = saturate( ( smoothness169_g35 + ( 1.0 - localOneMinusReflectivity176_g35 ) ) );
				float3 temp_cast_2 = (GrazingTerm163_g35).xxx;
				float3 lerpResult159_g35 = lerp( SpecColor140_g35 , temp_cast_2 , pow( ( 1.0 - NdotV55_g35 ) , 5.0 ));
				half3 FresnelLerp165_g35 = lerpResult159_g35;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g35 = ( 1.0 - ( 0.28 * Roughness64_g35 * perceprualRoughness188_g35 ) );
				#else
				float staticSwitch183_g35 = ( 1.0 / ( ( Roughness64_g35 * Roughness64_g35 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g35 = staticSwitch183_g35;
				float3 tanNormal299_g35 = normal198_g35;
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
				Unity_GlossyEnvironmentData g299_g35 = UnityGlossyEnvironmentSetup( smoothness169_g35, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g35), dot(tanToWorld1,tanNormal299_g35), dot(tanToWorld2,tanNormal299_g35)), float3(0,0,0));
				float3 indirectSpecular299_g35 = UnityGI_IndirectSpecular( data, occlusion306_g35, float3(dot(tanToWorld0,tanNormal299_g35), dot(tanToWorld1,tanNormal299_g35), dot(tanToWorld2,tanNormal299_g35)), g299_g35 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g35 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g35 = ( FresnelLerp165_g35 * SurfaceReduction182_g35 * indirectSpecular299_g35 );
				#endif
				float3 EmissionFinal324_g31 = ( tex2DNode139_g31.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 temp_output_1438_341 = EmissionFinal324_g31;
				float3 tanNormal27_g32 = temp_output_1438_342;
				float3 worldNormal27_g32 = normalize( float3(dot(tanToWorld0,tanNormal27_g32), dot(tanToWorld1,tanNormal27_g32), dot(tanToWorld2,tanNormal27_g32)) );
				float dotResult20_g32 = dot( ase_worldViewDir , -( ( worldNormal27_g32 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float3 normal2_g33 = worldNormal27_g32;
				float3 localGI2_g33 = GI2_g33( normal2_g33 );
				float3 lerpResult39_g32 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 tanNormal14_g34 = temp_output_1438_342;
				float3 worldNormal14_g34 = normalize( float3(dot(tanToWorld0,tanNormal14_g34), dot(tanToWorld1,tanNormal14_g34), dot(tanToWorld2,tanNormal14_g34)) );
				float dotResult9_g34 = dot( worldNormal14_g34 , worldSpaceLightDir );
				float3 lerpResult21_g34 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				
				float AlphaInput137_g31 = tex2DNode119_g31.a;
				float Color1Alpha101_g31 = _Color.a;
				float Color2Alpha97_g31 = _Color2.a;
				float Color3Alpha98_g31 = _Color3.a;
				float Color4Alpha100_g31 = _Color4.a;
				float AlphaMix258_g31 = saturate( ( AlphaInput137_g31 * ( ( Color1Alpha101_g31 * ColorMask199_g31 ) + ( Color2Alpha97_g31 * ColorMask296_g31 ) + ( Color3Alpha98_g31 * ColorMask3102_g31 ) + ( Color4Alpha100_g31 * ColorMask494_g31 ) ) ) );
				float Bluenoise284_g31 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g31 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g31 = Dither8x8Bayer( fmod(clipScreen290_g31.x, 8), fmod(clipScreen290_g31.y, 8) );
				dither290_g31 = step( dither290_g31, AlphaMix258_g31 );
				float dither286_g31 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g31 = step( dither286_g31, AlphaMix258_g31 );
				float FinalAlpha325_g31 = ( _DitherSwitch == 0.0 ? AlphaMix258_g31 : ( Bluenoise284_g31 == 0.0 ? dither290_g31 : dither286_g31 ) );
				float temp_output_1438_344 = FinalAlpha325_g31;
				
				
				outColor = ( ( ( diffuseAndSpecularFromMetallic1435 * ( ( Diffuseterm281_g35 * lightAtten296_g35 ) + ( gi203_g35.indirect.diffuse * occlusion306_g35 ) ) ) + ( SpecularTerm34_g35 * lightAtten296_g35 * FresnelTerm130_g35 ) + staticSwitch305_g35 ) + temp_output_1438_341 + ( temp_output_1438_345 * ( ( ( pow( saturate( dotResult20_g32 ) , _TransScattering ) * _TransDirect ) + ( localGI2_g33 * _TransAmbient ) ) * saturate( _Translucency ) * lerpResult39_g32 ) ) + ( ( max( 0.0 , -dotResult9_g34 ) * lerpResult21_g34 * _TransmissionStrength ) * temp_output_1438_345 ) );
				outAlpha = temp_output_1438_344;
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
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
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
			
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _WetnessPower;
			uniform float4 _Color2;
			uniform float _ExGloss;
			uniform float4 _EmissionColor;
			uniform float _Roughness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float4 _Color4;
			uniform float4 _Color3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _EmissionStrength;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _Metallic2;
			uniform half _DitherSwitch;
			uniform float _Float0;
			uniform float _WetAlbedoOffset;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _Translucency;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DitherBlueNoise;
			uniform float _DetailGlossScale;
			uniform float _DetailNormalMapScale2;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _MetallicMask3;
			uniform float _MetallicMask2;
			uniform float2 _DetailUV2;
			uniform float _DetailUV2Rotator;
			uniform float _Roughness3;
			uniform float _Roughness2;
			uniform float _DetailMetallicScale2;
			uniform float _MetallicMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float _Glossiness3;
			uniform float _DetailNormalMapScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _TransmissionStrength;
			uniform float2 _DetailUV;
			uniform float _DetailUVRotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _DetailMetallicScale;
			uniform float _TransDirect;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float3 GI2_g33( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
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
			
			inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
			{
				float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
				float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
				dither = ( 1 - ditherRate ) * dither + ditherRate;
				return dither;
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
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
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

				float2 uv_MainTex119_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g31 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g31 );
				float3 temp_output_206_0_g31 = ( (tex2DNode119_g31).rgb * (_BaseColor).rgb );
				float3 Color1128_g31 = (_Color).rgb;
				float2 uv_ColorMask86_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g31 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g31 );
				float ColorMask199_g31 = ( 1.0 - ( tex2DNode86_g31.r + tex2DNode86_g31.g + tex2DNode86_g31.b ) );
				float3 Color2121_g31 = (_Color2).rgb;
				float ColorMask296_g31 = tex2DNode86_g31.r;
				float3 Color3123_g31 = (_Color3).rgb;
				float ColorMask3102_g31 = tex2DNode86_g31.g;
				float3 Color4136_g31 = (_Color4).rgb;
				float ColorMask494_g31 = tex2DNode86_g31.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g31 = i.ase_texcoord1.xy;
				float Carvature197_g31 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g31 ).r;
				float3 lerpResult289_g31 = lerp( ( ( temp_output_206_0_g31 * Color1128_g31 * ColorMask199_g31 ) + ( Color2121_g31 * ColorMask296_g31 * temp_output_206_0_g31 ) + ( Color3123_g31 * ColorMask3102_g31 * temp_output_206_0_g31 ) + ( Color4136_g31 * ColorMask494_g31 * temp_output_206_0_g31 ) ) , temp_cast_0 , ( Carvature197_g31 * _CarvatureStrength ));
				float ExGloss255_g31 = _ExGloss;
				float3 lerpResult313_g31 = lerp( lerpResult289_g31 , ( lerpResult289_g31 * _WetAlbedoOffset ) , ExGloss255_g31);
				float3 DiffuseMix326_g31 = lerpResult313_g31;
				float3 temp_output_1438_345 = DiffuseMix326_g31;
				float2 uv_MetallicGlossMap139_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g31 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g31 );
				float lerpResult167_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask);
				float lerpResult193_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask2);
				float lerpResult181_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask3);
				float lerpResult208_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask4);
				float lerpResult281_g31 = lerp( ( ( lerpResult167_g31 * _Metallic * ColorMask199_g31 ) + ( lerpResult193_g31 * _Metallic2 * ColorMask296_g31 ) + ( lerpResult181_g31 * _Metallic3 * ColorMask3102_g31 ) ) , ( lerpResult208_g31 * _Metallic4 ) , ColorMask494_g31);
				float2 texCoord76_g31 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g31 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g31 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g31 = mul( texCoord76_g31 - float2( 0.5,0.5 ) , float2x2( cos78_g31 , -sin78_g31 , sin78_g31 , cos78_g31 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g31 = rotator78_g31;
				float Detail1148_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 ).r;
				float2 uv_DetailMask81_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g31 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g31 );
				float DetailMask183_g31 = tex2DNode81_g31.r;
				float2 texCoord7_g31 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g31 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g31 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g31 = mul( texCoord7_g31 - float2( 0.5,0.5 ) , float2x2( cos10_g31 , -sin10_g31 , sin10_g31 , cos10_g31 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g31 = rotator10_g31;
				float Detail2194_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 ).r;
				float DetailMask284_g31 = tex2DNode81_g31.g;
				float MetallicFinal328_g31 = saturate( ( ( lerpResult281_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailMetallicScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailMetallicScale2 * DetailMask284_g31 ) ) ) );
				half3 specColor1435 = (0).xxx;
				half oneMinusReflectivity1435 = 0;
				half3 diffuseAndSpecularFromMetallic1435 = DiffuseAndSpecularFromMetallic(temp_output_1438_345,MetallicFinal328_g31,specColor1435,oneMinusReflectivity1435);
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g35 = worldSpaceLightDir;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g35 = ase_worldViewDir;
				float3 normalizeResult136_g35 = ASESafeNormalize( ( lightDir14_g35 + viewDir15_g35 ) );
				float dotResult137_g35 = dot( lightDir14_g35 , normalizeResult136_g35 );
				float LdotH139_g35 = saturate( dotResult137_g35 );
				float lerpResult143_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness);
				float Glossiness1153_g31 = _Glossiness;
				float lerpResult158_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness2);
				float Glossiness2152_g31 = _Glossiness2;
				float lerpResult157_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness3);
				float Glossiness3154_g31 = _Glossiness3;
				float lerpResult187_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness4);
				float lerpResult230_g31 = lerp( ( ( lerpResult143_g31 * Glossiness1153_g31 * ColorMask199_g31 ) + ( lerpResult158_g31 * Glossiness2152_g31 * ColorMask296_g31 ) + ( lerpResult157_g31 * Glossiness3154_g31 * ColorMask3102_g31 ) ) , ( _Glossiness4 * lerpResult187_g31 ) , ColorMask494_g31);
				float lerpResult305_g31 = lerp( ( ( lerpResult230_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailGlossScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailGlossScale2 * DetailMask284_g31 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g31 ));
				float GlossinessFinal327_g31 = saturate( lerpResult305_g31 );
				float temp_output_1438_0 = GlossinessFinal327_g31;
				float smoothness169_g35 = temp_output_1438_0;
				float perceprualRoughness188_g35 = ( 1.0 - smoothness169_g35 );
				half fd90273_g35 = ( 0.5 + ( 2.0 * LdotH139_g35 * LdotH139_g35 * perceprualRoughness188_g35 ) );
				float2 uv_BumpMap180_g31 = i.ase_texcoord1.xy;
				float2 break13_g31 = Detail1UV79_g31;
				float temp_output_14_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g31 = (float2(( break13_g31.x + temp_output_14_0_g31 ) , break13_g31.y));
				float4 tex2DNode85_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 );
				float temp_output_42_0_g31 = ( DetailMask183_g31 * _DetailNormalMapScale );
				float3 appendResult56_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float2 appendResult27_g31 = (float2(break13_g31.x , ( break13_g31.y + temp_output_14_0_g31 )));
				float3 appendResult58_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float3 normalizeResult66_g31 = normalize( cross( appendResult56_g31 , appendResult58_g31 ) );
				float3 DetailNormal171_g31 = normalizeResult66_g31;
				float2 break20_g31 = Detail2UV12_g31;
				float temp_output_21_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g31 = (float2(( break20_g31.x + temp_output_21_0_g31 ) , break20_g31.y));
				float4 tex2DNode41_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 );
				float temp_output_49_0_g31 = ( DetailMask284_g31 * _DetailNormalMapScale2 );
				float3 appendResult63_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float2 appendResult31_g31 = (float2(break20_g31.x , ( break20_g31.y + temp_output_21_0_g31 )));
				float3 appendResult64_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float3 normalizeResult70_g31 = normalize( cross( appendResult63_g31 , appendResult64_g31 ) );
				float3 DetailNormal272_g31 = normalizeResult70_g31;
				float3 normalizeResult262_g31 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g31 ), _Float0 ) , DetailNormal171_g31 ) , DetailNormal272_g31 ) );
				float3 switchResult303_g31 = (((ase_vface>0)?(normalizeResult262_g31):(-normalizeResult262_g31)));
				float3 NormalMix321_g31 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g31 : normalizeResult262_g31 );
				float3 temp_output_1438_342 = NormalMix321_g31;
				float3 temp_output_30_0_g35 = temp_output_1438_342;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g35 = temp_output_30_0_g35;
				float3 worldNormal29_g35 = float3(dot(tanToWorld0,tanNormal29_g35), dot(tanToWorld1,tanNormal29_g35), dot(tanToWorld2,tanNormal29_g35));
				float3 normalizeResult25_g35 = normalize( worldNormal29_g35 );
				float3 normalDir28_g35 = normalizeResult25_g35;
				float dotResult21_g35 = dot( lightDir14_g35 , normalDir28_g35 );
				float NdotL20_g35 = saturate( dotResult21_g35 );
				half lightScatter253_g35 = ( ( ( fd90273_g35 - 1.0 ) * pow( ( 1.0 - NdotL20_g35 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g35 = dot( normalDir28_g35 , viewDir15_g35 );
				float NdotV55_g35 = saturate( dotResult56_g35 );
				half viewScatter254_g35 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g35 ) , 5.0 ) * ( fd90273_g35 - 1.0 ) ) );
				half disneydiffuse251_g35 = ( lightScatter253_g35 * viewScatter254_g35 );
				half Diffuseterm281_g35 = ( disneydiffuse251_g35 * NdotL20_g35 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g35 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g35 = temp_output_30_0_g35;
				float3 tanNormal203_g35 = normal198_g35;
				UnityGIInput data203_g35;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g35 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g35
				data203_g35.lightmapUV = i.ase_lmap;
				#endif //dylm203_g35
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g35
				data203_g35.ambient = i.ase_sh;
				#endif //fsh203_g35
				UnityGI gi203_g35 = UnityGI_Base(data203_g35, 1, float3(dot(tanToWorld0,tanNormal203_g35), dot(tanToWorld1,tanNormal203_g35), dot(tanToWorld2,tanNormal203_g35)));
				float2 uv_OcclusionMap259_g31 = i.ase_texcoord1.xy;
				float lerpResult298_g31 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g31 ).g , _OcculusionStrength);
				float smoothstepResult266_g31 = smoothstep( 0.0 , 0.8 , Detail1148_g31);
				float lerpResult297_g31 = lerp( 1.0 , smoothstepResult266_g31 , ( _DetailOcculusionScale * DetailMask183_g31 ));
				float smoothstepResult274_g31 = smoothstep( 0.0 , 0.8 , Detail2194_g31);
				float lerpResult299_g31 = lerp( 1.0 , smoothstepResult274_g31 , ( _DetailOcculusionScale2 * DetailMask284_g31 ));
				float OcclusionMix323_g31 = saturate( ( lerpResult298_g31 * lerpResult297_g31 * lerpResult299_g31 ) );
				float temp_output_1438_346 = OcclusionMix323_g31;
				float occlusion306_g35 = temp_output_1438_346;
				half Roughness64_g35 = max( ( perceprualRoughness188_g35 * perceprualRoughness188_g35 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g35 = ( 0.5 / ( ( ( ( NdotV55_g35 * ( 1.0 - Roughness64_g35 ) ) + Roughness64_g35 ) * NdotL20_g35 ) + 1E-05 + ( NdotV55_g35 * ( Roughness64_g35 + ( ( 1.0 - Roughness64_g35 ) * NdotL20_g35 ) ) ) ) );
				float a266_g35 = ( Roughness64_g35 * Roughness64_g35 );
				float3 normalizeResult87_g35 = ASESafeNormalize( ( lightDir14_g35 + viewDir15_g35 ) );
				float dotResult88_g35 = dot( normalDir28_g35 , normalizeResult87_g35 );
				float NdotH90_g35 = saturate( dotResult88_g35 );
				float d99_g35 = ( ( ( ( NdotH90_g35 * a266_g35 ) - NdotH90_g35 ) * NdotH90_g35 ) + 1.0 );
				half GGXTerm43_g35 = ( ( ( 1.0 / UNITY_PI ) * a266_g35 ) / ( ( d99_g35 * d99_g35 ) + 1E-07 ) );
				float temp_output_36_0_g35 = ( SmithJointGGXVisibilityTerm42_g35 * GGXTerm43_g35 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g35 = sqrt( max( 0.0001 , temp_output_36_0_g35 ) );
				#else
				float staticSwitch5_g35 = temp_output_36_0_g35;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g35 = 0.0;
				#else
				float staticSwitch119_g35 = max( 0.0 , ( staticSwitch5_g35 * NdotL20_g35 ) );
				#endif
				float3 SpecColor140_g35 = specColor1435;
				float SpecularTerm34_g35 = ( staticSwitch119_g35 * ( SpecColor140_g35.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g35 = ( ( pow( ( 1.0 - LdotH139_g35 ) , 5.0 ) * ( 1.0 - SpecColor140_g35 ) ) + SpecColor140_g35 );
				half metallic176_g35 = 0.0;
				half localOneMinusReflectivity176_g35 = OneMinusReflectivity( metallic176_g35 );
				half GrazingTerm163_g35 = saturate( ( smoothness169_g35 + ( 1.0 - localOneMinusReflectivity176_g35 ) ) );
				float3 temp_cast_2 = (GrazingTerm163_g35).xxx;
				float3 lerpResult159_g35 = lerp( SpecColor140_g35 , temp_cast_2 , pow( ( 1.0 - NdotV55_g35 ) , 5.0 ));
				half3 FresnelLerp165_g35 = lerpResult159_g35;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g35 = ( 1.0 - ( 0.28 * Roughness64_g35 * perceprualRoughness188_g35 ) );
				#else
				float staticSwitch183_g35 = ( 1.0 / ( ( Roughness64_g35 * Roughness64_g35 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g35 = staticSwitch183_g35;
				float3 tanNormal299_g35 = normal198_g35;
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
				Unity_GlossyEnvironmentData g299_g35 = UnityGlossyEnvironmentSetup( smoothness169_g35, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g35), dot(tanToWorld1,tanNormal299_g35), dot(tanToWorld2,tanNormal299_g35)), float3(0,0,0));
				float3 indirectSpecular299_g35 = UnityGI_IndirectSpecular( data, occlusion306_g35, float3(dot(tanToWorld0,tanNormal299_g35), dot(tanToWorld1,tanNormal299_g35), dot(tanToWorld2,tanNormal299_g35)), g299_g35 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g35 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g35 = ( FresnelLerp165_g35 * SurfaceReduction182_g35 * indirectSpecular299_g35 );
				#endif
				float3 EmissionFinal324_g31 = ( tex2DNode139_g31.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 temp_output_1438_341 = EmissionFinal324_g31;
				float3 tanNormal27_g32 = temp_output_1438_342;
				float3 worldNormal27_g32 = normalize( float3(dot(tanToWorld0,tanNormal27_g32), dot(tanToWorld1,tanNormal27_g32), dot(tanToWorld2,tanNormal27_g32)) );
				float dotResult20_g32 = dot( ase_worldViewDir , -( ( worldNormal27_g32 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float3 normal2_g33 = worldNormal27_g32;
				float3 localGI2_g33 = GI2_g33( normal2_g33 );
				float3 lerpResult39_g32 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 tanNormal14_g34 = temp_output_1438_342;
				float3 worldNormal14_g34 = normalize( float3(dot(tanToWorld0,tanNormal14_g34), dot(tanToWorld1,tanNormal14_g34), dot(tanToWorld2,tanNormal14_g34)) );
				float dotResult9_g34 = dot( worldNormal14_g34 , worldSpaceLightDir );
				float3 lerpResult21_g34 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				
				float AlphaInput137_g31 = tex2DNode119_g31.a;
				float Color1Alpha101_g31 = _Color.a;
				float Color2Alpha97_g31 = _Color2.a;
				float Color3Alpha98_g31 = _Color3.a;
				float Color4Alpha100_g31 = _Color4.a;
				float AlphaMix258_g31 = saturate( ( AlphaInput137_g31 * ( ( Color1Alpha101_g31 * ColorMask199_g31 ) + ( Color2Alpha97_g31 * ColorMask296_g31 ) + ( Color3Alpha98_g31 * ColorMask3102_g31 ) + ( Color4Alpha100_g31 * ColorMask494_g31 ) ) ) );
				float Bluenoise284_g31 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g31 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g31 = Dither8x8Bayer( fmod(clipScreen290_g31.x, 8), fmod(clipScreen290_g31.y, 8) );
				dither290_g31 = step( dither290_g31, AlphaMix258_g31 );
				float dither286_g31 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g31 = step( dither286_g31, AlphaMix258_g31 );
				float FinalAlpha325_g31 = ( _DitherSwitch == 0.0 ? AlphaMix258_g31 : ( Bluenoise284_g31 == 0.0 ? dither290_g31 : dither286_g31 ) );
				float temp_output_1438_344 = FinalAlpha325_g31;
				
				
				outColor = ( ( ( diffuseAndSpecularFromMetallic1435 * ( ( Diffuseterm281_g35 * lightAtten296_g35 ) + ( gi203_g35.indirect.diffuse * occlusion306_g35 ) ) ) + ( SpecularTerm34_g35 * lightAtten296_g35 * FresnelTerm130_g35 ) + staticSwitch305_g35 ) + temp_output_1438_341 + ( temp_output_1438_345 * ( ( ( pow( saturate( dotResult20_g32 ) , _TransScattering ) * _TransDirect ) + ( localGI2_g33 * _TransAmbient ) ) * saturate( _Translucency ) * lerpResult39_g32 ) ) + ( ( max( 0.0 , -dotResult9_g34 ) * lerpResult21_g34 * _TransmissionStrength ) * temp_output_1438_345 ) );
				outAlpha = temp_output_1438_344;
				clip(outAlpha - _Cutoff);
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
			Cull [_CullMode]
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
			#include "UnityStandardUtils.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
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
			

			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _WetnessPower;
			uniform float4 _Color2;
			uniform float _ExGloss;
			uniform float4 _EmissionColor;
			uniform float _Roughness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float4 _Color4;
			uniform float4 _Color3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _EmissionStrength;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _Metallic2;
			uniform half _DitherSwitch;
			uniform float _Float0;
			uniform float _WetAlbedoOffset;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _Translucency;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DitherBlueNoise;
			uniform float _DetailGlossScale;
			uniform float _DetailNormalMapScale2;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _MetallicMask3;
			uniform float _MetallicMask2;
			uniform float2 _DetailUV2;
			uniform float _DetailUV2Rotator;
			uniform float _Roughness3;
			uniform float _Roughness2;
			uniform float _DetailMetallicScale2;
			uniform float _MetallicMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float _Glossiness3;
			uniform float _DetailNormalMapScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _TransmissionStrength;
			uniform float2 _DetailUV;
			uniform float _DetailUVRotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _DetailMetallicScale;
			uniform float _TransDirect;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
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
			
			inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
			{
				float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
				float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
				dither = ( 1 - ditherRate ) * dither + ditherRate;
				return dither;
			}
			
			float3 GI2_g37( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
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
				
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord2 = screenPos;
				
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
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
				float2 uv_MainTex119_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g31 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g31 );
				float3 temp_output_206_0_g31 = ( (tex2DNode119_g31).rgb * (_BaseColor).rgb );
				float3 Color1128_g31 = (_Color).rgb;
				float2 uv_ColorMask86_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g31 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g31 );
				float ColorMask199_g31 = ( 1.0 - ( tex2DNode86_g31.r + tex2DNode86_g31.g + tex2DNode86_g31.b ) );
				float3 Color2121_g31 = (_Color2).rgb;
				float ColorMask296_g31 = tex2DNode86_g31.r;
				float3 Color3123_g31 = (_Color3).rgb;
				float ColorMask3102_g31 = tex2DNode86_g31.g;
				float3 Color4136_g31 = (_Color4).rgb;
				float ColorMask494_g31 = tex2DNode86_g31.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g31 = i.ase_texcoord1.xy;
				float Carvature197_g31 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g31 ).r;
				float3 lerpResult289_g31 = lerp( ( ( temp_output_206_0_g31 * Color1128_g31 * ColorMask199_g31 ) + ( Color2121_g31 * ColorMask296_g31 * temp_output_206_0_g31 ) + ( Color3123_g31 * ColorMask3102_g31 * temp_output_206_0_g31 ) + ( Color4136_g31 * ColorMask494_g31 * temp_output_206_0_g31 ) ) , temp_cast_0 , ( Carvature197_g31 * _CarvatureStrength ));
				float ExGloss255_g31 = _ExGloss;
				float3 lerpResult313_g31 = lerp( lerpResult289_g31 , ( lerpResult289_g31 * _WetAlbedoOffset ) , ExGloss255_g31);
				float3 DiffuseMix326_g31 = lerpResult313_g31;
				float3 temp_output_1438_345 = DiffuseMix326_g31;
				float2 uv_MetallicGlossMap139_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g31 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g31 );
				float lerpResult167_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask);
				float lerpResult193_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask2);
				float lerpResult181_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask3);
				float lerpResult208_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask4);
				float lerpResult281_g31 = lerp( ( ( lerpResult167_g31 * _Metallic * ColorMask199_g31 ) + ( lerpResult193_g31 * _Metallic2 * ColorMask296_g31 ) + ( lerpResult181_g31 * _Metallic3 * ColorMask3102_g31 ) ) , ( lerpResult208_g31 * _Metallic4 ) , ColorMask494_g31);
				float2 texCoord76_g31 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g31 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g31 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g31 = mul( texCoord76_g31 - float2( 0.5,0.5 ) , float2x2( cos78_g31 , -sin78_g31 , sin78_g31 , cos78_g31 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g31 = rotator78_g31;
				float Detail1148_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 ).r;
				float2 uv_DetailMask81_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g31 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g31 );
				float DetailMask183_g31 = tex2DNode81_g31.r;
				float2 texCoord7_g31 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g31 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g31 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g31 = mul( texCoord7_g31 - float2( 0.5,0.5 ) , float2x2( cos10_g31 , -sin10_g31 , sin10_g31 , cos10_g31 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g31 = rotator10_g31;
				float Detail2194_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 ).r;
				float DetailMask284_g31 = tex2DNode81_g31.g;
				float MetallicFinal328_g31 = saturate( ( ( lerpResult281_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailMetallicScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailMetallicScale2 * DetailMask284_g31 ) ) ) );
				half3 specColor1435 = (0).xxx;
				half oneMinusReflectivity1435 = 0;
				half3 diffuseAndSpecularFromMetallic1435 = DiffuseAndSpecularFromMetallic(temp_output_1438_345,MetallicFinal328_g31,specColor1435,oneMinusReflectivity1435);
				float AlphaInput137_g31 = tex2DNode119_g31.a;
				float Color1Alpha101_g31 = _Color.a;
				float Color2Alpha97_g31 = _Color2.a;
				float Color3Alpha98_g31 = _Color3.a;
				float Color4Alpha100_g31 = _Color4.a;
				float AlphaMix258_g31 = saturate( ( AlphaInput137_g31 * ( ( Color1Alpha101_g31 * ColorMask199_g31 ) + ( Color2Alpha97_g31 * ColorMask296_g31 ) + ( Color3Alpha98_g31 * ColorMask3102_g31 ) + ( Color4Alpha100_g31 * ColorMask494_g31 ) ) ) );
				float Bluenoise284_g31 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord2;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g31 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g31 = Dither8x8Bayer( fmod(clipScreen290_g31.x, 8), fmod(clipScreen290_g31.y, 8) );
				dither290_g31 = step( dither290_g31, AlphaMix258_g31 );
				float dither286_g31 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g31 = step( dither286_g31, AlphaMix258_g31 );
				float FinalAlpha325_g31 = ( _DitherSwitch == 0.0 ? AlphaMix258_g31 : ( Bluenoise284_g31 == 0.0 ? dither290_g31 : dither286_g31 ) );
				float temp_output_1438_344 = FinalAlpha325_g31;
				clip( temp_output_1438_344 - _Cutoff);
				float2 uv_OcclusionMap259_g31 = i.ase_texcoord1.xy;
				float lerpResult298_g31 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g31 ).g , _OcculusionStrength);
				float smoothstepResult266_g31 = smoothstep( 0.0 , 0.8 , Detail1148_g31);
				float lerpResult297_g31 = lerp( 1.0 , smoothstepResult266_g31 , ( _DetailOcculusionScale * DetailMask183_g31 ));
				float smoothstepResult274_g31 = smoothstep( 0.0 , 0.8 , Detail2194_g31);
				float lerpResult299_g31 = lerp( 1.0 , smoothstepResult274_g31 , ( _DetailOcculusionScale2 * DetailMask284_g31 ));
				float OcclusionMix323_g31 = saturate( ( lerpResult298_g31 * lerpResult297_g31 * lerpResult299_g31 ) );
				float temp_output_1438_346 = OcclusionMix323_g31;
				float4 appendResult2_g36 = (float4(diffuseAndSpecularFromMetallic1435 , temp_output_1438_346));
				
				float lerpResult143_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness);
				float Glossiness1153_g31 = _Glossiness;
				float lerpResult158_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness2);
				float Glossiness2152_g31 = _Glossiness2;
				float lerpResult157_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness3);
				float Glossiness3154_g31 = _Glossiness3;
				float lerpResult187_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness4);
				float lerpResult230_g31 = lerp( ( ( lerpResult143_g31 * Glossiness1153_g31 * ColorMask199_g31 ) + ( lerpResult158_g31 * Glossiness2152_g31 * ColorMask296_g31 ) + ( lerpResult157_g31 * Glossiness3154_g31 * ColorMask3102_g31 ) ) , ( _Glossiness4 * lerpResult187_g31 ) , ColorMask494_g31);
				float lerpResult305_g31 = lerp( ( ( lerpResult230_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailGlossScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailGlossScale2 * DetailMask284_g31 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g31 ));
				float GlossinessFinal327_g31 = saturate( lerpResult305_g31 );
				float temp_output_1438_0 = GlossinessFinal327_g31;
				float4 appendResult5_g36 = (float4(specColor1435 , temp_output_1438_0));
				
				float2 uv_BumpMap180_g31 = i.ase_texcoord1.xy;
				float2 break13_g31 = Detail1UV79_g31;
				float temp_output_14_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g31 = (float2(( break13_g31.x + temp_output_14_0_g31 ) , break13_g31.y));
				float4 tex2DNode85_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 );
				float temp_output_42_0_g31 = ( DetailMask183_g31 * _DetailNormalMapScale );
				float3 appendResult56_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float2 appendResult27_g31 = (float2(break13_g31.x , ( break13_g31.y + temp_output_14_0_g31 )));
				float3 appendResult58_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float3 normalizeResult66_g31 = normalize( cross( appendResult56_g31 , appendResult58_g31 ) );
				float3 DetailNormal171_g31 = normalizeResult66_g31;
				float2 break20_g31 = Detail2UV12_g31;
				float temp_output_21_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g31 = (float2(( break20_g31.x + temp_output_21_0_g31 ) , break20_g31.y));
				float4 tex2DNode41_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 );
				float temp_output_49_0_g31 = ( DetailMask284_g31 * _DetailNormalMapScale2 );
				float3 appendResult63_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float2 appendResult31_g31 = (float2(break20_g31.x , ( break20_g31.y + temp_output_21_0_g31 )));
				float3 appendResult64_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float3 normalizeResult70_g31 = normalize( cross( appendResult63_g31 , appendResult64_g31 ) );
				float3 DetailNormal272_g31 = normalizeResult70_g31;
				float3 normalizeResult262_g31 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g31 ), _Float0 ) , DetailNormal171_g31 ) , DetailNormal272_g31 ) );
				float3 switchResult303_g31 = (((ase_vface>0)?(normalizeResult262_g31):(-normalizeResult262_g31)));
				float3 NormalMix321_g31 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g31 : normalizeResult262_g31 );
				float3 temp_output_1438_342 = NormalMix321_g31;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal11_g36 = temp_output_1438_342;
				float3 worldNormal11_g36 = float3(dot(tanToWorld0,tanNormal11_g36), dot(tanToWorld1,tanNormal11_g36), dot(tanToWorld2,tanNormal11_g36));
				float4 appendResult13_g36 = (float4(( ( worldNormal11_g36 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 EmissionFinal324_g31 = ( tex2DNode139_g31.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 temp_output_1438_341 = EmissionFinal324_g31;
				float3 tanNormal1429 = temp_output_1438_342;
				float3 worldNormal1429 = float3(dot(tanToWorld0,tanNormal1429), dot(tanToWorld1,tanNormal1429), dot(tanToWorld2,tanNormal1429));
				float3 normal2_g37 = worldNormal1429;
				float3 localGI2_g37 = GI2_g37( normal2_g37 );
				float3 temp_output_20_0_g36 = ( temp_output_1438_341 + ( diffuseAndSpecularFromMetallic1435 * localGI2_g37 ) );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g36 = temp_output_20_0_g36;
				#else
				float3 staticSwitch16_g36 = exp2( -temp_output_20_0_g36 );
				#endif
				float4 appendResult19_g36 = (float4(staticSwitch16_g36 , 1.0));
				
				
				outGBuffer0 = appendResult2_g36;
				outGBuffer1 = appendResult5_g36;
				outGBuffer2 = appendResult13_g36;
				outGBuffer3 = appendResult19_g36;
			}
			ENDCG
		}
		
		
		Pass
		{

			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			Cull [_CullMode]
			ZWrite On
			ZTest LEqual
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
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
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
			
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _WetnessPower;
			uniform float4 _Color2;
			uniform float _ExGloss;
			uniform float4 _EmissionColor;
			uniform float _Roughness;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float4 _Color4;
			uniform float4 _Color3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _EmissionStrength;
			uniform float4 _Color;
			uniform float _Metallic;
			uniform float _Metallic3;
			uniform float _Metallic2;
			uniform half _DitherSwitch;
			uniform float _Float0;
			uniform float _WetAlbedoOffset;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _Translucency;
			uniform float _DetailGlossScale2;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _DitherBlueNoise;
			uniform float _DetailGlossScale;
			uniform float _DetailNormalMapScale2;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _MetallicMask3;
			uniform float _MetallicMask2;
			uniform float2 _DetailUV2;
			uniform float _DetailUV2Rotator;
			uniform float _Roughness3;
			uniform float _Roughness2;
			uniform float _DetailMetallicScale2;
			uniform float _MetallicMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			SamplerState sampler_MetallicGlossMap;
			uniform float _Glossiness3;
			uniform float _DetailNormalMapScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _TransmissionStrength;
			uniform float2 _DetailUV;
			uniform float _DetailUVRotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _DetailMetallicScale;
			uniform float _TransDirect;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float3 GI2_g33( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
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
			
			inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
			{
				float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
				float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
				dither = ( 1 - ditherRate ) * dither + ditherRate;
				return dither;
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
				V2F_SHADOW_CASTER;
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
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
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
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 uv_MainTex119_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g31 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g31 );
				float3 temp_output_206_0_g31 = ( (tex2DNode119_g31).rgb * (_BaseColor).rgb );
				float3 Color1128_g31 = (_Color).rgb;
				float2 uv_ColorMask86_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g31 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g31 );
				float ColorMask199_g31 = ( 1.0 - ( tex2DNode86_g31.r + tex2DNode86_g31.g + tex2DNode86_g31.b ) );
				float3 Color2121_g31 = (_Color2).rgb;
				float ColorMask296_g31 = tex2DNode86_g31.r;
				float3 Color3123_g31 = (_Color3).rgb;
				float ColorMask3102_g31 = tex2DNode86_g31.g;
				float3 Color4136_g31 = (_Color4).rgb;
				float ColorMask494_g31 = tex2DNode86_g31.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g31 = i.ase_texcoord1.xy;
				float Carvature197_g31 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g31 ).r;
				float3 lerpResult289_g31 = lerp( ( ( temp_output_206_0_g31 * Color1128_g31 * ColorMask199_g31 ) + ( Color2121_g31 * ColorMask296_g31 * temp_output_206_0_g31 ) + ( Color3123_g31 * ColorMask3102_g31 * temp_output_206_0_g31 ) + ( Color4136_g31 * ColorMask494_g31 * temp_output_206_0_g31 ) ) , temp_cast_0 , ( Carvature197_g31 * _CarvatureStrength ));
				float ExGloss255_g31 = _ExGloss;
				float3 lerpResult313_g31 = lerp( lerpResult289_g31 , ( lerpResult289_g31 * _WetAlbedoOffset ) , ExGloss255_g31);
				float3 DiffuseMix326_g31 = lerpResult313_g31;
				float3 temp_output_1438_345 = DiffuseMix326_g31;
				float2 uv_MetallicGlossMap139_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g31 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g31 );
				float lerpResult167_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask);
				float lerpResult193_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask2);
				float lerpResult181_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask3);
				float lerpResult208_g31 = lerp( 1.0 , tex2DNode139_g31.r , _MetallicMask4);
				float lerpResult281_g31 = lerp( ( ( lerpResult167_g31 * _Metallic * ColorMask199_g31 ) + ( lerpResult193_g31 * _Metallic2 * ColorMask296_g31 ) + ( lerpResult181_g31 * _Metallic3 * ColorMask3102_g31 ) ) , ( lerpResult208_g31 * _Metallic4 ) , ColorMask494_g31);
				float2 texCoord76_g31 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g31 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g31 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g31 = mul( texCoord76_g31 - float2( 0.5,0.5 ) , float2x2( cos78_g31 , -sin78_g31 , sin78_g31 , cos78_g31 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g31 = rotator78_g31;
				float Detail1148_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 ).r;
				float2 uv_DetailMask81_g31 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g31 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g31 );
				float DetailMask183_g31 = tex2DNode81_g31.r;
				float2 texCoord7_g31 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g31 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g31 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g31 = mul( texCoord7_g31 - float2( 0.5,0.5 ) , float2x2( cos10_g31 , -sin10_g31 , sin10_g31 , cos10_g31 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g31 = rotator10_g31;
				float Detail2194_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 ).r;
				float DetailMask284_g31 = tex2DNode81_g31.g;
				float MetallicFinal328_g31 = saturate( ( ( lerpResult281_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailMetallicScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailMetallicScale2 * DetailMask284_g31 ) ) ) );
				half3 specColor1435 = (0).xxx;
				half oneMinusReflectivity1435 = 0;
				half3 diffuseAndSpecularFromMetallic1435 = DiffuseAndSpecularFromMetallic(temp_output_1438_345,MetallicFinal328_g31,specColor1435,oneMinusReflectivity1435);
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g35 = worldSpaceLightDir;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g35 = ase_worldViewDir;
				float3 normalizeResult136_g35 = ASESafeNormalize( ( lightDir14_g35 + viewDir15_g35 ) );
				float dotResult137_g35 = dot( lightDir14_g35 , normalizeResult136_g35 );
				float LdotH139_g35 = saturate( dotResult137_g35 );
				float lerpResult143_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness);
				float Glossiness1153_g31 = _Glossiness;
				float lerpResult158_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness2);
				float Glossiness2152_g31 = _Glossiness2;
				float lerpResult157_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness3);
				float Glossiness3154_g31 = _Glossiness3;
				float lerpResult187_g31 = lerp( 1.0 , tex2DNode139_g31.r , _Roughness4);
				float lerpResult230_g31 = lerp( ( ( lerpResult143_g31 * Glossiness1153_g31 * ColorMask199_g31 ) + ( lerpResult158_g31 * Glossiness2152_g31 * ColorMask296_g31 ) + ( lerpResult157_g31 * Glossiness3154_g31 * ColorMask3102_g31 ) ) , ( _Glossiness4 * lerpResult187_g31 ) , ColorMask494_g31);
				float lerpResult305_g31 = lerp( ( ( lerpResult230_g31 - ( ( 1.0 - Detail1148_g31 ) * ( _DetailGlossScale * DetailMask183_g31 ) ) ) - ( ( 1.0 - Detail2194_g31 ) * ( _DetailGlossScale2 * DetailMask284_g31 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g31 ));
				float GlossinessFinal327_g31 = saturate( lerpResult305_g31 );
				float temp_output_1438_0 = GlossinessFinal327_g31;
				float smoothness169_g35 = temp_output_1438_0;
				float perceprualRoughness188_g35 = ( 1.0 - smoothness169_g35 );
				half fd90273_g35 = ( 0.5 + ( 2.0 * LdotH139_g35 * LdotH139_g35 * perceprualRoughness188_g35 ) );
				float2 uv_BumpMap180_g31 = i.ase_texcoord1.xy;
				float2 break13_g31 = Detail1UV79_g31;
				float temp_output_14_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g31 = (float2(( break13_g31.x + temp_output_14_0_g31 ) , break13_g31.y));
				float4 tex2DNode85_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g31 );
				float temp_output_42_0_g31 = ( DetailMask183_g31 * _DetailNormalMapScale );
				float3 appendResult56_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float2 appendResult27_g31 = (float2(break13_g31.x , ( break13_g31.y + temp_output_14_0_g31 )));
				float3 appendResult58_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g31 ).g - tex2DNode85_g31.g ) * temp_output_42_0_g31 )));
				float3 normalizeResult66_g31 = normalize( cross( appendResult56_g31 , appendResult58_g31 ) );
				float3 DetailNormal171_g31 = normalizeResult66_g31;
				float2 break20_g31 = Detail2UV12_g31;
				float temp_output_21_0_g31 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g31 = (float2(( break20_g31.x + temp_output_21_0_g31 ) , break20_g31.y));
				float4 tex2DNode41_g31 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g31 );
				float temp_output_49_0_g31 = ( DetailMask284_g31 * _DetailNormalMapScale2 );
				float3 appendResult63_g31 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float2 appendResult31_g31 = (float2(break20_g31.x , ( break20_g31.y + temp_output_21_0_g31 )));
				float3 appendResult64_g31 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g31 ).g - tex2DNode41_g31.g ) * temp_output_49_0_g31 )));
				float3 normalizeResult70_g31 = normalize( cross( appendResult63_g31 , appendResult64_g31 ) );
				float3 DetailNormal272_g31 = normalizeResult70_g31;
				float3 normalizeResult262_g31 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g31 ), _Float0 ) , DetailNormal171_g31 ) , DetailNormal272_g31 ) );
				float3 switchResult303_g31 = (((ase_vface>0)?(normalizeResult262_g31):(-normalizeResult262_g31)));
				float3 NormalMix321_g31 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g31 : normalizeResult262_g31 );
				float3 temp_output_1438_342 = NormalMix321_g31;
				float3 temp_output_30_0_g35 = temp_output_1438_342;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g35 = temp_output_30_0_g35;
				float3 worldNormal29_g35 = float3(dot(tanToWorld0,tanNormal29_g35), dot(tanToWorld1,tanNormal29_g35), dot(tanToWorld2,tanNormal29_g35));
				float3 normalizeResult25_g35 = normalize( worldNormal29_g35 );
				float3 normalDir28_g35 = normalizeResult25_g35;
				float dotResult21_g35 = dot( lightDir14_g35 , normalDir28_g35 );
				float NdotL20_g35 = saturate( dotResult21_g35 );
				half lightScatter253_g35 = ( ( ( fd90273_g35 - 1.0 ) * pow( ( 1.0 - NdotL20_g35 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g35 = dot( normalDir28_g35 , viewDir15_g35 );
				float NdotV55_g35 = saturate( dotResult56_g35 );
				half viewScatter254_g35 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g35 ) , 5.0 ) * ( fd90273_g35 - 1.0 ) ) );
				half disneydiffuse251_g35 = ( lightScatter253_g35 * viewScatter254_g35 );
				half Diffuseterm281_g35 = ( disneydiffuse251_g35 * NdotL20_g35 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g35 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g35 = temp_output_30_0_g35;
				float3 tanNormal203_g35 = normal198_g35;
				UnityGIInput data203_g35;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g35 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g35
				data203_g35.lightmapUV = i.ase_lmap;
				#endif //dylm203_g35
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g35
				data203_g35.ambient = i.ase_sh;
				#endif //fsh203_g35
				UnityGI gi203_g35 = UnityGI_Base(data203_g35, 1, float3(dot(tanToWorld0,tanNormal203_g35), dot(tanToWorld1,tanNormal203_g35), dot(tanToWorld2,tanNormal203_g35)));
				float2 uv_OcclusionMap259_g31 = i.ase_texcoord1.xy;
				float lerpResult298_g31 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g31 ).g , _OcculusionStrength);
				float smoothstepResult266_g31 = smoothstep( 0.0 , 0.8 , Detail1148_g31);
				float lerpResult297_g31 = lerp( 1.0 , smoothstepResult266_g31 , ( _DetailOcculusionScale * DetailMask183_g31 ));
				float smoothstepResult274_g31 = smoothstep( 0.0 , 0.8 , Detail2194_g31);
				float lerpResult299_g31 = lerp( 1.0 , smoothstepResult274_g31 , ( _DetailOcculusionScale2 * DetailMask284_g31 ));
				float OcclusionMix323_g31 = saturate( ( lerpResult298_g31 * lerpResult297_g31 * lerpResult299_g31 ) );
				float temp_output_1438_346 = OcclusionMix323_g31;
				float occlusion306_g35 = temp_output_1438_346;
				half Roughness64_g35 = max( ( perceprualRoughness188_g35 * perceprualRoughness188_g35 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g35 = ( 0.5 / ( ( ( ( NdotV55_g35 * ( 1.0 - Roughness64_g35 ) ) + Roughness64_g35 ) * NdotL20_g35 ) + 1E-05 + ( NdotV55_g35 * ( Roughness64_g35 + ( ( 1.0 - Roughness64_g35 ) * NdotL20_g35 ) ) ) ) );
				float a266_g35 = ( Roughness64_g35 * Roughness64_g35 );
				float3 normalizeResult87_g35 = ASESafeNormalize( ( lightDir14_g35 + viewDir15_g35 ) );
				float dotResult88_g35 = dot( normalDir28_g35 , normalizeResult87_g35 );
				float NdotH90_g35 = saturate( dotResult88_g35 );
				float d99_g35 = ( ( ( ( NdotH90_g35 * a266_g35 ) - NdotH90_g35 ) * NdotH90_g35 ) + 1.0 );
				half GGXTerm43_g35 = ( ( ( 1.0 / UNITY_PI ) * a266_g35 ) / ( ( d99_g35 * d99_g35 ) + 1E-07 ) );
				float temp_output_36_0_g35 = ( SmithJointGGXVisibilityTerm42_g35 * GGXTerm43_g35 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g35 = sqrt( max( 0.0001 , temp_output_36_0_g35 ) );
				#else
				float staticSwitch5_g35 = temp_output_36_0_g35;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g35 = 0.0;
				#else
				float staticSwitch119_g35 = max( 0.0 , ( staticSwitch5_g35 * NdotL20_g35 ) );
				#endif
				float3 SpecColor140_g35 = specColor1435;
				float SpecularTerm34_g35 = ( staticSwitch119_g35 * ( SpecColor140_g35.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g35 = ( ( pow( ( 1.0 - LdotH139_g35 ) , 5.0 ) * ( 1.0 - SpecColor140_g35 ) ) + SpecColor140_g35 );
				half metallic176_g35 = 0.0;
				half localOneMinusReflectivity176_g35 = OneMinusReflectivity( metallic176_g35 );
				half GrazingTerm163_g35 = saturate( ( smoothness169_g35 + ( 1.0 - localOneMinusReflectivity176_g35 ) ) );
				float3 temp_cast_2 = (GrazingTerm163_g35).xxx;
				float3 lerpResult159_g35 = lerp( SpecColor140_g35 , temp_cast_2 , pow( ( 1.0 - NdotV55_g35 ) , 5.0 ));
				half3 FresnelLerp165_g35 = lerpResult159_g35;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g35 = ( 1.0 - ( 0.28 * Roughness64_g35 * perceprualRoughness188_g35 ) );
				#else
				float staticSwitch183_g35 = ( 1.0 / ( ( Roughness64_g35 * Roughness64_g35 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g35 = staticSwitch183_g35;
				float3 tanNormal299_g35 = normal198_g35;
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
				Unity_GlossyEnvironmentData g299_g35 = UnityGlossyEnvironmentSetup( smoothness169_g35, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g35), dot(tanToWorld1,tanNormal299_g35), dot(tanToWorld2,tanNormal299_g35)), float3(0,0,0));
				float3 indirectSpecular299_g35 = UnityGI_IndirectSpecular( data, occlusion306_g35, float3(dot(tanToWorld0,tanNormal299_g35), dot(tanToWorld1,tanNormal299_g35), dot(tanToWorld2,tanNormal299_g35)), g299_g35 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g35 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g35 = ( FresnelLerp165_g35 * SurfaceReduction182_g35 * indirectSpecular299_g35 );
				#endif
				float3 EmissionFinal324_g31 = ( tex2DNode139_g31.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 temp_output_1438_341 = EmissionFinal324_g31;
				float3 tanNormal27_g32 = temp_output_1438_342;
				float3 worldNormal27_g32 = normalize( float3(dot(tanToWorld0,tanNormal27_g32), dot(tanToWorld1,tanNormal27_g32), dot(tanToWorld2,tanNormal27_g32)) );
				float dotResult20_g32 = dot( ase_worldViewDir , -( ( worldNormal27_g32 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float3 normal2_g33 = worldNormal27_g32;
				float3 localGI2_g33 = GI2_g33( normal2_g33 );
				float3 lerpResult39_g32 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 tanNormal14_g34 = temp_output_1438_342;
				float3 worldNormal14_g34 = normalize( float3(dot(tanToWorld0,tanNormal14_g34), dot(tanToWorld1,tanNormal14_g34), dot(tanToWorld2,tanNormal14_g34)) );
				float dotResult9_g34 = dot( worldNormal14_g34 , worldSpaceLightDir );
				float3 lerpResult21_g34 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				
				float AlphaInput137_g31 = tex2DNode119_g31.a;
				float Color1Alpha101_g31 = _Color.a;
				float Color2Alpha97_g31 = _Color2.a;
				float Color3Alpha98_g31 = _Color3.a;
				float Color4Alpha100_g31 = _Color4.a;
				float AlphaMix258_g31 = saturate( ( AlphaInput137_g31 * ( ( Color1Alpha101_g31 * ColorMask199_g31 ) + ( Color2Alpha97_g31 * ColorMask296_g31 ) + ( Color3Alpha98_g31 * ColorMask3102_g31 ) + ( Color4Alpha100_g31 * ColorMask494_g31 ) ) ) );
				float Bluenoise284_g31 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g31 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g31 = Dither8x8Bayer( fmod(clipScreen290_g31.x, 8), fmod(clipScreen290_g31.y, 8) );
				dither290_g31 = step( dither290_g31, AlphaMix258_g31 );
				float dither286_g31 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g31 = step( dither286_g31, AlphaMix258_g31 );
				float FinalAlpha325_g31 = ( _DitherSwitch == 0.0 ? AlphaMix258_g31 : ( Bluenoise284_g31 == 0.0 ? dither290_g31 : dither286_g31 ) );
				float temp_output_1438_344 = FinalAlpha325_g31;
				
				
				outColor = ( ( ( diffuseAndSpecularFromMetallic1435 * ( ( Diffuseterm281_g35 * lightAtten296_g35 ) + ( gi203_g35.indirect.diffuse * occlusion306_g35 ) ) ) + ( SpecularTerm34_g35 * lightAtten296_g35 * FresnelTerm130_g35 ) + staticSwitch305_g35 ) + temp_output_1438_341 + ( temp_output_1438_345 * ( ( ( pow( saturate( dotResult20_g32 ) , _TransScattering ) * _TransDirect ) + ( localGI2_g33 * _TransAmbient ) ) * saturate( _Translucency ) * lerpResult39_g32 ) ) + ( ( max( 0.0 , -dotResult9_g34 ) * lerpResult21_g34 * _TransmissionStrength ) * temp_output_1438_345 ) );
				outAlpha = temp_output_1438_344;
				clip(outAlpha - _Cutoff);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18912
6;196;1524;688;5737.798;3005.632;1.717176;True;False
Node;AmplifyShaderEditor.FunctionNode;1438;-4889.126,-2707.888;Inherit;False;AIT Item Function;9;;31;49cd9f91cda5058428ddba66ec049916;0;0;9;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;346;FLOAT;350;FLOAT;347;FLOAT;344
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1435;-4639.431,-2921.429;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;1425;-3910.645,-2405.598;Inherit;False;Unity Transmission;7;;34;9498cceedd4defe45a721369ca43b3c7;0;3;1;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;25;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1423;-3897.01,-2840.643;Inherit;False;GGX Specular Light;-1;;35;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1424;-3907.147,-2536.21;Inherit;False;Unity Translucency;1;;32;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;43;FLOAT;0;False;46;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;660;-4757.847,-2303.285;Inherit;False;Property;_Cutoff;Cutoff;65;1;[Header];Fetch;True;1;Cutout Setting;0;0;True;0;False;0.5;0.519;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-4727.804,-1901.293;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;2837.367,-3900.219;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1431;-4144.52,-2044.647;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1428;-4769.735,-2080.875;Inherit;False;Global Illumination;-1;;37;618026ac6bfd8394b9cb2d8d0ecddb28;1,19,1;1;37;FLOAT3;0,0,0;False;1;FLOAT3;15
Node;AmplifyShaderEditor.WireNode;1433;-3572.349,-2501.941;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1427;-3617.113,-2716.49;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;1434;-4220.458,-2340.844;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1436;-4327.26,-2024.041;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1430;-3958.482,-2215.465;Inherit;False;Deferred Pass;-1;;36;c9afd996879db6041a57a5a508002f59;0;6;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;0;False;4;FLOAT4;0;FLOAT4;1;FLOAT4;12;FLOAT4;18
Node;AmplifyShaderEditor.WorldNormalVector;1429;-4986.435,-2085.269;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1419;-3394.7,-2618.107;Float;False;True;-1;2;ASEMaterialInspector;0;8;Hanmen/Item Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=TransparentCutout=RenderType;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;;0;0;Standard;0;0;4;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1420;-3394.7,-2512.307;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1422;-3394.7,-2479.307;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;3;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1421;-3587.081,-2221.629;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
WireConnection;1435;0;1438;345
WireConnection;1435;1;1438;340
WireConnection;1425;1;1438;345
WireConnection;1425;11;1438;342
WireConnection;1425;25;1438;350
WireConnection;1423;286;1435;0
WireConnection;1423;30;1438;342
WireConnection;1423;146;1435;1
WireConnection;1423;147;1438;0
WireConnection;1423;302;1438;346
WireConnection;1424;6;1438;345
WireConnection;1424;26;1438;342
WireConnection;1424;43;1438;347
WireConnection;1431;0;1438;341
WireConnection;1431;1;1436;0
WireConnection;1428;37;1429;0
WireConnection;1433;0;1438;344
WireConnection;1427;0;1423;0
WireConnection;1427;1;1438;341
WireConnection;1427;2;1424;0
WireConnection;1427;3;1425;0
WireConnection;1434;0;1435;0
WireConnection;1434;1;1438;344
WireConnection;1434;2;660;0
WireConnection;1436;0;1435;0
WireConnection;1436;1;1428;15
WireConnection;1430;3;1434;0
WireConnection;1430;14;1438;342
WireConnection;1430;20;1431;0
WireConnection;1430;6;1435;1
WireConnection;1430;7;1438;0
WireConnection;1430;4;1438;346
WireConnection;1429;0;1438;342
WireConnection;1419;0;1427;0
WireConnection;1419;1;1433;0
WireConnection;1421;0;1430;0
WireConnection;1421;1;1430;1
WireConnection;1421;2;1430;12
WireConnection;1421;3;1430;18
ASEEND*/
//CHKSM=CF37A00D7D2E1EF3F27A2AC30ACDDB1812CE96EF
