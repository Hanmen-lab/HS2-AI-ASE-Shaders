// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Item Cutoff"
{
	Properties
	{
		[Header(Backface Settings)][IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[Toggle]_NormalBackDirInvert("Normal Invert", Range( 0 , 1)) = 1
		[Header(Alpha Clip Value)]_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_alpha("alpha", Range( 0 , 1)) = 1
		[Header (RGB Color A Opacity)]_MainTex("MainTex", 2D) = "white" {}
		[Header((R) MetallicMask)][Header((G) Emission)][Header((B) Thickness)][Header((A) Roughness)]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		_ColorMask("ColorMask", 2D) = "black" {}
		_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1)]_DetailGlossMap("DetailGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header (Detail2)]_DetailGlossMap2("DetailGlossMap2", 2D) = "white" {}
		[Header((R) Carvature (Edge Map))][Header((G) OcclusionMap)][Header((B) Tearings Map)]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color("Color", Color) = (1,1,1,1)
		_Color2("Color2", Color) = (1,1,1,1)
		_Color3("Color3", Color) = (1,1,1,1)
		_Color4("Color4", Color) = (1,1,1,1)
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
		[Header(Patterns)][NoScaleOffset]_PatternMask1("PatternMask1", 2D) = "white" {}
		_Color1_2("Color1_2", Color) = (1,1,1,1)
		[NoScaleOffset]_PatternMask2("PatternMask2", 2D) = "white" {}
		_Color2_2("Color2_2", Color) = (1,1,1,1)
		[NoScaleOffset]_PatternMask3("PatternMask3", 2D) = "white" {}
		_Color3_2("Color3_2", Color) = (1,1,1,1)
		_patternuv1("patternuv1", Vector) = (1,1,0,0)
		_patternuv2("patternuv2", Vector) = (1,1,0,0)
		_patternuv3("patternuv3", Vector) = (1,1,0,0)
		_patternuv3Rotator("patternuv3Rotator", Range( -1 , 1)) = 0
		_patternuv1Rotator("patternuv1Rotator", Range( -1 , 1)) = 0
		_patternuv2Rotator("patternuv2Rotator", Range( -1 , 1)) = 0
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		[Toggle(_EMISSIONCOLORTEXBASE_OFF)] _EmissionColorTexBase("EmissionColorTexBase", Float) = 1
		[Header(Emission Effect)][NoScaleOffset]_EffectMap("EffectMap", 2D) = "white" {}
		_UVScroll("UVScroll", Vector) = (1,1,0,0)
		_UVScrollRotator("UVScrollRotator", Range( -1 , 1)) = 0
		[Header(Translucency)]_Translucency("Translucency", Range( 0 , 50)) = 1
		_TransDirect("Direct", Range( 0 , 1)) = 0
		_TransAmbient("Ambient", Range( 0 , 1)) = 0.1
		_TransNormalDistortion("Normal Distortion", Range( 0 , 1)) = 0
		_TransScattering("Scattering Faloff", Range( 1 , 50)) = 1
		_TransShadow("TransShadow", Range( 0 , 1)) = 1
		[Header(Fresnel Settings)]_FresnelPower("FresnelPower", Range( 0 , 10)) = 0
		_FresnelScale("FresnelScale", Range( 0 , 10)) = 0
		[Header(Iridiscent)][Toggle(_IRIDISCENT_ON)] _Iridiscent("Iridiscent", Float) = 0
		_IriHue("Hue", Range( 0 , 1)) = 0
		_IriSaturation("Saturation", Range( 0 , 1)) = 0.5
		_IriBrightness("Brightness", Range( 0 , 1)) = 0.5
		_IriContrast("Contrast", Range( 0 , 1)) = 0.5
		_IriScale("RepeatFreq", Range( 0 , 10)) = 1
		[Header(Specularity)][Toggle(_SPECULARSETUP_ON)] _SpecularSetup("SpecularSetup", Float) = 0
		_SpecColor("SpecColor", Color) = (0.509434,0.509434,0.509434,1)
		_SpecularMap("SpecularMap", 2D) = "white" {}
		[HideInInspector][Toggle(_SHADERTYPE_ITEM)] _SHADERTYPE_ITEM("SHADERTYPE_ITEM", Float) = 1
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
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma shader_feature _SHADERTYPE_ITEM
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_OFF
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
			uniform float _IriScale;
			uniform float _IsScreenshotActive;
			uniform float _ScreenshotToolFrame;
			uniform float _CullMode;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _DetailUV2Rotator;
			uniform float _DetailNormalMapScale2;
			uniform float _GlossinessReflection;
			uniform float _AlphaEx;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailNormalMapScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV2;
			uniform float _ExGloss;
			uniform float _Float0;
			uniform float _EmissionStrength;
			uniform float4 _UVScroll;
			uniform float _UVScrollRotator;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _Glossiness3;
			uniform float _Metallic;
			uniform float _Metallic2;
			uniform float _Metallic3;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			uniform float _WetnessPower;
			uniform float _DetailGlossScale;
			uniform float _DetailGlossScale2;
			uniform float _Metallic4;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _WetAlbedoOffset;
			uniform float4 _Color;
			uniform float4 _Color1_2;
			uniform float4 _Color4;
			uniform float2 _UVScalePattern;
			uniform float4 _Color3;
			uniform float4 _Color3_2;
			uniform float4 _Color2_2;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask2);
			SamplerState sampler_PatternMask2;
			uniform float _patternuv2Rotator;
			uniform float _patternuv1Rotator;
			uniform float _patternuv3Rotator;
			uniform float4 _EmissionColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask1);
			SamplerState sampler_PatternMask1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask3);
			SamplerState sampler_PatternMask3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _MainTex_ST;
			uniform float2 _patternuv1;
			uniform float2 _patternuv2;
			uniform float4 _ColorMask_ST;
			uniform float2 _patternuv3;
			uniform float4 _OcclusionMap_ST;
			uniform float4 _BumpMap_ST;
			SamplerState sampler_trilinear_repeat;
			uniform float4 _MetallicGlossMap_ST;
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
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			uniform float4 _SpecularMap_ST;
			SamplerState sampler_SpecularMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
			uniform float _alpha;
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
			
			float4 MyCustomExpression45_g272( Gradient gradient, float time, float repeatFrequency )
			{
				time = fmod(time * repeatFrequency, 1.0);
				    
				    float3 color = gradient.colors[0].rgb;
				    UNITY_UNROLL
				    for (int c = 1; c < 8; c++)
				    {
				        float colorPos = saturate((time - gradient.colors[c-1].w) / (0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, (float)gradient.colorsLength - 1));
				        color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				    }
				    #ifndef UNITY_COLORSPACE_GAMMA
				    color = half3(GammaToLinearSpaceExact(color.r), GammaToLinearSpaceExact(color.g), GammaToLinearSpaceExact(color.b));
				    #endif
				    float alpha = gradient.alphas[0].x;
				    UNITY_UNROLL
				    for (int a = 1; a < 8; a++)
				    {
				        float alphaPos = saturate((time - gradient.alphas[a-1].y) / (0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, (float)gradient.alphasLength - 1));
				        alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				    }
				    
				    return float4(color, alpha);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float getInterleavedGradientNoise8Bit9_g524( int x, int y )
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


				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode119_g528 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex );
				float3 temp_output_182_0_g528 = (tex2DNode119_g528).rgb;
				float2 UVScalePattern459_g528 = _UVScalePattern;
				float2 texCoord446_g528 = i.ase_texcoord1.xy * ( _patternuv1 * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos471_g528 = cos( ( _patternuv1Rotator * UNITY_PI ) );
				float sin471_g528 = sin( ( _patternuv1Rotator * UNITY_PI ) );
				float2 rotator471_g528 = mul( texCoord446_g528 - float2( 0.5,0.5 ) , float2x2( cos471_g528 , -sin471_g528 , sin471_g528 , cos471_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult449_g528 = lerp( (_Color1_2).rgb , (_Color).rgb , ( _Color1_2.a * SAMPLE_TEXTURE2D( _PatternMask1, sampler_ColorMask, rotator471_g528 ).r ));
				float2 texCoord447_g528 = i.ase_texcoord1.xy * ( _patternuv2 * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos469_g528 = cos( ( _patternuv2Rotator * UNITY_PI ) );
				float sin469_g528 = sin( ( _patternuv2Rotator * UNITY_PI ) );
				float2 rotator469_g528 = mul( texCoord447_g528 - float2( 0.5,0.5 ) , float2x2( cos469_g528 , -sin469_g528 , sin469_g528 , cos469_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult453_g528 = lerp( (_Color2_2).rgb , (_Color2).rgb , ( _Color2_2.a * SAMPLE_TEXTURE2D( _PatternMask2, sampler_ColorMask, rotator469_g528 ).r ));
				float2 uv_ColorMask = i.ase_texcoord1.xy * _ColorMask_ST.xy + _ColorMask_ST.zw;
				float4 tex2DNode86_g528 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask );
				float ColorMask296_g528 = tex2DNode86_g528.r;
				float3 lerpResult424_g528 = lerp( lerpResult449_g528 , lerpResult453_g528 , ColorMask296_g528);
				float2 texCoord448_g528 = i.ase_texcoord1.xy * ( UVScalePattern459_g528 * _patternuv3 ) + float2( 0,0 );
				float cos466_g528 = cos( ( _patternuv3Rotator * UNITY_PI ) );
				float sin466_g528 = sin( ( _patternuv3Rotator * UNITY_PI ) );
				float2 rotator466_g528 = mul( texCoord448_g528 - float2( 0.5,0.5 ) , float2x2( cos466_g528 , -sin466_g528 , sin466_g528 , cos466_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult458_g528 = lerp( (_Color3_2).rgb , (_Color3).rgb , ( _Color3_2.a * SAMPLE_TEXTURE2D( _PatternMask3, sampler_ColorMask, rotator466_g528 ).r ));
				float ColorMask3102_g528 = tex2DNode86_g528.g;
				float3 lerpResult425_g528 = lerp( lerpResult424_g528 , lerpResult458_g528 , ColorMask3102_g528);
				float ColorMask494_g528 = tex2DNode86_g528.b;
				float3 lerpResult426_g528 = lerp( lerpResult425_g528 , (_Color4).rgb , ColorMask494_g528);
				float3 CLEANCOLOR405_g528 = lerpResult426_g528;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap = i.ase_texcoord1.xy * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
				float Carvature197_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap ).r;
				float3 lerpResult289_g528 = lerp( ( temp_output_182_0_g528 * (_BaseColor).rgb * CLEANCOLOR405_g528 ) , temp_cast_0 , ( Carvature197_g528 * _CarvatureStrength ));
				float ExGloss255_g528 = _ExGloss;
				float3 lerpResult313_g528 = lerp( lerpResult289_g528 , ( lerpResult289_g528 * _WetAlbedoOffset ) , ExGloss255_g528);
				float3 DiffuseMix326_g528 = lerpResult313_g528;
				float3 temp_output_1768_345 = DiffuseMix326_g528;
				Gradient gradient37_g272 = NewGradient( 0, 7, 2, float4( 1, 0, 0, 0 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5911803 ), float4( 0.1839623, 0.3384229, 1, 0.7588311 ), float4( 0.838, 0, 1, 0.9264668 ), float4( 1, 0, 0, 1 ), 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				Gradient gradient45_g272 =(Gradient)gradient37_g272;
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap = i.ase_texcoord1.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 texCoord76_g528 = i.ase_texcoord1.xy * ( _DetailUV * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos78_g528 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g528 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g528 = mul( texCoord76_g528 - float2( 0.5,0.5 ) , float2x2( cos78_g528 , -sin78_g528 , sin78_g528 , cos78_g528 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g528 = rotator78_g528;
				float2 break13_g528 = Detail1UV79_g528;
				float temp_output_14_0_g528 = ( pow( 0.25 , 3.0 ) * 0.2 );
				float2 appendResult24_g528 = (float2(( break13_g528.x + temp_output_14_0_g528 ) , break13_g528.y));
				float4 tex2DNode85_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g528 );
				float2 uv_DetailMask81_g528 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g528 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g528 );
				float DetailMask183_g528 = tex2DNode81_g528.r;
				float temp_output_42_0_g528 = ( DetailMask183_g528 * _DetailNormalMapScale );
				float3 appendResult56_g528 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g528 ).g - tex2DNode85_g528.g ) * temp_output_42_0_g528 )));
				float2 appendResult27_g528 = (float2(break13_g528.x , ( break13_g528.y + temp_output_14_0_g528 )));
				float3 appendResult58_g528 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g528 ).g - tex2DNode85_g528.g ) * temp_output_42_0_g528 )));
				float3 normalizeResult66_g528 = normalize( cross( appendResult56_g528 , appendResult58_g528 ) );
				float3 DetailNormal171_g528 = normalizeResult66_g528;
				float2 texCoord7_g528 = i.ase_texcoord1.xy * ( UVScalePattern459_g528 * _DetailUV2 ) + float2( 0,0 );
				float cos10_g528 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g528 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g528 = mul( texCoord7_g528 - float2( 0.5,0.5 ) , float2x2( cos10_g528 , -sin10_g528 , sin10_g528 , cos10_g528 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g528 = rotator10_g528;
				float2 break20_g528 = Detail2UV12_g528;
				float temp_output_21_0_g528 = ( pow( 0.25 , 3.0 ) * 0.2 );
				float2 appendResult32_g528 = (float2(( break20_g528.x + temp_output_21_0_g528 ) , break20_g528.y));
				float4 tex2DNode41_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g528 );
				float DetailMask284_g528 = tex2DNode81_g528.g;
				float temp_output_49_0_g528 = ( DetailMask284_g528 * _DetailNormalMapScale2 );
				float3 appendResult63_g528 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g528 ).g - tex2DNode41_g528.g ) * temp_output_49_0_g528 )));
				float2 appendResult31_g528 = (float2(break20_g528.x , ( break20_g528.y + temp_output_21_0_g528 )));
				float3 appendResult64_g528 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g528 ).g - tex2DNode41_g528.g ) * temp_output_49_0_g528 )));
				float3 normalizeResult70_g528 = normalize( cross( appendResult63_g528 , appendResult64_g528 ) );
				float3 DetailNormal272_g528 = normalizeResult70_g528;
				float3 normalizeResult262_g528 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap ), _Float0 ) , DetailNormal171_g528 ) , DetailNormal272_g528 ) );
				float3 temp_output_1768_342 = normalizeResult262_g528;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal44_g272 = temp_output_1768_342;
				float3 worldNormal44_g272 = float3(dot(tanToWorld0,tanNormal44_g272), dot(tanToWorld1,tanNormal44_g272), dot(tanToWorld2,tanNormal44_g272));
				float dotResult7_g272 = dot( ase_worldViewDir , worldNormal44_g272 );
				float time45_g272 = dotResult7_g272;
				float repeatFrequency45_g272 = _IriScale;
				float4 localMyCustomExpression45_g272 = MyCustomExpression45_g272( gradient45_g272 , time45_g272 , repeatFrequency45_g272 );
				float3 temp_output_47_0_g272 = (localMyCustomExpression45_g272).xyz;
				float3 temp_output_12_0_g272 = (temp_output_47_0_g272).xyz;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1768_345;
				float2 uv_MetallicGlossMap = i.ase_texcoord1.xy * _MetallicGlossMap_ST.xy + _MetallicGlossMap_ST.zw;
				float4 tex2DNode139_g528 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap );
				float lerpResult167_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask);
				float lerpResult193_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask2);
				float lerpResult434_g528 = lerp( ( lerpResult167_g528 * _Metallic ) , ( lerpResult193_g528 * _Metallic2 ) , ColorMask296_g528);
				float lerpResult181_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask3);
				float lerpResult437_g528 = lerp( lerpResult434_g528 , ( lerpResult181_g528 * _Metallic3 ) , ColorMask3102_g528);
				float lerpResult208_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask4);
				float lerpResult438_g528 = lerp( lerpResult437_g528 , ( lerpResult208_g528 * _Metallic4 ) , ColorMask494_g528);
				float Detail1148_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g528 ).r;
				float Detail2194_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g528 ).r;
				float temp_output_1768_340 = saturate( ( ( lerpResult438_g528 - ( ( 1.0 - Detail1148_g528 ) * ( _DetailMetallicScale * DetailMask183_g528 ) ) ) - ( ( 1.0 - Detail2194_g528 ) * ( _DetailMetallicScale2 * DetailMask284_g528 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1768_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1768_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1768_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1768_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g499 = worldSpaceLightDir;
				float3 viewDir15_g499 = ase_worldViewDir;
				float3 normalizeResult136_g499 = ASESafeNormalize( ( lightDir14_g499 + viewDir15_g499 ) );
				float dotResult137_g499 = dot( lightDir14_g499 , normalizeResult136_g499 );
				float LdotH139_g499 = saturate( dotResult137_g499 );
				float lerpResult143_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness);
				float lerpResult158_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness2);
				float lerpResult428_g528 = lerp( ( lerpResult143_g528 * _Glossiness ) , ( lerpResult158_g528 * _Glossiness2 ) , ColorMask296_g528);
				float lerpResult157_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness3);
				float lerpResult429_g528 = lerp( lerpResult428_g528 , ( lerpResult157_g528 * _Glossiness3 ) , ColorMask3102_g528);
				float lerpResult187_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness4);
				float lerpResult230_g528 = lerp( lerpResult429_g528 , ( _Glossiness4 * lerpResult187_g528 ) , ColorMask494_g528);
				float lerpResult305_g528 = lerp( ( ( lerpResult230_g528 - ( ( 1.0 - Detail1148_g528 ) * ( _DetailGlossScale * DetailMask183_g528 ) ) ) - ( ( 1.0 - Detail2194_g528 ) * ( _DetailGlossScale2 * DetailMask284_g528 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g528 ));
				float OutSmoothness1458 = saturate( lerpResult305_g528 );
				float smoothness169_g499 = OutSmoothness1458;
				float perceprualRoughness188_g499 = ( 1.0 - smoothness169_g499 );
				half fd90273_g499 = ( 0.5 + ( 2.0 * LdotH139_g499 * LdotH139_g499 * perceprualRoughness188_g499 ) );
				float3 OutNormal1457 = temp_output_1768_342;
				float3 switchResult1710 = (((ase_vface>0)?(OutNormal1457):(-OutNormal1457)));
				float3 NormalFace1715 = ( _NormalBackDirInvert == 1.0 ? switchResult1710 : OutNormal1457 );
				float3 tanNormal29_g499 = NormalFace1715;
				float3 worldNormal29_g499 = float3(dot(tanToWorld0,tanNormal29_g499), dot(tanToWorld1,tanNormal29_g499), dot(tanToWorld2,tanNormal29_g499));
				float3 normalizeResult25_g499 = normalize( worldNormal29_g499 );
				float3 normalDir28_g499 = normalizeResult25_g499;
				float dotResult21_g499 = dot( lightDir14_g499 , normalDir28_g499 );
				float NdotL20_g499 = saturate( dotResult21_g499 );
				half lightScatter253_g499 = ( ( ( fd90273_g499 - 1.0 ) * pow( ( 1.0 - NdotL20_g499 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g499 = dot( normalDir28_g499 , viewDir15_g499 );
				float NdotV55_g499 = saturate( dotResult56_g499 );
				half viewScatter254_g499 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g499 ) , 5.0 ) * ( fd90273_g499 - 1.0 ) ) );
				half disneydiffuse251_g499 = ( lightScatter253_g499 * viewScatter254_g499 );
				half Diffuseterm281_g499 = ( disneydiffuse251_g499 * NdotL20_g499 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g499 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g499;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g499 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g499
				data203_g499.lightmapUV = i.ase_lmap;
				#endif //dylm203_g499
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g499
				data203_g499.ambient = i.ase_sh;
				#endif //fsh203_g499
				UnityGI gi203_g499 = UnityGI_Base(data203_g499, 1, normalDir28_g499);
				float4 tex2DNode259_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap );
				float lerpResult298_g528 = lerp( 1.0 , tex2DNode259_g528.g , _OcculusionStrength);
				float smoothstepResult266_g528 = smoothstep( 0.0 , 0.8 , Detail1148_g528);
				float lerpResult297_g528 = lerp( 1.0 , smoothstepResult266_g528 , ( _DetailOcculusionScale * DetailMask183_g528 ));
				float smoothstepResult274_g528 = smoothstep( 0.0 , 0.8 , Detail2194_g528);
				float lerpResult299_g528 = lerp( 1.0 , smoothstepResult274_g528 , ( _DetailOcculusionScale2 * DetailMask284_g528 ));
				float OcclusionMix323_g528 = saturate( ( lerpResult298_g528 * lerpResult297_g528 * lerpResult299_g528 ) );
				float OutAO1462 = OcclusionMix323_g528;
				float occlusion306_g499 = OutAO1462;
				half Roughness64_g499 = max( ( perceprualRoughness188_g499 * perceprualRoughness188_g499 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g499 = ( 0.5 / ( ( ( ( NdotV55_g499 * ( 1.0 - Roughness64_g499 ) ) + Roughness64_g499 ) * NdotL20_g499 ) + 1E-05 + ( NdotV55_g499 * ( Roughness64_g499 + ( ( 1.0 - Roughness64_g499 ) * NdotL20_g499 ) ) ) ) );
				float a266_g499 = ( Roughness64_g499 * Roughness64_g499 );
				float3 normalizeResult87_g499 = ASESafeNormalize( ( lightDir14_g499 + viewDir15_g499 ) );
				float dotResult88_g499 = dot( normalDir28_g499 , normalizeResult87_g499 );
				float NdotH90_g499 = saturate( dotResult88_g499 );
				float d99_g499 = ( ( ( ( NdotH90_g499 * a266_g499 ) - NdotH90_g499 ) * NdotH90_g499 ) + 1.0 );
				half GGXTerm43_g499 = ( ( ( 1.0 / UNITY_PI ) * a266_g499 ) / ( ( d99_g499 * d99_g499 ) + 1E-07 ) );
				float temp_output_36_0_g499 = ( SmithJointGGXVisibilityTerm42_g499 * GGXTerm43_g499 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g499 = sqrt( max( 0.0001 , temp_output_36_0_g499 ) );
				#else
				float staticSwitch5_g499 = temp_output_36_0_g499;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g499 = 0.0;
				#else
				float staticSwitch119_g499 = max( 0.0 , ( staticSwitch5_g499 * NdotL20_g499 ) );
				#endif
				float3 SpecC1665 = (_SpecColor).rgb;
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = SpecC1665;
				#endif
				float2 uv_SpecularMap = i.ase_texcoord1.xy * _SpecularMap_ST.xy + _SpecularMap_ST.zw;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap )).rgb ),temp_output_1768_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g499 = OutSpecular1456;
				float SpecularTerm34_g499 = ( staticSwitch119_g499 * ( SpecColor140_g499.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g499 = ( ( pow( ( 1.0 - LdotH139_g499 ) , 5.0 ) * ( 1.0 - SpecColor140_g499 ) ) + SpecColor140_g499 );
				half metallic176_g499 = 0.0;
				half localOneMinusReflectivity176_g499 = OneMinusReflectivity( metallic176_g499 );
				half GrazingTerm163_g499 = saturate( ( smoothness169_g499 + ( 1.0 - localOneMinusReflectivity176_g499 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g499).xxx;
				float3 lerpResult159_g499 = lerp( SpecColor140_g499 , temp_cast_3 , pow( ( 1.0 - NdotV55_g499 ) , 5.0 ));
				half3 FresnelLerp165_g499 = lerpResult159_g499;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g499 = ( 1.0 - ( 0.28 * Roughness64_g499 * perceprualRoughness188_g499 ) );
				#else
				float staticSwitch183_g499 = ( 1.0 / ( ( Roughness64_g499 * Roughness64_g499 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g499 = staticSwitch183_g499;
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
				Unity_GlossyEnvironmentData g299_g499 = UnityGlossyEnvironmentSetup( smoothness169_g499, ase_worldViewDir, normalDir28_g499, float3(0,0,0));
				float3 indirectSpecular299_g499 = UnityGI_IndirectSpecular( data, occlusion306_g499, normalDir28_g499, g299_g499 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g499 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g499 = ( FresnelLerp165_g499 * SurfaceReduction182_g499 * indirectSpecular299_g499 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g499 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g499 = staticSwitch313_g499;
				#endif
				float3 emcol486_g528 = ( temp_output_182_0_g528 * CLEANCOLOR405_g528 );
				#ifdef _EMISSIONCOLORTEXBASE_OFF
				float3 staticSwitch404_g528 = (_EmissionColor).rgb;
				#else
				float3 staticSwitch404_g528 = emcol486_g528;
				#endif
				float2 appendResult410_g528 = (float2(_UVScroll.x , _UVScroll.y));
				float2 appendResult413_g528 = (float2(_UVScroll.z , _UVScroll.w));
				float2 texCoord409_g528 = i.ase_texcoord1.xy * appendResult410_g528 + float2( 0,0 );
				float2 panner412_g528 = ( _Time.y * ( appendResult410_g528 * appendResult413_g528 ) + texCoord409_g528);
				float cos421_g528 = cos( ( _UVScrollRotator * UNITY_PI ) );
				float sin421_g528 = sin( ( _UVScrollRotator * UNITY_PI ) );
				float2 rotator421_g528 = mul( panner412_g528 - float2( 0.5,0.5 ) , float2x2( cos421_g528 , -sin421_g528 , sin421_g528 , cos421_g528 )) + float2( 0.5,0.5 );
				float EmissionMask384_g528 = tex2DNode139_g528.g;
				float3 OutEmission1463 = ( ( staticSwitch404_g528 * _EmissionStrength * (SAMPLE_TEXTURE2D( _EffectMap, sampler_OcclusionMap, rotator421_g528 )).rgb ) * EmissionMask384_g528 );
				float3 tanNormal27_g522 = OutNormal1457;
				float3 worldNormal27_g522 = float3(dot(tanToWorld0,tanNormal27_g522), dot(tanToWorld1,tanNormal27_g522), dot(tanToWorld2,tanNormal27_g522));
				float3 normalizeResult61_g522 = normalize( worldNormal27_g522 );
				float dotResult20_g522 = dot( ase_worldViewDir , -( ( normalizeResult61_g522 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float OutThickness1633 = tex2DNode139_g528.b;
				float temp_output_59_0_g522 = ( _Translucency * OutThickness1633 );
				float3 lerpResult39_g522 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 Diffuse1553 = temp_output_1768_345;
				float3 temp_output_6_0_g522 = Diffuse1553;
				UnityGIInput data15_g522;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g522 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g522
				data15_g522.lightmapUV = i.ase_lmap;
				#endif //dylm15_g522
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g522
				data15_g522.ambient = i.ase_sh;
				#endif //fsh15_g522
				UnityGI gi15_g522 = UnityGI_Base(data15_g522, 1, normalizeResult61_g522);
				float3 temp_output_42_0_g522 = ( ( ( pow( saturate( dotResult20_g522 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g522 * lerpResult39_g522 * temp_output_6_0_g522 ) + ( ( gi15_g522.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g522 * temp_output_6_0_g522 * lerpResult39_g522 ) );
				
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g524 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g524 = (int)(temp_output_1_0_g524).x;
				int y9_g524 = (int)(temp_output_1_0_g524).y;
				float localgetInterleavedGradientNoise8Bit9_g524 = getInterleavedGradientNoise8Bit9_g524( x9_g524 , y9_g524 );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float3 tanNormal1730 = NormalFace1715;
				float3 worldNormal1730 = normalize( float3(dot(tanToWorld0,tanNormal1730), dot(tanToWorld1,tanNormal1730), dot(tanToWorld2,tanNormal1730)) );
				float Color1Alpha101_g528 = _Color.a;
				float Color2Alpha97_g528 = _Color2.a;
				float lerpResult476_g528 = lerp( Color1Alpha101_g528 , Color2Alpha97_g528 , ColorMask296_g528);
				float Color3Alpha98_g528 = _Color3.a;
				float lerpResult477_g528 = lerp( lerpResult476_g528 , Color3Alpha98_g528 , ColorMask3102_g528);
				float Color4Alpha100_g528 = _Color4.a;
				float lerpResult478_g528 = lerp( lerpResult477_g528 , Color4Alpha100_g528 , ColorMask494_g528);
				float AlphaInput137_g528 = tex2DNode119_g528.a;
				float OutOp1464 = ( saturate( ( lerpResult478_g528 * AlphaInput137_g528 ) ) * _alpha );
				float fresnelNdotV1726 = dot( normalize( worldNormal1730 ), ase_worldViewDir );
				float fresnelNode1726 = ( OutOp1464 + _FresnelScale * pow( max( 1.0 - fresnelNdotV1726 , 0.0001 ), _FresnelPower ) );
				float2 temp_output_1_0_g475 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g475 = temp_output_1_0_g475;
				float mulTime15_g475 = _Time.y * 60.0;
				float ifLocalVar16_g475 = 0;
				if( _IsScreenshotActive > 0.0 )
				ifLocalVar16_g475 = _ScreenshotToolFrame;
				else if( _IsScreenshotActive == 0.0 )
				ifLocalVar16_g475 = mulTime15_g475;
				float iFrame12_g475 = ifLocalVar16_g475;
				float localIGNAnimated12_g475 = IGNAnimated12_g475( uv12_g475 , iFrame12_g475 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch1695 = step( localIGNAnimated12_g475 , fresnelNode1726 );
				#else
				float staticSwitch1695 = step( localgetInterleavedGradientNoise8Bit9_g524 , fresnelNode1726 );
				#endif
				float clampResult353_g528 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g528 = tex2DNode259_g528.b;
				float Mask1604 = ( step( pow( ( 1.0 - clampResult353_g528 ) , 0.2 ) , pow( Tearing360_g528 , 0.5 ) ) * AlphaInput137_g528 );
				clip( ( staticSwitch1695 * Mask1604 ) - _Cutoff);
				float Clip1613 = 1.0;
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g499 * lightAtten296_g499 ) + ( gi203_g499.indirect.diffuse * occlusion306_g499 ) ) ) + ( SpecularTerm34_g499 * lightAtten296_g499 * FresnelTerm130_g499 ) + staticSwitch305_g499 ) + OutEmission1463 + temp_output_42_0_g522 );
				outAlpha = Clip1613;
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
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1
			#pragma shader_feature _SHADERTYPE_ITEM
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_OFF
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
			uniform float _IriScale;
			uniform float _IsScreenshotActive;
			uniform float _ScreenshotToolFrame;
			uniform float _CullMode;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _DetailUV2Rotator;
			uniform float _DetailNormalMapScale2;
			uniform float _GlossinessReflection;
			uniform float _AlphaEx;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailNormalMapScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV2;
			uniform float _ExGloss;
			uniform float _Float0;
			uniform float _EmissionStrength;
			uniform float4 _UVScroll;
			uniform float _UVScrollRotator;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _Glossiness3;
			uniform float _Metallic;
			uniform float _Metallic2;
			uniform float _Metallic3;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			uniform float _WetnessPower;
			uniform float _DetailGlossScale;
			uniform float _DetailGlossScale2;
			uniform float _Metallic4;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _WetAlbedoOffset;
			uniform float4 _Color;
			uniform float4 _Color1_2;
			uniform float4 _Color4;
			uniform float2 _UVScalePattern;
			uniform float4 _Color3;
			uniform float4 _Color3_2;
			uniform float4 _Color2_2;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask2);
			SamplerState sampler_PatternMask2;
			uniform float _patternuv2Rotator;
			uniform float _patternuv1Rotator;
			uniform float _patternuv3Rotator;
			uniform float4 _EmissionColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask1);
			SamplerState sampler_PatternMask1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask3);
			SamplerState sampler_PatternMask3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _MainTex_ST;
			uniform float2 _patternuv1;
			uniform float2 _patternuv2;
			uniform float4 _ColorMask_ST;
			uniform float2 _patternuv3;
			uniform float4 _OcclusionMap_ST;
			uniform float4 _BumpMap_ST;
			SamplerState sampler_trilinear_repeat;
			uniform float4 _MetallicGlossMap_ST;
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
			uniform float _NormalBackDirInvert;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			uniform float4 _SpecularMap_ST;
			SamplerState sampler_SpecularMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
			uniform float _alpha;
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
			
			float4 MyCustomExpression45_g272( Gradient gradient, float time, float repeatFrequency )
			{
				time = fmod(time * repeatFrequency, 1.0);
				    
				    float3 color = gradient.colors[0].rgb;
				    UNITY_UNROLL
				    for (int c = 1; c < 8; c++)
				    {
				        float colorPos = saturate((time - gradient.colors[c-1].w) / (0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, (float)gradient.colorsLength - 1));
				        color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				    }
				    #ifndef UNITY_COLORSPACE_GAMMA
				    color = half3(GammaToLinearSpaceExact(color.r), GammaToLinearSpaceExact(color.g), GammaToLinearSpaceExact(color.b));
				    #endif
				    float alpha = gradient.alphas[0].x;
				    UNITY_UNROLL
				    for (int a = 1; a < 8; a++)
				    {
				        float alphaPos = saturate((time - gradient.alphas[a-1].y) / (0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, (float)gradient.alphasLength - 1));
				        alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				    }
				    
				    return float4(color, alpha);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float getInterleavedGradientNoise8Bit9_g524( int x, int y )
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

				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode119_g528 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex );
				float3 temp_output_182_0_g528 = (tex2DNode119_g528).rgb;
				float2 UVScalePattern459_g528 = _UVScalePattern;
				float2 texCoord446_g528 = i.ase_texcoord1.xy * ( _patternuv1 * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos471_g528 = cos( ( _patternuv1Rotator * UNITY_PI ) );
				float sin471_g528 = sin( ( _patternuv1Rotator * UNITY_PI ) );
				float2 rotator471_g528 = mul( texCoord446_g528 - float2( 0.5,0.5 ) , float2x2( cos471_g528 , -sin471_g528 , sin471_g528 , cos471_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult449_g528 = lerp( (_Color1_2).rgb , (_Color).rgb , ( _Color1_2.a * SAMPLE_TEXTURE2D( _PatternMask1, sampler_ColorMask, rotator471_g528 ).r ));
				float2 texCoord447_g528 = i.ase_texcoord1.xy * ( _patternuv2 * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos469_g528 = cos( ( _patternuv2Rotator * UNITY_PI ) );
				float sin469_g528 = sin( ( _patternuv2Rotator * UNITY_PI ) );
				float2 rotator469_g528 = mul( texCoord447_g528 - float2( 0.5,0.5 ) , float2x2( cos469_g528 , -sin469_g528 , sin469_g528 , cos469_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult453_g528 = lerp( (_Color2_2).rgb , (_Color2).rgb , ( _Color2_2.a * SAMPLE_TEXTURE2D( _PatternMask2, sampler_ColorMask, rotator469_g528 ).r ));
				float2 uv_ColorMask = i.ase_texcoord1.xy * _ColorMask_ST.xy + _ColorMask_ST.zw;
				float4 tex2DNode86_g528 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask );
				float ColorMask296_g528 = tex2DNode86_g528.r;
				float3 lerpResult424_g528 = lerp( lerpResult449_g528 , lerpResult453_g528 , ColorMask296_g528);
				float2 texCoord448_g528 = i.ase_texcoord1.xy * ( UVScalePattern459_g528 * _patternuv3 ) + float2( 0,0 );
				float cos466_g528 = cos( ( _patternuv3Rotator * UNITY_PI ) );
				float sin466_g528 = sin( ( _patternuv3Rotator * UNITY_PI ) );
				float2 rotator466_g528 = mul( texCoord448_g528 - float2( 0.5,0.5 ) , float2x2( cos466_g528 , -sin466_g528 , sin466_g528 , cos466_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult458_g528 = lerp( (_Color3_2).rgb , (_Color3).rgb , ( _Color3_2.a * SAMPLE_TEXTURE2D( _PatternMask3, sampler_ColorMask, rotator466_g528 ).r ));
				float ColorMask3102_g528 = tex2DNode86_g528.g;
				float3 lerpResult425_g528 = lerp( lerpResult424_g528 , lerpResult458_g528 , ColorMask3102_g528);
				float ColorMask494_g528 = tex2DNode86_g528.b;
				float3 lerpResult426_g528 = lerp( lerpResult425_g528 , (_Color4).rgb , ColorMask494_g528);
				float3 CLEANCOLOR405_g528 = lerpResult426_g528;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap = i.ase_texcoord1.xy * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
				float Carvature197_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap ).r;
				float3 lerpResult289_g528 = lerp( ( temp_output_182_0_g528 * (_BaseColor).rgb * CLEANCOLOR405_g528 ) , temp_cast_0 , ( Carvature197_g528 * _CarvatureStrength ));
				float ExGloss255_g528 = _ExGloss;
				float3 lerpResult313_g528 = lerp( lerpResult289_g528 , ( lerpResult289_g528 * _WetAlbedoOffset ) , ExGloss255_g528);
				float3 DiffuseMix326_g528 = lerpResult313_g528;
				float3 temp_output_1768_345 = DiffuseMix326_g528;
				Gradient gradient37_g272 = NewGradient( 0, 7, 2, float4( 1, 0, 0, 0 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5911803 ), float4( 0.1839623, 0.3384229, 1, 0.7588311 ), float4( 0.838, 0, 1, 0.9264668 ), float4( 1, 0, 0, 1 ), 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				Gradient gradient45_g272 =(Gradient)gradient37_g272;
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap = i.ase_texcoord1.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 texCoord76_g528 = i.ase_texcoord1.xy * ( _DetailUV * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos78_g528 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g528 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g528 = mul( texCoord76_g528 - float2( 0.5,0.5 ) , float2x2( cos78_g528 , -sin78_g528 , sin78_g528 , cos78_g528 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g528 = rotator78_g528;
				float2 break13_g528 = Detail1UV79_g528;
				float temp_output_14_0_g528 = ( pow( 0.25 , 3.0 ) * 0.2 );
				float2 appendResult24_g528 = (float2(( break13_g528.x + temp_output_14_0_g528 ) , break13_g528.y));
				float4 tex2DNode85_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g528 );
				float2 uv_DetailMask81_g528 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g528 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g528 );
				float DetailMask183_g528 = tex2DNode81_g528.r;
				float temp_output_42_0_g528 = ( DetailMask183_g528 * _DetailNormalMapScale );
				float3 appendResult56_g528 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g528 ).g - tex2DNode85_g528.g ) * temp_output_42_0_g528 )));
				float2 appendResult27_g528 = (float2(break13_g528.x , ( break13_g528.y + temp_output_14_0_g528 )));
				float3 appendResult58_g528 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g528 ).g - tex2DNode85_g528.g ) * temp_output_42_0_g528 )));
				float3 normalizeResult66_g528 = normalize( cross( appendResult56_g528 , appendResult58_g528 ) );
				float3 DetailNormal171_g528 = normalizeResult66_g528;
				float2 texCoord7_g528 = i.ase_texcoord1.xy * ( UVScalePattern459_g528 * _DetailUV2 ) + float2( 0,0 );
				float cos10_g528 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g528 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g528 = mul( texCoord7_g528 - float2( 0.5,0.5 ) , float2x2( cos10_g528 , -sin10_g528 , sin10_g528 , cos10_g528 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g528 = rotator10_g528;
				float2 break20_g528 = Detail2UV12_g528;
				float temp_output_21_0_g528 = ( pow( 0.25 , 3.0 ) * 0.2 );
				float2 appendResult32_g528 = (float2(( break20_g528.x + temp_output_21_0_g528 ) , break20_g528.y));
				float4 tex2DNode41_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g528 );
				float DetailMask284_g528 = tex2DNode81_g528.g;
				float temp_output_49_0_g528 = ( DetailMask284_g528 * _DetailNormalMapScale2 );
				float3 appendResult63_g528 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g528 ).g - tex2DNode41_g528.g ) * temp_output_49_0_g528 )));
				float2 appendResult31_g528 = (float2(break20_g528.x , ( break20_g528.y + temp_output_21_0_g528 )));
				float3 appendResult64_g528 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g528 ).g - tex2DNode41_g528.g ) * temp_output_49_0_g528 )));
				float3 normalizeResult70_g528 = normalize( cross( appendResult63_g528 , appendResult64_g528 ) );
				float3 DetailNormal272_g528 = normalizeResult70_g528;
				float3 normalizeResult262_g528 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap ), _Float0 ) , DetailNormal171_g528 ) , DetailNormal272_g528 ) );
				float3 temp_output_1768_342 = normalizeResult262_g528;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal44_g272 = temp_output_1768_342;
				float3 worldNormal44_g272 = float3(dot(tanToWorld0,tanNormal44_g272), dot(tanToWorld1,tanNormal44_g272), dot(tanToWorld2,tanNormal44_g272));
				float dotResult7_g272 = dot( ase_worldViewDir , worldNormal44_g272 );
				float time45_g272 = dotResult7_g272;
				float repeatFrequency45_g272 = _IriScale;
				float4 localMyCustomExpression45_g272 = MyCustomExpression45_g272( gradient45_g272 , time45_g272 , repeatFrequency45_g272 );
				float3 temp_output_47_0_g272 = (localMyCustomExpression45_g272).xyz;
				float3 temp_output_12_0_g272 = (temp_output_47_0_g272).xyz;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1768_345;
				float2 uv_MetallicGlossMap = i.ase_texcoord1.xy * _MetallicGlossMap_ST.xy + _MetallicGlossMap_ST.zw;
				float4 tex2DNode139_g528 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap );
				float lerpResult167_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask);
				float lerpResult193_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask2);
				float lerpResult434_g528 = lerp( ( lerpResult167_g528 * _Metallic ) , ( lerpResult193_g528 * _Metallic2 ) , ColorMask296_g528);
				float lerpResult181_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask3);
				float lerpResult437_g528 = lerp( lerpResult434_g528 , ( lerpResult181_g528 * _Metallic3 ) , ColorMask3102_g528);
				float lerpResult208_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask4);
				float lerpResult438_g528 = lerp( lerpResult437_g528 , ( lerpResult208_g528 * _Metallic4 ) , ColorMask494_g528);
				float Detail1148_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g528 ).r;
				float Detail2194_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g528 ).r;
				float temp_output_1768_340 = saturate( ( ( lerpResult438_g528 - ( ( 1.0 - Detail1148_g528 ) * ( _DetailMetallicScale * DetailMask183_g528 ) ) ) - ( ( 1.0 - Detail2194_g528 ) * ( _DetailMetallicScale2 * DetailMask284_g528 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1768_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1768_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1768_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1768_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 worldSpaceLightDir = Unity_SafeNormalize(UnityWorldSpaceLightDir(ase_worldPos));
				float3 lightDir14_g499 = worldSpaceLightDir;
				float3 viewDir15_g499 = ase_worldViewDir;
				float3 normalizeResult136_g499 = ASESafeNormalize( ( lightDir14_g499 + viewDir15_g499 ) );
				float dotResult137_g499 = dot( lightDir14_g499 , normalizeResult136_g499 );
				float LdotH139_g499 = saturate( dotResult137_g499 );
				float lerpResult143_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness);
				float lerpResult158_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness2);
				float lerpResult428_g528 = lerp( ( lerpResult143_g528 * _Glossiness ) , ( lerpResult158_g528 * _Glossiness2 ) , ColorMask296_g528);
				float lerpResult157_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness3);
				float lerpResult429_g528 = lerp( lerpResult428_g528 , ( lerpResult157_g528 * _Glossiness3 ) , ColorMask3102_g528);
				float lerpResult187_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness4);
				float lerpResult230_g528 = lerp( lerpResult429_g528 , ( _Glossiness4 * lerpResult187_g528 ) , ColorMask494_g528);
				float lerpResult305_g528 = lerp( ( ( lerpResult230_g528 - ( ( 1.0 - Detail1148_g528 ) * ( _DetailGlossScale * DetailMask183_g528 ) ) ) - ( ( 1.0 - Detail2194_g528 ) * ( _DetailGlossScale2 * DetailMask284_g528 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g528 ));
				float OutSmoothness1458 = saturate( lerpResult305_g528 );
				float smoothness169_g499 = OutSmoothness1458;
				float perceprualRoughness188_g499 = ( 1.0 - smoothness169_g499 );
				half fd90273_g499 = ( 0.5 + ( 2.0 * LdotH139_g499 * LdotH139_g499 * perceprualRoughness188_g499 ) );
				float3 OutNormal1457 = temp_output_1768_342;
				float3 switchResult1710 = (((ase_vface>0)?(OutNormal1457):(-OutNormal1457)));
				float3 NormalFace1715 = ( _NormalBackDirInvert == 1.0 ? switchResult1710 : OutNormal1457 );
				float3 tanNormal29_g499 = NormalFace1715;
				float3 worldNormal29_g499 = float3(dot(tanToWorld0,tanNormal29_g499), dot(tanToWorld1,tanNormal29_g499), dot(tanToWorld2,tanNormal29_g499));
				float3 normalizeResult25_g499 = normalize( worldNormal29_g499 );
				float3 normalDir28_g499 = normalizeResult25_g499;
				float dotResult21_g499 = dot( lightDir14_g499 , normalDir28_g499 );
				float NdotL20_g499 = saturate( dotResult21_g499 );
				half lightScatter253_g499 = ( ( ( fd90273_g499 - 1.0 ) * pow( ( 1.0 - NdotL20_g499 ) , 5.0 ) ) + 1.0 );
				float dotResult56_g499 = dot( normalDir28_g499 , viewDir15_g499 );
				float NdotV55_g499 = saturate( dotResult56_g499 );
				half viewScatter254_g499 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g499 ) , 5.0 ) * ( fd90273_g499 - 1.0 ) ) );
				half disneydiffuse251_g499 = ( lightScatter253_g499 * viewScatter254_g499 );
				half Diffuseterm281_g499 = ( disneydiffuse251_g499 * NdotL20_g499 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 lightAtten296_g499 = ( ase_lightColor.rgb * ase_atten );
				UnityGIInput data203_g499;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data203_g499 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm203_g499
				data203_g499.lightmapUV = i.ase_lmap;
				#endif //dylm203_g499
				#if UNITY_SHOULD_SAMPLE_SH //fsh203_g499
				data203_g499.ambient = i.ase_sh;
				#endif //fsh203_g499
				UnityGI gi203_g499 = UnityGI_Base(data203_g499, 1, normalDir28_g499);
				float4 tex2DNode259_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap );
				float lerpResult298_g528 = lerp( 1.0 , tex2DNode259_g528.g , _OcculusionStrength);
				float smoothstepResult266_g528 = smoothstep( 0.0 , 0.8 , Detail1148_g528);
				float lerpResult297_g528 = lerp( 1.0 , smoothstepResult266_g528 , ( _DetailOcculusionScale * DetailMask183_g528 ));
				float smoothstepResult274_g528 = smoothstep( 0.0 , 0.8 , Detail2194_g528);
				float lerpResult299_g528 = lerp( 1.0 , smoothstepResult274_g528 , ( _DetailOcculusionScale2 * DetailMask284_g528 ));
				float OcclusionMix323_g528 = saturate( ( lerpResult298_g528 * lerpResult297_g528 * lerpResult299_g528 ) );
				float OutAO1462 = OcclusionMix323_g528;
				float occlusion306_g499 = OutAO1462;
				half Roughness64_g499 = max( ( perceprualRoughness188_g499 * perceprualRoughness188_g499 ) , 0.002 );
				half SmithJointGGXVisibilityTerm42_g499 = ( 0.5 / ( ( ( ( NdotV55_g499 * ( 1.0 - Roughness64_g499 ) ) + Roughness64_g499 ) * NdotL20_g499 ) + 1E-05 + ( NdotV55_g499 * ( Roughness64_g499 + ( ( 1.0 - Roughness64_g499 ) * NdotL20_g499 ) ) ) ) );
				float a266_g499 = ( Roughness64_g499 * Roughness64_g499 );
				float3 normalizeResult87_g499 = ASESafeNormalize( ( lightDir14_g499 + viewDir15_g499 ) );
				float dotResult88_g499 = dot( normalDir28_g499 , normalizeResult87_g499 );
				float NdotH90_g499 = saturate( dotResult88_g499 );
				float d99_g499 = ( ( ( ( NdotH90_g499 * a266_g499 ) - NdotH90_g499 ) * NdotH90_g499 ) + 1.0 );
				half GGXTerm43_g499 = ( ( ( 1.0 / UNITY_PI ) * a266_g499 ) / ( ( d99_g499 * d99_g499 ) + 1E-07 ) );
				float temp_output_36_0_g499 = ( SmithJointGGXVisibilityTerm42_g499 * GGXTerm43_g499 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g499 = sqrt( max( 0.0001 , temp_output_36_0_g499 ) );
				#else
				float staticSwitch5_g499 = temp_output_36_0_g499;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g499 = 0.0;
				#else
				float staticSwitch119_g499 = max( 0.0 , ( staticSwitch5_g499 * NdotL20_g499 ) );
				#endif
				float3 SpecC1665 = (_SpecColor).rgb;
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = SpecC1665;
				#endif
				float2 uv_SpecularMap = i.ase_texcoord1.xy * _SpecularMap_ST.xy + _SpecularMap_ST.zw;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap )).rgb ),temp_output_1768_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float3 SpecColor140_g499 = OutSpecular1456;
				float SpecularTerm34_g499 = ( staticSwitch119_g499 * ( SpecColor140_g499.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
				half3 FresnelTerm130_g499 = ( ( pow( ( 1.0 - LdotH139_g499 ) , 5.0 ) * ( 1.0 - SpecColor140_g499 ) ) + SpecColor140_g499 );
				half metallic176_g499 = 0.0;
				half localOneMinusReflectivity176_g499 = OneMinusReflectivity( metallic176_g499 );
				half GrazingTerm163_g499 = saturate( ( smoothness169_g499 + ( 1.0 - localOneMinusReflectivity176_g499 ) ) );
				float3 temp_cast_3 = (GrazingTerm163_g499).xxx;
				float3 lerpResult159_g499 = lerp( SpecColor140_g499 , temp_cast_3 , pow( ( 1.0 - NdotV55_g499 ) , 5.0 ));
				half3 FresnelLerp165_g499 = lerpResult159_g499;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g499 = ( 1.0 - ( 0.28 * Roughness64_g499 * perceprualRoughness188_g499 ) );
				#else
				float staticSwitch183_g499 = ( 1.0 / ( ( Roughness64_g499 * Roughness64_g499 ) + 1.0 ) );
				#endif
				half SurfaceReduction182_g499 = staticSwitch183_g499;
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
				Unity_GlossyEnvironmentData g299_g499 = UnityGlossyEnvironmentSetup( smoothness169_g499, ase_worldViewDir, normalDir28_g499, float3(0,0,0));
				float3 indirectSpecular299_g499 = UnityGI_IndirectSpecular( data, occlusion306_g499, normalDir28_g499, g299_g499 );
				#ifdef _ENVIRONMENTREFLECTIONS_OFF
				float3 staticSwitch313_g499 = float3( 0,0,0 );
				#else
				float3 staticSwitch313_g499 = ( FresnelLerp165_g499 * SurfaceReduction182_g499 * indirectSpecular299_g499 );
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g499 = float3( 0,0,0 );
				#else
				float3 staticSwitch305_g499 = staticSwitch313_g499;
				#endif
				float3 emcol486_g528 = ( temp_output_182_0_g528 * CLEANCOLOR405_g528 );
				#ifdef _EMISSIONCOLORTEXBASE_OFF
				float3 staticSwitch404_g528 = (_EmissionColor).rgb;
				#else
				float3 staticSwitch404_g528 = emcol486_g528;
				#endif
				float2 appendResult410_g528 = (float2(_UVScroll.x , _UVScroll.y));
				float2 appendResult413_g528 = (float2(_UVScroll.z , _UVScroll.w));
				float2 texCoord409_g528 = i.ase_texcoord1.xy * appendResult410_g528 + float2( 0,0 );
				float2 panner412_g528 = ( _Time.y * ( appendResult410_g528 * appendResult413_g528 ) + texCoord409_g528);
				float cos421_g528 = cos( ( _UVScrollRotator * UNITY_PI ) );
				float sin421_g528 = sin( ( _UVScrollRotator * UNITY_PI ) );
				float2 rotator421_g528 = mul( panner412_g528 - float2( 0.5,0.5 ) , float2x2( cos421_g528 , -sin421_g528 , sin421_g528 , cos421_g528 )) + float2( 0.5,0.5 );
				float EmissionMask384_g528 = tex2DNode139_g528.g;
				float3 OutEmission1463 = ( ( staticSwitch404_g528 * _EmissionStrength * (SAMPLE_TEXTURE2D( _EffectMap, sampler_OcclusionMap, rotator421_g528 )).rgb ) * EmissionMask384_g528 );
				float3 tanNormal27_g522 = OutNormal1457;
				float3 worldNormal27_g522 = float3(dot(tanToWorld0,tanNormal27_g522), dot(tanToWorld1,tanNormal27_g522), dot(tanToWorld2,tanNormal27_g522));
				float3 normalizeResult61_g522 = normalize( worldNormal27_g522 );
				float dotResult20_g522 = dot( ase_worldViewDir , -( ( normalizeResult61_g522 * _TransNormalDistortion ) + worldSpaceLightDir ) );
				float OutThickness1633 = tex2DNode139_g528.b;
				float temp_output_59_0_g522 = ( _Translucency * OutThickness1633 );
				float3 lerpResult39_g522 = lerp( ase_lightColor.rgb , ( ase_lightColor.rgb * ase_atten ) , _TransShadow);
				float3 Diffuse1553 = temp_output_1768_345;
				float3 temp_output_6_0_g522 = Diffuse1553;
				UnityGIInput data15_g522;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data15_g522 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm15_g522
				data15_g522.lightmapUV = i.ase_lmap;
				#endif //dylm15_g522
				#if UNITY_SHOULD_SAMPLE_SH //fsh15_g522
				data15_g522.ambient = i.ase_sh;
				#endif //fsh15_g522
				UnityGI gi15_g522 = UnityGI_Base(data15_g522, 1, normalizeResult61_g522);
				float3 temp_output_42_0_g522 = ( ( ( pow( saturate( dotResult20_g522 ) , _TransScattering ) * _TransDirect ) * temp_output_59_0_g522 * lerpResult39_g522 * temp_output_6_0_g522 ) + ( ( gi15_g522.indirect.diffuse * _TransAmbient ) * temp_output_59_0_g522 * temp_output_6_0_g522 * lerpResult39_g522 ) );
				
				float4 screenPos = i.ase_texcoord9;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g524 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g524 = (int)(temp_output_1_0_g524).x;
				int y9_g524 = (int)(temp_output_1_0_g524).y;
				float localgetInterleavedGradientNoise8Bit9_g524 = getInterleavedGradientNoise8Bit9_g524( x9_g524 , y9_g524 );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float3 tanNormal1730 = NormalFace1715;
				float3 worldNormal1730 = normalize( float3(dot(tanToWorld0,tanNormal1730), dot(tanToWorld1,tanNormal1730), dot(tanToWorld2,tanNormal1730)) );
				float Color1Alpha101_g528 = _Color.a;
				float Color2Alpha97_g528 = _Color2.a;
				float lerpResult476_g528 = lerp( Color1Alpha101_g528 , Color2Alpha97_g528 , ColorMask296_g528);
				float Color3Alpha98_g528 = _Color3.a;
				float lerpResult477_g528 = lerp( lerpResult476_g528 , Color3Alpha98_g528 , ColorMask3102_g528);
				float Color4Alpha100_g528 = _Color4.a;
				float lerpResult478_g528 = lerp( lerpResult477_g528 , Color4Alpha100_g528 , ColorMask494_g528);
				float AlphaInput137_g528 = tex2DNode119_g528.a;
				float OutOp1464 = ( saturate( ( lerpResult478_g528 * AlphaInput137_g528 ) ) * _alpha );
				float fresnelNdotV1726 = dot( normalize( worldNormal1730 ), ase_worldViewDir );
				float fresnelNode1726 = ( OutOp1464 + _FresnelScale * pow( max( 1.0 - fresnelNdotV1726 , 0.0001 ), _FresnelPower ) );
				float2 temp_output_1_0_g475 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g475 = temp_output_1_0_g475;
				float mulTime15_g475 = _Time.y * 60.0;
				float ifLocalVar16_g475 = 0;
				if( _IsScreenshotActive > 0.0 )
				ifLocalVar16_g475 = _ScreenshotToolFrame;
				else if( _IsScreenshotActive == 0.0 )
				ifLocalVar16_g475 = mulTime15_g475;
				float iFrame12_g475 = ifLocalVar16_g475;
				float localIGNAnimated12_g475 = IGNAnimated12_g475( uv12_g475 , iFrame12_g475 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch1695 = step( localIGNAnimated12_g475 , fresnelNode1726 );
				#else
				float staticSwitch1695 = step( localgetInterleavedGradientNoise8Bit9_g524 , fresnelNode1726 );
				#endif
				float clampResult353_g528 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g528 = tex2DNode259_g528.b;
				float Mask1604 = ( step( pow( ( 1.0 - clampResult353_g528 ) , 0.2 ) , pow( Tearing360_g528 , 0.5 ) ) * AlphaInput137_g528 );
				clip( ( staticSwitch1695 * Mask1604 ) - _Cutoff);
				float Clip1613 = 1.0;
				
				
				outColor = ( ( ( OutAlbedo1461 * ( ( Diffuseterm281_g499 * lightAtten296_g499 ) + ( gi203_g499.indirect.diffuse * occlusion306_g499 ) ) ) + ( SpecularTerm34_g499 * lightAtten296_g499 * FresnelTerm130_g499 ) + staticSwitch305_g499 ) + OutEmission1463 + temp_output_42_0_g522 );
				outAlpha = Clip1613;
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
            #include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature _SHADERTYPE_ITEM
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_OFF
			#pragma multi_compile __ _SPECULARSETUP_ON
			#pragma multi_compile __ _IRIDISCENT_ON
			#pragma multi_compile __ _TEMPORALFILTER_ON
			#include "Assets/Example Folders/Testing/testinc.cginc"
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
			uniform float _IriScale;
			uniform float _IsScreenshotActive;
			uniform float _ScreenshotToolFrame;
			uniform float _CullMode;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _DetailUV2Rotator;
			uniform float _DetailNormalMapScale2;
			uniform float _GlossinessReflection;
			uniform float _AlphaEx;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailNormalMapScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV2;
			uniform float _ExGloss;
			uniform float _Float0;
			uniform float _EmissionStrength;
			uniform float4 _UVScroll;
			uniform float _UVScrollRotator;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _Glossiness3;
			uniform float _Metallic;
			uniform float _Metallic2;
			uniform float _Metallic3;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			uniform float _WetnessPower;
			uniform float _DetailGlossScale;
			uniform float _DetailGlossScale2;
			uniform float _Metallic4;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _WetAlbedoOffset;
			uniform float4 _Color;
			uniform float4 _Color1_2;
			uniform float4 _Color4;
			uniform float2 _UVScalePattern;
			uniform float4 _Color3;
			uniform float4 _Color3_2;
			uniform float4 _Color2_2;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask2);
			SamplerState sampler_PatternMask2;
			uniform float _patternuv2Rotator;
			uniform float _patternuv1Rotator;
			uniform float _patternuv3Rotator;
			uniform float4 _EmissionColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask1);
			SamplerState sampler_PatternMask1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask3);
			SamplerState sampler_PatternMask3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _MainTex_ST;
			uniform float2 _patternuv1;
			uniform float2 _patternuv2;
			uniform float4 _ColorMask_ST;
			uniform float2 _patternuv3;
			uniform float4 _OcclusionMap_ST;
			uniform float4 _BumpMap_ST;
			SamplerState sampler_trilinear_repeat;
			uniform float4 _MetallicGlossMap_ST;
			SamplerState sampler_MetallicGlossMap;
			uniform float _MetallicMask;
			uniform float _MetallicMask2;
			uniform float _MetallicMask3;
			uniform float _MetallicMask4;
			uniform float _OcculusionStrength;
			uniform float _DetailOcculusionScale;
			uniform float _DetailOcculusionScale2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecularMap);
			uniform float4 _SpecularMap_ST;
			SamplerState sampler_SpecularMap;
			uniform float _Roughness;
			uniform float _Roughness2;
			uniform float _Roughness3;
			uniform float _Glossiness4;
			uniform float _Roughness4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EffectMap);
			uniform float _NormalBackDirInvert;
			uniform float _alpha;
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
			
			float4 MyCustomExpression45_g272( Gradient gradient, float time, float repeatFrequency )
			{
				time = fmod(time * repeatFrequency, 1.0);
				    
				    float3 color = gradient.colors[0].rgb;
				    UNITY_UNROLL
				    for (int c = 1; c < 8; c++)
				    {
				        float colorPos = saturate((time - gradient.colors[c-1].w) / (0.00001 + (gradient.colors[c].w - gradient.colors[c-1].w)) * step(c, (float)gradient.colorsLength - 1));
				        color = lerp(color, gradient.colors[c].rgb, lerp(colorPos, step(0.01, colorPos), gradient.type));
				    }
				    #ifndef UNITY_COLORSPACE_GAMMA
				    color = half3(GammaToLinearSpaceExact(color.r), GammaToLinearSpaceExact(color.g), GammaToLinearSpaceExact(color.b));
				    #endif
				    float alpha = gradient.alphas[0].x;
				    UNITY_UNROLL
				    for (int a = 1; a < 8; a++)
				    {
				        float alphaPos = saturate((time - gradient.alphas[a-1].y) / (0.00001 + (gradient.alphas[a].y - gradient.alphas[a-1].y)) * step(a, (float)gradient.alphasLength - 1));
				        alpha = lerp(alpha, gradient.alphas[a].x, lerp(alphaPos, step(0.01, alphaPos), gradient.type));
				    }
				    
				    return float4(color, alpha);
			}
			
			float3 GI2_g521( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float3 GI2_g503( float3 normal )
			{
				return ShadeSH9(half4(normal, 1.0));
			}
			
			float getInterleavedGradientNoise8Bit9_g524( int x, int y )
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
				float4 ase_texcoord6 : TEXCOORD6;
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
				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode119_g528 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex );
				float3 temp_output_182_0_g528 = (tex2DNode119_g528).rgb;
				float2 UVScalePattern459_g528 = _UVScalePattern;
				float2 texCoord446_g528 = i.ase_texcoord1.xy * ( _patternuv1 * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos471_g528 = cos( ( _patternuv1Rotator * UNITY_PI ) );
				float sin471_g528 = sin( ( _patternuv1Rotator * UNITY_PI ) );
				float2 rotator471_g528 = mul( texCoord446_g528 - float2( 0.5,0.5 ) , float2x2( cos471_g528 , -sin471_g528 , sin471_g528 , cos471_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult449_g528 = lerp( (_Color1_2).rgb , (_Color).rgb , ( _Color1_2.a * SAMPLE_TEXTURE2D( _PatternMask1, sampler_ColorMask, rotator471_g528 ).r ));
				float2 texCoord447_g528 = i.ase_texcoord1.xy * ( _patternuv2 * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos469_g528 = cos( ( _patternuv2Rotator * UNITY_PI ) );
				float sin469_g528 = sin( ( _patternuv2Rotator * UNITY_PI ) );
				float2 rotator469_g528 = mul( texCoord447_g528 - float2( 0.5,0.5 ) , float2x2( cos469_g528 , -sin469_g528 , sin469_g528 , cos469_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult453_g528 = lerp( (_Color2_2).rgb , (_Color2).rgb , ( _Color2_2.a * SAMPLE_TEXTURE2D( _PatternMask2, sampler_ColorMask, rotator469_g528 ).r ));
				float2 uv_ColorMask = i.ase_texcoord1.xy * _ColorMask_ST.xy + _ColorMask_ST.zw;
				float4 tex2DNode86_g528 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask );
				float ColorMask296_g528 = tex2DNode86_g528.r;
				float3 lerpResult424_g528 = lerp( lerpResult449_g528 , lerpResult453_g528 , ColorMask296_g528);
				float2 texCoord448_g528 = i.ase_texcoord1.xy * ( UVScalePattern459_g528 * _patternuv3 ) + float2( 0,0 );
				float cos466_g528 = cos( ( _patternuv3Rotator * UNITY_PI ) );
				float sin466_g528 = sin( ( _patternuv3Rotator * UNITY_PI ) );
				float2 rotator466_g528 = mul( texCoord448_g528 - float2( 0.5,0.5 ) , float2x2( cos466_g528 , -sin466_g528 , sin466_g528 , cos466_g528 )) + float2( 0.5,0.5 );
				float3 lerpResult458_g528 = lerp( (_Color3_2).rgb , (_Color3).rgb , ( _Color3_2.a * SAMPLE_TEXTURE2D( _PatternMask3, sampler_ColorMask, rotator466_g528 ).r ));
				float ColorMask3102_g528 = tex2DNode86_g528.g;
				float3 lerpResult425_g528 = lerp( lerpResult424_g528 , lerpResult458_g528 , ColorMask3102_g528);
				float ColorMask494_g528 = tex2DNode86_g528.b;
				float3 lerpResult426_g528 = lerp( lerpResult425_g528 , (_Color4).rgb , ColorMask494_g528);
				float3 CLEANCOLOR405_g528 = lerpResult426_g528;
				float3 temp_cast_0 = (1.0).xxx;
				float2 uv_OcclusionMap = i.ase_texcoord1.xy * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
				float Carvature197_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap ).r;
				float3 lerpResult289_g528 = lerp( ( temp_output_182_0_g528 * (_BaseColor).rgb * CLEANCOLOR405_g528 ) , temp_cast_0 , ( Carvature197_g528 * _CarvatureStrength ));
				float ExGloss255_g528 = _ExGloss;
				float3 lerpResult313_g528 = lerp( lerpResult289_g528 , ( lerpResult289_g528 * _WetAlbedoOffset ) , ExGloss255_g528);
				float3 DiffuseMix326_g528 = lerpResult313_g528;
				float3 temp_output_1768_345 = DiffuseMix326_g528;
				Gradient gradient37_g272 = NewGradient( 0, 7, 2, float4( 1, 0, 0, 0 ), float4( 1, 0.5313669, 0, 0.1499962 ), float4( 0.9518073, 1, 0, 0.3176471 ), float4( 0, 0.9381461, 1, 0.5911803 ), float4( 0.1839623, 0.3384229, 1, 0.7588311 ), float4( 0.838, 0, 1, 0.9264668 ), float4( 1, 0, 0, 1 ), 0, float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
				Gradient gradient45_g272 =(Gradient)gradient37_g272;
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap = i.ase_texcoord1.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float2 texCoord76_g528 = i.ase_texcoord1.xy * ( _DetailUV * UVScalePattern459_g528 ) + float2( 0,0 );
				float cos78_g528 = cos( ( _DetailUVRotator * UNITY_PI ) );
				float sin78_g528 = sin( ( _DetailUVRotator * UNITY_PI ) );
				float2 rotator78_g528 = mul( texCoord76_g528 - float2( 0.5,0.5 ) , float2x2( cos78_g528 , -sin78_g528 , sin78_g528 , cos78_g528 )) + float2( 0.5,0.5 );
				float2 Detail1UV79_g528 = rotator78_g528;
				float2 break13_g528 = Detail1UV79_g528;
				float temp_output_14_0_g528 = ( pow( 0.25 , 3.0 ) * 0.2 );
				float2 appendResult24_g528 = (float2(( break13_g528.x + temp_output_14_0_g528 ) , break13_g528.y));
				float4 tex2DNode85_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g528 );
				float2 uv_DetailMask81_g528 = i.ase_texcoord1.xy;
				float4 tex2DNode81_g528 = SAMPLE_TEXTURE2D( _DetailMask, sampler_DetailMask, uv_DetailMask81_g528 );
				float DetailMask183_g528 = tex2DNode81_g528.r;
				float temp_output_42_0_g528 = ( DetailMask183_g528 * _DetailNormalMapScale );
				float3 appendResult56_g528 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult24_g528 ).g - tex2DNode85_g528.g ) * temp_output_42_0_g528 )));
				float2 appendResult27_g528 = (float2(break13_g528.x , ( break13_g528.y + temp_output_14_0_g528 )));
				float3 appendResult58_g528 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, appendResult27_g528 ).g - tex2DNode85_g528.g ) * temp_output_42_0_g528 )));
				float3 normalizeResult66_g528 = normalize( cross( appendResult56_g528 , appendResult58_g528 ) );
				float3 DetailNormal171_g528 = normalizeResult66_g528;
				float2 texCoord7_g528 = i.ase_texcoord1.xy * ( UVScalePattern459_g528 * _DetailUV2 ) + float2( 0,0 );
				float cos10_g528 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
				float sin10_g528 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
				float2 rotator10_g528 = mul( texCoord7_g528 - float2( 0.5,0.5 ) , float2x2( cos10_g528 , -sin10_g528 , sin10_g528 , cos10_g528 )) + float2( 0.5,0.5 );
				float2 Detail2UV12_g528 = rotator10_g528;
				float2 break20_g528 = Detail2UV12_g528;
				float temp_output_21_0_g528 = ( pow( 0.25 , 3.0 ) * 0.2 );
				float2 appendResult32_g528 = (float2(( break20_g528.x + temp_output_21_0_g528 ) , break20_g528.y));
				float4 tex2DNode41_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g528 );
				float DetailMask284_g528 = tex2DNode81_g528.g;
				float temp_output_49_0_g528 = ( DetailMask284_g528 * _DetailNormalMapScale2 );
				float3 appendResult63_g528 = (float3(1.0 , 0.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult32_g528 ).g - tex2DNode41_g528.g ) * temp_output_49_0_g528 )));
				float2 appendResult31_g528 = (float2(break20_g528.x , ( break20_g528.y + temp_output_21_0_g528 )));
				float3 appendResult64_g528 = (float3(0.0 , 1.0 , ( ( SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, appendResult31_g528 ).g - tex2DNode41_g528.g ) * temp_output_49_0_g528 )));
				float3 normalizeResult70_g528 = normalize( cross( appendResult63_g528 , appendResult64_g528 ) );
				float3 DetailNormal272_g528 = normalizeResult70_g528;
				float3 normalizeResult262_g528 = normalize( BlendNormals( BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, uv_BumpMap ), _Float0 ) , DetailNormal171_g528 ) , DetailNormal272_g528 ) );
				float3 temp_output_1768_342 = normalizeResult262_g528;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal44_g272 = temp_output_1768_342;
				float3 worldNormal44_g272 = float3(dot(tanToWorld0,tanNormal44_g272), dot(tanToWorld1,tanNormal44_g272), dot(tanToWorld2,tanNormal44_g272));
				float dotResult7_g272 = dot( ase_worldViewDir , worldNormal44_g272 );
				float time45_g272 = dotResult7_g272;
				float repeatFrequency45_g272 = _IriScale;
				float4 localMyCustomExpression45_g272 = MyCustomExpression45_g272( gradient45_g272 , time45_g272 , repeatFrequency45_g272 );
				float3 temp_output_47_0_g272 = (localMyCustomExpression45_g272).xyz;
				float3 temp_output_12_0_g272 = (temp_output_47_0_g272).xyz;
				float temp_output_10_0_g272 = radians( ( 360.0 * _IriHue ) );
				float temp_output_13_0_g272 = cos( temp_output_10_0_g272 );
				float3 _k = float3(0.57735,0.57735,0.57735);
				float dotResult14_g272 = dot( _k , temp_output_12_0_g272 );
				float3 temp_output_32_0_g272 = ( ( ( ( ( ( temp_output_12_0_g272 * temp_output_13_0_g272 ) + ( cross( _k , temp_output_12_0_g272 ) * sin( temp_output_10_0_g272 ) ) + ( _k * dotResult14_g272 * ( 1.0 - temp_output_13_0_g272 ) ) ) - float3( 0.5,0.5,0.5 ) ) * ( _IriContrast * 2.0 ) ) + float3( 0.5,0.5,0.5 ) ) + ( ( _IriBrightness * 2.0 ) - 1.0 ) );
				float dotResult34_g272 = dot( temp_output_32_0_g272 , float3(0.39,0.59,0.11) );
				float3 temp_cast_1 = (dotResult34_g272).xxx;
				float3 lerpResult35_g272 = lerp( temp_cast_1 , temp_output_32_0_g272 , ( _IriSaturation * 2.0 ));
				float3 temp_output_1448_0 = lerpResult35_g272;
				float3 blendOpSrc1451 = temp_output_1448_0;
				float3 blendOpDest1451 = temp_output_1768_345;
				float2 uv_MetallicGlossMap = i.ase_texcoord1.xy * _MetallicGlossMap_ST.xy + _MetallicGlossMap_ST.zw;
				float4 tex2DNode139_g528 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, uv_MetallicGlossMap );
				float lerpResult167_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask);
				float lerpResult193_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask2);
				float lerpResult434_g528 = lerp( ( lerpResult167_g528 * _Metallic ) , ( lerpResult193_g528 * _Metallic2 ) , ColorMask296_g528);
				float lerpResult181_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask3);
				float lerpResult437_g528 = lerp( lerpResult434_g528 , ( lerpResult181_g528 * _Metallic3 ) , ColorMask3102_g528);
				float lerpResult208_g528 = lerp( 1.0 , tex2DNode139_g528.r , _MetallicMask4);
				float lerpResult438_g528 = lerp( lerpResult437_g528 , ( lerpResult208_g528 * _Metallic4 ) , ColorMask494_g528);
				float Detail1148_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap, sampler_trilinear_repeat, Detail1UV79_g528 ).r;
				float Detail2194_g528 = SAMPLE_TEXTURE2D( _DetailGlossMap2, sampler_trilinear_repeat, Detail2UV12_g528 ).r;
				float temp_output_1768_340 = saturate( ( ( lerpResult438_g528 - ( ( 1.0 - Detail1148_g528 ) * ( _DetailMetallicScale * DetailMask183_g528 ) ) ) - ( ( 1.0 - Detail2194_g528 ) * ( _DetailMetallicScale2 * DetailMask284_g528 ) ) ) );
				float3 lerpBlendMode1451 = lerp(blendOpDest1451,( blendOpSrc1451 * blendOpDest1451 ),temp_output_1768_340);
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1453 = ( saturate( lerpBlendMode1451 ));
				#else
				float3 staticSwitch1453 = temp_output_1768_345;
				#endif
				half3 specColor1455 = (0).xxx;
				half oneMinusReflectivity1455 = 0;
				half3 diffuseAndSpecularFromMetallic1455 = DiffuseAndSpecularFromMetallic(staticSwitch1453,temp_output_1768_340,specColor1455,oneMinusReflectivity1455);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1493 = temp_output_1768_345;
				#else
				float3 staticSwitch1493 = diffuseAndSpecularFromMetallic1455;
				#endif
				float3 OutAlbedo1461 = staticSwitch1493;
				float3 temp_output_3_0_g502 = OutAlbedo1461;
				float4 tex2DNode259_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap );
				float lerpResult298_g528 = lerp( 1.0 , tex2DNode259_g528.g , _OcculusionStrength);
				float smoothstepResult266_g528 = smoothstep( 0.0 , 0.8 , Detail1148_g528);
				float lerpResult297_g528 = lerp( 1.0 , smoothstepResult266_g528 , ( _DetailOcculusionScale * DetailMask183_g528 ));
				float smoothstepResult274_g528 = smoothstep( 0.0 , 0.8 , Detail2194_g528);
				float lerpResult299_g528 = lerp( 1.0 , smoothstepResult274_g528 , ( _DetailOcculusionScale2 * DetailMask284_g528 ));
				float OcclusionMix323_g528 = saturate( ( lerpResult298_g528 * lerpResult297_g528 * lerpResult299_g528 ) );
				float OutAO1462 = OcclusionMix323_g528;
				float temp_output_4_0_g502 = OutAO1462;
				float4 appendResult2_g502 = (float4(temp_output_3_0_g502 , temp_output_4_0_g502));
				
				float3 SpecC1665 = (_SpecColor).rgb;
				#ifdef _IRIDISCENT_ON
				float3 staticSwitch1502 = temp_output_1448_0;
				#else
				float3 staticSwitch1502 = SpecC1665;
				#endif
				float2 uv_SpecularMap = i.ase_texcoord1.xy * _SpecularMap_ST.xy + _SpecularMap_ST.zw;
				half3 specColor1503 = (0).xxx;
				half oneMinusReflectivity1503 = 0;
				half3 diffuseAndSpecularFromMetallic1503 = DiffuseAndSpecularFromMetallic(( staticSwitch1502 * (SAMPLE_TEXTURE2D( _SpecularMap, sampler_SpecularMap, uv_SpecularMap )).rgb ),temp_output_1768_340,specColor1503,oneMinusReflectivity1503);
				#ifdef _SPECULARSETUP_ON
				float3 staticSwitch1496 = specColor1503;
				#else
				float3 staticSwitch1496 = specColor1455;
				#endif
				float3 OutSpecular1456 = staticSwitch1496;
				float lerpResult143_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness);
				float lerpResult158_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness2);
				float lerpResult428_g528 = lerp( ( lerpResult143_g528 * _Glossiness ) , ( lerpResult158_g528 * _Glossiness2 ) , ColorMask296_g528);
				float lerpResult157_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness3);
				float lerpResult429_g528 = lerp( lerpResult428_g528 , ( lerpResult157_g528 * _Glossiness3 ) , ColorMask3102_g528);
				float lerpResult187_g528 = lerp( 1.0 , tex2DNode139_g528.a , _Roughness4);
				float lerpResult230_g528 = lerp( lerpResult429_g528 , ( _Glossiness4 * lerpResult187_g528 ) , ColorMask494_g528);
				float lerpResult305_g528 = lerp( ( ( lerpResult230_g528 - ( ( 1.0 - Detail1148_g528 ) * ( _DetailGlossScale * DetailMask183_g528 ) ) ) - ( ( 1.0 - Detail2194_g528 ) * ( _DetailGlossScale2 * DetailMask284_g528 ) ) ) , 1.0 , ( _WetnessPower * ExGloss255_g528 ));
				float OutSmoothness1458 = saturate( lerpResult305_g528 );
				float4 appendResult5_g502 = (float4(OutSpecular1456 , OutSmoothness1458));
				
				float3 OutNormal1457 = temp_output_1768_342;
				float3 tanNormal11_g502 = OutNormal1457;
				float3 worldNormal11_g502 = float3(dot(tanToWorld0,tanNormal11_g502), dot(tanToWorld1,tanNormal11_g502), dot(tanToWorld2,tanNormal11_g502));
				float3 normalizeResult21_g502 = normalize( worldNormal11_g502 );
				float4 appendResult13_g502 = (float4(( ( normalizeResult21_g502 * 0.5 ) + 0.5 ) , 1.0));
				
				float3 emcol486_g528 = ( temp_output_182_0_g528 * CLEANCOLOR405_g528 );
				#ifdef _EMISSIONCOLORTEXBASE_OFF
				float3 staticSwitch404_g528 = (_EmissionColor).rgb;
				#else
				float3 staticSwitch404_g528 = emcol486_g528;
				#endif
				float2 appendResult410_g528 = (float2(_UVScroll.x , _UVScroll.y));
				float2 appendResult413_g528 = (float2(_UVScroll.z , _UVScroll.w));
				float2 texCoord409_g528 = i.ase_texcoord1.xy * appendResult410_g528 + float2( 0,0 );
				float2 panner412_g528 = ( _Time.y * ( appendResult410_g528 * appendResult413_g528 ) + texCoord409_g528);
				float cos421_g528 = cos( ( _UVScrollRotator * UNITY_PI ) );
				float sin421_g528 = sin( ( _UVScrollRotator * UNITY_PI ) );
				float2 rotator421_g528 = mul( panner412_g528 - float2( 0.5,0.5 ) , float2x2( cos421_g528 , -sin421_g528 , sin421_g528 , cos421_g528 )) + float2( 0.5,0.5 );
				float EmissionMask384_g528 = tex2DNode139_g528.g;
				float3 OutEmission1463 = ( ( staticSwitch404_g528 * _EmissionStrength * (SAMPLE_TEXTURE2D( _EffectMap, sampler_OcclusionMap, rotator421_g528 )).rgb ) * EmissionMask384_g528 );
				float3 switchResult1710 = (((ase_vface>0)?(OutNormal1457):(-OutNormal1457)));
				float3 NormalFace1715 = ( _NormalBackDirInvert == 1.0 ? switchResult1710 : OutNormal1457 );
				float3 tanNormal27_g520 = NormalFace1715;
				float3 worldNormal27_g520 = float3(dot(tanToWorld0,tanNormal27_g520), dot(tanToWorld1,tanNormal27_g520), dot(tanToWorld2,tanNormal27_g520));
				float3 normalizeResult61_g520 = normalize( worldNormal27_g520 );
				float3 normal2_g521 = normalizeResult61_g520;
				float3 localGI2_g521 = GI2_g521( normal2_g521 );
				float3 temp_output_69_15_g520 = localGI2_g521;
				float OutThickness1633 = tex2DNode139_g528.b;
				float temp_output_59_0_g520 = ( _Translucency * OutThickness1633 );
				float3 temp_output_6_0_g520 = OutAlbedo1461;
				float3 normal2_g503 = normalizeResult21_g502;
				float3 localGI2_g503 = GI2_g503( normal2_g503 );
				#ifdef UNITY_HDR_ON
				float3 staticSwitch16_g502 = ( ( OutEmission1463 + ( ( temp_output_69_15_g520 * _TransAmbient ) * temp_output_59_0_g520 * temp_output_6_0_g520 ) ) + ( temp_output_3_0_g502 * localGI2_g503 * temp_output_4_0_g502 ) );
				#else
				float3 staticSwitch16_g502 = exp2( -( ( OutEmission1463 + ( ( temp_output_69_15_g520 * _TransAmbient ) * temp_output_59_0_g520 * temp_output_6_0_g520 ) ) + ( temp_output_3_0_g502 * localGI2_g503 * temp_output_4_0_g502 ) ) );
				#endif
				float4 appendResult19_g502 = (float4(staticSwitch16_g502 , 0.0));
				
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 temp_output_1_0_g524 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				int x9_g524 = (int)(temp_output_1_0_g524).x;
				int y9_g524 = (int)(temp_output_1_0_g524).y;
				float localgetInterleavedGradientNoise8Bit9_g524 = getInterleavedGradientNoise8Bit9_g524( x9_g524 , y9_g524 );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float3 tanNormal1730 = NormalFace1715;
				float3 worldNormal1730 = normalize( float3(dot(tanToWorld0,tanNormal1730), dot(tanToWorld1,tanNormal1730), dot(tanToWorld2,tanNormal1730)) );
				float Color1Alpha101_g528 = _Color.a;
				float Color2Alpha97_g528 = _Color2.a;
				float lerpResult476_g528 = lerp( Color1Alpha101_g528 , Color2Alpha97_g528 , ColorMask296_g528);
				float Color3Alpha98_g528 = _Color3.a;
				float lerpResult477_g528 = lerp( lerpResult476_g528 , Color3Alpha98_g528 , ColorMask3102_g528);
				float Color4Alpha100_g528 = _Color4.a;
				float lerpResult478_g528 = lerp( lerpResult477_g528 , Color4Alpha100_g528 , ColorMask494_g528);
				float AlphaInput137_g528 = tex2DNode119_g528.a;
				float OutOp1464 = ( saturate( ( lerpResult478_g528 * AlphaInput137_g528 ) ) * _alpha );
				float fresnelNdotV1726 = dot( normalize( worldNormal1730 ), ase_worldViewDir );
				float fresnelNode1726 = ( OutOp1464 + _FresnelScale * pow( max( 1.0 - fresnelNdotV1726 , 0.0001 ), _FresnelPower ) );
				float2 temp_output_1_0_g475 = ( (ase_screenPosNorm).xy * (_ScreenParams).xy );
				float2 uv12_g475 = temp_output_1_0_g475;
				float mulTime15_g475 = _Time.y * 60.0;
				float ifLocalVar16_g475 = 0;
				if( _IsScreenshotActive > 0.0 )
				ifLocalVar16_g475 = _ScreenshotToolFrame;
				else if( _IsScreenshotActive == 0.0 )
				ifLocalVar16_g475 = mulTime15_g475;
				float iFrame12_g475 = ifLocalVar16_g475;
				float localIGNAnimated12_g475 = IGNAnimated12_g475( uv12_g475 , iFrame12_g475 );
				#ifdef _TEMPORALFILTER_ON
				float staticSwitch1695 = step( localIGNAnimated12_g475 , fresnelNode1726 );
				#else
				float staticSwitch1695 = step( localgetInterleavedGradientNoise8Bit9_g524 , fresnelNode1726 );
				#endif
				float clampResult353_g528 = clamp( _AlphaEx , 0.2 , 1.0 );
				float Tearing360_g528 = tex2DNode259_g528.b;
				float Mask1604 = ( step( pow( ( 1.0 - clampResult353_g528 ) , 0.2 ) , pow( Tearing360_g528 , 0.5 ) ) * AlphaInput137_g528 );
				clip( ( staticSwitch1695 * Mask1604 ) - _Cutoff);
				float Clip1613 = 1.0;
				
				
				outGBuffer0 = appendResult2_g502;
				outGBuffer1 = appendResult5_g502;
				outGBuffer2 = appendResult13_g502;
				outGBuffer3 = appendResult19_g502;
				float outAlpha = Clip1613;
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
			#pragma shader_feature _SHADERTYPE_ITEM
			#pragma multi_compile __ _EMISSIONCOLORTEXBASE_OFF
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#endif//ASE Sampling Macros
			

			uniform float _IriBrightness;
			uniform float _IriSaturation;
			uniform float _IriContrast;
			uniform float _IriHue;
			uniform float _IriScale;
			uniform float _IsScreenshotActive;
			uniform float _ScreenshotToolFrame;
			uniform float _CullMode;
			uniform float _TransDirect;
			uniform float _TransNormalDistortion;
			uniform float _TransAmbient;
			uniform float _TransShadow;
			uniform float _TransScattering;
			uniform float _Translucency;
			uniform float _DetailUV2Rotator;
			uniform float _DetailNormalMapScale2;
			uniform float _GlossinessReflection;
			uniform float _AlphaEx;
			uniform float2 _DetailUV;
			uniform float _RoughnessReflections;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap);
			SamplerState sampler_DetailGlossMap;
			uniform float _DetailNormalMapScale;
			uniform float _DetailUVRotator;
			uniform float2 _DetailUV2;
			uniform float _ExGloss;
			uniform float _Float0;
			uniform float _EmissionStrength;
			uniform float4 _UVScroll;
			uniform float _UVScrollRotator;
			uniform float _Glossiness;
			uniform float _Glossiness2;
			uniform float _Glossiness3;
			uniform float _Metallic;
			uniform float _Metallic2;
			uniform float _Metallic3;
			uniform float _DetailMetallicScale;
			uniform float _DetailMetallicScale2;
			uniform float _WetnessPower;
			uniform float _DetailGlossScale;
			uniform float _DetailGlossScale2;
			uniform float _Metallic4;
			uniform float4 _BaseColor;
			uniform float _CarvatureStrength;
			uniform float _WetAlbedoOffset;
			uniform float4 _Color;
			uniform float4 _Color1_2;
			uniform float4 _Color4;
			uniform float2 _UVScalePattern;
			uniform float4 _Color3;
			uniform float4 _Color3_2;
			uniform float4 _Color2_2;
			uniform float4 _Color2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask2);
			SamplerState sampler_PatternMask2;
			uniform float _patternuv2Rotator;
			uniform float _patternuv1Rotator;
			uniform float _patternuv3Rotator;
			uniform float4 _EmissionColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask1);
			SamplerState sampler_PatternMask1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
			SamplerState sampler_TextureSample20;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_PatternMask3);
			SamplerState sampler_PatternMask3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
			SamplerState sampler_OcclusionMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
			SamplerState sampler_DetailMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorMask);
			SamplerState sampler_ColorMask;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailGlossMap2);
			SamplerState sampler_DetailGlossMap2;
			uniform float4 _ColorMask_ST;
			uniform float4 _MainTex_ST;
			uniform float _alpha;
			uniform float4 _OcclusionMap_ST;
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
				float Color1Alpha101_g528 = _Color.a;
				float Color2Alpha97_g528 = _Color2.a;
				float2 uv_ColorMask = i.ase_texcoord1.xy * _ColorMask_ST.xy + _ColorMask_ST.zw;
				float4 tex2DNode86_g528 = SAMPLE_TEXTURE2D( _ColorMask, sampler_ColorMask, uv_ColorMask );
				float ColorMask296_g528 = tex2DNode86_g528.r;
				float lerpResult476_g528 = lerp( Color1Alpha101_g528 , Color2Alpha97_g528 , ColorMask296_g528);
				float Color3Alpha98_g528 = _Color3.a;
				float ColorMask3102_g528 = tex2DNode86_g528.g;
				float lerpResult477_g528 = lerp( lerpResult476_g528 , Color3Alpha98_g528 , ColorMask3102_g528);
				float Color4Alpha100_g528 = _Color4.a;
				float ColorMask494_g528 = tex2DNode86_g528.b;
				float lerpResult478_g528 = lerp( lerpResult477_g528 , Color4Alpha100_g528 , ColorMask494_g528);
				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 tex2DNode119_g528 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, uv_MainTex );
				float AlphaInput137_g528 = tex2DNode119_g528.a;
				float OutOp1464 = ( saturate( ( lerpResult478_g528 * AlphaInput137_g528 ) ) * _alpha );
				float clampResult353_g528 = clamp( _AlphaEx , 0.2 , 1.0 );
				float2 uv_OcclusionMap = i.ase_texcoord1.xy * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
				float4 tex2DNode259_g528 = SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, uv_OcclusionMap );
				float Tearing360_g528 = tex2DNode259_g528.b;
				float Mask1604 = ( step( pow( ( 1.0 - clampResult353_g528 ) , 0.2 ) , pow( Tearing360_g528 , 0.5 ) ) * AlphaInput137_g528 );
				float AlphaSC1698 = ( OutOp1464 * Mask1604 );
				
				
				outAlpha = AlphaSC1698;
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
6;6;1337;878;7712.808;3286.225;1;True;False
Node;AmplifyShaderEditor.FunctionNode;1448;-7051.003,-3219.386;Inherit;False;Iridiscence;89;;272;70fe6a1ace0a29b439fe6d71982b6fe0;0;1;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1504;-6542.181,-2655.577;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1506;-6932.382,-2251.002;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1505;-6501.107,-2637.094;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1507;-6868.717,-2236.627;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1511;-6260.25,-2576.72;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1509;-5779.939,-2235.974;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;1451;-6810.623,-3223.49;Inherit;False;Multiply;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1508;-5732.706,-2264.725;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1453;-6566.516,-3219.566;Inherit;False;Property;_Iridiscent;Iridiscent;88;0;Create;True;0;0;0;True;1;Header(Iridiscent);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1498;-7100.806,-3346.077;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1497;-7040.347,-3385.493;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1455;-6292.278,-3212.093;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1496;-5118.203,-3191.141;Inherit;False;Property;_SpecularSetup;SpecularSetup;95;0;Create;True;0;0;0;False;1;Header(Specularity);False;1;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1493;-5880.89,-3443.042;Inherit;False;Property;_SpecularSetup;SpecularSetup;95;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1496;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1543;-3916.215,-2958.031;Inherit;False;1738.881;857.7462;Comment;15;1419;1422;1420;1439;1427;1467;1554;1472;1473;1471;1474;1614;1635;1699;1715;ForwardBase;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1461;-5557.572,-3257.77;Inherit;False;OutAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1542;-4479.534,-1852.796;Inherit;False;1848.462;723.3112;Comment;12;1421;1622;1552;1484;1481;1490;1634;1555;1488;1489;1485;1551;Deferred;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;2837.367,-3900.219;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1485;-3691.576,-1781.152;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1489;-3684.704,-1694.199;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1555;-4303.319,-1572.685;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1634;-4319.378,-1401.302;Inherit;False;1633;OutThickness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1490;-3705.914,-1461.022;Inherit;False;1456;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1481;-3730.565,-1374.617;Inherit;False;1458;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1484;-3684.556,-1285.314;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1512;-5608.419,-2593.341;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;1503;-5430.412,-2593.293;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1502;-5862.612,-2693.207;Inherit;False;Property;_Iridiscent;Iridiscent;88;0;Create;True;0;0;0;True;0;False;1;0;0;True;;Toggle;2;Key0;Key1;Reference;1453;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1665;-6097.757,-2771.388;Inherit;False;SpecC;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1457;-6894.356,-2823.333;Inherit;False;OutNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1463;-6890.982,-2740.963;Inherit;False;OutEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1458;-6890.438,-2662.108;Inherit;False;OutSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1462;-6887.523,-2578.002;Inherit;False;OutAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1633;-6887.361,-2498.627;Inherit;False;OutThickness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1464;-6888.062,-2419.557;Inherit;False;OutOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1604;-6888.132,-2337.432;Inherit;False;Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1492;-6431.139,-2884.399;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1491;-6390.401,-2929.998;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1500;-6355.463,-2834.998;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1466;-6707.738,-2936.182;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1465;-6652.558,-2966.01;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1553;-6906.245,-3043.495;Inherit;False;Diffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1551;-3631.478,-1588.532;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1605;-6630.685,-1710.302;Inherit;False;1604;Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1613;-5994.05,-1797.565;Inherit;False;Clip;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1694;-7130.162,-1684.961;Inherit;False;Dither IGN;-1;;475;0a81f9c8808949b40b4d9bf0cdce67ca;1,11,1;1;10;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1695;-6935.698,-1775.145;Inherit;False;Property;_TemporalFilter;TemporalFilter;14;0;Create;False;0;0;0;True;0;False;1;0;0;False;_TEMPORALFILTER_ON;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1621;-6409.697,-1770.609;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;1598;-6217.138,-1793.436;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1697;-6533.384,-1973.258;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1456;-4725.785,-3201.841;Inherit;False;OutSpecular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-3836.646,-2908.031;Inherit;False;1461;OutAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1467;-3438.905,-2702.843;Inherit;False;1463;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1427;-3184.834,-2721.292;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1439;-2862.421,-2721.344;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;PREPASSFINAL;0;0;PREPASSFINAL;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=PrepassFinal;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1420;-2848.684,-2615.544;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;-1;1;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1422;-2823.736,-2525.387;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;4;ShadowCaster;1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1614;-3107.872,-2576.472;Inherit;False;1613;Clip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1699;-3117.439,-2426.535;Inherit;False;1698;AlphaSC;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1474;-3816.318,-2467.349;Inherit;False;1462;OutAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1473;-3837.731,-2634.974;Inherit;False;1456;OutSpecular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1472;-3857.166,-2550.125;Inherit;False;1458;OutSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1554;-3812.554,-2371.241;Inherit;False;1553;Diffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1635;-3831.311,-2283.897;Inherit;False;1633;OutThickness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1715;-3813.379,-2811.116;Inherit;False;NormalFace;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1552;-4303.493,-1489.513;Inherit;False;1715;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1344;-6519.758,-1525.558;Inherit;False;Property;_CullMode;CullMode;0;2;[Header];[IntRange];Create;True;1;Backface Settings;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1725;-7145.349,-2554.353;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1599;-6523.928,-1621.583;Inherit;False;Property;_Cutoff;Cutoff;4;1;[Header];Fetch;True;1;Alpha Clip Value;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1733;-8017.494,-1310.886;Inherit;False;Property;_FresnelScale;FresnelScale;87;0;Create;True;0;0;0;True;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1734;-8016.014,-1229.827;Inherit;False;Property;_FresnelPower;FresnelPower;85;1;[Header];Create;True;1;Fresnel Settings;0;0;True;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1736;-6014.519,-1218.811;Inherit;False;Property;_SHADERTYPE_ITEM;SHADERTYPE_ITEM;98;0;Create;False;0;0;0;True;1;HideInInspector;False;0;1;1;True;_SHADERTYPE_ITEM;Toggle;2;Key0;Key1;Create;False;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1475;-7957.416,-1086.628;Inherit;False;1464;OutOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1732;-8022.503,-1394.558;Inherit;False;Property;_FresnelBias;FresnelBias;86;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1730;-7949.834,-1845.961;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1731;-8181.138,-1847.813;Inherit;False;1715;NormalFace;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1729;-7946.576,-1579.737;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1698;-5996.779,-1980.408;Inherit;False;AlphaSC;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1748;-3463.731,-2871.145;Inherit;False;GGX Specular Light;1;;499;53564f0ffa5fbe14e85233656c8e0b13;0;5;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1419;-2848.684,-2721.344;Float;False;True;-1;2;ASEMaterialInspector;0;7;Hanmen/Item Cutoff;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;1344;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=0;True;7;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=ForwardBase;True;7;False;0;Legacy Shaders/Diffuse;0;0;Standard;0;0;5;False;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.SamplerNode;1749;-4024.255,-965.3303;Inherit;True;Global;_DeferredPlusBuffer;_DeferredPlusBuffer;76;0;Create;True;0;0;0;False;0;False;1749;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1421;-2939.744,-1636.719;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;3;Deferred;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;True;1344;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Deferred;True;7;False;2;Include;;False;;Native;Include;;True;32d23867264cf2d4c8fa140fc70dca8a;Custom;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1750;-4399.139,-945.4687;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-4764.278,-2590.065;Inherit;False;1457;OutNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1709;-4513.434,-2763.222;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1710;-4386.113,-2874.39;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1708;-4187.895,-2916.036;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1712;-4345.939,-2764.156;Inherit;False;Constant;_Float20;Float 20;73;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1711;-4546.641,-2990.07;Inherit;False;Property;_NormalBackDirInvert;Normal Invert;3;1;[Toggle];Create;False;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1707;-4125.974,-2811.594;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1739;-5077.066,-1643.533;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CustomExpressionNode;1741;-4817.808,-1639.929;Inherit;False;half3 TestOut = 0@$float4 coords = 0@$coords = UNITY_PROJ_COORD(screenPos)@$coords.w += .0001@$float2 screenUV = coords.xy / coords.w@$            $$TestOut = tex2D(_DeferredPlusBuffer, screenUV).rgb@$$return TestOut@$;3;Create;1;True;screenPos;FLOAT4;0,0,0,0;In;;Inherit;False;TestOut;True;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1752;-3319.953,-1632.192;Inherit;False;Deferred Pass;-1;;502;c9afd996879db6041a57a5a508002f59;0;7;3;FLOAT3;0,0,0;False;14;FLOAT3;0,0,0;False;20;FLOAT3;0,0,0;False;33;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT;0;False;4;FLOAT;1;False;4;COLOR;0;COLOR;1;COLOR;12;COLOR;18
Node;AmplifyShaderEditor.GetLocalVarNode;1622;-3237.468,-1408.001;Inherit;False;1613;Clip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1754;-3961.833,-1314.13;Inherit;False;Constant;_Float21;Float 21;18;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1763;-4046.415,-1567.552;Inherit;False;Unity Translucency;77;;520;3081dbcb6ac8af842b2faa561ed4ff52;0;3;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.FunctionNode;1764;-3507.278,-2615.206;Inherit;False;Unity Translucency;77;;522;3081dbcb6ac8af842b2faa561ed4ff52;0;3;6;FLOAT3;0,0,0;False;26;FLOAT3;0,0,1;False;46;FLOAT;1;False;2;FLOAT3;0;FLOAT3;68
Node;AmplifyShaderEditor.FunctionNode;1693;-7129.229,-1834.391;Inherit;False;Dither IGN;-1;;524;0a81f9c8808949b40b4d9bf0cdce67ca;1,11,0;1;10;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1726;-7613.577,-1674.894;Inherit;False;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1488;-3973.306,-1662.688;Inherit;False;1463;OutEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1724;-7526.732,-2436.181;Inherit;False;Property;_alpha;alpha;5;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1510;-6563.142,-2576.792;Inherit;True;Property;_SpecularMap;SpecularMap;97;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1499;-6584.295,-2835.49;Inherit;False;Property;_SpecColor;SpecColor;96;0;Fetch;True;0;0;0;True;0;False;0.509434,0.509434,0.509434,1;0.509434,0.509434,0.509434,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1768;-7368.165,-2978.356;Inherit;False;AIT Item Function;6;;528;49cd9f91cda5058428ddba66ec049916;0;0;11;FLOAT3;345;FLOAT3;342;FLOAT3;341;FLOAT;340;FLOAT;0;FLOAT;393;FLOAT;346;FLOAT;480;FLOAT;344;FLOAT;386;SAMPLERSTATE;389
WireConnection;1448;1;1768;342
WireConnection;1504;0;1448;0
WireConnection;1506;0;1768;340
WireConnection;1505;0;1504;0
WireConnection;1507;0;1506;0
WireConnection;1511;0;1510;0
WireConnection;1509;0;1507;0
WireConnection;1451;0;1448;0
WireConnection;1451;1;1768;345
WireConnection;1451;2;1768;340
WireConnection;1508;0;1509;0
WireConnection;1453;1;1465;0
WireConnection;1453;0;1451;0
WireConnection;1498;0;1768;345
WireConnection;1497;0;1498;0
WireConnection;1455;0;1453;0
WireConnection;1455;1;1491;0
WireConnection;1496;1;1455;1
WireConnection;1496;0;1503;1
WireConnection;1493;1;1455;0
WireConnection;1493;0;1497;0
WireConnection;1461;0;1493;0
WireConnection;1512;0;1502;0
WireConnection;1512;1;1511;0
WireConnection;1503;0;1512;0
WireConnection;1503;1;1508;0
WireConnection;1502;1;1665;0
WireConnection;1502;0;1505;0
WireConnection;1665;0;1500;0
WireConnection;1457;0;1768;342
WireConnection;1463;0;1768;341
WireConnection;1458;0;1768;0
WireConnection;1462;0;1768;346
WireConnection;1633;0;1768;480
WireConnection;1464;0;1725;0
WireConnection;1604;0;1768;386
WireConnection;1492;0;1768;340
WireConnection;1491;0;1492;0
WireConnection;1500;0;1499;0
WireConnection;1466;0;1768;345
WireConnection;1465;0;1466;0
WireConnection;1553;0;1768;345
WireConnection;1551;0;1488;0
WireConnection;1551;1;1763;68
WireConnection;1613;0;1598;0
WireConnection;1694;10;1726;0
WireConnection;1695;1;1693;0
WireConnection;1695;0;1694;0
WireConnection;1621;0;1695;0
WireConnection;1621;1;1605;0
WireConnection;1598;1;1621;0
WireConnection;1598;2;1599;0
WireConnection;1697;0;1475;0
WireConnection;1697;1;1605;0
WireConnection;1456;0;1496;0
WireConnection;1427;0;1748;0
WireConnection;1427;1;1467;0
WireConnection;1427;2;1764;0
WireConnection;1422;0;1699;0
WireConnection;1715;0;1707;0
WireConnection;1725;0;1768;344
WireConnection;1725;1;1724;0
WireConnection;1730;0;1731;0
WireConnection;1698;0;1697;0
WireConnection;1748;286;1471;0
WireConnection;1748;30;1715;0
WireConnection;1748;146;1473;0
WireConnection;1748;147;1472;0
WireConnection;1748;302;1474;0
WireConnection;1419;0;1427;0
WireConnection;1419;1;1614;0
WireConnection;1749;1;1750;0
WireConnection;1421;0;1752;0
WireConnection;1421;1;1752;1
WireConnection;1421;2;1752;12
WireConnection;1421;3;1752;18
WireConnection;1421;4;1622;0
WireConnection;1709;0;1468;0
WireConnection;1710;0;1468;0
WireConnection;1710;1;1709;0
WireConnection;1708;0;1711;0
WireConnection;1707;0;1708;0
WireConnection;1707;1;1712;0
WireConnection;1707;2;1710;0
WireConnection;1707;3;1468;0
WireConnection;1741;0;1739;0
WireConnection;1752;3;1485;0
WireConnection;1752;14;1489;0
WireConnection;1752;20;1551;0
WireConnection;1752;33;1754;0
WireConnection;1752;6;1490;0
WireConnection;1752;7;1481;0
WireConnection;1752;4;1484;0
WireConnection;1763;6;1555;0
WireConnection;1763;26;1552;0
WireConnection;1763;46;1634;0
WireConnection;1764;6;1554;0
WireConnection;1764;26;1468;0
WireConnection;1764;46;1635;0
WireConnection;1693;10;1726;0
WireConnection;1726;0;1730;0
WireConnection;1726;4;1729;0
WireConnection;1726;1;1475;0
WireConnection;1726;2;1733;0
WireConnection;1726;3;1734;0
ASEEND*/
//CHKSM=85213C183972C6910611A53BB1E17758BECDADD9