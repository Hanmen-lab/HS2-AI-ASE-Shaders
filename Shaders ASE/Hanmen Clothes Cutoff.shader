// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[Header(Backface Settings)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Toggle]_NormalBackDirInvert("Normal Invert", Range( 0 , 1)) = 1
		[Header(Alpha Clip Value)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_AlphaMaster("AlphaMaster", Range( 0 , 1)) = 1
		[Header(RENDER TEXTURES (Leave Empty))][NoScaleOffset][Space (10)]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_DetailMainTex("DetailMainTex", 2D) = "black" {}
		[NoScaleOffset][Space(25)][Header(TEXTURES)][Space(15)]_BumpMap("BumpMap", 2D) = "bump" {}
		[Header()][Header()][NoScaleOffset][Header(MetallicGlossMap)][Header((R) MetallicMask)][Header((G) Emission)][Header((B) Thickness)][Header((A) Roughness)]_MetallicGlossMap("", 2D) = "white" {}
		[Header(OcclusionMap)][Header((R) Curvature (Edge Map))][Header((G) Ambient Occlusion)][Header((B) Tearings)][Header((A) Wetness Opacity)][NoScaleOffset]_OcclusionMap("", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		_WetStreaksUV("WetStreaksUV", Vector) = (1,1,0,0)
		_WetUV("WetUV", Vector) = (1,1,0,0)
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0.6,0.65,0.65,0)
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_WeatheringUV("WeatheringUV", Vector) = (1,1,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_Float0("Float0", Range( 0 , 3)) = 1
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( -1 , 1)) = 1
		[NoScaleOffset][Header (Detail Mask)]_DetailMask("", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1 (Grayscale))]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header (Detail2 (Grayscale))]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		[Header(Detail Settings)]_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 9)) = 9
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( 0 , 9)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcculusionScale("DetailOcculusionScale", Range( 0 , 1)) = 0
		_DetailOcculusionScale2("DetailOcculusionScale2", Range( 0 , 1)) = 0
		[Header (Ambient Occlusion)]_OcculusionStrength("OcculusionStrength", Range( 0 , 1)) = 1
		[Header (Metallic Roughness (Optional))]_Roughness("Roughness", Range( 0 , 1)) = 0.8
		_MetallicMask("MetallicMask", Range( 0 , 1)) = 1
		[Header (Color 4 Settings (Optional))]_Glossiness4("Glossiness4", Range( 0 , 1)) = 1
		_Roughness4("Roughness4", Range( 0 , 1)) = 0.8
		_Metallic4("Metallic4", Range( 0 , 1)) = 1
		_MetallicMask4("MetallicMask4", Range( 0 , 1)) = 1
		_RoughnessReflections("RoughnessReflections", Range( 0 , 1)) = 0.1648498
		_GlossinessReflection("GlossinessReflection", Range( 0 , 1)) = 1
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
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 0
		_WetOpacityStreaks("WetOpacityStreaks", Range( 0 , 2)) = 0
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0.5
		_WetColor("WetColor", Color) = (0,0,0,0)
		_WetAlpha("WetAlpha", Range( 0 , 10)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		[Toggle(_EMISSIONCOLORTEXBASE_ON)] _EmissionColorTexBase("EmissionColorTexBase", Float) = 0
		[Header(Emission Effect)][NoScaleOffset]_EffectMap("EffectMap", 2D) = "white" {}
		_UVScroll("UVScroll", Vector) = (1,1,0,0)
		_UVScrollRotator("UVScrollRotator", Range( -1 , 1)) = 0
		[Header(Fresnel Settings)]_FresnelPower("FresnelPower", Range( 0 , 10)) = 3
		_FresnelBias("FresnelBias", Range( 0 , 1)) = 0
		_FresnelScale("FresnelScale", Range( 0 , 10)) = 0
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Header(Iridiscent)][Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		[Header (Specularity)][Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.5,0.5,0.5,1)
		[NoScaleOffset]_SpecularMap("SpecularMap", 2D) = "white" {}
		[HideInInspector][Toggle(_SHADERTYPE_CLOTHING)] _SHADERTYPE_CLOTHING("SHADERTYPE_CLOTHING", Float) = 1
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
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "UnityStandardBRDF.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_ON
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
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
			uniform float _CullMode;
			uniform float _DetailGlossScale;
			uniform float _WetGlossSplats;
			uniform float _WeatheringRange3;
			uniform float _WeatheringRange2;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float4 _WetUV;
			uniform float _CarvatureStrength;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			uniform float4 _WeatheringAlbedo;
			uniform float _DetailNormalMapScale;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _BaseColor;
			uniform float _WetBumpOffset;
			uniform float _WetGlossBase;
			uniform float _DetailUV2Rotator;
			uniform float2 _DetailUV2;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WeatheringAll;
			uniform float _DetailUVRotator;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float _DetailGlossScale2;
			uniform float _WeatheringUVSeed;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WeatheringGloss;
			uniform float4 _Color4;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailMetallicScale;
			uniform float _WetAlpha;
			uniform float _AlphaEx;
			uniform float _AlphaMaster;
			uniform float _UVScrollRotator;
			uniform float4 _UVScroll;
			uniform float4 _EmissionColor;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			SamplerState sampler_linear_repeat;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _Roughness;
			uniform float _Roughness4;
			uniform float _Glossiness4;
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
			uniform float _WeatheringEmission;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
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
			
			float getInterleavedGradientNoise8Bit9_g486( int x, int y )
			{
				return frac(52.9829189*frac(0.06711056*x + 0.00583715*y));
			}
			
			float IGNAnimated12_g485( float2 uv, float iFrame )
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


				float2 uv_MainTex576_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g543 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g543 );
				float2 uv_ColorMask304_g543 = i.ase_texcoord1.xy;
				float ColorMask4347_g543 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g543 ).b;
				float3 lerpResult815_g543 = lerp( (tex2DNode576_g543).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g543 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g543 );
				float Carvature270_g543 = tex2DNode196_g543.r;
				float3 lerpResult331_g543 = lerp( ( lerpResult815_g543 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g543 * _CarvatureStrength ));
				float WetAlbedoOffset311_g543 = _WetAlbedoOffset;
				float3 temp_output_382_0_g543 = ( lerpResult331_g543 * WetAlbedoOffset311_g543 );
				float WetSplatsAlbedoOffset349_g543 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g543 = lerp( ( temp_output_382_0_g543 * WetSplatsAlbedoOffset349_g543 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g543 = _ExGloss;
				float2 appendResult657_g543 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g543 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g543 = i.ase_texcoord1.xy * appendResult657_g543 + appendResult658_g543;
				float2 WetStrUV669_g543 = texCoord660_g543;
				float WetStr661_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g543 ).g;
				float smoothstepResult651_g543 = smoothstep( ( 1.0 - ExGloss298_g543 ) , 1.0 , WetStr661_g543);
				float StreaksAlpha662_g543 = smoothstepResult651_g543;
				float WetOpStreaks673_g543 = _WetOpacityStreaks;
				float2 appendResult287_g543 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g543 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g543 = i.ase_texcoord1.xy * appendResult287_g543 + appendResult285_g543;
				float2 WetUV578_g543 = texCoord317_g543;
				float WetSplats369_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g543 ).b;
				float SplatsOp363_g543 = _WetOpacitySplats;
				float3 lerpResult460_g543 = lerp( temp_output_382_0_g543 , lerpResult411_g543 , ( ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ) + ( WetSplats369_g543 * SplatsOp363_g543 ) ));
				float2 uv_OcclusionMap429_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g543 );
				float3 WetBodyOffset422_g543 = (_BodyColor1).rgb;
				float bodycoloralpha417_g543 = _BodyColor1.a;
				float3 lerpResult480_g543 = lerp( lerpResult460_g543 , ( tex2DNode429_g543.a == 1.0 ? lerpResult460_g543 : WetBodyOffset422_g543 ) , ( bodycoloralpha417_g543 * ( 1.0 - tex2DNode429_g543.a ) ));
				float3 lerpResult501_g543 = lerp( lerpResult331_g543 , lerpResult480_g543 , ExGloss298_g543);
				float2 appendResult115_g543 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g543 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g543 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g543 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g543 ) * 43758.55 ) ));
				float2 texCoord127_g543 = i.ase_texcoord1.xy * appendResult115_g543 + ( appendResult110_g543 + lerpResult737_g543 );
				float2 WeatheringUV144_g543 = texCoord127_g543;
				float4 tex2DNode177_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float2 uv_WeatheringMask100_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g543 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g543 );
				float clampResult161_g543 = clamp( ( tex2DNode100_g543.r - tex2DNode100_g543.g ) , 0.0 , 1.0 );
				float WMask1183_g543 = ( clampResult161_g543 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g543 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g543 = clamp( ( ( tex2DNode177_g543.g * WMask1183_g543 ) - RangeCut1208_g543 ) , 0.0 , 1.0 );
				float clampResult159_g543 = clamp( ( tex2DNode100_g543.g - tex2DNode100_g543.r ) , 0.0 , 1.0 );
				float WMask2192_g543 = ( clampResult159_g543 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g543 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g543 = clamp( ( ( tex2DNode177_g543.g * WMask2192_g543 ) - RangeCut2211_g543 ) , 0.0 , 1.0 );
				float WMask3190_g543 = ( tex2DNode100_g543.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g543 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g543 = clamp( ( ( tex2DNode177_g543.g * WMask3190_g543 ) - RangeCut3210_g543 ) , 0.0 , 1.0 );
				float WMask4180_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g543 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g543 = clamp( ( ( tex2DNode177_g543.g * WMask4180_g543 ) - RangeCut4205_g543 ) , 0.0 , 1.0 );
				float WMask5184_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g543 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g543 = clamp( ( ( tex2DNode177_g543.g * WMask5184_g543 ) - RangeCut5201_g543 ) , 0.0 , 1.0 );
				float WMaskAll165_g543 = ceil( _WeatheringAll );
				float RangeCutAll171_g543 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g543 = clamp( ( ( tex2DNode177_g543.g * WMaskAll165_g543 ) - RangeCutAll171_g543 ) , 0.0 , 1.0 );
				float clampResult299_g543 = clamp( ( clampResult253_g543 + clampResult251_g543 + clampResult254_g543 + clampResult259_g543 + clampResult261_g543 + clampResult215_g543 ) , 0.0 , 1.0 );
				float lerpResult313_g543 = lerp( clampResult299_g543 , clampResult215_g543 , WMaskAll165_g543);
				float WeatheringAlpha2466_g543 = lerpResult313_g543;
				float3 lerpResult505_g543 = lerp( lerpResult501_g543 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g543 * 0.282353 ));
				float3 DiffuseMix511_g543 = lerpResult505_g543;
				float3 temp_output_1955_0 = DiffuseMix511_g543;
				Gradient gradient37_g456 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g543 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g543 = _WetBumpOffset;
				float2 UVScale107_g543 = _UVScalePattern;
				float2 texCoord152_g543 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g543 ) + float2( 0,0 );
				float cos162_g543 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g543 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g543 = mul( texCoord152_g543 - float2( 0.5,0.5 ) , float2x2( cos162_g543 , -sin162_g543 , sin162_g543 , cos162_g543 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g543 = rotator162_g543;
				float2 break194_g543 = Detail1UV173_g543;
				float saferPower168_g543 = abs( 0.25 );
				float temp_output_186_0_g543 = ( pow( saferPower168_g543 , 3.0 ) * 0.2 );
				float2 appendResult218_g543 = (float2(( break194_g543.x + temp_output_186_0_g543 ) , break194_g543.y));
				float4 tex2DNode243_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 );
				float2 uv_DetailMask25_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g543 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g543 );
				float DetailMask130_g543 = tex2DNode25_g543.r;
				float temp_output_255_0_g543 = ( DetailMask130_g543 * _DetailNormalMapScale );
				float temp_output_283_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult300_g543 = (float3(1.0 , 0.0 , temp_output_283_0_g543));
				float2 appendResult222_g543 = (float2(break194_g543.x , ( break194_g543.y + temp_output_186_0_g543 )));
				float temp_output_268_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult297_g543 = (float3(0.0 , 1.0 , temp_output_268_0_g543));
				float3 normalizeResult348_g543 = normalize( cross( appendResult300_g543 , appendResult297_g543 ) );
				float3 DetailNormal1368_g543 = normalizeResult348_g543;
				float2 texCoord16_g543 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g543 ) + float2( 0,0 );
				float cos19_g543 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g543 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g543 = mul( texCoord16_g543 - float2( 0.5,0.5 ) , float2x2( cos19_g543 , -sin19_g543 , sin19_g543 , cos19_g543 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g543 = rotator19_g543;
				float2 break24_g543 = Detail2UV20_g543;
				float saferPower22_g543 = abs( 0.25 );
				float temp_output_26_0_g543 = ( pow( saferPower22_g543 , 3.0 ) * 0.2 );
				float2 appendResult34_g543 = (float2(( break24_g543.x + temp_output_26_0_g543 ) , break24_g543.y));
				float4 tex2DNode38_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 );
				float DetailMask235_g543 = tex2DNode25_g543.g;
				float temp_output_43_0_g543 = ( DetailMask235_g543 * _DetailNormalMapScale2 );
				float temp_output_50_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult58_g543 = (float3(1.0 , 0.0 , temp_output_50_0_g543));
				float2 appendResult33_g543 = (float2(break24_g543.x , ( break24_g543.y + temp_output_26_0_g543 )));
				float temp_output_53_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult57_g543 = (float3(0.0 , 1.0 , temp_output_53_0_g543));
				float3 normalizeResult69_g543 = normalize( cross( appendResult58_g543 , appendResult57_g543 ) );
				float3 DetailNormal276_g543 = normalizeResult69_g543;
				float2 break547_g543 = WetStrUV669_g543;
				float temp_output_541_0_g543 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g543 = (float2(( break547_g543.x + temp_output_541_0_g543 ) , break547_g543.y));
				float4 tex2DNode515_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g543 );
				float3 appendResult523_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float2 appendResult534_g543 = (float2(break547_g543.x , ( break547_g543.y + temp_output_541_0_g543 )));
				float3 appendResult542_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float3 normalizeResult524_g543 = normalize( cross( appendResult523_g543 , appendResult542_g543 ) );
				float3 WetnessNormal545_g543 = normalizeResult524_g543;
				float3 lerpResult98_g543 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g543 ), ( _Float0 + ( WetBumpOffset303_g543 * ExGloss298_g543 ) ) ) , DetailNormal1368_g543 ) , DetailNormal276_g543 ) , WetnessNormal545_g543 , ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ));
				float2 break223_g543 = WeatheringUV144_g543;
				float temp_output_224_0_g543 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g543 = (float2(( break223_g543.x + temp_output_224_0_g543 ) , break223_g543.y));
				float4 tex2DNode266_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float3 appendResult344_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float2 appendResult252_g543 = (float2(break223_g543.x , ( break223_g543.y + temp_output_224_0_g543 )));
				float3 appendResult339_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float3 normalizeResult398_g543 = normalize( cross( appendResult344_g543 , appendResult339_g543 ) );
				float3 WeatheringBump425_g543 = normalizeResult398_g543;
				float clampResult373_g543 = clamp( ( lerpResult313_g543 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g543 = clampResult373_g543;
				float3 lerpResult87_g543 = lerp( lerpResult98_g543 , WeatheringBump425_g543 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 ).b * WeatheringAlpha396_g543 ));
				float3 normalizeResult564_g543 = normalize( lerpResult87_g543 );
				float3 temp_output_1955_557 = normalizeResult564_g543;
				float dotResult7_g456 = dot( ase_tanViewDir , temp_output_1955_557 );
				float3 temp_output_12_0_g456 = (SampleGradient( gradient37_g456, dotResult7_g456 )).rgb;
				float temp_output_10_0_g456 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g456 = cos( temp_output_10_0_g456 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g456 = dot( _k7 , temp_output_12_0_g456 );
				float3 temp_output_32_0_g456 = ( ( ( ( ( ( temp_output_12_0_g456 * temp_output_13_0_g456 ) + ( cross( _k7 , temp_output_12_0_g456 ) * sin( temp_output_10_0_g456 ) ) + ( _k7 * dotResult14_g456 * ( 1.0 - temp_output_13_0_g456 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g456 = dot( temp_output_32_0_g456 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g456).xxx;
				float3 lerpResult35_g456 = lerp( temp_cast_2 , temp_output_32_0_g456 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g456;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1955_0;
				float2 uv_MetallicGlossMap532_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g543 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g543 );
				float MetallicGlossMask800_g543 = tex2DNode532_g543.r;
				float lerpResult399_g543 = lerp( 1.0 , MetallicGlossMask800_g543 , _MetallicMask);
				float2 uv_DetailMainTex528_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g543 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g543 );
				float MainMetallic797_g543 = tex2DNode528_g543.r;
				float lerpResult395_g543 = lerp( 1.0 , MetallicGlossMask800_g543 , _MetallicMask4);
				float lerpResult462_g543 = lerp( ( lerpResult399_g543 * MainMetallic797_g543 ) , ( lerpResult395_g543 * _Metallic4 ) , ColorMask4347_g543);
				float Detail1310_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 ).r;
				float Detail2352_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 ).r;
				float lerpResult495_g543 = lerp( saturate( ( ( lerpResult462_g543 - ( ( 1.0 - Detail1310_g543 ) * ( _DetailMetallicScale * DetailMask130_g543 ) ) ) - ( ( 1.0 - Detail2352_g543 ) * ( _DetailMetallicScale2 * DetailMask235_g543 ) ) ) ) , 0.0 , WeatheringAlpha2466_g543);
				float temp_output_1955_559 = saturate( lerpResult495_g543 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1955_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1955_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1955_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1955_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g458 = worldSpaceLightDir;
				float3 viewDir15_g458 = ase_worldViewDir;
				float3 normalizeResult136_g458 = ASESafeNormalize( ( lightDir14_g458 + viewDir15_g458 ) );
				float dotResult137_g458 = dot( lightDir14_g458 , normalizeResult136_g458 );
				float LdotH139_g458 = saturate( dotResult137_g458 );
				float mgAlpha806_g543 = tex2DNode532_g543.a;
				float lerpResult353_g543 = lerp( 1.0 , mgAlpha806_g543 , _Roughness);
				float MainGlossiness795_g543 = tex2DNode528_g543.b;
				float lerpResult336_g543 = lerp( 1.0 , mgAlpha806_g543 , _Roughness4);
				float lerpResult384_g543 = lerp( ( lerpResult353_g543 * MainGlossiness795_g543 ) , ( lerpResult336_g543 * _Glossiness4 ) , ColorMask4347_g543);
				float WetGlossBase397_g543 = _WetGlossBase;
				float lerpResult470_g543 = lerp( saturate( ( ( lerpResult384_g543 - ( ( 1.0 - Detail1310_g543 ) * ( _DetailGlossScale * DetailMask130_g543 ) ) ) - ( ( 1.0 - Detail2352_g543 ) * ( _DetailGlossScale2 * DetailMask235_g543 ) ) ) ) , mgAlpha806_g543 , ( WetGlossBase397_g543 * ExGloss298_g543 ));
				float SplatsGloss407_g543 = _WetGlossSplats;
				float lerpResult664_g543 = lerp( lerpResult470_g543 , SplatsGloss407_g543 , ( SplatsOp363_g543 * ExGloss298_g543 * WetSplats369_g543 ));
				float lerpResult649_g543 = lerp( lerpResult664_g543 , 0.87 , ( WetOpStreaks673_g543 * smoothstepResult651_g543 ));
				float lerpResult499_g543 = lerp( lerpResult649_g543 , _WeatheringGloss , WeatheringAlpha396_g543);
				float GlossinessFinal513_g543 = saturate( lerpResult499_g543 );
				float OutSmoothness1687 = GlossinessFinal513_g543;
				float smoothness169_g458 = OutSmoothness1687;
				float perceprualRoughness188_g458 = ( 1.0 - smoothness169_g458 );
				half fd90273_g458 = ( 0.5 + ( 2.0 * LdotH139_g458 * LdotH139_g458 * perceprualRoughness188_g458 ) );
				float3 OutNormal1684 = temp_output_1955_557;
				float3 switchResult1939 = (((ase_vface>0)?(OutNormal1684):(-OutNormal1684)));
				float3 NormalFace1945 = ( _NormalBackDirInvert == 1.0 ? switchResult1939 : OutNormal1684 );
				float3 tanNormal29_g458 = NormalFace1945;
				float3 worldNormal29_g458 = float3(dot(tanToWorld0,tanNormal29_g458), dot(tanToWorld1,tanNormal29_g458), dot(tanToWorld2,tanNormal29_g458));
				float3 normalizeResult25_g458 = normalize( worldNormal29_g458 );
				float3 normalDir28_g458 = normalizeResult25_g458;
				float dotResult21_g458 = dot( lightDir14_g458 , normalDir28_g458 );
				float NdotL20_g458 = saturate( dotResult21_g458 );
				half lightScatter253_g458 = ( ( ( fd90273_g458 - 1.0 ) * pow( ( 1.0 - NdotL20_g458 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g458 = dot( normalDir28_g458 , viewDir15_g458 );
				float NdotV55_g458 = saturate( dotResult56_g458 );
				half viewScatter254_g458 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g458 ) , 5.0 ) * ( fd90273_g458 - 1.0 ) ) );
				half disneydiffuse251_g458 = ( lightScatter253_g458 * viewScatter254_g458 );
				half Diffuseterm281_g458 = ( disneydiffuse251_g458 * NdotL20_g458 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g458 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g458;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g458 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g458
				data203_g458.lightmapUV = i.ase_lmap;
				#endif //dylm203_g458
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g458
				data203_g458.ambient = i.ase_sh;
				#endif //fsh203_g458
				UnityGI gi203_g458 = UnityGI_Base(data203_g458, 1, normalDir28_g458);
				float OcclusionG832_g543 = tex2DNode196_g543.g;
				float lerpResult483_g543 = lerp( 1.0 , OcclusionG832_g543 , _OcculusionStrength);
				float smoothstepResult621_g543 = smoothstep( 0.0 , 0.8 , Detail1310_g543);
				float lerpResult488_g543 = lerp( 1.0 , smoothstepResult621_g543 , ( _DetailOcculusionScale * DetailMask130_g543 ));
				float smoothstepResult622_g543 = smoothstep( 0.0 , 0.8 , Detail2352_g543);
				float lerpResult494_g543 = lerp( 1.0 , smoothstepResult622_g543 , ( _DetailOcculusionScale2 * DetailMask235_g543 ));
				float lerpResult620_g543 = lerp( ( lerpResult483_g543 * lerpResult488_g543 * lerpResult494_g543 ) , 1.0 , WeatheringAlpha396_g543);
				float OcclusionMix509_g543 = saturate( lerpResult620_g543 );
				float OutAO1688 = OcclusionMix509_g543;
				float occlusion306_g458 = OutAO1688;
				half Roughness64_g458 = max( ( perceprualRoughness188_g458 * perceprualRoughness188_g458 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g458 = ( 0.5 / ( ( ( ( NdotV55_g458 * ( 1.0 - Roughness64_g458 ) ) + Roughness64_g458 ) * NdotL20_g458 ) + 1E-05 + ( NdotV55_g458 * ( Roughness64_g458 + ( ( 1.0 - Roughness64_g458 ) * NdotL20_g458 ) ) ) ) );
				float a266_g458 = ( Roughness64_g458 * Roughness64_g458 );
				float3 normalizeResult87_g458 = ASESafeNormalize( ( lightDir14_g458 + viewDir15_g458 ) );
				float dotResult88_g458 = dot( normalDir28_g458 , normalizeResult87_g458 );
				float NdotH90_g458 = saturate( dotResult88_g458 );
				float d99_g458 = ( ( ( ( NdotH90_g458 * a266_g458 ) - NdotH90_g458 ) * NdotH90_g458 ) + 1.0 );
				half GGXTerm43_g458 = ( ( ( 1.0 / UNITY_PI ) * a266_g458 ) / ( ( d99_g458 * d99_g458 ) + 1E-07 ) );
				float temp_output_36_0_g458 = ( SmithJointGGXVisibilityTerm42_g458 * GGXTerm43_g458 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g458 = sqrt( max( 0.0001 , temp_output_36_0_g458 ) );
				#else
				float staticSwitch5_g458 = temp_output_36_0_g458;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g458 = 0.0;
				#else
				float staticSwitch119_g458 = max( 0.0 , ( staticSwitch5_g458 * NdotL20_g458 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1955_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g458 = OutSpecular1712;
				float SpecularTerm34_g458 = ( staticSwitch119_g458 * ( SpecColor140_g458.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g458 = ( ( pow( ( 1.0 - LdotH139_g458 ) , 5.0 ) * ( 1.0 - SpecColor140_g458 ) ) + SpecColor140_g458 );
				half metallic176_g458 = 0.0;
				half localOneMinusReflectivity176_g458 = OneMinusReflectivity( metallic176_g458 );
				half GrazingTerm163_g458 = saturate( ( smoothness169_g458 + ( 1.0 - localOneMinusReflectivity176_g458 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g458).xxx;
				float3 lerpResult159_g458 = lerp( SpecColor140_g458 , temp_cast_4 , pow( ( 1.0 - NdotV55_g458 ) , 5.0 ));
				half3 FresnelLerp165_g458 = lerpResult159_g458;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g458 = ( 1.0 - ( 0.28 * Roughness64_g458 * perceprualRoughness188_g458 ) );
				#else
				float staticSwitch183_g458 = ( 1.0 / ( ( Roughness64_g458 * Roughness64_g458 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g458 = staticSwitch183_g458;
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
				Unity_GlossyEnvironmentData g299_g458 = UnityGlossyEnvironmentSetup( smoothness169_g458, ase_worldViewDir, normalDir28_g458, float3(0,0,0));
				float3 indirectSpecular299_g458 = UnityGI_IndirectSpecular( data, occlusion306_g458, normalDir28_g458, g299_g458 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g458 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g458 = ( FresnelLerp165_g458 * SurfaceReduction182_g458 * indirectSpecular299_g458 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g458 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g458 = staticSwitch313_g458;
				#endif
				float EmissionMask799_g543 = tex2DNode532_g543.g;
				float3 CLEANCOLOR838_g543 = lerpResult815_g543;
				#ifdef _EMISSIONCOLORTEXBASE_ON
				float3 staticSwitch837_g543 = CLEANCOLOR838_g543;
				#else
				float3 staticSwitch837_g543 = (_EmissionColor).rgb;
				#endif
				float2 appendResult842_g543 = (float2(_UVScroll.x , _UVScroll.y));
				float2 appendResult848_g543 = (float2(_UVScroll.z , _UVScroll.w));
				float2 texCoord840_g543 = i.ase_texcoord1.xy * appendResult842_g543 + float2( 0,0 );
				float2 panner841_g543 = ( _Time.y * ( appendResult842_g543 * appendResult848_g543 ) + texCoord840_g543);
				float cos850_g543 = cos( ( _UVScrollRotator * UNITY_PI ) );
				float sin850_g543 = sin( ( _UVScrollRotator * UNITY_PI ) );
				float2 rotator850_g543 = mul( panner841_g543 - float2( 0.5,0.5 ) , float2x2( cos850_g543 , -sin850_g543 , sin850_g543 , cos850_g543 )) + float2( 0.5,0.5 );
				float WeatheringBumpMask718_g543 = tex2DNode177_g543.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g543 * staticSwitch837_g543 * _EmissionStrength * SAMPLE_TEXTURE2D( _EffectMap, sampler_MainTex, rotator850_g543 ).r ) + ( ( WeatheringAlpha2466_g543 * WeatheringBumpMask718_g543 ) * _WeatheringEmission ) );
				float3 tanNormal27_g538 = OutNormal1684;
				float3 worldNormal27_g538 = float3(dot(tanToWorld0,tanNormal27_g538), dot(tanToWorld1,tanNormal27_g538), dot(tanToWorld2,tanNormal27_g538));
				float3 normalizeResult61_g538 = normalize( worldNormal27_g538 );
				float dotResult20_g538 = dot( ase_worldViewDir , -( ( normalizeResult61_g538 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g543 = tex2DNode532_g543.b;
				float th1788 = Thickness507_g543;
				float temp_output_59_0_g538 = ( _Translucency * th1788 );
				float3 lerpResult39_g538 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 temp_output_6_0_g538 = OutAlbedo1683;
				UnityGIInput data15_g538;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g538 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g538
				data15_g538.lightmapUV = i.ase_lmap;
				#endif //dylm15_g538
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g538
				data15_g538.ambient = i.ase_sh;
				#endif //fsh15_g538
				UnityGI gi15_g538 = UnityGI_Base(data15_g538, 1, normalizeResult61_g538);
				
				float clampResult780_g543 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g543 = tex2DNode196_g543.b;
				float AlphaInput195_g543 = tex2DNode576_g543.a;
				float OutOp1691 = ( step( pow( ( 1.0 - clampResult780_g543 ) , 0.2 ) , pow( TearingsMask340_g543 , 0.5 ) ) * AlphaInput195_g543 );
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g486 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g486 = (int)(temp_output_1_0_g486).x;
				int y9_g486 = (int)(temp_output_1_0_g486).y;
				float localgetInterleavedGradientNoise8Bit9_g486 = getInterleavedGradientNoise8Bit9_g486( x9_g486 , y9_g486 );
				float3 tanNormal1968 = NormalFace1945;
				float3 worldNormal1968 = float3(dot(tanToWorld0,tanNormal1968), dot(tanToWorld1,tanNormal1968), dot(tanToWorld2,tanNormal1968));
				float fresnelNdotV1964 = dot( worldNormal1968, ase_worldViewDir );
				float fresnelNode1964 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV1964, _FresnelPower ) );
				float OccAlpha219_g543 = tex2DNode196_g543.a;
				float OutAlpha1871 = saturate( ( ( AlphaInput195_g543 * _AlphaMaster * saturate( pow( OccAlpha219_g543 , ( _WetAlpha * ExGloss298_g543 ) ) ) ) + WeatheringAlpha2466_g543 ) );
				float temp_output_1972_0 = saturate( ( fresnelNode1964 + OutAlpha1871 ) );
				float2 temp_output_1_0_g485 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g485 = temp_output_1_0_g485;
				float mulTime15_g485 = _Time.y * 60.0;
				float iFrame12_g485 = mulTime15_g485;
				float localIGNAnimated12_g485 = IGNAnimated12_g485( uv12_g485 , iFrame12_g485 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch1888 = step( localIGNAnimated12_g485 , temp_output_1972_0 );
				#else
				float staticSwitch1888 = step( localgetInterleavedGradientNoise8Bit9_g486 , temp_output_1972_0 );
				#endif
				clip( ( OutOp1691 * staticSwitch1888 ) - _Cutoff);
				float Clip1873 = 1.0;
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g458 * lightAtten296_g458 ) + ( gi203_g458.indirect.diffuse * occlusion306_g458 ) ) ) + ( SpecularTerm34_g458 * lightAtten296_g458 * FresnelTerm130_g458 ) + staticSwitch305_g458 ) + OutEmission1685 + ( ( ( pow( saturate( dotResult20_g538 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g538 * lerpResult39_g538 * temp_output_6_0_g538 ) + ( ( gi15_g538.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g538 * temp_output_6_0_g538 * lerpResult39_g538 ) ) );
				outAlpha = Clip1873;
				//clip(outAlpha - _Cutoff);
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
			#include "UnityStandardBRDF.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_ON
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
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
			uniform float _CullMode;
			uniform float _DetailGlossScale;
			uniform float _WetGlossSplats;
			uniform float _WeatheringRange3;
			uniform float _WeatheringRange2;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float4 _WetUV;
			uniform float _CarvatureStrength;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			uniform float4 _WeatheringAlbedo;
			uniform float _DetailNormalMapScale;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _BaseColor;
			uniform float _WetBumpOffset;
			uniform float _WetGlossBase;
			uniform float _DetailUV2Rotator;
			uniform float2 _DetailUV2;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WeatheringAll;
			uniform float _DetailUVRotator;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float _DetailGlossScale2;
			uniform float _WeatheringUVSeed;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WeatheringGloss;
			uniform float4 _Color4;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailMetallicScale;
			uniform float _WetAlpha;
			uniform float _AlphaEx;
			uniform float _AlphaMaster;
			uniform float _UVScrollRotator;
			uniform float4 _UVScroll;
			uniform float4 _EmissionColor;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			SamplerState sampler_linear_repeat;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _Roughness;
			uniform float _Roughness4;
			uniform float _Glossiness4;
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
			uniform float _WeatheringEmission;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
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
			
			float getInterleavedGradientNoise8Bit9_g486( int x, int y )
			{
				return frac(52.9829189*frac(0.06711056*x + 0.00583715*y));
			}
			
			float IGNAnimated12_g485( float2 uv, float iFrame )
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

				float2 uv_MainTex576_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g543 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g543 );
				float2 uv_ColorMask304_g543 = i.ase_texcoord1.xy;
				float ColorMask4347_g543 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g543 ).b;
				float3 lerpResult815_g543 = lerp( (tex2DNode576_g543).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g543 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g543 );
				float Carvature270_g543 = tex2DNode196_g543.r;
				float3 lerpResult331_g543 = lerp( ( lerpResult815_g543 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g543 * _CarvatureStrength ));
				float WetAlbedoOffset311_g543 = _WetAlbedoOffset;
				float3 temp_output_382_0_g543 = ( lerpResult331_g543 * WetAlbedoOffset311_g543 );
				float WetSplatsAlbedoOffset349_g543 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g543 = lerp( ( temp_output_382_0_g543 * WetSplatsAlbedoOffset349_g543 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g543 = _ExGloss;
				float2 appendResult657_g543 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g543 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g543 = i.ase_texcoord1.xy * appendResult657_g543 + appendResult658_g543;
				float2 WetStrUV669_g543 = texCoord660_g543;
				float WetStr661_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g543 ).g;
				float smoothstepResult651_g543 = smoothstep( ( 1.0 - ExGloss298_g543 ) , 1.0 , WetStr661_g543);
				float StreaksAlpha662_g543 = smoothstepResult651_g543;
				float WetOpStreaks673_g543 = _WetOpacityStreaks;
				float2 appendResult287_g543 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g543 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g543 = i.ase_texcoord1.xy * appendResult287_g543 + appendResult285_g543;
				float2 WetUV578_g543 = texCoord317_g543;
				float WetSplats369_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g543 ).b;
				float SplatsOp363_g543 = _WetOpacitySplats;
				float3 lerpResult460_g543 = lerp( temp_output_382_0_g543 , lerpResult411_g543 , ( ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ) + ( WetSplats369_g543 * SplatsOp363_g543 ) ));
				float2 uv_OcclusionMap429_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g543 );
				float3 WetBodyOffset422_g543 = (_BodyColor1).rgb;
				float bodycoloralpha417_g543 = _BodyColor1.a;
				float3 lerpResult480_g543 = lerp( lerpResult460_g543 , ( tex2DNode429_g543.a == 1.0 ? lerpResult460_g543 : WetBodyOffset422_g543 ) , ( bodycoloralpha417_g543 * ( 1.0 - tex2DNode429_g543.a ) ));
				float3 lerpResult501_g543 = lerp( lerpResult331_g543 , lerpResult480_g543 , ExGloss298_g543);
				float2 appendResult115_g543 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g543 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g543 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g543 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g543 ) * 43758.55 ) ));
				float2 texCoord127_g543 = i.ase_texcoord1.xy * appendResult115_g543 + ( appendResult110_g543 + lerpResult737_g543 );
				float2 WeatheringUV144_g543 = texCoord127_g543;
				float4 tex2DNode177_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float2 uv_WeatheringMask100_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g543 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g543 );
				float clampResult161_g543 = clamp( ( tex2DNode100_g543.r - tex2DNode100_g543.g ) , 0.0 , 1.0 );
				float WMask1183_g543 = ( clampResult161_g543 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g543 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g543 = clamp( ( ( tex2DNode177_g543.g * WMask1183_g543 ) - RangeCut1208_g543 ) , 0.0 , 1.0 );
				float clampResult159_g543 = clamp( ( tex2DNode100_g543.g - tex2DNode100_g543.r ) , 0.0 , 1.0 );
				float WMask2192_g543 = ( clampResult159_g543 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g543 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g543 = clamp( ( ( tex2DNode177_g543.g * WMask2192_g543 ) - RangeCut2211_g543 ) , 0.0 , 1.0 );
				float WMask3190_g543 = ( tex2DNode100_g543.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g543 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g543 = clamp( ( ( tex2DNode177_g543.g * WMask3190_g543 ) - RangeCut3210_g543 ) , 0.0 , 1.0 );
				float WMask4180_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g543 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g543 = clamp( ( ( tex2DNode177_g543.g * WMask4180_g543 ) - RangeCut4205_g543 ) , 0.0 , 1.0 );
				float WMask5184_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g543 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g543 = clamp( ( ( tex2DNode177_g543.g * WMask5184_g543 ) - RangeCut5201_g543 ) , 0.0 , 1.0 );
				float WMaskAll165_g543 = ceil( _WeatheringAll );
				float RangeCutAll171_g543 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g543 = clamp( ( ( tex2DNode177_g543.g * WMaskAll165_g543 ) - RangeCutAll171_g543 ) , 0.0 , 1.0 );
				float clampResult299_g543 = clamp( ( clampResult253_g543 + clampResult251_g543 + clampResult254_g543 + clampResult259_g543 + clampResult261_g543 + clampResult215_g543 ) , 0.0 , 1.0 );
				float lerpResult313_g543 = lerp( clampResult299_g543 , clampResult215_g543 , WMaskAll165_g543);
				float WeatheringAlpha2466_g543 = lerpResult313_g543;
				float3 lerpResult505_g543 = lerp( lerpResult501_g543 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g543 * 0.282353 ));
				float3 DiffuseMix511_g543 = lerpResult505_g543;
				float3 temp_output_1955_0 = DiffuseMix511_g543;
				Gradient gradient37_g456 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g543 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g543 = _WetBumpOffset;
				float2 UVScale107_g543 = _UVScalePattern;
				float2 texCoord152_g543 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g543 ) + float2( 0,0 );
				float cos162_g543 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g543 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g543 = mul( texCoord152_g543 - float2( 0.5,0.5 ) , float2x2( cos162_g543 , -sin162_g543 , sin162_g543 , cos162_g543 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g543 = rotator162_g543;
				float2 break194_g543 = Detail1UV173_g543;
				float saferPower168_g543 = abs( 0.25 );
				float temp_output_186_0_g543 = ( pow( saferPower168_g543 , 3.0 ) * 0.2 );
				float2 appendResult218_g543 = (float2(( break194_g543.x + temp_output_186_0_g543 ) , break194_g543.y));
				float4 tex2DNode243_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 );
				float2 uv_DetailMask25_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g543 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g543 );
				float DetailMask130_g543 = tex2DNode25_g543.r;
				float temp_output_255_0_g543 = ( DetailMask130_g543 * _DetailNormalMapScale );
				float temp_output_283_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult300_g543 = (float3(1.0 , 0.0 , temp_output_283_0_g543));
				float2 appendResult222_g543 = (float2(break194_g543.x , ( break194_g543.y + temp_output_186_0_g543 )));
				float temp_output_268_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult297_g543 = (float3(0.0 , 1.0 , temp_output_268_0_g543));
				float3 normalizeResult348_g543 = normalize( cross( appendResult300_g543 , appendResult297_g543 ) );
				float3 DetailNormal1368_g543 = normalizeResult348_g543;
				float2 texCoord16_g543 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g543 ) + float2( 0,0 );
				float cos19_g543 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g543 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g543 = mul( texCoord16_g543 - float2( 0.5,0.5 ) , float2x2( cos19_g543 , -sin19_g543 , sin19_g543 , cos19_g543 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g543 = rotator19_g543;
				float2 break24_g543 = Detail2UV20_g543;
				float saferPower22_g543 = abs( 0.25 );
				float temp_output_26_0_g543 = ( pow( saferPower22_g543 , 3.0 ) * 0.2 );
				float2 appendResult34_g543 = (float2(( break24_g543.x + temp_output_26_0_g543 ) , break24_g543.y));
				float4 tex2DNode38_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 );
				float DetailMask235_g543 = tex2DNode25_g543.g;
				float temp_output_43_0_g543 = ( DetailMask235_g543 * _DetailNormalMapScale2 );
				float temp_output_50_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult58_g543 = (float3(1.0 , 0.0 , temp_output_50_0_g543));
				float2 appendResult33_g543 = (float2(break24_g543.x , ( break24_g543.y + temp_output_26_0_g543 )));
				float temp_output_53_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult57_g543 = (float3(0.0 , 1.0 , temp_output_53_0_g543));
				float3 normalizeResult69_g543 = normalize( cross( appendResult58_g543 , appendResult57_g543 ) );
				float3 DetailNormal276_g543 = normalizeResult69_g543;
				float2 break547_g543 = WetStrUV669_g543;
				float temp_output_541_0_g543 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g543 = (float2(( break547_g543.x + temp_output_541_0_g543 ) , break547_g543.y));
				float4 tex2DNode515_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g543 );
				float3 appendResult523_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float2 appendResult534_g543 = (float2(break547_g543.x , ( break547_g543.y + temp_output_541_0_g543 )));
				float3 appendResult542_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float3 normalizeResult524_g543 = normalize( cross( appendResult523_g543 , appendResult542_g543 ) );
				float3 WetnessNormal545_g543 = normalizeResult524_g543;
				float3 lerpResult98_g543 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g543 ), ( _Float0 + ( WetBumpOffset303_g543 * ExGloss298_g543 ) ) ) , DetailNormal1368_g543 ) , DetailNormal276_g543 ) , WetnessNormal545_g543 , ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ));
				float2 break223_g543 = WeatheringUV144_g543;
				float temp_output_224_0_g543 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g543 = (float2(( break223_g543.x + temp_output_224_0_g543 ) , break223_g543.y));
				float4 tex2DNode266_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float3 appendResult344_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float2 appendResult252_g543 = (float2(break223_g543.x , ( break223_g543.y + temp_output_224_0_g543 )));
				float3 appendResult339_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float3 normalizeResult398_g543 = normalize( cross( appendResult344_g543 , appendResult339_g543 ) );
				float3 WeatheringBump425_g543 = normalizeResult398_g543;
				float clampResult373_g543 = clamp( ( lerpResult313_g543 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g543 = clampResult373_g543;
				float3 lerpResult87_g543 = lerp( lerpResult98_g543 , WeatheringBump425_g543 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 ).b * WeatheringAlpha396_g543 ));
				float3 normalizeResult564_g543 = normalize( lerpResult87_g543 );
				float3 temp_output_1955_557 = normalizeResult564_g543;
				float dotResult7_g456 = dot( ase_tanViewDir , temp_output_1955_557 );
				float3 temp_output_12_0_g456 = (SampleGradient( gradient37_g456, dotResult7_g456 )).rgb;
				float temp_output_10_0_g456 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g456 = cos( temp_output_10_0_g456 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g456 = dot( _k7 , temp_output_12_0_g456 );
				float3 temp_output_32_0_g456 = ( ( ( ( ( ( temp_output_12_0_g456 * temp_output_13_0_g456 ) + ( cross( _k7 , temp_output_12_0_g456 ) * sin( temp_output_10_0_g456 ) ) + ( _k7 * dotResult14_g456 * ( 1.0 - temp_output_13_0_g456 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g456 = dot( temp_output_32_0_g456 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g456).xxx;
				float3 lerpResult35_g456 = lerp( temp_cast_2 , temp_output_32_0_g456 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g456;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1955_0;
				float2 uv_MetallicGlossMap532_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g543 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g543 );
				float MetallicGlossMask800_g543 = tex2DNode532_g543.r;
				float lerpResult399_g543 = lerp( 1.0 , MetallicGlossMask800_g543 , _MetallicMask);
				float2 uv_DetailMainTex528_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g543 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g543 );
				float MainMetallic797_g543 = tex2DNode528_g543.r;
				float lerpResult395_g543 = lerp( 1.0 , MetallicGlossMask800_g543 , _MetallicMask4);
				float lerpResult462_g543 = lerp( ( lerpResult399_g543 * MainMetallic797_g543 ) , ( lerpResult395_g543 * _Metallic4 ) , ColorMask4347_g543);
				float Detail1310_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 ).r;
				float Detail2352_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 ).r;
				float lerpResult495_g543 = lerp( saturate( ( ( lerpResult462_g543 - ( ( 1.0 - Detail1310_g543 ) * ( _DetailMetallicScale * DetailMask130_g543 ) ) ) - ( ( 1.0 - Detail2352_g543 ) * ( _DetailMetallicScale2 * DetailMask235_g543 ) ) ) ) , 0.0 , WeatheringAlpha2466_g543);
				float temp_output_1955_559 = saturate( lerpResult495_g543 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1955_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1955_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1955_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1955_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g458 = worldSpaceLightDir;
				float3 viewDir15_g458 = ase_worldViewDir;
				float3 normalizeResult136_g458 = ASESafeNormalize( ( lightDir14_g458 + viewDir15_g458 ) );
				float dotResult137_g458 = dot( lightDir14_g458 , normalizeResult136_g458 );
				float LdotH139_g458 = saturate( dotResult137_g458 );
				float mgAlpha806_g543 = tex2DNode532_g543.a;
				float lerpResult353_g543 = lerp( 1.0 , mgAlpha806_g543 , _Roughness);
				float MainGlossiness795_g543 = tex2DNode528_g543.b;
				float lerpResult336_g543 = lerp( 1.0 , mgAlpha806_g543 , _Roughness4);
				float lerpResult384_g543 = lerp( ( lerpResult353_g543 * MainGlossiness795_g543 ) , ( lerpResult336_g543 * _Glossiness4 ) , ColorMask4347_g543);
				float WetGlossBase397_g543 = _WetGlossBase;
				float lerpResult470_g543 = lerp( saturate( ( ( lerpResult384_g543 - ( ( 1.0 - Detail1310_g543 ) * ( _DetailGlossScale * DetailMask130_g543 ) ) ) - ( ( 1.0 - Detail2352_g543 ) * ( _DetailGlossScale2 * DetailMask235_g543 ) ) ) ) , mgAlpha806_g543 , ( WetGlossBase397_g543 * ExGloss298_g543 ));
				float SplatsGloss407_g543 = _WetGlossSplats;
				float lerpResult664_g543 = lerp( lerpResult470_g543 , SplatsGloss407_g543 , ( SplatsOp363_g543 * ExGloss298_g543 * WetSplats369_g543 ));
				float lerpResult649_g543 = lerp( lerpResult664_g543 , 0.87 , ( WetOpStreaks673_g543 * smoothstepResult651_g543 ));
				float lerpResult499_g543 = lerp( lerpResult649_g543 , _WeatheringGloss , WeatheringAlpha396_g543);
				float GlossinessFinal513_g543 = saturate( lerpResult499_g543 );
				float OutSmoothness1687 = GlossinessFinal513_g543;
				float smoothness169_g458 = OutSmoothness1687;
				float perceprualRoughness188_g458 = ( 1.0 - smoothness169_g458 );
				half fd90273_g458 = ( 0.5 + ( 2.0 * LdotH139_g458 * LdotH139_g458 * perceprualRoughness188_g458 ) );
				float3 OutNormal1684 = temp_output_1955_557;
				float3 switchResult1939 = (((ase_vface>0)?(OutNormal1684):(-OutNormal1684)));
				float3 NormalFace1945 = ( _NormalBackDirInvert == 1.0 ? switchResult1939 : OutNormal1684 );
				float3 tanNormal29_g458 = NormalFace1945;
				float3 worldNormal29_g458 = float3(dot(tanToWorld0,tanNormal29_g458), dot(tanToWorld1,tanNormal29_g458), dot(tanToWorld2,tanNormal29_g458));
				float3 normalizeResult25_g458 = normalize( worldNormal29_g458 );
				float3 normalDir28_g458 = normalizeResult25_g458;
				float dotResult21_g458 = dot( lightDir14_g458 , normalDir28_g458 );
				float NdotL20_g458 = saturate( dotResult21_g458 );
				half lightScatter253_g458 = ( ( ( fd90273_g458 - 1.0 ) * pow( ( 1.0 - NdotL20_g458 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g458 = dot( normalDir28_g458 , viewDir15_g458 );
				float NdotV55_g458 = saturate( dotResult56_g458 );
				half viewScatter254_g458 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g458 ) , 5.0 ) * ( fd90273_g458 - 1.0 ) ) );
				half disneydiffuse251_g458 = ( lightScatter253_g458 * viewScatter254_g458 );
				half Diffuseterm281_g458 = ( disneydiffuse251_g458 * NdotL20_g458 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g458 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g458;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g458 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g458
				data203_g458.lightmapUV = i.ase_lmap;
				#endif //dylm203_g458
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g458
				data203_g458.ambient = i.ase_sh;
				#endif //fsh203_g458
				UnityGI gi203_g458 = UnityGI_Base(data203_g458, 1, normalDir28_g458);
				float OcclusionG832_g543 = tex2DNode196_g543.g;
				float lerpResult483_g543 = lerp( 1.0 , OcclusionG832_g543 , _OcculusionStrength);
				float smoothstepResult621_g543 = smoothstep( 0.0 , 0.8 , Detail1310_g543);
				float lerpResult488_g543 = lerp( 1.0 , smoothstepResult621_g543 , ( _DetailOcculusionScale * DetailMask130_g543 ));
				float smoothstepResult622_g543 = smoothstep( 0.0 , 0.8 , Detail2352_g543);
				float lerpResult494_g543 = lerp( 1.0 , smoothstepResult622_g543 , ( _DetailOcculusionScale2 * DetailMask235_g543 ));
				float lerpResult620_g543 = lerp( ( lerpResult483_g543 * lerpResult488_g543 * lerpResult494_g543 ) , 1.0 , WeatheringAlpha396_g543);
				float OcclusionMix509_g543 = saturate( lerpResult620_g543 );
				float OutAO1688 = OcclusionMix509_g543;
				float occlusion306_g458 = OutAO1688;
				half Roughness64_g458 = max( ( perceprualRoughness188_g458 * perceprualRoughness188_g458 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g458 = ( 0.5 / ( ( ( ( NdotV55_g458 * ( 1.0 - Roughness64_g458 ) ) + Roughness64_g458 ) * NdotL20_g458 ) + 1E-05 + ( NdotV55_g458 * ( Roughness64_g458 + ( ( 1.0 - Roughness64_g458 ) * NdotL20_g458 ) ) ) ) );
				float a266_g458 = ( Roughness64_g458 * Roughness64_g458 );
				float3 normalizeResult87_g458 = ASESafeNormalize( ( lightDir14_g458 + viewDir15_g458 ) );
				float dotResult88_g458 = dot( normalDir28_g458 , normalizeResult87_g458 );
				float NdotH90_g458 = saturate( dotResult88_g458 );
				float d99_g458 = ( ( ( ( NdotH90_g458 * a266_g458 ) - NdotH90_g458 ) * NdotH90_g458 ) + 1.0 );
				half GGXTerm43_g458 = ( ( ( 1.0 / UNITY_PI ) * a266_g458 ) / ( ( d99_g458 * d99_g458 ) + 1E-07 ) );
				float temp_output_36_0_g458 = ( SmithJointGGXVisibilityTerm42_g458 * GGXTerm43_g458 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g458 = sqrt( max( 0.0001 , temp_output_36_0_g458 ) );
				#else
				float staticSwitch5_g458 = temp_output_36_0_g458;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g458 = 0.0;
				#else
				float staticSwitch119_g458 = max( 0.0 , ( staticSwitch5_g458 * NdotL20_g458 ) );
				#endif
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1955_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float3 SpecColor140_g458 = OutSpecular1712;
				float SpecularTerm34_g458 = ( staticSwitch119_g458 * ( SpecColor140_g458.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g458 = ( ( pow( ( 1.0 - LdotH139_g458 ) , 5.0 ) * ( 1.0 - SpecColor140_g458 ) ) + SpecColor140_g458 );
				half metallic176_g458 = 0.0;
				half localOneMinusReflectivity176_g458 = OneMinusReflectivity( metallic176_g458 );
				half GrazingTerm163_g458 = saturate( ( smoothness169_g458 + ( 1.0 - localOneMinusReflectivity176_g458 ) ) );
				float3 temp_cast_4 = (GrazingTerm163_g458).xxx;
				float3 lerpResult159_g458 = lerp( SpecColor140_g458 , temp_cast_4 , pow( ( 1.0 - NdotV55_g458 ) , 5.0 ));
				half3 FresnelLerp165_g458 = lerpResult159_g458;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g458 = ( 1.0 - ( 0.28 * Roughness64_g458 * perceprualRoughness188_g458 ) );
				#else
				float staticSwitch183_g458 = ( 1.0 / ( ( Roughness64_g458 * Roughness64_g458 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g458 = staticSwitch183_g458;
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
				Unity_GlossyEnvironmentData g299_g458 = UnityGlossyEnvironmentSetup( smoothness169_g458, ase_worldViewDir, normalDir28_g458, float3(0,0,0));
				float3 indirectSpecular299_g458 = UnityGI_IndirectSpecular( data, occlusion306_g458, normalDir28_g458, g299_g458 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g458 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g458 = ( FresnelLerp165_g458 * SurfaceReduction182_g458 * indirectSpecular299_g458 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g458 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g458 = staticSwitch313_g458;
				#endif
				float EmissionMask799_g543 = tex2DNode532_g543.g;
				float3 CLEANCOLOR838_g543 = lerpResult815_g543;
				#ifdef _EMISSIONCOLORTEXBASE_ON
				float3 staticSwitch837_g543 = CLEANCOLOR838_g543;
				#else
				float3 staticSwitch837_g543 = (_EmissionColor).rgb;
				#endif
				float2 appendResult842_g543 = (float2(_UVScroll.x , _UVScroll.y));
				float2 appendResult848_g543 = (float2(_UVScroll.z , _UVScroll.w));
				float2 texCoord840_g543 = i.ase_texcoord1.xy * appendResult842_g543 + float2( 0,0 );
				float2 panner841_g543 = ( _Time.y * ( appendResult842_g543 * appendResult848_g543 ) + texCoord840_g543);
				float cos850_g543 = cos( ( _UVScrollRotator * UNITY_PI ) );
				float sin850_g543 = sin( ( _UVScrollRotator * UNITY_PI ) );
				float2 rotator850_g543 = mul( panner841_g543 - float2( 0.5,0.5 ) , float2x2( cos850_g543 , -sin850_g543 , sin850_g543 , cos850_g543 )) + float2( 0.5,0.5 );
				float WeatheringBumpMask718_g543 = tex2DNode177_g543.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g543 * staticSwitch837_g543 * _EmissionStrength * SAMPLE_TEXTURE2D( _EffectMap, sampler_MainTex, rotator850_g543 ).r ) + ( ( WeatheringAlpha2466_g543 * WeatheringBumpMask718_g543 ) * _WeatheringEmission ) );
				float3 tanNormal27_g538 = OutNormal1684;
				float3 worldNormal27_g538 = float3(dot(tanToWorld0,tanNormal27_g538), dot(tanToWorld1,tanNormal27_g538), dot(tanToWorld2,tanNormal27_g538));
				float3 normalizeResult61_g538 = normalize( worldNormal27_g538 );
				float dotResult20_g538 = dot( ase_worldViewDir , -( ( normalizeResult61_g538 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float Thickness507_g543 = tex2DNode532_g543.b;
				float th1788 = Thickness507_g543;
				float temp_output_59_0_g538 = ( _Translucency * th1788 );
				float3 lerpResult39_g538 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 temp_output_6_0_g538 = OutAlbedo1683;
				UnityGIInput data15_g538;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g538 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g538
				data15_g538.lightmapUV = i.ase_lmap;
				#endif //dylm15_g538
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g538
				data15_g538.ambient = i.ase_sh;
				#endif //fsh15_g538
				UnityGI gi15_g538 = UnityGI_Base(data15_g538, 1, normalizeResult61_g538);
				
				float clampResult780_g543 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g543 = tex2DNode196_g543.b;
				float AlphaInput195_g543 = tex2DNode576_g543.a;
				float OutOp1691 = ( step( pow( ( 1.0 - clampResult780_g543 ) , 0.2 ) , pow( TearingsMask340_g543 , 0.5 ) ) * AlphaInput195_g543 );
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g486 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g486 = (int)(temp_output_1_0_g486).x;
				int y9_g486 = (int)(temp_output_1_0_g486).y;
				float localgetInterleavedGradientNoise8Bit9_g486 = getInterleavedGradientNoise8Bit9_g486( x9_g486 , y9_g486 );
				float3 tanNormal1968 = NormalFace1945;
				float3 worldNormal1968 = float3(dot(tanToWorld0,tanNormal1968), dot(tanToWorld1,tanNormal1968), dot(tanToWorld2,tanNormal1968));
				float fresnelNdotV1964 = dot( worldNormal1968, ase_worldViewDir );
				float fresnelNode1964 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV1964, _FresnelPower ) );
				float OccAlpha219_g543 = tex2DNode196_g543.a;
				float OutAlpha1871 = saturate( ( ( AlphaInput195_g543 * _AlphaMaster * saturate( pow( OccAlpha219_g543 , ( _WetAlpha * ExGloss298_g543 ) ) ) ) + WeatheringAlpha2466_g543 ) );
				float temp_output_1972_0 = saturate( ( fresnelNode1964 + OutAlpha1871 ) );
				float2 temp_output_1_0_g485 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g485 = temp_output_1_0_g485;
				float mulTime15_g485 = _Time.y * 60.0;
				float iFrame12_g485 = mulTime15_g485;
				float localIGNAnimated12_g485 = IGNAnimated12_g485( uv12_g485 , iFrame12_g485 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch1888 = step( localIGNAnimated12_g485 , temp_output_1972_0 );
				#else
				float staticSwitch1888 = step( localgetInterleavedGradientNoise8Bit9_g486 , temp_output_1972_0 );
				#endif
				clip( ( OutOp1691 * staticSwitch1888 ) - _Cutoff);
				float Clip1873 = 1.0;
				
				
				outColor = ( ( ( OutAlbedo1683 * ( ( Diffuseterm281_g458 * lightAtten296_g458 ) + ( gi203_g458.indirect.diffuse * occlusion306_g458 ) ) ) + ( SpecularTerm34_g458 * lightAtten296_g458 * FresnelTerm130_g458 ) + staticSwitch305_g458 ) + OutEmission1685 + ( ( ( pow( saturate( dotResult20_g538 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g538 * lerpResult39_g538 * temp_output_6_0_g538 ) + ( ( gi15_g538.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g538 * temp_output_6_0_g538 * lerpResult39_g538 ) ) );
				outAlpha = Clip1873;
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
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_ON
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
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
			uniform float _CullMode;
			uniform float _DetailGlossScale;
			uniform float _WetGlossSplats;
			uniform float _WeatheringRange3;
			uniform float _WeatheringRange2;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float4 _WetUV;
			uniform float _CarvatureStrength;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			uniform float4 _WeatheringAlbedo;
			uniform float _DetailNormalMapScale;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _BaseColor;
			uniform float _WetBumpOffset;
			uniform float _WetGlossBase;
			uniform float _DetailUV2Rotator;
			uniform float2 _DetailUV2;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WeatheringAll;
			uniform float _DetailUVRotator;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float _DetailGlossScale2;
			uniform float _WeatheringUVSeed;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WeatheringGloss;
			uniform float4 _Color4;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailMetallicScale;
			uniform float _WetAlpha;
			uniform float _AlphaEx;
			uniform float _AlphaMaster;
			uniform float _UVScrollRotator;
			uniform float4 _UVScroll;
			uniform float4 _EmissionColor;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			SamplerState sampler_linear_repeat;
			SamplerState sampler_trilinear_repeat;
			uniform float _MetallicMask;
			uniform float _MetallicMask4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			SamplerState sampler_SpecularMap;
			uniform float _Roughness;
			uniform float _Roughness4;
			uniform float _Glossiness4;
			uniform float _NormalBackDirInvert;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
			uniform float _WeatheringEmission;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
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
			
			float3 GI2_g537( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float3 GI2_g464( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float getInterleavedGradientNoise8Bit9_g486( int x, int y )
			{
				return frac(52.9829189*frac(0.06711056*x + 0.00583715*y));
			}
			
			float IGNAnimated12_g485( float2 uv, float iFrame )
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
				float2 uv_MainTex576_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g543 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g543 );
				float2 uv_ColorMask304_g543 = i.ase_texcoord1.xy;
				float ColorMask4347_g543 = SAMPLE_TEXTURE2D( _ColorMask, sampler_linear_repeat, uv_ColorMask304_g543 ).b;
				float3 lerpResult815_g543 = lerp( (tex2DNode576_g543).rgb , (_Color4).rgb , ( _Color4.a * ColorMask4347_g543 ));
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap196_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g543 );
				float Carvature270_g543 = tex2DNode196_g543.r;
				float3 lerpResult331_g543 = lerp( ( lerpResult815_g543 * (_BaseColor).rgb ) , temp_cast_0 , ( Carvature270_g543 * _CarvatureStrength ));
				float WetAlbedoOffset311_g543 = _WetAlbedoOffset;
				float3 temp_output_382_0_g543 = ( lerpResult331_g543 * WetAlbedoOffset311_g543 );
				float WetSplatsAlbedoOffset349_g543 = _WetSplatsAlbedoOffset;
				float3 lerpResult411_g543 = lerp( ( temp_output_382_0_g543 * WetSplatsAlbedoOffset349_g543 ) , (_WetColor).rgb , _WetColor.a);
				float ExGloss298_g543 = _ExGloss;
				float2 appendResult657_g543 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g543 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g543 = i.ase_texcoord1.xy * appendResult657_g543 + appendResult658_g543;
				float2 WetStrUV669_g543 = texCoord660_g543;
				float WetStr661_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g543 ).g;
				float smoothstepResult651_g543 = smoothstep( ( 1.0 - ExGloss298_g543 ) , 1.0 , WetStr661_g543);
				float StreaksAlpha662_g543 = smoothstepResult651_g543;
				float WetOpStreaks673_g543 = _WetOpacityStreaks;
				float2 appendResult287_g543 = (float2(_WetUV.x , _WetUV.y));
				float2 appendResult285_g543 = (float2(_WetUV.z , _WetUV.w));
				float2 texCoord317_g543 = i.ase_texcoord1.xy * appendResult287_g543 + appendResult285_g543;
				float2 WetUV578_g543 = texCoord317_g543;
				float WetSplats369_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetUV578_g543 ).b;
				float SplatsOp363_g543 = _WetOpacitySplats;
				float3 lerpResult460_g543 = lerp( temp_output_382_0_g543 , lerpResult411_g543 , ( ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ) + ( WetSplats369_g543 * SplatsOp363_g543 ) ));
				float2 uv_OcclusionMap429_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode429_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_MainTex, uv_OcclusionMap429_g543 );
				float3 WetBodyOffset422_g543 = (_BodyColor1).rgb;
				float bodycoloralpha417_g543 = _BodyColor1.a;
				float3 lerpResult480_g543 = lerp( lerpResult460_g543 , ( tex2DNode429_g543.a == 1.0 ? lerpResult460_g543 : WetBodyOffset422_g543 ) , ( bodycoloralpha417_g543 * ( 1.0 - tex2DNode429_g543.a ) ));
				float3 lerpResult501_g543 = lerp( lerpResult331_g543 , lerpResult480_g543 , ExGloss298_g543);
				float2 appendResult115_g543 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g543 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_1 = (_WeatheringUVSeed).xx;
				float dotResult731_g543 = dot( temp_cast_1 , float2( 12.9898,78.233 ) );
				float lerpResult737_g543 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g543 ) * 43758.55 ) ));
				float2 texCoord127_g543 = i.ase_texcoord1.xy * appendResult115_g543 + ( appendResult110_g543 + lerpResult737_g543 );
				float2 WeatheringUV144_g543 = texCoord127_g543;
				float4 tex2DNode177_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float2 uv_WeatheringMask100_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g543 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g543 );
				float clampResult161_g543 = clamp( ( tex2DNode100_g543.r - tex2DNode100_g543.g ) , 0.0 , 1.0 );
				float WMask1183_g543 = ( clampResult161_g543 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g543 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g543 = clamp( ( ( tex2DNode177_g543.g * WMask1183_g543 ) - RangeCut1208_g543 ) , 0.0 , 1.0 );
				float clampResult159_g543 = clamp( ( tex2DNode100_g543.g - tex2DNode100_g543.r ) , 0.0 , 1.0 );
				float WMask2192_g543 = ( clampResult159_g543 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g543 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g543 = clamp( ( ( tex2DNode177_g543.g * WMask2192_g543 ) - RangeCut2211_g543 ) , 0.0 , 1.0 );
				float WMask3190_g543 = ( tex2DNode100_g543.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g543 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g543 = clamp( ( ( tex2DNode177_g543.g * WMask3190_g543 ) - RangeCut3210_g543 ) , 0.0 , 1.0 );
				float WMask4180_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g543 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g543 = clamp( ( ( tex2DNode177_g543.g * WMask4180_g543 ) - RangeCut4205_g543 ) , 0.0 , 1.0 );
				float WMask5184_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g543 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g543 = clamp( ( ( tex2DNode177_g543.g * WMask5184_g543 ) - RangeCut5201_g543 ) , 0.0 , 1.0 );
				float WMaskAll165_g543 = ceil( _WeatheringAll );
				float RangeCutAll171_g543 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g543 = clamp( ( ( tex2DNode177_g543.g * WMaskAll165_g543 ) - RangeCutAll171_g543 ) , 0.0 , 1.0 );
				float clampResult299_g543 = clamp( ( clampResult253_g543 + clampResult251_g543 + clampResult254_g543 + clampResult259_g543 + clampResult261_g543 + clampResult215_g543 ) , 0.0 , 1.0 );
				float lerpResult313_g543 = lerp( clampResult299_g543 , clampResult215_g543 , WMaskAll165_g543);
				float WeatheringAlpha2466_g543 = lerpResult313_g543;
				float3 lerpResult505_g543 = lerp( lerpResult501_g543 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2466_g543 * 0.282353 ));
				float3 DiffuseMix511_g543 = lerpResult505_g543;
				float3 temp_output_1955_0 = DiffuseMix511_g543;
				Gradient gradient37_g456 = NewGradient( 0, 6, 2, float4( 1, 0, 0, 0.02058442 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5794156 ), float4( 0.1839623, 0.3384229, 1, 0.80589 ), float4( 0.9987321, 0, 1, 1 ), 0, 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
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
				float2 uv_BumpMap402_g543 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g543 = _WetBumpOffset;
				float2 UVScale107_g543 = _UVScalePattern;
				float2 texCoord152_g543 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g543 ) + float2( 0,0 );
				float cos162_g543 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g543 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g543 = mul( texCoord152_g543 - float2( 0.5,0.5 ) , float2x2( cos162_g543 , -sin162_g543 , sin162_g543 , cos162_g543 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g543 = rotator162_g543;
				float2 break194_g543 = Detail1UV173_g543;
				float saferPower168_g543 = abs( 0.25 );
				float temp_output_186_0_g543 = ( pow( saferPower168_g543 , 3.0 ) * 0.2 );
				float2 appendResult218_g543 = (float2(( break194_g543.x + temp_output_186_0_g543 ) , break194_g543.y));
				float4 tex2DNode243_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 );
				float2 uv_DetailMask25_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g543 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g543 );
				float DetailMask130_g543 = tex2DNode25_g543.r;
				float temp_output_255_0_g543 = ( DetailMask130_g543 * _DetailNormalMapScale );
				float temp_output_283_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult300_g543 = (float3(1.0 , 0.0 , temp_output_283_0_g543));
				float2 appendResult222_g543 = (float2(break194_g543.x , ( break194_g543.y + temp_output_186_0_g543 )));
				float temp_output_268_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult297_g543 = (float3(0.0 , 1.0 , temp_output_268_0_g543));
				float3 normalizeResult348_g543 = normalize( cross( appendResult300_g543 , appendResult297_g543 ) );
				float3 DetailNormal1368_g543 = normalizeResult348_g543;
				float2 texCoord16_g543 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g543 ) + float2( 0,0 );
				float cos19_g543 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g543 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g543 = mul( texCoord16_g543 - float2( 0.5,0.5 ) , float2x2( cos19_g543 , -sin19_g543 , sin19_g543 , cos19_g543 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g543 = rotator19_g543;
				float2 break24_g543 = Detail2UV20_g543;
				float saferPower22_g543 = abs( 0.25 );
				float temp_output_26_0_g543 = ( pow( saferPower22_g543 , 3.0 ) * 0.2 );
				float2 appendResult34_g543 = (float2(( break24_g543.x + temp_output_26_0_g543 ) , break24_g543.y));
				float4 tex2DNode38_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 );
				float DetailMask235_g543 = tex2DNode25_g543.g;
				float temp_output_43_0_g543 = ( DetailMask235_g543 * _DetailNormalMapScale2 );
				float temp_output_50_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult58_g543 = (float3(1.0 , 0.0 , temp_output_50_0_g543));
				float2 appendResult33_g543 = (float2(break24_g543.x , ( break24_g543.y + temp_output_26_0_g543 )));
				float temp_output_53_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult57_g543 = (float3(0.0 , 1.0 , temp_output_53_0_g543));
				float3 normalizeResult69_g543 = normalize( cross( appendResult58_g543 , appendResult57_g543 ) );
				float3 DetailNormal276_g543 = normalizeResult69_g543;
				float2 break547_g543 = WetStrUV669_g543;
				float temp_output_541_0_g543 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g543 = (float2(( break547_g543.x + temp_output_541_0_g543 ) , break547_g543.y));
				float4 tex2DNode515_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g543 );
				float3 appendResult523_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float2 appendResult534_g543 = (float2(break547_g543.x , ( break547_g543.y + temp_output_541_0_g543 )));
				float3 appendResult542_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float3 normalizeResult524_g543 = normalize( cross( appendResult523_g543 , appendResult542_g543 ) );
				float3 WetnessNormal545_g543 = normalizeResult524_g543;
				float3 lerpResult98_g543 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g543 ), ( _Float0 + ( WetBumpOffset303_g543 * ExGloss298_g543 ) ) ) , DetailNormal1368_g543 ) , DetailNormal276_g543 ) , WetnessNormal545_g543 , ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ));
				float2 break223_g543 = WeatheringUV144_g543;
				float temp_output_224_0_g543 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g543 = (float2(( break223_g543.x + temp_output_224_0_g543 ) , break223_g543.y));
				float4 tex2DNode266_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float3 appendResult344_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float2 appendResult252_g543 = (float2(break223_g543.x , ( break223_g543.y + temp_output_224_0_g543 )));
				float3 appendResult339_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float3 normalizeResult398_g543 = normalize( cross( appendResult344_g543 , appendResult339_g543 ) );
				float3 WeatheringBump425_g543 = normalizeResult398_g543;
				float clampResult373_g543 = clamp( ( lerpResult313_g543 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g543 = clampResult373_g543;
				float3 lerpResult87_g543 = lerp( lerpResult98_g543 , WeatheringBump425_g543 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 ).b * WeatheringAlpha396_g543 ));
				float3 normalizeResult564_g543 = normalize( lerpResult87_g543 );
				float3 temp_output_1955_557 = normalizeResult564_g543;
				float dotResult7_g456 = dot( ase_tanViewDir , temp_output_1955_557 );
				float3 temp_output_12_0_g456 = (SampleGradient( gradient37_g456, dotResult7_g456 )).rgb;
				float temp_output_10_0_g456 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g456 = cos( temp_output_10_0_g456 );
				float3 _k7 = float3(0.57735,0.57735,0.57735);
				float dotResult14_g456 = dot( _k7 , temp_output_12_0_g456 );
				float3 temp_output_32_0_g456 = ( ( ( ( ( ( temp_output_12_0_g456 * temp_output_13_0_g456 ) + ( cross( _k7 , temp_output_12_0_g456 ) * sin( temp_output_10_0_g456 ) ) + ( _k7 * dotResult14_g456 * ( 1.0 - temp_output_13_0_g456 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g456 = dot( temp_output_32_0_g456 , float3(0.39,0.59,0.11) );
				float3 temp_cast_2 = (dotResult34_g456).xxx;
				float3 lerpResult35_g456 = lerp( temp_cast_2 , temp_output_32_0_g456 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1730_0 = lerpResult35_g456;
				float3 blendOpSrc1717 = temp_output_1730_0;
				float3 blendOpDest1717 = temp_output_1955_0;
				float2 uv_MetallicGlossMap532_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode532_g543 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap532_g543 );
				float MetallicGlossMask800_g543 = tex2DNode532_g543.r;
				float lerpResult399_g543 = lerp( 1.0 , MetallicGlossMask800_g543 , _MetallicMask);
				float2 uv_DetailMainTex528_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode528_g543 = SAMPLE_TEXTURE2D( _DetailMainTex, sampler_MainTex, uv_DetailMainTex528_g543 );
				float MainMetallic797_g543 = tex2DNode528_g543.r;
				float lerpResult395_g543 = lerp( 1.0 , MetallicGlossMask800_g543 , _MetallicMask4);
				float lerpResult462_g543 = lerp( ( lerpResult399_g543 * MainMetallic797_g543 ) , ( lerpResult395_g543 * _Metallic4 ) , ColorMask4347_g543);
				float Detail1310_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 ).r;
				float Detail2352_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 ).r;
				float lerpResult495_g543 = lerp( saturate( ( ( lerpResult462_g543 - ( ( 1.0 - Detail1310_g543 ) * ( _DetailMetallicScale * DetailMask130_g543 ) ) ) - ( ( 1.0 - Detail2352_g543 ) * ( _DetailMetallicScale2 * DetailMask235_g543 ) ) ) ) , 0.0 , WeatheringAlpha2466_g543);
				float temp_output_1955_559 = saturate( lerpResult495_g543 );
				float3 lerpBlendMode1717 = lerp(blendOpDest1717,( blendOpSrc1717 * blendOpDest1717 ),temp_output_1955_559);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1718 = ( saturate( lerpBlendMode1717 ));
				#else
				float3 staticSwitch1718 = temp_output_1955_0;
				#endif
				half3 specColor1642 = (0).xxx;
				half oneMinusReflectivity1642 = 0;
				half3 diffuseAndSpecularFromMetallic1642 = DiffuseAndSpecularFromMetallic(staticSwitch1718,temp_output_1955_559,specColor1642,oneMinusReflectivity1642);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1732 = temp_output_1955_0;
				#else
				float3 staticSwitch1732 = diffuseAndSpecularFromMetallic1642;
				#endif
				float3 OutAlbedo1683 = staticSwitch1732;
				float3 temp_output_3_0_g463 = OutAlbedo1683;
				float OcclusionG832_g543 = tex2DNode196_g543.g;
				float lerpResult483_g543 = lerp( 1.0 , OcclusionG832_g543 , _OcculusionStrength);
				float smoothstepResult621_g543 = smoothstep( 0.0 , 0.8 , Detail1310_g543);
				float lerpResult488_g543 = lerp( 1.0 , smoothstepResult621_g543 , ( _DetailOcculusionScale * DetailMask130_g543 ));
				float smoothstepResult622_g543 = smoothstep( 0.0 , 0.8 , Detail2352_g543);
				float lerpResult494_g543 = lerp( 1.0 , smoothstepResult622_g543 , ( _DetailOcculusionScale2 * DetailMask235_g543 ));
				float lerpResult620_g543 = lerp( ( lerpResult483_g543 * lerpResult488_g543 * lerpResult494_g543 ) , 1.0 , WeatheringAlpha396_g543);
				float OcclusionMix509_g543 = saturate( lerpResult620_g543 );
				float OutAO1688 = OcclusionMix509_g543;
				float temp_output_4_0_g463 = OutAO1688;
				float4 appendResult2_g463 = (float4(temp_output_3_0_g463 , temp_output_4_0_g463));
				
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1739 = temp_output_1730_0;
				#else
				float3 staticSwitch1739 = (_SpecColor).rgb;
				#endif
				float2 uv_SpecularMap1755 = i.ase_texcoord1.xy;
				half3 specColor1740 = (0).xxx;
				half oneMinusReflectivity1740 = 0;
				half3 diffuseAndSpecularFromMetallic1740 = DiffuseAndSpecularFromMetallic(( staticSwitch1739 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap1755 )).rgb ),temp_output_1955_559,specColor1740,oneMinusReflectivity1740);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1731 = specColor1740;
				#else
				float3 staticSwitch1731 = specColor1642;
				#endif
				float3 OutSpecular1712 = staticSwitch1731;
				float mgAlpha806_g543 = tex2DNode532_g543.a;
				float lerpResult353_g543 = lerp( 1.0 , mgAlpha806_g543 , _Roughness);
				float MainGlossiness795_g543 = tex2DNode528_g543.b;
				float lerpResult336_g543 = lerp( 1.0 , mgAlpha806_g543 , _Roughness4);
				float lerpResult384_g543 = lerp( ( lerpResult353_g543 * MainGlossiness795_g543 ) , ( lerpResult336_g543 * _Glossiness4 ) , ColorMask4347_g543);
				float WetGlossBase397_g543 = _WetGlossBase;
				float lerpResult470_g543 = lerp( saturate( ( ( lerpResult384_g543 - ( ( 1.0 - Detail1310_g543 ) * ( _DetailGlossScale * DetailMask130_g543 ) ) ) - ( ( 1.0 - Detail2352_g543 ) * ( _DetailGlossScale2 * DetailMask235_g543 ) ) ) ) , mgAlpha806_g543 , ( WetGlossBase397_g543 * ExGloss298_g543 ));
				float SplatsGloss407_g543 = _WetGlossSplats;
				float lerpResult664_g543 = lerp( lerpResult470_g543 , SplatsGloss407_g543 , ( SplatsOp363_g543 * ExGloss298_g543 * WetSplats369_g543 ));
				float lerpResult649_g543 = lerp( lerpResult664_g543 , 0.87 , ( WetOpStreaks673_g543 * smoothstepResult651_g543 ));
				float lerpResult499_g543 = lerp( lerpResult649_g543 , _WeatheringGloss , WeatheringAlpha396_g543);
				float GlossinessFinal513_g543 = saturate( lerpResult499_g543 );
				float OutSmoothness1687 = GlossinessFinal513_g543;
				float4 appendResult5_g463 = (float4(OutSpecular1712 , OutSmoothness1687));
				
				float3 OutNormal1684 = temp_output_1955_557;
				float3 switchResult1939 = (((ase_vface>0)?(OutNormal1684):(-OutNormal1684)));
				float3 NormalFace1945 = ( _NormalBackDirInvert == 1.0 ? switchResult1939 : OutNormal1684 );
				float3 tanNormal11_g463 = NormalFace1945;
				float3 worldNormal11_g463 = float3(dot(tanToWorld0,tanNormal11_g463), dot(tanToWorld1,tanNormal11_g463), dot(tanToWorld2,tanNormal11_g463));
				float3 normalizeResult21_g463 = normalize( worldNormal11_g463 );
				float4 appendResult13_g463 = (float4(( ( normalizeResult21_g463 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 tanNormal27_g536 = OutNormal1684;
				float3 worldNormal27_g536 = float3(dot(tanToWorld0,tanNormal27_g536), dot(tanToWorld1,tanNormal27_g536), dot(tanToWorld2,tanNormal27_g536));
				float3 normalizeResult61_g536 = normalize( worldNormal27_g536 );
				float3 normal2_g537 = normalizeResult61_g536;
				float3 localGI2_g537 = GI2_g537( normal2_g537 );
				float3 temp_output_69_15_g536 = localGI2_g537;
				float Thickness507_g543 = tex2DNode532_g543.b;
				float th1788 = Thickness507_g543;
				float temp_output_59_0_g536 = ( _Translucency * th1788 );
				float3 temp_output_6_0_g536 = OutAlbedo1683;
				float EmissionMask799_g543 = tex2DNode532_g543.g;
				float3 CLEANCOLOR838_g543 = lerpResult815_g543;
				#ifdef _EMISSIONCOLORTEXBASE_ON
				float3 staticSwitch837_g543 = CLEANCOLOR838_g543;
				#else
				float3 staticSwitch837_g543 = (_EmissionColor).rgb;
				#endif
				float2 appendResult842_g543 = (float2(_UVScroll.x , _UVScroll.y));
				float2 appendResult848_g543 = (float2(_UVScroll.z , _UVScroll.w));
				float2 texCoord840_g543 = i.ase_texcoord1.xy * appendResult842_g543 + float2( 0,0 );
				float2 panner841_g543 = ( _Time.y * ( appendResult842_g543 * appendResult848_g543 ) + texCoord840_g543);
				float cos850_g543 = cos( ( _UVScrollRotator * UNITY_PI ) );
				float sin850_g543 = sin( ( _UVScrollRotator * UNITY_PI ) );
				float2 rotator850_g543 = mul( panner841_g543 - float2( 0.5,0.5 ) , float2x2( cos850_g543 , -sin850_g543 , sin850_g543 , cos850_g543 )) + float2( 0.5,0.5 );
				float WeatheringBumpMask718_g543 = tex2DNode177_g543.b;
				float3 OutEmission1685 = ( ( EmissionMask799_g543 * staticSwitch837_g543 * _EmissionStrength * SAMPLE_TEXTURE2D( _EffectMap, sampler_MainTex, rotator850_g543 ).r ) + ( ( WeatheringAlpha2466_g543 * WeatheringBumpMask718_g543 ) * _WeatheringEmission ) );
				float3 normal2_g464 = normalizeResult21_g463;
				float3 localGI2_g464 = GI2_g464( normal2_g464 );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g463 = ( ( ( ( temp_output_69_15_g536 * _TransAmbient ) * temp_output_59_0_g536 * temp_output_6_0_g536 ) + OutEmission1685 ) + ( temp_output_3_0_g463 * localGI2_g464 * temp_output_4_0_g463 ) );
				#else
				float3 staticSwitch16_g463 = exp2( -( ( ( ( temp_output_69_15_g536 * _TransAmbient ) * temp_output_59_0_g536 * temp_output_6_0_g536 ) + OutEmission1685 ) + ( temp_output_3_0_g463 * localGI2_g464 * temp_output_4_0_g463 ) ) );
				#endif
				float4 appendResult19_g463 = (float4(staticSwitch16_g463 , 1.0));
				
				float clampResult780_g543 = clamp( _AlphaEx , 0.2 , 1.0 );
				float TearingsMask340_g543 = tex2DNode196_g543.b;
				float AlphaInput195_g543 = tex2DNode576_g543.a;
				float OutOp1691 = ( step( pow( ( 1.0 - clampResult780_g543 ) , 0.2 ) , pow( TearingsMask340_g543 , 0.5 ) ) * AlphaInput195_g543 );
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g486 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g486 = (int)(temp_output_1_0_g486).x;
				int y9_g486 = (int)(temp_output_1_0_g486).y;
				float localgetInterleavedGradientNoise8Bit9_g486 = getInterleavedGradientNoise8Bit9_g486( x9_g486 , y9_g486 );
				float3 tanNormal1968 = NormalFace1945;
				float3 worldNormal1968 = float3(dot(tanToWorld0,tanNormal1968), dot(tanToWorld1,tanNormal1968), dot(tanToWorld2,tanNormal1968));
				float fresnelNdotV1964 = dot( worldNormal1968, ase_worldViewDir );
				float fresnelNode1964 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV1964, _FresnelPower ) );
				float OccAlpha219_g543 = tex2DNode196_g543.a;
				float OutAlpha1871 = saturate( ( ( AlphaInput195_g543 * _AlphaMaster * saturate( pow( OccAlpha219_g543 , ( _WetAlpha * ExGloss298_g543 ) ) ) ) + WeatheringAlpha2466_g543 ) );
				float temp_output_1972_0 = saturate( ( fresnelNode1964 + OutAlpha1871 ) );
				float2 temp_output_1_0_g485 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g485 = temp_output_1_0_g485;
				float mulTime15_g485 = _Time.y * 60.0;
				float iFrame12_g485 = mulTime15_g485;
				float localIGNAnimated12_g485 = IGNAnimated12_g485( uv12_g485 , iFrame12_g485 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch1888 = step( localIGNAnimated12_g485 , temp_output_1972_0 );
				#else
				float staticSwitch1888 = step( localgetInterleavedGradientNoise8Bit9_g486 , temp_output_1972_0 );
				#endif
				clip( ( OutOp1691 * staticSwitch1888 ) - _Cutoff);
				float Clip1873 = 1.0;
				
				
				outGBuffer0 = appendResult2_g463;
				outGBuffer1 = appendResult5_g463;
				outGBuffer2 = appendResult13_g463;
				outGBuffer3 = appendResult19_g463;
				float outAlpha = Clip1873;
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
			Cull Back
			ColorMask RGBA
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
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
			#define ASE_NEEDS_VERT_NORMAL
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_ON
			#pragma shader_feature _SHADERTYPE_CLOTHING
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#endif//ASE Sampling Macros
			

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
			uniform float _CullMode;
			uniform float _DetailGlossScale;
			uniform float _WetGlossSplats;
			uniform float _WeatheringRange3;
			uniform float _WeatheringRange2;
			uniform float4 _WetStreaksUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMap);
			SamplerState sampler_WeatheringMap;
			uniform float4 _WetUV;
			uniform float _CarvatureStrength;
			uniform float _GlossinessReflection;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WeatheringMask);
			SamplerState sampler_WeatheringMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _Float0;
			uniform float _WetSplatsAlbedoOffset;
			uniform float4 _BodyColor1;
			uniform float _Metallic4;
			uniform float _WetAlbedoOffset;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			uniform float4 _WeatheringAlbedo;
			uniform float _DetailNormalMapScale;
			uniform float _DetailNormalMapScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			uniform float4 _BaseColor;
			uniform float _WetBumpOffset;
			uniform float _WetGlossBase;
			uniform float _DetailUV2Rotator;
			uniform float2 _DetailUV2;
			uniform float _WetOpacityStreaks;
			uniform float4 _WetColor;
			uniform float2 _UVScalePattern;
			uniform float _WeatheringRange5;
			uniform float _WeatheringRange4;
			uniform float _WeatheringRange1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float _ExGloss;
			uniform float _WetOpacitySplats;
			uniform float2 _patternuvbase;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_WetnessMap);
			SamplerState sampler_WetnessMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float _WeatheringAll;
			uniform float _DetailUVRotator;
			uniform float4 _WeatheringUV;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMainTex);
			SamplerState sampler_DetailMainTex;
			uniform float _DetailGlossScale2;
			uniform float _WeatheringUVSeed;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			uniform float _WeatheringGloss;
			uniform float4 _Color4;
			uniform float _DetailMetallicScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float _DetailMetallicScale;
			uniform float _WetAlpha;
			uniform float _AlphaEx;
			uniform float _AlphaMaster;
			uniform float _UVScrollRotator;
			uniform float4 _UVScroll;
			uniform float4 _EmissionColor;
			uniform float _EmissionStrength;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_MetallicGlossMap;
			uniform float _NormalBackDirInvert;
			SamplerState sampler_trilinear_repeat;
			SamplerState sampler_linear_repeat;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
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
				float4 ase_tangent : TANGENT;
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
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i , FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif			
			) : SV_Target
			{
				float outAlpha;
				float clampResult780_g543 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap196_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode196_g543 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap196_g543 );
				float TearingsMask340_g543 = tex2DNode196_g543.b;
				float2 uv_MainTex576_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode576_g543 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex576_g543 );
				float AlphaInput195_g543 = tex2DNode576_g543.a;
				float OutOp1691 = ( step( pow( ( 1.0 - clampResult780_g543 ) , 0.2 ) , pow( TearingsMask340_g543 , 0.5 ) ) * AlphaInput195_g543 );
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap402_g543 = i.ase_texcoord1.xy;
				float WetBumpOffset303_g543 = _WetBumpOffset;
				float ExGloss298_g543 = _ExGloss;
				float2 UVScale107_g543 = _UVScalePattern;
				float2 texCoord152_g543 = i.ase_texcoord1.xy * ( _DetailUV * UVScale107_g543 ) + float2( 0,0 );
				float cos162_g543 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin162_g543 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator162_g543 = mul( texCoord152_g543 - float2( 0.5,0.5 ) , float2x2( cos162_g543 , -sin162_g543 , sin162_g543 , cos162_g543 )) + float2( 0.5,0.5 );
				float2 Detail1UV173_g543 = rotator162_g543;
				float2 break194_g543 = Detail1UV173_g543;
				float saferPower168_g543 = abs( 0.25 );
				float temp_output_186_0_g543 = ( pow( saferPower168_g543 , 3.0 ) * 0.2 );
				float2 appendResult218_g543 = (float2(( break194_g543.x + temp_output_186_0_g543 ) , break194_g543.y));
				float4 tex2DNode243_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV173_g543 );
				float2 uv_DetailMask25_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode25_g543 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask25_g543 );
				float DetailMask130_g543 = tex2DNode25_g543.r;
				float temp_output_255_0_g543 = ( DetailMask130_g543 * _DetailNormalMapScale );
				float temp_output_283_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult218_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult300_g543 = (float3(1.0 , 0.0 , temp_output_283_0_g543));
				float2 appendResult222_g543 = (float2(break194_g543.x , ( break194_g543.y + temp_output_186_0_g543 )));
				float temp_output_268_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult222_g543 ).g - tex2DNode243_g543.g ) * temp_output_255_0_g543 );
				float3 appendResult297_g543 = (float3(0.0 , 1.0 , temp_output_268_0_g543));
				float3 normalizeResult348_g543 = normalize( cross( appendResult300_g543 , appendResult297_g543 ) );
				float3 DetailNormal1368_g543 = normalizeResult348_g543;
				float2 texCoord16_g543 = i.ase_texcoord1.xy * ( _DetailUV2 * UVScale107_g543 ) + float2( 0,0 );
				float cos19_g543 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin19_g543 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator19_g543 = mul( texCoord16_g543 - float2( 0.5,0.5 ) , float2x2( cos19_g543 , -sin19_g543 , sin19_g543 , cos19_g543 )) + float2( 0.5,0.5 );
				float2 Detail2UV20_g543 = rotator19_g543;
				float2 break24_g543 = Detail2UV20_g543;
				float saferPower22_g543 = abs( 0.25 );
				float temp_output_26_0_g543 = ( pow( saferPower22_g543 , 3.0 ) * 0.2 );
				float2 appendResult34_g543 = (float2(( break24_g543.x + temp_output_26_0_g543 ) , break24_g543.y));
				float4 tex2DNode38_g543 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV20_g543 );
				float DetailMask235_g543 = tex2DNode25_g543.g;
				float temp_output_43_0_g543 = ( DetailMask235_g543 * _DetailNormalMapScale2 );
				float temp_output_50_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult34_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult58_g543 = (float3(1.0 , 0.0 , temp_output_50_0_g543));
				float2 appendResult33_g543 = (float2(break24_g543.x , ( break24_g543.y + temp_output_26_0_g543 )));
				float temp_output_53_0_g543 = ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult33_g543 ).g - tex2DNode38_g543.g ) * temp_output_43_0_g543 );
				float3 appendResult57_g543 = (float3(0.0 , 1.0 , temp_output_53_0_g543));
				float3 normalizeResult69_g543 = normalize( cross( appendResult58_g543 , appendResult57_g543 ) );
				float3 DetailNormal276_g543 = normalizeResult69_g543;
				float2 appendResult657_g543 = (float2(_WetStreaksUV.x , _WetStreaksUV.y));
				float2 appendResult658_g543 = (float2(_WetStreaksUV.z , _WetStreaksUV.w));
				float2 texCoord660_g543 = i.ase_texcoord1.xy * appendResult657_g543 + appendResult658_g543;
				float2 WetStrUV669_g543 = texCoord660_g543;
				float2 break547_g543 = WetStrUV669_g543;
				float temp_output_541_0_g543 = ( pow( 0.25 , 2.0 ) * 0.1 );
				float2 appendResult546_g543 = (float2(( break547_g543.x + temp_output_541_0_g543 ) , break547_g543.y));
				float4 tex2DNode515_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, WetStrUV669_g543 );
				float3 appendResult523_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_MainTex, appendResult546_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float2 appendResult534_g543 = (float2(break547_g543.x , ( break547_g543.y + temp_output_541_0_g543 )));
				float3 appendResult542_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WetnessMap, sampler_MainTex, appendResult534_g543 ).g - tex2DNode515_g543.g ) * 1.0 )));
				float3 normalizeResult524_g543 = normalize( cross( appendResult523_g543 , appendResult542_g543 ) );
				float3 WetnessNormal545_g543 = normalizeResult524_g543;
				float WetStr661_g543 = SAMPLE_TEXTURE2D( _WetnessMap, sampler_linear_repeat, WetStrUV669_g543 ).g;
				float smoothstepResult651_g543 = smoothstep( ( 1.0 - ExGloss298_g543 ) , 1.0 , WetStr661_g543);
				float StreaksAlpha662_g543 = smoothstepResult651_g543;
				float WetOpStreaks673_g543 = _WetOpacityStreaks;
				float3 lerpResult98_g543 = lerp( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap402_g543 ), ( _Float0 + ( WetBumpOffset303_g543 * ExGloss298_g543 ) ) ) , DetailNormal1368_g543 ) , DetailNormal276_g543 ) , WetnessNormal545_g543 , ( StreaksAlpha662_g543 * WetOpStreaks673_g543 ));
				float2 appendResult115_g543 = (float2(_WeatheringUV.x , _WeatheringUV.y));
				float2 appendResult110_g543 = (float2(_WeatheringUV.z , _WeatheringUV.w));
				float2 temp_cast_0 = (_WeatheringUVSeed).xx;
				float dotResult731_g543 = dot( temp_cast_0 , float2( 12.9898,78.233 ) );
				float lerpResult737_g543 = lerp( -10.0 , 10.0 , frac( ( sin( dotResult731_g543 ) * 43758.55 ) ));
				float2 texCoord127_g543 = i.ase_texcoord1.xy * appendResult115_g543 + ( appendResult110_g543 + lerpResult737_g543 );
				float2 WeatheringUV144_g543 = texCoord127_g543;
				float2 break223_g543 = WeatheringUV144_g543;
				float temp_output_224_0_g543 = ( pow( 0.2 , 2.0 ) * 0.1 );
				float2 appendResult258_g543 = (float2(( break223_g543.x + temp_output_224_0_g543 ) , break223_g543.y));
				float4 tex2DNode266_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float3 appendResult344_g543 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult258_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float2 appendResult252_g543 = (float2(break223_g543.x , ( break223_g543.y + temp_output_224_0_g543 )));
				float3 appendResult339_g543 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, appendResult252_g543 ).b - tex2DNode266_g543.b ) * 2.0 )));
				float3 normalizeResult398_g543 = normalize( cross( appendResult344_g543 , appendResult339_g543 ) );
				float3 WeatheringBump425_g543 = normalizeResult398_g543;
				float4 tex2DNode177_g543 = SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 );
				float2 uv_WeatheringMask100_g543 = i.ase_texcoord1.xy;
				float4 tex2DNode100_g543 = SAMPLE_TEXTURE2D( _WeatheringMask, sampler_WeatheringMask, uv_WeatheringMask100_g543 );
				float clampResult161_g543 = clamp( ( tex2DNode100_g543.r - tex2DNode100_g543.g ) , 0.0 , 1.0 );
				float WMask1183_g543 = ( clampResult161_g543 * ceil( _WeatheringRange1 ) );
				float RangeCut1208_g543 = (0.7 + (_WeatheringRange1 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult253_g543 = clamp( ( ( tex2DNode177_g543.g * WMask1183_g543 ) - RangeCut1208_g543 ) , 0.0 , 1.0 );
				float clampResult159_g543 = clamp( ( tex2DNode100_g543.g - tex2DNode100_g543.r ) , 0.0 , 1.0 );
				float WMask2192_g543 = ( clampResult159_g543 * ceil( _WeatheringRange2 ) );
				float RangeCut2211_g543 = (0.7 + (_WeatheringRange2 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult251_g543 = clamp( ( ( tex2DNode177_g543.g * WMask2192_g543 ) - RangeCut2211_g543 ) , 0.0 , 1.0 );
				float WMask3190_g543 = ( tex2DNode100_g543.b * ceil( _WeatheringRange3 ) );
				float RangeCut3210_g543 = (0.7 + (_WeatheringRange3 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult254_g543 = clamp( ( ( tex2DNode177_g543.g * WMask3190_g543 ) - RangeCut3210_g543 ) , 0.0 , 1.0 );
				float WMask4180_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.g ) * ceil( _WeatheringRange4 ) );
				float RangeCut4205_g543 = (0.7 + (_WeatheringRange4 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult259_g543 = clamp( ( ( tex2DNode177_g543.g * WMask4180_g543 ) - RangeCut4205_g543 ) , 0.0 , 1.0 );
				float WMask5184_g543 = ( ( tex2DNode100_g543.r * tex2DNode100_g543.b ) * ceil( _WeatheringRange5 ) );
				float RangeCut5201_g543 = (0.7 + (_WeatheringRange5 - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult261_g543 = clamp( ( ( tex2DNode177_g543.g * WMask5184_g543 ) - RangeCut5201_g543 ) , 0.0 , 1.0 );
				float WMaskAll165_g543 = ceil( _WeatheringAll );
				float RangeCutAll171_g543 = (0.7 + (_WeatheringAll - 0.0) * (0.0 - 0.7) / (1.0 - 0.0));
				float clampResult215_g543 = clamp( ( ( tex2DNode177_g543.g * WMaskAll165_g543 ) - RangeCutAll171_g543 ) , 0.0 , 1.0 );
				float clampResult299_g543 = clamp( ( clampResult253_g543 + clampResult251_g543 + clampResult254_g543 + clampResult259_g543 + clampResult261_g543 + clampResult215_g543 ) , 0.0 , 1.0 );
				float lerpResult313_g543 = lerp( clampResult299_g543 , clampResult215_g543 , WMaskAll165_g543);
				float clampResult373_g543 = clamp( ( lerpResult313_g543 * 10.0 ) , 0.0 , 1.0 );
				float WeatheringAlpha396_g543 = clampResult373_g543;
				float3 lerpResult87_g543 = lerp( lerpResult98_g543 , WeatheringBump425_g543 , ( SAMPLE_TEXTURE2D( _WeatheringMap, sampler_WeatheringMap, WeatheringUV144_g543 ).b * WeatheringAlpha396_g543 ));
				float3 normalizeResult564_g543 = normalize( lerpResult87_g543 );
				float3 temp_output_1955_557 = normalizeResult564_g543;
				float3 OutNormal1684 = temp_output_1955_557;
				float3 switchResult1939 = (((ase_vface>0)?(OutNormal1684):(-OutNormal1684)));
				float3 NormalFace1945 = ( _NormalBackDirInvert == 1.0 ? switchResult1939 : OutNormal1684 );
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1968 = NormalFace1945;
				float3 worldNormal1968 = float3(dot(tanToWorld0,tanNormal1968), dot(tanToWorld1,tanNormal1968), dot(tanToWorld2,tanNormal1968));
				float fresnelNdotV1964 = dot( worldNormal1968, ase_worldViewDir );
				float fresnelNode1964 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV1964, _FresnelPower ) );
				float OccAlpha219_g543 = tex2DNode196_g543.a;
				float WeatheringAlpha2466_g543 = lerpResult313_g543;
				float OutAlpha1871 = saturate( ( ( AlphaInput195_g543 * _AlphaMaster * saturate( pow( OccAlpha219_g543 , ( _WetAlpha * ExGloss298_g543 ) ) ) ) + WeatheringAlpha2466_g543 ) );
				float temp_output_1972_0 = saturate( ( fresnelNode1964 + OutAlpha1871 ) );
				float AlphaSC1912 = ( OutOp1691 * temp_output_1972_0 );
				
				
				outAlpha = AlphaSC1912;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = i.pos;
				#endif
				half alphaRef = tex3D(_DitherMaskLOD, float3(vpos.xy * 0.25, outAlpha * 0.9375)).a;
				clip(alphaRef - _Cutoff);
	
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
-260.4;194.8;1221;734;-1359.552;683.7705;1;True;False
Node;AmplifyShaderEditor.FunctionNode;1730;-30.3289,-1187.185;Inherit;False;Iridiscence;87;;456;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1752;331.3885,-769.0536;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1735;685.5889,-933.6452;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1755;418.1014,-695.4373;Inherit;True;Property;_SpecularMap;SpecularMap;94;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1753;391.0476,-745.1899;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1782;247.8937,-1006.199;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;1717;262.4673,-1190.966;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1754;720.994,-693.3652;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1722;708.7335,-1016.052;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1739;947.3095,-807.3077;Inherit;False;Property;_Iridiscent1;Iridiscent;86;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1718;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1756;1192.594,-709.9873;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1721;758.1564,-1049.002;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1745;11.12222,-1294.807;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1718;523.5092,-1187.675;Inherit;False;Property;_Iridiscent;Iridiscent;86;0;Create;True;0;0;0;True;1;Header(Iridiscent);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1642;844.0115,-1183.61;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WireNode;1746;75.58084,-1324.295;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1740;1364.939,-551.4853;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1732;1212.62,-1385.844;Inherit;False;Property;_SpecularSetup1;SpecularSetup;92;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1731;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1781;2676.393,-1560.824;Inherit;False;1652.311;667.9056;Comment;16;1713;1714;1696;1694;1695;1703;1702;1638;1652;1650;1649;1789;1841;1784;1913;1946;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1683;1503.489,-1386.021;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1713;2773.38,-1454.037;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1685;49.03248,-800.0505;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1696;2783.174,-1134.383;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;2759.84,-1296.419;Inherit;False;1712;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1694;2738.134,-1211.569;Inherit;False;1687;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1703;3283.575,-1276.85;Inherit;False;1685;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1780;2658.528,-485.9633;Inherit;False;1617.865;815.8421;Comment;15;1704;1709;1715;1779;1705;1849;1848;1847;1680;1700;1852;1853;1865;1879;1651;Deferred;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;1784;3265.454,-1447.783;Inherit;False;GGX Specular Light;-1;;458;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1847;3418.24,-272.5007;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1779;3422.823,132.6936;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1852;3421.892,54.30127;Inherit;False;1688;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1705;3378.733,-26.54305;Inherit;False;1687;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1709;3173.242,-152.7211;Inherit;False;1685;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1704;2793.13,-277.9646;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1638;3631.986,-1305.39;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1700;3414.687,-431.2121;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1715;3402.252,-105.305;Inherit;False;1712;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1865;3694.037,-318.4451;Inherit;False;Deferred Pass;-1;;463;c9afd996879db6041a57a5a508002f59;0;6;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;1;False;4;COLOR;0;COLOR;1;COLOR;12;COLOR;18
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1680;4014.197,-1282.9;Float;False;False;-1;2;ASEMaterialInspector;100;8;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1687;41.74377,-711.05;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1788;45.82831,-551.2503;Inherit;False;th;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1691;46.95982,-473.2222;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1747;-16.33936,-329.7606;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1748;34.33236,-287.3661;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1750;1246.955,-284.9192;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1749;1292.6,-317.3501;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1840;844.123,-1274.65;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1848;2805.873,-358.7381;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1719;438.0094,-995.3347;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1720;401.1435,-981.6287;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1731;1697.23,-1161.845;Inherit;False;Property;_SpecularSetup;SpecularSetup;92;0;Create;True;0;0;0;False;1;Header (Specularity);False;1;0;1;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1841;3014.403,-1058.491;Inherit;False;1683;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1849;2807.915,-190.2279;Inherit;False;1788;th;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1649;4095.903,-1302.9;Float;False;True;-1;2;ASEMaterialInspector;0;7;Hanmen/Clothes True Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1665;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=-50;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1712;1992.472,-1160.675;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1871;46.03364,-398.179;Inherit;False;OutAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1688;48.38976,-628.7403;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1904;-209.0985,96.55823;Inherit;False;Dither IGN;-1;;485;85e67188977f34c48a0251ed94f05cf0;1,11,1;1;10;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1905;-213.1667,-53.87226;Inherit;False;Dither IGN;-1;;486;85e67188977f34c48a0251ed94f05cf0;1,11,0;1;10;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1873;1351.28,-49.75638;Inherit;False;Clip;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1879;3138.775,16.56055;Inherit;False;1873;Clip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1908;3649.871,-700.2784;Inherit;False;Constant;_Float23;Float 23;14;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1702;3635.26,-1177.038;Inherit;False;1873;Clip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1874;272,-48;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1876;480,-16;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;1877;677.4983,-34.06299;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1910;394.0969,-204.1028;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1684;48.31251,-888.1824;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1888;-14.63464,6.37386;Inherit;False;Property;_TemporalFilter;TemporalFilter;78;0;Create;False;0;0;0;True;0;False;1;0;0;False;_TEMPORALFILTER_ON;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1938;1876.403,-668.8412;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1939;2039.542,-879.9313;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1940;2237.76,-921.5773;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1942;1840.76,-859.1403;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1944;2080.716,-786.6974;Inherit;False;Constant;_Float21;Float 5;73;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1941;2332.835,-821.5421;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1945;2517.247,-804.7195;Inherit;False;NormalFace;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1695;2770.603,-1055.39;Inherit;False;1684;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1789;2781.497,-981.6653;Inherit;False;1788;th;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1946;2761.857,-1371.584;Inherit;False;1945;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1853;3415.67,-353.2057;Inherit;False;1945;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1950;3031.701,-295.4829;Inherit;False;Unity Translucency;78;;536;3081dbcb6ac8af842b2faa561ed4ff52;0;3;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.FunctionNode;1951;3244.805,-1175.581;Inherit;False;Unity Translucency;78;;538;3081dbcb6ac8af842b2faa561ed4ff52;0;3;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.RangedFloatNode;1872;293.42,133.6566;Inherit;False;Property;_Cutoff;Cutoff;2;1;[Header];Fetch;True;1;Alpha Clip Value;0;0;True;0;False;0.5;0.067;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1734;478.722,-934.2843;Inherit;False;Property;_SpecColor;SpecColor;93;0;Fetch;True;0;0;0;False;0;False;0.5,0.5,0.5,1;0.5,0.5,0.5,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1955;-351.9619,-1010.385;Inherit;False;AIT Clothes Function;3;;543;d0644e5becc3a6145ad3ab18b1d3f488;0;0;11;FLOAT3;0;FLOAT3;557;FLOAT3;558;FLOAT;559;FLOAT;560;FLOAT;812;FLOAT;561;SAMPLERSTATE;748;FLOAT;562;FLOAT;787;FLOAT;817
Node;AmplifyShaderEditor.RangedFloatNode;1943;1938.842,-1001.831;Inherit;False;Property;_NormalBackDirInvert;Normal Invert;1;1;[Toggle];Create;False;1;;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1964;-923.843,240.7922;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1966;-1240.513,327.7845;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1968;-1255.722,166.7295;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1974;-1491.407,160.1485;Inherit;False;1945;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1975;-635.5909,220.7491;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1875;-872.5256,403.2869;Inherit;False;1871;OutAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1972;-485.7687,219.9542;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1970;-1316.44,512.963;Inherit;False;Property;_FresnelBias;FresnelBias;76;0;Create;True;0;0;0;True;0;False;0;5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1969;-1311.431,596.6356;Inherit;False;Property;_FresnelScale;FresnelScale;77;0;Create;True;0;0;0;True;0;False;0;5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1960;-1309.951,677.6946;Inherit;False;Property;_FresnelPower;FresnelPower;75;1;[Header];Create;True;1;Fresnel Settings;0;0;True;0;False;3;5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1913;3698.598,-1023.926;Inherit;False;1912;AlphaSC;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1976;20.17745,352.7807;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1909;50.28826,-206.3818;Inherit;False;1691;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1912;662.8954,-205.4603;Inherit;False;AlphaSC;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1650;4095.903,-1197.1;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1652;4094.674,-1118.824;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1651;4039.76,-325.8137;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;2;True;1665;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;293.0068,216.2109;Inherit;False;Property;_CullMode;CullMode;0;2;[Header];[IntRange];Create;False;1;Backface Settings;0;0;True;0;False;0;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1977;1998.997,-371.1848;Inherit;False;Property;_SHADERTYPE_CLOTHING;SHADERTYPE_CLOTHING;95;0;Create;False;0;0;0;True;1;HideInInspector;False;0;1;1;True;_SHADERTYPE_CLOTHING;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
WireConnection;1730;1;1955;557
WireConnection;1752;0;1730;0
WireConnection;1735;0;1734;0
WireConnection;1753;0;1752;0
WireConnection;1782;0;1955;559
WireConnection;1717;0;1730;0
WireConnection;1717;1;1955;0
WireConnection;1717;2;1955;559
WireConnection;1754;0;1755;0
WireConnection;1722;0;1782;0
WireConnection;1739;1;1735;0
WireConnection;1739;0;1753;0
WireConnection;1756;0;1739;0
WireConnection;1756;1;1754;0
WireConnection;1721;0;1722;0
WireConnection;1745;0;1955;0
WireConnection;1718;1;1719;0
WireConnection;1718;0;1717;0
WireConnection;1642;0;1718;0
WireConnection;1642;1;1721;0
WireConnection;1746;0;1745;0
WireConnection;1740;0;1756;0
WireConnection;1740;1;1749;0
WireConnection;1732;1;1642;0
WireConnection;1732;0;1746;0
WireConnection;1683;0;1732;0
WireConnection;1685;0;1955;558
WireConnection;1784;286;1713;0
WireConnection;1784;30;1946;0
WireConnection;1784;146;1714;0
WireConnection;1784;147;1694;0
WireConnection;1784;302;1696;0
WireConnection;1847;0;1950;68
WireConnection;1847;1;1709;0
WireConnection;1638;0;1784;0
WireConnection;1638;1;1703;0
WireConnection;1638;2;1951;0
WireConnection;1865;3;1700;0
WireConnection;1865;14;1853;0
WireConnection;1865;20;1847;0
WireConnection;1865;6;1715;0
WireConnection;1865;7;1705;0
WireConnection;1865;4;1852;0
WireConnection;1687;0;1955;560
WireConnection;1788;0;1955;562
WireConnection;1691;0;1955;787
WireConnection;1747;0;1955;559
WireConnection;1748;0;1747;0
WireConnection;1750;0;1748;0
WireConnection;1749;0;1750;0
WireConnection;1840;0;1718;0
WireConnection;1719;0;1720;0
WireConnection;1720;0;1955;0
WireConnection;1731;1;1642;1
WireConnection;1731;0;1740;1
WireConnection;1649;0;1638;0
WireConnection;1649;1;1702;0
WireConnection;1712;0;1731;0
WireConnection;1871;0;1955;817
WireConnection;1688;0;1955;561
WireConnection;1904;10;1972;0
WireConnection;1905;10;1972;0
WireConnection;1873;0;1877;0
WireConnection;1876;0;1874;0
WireConnection;1876;1;1888;0
WireConnection;1877;1;1876;0
WireConnection;1877;2;1872;0
WireConnection;1910;0;1909;0
WireConnection;1910;1;1976;0
WireConnection;1684;0;1955;557
WireConnection;1888;1;1905;0
WireConnection;1888;0;1904;0
WireConnection;1939;0;1938;0
WireConnection;1939;1;1942;0
WireConnection;1940;0;1943;0
WireConnection;1942;0;1938;0
WireConnection;1941;0;1940;0
WireConnection;1941;1;1944;0
WireConnection;1941;2;1939;0
WireConnection;1941;3;1938;0
WireConnection;1945;0;1941;0
WireConnection;1950;6;1848;0
WireConnection;1950;26;1704;0
WireConnection;1950;46;1849;0
WireConnection;1951;6;1841;0
WireConnection;1951;26;1695;0
WireConnection;1951;46;1789;0
WireConnection;1964;0;1968;0
WireConnection;1964;4;1966;0
WireConnection;1964;1;1970;0
WireConnection;1964;2;1969;0
WireConnection;1964;3;1960;0
WireConnection;1968;0;1974;0
WireConnection;1975;0;1964;0
WireConnection;1975;1;1875;0
WireConnection;1972;0;1975;0
WireConnection;1976;0;1972;0
WireConnection;1912;0;1910;0
WireConnection;1652;0;1913;0
WireConnection;1651;0;1865;0
WireConnection;1651;1;1865;1
WireConnection;1651;2;1865;12
WireConnection;1651;3;1865;18
WireConnection;1651;4;1879;0
ASEEND*/
//CHKSM=E51EFBED43F887E77F646D1BAA85A93E3045D65B