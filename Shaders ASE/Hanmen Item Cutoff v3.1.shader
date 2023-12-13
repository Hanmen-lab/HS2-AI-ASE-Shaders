// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Cutoff"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		[Toggle(_DITHERSWITCH_ON)] _DitherSwitch("DitherSwitch", Float) = 0
		[Toggle(_DITHERBLUENOISE_ON)] _DitherBluenoise("DitherBluenoise", Float) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
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
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 1
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Header (Transmission)][Toggle(_TRANSMISSION_ON)] _TRANSMISSION("_TRANSMISSION", Float) = 0
		_TransmissionStrength("TransmissionStrength", Range( 0 , 5)) = 0
		[Header(Iridiscent)][Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Header(Specularity)][Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.509434,0.509434,0.509434,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		Tags { "RenderType"="TransparentCutout" "Queue"="AlphaTest" }
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
		#pragma multi_compile __ _DITHERSWITCH_ON
		#pragma multi_compile __ _DITHERBLUENOISE_ON
		#pragma multi_compile __ _SPECULARSETUP_ON
		#pragma multi_compile __ _IRIDISCENT_ON
		#pragma multi_compile __ _TRANSMISSION_ON
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
		
		uniform float4 _BaseColor;
		uniform float _DetailUVRotator;
		uniform float _DetailNormalMapScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		uniform float4 _Color2;
		uniform float4 _Color;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float4 _EmissionColor;
		uniform float _Float0;
		uniform float _WetAlbedoOffset;
		uniform float2 _DetailUV2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		SamplerState sampler_Noise;
		uniform float _ExGloss;
		uniform float _EmissionStrength;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		uniform float _DetailNormalMapScale2;
		uniform float _DetailGlossScale;
		uniform float _Glossiness3;
		uniform float _Metallic3;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float4 _Color4;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		uniform float _DetailUV2Rotator;
		uniform float _CarvatureStrength;
		uniform float _DetailMetallicScale;
		uniform float4 _Color3;
		uniform float _WetnessPower;
		uniform float _Glossiness;
		uniform float _Metallic;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_TextureSample20;
		uniform float _Metallic4;
		uniform float _DetailMetallicScale2;
		uniform float _GlossinessReflection;
		uniform float _Glossiness2;
		uniform float _AlphaEx;
		uniform float _Metallic2;
		uniform float _RoughnessReflections;
		uniform float2 _DetailUV;
		uniform float2 _UVScalePattern;
		uniform float _DetailGlossScale2;
		uniform float _IriBrightness;
		uniform float _IriSaturation;
		uniform float _IriContrast;
		uniform float _IriHue;
		uniform float _TransDirect;
		uniform float _TransNormalDistortion;
		uniform float _TransAmbient;
		uniform float _TransShadow;
		uniform float _TransScattering;
		uniform float _Translucency;
		uniform float _NormalBackDirInvert;
		uniform float _TransmissionStrength;
		uniform float _CullMode;
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

				float2 uv_MainTex119_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g271 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g271 );
				float3 temp_output_182_0_g271 = (tex2DNode119_g271).rgb;
				float3 temp_output_206_0_g271 = ( temp_output_182_0_g271 * (_BaseColor).rgb );
				float3 Color1128_g271 = (_Color).rgb;
				float2 uv_ColorMask86_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g271 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g271 );
				float ColorMask199_g271 = ( 1.0 - ( tex2DNode86_g271.r + tex2DNode86_g271.g + tex2DNode86_g271.b ) );
				float3 Color2121_g271 = (_Color2).rgb;
				float ColorMask296_g271 = tex2DNode86_g271.r;
				float3 Color3123_g271 = (_Color3).rgb;
				float ColorMask3102_g271 = tex2DNode86_g271.g;
				float3 Color4136_g271 = (_Color4).rgb;
				float ColorMask494_g271 = tex2DNode86_g271.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g271 = i.ase_texcoord1.xy;
				float Carvature197_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g271 ).r;
				float3 lerpResult289_g271 = lerp( ( ( temp_output_206_0_g271 * Color1128_g271 * ColorMask199_g271 ) + ( Color2121_g271 * ColorMask296_g271 * temp_output_206_0_g271 ) + ( Color3123_g271 * ColorMask3102_g271 * temp_output_206_0_g271 ) + ( Color4136_g271 * ColorMask494_g271 * temp_output_206_0_g271 ) ) , temp_cast_0 , ( Carvature197_g271 * _CarvatureStrength ));
				float ExGloss255_g271 = _ExGloss;
				float3 lerpResult313_g271 = lerp( lerpResult289_g271 , ( lerpResult289_g271 * _WetAlbedoOffset ) , ExGloss255_g271);
				float3 DiffuseMix326_g271 = lerpResult313_g271;
				float3 temp_output_1549_345 = DiffuseMix326_g271;
				Gradient gradient37_g272 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap180_g271 = i.ase_texcoord1.xy;
				float2 texCoord76_g271 = i.ase_texcoord1.xy * ( _DetailUV * _UVScalePattern ) + float2( 0,0 );
				float cos78_g271 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g271 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g271 = mul( texCoord76_g271 - float2( 0.5,0.5 ) , float2x2( cos78_g271 , -sin78_g271 , sin78_g271 , cos78_g271 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g271 = rotator78_g271;
				float2 break13_g271 = Detail1UV79_g271;
				float temp_output_14_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g271 = (float2(( break13_g271.x + temp_output_14_0_g271 ) , break13_g271.y));
				float4 tex2DNode85_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 );
				float2 uv_DetailMask81_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g271 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g271 );
				float DetailMask183_g271 = tex2DNode81_g271.r;
				float temp_output_42_0_g271 = ( DetailMask183_g271 * _DetailNormalMapScale );
				float3 appendResult56_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float2 appendResult27_g271 = (float2(break13_g271.x , ( break13_g271.y + temp_output_14_0_g271 )));
				float3 appendResult58_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float3 normalizeResult66_g271 = normalize( cross( appendResult56_g271 , appendResult58_g271 ) );
				float3 DetailNormal171_g271 = normalizeResult66_g271;
				float2 texCoord7_g271 = i.ase_texcoord1.xy * ( _UVScalePattern * _DetailUV2 ) + float2( 0,0 );
				float cos10_g271 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g271 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g271 = mul( texCoord7_g271 - float2( 0.5,0.5 ) , float2x2( cos10_g271 , -sin10_g271 , sin10_g271 , cos10_g271 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g271 = rotator10_g271;
				float2 break20_g271 = Detail2UV12_g271;
				float temp_output_21_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g271 = (float2(( break20_g271.x + temp_output_21_0_g271 ) , break20_g271.y));
				float4 tex2DNode41_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 );
				float DetailMask284_g271 = tex2DNode81_g271.g;
				float temp_output_49_0_g271 = ( DetailMask284_g271 * _DetailNormalMapScale2 );
				float3 appendResult63_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float2 appendResult31_g271 = (float2(break20_g271.x , ( break20_g271.y + temp_output_21_0_g271 )));
				float3 appendResult64_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float3 normalizeResult70_g271 = normalize( cross( appendResult63_g271 , appendResult64_g271 ) );
				float3 DetailNormal272_g271 = normalizeResult70_g271;
				float3 normalizeResult262_g271 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g271 ), _Float0 ) , DetailNormal171_g271 ) , DetailNormal272_g271 ) );
				float3 temp_output_1549_342 = normalizeResult262_g271;
				float dotResult7_g272 = dot( ase_tanViewDir , temp_output_1549_342 );
				float3 temp_output_12_0_g272 = (SampleGradient( gradient37_g272, dotResult7_g272 )).rgb;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k7 , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k7 , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k7 * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1549_345;
				float2 uv_MetallicGlossMap139_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g271 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g271 );
				float lerpResult167_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask);
				float lerpResult193_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask2);
				float lerpResult181_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask3);
				float lerpResult208_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask4);
				float lerpResult281_g271 = lerp( ( ( lerpResult167_g271 * _Metallic * ColorMask199_g271 ) + ( lerpResult193_g271 * _Metallic2 * ColorMask296_g271 ) + ( lerpResult181_g271 * _Metallic3 * ColorMask3102_g271 ) ) , ( lerpResult208_g271 * _Metallic4 ) , ColorMask494_g271);
				float Detail1148_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 ).r;
				float Detail2194_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 ).r;
				float temp_output_1549_340 = saturate( ( ( lerpResult281_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailMetallicScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailMetallicScale2 * DetailMask284_g271 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1549_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1549_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1549_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1549_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g281 = worldSpaceLightDir;
				float3 viewDir15_g281 = ase_worldViewDir;
				float3 normalizeResult136_g281 = ASESafeNormalize( ( lightDir14_g281 + viewDir15_g281 ) );
				float dotResult137_g281 = dot( lightDir14_g281 , normalizeResult136_g281 );
				float LdotH139_g281 = saturate( dotResult137_g281 );
				float lerpResult143_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness);
				float lerpResult158_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness2);
				float lerpResult157_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness3);
				float lerpResult187_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness4);
				float lerpResult230_g271 = lerp( ( ( lerpResult143_g271 * _Glossiness * ColorMask199_g271 ) + ( lerpResult158_g271 * _Glossiness2 * ColorMask296_g271 ) + ( lerpResult157_g271 * _Glossiness3 * ColorMask3102_g271 ) ) , ( _Glossiness4 * lerpResult187_g271 ) , ColorMask494_g271);
				float lerpResult305_g271 = lerp( ( ( lerpResult230_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailGlossScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailGlossScale2 * DetailMask284_g271 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g271 ));
				float OutSmoothness1458 = saturate( lerpResult305_g271 );
				float smoothness169_g281 = OutSmoothness1458;
				float perceprualRoughness188_g281 = ( 1.0 - smoothness169_g281 );
				half fd90273_g281 = ( 0.5 + ( 2.0 * LdotH139_g281 * LdotH139_g281 * perceprualRoughness188_g281 ) );
				float3 OutNormal1457 = temp_output_1549_342;
				float3 tanNormal29_g281 = OutNormal1457;
				float3 worldNormal29_g281 = float3(dot(tanToWorld0,tanNormal29_g281), dot(tanToWorld1,tanNormal29_g281), dot(tanToWorld2,tanNormal29_g281));
				float3 normalizeResult25_g281 = normalize( worldNormal29_g281 );
				float3 switchResult316_g281 = (((ase_vface>0)?(normalizeResult25_g281):(-normalizeResult25_g281)));
				float3 normalDir28_g281 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g281 : normalizeResult25_g281 );
				float dotResult21_g281 = dot( lightDir14_g281 , normalDir28_g281 );
				float NdotL20_g281 = saturate( dotResult21_g281 );
				half lightScatter253_g281 = ( ( ( fd90273_g281 - 1.0 ) * pow( ( 1.0 - NdotL20_g281 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g281 = dot( normalDir28_g281 , viewDir15_g281 );
				float NdotV55_g281 = saturate( dotResult56_g281 );
				half viewScatter254_g281 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g281 ) , 5.0 ) * ( fd90273_g281 - 1.0 ) ) );
				half disneydiffuse251_g281 = ( lightScatter253_g281 * viewScatter254_g281 );
				half Diffuseterm281_g281 = ( disneydiffuse251_g281 * NdotL20_g281 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g281 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g281;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g281 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g281
				data203_g281.lightmapUV = i.ase_lmap;
				#endif //dylm203_g281
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g281
				data203_g281.ambient = i.ase_sh;
				#endif //fsh203_g281
				UnityGI gi203_g281 = UnityGI_Base(data203_g281, 1, normalDir28_g281);
				float2 uv_OcclusionMap259_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g271 );
				float lerpResult298_g271 = lerp( 1.0 , tex2DNode259_g271.g , _OcculusionStrength);
				float smoothstepResult266_g271 = smoothstep( 0.0 , 0.8 , Detail1148_g271);
				float lerpResult297_g271 = lerp( 1.0 , smoothstepResult266_g271 , ( _DetailOcculusionScale * DetailMask183_g271 ));
				float smoothstepResult274_g271 = smoothstep( 0.0 , 0.8 , Detail2194_g271);
				float lerpResult299_g271 = lerp( 1.0 , smoothstepResult274_g271 , ( _DetailOcculusionScale2 * DetailMask284_g271 ));
				float OcclusionMix323_g271 = saturate( ( lerpResult298_g271 * lerpResult297_g271 * lerpResult299_g271 ) );
				float OutAO1462 = OcclusionMix323_g271;
				float occlusion306_g281 = OutAO1462;
				half Roughness64_g281 = max( ( perceprualRoughness188_g281 * perceprualRoughness188_g281 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g281 = ( 0.5 / ( ( ( ( NdotV55_g281 * ( 1.0 - Roughness64_g281 ) ) + Roughness64_g281 ) * NdotL20_g281 ) + 1E-05 + ( NdotV55_g281 * ( Roughness64_g281 + ( ( 1.0 - Roughness64_g281 ) * NdotL20_g281 ) ) ) ) );
				float a266_g281 = ( Roughness64_g281 * Roughness64_g281 );
				float3 normalizeResult87_g281 = ASESafeNormalize( ( lightDir14_g281 + viewDir15_g281 ) );
				float dotResult88_g281 = dot( normalDir28_g281 , normalizeResult87_g281 );
				float NdotH90_g281 = saturate( dotResult88_g281 );
				float d99_g281 = ( ( ( ( NdotH90_g281 * a266_g281 ) - NdotH90_g281 ) * NdotH90_g281 ) + 1.0 );
				half GGXTerm43_g281 = ( ( ( 1.0 / UNITY_PI ) * a266_g281 ) / ( ( d99_g281 * d99_g281 ) + 1E-07 ) );
				float temp_output_36_0_g281 = ( SmithJointGGXVisibilityTerm42_g281 * GGXTerm43_g281 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g281 = sqrt( max( 0.0001 , temp_output_36_0_g281 ) );
				#else
				float staticSwitch5_g281 = temp_output_36_0_g281;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g281 = 0.0;
				#else
				float staticSwitch119_g281 = max( 0.0 , ( staticSwitch5_g281 * NdotL20_g281 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1549_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g281 = ( OutSpecular1456 * occlusion306_g281 );
				float SpecularTerm34_g281 = ( staticSwitch119_g281 * ( SpecColor140_g281.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g281 = ( ( pow( ( 1.0 - LdotH139_g281 ) , 5.0 ) * ( 1.0 - SpecColor140_g281 ) ) + SpecColor140_g281 );
				half metallic176_g281 = 0.0;
				half localOneMinusReflectivity176_g281 = OneMinusReflectivity( metallic176_g281 );
				half GrazingTerm163_g281 = saturate( ( smoothness169_g281 + ( 1.0 - localOneMinusReflectivity176_g281 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g281).xxx;
				float3 lerpResult159_g281 = lerp( SpecColor140_g281 , temp_cast_3 , pow( ( 1.0 - NdotV55_g281 ) , 5.0 ));
				half3 FresnelLerp165_g281 = lerpResult159_g281;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g281 = ( 1.0 - ( 0.28 * Roughness64_g281 * perceprualRoughness188_g281 ) );
				#else
				float staticSwitch183_g281 = ( 1.0 / ( ( Roughness64_g281 * Roughness64_g281 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g281 = staticSwitch183_g281;
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
				Unity_GlossyEnvironmentData g299_g281 = UnityGlossyEnvironmentSetup( smoothness169_g281, ase_worldViewDir, normalDir28_g281, float3(0,0,0));
				float3 indirectSpecular299_g281 = UnityGI_IndirectSpecular( data, occlusion306_g281, normalDir28_g281, g299_g281 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g281 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g281 = ( FresnelLerp165_g281 * SurfaceReduction182_g281 * indirectSpecular299_g281 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g281 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g281 = staticSwitch313_g281;
				#endif
				float3 Maintex365_g271 = temp_output_182_0_g271;
				float EmissionMask384_g271 = tex2DNode139_g271.g;
				float3 OutEmission1463 = ( (_EmissionColor).rgb * _EmissionStrength * Maintex365_g271 * EmissionMask384_g271 );
				float3 tanNormal27_g279 = OutNormal1457;
				float3 worldNormal27_g279 = float3(dot(tanToWorld0,tanNormal27_g279), dot(tanToWorld1,tanNormal27_g279), dot(tanToWorld2,tanNormal27_g279));
				float3 normalizeResult61_g279 = normalize( worldNormal27_g279 );
				float3 switchResult64_g279 = (((ase_vface>0)?(normalizeResult61_g279):(-normalizeResult61_g279)));
				float dotResult20_g279 = dot( ase_worldViewDir , -( ( ( _NormalBackDirInvert == 1.0 ? switchResult64_g279 : normalizeResult61_g279 ) * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float temp_output_59_0_g279 = ( _Translucency * 1.0 );
				float3 lerpResult39_g279 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 Diffuse1553 = temp_output_1549_345;
				float3 temp_output_6_0_g279 = Diffuse1553;
				UnityGIInput data15_g279;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g279 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g279
				data15_g279.lightmapUV = i.ase_lmap;
				#endif //dylm15_g279
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g279
				data15_g279.ambient = i.ase_sh;
				#endif //fsh15_g279
				UnityGI gi15_g279 = UnityGI_Base(data15_g279, 1, ( _NormalBackDirInvert == 1.0 ? switchResult64_g279 : normalizeResult61_g279 ));
				float temp_output_74_0_g279 = OutAO1462;
				float3 tanNormal14_g282 = OutNormal1457;
				float3 worldNormal14_g282 = float3(dot(tanToWorld0,tanNormal14_g282), dot(tanToWorld1,tanNormal14_g282), dot(tanToWorld2,tanNormal14_g282));
				float3 normalizeResult29_g282 = normalize( worldNormal14_g282 );
				float3 switchResult32_g282 = (((ase_vface>0)?(normalizeResult29_g282):(-normalizeResult29_g282)));
				float dotResult9_g282 = dot( ( _NormalBackDirInvert == 1.0 ? switchResult32_g282 : normalizeResult29_g282 ) , worldSpaceLightDir );
				#ifdef _TRANSMISSION_ON
				float3 staticSwitch36_g282 = ( ( max( 0.0 , -dotResult9_g282 ) * ( ase_lightColor.rgb * ase_atten ) * _TransmissionStrength ) * OutAlbedo1461 );
				#else
				float3 staticSwitch36_g282 = float3( 0,0,0 );
				#endif
				
				float AlphaInput137_g271 = tex2DNode119_g271.a;
				float Color1Alpha101_g271 = _Color.a;
				float Color2Alpha97_g271 = _Color2.a;
				float Color3Alpha98_g271 = _Color3.a;
				float Color4Alpha100_g271 = _Color4.a;
				float AlphaMix258_g271 = saturate( ( AlphaInput137_g271 * ( ( Color1Alpha101_g271 * ColorMask199_g271 ) + ( Color2Alpha97_g271 * ColorMask296_g271 ) + ( Color3Alpha98_g271 * ColorMask3102_g271 ) + ( Color4Alpha100_g271 * ColorMask494_g271 ) ) ) );
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g271 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g271 = Dither4x4Bayer( fmod(clipScreen290_g271.x, 4), fmod(clipScreen290_g271.y, 4) );
				dither290_g271 = step( dither290_g271, AlphaMix258_g271 );
				float dither286_g271 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g271 = step( dither286_g271, AlphaMix258_g271 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch364_g271 = dither286_g271;
				#else
				float staticSwitch364_g271 = dither290_g271;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch363_g271 = staticSwitch364_g271;
				#else
				float staticSwitch363_g271 = AlphaMix258_g271;
				#endif
				float clampResult353_g271 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g271 = tex2DNode259_g271.b;
				float OutOp1464 = ( staticSwitch363_g271 * step( pow( ( 1.0 - clampResult353_g271 ) , 0.2 ) , pow( Tearing360_g271 , 0.5 ) ) );
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g281 * lightAtten296_g281 ) + ( gi203_g281.indirect.diffuse * occlusion306_g281 ) ) ) + ( SpecularTerm34_g281 * lightAtten296_g281 * FresnelTerm130_g281 ) + staticSwitch305_g281 ) + OutEmission1463 + ( ( ( pow( saturate( dotResult20_g279 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g279 * lerpResult39_g279 * temp_output_6_0_g279 ) + saturate( ( ( gi15_g279.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g279 * temp_output_6_0_g279 * temp_output_74_0_g279 ) ) ) + staticSwitch36_g282 );
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
			#pragma multi_compile __ _DITHERSWITCH_ON
			#pragma multi_compile __ _DITHERBLUENOISE_ON
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
			#pragma multi_compile __ _TRANSMISSION_ON
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
			
			uniform float4 _BaseColor;
			uniform float _DetailUVRotator;
			uniform float _DetailNormalMapScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _Color2;
			uniform float4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float4 _EmissionColor;
			uniform float _Float0;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _ExGloss;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailNormalMapScale2;
			uniform float _DetailGlossScale;
			uniform float _Glossiness3;
			uniform float _Metallic3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _Color4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailUV2Rotator;
			uniform float _CarvatureStrength;
			uniform float _DetailMetallicScale;
			uniform float4 _Color3;
			uniform float _WetnessPower;
			uniform float _Glossiness;
			uniform float _Metallic;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _Metallic4;
			uniform float _DetailMetallicScale2;
			uniform float _GlossinessReflection;
			uniform float _Glossiness2;
			uniform float _AlphaEx;
			uniform float _Metallic2;
			uniform float _RoughnessReflections;
			uniform float2 _DetailUV;
			uniform float2 _UVScalePattern;
			uniform float _DetailGlossScale2;
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _NormalBackDirInvert;
			uniform float _TransmissionStrength;
			uniform float _CullMode;
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

				float2 uv_MainTex119_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g271 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g271 );
				float3 temp_output_182_0_g271 = (tex2DNode119_g271).rgb;
				float3 temp_output_206_0_g271 = ( temp_output_182_0_g271 * (_BaseColor).rgb );
				float3 Color1128_g271 = (_Color).rgb;
				float2 uv_ColorMask86_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g271 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g271 );
				float ColorMask199_g271 = ( 1.0 - ( tex2DNode86_g271.r + tex2DNode86_g271.g + tex2DNode86_g271.b ) );
				float3 Color2121_g271 = (_Color2).rgb;
				float ColorMask296_g271 = tex2DNode86_g271.r;
				float3 Color3123_g271 = (_Color3).rgb;
				float ColorMask3102_g271 = tex2DNode86_g271.g;
				float3 Color4136_g271 = (_Color4).rgb;
				float ColorMask494_g271 = tex2DNode86_g271.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g271 = i.ase_texcoord1.xy;
				float Carvature197_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g271 ).r;
				float3 lerpResult289_g271 = lerp( ( ( temp_output_206_0_g271 * Color1128_g271 * ColorMask199_g271 ) + ( Color2121_g271 * ColorMask296_g271 * temp_output_206_0_g271 ) + ( Color3123_g271 * ColorMask3102_g271 * temp_output_206_0_g271 ) + ( Color4136_g271 * ColorMask494_g271 * temp_output_206_0_g271 ) ) , temp_cast_0 , ( Carvature197_g271 * _CarvatureStrength ));
				float ExGloss255_g271 = _ExGloss;
				float3 lerpResult313_g271 = lerp( lerpResult289_g271 , ( lerpResult289_g271 * _WetAlbedoOffset ) , ExGloss255_g271);
				float3 DiffuseMix326_g271 = lerpResult313_g271;
				float3 temp_output_1549_345 = DiffuseMix326_g271;
				Gradient gradient37_g272 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap180_g271 = i.ase_texcoord1.xy;
				float2 texCoord76_g271 = i.ase_texcoord1.xy * ( _DetailUV * _UVScalePattern ) + float2( 0,0 );
				float cos78_g271 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g271 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g271 = mul( texCoord76_g271 - float2( 0.5,0.5 ) , float2x2( cos78_g271 , -sin78_g271 , sin78_g271 , cos78_g271 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g271 = rotator78_g271;
				float2 break13_g271 = Detail1UV79_g271;
				float temp_output_14_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g271 = (float2(( break13_g271.x + temp_output_14_0_g271 ) , break13_g271.y));
				float4 tex2DNode85_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 );
				float2 uv_DetailMask81_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g271 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g271 );
				float DetailMask183_g271 = tex2DNode81_g271.r;
				float temp_output_42_0_g271 = ( DetailMask183_g271 * _DetailNormalMapScale );
				float3 appendResult56_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float2 appendResult27_g271 = (float2(break13_g271.x , ( break13_g271.y + temp_output_14_0_g271 )));
				float3 appendResult58_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float3 normalizeResult66_g271 = normalize( cross( appendResult56_g271 , appendResult58_g271 ) );
				float3 DetailNormal171_g271 = normalizeResult66_g271;
				float2 texCoord7_g271 = i.ase_texcoord1.xy * ( _UVScalePattern * _DetailUV2 ) + float2( 0,0 );
				float cos10_g271 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g271 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g271 = mul( texCoord7_g271 - float2( 0.5,0.5 ) , float2x2( cos10_g271 , -sin10_g271 , sin10_g271 , cos10_g271 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g271 = rotator10_g271;
				float2 break20_g271 = Detail2UV12_g271;
				float temp_output_21_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g271 = (float2(( break20_g271.x + temp_output_21_0_g271 ) , break20_g271.y));
				float4 tex2DNode41_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 );
				float DetailMask284_g271 = tex2DNode81_g271.g;
				float temp_output_49_0_g271 = ( DetailMask284_g271 * _DetailNormalMapScale2 );
				float3 appendResult63_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float2 appendResult31_g271 = (float2(break20_g271.x , ( break20_g271.y + temp_output_21_0_g271 )));
				float3 appendResult64_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float3 normalizeResult70_g271 = normalize( cross( appendResult63_g271 , appendResult64_g271 ) );
				float3 DetailNormal272_g271 = normalizeResult70_g271;
				float3 normalizeResult262_g271 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g271 ), _Float0 ) , DetailNormal171_g271 ) , DetailNormal272_g271 ) );
				float3 temp_output_1549_342 = normalizeResult262_g271;
				float dotResult7_g272 = dot( ase_tanViewDir , temp_output_1549_342 );
				float3 temp_output_12_0_g272 = (SampleGradient( gradient37_g272, dotResult7_g272 )).rgb;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k7 , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k7 , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k7 * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1549_345;
				float2 uv_MetallicGlossMap139_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g271 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g271 );
				float lerpResult167_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask);
				float lerpResult193_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask2);
				float lerpResult181_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask3);
				float lerpResult208_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask4);
				float lerpResult281_g271 = lerp( ( ( lerpResult167_g271 * _Metallic * ColorMask199_g271 ) + ( lerpResult193_g271 * _Metallic2 * ColorMask296_g271 ) + ( lerpResult181_g271 * _Metallic3 * ColorMask3102_g271 ) ) , ( lerpResult208_g271 * _Metallic4 ) , ColorMask494_g271);
				float Detail1148_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 ).r;
				float Detail2194_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 ).r;
				float temp_output_1549_340 = saturate( ( ( lerpResult281_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailMetallicScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailMetallicScale2 * DetailMask284_g271 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1549_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1549_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1549_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1549_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g281 = worldSpaceLightDir;
				float3 viewDir15_g281 = ase_worldViewDir;
				float3 normalizeResult136_g281 = ASESafeNormalize( ( lightDir14_g281 + viewDir15_g281 ) );
				float dotResult137_g281 = dot( lightDir14_g281 , normalizeResult136_g281 );
				float LdotH139_g281 = saturate( dotResult137_g281 );
				float lerpResult143_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness);
				float lerpResult158_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness2);
				float lerpResult157_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness3);
				float lerpResult187_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness4);
				float lerpResult230_g271 = lerp( ( ( lerpResult143_g271 * _Glossiness * ColorMask199_g271 ) + ( lerpResult158_g271 * _Glossiness2 * ColorMask296_g271 ) + ( lerpResult157_g271 * _Glossiness3 * ColorMask3102_g271 ) ) , ( _Glossiness4 * lerpResult187_g271 ) , ColorMask494_g271);
				float lerpResult305_g271 = lerp( ( ( lerpResult230_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailGlossScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailGlossScale2 * DetailMask284_g271 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g271 ));
				float OutSmoothness1458 = saturate( lerpResult305_g271 );
				float smoothness169_g281 = OutSmoothness1458;
				float perceprualRoughness188_g281 = ( 1.0 - smoothness169_g281 );
				half fd90273_g281 = ( 0.5 + ( 2.0 * LdotH139_g281 * LdotH139_g281 * perceprualRoughness188_g281 ) );
				float3 OutNormal1457 = temp_output_1549_342;
				float3 tanNormal29_g281 = OutNormal1457;
				float3 worldNormal29_g281 = float3(dot(tanToWorld0,tanNormal29_g281), dot(tanToWorld1,tanNormal29_g281), dot(tanToWorld2,tanNormal29_g281));
				float3 normalizeResult25_g281 = normalize( worldNormal29_g281 );
				float3 switchResult316_g281 = (((ase_vface>0)?(normalizeResult25_g281):(-normalizeResult25_g281)));
				float3 normalDir28_g281 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g281 : normalizeResult25_g281 );
				float dotResult21_g281 = dot( lightDir14_g281 , normalDir28_g281 );
				float NdotL20_g281 = saturate( dotResult21_g281 );
				half lightScatter253_g281 = ( ( ( fd90273_g281 - 1.0 ) * pow( ( 1.0 - NdotL20_g281 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g281 = dot( normalDir28_g281 , viewDir15_g281 );
				float NdotV55_g281 = saturate( dotResult56_g281 );
				half viewScatter254_g281 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g281 ) , 5.0 ) * ( fd90273_g281 - 1.0 ) ) );
				half disneydiffuse251_g281 = ( lightScatter253_g281 * viewScatter254_g281 );
				half Diffuseterm281_g281 = ( disneydiffuse251_g281 * NdotL20_g281 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g281 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g281;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g281 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g281
				data203_g281.lightmapUV = i.ase_lmap;
				#endif //dylm203_g281
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g281
				data203_g281.ambient = i.ase_sh;
				#endif //fsh203_g281
				UnityGI gi203_g281 = UnityGI_Base(data203_g281, 1, normalDir28_g281);
				float2 uv_OcclusionMap259_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g271 );
				float lerpResult298_g271 = lerp( 1.0 , tex2DNode259_g271.g , _OcculusionStrength);
				float smoothstepResult266_g271 = smoothstep( 0.0 , 0.8 , Detail1148_g271);
				float lerpResult297_g271 = lerp( 1.0 , smoothstepResult266_g271 , ( _DetailOcculusionScale * DetailMask183_g271 ));
				float smoothstepResult274_g271 = smoothstep( 0.0 , 0.8 , Detail2194_g271);
				float lerpResult299_g271 = lerp( 1.0 , smoothstepResult274_g271 , ( _DetailOcculusionScale2 * DetailMask284_g271 ));
				float OcclusionMix323_g271 = saturate( ( lerpResult298_g271 * lerpResult297_g271 * lerpResult299_g271 ) );
				float OutAO1462 = OcclusionMix323_g271;
				float occlusion306_g281 = OutAO1462;
				half Roughness64_g281 = max( ( perceprualRoughness188_g281 * perceprualRoughness188_g281 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g281 = ( 0.5 / ( ( ( ( NdotV55_g281 * ( 1.0 - Roughness64_g281 ) ) + Roughness64_g281 ) * NdotL20_g281 ) + 1E-05 + ( NdotV55_g281 * ( Roughness64_g281 + ( ( 1.0 - Roughness64_g281 ) * NdotL20_g281 ) ) ) ) );
				float a266_g281 = ( Roughness64_g281 * Roughness64_g281 );
				float3 normalizeResult87_g281 = ASESafeNormalize( ( lightDir14_g281 + viewDir15_g281 ) );
				float dotResult88_g281 = dot( normalDir28_g281 , normalizeResult87_g281 );
				float NdotH90_g281 = saturate( dotResult88_g281 );
				float d99_g281 = ( ( ( ( NdotH90_g281 * a266_g281 ) - NdotH90_g281 ) * NdotH90_g281 ) + 1.0 );
				half GGXTerm43_g281 = ( ( ( 1.0 / UNITY_PI ) * a266_g281 ) / ( ( d99_g281 * d99_g281 ) + 1E-07 ) );
				float temp_output_36_0_g281 = ( SmithJointGGXVisibilityTerm42_g281 * GGXTerm43_g281 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g281 = sqrt( max( 0.0001 , temp_output_36_0_g281 ) );
				#else
				float staticSwitch5_g281 = temp_output_36_0_g281;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g281 = 0.0;
				#else
				float staticSwitch119_g281 = max( 0.0 , ( staticSwitch5_g281 * NdotL20_g281 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1549_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g281 = ( OutSpecular1456 * occlusion306_g281 );
				float SpecularTerm34_g281 = ( staticSwitch119_g281 * ( SpecColor140_g281.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g281 = ( ( pow( ( 1.0 - LdotH139_g281 ) , 5.0 ) * ( 1.0 - SpecColor140_g281 ) ) + SpecColor140_g281 );
				half metallic176_g281 = 0.0;
				half localOneMinusReflectivity176_g281 = OneMinusReflectivity( metallic176_g281 );
				half GrazingTerm163_g281 = saturate( ( smoothness169_g281 + ( 1.0 - localOneMinusReflectivity176_g281 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g281).xxx;
				float3 lerpResult159_g281 = lerp( SpecColor140_g281 , temp_cast_3 , pow( ( 1.0 - NdotV55_g281 ) , 5.0 ));
				half3 FresnelLerp165_g281 = lerpResult159_g281;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g281 = ( 1.0 - ( 0.28 * Roughness64_g281 * perceprualRoughness188_g281 ) );
				#else
				float staticSwitch183_g281 = ( 1.0 / ( ( Roughness64_g281 * Roughness64_g281 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g281 = staticSwitch183_g281;
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
				Unity_GlossyEnvironmentData g299_g281 = UnityGlossyEnvironmentSetup( smoothness169_g281, ase_worldViewDir, normalDir28_g281, float3(0,0,0));
				float3 indirectSpecular299_g281 = UnityGI_IndirectSpecular( data, occlusion306_g281, normalDir28_g281, g299_g281 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g281 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g281 = ( FresnelLerp165_g281 * SurfaceReduction182_g281 * indirectSpecular299_g281 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g281 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g281 = staticSwitch313_g281;
				#endif
				float3 Maintex365_g271 = temp_output_182_0_g271;
				float EmissionMask384_g271 = tex2DNode139_g271.g;
				float3 OutEmission1463 = ( (_EmissionColor).rgb * _EmissionStrength * Maintex365_g271 * EmissionMask384_g271 );
				float3 tanNormal27_g279 = OutNormal1457;
				float3 worldNormal27_g279 = float3(dot(tanToWorld0,tanNormal27_g279), dot(tanToWorld1,tanNormal27_g279), dot(tanToWorld2,tanNormal27_g279));
				float3 normalizeResult61_g279 = normalize( worldNormal27_g279 );
				float3 switchResult64_g279 = (((ase_vface>0)?(normalizeResult61_g279):(-normalizeResult61_g279)));
				float dotResult20_g279 = dot( ase_worldViewDir , -( ( ( _NormalBackDirInvert == 1.0 ? switchResult64_g279 : normalizeResult61_g279 ) * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float temp_output_59_0_g279 = ( _Translucency * 1.0 );
				float3 lerpResult39_g279 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 Diffuse1553 = temp_output_1549_345;
				float3 temp_output_6_0_g279 = Diffuse1553;
				UnityGIInput data15_g279;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g279 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g279
				data15_g279.lightmapUV = i.ase_lmap;
				#endif //dylm15_g279
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g279
				data15_g279.ambient = i.ase_sh;
				#endif //fsh15_g279
				UnityGI gi15_g279 = UnityGI_Base(data15_g279, 1, ( _NormalBackDirInvert == 1.0 ? switchResult64_g279 : normalizeResult61_g279 ));
				float temp_output_74_0_g279 = OutAO1462;
				float3 tanNormal14_g282 = OutNormal1457;
				float3 worldNormal14_g282 = float3(dot(tanToWorld0,tanNormal14_g282), dot(tanToWorld1,tanNormal14_g282), dot(tanToWorld2,tanNormal14_g282));
				float3 normalizeResult29_g282 = normalize( worldNormal14_g282 );
				float3 switchResult32_g282 = (((ase_vface>0)?(normalizeResult29_g282):(-normalizeResult29_g282)));
				float dotResult9_g282 = dot( ( _NormalBackDirInvert == 1.0 ? switchResult32_g282 : normalizeResult29_g282 ) , worldSpaceLightDir );
				#ifdef _TRANSMISSION_ON
				float3 staticSwitch36_g282 = ( ( max( 0.0 , -dotResult9_g282 ) * ( ase_lightColor.rgb * ase_atten ) * _TransmissionStrength ) * OutAlbedo1461 );
				#else
				float3 staticSwitch36_g282 = float3( 0,0,0 );
				#endif
				
				float AlphaInput137_g271 = tex2DNode119_g271.a;
				float Color1Alpha101_g271 = _Color.a;
				float Color2Alpha97_g271 = _Color2.a;
				float Color3Alpha98_g271 = _Color3.a;
				float Color4Alpha100_g271 = _Color4.a;
				float AlphaMix258_g271 = saturate( ( AlphaInput137_g271 * ( ( Color1Alpha101_g271 * ColorMask199_g271 ) + ( Color2Alpha97_g271 * ColorMask296_g271 ) + ( Color3Alpha98_g271 * ColorMask3102_g271 ) + ( Color4Alpha100_g271 * ColorMask494_g271 ) ) ) );
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g271 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g271 = Dither4x4Bayer( fmod(clipScreen290_g271.x, 4), fmod(clipScreen290_g271.y, 4) );
				dither290_g271 = step( dither290_g271, AlphaMix258_g271 );
				float dither286_g271 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g271 = step( dither286_g271, AlphaMix258_g271 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch364_g271 = dither286_g271;
				#else
				float staticSwitch364_g271 = dither290_g271;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch363_g271 = staticSwitch364_g271;
				#else
				float staticSwitch363_g271 = AlphaMix258_g271;
				#endif
				float clampResult353_g271 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g271 = tex2DNode259_g271.b;
				float OutOp1464 = ( staticSwitch363_g271 * step( pow( ( 1.0 - clampResult353_g271 ) , 0.2 ) , pow( Tearing360_g271 , 0.5 ) ) );
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g281 * lightAtten296_g281 ) + ( gi203_g281.indirect.diffuse * occlusion306_g281 ) ) ) + ( SpecularTerm34_g281 * lightAtten296_g281 * FresnelTerm130_g281 ) + staticSwitch305_g281 ) + OutEmission1463 + ( ( ( pow( saturate( dotResult20_g279 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g279 * lerpResult39_g279 * temp_output_6_0_g279 ) + saturate( ( ( gi15_g279.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g279 * temp_output_6_0_g279 * temp_output_74_0_g279 ) ) ) + staticSwitch36_g282 );
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
			#pragma multi_compile __ _DITHERSWITCH_ON
			#pragma multi_compile __ _DITHERBLUENOISE_ON
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
			

			uniform float4 _BaseColor;
			uniform float _DetailUVRotator;
			uniform float _DetailNormalMapScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _Color2;
			uniform float4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float4 _EmissionColor;
			uniform float _Float0;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _ExGloss;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailNormalMapScale2;
			uniform float _DetailGlossScale;
			uniform float _Glossiness3;
			uniform float _Metallic3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _Color4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailUV2Rotator;
			uniform float _CarvatureStrength;
			uniform float _DetailMetallicScale;
			uniform float4 _Color3;
			uniform float _WetnessPower;
			uniform float _Glossiness;
			uniform float _Metallic;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _Metallic4;
			uniform float _DetailMetallicScale2;
			uniform float _GlossinessReflection;
			uniform float _Glossiness2;
			uniform float _AlphaEx;
			uniform float _Metallic2;
			uniform float _RoughnessReflections;
			uniform float2 _DetailUV;
			uniform float2 _UVScalePattern;
			uniform float _DetailGlossScale2;
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _NormalBackDirInvert;
			uniform float _TransmissionStrength;
			uniform float _CullMode;
			SamplerState sampler_trilinear_repeat;
			SamplerState sampler_MetallicGlossMap;
			uniform float _MetallicMask;
			uniform float _MetallicMask2;
			uniform float _MetallicMask3;
			uniform float _MetallicMask4;
			float4 _Noise_TexelSize;
			SamplerState sampler_point_repeat;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _Roughness;
			uniform float _Roughness2;
			uniform float _Roughness3;
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
			
			float3 GI2_g288( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float3 GI2_g286( float3 normal )
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
				float2 uv_MainTex119_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g271 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g271 );
				float3 temp_output_182_0_g271 = (tex2DNode119_g271).rgb;
				float3 temp_output_206_0_g271 = ( temp_output_182_0_g271 * (_BaseColor).rgb );
				float3 Color1128_g271 = (_Color).rgb;
				float2 uv_ColorMask86_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g271 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g271 );
				float ColorMask199_g271 = ( 1.0 - ( tex2DNode86_g271.r + tex2DNode86_g271.g + tex2DNode86_g271.b ) );
				float3 Color2121_g271 = (_Color2).rgb;
				float ColorMask296_g271 = tex2DNode86_g271.r;
				float3 Color3123_g271 = (_Color3).rgb;
				float ColorMask3102_g271 = tex2DNode86_g271.g;
				float3 Color4136_g271 = (_Color4).rgb;
				float ColorMask494_g271 = tex2DNode86_g271.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g271 = i.ase_texcoord1.xy;
				float Carvature197_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g271 ).r;
				float3 lerpResult289_g271 = lerp( ( ( temp_output_206_0_g271 * Color1128_g271 * ColorMask199_g271 ) + ( Color2121_g271 * ColorMask296_g271 * temp_output_206_0_g271 ) + ( Color3123_g271 * ColorMask3102_g271 * temp_output_206_0_g271 ) + ( Color4136_g271 * ColorMask494_g271 * temp_output_206_0_g271 ) ) , temp_cast_0 , ( Carvature197_g271 * _CarvatureStrength ));
				float ExGloss255_g271 = _ExGloss;
				float3 lerpResult313_g271 = lerp( lerpResult289_g271 , ( lerpResult289_g271 * _WetAlbedoOffset ) , ExGloss255_g271);
				float3 DiffuseMix326_g271 = lerpResult313_g271;
				float3 temp_output_1549_345 = DiffuseMix326_g271;
				Gradient gradient37_g272 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap180_g271 = i.ase_texcoord1.xy;
				float2 texCoord76_g271 = i.ase_texcoord1.xy * ( _DetailUV * _UVScalePattern ) + float2( 0,0 );
				float cos78_g271 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g271 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g271 = mul( texCoord76_g271 - float2( 0.5,0.5 ) , float2x2( cos78_g271 , -sin78_g271 , sin78_g271 , cos78_g271 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g271 = rotator78_g271;
				float2 break13_g271 = Detail1UV79_g271;
				float temp_output_14_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g271 = (float2(( break13_g271.x + temp_output_14_0_g271 ) , break13_g271.y));
				float4 tex2DNode85_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 );
				float2 uv_DetailMask81_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g271 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g271 );
				float DetailMask183_g271 = tex2DNode81_g271.r;
				float temp_output_42_0_g271 = ( DetailMask183_g271 * _DetailNormalMapScale );
				float3 appendResult56_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float2 appendResult27_g271 = (float2(break13_g271.x , ( break13_g271.y + temp_output_14_0_g271 )));
				float3 appendResult58_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float3 normalizeResult66_g271 = normalize( cross( appendResult56_g271 , appendResult58_g271 ) );
				float3 DetailNormal171_g271 = normalizeResult66_g271;
				float2 texCoord7_g271 = i.ase_texcoord1.xy * ( _UVScalePattern * _DetailUV2 ) + float2( 0,0 );
				float cos10_g271 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g271 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g271 = mul( texCoord7_g271 - float2( 0.5,0.5 ) , float2x2( cos10_g271 , -sin10_g271 , sin10_g271 , cos10_g271 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g271 = rotator10_g271;
				float2 break20_g271 = Detail2UV12_g271;
				float temp_output_21_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g271 = (float2(( break20_g271.x + temp_output_21_0_g271 ) , break20_g271.y));
				float4 tex2DNode41_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 );
				float DetailMask284_g271 = tex2DNode81_g271.g;
				float temp_output_49_0_g271 = ( DetailMask284_g271 * _DetailNormalMapScale2 );
				float3 appendResult63_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float2 appendResult31_g271 = (float2(break20_g271.x , ( break20_g271.y + temp_output_21_0_g271 )));
				float3 appendResult64_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float3 normalizeResult70_g271 = normalize( cross( appendResult63_g271 , appendResult64_g271 ) );
				float3 DetailNormal272_g271 = normalizeResult70_g271;
				float3 normalizeResult262_g271 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g271 ), _Float0 ) , DetailNormal171_g271 ) , DetailNormal272_g271 ) );
				float3 temp_output_1549_342 = normalizeResult262_g271;
				float dotResult7_g272 = dot( ase_tanViewDir , temp_output_1549_342 );
				float3 temp_output_12_0_g272 = (SampleGradient( gradient37_g272, dotResult7_g272 )).rgb;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k7 , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k7 , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k7 * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1549_345;
				float2 uv_MetallicGlossMap139_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g271 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g271 );
				float lerpResult167_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask);
				float lerpResult193_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask2);
				float lerpResult181_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask3);
				float lerpResult208_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask4);
				float lerpResult281_g271 = lerp( ( ( lerpResult167_g271 * _Metallic * ColorMask199_g271 ) + ( lerpResult193_g271 * _Metallic2 * ColorMask296_g271 ) + ( lerpResult181_g271 * _Metallic3 * ColorMask3102_g271 ) ) , ( lerpResult208_g271 * _Metallic4 ) , ColorMask494_g271);
				float Detail1148_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 ).r;
				float Detail2194_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 ).r;
				float temp_output_1549_340 = saturate( ( ( lerpResult281_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailMetallicScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailMetallicScale2 * DetailMask284_g271 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1549_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1549_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1549_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1549_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 temp_output_3_0_g285 = OutAlbedo1461;
				float AlphaInput137_g271 = tex2DNode119_g271.a;
				float Color1Alpha101_g271 = _Color.a;
				float Color2Alpha97_g271 = _Color2.a;
				float Color3Alpha98_g271 = _Color3.a;
				float Color4Alpha100_g271 = _Color4.a;
				float AlphaMix258_g271 = saturate( ( AlphaInput137_g271 * ( ( Color1Alpha101_g271 * ColorMask199_g271 ) + ( Color2Alpha97_g271 * ColorMask296_g271 ) + ( Color3Alpha98_g271 * ColorMask3102_g271 ) + ( Color4Alpha100_g271 * ColorMask494_g271 ) ) ) );
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g271 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g271 = Dither4x4Bayer( fmod(clipScreen290_g271.x, 4), fmod(clipScreen290_g271.y, 4) );
				dither290_g271 = step( dither290_g271, AlphaMix258_g271 );
				float dither286_g271 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g271 = step( dither286_g271, AlphaMix258_g271 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch364_g271 = dither286_g271;
				#else
				float staticSwitch364_g271 = dither290_g271;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch363_g271 = staticSwitch364_g271;
				#else
				float staticSwitch363_g271 = AlphaMix258_g271;
				#endif
				float clampResult353_g271 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap259_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g271 );
				float Tearing360_g271 = tex2DNode259_g271.b;
				float OutOp1464 = ( staticSwitch363_g271 * step( pow( ( 1.0 - clampResult353_g271 ) , 0.2 ) , pow( Tearing360_g271 , 0.5 ) ) );
				clip( OutOp1464 - _Cutoff);
				float lerpResult298_g271 = lerp( 1.0 , tex2DNode259_g271.g , _OcculusionStrength);
				float smoothstepResult266_g271 = smoothstep( 0.0 , 0.8 , Detail1148_g271);
				float lerpResult297_g271 = lerp( 1.0 , smoothstepResult266_g271 , ( _DetailOcculusionScale * DetailMask183_g271 ));
				float smoothstepResult274_g271 = smoothstep( 0.0 , 0.8 , Detail2194_g271);
				float lerpResult299_g271 = lerp( 1.0 , smoothstepResult274_g271 , ( _DetailOcculusionScale2 * DetailMask284_g271 ));
				float OcclusionMix323_g271 = saturate( ( lerpResult298_g271 * lerpResult297_g271 * lerpResult299_g271 ) );
				float OutAO1462 = OcclusionMix323_g271;
				float temp_output_4_0_g285 = OutAO1462;
				float4 appendResult2_g285 = (float4(temp_output_3_0_g285 , temp_output_4_0_g285));
				
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1549_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float lerpResult143_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness);
				float lerpResult158_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness2);
				float lerpResult157_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness3);
				float lerpResult187_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness4);
				float lerpResult230_g271 = lerp( ( ( lerpResult143_g271 * _Glossiness * ColorMask199_g271 ) + ( lerpResult158_g271 * _Glossiness2 * ColorMask296_g271 ) + ( lerpResult157_g271 * _Glossiness3 * ColorMask3102_g271 ) ) , ( _Glossiness4 * lerpResult187_g271 ) , ColorMask494_g271);
				float lerpResult305_g271 = lerp( ( ( lerpResult230_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailGlossScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailGlossScale2 * DetailMask284_g271 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g271 ));
				float OutSmoothness1458 = saturate( lerpResult305_g271 );
				float4 appendResult5_g285 = (float4(OutSpecular1456 , OutSmoothness1458));
				
				float3 OutNormal1457 = temp_output_1549_342;
				float3 tanNormal11_g285 = OutNormal1457;
				float3 worldNormal11_g285 = float3(dot(tanToWorld0,tanNormal11_g285), dot(tanToWorld1,tanNormal11_g285), dot(tanToWorld2,tanNormal11_g285));
				float3 normalizeResult21_g285 = normalize( worldNormal11_g285 );
				float3 switchResult24_g285 = (((ase_vface>0)?(normalizeResult21_g285):(-normalizeResult21_g285)));
				float3 temp_output_22_0_g285 = ( _NormalBackDirInvert == 1.0 ? switchResult24_g285 : normalizeResult21_g285 );
				float4 appendResult13_g285 = (float4(( ( temp_output_22_0_g285 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 Maintex365_g271 = temp_output_182_0_g271;
				float EmissionMask384_g271 = tex2DNode139_g271.g;
				float3 OutEmission1463 = ( (_EmissionColor).rgb * _EmissionStrength * Maintex365_g271 * EmissionMask384_g271 );
				float3 tanNormal27_g287 = OutNormal1457;
				float3 worldNormal27_g287 = float3(dot(tanToWorld0,tanNormal27_g287), dot(tanToWorld1,tanNormal27_g287), dot(tanToWorld2,tanNormal27_g287));
				float3 normalizeResult61_g287 = normalize( worldNormal27_g287 );
				float3 switchResult64_g287 = (((ase_vface>0)?(normalizeResult61_g287):(-normalizeResult61_g287)));
				float3 normal2_g288 = ( _NormalBackDirInvert == 1.0 ? switchResult64_g287 : normalizeResult61_g287 );
				float3 localGI2_g288 = GI2_g288( normal2_g288 );
				float temp_output_59_0_g287 = ( _Translucency * 1.0 );
				float3 Diffuse1553 = temp_output_1549_345;
				float3 temp_output_6_0_g287 = Diffuse1553;
				float temp_output_74_0_g287 = OutAO1462;
				float3 normal2_g286 = temp_output_22_0_g285;
				float3 localGI2_g286 = GI2_g286( normal2_g286 );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g285 = ( ( OutEmission1463 + saturate( ( ( localGI2_g288 * _TransAmbient ) * temp_output_59_0_g287 * temp_output_6_0_g287 * temp_output_74_0_g287 ) ) ) + ( temp_output_3_0_g285 * localGI2_g286 * temp_output_4_0_g285 ) );
				#else
				float3 staticSwitch16_g285 = exp2( -( ( OutEmission1463 + saturate( ( ( localGI2_g288 * _TransAmbient ) * temp_output_59_0_g287 * temp_output_6_0_g287 * temp_output_74_0_g287 ) ) ) + ( temp_output_3_0_g285 * localGI2_g286 * temp_output_4_0_g285 ) ) );
				#endif
				float4 appendResult19_g285 = (float4(staticSwitch16_g285 , 1.0));
				
				
				outGBuffer0 = appendResult2_g285;
				outGBuffer1 = appendResult5_g285;
				outGBuffer2 = appendResult13_g285;
				outGBuffer3 = appendResult19_g285;
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
			#pragma multi_compile __ _DITHERSWITCH_ON
			#pragma multi_compile __ _DITHERBLUENOISE_ON
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
			#pragma multi_compile __ _TRANSMISSION_ON
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
			
			uniform float4 _BaseColor;
			uniform float _DetailUVRotator;
			uniform float _DetailNormalMapScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _Color2;
			uniform float4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float4 _EmissionColor;
			uniform float _Float0;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float _ExGloss;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _DetailNormalMapScale2;
			uniform float _DetailGlossScale;
			uniform float _Glossiness3;
			uniform float _Metallic3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _Color4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			uniform float _DetailUV2Rotator;
			uniform float _CarvatureStrength;
			uniform float _DetailMetallicScale;
			uniform float4 _Color3;
			uniform float _WetnessPower;
			uniform float _Glossiness;
			uniform float _Metallic;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			uniform float _Metallic4;
			uniform float _DetailMetallicScale2;
			uniform float _GlossinessReflection;
			uniform float _Glossiness2;
			uniform float _AlphaEx;
			uniform float _Metallic2;
			uniform float _RoughnessReflections;
			uniform float2 _DetailUV;
			uniform float2 _UVScalePattern;
			uniform float _DetailGlossScale2;
			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _NormalBackDirInvert;
			uniform float _TransmissionStrength;
			uniform float _CullMode;
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

				float2 uv_MainTex119_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode119_g271 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex119_g271 );
				float3 temp_output_182_0_g271 = (tex2DNode119_g271).rgb;
				float3 temp_output_206_0_g271 = ( temp_output_182_0_g271 * (_BaseColor).rgb );
				float3 Color1128_g271 = (_Color).rgb;
				float2 uv_ColorMask86_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode86_g271 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask86_g271 );
				float ColorMask199_g271 = ( 1.0 - ( tex2DNode86_g271.r + tex2DNode86_g271.g + tex2DNode86_g271.b ) );
				float3 Color2121_g271 = (_Color2).rgb;
				float ColorMask296_g271 = tex2DNode86_g271.r;
				float3 Color3123_g271 = (_Color3).rgb;
				float ColorMask3102_g271 = tex2DNode86_g271.g;
				float3 Color4136_g271 = (_Color4).rgb;
				float ColorMask494_g271 = tex2DNode86_g271.b;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap186_g271 = i.ase_texcoord1.xy;
				float Carvature197_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap186_g271 ).r;
				float3 lerpResult289_g271 = lerp( ( ( temp_output_206_0_g271 * Color1128_g271 * ColorMask199_g271 ) + ( Color2121_g271 * ColorMask296_g271 * temp_output_206_0_g271 ) + ( Color3123_g271 * ColorMask3102_g271 * temp_output_206_0_g271 ) + ( Color4136_g271 * ColorMask494_g271 * temp_output_206_0_g271 ) ) , temp_cast_0 , ( Carvature197_g271 * _CarvatureStrength ));
				float ExGloss255_g271 = _ExGloss;
				float3 lerpResult313_g271 = lerp( lerpResult289_g271 , ( lerpResult289_g271 * _WetAlbedoOffset ) , ExGloss255_g271);
				float3 DiffuseMix326_g271 = lerpResult313_g271;
				float3 temp_output_1549_345 = DiffuseMix326_g271;
				Gradient gradient37_g272 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap180_g271 = i.ase_texcoord1.xy;
				float2 texCoord76_g271 = i.ase_texcoord1.xy * ( _DetailUV * _UVScalePattern ) + float2( 0,0 );
				float cos78_g271 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g271 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g271 = mul( texCoord76_g271 - float2( 0.5,0.5 ) , float2x2( cos78_g271 , -sin78_g271 , sin78_g271 , cos78_g271 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g271 = rotator78_g271;
				float2 break13_g271 = Detail1UV79_g271;
				float temp_output_14_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult24_g271 = (float2(( break13_g271.x + temp_output_14_0_g271 ) , break13_g271.y));
				float4 tex2DNode85_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 );
				float2 uv_DetailMask81_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g271 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g271 );
				float DetailMask183_g271 = tex2DNode81_g271.r;
				float temp_output_42_0_g271 = ( DetailMask183_g271 * _DetailNormalMapScale );
				float3 appendResult56_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float2 appendResult27_g271 = (float2(break13_g271.x , ( break13_g271.y + temp_output_14_0_g271 )));
				float3 appendResult58_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g271 ).g - tex2DNode85_g271.g ) * temp_output_42_0_g271 )));
				float3 normalizeResult66_g271 = normalize( cross( appendResult56_g271 , appendResult58_g271 ) );
				float3 DetailNormal171_g271 = normalizeResult66_g271;
				float2 texCoord7_g271 = i.ase_texcoord1.xy * ( _UVScalePattern * _DetailUV2 ) + float2( 0,0 );
				float cos10_g271 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g271 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g271 = mul( texCoord7_g271 - float2( 0.5,0.5 ) , float2x2( cos10_g271 , -sin10_g271 , sin10_g271 , cos10_g271 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g271 = rotator10_g271;
				float2 break20_g271 = Detail2UV12_g271;
				float temp_output_21_0_g271 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult32_g271 = (float2(( break20_g271.x + temp_output_21_0_g271 ) , break20_g271.y));
				float4 tex2DNode41_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 );
				float DetailMask284_g271 = tex2DNode81_g271.g;
				float temp_output_49_0_g271 = ( DetailMask284_g271 * _DetailNormalMapScale2 );
				float3 appendResult63_g271 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float2 appendResult31_g271 = (float2(break20_g271.x , ( break20_g271.y + temp_output_21_0_g271 )));
				float3 appendResult64_g271 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g271 ).g - tex2DNode41_g271.g ) * temp_output_49_0_g271 )));
				float3 normalizeResult70_g271 = normalize( cross( appendResult63_g271 , appendResult64_g271 ) );
				float3 DetailNormal272_g271 = normalizeResult70_g271;
				float3 normalizeResult262_g271 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap180_g271 ), _Float0 ) , DetailNormal171_g271 ) , DetailNormal272_g271 ) );
				float3 temp_output_1549_342 = normalizeResult262_g271;
				float dotResult7_g272 = dot( ase_tanViewDir , temp_output_1549_342 );
				float3 temp_output_12_0_g272 = (SampleGradient( gradient37_g272, dotResult7_g272 )).rgb;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k7 , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k7 , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k7 * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1549_345;
				float2 uv_MetallicGlossMap139_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode139_g271 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap139_g271 );
				float lerpResult167_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask);
				float lerpResult193_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask2);
				float lerpResult181_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask3);
				float lerpResult208_g271 = lerp( 1.0 , tex2DNode139_g271.b , _MetallicMask4);
				float lerpResult281_g271 = lerp( ( ( lerpResult167_g271 * _Metallic * ColorMask199_g271 ) + ( lerpResult193_g271 * _Metallic2 * ColorMask296_g271 ) + ( lerpResult181_g271 * _Metallic3 * ColorMask3102_g271 ) ) , ( lerpResult208_g271 * _Metallic4 ) , ColorMask494_g271);
				float Detail1148_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g271 ).r;
				float Detail2194_g271 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g271 ).r;
				float temp_output_1549_340 = saturate( ( ( lerpResult281_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailMetallicScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailMetallicScale2 * DetailMask284_g271 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1549_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1549_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1549_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1549_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g281 = worldSpaceLightDir;
				float3 viewDir15_g281 = ase_worldViewDir;
				float3 normalizeResult136_g281 = ASESafeNormalize( ( lightDir14_g281 + viewDir15_g281 ) );
				float dotResult137_g281 = dot( lightDir14_g281 , normalizeResult136_g281 );
				float LdotH139_g281 = saturate( dotResult137_g281 );
				float lerpResult143_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness);
				float lerpResult158_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness2);
				float lerpResult157_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness3);
				float lerpResult187_g271 = lerp( 1.0 , tex2DNode139_g271.r , _Roughness4);
				float lerpResult230_g271 = lerp( ( ( lerpResult143_g271 * _Glossiness * ColorMask199_g271 ) + ( lerpResult158_g271 * _Glossiness2 * ColorMask296_g271 ) + ( lerpResult157_g271 * _Glossiness3 * ColorMask3102_g271 ) ) , ( _Glossiness4 * lerpResult187_g271 ) , ColorMask494_g271);
				float lerpResult305_g271 = lerp( ( ( lerpResult230_g271 - ( ( 1.0 - Detail1148_g271 ) * ( _DetailGlossScale * DetailMask183_g271 ) ) ) - ( ( 1.0 - Detail2194_g271 ) * ( _DetailGlossScale2 * DetailMask284_g271 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g271 ));
				float OutSmoothness1458 = saturate( lerpResult305_g271 );
				float smoothness169_g281 = OutSmoothness1458;
				float perceprualRoughness188_g281 = ( 1.0 - smoothness169_g281 );
				half fd90273_g281 = ( 0.5 + ( 2.0 * LdotH139_g281 * LdotH139_g281 * perceprualRoughness188_g281 ) );
				float3 OutNormal1457 = temp_output_1549_342;
				float3 tanNormal29_g281 = OutNormal1457;
				float3 worldNormal29_g281 = float3(dot(tanToWorld0,tanNormal29_g281), dot(tanToWorld1,tanNormal29_g281), dot(tanToWorld2,tanNormal29_g281));
				float3 normalizeResult25_g281 = normalize( worldNormal29_g281 );
				float3 switchResult316_g281 = (((ase_vface>0)?(normalizeResult25_g281):(-normalizeResult25_g281)));
				float3 normalDir28_g281 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g281 : normalizeResult25_g281 );
				float dotResult21_g281 = dot( lightDir14_g281 , normalDir28_g281 );
				float NdotL20_g281 = saturate( dotResult21_g281 );
				half lightScatter253_g281 = ( ( ( fd90273_g281 - 1.0 ) * pow( ( 1.0 - NdotL20_g281 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g281 = dot( normalDir28_g281 , viewDir15_g281 );
				float NdotV55_g281 = saturate( dotResult56_g281 );
				half viewScatter254_g281 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g281 ) , 5.0 ) * ( fd90273_g281 - 1.0 ) ) );
				half disneydiffuse251_g281 = ( lightScatter253_g281 * viewScatter254_g281 );
				half Diffuseterm281_g281 = ( disneydiffuse251_g281 * NdotL20_g281 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g281 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g281;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g281 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g281
				data203_g281.lightmapUV = i.ase_lmap;
				#endif //dylm203_g281
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g281
				data203_g281.ambient = i.ase_sh;
				#endif //fsh203_g281
				UnityGI gi203_g281 = UnityGI_Base(data203_g281, 1, normalDir28_g281);
				float2 uv_OcclusionMap259_g271 = i.ase_texcoord1.xy;
				float4 tex2DNode259_g271 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap259_g271 );
				float lerpResult298_g271 = lerp( 1.0 , tex2DNode259_g271.g , _OcculusionStrength);
				float smoothstepResult266_g271 = smoothstep( 0.0 , 0.8 , Detail1148_g271);
				float lerpResult297_g271 = lerp( 1.0 , smoothstepResult266_g271 , ( _DetailOcculusionScale * DetailMask183_g271 ));
				float smoothstepResult274_g271 = smoothstep( 0.0 , 0.8 , Detail2194_g271);
				float lerpResult299_g271 = lerp( 1.0 , smoothstepResult274_g271 , ( _DetailOcculusionScale2 * DetailMask284_g271 ));
				float OcclusionMix323_g271 = saturate( ( lerpResult298_g271 * lerpResult297_g271 * lerpResult299_g271 ) );
				float OutAO1462 = OcclusionMix323_g271;
				float occlusion306_g281 = OutAO1462;
				half Roughness64_g281 = max( ( perceprualRoughness188_g281 * perceprualRoughness188_g281 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g281 = ( 0.5 / ( ( ( ( NdotV55_g281 * ( 1.0 - Roughness64_g281 ) ) + Roughness64_g281 ) * NdotL20_g281 ) + 1E-05 + ( NdotV55_g281 * ( Roughness64_g281 + ( ( 1.0 - Roughness64_g281 ) * NdotL20_g281 ) ) ) ) );
				float a266_g281 = ( Roughness64_g281 * Roughness64_g281 );
				float3 normalizeResult87_g281 = ASESafeNormalize( ( lightDir14_g281 + viewDir15_g281 ) );
				float dotResult88_g281 = dot( normalDir28_g281 , normalizeResult87_g281 );
				float NdotH90_g281 = saturate( dotResult88_g281 );
				float d99_g281 = ( ( ( ( NdotH90_g281 * a266_g281 ) - NdotH90_g281 ) * NdotH90_g281 ) + 1.0 );
				half GGXTerm43_g281 = ( ( ( 1.0 / UNITY_PI ) * a266_g281 ) / ( ( d99_g281 * d99_g281 ) + 1E-07 ) );
				float temp_output_36_0_g281 = ( SmithJointGGXVisibilityTerm42_g281 * GGXTerm43_g281 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g281 = sqrt( max( 0.0001 , temp_output_36_0_g281 ) );
				#else
				float staticSwitch5_g281 = temp_output_36_0_g281;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g281 = 0.0;
				#else
				float staticSwitch119_g281 = max( 0.0 , ( staticSwitch5_g281 * NdotL20_g281 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1510 = i.ase_texcoord1.xy;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1510 )).rgb ),temp_output_1549_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g281 = ( OutSpecular1456 * occlusion306_g281 );
				float SpecularTerm34_g281 = ( staticSwitch119_g281 * ( SpecColor140_g281.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g281 = ( ( pow( ( 1.0 - LdotH139_g281 ) , 5.0 ) * ( 1.0 - SpecColor140_g281 ) ) + SpecColor140_g281 );
				half metallic176_g281 = 0.0;
				half localOneMinusReflectivity176_g281 = OneMinusReflectivity( metallic176_g281 );
				half GrazingTerm163_g281 = saturate( ( smoothness169_g281 + ( 1.0 - localOneMinusReflectivity176_g281 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g281).xxx;
				float3 lerpResult159_g281 = lerp( SpecColor140_g281 , temp_cast_3 , pow( ( 1.0 - NdotV55_g281 ) , 5.0 ));
				half3 FresnelLerp165_g281 = lerpResult159_g281;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g281 = ( 1.0 - ( 0.28 * Roughness64_g281 * perceprualRoughness188_g281 ) );
				#else
				float staticSwitch183_g281 = ( 1.0 / ( ( Roughness64_g281 * Roughness64_g281 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g281 = staticSwitch183_g281;
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
				Unity_GlossyEnvironmentData g299_g281 = UnityGlossyEnvironmentSetup( smoothness169_g281, ase_worldViewDir, normalDir28_g281, float3(0,0,0));
				float3 indirectSpecular299_g281 = UnityGI_IndirectSpecular( data, occlusion306_g281, normalDir28_g281, g299_g281 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g281 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g281 = ( FresnelLerp165_g281 * SurfaceReduction182_g281 * indirectSpecular299_g281 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g281 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g281 = staticSwitch313_g281;
				#endif
				float3 Maintex365_g271 = temp_output_182_0_g271;
				float EmissionMask384_g271 = tex2DNode139_g271.g;
				float3 OutEmission1463 = ( (_EmissionColor).rgb * _EmissionStrength * Maintex365_g271 * EmissionMask384_g271 );
				float3 tanNormal27_g279 = OutNormal1457;
				float3 worldNormal27_g279 = float3(dot(tanToWorld0,tanNormal27_g279), dot(tanToWorld1,tanNormal27_g279), dot(tanToWorld2,tanNormal27_g279));
				float3 normalizeResult61_g279 = normalize( worldNormal27_g279 );
				float3 switchResult64_g279 = (((ase_vface>0)?(normalizeResult61_g279):(-normalizeResult61_g279)));
				float dotResult20_g279 = dot( ase_worldViewDir , -( ( ( _NormalBackDirInvert == 1.0 ? switchResult64_g279 : normalizeResult61_g279 ) * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float temp_output_59_0_g279 = ( _Translucency * 1.0 );
				float3 lerpResult39_g279 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 Diffuse1553 = temp_output_1549_345;
				float3 temp_output_6_0_g279 = Diffuse1553;
				UnityGIInput data15_g279;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g279 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g279
				data15_g279.lightmapUV = i.ase_lmap;
				#endif //dylm15_g279
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g279
				data15_g279.ambient = i.ase_sh;
				#endif //fsh15_g279
				UnityGI gi15_g279 = UnityGI_Base(data15_g279, 1, ( _NormalBackDirInvert == 1.0 ? switchResult64_g279 : normalizeResult61_g279 ));
				float temp_output_74_0_g279 = OutAO1462;
				float3 tanNormal14_g282 = OutNormal1457;
				float3 worldNormal14_g282 = float3(dot(tanToWorld0,tanNormal14_g282), dot(tanToWorld1,tanNormal14_g282), dot(tanToWorld2,tanNormal14_g282));
				float3 normalizeResult29_g282 = normalize( worldNormal14_g282 );
				float3 switchResult32_g282 = (((ase_vface>0)?(normalizeResult29_g282):(-normalizeResult29_g282)));
				float dotResult9_g282 = dot( ( _NormalBackDirInvert == 1.0 ? switchResult32_g282 : normalizeResult29_g282 ) , worldSpaceLightDir );
				#ifdef _TRANSMISSION_ON
				float3 staticSwitch36_g282 = ( ( max( 0.0 , -dotResult9_g282 ) * ( ase_lightColor.rgb * ase_atten ) * _TransmissionStrength ) * OutAlbedo1461 );
				#else
				float3 staticSwitch36_g282 = float3( 0,0,0 );
				#endif
				
				float AlphaInput137_g271 = tex2DNode119_g271.a;
				float Color1Alpha101_g271 = _Color.a;
				float Color2Alpha97_g271 = _Color2.a;
				float Color3Alpha98_g271 = _Color3.a;
				float Color4Alpha100_g271 = _Color4.a;
				float AlphaMix258_g271 = saturate( ( AlphaInput137_g271 * ( ( Color1Alpha101_g271 * ColorMask199_g271 ) + ( Color2Alpha97_g271 * ColorMask296_g271 ) + ( Color3Alpha98_g271 * ColorMask3102_g271 ) + ( Color4Alpha100_g271 * ColorMask494_g271 ) ) ) );
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen290_g271 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither290_g271 = Dither4x4Bayer( fmod(clipScreen290_g271.x, 4), fmod(clipScreen290_g271.y, 4) );
				dither290_g271 = step( dither290_g271, AlphaMix258_g271 );
				float dither286_g271 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_point_repeat, _Noise_TexelSize);
				dither286_g271 = step( dither286_g271, AlphaMix258_g271 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch364_g271 = dither286_g271;
				#else
				float staticSwitch364_g271 = dither290_g271;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch363_g271 = staticSwitch364_g271;
				#else
				float staticSwitch363_g271 = AlphaMix258_g271;
				#endif
				float clampResult353_g271 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g271 = tex2DNode259_g271.b;
				float OutOp1464 = ( staticSwitch363_g271 * step( pow( ( 1.0 - clampResult353_g271 ) , 0.2 ) , pow( Tearing360_g271 , 0.5 ) ) );
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g281 * lightAtten296_g281 ) + ( gi203_g281.indirect.diffuse * occlusion306_g281 ) ) ) + ( SpecularTerm34_g281 * lightAtten296_g281 * FresnelTerm130_g281 ) + staticSwitch305_g281 ) + OutEmission1463 + ( ( ( pow( saturate( dotResult20_g279 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g279 * lerpResult39_g279 * temp_output_6_0_g279 ) + saturate( ( ( gi15_g279.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g279 * temp_output_6_0_g279 * temp_output_74_0_g279 ) ) ) + staticSwitch36_g282 );
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
6;6;1524;878;6024.118;2778.329;2.066832;True;False
Node;AmplifyShaderEditor.FunctionNode;1549;-7369.8,-2970.976;Inherit;False;AIT Item Function;6;;271;49cd9f91cda5058428ddba66ec049916;0;0;10;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;393;FLOAT;346;FLOAT;344;FLOAT;386;SAMPLERSTATE;389
Node;AmplifyShaderEditor.FunctionNode;1448;-7051.003,-3219.386;Inherit;False;Iridiscence;77;;272;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1504;-6542.181,-2655.577;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1506;-6932.382,-2251.002;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1499;-6476.679,-2821.133;Inherit;False;Property;_SpecColor;SpecColor;83;0;Fetch;True;0;0;0;True;0;False;0.509434,0.509434,0.509434,1;0.509434,0.509434,0.509434,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1505;-6501.107,-2637.094;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1510;-6563.142,-2576.792;Inherit;True;Property;_SpecularMap;SpecularMap;84;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1500;-6269.813,-2822.211;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1507;-6868.717,-2236.627;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1466;-6707.738,-2938.268;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1511;-6260.25,-2576.72;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1509;-5779.939,-2235.974;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1492;-6437.902,-2865.801;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1502;-6053.602,-2693.207;Inherit;False;Property;_Iridiscent2;Iridiscent;76;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1453;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;1451;-6810.623,-3223.49;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1465;-6652.558,-2968.096;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1508;-5732.706,-2264.725;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1512;-5788.65,-2593.342;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1453;-6566.516,-3219.566;Inherit;False;Property;_Iridiscent;Iridiscent;76;0;Create;True;0;0;0;True;1;Header(Iridiscent);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1498;-7100.806,-3346.077;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1491;-6376.876,-2902.946;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1497;-7040.347,-3385.493;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1455;-6292.278,-3212.093;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1503;-5586.432,-2593.294;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1496;-5118.203,-3191.141;Inherit;False;Property;_SpecularSetup;SpecularSetup;82;0;Create;True;0;0;0;False;1;Header(Specularity);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1493;-5880.89,-3443.042;Inherit;False;Property;_SpecularSetup2;SpecularSetup;82;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1496;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1458;-6844.787,-2709.449;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1456;-4717.914,-3009.692;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1543;-4448.494,-2858.229;Inherit;False;1293.531;604.8311;Comment;15;1474;1472;1468;1471;1473;1424;1467;1427;1475;1439;1419;1420;1422;1548;1554;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1462;-6836.8,-2620.271;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1457;-6838.56,-2886.581;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1461;-5557.572,-3257.77;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1553;-6996,-3326.057;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1463;-6841.948,-2798.449;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1474;-4357.646,-2467.086;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-4369.431,-2720.658;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-4368.926,-2808.229;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1473;-4379.059,-2634.711;Inherit;False;1456;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1472;-4398.494,-2549.861;Inherit;False;1458;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1554;-4353.882,-2370.978;Inherit;False;1553;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1547;-3985.645,-2385.598;Inherit;False;Unity Transmission;72;;282;9498cceedd4defe45a721369ca43b3c7;0;2;1;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1548;-3996.01,-2771.343;Inherit;False;GGX Specular Light;1;;281;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1542;-4922.453,-1864.057;Inherit;False;1585.49;765.5973;Comment;14;1556;1552;1555;1489;1551;1488;1550;1421;1483;1490;1481;1430;1484;1485;Deferred;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1467;-3971.184,-2603.041;Inherit;False;1463;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1424;-4102.147,-2525.21;Inherit;False;Unity Translucency;63;;279;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;74;FLOAT;0;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.RegisterLocalVarNode;1464;-6839.029,-2521.002;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1550;-4634.047,-1597.457;Inherit;False;Unity Translucency;63;;287;3081dbcb6ac8af842b2faa561ed4ff52;0;4;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;74;FLOAT;0;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;2837.367,-3900.219;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-4230.088,-2156.011;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1475;-3709.571,-2429.349;Inherit;False;1464;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1555;-4876.95,-1593.59;Inherit;False;1553;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1552;-4881.125,-1510.418;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1489;-4207.335,-1727.104;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1551;-4195.109,-1638.437;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1490;-4207.24,-1534.406;Inherit;False;1456;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1481;-4231.892,-1448.001;Inherit;False;1458;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1430;-3872.521,-1574.617;Inherit;False;Deferred Pass;3;;285;c9afd996879db6041a57a5a508002f59;0;7;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;0;False;32;FLOAT;0;False;4;COLOR;0;COLOR;1;COLOR;12;COLOR;18
Node;AmplifyShaderEditor.GetLocalVarNode;1484;-4185.883,-1358.698;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1485;-4214.207,-1814.057;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1427;-3717.113,-2621.49;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1556;-4874.237,-1679.085;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1483;-4188.362,-1270.096;Inherit;False;1464;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1488;-4526.411,-1697.197;Inherit;False;1463;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1439;-3394.7,-2621.542;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1420;-3380.963,-2515.742;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1422;-3380.963,-2482.742;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1421;-3545.364,-1577.917;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1419;-3380.963,-2621.542;Float;False;True;-1;2;ASEMaterialInspector;0;8;Hanmen/Item Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=0;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
WireConnection;1448;1;1549;342
WireConnection;1504;0;1448;0
WireConnection;1506;0;1549;340
WireConnection;1505;0;1504;0
WireConnection;1500;0;1499;0
WireConnection;1507;0;1506;0
WireConnection;1466;0;1549;345
WireConnection;1511;0;1510;0
WireConnection;1509;0;1507;0
WireConnection;1492;0;1549;340
WireConnection;1502;1;1500;0
WireConnection;1502;0;1505;0
WireConnection;1451;0;1448;0
WireConnection;1451;1;1549;345
WireConnection;1451;2;1549;340
WireConnection;1465;0;1466;0
WireConnection;1508;0;1509;0
WireConnection;1512;0;1502;0
WireConnection;1512;1;1511;0
WireConnection;1453;1;1465;0
WireConnection;1453;0;1451;0
WireConnection;1498;0;1549;345
WireConnection;1491;0;1492;0
WireConnection;1497;0;1498;0
WireConnection;1455;0;1453;0
WireConnection;1455;1;1491;0
WireConnection;1503;0;1512;0
WireConnection;1503;1;1508;0
WireConnection;1496;1;1455;1
WireConnection;1496;0;1503;1
WireConnection;1493;1;1455;0
WireConnection;1493;0;1497;0
WireConnection;1458;0;1549;0
WireConnection;1456;0;1496;0
WireConnection;1462;0;1549;346
WireConnection;1457;0;1549;342
WireConnection;1461;0;1493;0
WireConnection;1553;0;1549;345
WireConnection;1463;0;1549;341
WireConnection;1547;1;1471;0
WireConnection;1547;11;1468;0
WireConnection;1548;286;1471;0
WireConnection;1548;30;1468;0
WireConnection;1548;146;1473;0
WireConnection;1548;147;1472;0
WireConnection;1548;302;1474;0
WireConnection;1424;6;1554;0
WireConnection;1424;26;1468;0
WireConnection;1424;74;1474;0
WireConnection;1464;0;1549;344
WireConnection;1550;6;1555;0
WireConnection;1550;26;1552;0
WireConnection;1550;74;1556;0
WireConnection;1551;0;1488;0
WireConnection;1551;1;1550;68
WireConnection;1430;3;1485;0
WireConnection;1430;14;1489;0
WireConnection;1430;20;1551;0
WireConnection;1430;6;1490;0
WireConnection;1430;7;1481;0
WireConnection;1430;4;1484;0
WireConnection;1430;32;1483;0
WireConnection;1427;0;1548;0
WireConnection;1427;1;1467;0
WireConnection;1427;2;1424;0
WireConnection;1427;3;1547;0
WireConnection;1421;0;1430;0
WireConnection;1421;1;1430;1
WireConnection;1421;2;1430;12
WireConnection;1421;3;1430;18
WireConnection;1419;0;1427;0
WireConnection;1419;1;1475;0
ASEEND*/
//CHKSM=CB48383EE78E4EFDC16A942C25260D1853A3BDF9