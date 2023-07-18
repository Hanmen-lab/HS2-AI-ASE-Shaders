// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (1,1,0,0)
		_WetUV("WetUV", Vector) = (1,1,0,0)
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
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		[NoScaleOffset][Header (Detail2 (Grayscale))]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 9
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		[Header (Color Mask Required (Optional))][Toggle(_EMISSIONCOLOR2_ON)] _EmissionColor2("Color1 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR3_ON)] _EmissionColor3("Color2 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR4_ON)] _EmissionColor4("Color3 is Emissive", Float) = 0
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
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.95
		_WeatheringEmission("WeatheringEmission", Range( 0 , 1)) = 0.2
		_WeatheringUVSeed("WeatheringUVSeed", Range( 0 , 1)) = 0
		[Header (Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetGlossBase("WetGlossBase", Range( 0 , 2)) = 0.8
		_BodyColor1("BodyColor", Color) = (0.71,0.56,0.51,0)
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetSplatsAlbedoOffset("WetSplatsAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetAlpha("WetAlpha", Range( 0 , 10)) = 0
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 0
		_WetOpacityStreaks("WetOpacityStreaks", Range( 0 , 2)) = 0
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0.5
		_WetColor("WetColor", Color) = (0,0,0,0)
		[Header(Dithering)][Toggle]_DitherSwitch("DitherSwitch", Range( 0 , 1)) = 1
		[Toggle]_DitherBlueNoise("DitherBlueNoise", Range( 0 , 1)) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 0
		[HideInInspector][Header(Translucency)]_Translucency("Translucency", Range( 0 , 1)) = 1
		_TransmissionStrength("TransmissionStrength", Range( 0 , 5)) = 1
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Translucency)]_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		_TransmissionShadow("TransmissionShadow", Range( 0 , 1)) = 1
		[Toggle(_SHADERTYPE_CLOTHING)] _SHADERTYPE_CLOTHING("_SHADERTYPE_CLOTHING", Float) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		Tags { "RenderType"="TransparentCutout" "Queue"="AlphaTest-50" }
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
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma shader_feature _EMISSIONCOLOR4_ON
		#pragma multi_compile __ _SHADERTYPE_CLOTHING
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
		
		uniform float4 _WetColor;
		uniform float2 _UVScalePattern;
		uniform float2 _DetailUV;
		uniform float4 _WeatheringAlbedo;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _DetailUVRotator;
		uniform float _DetailNormalMapScale;
		uniform float4 _WetStreaksUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap2;
		uniform float4 _Color;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange5;
		uniform float _DitherBlueNoise;
		uniform float _WeatheringRange3;
		uniform float _Translucency;
		uniform float _WeatheringRange4;
		uniform float _WeatheringRange2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _WeatheringAll;
		uniform float _WeatheringGloss;
		uniform float _AlphaEx;
		SamplerState sampler_MetallicGlossMap;
		uniform float _Float0;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float2 _patternuvbase;
		uniform float _DetailMetallicScale2;
		uniform float _CarvatureStrength;
		uniform float2 _DetailUV2;
		uniform float _DetailNormalMapScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _ExGloss;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform float4 _EmissionColor;
		SamplerState sampler_DetailMainTex;
		uniform float _DetailUV2Rotator;
		uniform half _DitherSwitch;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _Metallic4;
		uniform float _EmissionStrength;
		uniform float4 _BaseColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _WetOpacitySplats;
		uniform float _WetBumpOffset;
		uniform float _WetAlbedoOffset;
		uniform float _WetOpacityStreaks;
		uniform float4 _WetUV;
		uniform float _DetailGlossScale2;
		uniform float4 _WeatheringUV;
		uniform float _WetAlpha;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _AlphaMaster;
		uniform float _WetGlossSplats;
		uniform float4 _BodyColor1;
		uniform float _WetGlossBase;
		uniform float _WetSplatsAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _DetailMetallicScale;
		uniform float _WeatheringUVSeed;
		uniform float _TransmissionStrength;
		uniform float _TransDirect;
		uniform float _TransShadow;
		uniform float _TransScattering;
		uniform float _TransAmbient;
		uniform float _TransNormalDistortion;
		uniform float _TransmissionShadow;
		uniform float _CullMode;
		SamplerState sampler_linear_repeat;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		SamplerState sampler_trilinear_repeat;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _NormalBackDirInvert;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		uniform float _WeatheringEmission;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		float4 _Noise_TexelSize;
		SamplerState sampler_Noise;
		half OneMinusReflectivity( half metallic )
		{
			   return OneMinusReflectivityFromMetallic(metallic);
		}
		
		inline float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max( 0.001f , dot( inVec , inVec ) );
			return inVec* rsqrt( dp3);
		}
		
		float3 GI2_g140( float3 normal )
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

				float2 uv_MainTex576_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g127 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g127 );
				float3 temp_output_284_0_g127 = (tex2DNode576_g127).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g127 );
				float Carvature270_g127 = tex2DNode196_g127.r;
				float3 lerpResult331_g127 = lerp( ( temp_output_284_0_g127 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g127 * _CarvatureStrength ));
				float WetAlbedoOffset311_g127 = _WetAlbedoOffset;
				float3 temp_output_382_0_g127 = ( lerpResult331_g127 * WetAlbedoOffset311_g127 );
				float WetSplatsAlbedoOffset349_g127 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g127 = lerp( ( temp_output_382_0_g127 * WetSplatsAlbedoOffset349_g127 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g127 = _ExGloss;
				float2 appendResult657_g127 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g127 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g127 = i.ase_texcoord1.xy * appendResult657_g127 + appendResult658_g127;
				float2 WetStrUV669_g127 = texCoord660_g127;
				float WetStr661_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g127 ).g;
				float smoothstepResult651_g127 = smoothstep( ( 1.0 - ExGloss298_g127 ) , 1.0 , WetStr661_g127);
				float StreaksAlpha662_g127 = smoothstepResult651_g127;
				float WetOpStreaks673_g127 = _WetOpacityStreaks;
				float2 appendResult287_g127 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g127 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g127 = i.ase_texcoord1.xy * appendResult287_g127 + appendResult285_g127;
				float2 WetUV578_g127 = texCoord317_g127;
				float WetSplats369_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g127 ).b;
				float SplatsOp363_g127 = _WetOpacitySplats;
				float3 lerpResult460_g127 = lerp( temp_output_382_0_g127 , lerpResult411_g127 , ( ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ) + ( WetSplats369_g127 * SplatsOp363_g127 ) ));
				float2 uv_OcclusionMap429_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g127 );
				float3 WetBodyOffset422_g127 = (_BodyColor1).rgb;
				float bodycoloralpha417_g127 = _BodyColor1.a;
				float3 lerpResult480_g127 = lerp( lerpResult460_g127 , ( tex2DNode429_g127.a == 1.0 ? lerpResult460_g127 : WetBodyOffset422_g127 ) , ( bodycoloralpha417_g127 * ( 1.0 - tex2DNode429_g127.a ) ));
				float3 lerpResult501_g127 = lerp( lerpResult331_g127 , lerpResult480_g127 , ExGloss298_g127);
				float2 appendResult115_g127 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g127 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g127 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g127 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g127 ) * 43758.55 ) ));
				float2 texCoord127_g127 = i.ase_texcoord1.xy * appendResult115_g127 + ( appendResult110_g127 + lerpResult737_g127 );
				float2 WeatheringUV144_g127 = texCoord127_g127;
				float4 tex2DNode177_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float2 uv_WeatheringMask100_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g127 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g127 );
				float clampResult161_g127 = clamp( ( tex2DNode100_g127.r - tex2DNode100_g127.g ) , 0.0 , 1.0 );
				float WMask1183_g127 = ( clampResult161_g127 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g127 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g127 = clamp( ( ( tex2DNode177_g127.g * WMask1183_g127 ) - RangeCut1208_g127 ) , 0.0 , 1.0 );
				float clampResult159_g127 = clamp( ( tex2DNode100_g127.g - tex2DNode100_g127.r ) , 0.0 , 1.0 );
				float WMask2192_g127 = ( clampResult159_g127 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g127 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g127 = clamp( ( ( tex2DNode177_g127.g * WMask2192_g127 ) - RangeCut2211_g127 ) , 0.0 , 1.0 );
				float WMask3190_g127 = ( tex2DNode100_g127.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g127 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g127 = clamp( ( ( tex2DNode177_g127.g * WMask3190_g127 ) - RangeCut3210_g127 ) , 0.0 , 1.0 );
				float WMask4180_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g127 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g127 = clamp( ( ( tex2DNode177_g127.g * WMask4180_g127 ) - RangeCut4205_g127 ) , 0.0 , 1.0 );
				float WMask5184_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g127 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g127 = clamp( ( ( tex2DNode177_g127.g * WMask5184_g127 ) - RangeCut5201_g127 ) , 0.0 , 1.0 );
				float WMaskAll165_g127 = ceil( _WeatheringAll );
				float RangeCutAll171_g127 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g127 = clamp( ( ( tex2DNode177_g127.g * WMaskAll165_g127 ) - RangeCutAll171_g127 ) , 0.0 , 1.0 );
				float clampResult299_g127 = clamp( ( clampResult253_g127 + clampResult251_g127 + clampResult254_g127 + clampResult259_g127 + clampResult261_g127 + clampResult215_g127 ) , 0.0 , 1.0 );
				float lerpResult313_g127 = lerp( clampResult299_g127 , clampResult215_g127 , WMaskAll165_g127);
				float WeatheringAlpha2466_g127 = lerpResult313_g127;
				float3 lerpResult505_g127 = lerp( lerpResult501_g127 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g127 * 0.282353 ));
				float3 DiffuseMix511_g127 = lerpResult505_g127;
				float3 temp_output_1675_0 = DiffuseMix511_g127;
				float2 uv_MetallicGlossMap330_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g127 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g127 );
				float lerpResult399_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask);
				float2 uv_DetailMainTex338_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g127 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g127 );
				float lerpResult395_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask4);
				float2 uv_ColorMask304_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g127 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g127 );
				float ColorMask4347_g127 = tex2DNode304_g127.b;
				float lerpResult462_g127 = lerp( ( lerpResult399_g127 * tex2DNode338_g127.r ) , ( lerpResult395_g127 * _Metallic4 ) , ColorMask4347_g127);
				float2 UVScale107_g127 = _UVScalePattern;
				float2 texCoord152_g127 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g127 ) + float2( 0,0 );
				float cos162_g127 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g127 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g127 = mul( texCoord152_g127 - float2( 0.5,0.5 ) , float2x2( cos162_g127 , -sin162_g127 , sin162_g127 , cos162_g127 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g127 = rotator162_g127;
				float Detail1310_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 ).r;
				float2 uv_DetailMask25_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g127 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g127 );
				float DetailMask130_g127 = tex2DNode25_g127.r;
				float2 texCoord16_g127 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g127 ) + float2( 0,0 );
				float cos19_g127 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g127 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g127 = mul( texCoord16_g127 - float2( 0.5,0.5 ) , float2x2( cos19_g127 , -sin19_g127 , sin19_g127 , cos19_g127 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g127 = rotator19_g127;
				float Detail2352_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 ).r;
				float DetailMask235_g127 = tex2DNode25_g127.g;
				float lerpResult495_g127 = lerp( saturate( ( ( lerpResult462_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailMetallicScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailMetallicScale2 * DetailMask235_g127 ) ) ) ) , 0.0 , WeatheringAlpha2466_g127);
				float MetallicFinal512_g127 = saturate( lerpResult495_g127 );
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(temp_output_1675_0,MetallicFinal512_g127,specColor1642,oneMinusReflectivity1642);
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g141 = worldSpaceLightDir;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g141 = ase_worldViewDir;
				float3 normalizeResult136_g141 = ASESafeNormalize( ( lightDir14_g141 + viewDir15_g141 ) );
				float dotResult137_g141 = dot( lightDir14_g141 , normalizeResult136_g141 );
				float LdotH139_g141 = saturate( dotResult137_g141 );
				float lerpResult353_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness);
				float lerpResult336_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness4);
				float lerpResult384_g127 = lerp( ( lerpResult353_g127 * tex2DNode338_g127.b ) , ( _Glossiness4 * lerpResult336_g127 ) , ColorMask4347_g127);
				float WetGlossBase397_g127 = _WetGlossBase;
				float lerpResult470_g127 = lerp( saturate( ( ( lerpResult384_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailGlossScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailGlossScale2 * DetailMask235_g127 ) ) ) ) , tex2DNode330_g127.a , ( WetGlossBase397_g127 * ExGloss298_g127 ));
				float SplatsGloss407_g127 = _WetGlossSplats;
				float lerpResult664_g127 = lerp( lerpResult470_g127 , SplatsGloss407_g127 , ( SplatsOp363_g127 * ExGloss298_g127 * WetSplats369_g127 ));
				float lerpResult649_g127 = lerp( lerpResult664_g127 , 0.87 , ( WetOpStreaks673_g127 * smoothstepResult651_g127 ));
				float clampResult373_g127 = clamp( ( lerpResult313_g127 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g127 = clampResult373_g127;
				float lerpResult499_g127 = lerp( lerpResult649_g127 , _WeatheringGloss , WeatheringAlpha396_g127);
				float GlossinessFinal513_g127 = saturate( lerpResult499_g127 );
				float temp_output_1675_560 = GlossinessFinal513_g127;
				float smoothness169_g141 = temp_output_1675_560;
				float perceprualRoughness188_g141 = ( 1.0 - smoothness169_g141 );
				half fd90273_g141 = ( 0.5 + ( 2.0 * LdotH139_g141 * LdotH139_g141 * perceprualRoughness188_g141 ) );
				float2 uv_BumpMap402_g127 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g127 = _WetBumpOffset;
				float2 break194_g127 = Detail1UV173_g127;
				float temp_output_186_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g127 = (float2(( break194_g127.x + temp_output_186_0_g127 ) , break194_g127.y));
				float4 tex2DNode243_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 );
				float temp_output_255_0_g127 = ( DetailMask130_g127 * _DetailNormalMapScale );
				float3 appendResult300_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float2 appendResult222_g127 = (float2(break194_g127.x , ( break194_g127.y + temp_output_186_0_g127 )));
				float3 appendResult297_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float3 normalizeResult348_g127 = normalize( cross( appendResult300_g127 , appendResult297_g127 ) );
				float3 DetailNormal1368_g127 = normalizeResult348_g127;
				float2 break24_g127 = Detail2UV20_g127;
				float temp_output_26_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g127 = (float2(( break24_g127.x + temp_output_26_0_g127 ) , break24_g127.y));
				float4 tex2DNode38_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 );
				float temp_output_43_0_g127 = ( DetailMask235_g127 * _DetailNormalMapScale2 );
				float3 appendResult58_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float2 appendResult33_g127 = (float2(break24_g127.x , ( break24_g127.y + temp_output_26_0_g127 )));
				float3 appendResult57_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float3 normalizeResult69_g127 = normalize( cross( appendResult58_g127 , appendResult57_g127 ) );
				float3 DetailNormal276_g127 = normalizeResult69_g127;
				float2 break547_g127 = WetStrUV669_g127;
				float temp_output_541_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g127 = (float2(( break547_g127.x + temp_output_541_0_g127 ) , break547_g127.y));
				float4 tex2DNode515_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g127 );
				float3 appendResult523_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float2 appendResult534_g127 = (float2(break547_g127.x , ( break547_g127.y + temp_output_541_0_g127 )));
				float3 appendResult542_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float3 normalizeResult524_g127 = normalize( cross( appendResult523_g127 , appendResult542_g127 ) );
				float3 WetnessNormal545_g127 = normalizeResult524_g127;
				float3 lerpResult98_g127 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g127 ), ( _Float0 + ( WetBumpOffset303_g127 * ExGloss298_g127 ) ) ) , DetailNormal1368_g127 ) , DetailNormal276_g127 ) , WetnessNormal545_g127 , ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ));
				float2 break223_g127 = WeatheringUV144_g127;
				float temp_output_224_0_g127 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g127 = (float2(( break223_g127.x + temp_output_224_0_g127 ) , break223_g127.y));
				float4 tex2DNode266_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float3 appendResult344_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float2 appendResult252_g127 = (float2(break223_g127.x , ( break223_g127.y + temp_output_224_0_g127 )));
				float3 appendResult339_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float3 normalizeResult398_g127 = normalize( cross( appendResult344_g127 , appendResult339_g127 ) );
				float3 WeatheringBump425_g127 = normalizeResult398_g127;
				float3 lerpResult87_g127 = lerp( lerpResult98_g127 , WeatheringBump425_g127 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 ).b * WeatheringAlpha396_g127 ));
				float3 normalizeResult564_g127 = normalize( lerpResult87_g127 );
				float3 switchResult566_g127 = (((ase_vface>0)?(normalizeResult564_g127):(-normalizeResult564_g127)));
				float3 NormalMix88_g127 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g127 : normalizeResult564_g127 );
				float3 temp_output_1675_557 = NormalMix88_g127;
				float3 temp_output_30_0_g141 = temp_output_1675_557;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g141 = temp_output_30_0_g141;
				float3 worldNormal29_g141 = float3(dot(tanToWorld0,tanNormal29_g141), dot(tanToWorld1,tanNormal29_g141), dot(tanToWorld2,tanNormal29_g141));
				float3 normalizeResult25_g141 = normalize( worldNormal29_g141 );
				float3 normalDir28_g141 = normalizeResult25_g141;
				float dotResult21_g141 = dot( lightDir14_g141 , normalDir28_g141 );
				float NdotL20_g141 = saturate( dotResult21_g141 );
				half lightScatter253_g141 = ( ( ( fd90273_g141 - 1.0 ) * pow( ( 1.0 - NdotL20_g141 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g141 = dot( normalDir28_g141 , viewDir15_g141 );
				float NdotV55_g141 = saturate( dotResult56_g141 );
				half viewScatter254_g141 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g141 ) , 5.0 ) * ( fd90273_g141 - 1.0 ) ) );
				half disneydiffuse251_g141 = ( lightScatter253_g141 * viewScatter254_g141 );
				half Diffuseterm281_g141 = ( disneydiffuse251_g141 * NdotL20_g141 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g141 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g141 = temp_output_30_0_g141;
				float3 tanNormal203_g141 = normal198_g141;
				UnityGIInput data203_g141;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g141 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g141
				data203_g141.lightmapUV = i.ase_lmap;
				#endif //dylm203_g141
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g141
				data203_g141.ambient = i.ase_sh;
				#endif //fsh203_g141
				UnityGI gi203_g141 = UnityGI_Base(data203_g141, 1, float3(dot(tanToWorld0,tanNormal203_g141), dot(tanToWorld1,tanNormal203_g141), dot(tanToWorld2,tanNormal203_g141)));
				float2 uv_OcclusionMap623_g127 = i.ase_texcoord1.xy;
				float lerpResult483_g127 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g127 ).g , _OcculusionStrength);
				float smoothstepResult621_g127 = smoothstep( 0.0 , 0.8 , Detail1310_g127);
				float lerpResult488_g127 = lerp( 1.0 , smoothstepResult621_g127 , ( _DetailOcculusionScale * DetailMask130_g127 ));
				float smoothstepResult622_g127 = smoothstep( 0.0 , 0.8 , Detail2352_g127);
				float lerpResult494_g127 = lerp( 1.0 , smoothstepResult622_g127 , ( _DetailOcculusionScale2 * DetailMask235_g127 ));
				float lerpResult620_g127 = lerp( ( lerpResult483_g127 * lerpResult488_g127 * lerpResult494_g127 ) , 1.0 , WeatheringAlpha396_g127);
				float OcclusionMix509_g127 = saturate( lerpResult620_g127 );
				float temp_output_1675_561 = OcclusionMix509_g127;
				float occlusion306_g141 = temp_output_1675_561;
				half Roughness64_g141 = max( ( perceprualRoughness188_g141 * perceprualRoughness188_g141 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g141 = ( 0.5 / ( ( ( ( NdotV55_g141 * ( 1.0 - Roughness64_g141 ) ) + Roughness64_g141 ) * NdotL20_g141 ) + 1E-05 + ( NdotV55_g141 * ( Roughness64_g141 + ( ( 1.0 - Roughness64_g141 ) * NdotL20_g141 ) ) ) ) );
				float a266_g141 = ( Roughness64_g141 * Roughness64_g141 );
				float3 normalizeResult87_g141 = ASESafeNormalize( ( lightDir14_g141 + viewDir15_g141 ) );
				float dotResult88_g141 = dot( normalDir28_g141 , normalizeResult87_g141 );
				float NdotH90_g141 = saturate( dotResult88_g141 );
				float d99_g141 = ( ( ( ( NdotH90_g141 * a266_g141 ) - NdotH90_g141 ) * NdotH90_g141 ) + 1.0 );
				half GGXTerm43_g141 = ( ( ( 1.0 / UNITY_PI ) * a266_g141 ) / ( ( d99_g141 * d99_g141 ) + 1E-07 ) );
				float temp_output_36_0_g141 = ( SmithJointGGXVisibilityTerm42_g141 * GGXTerm43_g141 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g141 = sqrt( max( 0.0001 , temp_output_36_0_g141 ) );
				#else
				float staticSwitch5_g141 = temp_output_36_0_g141;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g141 = 0.0;
				#else
				float staticSwitch119_g141 = max( 0.0 , ( staticSwitch5_g141 * NdotL20_g141 ) );
				#endif
				float3 SpecColor140_g141 = specColor1642;
				float SpecularTerm34_g141 = ( staticSwitch119_g141 * ( SpecColor140_g141.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g141 = ( ( pow( ( 1.0 - LdotH139_g141 ) , 5.0 ) * ( 1.0 - SpecColor140_g141 ) ) + SpecColor140_g141 );
				half metallic176_g141 = 0.0;
				half localOneMinusReflectivity176_g141 = OneMinusReflectivity( metallic176_g141 );
				half GrazingTerm163_g141 = saturate( ( smoothness169_g141 + ( 1.0 - localOneMinusReflectivity176_g141 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g141).xxx;
				float3 lerpResult159_g141 = lerp( SpecColor140_g141 , temp_cast_3 , pow( ( 1.0 - NdotV55_g141 ) , 5.0 ));
				half3 FresnelLerp165_g141 = lerpResult159_g141;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g141 = ( 1.0 - ( 0.28 * Roughness64_g141 * perceprualRoughness188_g141 ) );
				#else
				float staticSwitch183_g141 = ( 1.0 / ( ( Roughness64_g141 * Roughness64_g141 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g141 = staticSwitch183_g141;
				float3 tanNormal299_g141 = normal198_g141;
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
				Unity_GlossyEnvironmentData g299_g141 = UnityGlossyEnvironmentSetup( smoothness169_g141, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g141), dot(tanToWorld1,tanNormal299_g141), dot(tanToWorld2,tanNormal299_g141)), float3(0,0,0));
				float3 indirectSpecular299_g141 = UnityGI_IndirectSpecular( data, occlusion306_g141, float3(dot(tanToWorld0,tanNormal299_g141), dot(tanToWorld1,tanNormal299_g141), dot(tanToWorld2,tanNormal299_g141)), g299_g141 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g141 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g141 = ( FresnelLerp165_g141 * SurfaceReduction182_g141 * indirectSpecular299_g141 );
				#endif
				float3 ColorTex354_g127 = temp_output_284_0_g127;
				float ColorMask3306_g127 = tex2DNode304_g127.g;
				float3 EC3414_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask3306_g127 ) );
				#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g127 = EC3414_g127;
				#else
				float3 staticSwitch469_g127 = ( (_EmissionColor).rgb * _EmissionStrength );
				#endif
				float ColorMask2351_g127 = tex2DNode304_g127.r;
				float3 EC2456_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask2351_g127 ) );
				#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g127 = EC2456_g127;
				#else
				float3 staticSwitch479_g127 = staticSwitch469_g127;
				#endif
				float ColorMask1358_g127 = ( 1.0 - ( tex2DNode304_g127.r + tex2DNode304_g127.g + tex2DNode304_g127.b ) );
				float3 EC1471_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask1358_g127 ) );
				#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g127 = EC1471_g127;
				#else
				float3 staticSwitch498_g127 = staticSwitch479_g127;
				#endif
				float3 EmissionFinal510_g127 = ( tex2DNode330_g127.g * staticSwitch498_g127 );
				float WeatheringBumpMask718_g127 = tex2DNode177_g127.b;
				float3 temp_output_1675_558 = ( EmissionFinal510_g127 + ( ( WeatheringAlpha2466_g127 * WeatheringBumpMask718_g127 ) * _WeatheringEmission ) );
				float3 tanNormal14_g142 = temp_output_1675_557;
				float3 worldNormal14_g142 = normalize( float3(dot(tanToWorld0,tanNormal14_g142), dot(tanToWorld1,tanNormal14_g142), dot(tanToWorld2,tanNormal14_g142)) );
				float dotResult9_g142 = dot( worldNormal14_g142 , worldSpaceLightDir );
				float3 lerpResult21_g142 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float3 tanNormal27_g139 = temp_output_1675_557;
				float3 worldNormal27_g139 = normalize( float3(dot(tanToWorld0,tanNormal27_g139), dot(tanToWorld1,tanNormal27_g139), dot(tanToWorld2,tanNormal27_g139)) );
				float dotResult20_g139 = dot( ase_worldViewDir , -( ( worldNormal27_g139 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float3 normal2_g140 = worldNormal27_g139;
				float3 localGI2_g140 = GI2_g140( normal2_g140 );
				float Thickness507_g127 = tex2DNode330_g127.b;
				float3 lerpResult39_g139 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				
				float clampResult592_g127 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g127 = tex2DNode196_g127.b;
				float BlueNoise643_g127 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g127 = Dither8x8Bayer( fmod(clipScreen691_g127.x, 8), fmod(clipScreen691_g127.y, 8) );
				float AlphaInput195_g127 = tex2DNode576_g127.a;
				dither691_g127 = step( dither691_g127, AlphaInput195_g127 );
				float dither692_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g127 = step( dither692_g127, AlphaInput195_g127 );
				float2 clipScreen629_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g127 = Dither8x8Bayer( fmod(clipScreen629_g127.x, 8), fmod(clipScreen629_g127.y, 8) );
				float OccAlpha219_g127 = tex2DNode196_g127.a;
				float temp_output_703_0_g127 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g127 , ( _WetAlpha * ExGloss298_g127 ) ) ) ) + WeatheringAlpha2466_g127 );
				dither629_g127 = step( dither629_g127, temp_output_703_0_g127 );
				float dither630_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g127 = step( dither630_g127, temp_output_703_0_g127 );
				float temp_output_1675_637 = ( ( step( pow( ( 1.0 - clampResult592_g127 ) , 0.2 ) , pow( TearingsMask340_g127 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g127 == 0.0 ? dither691_g127 : dither692_g127 ) : AlphaInput195_g127 ) ) * ( BlueNoise643_g127 == 0.0 ? dither629_g127 : dither630_g127 ) );
				
				
				outColor = ( ( ( diffuseAndSpecularFromMetallic1642 * ( ( Diffuseterm281_g141 * lightAtten296_g141 ) + ( gi203_g141.indirect.diffuse * occlusion306_g141 ) ) ) + ( SpecularTerm34_g141 * lightAtten296_g141 * FresnelTerm130_g141 ) + staticSwitch305_g141 ) + temp_output_1675_558 + ( ( max( 0.0 , -dotResult9_g142 ) * lerpResult21_g142 * _TransmissionStrength ) * temp_output_1675_0 ) + ( temp_output_1675_0 * ( ( ( pow( saturate( dotResult20_g139 ) , _TransScattering ) * _TransDirect ) + ( localGI2_g140 * _TransAmbient ) ) * ( _Translucency * Thickness507_g127 ) * lerpResult39_g139 ) ) );
				outAlpha = temp_output_1675_637;
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
			#pragma shader_feature _EMISSIONCOLOR2_ON
			#pragma shader_feature _EMISSIONCOLOR3_ON
			#pragma shader_feature _EMISSIONCOLOR4_ON
			#pragma multi_compile __ _SHADERTYPE_CLOTHING
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
			
			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float2 _DetailUV;
			uniform float4 _WeatheringAlbedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailUVRotator;
			uniform float _DetailNormalMapScale;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap2;
			uniform float4 _Color;
			uniform float _WeatheringRange1;
			uniform float _WeatheringRange5;
			uniform float _DitherBlueNoise;
			uniform float _WeatheringRange3;
			uniform float _Translucency;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _WeatheringAll;
			uniform float _WeatheringGloss;
			uniform float _AlphaEx;
			SamplerState sampler_MetallicGlossMap;
			uniform float _Float0;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float2 _patternuvbase;
			uniform float _DetailMetallicScale2;
			uniform float _CarvatureStrength;
			uniform float2 _DetailUV2;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float _ExGloss;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex2;
			uniform float4 _EmissionColor;
			SamplerState sampler_DetailMainTex;
			uniform float _DetailUV2Rotator;
			uniform half _DitherSwitch;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _Metallic4;
			uniform float _EmissionStrength;
			uniform float4 _BaseColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WetOpacitySplats;
			uniform float _WetBumpOffset;
			uniform float _WetAlbedoOffset;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetUV;
			uniform float _DetailGlossScale2;
			uniform float4 _WeatheringUV;
			uniform float _WetAlpha;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _AlphaMaster;
			uniform float _WetGlossSplats;
			uniform float4 _BodyColor1;
			uniform float _WetGlossBase;
			uniform float _WetSplatsAlbedoOffset;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailMetallicScale;
			uniform float _WeatheringUVSeed;
			uniform float _TransmissionStrength;
			uniform float _TransDirect;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			SamplerState sampler_linear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			uniform float _Roughness;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _WeatheringEmission;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			float4 _Noise_TexelSize;
			SamplerState sampler_Noise;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float3 GI2_g140( float3 normal )
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

				float2 uv_MainTex576_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g127 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g127 );
				float3 temp_output_284_0_g127 = (tex2DNode576_g127).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g127 );
				float Carvature270_g127 = tex2DNode196_g127.r;
				float3 lerpResult331_g127 = lerp( ( temp_output_284_0_g127 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g127 * _CarvatureStrength ));
				float WetAlbedoOffset311_g127 = _WetAlbedoOffset;
				float3 temp_output_382_0_g127 = ( lerpResult331_g127 * WetAlbedoOffset311_g127 );
				float WetSplatsAlbedoOffset349_g127 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g127 = lerp( ( temp_output_382_0_g127 * WetSplatsAlbedoOffset349_g127 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g127 = _ExGloss;
				float2 appendResult657_g127 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g127 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g127 = i.ase_texcoord1.xy * appendResult657_g127 + appendResult658_g127;
				float2 WetStrUV669_g127 = texCoord660_g127;
				float WetStr661_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g127 ).g;
				float smoothstepResult651_g127 = smoothstep( ( 1.0 - ExGloss298_g127 ) , 1.0 , WetStr661_g127);
				float StreaksAlpha662_g127 = smoothstepResult651_g127;
				float WetOpStreaks673_g127 = _WetOpacityStreaks;
				float2 appendResult287_g127 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g127 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g127 = i.ase_texcoord1.xy * appendResult287_g127 + appendResult285_g127;
				float2 WetUV578_g127 = texCoord317_g127;
				float WetSplats369_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g127 ).b;
				float SplatsOp363_g127 = _WetOpacitySplats;
				float3 lerpResult460_g127 = lerp( temp_output_382_0_g127 , lerpResult411_g127 , ( ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ) + ( WetSplats369_g127 * SplatsOp363_g127 ) ));
				float2 uv_OcclusionMap429_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g127 );
				float3 WetBodyOffset422_g127 = (_BodyColor1).rgb;
				float bodycoloralpha417_g127 = _BodyColor1.a;
				float3 lerpResult480_g127 = lerp( lerpResult460_g127 , ( tex2DNode429_g127.a == 1.0 ? lerpResult460_g127 : WetBodyOffset422_g127 ) , ( bodycoloralpha417_g127 * ( 1.0 - tex2DNode429_g127.a ) ));
				float3 lerpResult501_g127 = lerp( lerpResult331_g127 , lerpResult480_g127 , ExGloss298_g127);
				float2 appendResult115_g127 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g127 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g127 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g127 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g127 ) * 43758.55 ) ));
				float2 texCoord127_g127 = i.ase_texcoord1.xy * appendResult115_g127 + ( appendResult110_g127 + lerpResult737_g127 );
				float2 WeatheringUV144_g127 = texCoord127_g127;
				float4 tex2DNode177_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float2 uv_WeatheringMask100_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g127 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g127 );
				float clampResult161_g127 = clamp( ( tex2DNode100_g127.r - tex2DNode100_g127.g ) , 0.0 , 1.0 );
				float WMask1183_g127 = ( clampResult161_g127 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g127 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g127 = clamp( ( ( tex2DNode177_g127.g * WMask1183_g127 ) - RangeCut1208_g127 ) , 0.0 , 1.0 );
				float clampResult159_g127 = clamp( ( tex2DNode100_g127.g - tex2DNode100_g127.r ) , 0.0 , 1.0 );
				float WMask2192_g127 = ( clampResult159_g127 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g127 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g127 = clamp( ( ( tex2DNode177_g127.g * WMask2192_g127 ) - RangeCut2211_g127 ) , 0.0 , 1.0 );
				float WMask3190_g127 = ( tex2DNode100_g127.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g127 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g127 = clamp( ( ( tex2DNode177_g127.g * WMask3190_g127 ) - RangeCut3210_g127 ) , 0.0 , 1.0 );
				float WMask4180_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g127 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g127 = clamp( ( ( tex2DNode177_g127.g * WMask4180_g127 ) - RangeCut4205_g127 ) , 0.0 , 1.0 );
				float WMask5184_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g127 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g127 = clamp( ( ( tex2DNode177_g127.g * WMask5184_g127 ) - RangeCut5201_g127 ) , 0.0 , 1.0 );
				float WMaskAll165_g127 = ceil( _WeatheringAll );
				float RangeCutAll171_g127 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g127 = clamp( ( ( tex2DNode177_g127.g * WMaskAll165_g127 ) - RangeCutAll171_g127 ) , 0.0 , 1.0 );
				float clampResult299_g127 = clamp( ( clampResult253_g127 + clampResult251_g127 + clampResult254_g127 + clampResult259_g127 + clampResult261_g127 + clampResult215_g127 ) , 0.0 , 1.0 );
				float lerpResult313_g127 = lerp( clampResult299_g127 , clampResult215_g127 , WMaskAll165_g127);
				float WeatheringAlpha2466_g127 = lerpResult313_g127;
				float3 lerpResult505_g127 = lerp( lerpResult501_g127 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g127 * 0.282353 ));
				float3 DiffuseMix511_g127 = lerpResult505_g127;
				float3 temp_output_1675_0 = DiffuseMix511_g127;
				float2 uv_MetallicGlossMap330_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g127 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g127 );
				float lerpResult399_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask);
				float2 uv_DetailMainTex338_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g127 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g127 );
				float lerpResult395_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask4);
				float2 uv_ColorMask304_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g127 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g127 );
				float ColorMask4347_g127 = tex2DNode304_g127.b;
				float lerpResult462_g127 = lerp( ( lerpResult399_g127 * tex2DNode338_g127.r ) , ( lerpResult395_g127 * _Metallic4 ) , ColorMask4347_g127);
				float2 UVScale107_g127 = _UVScalePattern;
				float2 texCoord152_g127 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g127 ) + float2( 0,0 );
				float cos162_g127 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g127 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g127 = mul( texCoord152_g127 - float2( 0.5,0.5 ) , float2x2( cos162_g127 , -sin162_g127 , sin162_g127 , cos162_g127 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g127 = rotator162_g127;
				float Detail1310_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 ).r;
				float2 uv_DetailMask25_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g127 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g127 );
				float DetailMask130_g127 = tex2DNode25_g127.r;
				float2 texCoord16_g127 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g127 ) + float2( 0,0 );
				float cos19_g127 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g127 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g127 = mul( texCoord16_g127 - float2( 0.5,0.5 ) , float2x2( cos19_g127 , -sin19_g127 , sin19_g127 , cos19_g127 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g127 = rotator19_g127;
				float Detail2352_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 ).r;
				float DetailMask235_g127 = tex2DNode25_g127.g;
				float lerpResult495_g127 = lerp( saturate( ( ( lerpResult462_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailMetallicScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailMetallicScale2 * DetailMask235_g127 ) ) ) ) , 0.0 , WeatheringAlpha2466_g127);
				float MetallicFinal512_g127 = saturate( lerpResult495_g127 );
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(temp_output_1675_0,MetallicFinal512_g127,specColor1642,oneMinusReflectivity1642);
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g141 = worldSpaceLightDir;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g141 = ase_worldViewDir;
				float3 normalizeResult136_g141 = ASESafeNormalize( ( lightDir14_g141 + viewDir15_g141 ) );
				float dotResult137_g141 = dot( lightDir14_g141 , normalizeResult136_g141 );
				float LdotH139_g141 = saturate( dotResult137_g141 );
				float lerpResult353_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness);
				float lerpResult336_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness4);
				float lerpResult384_g127 = lerp( ( lerpResult353_g127 * tex2DNode338_g127.b ) , ( _Glossiness4 * lerpResult336_g127 ) , ColorMask4347_g127);
				float WetGlossBase397_g127 = _WetGlossBase;
				float lerpResult470_g127 = lerp( saturate( ( ( lerpResult384_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailGlossScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailGlossScale2 * DetailMask235_g127 ) ) ) ) , tex2DNode330_g127.a , ( WetGlossBase397_g127 * ExGloss298_g127 ));
				float SplatsGloss407_g127 = _WetGlossSplats;
				float lerpResult664_g127 = lerp( lerpResult470_g127 , SplatsGloss407_g127 , ( SplatsOp363_g127 * ExGloss298_g127 * WetSplats369_g127 ));
				float lerpResult649_g127 = lerp( lerpResult664_g127 , 0.87 , ( WetOpStreaks673_g127 * smoothstepResult651_g127 ));
				float clampResult373_g127 = clamp( ( lerpResult313_g127 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g127 = clampResult373_g127;
				float lerpResult499_g127 = lerp( lerpResult649_g127 , _WeatheringGloss , WeatheringAlpha396_g127);
				float GlossinessFinal513_g127 = saturate( lerpResult499_g127 );
				float temp_output_1675_560 = GlossinessFinal513_g127;
				float smoothness169_g141 = temp_output_1675_560;
				float perceprualRoughness188_g141 = ( 1.0 - smoothness169_g141 );
				half fd90273_g141 = ( 0.5 + ( 2.0 * LdotH139_g141 * LdotH139_g141 * perceprualRoughness188_g141 ) );
				float2 uv_BumpMap402_g127 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g127 = _WetBumpOffset;
				float2 break194_g127 = Detail1UV173_g127;
				float temp_output_186_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g127 = (float2(( break194_g127.x + temp_output_186_0_g127 ) , break194_g127.y));
				float4 tex2DNode243_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 );
				float temp_output_255_0_g127 = ( DetailMask130_g127 * _DetailNormalMapScale );
				float3 appendResult300_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float2 appendResult222_g127 = (float2(break194_g127.x , ( break194_g127.y + temp_output_186_0_g127 )));
				float3 appendResult297_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float3 normalizeResult348_g127 = normalize( cross( appendResult300_g127 , appendResult297_g127 ) );
				float3 DetailNormal1368_g127 = normalizeResult348_g127;
				float2 break24_g127 = Detail2UV20_g127;
				float temp_output_26_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g127 = (float2(( break24_g127.x + temp_output_26_0_g127 ) , break24_g127.y));
				float4 tex2DNode38_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 );
				float temp_output_43_0_g127 = ( DetailMask235_g127 * _DetailNormalMapScale2 );
				float3 appendResult58_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float2 appendResult33_g127 = (float2(break24_g127.x , ( break24_g127.y + temp_output_26_0_g127 )));
				float3 appendResult57_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float3 normalizeResult69_g127 = normalize( cross( appendResult58_g127 , appendResult57_g127 ) );
				float3 DetailNormal276_g127 = normalizeResult69_g127;
				float2 break547_g127 = WetStrUV669_g127;
				float temp_output_541_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g127 = (float2(( break547_g127.x + temp_output_541_0_g127 ) , break547_g127.y));
				float4 tex2DNode515_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g127 );
				float3 appendResult523_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float2 appendResult534_g127 = (float2(break547_g127.x , ( break547_g127.y + temp_output_541_0_g127 )));
				float3 appendResult542_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float3 normalizeResult524_g127 = normalize( cross( appendResult523_g127 , appendResult542_g127 ) );
				float3 WetnessNormal545_g127 = normalizeResult524_g127;
				float3 lerpResult98_g127 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g127 ), ( _Float0 + ( WetBumpOffset303_g127 * ExGloss298_g127 ) ) ) , DetailNormal1368_g127 ) , DetailNormal276_g127 ) , WetnessNormal545_g127 , ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ));
				float2 break223_g127 = WeatheringUV144_g127;
				float temp_output_224_0_g127 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g127 = (float2(( break223_g127.x + temp_output_224_0_g127 ) , break223_g127.y));
				float4 tex2DNode266_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float3 appendResult344_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float2 appendResult252_g127 = (float2(break223_g127.x , ( break223_g127.y + temp_output_224_0_g127 )));
				float3 appendResult339_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float3 normalizeResult398_g127 = normalize( cross( appendResult344_g127 , appendResult339_g127 ) );
				float3 WeatheringBump425_g127 = normalizeResult398_g127;
				float3 lerpResult87_g127 = lerp( lerpResult98_g127 , WeatheringBump425_g127 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 ).b * WeatheringAlpha396_g127 ));
				float3 normalizeResult564_g127 = normalize( lerpResult87_g127 );
				float3 switchResult566_g127 = (((ase_vface>0)?(normalizeResult564_g127):(-normalizeResult564_g127)));
				float3 NormalMix88_g127 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g127 : normalizeResult564_g127 );
				float3 temp_output_1675_557 = NormalMix88_g127;
				float3 temp_output_30_0_g141 = temp_output_1675_557;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g141 = temp_output_30_0_g141;
				float3 worldNormal29_g141 = float3(dot(tanToWorld0,tanNormal29_g141), dot(tanToWorld1,tanNormal29_g141), dot(tanToWorld2,tanNormal29_g141));
				float3 normalizeResult25_g141 = normalize( worldNormal29_g141 );
				float3 normalDir28_g141 = normalizeResult25_g141;
				float dotResult21_g141 = dot( lightDir14_g141 , normalDir28_g141 );
				float NdotL20_g141 = saturate( dotResult21_g141 );
				half lightScatter253_g141 = ( ( ( fd90273_g141 - 1.0 ) * pow( ( 1.0 - NdotL20_g141 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g141 = dot( normalDir28_g141 , viewDir15_g141 );
				float NdotV55_g141 = saturate( dotResult56_g141 );
				half viewScatter254_g141 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g141 ) , 5.0 ) * ( fd90273_g141 - 1.0 ) ) );
				half disneydiffuse251_g141 = ( lightScatter253_g141 * viewScatter254_g141 );
				half Diffuseterm281_g141 = ( disneydiffuse251_g141 * NdotL20_g141 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g141 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g141 = temp_output_30_0_g141;
				float3 tanNormal203_g141 = normal198_g141;
				UnityGIInput data203_g141;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g141 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g141
				data203_g141.lightmapUV = i.ase_lmap;
				#endif //dylm203_g141
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g141
				data203_g141.ambient = i.ase_sh;
				#endif //fsh203_g141
				UnityGI gi203_g141 = UnityGI_Base(data203_g141, 1, float3(dot(tanToWorld0,tanNormal203_g141), dot(tanToWorld1,tanNormal203_g141), dot(tanToWorld2,tanNormal203_g141)));
				float2 uv_OcclusionMap623_g127 = i.ase_texcoord1.xy;
				float lerpResult483_g127 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g127 ).g , _OcculusionStrength);
				float smoothstepResult621_g127 = smoothstep( 0.0 , 0.8 , Detail1310_g127);
				float lerpResult488_g127 = lerp( 1.0 , smoothstepResult621_g127 , ( _DetailOcculusionScale * DetailMask130_g127 ));
				float smoothstepResult622_g127 = smoothstep( 0.0 , 0.8 , Detail2352_g127);
				float lerpResult494_g127 = lerp( 1.0 , smoothstepResult622_g127 , ( _DetailOcculusionScale2 * DetailMask235_g127 ));
				float lerpResult620_g127 = lerp( ( lerpResult483_g127 * lerpResult488_g127 * lerpResult494_g127 ) , 1.0 , WeatheringAlpha396_g127);
				float OcclusionMix509_g127 = saturate( lerpResult620_g127 );
				float temp_output_1675_561 = OcclusionMix509_g127;
				float occlusion306_g141 = temp_output_1675_561;
				half Roughness64_g141 = max( ( perceprualRoughness188_g141 * perceprualRoughness188_g141 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g141 = ( 0.5 / ( ( ( ( NdotV55_g141 * ( 1.0 - Roughness64_g141 ) ) + Roughness64_g141 ) * NdotL20_g141 ) + 1E-05 + ( NdotV55_g141 * ( Roughness64_g141 + ( ( 1.0 - Roughness64_g141 ) * NdotL20_g141 ) ) ) ) );
				float a266_g141 = ( Roughness64_g141 * Roughness64_g141 );
				float3 normalizeResult87_g141 = ASESafeNormalize( ( lightDir14_g141 + viewDir15_g141 ) );
				float dotResult88_g141 = dot( normalDir28_g141 , normalizeResult87_g141 );
				float NdotH90_g141 = saturate( dotResult88_g141 );
				float d99_g141 = ( ( ( ( NdotH90_g141 * a266_g141 ) - NdotH90_g141 ) * NdotH90_g141 ) + 1.0 );
				half GGXTerm43_g141 = ( ( ( 1.0 / UNITY_PI ) * a266_g141 ) / ( ( d99_g141 * d99_g141 ) + 1E-07 ) );
				float temp_output_36_0_g141 = ( SmithJointGGXVisibilityTerm42_g141 * GGXTerm43_g141 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g141 = sqrt( max( 0.0001 , temp_output_36_0_g141 ) );
				#else
				float staticSwitch5_g141 = temp_output_36_0_g141;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g141 = 0.0;
				#else
				float staticSwitch119_g141 = max( 0.0 , ( staticSwitch5_g141 * NdotL20_g141 ) );
				#endif
				float3 SpecColor140_g141 = specColor1642;
				float SpecularTerm34_g141 = ( staticSwitch119_g141 * ( SpecColor140_g141.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g141 = ( ( pow( ( 1.0 - LdotH139_g141 ) , 5.0 ) * ( 1.0 - SpecColor140_g141 ) ) + SpecColor140_g141 );
				half metallic176_g141 = 0.0;
				half localOneMinusReflectivity176_g141 = OneMinusReflectivity( metallic176_g141 );
				half GrazingTerm163_g141 = saturate( ( smoothness169_g141 + ( 1.0 - localOneMinusReflectivity176_g141 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g141).xxx;
				float3 lerpResult159_g141 = lerp( SpecColor140_g141 , temp_cast_3 , pow( ( 1.0 - NdotV55_g141 ) , 5.0 ));
				half3 FresnelLerp165_g141 = lerpResult159_g141;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g141 = ( 1.0 - ( 0.28 * Roughness64_g141 * perceprualRoughness188_g141 ) );
				#else
				float staticSwitch183_g141 = ( 1.0 / ( ( Roughness64_g141 * Roughness64_g141 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g141 = staticSwitch183_g141;
				float3 tanNormal299_g141 = normal198_g141;
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
				Unity_GlossyEnvironmentData g299_g141 = UnityGlossyEnvironmentSetup( smoothness169_g141, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g141), dot(tanToWorld1,tanNormal299_g141), dot(tanToWorld2,tanNormal299_g141)), float3(0,0,0));
				float3 indirectSpecular299_g141 = UnityGI_IndirectSpecular( data, occlusion306_g141, float3(dot(tanToWorld0,tanNormal299_g141), dot(tanToWorld1,tanNormal299_g141), dot(tanToWorld2,tanNormal299_g141)), g299_g141 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g141 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g141 = ( FresnelLerp165_g141 * SurfaceReduction182_g141 * indirectSpecular299_g141 );
				#endif
				float3 ColorTex354_g127 = temp_output_284_0_g127;
				float ColorMask3306_g127 = tex2DNode304_g127.g;
				float3 EC3414_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask3306_g127 ) );
				#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g127 = EC3414_g127;
				#else
				float3 staticSwitch469_g127 = ( (_EmissionColor).rgb * _EmissionStrength );
				#endif
				float ColorMask2351_g127 = tex2DNode304_g127.r;
				float3 EC2456_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask2351_g127 ) );
				#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g127 = EC2456_g127;
				#else
				float3 staticSwitch479_g127 = staticSwitch469_g127;
				#endif
				float ColorMask1358_g127 = ( 1.0 - ( tex2DNode304_g127.r + tex2DNode304_g127.g + tex2DNode304_g127.b ) );
				float3 EC1471_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask1358_g127 ) );
				#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g127 = EC1471_g127;
				#else
				float3 staticSwitch498_g127 = staticSwitch479_g127;
				#endif
				float3 EmissionFinal510_g127 = ( tex2DNode330_g127.g * staticSwitch498_g127 );
				float WeatheringBumpMask718_g127 = tex2DNode177_g127.b;
				float3 temp_output_1675_558 = ( EmissionFinal510_g127 + ( ( WeatheringAlpha2466_g127 * WeatheringBumpMask718_g127 ) * _WeatheringEmission ) );
				float3 tanNormal14_g142 = temp_output_1675_557;
				float3 worldNormal14_g142 = normalize( float3(dot(tanToWorld0,tanNormal14_g142), dot(tanToWorld1,tanNormal14_g142), dot(tanToWorld2,tanNormal14_g142)) );
				float dotResult9_g142 = dot( worldNormal14_g142 , worldSpaceLightDir );
				float3 lerpResult21_g142 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float3 tanNormal27_g139 = temp_output_1675_557;
				float3 worldNormal27_g139 = normalize( float3(dot(tanToWorld0,tanNormal27_g139), dot(tanToWorld1,tanNormal27_g139), dot(tanToWorld2,tanNormal27_g139)) );
				float dotResult20_g139 = dot( ase_worldViewDir , -( ( worldNormal27_g139 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float3 normal2_g140 = worldNormal27_g139;
				float3 localGI2_g140 = GI2_g140( normal2_g140 );
				float Thickness507_g127 = tex2DNode330_g127.b;
				float3 lerpResult39_g139 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				
				float clampResult592_g127 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g127 = tex2DNode196_g127.b;
				float BlueNoise643_g127 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g127 = Dither8x8Bayer( fmod(clipScreen691_g127.x, 8), fmod(clipScreen691_g127.y, 8) );
				float AlphaInput195_g127 = tex2DNode576_g127.a;
				dither691_g127 = step( dither691_g127, AlphaInput195_g127 );
				float dither692_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g127 = step( dither692_g127, AlphaInput195_g127 );
				float2 clipScreen629_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g127 = Dither8x8Bayer( fmod(clipScreen629_g127.x, 8), fmod(clipScreen629_g127.y, 8) );
				float OccAlpha219_g127 = tex2DNode196_g127.a;
				float temp_output_703_0_g127 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g127 , ( _WetAlpha * ExGloss298_g127 ) ) ) ) + WeatheringAlpha2466_g127 );
				dither629_g127 = step( dither629_g127, temp_output_703_0_g127 );
				float dither630_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g127 = step( dither630_g127, temp_output_703_0_g127 );
				float temp_output_1675_637 = ( ( step( pow( ( 1.0 - clampResult592_g127 ) , 0.2 ) , pow( TearingsMask340_g127 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g127 == 0.0 ? dither691_g127 : dither692_g127 ) : AlphaInput195_g127 ) ) * ( BlueNoise643_g127 == 0.0 ? dither629_g127 : dither630_g127 ) );
				
				
				outColor = ( ( ( diffuseAndSpecularFromMetallic1642 * ( ( Diffuseterm281_g141 * lightAtten296_g141 ) + ( gi203_g141.indirect.diffuse * occlusion306_g141 ) ) ) + ( SpecularTerm34_g141 * lightAtten296_g141 * FresnelTerm130_g141 ) + staticSwitch305_g141 ) + temp_output_1675_558 + ( ( max( 0.0 , -dotResult9_g142 ) * lerpResult21_g142 * _TransmissionStrength ) * temp_output_1675_0 ) + ( temp_output_1675_0 * ( ( ( pow( saturate( dotResult20_g139 ) , _TransScattering ) * _TransDirect ) + ( localGI2_g140 * _TransAmbient ) ) * ( _Translucency * Thickness507_g127 ) * lerpResult39_g139 ) ) );
				outAlpha = temp_output_1675_637;
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
			#pragma shader_feature _EMISSIONCOLOR2_ON
			#pragma shader_feature _EMISSIONCOLOR3_ON
			#pragma shader_feature _EMISSIONCOLOR4_ON
			#pragma multi_compile __ _SHADERTYPE_CLOTHING
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
			

			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float2 _DetailUV;
			uniform float4 _WeatheringAlbedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailUVRotator;
			uniform float _DetailNormalMapScale;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap2;
			uniform float4 _Color;
			uniform float _WeatheringRange1;
			uniform float _WeatheringRange5;
			uniform float _DitherBlueNoise;
			uniform float _WeatheringRange3;
			uniform float _Translucency;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _WeatheringAll;
			uniform float _WeatheringGloss;
			uniform float _AlphaEx;
			SamplerState sampler_MetallicGlossMap;
			uniform float _Float0;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float2 _patternuvbase;
			uniform float _DetailMetallicScale2;
			uniform float _CarvatureStrength;
			uniform float2 _DetailUV2;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float _ExGloss;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex2;
			uniform float4 _EmissionColor;
			SamplerState sampler_DetailMainTex;
			uniform float _DetailUV2Rotator;
			uniform half _DitherSwitch;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _Metallic4;
			uniform float _EmissionStrength;
			uniform float4 _BaseColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WetOpacitySplats;
			uniform float _WetBumpOffset;
			uniform float _WetAlbedoOffset;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetUV;
			uniform float _DetailGlossScale2;
			uniform float4 _WeatheringUV;
			uniform float _WetAlpha;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _AlphaMaster;
			uniform float _WetGlossSplats;
			uniform float4 _BodyColor1;
			uniform float _WetGlossBase;
			uniform float _WetSplatsAlbedoOffset;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailMetallicScale;
			uniform float _WeatheringUVSeed;
			uniform float _TransmissionStrength;
			uniform float _TransDirect;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			SamplerState sampler_linear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			float4 _Noise_TexelSize;
			SamplerState sampler_Noise;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _Roughness;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			uniform float _WeatheringEmission;
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
			
			float3 GI2_g144( float3 normal )
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
				float2 uv_MainTex576_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g127 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g127 );
				float3 temp_output_284_0_g127 = (tex2DNode576_g127).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g127 );
				float Carvature270_g127 = tex2DNode196_g127.r;
				float3 lerpResult331_g127 = lerp( ( temp_output_284_0_g127 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g127 * _CarvatureStrength ));
				float WetAlbedoOffset311_g127 = _WetAlbedoOffset;
				float3 temp_output_382_0_g127 = ( lerpResult331_g127 * WetAlbedoOffset311_g127 );
				float WetSplatsAlbedoOffset349_g127 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g127 = lerp( ( temp_output_382_0_g127 * WetSplatsAlbedoOffset349_g127 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g127 = _ExGloss;
				float2 appendResult657_g127 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g127 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g127 = i.ase_texcoord1.xy * appendResult657_g127 + appendResult658_g127;
				float2 WetStrUV669_g127 = texCoord660_g127;
				float WetStr661_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g127 ).g;
				float smoothstepResult651_g127 = smoothstep( ( 1.0 - ExGloss298_g127 ) , 1.0 , WetStr661_g127);
				float StreaksAlpha662_g127 = smoothstepResult651_g127;
				float WetOpStreaks673_g127 = _WetOpacityStreaks;
				float2 appendResult287_g127 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g127 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g127 = i.ase_texcoord1.xy * appendResult287_g127 + appendResult285_g127;
				float2 WetUV578_g127 = texCoord317_g127;
				float WetSplats369_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g127 ).b;
				float SplatsOp363_g127 = _WetOpacitySplats;
				float3 lerpResult460_g127 = lerp( temp_output_382_0_g127 , lerpResult411_g127 , ( ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ) + ( WetSplats369_g127 * SplatsOp363_g127 ) ));
				float2 uv_OcclusionMap429_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g127 );
				float3 WetBodyOffset422_g127 = (_BodyColor1).rgb;
				float bodycoloralpha417_g127 = _BodyColor1.a;
				float3 lerpResult480_g127 = lerp( lerpResult460_g127 , ( tex2DNode429_g127.a == 1.0 ? lerpResult460_g127 : WetBodyOffset422_g127 ) , ( bodycoloralpha417_g127 * ( 1.0 - tex2DNode429_g127.a ) ));
				float3 lerpResult501_g127 = lerp( lerpResult331_g127 , lerpResult480_g127 , ExGloss298_g127);
				float2 appendResult115_g127 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g127 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g127 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g127 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g127 ) * 43758.55 ) ));
				float2 texCoord127_g127 = i.ase_texcoord1.xy * appendResult115_g127 + ( appendResult110_g127 + lerpResult737_g127 );
				float2 WeatheringUV144_g127 = texCoord127_g127;
				float4 tex2DNode177_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float2 uv_WeatheringMask100_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g127 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g127 );
				float clampResult161_g127 = clamp( ( tex2DNode100_g127.r - tex2DNode100_g127.g ) , 0.0 , 1.0 );
				float WMask1183_g127 = ( clampResult161_g127 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g127 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g127 = clamp( ( ( tex2DNode177_g127.g * WMask1183_g127 ) - RangeCut1208_g127 ) , 0.0 , 1.0 );
				float clampResult159_g127 = clamp( ( tex2DNode100_g127.g - tex2DNode100_g127.r ) , 0.0 , 1.0 );
				float WMask2192_g127 = ( clampResult159_g127 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g127 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g127 = clamp( ( ( tex2DNode177_g127.g * WMask2192_g127 ) - RangeCut2211_g127 ) , 0.0 , 1.0 );
				float WMask3190_g127 = ( tex2DNode100_g127.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g127 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g127 = clamp( ( ( tex2DNode177_g127.g * WMask3190_g127 ) - RangeCut3210_g127 ) , 0.0 , 1.0 );
				float WMask4180_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g127 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g127 = clamp( ( ( tex2DNode177_g127.g * WMask4180_g127 ) - RangeCut4205_g127 ) , 0.0 , 1.0 );
				float WMask5184_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g127 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g127 = clamp( ( ( tex2DNode177_g127.g * WMask5184_g127 ) - RangeCut5201_g127 ) , 0.0 , 1.0 );
				float WMaskAll165_g127 = ceil( _WeatheringAll );
				float RangeCutAll171_g127 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g127 = clamp( ( ( tex2DNode177_g127.g * WMaskAll165_g127 ) - RangeCutAll171_g127 ) , 0.0 , 1.0 );
				float clampResult299_g127 = clamp( ( clampResult253_g127 + clampResult251_g127 + clampResult254_g127 + clampResult259_g127 + clampResult261_g127 + clampResult215_g127 ) , 0.0 , 1.0 );
				float lerpResult313_g127 = lerp( clampResult299_g127 , clampResult215_g127 , WMaskAll165_g127);
				float WeatheringAlpha2466_g127 = lerpResult313_g127;
				float3 lerpResult505_g127 = lerp( lerpResult501_g127 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g127 * 0.282353 ));
				float3 DiffuseMix511_g127 = lerpResult505_g127;
				float3 temp_output_1675_0 = DiffuseMix511_g127;
				float2 uv_MetallicGlossMap330_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g127 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g127 );
				float lerpResult399_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask);
				float2 uv_DetailMainTex338_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g127 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g127 );
				float lerpResult395_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask4);
				float2 uv_ColorMask304_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g127 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g127 );
				float ColorMask4347_g127 = tex2DNode304_g127.b;
				float lerpResult462_g127 = lerp( ( lerpResult399_g127 * tex2DNode338_g127.r ) , ( lerpResult395_g127 * _Metallic4 ) , ColorMask4347_g127);
				float2 UVScale107_g127 = _UVScalePattern;
				float2 texCoord152_g127 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g127 ) + float2( 0,0 );
				float cos162_g127 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g127 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g127 = mul( texCoord152_g127 - float2( 0.5,0.5 ) , float2x2( cos162_g127 , -sin162_g127 , sin162_g127 , cos162_g127 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g127 = rotator162_g127;
				float Detail1310_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 ).r;
				float2 uv_DetailMask25_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g127 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g127 );
				float DetailMask130_g127 = tex2DNode25_g127.r;
				float2 texCoord16_g127 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g127 ) + float2( 0,0 );
				float cos19_g127 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g127 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g127 = mul( texCoord16_g127 - float2( 0.5,0.5 ) , float2x2( cos19_g127 , -sin19_g127 , sin19_g127 , cos19_g127 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g127 = rotator19_g127;
				float Detail2352_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 ).r;
				float DetailMask235_g127 = tex2DNode25_g127.g;
				float lerpResult495_g127 = lerp( saturate( ( ( lerpResult462_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailMetallicScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailMetallicScale2 * DetailMask235_g127 ) ) ) ) , 0.0 , WeatheringAlpha2466_g127);
				float MetallicFinal512_g127 = saturate( lerpResult495_g127 );
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(temp_output_1675_0,MetallicFinal512_g127,specColor1642,oneMinusReflectivity1642);
				float clampResult592_g127 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g127 = tex2DNode196_g127.b;
				float BlueNoise643_g127 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord2;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g127 = Dither8x8Bayer( fmod(clipScreen691_g127.x, 8), fmod(clipScreen691_g127.y, 8) );
				float AlphaInput195_g127 = tex2DNode576_g127.a;
				dither691_g127 = step( dither691_g127, AlphaInput195_g127 );
				float dither692_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g127 = step( dither692_g127, AlphaInput195_g127 );
				float2 clipScreen629_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g127 = Dither8x8Bayer( fmod(clipScreen629_g127.x, 8), fmod(clipScreen629_g127.y, 8) );
				float OccAlpha219_g127 = tex2DNode196_g127.a;
				float temp_output_703_0_g127 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g127 , ( _WetAlpha * ExGloss298_g127 ) ) ) ) + WeatheringAlpha2466_g127 );
				dither629_g127 = step( dither629_g127, temp_output_703_0_g127 );
				float dither630_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g127 = step( dither630_g127, temp_output_703_0_g127 );
				float temp_output_1675_637 = ( ( step( pow( ( 1.0 - clampResult592_g127 ) , 0.2 ) , pow( TearingsMask340_g127 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g127 == 0.0 ? dither691_g127 : dither692_g127 ) : AlphaInput195_g127 ) ) * ( BlueNoise643_g127 == 0.0 ? dither629_g127 : dither630_g127 ) );
				clip( temp_output_1675_637 - _Cutoff);
				float2 uv_OcclusionMap623_g127 = i.ase_texcoord1.xy;
				float lerpResult483_g127 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g127 ).g , _OcculusionStrength);
				float smoothstepResult621_g127 = smoothstep( 0.0 , 0.8 , Detail1310_g127);
				float lerpResult488_g127 = lerp( 1.0 , smoothstepResult621_g127 , ( _DetailOcculusionScale * DetailMask130_g127 ));
				float smoothstepResult622_g127 = smoothstep( 0.0 , 0.8 , Detail2352_g127);
				float lerpResult494_g127 = lerp( 1.0 , smoothstepResult622_g127 , ( _DetailOcculusionScale2 * DetailMask235_g127 ));
				float clampResult373_g127 = clamp( ( lerpResult313_g127 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g127 = clampResult373_g127;
				float lerpResult620_g127 = lerp( ( lerpResult483_g127 * lerpResult488_g127 * lerpResult494_g127 ) , 1.0 , WeatheringAlpha396_g127);
				float OcclusionMix509_g127 = saturate( lerpResult620_g127 );
				float temp_output_1675_561 = OcclusionMix509_g127;
				float4 appendResult2_g145 = (float4(diffuseAndSpecularFromMetallic1642 , temp_output_1675_561));
				
				float lerpResult353_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness);
				float lerpResult336_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness4);
				float lerpResult384_g127 = lerp( ( lerpResult353_g127 * tex2DNode338_g127.b ) , ( _Glossiness4 * lerpResult336_g127 ) , ColorMask4347_g127);
				float WetGlossBase397_g127 = _WetGlossBase;
				float lerpResult470_g127 = lerp( saturate( ( ( lerpResult384_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailGlossScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailGlossScale2 * DetailMask235_g127 ) ) ) ) , tex2DNode330_g127.a , ( WetGlossBase397_g127 * ExGloss298_g127 ));
				float SplatsGloss407_g127 = _WetGlossSplats;
				float lerpResult664_g127 = lerp( lerpResult470_g127 , SplatsGloss407_g127 , ( SplatsOp363_g127 * ExGloss298_g127 * WetSplats369_g127 ));
				float lerpResult649_g127 = lerp( lerpResult664_g127 , 0.87 , ( WetOpStreaks673_g127 * smoothstepResult651_g127 ));
				float lerpResult499_g127 = lerp( lerpResult649_g127 , _WeatheringGloss , WeatheringAlpha396_g127);
				float GlossinessFinal513_g127 = saturate( lerpResult499_g127 );
				float temp_output_1675_560 = GlossinessFinal513_g127;
				float4 appendResult5_g145 = (float4(specColor1642 , temp_output_1675_560));
				
				float2 uv_BumpMap402_g127 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g127 = _WetBumpOffset;
				float2 break194_g127 = Detail1UV173_g127;
				float temp_output_186_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g127 = (float2(( break194_g127.x + temp_output_186_0_g127 ) , break194_g127.y));
				float4 tex2DNode243_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 );
				float temp_output_255_0_g127 = ( DetailMask130_g127 * _DetailNormalMapScale );
				float3 appendResult300_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float2 appendResult222_g127 = (float2(break194_g127.x , ( break194_g127.y + temp_output_186_0_g127 )));
				float3 appendResult297_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float3 normalizeResult348_g127 = normalize( cross( appendResult300_g127 , appendResult297_g127 ) );
				float3 DetailNormal1368_g127 = normalizeResult348_g127;
				float2 break24_g127 = Detail2UV20_g127;
				float temp_output_26_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g127 = (float2(( break24_g127.x + temp_output_26_0_g127 ) , break24_g127.y));
				float4 tex2DNode38_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 );
				float temp_output_43_0_g127 = ( DetailMask235_g127 * _DetailNormalMapScale2 );
				float3 appendResult58_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float2 appendResult33_g127 = (float2(break24_g127.x , ( break24_g127.y + temp_output_26_0_g127 )));
				float3 appendResult57_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float3 normalizeResult69_g127 = normalize( cross( appendResult58_g127 , appendResult57_g127 ) );
				float3 DetailNormal276_g127 = normalizeResult69_g127;
				float2 break547_g127 = WetStrUV669_g127;
				float temp_output_541_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g127 = (float2(( break547_g127.x + temp_output_541_0_g127 ) , break547_g127.y));
				float4 tex2DNode515_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g127 );
				float3 appendResult523_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float2 appendResult534_g127 = (float2(break547_g127.x , ( break547_g127.y + temp_output_541_0_g127 )));
				float3 appendResult542_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float3 normalizeResult524_g127 = normalize( cross( appendResult523_g127 , appendResult542_g127 ) );
				float3 WetnessNormal545_g127 = normalizeResult524_g127;
				float3 lerpResult98_g127 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g127 ), ( _Float0 + ( WetBumpOffset303_g127 * ExGloss298_g127 ) ) ) , DetailNormal1368_g127 ) , DetailNormal276_g127 ) , WetnessNormal545_g127 , ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ));
				float2 break223_g127 = WeatheringUV144_g127;
				float temp_output_224_0_g127 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g127 = (float2(( break223_g127.x + temp_output_224_0_g127 ) , break223_g127.y));
				float4 tex2DNode266_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float3 appendResult344_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float2 appendResult252_g127 = (float2(break223_g127.x , ( break223_g127.y + temp_output_224_0_g127 )));
				float3 appendResult339_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float3 normalizeResult398_g127 = normalize( cross( appendResult344_g127 , appendResult339_g127 ) );
				float3 WeatheringBump425_g127 = normalizeResult398_g127;
				float3 lerpResult87_g127 = lerp( lerpResult98_g127 , WeatheringBump425_g127 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 ).b * WeatheringAlpha396_g127 ));
				float3 normalizeResult564_g127 = normalize( lerpResult87_g127 );
				float3 switchResult566_g127 = (((ase_vface>0)?(normalizeResult564_g127):(-normalizeResult564_g127)));
				float3 NormalMix88_g127 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g127 : normalizeResult564_g127 );
				float3 temp_output_1675_557 = NormalMix88_g127;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal11_g145 = temp_output_1675_557;
				float3 worldNormal11_g145 = float3(dot(tanToWorld0,tanNormal11_g145), dot(tanToWorld1,tanNormal11_g145), dot(tanToWorld2,tanNormal11_g145));
				float4 appendResult13_g145 = (float4(( ( worldNormal11_g145 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 ColorTex354_g127 = temp_output_284_0_g127;
				float ColorMask3306_g127 = tex2DNode304_g127.g;
				float3 EC3414_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask3306_g127 ) );
				#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g127 = EC3414_g127;
				#else
				float3 staticSwitch469_g127 = ( (_EmissionColor).rgb * _EmissionStrength );
				#endif
				float ColorMask2351_g127 = tex2DNode304_g127.r;
				float3 EC2456_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask2351_g127 ) );
				#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g127 = EC2456_g127;
				#else
				float3 staticSwitch479_g127 = staticSwitch469_g127;
				#endif
				float ColorMask1358_g127 = ( 1.0 - ( tex2DNode304_g127.r + tex2DNode304_g127.g + tex2DNode304_g127.b ) );
				float3 EC1471_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask1358_g127 ) );
				#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g127 = EC1471_g127;
				#else
				float3 staticSwitch498_g127 = staticSwitch479_g127;
				#endif
				float3 EmissionFinal510_g127 = ( tex2DNode330_g127.g * staticSwitch498_g127 );
				float WeatheringBumpMask718_g127 = tex2DNode177_g127.b;
				float3 temp_output_1675_558 = ( EmissionFinal510_g127 + ( ( WeatheringAlpha2466_g127 * WeatheringBumpMask718_g127 ) * _WeatheringEmission ) );
				float3 tanNormal1660 = temp_output_1675_557;
				float3 worldNormal1660 = float3(dot(tanToWorld0,tanNormal1660), dot(tanToWorld1,tanNormal1660), dot(tanToWorld2,tanNormal1660));
				float3 normal2_g144 = worldNormal1660;
				float3 localGI2_g144 = GI2_g144( normal2_g144 );
				float3 temp_output_20_0_g145 = ( temp_output_1675_558 + ( diffuseAndSpecularFromMetallic1642 * localGI2_g144 ) );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g145 = temp_output_20_0_g145;
				#else
				float3 staticSwitch16_g145 = exp2( -temp_output_20_0_g145 );
				#endif
				float4 appendResult19_g145 = (float4(staticSwitch16_g145 , 1.0));
				
				
				outGBuffer0 = appendResult2_g145;
				outGBuffer1 = appendResult5_g145;
				outGBuffer2 = appendResult13_g145;
				outGBuffer3 = appendResult19_g145;
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
			#pragma shader_feature _EMISSIONCOLOR2_ON
			#pragma shader_feature _EMISSIONCOLOR3_ON
			#pragma shader_feature _EMISSIONCOLOR4_ON
			#pragma multi_compile __ _SHADERTYPE_CLOTHING
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
			
			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float2 _DetailUV;
			uniform float4 _WeatheringAlbedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailUVRotator;
			uniform float _DetailNormalMapScale;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap2;
			uniform float4 _Color;
			uniform float _WeatheringRange1;
			uniform float _WeatheringRange5;
			uniform float _DitherBlueNoise;
			uniform float _WeatheringRange3;
			uniform float _Translucency;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _WeatheringAll;
			uniform float _WeatheringGloss;
			uniform float _AlphaEx;
			SamplerState sampler_MetallicGlossMap;
			uniform float _Float0;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float2 _patternuvbase;
			uniform float _DetailMetallicScale2;
			uniform float _CarvatureStrength;
			uniform float2 _DetailUV2;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float _ExGloss;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex2;
			uniform float4 _EmissionColor;
			SamplerState sampler_DetailMainTex;
			uniform float _DetailUV2Rotator;
			uniform half _DitherSwitch;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _Metallic4;
			uniform float _EmissionStrength;
			uniform float4 _BaseColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WetOpacitySplats;
			uniform float _WetBumpOffset;
			uniform float _WetAlbedoOffset;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetUV;
			uniform float _DetailGlossScale2;
			uniform float4 _WeatheringUV;
			uniform float _WetAlpha;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _AlphaMaster;
			uniform float _WetGlossSplats;
			uniform float4 _BodyColor1;
			uniform float _WetGlossBase;
			uniform float _WetSplatsAlbedoOffset;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailMetallicScale;
			uniform float _WeatheringUVSeed;
			uniform float _TransmissionStrength;
			uniform float _TransDirect;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			SamplerState sampler_linear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			SamplerState sampler_trilinear_repeat;
			uniform float _Roughness;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			uniform float _WeatheringEmission;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			float4 _Noise_TexelSize;
			SamplerState sampler_Noise;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float3 GI2_g140( float3 normal )
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

				float2 uv_MainTex576_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g127 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g127 );
				float3 temp_output_284_0_g127 = (tex2DNode576_g127).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g127 );
				float Carvature270_g127 = tex2DNode196_g127.r;
				float3 lerpResult331_g127 = lerp( ( temp_output_284_0_g127 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g127 * _CarvatureStrength ));
				float WetAlbedoOffset311_g127 = _WetAlbedoOffset;
				float3 temp_output_382_0_g127 = ( lerpResult331_g127 * WetAlbedoOffset311_g127 );
				float WetSplatsAlbedoOffset349_g127 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g127 = lerp( ( temp_output_382_0_g127 * WetSplatsAlbedoOffset349_g127 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g127 = _ExGloss;
				float2 appendResult657_g127 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g127 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g127 = i.ase_texcoord1.xy * appendResult657_g127 + appendResult658_g127;
				float2 WetStrUV669_g127 = texCoord660_g127;
				float WetStr661_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g127 ).g;
				float smoothstepResult651_g127 = smoothstep( ( 1.0 - ExGloss298_g127 ) , 1.0 , WetStr661_g127);
				float StreaksAlpha662_g127 = smoothstepResult651_g127;
				float WetOpStreaks673_g127 = _WetOpacityStreaks;
				float2 appendResult287_g127 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g127 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g127 = i.ase_texcoord1.xy * appendResult287_g127 + appendResult285_g127;
				float2 WetUV578_g127 = texCoord317_g127;
				float WetSplats369_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g127 ).b;
				float SplatsOp363_g127 = _WetOpacitySplats;
				float3 lerpResult460_g127 = lerp( temp_output_382_0_g127 , lerpResult411_g127 , ( ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ) + ( WetSplats369_g127 * SplatsOp363_g127 ) ));
				float2 uv_OcclusionMap429_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g127 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g127 );
				float3 WetBodyOffset422_g127 = (_BodyColor1).rgb;
				float bodycoloralpha417_g127 = _BodyColor1.a;
				float3 lerpResult480_g127 = lerp( lerpResult460_g127 , ( tex2DNode429_g127.a == 1.0 ? lerpResult460_g127 : WetBodyOffset422_g127 ) , ( bodycoloralpha417_g127 * ( 1.0 - tex2DNode429_g127.a ) ));
				float3 lerpResult501_g127 = lerp( lerpResult331_g127 , lerpResult480_g127 , ExGloss298_g127);
				float2 appendResult115_g127 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g127 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g127 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g127 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g127 ) * 43758.55 ) ));
				float2 texCoord127_g127 = i.ase_texcoord1.xy * appendResult115_g127 + ( appendResult110_g127 + lerpResult737_g127 );
				float2 WeatheringUV144_g127 = texCoord127_g127;
				float4 tex2DNode177_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float2 uv_WeatheringMask100_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g127 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g127 );
				float clampResult161_g127 = clamp( ( tex2DNode100_g127.r - tex2DNode100_g127.g ) , 0.0 , 1.0 );
				float WMask1183_g127 = ( clampResult161_g127 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g127 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g127 = clamp( ( ( tex2DNode177_g127.g * WMask1183_g127 ) - RangeCut1208_g127 ) , 0.0 , 1.0 );
				float clampResult159_g127 = clamp( ( tex2DNode100_g127.g - tex2DNode100_g127.r ) , 0.0 , 1.0 );
				float WMask2192_g127 = ( clampResult159_g127 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g127 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g127 = clamp( ( ( tex2DNode177_g127.g * WMask2192_g127 ) - RangeCut2211_g127 ) , 0.0 , 1.0 );
				float WMask3190_g127 = ( tex2DNode100_g127.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g127 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g127 = clamp( ( ( tex2DNode177_g127.g * WMask3190_g127 ) - RangeCut3210_g127 ) , 0.0 , 1.0 );
				float WMask4180_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g127 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g127 = clamp( ( ( tex2DNode177_g127.g * WMask4180_g127 ) - RangeCut4205_g127 ) , 0.0 , 1.0 );
				float WMask5184_g127 = ( ( tex2DNode100_g127.r * tex2DNode100_g127.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g127 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g127 = clamp( ( ( tex2DNode177_g127.g * WMask5184_g127 ) - RangeCut5201_g127 ) , 0.0 , 1.0 );
				float WMaskAll165_g127 = ceil( _WeatheringAll );
				float RangeCutAll171_g127 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g127 = clamp( ( ( tex2DNode177_g127.g * WMaskAll165_g127 ) - RangeCutAll171_g127 ) , 0.0 , 1.0 );
				float clampResult299_g127 = clamp( ( clampResult253_g127 + clampResult251_g127 + clampResult254_g127 + clampResult259_g127 + clampResult261_g127 + clampResult215_g127 ) , 0.0 , 1.0 );
				float lerpResult313_g127 = lerp( clampResult299_g127 , clampResult215_g127 , WMaskAll165_g127);
				float WeatheringAlpha2466_g127 = lerpResult313_g127;
				float3 lerpResult505_g127 = lerp( lerpResult501_g127 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g127 * 0.282353 ));
				float3 DiffuseMix511_g127 = lerpResult505_g127;
				float3 temp_output_1675_0 = DiffuseMix511_g127;
				float2 uv_MetallicGlossMap330_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g127 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g127 );
				float lerpResult399_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask);
				float2 uv_DetailMainTex338_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g127 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g127 );
				float lerpResult395_g127 = lerp( 1.0 , tex2DNode330_g127.r , _MetallicMask4);
				float2 uv_ColorMask304_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g127 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g127 );
				float ColorMask4347_g127 = tex2DNode304_g127.b;
				float lerpResult462_g127 = lerp( ( lerpResult399_g127 * tex2DNode338_g127.r ) , ( lerpResult395_g127 * _Metallic4 ) , ColorMask4347_g127);
				float2 UVScale107_g127 = _UVScalePattern;
				float2 texCoord152_g127 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g127 ) + float2( 0,0 );
				float cos162_g127 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g127 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g127 = mul( texCoord152_g127 - float2( 0.5,0.5 ) , float2x2( cos162_g127 , -sin162_g127 , sin162_g127 , cos162_g127 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g127 = rotator162_g127;
				float Detail1310_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 ).r;
				float2 uv_DetailMask25_g127 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g127 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g127 );
				float DetailMask130_g127 = tex2DNode25_g127.r;
				float2 texCoord16_g127 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g127 ) + float2( 0,0 );
				float cos19_g127 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g127 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g127 = mul( texCoord16_g127 - float2( 0.5,0.5 ) , float2x2( cos19_g127 , -sin19_g127 , sin19_g127 , cos19_g127 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g127 = rotator19_g127;
				float Detail2352_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 ).r;
				float DetailMask235_g127 = tex2DNode25_g127.g;
				float lerpResult495_g127 = lerp( saturate( ( ( lerpResult462_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailMetallicScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailMetallicScale2 * DetailMask235_g127 ) ) ) ) , 0.0 , WeatheringAlpha2466_g127);
				float MetallicFinal512_g127 = saturate( lerpResult495_g127 );
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(temp_output_1675_0,MetallicFinal512_g127,specColor1642,oneMinusReflectivity1642);
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g141 = worldSpaceLightDir;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 viewDir15_g141 = ase_worldViewDir;
				float3 normalizeResult136_g141 = ASESafeNormalize( ( lightDir14_g141 + viewDir15_g141 ) );
				float dotResult137_g141 = dot( lightDir14_g141 , normalizeResult136_g141 );
				float LdotH139_g141 = saturate( dotResult137_g141 );
				float lerpResult353_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness);
				float lerpResult336_g127 = lerp( 1.0 , tex2DNode330_g127.r , _Roughness4);
				float lerpResult384_g127 = lerp( ( lerpResult353_g127 * tex2DNode338_g127.b ) , ( _Glossiness4 * lerpResult336_g127 ) , ColorMask4347_g127);
				float WetGlossBase397_g127 = _WetGlossBase;
				float lerpResult470_g127 = lerp( saturate( ( ( lerpResult384_g127 - ( ( 1.0 - Detail1310_g127 ) * ( _DetailGlossScale * DetailMask130_g127 ) ) ) - ( ( 1.0 - Detail2352_g127 ) * ( _DetailGlossScale2 * DetailMask235_g127 ) ) ) ) , tex2DNode330_g127.a , ( WetGlossBase397_g127 * ExGloss298_g127 ));
				float SplatsGloss407_g127 = _WetGlossSplats;
				float lerpResult664_g127 = lerp( lerpResult470_g127 , SplatsGloss407_g127 , ( SplatsOp363_g127 * ExGloss298_g127 * WetSplats369_g127 ));
				float lerpResult649_g127 = lerp( lerpResult664_g127 , 0.87 , ( WetOpStreaks673_g127 * smoothstepResult651_g127 ));
				float clampResult373_g127 = clamp( ( lerpResult313_g127 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g127 = clampResult373_g127;
				float lerpResult499_g127 = lerp( lerpResult649_g127 , _WeatheringGloss , WeatheringAlpha396_g127);
				float GlossinessFinal513_g127 = saturate( lerpResult499_g127 );
				float temp_output_1675_560 = GlossinessFinal513_g127;
				float smoothness169_g141 = temp_output_1675_560;
				float perceprualRoughness188_g141 = ( 1.0 - smoothness169_g141 );
				half fd90273_g141 = ( 0.5 + ( 2.0 * LdotH139_g141 * LdotH139_g141 * perceprualRoughness188_g141 ) );
				float2 uv_BumpMap402_g127 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g127 = _WetBumpOffset;
				float2 break194_g127 = Detail1UV173_g127;
				float temp_output_186_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g127 = (float2(( break194_g127.x + temp_output_186_0_g127 ) , break194_g127.y));
				float4 tex2DNode243_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g127 );
				float temp_output_255_0_g127 = ( DetailMask130_g127 * _DetailNormalMapScale );
				float3 appendResult300_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float2 appendResult222_g127 = (float2(break194_g127.x , ( break194_g127.y + temp_output_186_0_g127 )));
				float3 appendResult297_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g127 ).g - tex2DNode243_g127.g ) * temp_output_255_0_g127 )));
				float3 normalizeResult348_g127 = normalize( cross( appendResult300_g127 , appendResult297_g127 ) );
				float3 DetailNormal1368_g127 = normalizeResult348_g127;
				float2 break24_g127 = Detail2UV20_g127;
				float temp_output_26_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g127 = (float2(( break24_g127.x + temp_output_26_0_g127 ) , break24_g127.y));
				float4 tex2DNode38_g127 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g127 );
				float temp_output_43_0_g127 = ( DetailMask235_g127 * _DetailNormalMapScale2 );
				float3 appendResult58_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float2 appendResult33_g127 = (float2(break24_g127.x , ( break24_g127.y + temp_output_26_0_g127 )));
				float3 appendResult57_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g127 ).g - tex2DNode38_g127.g ) * temp_output_43_0_g127 )));
				float3 normalizeResult69_g127 = normalize( cross( appendResult58_g127 , appendResult57_g127 ) );
				float3 DetailNormal276_g127 = normalizeResult69_g127;
				float2 break547_g127 = WetStrUV669_g127;
				float temp_output_541_0_g127 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g127 = (float2(( break547_g127.x + temp_output_541_0_g127 ) , break547_g127.y));
				float4 tex2DNode515_g127 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g127 );
				float3 appendResult523_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float2 appendResult534_g127 = (float2(break547_g127.x , ( break547_g127.y + temp_output_541_0_g127 )));
				float3 appendResult542_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g127 ).g - tex2DNode515_g127.g ) * 1.0 )));
				float3 normalizeResult524_g127 = normalize( cross( appendResult523_g127 , appendResult542_g127 ) );
				float3 WetnessNormal545_g127 = normalizeResult524_g127;
				float3 lerpResult98_g127 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g127 ), ( _Float0 + ( WetBumpOffset303_g127 * ExGloss298_g127 ) ) ) , DetailNormal1368_g127 ) , DetailNormal276_g127 ) , WetnessNormal545_g127 , ( StreaksAlpha662_g127 * WetOpStreaks673_g127 ));
				float2 break223_g127 = WeatheringUV144_g127;
				float temp_output_224_0_g127 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g127 = (float2(( break223_g127.x + temp_output_224_0_g127 ) , break223_g127.y));
				float4 tex2DNode266_g127 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 );
				float3 appendResult344_g127 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float2 appendResult252_g127 = (float2(break223_g127.x , ( break223_g127.y + temp_output_224_0_g127 )));
				float3 appendResult339_g127 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g127 ).b - tex2DNode266_g127.b ) * 2.0 )));
				float3 normalizeResult398_g127 = normalize( cross( appendResult344_g127 , appendResult339_g127 ) );
				float3 WeatheringBump425_g127 = normalizeResult398_g127;
				float3 lerpResult87_g127 = lerp( lerpResult98_g127 , WeatheringBump425_g127 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g127 ).b * WeatheringAlpha396_g127 ));
				float3 normalizeResult564_g127 = normalize( lerpResult87_g127 );
				float3 switchResult566_g127 = (((ase_vface>0)?(normalizeResult564_g127):(-normalizeResult564_g127)));
				float3 NormalMix88_g127 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g127 : normalizeResult564_g127 );
				float3 temp_output_1675_557 = NormalMix88_g127;
				float3 temp_output_30_0_g141 = temp_output_1675_557;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal29_g141 = temp_output_30_0_g141;
				float3 worldNormal29_g141 = float3(dot(tanToWorld0,tanNormal29_g141), dot(tanToWorld1,tanNormal29_g141), dot(tanToWorld2,tanNormal29_g141));
				float3 normalizeResult25_g141 = normalize( worldNormal29_g141 );
				float3 normalDir28_g141 = normalizeResult25_g141;
				float dotResult21_g141 = dot( lightDir14_g141 , normalDir28_g141 );
				float NdotL20_g141 = saturate( dotResult21_g141 );
				half lightScatter253_g141 = ( ( ( fd90273_g141 - 1.0 ) * pow( ( 1.0 - NdotL20_g141 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g141 = dot( normalDir28_g141 , viewDir15_g141 );
				float NdotV55_g141 = saturate( dotResult56_g141 );
				half viewScatter254_g141 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g141 ) , 5.0 ) * ( fd90273_g141 - 1.0 ) ) );
				half disneydiffuse251_g141 = ( lightScatter253_g141 * viewScatter254_g141 );
				half Diffuseterm281_g141 = ( disneydiffuse251_g141 * NdotL20_g141 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g141 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g141 = temp_output_30_0_g141;
				float3 tanNormal203_g141 = normal198_g141;
				UnityGIInput data203_g141;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g141 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g141
				data203_g141.lightmapUV = i.ase_lmap;
				#endif //dylm203_g141
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g141
				data203_g141.ambient = i.ase_sh;
				#endif //fsh203_g141
				UnityGI gi203_g141 = UnityGI_Base(data203_g141, 1, float3(dot(tanToWorld0,tanNormal203_g141), dot(tanToWorld1,tanNormal203_g141), dot(tanToWorld2,tanNormal203_g141)));
				float2 uv_OcclusionMap623_g127 = i.ase_texcoord1.xy;
				float lerpResult483_g127 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g127 ).g , _OcculusionStrength);
				float smoothstepResult621_g127 = smoothstep( 0.0 , 0.8 , Detail1310_g127);
				float lerpResult488_g127 = lerp( 1.0 , smoothstepResult621_g127 , ( _DetailOcculusionScale * DetailMask130_g127 ));
				float smoothstepResult622_g127 = smoothstep( 0.0 , 0.8 , Detail2352_g127);
				float lerpResult494_g127 = lerp( 1.0 , smoothstepResult622_g127 , ( _DetailOcculusionScale2 * DetailMask235_g127 ));
				float lerpResult620_g127 = lerp( ( lerpResult483_g127 * lerpResult488_g127 * lerpResult494_g127 ) , 1.0 , WeatheringAlpha396_g127);
				float OcclusionMix509_g127 = saturate( lerpResult620_g127 );
				float temp_output_1675_561 = OcclusionMix509_g127;
				float occlusion306_g141 = temp_output_1675_561;
				half Roughness64_g141 = max( ( perceprualRoughness188_g141 * perceprualRoughness188_g141 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g141 = ( 0.5 / ( ( ( ( NdotV55_g141 * ( 1.0 - Roughness64_g141 ) ) + Roughness64_g141 ) * NdotL20_g141 ) + 1E-05 + ( NdotV55_g141 * ( Roughness64_g141 + ( ( 1.0 - Roughness64_g141 ) * NdotL20_g141 ) ) ) ) );
				float a266_g141 = ( Roughness64_g141 * Roughness64_g141 );
				float3 normalizeResult87_g141 = ASESafeNormalize( ( lightDir14_g141 + viewDir15_g141 ) );
				float dotResult88_g141 = dot( normalDir28_g141 , normalizeResult87_g141 );
				float NdotH90_g141 = saturate( dotResult88_g141 );
				float d99_g141 = ( ( ( ( NdotH90_g141 * a266_g141 ) - NdotH90_g141 ) * NdotH90_g141 ) + 1.0 );
				half GGXTerm43_g141 = ( ( ( 1.0 / UNITY_PI ) * a266_g141 ) / ( ( d99_g141 * d99_g141 ) + 1E-07 ) );
				float temp_output_36_0_g141 = ( SmithJointGGXVisibilityTerm42_g141 * GGXTerm43_g141 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g141 = sqrt( max( 0.0001 , temp_output_36_0_g141 ) );
				#else
				float staticSwitch5_g141 = temp_output_36_0_g141;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g141 = 0.0;
				#else
				float staticSwitch119_g141 = max( 0.0 , ( staticSwitch5_g141 * NdotL20_g141 ) );
				#endif
				float3 SpecColor140_g141 = specColor1642;
				float SpecularTerm34_g141 = ( staticSwitch119_g141 * ( SpecColor140_g141.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g141 = ( ( pow( ( 1.0 - LdotH139_g141 ) , 5.0 ) * ( 1.0 - SpecColor140_g141 ) ) + SpecColor140_g141 );
				half metallic176_g141 = 0.0;
				half localOneMinusReflectivity176_g141 = OneMinusReflectivity( metallic176_g141 );
				half GrazingTerm163_g141 = saturate( ( smoothness169_g141 + ( 1.0 - localOneMinusReflectivity176_g141 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g141).xxx;
				float3 lerpResult159_g141 = lerp( SpecColor140_g141 , temp_cast_3 , pow( ( 1.0 - NdotV55_g141 ) , 5.0 ));
				half3 FresnelLerp165_g141 = lerpResult159_g141;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g141 = ( 1.0 - ( 0.28 * Roughness64_g141 * perceprualRoughness188_g141 ) );
				#else
				float staticSwitch183_g141 = ( 1.0 / ( ( Roughness64_g141 * Roughness64_g141 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g141 = staticSwitch183_g141;
				float3 tanNormal299_g141 = normal198_g141;
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
				Unity_GlossyEnvironmentData g299_g141 = UnityGlossyEnvironmentSetup( smoothness169_g141, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g141), dot(tanToWorld1,tanNormal299_g141), dot(tanToWorld2,tanNormal299_g141)), float3(0,0,0));
				float3 indirectSpecular299_g141 = UnityGI_IndirectSpecular( data, occlusion306_g141, float3(dot(tanToWorld0,tanNormal299_g141), dot(tanToWorld1,tanNormal299_g141), dot(tanToWorld2,tanNormal299_g141)), g299_g141 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g141 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g141 = ( FresnelLerp165_g141 * SurfaceReduction182_g141 * indirectSpecular299_g141 );
				#endif
				float3 ColorTex354_g127 = temp_output_284_0_g127;
				float ColorMask3306_g127 = tex2DNode304_g127.g;
				float3 EC3414_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask3306_g127 ) );
				#ifdef _EMISSIONCOLOR4_ON
				float3 staticSwitch469_g127 = EC3414_g127;
				#else
				float3 staticSwitch469_g127 = ( (_EmissionColor).rgb * _EmissionStrength );
				#endif
				float ColorMask2351_g127 = tex2DNode304_g127.r;
				float3 EC2456_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask2351_g127 ) );
				#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch479_g127 = EC2456_g127;
				#else
				float3 staticSwitch479_g127 = staticSwitch469_g127;
				#endif
				float ColorMask1358_g127 = ( 1.0 - ( tex2DNode304_g127.r + tex2DNode304_g127.g + tex2DNode304_g127.b ) );
				float3 EC1471_g127 = ( ColorTex354_g127 * ( _EmissionStrength * ColorMask1358_g127 ) );
				#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch498_g127 = EC1471_g127;
				#else
				float3 staticSwitch498_g127 = staticSwitch479_g127;
				#endif
				float3 EmissionFinal510_g127 = ( tex2DNode330_g127.g * staticSwitch498_g127 );
				float WeatheringBumpMask718_g127 = tex2DNode177_g127.b;
				float3 temp_output_1675_558 = ( EmissionFinal510_g127 + ( ( WeatheringAlpha2466_g127 * WeatheringBumpMask718_g127 ) * _WeatheringEmission ) );
				float3 tanNormal14_g142 = temp_output_1675_557;
				float3 worldNormal14_g142 = normalize( float3(dot(tanToWorld0,tanNormal14_g142), dot(tanToWorld1,tanNormal14_g142), dot(tanToWorld2,tanNormal14_g142)) );
				float dotResult9_g142 = dot( worldNormal14_g142 , worldSpaceLightDir );
				float3 lerpResult21_g142 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float3 tanNormal27_g139 = temp_output_1675_557;
				float3 worldNormal27_g139 = normalize( float3(dot(tanToWorld0,tanNormal27_g139), dot(tanToWorld1,tanNormal27_g139), dot(tanToWorld2,tanNormal27_g139)) );
				float dotResult20_g139 = dot( ase_worldViewDir , -( ( worldNormal27_g139 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float3 normal2_g140 = worldNormal27_g139;
				float3 localGI2_g140 = GI2_g140( normal2_g140 );
				float Thickness507_g127 = tex2DNode330_g127.b;
				float3 lerpResult39_g139 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				
				float clampResult592_g127 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g127 = tex2DNode196_g127.b;
				float BlueNoise643_g127 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g127 = Dither8x8Bayer( fmod(clipScreen691_g127.x, 8), fmod(clipScreen691_g127.y, 8) );
				float AlphaInput195_g127 = tex2DNode576_g127.a;
				dither691_g127 = step( dither691_g127, AlphaInput195_g127 );
				float dither692_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g127 = step( dither692_g127, AlphaInput195_g127 );
				float2 clipScreen629_g127 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g127 = Dither8x8Bayer( fmod(clipScreen629_g127.x, 8), fmod(clipScreen629_g127.y, 8) );
				float OccAlpha219_g127 = tex2DNode196_g127.a;
				float temp_output_703_0_g127 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g127 , ( _WetAlpha * ExGloss298_g127 ) ) ) ) + WeatheringAlpha2466_g127 );
				dither629_g127 = step( dither629_g127, temp_output_703_0_g127 );
				float dither630_g127 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g127 = step( dither630_g127, temp_output_703_0_g127 );
				float temp_output_1675_637 = ( ( step( pow( ( 1.0 - clampResult592_g127 ) , 0.2 ) , pow( TearingsMask340_g127 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g127 == 0.0 ? dither691_g127 : dither692_g127 ) : AlphaInput195_g127 ) ) * ( BlueNoise643_g127 == 0.0 ? dither629_g127 : dither630_g127 ) );
				
				
				outColor = ( ( ( diffuseAndSpecularFromMetallic1642 * ( ( Diffuseterm281_g141 * lightAtten296_g141 ) + ( gi203_g141.indirect.diffuse * occlusion306_g141 ) ) ) + ( SpecularTerm34_g141 * lightAtten296_g141 * FresnelTerm130_g141 ) + staticSwitch305_g141 ) + temp_output_1675_558 + ( ( max( 0.0 , -dotResult9_g142 ) * lerpResult21_g142 * _TransmissionStrength ) * temp_output_1675_0 ) + ( temp_output_1675_0 * ( ( ( pow( saturate( dotResult20_g139 ) , _TransScattering ) * _TransDirect ) + ( localGI2_g140 * _TransAmbient ) ) * ( _Translucency * Thickness507_g127 ) * lerpResult39_g139 ) ) );
				outAlpha = temp_output_1675_637;
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
6;196.4;1524;688;-1264.958;1917.425;2.54294;True;False
Node;AmplifyShaderEditor.FunctionNode;1675;2466.389,-1306.562;Inherit;False;AIT Clothes Function;0;;127;d0644e5becc3a6145ad3ab18b1d3f488;0;0;9;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;748;FLOAT;562;FLOAT;637
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1642;2806.767,-1421.895;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;1666;3274.805,-1111.581;Inherit;False;Unity Translucency;76;;139;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;43;FLOAT;0;False;46;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1637;3267.098,-1421.206;Inherit;False;GGX Specular Light;-1;;141;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1668;3936.726,-1080.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1639;3278.114,-1250.44;Inherit;False;Unity Transmission;82;;142;9498cceedd4defe45a721369ca43b3c7;0;3;1;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;25;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1662;3344.436,-798.7036;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1679;2816.636,-1288.68;Inherit;False;mixsmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1632;2417.536,-928.0743;Inherit;False;Property;_SHADERTYPE_CLOTHING;_SHADERTYPE_CLOTHING;84;0;Create;True;0;0;0;True;0;False;1;0;1;True;_SHADERTYPE_CLOTHING;Toggle;2;Key0;Key1;Create;False;False;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1643;3781.498,-1001.322;Inherit;False;Deferred Pass;-1;;145;c9afd996879db6041a57a5a508002f59;0;6;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;0;False;4;FLOAT4;0;FLOAT4;1;FLOAT4;12;FLOAT4;18
Node;AmplifyShaderEditor.WireNode;1670;3002.164,-871.062;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1669;3169.065,-974.2378;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1667;4019.301,-1106.132;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1674;2993.059,-824.0263;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1672;3102.304,-921.1324;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1660;2801.748,-774.7798;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.FunctionNode;1661;3043.18,-776.0561;Inherit;False;Global Illumination;-1;;144;618026ac6bfd8394b9cb2d8d0ecddb28;1,19,1;1;37;FLOAT3;0,0,0;False;1;FLOAT3;15
Node;AmplifyShaderEditor.ClipNode;1647;3552.753,-1002.624;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1546;3216.395,-919.2327;Inherit;False;Property;_Cutoff;Cutoff;85;1;[Header];Fetch;True;1;Cutout Setting;0;0;True;0;False;0.5;0.519;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1673;3208.514,-1037.964;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1644;3609.055,-819.3536;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1671;3076.51,-965.1336;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1638;3609.701,-1285.39;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;2433.307,-801.0833;Inherit;False;Property;_CullMode;CullMode;75;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1650;4102.704,-1181.702;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1652;4102.704,-1148.702;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;3;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1651;4121.324,-989.9822;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1649;4102.704,-1287.502;Float;False;True;-1;2;ASEMaterialInspector;0;8;Hanmen/Clothes True Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=-50;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;;0;0;Standard;0;0;4;True;True;True;True;False;;True;0
WireConnection;1642;0;1675;0
WireConnection;1642;1;1675;559
WireConnection;1666;6;1675;0
WireConnection;1666;26;1675;557
WireConnection;1666;43;1675;562
WireConnection;1637;286;1642;0
WireConnection;1637;30;1675;557
WireConnection;1637;146;1642;1
WireConnection;1637;147;1675;560
WireConnection;1637;302;1675;561
WireConnection;1668;0;1675;637
WireConnection;1639;1;1675;0
WireConnection;1639;11;1675;557
WireConnection;1639;25;1675;748
WireConnection;1662;0;1672;0
WireConnection;1662;1;1661;15
WireConnection;1679;0;1675;560
WireConnection;1643;3;1647;0
WireConnection;1643;14;1674;0
WireConnection;1643;20;1644;0
WireConnection;1643;6;1669;0
WireConnection;1643;7;1675;560
WireConnection;1643;4;1675;561
WireConnection;1670;0;1675;558
WireConnection;1669;0;1642;1
WireConnection;1667;0;1668;0
WireConnection;1674;0;1675;557
WireConnection;1672;0;1671;0
WireConnection;1660;0;1675;557
WireConnection;1661;37;1660;0
WireConnection;1647;0;1673;0
WireConnection;1647;1;1675;637
WireConnection;1647;2;1546;0
WireConnection;1673;0;1642;0
WireConnection;1644;0;1670;0
WireConnection;1644;1;1662;0
WireConnection;1671;0;1642;0
WireConnection;1638;0;1637;0
WireConnection;1638;1;1675;558
WireConnection;1638;2;1639;0
WireConnection;1638;3;1666;0
WireConnection;1651;0;1643;0
WireConnection;1651;1;1643;1
WireConnection;1651;2;1643;12
WireConnection;1651;3;1643;18
WireConnection;1649;0;1638;0
WireConnection;1649;1;1667;0
ASEEND*/
//CHKSM=B0AE92C0B0A4B465ED599FA808031726DF85A842
