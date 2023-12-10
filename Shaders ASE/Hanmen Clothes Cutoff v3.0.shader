// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Header(Cutout Setting)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		[Header(Backface Settings)][Toggle]_NormalBackDirInvert("Backface Normal Direction Invert", Range( 0 , 1)) = 1
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) Smoothness)][Header((G) Emission)][Header((B) Thickness)]_MetallicGlossMap("", 2D) = "white" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (1,1,0,0)
		_WetUV("WetUV", Vector) = (1,1,0,0)
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0.6,0.65,0.65,0)
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_WeatheringUV("WeatheringUV", Vector) = (1,1,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_Float0("Float0", Range( 0 , 3)) = 1
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = 1
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
		[Header (Metallic Roughness (Optional))]_Roughness("Roughness", Range( 0 , 1)) = 0.8
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		[Header (Color 4 Settings (Optional))]_Glossiness4("Glossiness4", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 0.8
		_AlphaMaster("AlphaMaster", Range( 0 , 1)) = 1
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		[Header (Weathering)]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange1("WeatheringRange1", Range( 0 , 1)) = 0
		_RoughnessReflections("RoughnessReflections", Range( 0 , 1)) = 0.1648498
		_WeatheringRange2("WeatheringRange2", Range( 0 , 1)) = 0
		_WeatheringRange3("WeatheringRange3", Range( 0 , 1)) = 0
		_WeatheringRange4("WeatheringRange4", Range( 0 , 1)) = 0
		_WeatheringRange5("WeatheringRange5", Range( 0 , 1)) = 0
		_GlossinessReflection("GlossinessReflection", Range( 0 , 1)) = 1
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.95
		_WeatheringEmission("WeatheringEmission", Range( 0 , 1)) = 0.2
		_WeatheringUVSeed("WeatheringUVSeed", Range( 0 , 1)) = 0
		[Header (Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetGlossBase("WetGlossBase", Range( 0 , 2)) = 0.8
		_BodyColor1("BodyColor", Color) = (0.71,0.56,0.51,0)
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetSplatsAlbedoOffset("WetSplatsAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 0
		_WetOpacityStreaks("WetOpacityStreaks", Range( 0 , 2)) = 0
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0.5
		_WetColor("WetColor", Color) = (0,0,0,0)
		_WetAlpha("WetAlpha", Range( 0 , 10)) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		[Toggle(_DITHERSWITCH_ON)] _DitherSwitch("DitherSwitch", Float) = 0
		[Toggle(_DITHERBLUENOISE_ON)] _DitherBluenoise("DitherBluenoise", Float) = 0
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
		[Header (Specularity)][Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
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
		#pragma multi_compile __ _DITHERBLUENOISE_ON
		#pragma multi_compile __ _DITHERSWITCH_ON
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
		
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
		SamplerState sampler_WetnessMap;
		uniform float _WeatheringAll;
		uniform float4 _WeatheringUV;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform float4 _EmissionColor;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange4;
		uniform float _WeatheringRange5;
		uniform float2 _UVScalePattern;
		uniform float _EmissionStrength;
		uniform float _WetOpacitySplats;
		uniform float2 _patternuvbase;
		uniform float _DetailUVRotator;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
		SamplerState sampler_DetailGlossMap2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
		SamplerState sampler_ColorMask;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		SamplerState sampler_OcclusionMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		SamplerState sampler_MetallicGlossMap;
		uniform float _WeatheringGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		SamplerState sampler_DetailMask;
		uniform float _DetailMetallicScale;
		uniform float _DetailMetallicScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
		SamplerState sampler_Noise;
		uniform float4 _Color4;
		uniform float _WeatheringUVSeed;
		uniform float _DetailGlossScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
		SamplerState sampler_DetailMainTex;
		uniform float4 _WetColor;
		uniform float _WetBumpOffset;
		uniform float _ExGloss;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
		SamplerState sampler_DetailGlossMap;
		uniform float _GlossinessReflection;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
		SamplerState sampler_WeatheringMask;
		uniform float _WetAlpha;
		uniform float _Float0;
		uniform float _WetSplatsAlbedoOffset;
		uniform float4 _BodyColor1;
		uniform float _Metallic4;
		uniform float _WetAlbedoOffset;
		uniform float _AlphaEx;
		uniform float _CarvatureStrength;
		uniform float _WetGlossSplats;
		uniform float4 _WetStreaksUV;
		uniform float _WeatheringRange2;
		uniform float _WeatheringRange3;
		uniform float4 _WetUV;
		uniform float _DetailGlossScale;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
		SamplerState sampler_WeatheringMap;
		uniform float2 _DetailUV;
		uniform float2 _DetailUV2;
		uniform float _DetailUV2Rotator;
		uniform float _WetOpacityStreaks;
		uniform float _WetGlossBase;
		uniform float _DetailNormalMapScale;
		uniform float _AlphaMaster;
		uniform float4 _WeatheringAlbedo;
		uniform float4 _BaseColor;
		uniform float _RoughnessReflections;
		uniform float _DetailNormalMapScale2;
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
		uniform float _TransmissionStrength;
		uniform float _CullMode;
		SamplerState sampler_linear_repeat;
		SamplerState sampler_trilinear_repeat;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Roughness;
		uniform float _Roughness4;
		uniform float _Glossiness4;
		uniform float _OcculusionStrength;
		uniform float _DetailOcculusionScale;
		uniform float _DetailOcculusionScale2;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
		SamplerState sampler_SpecularMap;
		uniform float _WeatheringEmission;
		float4 _Noise_TexelSize;
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

				float2 uv_MainTex576_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g419 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g419 );
				float2 uv_ColorMask304_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g419 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g419 );
				float ColorMask4347_g419 = tex2DNode304_g419.b;
				float3 lerpResult815_g419 = lerp( (tex2DNode576_g419).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g419 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g419 );
				float Carvature270_g419 = tex2DNode196_g419.r;
				float3 lerpResult331_g419 = lerp( ( lerpResult815_g419 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g419 * _CarvatureStrength ));
				float WetAlbedoOffset311_g419 = _WetAlbedoOffset;
				float3 temp_output_382_0_g419 = ( lerpResult331_g419 * WetAlbedoOffset311_g419 );
				float WetSplatsAlbedoOffset349_g419 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g419 = lerp( ( temp_output_382_0_g419 * WetSplatsAlbedoOffset349_g419 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g419 = _ExGloss;
				float2 appendResult657_g419 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g419 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g419 = i.ase_texcoord1.xy * appendResult657_g419 + appendResult658_g419;
				float2 WetStrUV669_g419 = texCoord660_g419;
				float WetStr661_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g419 ).g;
				float smoothstepResult651_g419 = smoothstep( ( 1.0 - ExGloss298_g419 ) , 1.0 , WetStr661_g419);
				float StreaksAlpha662_g419 = smoothstepResult651_g419;
				float WetOpStreaks673_g419 = _WetOpacityStreaks;
				float2 appendResult287_g419 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g419 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g419 = i.ase_texcoord1.xy * appendResult287_g419 + appendResult285_g419;
				float2 WetUV578_g419 = texCoord317_g419;
				float WetSplats369_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g419 ).b;
				float SplatsOp363_g419 = _WetOpacitySplats;
				float3 lerpResult460_g419 = lerp( temp_output_382_0_g419 , lerpResult411_g419 , ( ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ) + ( WetSplats369_g419 * SplatsOp363_g419 ) ));
				float2 uv_OcclusionMap429_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g419 );
				float3 WetBodyOffset422_g419 = (_BodyColor1).rgb;
				float bodycoloralpha417_g419 = _BodyColor1.a;
				float3 lerpResult480_g419 = lerp( lerpResult460_g419 , ( tex2DNode429_g419.a == 1.0 ? lerpResult460_g419 : WetBodyOffset422_g419 ) , ( bodycoloralpha417_g419 * ( 1.0 - tex2DNode429_g419.a ) ));
				float3 lerpResult501_g419 = lerp( lerpResult331_g419 , lerpResult480_g419 , ExGloss298_g419);
				float2 appendResult115_g419 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g419 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g419 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g419 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g419 ) * 43758.55 ) ));
				float2 texCoord127_g419 = i.ase_texcoord1.xy * appendResult115_g419 + ( appendResult110_g419 + lerpResult737_g419 );
				float2 WeatheringUV144_g419 = texCoord127_g419;
				float4 tex2DNode177_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float2 uv_WeatheringMask100_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g419 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g419 );
				float clampResult161_g419 = clamp( ( tex2DNode100_g419.r - tex2DNode100_g419.g ) , 0.0 , 1.0 );
				float WMask1183_g419 = ( clampResult161_g419 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g419 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g419 = clamp( ( ( tex2DNode177_g419.g * WMask1183_g419 ) - RangeCut1208_g419 ) , 0.0 , 1.0 );
				float clampResult159_g419 = clamp( ( tex2DNode100_g419.g - tex2DNode100_g419.r ) , 0.0 , 1.0 );
				float WMask2192_g419 = ( clampResult159_g419 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g419 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g419 = clamp( ( ( tex2DNode177_g419.g * WMask2192_g419 ) - RangeCut2211_g419 ) , 0.0 , 1.0 );
				float WMask3190_g419 = ( tex2DNode100_g419.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g419 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g419 = clamp( ( ( tex2DNode177_g419.g * WMask3190_g419 ) - RangeCut3210_g419 ) , 0.0 , 1.0 );
				float WMask4180_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g419 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g419 = clamp( ( ( tex2DNode177_g419.g * WMask4180_g419 ) - RangeCut4205_g419 ) , 0.0 , 1.0 );
				float WMask5184_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g419 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g419 = clamp( ( ( tex2DNode177_g419.g * WMask5184_g419 ) - RangeCut5201_g419 ) , 0.0 , 1.0 );
				float WMaskAll165_g419 = ceil( _WeatheringAll );
				float RangeCutAll171_g419 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g419 = clamp( ( ( tex2DNode177_g419.g * WMaskAll165_g419 ) - RangeCutAll171_g419 ) , 0.0 , 1.0 );
				float clampResult299_g419 = clamp( ( clampResult253_g419 + clampResult251_g419 + clampResult254_g419 + clampResult259_g419 + clampResult261_g419 + clampResult215_g419 ) , 0.0 , 1.0 );
				float lerpResult313_g419 = lerp( clampResult299_g419 , clampResult215_g419 , WMaskAll165_g419);
				float WeatheringAlpha2466_g419 = lerpResult313_g419;
				float3 lerpResult505_g419 = lerp( lerpResult501_g419 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g419 * 0.282353 ));
				float3 DiffuseMix511_g419 = lerpResult505_g419;
				float3 temp_output_1858_0 = DiffuseMix511_g419;
				Gradient gradient37_g420 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g419 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g419 = _WetBumpOffset;
				float2 UVScale107_g419 = _UVScalePattern;
				float2 texCoord152_g419 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g419 ) + float2( 0,0 );
				float cos162_g419 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g419 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g419 = mul( texCoord152_g419 - float2( 0.5,0.5 ) , float2x2( cos162_g419 , -sin162_g419 , sin162_g419 , cos162_g419 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g419 = rotator162_g419;
				float2 break194_g419 = Detail1UV173_g419;
				float saferPower168_g419 = max( 0.25 , 0.0001 );
				float temp_output_186_0_g419 = ( pow( saferPower168_g419 , 1.0 ) * 0.01 );
				float2 appendResult218_g419 = (float2(( break194_g419.x + temp_output_186_0_g419 ) , break194_g419.y));
				float4 tex2DNode243_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 );
				float2 uv_DetailMask25_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g419 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g419 );
				float DetailMask130_g419 = tex2DNode25_g419.r;
				float temp_output_255_0_g419 = ( DetailMask130_g419 * _DetailNormalMapScale );
				float3 appendResult300_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float2 appendResult222_g419 = (float2(break194_g419.x , ( break194_g419.y + temp_output_186_0_g419 )));
				float3 appendResult297_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float3 normalizeResult348_g419 = normalize( cross( appendResult300_g419 , appendResult297_g419 ) );
				float3 DetailNormal1368_g419 = normalizeResult348_g419;
				float2 texCoord16_g419 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g419 ) + float2( 0,0 );
				float cos19_g419 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g419 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g419 = mul( texCoord16_g419 - float2( 0.5,0.5 ) , float2x2( cos19_g419 , -sin19_g419 , sin19_g419 , cos19_g419 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g419 = rotator19_g419;
				float2 break24_g419 = Detail2UV20_g419;
				float saferPower22_g419 = max( 0.25 , 0.0001 );
				float temp_output_26_0_g419 = ( pow( saferPower22_g419 , 1.0 ) * 0.01 );
				float2 appendResult34_g419 = (float2(( break24_g419.x + temp_output_26_0_g419 ) , break24_g419.y));
				float4 tex2DNode38_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 );
				float DetailMask235_g419 = tex2DNode25_g419.g;
				float temp_output_43_0_g419 = ( DetailMask235_g419 * _DetailNormalMapScale2 );
				float3 appendResult58_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float2 appendResult33_g419 = (float2(break24_g419.x , ( break24_g419.y + temp_output_26_0_g419 )));
				float3 appendResult57_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float3 normalizeResult69_g419 = normalize( cross( appendResult58_g419 , appendResult57_g419 ) );
				float3 DetailNormal276_g419 = normalizeResult69_g419;
				float2 break547_g419 = WetStrUV669_g419;
				float temp_output_541_0_g419 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g419 = (float2(( break547_g419.x + temp_output_541_0_g419 ) , break547_g419.y));
				float4 tex2DNode515_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g419 );
				float3 appendResult523_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float2 appendResult534_g419 = (float2(break547_g419.x , ( break547_g419.y + temp_output_541_0_g419 )));
				float3 appendResult542_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float3 normalizeResult524_g419 = normalize( cross( appendResult523_g419 , appendResult542_g419 ) );
				float3 WetnessNormal545_g419 = normalizeResult524_g419;
				float3 lerpResult98_g419 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g419 ), ( _Float0 + ( WetBumpOffset303_g419 * ExGloss298_g419 ) ) ) , DetailNormal1368_g419 ) , DetailNormal276_g419 ) , WetnessNormal545_g419 , ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ));
				float2 break223_g419 = WeatheringUV144_g419;
				float temp_output_224_0_g419 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g419 = (float2(( break223_g419.x + temp_output_224_0_g419 ) , break223_g419.y));
				float4 tex2DNode266_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float3 appendResult344_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float2 appendResult252_g419 = (float2(break223_g419.x , ( break223_g419.y + temp_output_224_0_g419 )));
				float3 appendResult339_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float3 normalizeResult398_g419 = normalize( cross( appendResult344_g419 , appendResult339_g419 ) );
				float3 WeatheringBump425_g419 = normalizeResult398_g419;
				float clampResult373_g419 = clamp( ( lerpResult313_g419 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g419 = clampResult373_g419;
				float3 lerpResult87_g419 = lerp( lerpResult98_g419 , WeatheringBump425_g419 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 ).b * WeatheringAlpha396_g419 ));
				float3 normalizeResult564_g419 = normalize( lerpResult87_g419 );
				float3 temp_output_1858_557 = normalizeResult564_g419;
				float dotResult7_g420 = dot( ase_tanViewDir , temp_output_1858_557 );
				float3 temp_output_12_0_g420 = (SampleGradient( gradient37_g420, dotResult7_g420 )).rgb;
				float temp_output_10_0_g420 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g420 = cos( temp_output_10_0_g420 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g420 = dot( _k7 , temp_output_12_0_g420 );
				float3 temp_output_32_0_g420 = ( ( ( ( ( ( temp_output_12_0_g420 * temp_output_13_0_g420 ) + ( cross( _k7 , temp_output_12_0_g420 ) * sin( temp_output_10_0_g420 ) ) + ( _k7 * dotResult14_g420 * ( 1.0 - temp_output_13_0_g420 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g420 = dot( temp_output_32_0_g420 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g420).xxx;
				float3 lerpResult35_g420 = lerp( temp_cast_2 , temp_output_32_0_g420 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g420;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1858_0;
				float2 uv_MetallicGlossMap532_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g419 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g419 );
				float MetallicGlossMask800_g419 = tex2DNode532_g419.r;
				float lerpResult399_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask);
				float2 uv_DetailMainTex528_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g419 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g419 );
				float MainMetallic797_g419 = tex2DNode528_g419.r;
				float lerpResult395_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask4);
				float lerpResult462_g419 = lerp( ( lerpResult399_g419 * MainMetallic797_g419 ) , ( lerpResult395_g419 * _Metallic4 ) , ColorMask4347_g419);
				float Detail1310_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 ).r;
				float Detail2352_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 ).r;
				float lerpResult495_g419 = lerp( saturate( ( ( lerpResult462_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailMetallicScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailMetallicScale2 * DetailMask235_g419 ) ) ) ) , 0.0 , WeatheringAlpha2466_g419);
				float temp_output_1858_559 = saturate( lerpResult495_g419 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1858_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1858_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1858_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1858_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g421 = worldSpaceLightDir;
				float3 viewDir15_g421 = ase_worldViewDir;
				float3 normalizeResult136_g421 = ASESafeNormalize( ( lightDir14_g421 + viewDir15_g421 ) );
				float dotResult137_g421 = dot( lightDir14_g421 , normalizeResult136_g421 );
				float LdotH139_g421 = saturate( dotResult137_g421 );
				float mgAlpha806_g419 = tex2DNode532_g419.a;
				float lerpResult353_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness);
				float MainGlossiness795_g419 = tex2DNode528_g419.b;
				float lerpResult336_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness4);
				float lerpResult384_g419 = lerp( ( lerpResult353_g419 * MainGlossiness795_g419 ) , ( lerpResult336_g419 * _Glossiness4 ) , ColorMask4347_g419);
				float WetGlossBase397_g419 = _WetGlossBase;
				float lerpResult470_g419 = lerp( saturate( ( ( lerpResult384_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailGlossScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailGlossScale2 * DetailMask235_g419 ) ) ) ) , mgAlpha806_g419 , ( WetGlossBase397_g419 * ExGloss298_g419 ));
				float SplatsGloss407_g419 = _WetGlossSplats;
				float lerpResult664_g419 = lerp( lerpResult470_g419 , SplatsGloss407_g419 , ( SplatsOp363_g419 * ExGloss298_g419 * WetSplats369_g419 ));
				float lerpResult649_g419 = lerp( lerpResult664_g419 , 0.87 , ( WetOpStreaks673_g419 * smoothstepResult651_g419 ));
				float lerpResult499_g419 = lerp( lerpResult649_g419 , _WeatheringGloss , WeatheringAlpha396_g419);
				float GlossinessFinal513_g419 = saturate( lerpResult499_g419 );
				float OutSmoothness1687 = GlossinessFinal513_g419;
				float smoothness169_g421 = OutSmoothness1687;
				float perceprualRoughness188_g421 = ( 1.0 - smoothness169_g421 );
				half fd90273_g421 = ( 0.5 + ( 2.0 * LdotH139_g421 * LdotH139_g421 * perceprualRoughness188_g421 ) );
				float3 OutNormal1684 = temp_output_1858_557;
				float3 tanNormal29_g421 = OutNormal1684;
				float3 worldNormal29_g421 = float3(dot(tanToWorld0,tanNormal29_g421), dot(tanToWorld1,tanNormal29_g421), dot(tanToWorld2,tanNormal29_g421));
				float3 normalizeResult25_g421 = normalize( worldNormal29_g421 );
				float3 switchResult316_g421 = (((ase_vface>0)?(normalizeResult25_g421):(-normalizeResult25_g421)));
				float3 normalDir28_g421 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g421 : normalizeResult25_g421 );
				float dotResult21_g421 = dot( lightDir14_g421 , normalDir28_g421 );
				float NdotL20_g421 = saturate( dotResult21_g421 );
				half lightScatter253_g421 = ( ( ( fd90273_g421 - 1.0 ) * pow( ( 1.0 - NdotL20_g421 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g421 = dot( normalDir28_g421 , viewDir15_g421 );
				float NdotV55_g421 = saturate( dotResult56_g421 );
				half viewScatter254_g421 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g421 ) , 5.0 ) * ( fd90273_g421 - 1.0 ) ) );
				half disneydiffuse251_g421 = ( lightScatter253_g421 * viewScatter254_g421 );
				half Diffuseterm281_g421 = ( disneydiffuse251_g421 * NdotL20_g421 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g421 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g421;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g421 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g421
				data203_g421.lightmapUV = i.ase_lmap;
				#endif //dylm203_g421
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g421
				data203_g421.ambient = i.ase_sh;
				#endif //fsh203_g421
				UnityGI gi203_g421 = UnityGI_Base(data203_g421, 1, normalDir28_g421);
				float2 uv_OcclusionMap623_g419 = i.ase_texcoord1.xy;
				float lerpResult483_g419 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g419 ).g , _OcculusionStrength);
				float smoothstepResult621_g419 = smoothstep( 0.0 , 0.8 , Detail1310_g419);
				float lerpResult488_g419 = lerp( 1.0 , smoothstepResult621_g419 , ( _DetailOcculusionScale * DetailMask130_g419 ));
				float smoothstepResult622_g419 = smoothstep( 0.0 , 0.8 , Detail2352_g419);
				float lerpResult494_g419 = lerp( 1.0 , smoothstepResult622_g419 , ( _DetailOcculusionScale2 * DetailMask235_g419 ));
				float lerpResult620_g419 = lerp( ( lerpResult483_g419 * lerpResult488_g419 * lerpResult494_g419 ) , 1.0 , WeatheringAlpha396_g419);
				float OcclusionMix509_g419 = saturate( lerpResult620_g419 );
				float OutAO1688 = OcclusionMix509_g419;
				float occlusion306_g421 = OutAO1688;
				half Roughness64_g421 = max( ( perceprualRoughness188_g421 * perceprualRoughness188_g421 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g421 = ( 0.5 / ( ( ( ( NdotV55_g421 * ( 1.0 - Roughness64_g421 ) ) + Roughness64_g421 ) * NdotL20_g421 ) + 1E-05 + ( NdotV55_g421 * ( Roughness64_g421 + ( ( 1.0 - Roughness64_g421 ) * NdotL20_g421 ) ) ) ) );
				float a266_g421 = ( Roughness64_g421 * Roughness64_g421 );
				float3 normalizeResult87_g421 = ASESafeNormalize( ( lightDir14_g421 + viewDir15_g421 ) );
				float dotResult88_g421 = dot( normalDir28_g421 , normalizeResult87_g421 );
				float NdotH90_g421 = saturate( dotResult88_g421 );
				float d99_g421 = ( ( ( ( NdotH90_g421 * a266_g421 ) - NdotH90_g421 ) * NdotH90_g421 ) + 1.0 );
				half GGXTerm43_g421 = ( ( ( 1.0 / UNITY_PI ) * a266_g421 ) / ( ( d99_g421 * d99_g421 ) + 1E-07 ) );
				float temp_output_36_0_g421 = ( SmithJointGGXVisibilityTerm42_g421 * GGXTerm43_g421 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g421 = sqrt( max( 0.0001 , temp_output_36_0_g421 ) );
				#else
				float staticSwitch5_g421 = temp_output_36_0_g421;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g421 = 0.0;
				#else
				float staticSwitch119_g421 = max( 0.0 , ( staticSwitch5_g421 * NdotL20_g421 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1858_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g421 = ( OutSpecular1712 * occlusion306_g421 );
				float SpecularTerm34_g421 = ( staticSwitch119_g421 * ( SpecColor140_g421.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g421 = ( ( pow( ( 1.0 - LdotH139_g421 ) , 5.0 ) * ( 1.0 - SpecColor140_g421 ) ) + SpecColor140_g421 );
				half metallic176_g421 = 0.0;
				half localOneMinusReflectivity176_g421 = OneMinusReflectivity( metallic176_g421 );
				half GrazingTerm163_g421 = saturate( ( smoothness169_g421 + ( 1.0 - localOneMinusReflectivity176_g421 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g421).xxx;
				float3 lerpResult159_g421 = lerp( SpecColor140_g421 , temp_cast_4 , pow( ( 1.0 - NdotV55_g421 ) , 5.0 ));
				half3 FresnelLerp165_g421 = lerpResult159_g421;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g421 = ( 1.0 - ( 0.28 * Roughness64_g421 * perceprualRoughness188_g421 ) );
				#else
				float staticSwitch183_g421 = ( 1.0 / ( ( Roughness64_g421 * Roughness64_g421 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g421 = staticSwitch183_g421;
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
				Unity_GlossyEnvironmentData g299_g421 = UnityGlossyEnvironmentSetup( smoothness169_g421, ase_worldViewDir, normalDir28_g421, float3(0,0,0));
				float3 indirectSpecular299_g421 = UnityGI_IndirectSpecular( data, occlusion306_g421, normalDir28_g421, g299_g421 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g421 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g421 = ( FresnelLerp165_g421 * SurfaceReduction182_g421 * indirectSpecular299_g421 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g421 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g421 = staticSwitch313_g421;
				#endif
				float EmissionMask799_g419 = tex2DNode532_g419.g;
				float WeatheringBumpMask718_g419 = tex2DNode177_g419.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g419 * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g419 * WeatheringBumpMask718_g419 ) * _WeatheringEmission ) );
				float3 tanNormal14_g424 = OutNormal1684;
				float3 worldNormal14_g424 = float3(dot(tanToWorld0,tanNormal14_g424), dot(tanToWorld1,tanNormal14_g424), dot(tanToWorld2,tanNormal14_g424));
				float3 normalizeResult29_g424 = normalize( worldNormal14_g424 );
				float3 switchResult32_g424 = (((ase_vface>0)?(normalizeResult29_g424):(-normalizeResult29_g424)));
				float dotResult9_g424 = dot( ( _NormalBackDirInvert == 1.0 ? switchResult32_g424 : normalizeResult29_g424 ) , worldSpaceLightDir );
				float3 Diffuse1840 = staticSwitch1718;
				#ifdef _TRANSMISSION_ON
				float3 staticSwitch36_g424 = ( ( max( 0.0 , -dotResult9_g424 ) * ( ase_lightColor.rgb * ase_atten ) * _TransmissionStrength ) * Diffuse1840 );
				#else
				float3 staticSwitch36_g424 = float3( 0,0,0 );
				#endif
				float3 tanNormal27_g422 = OutNormal1684;
				float3 worldNormal27_g422 = float3(dot(tanToWorld0,tanNormal27_g422), dot(tanToWorld1,tanNormal27_g422), dot(tanToWorld2,tanNormal27_g422));
				float3 normalizeResult61_g422 = normalize( worldNormal27_g422 );
				float3 switchResult64_g422 = (((ase_vface>0)?(normalizeResult61_g422):(-normalizeResult61_g422)));
				float dotResult20_g422 = dot( ase_worldViewDir , -( ( ( _NormalBackDirInvert == 1.0 ? switchResult64_g422 : normalizeResult61_g422 ) * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g419 = tex2DNode532_g419.b;
				float th1788 = Thickness507_g419;
				float temp_output_59_0_g422 = ( _Translucency * th1788 );
				float3 lerpResult39_g422 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 temp_output_6_0_g422 = Diffuse1840;
				UnityGIInput data15_g422;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g422 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g422
				data15_g422.lightmapUV = i.ase_lmap;
				#endif //dylm15_g422
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g422
				data15_g422.ambient = i.ase_sh;
				#endif //fsh15_g422
				UnityGI gi15_g422 = UnityGI_Base(data15_g422, 1, ( _NormalBackDirInvert == 1.0 ? switchResult64_g422 : normalizeResult61_g422 ));
				float temp_output_74_0_g422 = OutAO1688;
				
				float clampResult780_g419 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g419 = tex2DNode196_g419.b;
				float temp_output_778_0_g419 = step( pow( ( 1.0 - clampResult780_g419 ) , 0.2 ) , pow( TearingsMask340_g419 , 0.5 ) );
				float AlphaInput195_g419 = tex2DNode576_g419.a;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen786_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither786_g419 = Dither4x4Bayer( fmod(clipScreen786_g419.x, 4), fmod(clipScreen786_g419.y, 4) );
				dither786_g419 = step( dither786_g419, AlphaInput195_g419 );
				float dither769_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither769_g419 = step( dither769_g419, AlphaInput195_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch752_g419 = dither769_g419;
				#else
				float staticSwitch752_g419 = dither786_g419;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch751_g419 = staticSwitch752_g419;
				#else
				float staticSwitch751_g419 = AlphaInput195_g419;
				#endif
				float2 clipScreen761_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither761_g419 = Dither4x4Bayer( fmod(clipScreen761_g419.x, 4), fmod(clipScreen761_g419.y, 4) );
				float OccAlpha219_g419 = tex2DNode196_g419.a;
				float temp_output_757_0_g419 = ( ( ( AlphaInput195_g419 * _AlphaMaster ) * saturate( pow( OccAlpha219_g419 , ( _WetAlpha * ExGloss298_g419 ) ) ) ) + WeatheringAlpha2466_g419 );
				dither761_g419 = step( dither761_g419, temp_output_757_0_g419 );
				float dither784_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither784_g419 = step( dither784_g419, temp_output_757_0_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch779_g419 = dither784_g419;
				#else
				float staticSwitch779_g419 = dither761_g419;
				#endif
				float OutOp1691 = ( ( temp_output_778_0_g419 * staticSwitch751_g419 ) * staticSwitch779_g419 );
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g421 * lightAtten296_g421 ) + ( gi203_g421.indirect.diffuse * occlusion306_g421 ) ) ) + ( SpecularTerm34_g421 * lightAtten296_g421 * FresnelTerm130_g421 ) + staticSwitch305_g421 ) + OutEmission1685 + staticSwitch36_g424 + ( ( ( pow( saturate( dotResult20_g422 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g422 * lerpResult39_g422 * temp_output_6_0_g422 ) + saturate( ( ( gi15_g422.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g422 * temp_output_6_0_g422 * temp_output_74_0_g422 ) ) ) );
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
			#pragma multi_compile __ _DITHERBLUENOISE_ON
			#pragma multi_compile __ _DITHERSWITCH_ON
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
			
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			uniform float _WeatheringAll;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _EmissionColor;
			uniform float _WeatheringRange1;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange5;
			uniform float2 _UVScalePattern;
			uniform float _EmissionStrength;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			uniform float _DetailUVRotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			uniform float _WeatheringGloss;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float4 _Color4;
			uniform float _WeatheringUVSeed;
			uniform float _DetailGlossScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float4 _WetColor;
			uniform float _WetBumpOffset;
			uniform float _ExGloss;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _WetAlpha;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float _AlphaEx;
			uniform float _CarvatureStrength;
			uniform float _WetGlossSplats;
			uniform float4 _WetStreaksUV;
			uniform float _WeatheringRange2;
			uniform float _WeatheringRange3;
			uniform float4 _WetUV;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float2 _DetailUV;
			uniform float2 _DetailUV2;
			uniform float _DetailUV2Rotator;
			uniform float _WetOpacityStreaks;
			uniform float _WetGlossBase;
			uniform float _DetailNormalMapScale;
			uniform float _AlphaMaster;
			uniform float4 _WeatheringAlbedo;
			uniform float4 _BaseColor;
			uniform float _RoughnessReflections;
			uniform float _DetailNormalMapScale2;
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
			uniform float _TransmissionStrength;
			uniform float _CullMode;
			SamplerState sampler_linear_repeat;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _Roughness;
			uniform float _Roughness4;
			uniform float _Glossiness4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _WeatheringEmission;
			float4 _Noise_TexelSize;
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

				float2 uv_MainTex576_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g419 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g419 );
				float2 uv_ColorMask304_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g419 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g419 );
				float ColorMask4347_g419 = tex2DNode304_g419.b;
				float3 lerpResult815_g419 = lerp( (tex2DNode576_g419).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g419 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g419 );
				float Carvature270_g419 = tex2DNode196_g419.r;
				float3 lerpResult331_g419 = lerp( ( lerpResult815_g419 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g419 * _CarvatureStrength ));
				float WetAlbedoOffset311_g419 = _WetAlbedoOffset;
				float3 temp_output_382_0_g419 = ( lerpResult331_g419 * WetAlbedoOffset311_g419 );
				float WetSplatsAlbedoOffset349_g419 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g419 = lerp( ( temp_output_382_0_g419 * WetSplatsAlbedoOffset349_g419 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g419 = _ExGloss;
				float2 appendResult657_g419 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g419 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g419 = i.ase_texcoord1.xy * appendResult657_g419 + appendResult658_g419;
				float2 WetStrUV669_g419 = texCoord660_g419;
				float WetStr661_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g419 ).g;
				float smoothstepResult651_g419 = smoothstep( ( 1.0 - ExGloss298_g419 ) , 1.0 , WetStr661_g419);
				float StreaksAlpha662_g419 = smoothstepResult651_g419;
				float WetOpStreaks673_g419 = _WetOpacityStreaks;
				float2 appendResult287_g419 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g419 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g419 = i.ase_texcoord1.xy * appendResult287_g419 + appendResult285_g419;
				float2 WetUV578_g419 = texCoord317_g419;
				float WetSplats369_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g419 ).b;
				float SplatsOp363_g419 = _WetOpacitySplats;
				float3 lerpResult460_g419 = lerp( temp_output_382_0_g419 , lerpResult411_g419 , ( ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ) + ( WetSplats369_g419 * SplatsOp363_g419 ) ));
				float2 uv_OcclusionMap429_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g419 );
				float3 WetBodyOffset422_g419 = (_BodyColor1).rgb;
				float bodycoloralpha417_g419 = _BodyColor1.a;
				float3 lerpResult480_g419 = lerp( lerpResult460_g419 , ( tex2DNode429_g419.a == 1.0 ? lerpResult460_g419 : WetBodyOffset422_g419 ) , ( bodycoloralpha417_g419 * ( 1.0 - tex2DNode429_g419.a ) ));
				float3 lerpResult501_g419 = lerp( lerpResult331_g419 , lerpResult480_g419 , ExGloss298_g419);
				float2 appendResult115_g419 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g419 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g419 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g419 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g419 ) * 43758.55 ) ));
				float2 texCoord127_g419 = i.ase_texcoord1.xy * appendResult115_g419 + ( appendResult110_g419 + lerpResult737_g419 );
				float2 WeatheringUV144_g419 = texCoord127_g419;
				float4 tex2DNode177_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float2 uv_WeatheringMask100_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g419 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g419 );
				float clampResult161_g419 = clamp( ( tex2DNode100_g419.r - tex2DNode100_g419.g ) , 0.0 , 1.0 );
				float WMask1183_g419 = ( clampResult161_g419 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g419 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g419 = clamp( ( ( tex2DNode177_g419.g * WMask1183_g419 ) - RangeCut1208_g419 ) , 0.0 , 1.0 );
				float clampResult159_g419 = clamp( ( tex2DNode100_g419.g - tex2DNode100_g419.r ) , 0.0 , 1.0 );
				float WMask2192_g419 = ( clampResult159_g419 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g419 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g419 = clamp( ( ( tex2DNode177_g419.g * WMask2192_g419 ) - RangeCut2211_g419 ) , 0.0 , 1.0 );
				float WMask3190_g419 = ( tex2DNode100_g419.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g419 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g419 = clamp( ( ( tex2DNode177_g419.g * WMask3190_g419 ) - RangeCut3210_g419 ) , 0.0 , 1.0 );
				float WMask4180_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g419 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g419 = clamp( ( ( tex2DNode177_g419.g * WMask4180_g419 ) - RangeCut4205_g419 ) , 0.0 , 1.0 );
				float WMask5184_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g419 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g419 = clamp( ( ( tex2DNode177_g419.g * WMask5184_g419 ) - RangeCut5201_g419 ) , 0.0 , 1.0 );
				float WMaskAll165_g419 = ceil( _WeatheringAll );
				float RangeCutAll171_g419 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g419 = clamp( ( ( tex2DNode177_g419.g * WMaskAll165_g419 ) - RangeCutAll171_g419 ) , 0.0 , 1.0 );
				float clampResult299_g419 = clamp( ( clampResult253_g419 + clampResult251_g419 + clampResult254_g419 + clampResult259_g419 + clampResult261_g419 + clampResult215_g419 ) , 0.0 , 1.0 );
				float lerpResult313_g419 = lerp( clampResult299_g419 , clampResult215_g419 , WMaskAll165_g419);
				float WeatheringAlpha2466_g419 = lerpResult313_g419;
				float3 lerpResult505_g419 = lerp( lerpResult501_g419 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g419 * 0.282353 ));
				float3 DiffuseMix511_g419 = lerpResult505_g419;
				float3 temp_output_1858_0 = DiffuseMix511_g419;
				Gradient gradient37_g420 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g419 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g419 = _WetBumpOffset;
				float2 UVScale107_g419 = _UVScalePattern;
				float2 texCoord152_g419 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g419 ) + float2( 0,0 );
				float cos162_g419 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g419 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g419 = mul( texCoord152_g419 - float2( 0.5,0.5 ) , float2x2( cos162_g419 , -sin162_g419 , sin162_g419 , cos162_g419 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g419 = rotator162_g419;
				float2 break194_g419 = Detail1UV173_g419;
				float saferPower168_g419 = max( 0.25 , 0.0001 );
				float temp_output_186_0_g419 = ( pow( saferPower168_g419 , 1.0 ) * 0.01 );
				float2 appendResult218_g419 = (float2(( break194_g419.x + temp_output_186_0_g419 ) , break194_g419.y));
				float4 tex2DNode243_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 );
				float2 uv_DetailMask25_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g419 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g419 );
				float DetailMask130_g419 = tex2DNode25_g419.r;
				float temp_output_255_0_g419 = ( DetailMask130_g419 * _DetailNormalMapScale );
				float3 appendResult300_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float2 appendResult222_g419 = (float2(break194_g419.x , ( break194_g419.y + temp_output_186_0_g419 )));
				float3 appendResult297_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float3 normalizeResult348_g419 = normalize( cross( appendResult300_g419 , appendResult297_g419 ) );
				float3 DetailNormal1368_g419 = normalizeResult348_g419;
				float2 texCoord16_g419 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g419 ) + float2( 0,0 );
				float cos19_g419 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g419 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g419 = mul( texCoord16_g419 - float2( 0.5,0.5 ) , float2x2( cos19_g419 , -sin19_g419 , sin19_g419 , cos19_g419 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g419 = rotator19_g419;
				float2 break24_g419 = Detail2UV20_g419;
				float saferPower22_g419 = max( 0.25 , 0.0001 );
				float temp_output_26_0_g419 = ( pow( saferPower22_g419 , 1.0 ) * 0.01 );
				float2 appendResult34_g419 = (float2(( break24_g419.x + temp_output_26_0_g419 ) , break24_g419.y));
				float4 tex2DNode38_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 );
				float DetailMask235_g419 = tex2DNode25_g419.g;
				float temp_output_43_0_g419 = ( DetailMask235_g419 * _DetailNormalMapScale2 );
				float3 appendResult58_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float2 appendResult33_g419 = (float2(break24_g419.x , ( break24_g419.y + temp_output_26_0_g419 )));
				float3 appendResult57_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float3 normalizeResult69_g419 = normalize( cross( appendResult58_g419 , appendResult57_g419 ) );
				float3 DetailNormal276_g419 = normalizeResult69_g419;
				float2 break547_g419 = WetStrUV669_g419;
				float temp_output_541_0_g419 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g419 = (float2(( break547_g419.x + temp_output_541_0_g419 ) , break547_g419.y));
				float4 tex2DNode515_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g419 );
				float3 appendResult523_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float2 appendResult534_g419 = (float2(break547_g419.x , ( break547_g419.y + temp_output_541_0_g419 )));
				float3 appendResult542_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float3 normalizeResult524_g419 = normalize( cross( appendResult523_g419 , appendResult542_g419 ) );
				float3 WetnessNormal545_g419 = normalizeResult524_g419;
				float3 lerpResult98_g419 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g419 ), ( _Float0 + ( WetBumpOffset303_g419 * ExGloss298_g419 ) ) ) , DetailNormal1368_g419 ) , DetailNormal276_g419 ) , WetnessNormal545_g419 , ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ));
				float2 break223_g419 = WeatheringUV144_g419;
				float temp_output_224_0_g419 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g419 = (float2(( break223_g419.x + temp_output_224_0_g419 ) , break223_g419.y));
				float4 tex2DNode266_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float3 appendResult344_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float2 appendResult252_g419 = (float2(break223_g419.x , ( break223_g419.y + temp_output_224_0_g419 )));
				float3 appendResult339_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float3 normalizeResult398_g419 = normalize( cross( appendResult344_g419 , appendResult339_g419 ) );
				float3 WeatheringBump425_g419 = normalizeResult398_g419;
				float clampResult373_g419 = clamp( ( lerpResult313_g419 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g419 = clampResult373_g419;
				float3 lerpResult87_g419 = lerp( lerpResult98_g419 , WeatheringBump425_g419 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 ).b * WeatheringAlpha396_g419 ));
				float3 normalizeResult564_g419 = normalize( lerpResult87_g419 );
				float3 temp_output_1858_557 = normalizeResult564_g419;
				float dotResult7_g420 = dot( ase_tanViewDir , temp_output_1858_557 );
				float3 temp_output_12_0_g420 = (SampleGradient( gradient37_g420, dotResult7_g420 )).rgb;
				float temp_output_10_0_g420 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g420 = cos( temp_output_10_0_g420 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g420 = dot( _k7 , temp_output_12_0_g420 );
				float3 temp_output_32_0_g420 = ( ( ( ( ( ( temp_output_12_0_g420 * temp_output_13_0_g420 ) + ( cross( _k7 , temp_output_12_0_g420 ) * sin( temp_output_10_0_g420 ) ) + ( _k7 * dotResult14_g420 * ( 1.0 - temp_output_13_0_g420 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g420 = dot( temp_output_32_0_g420 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g420).xxx;
				float3 lerpResult35_g420 = lerp( temp_cast_2 , temp_output_32_0_g420 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g420;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1858_0;
				float2 uv_MetallicGlossMap532_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g419 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g419 );
				float MetallicGlossMask800_g419 = tex2DNode532_g419.r;
				float lerpResult399_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask);
				float2 uv_DetailMainTex528_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g419 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g419 );
				float MainMetallic797_g419 = tex2DNode528_g419.r;
				float lerpResult395_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask4);
				float lerpResult462_g419 = lerp( ( lerpResult399_g419 * MainMetallic797_g419 ) , ( lerpResult395_g419 * _Metallic4 ) , ColorMask4347_g419);
				float Detail1310_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 ).r;
				float Detail2352_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 ).r;
				float lerpResult495_g419 = lerp( saturate( ( ( lerpResult462_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailMetallicScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailMetallicScale2 * DetailMask235_g419 ) ) ) ) , 0.0 , WeatheringAlpha2466_g419);
				float temp_output_1858_559 = saturate( lerpResult495_g419 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1858_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1858_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1858_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1858_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g421 = worldSpaceLightDir;
				float3 viewDir15_g421 = ase_worldViewDir;
				float3 normalizeResult136_g421 = ASESafeNormalize( ( lightDir14_g421 + viewDir15_g421 ) );
				float dotResult137_g421 = dot( lightDir14_g421 , normalizeResult136_g421 );
				float LdotH139_g421 = saturate( dotResult137_g421 );
				float mgAlpha806_g419 = tex2DNode532_g419.a;
				float lerpResult353_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness);
				float MainGlossiness795_g419 = tex2DNode528_g419.b;
				float lerpResult336_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness4);
				float lerpResult384_g419 = lerp( ( lerpResult353_g419 * MainGlossiness795_g419 ) , ( lerpResult336_g419 * _Glossiness4 ) , ColorMask4347_g419);
				float WetGlossBase397_g419 = _WetGlossBase;
				float lerpResult470_g419 = lerp( saturate( ( ( lerpResult384_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailGlossScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailGlossScale2 * DetailMask235_g419 ) ) ) ) , mgAlpha806_g419 , ( WetGlossBase397_g419 * ExGloss298_g419 ));
				float SplatsGloss407_g419 = _WetGlossSplats;
				float lerpResult664_g419 = lerp( lerpResult470_g419 , SplatsGloss407_g419 , ( SplatsOp363_g419 * ExGloss298_g419 * WetSplats369_g419 ));
				float lerpResult649_g419 = lerp( lerpResult664_g419 , 0.87 , ( WetOpStreaks673_g419 * smoothstepResult651_g419 ));
				float lerpResult499_g419 = lerp( lerpResult649_g419 , _WeatheringGloss , WeatheringAlpha396_g419);
				float GlossinessFinal513_g419 = saturate( lerpResult499_g419 );
				float OutSmoothness1687 = GlossinessFinal513_g419;
				float smoothness169_g421 = OutSmoothness1687;
				float perceprualRoughness188_g421 = ( 1.0 - smoothness169_g421 );
				half fd90273_g421 = ( 0.5 + ( 2.0 * LdotH139_g421 * LdotH139_g421 * perceprualRoughness188_g421 ) );
				float3 OutNormal1684 = temp_output_1858_557;
				float3 tanNormal29_g421 = OutNormal1684;
				float3 worldNormal29_g421 = float3(dot(tanToWorld0,tanNormal29_g421), dot(tanToWorld1,tanNormal29_g421), dot(tanToWorld2,tanNormal29_g421));
				float3 normalizeResult25_g421 = normalize( worldNormal29_g421 );
				float3 switchResult316_g421 = (((ase_vface>0)?(normalizeResult25_g421):(-normalizeResult25_g421)));
				float3 normalDir28_g421 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g421 : normalizeResult25_g421 );
				float dotResult21_g421 = dot( lightDir14_g421 , normalDir28_g421 );
				float NdotL20_g421 = saturate( dotResult21_g421 );
				half lightScatter253_g421 = ( ( ( fd90273_g421 - 1.0 ) * pow( ( 1.0 - NdotL20_g421 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g421 = dot( normalDir28_g421 , viewDir15_g421 );
				float NdotV55_g421 = saturate( dotResult56_g421 );
				half viewScatter254_g421 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g421 ) , 5.0 ) * ( fd90273_g421 - 1.0 ) ) );
				half disneydiffuse251_g421 = ( lightScatter253_g421 * viewScatter254_g421 );
				half Diffuseterm281_g421 = ( disneydiffuse251_g421 * NdotL20_g421 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g421 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g421;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g421 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g421
				data203_g421.lightmapUV = i.ase_lmap;
				#endif //dylm203_g421
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g421
				data203_g421.ambient = i.ase_sh;
				#endif //fsh203_g421
				UnityGI gi203_g421 = UnityGI_Base(data203_g421, 1, normalDir28_g421);
				float2 uv_OcclusionMap623_g419 = i.ase_texcoord1.xy;
				float lerpResult483_g419 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g419 ).g , _OcculusionStrength);
				float smoothstepResult621_g419 = smoothstep( 0.0 , 0.8 , Detail1310_g419);
				float lerpResult488_g419 = lerp( 1.0 , smoothstepResult621_g419 , ( _DetailOcculusionScale * DetailMask130_g419 ));
				float smoothstepResult622_g419 = smoothstep( 0.0 , 0.8 , Detail2352_g419);
				float lerpResult494_g419 = lerp( 1.0 , smoothstepResult622_g419 , ( _DetailOcculusionScale2 * DetailMask235_g419 ));
				float lerpResult620_g419 = lerp( ( lerpResult483_g419 * lerpResult488_g419 * lerpResult494_g419 ) , 1.0 , WeatheringAlpha396_g419);
				float OcclusionMix509_g419 = saturate( lerpResult620_g419 );
				float OutAO1688 = OcclusionMix509_g419;
				float occlusion306_g421 = OutAO1688;
				half Roughness64_g421 = max( ( perceprualRoughness188_g421 * perceprualRoughness188_g421 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g421 = ( 0.5 / ( ( ( ( NdotV55_g421 * ( 1.0 - Roughness64_g421 ) ) + Roughness64_g421 ) * NdotL20_g421 ) + 1E-05 + ( NdotV55_g421 * ( Roughness64_g421 + ( ( 1.0 - Roughness64_g421 ) * NdotL20_g421 ) ) ) ) );
				float a266_g421 = ( Roughness64_g421 * Roughness64_g421 );
				float3 normalizeResult87_g421 = ASESafeNormalize( ( lightDir14_g421 + viewDir15_g421 ) );
				float dotResult88_g421 = dot( normalDir28_g421 , normalizeResult87_g421 );
				float NdotH90_g421 = saturate( dotResult88_g421 );
				float d99_g421 = ( ( ( ( NdotH90_g421 * a266_g421 ) - NdotH90_g421 ) * NdotH90_g421 ) + 1.0 );
				half GGXTerm43_g421 = ( ( ( 1.0 / UNITY_PI ) * a266_g421 ) / ( ( d99_g421 * d99_g421 ) + 1E-07 ) );
				float temp_output_36_0_g421 = ( SmithJointGGXVisibilityTerm42_g421 * GGXTerm43_g421 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g421 = sqrt( max( 0.0001 , temp_output_36_0_g421 ) );
				#else
				float staticSwitch5_g421 = temp_output_36_0_g421;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g421 = 0.0;
				#else
				float staticSwitch119_g421 = max( 0.0 , ( staticSwitch5_g421 * NdotL20_g421 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1858_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g421 = ( OutSpecular1712 * occlusion306_g421 );
				float SpecularTerm34_g421 = ( staticSwitch119_g421 * ( SpecColor140_g421.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g421 = ( ( pow( ( 1.0 - LdotH139_g421 ) , 5.0 ) * ( 1.0 - SpecColor140_g421 ) ) + SpecColor140_g421 );
				half metallic176_g421 = 0.0;
				half localOneMinusReflectivity176_g421 = OneMinusReflectivity( metallic176_g421 );
				half GrazingTerm163_g421 = saturate( ( smoothness169_g421 + ( 1.0 - localOneMinusReflectivity176_g421 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g421).xxx;
				float3 lerpResult159_g421 = lerp( SpecColor140_g421 , temp_cast_4 , pow( ( 1.0 - NdotV55_g421 ) , 5.0 ));
				half3 FresnelLerp165_g421 = lerpResult159_g421;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g421 = ( 1.0 - ( 0.28 * Roughness64_g421 * perceprualRoughness188_g421 ) );
				#else
				float staticSwitch183_g421 = ( 1.0 / ( ( Roughness64_g421 * Roughness64_g421 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g421 = staticSwitch183_g421;
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
				Unity_GlossyEnvironmentData g299_g421 = UnityGlossyEnvironmentSetup( smoothness169_g421, ase_worldViewDir, normalDir28_g421, float3(0,0,0));
				float3 indirectSpecular299_g421 = UnityGI_IndirectSpecular( data, occlusion306_g421, normalDir28_g421, g299_g421 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g421 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g421 = ( FresnelLerp165_g421 * SurfaceReduction182_g421 * indirectSpecular299_g421 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g421 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g421 = staticSwitch313_g421;
				#endif
				float EmissionMask799_g419 = tex2DNode532_g419.g;
				float WeatheringBumpMask718_g419 = tex2DNode177_g419.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g419 * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g419 * WeatheringBumpMask718_g419 ) * _WeatheringEmission ) );
				float3 tanNormal14_g424 = OutNormal1684;
				float3 worldNormal14_g424 = float3(dot(tanToWorld0,tanNormal14_g424), dot(tanToWorld1,tanNormal14_g424), dot(tanToWorld2,tanNormal14_g424));
				float3 normalizeResult29_g424 = normalize( worldNormal14_g424 );
				float3 switchResult32_g424 = (((ase_vface>0)?(normalizeResult29_g424):(-normalizeResult29_g424)));
				float dotResult9_g424 = dot( ( _NormalBackDirInvert == 1.0 ? switchResult32_g424 : normalizeResult29_g424 ) , worldSpaceLightDir );
				float3 Diffuse1840 = staticSwitch1718;
				#ifdef _TRANSMISSION_ON
				float3 staticSwitch36_g424 = ( ( max( 0.0 , -dotResult9_g424 ) * ( ase_lightColor.rgb * ase_atten ) * _TransmissionStrength ) * Diffuse1840 );
				#else
				float3 staticSwitch36_g424 = float3( 0,0,0 );
				#endif
				float3 tanNormal27_g422 = OutNormal1684;
				float3 worldNormal27_g422 = float3(dot(tanToWorld0,tanNormal27_g422), dot(tanToWorld1,tanNormal27_g422), dot(tanToWorld2,tanNormal27_g422));
				float3 normalizeResult61_g422 = normalize( worldNormal27_g422 );
				float3 switchResult64_g422 = (((ase_vface>0)?(normalizeResult61_g422):(-normalizeResult61_g422)));
				float dotResult20_g422 = dot( ase_worldViewDir , -( ( ( _NormalBackDirInvert == 1.0 ? switchResult64_g422 : normalizeResult61_g422 ) * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g419 = tex2DNode532_g419.b;
				float th1788 = Thickness507_g419;
				float temp_output_59_0_g422 = ( _Translucency * th1788 );
				float3 lerpResult39_g422 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 temp_output_6_0_g422 = Diffuse1840;
				UnityGIInput data15_g422;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g422 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g422
				data15_g422.lightmapUV = i.ase_lmap;
				#endif //dylm15_g422
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g422
				data15_g422.ambient = i.ase_sh;
				#endif //fsh15_g422
				UnityGI gi15_g422 = UnityGI_Base(data15_g422, 1, ( _NormalBackDirInvert == 1.0 ? switchResult64_g422 : normalizeResult61_g422 ));
				float temp_output_74_0_g422 = OutAO1688;
				
				float clampResult780_g419 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g419 = tex2DNode196_g419.b;
				float temp_output_778_0_g419 = step( pow( ( 1.0 - clampResult780_g419 ) , 0.2 ) , pow( TearingsMask340_g419 , 0.5 ) );
				float AlphaInput195_g419 = tex2DNode576_g419.a;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen786_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither786_g419 = Dither4x4Bayer( fmod(clipScreen786_g419.x, 4), fmod(clipScreen786_g419.y, 4) );
				dither786_g419 = step( dither786_g419, AlphaInput195_g419 );
				float dither769_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither769_g419 = step( dither769_g419, AlphaInput195_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch752_g419 = dither769_g419;
				#else
				float staticSwitch752_g419 = dither786_g419;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch751_g419 = staticSwitch752_g419;
				#else
				float staticSwitch751_g419 = AlphaInput195_g419;
				#endif
				float2 clipScreen761_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither761_g419 = Dither4x4Bayer( fmod(clipScreen761_g419.x, 4), fmod(clipScreen761_g419.y, 4) );
				float OccAlpha219_g419 = tex2DNode196_g419.a;
				float temp_output_757_0_g419 = ( ( ( AlphaInput195_g419 * _AlphaMaster ) * saturate( pow( OccAlpha219_g419 , ( _WetAlpha * ExGloss298_g419 ) ) ) ) + WeatheringAlpha2466_g419 );
				dither761_g419 = step( dither761_g419, temp_output_757_0_g419 );
				float dither784_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither784_g419 = step( dither784_g419, temp_output_757_0_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch779_g419 = dither784_g419;
				#else
				float staticSwitch779_g419 = dither761_g419;
				#endif
				float OutOp1691 = ( ( temp_output_778_0_g419 * staticSwitch751_g419 ) * staticSwitch779_g419 );
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g421 * lightAtten296_g421 ) + ( gi203_g421.indirect.diffuse * occlusion306_g421 ) ) ) + ( SpecularTerm34_g421 * lightAtten296_g421 * FresnelTerm130_g421 ) + staticSwitch305_g421 ) + OutEmission1685 + staticSwitch36_g424 + ( ( ( pow( saturate( dotResult20_g422 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g422 * lerpResult39_g422 * temp_output_6_0_g422 ) + saturate( ( ( gi15_g422.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g422 * temp_output_6_0_g422 * temp_output_74_0_g422 ) ) ) );
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
			#pragma multi_compile __ _DITHERBLUENOISE_ON
			#pragma multi_compile __ _DITHERSWITCH_ON
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
			

			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			uniform float _WeatheringAll;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _EmissionColor;
			uniform float _WeatheringRange1;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange5;
			uniform float2 _UVScalePattern;
			uniform float _EmissionStrength;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			uniform float _DetailUVRotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			uniform float _WeatheringGloss;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float4 _Color4;
			uniform float _WeatheringUVSeed;
			uniform float _DetailGlossScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float4 _WetColor;
			uniform float _WetBumpOffset;
			uniform float _ExGloss;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _WetAlpha;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float _AlphaEx;
			uniform float _CarvatureStrength;
			uniform float _WetGlossSplats;
			uniform float4 _WetStreaksUV;
			uniform float _WeatheringRange2;
			uniform float _WeatheringRange3;
			uniform float4 _WetUV;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float2 _DetailUV;
			uniform float2 _DetailUV2;
			uniform float _DetailUV2Rotator;
			uniform float _WetOpacityStreaks;
			uniform float _WetGlossBase;
			uniform float _DetailNormalMapScale;
			uniform float _AlphaMaster;
			uniform float4 _WeatheringAlbedo;
			uniform float4 _BaseColor;
			uniform float _RoughnessReflections;
			uniform float _DetailNormalMapScale2;
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
			uniform float _TransmissionStrength;
			uniform float _CullMode;
			SamplerState sampler_linear_repeat;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			float4 _Noise_TexelSize;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _Roughness;
			uniform float _Roughness4;
			uniform float _Glossiness4;
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
			
			float3 GI2_g428( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float3 GI2_g426( float3 normal )
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
				float2 uv_MainTex576_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g419 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g419 );
				float2 uv_ColorMask304_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g419 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g419 );
				float ColorMask4347_g419 = tex2DNode304_g419.b;
				float3 lerpResult815_g419 = lerp( (tex2DNode576_g419).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g419 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g419 );
				float Carvature270_g419 = tex2DNode196_g419.r;
				float3 lerpResult331_g419 = lerp( ( lerpResult815_g419 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g419 * _CarvatureStrength ));
				float WetAlbedoOffset311_g419 = _WetAlbedoOffset;
				float3 temp_output_382_0_g419 = ( lerpResult331_g419 * WetAlbedoOffset311_g419 );
				float WetSplatsAlbedoOffset349_g419 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g419 = lerp( ( temp_output_382_0_g419 * WetSplatsAlbedoOffset349_g419 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g419 = _ExGloss;
				float2 appendResult657_g419 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g419 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g419 = i.ase_texcoord1.xy * appendResult657_g419 + appendResult658_g419;
				float2 WetStrUV669_g419 = texCoord660_g419;
				float WetStr661_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g419 ).g;
				float smoothstepResult651_g419 = smoothstep( ( 1.0 - ExGloss298_g419 ) , 1.0 , WetStr661_g419);
				float StreaksAlpha662_g419 = smoothstepResult651_g419;
				float WetOpStreaks673_g419 = _WetOpacityStreaks;
				float2 appendResult287_g419 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g419 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g419 = i.ase_texcoord1.xy * appendResult287_g419 + appendResult285_g419;
				float2 WetUV578_g419 = texCoord317_g419;
				float WetSplats369_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g419 ).b;
				float SplatsOp363_g419 = _WetOpacitySplats;
				float3 lerpResult460_g419 = lerp( temp_output_382_0_g419 , lerpResult411_g419 , ( ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ) + ( WetSplats369_g419 * SplatsOp363_g419 ) ));
				float2 uv_OcclusionMap429_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g419 );
				float3 WetBodyOffset422_g419 = (_BodyColor1).rgb;
				float bodycoloralpha417_g419 = _BodyColor1.a;
				float3 lerpResult480_g419 = lerp( lerpResult460_g419 , ( tex2DNode429_g419.a == 1.0 ? lerpResult460_g419 : WetBodyOffset422_g419 ) , ( bodycoloralpha417_g419 * ( 1.0 - tex2DNode429_g419.a ) ));
				float3 lerpResult501_g419 = lerp( lerpResult331_g419 , lerpResult480_g419 , ExGloss298_g419);
				float2 appendResult115_g419 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g419 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g419 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g419 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g419 ) * 43758.55 ) ));
				float2 texCoord127_g419 = i.ase_texcoord1.xy * appendResult115_g419 + ( appendResult110_g419 + lerpResult737_g419 );
				float2 WeatheringUV144_g419 = texCoord127_g419;
				float4 tex2DNode177_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float2 uv_WeatheringMask100_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g419 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g419 );
				float clampResult161_g419 = clamp( ( tex2DNode100_g419.r - tex2DNode100_g419.g ) , 0.0 , 1.0 );
				float WMask1183_g419 = ( clampResult161_g419 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g419 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g419 = clamp( ( ( tex2DNode177_g419.g * WMask1183_g419 ) - RangeCut1208_g419 ) , 0.0 , 1.0 );
				float clampResult159_g419 = clamp( ( tex2DNode100_g419.g - tex2DNode100_g419.r ) , 0.0 , 1.0 );
				float WMask2192_g419 = ( clampResult159_g419 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g419 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g419 = clamp( ( ( tex2DNode177_g419.g * WMask2192_g419 ) - RangeCut2211_g419 ) , 0.0 , 1.0 );
				float WMask3190_g419 = ( tex2DNode100_g419.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g419 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g419 = clamp( ( ( tex2DNode177_g419.g * WMask3190_g419 ) - RangeCut3210_g419 ) , 0.0 , 1.0 );
				float WMask4180_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g419 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g419 = clamp( ( ( tex2DNode177_g419.g * WMask4180_g419 ) - RangeCut4205_g419 ) , 0.0 , 1.0 );
				float WMask5184_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g419 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g419 = clamp( ( ( tex2DNode177_g419.g * WMask5184_g419 ) - RangeCut5201_g419 ) , 0.0 , 1.0 );
				float WMaskAll165_g419 = ceil( _WeatheringAll );
				float RangeCutAll171_g419 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g419 = clamp( ( ( tex2DNode177_g419.g * WMaskAll165_g419 ) - RangeCutAll171_g419 ) , 0.0 , 1.0 );
				float clampResult299_g419 = clamp( ( clampResult253_g419 + clampResult251_g419 + clampResult254_g419 + clampResult259_g419 + clampResult261_g419 + clampResult215_g419 ) , 0.0 , 1.0 );
				float lerpResult313_g419 = lerp( clampResult299_g419 , clampResult215_g419 , WMaskAll165_g419);
				float WeatheringAlpha2466_g419 = lerpResult313_g419;
				float3 lerpResult505_g419 = lerp( lerpResult501_g419 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g419 * 0.282353 ));
				float3 DiffuseMix511_g419 = lerpResult505_g419;
				float3 temp_output_1858_0 = DiffuseMix511_g419;
				Gradient gradient37_g420 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g419 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g419 = _WetBumpOffset;
				float2 UVScale107_g419 = _UVScalePattern;
				float2 texCoord152_g419 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g419 ) + float2( 0,0 );
				float cos162_g419 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g419 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g419 = mul( texCoord152_g419 - float2( 0.5,0.5 ) , float2x2( cos162_g419 , -sin162_g419 , sin162_g419 , cos162_g419 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g419 = rotator162_g419;
				float2 break194_g419 = Detail1UV173_g419;
				float saferPower168_g419 = max( 0.25 , 0.0001 );
				float temp_output_186_0_g419 = ( pow( saferPower168_g419 , 1.0 ) * 0.01 );
				float2 appendResult218_g419 = (float2(( break194_g419.x + temp_output_186_0_g419 ) , break194_g419.y));
				float4 tex2DNode243_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 );
				float2 uv_DetailMask25_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g419 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g419 );
				float DetailMask130_g419 = tex2DNode25_g419.r;
				float temp_output_255_0_g419 = ( DetailMask130_g419 * _DetailNormalMapScale );
				float3 appendResult300_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float2 appendResult222_g419 = (float2(break194_g419.x , ( break194_g419.y + temp_output_186_0_g419 )));
				float3 appendResult297_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float3 normalizeResult348_g419 = normalize( cross( appendResult300_g419 , appendResult297_g419 ) );
				float3 DetailNormal1368_g419 = normalizeResult348_g419;
				float2 texCoord16_g419 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g419 ) + float2( 0,0 );
				float cos19_g419 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g419 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g419 = mul( texCoord16_g419 - float2( 0.5,0.5 ) , float2x2( cos19_g419 , -sin19_g419 , sin19_g419 , cos19_g419 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g419 = rotator19_g419;
				float2 break24_g419 = Detail2UV20_g419;
				float saferPower22_g419 = max( 0.25 , 0.0001 );
				float temp_output_26_0_g419 = ( pow( saferPower22_g419 , 1.0 ) * 0.01 );
				float2 appendResult34_g419 = (float2(( break24_g419.x + temp_output_26_0_g419 ) , break24_g419.y));
				float4 tex2DNode38_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 );
				float DetailMask235_g419 = tex2DNode25_g419.g;
				float temp_output_43_0_g419 = ( DetailMask235_g419 * _DetailNormalMapScale2 );
				float3 appendResult58_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float2 appendResult33_g419 = (float2(break24_g419.x , ( break24_g419.y + temp_output_26_0_g419 )));
				float3 appendResult57_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float3 normalizeResult69_g419 = normalize( cross( appendResult58_g419 , appendResult57_g419 ) );
				float3 DetailNormal276_g419 = normalizeResult69_g419;
				float2 break547_g419 = WetStrUV669_g419;
				float temp_output_541_0_g419 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g419 = (float2(( break547_g419.x + temp_output_541_0_g419 ) , break547_g419.y));
				float4 tex2DNode515_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g419 );
				float3 appendResult523_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float2 appendResult534_g419 = (float2(break547_g419.x , ( break547_g419.y + temp_output_541_0_g419 )));
				float3 appendResult542_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float3 normalizeResult524_g419 = normalize( cross( appendResult523_g419 , appendResult542_g419 ) );
				float3 WetnessNormal545_g419 = normalizeResult524_g419;
				float3 lerpResult98_g419 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g419 ), ( _Float0 + ( WetBumpOffset303_g419 * ExGloss298_g419 ) ) ) , DetailNormal1368_g419 ) , DetailNormal276_g419 ) , WetnessNormal545_g419 , ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ));
				float2 break223_g419 = WeatheringUV144_g419;
				float temp_output_224_0_g419 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g419 = (float2(( break223_g419.x + temp_output_224_0_g419 ) , break223_g419.y));
				float4 tex2DNode266_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float3 appendResult344_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float2 appendResult252_g419 = (float2(break223_g419.x , ( break223_g419.y + temp_output_224_0_g419 )));
				float3 appendResult339_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float3 normalizeResult398_g419 = normalize( cross( appendResult344_g419 , appendResult339_g419 ) );
				float3 WeatheringBump425_g419 = normalizeResult398_g419;
				float clampResult373_g419 = clamp( ( lerpResult313_g419 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g419 = clampResult373_g419;
				float3 lerpResult87_g419 = lerp( lerpResult98_g419 , WeatheringBump425_g419 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 ).b * WeatheringAlpha396_g419 ));
				float3 normalizeResult564_g419 = normalize( lerpResult87_g419 );
				float3 temp_output_1858_557 = normalizeResult564_g419;
				float dotResult7_g420 = dot( ase_tanViewDir , temp_output_1858_557 );
				float3 temp_output_12_0_g420 = (SampleGradient( gradient37_g420, dotResult7_g420 )).rgb;
				float temp_output_10_0_g420 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g420 = cos( temp_output_10_0_g420 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g420 = dot( _k7 , temp_output_12_0_g420 );
				float3 temp_output_32_0_g420 = ( ( ( ( ( ( temp_output_12_0_g420 * temp_output_13_0_g420 ) + ( cross( _k7 , temp_output_12_0_g420 ) * sin( temp_output_10_0_g420 ) ) + ( _k7 * dotResult14_g420 * ( 1.0 - temp_output_13_0_g420 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g420 = dot( temp_output_32_0_g420 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g420).xxx;
				float3 lerpResult35_g420 = lerp( temp_cast_2 , temp_output_32_0_g420 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g420;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1858_0;
				float2 uv_MetallicGlossMap532_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g419 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g419 );
				float MetallicGlossMask800_g419 = tex2DNode532_g419.r;
				float lerpResult399_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask);
				float2 uv_DetailMainTex528_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g419 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g419 );
				float MainMetallic797_g419 = tex2DNode528_g419.r;
				float lerpResult395_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask4);
				float lerpResult462_g419 = lerp( ( lerpResult399_g419 * MainMetallic797_g419 ) , ( lerpResult395_g419 * _Metallic4 ) , ColorMask4347_g419);
				float Detail1310_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 ).r;
				float Detail2352_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 ).r;
				float lerpResult495_g419 = lerp( saturate( ( ( lerpResult462_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailMetallicScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailMetallicScale2 * DetailMask235_g419 ) ) ) ) , 0.0 , WeatheringAlpha2466_g419);
				float temp_output_1858_559 = saturate( lerpResult495_g419 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1858_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1858_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1858_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1858_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 temp_output_3_0_g425 = OutAlbedo1683;
				float clampResult780_g419 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g419 = tex2DNode196_g419.b;
				float temp_output_778_0_g419 = step( pow( ( 1.0 - clampResult780_g419 ) , 0.2 ) , pow( TearingsMask340_g419 , 0.5 ) );
				float AlphaInput195_g419 = tex2DNode576_g419.a;
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen786_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither786_g419 = Dither4x4Bayer( fmod(clipScreen786_g419.x, 4), fmod(clipScreen786_g419.y, 4) );
				dither786_g419 = step( dither786_g419, AlphaInput195_g419 );
				float dither769_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither769_g419 = step( dither769_g419, AlphaInput195_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch752_g419 = dither769_g419;
				#else
				float staticSwitch752_g419 = dither786_g419;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch751_g419 = staticSwitch752_g419;
				#else
				float staticSwitch751_g419 = AlphaInput195_g419;
				#endif
				float2 clipScreen761_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither761_g419 = Dither4x4Bayer( fmod(clipScreen761_g419.x, 4), fmod(clipScreen761_g419.y, 4) );
				float OccAlpha219_g419 = tex2DNode196_g419.a;
				float temp_output_757_0_g419 = ( ( ( AlphaInput195_g419 * _AlphaMaster ) * saturate( pow( OccAlpha219_g419 , ( _WetAlpha * ExGloss298_g419 ) ) ) ) + WeatheringAlpha2466_g419 );
				dither761_g419 = step( dither761_g419, temp_output_757_0_g419 );
				float dither784_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither784_g419 = step( dither784_g419, temp_output_757_0_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch779_g419 = dither784_g419;
				#else
				float staticSwitch779_g419 = dither761_g419;
				#endif
				float OutOp1691 = ( ( temp_output_778_0_g419 * staticSwitch751_g419 ) * staticSwitch779_g419 );
				clip( OutOp1691 - _Cutoff);
				float2 uv_OcclusionMap623_g419 = i.ase_texcoord1.xy;
				float lerpResult483_g419 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g419 ).g , _OcculusionStrength);
				float smoothstepResult621_g419 = smoothstep( 0.0 , 0.8 , Detail1310_g419);
				float lerpResult488_g419 = lerp( 1.0 , smoothstepResult621_g419 , ( _DetailOcculusionScale * DetailMask130_g419 ));
				float smoothstepResult622_g419 = smoothstep( 0.0 , 0.8 , Detail2352_g419);
				float lerpResult494_g419 = lerp( 1.0 , smoothstepResult622_g419 , ( _DetailOcculusionScale2 * DetailMask235_g419 ));
				float lerpResult620_g419 = lerp( ( lerpResult483_g419 * lerpResult488_g419 * lerpResult494_g419 ) , 1.0 , WeatheringAlpha396_g419);
				float OcclusionMix509_g419 = saturate( lerpResult620_g419 );
				float OutAO1688 = OcclusionMix509_g419;
				float4 appendResult2_g425 = (float4(temp_output_3_0_g425 , OutAO1688));
				
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1858_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float mgAlpha806_g419 = tex2DNode532_g419.a;
				float lerpResult353_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness);
				float MainGlossiness795_g419 = tex2DNode528_g419.b;
				float lerpResult336_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness4);
				float lerpResult384_g419 = lerp( ( lerpResult353_g419 * MainGlossiness795_g419 ) , ( lerpResult336_g419 * _Glossiness4 ) , ColorMask4347_g419);
				float WetGlossBase397_g419 = _WetGlossBase;
				float lerpResult470_g419 = lerp( saturate( ( ( lerpResult384_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailGlossScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailGlossScale2 * DetailMask235_g419 ) ) ) ) , mgAlpha806_g419 , ( WetGlossBase397_g419 * ExGloss298_g419 ));
				float SplatsGloss407_g419 = _WetGlossSplats;
				float lerpResult664_g419 = lerp( lerpResult470_g419 , SplatsGloss407_g419 , ( SplatsOp363_g419 * ExGloss298_g419 * WetSplats369_g419 ));
				float lerpResult649_g419 = lerp( lerpResult664_g419 , 0.87 , ( WetOpStreaks673_g419 * smoothstepResult651_g419 ));
				float lerpResult499_g419 = lerp( lerpResult649_g419 , _WeatheringGloss , WeatheringAlpha396_g419);
				float GlossinessFinal513_g419 = saturate( lerpResult499_g419 );
				float OutSmoothness1687 = GlossinessFinal513_g419;
				float4 appendResult5_g425 = (float4(OutSpecular1712 , OutSmoothness1687));
				
				float3 OutNormal1684 = temp_output_1858_557;
				float3 tanNormal11_g425 = OutNormal1684;
				float3 worldNormal11_g425 = float3(dot(tanToWorld0,tanNormal11_g425), dot(tanToWorld1,tanNormal11_g425), dot(tanToWorld2,tanNormal11_g425));
				float3 normalizeResult21_g425 = normalize( worldNormal11_g425 );
				float3 switchResult24_g425 = (((ase_vface>0)?(normalizeResult21_g425):(-normalizeResult21_g425)));
				float3 temp_output_22_0_g425 = ( _NormalBackDirInvert == 1.0 ? switchResult24_g425 : normalizeResult21_g425 );
				float4 appendResult13_g425 = (float4(( ( temp_output_22_0_g425 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 tanNormal27_g427 = OutNormal1684;
				float3 worldNormal27_g427 = float3(dot(tanToWorld0,tanNormal27_g427), dot(tanToWorld1,tanNormal27_g427), dot(tanToWorld2,tanNormal27_g427));
				float3 normalizeResult61_g427 = normalize( worldNormal27_g427 );
				float3 switchResult64_g427 = (((ase_vface>0)?(normalizeResult61_g427):(-normalizeResult61_g427)));
				float3 normal2_g428 = ( _NormalBackDirInvert == 1.0 ? switchResult64_g427 : normalizeResult61_g427 );
				float3 localGI2_g428 = GI2_g428( normal2_g428 );
				float Thickness507_g419 = tex2DNode532_g419.b;
				float th1788 = Thickness507_g419;
				float temp_output_59_0_g427 = ( _Translucency * th1788 );
				float3 Diffuse1840 = staticSwitch1718;
				float3 temp_output_6_0_g427 = Diffuse1840;
				float temp_output_74_0_g427 = OutAO1688;
				float EmissionMask799_g419 = tex2DNode532_g419.g;
				float WeatheringBumpMask718_g419 = tex2DNode177_g419.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g419 * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g419 * WeatheringBumpMask718_g419 ) * _WeatheringEmission ) );
				float3 normal2_g426 = temp_output_22_0_g425;
				float3 localGI2_g426 = GI2_g426( normal2_g426 );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g425 = ( ( saturate( ( ( localGI2_g428 * _TransAmbient ) * temp_output_59_0_g427 * temp_output_6_0_g427 * temp_output_74_0_g427 ) ) + OutEmission1685 ) + ( temp_output_3_0_g425 * localGI2_g426 ) );
				#else
				float3 staticSwitch16_g425 = exp2( -( ( saturate( ( ( localGI2_g428 * _TransAmbient ) * temp_output_59_0_g427 * temp_output_6_0_g427 * temp_output_74_0_g427 ) ) + OutEmission1685 ) + ( temp_output_3_0_g425 * localGI2_g426 ) ) );
				#endif
				float4 appendResult19_g425 = (float4(staticSwitch16_g425 , 1.0));
				
				
				outGBuffer0 = appendResult2_g425;
				outGBuffer1 = appendResult5_g425;
				outGBuffer2 = appendResult13_g425;
				outGBuffer3 = appendResult19_g425;
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
			#pragma multi_compile __ _DITHERBLUENOISE_ON
			#pragma multi_compile __ _DITHERSWITCH_ON
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
			
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			uniform float _WeatheringAll;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _EmissionColor;
			uniform float _WeatheringRange1;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange5;
			uniform float2 _UVScalePattern;
			uniform float _EmissionStrength;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			uniform float _DetailUVRotator;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			uniform float _WeatheringGloss;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Noise);
			SamplerState sampler_Noise;
			uniform float4 _Color4;
			uniform float _WeatheringUVSeed;
			uniform float _DetailGlossScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float4 _WetColor;
			uniform float _WetBumpOffset;
			uniform float _ExGloss;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			uniform float _WetAlpha;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float _AlphaEx;
			uniform float _CarvatureStrength;
			uniform float _WetGlossSplats;
			uniform float4 _WetStreaksUV;
			uniform float _WeatheringRange2;
			uniform float _WeatheringRange3;
			uniform float4 _WetUV;
			uniform float _DetailGlossScale;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float2 _DetailUV;
			uniform float2 _DetailUV2;
			uniform float _DetailUV2Rotator;
			uniform float _WetOpacityStreaks;
			uniform float _WetGlossBase;
			uniform float _DetailNormalMapScale;
			uniform float _AlphaMaster;
			uniform float4 _WeatheringAlbedo;
			uniform float4 _BaseColor;
			uniform float _RoughnessReflections;
			uniform float _DetailNormalMapScale2;
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
			uniform float _TransmissionStrength;
			uniform float _CullMode;
			SamplerState sampler_linear_repeat;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _Roughness;
			uniform float _Roughness4;
			uniform float _Glossiness4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _WeatheringEmission;
			float4 _Noise_TexelSize;
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

				float2 uv_MainTex576_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g419 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g419 );
				float2 uv_ColorMask304_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode304_g419 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g419 );
				float ColorMask4347_g419 = tex2DNode304_g419.b;
				float3 lerpResult815_g419 = lerp( (tex2DNode576_g419).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g419 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g419 );
				float Carvature270_g419 = tex2DNode196_g419.r;
				float3 lerpResult331_g419 = lerp( ( lerpResult815_g419 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g419 * _CarvatureStrength ));
				float WetAlbedoOffset311_g419 = _WetAlbedoOffset;
				float3 temp_output_382_0_g419 = ( lerpResult331_g419 * WetAlbedoOffset311_g419 );
				float WetSplatsAlbedoOffset349_g419 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g419 = lerp( ( temp_output_382_0_g419 * WetSplatsAlbedoOffset349_g419 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g419 = _ExGloss;
				float2 appendResult657_g419 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g419 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g419 = i.ase_texcoord1.xy * appendResult657_g419 + appendResult658_g419;
				float2 WetStrUV669_g419 = texCoord660_g419;
				float WetStr661_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g419 ).g;
				float smoothstepResult651_g419 = smoothstep( ( 1.0 - ExGloss298_g419 ) , 1.0 , WetStr661_g419);
				float StreaksAlpha662_g419 = smoothstepResult651_g419;
				float WetOpStreaks673_g419 = _WetOpacityStreaks;
				float2 appendResult287_g419 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g419 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g419 = i.ase_texcoord1.xy * appendResult287_g419 + appendResult285_g419;
				float2 WetUV578_g419 = texCoord317_g419;
				float WetSplats369_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g419 ).b;
				float SplatsOp363_g419 = _WetOpacitySplats;
				float3 lerpResult460_g419 = lerp( temp_output_382_0_g419 , lerpResult411_g419 , ( ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ) + ( WetSplats369_g419 * SplatsOp363_g419 ) ));
				float2 uv_OcclusionMap429_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g419 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g419 );
				float3 WetBodyOffset422_g419 = (_BodyColor1).rgb;
				float bodycoloralpha417_g419 = _BodyColor1.a;
				float3 lerpResult480_g419 = lerp( lerpResult460_g419 , ( tex2DNode429_g419.a == 1.0 ? lerpResult460_g419 : WetBodyOffset422_g419 ) , ( bodycoloralpha417_g419 * ( 1.0 - tex2DNode429_g419.a ) ));
				float3 lerpResult501_g419 = lerp( lerpResult331_g419 , lerpResult480_g419 , ExGloss298_g419);
				float2 appendResult115_g419 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g419 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g419 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g419 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g419 ) * 43758.55 ) ));
				float2 texCoord127_g419 = i.ase_texcoord1.xy * appendResult115_g419 + ( appendResult110_g419 + lerpResult737_g419 );
				float2 WeatheringUV144_g419 = texCoord127_g419;
				float4 tex2DNode177_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float2 uv_WeatheringMask100_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g419 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g419 );
				float clampResult161_g419 = clamp( ( tex2DNode100_g419.r - tex2DNode100_g419.g ) , 0.0 , 1.0 );
				float WMask1183_g419 = ( clampResult161_g419 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g419 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g419 = clamp( ( ( tex2DNode177_g419.g * WMask1183_g419 ) - RangeCut1208_g419 ) , 0.0 , 1.0 );
				float clampResult159_g419 = clamp( ( tex2DNode100_g419.g - tex2DNode100_g419.r ) , 0.0 , 1.0 );
				float WMask2192_g419 = ( clampResult159_g419 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g419 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g419 = clamp( ( ( tex2DNode177_g419.g * WMask2192_g419 ) - RangeCut2211_g419 ) , 0.0 , 1.0 );
				float WMask3190_g419 = ( tex2DNode100_g419.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g419 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g419 = clamp( ( ( tex2DNode177_g419.g * WMask3190_g419 ) - RangeCut3210_g419 ) , 0.0 , 1.0 );
				float WMask4180_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g419 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g419 = clamp( ( ( tex2DNode177_g419.g * WMask4180_g419 ) - RangeCut4205_g419 ) , 0.0 , 1.0 );
				float WMask5184_g419 = ( ( tex2DNode100_g419.r * tex2DNode100_g419.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g419 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g419 = clamp( ( ( tex2DNode177_g419.g * WMask5184_g419 ) - RangeCut5201_g419 ) , 0.0 , 1.0 );
				float WMaskAll165_g419 = ceil( _WeatheringAll );
				float RangeCutAll171_g419 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g419 = clamp( ( ( tex2DNode177_g419.g * WMaskAll165_g419 ) - RangeCutAll171_g419 ) , 0.0 , 1.0 );
				float clampResult299_g419 = clamp( ( clampResult253_g419 + clampResult251_g419 + clampResult254_g419 + clampResult259_g419 + clampResult261_g419 + clampResult215_g419 ) , 0.0 , 1.0 );
				float lerpResult313_g419 = lerp( clampResult299_g419 , clampResult215_g419 , WMaskAll165_g419);
				float WeatheringAlpha2466_g419 = lerpResult313_g419;
				float3 lerpResult505_g419 = lerp( lerpResult501_g419 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g419 * 0.282353 ));
				float3 DiffuseMix511_g419 = lerpResult505_g419;
				float3 temp_output_1858_0 = DiffuseMix511_g419;
				Gradient gradient37_g420 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g419 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g419 = _WetBumpOffset;
				float2 UVScale107_g419 = _UVScalePattern;
				float2 texCoord152_g419 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g419 ) + float2( 0,0 );
				float cos162_g419 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g419 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g419 = mul( texCoord152_g419 - float2( 0.5,0.5 ) , float2x2( cos162_g419 , -sin162_g419 , sin162_g419 , cos162_g419 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g419 = rotator162_g419;
				float2 break194_g419 = Detail1UV173_g419;
				float saferPower168_g419 = max( 0.25 , 0.0001 );
				float temp_output_186_0_g419 = ( pow( saferPower168_g419 , 1.0 ) * 0.01 );
				float2 appendResult218_g419 = (float2(( break194_g419.x + temp_output_186_0_g419 ) , break194_g419.y));
				float4 tex2DNode243_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 );
				float2 uv_DetailMask25_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g419 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g419 );
				float DetailMask130_g419 = tex2DNode25_g419.r;
				float temp_output_255_0_g419 = ( DetailMask130_g419 * _DetailNormalMapScale );
				float3 appendResult300_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float2 appendResult222_g419 = (float2(break194_g419.x , ( break194_g419.y + temp_output_186_0_g419 )));
				float3 appendResult297_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g419 ).g - tex2DNode243_g419.g ) * temp_output_255_0_g419 )));
				float3 normalizeResult348_g419 = normalize( cross( appendResult300_g419 , appendResult297_g419 ) );
				float3 DetailNormal1368_g419 = normalizeResult348_g419;
				float2 texCoord16_g419 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g419 ) + float2( 0,0 );
				float cos19_g419 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g419 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g419 = mul( texCoord16_g419 - float2( 0.5,0.5 ) , float2x2( cos19_g419 , -sin19_g419 , sin19_g419 , cos19_g419 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g419 = rotator19_g419;
				float2 break24_g419 = Detail2UV20_g419;
				float saferPower22_g419 = max( 0.25 , 0.0001 );
				float temp_output_26_0_g419 = ( pow( saferPower22_g419 , 1.0 ) * 0.01 );
				float2 appendResult34_g419 = (float2(( break24_g419.x + temp_output_26_0_g419 ) , break24_g419.y));
				float4 tex2DNode38_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 );
				float DetailMask235_g419 = tex2DNode25_g419.g;
				float temp_output_43_0_g419 = ( DetailMask235_g419 * _DetailNormalMapScale2 );
				float3 appendResult58_g419 = (float3(1.0 , 0.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float2 appendResult33_g419 = (float2(break24_g419.x , ( break24_g419.y + temp_output_26_0_g419 )));
				float3 appendResult57_g419 = (float3(0.0 , 1.0 , -( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g419 ).g - tex2DNode38_g419.g ) * temp_output_43_0_g419 )));
				float3 normalizeResult69_g419 = normalize( cross( appendResult58_g419 , appendResult57_g419 ) );
				float3 DetailNormal276_g419 = normalizeResult69_g419;
				float2 break547_g419 = WetStrUV669_g419;
				float temp_output_541_0_g419 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g419 = (float2(( break547_g419.x + temp_output_541_0_g419 ) , break547_g419.y));
				float4 tex2DNode515_g419 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g419 );
				float3 appendResult523_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float2 appendResult534_g419 = (float2(break547_g419.x , ( break547_g419.y + temp_output_541_0_g419 )));
				float3 appendResult542_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g419 ).g - tex2DNode515_g419.g ) * 1.0 )));
				float3 normalizeResult524_g419 = normalize( cross( appendResult523_g419 , appendResult542_g419 ) );
				float3 WetnessNormal545_g419 = normalizeResult524_g419;
				float3 lerpResult98_g419 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g419 ), ( _Float0 + ( WetBumpOffset303_g419 * ExGloss298_g419 ) ) ) , DetailNormal1368_g419 ) , DetailNormal276_g419 ) , WetnessNormal545_g419 , ( StreaksAlpha662_g419 * WetOpStreaks673_g419 ));
				float2 break223_g419 = WeatheringUV144_g419;
				float temp_output_224_0_g419 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g419 = (float2(( break223_g419.x + temp_output_224_0_g419 ) , break223_g419.y));
				float4 tex2DNode266_g419 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 );
				float3 appendResult344_g419 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float2 appendResult252_g419 = (float2(break223_g419.x , ( break223_g419.y + temp_output_224_0_g419 )));
				float3 appendResult339_g419 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g419 ).b - tex2DNode266_g419.b ) * 2.0 )));
				float3 normalizeResult398_g419 = normalize( cross( appendResult344_g419 , appendResult339_g419 ) );
				float3 WeatheringBump425_g419 = normalizeResult398_g419;
				float clampResult373_g419 = clamp( ( lerpResult313_g419 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g419 = clampResult373_g419;
				float3 lerpResult87_g419 = lerp( lerpResult98_g419 , WeatheringBump425_g419 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g419 ).b * WeatheringAlpha396_g419 ));
				float3 normalizeResult564_g419 = normalize( lerpResult87_g419 );
				float3 temp_output_1858_557 = normalizeResult564_g419;
				float dotResult7_g420 = dot( ase_tanViewDir , temp_output_1858_557 );
				float3 temp_output_12_0_g420 = (SampleGradient( gradient37_g420, dotResult7_g420 )).rgb;
				float temp_output_10_0_g420 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g420 = cos( temp_output_10_0_g420 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g420 = dot( _k7 , temp_output_12_0_g420 );
				float3 temp_output_32_0_g420 = ( ( ( ( ( ( temp_output_12_0_g420 * temp_output_13_0_g420 ) + ( cross( _k7 , temp_output_12_0_g420 ) * sin( temp_output_10_0_g420 ) ) + ( _k7 * dotResult14_g420 * ( 1.0 - temp_output_13_0_g420 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g420 = dot( temp_output_32_0_g420 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g420).xxx;
				float3 lerpResult35_g420 = lerp( temp_cast_2 , temp_output_32_0_g420 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g420;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1858_0;
				float2 uv_MetallicGlossMap532_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g419 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g419 );
				float MetallicGlossMask800_g419 = tex2DNode532_g419.r;
				float lerpResult399_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask);
				float2 uv_DetailMainTex528_g419 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g419 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g419 );
				float MainMetallic797_g419 = tex2DNode528_g419.r;
				float lerpResult395_g419 = lerp( 1.0 , MetallicGlossMask800_g419 , _MetallicMask4);
				float lerpResult462_g419 = lerp( ( lerpResult399_g419 * MainMetallic797_g419 ) , ( lerpResult395_g419 * _Metallic4 ) , ColorMask4347_g419);
				float Detail1310_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g419 ).r;
				float Detail2352_g419 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g419 ).r;
				float lerpResult495_g419 = lerp( saturate( ( ( lerpResult462_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailMetallicScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailMetallicScale2 * DetailMask235_g419 ) ) ) ) , 0.0 , WeatheringAlpha2466_g419);
				float temp_output_1858_559 = saturate( lerpResult495_g419 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1858_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1858_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1858_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1858_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g421 = worldSpaceLightDir;
				float3 viewDir15_g421 = ase_worldViewDir;
				float3 normalizeResult136_g421 = ASESafeNormalize( ( lightDir14_g421 + viewDir15_g421 ) );
				float dotResult137_g421 = dot( lightDir14_g421 , normalizeResult136_g421 );
				float LdotH139_g421 = saturate( dotResult137_g421 );
				float mgAlpha806_g419 = tex2DNode532_g419.a;
				float lerpResult353_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness);
				float MainGlossiness795_g419 = tex2DNode528_g419.b;
				float lerpResult336_g419 = lerp( 1.0 , mgAlpha806_g419 , _Roughness4);
				float lerpResult384_g419 = lerp( ( lerpResult353_g419 * MainGlossiness795_g419 ) , ( lerpResult336_g419 * _Glossiness4 ) , ColorMask4347_g419);
				float WetGlossBase397_g419 = _WetGlossBase;
				float lerpResult470_g419 = lerp( saturate( ( ( lerpResult384_g419 - ( ( 1.0 - Detail1310_g419 ) * ( _DetailGlossScale * DetailMask130_g419 ) ) ) - ( ( 1.0 - Detail2352_g419 ) * ( _DetailGlossScale2 * DetailMask235_g419 ) ) ) ) , mgAlpha806_g419 , ( WetGlossBase397_g419 * ExGloss298_g419 ));
				float SplatsGloss407_g419 = _WetGlossSplats;
				float lerpResult664_g419 = lerp( lerpResult470_g419 , SplatsGloss407_g419 , ( SplatsOp363_g419 * ExGloss298_g419 * WetSplats369_g419 ));
				float lerpResult649_g419 = lerp( lerpResult664_g419 , 0.87 , ( WetOpStreaks673_g419 * smoothstepResult651_g419 ));
				float lerpResult499_g419 = lerp( lerpResult649_g419 , _WeatheringGloss , WeatheringAlpha396_g419);
				float GlossinessFinal513_g419 = saturate( lerpResult499_g419 );
				float OutSmoothness1687 = GlossinessFinal513_g419;
				float smoothness169_g421 = OutSmoothness1687;
				float perceprualRoughness188_g421 = ( 1.0 - smoothness169_g421 );
				half fd90273_g421 = ( 0.5 + ( 2.0 * LdotH139_g421 * LdotH139_g421 * perceprualRoughness188_g421 ) );
				float3 OutNormal1684 = temp_output_1858_557;
				float3 tanNormal29_g421 = OutNormal1684;
				float3 worldNormal29_g421 = float3(dot(tanToWorld0,tanNormal29_g421), dot(tanToWorld1,tanNormal29_g421), dot(tanToWorld2,tanNormal29_g421));
				float3 normalizeResult25_g421 = normalize( worldNormal29_g421 );
				float3 switchResult316_g421 = (((ase_vface>0)?(normalizeResult25_g421):(-normalizeResult25_g421)));
				float3 normalDir28_g421 = ( _NormalBackDirInvert == 1.0 ? switchResult316_g421 : normalizeResult25_g421 );
				float dotResult21_g421 = dot( lightDir14_g421 , normalDir28_g421 );
				float NdotL20_g421 = saturate( dotResult21_g421 );
				half lightScatter253_g421 = ( ( ( fd90273_g421 - 1.0 ) * pow( ( 1.0 - NdotL20_g421 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g421 = dot( normalDir28_g421 , viewDir15_g421 );
				float NdotV55_g421 = saturate( dotResult56_g421 );
				half viewScatter254_g421 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g421 ) , 5.0 ) * ( fd90273_g421 - 1.0 ) ) );
				half disneydiffuse251_g421 = ( lightScatter253_g421 * viewScatter254_g421 );
				half Diffuseterm281_g421 = ( disneydiffuse251_g421 * NdotL20_g421 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g421 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g421;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g421 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g421
				data203_g421.lightmapUV = i.ase_lmap;
				#endif //dylm203_g421
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g421
				data203_g421.ambient = i.ase_sh;
				#endif //fsh203_g421
				UnityGI gi203_g421 = UnityGI_Base(data203_g421, 1, normalDir28_g421);
				float2 uv_OcclusionMap623_g419 = i.ase_texcoord1.xy;
				float lerpResult483_g419 = lerp( 1.0 , SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap623_g419 ).g , _OcculusionStrength);
				float smoothstepResult621_g419 = smoothstep( 0.0 , 0.8 , Detail1310_g419);
				float lerpResult488_g419 = lerp( 1.0 , smoothstepResult621_g419 , ( _DetailOcculusionScale * DetailMask130_g419 ));
				float smoothstepResult622_g419 = smoothstep( 0.0 , 0.8 , Detail2352_g419);
				float lerpResult494_g419 = lerp( 1.0 , smoothstepResult622_g419 , ( _DetailOcculusionScale2 * DetailMask235_g419 ));
				float lerpResult620_g419 = lerp( ( lerpResult483_g419 * lerpResult488_g419 * lerpResult494_g419 ) , 1.0 , WeatheringAlpha396_g419);
				float OcclusionMix509_g419 = saturate( lerpResult620_g419 );
				float OutAO1688 = OcclusionMix509_g419;
				float occlusion306_g421 = OutAO1688;
				half Roughness64_g421 = max( ( perceprualRoughness188_g421 * perceprualRoughness188_g421 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g421 = ( 0.5 / ( ( ( ( NdotV55_g421 * ( 1.0 - Roughness64_g421 ) ) + Roughness64_g421 ) * NdotL20_g421 ) + 1E-05 + ( NdotV55_g421 * ( Roughness64_g421 + ( ( 1.0 - Roughness64_g421 ) * NdotL20_g421 ) ) ) ) );
				float a266_g421 = ( Roughness64_g421 * Roughness64_g421 );
				float3 normalizeResult87_g421 = ASESafeNormalize( ( lightDir14_g421 + viewDir15_g421 ) );
				float dotResult88_g421 = dot( normalDir28_g421 , normalizeResult87_g421 );
				float NdotH90_g421 = saturate( dotResult88_g421 );
				float d99_g421 = ( ( ( ( NdotH90_g421 * a266_g421 ) - NdotH90_g421 ) * NdotH90_g421 ) + 1.0 );
				half GGXTerm43_g421 = ( ( ( 1.0 / UNITY_PI ) * a266_g421 ) / ( ( d99_g421 * d99_g421 ) + 1E-07 ) );
				float temp_output_36_0_g421 = ( SmithJointGGXVisibilityTerm42_g421 * GGXTerm43_g421 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g421 = sqrt( max( 0.0001 , temp_output_36_0_g421 ) );
				#else
				float staticSwitch5_g421 = temp_output_36_0_g421;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g421 = 0.0;
				#else
				float staticSwitch119_g421 = max( 0.0 , ( staticSwitch5_g421 * NdotL20_g421 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1858_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g421 = ( OutSpecular1712 * occlusion306_g421 );
				float SpecularTerm34_g421 = ( staticSwitch119_g421 * ( SpecColor140_g421.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g421 = ( ( pow( ( 1.0 - LdotH139_g421 ) , 5.0 ) * ( 1.0 - SpecColor140_g421 ) ) + SpecColor140_g421 );
				half metallic176_g421 = 0.0;
				half localOneMinusReflectivity176_g421 = OneMinusReflectivity( metallic176_g421 );
				half GrazingTerm163_g421 = saturate( ( smoothness169_g421 + ( 1.0 - localOneMinusReflectivity176_g421 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g421).xxx;
				float3 lerpResult159_g421 = lerp( SpecColor140_g421 , temp_cast_4 , pow( ( 1.0 - NdotV55_g421 ) , 5.0 ));
				half3 FresnelLerp165_g421 = lerpResult159_g421;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g421 = ( 1.0 - ( 0.28 * Roughness64_g421 * perceprualRoughness188_g421 ) );
				#else
				float staticSwitch183_g421 = ( 1.0 / ( ( Roughness64_g421 * Roughness64_g421 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g421 = staticSwitch183_g421;
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
				Unity_GlossyEnvironmentData g299_g421 = UnityGlossyEnvironmentSetup( smoothness169_g421, ase_worldViewDir, normalDir28_g421, float3(0,0,0));
				float3 indirectSpecular299_g421 = UnityGI_IndirectSpecular( data, occlusion306_g421, normalDir28_g421, g299_g421 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g421 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g421 = ( FresnelLerp165_g421 * SurfaceReduction182_g421 * indirectSpecular299_g421 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g421 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g421 = staticSwitch313_g421;
				#endif
				float EmissionMask799_g419 = tex2DNode532_g419.g;
				float WeatheringBumpMask718_g419 = tex2DNode177_g419.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g419 * (_EmissionColor).rgb * _EmissionStrength ) + ( ( WeatheringAlpha2466_g419 * WeatheringBumpMask718_g419 ) * _WeatheringEmission ) );
				float3 tanNormal14_g424 = OutNormal1684;
				float3 worldNormal14_g424 = float3(dot(tanToWorld0,tanNormal14_g424), dot(tanToWorld1,tanNormal14_g424), dot(tanToWorld2,tanNormal14_g424));
				float3 normalizeResult29_g424 = normalize( worldNormal14_g424 );
				float3 switchResult32_g424 = (((ase_vface>0)?(normalizeResult29_g424):(-normalizeResult29_g424)));
				float dotResult9_g424 = dot( ( _NormalBackDirInvert == 1.0 ? switchResult32_g424 : normalizeResult29_g424 ) , worldSpaceLightDir );
				float3 Diffuse1840 = staticSwitch1718;
				#ifdef _TRANSMISSION_ON
				float3 staticSwitch36_g424 = ( ( max( 0.0 , -dotResult9_g424 ) * ( ase_lightColor.rgb * ase_atten ) * _TransmissionStrength ) * Diffuse1840 );
				#else
				float3 staticSwitch36_g424 = float3( 0,0,0 );
				#endif
				float3 tanNormal27_g422 = OutNormal1684;
				float3 worldNormal27_g422 = float3(dot(tanToWorld0,tanNormal27_g422), dot(tanToWorld1,tanNormal27_g422), dot(tanToWorld2,tanNormal27_g422));
				float3 normalizeResult61_g422 = normalize( worldNormal27_g422 );
				float3 switchResult64_g422 = (((ase_vface>0)?(normalizeResult61_g422):(-normalizeResult61_g422)));
				float dotResult20_g422 = dot( ase_worldViewDir , -( ( ( _NormalBackDirInvert == 1.0 ? switchResult64_g422 : normalizeResult61_g422 ) * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g419 = tex2DNode532_g419.b;
				float th1788 = Thickness507_g419;
				float temp_output_59_0_g422 = ( _Translucency * th1788 );
				float3 lerpResult39_g422 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 temp_output_6_0_g422 = Diffuse1840;
				UnityGIInput data15_g422;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g422 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g422
				data15_g422.lightmapUV = i.ase_lmap;
				#endif //dylm15_g422
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g422
				data15_g422.ambient = i.ase_sh;
				#endif //fsh15_g422
				UnityGI gi15_g422 = UnityGI_Base(data15_g422, 1, ( _NormalBackDirInvert == 1.0 ? switchResult64_g422 : normalizeResult61_g422 ));
				float temp_output_74_0_g422 = OutAO1688;
				
				float clampResult780_g419 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g419 = tex2DNode196_g419.b;
				float temp_output_778_0_g419 = step( pow( ( 1.0 - clampResult780_g419 ) , 0.2 ) , pow( TearingsMask340_g419 , 0.5 ) );
				float AlphaInput195_g419 = tex2DNode576_g419.a;
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 clipScreen786_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither786_g419 = Dither4x4Bayer( fmod(clipScreen786_g419.x, 4), fmod(clipScreen786_g419.y, 4) );
				dither786_g419 = step( dither786_g419, AlphaInput195_g419 );
				float dither769_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither769_g419 = step( dither769_g419, AlphaInput195_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch752_g419 = dither769_g419;
				#else
				float staticSwitch752_g419 = dither786_g419;
				#endif
				#ifdef _DITHERSWITCH_ON
				float staticSwitch751_g419 = staticSwitch752_g419;
				#else
				float staticSwitch751_g419 = AlphaInput195_g419;
				#endif
				float2 clipScreen761_g419 = ase_screenPosNorm.xy * _ScreenParams.xy;
				float dither761_g419 = Dither4x4Bayer( fmod(clipScreen761_g419.x, 4), fmod(clipScreen761_g419.y, 4) );
				float OccAlpha219_g419 = tex2DNode196_g419.a;
				float temp_output_757_0_g419 = ( ( ( AlphaInput195_g419 * _AlphaMaster ) * saturate( pow( OccAlpha219_g419 , ( _WetAlpha * ExGloss298_g419 ) ) ) ) + WeatheringAlpha2466_g419 );
				dither761_g419 = step( dither761_g419, temp_output_757_0_g419 );
				float dither784_g419 = DitherNoiseTex(ase_screenPosNorm, _Noise, sampler_Noise, _Noise_TexelSize);
				dither784_g419 = step( dither784_g419, temp_output_757_0_g419 );
				#ifdef _DITHERBLUENOISE_ON
				float staticSwitch779_g419 = dither784_g419;
				#else
				float staticSwitch779_g419 = dither761_g419;
				#endif
				float OutOp1691 = ( ( temp_output_778_0_g419 * staticSwitch751_g419 ) * staticSwitch779_g419 );
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g421 * lightAtten296_g421 ) + ( gi203_g421.indirect.diffuse * occlusion306_g421 ) ) ) + ( SpecularTerm34_g421 * lightAtten296_g421 * FresnelTerm130_g421 ) + staticSwitch305_g421 ) + OutEmission1685 + staticSwitch36_g424 + ( ( ( pow( saturate( dotResult20_g422 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g422 * lerpResult39_g422 * temp_output_6_0_g422 ) + saturate( ( ( gi15_g422.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g422 * temp_output_6_0_g422 * temp_output_74_0_g422 ) ) ) );
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
6;6;1524;878;-1148.707;1802.172;2.777868;True;False
Node;AmplifyShaderEditor.FunctionNode;1858;-354.7656,-1008.385;Inherit;False;AIT Clothes Function;6;;419;d0644e5becc3a6145ad3ab18b1d3f488;0;0;12;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;812;FLOAT;561;SAMPLERSTATE;748;FLOAT;562;FLOAT;787;FLOAT;817;FLOAT;816
Node;AmplifyShaderEditor.FunctionNode;1730;-30.3289,-1187.185;Inherit;False;Iridiscence;91;;420;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1747;-46.36218,-351.5953;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1752;331.3885,-769.0536;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1734;478.722,-934.2843;Inherit;False;Property;_SpecColor;SpecColor;97;0;Fetch;True;0;0;0;True;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1753;391.0476,-745.1899;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1755;418.1014,-695.4373;Inherit;True;Property;_SpecularMap;SpecularMap;98;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1782;247.8937,-1006.199;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1720;387.1435,-973.6287;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1748;49.34377,-303.7423;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1735;685.5889,-933.6452;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1719;440.0094,-987.3347;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1722;708.7335,-1016.052;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;1717;292.0359,-1188.15;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1750;1021.515,-308.7795;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1739;947.3095,-807.3077;Inherit;False;Property;_Iridiscent1;Iridiscent;90;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1718;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1754;720.994,-693.3652;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1745;11.12222,-1294.807;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1721;758.1564,-1049.002;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1756;1192.594,-709.9873;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1749;1079.442,-328.9283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1718;527.7333,-1183.451;Inherit;False;Property;_Iridiscent;Iridiscent;90;0;Create;True;0;0;0;True;1;Header(Iridiscent);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1642;836.9714,-1177.978;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1740;1364.939,-551.4853;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1746;75.58084,-1324.295;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1731;1697.23,-1161.845;Inherit;False;Property;_SpecularSetup;SpecularSetup;96;0;Create;True;0;0;0;False;1;Header (Specularity);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1732;1212.62,-1385.844;Inherit;False;Property;_SpecularSetup1;SpecularSetup;96;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1731;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1688;35.122,-619.6064;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1781;2676.393,-1540.824;Inherit;False;1652.311;667.9056;Comment;15;1713;1714;1696;1694;1695;1703;1702;1638;1652;1650;1649;1789;1806;1841;1784;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1840;841.307,-1273.242;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1684;48.31251,-888.1824;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1683;1503.489,-1386.021;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1712;1987.344,-1160.675;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1687;40.03248,-711.05;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1788;28.71539,-527.2923;Inherit;False;th;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1841;3014.403,-1037.491;Inherit;False;1840;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1694;2738.134,-1191.569;Inherit;False;1687;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1713;2773.38,-1434.037;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1685;49.03248,-800.0505;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;2759.84,-1276.419;Inherit;False;1712;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1696;2783.174,-1114.383;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1789;2779.391,-992.1989;Inherit;False;1788;th;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1695;2770.603,-1354.416;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1784;3265.454,-1427.783;Inherit;False;GGX Specular Light;4;;421;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1691;26.13561,-436.9753;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1856;3265.805,-1054.581;Inherit;False;Unity Translucency;77;;422;3081dbcb6ac8af842b2faa561ed4ff52;0;4;74;FLOAT;0;False;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.FunctionNode;1806;3262.585,-1176.571;Inherit;False;Unity Transmission;86;;424;9498cceedd4defe45a721369ca43b3c7;0;2;1;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1780;2658.528,-485.9633;Inherit;False;1617.865;815.8421;Comment;16;1704;1706;1709;1715;1779;1705;1849;1848;1847;1844;1680;1651;1700;1852;1853;1855;Deferred;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1703;3283.575,-1256.85;Inherit;False;1685;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1852;3443.892,-4.698726;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1848;2814.331,-274.7451;Inherit;False;1840;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1855;3028.701,-292.4829;Inherit;False;Unity Translucency;77;;427;3081dbcb6ac8af842b2faa561ed4ff52;0;4;74;FLOAT;0;False;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.SimpleAddOpNode;1847;3416.24,-270.5007;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1849;2816.664,-188.8915;Inherit;False;1788;th;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1844;3694.037,-316.4451;Inherit;False;Deferred Pass;1;;425;c9afd996879db6041a57a5a508002f59;0;7;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;0;False;32;FLOAT;0;False;4;COLOR;0;COLOR;1;COLOR;12;COLOR;18
Node;AmplifyShaderEditor.GetLocalVarNode;1715;3423.252,-163.305;Inherit;False;1712;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1853;3415.67,-353.2057;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1709;3161.242,-124.7211;Inherit;False;1685;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1638;3631.986,-1285.39;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1702;3844.902,-1173.685;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1705;3398.733,-83.54305;Inherit;False;1687;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1704;2801.505,-358.8359;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1700;3414.687,-431.2121;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1779;3442.823,74.69357;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;3879.576,-716.0059;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1706;2812.349,-104.2848;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1680;4014.197,-317.6598;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1650;4095.903,-1176.1;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1652;4095.903,-1143.1;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1651;4067.993,-320.4864;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1649;4095.903,-1281.9;Float;False;True;-1;2;ASEMaterialInspector;0;8;Hanmen/Clothes True Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=-50;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
WireConnection;1730;1;1858;557
WireConnection;1747;0;1858;559
WireConnection;1752;0;1730;0
WireConnection;1753;0;1752;0
WireConnection;1782;0;1858;559
WireConnection;1720;0;1858;0
WireConnection;1748;0;1747;0
WireConnection;1735;0;1734;0
WireConnection;1719;0;1720;0
WireConnection;1722;0;1782;0
WireConnection;1717;0;1730;0
WireConnection;1717;1;1858;0
WireConnection;1717;2;1858;559
WireConnection;1750;0;1748;0
WireConnection;1739;1;1735;0
WireConnection;1739;0;1753;0
WireConnection;1754;0;1755;0
WireConnection;1745;0;1858;0
WireConnection;1721;0;1722;0
WireConnection;1756;0;1739;0
WireConnection;1756;1;1754;0
WireConnection;1749;0;1750;0
WireConnection;1718;1;1719;0
WireConnection;1718;0;1717;0
WireConnection;1642;0;1718;0
WireConnection;1642;1;1721;0
WireConnection;1740;0;1756;0
WireConnection;1740;1;1749;0
WireConnection;1746;0;1745;0
WireConnection;1731;1;1642;1
WireConnection;1731;0;1740;1
WireConnection;1732;1;1642;0
WireConnection;1732;0;1746;0
WireConnection;1688;0;1858;561
WireConnection;1840;0;1718;0
WireConnection;1684;0;1858;557
WireConnection;1683;0;1732;0
WireConnection;1712;0;1731;0
WireConnection;1687;0;1858;560
WireConnection;1788;0;1858;562
WireConnection;1685;0;1858;558
WireConnection;1784;286;1713;0
WireConnection;1784;30;1695;0
WireConnection;1784;146;1714;0
WireConnection;1784;147;1694;0
WireConnection;1784;302;1696;0
WireConnection;1691;0;1858;787
WireConnection;1856;74;1696;0
WireConnection;1856;6;1841;0
WireConnection;1856;26;1695;0
WireConnection;1856;46;1789;0
WireConnection;1806;1;1841;0
WireConnection;1806;11;1695;0
WireConnection;1855;74;1706;0
WireConnection;1855;6;1848;0
WireConnection;1855;26;1704;0
WireConnection;1855;46;1849;0
WireConnection;1847;0;1855;68
WireConnection;1847;1;1709;0
WireConnection;1844;3;1700;0
WireConnection;1844;14;1853;0
WireConnection;1844;20;1847;0
WireConnection;1844;6;1715;0
WireConnection;1844;7;1705;0
WireConnection;1844;4;1852;0
WireConnection;1844;32;1779;0
WireConnection;1638;0;1784;0
WireConnection;1638;1;1703;0
WireConnection;1638;2;1806;0
WireConnection;1638;3;1856;0
WireConnection;1651;0;1844;0
WireConnection;1651;1;1844;1
WireConnection;1651;2;1844;12
WireConnection;1651;3;1844;18
WireConnection;1649;0;1638;0
WireConnection;1649;1;1702;0
ASEEND*/
//CHKSM=59FC4882434A481E1B2D29958D4808A8E1DDFB32