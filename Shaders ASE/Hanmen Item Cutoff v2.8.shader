// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Cutoff"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Header(Translucency)]_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		_TransmissionShadow("TransmissionShadow", Range( 0 , 1)) = 1
		[NoScaleOffset][Header (RGB Color A Cutoff)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1)]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = -1
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
		[Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.509434,0.509434,0.509434,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[Toggle(_SHADERTYPE_ITEM)] _SHADERTYPE_ITEM("_SHADERTYPE_ITEM", Float) = 1
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
		#include "UnityStandardBRDF.cginc"
		#include "Lighting.cginc"
		#include "AutoLight.cginc"
		#include "UnityShaderVariables.cginc"
		#define ASE_NEEDS_VERT_NORMAL
		#define ASE_SHADOWS 1
		#pragma shader_feature _SHADERTYPE_ITEM
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
		
		uniform float _Metallic3;
		uniform float _Metallic2;
		uniform float _Metallic;
		uniform float4 _BaseColor;
		uniform float _Glossiness2;
		uniform float _DetailMetallicScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float _Metallic4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _DetailNormalMapScale;
		uniform float _Glossiness3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float _MetallicMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float _WetAlbedoOffset;
		uniform float _DetailMetallicScale;
		uniform float _DetailUVRotator;
		uniform float2 _DetailUV;
		uniform float _TransmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _DetailUV2Rotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform float _Roughness2;
		uniform float _Roughness3;
		uniform half _DitherSwitch;
		uniform float _Translucency;
		uniform float _MetallicMask2;
		uniform float _MetallicMask3;
		uniform float _Glossiness;
		uniform float _Float0;
		uniform float _DetailNormalMapScale2;
		uniform float _DetailGlossScale;
		uniform float2 _DetailUV2;
		uniform float _DitherBlueNoise;
		uniform float _DetailGlossScale2;
		uniform float _CarvatureStrength;
		uniform float4 _Color3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float4 _Color;
		uniform float _EmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		SamplerState sampler_Noise;
		uniform float _ExGloss;
		uniform float _WetnessPower;
		uniform float4 _Color2;
		uniform float4 _EmissionColor;
		uniform float _Roughness;
		SamplerState sampler_TextureSample20;
		uniform float4 _Color4;
		uniform float _AlphaEx;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _TransmissionShadow;
		uniform float _TransDirect;
		uniform float _TransAmbient;
		uniform float _TransNormalDistortion;
		uniform float _TransScattering;
		uniform float _TransShadow;
		uniform float _CullMode;
		uniform float _NormalBackDirInvert;
		SamplerState sampler_trilinear_repeat;
		uniform float _MetallicMask4;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
		float4 _Noise_TexelSize;
		SamplerState sampler_point_repeat;
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

				float2 uv_MainTex119_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g47 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g47 );
				float3 temp_output_206_0_g47 = ( (tex2DNode119_g47).rgb * (_BaseColor).rgb );
				float3 Color1128_g47 = (_Color).rgb;
				float2 uv_ColorMask86_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g47 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g47 );
				float ColorMask199_g47 = ( 1.0 - ( tex2DNode86_g47.r + tex2DNode86_g47.g + tex2DNode86_g47.b ) );
				float3 Color2121_g47 = (_Color2).rgb;
				float ColorMask296_g47 = tex2DNode86_g47.r;
				float3 Color3123_g47 = (_Color3).rgb;
				float ColorMask3102_g47 = tex2DNode86_g47.g;
				float3 Color4136_g47 = (_Color4).rgb;
				float ColorMask494_g47 = tex2DNode86_g47.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g47 = i.ase_texcoord1.xy;
				float Carvature197_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g47 ).r;
				float3 lerpResult289_g47 = lerp( ( ( temp_output_206_0_g47 * Color1128_g47 * ColorMask199_g47 ) + ( Color2121_g47 * ColorMask296_g47 * temp_output_206_0_g47 ) + ( Color3123_g47 * ColorMask3102_g47 * temp_output_206_0_g47 ) + ( Color4136_g47 * ColorMask494_g47 * temp_output_206_0_g47 ) ) , temp_cast_0 , ( Carvature197_g47 * _CarvatureStrength ));
				float ExGloss255_g47 = _ExGloss;
				float3 lerpResult313_g47 = lerp( lerpResult289_g47 , ( lerpResult289_g47 * _WetAlbedoOffset ) , ExGloss255_g47);
				float3 DiffuseMix326_g47 = lerpResult313_g47;
				float3 temp_output_1441_345 = DiffuseMix326_g47;
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
				float2 uv_BumpMap180_g47 = i.ase_texcoord1.xy;
				float2 texCoord76_g47 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g47 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g47 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g47 = mul( texCoord76_g47 - float2( 0.5,0.5 ) , float2x2( cos78_g47 , -sin78_g47 , sin78_g47 , cos78_g47 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g47 = rotator78_g47;
				float2 break13_g47 = Detail1UV79_g47;
				float temp_output_14_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g47 = (float2(( break13_g47.x + temp_output_14_0_g47 ) , break13_g47.y));
				float4 tex2DNode85_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 );
				float2 uv_DetailMask81_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g47 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g47 );
				float DetailMask183_g47 = tex2DNode81_g47.r;
				float temp_output_42_0_g47 = ( DetailMask183_g47 * _DetailNormalMapScale );
				float3 appendResult56_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float2 appendResult27_g47 = (float2(break13_g47.x , ( break13_g47.y + temp_output_14_0_g47 )));
				float3 appendResult58_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float3 normalizeResult66_g47 = normalize( cross( appendResult56_g47 , appendResult58_g47 ) );
				float3 DetailNormal171_g47 = normalizeResult66_g47;
				float2 texCoord7_g47 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g47 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g47 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g47 = mul( texCoord7_g47 - float2( 0.5,0.5 ) , float2x2( cos10_g47 , -sin10_g47 , sin10_g47 , cos10_g47 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g47 = rotator10_g47;
				float2 break20_g47 = Detail2UV12_g47;
				float temp_output_21_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g47 = (float2(( break20_g47.x + temp_output_21_0_g47 ) , break20_g47.y));
				float4 tex2DNode41_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 );
				float DetailMask284_g47 = tex2DNode81_g47.g;
				float temp_output_49_0_g47 = ( DetailMask284_g47 * _DetailNormalMapScale2 );
				float3 appendResult63_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float2 appendResult31_g47 = (float2(break20_g47.x , ( break20_g47.y + temp_output_21_0_g47 )));
				float3 appendResult64_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float3 normalizeResult70_g47 = normalize( cross( appendResult63_g47 , appendResult64_g47 ) );
				float3 DetailNormal272_g47 = normalizeResult70_g47;
				float3 normalizeResult262_g47 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g47 ), _Float0 ) , DetailNormal171_g47 ) , DetailNormal272_g47 ) );
				float3 switchResult303_g47 = (((ase_vface>0)?(normalizeResult262_g47):(-normalizeResult262_g47)));
				float3 NormalMix321_g47 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g47 : normalizeResult262_g47 );
				float3 temp_output_1441_342 = NormalMix321_g47;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1441_342 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_1 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g176;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1441_345;
				float2 uv_MetallicGlossMap139_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g47 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g47 );
				float lerpResult167_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask);
				float lerpResult193_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask2);
				float lerpResult181_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask3);
				float lerpResult208_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask4);
				float lerpResult281_g47 = lerp( ( ( lerpResult167_g47 * _Metallic * ColorMask199_g47 ) + ( lerpResult193_g47 * _Metallic2 * ColorMask296_g47 ) + ( lerpResult181_g47 * _Metallic3 * ColorMask3102_g47 ) ) , ( lerpResult208_g47 * _Metallic4 ) , ColorMask494_g47);
				float Detail1148_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 ).r;
				float Detail2194_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 ).r;
				float MetallicFinal328_g47 = saturate( ( ( lerpResult281_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailMetallicScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailMetallicScale2 * DetailMask284_g47 ) ) ) );
				float temp_output_1441_340 = MetallicFinal328_g47;
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1441_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1441_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1441_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1441_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g186 = worldSpaceLightDir;
				float3 viewDir15_g186 = ase_worldViewDir;
				float3 normalizeResult136_g186 = ASESafeNormalize( ( lightDir14_g186 + viewDir15_g186 ) );
				float dotResult137_g186 = dot( lightDir14_g186 , normalizeResult136_g186 );
				float LdotH139_g186 = saturate( dotResult137_g186 );
				float lerpResult143_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness);
				float Glossiness1153_g47 = _Glossiness;
				float lerpResult158_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness2);
				float Glossiness2152_g47 = _Glossiness2;
				float lerpResult157_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness3);
				float Glossiness3154_g47 = _Glossiness3;
				float lerpResult187_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness4);
				float lerpResult230_g47 = lerp( ( ( lerpResult143_g47 * Glossiness1153_g47 * ColorMask199_g47 ) + ( lerpResult158_g47 * Glossiness2152_g47 * ColorMask296_g47 ) + ( lerpResult157_g47 * Glossiness3154_g47 * ColorMask3102_g47 ) ) , ( _Glossiness4 * lerpResult187_g47 ) , ColorMask494_g47);
				float lerpResult305_g47 = lerp( ( ( lerpResult230_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailGlossScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailGlossScale2 * DetailMask284_g47 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g47 ));
				float GlossinessFinal327_g47 = saturate( lerpResult305_g47 );
				float OutSmoothness1458 = GlossinessFinal327_g47;
				float smoothness169_g186 = OutSmoothness1458;
				float perceprualRoughness188_g186 = ( 1.0 - smoothness169_g186 );
				half fd90273_g186 = ( 0.5 + ( 2.0 * LdotH139_g186 * LdotH139_g186 * perceprualRoughness188_g186 ) );
				float3 OutNormal1457 = temp_output_1441_342;
				float3 temp_output_30_0_g186 = OutNormal1457;
				float3 tanNormal29_g186 = temp_output_30_0_g186;
				float3 worldNormal29_g186 = float3(dot(tanToWorld0,tanNormal29_g186), dot(tanToWorld1,tanNormal29_g186), dot(tanToWorld2,tanNormal29_g186));
				float3 normalizeResult25_g186 = normalize( worldNormal29_g186 );
				float3 normalDir28_g186 = normalizeResult25_g186;
				float dotResult21_g186 = dot( lightDir14_g186 , normalDir28_g186 );
				float NdotL20_g186 = saturate( dotResult21_g186 );
				half lightScatter253_g186 = ( ( ( fd90273_g186 - 1.0 ) * pow( ( 1.0 - NdotL20_g186 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g186 = dot( normalDir28_g186 , viewDir15_g186 );
				float NdotV55_g186 = saturate( dotResult56_g186 );
				half viewScatter254_g186 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g186 ) , 5.0 ) * ( fd90273_g186 - 1.0 ) ) );
				half disneydiffuse251_g186 = ( lightScatter253_g186 * viewScatter254_g186 );
				half Diffuseterm281_g186 = ( disneydiffuse251_g186 * NdotL20_g186 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g186 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g186 = temp_output_30_0_g186;
				float3 tanNormal203_g186 = normal198_g186;
				UnityGIInput data203_g186;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g186 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g186
				data203_g186.lightmapUV = i.ase_lmap;
				#endif //dylm203_g186
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g186
				data203_g186.ambient = i.ase_sh;
				#endif //fsh203_g186
				UnityGI gi203_g186 = UnityGI_Base(data203_g186, 1, float3(dot(tanToWorld0,tanNormal203_g186), dot(tanToWorld1,tanNormal203_g186), dot(tanToWorld2,tanNormal203_g186)));
				float2 uv_OcclusionMap259_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g47 );
				float lerpResult298_g47 = lerp( 1.0 , tex2DNode259_g47.g , _OcculusionStrength);
				float smoothstepResult266_g47 = smoothstep( 0.0 , 0.8 , Detail1148_g47);
				float lerpResult297_g47 = lerp( 1.0 , smoothstepResult266_g47 , ( _DetailOcculusionScale * DetailMask183_g47 ));
				float smoothstepResult274_g47 = smoothstep( 0.0 , 0.8 , Detail2194_g47);
				float lerpResult299_g47 = lerp( 1.0 , smoothstepResult274_g47 , ( _DetailOcculusionScale2 * DetailMask284_g47 ));
				float OcclusionMix323_g47 = saturate( ( lerpResult298_g47 * lerpResult297_g47 * lerpResult299_g47 ) );
				float OutAO1462 = OcclusionMix323_g47;
				float occlusion306_g186 = OutAO1462;
				half Roughness64_g186 = max( ( perceprualRoughness188_g186 * perceprualRoughness188_g186 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g186 = ( 0.5 / ( ( ( ( NdotV55_g186 * ( 1.0 - Roughness64_g186 ) ) + Roughness64_g186 ) * NdotL20_g186 ) + 1E-05 + ( NdotV55_g186 * ( Roughness64_g186 + ( ( 1.0 - Roughness64_g186 ) * NdotL20_g186 ) ) ) ) );
				float a266_g186 = ( Roughness64_g186 * Roughness64_g186 );
				float3 normalizeResult87_g186 = ASESafeNormalize( ( lightDir14_g186 + viewDir15_g186 ) );
				float dotResult88_g186 = dot( normalDir28_g186 , normalizeResult87_g186 );
				float NdotH90_g186 = saturate( dotResult88_g186 );
				float d99_g186 = ( ( ( ( NdotH90_g186 * a266_g186 ) - NdotH90_g186 ) * NdotH90_g186 ) + 1.0 );
				half GGXTerm43_g186 = ( ( ( 1.0 / UNITY_PI ) * a266_g186 ) / ( ( d99_g186 * d99_g186 ) + 1E-07 ) );
				float temp_output_36_0_g186 = ( SmithJointGGXVisibilityTerm42_g186 * GGXTerm43_g186 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g186 = sqrt( max( 0.0001 , temp_output_36_0_g186 ) );
				#else
				float staticSwitch5_g186 = temp_output_36_0_g186;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g186 = 0.0;
				#else
				float staticSwitch119_g186 = max( 0.0 , ( staticSwitch5_g186 * NdotL20_g186 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1441_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g186 = OutSpecular1456;
				float SpecularTerm34_g186 = ( staticSwitch119_g186 * ( SpecColor140_g186.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g186 = ( ( pow( ( 1.0 - LdotH139_g186 ) , 5.0 ) * ( 1.0 - SpecColor140_g186 ) ) + SpecColor140_g186 );
				half metallic176_g186 = 0.0;
				half localOneMinusReflectivity176_g186 = OneMinusReflectivity( metallic176_g186 );
				half GrazingTerm163_g186 = saturate( ( smoothness169_g186 + ( 1.0 - localOneMinusReflectivity176_g186 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g186).xxx;
				float3 lerpResult159_g186 = lerp( SpecColor140_g186 , temp_cast_3 , pow( ( 1.0 - NdotV55_g186 ) , 5.0 ));
				half3 FresnelLerp165_g186 = lerpResult159_g186;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g186 = ( 1.0 - ( 0.28 * Roughness64_g186 * perceprualRoughness188_g186 ) );
				#else
				float staticSwitch183_g186 = ( 1.0 / ( ( Roughness64_g186 * Roughness64_g186 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g186 = staticSwitch183_g186;
				float3 tanNormal299_g186 = normal198_g186;
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
				Unity_GlossyEnvironmentData g299_g186 = UnityGlossyEnvironmentSetup( smoothness169_g186, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g186), dot(tanToWorld1,tanNormal299_g186), dot(tanToWorld2,tanNormal299_g186)), float3(0,0,0));
				float3 indirectSpecular299_g186 = UnityGI_IndirectSpecular( data, occlusion306_g186, float3(dot(tanToWorld0,tanNormal299_g186), dot(tanToWorld1,tanNormal299_g186), dot(tanToWorld2,tanNormal299_g186)), g299_g186 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g186 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g186 = ( FresnelLerp165_g186 * SurfaceReduction182_g186 * indirectSpecular299_g186 );
				#endif
				float3 EmissionFinal324_g47 = ( tex2DNode139_g47.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 OutEmission1463 = EmissionFinal324_g47;
				float3 tanNormal27_g184 = OutNormal1457;
				float3 worldNormal27_g184 = normalize( float3(dot(tanToWorld0,tanNormal27_g184), dot(tanToWorld1,tanNormal27_g184), dot(tanToWorld2,tanNormal27_g184)) );
				float dotResult20_g184 = dot( ase_worldViewDir , -( ( worldNormal27_g184 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float OutTranslucency1460 = saturate( _Translucency );
				float3 lerpResult39_g184 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 appendResult50_g184 = (float3(-worldNormal27_g184.x , -worldNormal27_g184.y , worldNormal27_g184.z));
				UnityGIInput data15_g184;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g184 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g184
				data15_g184.lightmapUV = i.ase_lmap;
				#endif //dylm15_g184
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g184
				data15_g184.ambient = i.ase_sh;
				#endif //fsh15_g184
				UnityGI gi15_g184 = UnityGI_Base(data15_g184, 1, appendResult50_g184);
				float3 tanNormal14_g183 = OutNormal1457;
				float3 worldNormal14_g183 = normalize( float3(dot(tanToWorld0,tanNormal14_g183), dot(tanToWorld1,tanNormal14_g183), dot(tanToWorld2,tanNormal14_g183)) );
				float dotResult9_g183 = dot( worldNormal14_g183 , worldSpaceLightDir );
				float3 lerpResult21_g183 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float OutTransmission1459 = _TransmissionStrength;
				
				float AlphaInput137_g47 = tex2DNode119_g47.a;
				float Color1Alpha101_g47 = _Color.a;
				float Color2Alpha97_g47 = _Color2.a;
				float Color3Alpha98_g47 = _Color3.a;
				float Color4Alpha100_g47 = _Color4.a;
				float AlphaMix258_g47 = saturate( ( AlphaInput137_g47 * ( ( Color1Alpha101_g47 * ColorMask199_g47 ) + ( Color2Alpha97_g47 * ColorMask296_g47 ) + ( Color3Alpha98_g47 * ColorMask3102_g47 ) + ( Color4Alpha100_g47 * ColorMask494_g47 ) ) ) );
				float Bluenoise284_g47 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g47 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g47 = Dither8x8Bayer( fmod(clipScreen290_g47.x, 8), fmod(clipScreen290_g47.y, 8) );
				dither290_g47 = step( dither290_g47, AlphaMix258_g47 );
				float dither286_g47 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g47 = step( dither286_g47, AlphaMix258_g47 );
				float clampResult353_g47 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g47 = tex2DNode259_g47.b;
				float OutOp1464 = ( ( _DitherSwitch == 0.0 ? AlphaMix258_g47 : ( Bluenoise284_g47 == 0.0 ? dither290_g47 : dither286_g47 ) ) * step( pow( ( 1.0 - clampResult353_g47 ) , 0.2 ) , pow( Tearing360_g47 , 0.5 ) ) );
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g186 * lightAtten296_g186 ) + ( gi203_g186.indirect.diffuse * occlusion306_g186 ) ) ) + ( SpecularTerm34_g186 * lightAtten296_g186 * FresnelTerm130_g186 ) + staticSwitch305_g186 ) + OutEmission1463 + ( ( OutAlbedo1461 * ( ( pow( saturate( dotResult20_g184 ) , _TransScattering ) * _TransDirect ) * OutTranslucency1460 * lerpResult39_g184 ) ) + ( gi15_g184.indirect.diffuse * _TransAmbient ) ) + ( ( max( 0.0 , -dotResult9_g183 ) * lerpResult21_g183 * OutTransmission1459 ) * OutAlbedo1461 ) );
				outAlpha = OutOp1464;
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
			#pragma shader_feature _SHADERTYPE_ITEM
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
			
			uniform float _Metallic3;
			uniform float _Metallic2;
			uniform float _Metallic;
			uniform float4 _BaseColor;
			uniform float _Glossiness2;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _MetallicMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _WetAlbedoOffset;
			uniform float _DetailMetallicScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV;
			uniform float _TransmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailUV2Rotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _Roughness2;
			uniform float _Roughness3;
			uniform half _DitherSwitch;
			uniform float _Translucency;
			uniform float _MetallicMask2;
			uniform float _MetallicMask3;
			uniform float _Glossiness;
			uniform float _Float0;
			uniform float _DetailNormalMapScale2;
			uniform float _DetailGlossScale;
			uniform float2 _DetailUV2;
			uniform float _DitherBlueNoise;
			uniform float _DetailGlossScale2;
			uniform float _CarvatureStrength;
			uniform float4 _Color3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float4 _Color;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _ExGloss;
			uniform float _WetnessPower;
			uniform float4 _Color2;
			uniform float4 _EmissionColor;
			uniform float _Roughness;
			SamplerState sampler_TextureSample20;
			uniform float4 _Color4;
			uniform float _AlphaEx;
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransmissionShadow;
			uniform float _TransDirect;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransScattering;
			uniform float _TransShadow;
			uniform float _CullMode;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask4;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
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

				float2 uv_MainTex119_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g47 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g47 );
				float3 temp_output_206_0_g47 = ( (tex2DNode119_g47).rgb * (_BaseColor).rgb );
				float3 Color1128_g47 = (_Color).rgb;
				float2 uv_ColorMask86_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g47 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g47 );
				float ColorMask199_g47 = ( 1.0 - ( tex2DNode86_g47.r + tex2DNode86_g47.g + tex2DNode86_g47.b ) );
				float3 Color2121_g47 = (_Color2).rgb;
				float ColorMask296_g47 = tex2DNode86_g47.r;
				float3 Color3123_g47 = (_Color3).rgb;
				float ColorMask3102_g47 = tex2DNode86_g47.g;
				float3 Color4136_g47 = (_Color4).rgb;
				float ColorMask494_g47 = tex2DNode86_g47.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g47 = i.ase_texcoord1.xy;
				float Carvature197_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g47 ).r;
				float3 lerpResult289_g47 = lerp( ( ( temp_output_206_0_g47 * Color1128_g47 * ColorMask199_g47 ) + ( Color2121_g47 * ColorMask296_g47 * temp_output_206_0_g47 ) + ( Color3123_g47 * ColorMask3102_g47 * temp_output_206_0_g47 ) + ( Color4136_g47 * ColorMask494_g47 * temp_output_206_0_g47 ) ) , temp_cast_0 , ( Carvature197_g47 * _CarvatureStrength ));
				float ExGloss255_g47 = _ExGloss;
				float3 lerpResult313_g47 = lerp( lerpResult289_g47 , ( lerpResult289_g47 * _WetAlbedoOffset ) , ExGloss255_g47);
				float3 DiffuseMix326_g47 = lerpResult313_g47;
				float3 temp_output_1441_345 = DiffuseMix326_g47;
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
				float2 uv_BumpMap180_g47 = i.ase_texcoord1.xy;
				float2 texCoord76_g47 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g47 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g47 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g47 = mul( texCoord76_g47 - float2( 0.5,0.5 ) , float2x2( cos78_g47 , -sin78_g47 , sin78_g47 , cos78_g47 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g47 = rotator78_g47;
				float2 break13_g47 = Detail1UV79_g47;
				float temp_output_14_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g47 = (float2(( break13_g47.x + temp_output_14_0_g47 ) , break13_g47.y));
				float4 tex2DNode85_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 );
				float2 uv_DetailMask81_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g47 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g47 );
				float DetailMask183_g47 = tex2DNode81_g47.r;
				float temp_output_42_0_g47 = ( DetailMask183_g47 * _DetailNormalMapScale );
				float3 appendResult56_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float2 appendResult27_g47 = (float2(break13_g47.x , ( break13_g47.y + temp_output_14_0_g47 )));
				float3 appendResult58_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float3 normalizeResult66_g47 = normalize( cross( appendResult56_g47 , appendResult58_g47 ) );
				float3 DetailNormal171_g47 = normalizeResult66_g47;
				float2 texCoord7_g47 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g47 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g47 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g47 = mul( texCoord7_g47 - float2( 0.5,0.5 ) , float2x2( cos10_g47 , -sin10_g47 , sin10_g47 , cos10_g47 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g47 = rotator10_g47;
				float2 break20_g47 = Detail2UV12_g47;
				float temp_output_21_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g47 = (float2(( break20_g47.x + temp_output_21_0_g47 ) , break20_g47.y));
				float4 tex2DNode41_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 );
				float DetailMask284_g47 = tex2DNode81_g47.g;
				float temp_output_49_0_g47 = ( DetailMask284_g47 * _DetailNormalMapScale2 );
				float3 appendResult63_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float2 appendResult31_g47 = (float2(break20_g47.x , ( break20_g47.y + temp_output_21_0_g47 )));
				float3 appendResult64_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float3 normalizeResult70_g47 = normalize( cross( appendResult63_g47 , appendResult64_g47 ) );
				float3 DetailNormal272_g47 = normalizeResult70_g47;
				float3 normalizeResult262_g47 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g47 ), _Float0 ) , DetailNormal171_g47 ) , DetailNormal272_g47 ) );
				float3 switchResult303_g47 = (((ase_vface>0)?(normalizeResult262_g47):(-normalizeResult262_g47)));
				float3 NormalMix321_g47 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g47 : normalizeResult262_g47 );
				float3 temp_output_1441_342 = NormalMix321_g47;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1441_342 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_1 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g176;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1441_345;
				float2 uv_MetallicGlossMap139_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g47 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g47 );
				float lerpResult167_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask);
				float lerpResult193_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask2);
				float lerpResult181_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask3);
				float lerpResult208_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask4);
				float lerpResult281_g47 = lerp( ( ( lerpResult167_g47 * _Metallic * ColorMask199_g47 ) + ( lerpResult193_g47 * _Metallic2 * ColorMask296_g47 ) + ( lerpResult181_g47 * _Metallic3 * ColorMask3102_g47 ) ) , ( lerpResult208_g47 * _Metallic4 ) , ColorMask494_g47);
				float Detail1148_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 ).r;
				float Detail2194_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 ).r;
				float MetallicFinal328_g47 = saturate( ( ( lerpResult281_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailMetallicScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailMetallicScale2 * DetailMask284_g47 ) ) ) );
				float temp_output_1441_340 = MetallicFinal328_g47;
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1441_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1441_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1441_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1441_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g186 = worldSpaceLightDir;
				float3 viewDir15_g186 = ase_worldViewDir;
				float3 normalizeResult136_g186 = ASESafeNormalize( ( lightDir14_g186 + viewDir15_g186 ) );
				float dotResult137_g186 = dot( lightDir14_g186 , normalizeResult136_g186 );
				float LdotH139_g186 = saturate( dotResult137_g186 );
				float lerpResult143_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness);
				float Glossiness1153_g47 = _Glossiness;
				float lerpResult158_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness2);
				float Glossiness2152_g47 = _Glossiness2;
				float lerpResult157_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness3);
				float Glossiness3154_g47 = _Glossiness3;
				float lerpResult187_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness4);
				float lerpResult230_g47 = lerp( ( ( lerpResult143_g47 * Glossiness1153_g47 * ColorMask199_g47 ) + ( lerpResult158_g47 * Glossiness2152_g47 * ColorMask296_g47 ) + ( lerpResult157_g47 * Glossiness3154_g47 * ColorMask3102_g47 ) ) , ( _Glossiness4 * lerpResult187_g47 ) , ColorMask494_g47);
				float lerpResult305_g47 = lerp( ( ( lerpResult230_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailGlossScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailGlossScale2 * DetailMask284_g47 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g47 ));
				float GlossinessFinal327_g47 = saturate( lerpResult305_g47 );
				float OutSmoothness1458 = GlossinessFinal327_g47;
				float smoothness169_g186 = OutSmoothness1458;
				float perceprualRoughness188_g186 = ( 1.0 - smoothness169_g186 );
				half fd90273_g186 = ( 0.5 + ( 2.0 * LdotH139_g186 * LdotH139_g186 * perceprualRoughness188_g186 ) );
				float3 OutNormal1457 = temp_output_1441_342;
				float3 temp_output_30_0_g186 = OutNormal1457;
				float3 tanNormal29_g186 = temp_output_30_0_g186;
				float3 worldNormal29_g186 = float3(dot(tanToWorld0,tanNormal29_g186), dot(tanToWorld1,tanNormal29_g186), dot(tanToWorld2,tanNormal29_g186));
				float3 normalizeResult25_g186 = normalize( worldNormal29_g186 );
				float3 normalDir28_g186 = normalizeResult25_g186;
				float dotResult21_g186 = dot( lightDir14_g186 , normalDir28_g186 );
				float NdotL20_g186 = saturate( dotResult21_g186 );
				half lightScatter253_g186 = ( ( ( fd90273_g186 - 1.0 ) * pow( ( 1.0 - NdotL20_g186 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g186 = dot( normalDir28_g186 , viewDir15_g186 );
				float NdotV55_g186 = saturate( dotResult56_g186 );
				half viewScatter254_g186 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g186 ) , 5.0 ) * ( fd90273_g186 - 1.0 ) ) );
				half disneydiffuse251_g186 = ( lightScatter253_g186 * viewScatter254_g186 );
				half Diffuseterm281_g186 = ( disneydiffuse251_g186 * NdotL20_g186 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g186 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g186 = temp_output_30_0_g186;
				float3 tanNormal203_g186 = normal198_g186;
				UnityGIInput data203_g186;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g186 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g186
				data203_g186.lightmapUV = i.ase_lmap;
				#endif //dylm203_g186
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g186
				data203_g186.ambient = i.ase_sh;
				#endif //fsh203_g186
				UnityGI gi203_g186 = UnityGI_Base(data203_g186, 1, float3(dot(tanToWorld0,tanNormal203_g186), dot(tanToWorld1,tanNormal203_g186), dot(tanToWorld2,tanNormal203_g186)));
				float2 uv_OcclusionMap259_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g47 );
				float lerpResult298_g47 = lerp( 1.0 , tex2DNode259_g47.g , _OcculusionStrength);
				float smoothstepResult266_g47 = smoothstep( 0.0 , 0.8 , Detail1148_g47);
				float lerpResult297_g47 = lerp( 1.0 , smoothstepResult266_g47 , ( _DetailOcculusionScale * DetailMask183_g47 ));
				float smoothstepResult274_g47 = smoothstep( 0.0 , 0.8 , Detail2194_g47);
				float lerpResult299_g47 = lerp( 1.0 , smoothstepResult274_g47 , ( _DetailOcculusionScale2 * DetailMask284_g47 ));
				float OcclusionMix323_g47 = saturate( ( lerpResult298_g47 * lerpResult297_g47 * lerpResult299_g47 ) );
				float OutAO1462 = OcclusionMix323_g47;
				float occlusion306_g186 = OutAO1462;
				half Roughness64_g186 = max( ( perceprualRoughness188_g186 * perceprualRoughness188_g186 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g186 = ( 0.5 / ( ( ( ( NdotV55_g186 * ( 1.0 - Roughness64_g186 ) ) + Roughness64_g186 ) * NdotL20_g186 ) + 1E-05 + ( NdotV55_g186 * ( Roughness64_g186 + ( ( 1.0 - Roughness64_g186 ) * NdotL20_g186 ) ) ) ) );
				float a266_g186 = ( Roughness64_g186 * Roughness64_g186 );
				float3 normalizeResult87_g186 = ASESafeNormalize( ( lightDir14_g186 + viewDir15_g186 ) );
				float dotResult88_g186 = dot( normalDir28_g186 , normalizeResult87_g186 );
				float NdotH90_g186 = saturate( dotResult88_g186 );
				float d99_g186 = ( ( ( ( NdotH90_g186 * a266_g186 ) - NdotH90_g186 ) * NdotH90_g186 ) + 1.0 );
				half GGXTerm43_g186 = ( ( ( 1.0 / UNITY_PI ) * a266_g186 ) / ( ( d99_g186 * d99_g186 ) + 1E-07 ) );
				float temp_output_36_0_g186 = ( SmithJointGGXVisibilityTerm42_g186 * GGXTerm43_g186 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g186 = sqrt( max( 0.0001 , temp_output_36_0_g186 ) );
				#else
				float staticSwitch5_g186 = temp_output_36_0_g186;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g186 = 0.0;
				#else
				float staticSwitch119_g186 = max( 0.0 , ( staticSwitch5_g186 * NdotL20_g186 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1441_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g186 = OutSpecular1456;
				float SpecularTerm34_g186 = ( staticSwitch119_g186 * ( SpecColor140_g186.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g186 = ( ( pow( ( 1.0 - LdotH139_g186 ) , 5.0 ) * ( 1.0 - SpecColor140_g186 ) ) + SpecColor140_g186 );
				half metallic176_g186 = 0.0;
				half localOneMinusReflectivity176_g186 = OneMinusReflectivity( metallic176_g186 );
				half GrazingTerm163_g186 = saturate( ( smoothness169_g186 + ( 1.0 - localOneMinusReflectivity176_g186 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g186).xxx;
				float3 lerpResult159_g186 = lerp( SpecColor140_g186 , temp_cast_3 , pow( ( 1.0 - NdotV55_g186 ) , 5.0 ));
				half3 FresnelLerp165_g186 = lerpResult159_g186;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g186 = ( 1.0 - ( 0.28 * Roughness64_g186 * perceprualRoughness188_g186 ) );
				#else
				float staticSwitch183_g186 = ( 1.0 / ( ( Roughness64_g186 * Roughness64_g186 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g186 = staticSwitch183_g186;
				float3 tanNormal299_g186 = normal198_g186;
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
				Unity_GlossyEnvironmentData g299_g186 = UnityGlossyEnvironmentSetup( smoothness169_g186, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g186), dot(tanToWorld1,tanNormal299_g186), dot(tanToWorld2,tanNormal299_g186)), float3(0,0,0));
				float3 indirectSpecular299_g186 = UnityGI_IndirectSpecular( data, occlusion306_g186, float3(dot(tanToWorld0,tanNormal299_g186), dot(tanToWorld1,tanNormal299_g186), dot(tanToWorld2,tanNormal299_g186)), g299_g186 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g186 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g186 = ( FresnelLerp165_g186 * SurfaceReduction182_g186 * indirectSpecular299_g186 );
				#endif
				float3 EmissionFinal324_g47 = ( tex2DNode139_g47.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 OutEmission1463 = EmissionFinal324_g47;
				float3 tanNormal27_g184 = OutNormal1457;
				float3 worldNormal27_g184 = normalize( float3(dot(tanToWorld0,tanNormal27_g184), dot(tanToWorld1,tanNormal27_g184), dot(tanToWorld2,tanNormal27_g184)) );
				float dotResult20_g184 = dot( ase_worldViewDir , -( ( worldNormal27_g184 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float OutTranslucency1460 = saturate( _Translucency );
				float3 lerpResult39_g184 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 appendResult50_g184 = (float3(-worldNormal27_g184.x , -worldNormal27_g184.y , worldNormal27_g184.z));
				UnityGIInput data15_g184;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g184 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g184
				data15_g184.lightmapUV = i.ase_lmap;
				#endif //dylm15_g184
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g184
				data15_g184.ambient = i.ase_sh;
				#endif //fsh15_g184
				UnityGI gi15_g184 = UnityGI_Base(data15_g184, 1, appendResult50_g184);
				float3 tanNormal14_g183 = OutNormal1457;
				float3 worldNormal14_g183 = normalize( float3(dot(tanToWorld0,tanNormal14_g183), dot(tanToWorld1,tanNormal14_g183), dot(tanToWorld2,tanNormal14_g183)) );
				float dotResult9_g183 = dot( worldNormal14_g183 , worldSpaceLightDir );
				float3 lerpResult21_g183 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float OutTransmission1459 = _TransmissionStrength;
				
				float AlphaInput137_g47 = tex2DNode119_g47.a;
				float Color1Alpha101_g47 = _Color.a;
				float Color2Alpha97_g47 = _Color2.a;
				float Color3Alpha98_g47 = _Color3.a;
				float Color4Alpha100_g47 = _Color4.a;
				float AlphaMix258_g47 = saturate( ( AlphaInput137_g47 * ( ( Color1Alpha101_g47 * ColorMask199_g47 ) + ( Color2Alpha97_g47 * ColorMask296_g47 ) + ( Color3Alpha98_g47 * ColorMask3102_g47 ) + ( Color4Alpha100_g47 * ColorMask494_g47 ) ) ) );
				float Bluenoise284_g47 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g47 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g47 = Dither8x8Bayer( fmod(clipScreen290_g47.x, 8), fmod(clipScreen290_g47.y, 8) );
				dither290_g47 = step( dither290_g47, AlphaMix258_g47 );
				float dither286_g47 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g47 = step( dither286_g47, AlphaMix258_g47 );
				float clampResult353_g47 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g47 = tex2DNode259_g47.b;
				float OutOp1464 = ( ( _DitherSwitch == 0.0 ? AlphaMix258_g47 : ( Bluenoise284_g47 == 0.0 ? dither290_g47 : dither286_g47 ) ) * step( pow( ( 1.0 - clampResult353_g47 ) , 0.2 ) , pow( Tearing360_g47 , 0.5 ) ) );
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g186 * lightAtten296_g186 ) + ( gi203_g186.indirect.diffuse * occlusion306_g186 ) ) ) + ( SpecularTerm34_g186 * lightAtten296_g186 * FresnelTerm130_g186 ) + staticSwitch305_g186 ) + OutEmission1463 + ( ( OutAlbedo1461 * ( ( pow( saturate( dotResult20_g184 ) , _TransScattering ) * _TransDirect ) * OutTranslucency1460 * lerpResult39_g184 ) ) + ( gi15_g184.indirect.diffuse * _TransAmbient ) ) + ( ( max( 0.0 , -dotResult9_g183 ) * lerpResult21_g183 * OutTransmission1459 ) * OutAlbedo1461 ) );
				outAlpha = OutOp1464;
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
			#pragma shader_feature _SHADERTYPE_ITEM
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
			

			uniform float _Metallic3;
			uniform float _Metallic2;
			uniform float _Metallic;
			uniform float4 _BaseColor;
			uniform float _Glossiness2;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _MetallicMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _WetAlbedoOffset;
			uniform float _DetailMetallicScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV;
			uniform float _TransmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailUV2Rotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _Roughness2;
			uniform float _Roughness3;
			uniform half _DitherSwitch;
			uniform float _Translucency;
			uniform float _MetallicMask2;
			uniform float _MetallicMask3;
			uniform float _Glossiness;
			uniform float _Float0;
			uniform float _DetailNormalMapScale2;
			uniform float _DetailGlossScale;
			uniform float2 _DetailUV2;
			uniform float _DitherBlueNoise;
			uniform float _DetailGlossScale2;
			uniform float _CarvatureStrength;
			uniform float4 _Color3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float4 _Color;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _ExGloss;
			uniform float _WetnessPower;
			uniform float4 _Color2;
			uniform float4 _EmissionColor;
			uniform float _Roughness;
			SamplerState sampler_TextureSample20;
			uniform float4 _Color4;
			uniform float _AlphaEx;
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransmissionShadow;
			uniform float _TransDirect;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransScattering;
			uniform float _TransShadow;
			uniform float _CullMode;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask4;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _Glossiness4;
			uniform float _Roughness4;
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
			
			float3 GI2_g191( float3 normal )
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
				float2 uv_MainTex119_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g47 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g47 );
				float3 temp_output_206_0_g47 = ( (tex2DNode119_g47).rgb * (_BaseColor).rgb );
				float3 Color1128_g47 = (_Color).rgb;
				float2 uv_ColorMask86_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g47 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g47 );
				float ColorMask199_g47 = ( 1.0 - ( tex2DNode86_g47.r + tex2DNode86_g47.g + tex2DNode86_g47.b ) );
				float3 Color2121_g47 = (_Color2).rgb;
				float ColorMask296_g47 = tex2DNode86_g47.r;
				float3 Color3123_g47 = (_Color3).rgb;
				float ColorMask3102_g47 = tex2DNode86_g47.g;
				float3 Color4136_g47 = (_Color4).rgb;
				float ColorMask494_g47 = tex2DNode86_g47.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g47 = i.ase_texcoord1.xy;
				float Carvature197_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g47 ).r;
				float3 lerpResult289_g47 = lerp( ( ( temp_output_206_0_g47 * Color1128_g47 * ColorMask199_g47 ) + ( Color2121_g47 * ColorMask296_g47 * temp_output_206_0_g47 ) + ( Color3123_g47 * ColorMask3102_g47 * temp_output_206_0_g47 ) + ( Color4136_g47 * ColorMask494_g47 * temp_output_206_0_g47 ) ) , temp_cast_0 , ( Carvature197_g47 * _CarvatureStrength ));
				float ExGloss255_g47 = _ExGloss;
				float3 lerpResult313_g47 = lerp( lerpResult289_g47 , ( lerpResult289_g47 * _WetAlbedoOffset ) , ExGloss255_g47);
				float3 DiffuseMix326_g47 = lerpResult313_g47;
				float3 temp_output_1441_345 = DiffuseMix326_g47;
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
				float2 uv_BumpMap180_g47 = i.ase_texcoord1.xy;
				float2 texCoord76_g47 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g47 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g47 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g47 = mul( texCoord76_g47 - float2( 0.5,0.5 ) , float2x2( cos78_g47 , -sin78_g47 , sin78_g47 , cos78_g47 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g47 = rotator78_g47;
				float2 break13_g47 = Detail1UV79_g47;
				float temp_output_14_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g47 = (float2(( break13_g47.x + temp_output_14_0_g47 ) , break13_g47.y));
				float4 tex2DNode85_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 );
				float2 uv_DetailMask81_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g47 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g47 );
				float DetailMask183_g47 = tex2DNode81_g47.r;
				float temp_output_42_0_g47 = ( DetailMask183_g47 * _DetailNormalMapScale );
				float3 appendResult56_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float2 appendResult27_g47 = (float2(break13_g47.x , ( break13_g47.y + temp_output_14_0_g47 )));
				float3 appendResult58_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float3 normalizeResult66_g47 = normalize( cross( appendResult56_g47 , appendResult58_g47 ) );
				float3 DetailNormal171_g47 = normalizeResult66_g47;
				float2 texCoord7_g47 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g47 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g47 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g47 = mul( texCoord7_g47 - float2( 0.5,0.5 ) , float2x2( cos10_g47 , -sin10_g47 , sin10_g47 , cos10_g47 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g47 = rotator10_g47;
				float2 break20_g47 = Detail2UV12_g47;
				float temp_output_21_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g47 = (float2(( break20_g47.x + temp_output_21_0_g47 ) , break20_g47.y));
				float4 tex2DNode41_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 );
				float DetailMask284_g47 = tex2DNode81_g47.g;
				float temp_output_49_0_g47 = ( DetailMask284_g47 * _DetailNormalMapScale2 );
				float3 appendResult63_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float2 appendResult31_g47 = (float2(break20_g47.x , ( break20_g47.y + temp_output_21_0_g47 )));
				float3 appendResult64_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float3 normalizeResult70_g47 = normalize( cross( appendResult63_g47 , appendResult64_g47 ) );
				float3 DetailNormal272_g47 = normalizeResult70_g47;
				float3 normalizeResult262_g47 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g47 ), _Float0 ) , DetailNormal171_g47 ) , DetailNormal272_g47 ) );
				float3 switchResult303_g47 = (((ase_vface>0)?(normalizeResult262_g47):(-normalizeResult262_g47)));
				float3 NormalMix321_g47 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g47 : normalizeResult262_g47 );
				float3 temp_output_1441_342 = NormalMix321_g47;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1441_342 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_1 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g176;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1441_345;
				float2 uv_MetallicGlossMap139_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g47 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g47 );
				float lerpResult167_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask);
				float lerpResult193_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask2);
				float lerpResult181_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask3);
				float lerpResult208_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask4);
				float lerpResult281_g47 = lerp( ( ( lerpResult167_g47 * _Metallic * ColorMask199_g47 ) + ( lerpResult193_g47 * _Metallic2 * ColorMask296_g47 ) + ( lerpResult181_g47 * _Metallic3 * ColorMask3102_g47 ) ) , ( lerpResult208_g47 * _Metallic4 ) , ColorMask494_g47);
				float Detail1148_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 ).r;
				float Detail2194_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 ).r;
				float MetallicFinal328_g47 = saturate( ( ( lerpResult281_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailMetallicScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailMetallicScale2 * DetailMask284_g47 ) ) ) );
				float temp_output_1441_340 = MetallicFinal328_g47;
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1441_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1441_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1441_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1441_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float AlphaInput137_g47 = tex2DNode119_g47.a;
				float Color1Alpha101_g47 = _Color.a;
				float Color2Alpha97_g47 = _Color2.a;
				float Color3Alpha98_g47 = _Color3.a;
				float Color4Alpha100_g47 = _Color4.a;
				float AlphaMix258_g47 = saturate( ( AlphaInput137_g47 * ( ( Color1Alpha101_g47 * ColorMask199_g47 ) + ( Color2Alpha97_g47 * ColorMask296_g47 ) + ( Color3Alpha98_g47 * ColorMask3102_g47 ) + ( Color4Alpha100_g47 * ColorMask494_g47 ) ) ) );
				float Bluenoise284_g47 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g47 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g47 = Dither8x8Bayer( fmod(clipScreen290_g47.x, 8), fmod(clipScreen290_g47.y, 8) );
				dither290_g47 = step( dither290_g47, AlphaMix258_g47 );
				float dither286_g47 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g47 = step( dither286_g47, AlphaMix258_g47 );
				float clampResult353_g47 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap259_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g47 );
				float Tearing360_g47 = tex2DNode259_g47.b;
				float OutOp1464 = ( ( _DitherSwitch == 0.0 ? AlphaMix258_g47 : ( Bluenoise284_g47 == 0.0 ? dither290_g47 : dither286_g47 ) ) * step( pow( ( 1.0 - clampResult353_g47 ) , 0.2 ) , pow( Tearing360_g47 , 0.5 ) ) );
				clip( OutOp1464 - _Cutoff);
				float lerpResult298_g47 = lerp( 1.0 , tex2DNode259_g47.g , _OcculusionStrength);
				float smoothstepResult266_g47 = smoothstep( 0.0 , 0.8 , Detail1148_g47);
				float lerpResult297_g47 = lerp( 1.0 , smoothstepResult266_g47 , ( _DetailOcculusionScale * DetailMask183_g47 ));
				float smoothstepResult274_g47 = smoothstep( 0.0 , 0.8 , Detail2194_g47);
				float lerpResult299_g47 = lerp( 1.0 , smoothstepResult274_g47 , ( _DetailOcculusionScale2 * DetailMask284_g47 ));
				float OcclusionMix323_g47 = saturate( ( lerpResult298_g47 * lerpResult297_g47 * lerpResult299_g47 ) );
				float OutAO1462 = OcclusionMix323_g47;
				float4 appendResult2_g190 = (float4(OutAlbedo1461 , OutAO1462));
				
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1441_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float lerpResult143_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness);
				float Glossiness1153_g47 = _Glossiness;
				float lerpResult158_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness2);
				float Glossiness2152_g47 = _Glossiness2;
				float lerpResult157_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness3);
				float Glossiness3154_g47 = _Glossiness3;
				float lerpResult187_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness4);
				float lerpResult230_g47 = lerp( ( ( lerpResult143_g47 * Glossiness1153_g47 * ColorMask199_g47 ) + ( lerpResult158_g47 * Glossiness2152_g47 * ColorMask296_g47 ) + ( lerpResult157_g47 * Glossiness3154_g47 * ColorMask3102_g47 ) ) , ( _Glossiness4 * lerpResult187_g47 ) , ColorMask494_g47);
				float lerpResult305_g47 = lerp( ( ( lerpResult230_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailGlossScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailGlossScale2 * DetailMask284_g47 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g47 ));
				float GlossinessFinal327_g47 = saturate( lerpResult305_g47 );
				float OutSmoothness1458 = GlossinessFinal327_g47;
				float4 appendResult5_g190 = (float4(OutSpecular1456 , OutSmoothness1458));
				
				float3 OutNormal1457 = temp_output_1441_342;
				float3 tanNormal11_g190 = OutNormal1457;
				float3 worldNormal11_g190 = float3(dot(tanToWorld0,tanNormal11_g190), dot(tanToWorld1,tanNormal11_g190), dot(tanToWorld2,tanNormal11_g190));
				float4 appendResult13_g190 = (float4(( ( worldNormal11_g190 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 EmissionFinal324_g47 = ( tex2DNode139_g47.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 OutEmission1463 = EmissionFinal324_g47;
				float3 tanNormal1487 = OutNormal1457;
				float3 worldNormal1487 = float3(dot(tanToWorld0,tanNormal1487), dot(tanToWorld1,tanNormal1487), dot(tanToWorld2,tanNormal1487));
				float3 normal2_g191 = worldNormal1487;
				float3 localGI2_g191 = GI2_g191( normal2_g191 );
				float3 temp_output_20_0_g190 = ( OutEmission1463 + ( OutAlbedo1461 * localGI2_g191 ) );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g190 = temp_output_20_0_g190;
				#else
				float3 staticSwitch16_g190 = exp2( -temp_output_20_0_g190 );
				#endif
				float4 appendResult19_g190 = (float4(staticSwitch16_g190 , 1.0));
				
				
				outGBuffer0 = appendResult2_g190;
				outGBuffer1 = appendResult5_g190;
				outGBuffer2 = appendResult13_g190;
				outGBuffer3 = appendResult19_g190;
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
			#pragma shader_feature _SHADERTYPE_ITEM
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
			
			uniform float _Metallic3;
			uniform float _Metallic2;
			uniform float _Metallic;
			uniform float4 _BaseColor;
			uniform float _Glossiness2;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _Metallic4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailNormalMapScale;
			uniform float _Glossiness3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _MetallicMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float _WetAlbedoOffset;
			uniform float _DetailMetallicScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV;
			uniform float _TransmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailUV2Rotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _Roughness2;
			uniform float _Roughness3;
			uniform half _DitherSwitch;
			uniform float _Translucency;
			uniform float _MetallicMask2;
			uniform float _MetallicMask3;
			uniform float _Glossiness;
			uniform float _Float0;
			uniform float _DetailNormalMapScale2;
			uniform float _DetailGlossScale;
			uniform float2 _DetailUV2;
			uniform float _DitherBlueNoise;
			uniform float _DetailGlossScale2;
			uniform float _CarvatureStrength;
			uniform float4 _Color3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float4 _Color;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _ExGloss;
			uniform float _WetnessPower;
			uniform float4 _Color2;
			uniform float4 _EmissionColor;
			uniform float _Roughness;
			SamplerState sampler_TextureSample20;
			uniform float4 _Color4;
			uniform float _AlphaEx;
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransmissionShadow;
			uniform float _TransDirect;
			uniform float _TransAmbient;
			uniform float _TransNormalDistortion;
			uniform float _TransScattering;
			uniform float _TransShadow;
			uniform float _CullMode;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask4;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
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

				float2 uv_MainTex119_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g47 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g47 );
				float3 temp_output_206_0_g47 = ( (tex2DNode119_g47).rgb * (_BaseColor).rgb );
				float3 Color1128_g47 = (_Color).rgb;
				float2 uv_ColorMask86_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g47 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g47 );
				float ColorMask199_g47 = ( 1.0 - ( tex2DNode86_g47.r + tex2DNode86_g47.g + tex2DNode86_g47.b ) );
				float3 Color2121_g47 = (_Color2).rgb;
				float ColorMask296_g47 = tex2DNode86_g47.r;
				float3 Color3123_g47 = (_Color3).rgb;
				float ColorMask3102_g47 = tex2DNode86_g47.g;
				float3 Color4136_g47 = (_Color4).rgb;
				float ColorMask494_g47 = tex2DNode86_g47.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g47 = i.ase_texcoord1.xy;
				float Carvature197_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g47 ).r;
				float3 lerpResult289_g47 = lerp( ( ( temp_output_206_0_g47 * Color1128_g47 * ColorMask199_g47 ) + ( Color2121_g47 * ColorMask296_g47 * temp_output_206_0_g47 ) + ( Color3123_g47 * ColorMask3102_g47 * temp_output_206_0_g47 ) + ( Color4136_g47 * ColorMask494_g47 * temp_output_206_0_g47 ) ) , temp_cast_0 , ( Carvature197_g47 * _CarvatureStrength ));
				float ExGloss255_g47 = _ExGloss;
				float3 lerpResult313_g47 = lerp( lerpResult289_g47 , ( lerpResult289_g47 * _WetAlbedoOffset ) , ExGloss255_g47);
				float3 DiffuseMix326_g47 = lerpResult313_g47;
				float3 temp_output_1441_345 = DiffuseMix326_g47;
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
				float2 uv_BumpMap180_g47 = i.ase_texcoord1.xy;
				float2 texCoord76_g47 = i.ase_texcoord1.xy * _DetailUV + float2( 0,0 );
				float cos78_g47 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g47 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g47 = mul( texCoord76_g47 - float2( 0.5,0.5 ) , float2x2( cos78_g47 , -sin78_g47 , sin78_g47 , cos78_g47 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g47 = rotator78_g47;
				float2 break13_g47 = Detail1UV79_g47;
				float temp_output_14_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g47 = (float2(( break13_g47.x + temp_output_14_0_g47 ) , break13_g47.y));
				float4 tex2DNode85_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 );
				float2 uv_DetailMask81_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g47 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g47 );
				float DetailMask183_g47 = tex2DNode81_g47.r;
				float temp_output_42_0_g47 = ( DetailMask183_g47 * _DetailNormalMapScale );
				float3 appendResult56_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float2 appendResult27_g47 = (float2(break13_g47.x , ( break13_g47.y + temp_output_14_0_g47 )));
				float3 appendResult58_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g47 ).g - tex2DNode85_g47.g ) * temp_output_42_0_g47 )));
				float3 normalizeResult66_g47 = normalize( cross( appendResult56_g47 , appendResult58_g47 ) );
				float3 DetailNormal171_g47 = normalizeResult66_g47;
				float2 texCoord7_g47 = i.ase_texcoord1.xy * _DetailUV2 + float2( 0,0 );
				float cos10_g47 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g47 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g47 = mul( texCoord7_g47 - float2( 0.5,0.5 ) , float2x2( cos10_g47 , -sin10_g47 , sin10_g47 , cos10_g47 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g47 = rotator10_g47;
				float2 break20_g47 = Detail2UV12_g47;
				float temp_output_21_0_g47 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g47 = (float2(( break20_g47.x + temp_output_21_0_g47 ) , break20_g47.y));
				float4 tex2DNode41_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 );
				float DetailMask284_g47 = tex2DNode81_g47.g;
				float temp_output_49_0_g47 = ( DetailMask284_g47 * _DetailNormalMapScale2 );
				float3 appendResult63_g47 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float2 appendResult31_g47 = (float2(break20_g47.x , ( break20_g47.y + temp_output_21_0_g47 )));
				float3 appendResult64_g47 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g47 ).g - tex2DNode41_g47.g ) * temp_output_49_0_g47 )));
				float3 normalizeResult70_g47 = normalize( cross( appendResult63_g47 , appendResult64_g47 ) );
				float3 DetailNormal272_g47 = normalizeResult70_g47;
				float3 normalizeResult262_g47 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g47 ), _Float0 ) , DetailNormal171_g47 ) , DetailNormal272_g47 ) );
				float3 switchResult303_g47 = (((ase_vface>0)?(normalizeResult262_g47):(-normalizeResult262_g47)));
				float3 NormalMix321_g47 = ( _NormalBackDirInvert == 1.0 ? switchResult303_g47 : normalizeResult262_g47 );
				float3 temp_output_1441_342 = NormalMix321_g47;
				float dotResult7_g176 = dot( ase_tanViewDir , temp_output_1441_342 );
				float3 temp_output_12_0_g176 = (SampleGradient( gradient37_g176, dotResult7_g176 )).rgb;
				float temp_output_10_0_g176 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g176 = cos( temp_output_10_0_g176 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g176 = dot( _k7 , temp_output_12_0_g176 );
				float3 temp_output_32_0_g176 = ( ( ( ( ( ( temp_output_12_0_g176 * temp_output_13_0_g176 ) + ( cross( _k7 , temp_output_12_0_g176 ) * sin( temp_output_10_0_g176 ) ) + ( _k7 * dotResult14_g176 * ( 1.0 - temp_output_13_0_g176 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g176 = dot( temp_output_32_0_g176 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g176).xxx;
				float3 lerpResult35_g176 = lerp( temp_cast_1 , temp_output_32_0_g176 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g176;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1441_345;
				float2 uv_MetallicGlossMap139_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g47 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g47 );
				float lerpResult167_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask);
				float lerpResult193_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask2);
				float lerpResult181_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask3);
				float lerpResult208_g47 = lerp( 1.0 , tex2DNode139_g47.r , _MetallicMask4);
				float lerpResult281_g47 = lerp( ( ( lerpResult167_g47 * _Metallic * ColorMask199_g47 ) + ( lerpResult193_g47 * _Metallic2 * ColorMask296_g47 ) + ( lerpResult181_g47 * _Metallic3 * ColorMask3102_g47 ) ) , ( lerpResult208_g47 * _Metallic4 ) , ColorMask494_g47);
				float Detail1148_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g47 ).r;
				float Detail2194_g47 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g47 ).r;
				float MetallicFinal328_g47 = saturate( ( ( lerpResult281_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailMetallicScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailMetallicScale2 * DetailMask284_g47 ) ) ) );
				float temp_output_1441_340 = MetallicFinal328_g47;
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1441_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1441_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1441_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1441_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g186 = worldSpaceLightDir;
				float3 viewDir15_g186 = ase_worldViewDir;
				float3 normalizeResult136_g186 = ASESafeNormalize( ( lightDir14_g186 + viewDir15_g186 ) );
				float dotResult137_g186 = dot( lightDir14_g186 , normalizeResult136_g186 );
				float LdotH139_g186 = saturate( dotResult137_g186 );
				float lerpResult143_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness);
				float Glossiness1153_g47 = _Glossiness;
				float lerpResult158_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness2);
				float Glossiness2152_g47 = _Glossiness2;
				float lerpResult157_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness3);
				float Glossiness3154_g47 = _Glossiness3;
				float lerpResult187_g47 = lerp( 1.0 , tex2DNode139_g47.r , _Roughness4);
				float lerpResult230_g47 = lerp( ( ( lerpResult143_g47 * Glossiness1153_g47 * ColorMask199_g47 ) + ( lerpResult158_g47 * Glossiness2152_g47 * ColorMask296_g47 ) + ( lerpResult157_g47 * Glossiness3154_g47 * ColorMask3102_g47 ) ) , ( _Glossiness4 * lerpResult187_g47 ) , ColorMask494_g47);
				float lerpResult305_g47 = lerp( ( ( lerpResult230_g47 - ( ( 1.0 - Detail1148_g47 ) * ( _DetailGlossScale * DetailMask183_g47 ) ) ) - ( ( 1.0 - Detail2194_g47 ) * ( _DetailGlossScale2 * DetailMask284_g47 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g47 ));
				float GlossinessFinal327_g47 = saturate( lerpResult305_g47 );
				float OutSmoothness1458 = GlossinessFinal327_g47;
				float smoothness169_g186 = OutSmoothness1458;
				float perceprualRoughness188_g186 = ( 1.0 - smoothness169_g186 );
				half fd90273_g186 = ( 0.5 + ( 2.0 * LdotH139_g186 * LdotH139_g186 * perceprualRoughness188_g186 ) );
				float3 OutNormal1457 = temp_output_1441_342;
				float3 temp_output_30_0_g186 = OutNormal1457;
				float3 tanNormal29_g186 = temp_output_30_0_g186;
				float3 worldNormal29_g186 = float3(dot(tanToWorld0,tanNormal29_g186), dot(tanToWorld1,tanNormal29_g186), dot(tanToWorld2,tanNormal29_g186));
				float3 normalizeResult25_g186 = normalize( worldNormal29_g186 );
				float3 normalDir28_g186 = normalizeResult25_g186;
				float dotResult21_g186 = dot( lightDir14_g186 , normalDir28_g186 );
				float NdotL20_g186 = saturate( dotResult21_g186 );
				half lightScatter253_g186 = ( ( ( fd90273_g186 - 1.0 ) * pow( ( 1.0 - NdotL20_g186 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g186 = dot( normalDir28_g186 , viewDir15_g186 );
				float NdotV55_g186 = saturate( dotResult56_g186 );
				half viewScatter254_g186 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g186 ) , 5.0 ) * ( fd90273_g186 - 1.0 ) ) );
				half disneydiffuse251_g186 = ( lightScatter253_g186 * viewScatter254_g186 );
				half Diffuseterm281_g186 = ( disneydiffuse251_g186 * NdotL20_g186 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g186 = ( ase_lightColor.rgb * ase_atten );
				float3 normal198_g186 = temp_output_30_0_g186;
				float3 tanNormal203_g186 = normal198_g186;
				UnityGIInput data203_g186;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g186 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g186
				data203_g186.lightmapUV = i.ase_lmap;
				#endif //dylm203_g186
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g186
				data203_g186.ambient = i.ase_sh;
				#endif //fsh203_g186
				UnityGI gi203_g186 = UnityGI_Base(data203_g186, 1, float3(dot(tanToWorld0,tanNormal203_g186), dot(tanToWorld1,tanNormal203_g186), dot(tanToWorld2,tanNormal203_g186)));
				float2 uv_OcclusionMap259_g47 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g47 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g47 );
				float lerpResult298_g47 = lerp( 1.0 , tex2DNode259_g47.g , _OcculusionStrength);
				float smoothstepResult266_g47 = smoothstep( 0.0 , 0.8 , Detail1148_g47);
				float lerpResult297_g47 = lerp( 1.0 , smoothstepResult266_g47 , ( _DetailOcculusionScale * DetailMask183_g47 ));
				float smoothstepResult274_g47 = smoothstep( 0.0 , 0.8 , Detail2194_g47);
				float lerpResult299_g47 = lerp( 1.0 , smoothstepResult274_g47 , ( _DetailOcculusionScale2 * DetailMask284_g47 ));
				float OcclusionMix323_g47 = saturate( ( lerpResult298_g47 * lerpResult297_g47 * lerpResult299_g47 ) );
				float OutAO1462 = OcclusionMix323_g47;
				float occlusion306_g186 = OutAO1462;
				half Roughness64_g186 = max( ( perceprualRoughness188_g186 * perceprualRoughness188_g186 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g186 = ( 0.5 / ( ( ( ( NdotV55_g186 * ( 1.0 - Roughness64_g186 ) ) + Roughness64_g186 ) * NdotL20_g186 ) + 1E-05 + ( NdotV55_g186 * ( Roughness64_g186 + ( ( 1.0 - Roughness64_g186 ) * NdotL20_g186 ) ) ) ) );
				float a266_g186 = ( Roughness64_g186 * Roughness64_g186 );
				float3 normalizeResult87_g186 = ASESafeNormalize( ( lightDir14_g186 + viewDir15_g186 ) );
				float dotResult88_g186 = dot( normalDir28_g186 , normalizeResult87_g186 );
				float NdotH90_g186 = saturate( dotResult88_g186 );
				float d99_g186 = ( ( ( ( NdotH90_g186 * a266_g186 ) - NdotH90_g186 ) * NdotH90_g186 ) + 1.0 );
				half GGXTerm43_g186 = ( ( ( 1.0 / UNITY_PI ) * a266_g186 ) / ( ( d99_g186 * d99_g186 ) + 1E-07 ) );
				float temp_output_36_0_g186 = ( SmithJointGGXVisibilityTerm42_g186 * GGXTerm43_g186 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g186 = sqrt( max( 0.0001 , temp_output_36_0_g186 ) );
				#else
				float staticSwitch5_g186 = temp_output_36_0_g186;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g186 = 0.0;
				#else
				float staticSwitch119_g186 = max( 0.0 , ( staticSwitch5_g186 * NdotL20_g186 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1441_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g186 = OutSpecular1456;
				float SpecularTerm34_g186 = ( staticSwitch119_g186 * ( SpecColor140_g186.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g186 = ( ( pow( ( 1.0 - LdotH139_g186 ) , 5.0 ) * ( 1.0 - SpecColor140_g186 ) ) + SpecColor140_g186 );
				half metallic176_g186 = 0.0;
				half localOneMinusReflectivity176_g186 = OneMinusReflectivity( metallic176_g186 );
				half GrazingTerm163_g186 = saturate( ( smoothness169_g186 + ( 1.0 - localOneMinusReflectivity176_g186 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g186).xxx;
				float3 lerpResult159_g186 = lerp( SpecColor140_g186 , temp_cast_3 , pow( ( 1.0 - NdotV55_g186 ) , 5.0 ));
				half3 FresnelLerp165_g186 = lerpResult159_g186;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g186 = ( 1.0 - ( 0.28 * Roughness64_g186 * perceprualRoughness188_g186 ) );
				#else
				float staticSwitch183_g186 = ( 1.0 / ( ( Roughness64_g186 * Roughness64_g186 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g186 = staticSwitch183_g186;
				float3 tanNormal299_g186 = normal198_g186;
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
				Unity_GlossyEnvironmentData g299_g186 = UnityGlossyEnvironmentSetup( smoothness169_g186, ase_worldViewDir, float3(dot(tanToWorld0,tanNormal299_g186), dot(tanToWorld1,tanNormal299_g186), dot(tanToWorld2,tanNormal299_g186)), float3(0,0,0));
				float3 indirectSpecular299_g186 = UnityGI_IndirectSpecular( data, occlusion306_g186, float3(dot(tanToWorld0,tanNormal299_g186), dot(tanToWorld1,tanNormal299_g186), dot(tanToWorld2,tanNormal299_g186)), g299_g186 );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g186 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g186 = ( FresnelLerp165_g186 * SurfaceReduction182_g186 * indirectSpecular299_g186 );
				#endif
				float3 EmissionFinal324_g47 = ( tex2DNode139_g47.g * ( (_EmissionColor).rgb * _EmissionStrength ) );
				float3 OutEmission1463 = EmissionFinal324_g47;
				float3 tanNormal27_g184 = OutNormal1457;
				float3 worldNormal27_g184 = normalize( float3(dot(tanToWorld0,tanNormal27_g184), dot(tanToWorld1,tanNormal27_g184), dot(tanToWorld2,tanNormal27_g184)) );
				float dotResult20_g184 = dot( ase_worldViewDir , -( ( worldNormal27_g184 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float OutTranslucency1460 = saturate( _Translucency );
				float3 lerpResult39_g184 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 appendResult50_g184 = (float3(-worldNormal27_g184.x , -worldNormal27_g184.y , worldNormal27_g184.z));
				UnityGIInput data15_g184;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g184 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g184
				data15_g184.lightmapUV = i.ase_lmap;
				#endif //dylm15_g184
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g184
				data15_g184.ambient = i.ase_sh;
				#endif //fsh15_g184
				UnityGI gi15_g184 = UnityGI_Base(data15_g184, 1, appendResult50_g184);
				float3 tanNormal14_g183 = OutNormal1457;
				float3 worldNormal14_g183 = normalize( float3(dot(tanToWorld0,tanNormal14_g183), dot(tanToWorld1,tanNormal14_g183), dot(tanToWorld2,tanNormal14_g183)) );
				float dotResult9_g183 = dot( worldNormal14_g183 , worldSpaceLightDir );
				float3 lerpResult21_g183 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransmissionShadow);
				float OutTransmission1459 = _TransmissionStrength;
				
				float AlphaInput137_g47 = tex2DNode119_g47.a;
				float Color1Alpha101_g47 = _Color.a;
				float Color2Alpha97_g47 = _Color2.a;
				float Color3Alpha98_g47 = _Color3.a;
				float Color4Alpha100_g47 = _Color4.a;
				float AlphaMix258_g47 = saturate( ( AlphaInput137_g47 * ( ( Color1Alpha101_g47 * ColorMask199_g47 ) + ( Color2Alpha97_g47 * ColorMask296_g47 ) + ( Color3Alpha98_g47 * ColorMask3102_g47 ) + ( Color4Alpha100_g47 * ColorMask494_g47 ) ) ) );
				float Bluenoise284_g47 = _DitherBlueNoise;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g47 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g47 = Dither8x8Bayer( fmod(clipScreen290_g47.x, 8), fmod(clipScreen290_g47.y, 8) );
				dither290_g47 = step( dither290_g47, AlphaMix258_g47 );
				float dither286_g47 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g47 = step( dither286_g47, AlphaMix258_g47 );
				float clampResult353_g47 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g47 = tex2DNode259_g47.b;
				float OutOp1464 = ( ( _DitherSwitch == 0.0 ? AlphaMix258_g47 : ( Bluenoise284_g47 == 0.0 ? dither290_g47 : dither286_g47 ) ) * step( pow( ( 1.0 - clampResult353_g47 ) , 0.2 ) , pow( Tearing360_g47 , 0.5 ) ) );
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g186 * lightAtten296_g186 ) + ( gi203_g186.indirect.diffuse * occlusion306_g186 ) ) ) + ( SpecularTerm34_g186 * lightAtten296_g186 * FresnelTerm130_g186 ) + staticSwitch305_g186 ) + OutEmission1463 + ( ( OutAlbedo1461 * ( ( pow( saturate( dotResult20_g184 ) , _TransScattering ) * _TransDirect ) * OutTranslucency1460 * lerpResult39_g184 ) ) + ( gi15_g184.indirect.diffuse * _TransAmbient ) ) + ( ( max( 0.0 , -dotResult9_g183 ) * lerpResult21_g183 * OutTransmission1459 ) * OutAlbedo1461 ) );
				outAlpha = OutOp1464;
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
6;0.4;1513;884;7811.826;4189.105;3.200672;True;False
Node;AmplifyShaderEditor.FunctionNode;1441;-7369.8,-2971.976;Inherit;False;AIT Item Function;10;;47;49cd9f91cda5058428ddba66ec049916;0;0;9;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;346;FLOAT;350;FLOAT;347;FLOAT;344
Node;AmplifyShaderEditor.FunctionNode;1448;-7051.003,-3219.386;Inherit;False;Iridiscence;68;;176;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1504;-6542.181,-2655.577;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1499;-6476.679,-2821.133;Inherit;False;Property;_SpecColor;SpecColor;74;0;Fetch;True;0;0;0;True;0;False;0.509434,0.509434,0.509434,1;0.509434,0.509434,0.509434,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1506;-6932.382,-2251.002;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1507;-6868.717,-2236.627;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1466;-6707.738,-2938.268;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1510;-6563.142,-2576.792;Inherit;True;Property;_SpecularMap;SpecularMap;75;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1500;-6269.813,-2822.211;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1505;-6501.107,-2637.094;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1492;-6437.902,-2865.801;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1511;-6260.25,-2576.72;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1509;-5779.939,-2235.974;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1502;-6053.602,-2693.207;Inherit;False;Property;_Iridiscent2;Iridiscent;67;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1453;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1451;-6810.623,-3223.49;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1465;-6652.558,-2968.096;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1508;-5732.706,-2264.725;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1512;-5788.65,-2593.342;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1491;-6376.876,-2902.946;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1453;-6566.516,-3219.566;Inherit;False;Property;_Iridiscent;Iridiscent;67;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1498;-7100.806,-3346.077;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1497;-7040.347,-3385.493;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1503;-5586.432,-2593.294;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1455;-6292.278,-3212.093;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1496;-5118.203,-3191.141;Inherit;False;Property;_SpecularSetup;SpecularSetup;73;0;Create;True;0;0;0;False;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1493;-5880.89,-3443.042;Inherit;False;Property;_SpecularSetup2;SpecularSetup;73;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1496;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1461;-5560.666,-3441.79;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1459;-6848.699,-2531.828;Inherit;False;OutTransmission;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1457;-6838.56,-2886.581;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1460;-6844.576,-2441.386;Inherit;False;OutTranslucency;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1458;-6844.787,-2709.449;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1462;-6836.8,-2620.271;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1456;-4806.289,-3191.541;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1474;-4357.646,-2467.086;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1463;-6841.948,-2798.449;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1472;-4398.494,-2549.861;Inherit;False;1458;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1469;-4410.234,-2304.924;Inherit;False;1460;OutTranslucency;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1470;-4407.361,-2383.813;Inherit;False;1459;OutTransmission;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-4369.431,-2720.658;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-4368.926,-2808.229;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1473;-4379.059,-2634.711;Inherit;False;1456;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1425;-3985.645,-2385.598;Inherit;False;Unity Transmission;8;;183;9498cceedd4defe45a721369ca43b3c7;0;3;1;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;25;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1424;-3987.147,-2516.21;Inherit;False;Unity Translucency;2;;184;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;43;FLOAT;0;False;46;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1423;-3996.01,-2769.643;Inherit;False;GGX Specular Light;-1;;186;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1467;-3971.184,-2603.041;Inherit;False;1463;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1464;-6833.149,-2344.585;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;1480;-4064.396,-2042.109;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1475;-3709.571,-2429.349;Inherit;False;1464;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1513;-3468.276,-1989.63;Inherit;False;Property;_SHADERTYPE_ITEM;_SHADERTYPE_ITEM;76;0;Create;True;0;0;0;True;0;False;0;1;1;True;_SHADERTYPE_ITEM;Toggle;2;Key0;Key1;Create;False;False;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1487;-4733.018,-1762.065;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1481;-4087.287,-1642.471;Inherit;False;1458;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1490;-4062.635,-1728.875;Inherit;False;1456;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1488;-4282.853,-1867.032;Inherit;False;1463;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1427;-3717.113,-2621.49;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;660;-4367.369,-1969.428;Inherit;False;Property;_Cutoff;Cutoff;1;1;[Header];Fetch;True;1;Cutout Setting;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1430;-3727.915,-1769.086;Inherit;False;Deferred Pass;-1;;190;c9afd996879db6041a57a5a508002f59;0;6;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;0;False;4;COLOR;0;COLOR;1;COLOR;12;COLOR;18
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1478;-4223.742,-1782.306;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1483;-4302.607,-2091.713;Inherit;False;1464;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1484;-4041.278,-1553.167;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1477;-4001.909,-1836.379;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-3481.625,-2101.719;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1486;-4951.88,-1767.174;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1489;-4065.91,-1921.574;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1485;-4592.514,-2050.22;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;2837.367,-3900.219;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1482;-4525.096,-1762.001;Inherit;False;Global Illumination;-1;;191;618026ac6bfd8394b9cb2d8d0ecddb28;1,19,1;1;37;FLOAT3;0,0,0;False;1;FLOAT3;15
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1420;-3380.963,-2515.742;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1421;-3400.758,-1772.386;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1439;-3394.7,-2621.542;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1419;-3380.963,-2621.542;Float;False;True;-1;2;ASEMaterialInspector;0;8;Hanmen/Item Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=TransparentCutout=RenderType;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1422;-3380.963,-2482.742;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
WireConnection;1448;1;1441;342
WireConnection;1504;0;1448;0
WireConnection;1506;0;1441;340
WireConnection;1507;0;1506;0
WireConnection;1466;0;1441;345
WireConnection;1500;0;1499;0
WireConnection;1505;0;1504;0
WireConnection;1492;0;1441;340
WireConnection;1511;0;1510;0
WireConnection;1509;0;1507;0
WireConnection;1502;1;1500;0
WireConnection;1502;0;1505;0
WireConnection;1451;0;1448;0
WireConnection;1451;1;1441;345
WireConnection;1451;2;1441;340
WireConnection;1465;0;1466;0
WireConnection;1508;0;1509;0
WireConnection;1512;0;1502;0
WireConnection;1512;1;1511;0
WireConnection;1491;0;1492;0
WireConnection;1453;1;1465;0
WireConnection;1453;0;1451;0
WireConnection;1498;0;1441;345
WireConnection;1497;0;1498;0
WireConnection;1503;0;1512;0
WireConnection;1503;1;1508;0
WireConnection;1455;0;1453;0
WireConnection;1455;1;1491;0
WireConnection;1496;1;1455;1
WireConnection;1496;0;1503;1
WireConnection;1493;1;1455;0
WireConnection;1493;0;1497;0
WireConnection;1461;0;1493;0
WireConnection;1459;0;1441;350
WireConnection;1457;0;1441;342
WireConnection;1460;0;1441;347
WireConnection;1458;0;1441;0
WireConnection;1462;0;1441;346
WireConnection;1456;0;1496;0
WireConnection;1463;0;1441;341
WireConnection;1425;1;1471;0
WireConnection;1425;11;1468;0
WireConnection;1425;25;1470;0
WireConnection;1424;6;1471;0
WireConnection;1424;26;1468;0
WireConnection;1424;43;1469;0
WireConnection;1423;286;1471;0
WireConnection;1423;30;1468;0
WireConnection;1423;146;1473;0
WireConnection;1423;147;1472;0
WireConnection;1423;302;1474;0
WireConnection;1464;0;1441;344
WireConnection;1480;0;1485;0
WireConnection;1480;1;1483;0
WireConnection;1480;2;660;0
WireConnection;1487;0;1486;0
WireConnection;1427;0;1423;0
WireConnection;1427;1;1467;0
WireConnection;1427;2;1424;0
WireConnection;1427;3;1425;0
WireConnection;1430;3;1480;0
WireConnection;1430;14;1489;0
WireConnection;1430;20;1477;0
WireConnection;1430;6;1490;0
WireConnection;1430;7;1481;0
WireConnection;1430;4;1484;0
WireConnection;1478;0;1485;0
WireConnection;1478;1;1482;15
WireConnection;1477;0;1488;0
WireConnection;1477;1;1478;0
WireConnection;1482;37;1487;0
WireConnection;1421;0;1430;0
WireConnection;1421;1;1430;1
WireConnection;1421;2;1430;12
WireConnection;1421;3;1430;18
WireConnection;1419;0;1427;0
WireConnection;1419;1;1475;0
ASEEND*/
//CHKSM=8072EFDE9B91477D3228F2580A865415240EFFB8