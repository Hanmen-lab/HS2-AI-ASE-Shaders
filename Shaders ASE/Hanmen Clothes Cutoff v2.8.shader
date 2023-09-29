// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
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
		[Header(Translucency)]_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		_TransmissionShadow("TransmissionShadow", Range( 0 , 1)) = 1
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[Toggle(_SHADERTYPE_CLOTHING)] _SHADERTYPE_CLOTHING("_SHADERTYPE_CLOTHING", Float) = 1
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
		#include "UnityStandardBRDF.cginc"
		#include "Lighting.cginc"
		#include "AutoLight.cginc"
		#include "UnityShaderVariables.cginc"
		#define ASE_NEEDS_VERT_NORMAL
		#define ASE_SHADOWS 1
		#pragma shader_feature _SHADERTYPE_CLOTHING
		#pragma multi_compile __ _SPECULARSETUP_ON
		#pragma multi_compile __ _IRIDISCENT_ON
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
		
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _TransDirect;
		uniform float _TransAmbient;
		uniform float _TransNormalDistortion;
		uniform float _TransScattering;
		uniform float _TransShadow;
		uniform float _TransmissionShadow;
		uniform float _CullMode;
		uniform float _Metallic4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float4 _BaseColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex2;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float _ExGloss;
		uniform float _WetOpacitySplats;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _DetailUV2Rotator;
		SamplerState sampler_DetailMainTex;
		uniform half _DitherSwitch;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _WetGlossBase;
		uniform float4 _BodyColor1;
		uniform float _WetSplatsAlbedoOffset;
		uniform float _TransmissionStrength;
		uniform float _WetGlossSplats;
		uniform float _DetailMetallicScale;
		uniform float _WeatheringUVSeed;
		uniform float _AlphaMaster;
		uniform float4 _WetUV;
		uniform float _WetBumpOffset;
		uniform float _WetAlbedoOffset;
		uniform float _DetailNormalMapScale2;
		uniform float _WetOpacityStreaks;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _WetAlpha;
		uniform float4 _WeatheringUV;
		uniform float _DetailGlossScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float4 _WetStreaksUV;
		uniform float _DetailNormalMapScale;
		uniform float4 _Color;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float4 _WeatheringAlbedo;
		uniform float2 _DetailUV;
		uniform float2 _UVScalePattern;
		uniform float4 _WetColor;
		uniform float _DetailUVRotator;
		uniform float _Float0;
		SamplerState sampler_MetallicGlossMap;
		uniform float _AlphaEx;
		uniform float4 _EmissionColor;
		uniform float2 _DetailUV2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float2 _patternuvbase;
		uniform float _DetailMetallicScale2;
		uniform float _CarvatureStrength;
		uniform float _WeatheringRange5;
		uniform float _WeatheringRange1;
		uniform float _WeatheringGloss;
		uniform float _WeatheringAll;
		uniform float _DitherBlueNoise;
		uniform float _Translucency;
		uniform float _WeatheringRange3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _EmissionStrength;
		uniform float _WeatheringRange4;
		uniform float _WeatheringRange2;
		SamplerState sampler_linear_repeat;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
		uniform float _WeatheringEmission;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		float4 _Noise_TexelSize;
		SamplerState sampler_Noise;
		half OneMinusReflectivity( half metallic )
		{
			   return OneMinusReflectivityFromMetallic(metallic);
		}
		
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
		
		inline float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max( 0.001f , dot( inVec , inVec ) );
			return inVec* rsqrt( dp3);
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

				float2 uv_MainTex576_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g201 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g201 );
				float3 temp_output_284_0_g201 = (tex2DNode576_g201).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g201 );
				float Carvature270_g201 = tex2DNode196_g201.r;
				float3 lerpResult331_g201 = lerp( ( temp_output_284_0_g201 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g201 * _CarvatureStrength ));
				float WetAlbedoOffset311_g201 = _WetAlbedoOffset;
				float3 temp_output_382_0_g201 = ( lerpResult331_g201 * WetAlbedoOffset311_g201 );
				float WetSplatsAlbedoOffset349_g201 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g201 = lerp( ( temp_output_382_0_g201 * WetSplatsAlbedoOffset349_g201 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g201 = _ExGloss;
				float2 appendResult657_g201 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g201 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g201 = i.ase_texcoord1.xy * appendResult657_g201 + appendResult658_g201;
				float2 WetStrUV669_g201 = texCoord660_g201;
				float WetStr661_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g201 ).g;
				float smoothstepResult651_g201 = smoothstep( ( 1.0 - ExGloss298_g201 ) , 1.0 , WetStr661_g201);
				float StreaksAlpha662_g201 = smoothstepResult651_g201;
				float WetOpStreaks673_g201 = _WetOpacityStreaks;
				float2 appendResult287_g201 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g201 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g201 = i.ase_texcoord1.xy * appendResult287_g201 + appendResult285_g201;
				float2 WetUV578_g201 = texCoord317_g201;
				float WetSplats369_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g201 ).b;
				float SplatsOp363_g201 = _WetOpacitySplats;
				float3 lerpResult460_g201 = lerp( temp_output_382_0_g201 , lerpResult411_g201 , ( ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ) + ( WetSplats369_g201 * SplatsOp363_g201 ) ));
				float2 uv_OcclusionMap429_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g201 );
				float3 WetBodyOffset422_g201 = (_BodyColor1).rgb;
				float bodycoloralpha417_g201 = _BodyColor1.a;
				float3 lerpResult480_g201 = lerp( lerpResult460_g201 , ( tex2DNode429_g201.a == 1.0 ? lerpResult460_g201 : WetBodyOffset422_g201 ) , ( bodycoloralpha417_g201 * ( 1.0 - tex2DNode429_g201.a ) ));
				float3 lerpResult501_g201 = lerp( lerpResult331_g201 , lerpResult480_g201 , ExGloss298_g201);
				float2 appendResult115_g201 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g201 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g201 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g201 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g201 ) * 43758.55 ) ));
				float2 texCoord127_g201 = i.ase_texcoord1.xy * appendResult115_g201 + ( appendResult110_g201 + lerpResult737_g201 );
				float2 WeatheringUV144_g201 = texCoord127_g201;
				float4 tex2DNode177_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float2 uv_WeatheringMask100_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g201 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g201 );
				float clampResult161_g201 = clamp( ( tex2DNode100_g201.r - tex2DNode100_g201.g ) , 0.0 , 1.0 );
				float WMask1183_g201 = ( clampResult161_g201 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g201 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g201 = clamp( ( ( tex2DNode177_g201.g * WMask1183_g201 ) - RangeCut1208_g201 ) , 0.0 , 1.0 );
				float clampResult159_g201 = clamp( ( tex2DNode100_g201.g - tex2DNode100_g201.r ) , 0.0 , 1.0 );
				float WMask2192_g201 = ( clampResult159_g201 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g201 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g201 = clamp( ( ( tex2DNode177_g201.g * WMask2192_g201 ) - RangeCut2211_g201 ) , 0.0 , 1.0 );
				float WMask3190_g201 = ( tex2DNode100_g201.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g201 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g201 = clamp( ( ( tex2DNode177_g201.g * WMask3190_g201 ) - RangeCut3210_g201 ) , 0.0 , 1.0 );
				float WMask4180_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g201 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g201 = clamp( ( ( tex2DNode177_g201.g * WMask4180_g201 ) - RangeCut4205_g201 ) , 0.0 , 1.0 );
				float WMask5184_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g201 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g201 = clamp( ( ( tex2DNode177_g201.g * WMask5184_g201 ) - RangeCut5201_g201 ) , 0.0 , 1.0 );
				float WMaskAll165_g201 = ceil( _WeatheringAll );
				float RangeCutAll171_g201 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g201 = clamp( ( ( tex2DNode177_g201.g * WMaskAll165_g201 ) - RangeCutAll171_g201 ) , 0.0 , 1.0 );
				float clampResult299_g201 = clamp( ( clampResult253_g201 + clampResult251_g201 + clampResult254_g201 + clampResult259_g201 + clampResult261_g201 + clampResult215_g201 ) , 0.0 , 1.0 );
				float lerpResult313_g201 = lerp( clampResult299_g201 , clampResult215_g201 , WMaskAll165_g201);
				float WeatheringAlpha2466_g201 = lerpResult313_g201;
				float3 lerpResult505_g201 = lerp( lerpResult501_g201 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g201 * 0.282353 ));
				float3 DiffuseMix511_g201 = lerpResult505_g201;
				float3 temp_output_1757_0 = DiffuseMix511_g201;
				Gradient gradient37_g176 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = Unity_SafeNormalize( ase_tanViewDir );
				float2 uv_BumpMap402_g201 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g201 = _WetBumpOffset;
				float2 UVScale107_g201 = _UVScalePattern;
				float2 texCoord152_g201 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g201 ) + float2( 0,0 );
				float cos162_g201 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g201 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g201 = mul( texCoord152_g201 - float2( 0.5,0.5 ) , float2x2( cos162_g201 , -sin162_g201 , sin162_g201 , cos162_g201 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g201 = rotator162_g201;
				float2 break194_g201 = Detail1UV173_g201;
				float temp_output_186_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g201 = (float2(( break194_g201.x + temp_output_186_0_g201 ) , break194_g201.y));
				float4 tex2DNode243_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 );
				float2 uv_DetailMask25_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g201 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g201 );
				float DetailMask130_g201 = tex2DNode25_g201.r;
				float temp_output_255_0_g201 = ( DetailMask130_g201 * _DetailNormalMapScale );
				float3 appendResult300_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float2 appendResult222_g201 = (float2(break194_g201.x , ( break194_g201.y + temp_output_186_0_g201 )));
				float3 appendResult297_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float3 normalizeResult348_g201 = normalize( cross( appendResult300_g201 , appendResult297_g201 ) );
				float3 DetailNormal1368_g201 = normalizeResult348_g201;
				float2 texCoord16_g201 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g201 ) + float2( 0,0 );
				float cos19_g201 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g201 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g201 = mul( texCoord16_g201 - float2( 0.5,0.5 ) , float2x2( cos19_g201 , -sin19_g201 , sin19_g201 , cos19_g201 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g201 = rotator19_g201;
				float2 break24_g201 = Detail2UV20_g201;
				float temp_output_26_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g201 = (float2(( break24_g201.x + temp_output_26_0_g201 ) , break24_g201.y));
				float4 tex2DNode38_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 );
				float DetailMask235_g201 = tex2DNode25_g201.g;
				float temp_output_43_0_g201 = ( DetailMask235_g201 * _DetailNormalMapScale2 );
				float3 appendResult58_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float2 appendResult33_g201 = (float2(break24_g201.x , ( break24_g201.y + temp_output_26_0_g201 )));
				float3 appendResult57_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float3 normalizeResult69_g201 = normalize( cross( appendResult58_g201 , appendResult57_g201 ) );
				float3 DetailNormal276_g201 = normalizeResult69_g201;
				float2 break547_g201 = WetStrUV669_g201;
				float temp_output_541_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g201 = (float2(( break547_g201.x + temp_output_541_0_g201 ) , break547_g201.y));
				float4 tex2DNode515_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g201 );
				float3 appendResult523_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float2 appendResult534_g201 = (float2(break547_g201.x , ( break547_g201.y + temp_output_541_0_g201 )));
				float3 appendResult542_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float3 normalizeResult524_g201 = normalize( cross( appendResult523_g201 , appendResult542_g201 ) );
				float3 WetnessNormal545_g201 = normalizeResult524_g201;
				float3 lerpResult98_g201 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g201 ), ( _Float0 + ( WetBumpOffset303_g201 * ExGloss298_g201 ) ) ) , DetailNormal1368_g201 ) , DetailNormal276_g201 ) , WetnessNormal545_g201 , ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ));
				float2 break223_g201 = WeatheringUV144_g201;
				float temp_output_224_0_g201 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g201 = (float2(( break223_g201.x + temp_output_224_0_g201 ) , break223_g201.y));
				float4 tex2DNode266_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float3 appendResult344_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float2 appendResult252_g201 = (float2(break223_g201.x , ( break223_g201.y + temp_output_224_0_g201 )));
				float3 appendResult339_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float3 normalizeResult398_g201 = normalize( cross( appendResult344_g201 , appendResult339_g201 ) );
				float3 WeatheringBump425_g201 = normalizeResult398_g201;
				float clampResult373_g201 = clamp( ( lerpResult313_g201 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g201 = clampResult373_g201;
				float3 lerpResult87_g201 = lerp( lerpResult98_g201 , WeatheringBump425_g201 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 ).b * WeatheringAlpha396_g201 ));
				float3 normalizeResult564_g201 = normalize( lerpResult87_g201 );
				float3 switchResult566_g201 = (((ase_vface>0)?(normalizeResult564_g201):(-normalizeResult564_g201)));
				float3 NormalMix88_g201 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g201 : normalizeResult564_g201 );
				float3 temp_output_1757_557 = NormalMix88_g201;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1757_557 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_2 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g176;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1757_0;
				float2 uv_MetallicGlossMap330_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g201 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g201 );
				float lerpResult399_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask);
				float2 uv_DetailMainTex338_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g201 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g201 );
				float lerpResult395_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask4);
				float2 uv_ColorMask304_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g201 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g201 );
				float ColorMask4347_g201 = tex2DNode304_g201.b;
				float lerpResult462_g201 = lerp( ( lerpResult399_g201 * tex2DNode338_g201.r ) , ( lerpResult395_g201 * _Metallic4 ) , ColorMask4347_g201);
				float Detail1310_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 ).r;
				float Detail2352_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 ).r;
				float lerpResult495_g201 = lerp( saturate( ( ( lerpResult462_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailMetallicScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailMetallicScale2 * DetailMask235_g201 ) ) ) ) , 0.0 , WeatheringAlpha2466_g201);
				float MetallicFinal512_g201 = saturate( lerpResult495_g201 );
				float temp_output_1757_559 = MetallicFinal512_g201;
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1757_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1757_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1757_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1757_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g192 = worldSpaceLightDir;
				float3 viewDir15_g192 = ase_worldViewDir;
				float3 normalizeResult136_g192 = ASESafeNormalize( ( lightDir14_g192 + viewDir15_g192 ) );
				float dotResult137_g192 = dot( lightDir14_g192 , normalizeResult136_g192 );
				float LdotH139_g192 = saturate( dotResult137_g192 );
				float lerpResult353_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness);
				float lerpResult336_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness4);
				float lerpResult384_g201 = lerp( ( lerpResult353_g201 * tex2DNode338_g201.b ) , ( _Glossiness4 * lerpResult336_g201 ) , ColorMask4347_g201);
				float WetGlossBase397_g201 = _WetGlossBase;
				float lerpResult470_g201 = lerp( saturate( ( ( lerpResult384_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailGlossScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailGlossScale2 * DetailMask235_g201 ) ) ) ) , tex2DNode330_g201.a , ( WetGlossBase397_g201 * ExGloss298_g201 ));
				float SplatsGloss407_g201 = _WetGlossSplats;
				float lerpResult664_g201 = lerp( lerpResult470_g201 , SplatsGloss407_g201 , ( SplatsOp363_g201 * ExGloss298_g201 * WetSplats369_g201 ));
				float lerpResult649_g201 = lerp( lerpResult664_g201 , 0.87 , ( WetOpStreaks673_g201 * smoothstepResult651_g201 ));
				float lerpResult499_g201 = lerp( lerpResult649_g201 , _WeatheringGloss , WeatheringAlpha396_g201);
				float GlossinessFinal513_g201 = saturate( lerpResult499_g201 );
				float OutSmoothness1687 = GlossinessFinal513_g201;
				float smoothness169_g192 = OutSmoothness1687;
				float perceprualRoughness188_g192 = ( 1.0 - smoothness169_g192 );
				half fd90273_g192 = ( 0.5 + ( 2.0 * LdotH139_g192 * LdotH139_g192 * perceprualRoughness188_g192 ) );
				float3 OutNormal1684 = temp_output_1757_557;
				float3 temp_output_30_0_g192 = OutNormal1684;
				float3 tanNormal29_g192 = temp_output_30_0_g192;
				float3 worldNormal29_g192 = float3(dot(tanToWorld0,tanNormal29_g192), dot(tanToWorld1,tanNormal29_g192), dot(tanToWorld2,tanNormal29_g192));
				float3 normalizeResult25_g192 = normalize( worldNormal29_g192 );
				float3 normalDir28_g192 = normalizeResult25_g192;
				float dotResult21_g192 = dot( lightDir14_g192 , normalDir28_g192 );
				float NdotL20_g192 = saturate( dotResult21_g192 );
				half lightScatter253_g192 = ( ( ( fd90273_g192 - 1.0 ) * pow( ( 1.0 - NdotL20_g192 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g192 = dot( normalDir28_g192 , viewDir15_g192 );
				float NdotV55_g192 = saturate( dotResult56_g192 );
				half viewScatter254_g192 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g192 ) , 5.0 ) * ( fd90273_g192 - 1.0 ) ) );
				half disneydiffuse251_g192 = ( lightScatter253_g192 * viewScatter254_g192 );
				half Diffuseterm281_g192 = ( disneydiffuse251_g192 * NdotL20_g192 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g192 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g192 = temp_output_30_0_g192;
				float3 tanNormal203_g192 = normal198_g192;
				UnityGIInput data203_g192;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g192 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g192
				data203_g192.lightmapUV = i.ase_lmap;
				#endif //dylm203_g192
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g192
				data203_g192.ambient = i.ase_sh;
				#endif //fsh203_g192
				UnityGI gi203_g192 = UnityGI_Base(data203_g192, 1, float3(dot(tanToWorld0,tanNormal203_g192), dot(tanToWorld1,tanNormal203_g192), dot(tanToWorld2,tanNormal203_g192)));
				float2 uv_OcclusionMap623_g201 = i.ase_texcoord1.xy;
				float lerpResult483_g201 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g201 ).g , _OcculusionStrength);
				float smoothstepResult621_g201 = smoothstep( 0.0 , 0.8 , Detail1310_g201);
				float lerpResult488_g201 = lerp( 1.0 , smoothstepResult621_g201 , ( _DetailOcculusionScale * DetailMask130_g201 ));
				float smoothstepResult622_g201 = smoothstep( 0.0 , 0.8 , Detail2352_g201);
				float lerpResult494_g201 = lerp( 1.0 , smoothstepResult622_g201 , ( _DetailOcculusionScale2 * DetailMask235_g201 ));
				float lerpResult620_g201 = lerp( ( lerpResult483_g201 * lerpResult488_g201 * lerpResult494_g201 ) , 1.0 , WeatheringAlpha396_g201);
				float OcclusionMix509_g201 = saturate( lerpResult620_g201 );
				float OutAO1688 = OcclusionMix509_g201;
				float occlusion306_g192 = OutAO1688;
				half Roughness64_g192 = max( ( perceprualRoughness188_g192 * perceprualRoughness188_g192 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g192 = ( 0.5 / ( ( ( ( NdotV55_g192 * ( 1.0 - Roughness64_g192 ) ) + Roughness64_g192 ) * NdotL20_g192 ) + 1E-05 + ( NdotV55_g192 * ( Roughness64_g192 + ( ( 1.0 - Roughness64_g192 ) * NdotL20_g192 ) ) ) ) );
				float a266_g192 = ( Roughness64_g192 * Roughness64_g192 );
				float3 normalizeResult87_g192 = ASESafeNormalize( ( lightDir14_g192 + viewDir15_g192 ) );
				float dotResult88_g192 = dot( normalDir28_g192 , normalizeResult87_g192 );
				float NdotH90_g192 = saturate( dotResult88_g192 );
				float d99_g192 = ( ( ( ( NdotH90_g192 * a266_g192 ) - NdotH90_g192 ) * NdotH90_g192 ) + 1.0 );
				half GGXTerm43_g192 = ( ( ( 1.0 / UNITY_PI ) * a266_g192 ) / ( ( d99_g192 * d99_g192 ) + 1E-07 ) );
				float temp_output_36_0_g192 = ( SmithJointGGXVisibilityTerm42_g192 * GGXTerm43_g192 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g192 = sqrt( max( 0.0001 , temp_output_36_0_g192 ) );
				#else
				float staticSwitch5_g192 = temp_output_36_0_g192;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g192 = 0.0;
				#else
				float staticSwitch119_g192 = max( 0.0 , ( staticSwitch5_g192 * NdotL20_g192 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1757_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g192 = OutSpecular1712;
				float SpecularTerm34_g192 = ( staticSwitch119_g192 * ( SpecColor140_g192.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g192 = ( ( pow( ( 1.0 - LdotH139_g192 ) , 5.0 ) * ( 1.0 - SpecColor140_g192 ) ) + SpecColor140_g192 );
				half metallic176_g192 = 0.0;
				half localOneMinusReflectivity176_g192 = OneMinusReflectivity( metallic176_g192 );
				half GrazingTerm163_g192 = saturate( ( smoothness169_g192 + ( 1.0 - localOneMinusReflectivity176_g192 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g192).xxx;
				float3 lerpResult159_g192 = lerp( SpecColor140_g192 , temp_cast_4 , pow( ( 1.0 - NdotV55_g192 ) , 5.0 ));
				half3 FresnelLerp165_g192 = lerpResult159_g192;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g192 = ( 1.0 - ( 0.28 * Roughness64_g192 * perceprualRoughness188_g192 ) );
				#else
				float staticSwitch183_g192 = ( 1.0 / ( ( Roughness64_g192 * Roughness64_g192 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g192 = staticSwitch183_g192;
				float3 tanNormal299_g192 = normal198_g192;
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
				Unity_GlossyEnvironmentData g299_g192 = UnityGlossyEnvironmentSetup( smoothness169_g192, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g192), dot(tanToWorld1,tanNormal299_g192), dot(tanToWorld2,tanNormal299_g192)), float3(0,0,0));
				float3 indirectSpecular299_g192 = UnityGI_IndirectSpecular( data, occlusion306_g192, float3(dot(tanToWorld0,tanNormal299_g192), dot(tanToWorld1,tanNormal299_g192), dot(tanToWorld2,tanNormal299_g192)), g299_g192 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g192 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g192 = ( FresnelLerp165_g192 * SurfaceReduction182_g192 * indirectSpecular299_g192 );
				#endif
				float WeatheringBumpMask718_g201 = tex2DNode177_g201.b;
				float3 OutEmission1685 = ( ( tex2DNode330_g201.g * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g201 * WeatheringBumpMask718_g201 ) * _WeatheringEmission ) );
				float3 tanNormal14_g195 = OutNormal1684;
				float3 worldNormal14_g195 = normalize( float3(dot(tanToWorld0,tanNormal14_g195), dot(tanToWorld1,tanNormal14_g195), dot(tanToWorld2,tanNormal14_g195)) );
				float dotResult9_g195 = dot( worldNormal14_g195 , worldSpaceLightDir );
				float3 lerpResult21_g195 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float OutTransmission1689 = _TransmissionStrength;
				float3 tanNormal27_g193 = OutNormal1684;
				float3 worldNormal27_g193 = normalize( float3(dot(tanToWorld0,tanNormal27_g193), dot(tanToWorld1,tanNormal27_g193), dot(tanToWorld2,tanNormal27_g193)) );
				float dotResult20_g193 = dot( ase_worldViewDir , -( ( worldNormal27_g193 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g201 = tex2DNode330_g201.b;
				float OutTranslucency1690 = ( _Translucency * Thickness507_g201 );
				float3 lerpResult39_g193 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 appendResult50_g193 = (float3(-worldNormal27_g193.x , -worldNormal27_g193.y , worldNormal27_g193.z));
				UnityGIInput data15_g193;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g193 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g193
				data15_g193.lightmapUV = i.ase_lmap;
				#endif //dylm15_g193
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g193
				data15_g193.ambient = i.ase_sh;
				#endif //fsh15_g193
				UnityGI gi15_g193 = UnityGI_Base(data15_g193, 1, appendResult50_g193);
				
				float clampResult592_g201 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g201 = tex2DNode196_g201.b;
				float BlueNoise643_g201 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g201 = Dither8x8Bayer( fmod(clipScreen691_g201.x, 8), fmod(clipScreen691_g201.y, 8) );
				float AlphaInput195_g201 = tex2DNode576_g201.a;
				dither691_g201 = step( dither691_g201, AlphaInput195_g201 );
				float dither692_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g201 = step( dither692_g201, AlphaInput195_g201 );
				float2 clipScreen629_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g201 = Dither8x8Bayer( fmod(clipScreen629_g201.x, 8), fmod(clipScreen629_g201.y, 8) );
				float OccAlpha219_g201 = tex2DNode196_g201.a;
				float temp_output_703_0_g201 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g201 , ( _WetAlpha * ExGloss298_g201 ) ) ) ) + WeatheringAlpha2466_g201 );
				dither629_g201 = step( dither629_g201, temp_output_703_0_g201 );
				float dither630_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g201 = step( dither630_g201, temp_output_703_0_g201 );
				float OutOp1691 = ( ( step( pow( ( 1.0 - clampResult592_g201 ) , 0.2 ) , pow( TearingsMask340_g201 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g201 == 0.0 ? dither691_g201 : dither692_g201 ) : AlphaInput195_g201 ) ) * ( BlueNoise643_g201 == 0.0 ? dither629_g201 : dither630_g201 ) );
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g192 * lightAtten296_g192 ) + ( gi203_g192.indirect.diffuse * occlusion306_g192 ) ) ) + ( SpecularTerm34_g192 * lightAtten296_g192 * FresnelTerm130_g192 ) + staticSwitch305_g192 ) + OutEmission1685 + ( ( max( 0.0 , -dotResult9_g195 ) * lerpResult21_g195 * OutTransmission1689 ) * OutAlbedo1683 ) + ( ( OutAlbedo1683 * ( ( pow( saturate( dotResult20_g193 ) , _TransScattering ) * _TransDirect ) * OutTranslucency1690 * lerpResult39_g193 ) ) + ( gi15_g193.indirect.diffuse * _TransAmbient ) ) );
				outAlpha = OutOp1691;
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
			#include "UnityStandardBRDF.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
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
			
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransDirect;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransScattering;
			uniform float _TransShadow;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _BaseColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex2;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _DetailUV2Rotator;
			SamplerState sampler_DetailMainTex;
			uniform half _DitherSwitch;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WetGlossBase;
			uniform float4 _BodyColor1;
			uniform float _WetSplatsAlbedoOffset;
			uniform float _TransmissionStrength;
			uniform float _WetGlossSplats;
			uniform float _DetailMetallicScale;
			uniform float _WeatheringUVSeed;
			uniform float _AlphaMaster;
			uniform float4 _WetUV;
			uniform float _WetBumpOffset;
			uniform float _WetAlbedoOffset;
			uniform float _DetailNormalMapScale2;
			uniform float _WetOpacityStreaks;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _WetAlpha;
			uniform float4 _WeatheringUV;
			uniform float _DetailGlossScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			uniform float4 _WetStreaksUV;
			uniform float _DetailNormalMapScale;
			uniform float4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float4 _WeatheringAlbedo;
			uniform float2 _DetailUV;
			uniform float2 _UVScalePattern;
			uniform float4 _WetColor;
			uniform float _DetailUVRotator;
			uniform float _Float0;
			SamplerState sampler_MetallicGlossMap;
			uniform float _AlphaEx;
			uniform float4 _EmissionColor;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float2 _patternuvbase;
			uniform float _DetailMetallicScale2;
			uniform float _CarvatureStrength;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange1;
			uniform float _WeatheringGloss;
			uniform float _WeatheringAll;
			uniform float _DitherBlueNoise;
			uniform float _Translucency;
			uniform float _WeatheringRange3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _EmissionStrength;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange2;
			SamplerState sampler_linear_repeat;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _Roughness;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _WeatheringEmission;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			float4 _Noise_TexelSize;
			SamplerState sampler_Noise;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
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
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
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

				float2 uv_MainTex576_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g201 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g201 );
				float3 temp_output_284_0_g201 = (tex2DNode576_g201).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g201 );
				float Carvature270_g201 = tex2DNode196_g201.r;
				float3 lerpResult331_g201 = lerp( ( temp_output_284_0_g201 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g201 * _CarvatureStrength ));
				float WetAlbedoOffset311_g201 = _WetAlbedoOffset;
				float3 temp_output_382_0_g201 = ( lerpResult331_g201 * WetAlbedoOffset311_g201 );
				float WetSplatsAlbedoOffset349_g201 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g201 = lerp( ( temp_output_382_0_g201 * WetSplatsAlbedoOffset349_g201 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g201 = _ExGloss;
				float2 appendResult657_g201 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g201 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g201 = i.ase_texcoord1.xy * appendResult657_g201 + appendResult658_g201;
				float2 WetStrUV669_g201 = texCoord660_g201;
				float WetStr661_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g201 ).g;
				float smoothstepResult651_g201 = smoothstep( ( 1.0 - ExGloss298_g201 ) , 1.0 , WetStr661_g201);
				float StreaksAlpha662_g201 = smoothstepResult651_g201;
				float WetOpStreaks673_g201 = _WetOpacityStreaks;
				float2 appendResult287_g201 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g201 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g201 = i.ase_texcoord1.xy * appendResult287_g201 + appendResult285_g201;
				float2 WetUV578_g201 = texCoord317_g201;
				float WetSplats369_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g201 ).b;
				float SplatsOp363_g201 = _WetOpacitySplats;
				float3 lerpResult460_g201 = lerp( temp_output_382_0_g201 , lerpResult411_g201 , ( ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ) + ( WetSplats369_g201 * SplatsOp363_g201 ) ));
				float2 uv_OcclusionMap429_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g201 );
				float3 WetBodyOffset422_g201 = (_BodyColor1).rgb;
				float bodycoloralpha417_g201 = _BodyColor1.a;
				float3 lerpResult480_g201 = lerp( lerpResult460_g201 , ( tex2DNode429_g201.a == 1.0 ? lerpResult460_g201 : WetBodyOffset422_g201 ) , ( bodycoloralpha417_g201 * ( 1.0 - tex2DNode429_g201.a ) ));
				float3 lerpResult501_g201 = lerp( lerpResult331_g201 , lerpResult480_g201 , ExGloss298_g201);
				float2 appendResult115_g201 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g201 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g201 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g201 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g201 ) * 43758.55 ) ));
				float2 texCoord127_g201 = i.ase_texcoord1.xy * appendResult115_g201 + ( appendResult110_g201 + lerpResult737_g201 );
				float2 WeatheringUV144_g201 = texCoord127_g201;
				float4 tex2DNode177_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float2 uv_WeatheringMask100_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g201 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g201 );
				float clampResult161_g201 = clamp( ( tex2DNode100_g201.r - tex2DNode100_g201.g ) , 0.0 , 1.0 );
				float WMask1183_g201 = ( clampResult161_g201 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g201 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g201 = clamp( ( ( tex2DNode177_g201.g * WMask1183_g201 ) - RangeCut1208_g201 ) , 0.0 , 1.0 );
				float clampResult159_g201 = clamp( ( tex2DNode100_g201.g - tex2DNode100_g201.r ) , 0.0 , 1.0 );
				float WMask2192_g201 = ( clampResult159_g201 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g201 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g201 = clamp( ( ( tex2DNode177_g201.g * WMask2192_g201 ) - RangeCut2211_g201 ) , 0.0 , 1.0 );
				float WMask3190_g201 = ( tex2DNode100_g201.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g201 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g201 = clamp( ( ( tex2DNode177_g201.g * WMask3190_g201 ) - RangeCut3210_g201 ) , 0.0 , 1.0 );
				float WMask4180_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g201 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g201 = clamp( ( ( tex2DNode177_g201.g * WMask4180_g201 ) - RangeCut4205_g201 ) , 0.0 , 1.0 );
				float WMask5184_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g201 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g201 = clamp( ( ( tex2DNode177_g201.g * WMask5184_g201 ) - RangeCut5201_g201 ) , 0.0 , 1.0 );
				float WMaskAll165_g201 = ceil( _WeatheringAll );
				float RangeCutAll171_g201 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g201 = clamp( ( ( tex2DNode177_g201.g * WMaskAll165_g201 ) - RangeCutAll171_g201 ) , 0.0 , 1.0 );
				float clampResult299_g201 = clamp( ( clampResult253_g201 + clampResult251_g201 + clampResult254_g201 + clampResult259_g201 + clampResult261_g201 + clampResult215_g201 ) , 0.0 , 1.0 );
				float lerpResult313_g201 = lerp( clampResult299_g201 , clampResult215_g201 , WMaskAll165_g201);
				float WeatheringAlpha2466_g201 = lerpResult313_g201;
				float3 lerpResult505_g201 = lerp( lerpResult501_g201 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g201 * 0.282353 ));
				float3 DiffuseMix511_g201 = lerpResult505_g201;
				float3 temp_output_1757_0 = DiffuseMix511_g201;
				Gradient gradient37_g176 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = Unity_SafeNormalize( ase_tanViewDir );
				float2 uv_BumpMap402_g201 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g201 = _WetBumpOffset;
				float2 UVScale107_g201 = _UVScalePattern;
				float2 texCoord152_g201 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g201 ) + float2( 0,0 );
				float cos162_g201 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g201 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g201 = mul( texCoord152_g201 - float2( 0.5,0.5 ) , float2x2( cos162_g201 , -sin162_g201 , sin162_g201 , cos162_g201 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g201 = rotator162_g201;
				float2 break194_g201 = Detail1UV173_g201;
				float temp_output_186_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g201 = (float2(( break194_g201.x + temp_output_186_0_g201 ) , break194_g201.y));
				float4 tex2DNode243_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 );
				float2 uv_DetailMask25_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g201 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g201 );
				float DetailMask130_g201 = tex2DNode25_g201.r;
				float temp_output_255_0_g201 = ( DetailMask130_g201 * _DetailNormalMapScale );
				float3 appendResult300_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float2 appendResult222_g201 = (float2(break194_g201.x , ( break194_g201.y + temp_output_186_0_g201 )));
				float3 appendResult297_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float3 normalizeResult348_g201 = normalize( cross( appendResult300_g201 , appendResult297_g201 ) );
				float3 DetailNormal1368_g201 = normalizeResult348_g201;
				float2 texCoord16_g201 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g201 ) + float2( 0,0 );
				float cos19_g201 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g201 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g201 = mul( texCoord16_g201 - float2( 0.5,0.5 ) , float2x2( cos19_g201 , -sin19_g201 , sin19_g201 , cos19_g201 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g201 = rotator19_g201;
				float2 break24_g201 = Detail2UV20_g201;
				float temp_output_26_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g201 = (float2(( break24_g201.x + temp_output_26_0_g201 ) , break24_g201.y));
				float4 tex2DNode38_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 );
				float DetailMask235_g201 = tex2DNode25_g201.g;
				float temp_output_43_0_g201 = ( DetailMask235_g201 * _DetailNormalMapScale2 );
				float3 appendResult58_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float2 appendResult33_g201 = (float2(break24_g201.x , ( break24_g201.y + temp_output_26_0_g201 )));
				float3 appendResult57_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float3 normalizeResult69_g201 = normalize( cross( appendResult58_g201 , appendResult57_g201 ) );
				float3 DetailNormal276_g201 = normalizeResult69_g201;
				float2 break547_g201 = WetStrUV669_g201;
				float temp_output_541_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g201 = (float2(( break547_g201.x + temp_output_541_0_g201 ) , break547_g201.y));
				float4 tex2DNode515_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g201 );
				float3 appendResult523_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float2 appendResult534_g201 = (float2(break547_g201.x , ( break547_g201.y + temp_output_541_0_g201 )));
				float3 appendResult542_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float3 normalizeResult524_g201 = normalize( cross( appendResult523_g201 , appendResult542_g201 ) );
				float3 WetnessNormal545_g201 = normalizeResult524_g201;
				float3 lerpResult98_g201 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g201 ), ( _Float0 + ( WetBumpOffset303_g201 * ExGloss298_g201 ) ) ) , DetailNormal1368_g201 ) , DetailNormal276_g201 ) , WetnessNormal545_g201 , ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ));
				float2 break223_g201 = WeatheringUV144_g201;
				float temp_output_224_0_g201 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g201 = (float2(( break223_g201.x + temp_output_224_0_g201 ) , break223_g201.y));
				float4 tex2DNode266_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float3 appendResult344_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float2 appendResult252_g201 = (float2(break223_g201.x , ( break223_g201.y + temp_output_224_0_g201 )));
				float3 appendResult339_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float3 normalizeResult398_g201 = normalize( cross( appendResult344_g201 , appendResult339_g201 ) );
				float3 WeatheringBump425_g201 = normalizeResult398_g201;
				float clampResult373_g201 = clamp( ( lerpResult313_g201 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g201 = clampResult373_g201;
				float3 lerpResult87_g201 = lerp( lerpResult98_g201 , WeatheringBump425_g201 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 ).b * WeatheringAlpha396_g201 ));
				float3 normalizeResult564_g201 = normalize( lerpResult87_g201 );
				float3 switchResult566_g201 = (((ase_vface>0)?(normalizeResult564_g201):(-normalizeResult564_g201)));
				float3 NormalMix88_g201 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g201 : normalizeResult564_g201 );
				float3 temp_output_1757_557 = NormalMix88_g201;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1757_557 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_2 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g176;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1757_0;
				float2 uv_MetallicGlossMap330_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g201 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g201 );
				float lerpResult399_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask);
				float2 uv_DetailMainTex338_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g201 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g201 );
				float lerpResult395_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask4);
				float2 uv_ColorMask304_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g201 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g201 );
				float ColorMask4347_g201 = tex2DNode304_g201.b;
				float lerpResult462_g201 = lerp( ( lerpResult399_g201 * tex2DNode338_g201.r ) , ( lerpResult395_g201 * _Metallic4 ) , ColorMask4347_g201);
				float Detail1310_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 ).r;
				float Detail2352_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 ).r;
				float lerpResult495_g201 = lerp( saturate( ( ( lerpResult462_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailMetallicScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailMetallicScale2 * DetailMask235_g201 ) ) ) ) , 0.0 , WeatheringAlpha2466_g201);
				float MetallicFinal512_g201 = saturate( lerpResult495_g201 );
				float temp_output_1757_559 = MetallicFinal512_g201;
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1757_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1757_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1757_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1757_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g192 = worldSpaceLightDir;
				float3 viewDir15_g192 = ase_worldViewDir;
				float3 normalizeResult136_g192 = ASESafeNormalize( ( lightDir14_g192 + viewDir15_g192 ) );
				float dotResult137_g192 = dot( lightDir14_g192 , normalizeResult136_g192 );
				float LdotH139_g192 = saturate( dotResult137_g192 );
				float lerpResult353_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness);
				float lerpResult336_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness4);
				float lerpResult384_g201 = lerp( ( lerpResult353_g201 * tex2DNode338_g201.b ) , ( _Glossiness4 * lerpResult336_g201 ) , ColorMask4347_g201);
				float WetGlossBase397_g201 = _WetGlossBase;
				float lerpResult470_g201 = lerp( saturate( ( ( lerpResult384_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailGlossScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailGlossScale2 * DetailMask235_g201 ) ) ) ) , tex2DNode330_g201.a , ( WetGlossBase397_g201 * ExGloss298_g201 ));
				float SplatsGloss407_g201 = _WetGlossSplats;
				float lerpResult664_g201 = lerp( lerpResult470_g201 , SplatsGloss407_g201 , ( SplatsOp363_g201 * ExGloss298_g201 * WetSplats369_g201 ));
				float lerpResult649_g201 = lerp( lerpResult664_g201 , 0.87 , ( WetOpStreaks673_g201 * smoothstepResult651_g201 ));
				float lerpResult499_g201 = lerp( lerpResult649_g201 , _WeatheringGloss , WeatheringAlpha396_g201);
				float GlossinessFinal513_g201 = saturate( lerpResult499_g201 );
				float OutSmoothness1687 = GlossinessFinal513_g201;
				float smoothness169_g192 = OutSmoothness1687;
				float perceprualRoughness188_g192 = ( 1.0 - smoothness169_g192 );
				half fd90273_g192 = ( 0.5 + ( 2.0 * LdotH139_g192 * LdotH139_g192 * perceprualRoughness188_g192 ) );
				float3 OutNormal1684 = temp_output_1757_557;
				float3 temp_output_30_0_g192 = OutNormal1684;
				float3 tanNormal29_g192 = temp_output_30_0_g192;
				float3 worldNormal29_g192 = float3(dot(tanToWorld0,tanNormal29_g192), dot(tanToWorld1,tanNormal29_g192), dot(tanToWorld2,tanNormal29_g192));
				float3 normalizeResult25_g192 = normalize( worldNormal29_g192 );
				float3 normalDir28_g192 = normalizeResult25_g192;
				float dotResult21_g192 = dot( lightDir14_g192 , normalDir28_g192 );
				float NdotL20_g192 = saturate( dotResult21_g192 );
				half lightScatter253_g192 = ( ( ( fd90273_g192 - 1.0 ) * pow( ( 1.0 - NdotL20_g192 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g192 = dot( normalDir28_g192 , viewDir15_g192 );
				float NdotV55_g192 = saturate( dotResult56_g192 );
				half viewScatter254_g192 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g192 ) , 5.0 ) * ( fd90273_g192 - 1.0 ) ) );
				half disneydiffuse251_g192 = ( lightScatter253_g192 * viewScatter254_g192 );
				half Diffuseterm281_g192 = ( disneydiffuse251_g192 * NdotL20_g192 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g192 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g192 = temp_output_30_0_g192;
				float3 tanNormal203_g192 = normal198_g192;
				UnityGIInput data203_g192;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g192 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g192
				data203_g192.lightmapUV = i.ase_lmap;
				#endif //dylm203_g192
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g192
				data203_g192.ambient = i.ase_sh;
				#endif //fsh203_g192
				UnityGI gi203_g192 = UnityGI_Base(data203_g192, 1, float3(dot(tanToWorld0,tanNormal203_g192), dot(tanToWorld1,tanNormal203_g192), dot(tanToWorld2,tanNormal203_g192)));
				float2 uv_OcclusionMap623_g201 = i.ase_texcoord1.xy;
				float lerpResult483_g201 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g201 ).g , _OcculusionStrength);
				float smoothstepResult621_g201 = smoothstep( 0.0 , 0.8 , Detail1310_g201);
				float lerpResult488_g201 = lerp( 1.0 , smoothstepResult621_g201 , ( _DetailOcculusionScale * DetailMask130_g201 ));
				float smoothstepResult622_g201 = smoothstep( 0.0 , 0.8 , Detail2352_g201);
				float lerpResult494_g201 = lerp( 1.0 , smoothstepResult622_g201 , ( _DetailOcculusionScale2 * DetailMask235_g201 ));
				float lerpResult620_g201 = lerp( ( lerpResult483_g201 * lerpResult488_g201 * lerpResult494_g201 ) , 1.0 , WeatheringAlpha396_g201);
				float OcclusionMix509_g201 = saturate( lerpResult620_g201 );
				float OutAO1688 = OcclusionMix509_g201;
				float occlusion306_g192 = OutAO1688;
				half Roughness64_g192 = max( ( perceprualRoughness188_g192 * perceprualRoughness188_g192 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g192 = ( 0.5 / ( ( ( ( NdotV55_g192 * ( 1.0 - Roughness64_g192 ) ) + Roughness64_g192 ) * NdotL20_g192 ) + 1E-05 + ( NdotV55_g192 * ( Roughness64_g192 + ( ( 1.0 - Roughness64_g192 ) * NdotL20_g192 ) ) ) ) );
				float a266_g192 = ( Roughness64_g192 * Roughness64_g192 );
				float3 normalizeResult87_g192 = ASESafeNormalize( ( lightDir14_g192 + viewDir15_g192 ) );
				float dotResult88_g192 = dot( normalDir28_g192 , normalizeResult87_g192 );
				float NdotH90_g192 = saturate( dotResult88_g192 );
				float d99_g192 = ( ( ( ( NdotH90_g192 * a266_g192 ) - NdotH90_g192 ) * NdotH90_g192 ) + 1.0 );
				half GGXTerm43_g192 = ( ( ( 1.0 / UNITY_PI ) * a266_g192 ) / ( ( d99_g192 * d99_g192 ) + 1E-07 ) );
				float temp_output_36_0_g192 = ( SmithJointGGXVisibilityTerm42_g192 * GGXTerm43_g192 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g192 = sqrt( max( 0.0001 , temp_output_36_0_g192 ) );
				#else
				float staticSwitch5_g192 = temp_output_36_0_g192;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g192 = 0.0;
				#else
				float staticSwitch119_g192 = max( 0.0 , ( staticSwitch5_g192 * NdotL20_g192 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1757_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g192 = OutSpecular1712;
				float SpecularTerm34_g192 = ( staticSwitch119_g192 * ( SpecColor140_g192.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g192 = ( ( pow( ( 1.0 - LdotH139_g192 ) , 5.0 ) * ( 1.0 - SpecColor140_g192 ) ) + SpecColor140_g192 );
				half metallic176_g192 = 0.0;
				half localOneMinusReflectivity176_g192 = OneMinusReflectivity( metallic176_g192 );
				half GrazingTerm163_g192 = saturate( ( smoothness169_g192 + ( 1.0 - localOneMinusReflectivity176_g192 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g192).xxx;
				float3 lerpResult159_g192 = lerp( SpecColor140_g192 , temp_cast_4 , pow( ( 1.0 - NdotV55_g192 ) , 5.0 ));
				half3 FresnelLerp165_g192 = lerpResult159_g192;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g192 = ( 1.0 - ( 0.28 * Roughness64_g192 * perceprualRoughness188_g192 ) );
				#else
				float staticSwitch183_g192 = ( 1.0 / ( ( Roughness64_g192 * Roughness64_g192 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g192 = staticSwitch183_g192;
				float3 tanNormal299_g192 = normal198_g192;
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
				Unity_GlossyEnvironmentData g299_g192 = UnityGlossyEnvironmentSetup( smoothness169_g192, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g192), dot(tanToWorld1,tanNormal299_g192), dot(tanToWorld2,tanNormal299_g192)), float3(0,0,0));
				float3 indirectSpecular299_g192 = UnityGI_IndirectSpecular( data, occlusion306_g192, float3(dot(tanToWorld0,tanNormal299_g192), dot(tanToWorld1,tanNormal299_g192), dot(tanToWorld2,tanNormal299_g192)), g299_g192 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g192 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g192 = ( FresnelLerp165_g192 * SurfaceReduction182_g192 * indirectSpecular299_g192 );
				#endif
				float WeatheringBumpMask718_g201 = tex2DNode177_g201.b;
				float3 OutEmission1685 = ( ( tex2DNode330_g201.g * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g201 * WeatheringBumpMask718_g201 ) * _WeatheringEmission ) );
				float3 tanNormal14_g195 = OutNormal1684;
				float3 worldNormal14_g195 = normalize( float3(dot(tanToWorld0,tanNormal14_g195), dot(tanToWorld1,tanNormal14_g195), dot(tanToWorld2,tanNormal14_g195)) );
				float dotResult9_g195 = dot( worldNormal14_g195 , worldSpaceLightDir );
				float3 lerpResult21_g195 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float OutTransmission1689 = _TransmissionStrength;
				float3 tanNormal27_g193 = OutNormal1684;
				float3 worldNormal27_g193 = normalize( float3(dot(tanToWorld0,tanNormal27_g193), dot(tanToWorld1,tanNormal27_g193), dot(tanToWorld2,tanNormal27_g193)) );
				float dotResult20_g193 = dot( ase_worldViewDir , -( ( worldNormal27_g193 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g201 = tex2DNode330_g201.b;
				float OutTranslucency1690 = ( _Translucency * Thickness507_g201 );
				float3 lerpResult39_g193 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 appendResult50_g193 = (float3(-worldNormal27_g193.x , -worldNormal27_g193.y , worldNormal27_g193.z));
				UnityGIInput data15_g193;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g193 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g193
				data15_g193.lightmapUV = i.ase_lmap;
				#endif //dylm15_g193
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g193
				data15_g193.ambient = i.ase_sh;
				#endif //fsh15_g193
				UnityGI gi15_g193 = UnityGI_Base(data15_g193, 1, appendResult50_g193);
				
				float clampResult592_g201 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g201 = tex2DNode196_g201.b;
				float BlueNoise643_g201 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g201 = Dither8x8Bayer( fmod(clipScreen691_g201.x, 8), fmod(clipScreen691_g201.y, 8) );
				float AlphaInput195_g201 = tex2DNode576_g201.a;
				dither691_g201 = step( dither691_g201, AlphaInput195_g201 );
				float dither692_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g201 = step( dither692_g201, AlphaInput195_g201 );
				float2 clipScreen629_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g201 = Dither8x8Bayer( fmod(clipScreen629_g201.x, 8), fmod(clipScreen629_g201.y, 8) );
				float OccAlpha219_g201 = tex2DNode196_g201.a;
				float temp_output_703_0_g201 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g201 , ( _WetAlpha * ExGloss298_g201 ) ) ) ) + WeatheringAlpha2466_g201 );
				dither629_g201 = step( dither629_g201, temp_output_703_0_g201 );
				float dither630_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g201 = step( dither630_g201, temp_output_703_0_g201 );
				float OutOp1691 = ( ( step( pow( ( 1.0 - clampResult592_g201 ) , 0.2 ) , pow( TearingsMask340_g201 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g201 == 0.0 ? dither691_g201 : dither692_g201 ) : AlphaInput195_g201 ) ) * ( BlueNoise643_g201 == 0.0 ? dither629_g201 : dither630_g201 ) );
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g192 * lightAtten296_g192 ) + ( gi203_g192.indirect.diffuse * occlusion306_g192 ) ) ) + ( SpecularTerm34_g192 * lightAtten296_g192 * FresnelTerm130_g192 ) + staticSwitch305_g192 ) + OutEmission1685 + ( ( max( 0.0 , -dotResult9_g195 ) * lerpResult21_g195 * OutTransmission1689 ) * OutAlbedo1683 ) + ( ( OutAlbedo1683 * ( ( pow( saturate( dotResult20_g193 ) , _TransScattering ) * _TransDirect ) * OutTranslucency1690 * lerpResult39_g193 ) ) + ( gi15_g193.indirect.diffuse * _TransAmbient ) ) );
				outAlpha = OutOp1691;
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
			#include "UnityStandardBRDF.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
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
			

			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransDirect;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransScattering;
			uniform float _TransShadow;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _BaseColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex2;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _DetailUV2Rotator;
			SamplerState sampler_DetailMainTex;
			uniform half _DitherSwitch;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WetGlossBase;
			uniform float4 _BodyColor1;
			uniform float _WetSplatsAlbedoOffset;
			uniform float _TransmissionStrength;
			uniform float _WetGlossSplats;
			uniform float _DetailMetallicScale;
			uniform float _WeatheringUVSeed;
			uniform float _AlphaMaster;
			uniform float4 _WetUV;
			uniform float _WetBumpOffset;
			uniform float _WetAlbedoOffset;
			uniform float _DetailNormalMapScale2;
			uniform float _WetOpacityStreaks;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _WetAlpha;
			uniform float4 _WeatheringUV;
			uniform float _DetailGlossScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			uniform float4 _WetStreaksUV;
			uniform float _DetailNormalMapScale;
			uniform float4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float4 _WeatheringAlbedo;
			uniform float2 _DetailUV;
			uniform float2 _UVScalePattern;
			uniform float4 _WetColor;
			uniform float _DetailUVRotator;
			uniform float _Float0;
			SamplerState sampler_MetallicGlossMap;
			uniform float _AlphaEx;
			uniform float4 _EmissionColor;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float2 _patternuvbase;
			uniform float _DetailMetallicScale2;
			uniform float _CarvatureStrength;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange1;
			uniform float _WeatheringGloss;
			uniform float _WeatheringAll;
			uniform float _DitherBlueNoise;
			uniform float _Translucency;
			uniform float _WeatheringRange3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _EmissionStrength;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange2;
			SamplerState sampler_linear_repeat;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			float4 _Noise_TexelSize;
			SamplerState sampler_Noise;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _Roughness;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _WeatheringEmission;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
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
			
			float3 GI2_g200( float3 normal )
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
				float4 ase_texcoord6 : TEXCOORD6;
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
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord6 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
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
				float2 uv_MainTex576_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g201 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g201 );
				float3 temp_output_284_0_g201 = (tex2DNode576_g201).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g201 );
				float Carvature270_g201 = tex2DNode196_g201.r;
				float3 lerpResult331_g201 = lerp( ( temp_output_284_0_g201 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g201 * _CarvatureStrength ));
				float WetAlbedoOffset311_g201 = _WetAlbedoOffset;
				float3 temp_output_382_0_g201 = ( lerpResult331_g201 * WetAlbedoOffset311_g201 );
				float WetSplatsAlbedoOffset349_g201 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g201 = lerp( ( temp_output_382_0_g201 * WetSplatsAlbedoOffset349_g201 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g201 = _ExGloss;
				float2 appendResult657_g201 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g201 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g201 = i.ase_texcoord1.xy * appendResult657_g201 + appendResult658_g201;
				float2 WetStrUV669_g201 = texCoord660_g201;
				float WetStr661_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g201 ).g;
				float smoothstepResult651_g201 = smoothstep( ( 1.0 - ExGloss298_g201 ) , 1.0 , WetStr661_g201);
				float StreaksAlpha662_g201 = smoothstepResult651_g201;
				float WetOpStreaks673_g201 = _WetOpacityStreaks;
				float2 appendResult287_g201 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g201 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g201 = i.ase_texcoord1.xy * appendResult287_g201 + appendResult285_g201;
				float2 WetUV578_g201 = texCoord317_g201;
				float WetSplats369_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g201 ).b;
				float SplatsOp363_g201 = _WetOpacitySplats;
				float3 lerpResult460_g201 = lerp( temp_output_382_0_g201 , lerpResult411_g201 , ( ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ) + ( WetSplats369_g201 * SplatsOp363_g201 ) ));
				float2 uv_OcclusionMap429_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g201 );
				float3 WetBodyOffset422_g201 = (_BodyColor1).rgb;
				float bodycoloralpha417_g201 = _BodyColor1.a;
				float3 lerpResult480_g201 = lerp( lerpResult460_g201 , ( tex2DNode429_g201.a == 1.0 ? lerpResult460_g201 : WetBodyOffset422_g201 ) , ( bodycoloralpha417_g201 * ( 1.0 - tex2DNode429_g201.a ) ));
				float3 lerpResult501_g201 = lerp( lerpResult331_g201 , lerpResult480_g201 , ExGloss298_g201);
				float2 appendResult115_g201 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g201 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g201 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g201 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g201 ) * 43758.55 ) ));
				float2 texCoord127_g201 = i.ase_texcoord1.xy * appendResult115_g201 + ( appendResult110_g201 + lerpResult737_g201 );
				float2 WeatheringUV144_g201 = texCoord127_g201;
				float4 tex2DNode177_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float2 uv_WeatheringMask100_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g201 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g201 );
				float clampResult161_g201 = clamp( ( tex2DNode100_g201.r - tex2DNode100_g201.g ) , 0.0 , 1.0 );
				float WMask1183_g201 = ( clampResult161_g201 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g201 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g201 = clamp( ( ( tex2DNode177_g201.g * WMask1183_g201 ) - RangeCut1208_g201 ) , 0.0 , 1.0 );
				float clampResult159_g201 = clamp( ( tex2DNode100_g201.g - tex2DNode100_g201.r ) , 0.0 , 1.0 );
				float WMask2192_g201 = ( clampResult159_g201 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g201 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g201 = clamp( ( ( tex2DNode177_g201.g * WMask2192_g201 ) - RangeCut2211_g201 ) , 0.0 , 1.0 );
				float WMask3190_g201 = ( tex2DNode100_g201.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g201 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g201 = clamp( ( ( tex2DNode177_g201.g * WMask3190_g201 ) - RangeCut3210_g201 ) , 0.0 , 1.0 );
				float WMask4180_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g201 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g201 = clamp( ( ( tex2DNode177_g201.g * WMask4180_g201 ) - RangeCut4205_g201 ) , 0.0 , 1.0 );
				float WMask5184_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g201 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g201 = clamp( ( ( tex2DNode177_g201.g * WMask5184_g201 ) - RangeCut5201_g201 ) , 0.0 , 1.0 );
				float WMaskAll165_g201 = ceil( _WeatheringAll );
				float RangeCutAll171_g201 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g201 = clamp( ( ( tex2DNode177_g201.g * WMaskAll165_g201 ) - RangeCutAll171_g201 ) , 0.0 , 1.0 );
				float clampResult299_g201 = clamp( ( clampResult253_g201 + clampResult251_g201 + clampResult254_g201 + clampResult259_g201 + clampResult261_g201 + clampResult215_g201 ) , 0.0 , 1.0 );
				float lerpResult313_g201 = lerp( clampResult299_g201 , clampResult215_g201 , WMaskAll165_g201);
				float WeatheringAlpha2466_g201 = lerpResult313_g201;
				float3 lerpResult505_g201 = lerp( lerpResult501_g201 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g201 * 0.282353 ));
				float3 DiffuseMix511_g201 = lerpResult505_g201;
				float3 temp_output_1757_0 = DiffuseMix511_g201;
				Gradient gradient37_g176 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = Unity_SafeNormalize( ase_tanViewDir );
				float2 uv_BumpMap402_g201 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g201 = _WetBumpOffset;
				float2 UVScale107_g201 = _UVScalePattern;
				float2 texCoord152_g201 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g201 ) + float2( 0,0 );
				float cos162_g201 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g201 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g201 = mul( texCoord152_g201 - float2( 0.5,0.5 ) , float2x2( cos162_g201 , -sin162_g201 , sin162_g201 , cos162_g201 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g201 = rotator162_g201;
				float2 break194_g201 = Detail1UV173_g201;
				float temp_output_186_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g201 = (float2(( break194_g201.x + temp_output_186_0_g201 ) , break194_g201.y));
				float4 tex2DNode243_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 );
				float2 uv_DetailMask25_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g201 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g201 );
				float DetailMask130_g201 = tex2DNode25_g201.r;
				float temp_output_255_0_g201 = ( DetailMask130_g201 * _DetailNormalMapScale );
				float3 appendResult300_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float2 appendResult222_g201 = (float2(break194_g201.x , ( break194_g201.y + temp_output_186_0_g201 )));
				float3 appendResult297_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float3 normalizeResult348_g201 = normalize( cross( appendResult300_g201 , appendResult297_g201 ) );
				float3 DetailNormal1368_g201 = normalizeResult348_g201;
				float2 texCoord16_g201 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g201 ) + float2( 0,0 );
				float cos19_g201 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g201 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g201 = mul( texCoord16_g201 - float2( 0.5,0.5 ) , float2x2( cos19_g201 , -sin19_g201 , sin19_g201 , cos19_g201 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g201 = rotator19_g201;
				float2 break24_g201 = Detail2UV20_g201;
				float temp_output_26_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g201 = (float2(( break24_g201.x + temp_output_26_0_g201 ) , break24_g201.y));
				float4 tex2DNode38_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 );
				float DetailMask235_g201 = tex2DNode25_g201.g;
				float temp_output_43_0_g201 = ( DetailMask235_g201 * _DetailNormalMapScale2 );
				float3 appendResult58_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float2 appendResult33_g201 = (float2(break24_g201.x , ( break24_g201.y + temp_output_26_0_g201 )));
				float3 appendResult57_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float3 normalizeResult69_g201 = normalize( cross( appendResult58_g201 , appendResult57_g201 ) );
				float3 DetailNormal276_g201 = normalizeResult69_g201;
				float2 break547_g201 = WetStrUV669_g201;
				float temp_output_541_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g201 = (float2(( break547_g201.x + temp_output_541_0_g201 ) , break547_g201.y));
				float4 tex2DNode515_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g201 );
				float3 appendResult523_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float2 appendResult534_g201 = (float2(break547_g201.x , ( break547_g201.y + temp_output_541_0_g201 )));
				float3 appendResult542_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float3 normalizeResult524_g201 = normalize( cross( appendResult523_g201 , appendResult542_g201 ) );
				float3 WetnessNormal545_g201 = normalizeResult524_g201;
				float3 lerpResult98_g201 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g201 ), ( _Float0 + ( WetBumpOffset303_g201 * ExGloss298_g201 ) ) ) , DetailNormal1368_g201 ) , DetailNormal276_g201 ) , WetnessNormal545_g201 , ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ));
				float2 break223_g201 = WeatheringUV144_g201;
				float temp_output_224_0_g201 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g201 = (float2(( break223_g201.x + temp_output_224_0_g201 ) , break223_g201.y));
				float4 tex2DNode266_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float3 appendResult344_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float2 appendResult252_g201 = (float2(break223_g201.x , ( break223_g201.y + temp_output_224_0_g201 )));
				float3 appendResult339_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float3 normalizeResult398_g201 = normalize( cross( appendResult344_g201 , appendResult339_g201 ) );
				float3 WeatheringBump425_g201 = normalizeResult398_g201;
				float clampResult373_g201 = clamp( ( lerpResult313_g201 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g201 = clampResult373_g201;
				float3 lerpResult87_g201 = lerp( lerpResult98_g201 , WeatheringBump425_g201 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 ).b * WeatheringAlpha396_g201 ));
				float3 normalizeResult564_g201 = normalize( lerpResult87_g201 );
				float3 switchResult566_g201 = (((ase_vface>0)?(normalizeResult564_g201):(-normalizeResult564_g201)));
				float3 NormalMix88_g201 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g201 : normalizeResult564_g201 );
				float3 temp_output_1757_557 = NormalMix88_g201;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1757_557 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_2 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g176;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1757_0;
				float2 uv_MetallicGlossMap330_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g201 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g201 );
				float lerpResult399_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask);
				float2 uv_DetailMainTex338_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g201 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g201 );
				float lerpResult395_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask4);
				float2 uv_ColorMask304_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g201 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g201 );
				float ColorMask4347_g201 = tex2DNode304_g201.b;
				float lerpResult462_g201 = lerp( ( lerpResult399_g201 * tex2DNode338_g201.r ) , ( lerpResult395_g201 * _Metallic4 ) , ColorMask4347_g201);
				float Detail1310_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 ).r;
				float Detail2352_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 ).r;
				float lerpResult495_g201 = lerp( saturate( ( ( lerpResult462_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailMetallicScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailMetallicScale2 * DetailMask235_g201 ) ) ) ) , 0.0 , WeatheringAlpha2466_g201);
				float MetallicFinal512_g201 = saturate( lerpResult495_g201 );
				float temp_output_1757_559 = MetallicFinal512_g201;
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1757_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1757_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1757_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1757_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float clampResult592_g201 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g201 = tex2DNode196_g201.b;
				float BlueNoise643_g201 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g201 = Dither8x8Bayer( fmod(clipScreen691_g201.x, 8), fmod(clipScreen691_g201.y, 8) );
				float AlphaInput195_g201 = tex2DNode576_g201.a;
				dither691_g201 = step( dither691_g201, AlphaInput195_g201 );
				float dither692_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g201 = step( dither692_g201, AlphaInput195_g201 );
				float2 clipScreen629_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g201 = Dither8x8Bayer( fmod(clipScreen629_g201.x, 8), fmod(clipScreen629_g201.y, 8) );
				float OccAlpha219_g201 = tex2DNode196_g201.a;
				float temp_output_703_0_g201 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g201 , ( _WetAlpha * ExGloss298_g201 ) ) ) ) + WeatheringAlpha2466_g201 );
				dither629_g201 = step( dither629_g201, temp_output_703_0_g201 );
				float dither630_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g201 = step( dither630_g201, temp_output_703_0_g201 );
				float OutOp1691 = ( ( step( pow( ( 1.0 - clampResult592_g201 ) , 0.2 ) , pow( TearingsMask340_g201 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g201 == 0.0 ? dither691_g201 : dither692_g201 ) : AlphaInput195_g201 ) ) * ( BlueNoise643_g201 == 0.0 ? dither629_g201 : dither630_g201 ) );
				clip( OutOp1691 - _Cutoff);
				float2 uv_OcclusionMap623_g201 = i.ase_texcoord1.xy;
				float lerpResult483_g201 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g201 ).g , _OcculusionStrength);
				float smoothstepResult621_g201 = smoothstep( 0.0 , 0.8 , Detail1310_g201);
				float lerpResult488_g201 = lerp( 1.0 , smoothstepResult621_g201 , ( _DetailOcculusionScale * DetailMask130_g201 ));
				float smoothstepResult622_g201 = smoothstep( 0.0 , 0.8 , Detail2352_g201);
				float lerpResult494_g201 = lerp( 1.0 , smoothstepResult622_g201 , ( _DetailOcculusionScale2 * DetailMask235_g201 ));
				float lerpResult620_g201 = lerp( ( lerpResult483_g201 * lerpResult488_g201 * lerpResult494_g201 ) , 1.0 , WeatheringAlpha396_g201);
				float OcclusionMix509_g201 = saturate( lerpResult620_g201 );
				float OutAO1688 = OcclusionMix509_g201;
				float4 appendResult2_g199 = (float4(OutAlbedo1683 , OutAO1688));
				
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1757_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float lerpResult353_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness);
				float lerpResult336_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness4);
				float lerpResult384_g201 = lerp( ( lerpResult353_g201 * tex2DNode338_g201.b ) , ( _Glossiness4 * lerpResult336_g201 ) , ColorMask4347_g201);
				float WetGlossBase397_g201 = _WetGlossBase;
				float lerpResult470_g201 = lerp( saturate( ( ( lerpResult384_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailGlossScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailGlossScale2 * DetailMask235_g201 ) ) ) ) , tex2DNode330_g201.a , ( WetGlossBase397_g201 * ExGloss298_g201 ));
				float SplatsGloss407_g201 = _WetGlossSplats;
				float lerpResult664_g201 = lerp( lerpResult470_g201 , SplatsGloss407_g201 , ( SplatsOp363_g201 * ExGloss298_g201 * WetSplats369_g201 ));
				float lerpResult649_g201 = lerp( lerpResult664_g201 , 0.87 , ( WetOpStreaks673_g201 * smoothstepResult651_g201 ));
				float lerpResult499_g201 = lerp( lerpResult649_g201 , _WeatheringGloss , WeatheringAlpha396_g201);
				float GlossinessFinal513_g201 = saturate( lerpResult499_g201 );
				float OutSmoothness1687 = GlossinessFinal513_g201;
				float4 appendResult5_g199 = (float4(OutSpecular1712 , OutSmoothness1687));
				
				float3 OutNormal1684 = temp_output_1757_557;
				float3 tanNormal11_g199 = OutNormal1684;
				float3 worldNormal11_g199 = float3(dot(tanToWorld0,tanNormal11_g199), dot(tanToWorld1,tanNormal11_g199), dot(tanToWorld2,tanNormal11_g199));
				float4 appendResult13_g199 = (float4(( ( worldNormal11_g199 * 0.5 ) + 0.5 ) , 1.0));
				
				float WeatheringBumpMask718_g201 = tex2DNode177_g201.b;
				float3 OutEmission1685 = ( ( tex2DNode330_g201.g * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g201 * WeatheringBumpMask718_g201 ) * _WeatheringEmission ) );
				float3 tanNormal1660 = OutNormal1684;
				float3 worldNormal1660 = float3(dot(tanToWorld0,tanNormal1660), dot(tanToWorld1,tanNormal1660), dot(tanToWorld2,tanNormal1660));
				float3 normal2_g200 = worldNormal1660;
				float3 localGI2_g200 = GI2_g200( normal2_g200 );
				float3 temp_output_20_0_g199 = ( OutEmission1685 + ( OutAlbedo1683 * localGI2_g200 ) );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g199 = temp_output_20_0_g199;
				#else
				float3 staticSwitch16_g199 = exp2( -temp_output_20_0_g199 );
				#endif
				float4 appendResult19_g199 = (float4(staticSwitch16_g199 , 1.0));
				
				
				outGBuffer0 = appendResult2_g199;
				outGBuffer1 = appendResult5_g199;
				outGBuffer2 = appendResult13_g199;
				outGBuffer3 = appendResult19_g199;
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
			#include "UnityStandardBRDF.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
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
			
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransDirect;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransScattering;
			uniform float _TransShadow;
			uniform float _TransmissionShadow;
			uniform float _CullMode;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _BaseColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex2;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _DetailUV2Rotator;
			SamplerState sampler_DetailMainTex;
			uniform half _DitherSwitch;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WetGlossBase;
			uniform float4 _BodyColor1;
			uniform float _WetSplatsAlbedoOffset;
			uniform float _TransmissionStrength;
			uniform float _WetGlossSplats;
			uniform float _DetailMetallicScale;
			uniform float _WeatheringUVSeed;
			uniform float _AlphaMaster;
			uniform float4 _WetUV;
			uniform float _WetBumpOffset;
			uniform float _WetAlbedoOffset;
			uniform float _DetailNormalMapScale2;
			uniform float _WetOpacityStreaks;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _WetAlpha;
			uniform float4 _WeatheringUV;
			uniform float _DetailGlossScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			uniform float4 _WetStreaksUV;
			uniform float _DetailNormalMapScale;
			uniform float4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float4 _WeatheringAlbedo;
			uniform float2 _DetailUV;
			uniform float2 _UVScalePattern;
			uniform float4 _WetColor;
			uniform float _DetailUVRotator;
			uniform float _Float0;
			SamplerState sampler_MetallicGlossMap;
			uniform float _AlphaEx;
			uniform float4 _EmissionColor;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float2 _patternuvbase;
			uniform float _DetailMetallicScale2;
			uniform float _CarvatureStrength;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange1;
			uniform float _WeatheringGloss;
			uniform float _WeatheringAll;
			uniform float _DitherBlueNoise;
			uniform float _Translucency;
			uniform float _WeatheringRange3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _EmissionStrength;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange2;
			SamplerState sampler_linear_repeat;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _Roughness;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _WeatheringEmission;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			float4 _Noise_TexelSize;
			SamplerState sampler_Noise;
			half OneMinusReflectivity( half metallic )
			{
				   return OneMinusReflectivityFromMetallic(metallic);
			}
			
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
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
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
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 uv_MainTex576_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g201 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g201 );
				float3 temp_output_284_0_g201 = (tex2DNode576_g201).rgb;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g201 );
				float Carvature270_g201 = tex2DNode196_g201.r;
				float3 lerpResult331_g201 = lerp( ( temp_output_284_0_g201 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g201 * _CarvatureStrength ));
				float WetAlbedoOffset311_g201 = _WetAlbedoOffset;
				float3 temp_output_382_0_g201 = ( lerpResult331_g201 * WetAlbedoOffset311_g201 );
				float WetSplatsAlbedoOffset349_g201 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g201 = lerp( ( temp_output_382_0_g201 * WetSplatsAlbedoOffset349_g201 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g201 = _ExGloss;
				float2 appendResult657_g201 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g201 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g201 = i.ase_texcoord1.xy * appendResult657_g201 + appendResult658_g201;
				float2 WetStrUV669_g201 = texCoord660_g201;
				float WetStr661_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g201 ).g;
				float smoothstepResult651_g201 = smoothstep( ( 1.0 - ExGloss298_g201 ) , 1.0 , WetStr661_g201);
				float StreaksAlpha662_g201 = smoothstepResult651_g201;
				float WetOpStreaks673_g201 = _WetOpacityStreaks;
				float2 appendResult287_g201 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g201 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g201 = i.ase_texcoord1.xy * appendResult287_g201 + appendResult285_g201;
				float2 WetUV578_g201 = texCoord317_g201;
				float WetSplats369_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g201 ).b;
				float SplatsOp363_g201 = _WetOpacitySplats;
				float3 lerpResult460_g201 = lerp( temp_output_382_0_g201 , lerpResult411_g201 , ( ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ) + ( WetSplats369_g201 * SplatsOp363_g201 ) ));
				float2 uv_OcclusionMap429_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g201 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g201 );
				float3 WetBodyOffset422_g201 = (_BodyColor1).rgb;
				float bodycoloralpha417_g201 = _BodyColor1.a;
				float3 lerpResult480_g201 = lerp( lerpResult460_g201 , ( tex2DNode429_g201.a == 1.0 ? lerpResult460_g201 : WetBodyOffset422_g201 ) , ( bodycoloralpha417_g201 * ( 1.0 - tex2DNode429_g201.a ) ));
				float3 lerpResult501_g201 = lerp( lerpResult331_g201 , lerpResult480_g201 , ExGloss298_g201);
				float2 appendResult115_g201 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g201 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g201 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g201 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g201 ) * 43758.55 ) ));
				float2 texCoord127_g201 = i.ase_texcoord1.xy * appendResult115_g201 + ( appendResult110_g201 + lerpResult737_g201 );
				float2 WeatheringUV144_g201 = texCoord127_g201;
				float4 tex2DNode177_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float2 uv_WeatheringMask100_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g201 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g201 );
				float clampResult161_g201 = clamp( ( tex2DNode100_g201.r - tex2DNode100_g201.g ) , 0.0 , 1.0 );
				float WMask1183_g201 = ( clampResult161_g201 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g201 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g201 = clamp( ( ( tex2DNode177_g201.g * WMask1183_g201 ) - RangeCut1208_g201 ) , 0.0 , 1.0 );
				float clampResult159_g201 = clamp( ( tex2DNode100_g201.g - tex2DNode100_g201.r ) , 0.0 , 1.0 );
				float WMask2192_g201 = ( clampResult159_g201 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g201 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g201 = clamp( ( ( tex2DNode177_g201.g * WMask2192_g201 ) - RangeCut2211_g201 ) , 0.0 , 1.0 );
				float WMask3190_g201 = ( tex2DNode100_g201.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g201 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g201 = clamp( ( ( tex2DNode177_g201.g * WMask3190_g201 ) - RangeCut3210_g201 ) , 0.0 , 1.0 );
				float WMask4180_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g201 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g201 = clamp( ( ( tex2DNode177_g201.g * WMask4180_g201 ) - RangeCut4205_g201 ) , 0.0 , 1.0 );
				float WMask5184_g201 = ( ( tex2DNode100_g201.r * tex2DNode100_g201.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g201 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g201 = clamp( ( ( tex2DNode177_g201.g * WMask5184_g201 ) - RangeCut5201_g201 ) , 0.0 , 1.0 );
				float WMaskAll165_g201 = ceil( _WeatheringAll );
				float RangeCutAll171_g201 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g201 = clamp( ( ( tex2DNode177_g201.g * WMaskAll165_g201 ) - RangeCutAll171_g201 ) , 0.0 , 1.0 );
				float clampResult299_g201 = clamp( ( clampResult253_g201 + clampResult251_g201 + clampResult254_g201 + clampResult259_g201 + clampResult261_g201 + clampResult215_g201 ) , 0.0 , 1.0 );
				float lerpResult313_g201 = lerp( clampResult299_g201 , clampResult215_g201 , WMaskAll165_g201);
				float WeatheringAlpha2466_g201 = lerpResult313_g201;
				float3 lerpResult505_g201 = lerp( lerpResult501_g201 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g201 * 0.282353 ));
				float3 DiffuseMix511_g201 = lerpResult505_g201;
				float3 temp_output_1757_0 = DiffuseMix511_g201;
				Gradient gradient37_g176 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				float3 ase_worldTangent = i.ase_texcoord2.xyz;
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = Unity_SafeNormalize( ase_tanViewDir );
				float2 uv_BumpMap402_g201 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g201 = _WetBumpOffset;
				float2 UVScale107_g201 = _UVScalePattern;
				float2 texCoord152_g201 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g201 ) + float2( 0,0 );
				float cos162_g201 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g201 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g201 = mul( texCoord152_g201 - float2( 0.5,0.5 ) , float2x2( cos162_g201 , -sin162_g201 , sin162_g201 , cos162_g201 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g201 = rotator162_g201;
				float2 break194_g201 = Detail1UV173_g201;
				float temp_output_186_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult218_g201 = (float2(( break194_g201.x + temp_output_186_0_g201 ) , break194_g201.y));
				float4 tex2DNode243_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 );
				float2 uv_DetailMask25_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g201 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g201 );
				float DetailMask130_g201 = tex2DNode25_g201.r;
				float temp_output_255_0_g201 = ( DetailMask130_g201 * _DetailNormalMapScale );
				float3 appendResult300_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float2 appendResult222_g201 = (float2(break194_g201.x , ( break194_g201.y + temp_output_186_0_g201 )));
				float3 appendResult297_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g201 ).g - tex2DNode243_g201.g ) * temp_output_255_0_g201 )));
				float3 normalizeResult348_g201 = normalize( cross( appendResult300_g201 , appendResult297_g201 ) );
				float3 DetailNormal1368_g201 = normalizeResult348_g201;
				float2 texCoord16_g201 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g201 ) + float2( 0,0 );
				float cos19_g201 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g201 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g201 = mul( texCoord16_g201 - float2( 0.5,0.5 ) , float2x2( cos19_g201 , -sin19_g201 , sin19_g201 , cos19_g201 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g201 = rotator19_g201;
				float2 break24_g201 = Detail2UV20_g201;
				float temp_output_26_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult34_g201 = (float2(( break24_g201.x + temp_output_26_0_g201 ) , break24_g201.y));
				float4 tex2DNode38_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 );
				float DetailMask235_g201 = tex2DNode25_g201.g;
				float temp_output_43_0_g201 = ( DetailMask235_g201 * _DetailNormalMapScale2 );
				float3 appendResult58_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float2 appendResult33_g201 = (float2(break24_g201.x , ( break24_g201.y + temp_output_26_0_g201 )));
				float3 appendResult57_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g201 ).g - tex2DNode38_g201.g ) * temp_output_43_0_g201 )));
				float3 normalizeResult69_g201 = normalize( cross( appendResult58_g201 , appendResult57_g201 ) );
				float3 DetailNormal276_g201 = normalizeResult69_g201;
				float2 break547_g201 = WetStrUV669_g201;
				float temp_output_541_0_g201 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g201 = (float2(( break547_g201.x + temp_output_541_0_g201 ) , break547_g201.y));
				float4 tex2DNode515_g201 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g201 );
				float3 appendResult523_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float2 appendResult534_g201 = (float2(break547_g201.x , ( break547_g201.y + temp_output_541_0_g201 )));
				float3 appendResult542_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g201 ).g - tex2DNode515_g201.g ) * 1.0 )));
				float3 normalizeResult524_g201 = normalize( cross( appendResult523_g201 , appendResult542_g201 ) );
				float3 WetnessNormal545_g201 = normalizeResult524_g201;
				float3 lerpResult98_g201 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g201 ), ( _Float0 + ( WetBumpOffset303_g201 * ExGloss298_g201 ) ) ) , DetailNormal1368_g201 ) , DetailNormal276_g201 ) , WetnessNormal545_g201 , ( StreaksAlpha662_g201 * WetOpStreaks673_g201 ));
				float2 break223_g201 = WeatheringUV144_g201;
				float temp_output_224_0_g201 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g201 = (float2(( break223_g201.x + temp_output_224_0_g201 ) , break223_g201.y));
				float4 tex2DNode266_g201 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 );
				float3 appendResult344_g201 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float2 appendResult252_g201 = (float2(break223_g201.x , ( break223_g201.y + temp_output_224_0_g201 )));
				float3 appendResult339_g201 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g201 ).b - tex2DNode266_g201.b ) * 2.0 )));
				float3 normalizeResult398_g201 = normalize( cross( appendResult344_g201 , appendResult339_g201 ) );
				float3 WeatheringBump425_g201 = normalizeResult398_g201;
				float clampResult373_g201 = clamp( ( lerpResult313_g201 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g201 = clampResult373_g201;
				float3 lerpResult87_g201 = lerp( lerpResult98_g201 , WeatheringBump425_g201 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g201 ).b * WeatheringAlpha396_g201 ));
				float3 normalizeResult564_g201 = normalize( lerpResult87_g201 );
				float3 switchResult566_g201 = (((ase_vface>0)?(normalizeResult564_g201):(-normalizeResult564_g201)));
				float3 NormalMix88_g201 = ( _NormalBackDirInvert == 1.0 ? switchResult566_g201 : normalizeResult564_g201 );
				float3 temp_output_1757_557 = NormalMix88_g201;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1757_557 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_2 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g176;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1757_0;
				float2 uv_MetallicGlossMap330_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode330_g201 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap330_g201 );
				float lerpResult399_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask);
				float2 uv_DetailMainTex338_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode338_g201 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex338_g201 );
				float lerpResult395_g201 = lerp( 1.0 , tex2DNode330_g201.r , _MetallicMask4);
				float2 uv_ColorMask304_g201 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g201 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g201 );
				float ColorMask4347_g201 = tex2DNode304_g201.b;
				float lerpResult462_g201 = lerp( ( lerpResult399_g201 * tex2DNode338_g201.r ) , ( lerpResult395_g201 * _Metallic4 ) , ColorMask4347_g201);
				float Detail1310_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g201 ).r;
				float Detail2352_g201 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g201 ).r;
				float lerpResult495_g201 = lerp( saturate( ( ( lerpResult462_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailMetallicScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailMetallicScale2 * DetailMask235_g201 ) ) ) ) , 0.0 , WeatheringAlpha2466_g201);
				float MetallicFinal512_g201 = saturate( lerpResult495_g201 );
				float temp_output_1757_559 = MetallicFinal512_g201;
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1757_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1757_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1757_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1757_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g192 = worldSpaceLightDir;
				float3 viewDir15_g192 = ase_worldViewDir;
				float3 normalizeResult136_g192 = ASESafeNormalize( ( lightDir14_g192 + viewDir15_g192 ) );
				float dotResult137_g192 = dot( lightDir14_g192 , normalizeResult136_g192 );
				float LdotH139_g192 = saturate( dotResult137_g192 );
				float lerpResult353_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness);
				float lerpResult336_g201 = lerp( 1.0 , tex2DNode330_g201.r , _Roughness4);
				float lerpResult384_g201 = lerp( ( lerpResult353_g201 * tex2DNode338_g201.b ) , ( _Glossiness4 * lerpResult336_g201 ) , ColorMask4347_g201);
				float WetGlossBase397_g201 = _WetGlossBase;
				float lerpResult470_g201 = lerp( saturate( ( ( lerpResult384_g201 - ( ( 1.0 - Detail1310_g201 ) * ( _DetailGlossScale * DetailMask130_g201 ) ) ) - ( ( 1.0 - Detail2352_g201 ) * ( _DetailGlossScale2 * DetailMask235_g201 ) ) ) ) , tex2DNode330_g201.a , ( WetGlossBase397_g201 * ExGloss298_g201 ));
				float SplatsGloss407_g201 = _WetGlossSplats;
				float lerpResult664_g201 = lerp( lerpResult470_g201 , SplatsGloss407_g201 , ( SplatsOp363_g201 * ExGloss298_g201 * WetSplats369_g201 ));
				float lerpResult649_g201 = lerp( lerpResult664_g201 , 0.87 , ( WetOpStreaks673_g201 * smoothstepResult651_g201 ));
				float lerpResult499_g201 = lerp( lerpResult649_g201 , _WeatheringGloss , WeatheringAlpha396_g201);
				float GlossinessFinal513_g201 = saturate( lerpResult499_g201 );
				float OutSmoothness1687 = GlossinessFinal513_g201;
				float smoothness169_g192 = OutSmoothness1687;
				float perceprualRoughness188_g192 = ( 1.0 - smoothness169_g192 );
				half fd90273_g192 = ( 0.5 + ( 2.0 * LdotH139_g192 * LdotH139_g192 * perceprualRoughness188_g192 ) );
				float3 OutNormal1684 = temp_output_1757_557;
				float3 temp_output_30_0_g192 = OutNormal1684;
				float3 tanNormal29_g192 = temp_output_30_0_g192;
				float3 worldNormal29_g192 = float3(dot(tanToWorld0,tanNormal29_g192), dot(tanToWorld1,tanNormal29_g192), dot(tanToWorld2,tanNormal29_g192));
				float3 normalizeResult25_g192 = normalize( worldNormal29_g192 );
				float3 normalDir28_g192 = normalizeResult25_g192;
				float dotResult21_g192 = dot( lightDir14_g192 , normalDir28_g192 );
				float NdotL20_g192 = saturate( dotResult21_g192 );
				half lightScatter253_g192 = ( ( ( fd90273_g192 - 1.0 ) * pow( ( 1.0 - NdotL20_g192 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g192 = dot( normalDir28_g192 , viewDir15_g192 );
				float NdotV55_g192 = saturate( dotResult56_g192 );
				half viewScatter254_g192 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g192 ) , 5.0 ) * ( fd90273_g192 - 1.0 ) ) );
				half disneydiffuse251_g192 = ( lightScatter253_g192 * viewScatter254_g192 );
				half Diffuseterm281_g192 = ( disneydiffuse251_g192 * NdotL20_g192 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g192 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g192 = temp_output_30_0_g192;
				float3 tanNormal203_g192 = normal198_g192;
				UnityGIInput data203_g192;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g192 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g192
				data203_g192.lightmapUV = i.ase_lmap;
				#endif //dylm203_g192
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g192
				data203_g192.ambient = i.ase_sh;
				#endif //fsh203_g192
				UnityGI gi203_g192 = UnityGI_Base(data203_g192, 1, float3(dot(tanToWorld0,tanNormal203_g192), dot(tanToWorld1,tanNormal203_g192), dot(tanToWorld2,tanNormal203_g192)));
				float2 uv_OcclusionMap623_g201 = i.ase_texcoord1.xy;
				float lerpResult483_g201 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g201 ).g , _OcculusionStrength);
				float smoothstepResult621_g201 = smoothstep( 0.0 , 0.8 , Detail1310_g201);
				float lerpResult488_g201 = lerp( 1.0 , smoothstepResult621_g201 , ( _DetailOcculusionScale * DetailMask130_g201 ));
				float smoothstepResult622_g201 = smoothstep( 0.0 , 0.8 , Detail2352_g201);
				float lerpResult494_g201 = lerp( 1.0 , smoothstepResult622_g201 , ( _DetailOcculusionScale2 * DetailMask235_g201 ));
				float lerpResult620_g201 = lerp( ( lerpResult483_g201 * lerpResult488_g201 * lerpResult494_g201 ) , 1.0 , WeatheringAlpha396_g201);
				float OcclusionMix509_g201 = saturate( lerpResult620_g201 );
				float OutAO1688 = OcclusionMix509_g201;
				float occlusion306_g192 = OutAO1688;
				half Roughness64_g192 = max( ( perceprualRoughness188_g192 * perceprualRoughness188_g192 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g192 = ( 0.5 / ( ( ( ( NdotV55_g192 * ( 1.0 - Roughness64_g192 ) ) + Roughness64_g192 ) * NdotL20_g192 ) + 1E-05 + ( NdotV55_g192 * ( Roughness64_g192 + ( ( 1.0 - Roughness64_g192 ) * NdotL20_g192 ) ) ) ) );
				float a266_g192 = ( Roughness64_g192 * Roughness64_g192 );
				float3 normalizeResult87_g192 = ASESafeNormalize( ( lightDir14_g192 + viewDir15_g192 ) );
				float dotResult88_g192 = dot( normalDir28_g192 , normalizeResult87_g192 );
				float NdotH90_g192 = saturate( dotResult88_g192 );
				float d99_g192 = ( ( ( ( NdotH90_g192 * a266_g192 ) - NdotH90_g192 ) * NdotH90_g192 ) + 1.0 );
				half GGXTerm43_g192 = ( ( ( 1.0 / UNITY_PI ) * a266_g192 ) / ( ( d99_g192 * d99_g192 ) + 1E-07 ) );
				float temp_output_36_0_g192 = ( SmithJointGGXVisibilityTerm42_g192 * GGXTerm43_g192 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g192 = sqrt( max( 0.0001 , temp_output_36_0_g192 ) );
				#else
				float staticSwitch5_g192 = temp_output_36_0_g192;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g192 = 0.0;
				#else
				float staticSwitch119_g192 = max( 0.0 , ( staticSwitch5_g192 * NdotL20_g192 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1757_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g192 = OutSpecular1712;
				float SpecularTerm34_g192 = ( staticSwitch119_g192 * ( SpecColor140_g192.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g192 = ( ( pow( ( 1.0 - LdotH139_g192 ) , 5.0 ) * ( 1.0 - SpecColor140_g192 ) ) + SpecColor140_g192 );
				half metallic176_g192 = 0.0;
				half localOneMinusReflectivity176_g192 = OneMinusReflectivity( metallic176_g192 );
				half GrazingTerm163_g192 = saturate( ( smoothness169_g192 + ( 1.0 - localOneMinusReflectivity176_g192 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g192).xxx;
				float3 lerpResult159_g192 = lerp( SpecColor140_g192 , temp_cast_4 , pow( ( 1.0 - NdotV55_g192 ) , 5.0 ));
				half3 FresnelLerp165_g192 = lerpResult159_g192;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g192 = ( 1.0 - ( 0.28 * Roughness64_g192 * perceprualRoughness188_g192 ) );
				#else
				float staticSwitch183_g192 = ( 1.0 / ( ( Roughness64_g192 * Roughness64_g192 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g192 = staticSwitch183_g192;
				float3 tanNormal299_g192 = normal198_g192;
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
				Unity_GlossyEnvironmentData g299_g192 = UnityGlossyEnvironmentSetup( smoothness169_g192, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g192), dot(tanToWorld1,tanNormal299_g192), dot(tanToWorld2,tanNormal299_g192)), float3(0,0,0));
				float3 indirectSpecular299_g192 = UnityGI_IndirectSpecular( data, occlusion306_g192, float3(dot(tanToWorld0,tanNormal299_g192), dot(tanToWorld1,tanNormal299_g192), dot(tanToWorld2,tanNormal299_g192)), g299_g192 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g192 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g192 = ( FresnelLerp165_g192 * SurfaceReduction182_g192 * indirectSpecular299_g192 );
				#endif
				float WeatheringBumpMask718_g201 = tex2DNode177_g201.b;
				float3 OutEmission1685 = ( ( tex2DNode330_g201.g * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g201 * WeatheringBumpMask718_g201 ) * _WeatheringEmission ) );
				float3 tanNormal14_g195 = OutNormal1684;
				float3 worldNormal14_g195 = normalize( float3(dot(tanToWorld0,tanNormal14_g195), dot(tanToWorld1,tanNormal14_g195), dot(tanToWorld2,tanNormal14_g195)) );
				float dotResult9_g195 = dot( worldNormal14_g195 , worldSpaceLightDir );
				float3 lerpResult21_g195 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float OutTransmission1689 = _TransmissionStrength;
				float3 tanNormal27_g193 = OutNormal1684;
				float3 worldNormal27_g193 = normalize( float3(dot(tanToWorld0,tanNormal27_g193), dot(tanToWorld1,tanNormal27_g193), dot(tanToWorld2,tanNormal27_g193)) );
				float dotResult20_g193 = dot( ase_worldViewDir , -( ( worldNormal27_g193 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g201 = tex2DNode330_g201.b;
				float OutTranslucency1690 = ( _Translucency * Thickness507_g201 );
				float3 lerpResult39_g193 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 appendResult50_g193 = (float3(-worldNormal27_g193.x , -worldNormal27_g193.y , worldNormal27_g193.z));
				UnityGIInput data15_g193;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g193 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g193
				data15_g193.lightmapUV = i.ase_lmap;
				#endif //dylm15_g193
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g193
				data15_g193.ambient = i.ase_sh;
				#endif //fsh15_g193
				UnityGI gi15_g193 = UnityGI_Base(data15_g193, 1, appendResult50_g193);
				
				float clampResult592_g201 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g201 = tex2DNode196_g201.b;
				float BlueNoise643_g201 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen691_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither691_g201 = Dither8x8Bayer( fmod(clipScreen691_g201.x, 8), fmod(clipScreen691_g201.y, 8) );
				float AlphaInput195_g201 = tex2DNode576_g201.a;
				dither691_g201 = step( dither691_g201, AlphaInput195_g201 );
				float dither692_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither692_g201 = step( dither692_g201, AlphaInput195_g201 );
				float2 clipScreen629_g201 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither629_g201 = Dither8x8Bayer( fmod(clipScreen629_g201.x, 8), fmod(clipScreen629_g201.y, 8) );
				float OccAlpha219_g201 = tex2DNode196_g201.a;
				float temp_output_703_0_g201 = ( ( ( 1.0 * _AlphaMaster ) * saturate( pow( OccAlpha219_g201 , ( _WetAlpha * ExGloss298_g201 ) ) ) ) + WeatheringAlpha2466_g201 );
				dither629_g201 = step( dither629_g201, temp_output_703_0_g201 );
				float dither630_g201 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither630_g201 = step( dither630_g201, temp_output_703_0_g201 );
				float OutOp1691 = ( ( step( pow( ( 1.0 - clampResult592_g201 ) , 0.2 ) , pow( TearingsMask340_g201 , 0.5 ) ) * ( _DitherSwitch > 0.0 ? ( BlueNoise643_g201 == 0.0 ? dither691_g201 : dither692_g201 ) : AlphaInput195_g201 ) ) * ( BlueNoise643_g201 == 0.0 ? dither629_g201 : dither630_g201 ) );
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g192 * lightAtten296_g192 ) + ( gi203_g192.indirect.diffuse * occlusion306_g192 ) ) ) + ( SpecularTerm34_g192 * lightAtten296_g192 * FresnelTerm130_g192 ) + staticSwitch305_g192 ) + OutEmission1685 + ( ( max( 0.0 , -dotResult9_g195 ) * lerpResult21_g195 * OutTransmission1689 ) * OutAlbedo1683 ) + ( ( OutAlbedo1683 * ( ( pow( saturate( dotResult20_g193 ) , _TransScattering ) * _TransDirect ) * OutTranslucency1690 * lerpResult39_g193 ) ) + ( gi15_g193.indirect.diffuse * _TransAmbient ) ) );
				outAlpha = OutOp1691;
				clip(outAlpha - _Cutoff);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback "Legacy Shaders/Diffuse"
}
/*ASEBEGIN
Version=18912
-16.8;198.8;1513;878;928.8425;1297.364;1;True;False
Node;AmplifyShaderEditor.FunctionNode;1757;-305.959,-1001.256;Inherit;False;AIT Clothes Function;2;;201;d0644e5becc3a6145ad3ab18b1d3f488;0;0;9;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;561;FLOAT;748;FLOAT;562;FLOAT;637
Node;AmplifyShaderEditor.FunctionNode;1730;43.24629,-1183.271;Inherit;False;Iridiscence;83;;176;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1734;478.722,-934.2843;Inherit;False;Property;_SpecColor;SpecColor;89;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1752;331.3885,-769.0536;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1747;-46.36218,-351.5953;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1748;49.34377,-303.7423;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1755;418.1014,-695.4373;Inherit;True;Property;_SpecularMap;SpecularMap;90;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1720;387.1435,-973.6287;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1753;391.0476,-745.1899;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1735;685.5889,-933.6452;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1719;440.0094,-987.3347;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1722;688.0615,-981.1619;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1739;947.3095,-807.3077;Inherit;False;Property;_Iridiscent1;Iridiscent;82;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1718;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1750;1021.515,-308.7795;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;1717;292.0359,-1188.15;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1754;720.994,-693.3652;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1718;527.7333,-1183.451;Inherit;False;Property;_Iridiscent;Iridiscent;82;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1721;737.4844,-1014.111;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1745;11.12222,-1294.807;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1756;1192.594,-709.9873;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1749;1079.442,-328.9283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1642;836.9714,-1177.978;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1746;75.58084,-1324.295;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1740;1364.939,-551.4853;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1732;1212.62,-1385.844;Inherit;False;Property;_SpecularSetup1;SpecularSetup;88;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1731;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1731;1697.23,-1161.845;Inherit;False;Property;_SpecularSetup;SpecularSetup;88;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1687;10.55487,-740.5276;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1712;1987.344,-1160.675;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1684;18.8349,-917.66;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1689;2.534866,-558.799;Inherit;False;OutTransmission;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1688;18.54084,-647.2416;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1683;1503.489,-1386.021;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1690;4.603837,-472.4647;Inherit;False;OutTranslucency;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1696;2778.982,-1149.681;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1697;2729.266,-1066.408;Inherit;False;1689;OutTransmission;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1713;2767.701,-1490.824;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1694;2738.134,-1232.456;Inherit;False;1687;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1695;2767.196,-1403.253;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1698;2726.393,-987.5184;Inherit;False;1690;OutTranslucency;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;2757.568,-1317.306;Inherit;False;1712;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1685;19.55487,-829.528;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1691;20.51484,-389.0742;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1637;3267.098,-1421.206;Inherit;False;GGX Specular Light;-1;;192;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1666;3265.805,-1052.581;Inherit;False;Unity Translucency;74;;193;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;43;FLOAT;0;False;46;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1703;3283.575,-1256.85;Inherit;False;1685;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1639;3262.585,-1176.571;Inherit;False;Unity Transmission;80;;195;9498cceedd4defe45a721369ca43b3c7;0;3;1;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;25;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1709;3346.706,-492.3718;Inherit;False;1685;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1546;3236.441,-593.5693;Inherit;False;Property;_Cutoff;Cutoff;1;1;[Header];Fetch;True;1;Cutout Setting;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1638;3631.986,-1285.39;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;1647;3565.163,-667.4487;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1702;3844.902,-1173.685;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1662;3405.817,-407.6454;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1699;2677.679,-392.5135;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1715;3566.923,-354.2149;Inherit;False;1712;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;4024.207,-943.0571;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1700;3037.045,-675.5598;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1706;3584.719,-185.6303;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1632;4017.018,-859.0972;Inherit;False;Property;_SHADERTYPE_CLOTHING;_SHADERTYPE_CLOTHING;91;0;Create;True;0;0;0;True;0;False;0;1;1;True;_SHADERTYPE_CLOTHING;Toggle;2;Key0;Key1;Create;False;False;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1704;3563.649,-546.9131;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1708;3326.951,-717.0528;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1705;3528.024,-271.3725;Inherit;False;1687;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1643;3829.37,-518.7029;Inherit;False;Deferred Pass;-1;;199;c9afd996879db6041a57a5a508002f59;0;6;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;0;False;4;COLOR;0;COLOR;1;COLOR;12;COLOR;18
Node;AmplifyShaderEditor.WorldNormalVector;1660;2896.541,-387.4047;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1644;3627.65,-461.7183;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1661;3104.463,-387.3405;Inherit;False;Global Illumination;-1;;200;618026ac6bfd8394b9cb2d8d0ecddb28;1,19,1;1;37;FLOAT3;0,0,0;False;1;FLOAT3;15
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1651;4204.811,-525.7134;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1649;4102.704,-1287.502;Float;False;True;-1;2;ASEMaterialInspector;0;8;Hanmen/Clothes True Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=-50;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1652;4102.704,-1148.702;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1650;4102.704,-1181.702;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1680;4151.015,-522.8868;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;7;False;0;;0;0;Standard;0;False;0
WireConnection;1730;1;1757;557
WireConnection;1752;0;1730;0
WireConnection;1747;0;1757;559
WireConnection;1748;0;1747;0
WireConnection;1720;0;1757;0
WireConnection;1753;0;1752;0
WireConnection;1735;0;1734;0
WireConnection;1719;0;1720;0
WireConnection;1722;0;1757;559
WireConnection;1739;1;1735;0
WireConnection;1739;0;1753;0
WireConnection;1750;0;1748;0
WireConnection;1717;0;1730;0
WireConnection;1717;1;1757;0
WireConnection;1717;2;1757;559
WireConnection;1754;0;1755;0
WireConnection;1718;1;1719;0
WireConnection;1718;0;1717;0
WireConnection;1721;0;1722;0
WireConnection;1745;0;1757;0
WireConnection;1756;0;1739;0
WireConnection;1756;1;1754;0
WireConnection;1749;0;1750;0
WireConnection;1642;0;1718;0
WireConnection;1642;1;1721;0
WireConnection;1746;0;1745;0
WireConnection;1740;0;1756;0
WireConnection;1740;1;1749;0
WireConnection;1732;1;1642;0
WireConnection;1732;0;1746;0
WireConnection;1731;1;1642;1
WireConnection;1731;0;1740;1
WireConnection;1687;0;1757;560
WireConnection;1712;0;1731;0
WireConnection;1684;0;1757;557
WireConnection;1689;0;1757;748
WireConnection;1688;0;1757;561
WireConnection;1683;0;1732;0
WireConnection;1690;0;1757;562
WireConnection;1685;0;1757;558
WireConnection;1691;0;1757;637
WireConnection;1637;286;1713;0
WireConnection;1637;30;1695;0
WireConnection;1637;146;1714;0
WireConnection;1637;147;1694;0
WireConnection;1637;302;1696;0
WireConnection;1666;6;1713;0
WireConnection;1666;26;1695;0
WireConnection;1666;43;1698;0
WireConnection;1639;1;1713;0
WireConnection;1639;11;1695;0
WireConnection;1639;25;1697;0
WireConnection;1638;0;1637;0
WireConnection;1638;1;1703;0
WireConnection;1638;2;1639;0
WireConnection;1638;3;1666;0
WireConnection;1647;0;1700;0
WireConnection;1647;1;1708;0
WireConnection;1647;2;1546;0
WireConnection;1662;0;1700;0
WireConnection;1662;1;1661;15
WireConnection;1643;3;1647;0
WireConnection;1643;14;1704;0
WireConnection;1643;20;1644;0
WireConnection;1643;6;1715;0
WireConnection;1643;7;1705;0
WireConnection;1643;4;1706;0
WireConnection;1660;0;1699;0
WireConnection;1644;0;1709;0
WireConnection;1644;1;1662;0
WireConnection;1661;37;1660;0
WireConnection;1651;0;1643;0
WireConnection;1651;1;1643;1
WireConnection;1651;2;1643;12
WireConnection;1651;3;1643;18
WireConnection;1649;0;1638;0
WireConnection;1649;1;1702;0
ASEEND*/
//CHKSM=3803E73FDE170396AF231EB5C840AF6EADE6B2DA