// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Alpha"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 2
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 1
		[Toggle(_DITHERSWITCH_ON)] _DitherSwitch("DitherSwitch", Float) = 0
		[Toggle(_DITHERBLUENOISE_ON)] _DitherBluenoise("DitherBluenoise", Float) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1)]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header (Detail2)]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		[Toggle(_METALLICGLOSSMAP)] _METALLICGLOSSMAP("METALLICGLOSSMAP", Float) = 1
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
		_RoughnessReflections("RoughnessReflections", Range( 0 , 1)) = 1
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		_MetallicMask2("MetallicMask2", Range( 0 , 1)) = 1
		_GlossinessReflection("GlossinessReflection", Range( 0 , 1)) = 1
		_MetallicMask3("MetallicMask3", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		[Header(Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetnessPower("WetnessPower", Range( 0 , 2)) = 0.8
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" }
		Cull [_CullMode]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile __ _DITHERSWITCH_ON
		#pragma multi_compile __ _METALLICGLOSSMAP
		#pragma multi_compile __ _DITHERBLUENOISE_ON
		#pragma multi_compile __ _SPECULARSETUP_ON
		#pragma multi_compile __ _IRIDISCENT_ON
		#define ASE_USING_SAMPLING_MACROS 1
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
			float4 screenPosition;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
			half ASEVFace : VFACE;
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

		uniform float4 _BaseColor;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float2 _DetailUV;
		uniform float _DetailNormalMapScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float4 _Color2;
		uniform float4 _Color;
		uniform float2 _DetailUV2;
		uniform float4 _EmissionColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _Float0;
		uniform float _EmissionStrength;
		uniform float _WetAlbedoOffset;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		SamplerState sampler_Noise;
		uniform float _ExGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _DetailNormalMapScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _DetailGlossScale;
		uniform float _Metallic3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float4 _Color4;
		uniform float _DetailUV2Rotator;
		uniform float _Glossiness3;
		uniform float _DetailMetallicScale;
		uniform float _CarvatureStrength;
		uniform float4 _Color3;
		uniform float _DetailMetallicScale2;
		uniform float _WetnessPower;
		uniform float _Glossiness2;
		uniform float _Glossiness;
		uniform float _Metallic;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_TextureSample20;
		uniform float _Metallic4;
		uniform float _GlossinessReflection;
		uniform float _Metallic2;
		uniform float _AlphaEx;
		uniform float _RoughnessReflections;
		uniform float _DetailGlossScale2;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _NormalBackDirInvert;
		uniform float _TransDirect;
		uniform float _TransShadow;
		uniform float _TransScattering;
		uniform float _Translucency;
		uniform float _TransNormalDistortion;
		uniform float _TransAmbient;
		uniform float _CullMode;
		float4 _Noise_TexelSize;
		SamplerState sampler_point_repeat;
		uniform float _Cutoff;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_MetallicGlossMap;
		uniform float _MetallicMask;
		uniform float _MetallicMask2;
		uniform float _MetallicMask3;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Roughness2;
		uniform float _Roughness3;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;


		half OneMinusReflectivity( half metallic )
		{
			   return OneMinusReflectivityFromMetallic(metallic);
		}


		inline float Dither4x4Bayer( int x, int y )
		{
			const float dither[ 16 ] = {
				 1,  9,  3, 11,
				13,  5, 15,  7,
				 4, 12,  2, 10,
				16,  8, 14,  6 };
			int r = y * 4 + x;
			return dither[r] / 16; // same # of instructions as pre-dividing due to compiler magic
		}


		inline float DitherNoiseTex( float4 screenPos, UNITY_DECLARE_TEX2D_NOSAMPLER(noiseTexture), SamplerState samplernoiseTexture, float4 noiseTexelSize )
		{
			float dither = SAMPLE_TEXTURE2D_LOD( noiseTexture, samplernoiseTexture, screenPos.xy * _ScreenParams.xy * noiseTexelSize.xy, 0 ).g;
			float ditherRate = noiseTexelSize.x * noiseTexelSize.y;
			dither = ( 1 - ditherRate ) * dither + ditherRate;
			return dither;
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


		float3 GI2_g184( float3 normal )
		{
			return ShadeSH9(half4(normal, 1.0));
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
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
			float2 uv_MainTex119_g179 = i.uv_texcoord;
			float4 tex2DNode119_g179 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g179 );
			float AlphaInput137_g179 = tex2DNode119_g179.a;
			float Color1Alpha101_g179 = _Color.a;
			float2 uv_ColorMask86_g179 = i.uv_texcoord;
			float4 tex2DNode86_g179 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g179 );
			float ColorMask199_g179 = ( 1.0 - ( tex2DNode86_g179.r + tex2DNode86_g179.g + tex2DNode86_g179.b ) );
			float Color2Alpha97_g179 = _Color2.a;
			float ColorMask296_g179 = tex2DNode86_g179.r;
			float Color3Alpha98_g179 = _Color3.a;
			float ColorMask3102_g179 = tex2DNode86_g179.g;
			float Color4Alpha100_g179 = _Color4.a;
			float ColorMask494_g179 = tex2DNode86_g179.b;
			float AlphaMix258_g179 = saturate( ( AlphaInput137_g179 * ( ( Color1Alpha101_g179 * ColorMask199_g179 ) + ( Color2Alpha97_g179 * ColorMask296_g179 ) + ( Color3Alpha98_g179 * ColorMask3102_g179 ) + ( Color4Alpha100_g179 * ColorMask494_g179 ) ) ) );
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen290_g179 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither290_g179 = Dither4x4Bayer( fmod(clipScreen290_g179.x, 4), fmod(clipScreen290_g179.y, 4) );
			dither290_g179 = step( dither290_g179, AlphaMix258_g179 );
			float dither286_g179 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
			dither286_g179 = step( dither286_g179, AlphaMix258_g179 );
			#ifdef _DITHERBLUENOISE_ON
				float staticSwitch364_g179 = dither286_g179;
			#else
				float staticSwitch364_g179 = dither290_g179;
			#endif
			#ifdef _DITHERSWITCH_ON
				float staticSwitch363_g179 = staticSwitch364_g179;
			#else
				float staticSwitch363_g179 = AlphaMix258_g179;
			#endif
			float clampResult353_g179 = clamp( _AlphaEx , 0.2 , 1.0 );
			float2 uv_OcclusionMap259_g179 = i.uv_texcoord;
			float4 tex2DNode259_g179 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g179 );
			float Tearing360_g179 = tex2DNode259_g179.b;
			clip( AlphaMix258_g179 - _Cutoff);
			float outAlpha1475 = ( staticSwitch363_g179 * step( pow( ( 1.0 - clampResult353_g179 ) , 0.2 ) , pow( Tearing360_g179 , 0.5 ) ) );
			float3 temp_output_182_0_g179 = (tex2DNode119_g179).rgb;
			float3 temp_output_206_0_g179 = ( temp_output_182_0_g179 * (_BaseColor).rgb );
			float3 Color1128_g179 = (_Color).rgb;
			float3 Color2121_g179 = (_Color2).rgb;
			float3 Color3123_g179 = (_Color3).rgb;
			float3 Color4136_g179 = (_Color4).rgb;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap186_g179 = i.uv_texcoord;
			float Carvature197_g179 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g179 ).r;
			float3 lerpResult289_g179 = lerp( ( ( temp_output_206_0_g179 * Color1128_g179 * ColorMask199_g179 ) + ( Color2121_g179 * ColorMask296_g179 * temp_output_206_0_g179 ) + ( Color3123_g179 * ColorMask3102_g179 * temp_output_206_0_g179 ) + ( Color4136_g179 * ColorMask494_g179 * temp_output_206_0_g179 ) ) , temp_cast_0 , ( Carvature197_g179 * _CarvatureStrength ));
			float ExGloss255_g179 = _ExGloss;
			float3 lerpResult313_g179 = lerp( lerpResult289_g179 , ( lerpResult289_g179 * _WetAlbedoOffset ) , ExGloss255_g179);
			float3 DiffuseMix326_g179 = lerpResult313_g179;
			float3 temp_output_1458_345 = DiffuseMix326_g179;
			Gradient gradient37_g180 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float2 uv_BumpMap180_g179 = i.uv_texcoord;
			float2 uv_TexCoord76_g179 = i.uv_texcoord * _DetailUV;
			float cos78_g179 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin78_g179 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator78_g179 = mul( uv_TexCoord76_g179 - float2( 0.5,0.5 ) , float2x2( cos78_g179 , -sin78_g179 , sin78_g179 , cos78_g179 )) + float2( 0.5,0.5 );
			float2 Detail1UV79_g179 = rotator78_g179;
			float2 break13_g179 = Detail1UV79_g179;
			float temp_output_14_0_g179 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult24_g179 = (float2(( break13_g179.x + temp_output_14_0_g179 ) , break13_g179.y));
			float4 tex2DNode85_g179 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g179 );
			float2 uv_DetailMask81_g179 = i.uv_texcoord;
			float4 tex2DNode81_g179 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g179 );
			float DetailMask183_g179 = tex2DNode81_g179.r;
			float temp_output_42_0_g179 = ( DetailMask183_g179 * _DetailNormalMapScale );
			float3 appendResult56_g179 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g179 ).g - tex2DNode85_g179.g ) * temp_output_42_0_g179 )));
			float2 appendResult27_g179 = (float2(break13_g179.x , ( break13_g179.y + temp_output_14_0_g179 )));
			float3 appendResult58_g179 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g179 ).g - tex2DNode85_g179.g ) * temp_output_42_0_g179 )));
			float3 normalizeResult66_g179 = normalize( cross( appendResult56_g179 , appendResult58_g179 ) );
			float3 DetailNormal171_g179 = normalizeResult66_g179;
			float2 uv_TexCoord7_g179 = i.uv_texcoord * _DetailUV2;
			float cos10_g179 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin10_g179 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator10_g179 = mul( uv_TexCoord7_g179 - float2( 0.5,0.5 ) , float2x2( cos10_g179 , -sin10_g179 , sin10_g179 , cos10_g179 )) + float2( 0.5,0.5 );
			float2 Detail2UV12_g179 = rotator10_g179;
			float2 break20_g179 = Detail2UV12_g179;
			float temp_output_21_0_g179 = ( pow( 0.25 , 2.0 ) * 0.1 );
			float2 appendResult32_g179 = (float2(( break20_g179.x + temp_output_21_0_g179 ) , break20_g179.y));
			float4 tex2DNode41_g179 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g179 );
			float DetailMask284_g179 = tex2DNode81_g179.g;
			float temp_output_49_0_g179 = ( DetailMask284_g179 * _DetailNormalMapScale2 );
			float3 appendResult63_g179 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g179 ).g - tex2DNode41_g179.g ) * temp_output_49_0_g179 )));
			float2 appendResult31_g179 = (float2(break20_g179.x , ( break20_g179.y + temp_output_21_0_g179 )));
			float3 appendResult64_g179 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g179 ).g - tex2DNode41_g179.g ) * temp_output_49_0_g179 )));
			float3 normalizeResult70_g179 = normalize( cross( appendResult63_g179 , appendResult64_g179 ) );
			float3 DetailNormal272_g179 = normalizeResult70_g179;
			float3 normalizeResult262_g179 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g179 ), _Float0 ) , DetailNormal171_g179 ) , DetailNormal272_g179 ) );
			float3 temp_output_1458_342 = normalizeResult262_g179;
			float dotResult7_g180 = dot( ase_tanViewDir , temp_output_1458_342 );
			float3 temp_output_12_0_g180 = (SampleGradient( gradient37_g180, dotResult7_g180 )).rgb;
			float temp_output_10_0_g180 = radians( ( 360.0 * _IriHue ) );
			float temp_output_13_0_g180 = cos( temp_output_10_0_g180 );
			float3 _k7 = float3(0.57735,0.57735,0.57735);
			float dotResult14_g180 = dot( _k7 , temp_output_12_0_g180 );
			float3 temp_output_32_0_g180 = ( ( ( ( ( ( temp_output_12_0_g180 * temp_output_13_0_g180 ) + ( cross( _k7 , temp_output_12_0_g180 ) * sin( temp_output_10_0_g180 ) ) + ( _k7 * dotResult14_g180 * ( 1.0 - temp_output_13_0_g180 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
			float dotResult34_g180 = dot( temp_output_32_0_g180 , float3(0.39,0.59,0.11) );
			float3 temp_cast_1 = (dotResult34_g180).xxx;
			float3 lerpResult35_g180 = lerp( temp_cast_1 , temp_output_32_0_g180 , ( _IriSaturation * 2.0 ));
			float3 temp_output_1433_0 = lerpResult35_g180;
			float3 blendOpSrc1434 = temp_output_1433_0;
			float3 blendOpDest1434 = temp_output_1458_345;
			float2 uv_MetallicGlossMap139_g179 = i.uv_texcoord;
			float4 tex2DNode139_g179 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g179 );
			float lerpResult167_g179 = lerp( 1.0 , tex2DNode139_g179.b , _MetallicMask);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch375_g179 = lerpResult167_g179;
			#else
				float staticSwitch375_g179 = 1.0;
			#endif
			float lerpResult193_g179 = lerp( 1.0 , tex2DNode139_g179.b , _MetallicMask2);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch376_g179 = lerpResult193_g179;
			#else
				float staticSwitch376_g179 = 1.0;
			#endif
			float lerpResult181_g179 = lerp( 1.0 , tex2DNode139_g179.b , _MetallicMask3);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch377_g179 = lerpResult181_g179;
			#else
				float staticSwitch377_g179 = 1.0;
			#endif
			float lerpResult208_g179 = lerp( 1.0 , tex2DNode139_g179.b , _MetallicMask4);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch378_g179 = lerpResult208_g179;
			#else
				float staticSwitch378_g179 = 1.0;
			#endif
			float lerpResult281_g179 = lerp( ( ( staticSwitch375_g179 * _Metallic * ColorMask199_g179 ) + ( staticSwitch376_g179 * _Metallic2 * ColorMask296_g179 ) + ( staticSwitch377_g179 * _Metallic3 * ColorMask3102_g179 ) ) , ( staticSwitch378_g179 * _Metallic4 ) , ColorMask494_g179);
			float Detail1148_g179 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g179 ).r;
			float Detail2194_g179 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g179 ).r;
			float temp_output_1458_340 = saturate( ( ( lerpResult281_g179 - ( ( 1.0 - Detail1148_g179 ) * ( _DetailMetallicScale * DetailMask183_g179 ) ) ) - ( ( 1.0 - Detail2194_g179 ) * ( _DetailMetallicScale2 * DetailMask284_g179 ) ) ) );
			float3 lerpBlendMode1434 = lerp(blendOpDest1434,( blendOpSrc1434 * blendOpDest1434 ),temp_output_1458_340);
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1435 = ( saturate( lerpBlendMode1434 ));
			#else
				float3 staticSwitch1435 = temp_output_1458_345;
			#endif
			half3 specColor1436 = (0).xxx;
			half oneMinusReflectivity1436 = 0;
			half3 diffuseAndSpecularFromMetallic1436 = DiffuseAndSpecularFromMetallic(staticSwitch1435,temp_output_1458_340,specColor1436,oneMinusReflectivity1436);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1437 = temp_output_1458_345;
			#else
				float3 staticSwitch1437 = diffuseAndSpecularFromMetallic1436;
			#endif
			float3 OutAlbedo1438 = staticSwitch1437;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 lightDir14_g182 = ase_worldlightDir;
			float3 viewDir15_g182 = ase_worldViewDir;
			float3 normalizeResult136_g182 = ASESafeNormalize( ( lightDir14_g182 + viewDir15_g182 ) );
			float dotResult137_g182 = dot( lightDir14_g182 , normalizeResult136_g182 );
			float LdotH139_g182 = saturate( dotResult137_g182 );
			float lerpResult143_g179 = lerp( 1.0 , tex2DNode139_g179.r , _Roughness);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch368_g179 = lerpResult143_g179;
			#else
				float staticSwitch368_g179 = 1.0;
			#endif
			float lerpResult158_g179 = lerp( 1.0 , tex2DNode139_g179.r , _Roughness2);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch372_g179 = lerpResult158_g179;
			#else
				float staticSwitch372_g179 = 1.0;
			#endif
			float lerpResult157_g179 = lerp( 1.0 , tex2DNode139_g179.r , _Roughness3);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch373_g179 = lerpResult157_g179;
			#else
				float staticSwitch373_g179 = 1.0;
			#endif
			float lerpResult187_g179 = lerp( 1.0 , tex2DNode139_g179.r , _Roughness4);
			#ifdef _METALLICGLOSSMAP
				float staticSwitch374_g179 = lerpResult187_g179;
			#else
				float staticSwitch374_g179 = 1.0;
			#endif
			float lerpResult230_g179 = lerp( ( ( staticSwitch368_g179 * _Glossiness * ColorMask199_g179 ) + ( staticSwitch372_g179 * _Glossiness2 * ColorMask296_g179 ) + ( staticSwitch373_g179 * _Glossiness3 * ColorMask3102_g179 ) ) , ( _Glossiness4 * staticSwitch374_g179 ) , ColorMask494_g179);
			float lerpResult305_g179 = lerp( ( ( lerpResult230_g179 - ( ( 1.0 - Detail1148_g179 ) * ( _DetailGlossScale * DetailMask183_g179 ) ) ) - ( ( 1.0 - Detail2194_g179 ) * ( _DetailGlossScale2 * DetailMask284_g179 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g179 ));
			float outSmoothness1462 = saturate( lerpResult305_g179 );
			float smoothness169_g182 = outSmoothness1462;
			float perceprualRoughness188_g182 = ( 1.0 - smoothness169_g182 );
			half fd90273_g182 = ( 0.5 + ( 2.0 * LdotH139_g182 * LdotH139_g182 * perceprualRoughness188_g182 ) );
			float3 outNormal1461 = temp_output_1458_342;
			float3 normalizeResult25_g182 = normalize( (WorldNormalVector( i , outNormal1461 )) );
			float3 switchResult316_g182 = (((i.ASEVFace>0)?(normalizeResult25_g182):(-normalizeResult25_g182)));
			float3 normalDir28_g182 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g182 : normalizeResult25_g182 );
			float dotResult21_g182 = dot( lightDir14_g182 , normalDir28_g182 );
			float NdotL20_g182 = saturate( dotResult21_g182 );
			half lightScatter253_g182 = ( ( ( fd90273_g182 - 1.0 ) * pow( ( 1.0 - NdotL20_g182 ) , 5.0 ) ) + 1.0 );
			float dotResult56_g182 = dot( normalDir28_g182 , viewDir15_g182 );
			float NdotV55_g182 = saturate( dotResult56_g182 );
			half viewScatter254_g182 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g182 ) , 5.0 ) * ( fd90273_g182 - 1.0 ) ) );
			half disneydiffuse251_g182 = ( lightScatter253_g182 * viewScatter254_g182 );
			half Diffuseterm281_g182 = ( disneydiffuse251_g182 * NdotL20_g182 );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 lightAtten296_g182 = ( ase_lightColor.rgb * ase_lightAtten );
			UnityGI gi203_g182 = gi;
			float3 diffNorm203_g182 = normalDir28_g182;
			gi203_g182 = UnityGI_Base( data, 1, diffNorm203_g182 );
			float3 indirectDiffuse203_g182 = gi203_g182.indirect.diffuse + diffNorm203_g182 * 0.0001;
			float lerpResult298_g179 = lerp( 1.0 , tex2DNode259_g179.g , _OcculusionStrength);
			float smoothstepResult266_g179 = smoothstep( 0.0 , 0.8 , Detail1148_g179);
			float lerpResult297_g179 = lerp( 1.0 , smoothstepResult266_g179 , ( _DetailOcculusionScale * DetailMask183_g179 ));
			float smoothstepResult274_g179 = smoothstep( 0.0 , 0.8 , Detail2194_g179);
			float lerpResult299_g179 = lerp( 1.0 , smoothstepResult274_g179 , ( _DetailOcculusionScale2 * DetailMask284_g179 ));
			float OcclusionMix323_g179 = saturate( ( lerpResult298_g179 * lerpResult297_g179 * lerpResult299_g179 ) );
			float outAO1460 = OcclusionMix323_g179;
			float occlusion306_g182 = outAO1460;
			half Roughness64_g182 = max( ( perceprualRoughness188_g182 * perceprualRoughness188_g182 ) , 0.002 );
			half SmithJointGGXVisibilityTerm42_g182 = ( 0.5 / ( ( ( ( NdotV55_g182 * ( 1.0 - Roughness64_g182 ) ) + Roughness64_g182 ) * NdotL20_g182 ) + 1E-05 + ( NdotV55_g182 * ( Roughness64_g182 + ( ( 1.0 - Roughness64_g182 ) * NdotL20_g182 ) ) ) ) );
			float a266_g182 = ( Roughness64_g182 * Roughness64_g182 );
			float3 normalizeResult87_g182 = ASESafeNormalize( ( lightDir14_g182 + viewDir15_g182 ) );
			float dotResult88_g182 = dot( normalDir28_g182 , normalizeResult87_g182 );
			float NdotH90_g182 = saturate( dotResult88_g182 );
			float d99_g182 = ( ( ( ( NdotH90_g182 * a266_g182 ) - NdotH90_g182 ) * NdotH90_g182 ) + 1.0 );
			half GGXTerm43_g182 = ( ( ( 1.0 / UNITY_PI ) * a266_g182 ) / ( ( d99_g182 * d99_g182 ) + 1E-07 ) );
			float temp_output_36_0_g182 = ( SmithJointGGXVisibilityTerm42_g182 * GGXTerm43_g182 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g182 = sqrt( max( 0.0001 , temp_output_36_0_g182 ) );
			#else
				float staticSwitch5_g182 = temp_output_36_0_g182;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g182 = 0.0;
			#else
				float staticSwitch119_g182 = max( 0.0 , ( staticSwitch5_g182 * NdotL20_g182 ) );
			#endif
			#ifdef _IRIDISCENT_ON
				float3 staticSwitch1443 = temp_output_1433_0;
			#else
				float3 staticSwitch1443 = (_SpecColor).rgb;
			#endif
			float2 uv_SpecularMap1451 = i.uv_texcoord;
			half3 specColor1444 = (0).xxx;
			half oneMinusReflectivity1444 = 0;
			half3 diffuseAndSpecularFromMetallic1444 = DiffuseAndSpecularFromMetallic(( staticSwitch1443 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1451 )).rgb ),temp_output_1458_340,specColor1444,oneMinusReflectivity1444);
			#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1439 = specColor1444;
			#else
				float3 staticSwitch1439 = specColor1436;
			#endif
			float3 OutSpecular1440 = staticSwitch1439;
			float3 SpecColor140_g182 = ( OutSpecular1440 * occlusion306_g182 );
			float SpecularTerm34_g182 = ( staticSwitch119_g182 * ( SpecColor140_g182.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			half3 FresnelTerm130_g182 = ( ( pow( ( 1.0 - LdotH139_g182 ) , 5.0 ) * ( 1.0 - SpecColor140_g182 ) ) + SpecColor140_g182 );
			half metallic176_g182 = 0.0;
			half localOneMinusReflectivity176_g182 = OneMinusReflectivity( metallic176_g182 );
			half GrazingTerm163_g182 = saturate( ( smoothness169_g182 + ( 1.0 - localOneMinusReflectivity176_g182 ) ) );
			float3 temp_cast_3 = (GrazingTerm163_g182).xxx;
			float3 lerpResult159_g182 = lerp( SpecColor140_g182 , temp_cast_3 , pow( ( 1.0 - NdotV55_g182 ) , 5.0 ));
			half3 FresnelLerp165_g182 = lerpResult159_g182;
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g182 = ( 1.0 - ( 0.28 * Roughness64_g182 * perceprualRoughness188_g182 ) );
			#else
				float staticSwitch183_g182 = ( 1.0 / ( ( Roughness64_g182 * Roughness64_g182 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g182 = staticSwitch183_g182;
			float3 indirectNormal299_g182 = normalDir28_g182;
			Unity_GlossyEnvironmentData g299_g182 = UnityGlossyEnvironmentSetup( smoothness169_g182, data.worldViewDir, indirectNormal299_g182, float3(0,0,0));
			float3 indirectSpecular299_g182 = UnityGI_IndirectSpecular( data, occlusion306_g182, indirectNormal299_g182, g299_g182 );
			#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g182 = float3( 0,0,0 );
			#else
				float3 staticSwitch313_g182 = ( FresnelLerp165_g182 * SurfaceReduction182_g182 * indirectSpecular299_g182 );
			#endif
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g182 = float3( 0,0,0 );
			#else
				float3 staticSwitch305_g182 = staticSwitch313_g182;
			#endif
			float3 Maintex365_g179 = temp_output_182_0_g179;
			float EmissionMask384_g179 = tex2DNode139_g179.g;
			float3 outEmission1463 = ( (_EmissionColor).rgb * _EmissionStrength * Maintex365_g179 * EmissionMask384_g179 );
			float3 normalizeResult61_g183 = normalize( (WorldNormalVector( i , outNormal1461 )) );
			float3 switchResult64_g183 = (((i.ASEVFace>0)?(normalizeResult61_g183):(-normalizeResult61_g183)));
			float3 normal2_g184 = ( _NormalBackDirInvert == 1.0 ? switchResult64_g183 : normalizeResult61_g183 );
			float3 localGI2_g184 = GI2_g184( normal2_g184 );
			float temp_output_59_0_g183 = ( _Translucency * 1.0 );
			float3 Diffuse1480 = temp_output_1458_345;
			float3 temp_output_6_0_g183 = Diffuse1480;
			float temp_output_74_0_g183 = outAO1460;
			c.rgb = ( ( ( OutAlbedo1438 * ( ( Diffuseterm281_g182 * lightAtten296_g182 ) + ( indirectDiffuse203_g182 * occlusion306_g182 ) ) ) + ( SpecularTerm34_g182 * lightAtten296_g182 * FresnelTerm130_g182 ) + staticSwitch305_g182 ) + outEmission1463 + saturate( ( ( localGI2_g184 * _TransAmbient ) * temp_output_59_0_g183 * temp_output_6_0_g183 * temp_output_74_0_g183 ) ) );
			c.a = outAlpha1475;
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
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d11_9x d3d11 
		#pragma surface surf StandardCustomLighting alpha:fade keepalpha fullforwardshadows exclude_path:deferred vertex:vertexDataFunc 

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
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
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
	Fallback "Legacy Shaders/Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18912
6;0.4;1511;884;5151.824;3969.545;3.422746;True;False
Node;AmplifyShaderEditor.FunctionNode;1458;-4699.064,-2621.177;Inherit;False;AIT Item Function;12;;179;49cd9f91cda5058428ddba66ec049916;0;0;10;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;393;FLOAT;346;FLOAT;344;FLOAT;386;SAMPLERSTATE;389
Node;AmplifyShaderEditor.FunctionNode;1433;-4200.16,-2821.338;Inherit;False;Iridiscence;71;;180;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1441;-3816.678,-2408.3;Inherit;False;Property;_SpecColor;SpecColor;77;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1448;-3949.412,-2279.099;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1449;-3907.649,-2235.138;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1442;-3608.811,-2408.378;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1451;-3878.938,-2167.773;Inherit;True;Property;_SpecularMap;SpecularMap;78;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1443;-3369.068,-2282.165;Inherit;False;Property;_Iridiscent3;Iridiscent;70;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1435;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1434;-3959.779,-2825.442;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1453;-4081.569,-2135.987;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1450;-3576.045,-2167.701;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1452;-3104.445,-2184.323;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1435;-3715.672,-2823.518;Inherit;False;Property;_Iridiscent;Iridiscent;70;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1445;-4032.937,-2927.514;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1454;-4047.008,-2104.307;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1436;-3435.611,-2831.156;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1446;-3966.996,-2951.692;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1444;-2926.009,-2156.725;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1437;-3086.604,-3008.66;Inherit;False;Property;_SpecularSetup3;SpecularSetup;76;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1439;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1439;-2778.777,-2810.056;Inherit;False;Property;_SpecularSetup;SpecularSetup;76;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1460;-4292.047,-2259.522;Inherit;False;outAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1462;-4288.758,-2352.268;Inherit;False;outSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1480;-4351.441,-3035.49;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1477;-1546.095,-2782.501;Inherit;False;1074.142;767.8392;Comment;12;0;1476;1465;1466;1467;1469;1468;1470;1471;1472;1478;1481;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1438;-2795.734,-3006.639;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1424;-4603.135,-2110.442;Inherit;False;Property;_Cutoff;Cutoff;69;1;[Header];Create;True;1;Cutout Setting;0;0;True;0;False;0.5;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1440;-2463.491,-2809.51;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1461;-4294.626,-2521.722;Inherit;False;outNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1463;-4290.011,-2440.397;Inherit;False;outEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1470;-1481.727,-2561.885;Inherit;False;1440;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1469;-1468.786,-2649.589;Inherit;False;1461;outNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode;1455;-4285.025,-2148.347;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-1489.595,-2485.878;Inherit;False;1462;outSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-1442.644,-2404.862;Inherit;False;1460;outAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1472;-1472.049,-2732.501;Inherit;False;1438;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1481;-1454.444,-2279.686;Inherit;False;1480;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1467;-1189.724,-2698.364;Inherit;False;GGX Specular Light;10;;182;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1478;-1239.335,-2314.041;Inherit;False;Unity Translucency;1;;183;3081dbcb6ac8af842b2faa561ed4ff52;0;4;74;FLOAT;0;False;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.RegisterLocalVarNode;1475;-4152.196,-1921.123;Inherit;False;outAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1466;-1176.588,-2506.262;Inherit;False;1463;outEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-2760.295,-1893.405;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;2;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1465;-953.8468,-2605.471;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1476;-1183.675,-2418.171;Inherit;False;1475;outAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;-743.1533,-2621.535;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Hanmen/Item Alpha;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;2;True;1413;3;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.1;True;True;0;False;Transparent;2600;Transparent;ForwardOnly;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;2;5;True;1415;10;True;1412;0;5;False;-1;8;False;-1;0;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;Legacy Shaders/Diffuse;-1;-1;-1;-1;0;False;0;0;True;1344;-1;0;True;1424;0;0;0;False;0.1;False;-1;0;False;1414;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1433;1;1458;342
WireConnection;1448;0;1433;0
WireConnection;1449;0;1448;0
WireConnection;1442;0;1441;0
WireConnection;1443;1;1442;0
WireConnection;1443;0;1449;0
WireConnection;1434;0;1433;0
WireConnection;1434;1;1458;345
WireConnection;1434;2;1458;340
WireConnection;1453;0;1458;340
WireConnection;1450;0;1451;0
WireConnection;1452;0;1443;0
WireConnection;1452;1;1450;0
WireConnection;1435;1;1458;345
WireConnection;1435;0;1434;0
WireConnection;1445;0;1458;345
WireConnection;1454;0;1453;0
WireConnection;1436;0;1435;0
WireConnection;1436;1;1458;340
WireConnection;1446;0;1445;0
WireConnection;1444;0;1452;0
WireConnection;1444;1;1454;0
WireConnection;1437;1;1436;0
WireConnection;1437;0;1446;0
WireConnection;1439;1;1436;1
WireConnection;1439;0;1444;1
WireConnection;1460;0;1458;346
WireConnection;1462;0;1458;0
WireConnection;1480;0;1458;345
WireConnection;1438;0;1437;0
WireConnection;1440;0;1439;0
WireConnection;1461;0;1458;342
WireConnection;1463;0;1458;341
WireConnection;1455;0;1458;344
WireConnection;1455;1;1458;386
WireConnection;1455;2;1424;0
WireConnection;1467;286;1472;0
WireConnection;1467;30;1469;0
WireConnection;1467;146;1470;0
WireConnection;1467;147;1471;0
WireConnection;1467;302;1468;0
WireConnection;1478;74;1468;0
WireConnection;1478;6;1481;0
WireConnection;1478;26;1469;0
WireConnection;1475;0;1455;0
WireConnection;1465;0;1467;0
WireConnection;1465;1;1466;0
WireConnection;1465;2;1478;68
WireConnection;0;9;1476;0
WireConnection;0;13;1465;0
ASEEND*/
//CHKSM=30F0AD88BC3EF2D1F438F9C56F48542DC945302E