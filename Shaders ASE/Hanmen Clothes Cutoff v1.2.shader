// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Clothes True Cutoff"
{
	Properties
	{
		[IntRange]_CullMode("CullMode", Range( 0 , 2)) = 0
		[NoScaleOffset][Header(Render Texture (leave empty))]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Header (Render Texture (leave empty))]_DetailMainTex("DetailMainTex", 2D) = "gray" {}
		[NoScaleOffset][Header (Optional (Required for Color 4))]_ColorMask("ColorMask", 2D) = "black" {}
		[NoScaleOffset]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset][Header (R_Detail1 G_Detail2)]_DetailMask("DetailMask", 2D) = "white" {}
		[NoScaleOffset][Header (Detail1)]_DetailGlossMap("DetailGlossMap", 2D) = "black" {}
		[NoScaleOffset][Header (Detail2)]_DetailGlossMap2("DetailGlossMap2", 2D) = "black" {}
		[NoScaleOffset][Header(Packed (R_Gloss G_Emission B_MetallicMask))]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		[NoScaleOffset][Header(Packed (R_AO G_none B_Tearings))]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "black" {}
		[NoScaleOffset]_WeatheringMask("WeatheringMask", 2D) = "black" {}
		[NoScaleOffset][Header (Packed (R_Glossiness G_Bump))]_WetnessMap("WetnessMap", 2D) = "black" {}
		[Header (Colors)]_BaseColor("BaseColor", Color) = (1,1,1,1)
		_Color("Color", Color) = (1,1,1,1)
		_EmissionColor("EmissionColor", Color) = (0,0,0,1)
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0.6,0.65,0.65,0)
		[Header (UV Coordinates)]_UVScalePattern("UVScalePattern", Vector) = (1,1,0,0)
		_WeatheringUV("WeatheringUV", Vector) = (1,1,0,0)
		_WetUV("WetUV", Vector) = (1,1,0,0)
		_patternuv1("patternuv1", Vector) = (1,1,0,0)
		_patternuv2("patternuv2", Vector) = (1,1,0,0)
		_patternuv3("patternuv3", Vector) = (1,0,0,0)
		_patternuvbase("patternuvbase", Vector) = (1,1,0,0)
		[Header (Zero Disable Dithering)]_Cutoff("Cutoff", Range( 0 , 1)) = 0
		[Header (Cloth Tearings)]_AlphaEx("AlphaEx", Range( 0 , 1)) = 1
		_CarvatureStrength("CarvatureStrength", Range( 0 , 1)) = 0
		[Header (Bump)]_BumpScale("BumpScale", Range( 0 , 3)) = 1
		[Header(Detail)]_DetailNormalMapScale("DetailNormalMapScale", Range( -3 , 10)) = 10
		_DetailNormalMapScale2("DetailNormalMapScale2", Range( -3 , 10)) = 1
		_DetailGlossScale("DetailGlossScale", Range( 0 , 1)) = 0
		_DetailGlossScale2("DetailGlossScale2", Range( 0 , 1)) = 0
		_DetailMetallicScale("DetailMetallicScale", Range( 0 , 1)) = 0
		_DetailMetallicScale2("DetailMetallicScale2", Range( 0 , 1)) = 0
		_DetailOcclusionScale("DetailOcclusionScale", Range( 0 , 1)) = 0
		_DetailOcclusionScale2("DetailOcclusionScale2", Range( 0 , 1)) = 0
		_DetailOcclusionContrast("DetailOcclusionContrast", Range( 0 , 2)) = 0
		_DetailOcclusionContrast2("DetailOcclusionContrast2", Range( 0 , 2)) = 0
		_DetailUVRotator("DetailUVRotator", Range( -1 , 1)) = 1
		_DetailUV2Rotator("DetailUV2Rotator", Range( -1 , 1)) = 0
		_DetailUV("DetailUV", Vector) = (1,1,0,0)
		_DetailUV2("DetailUV2", Vector) = (1,1,0,0)
		[Header (Emission (Tex Required))]_EmissionStrength("EmissionStrength", Range( 0 , 20)) = 0
		[Header (Color Mask Required (Optional))][Toggle(_EMISSIONCOLOR1_ON)] _EmissionColor1("Color1 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR2_ON)] _EmissionColor2("Color2 is Emissive", Float) = 0
		[Toggle(_EMISSIONCOLOR3_ON)] _EmissionColor3("Color3 is Emissive", Float) = 0
		[Header (Ambient Occlusion)]_OcclusionStrength("OcclusionStrength", Range( 0 , 1)) = 1
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
		[Header (Wetness)]_ExGloss("ExGloss", Range( 0 , 1)) = 0
		_WetAlpha("WetAlpha", Range( 0 , 1)) = 0
		_WetGlossBase("WetGlossBase", Range( 0 , 2)) = 0.8
		_BodyColor("BodyColor", Color) = (0,0,0,0)
		_WetAlbedoOffset("WetAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetSplatsAlbedoOffset("WetSplatsAlbedoOffset", Range( 0 , 1)) = 0.6
		_WetOpacitySplats("WetOpacitySplats", Range( 0 , 2)) = 0
		_WetGlossSplats("WetGlossSplats", Range( 0 , 2)) = 0
		_WetBumpOffset("WetBumpOffset", Range( 0 , 1)) = 0.5
		_WetColor("WetColor", Color) = (0,0,0,0)
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 5.0
		#pragma shader_feature _EMISSIONCOLOR1_ON
		#pragma shader_feature _EMISSIONCOLOR2_ON
		#pragma shader_feature _EMISSIONCOLOR3_ON
		#pragma only_renderers d3d9 d3d11_9x d3d11 glcore gles gles3 
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows vertex:vertexDataFunc 
		struct Input
		{
			float2 uv_texcoord;
			float4 screenPosition;
		};

		uniform sampler2D _DetailMask;
		uniform sampler2D _WetnessMap;
		uniform float _CullMode;
		uniform float2 _patternuv3;
		uniform float2 _patternuv1;
		uniform sampler2D _MetallicGlossMap;
		uniform sampler2D _DetailGlossMap2;
		uniform sampler2D _ColorMask;
		uniform float _Cutoff;
		uniform float2 _patternuv2;
		uniform sampler2D _DetailGlossMap;
		uniform sampler2D _BumpMap;
		uniform sampler2D _WeatheringMap;
		uniform sampler2D _DetailMainTex;
		uniform sampler2D _WeatheringMask;
		uniform sampler2D _MainTex;
		uniform float _BumpScale;
		uniform float _WetBumpOffset;
		uniform float _ExGloss;
		uniform float2 _DetailUV;
		uniform float2 _UVScalePattern;
		uniform float _DetailUVRotator;
		uniform float _DetailNormalMapScale;
		uniform float2 _DetailUV2;
		uniform float _DetailUV2Rotator;
		uniform float _DetailNormalMapScale2;
		uniform float4 _WeatheringUV;
		uniform float _WeatheringRange1;
		uniform float _WeatheringRange2;
		uniform float _WeatheringRange3;
		uniform float _WeatheringRange4;
		uniform float _WeatheringRange5;
		uniform float _WeatheringAll;
		uniform float4 _BaseColor;
		uniform float4 _Color;
		uniform sampler2D _OcclusionMap;
		uniform float _CarvatureStrength;
		uniform float _WetAlbedoOffset;
		uniform float _WetSplatsAlbedoOffset;
		uniform float4 _WetColor;
		uniform float4 _WetUV;
		uniform float _WetOpacitySplats;
		uniform float4 _BodyColor;
		uniform float4 _WeatheringAlbedo;
		uniform float4 _EmissionColor;
		uniform float _EmissionStrength;
		uniform float _MetallicMask;
		uniform float _MetallicMask4;
		uniform float _Metallic4;
		uniform float _DetailMetallicScale;
		uniform float _DetailMetallicScale2;
		uniform float _Roughness;
		uniform float _Glossiness4;
		uniform float _Roughness4;
		uniform float _DetailGlossScale;
		uniform float _DetailGlossScale2;
		uniform float _WetGlossBase;
		uniform float _WetGlossSplats;
		uniform float _OcclusionStrength;
		uniform float _DetailOcclusionContrast;
		uniform float _DetailOcclusionScale;
		uniform float _DetailOcclusionContrast2;
		uniform float _DetailOcclusionScale2;
		uniform float _WetAlpha;
		uniform float _AlphaEx;


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
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


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap1179 = i.uv_texcoord;
			float WetBumpOffset1264 = _WetBumpOffset;
			float ExGloss877 = _ExGloss;
			float2 UVScale1302 = _UVScalePattern;
			float2 uv_TexCoord233 = i.uv_texcoord * ( _DetailUV * UVScale1302 );
			float cos234 = cos( ( _DetailUVRotator * UNITY_PI ) );
			float sin234 = sin( ( _DetailUVRotator * UNITY_PI ) );
			float2 rotator234 = mul( uv_TexCoord233 - float2( 0.5,0.5 ) , float2x2( cos234 , -sin234 , sin234 , cos234 )) + float2( 0.5,0.5 );
			float2 Detail1UV785 = rotator234;
			float2 break753 = Detail1UV785;
			float temp_output_747_0 = ( pow( 0.5 , 3.0 ) * 0.1 );
			float2 appendResult756 = (float2(( break753.x + temp_output_747_0 ) , break753.y));
			float4 tex2DNode743 = tex2D( _DetailGlossMap, Detail1UV785 );
			float2 uv_DetailMask1182 = i.uv_texcoord;
			float4 tex2DNode1182 = tex2D( _DetailMask, uv_DetailMask1182 );
			float DetailMask1366 = tex2DNode1182.r;
			float temp_output_733_0 = ( DetailMask1366 * ( _DetailNormalMapScale / 10.0 ) );
			float3 appendResult745 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap, appendResult756 ).g - tex2DNode743.g ) * temp_output_733_0 )));
			float2 appendResult748 = (float2(break753.x , ( break753.y + temp_output_747_0 )));
			float3 appendResult752 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap, appendResult748 ).g - tex2DNode743.g ) * temp_output_733_0 )));
			float3 normalizeResult755 = normalize( cross( appendResult745 , appendResult752 ) );
			float3 DetailNormal1836 = normalizeResult755;
			float2 uv_TexCoord236 = i.uv_texcoord * ( _DetailUV2 * UVScale1302 );
			float cos237 = cos( ( _DetailUV2Rotator * UNITY_PI ) );
			float sin237 = sin( ( _DetailUV2Rotator * UNITY_PI ) );
			float2 rotator237 = mul( uv_TexCoord236 - float2( 0.5,0.5 ) , float2x2( cos237 , -sin237 , sin237 , cos237 )) + float2( 0.5,0.5 );
			float2 Detail2UV786 = rotator237;
			float2 break763 = Detail2UV786;
			float temp_output_762_0 = ( pow( 0.5 , 3.0 ) * 0.1 );
			float2 appendResult767 = (float2(( break763.x + temp_output_762_0 ) , break763.y));
			float4 tex2DNode770 = tex2D( _DetailGlossMap2, Detail2UV786 );
			float DetailMask2367 = tex2DNode1182.g;
			float temp_output_734_0 = ( DetailMask2367 * ( _DetailNormalMapScale2 / 10.0 ) );
			float3 appendResult776 = (float3(1.0 , 0.0 , ( ( tex2D( _DetailGlossMap2, appendResult767 ).g - tex2DNode770.g ) * temp_output_734_0 )));
			float2 appendResult766 = (float2(break763.x , ( break763.y + temp_output_762_0 )));
			float3 appendResult775 = (float3(0.0 , 1.0 , ( ( tex2D( _DetailGlossMap2, appendResult766 ).g - tex2DNode770.g ) * temp_output_734_0 )));
			float3 normalizeResult778 = normalize( cross( appendResult776 , appendResult775 ) );
			float3 DetailNormal2837 = normalizeResult778;
			float3 temp_output_374_0 = BlendNormals( BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap1179 ), ( _BumpScale + ( WetBumpOffset1264 * ExGloss877 ) ) ) , DetailNormal1836 ) , DetailNormal2837 );
			float2 appendResult1190 = (float2(_WeatheringUV.x , _WeatheringUV.y));
			float2 appendResult1188 = (float2(_WeatheringUV.z , _WeatheringUV.w));
			float2 uv_TexCoord1191 = i.uv_texcoord * appendResult1190 + ( appendResult1188 / float2( 100,100 ) );
			float2 WeatheringUV1192 = uv_TexCoord1191;
			float2 break1030 = WeatheringUV1192;
			float temp_output_1029_0 = ( pow( 0.4 , 3.5 ) * 0.1 );
			float2 appendResult1033 = (float2(( break1030.x + temp_output_1029_0 ) , break1030.y));
			float4 tex2DNode1035 = tex2D( _WeatheringMap, WeatheringUV1192 );
			float3 appendResult1043 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult1033 ).b - tex2DNode1035.b ) * 2.0 )));
			float2 appendResult1034 = (float2(break1030.x , ( break1030.y + temp_output_1029_0 )));
			float3 appendResult1044 = (float3(0.0 , 1.0 , ( ( tex2D( _WeatheringMap, appendResult1034 ).b - tex2DNode1035.b ) * 2.0 )));
			float3 normalizeResult1046 = normalize( cross( appendResult1043 , appendResult1044 ) );
			float3 WeatheringBump1047 = normalizeResult1046;
			float4 tex2DNode916 = tex2D( _WeatheringMap, WeatheringUV1192 );
			float2 uv_WeatheringMask912 = i.uv_texcoord;
			float4 tex2DNode912 = tex2D( _WeatheringMask, uv_WeatheringMask912 );
			float clampResult968 = clamp( ( tex2DNode912.r - tex2DNode912.g ) , 0.0 , 1.0 );
			float WMask11006 = ( clampResult968 * ceil( _WeatheringRange1 ) );
			float RangeCut1974 = (( _WeatheringRange1 >= 0.51 && _WeatheringRange1 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult1066 = clamp( ( ( tex2DNode916.g * WMask11006 ) - RangeCut1974 ) , 0.0 , 1.0 );
			float clampResult969 = clamp( ( tex2DNode912.g - tex2DNode912.r ) , 0.0 , 1.0 );
			float WMask21007 = ( clampResult969 * ceil( _WeatheringRange2 ) );
			float RangeCut2976 = (( _WeatheringRange2 >= 0.51 && _WeatheringRange2 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult1061 = clamp( ( ( tex2DNode916.g * WMask21007 ) - RangeCut2976 ) , 0.0 , 1.0 );
			float WMask31008 = ( tex2DNode912.b * ceil( _WeatheringRange3 ) );
			float RangeCut3980 = (( _WeatheringRange3 >= 0.51 && _WeatheringRange3 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult1062 = clamp( ( ( tex2DNode916.g * WMask31008 ) - RangeCut3980 ) , 0.0 , 1.0 );
			float WMask41009 = ( ( tex2DNode912.r * tex2DNode912.g ) * ceil( _WeatheringRange4 ) );
			float RangeCut4981 = (( _WeatheringRange4 >= 0.51 && _WeatheringRange4 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult1063 = clamp( ( ( tex2DNode916.g * WMask41009 ) - RangeCut4981 ) , 0.0 , 1.0 );
			float WMask51010 = ( ( tex2DNode912.r * tex2DNode912.b ) * ceil( _WeatheringRange5 ) );
			float RangeCut5982 = (( _WeatheringRange5 >= 0.51 && _WeatheringRange5 <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult1064 = clamp( ( ( tex2DNode916.g * WMask51010 ) - RangeCut5982 ) , 0.0 , 1.0 );
			float WMaskAll1021 = ceil( _WeatheringAll );
			float RangeCutAll984 = (( _WeatheringAll >= 0.51 && _WeatheringAll <= 1.0 ) ? 0.3 :  0.45 );
			float clampResult1065 = clamp( ( ( tex2DNode916.g * WMaskAll1021 ) - RangeCutAll984 ) , 0.0 , 1.0 );
			float clampResult1068 = clamp( ( clampResult1066 + clampResult1061 + clampResult1062 + clampResult1063 + clampResult1064 + clampResult1065 ) , 0.0 , 1.0 );
			float lerpResult1069 = lerp( clampResult1068 , clampResult1065 , WMaskAll1021);
			float clampResult1169 = clamp( ( lerpResult1069 * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha932 = clampResult1169;
			float3 lerpResult1052 = lerp( temp_output_374_0 , WeatheringBump1047 , ( tex2D( _WeatheringMap, WeatheringUV1192 ).b * WeatheringAlpha932 ));
			float3 NormalMix496 = lerpResult1052;
			o.Normal = NormalMix496;
			float2 uv_MainTex1185 = i.uv_texcoord;
			float4 tex2DNode1185 = tex2D( _MainTex, uv_MainTex1185 );
			float3 temp_output_658_0 = (tex2DNode1185).rgb;
			float3 temp_cast_0 = (1.0).xxx;
			float2 uv_OcclusionMap23 = i.uv_texcoord;
			float4 tex2DNode23 = tex2D( _OcclusionMap, uv_OcclusionMap23 );
			float Carvature1216 = tex2DNode23.r;
			float3 lerpResult1215 = lerp( ( temp_output_658_0 * (_BaseColor).rgb * (_Color).rgb ) , temp_cast_0 , ( Carvature1216 * _CarvatureStrength ));
			float WetAlbedoOffset1273 = _WetAlbedoOffset;
			float3 temp_output_1226_0 = ( lerpResult1215 * WetAlbedoOffset1273 );
			float WetSplatsAlbedoOffset1276 = _WetSplatsAlbedoOffset;
			float3 lerpResult1293 = lerp( ( temp_output_1226_0 * WetSplatsAlbedoOffset1276 ) , (_WetColor).rgb , _WetColor.a);
			float2 appendResult1245 = (float2(_WetUV.x , _WetUV.y));
			float2 appendResult1298 = (float2(_WetUV.z , _WetUV.w));
			float2 uv_TexCoord1246 = i.uv_texcoord * appendResult1245 + appendResult1298;
			float WetSplats1243 = tex2D( _WetnessMap, uv_TexCoord1246 ).b;
			float SplatsOp1259 = _WetOpacitySplats;
			float3 lerpResult1271 = lerp( temp_output_1226_0 , lerpResult1293 , ( WetSplats1243 * SplatsOp1259 ));
			float2 uv_OcclusionMap1227 = i.uv_texcoord;
			float4 tex2DNode1227 = tex2D( _OcclusionMap, uv_OcclusionMap1227 );
			float3 WetBodyOffset1278 = ( (_BodyColor).rgb * _BodyColor.a );
			float3 lerpResult1230 = lerp( lerpResult1271 , ( tex2DNode1227.a == 1.0 ? lerpResult1271 : WetBodyOffset1278 ) , ( 1.0 - tex2DNode1227.a ));
			float3 lerpResult1232 = lerp( lerpResult1215 , lerpResult1230 , ExGloss877);
			float WeatheringAlpha2922 = lerpResult1069;
			float3 lerpResult1057 = lerp( lerpResult1232 , (_WeatheringAlbedo).rgb , ( WeatheringAlpha2922 * 0.282353 ));
			float3 DiffuseMix501 = lerpResult1057;
			o.Albedo = DiffuseMix501;
			float2 uv_MetallicGlossMap15 = i.uv_texcoord;
			float4 tex2DNode15 = tex2D( _MetallicGlossMap, uv_MetallicGlossMap15 );
			float3 ColorTex817 = temp_output_658_0;
			float2 uv_ColorMask1183 = i.uv_texcoord;
			float4 tex2DNode1183 = tex2D( _ColorMask, uv_ColorMask1183 );
			float ColorMask3376 = tex2DNode1183.g;
			float3 EC3588 = ( ColorTex817 * ( _EmissionStrength * ColorMask3376 ) );
			#ifdef _EMISSIONCOLOR3_ON
				float3 staticSwitch564 = EC3588;
			#else
				float3 staticSwitch564 = ( (_EmissionColor).rgb * _EmissionStrength );
			#endif
			float ColorMask2375 = tex2DNode1183.r;
			float3 EC2594 = ( ColorTex817 * ( _EmissionStrength * ColorMask2375 ) );
			#ifdef _EMISSIONCOLOR2_ON
				float3 staticSwitch609 = EC2594;
			#else
				float3 staticSwitch609 = staticSwitch564;
			#endif
			float ColorMask1378 = ( 1.0 - ( tex2DNode1183.r + tex2DNode1183.g + tex2DNode1183.b ) );
			float3 EC1603 = ( ColorTex817 * ( _EmissionStrength * ColorMask1378 ) );
			#ifdef _EMISSIONCOLOR1_ON
				float3 staticSwitch610 = EC1603;
			#else
				float3 staticSwitch610 = staticSwitch609;
			#endif
			float3 EmissionFinal580 = ( tex2DNode15.g * staticSwitch610 );
			o.Emission = EmissionFinal580;
			float lerpResult827 = lerp( 1.0 , tex2DNode15.r , _MetallicMask);
			float2 uv_DetailMainTex343 = i.uv_texcoord;
			float4 tex2DNode343 = tex2D( _DetailMainTex, uv_DetailMainTex343 );
			float lerpResult645 = lerp( 1.0 , tex2DNode15.r , _MetallicMask4);
			float ColorMask4377 = tex2DNode1183.b;
			float lerpResult806 = lerp( ( lerpResult827 * tex2DNode343.r ) , ( lerpResult645 * _Metallic4 ) , ColorMask4377);
			float4 tex2DNode780 = tex2D( _DetailGlossMap, Detail1UV785 );
			float Detail11308 = tex2DNode780.r;
			float4 tex2DNode781 = tex2D( _DetailGlossMap2, Detail2UV786 );
			float Detail21309 = tex2DNode781.r;
			float lerpResult1173 = lerp( ( ( lerpResult806 - ( ( 1.0 - Detail11308 ) * ( _DetailMetallicScale * DetailMask1366 ) ) ) - ( ( 1.0 - Detail21309 ) * ( _DetailMetallicScale2 * DetailMask2367 ) ) ) , 0.0 , WeatheringAlpha2922);
			float clampResult1338 = clamp( lerpResult1173 , 0.0 , 1.0 );
			float MetallicFinal636 = clampResult1338;
			o.Metallic = MetallicFinal636;
			float lerpResult828 = lerp( 1.0 , tex2DNode15.r , _Roughness);
			float lerpResult534 = lerp( 1.0 , tex2DNode15.r , _Roughness4);
			float lerpResult808 = lerp( ( lerpResult828 * tex2DNode343.b ) , ( _Glossiness4 * lerpResult534 ) , ColorMask4377);
			float WetGlossBase1260 = _WetGlossBase;
			float lerpResult1233 = lerp( ( ( lerpResult808 - ( ( 1.0 - Detail11308 ) * ( _DetailGlossScale * DetailMask1366 ) ) ) - ( ( 1.0 - Detail21309 ) * ( _DetailGlossScale2 * DetailMask2367 ) ) ) , tex2DNode15.a , ( WetGlossBase1260 * ExGloss877 ));
			float SplatsGloss1288 = _WetGlossSplats;
			float lerpResult1252 = lerp( lerpResult1233 , ( ( SplatsGloss1288 * WetSplats1243 ) * ExGloss877 ) , ( SplatsOp1259 * WetSplats1243 * ExGloss877 ));
			float lerpResult1129 = lerp( lerpResult1252 , 0.8 , WeatheringAlpha932);
			float clampResult1339 = clamp( lerpResult1129 , 0.0 , 1.0 );
			float GlossinessFinal584 = clampResult1339;
			o.Smoothness = GlossinessFinal584;
			float2 uv_OcclusionMap1178 = i.uv_texcoord;
			float lerpResult519 = lerp( 1.0 , tex2D( _OcclusionMap, uv_OcclusionMap1178 ).g , _OcclusionStrength);
			float grayscale782 = Luminance(CalculateContrast(_DetailOcclusionContrast,tex2DNode780).rgb);
			float lerpResult457 = lerp( 1.0 , grayscale782 , ( _DetailOcclusionScale * DetailMask1366 ));
			float grayscale783 = Luminance(CalculateContrast(_DetailOcclusionContrast2,tex2DNode781).rgb);
			float lerpResult462 = lerp( 1.0 , grayscale783 , ( _DetailOcclusionScale2 * DetailMask2367 ));
			float OcclusionMix553 = ( ( lerpResult519 - ( 1.0 - lerpResult457 ) ) - ( 1.0 - lerpResult462 ) );
			o.Occlusion = OcclusionMix553;
			o.Alpha = 1;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen804 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither804 = Dither8x8Bayer( fmod(clipScreen804.x, 8), fmod(clipScreen804.y, 8) );
			float AlphaInput426 = tex2DNode1185.a;
			float AlphaMask1200 = tex2DNode23.a;
			float lerpResult1207 = lerp( AlphaInput426 , AlphaMask1200 , ( ExGloss877 * _WetAlpha ));
			float lerpResult1193 = lerp( lerpResult1207 , 1.0 , ( lerpResult1207 * WeatheringAlpha2922 ));
			float TearingsMask405 = tex2DNode23.b;
			float clampResult1221 = clamp( _AlphaEx , 0.0 , 1.0 );
			float temp_output_705_0 = ( 1.0 - clampResult1221 );
			clip( TearingsMask405 - temp_output_705_0);
			float lerpResult701 = lerp( lerpResult1193 , lerpResult1193 , temp_output_705_0);
			float clampResult1220 = clamp( ( lerpResult701 * ceil( AlphaInput426 ) ) , 0.0 , 1.0 );
			float AlphaMix487 = clampResult1220;
			dither804 = step( dither804, AlphaMix487 );
			clip( dither804 - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18800
109.6;6.4;1768;1078;904.1357;2765.299;2.812279;True;False
Node;AmplifyShaderEditor.CommentaryNode;902;-6025.154,-4152.713;Inherit;False;2872.755;4641.749;Comment;123;932;1169;1168;922;1069;1068;1167;1127;1160;1067;1162;1117;1062;1063;1152;1066;1064;1061;1003;1116;988;929;1161;998;993;986;991;992;996;1002;1065;1001;985;997;928;1163;987;1119;1018;982;981;1011;1014;976;1013;980;1012;974;925;979;1009;1007;1017;977;1016;919;978;1006;1008;1010;975;916;923;1022;956;957;955;984;954;915;1084;983;1082;1021;1081;1083;1079;935;472;937;473;470;1164;1080;1107;1144;942;1108;471;1146;948;940;474;1145;1147;1150;1093;469;1138;1140;1139;1101;1109;1105;1112;1102;1136;1135;1094;934;1137;1143;1148;1142;1141;1149;936;1132;1134;1133;912;1025;1186;Weathering;0.9607843,1,0.6196079,1;0;0
Node;AmplifyShaderEditor.SamplerNode;912;-5605.331,-3999.846;Inherit;True;Property;_TextureSample16;Texture Sample 15;11;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;25;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1186;-5867.711,-1041.122;Inherit;False;1340.87;335.2312;Comment;6;1192;1191;1190;1189;1188;1187;WeatheringUV;0.9856402,1,0,1;0;0
Node;AmplifyShaderEditor.RelayNode;1132;-4720.089,-3976.297;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1133;-4850.804,-3950.882;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1134;-4979.699,-3927.278;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1187;-5819.821,-970.9006;Inherit;False;Property;_WeatheringUV;WeatheringUV;18;0;Create;True;0;0;0;True;0;False;1,1,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1148;-4841.922,-3858.481;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1149;-4844.639,-3850.33;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;936;-5172.449,-3874.085;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1142;-4598.756,-3885.652;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1143;-4612.341,-3884.293;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1188;-5594.821,-846.9007;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1141;-4727.183,-3864.289;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1189;-5391.458,-845.7398;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;100,100;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1135;-4727.389,-3352.031;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;934;-5168.997,-4044.833;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1136;-4593.861,-3384.404;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1102;-4849.221,-3138.504;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1190;-5595.821,-969.9006;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1112;-5015.245,-3833.422;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1137;-4841.398,-3536.123;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1094;-4604.792,-3171.784;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1093;-4591.645,-3133.439;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;469;-5826.811,-2886.622;Inherit;False;Property;_WeatheringAll;WeatheringAll;53;0;Create;True;0;0;0;True;2;Header (Weathering);;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1139;-4714.555,-3315.666;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1138;-4826.741,-3504.486;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1105;-4893.893,-3716.732;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1191;-5103.891,-993.2955;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;5,0.9;False;1;FLOAT2;0.2,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1109;-4636.533,-4009.186;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1140;-4583.512,-3344.658;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1101;-4838.153,-3104.566;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;38;-4493.958,2220;Inherit;False;Property;_UVScalePattern;UVScalePattern;17;0;Create;False;0;0;0;True;2;Header (UV Coordinates);;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;473;-5821.513,-3244.742;Inherit;False;Property;_WeatheringRange4;WeatheringRange4;57;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1145;-4674.83,-3300.151;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;471;-5827.421,-3607.609;Inherit;False;Property;_WeatheringRange2;WeatheringRange2;55;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;942;-4469.996,-3412.466;Inherit;False;204;183;Range 4: Back-Bottom;1;972;;0.9433962,0.8983464,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;470;-5832.763,-3775.956;Inherit;False;Property;_WeatheringRange1;WeatheringRange1;54;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1192;-4788.742,-957.7946;Inherit;False;WeatheringUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;935;-4487.599,-3994.449;Inherit;False;226;183;Range 1: Front-Top;1;968;;1,0,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1164;-5828.025,-2759.094;Inherit;False;Constant;_Float0;Float 0;61;0;Create;True;0;0;0;False;0;False;0.3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;474;-5828.295,-3061.249;Inherit;False;Property;_WeatheringRange5;WeatheringRange5;58;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1107;-4868.178,-3710.251;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;940;-4474.935,-3584.598;Inherit;False;204;160;Range 3: Back-Top;1;939;;0,0.4918175,1,1;0;0
Node;AmplifyShaderEditor.WireNode;1150;-4791.715,-3495.621;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1302;-4242.24,2221.129;Inherit;False;UVScale;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1144;-4549.85,-3323.244;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;329;-3165.211,2761.059;Inherit;False;3235.085;1139.023;Comment;32;755;751;745;752;757;749;754;758;733;742;369;750;743;222;748;756;741;744;747;753;785;746;234;233;235;327;240;836;1300;1301;1303;1336;Detail Normal Map 1;1,0,0,1;0;0
Node;AmplifyShaderEditor.WireNode;1108;-4600.868,-3996.311;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1146;-4551.209,-3120.832;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1147;-4787.583,-3096.379;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;948;-4464.356,-3208.388;Inherit;False;204;183;Range 5: Arms;1;973;;1,0,0.7995195,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;472;-5827.318,-3446.456;Inherit;False;Property;_WeatheringRange3;WeatheringRange3;56;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CeilOpNode;1080;-4118.078,-2872.025;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;937;-4482.79,-3787.284;Inherit;False;224;183;Range 2: Front-Bottom;1;969;;0,1,0.1001263,1;0;0
Node;AmplifyShaderEditor.ClampOpNode;969;-4433.439,-3741.299;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;972;-4425.392,-3350.897;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;915;-5953.33,-2475.061;Inherit;False;1192;WeatheringUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1021;-3723.677,-2878.742;Inherit;False;WMaskAll;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;330;-3159.167,4119.344;Inherit;False;3206.373;1317.682;Comment;32;778;777;776;775;774;773;771;734;772;231;769;770;768;370;767;766;765;764;763;762;761;786;237;236;238;326;251;837;1299;1304;1305;1337;Detail Normal Map 2;0.03088689,1,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;973;-4417.355,-3149.138;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CeilOpNode;1079;-4126.687,-3049.519;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;939;-4424.935,-3522.967;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1303;-3132.177,3075.794;Inherit;False;1302;UVScale;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CeilOpNode;1083;-4119.689,-3594.888;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CeilOpNode;1082;-4121.502,-3439.205;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CeilOpNode;1084;-4119.333,-3768.54;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CeilOpNode;1081;-4123.604,-3232.321;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;327;-3146.235,2927.808;Inherit;False;Property;_DetailUV;DetailUV;40;0;Create;True;0;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TFHCCompareWithRange;983;-5377.988,-2817.05;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0.3;False;4;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;968;-4437.439,-3953.299;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1022;-5553.396,-1401.968;Inherit;False;1021;WMaskAll;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;916;-5598.503,-2497.671;Inherit;True;Property;_TextureSample17;Texture Sample 16;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;24;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;-3935.508,-3950.144;Inherit;False;2;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;954;-3932.76,-3741.387;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;955;-3930.315,-3531.37;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;984;-5125.401,-2741.228;Inherit;False;RangeCutAll;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;326;-3121.57,4264.615;Inherit;False;Property;_DetailUV2;DetailUV2;41;0;Create;True;0;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;240;-2987.291,3203.865;Inherit;False;Property;_DetailUVRotator;DetailUVRotator;38;0;Create;True;0;0;0;True;0;False;1;1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1301;-2931.064,2933.444;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;957;-3930.938,-3146.926;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;956;-3936.717,-3352.463;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1305;-3134.217,4411.626;Inherit;False;1302;UVScale;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PiNode;1300;-2710.106,3208.54;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1008;-3726.843,-3540.675;Inherit;False;WMask3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1010;-3727.237,-3154.054;Inherit;False;WMask5;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1007;-3725.809,-3750.213;Inherit;False;WMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;233;-2761.745,2913.699;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TFHCCompareWithRange;919;-5373.764,-3735.663;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0.3;False;4;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCCompareWithRange;979;-5376.259,-2999.111;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0.3;False;4;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCCompareWithRange;977;-5375.148,-3357.673;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0.3;False;4;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1016;-5198.88,-1496.833;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCCompareWithRange;978;-5377.749,-3178.262;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0.3;False;4;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1304;-2933.104,4269.276;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCCompareWithRange;975;-5375.902,-3549.011;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0.3;False;4;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1017;-5195.553,-1386.759;Inherit;False;984;RangeCutAll;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1009;-3729.088,-3363.024;Inherit;False;WMask4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;251;-3006.258,4567.135;Inherit;False;Property;_DetailUV2Rotator;DetailUV2Rotator;39;0;Create;True;0;0;0;True;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;235;-2718.881,3048.565;Inherit;False;Constant;_Anchor2;Anchor2;52;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;1006;-3725.009,-3959.351;Inherit;False;WMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;980;-5136.941,-3295.496;Inherit;False;RangeCut3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;238;-2756.803,4395.838;Inherit;False;Constant;_Anchor;Anchor;52;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1013;-5567.454,-1859.171;Inherit;False;1009;WMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;236;-2791.574,4246.75;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1011;-5566.454,-2058.171;Inherit;False;1007;WMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;981;-5138.74,-3118.139;Inherit;False;RangeCut4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1012;-5567.454,-1957.171;Inherit;False;1008;WMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;925;-5564,-2157.705;Inherit;False;1006;WMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1119;-5197.857,-1245.732;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1299;-2719.627,4571.62;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;982;-5129.286,-2930.146;Inherit;False;RangeCut5;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1018;-4978.687,-1493.81;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;974;-5127.573,-3654.217;Inherit;False;RangeCut1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;976;-5135.099,-3478.754;Inherit;False;RangeCut2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1014;-5567.454,-1761.171;Inherit;False;1010;WMask5;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;234;-2447.82,2951.124;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;992;-5192.59,-1989.233;Inherit;False;980;RangeCut3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1002;-5196.591,-1593.728;Inherit;False;982;RangeCut5;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;987;-5188.532,-2192.316;Inherit;False;976;RangeCut2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1001;-5199.918,-1703.802;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;996;-5197.613,-1902.628;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1163;-5154.26,-1227.047;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;785;-2253.117,2946.207;Inherit;False;Detail1UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode;746;-2221.043,3635.467;Inherit;False;False;2;0;FLOAT;0.5;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;986;-5191.86,-2302.389;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;237;-2522.011,4353.193;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;991;-5195.916,-2099.307;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1065;-4758.01,-1497.977;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;928;-5197.895,-2498.91;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;997;-5194.287,-1792.553;Inherit;False;981;RangeCut4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1025;-5891.219,-555.9139;Inherit;False;2647.625;920.0429;Comment;22;1047;1046;1045;1044;1043;1042;1041;1040;1039;1038;1037;1036;1035;1034;1033;1032;1031;1030;1029;1028;1027;1026;Weathering Bump;0.9621782,1,0.6196079,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;985;-5194.568,-2388.836;Inherit;False;974;RangeCut1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;761;-2252.761,5044.097;Inherit;False;False;2;0;FLOAT;0.5;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;747;-2039.256,3644.093;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1003;-4979.723,-1700.777;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;786;-2321.545,4351.415;Inherit;False;Detail2UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1116;-4201.118,-1234.158;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;204;-4844.69,4409.513;Inherit;False;1295.923;836.1025;Comment;3;260;261;1182;Detail Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;993;-4975.722,-2096.283;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;753;-2134.583,3530.912;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleSubtractOpNode;988;-4971.666,-2299.366;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;998;-4977.42,-1899.605;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;929;-4977.701,-2495.887;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1026;-5836.93,195.8659;Inherit;False;Constant;_WeatheringBump;WeatheringBump;56;0;Create;True;0;0;0;True;0;False;0.4;0.4;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1161;-4240.267,-1471.397;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;463;-3005.259,842.5394;Inherit;False;3050.134;1494.415;Comment;28;553;792;789;791;519;790;462;70;552;457;783;441;797;784;782;55;798;781;54;442;795;780;788;796;787;1178;1308;1309;AO;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;167;-2996.584,-3656.228;Inherit;False;4988.28;1222.338;Comment;23;501;1057;1171;1232;1055;1054;1056;1172;1215;1214;1270;121;817;1213;599;657;658;1211;1212;426;71;5;1185;Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;1182;-4716.539,4743.011;Inherit;True;Property;_TextureSample12;Texture Sample 12;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;21;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;23;-4055.538,889.2078;Inherit;True;Property;_OcclusionMap;OcclusionMap;9;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header(Packed (R_AO G_none B_Tearings));False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;1062;-4754.794,-2091.148;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1152;-4188.956,-1483.961;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;762;-2070.975,5052.723;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1066;-4759.178,-2496.081;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1028;-5694.73,-477.61;Inherit;False;1192;WeatheringUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ClampOpNode;1064;-4766.591,-1698.553;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;260;-3808.066,4524.267;Inherit;False;218.3544;268.5316;Comment;1;366;;1,0,0,1;0;0
Node;AmplifyShaderEditor.ClampOpNode;1063;-4761.776,-1899.294;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;744;-1819.232,3528.092;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1117;-4159.08,-1258.761;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1027;-5537.154,201.6599;Inherit;False;False;2;0;FLOAT;0.43;False;1;FLOAT;3.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;741;-1829.777,3673.248;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;893;-6399.682,-5445.183;Inherit;False;1423.2;1022.115;Comment;26;1278;1260;1288;835;1280;1287;1259;1243;1264;1282;1281;1263;1283;1250;1276;1242;1246;1275;1223;1273;1245;877;1222;728;1244;1298;Wetness;0.01415092,0.7101932,1,1;0;0
Node;AmplifyShaderEditor.ClampOpNode;1061;-4754.359,-2296.235;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;763;-2166.301,4939.543;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;764;-1861.495,5081.878;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1185;-2954.518,-3579.297;Inherit;True;Property;_TextureSample15;Texture Sample 15;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;222;-3062.408,3565.121;Inherit;False;Property;_DetailNormalMapScale;DetailNormalMapScale;28;1;[Header];Create;True;1;Detail;0;0;True;0;False;10;4.07;-3;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;787;-2941.214,1242.167;Inherit;False;785;Detail1UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScaleNode;1029;-5355.366,211.2868;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;71;-2895.349,-3131.898;Inherit;False;Property;_Color;Color;14;0;Create;True;0;0;0;True;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1067;-4421.032,-2493.682;Inherit;False;6;6;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;728;-6336.689,-4853.638;Inherit;False;Property;_ExGloss;ExGloss;59;0;Create;True;0;0;0;True;1;Header (Wetness);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1030;-5450.694,98.10815;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.CommentaryNode;202;-4828.106,-5604.667;Inherit;False;1331.589;1285.219;Comment;7;180;379;276;275;277;179;1183;Color Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;5;-2903.065,-3344.324;Inherit;False;Property;_BaseColor;BaseColor;13;0;Create;True;0;0;0;True;2;Header (Colors);;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1216;-3716.428,836.8533;Inherit;False;Carvature;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;366;-3796.761,4562.197;Inherit;True;DetailMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;756;-1666.428,3525.531;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1160;-4137.704,-1311.547;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;261;-3806.814,4827.39;Inherit;False;226.1978;261.4764;Comment;1;367;;0,1,0.1183066,1;0;0
Node;AmplifyShaderEditor.WireNode;1162;-4171.734,-1528.179;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1244;-6335.095,-5365.491;Inherit;False;Property;_WetUV;WetUV;19;0;Create;True;0;0;0;True;0;False;1,1,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;748;-1686.643,3651.629;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;765;-1850.95,4936.724;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1212;-2610.799,-2897.138;Inherit;False;1216;Carvature;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;788;-2944.628,1790.74;Inherit;False;786;Detail2UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-3026.468,5097.184;Inherit;False;Property;_DetailNormalMapScale2;DetailNormalMapScale2;29;0;Create;True;0;0;0;True;0;False;1;4.02;-3;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;750;-1476.67,3453.447;Inherit;True;Property;_TextureSample7;Texture Sample 7;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;767;-1698.146,4934.162;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;780;-2717.123,1220.531;Inherit;True;Property;_TextureSample0;Texture Sample 0;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1222;-5665.796,-5034.543;Inherit;False;Property;_WetAlbedoOffset;WetAlbedoOffset;63;0;Create;True;0;0;0;True;0;False;0.6;0.6;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;276;-3820.345,-4931.779;Inherit;False;234.0894;272.1377;Color Mask 3;1;376;;0,1,0.001329422,1;0;0
Node;AmplifyShaderEditor.ComponentMaskNode;657;-2612.635,-3344.165;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;766;-1718.361,5060.259;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;742;-1471.023,3215.953;Inherit;True;Property;_TextureSample6;Texture Sample 6;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1245;-6113.742,-5393.333;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1032;-5145.886,240.4431;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1336;-2730.82,3570.111;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;599;-2617.756,-3131.585;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;658;-2610.788,-3579.398;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;369;-2805.588,3414.167;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1031;-5135.343,95.28783;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1211;-2694.571,-2813.366;Inherit;False;Property;_CarvatureStrength;CarvatureStrength;26;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;743;-1463.982,2926.891;Inherit;True;Property;_TextureSample5;Texture Sample 5;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;760;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;877;-6011.796,-4853.875;Inherit;False;ExGloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;201;-2955.132,-2352.137;Inherit;False;4534.985;3068.99;MetallicGlossMap;67;636;580;584;88;806;394;807;816;570;1175;393;653;808;645;1257;827;573;830;809;810;1258;646;815;534;900;828;343;569;579;189;533;829;37;15;608;606;87;607;1307;1306;1316;1317;1318;1319;1320;1321;1310;1315;1311;1312;1313;1314;1334;1335;1323;1326;1328;1327;1331;1332;1333;1324;1322;1329;1325;1330;1338;Metallic Glossiness Emission;1,1,1,1;0;0
Node;AmplifyShaderEditor.ClampOpNode;1068;-4267.645,-2492.807;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;367;-3787.714,4868.199;Inherit;True;DetailMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;273;-2970.44,-4770.982;Inherit;False;3055.386;1040.555;Comment;23;1204;1205;1203;1219;1218;1209;708;1217;705;43;406;660;487;1202;701;1193;1195;1207;1194;1208;1197;1220;1221;Alpha;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;1167;-4118.965,-2390.689;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1183;-4749.651,-5224.729;Inherit;True;Property;_TextureSample13;Texture Sample 13;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;113;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;1127;-4142.585,-2351.46;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1298;-6112.623,-5294.111;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;15;-2921.891,-1711.615;Inherit;True;Property;_MetallicGlossMap1;MetallicGlossMap1;8;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;1180;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;370;-2987.45,4887.088;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;-3799.277,-4889.955;Inherit;True;ColorMask3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;770;-1495.7,4335.522;Inherit;True;Property;_NormalCreate01;NormalCreate 01;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;275;-3817.93,-5230.98;Inherit;False;237.4373;272.2484;Color Mask 2;1;375;;1,0,0,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1209;-2421.015,-4475.96;Inherit;False;877;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;426;-2611.314,-3486.082;Inherit;False;AlphaInput;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1337;-2678.195,5100.701;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;533;-2884.409,-1938.624;Inherit;False;Property;_Roughness4;Roughness4;50;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;733;-2529.016,3433.029;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;781;-2723.666,1769.263;Inherit;True;Property;_TextureSample1;Texture Sample 1;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;277;-3823.047,-4621.325;Inherit;False;233.8684;272.193;Color Mask 4;1;377;;0.2971698,0.505544,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1308;-1965.655,1454.848;Inherit;False;Detail1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1270;-1818.691,-3335.677;Inherit;False;2100.087;853.0801;Comment;18;1227;1230;1231;1229;1228;1279;1271;1297;1293;1285;1284;1295;1286;1272;1277;1294;1226;1274;;0,0.7750711,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1219;-2514.156,-4391.012;Inherit;False;Property;_WetAlpha;WetAlpha;60;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;768;-1508.388,4862.078;Inherit;True;Property;_TextureSample8;Texture Sample 8;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1275;-5668.032,-4894.295;Inherit;False;Property;_WetSplatsAlbedoOffset;WetSplatsAlbedoOffset;64;0;Create;True;0;0;0;True;0;False;0.6;0.6;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1034;-5002.753,218.823;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;829;-2882.899,-1821.391;Inherit;False;Property;_Roughness;Roughness;47;0;Create;True;0;0;0;False;2;Header (Metallic Roughness (Optional));;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1223;-6314.599,-4729.63;Inherit;False;Property;_BodyColor;BodyColor;62;0;Create;True;0;0;0;True;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;179;-4323.895,-5314.499;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;121;-1932.738,-3571.603;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1214;-2367.215,-2893.27;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;758;-1125.918,3400.47;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;754;-1119.737,3167.636;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1069;-4078.441,-2492.315;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;607;-908.4139,236.0075;Inherit;False;876.0251;365.46;Comment;5;568;588;574;825;820;;0,1,0.03845549,1;0;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1246;-5936.095,-5358.991;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1213;-2576.001,-2983.487;Inherit;False;Constant;_Float2;Float 1;65;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;769;-1502.741,4624.584;Inherit;True;Property;_TextureSample4;Texture Sample 4;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;779;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1200;-3714.599,1045.237;Inherit;False;AlphaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1273;-5288.622,-5043.67;Inherit;False;WetAlbedoOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1033;-4982.538,92.72777;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;734;-2540.336,4891.011;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;377;-3802.035,-4581.92;Inherit;True;ColorMask4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1310;-1802.884,-1642.848;Inherit;False;Property;_DetailGlossScale;DetailGlossScale;30;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;606;-1923.41,224.6215;Inherit;False;928.3743;363.1198;Comment;5;590;594;593;822;823;;1,0,0.1222792,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1311;-1733.954,-1559.073;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;534;-2365.943,-1979.701;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1242;-5672.114,-5384.687;Inherit;True;Property;_TextureSample14;Texture Sample 14;12;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;831;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;189;-2876.878,-2099.535;Inherit;False;Property;_Glossiness4;Glossiness4;49;0;Create;True;0;0;0;False;2;Header (Color 4 Settings (Optional));;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-2858.874,-161.4801;Float;False;Property;_EmissionStrength;EmissionStrength;42;0;Create;True;0;0;0;True;1;Header (Emission (Tex Required));False;0;0;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;343;-2916.79,-1481.45;Inherit;True;Property;_DetailMainTex1;DetailMainTex1;2;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;gray;Auto;False;Instance;1181;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;828;-2369.393,-1823.971;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1309;-1949.416,2031.317;Inherit;False;Detail2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;495;266.936,2827.27;Inherit;False;2625.608;1011.054;Comment;16;872;871;876;496;1052;1051;374;1053;839;252;1049;1050;1179;838;1048;1269;Normal Mix;0.8967471,0.5424528,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;749;-928.1171,3214.346;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1315;-1730.66,-1729.385;Inherit;False;1308;Detail1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;922;-3484.047,-2165.524;Inherit;False;WeatheringAlpha2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;757;-943.8752,3357.582;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1250;-6318.826,-5182.039;Inherit;False;Property;_WetOpacitySplats;WetOpacitySplats;65;0;Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;180;-4144.758,-5484.822;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;772;-1151.455,4576.268;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;817;-2357.702,-3487.558;Inherit;False;ColorTex;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;375;-3794.818,-5186.151;Inherit;True;ColorMask2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1037;-4803.133,-218.8509;Inherit;True;Property;_TextureSample24;Texture Sample 18;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;24;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;825;-879.1932,490.3633;Inherit;False;376;ColorMask3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1036;-4792.781,20.64283;Inherit;True;Property;_TextureSample23;Texture Sample 21;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;24;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;379;-3820.64,-5541.512;Inherit;False;249.3828;282.3601;Color Mask 1;1;378;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;1035;-4811.208,-499.091;Inherit;True;Property;_TextureSample30;Texture Sample 28;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;24;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1274;-1719.648,-3253.64;Inherit;False;1273;WetAlbedoOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1276;-5305.032,-4904.295;Inherit;False;WetSplatsAlbedoOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1283;-5902.809,-4606.958;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1197;-2922.227,-4699.4;Inherit;False;426;AlphaInput;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1263;-5660.505,-5158.03;Inherit;False;Property;_WetBumpOffset;WetBumpOffset;67;0;Create;True;0;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;771;-1157.636,4809.102;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1208;-2421.775,-4558.071;Inherit;False;1200;AlphaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1218;-2221.703,-4470.241;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1215;-1610.089,-3572.839;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;815;-2158.895,-1824.347;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;835;-6316.485,-4995.819;Inherit;False;Property;_WetGlossBase;WetGlossBase;61;0;Create;True;0;0;0;True;0;False;0.8;0.8;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1287;-6312.537,-5091.436;Inherit;False;Property;_WetGlossSplats;WetGlossSplats;66;0;Create;True;0;0;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1282;-5876.226,-4623.229;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;752;-718.707,3393.894;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1194;-1988.009,-4387.055;Inherit;False;922;WeatheringAlpha2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1313;-1506.011,-1624.224;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1321;-1218.876,-1585.905;Inherit;False;1309;Detail2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1038;-4442.029,-32.33519;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1316;-1289.411,-1499.368;Inherit;False;Property;_DetailGlossScale2;DetailGlossScale2;31;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1312;-1528.606,-1728.118;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;809;-2059.53,-1699.227;Inherit;False;377;ColorMask4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;810;-2183.888,-2090.28;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;646;-2901.09,-999.1796;Inherit;False;Property;_MetallicMask4;MetallicMask4;52;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1039;-4435.846,-265.1692;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1264;-5285.505,-5164.03;Inherit;False;WetBumpOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;830;-2899.124,-1178.373;Inherit;False;Property;_MetallicMask;MetallicMask;48;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;823;-1889.797,464.4897;Inherit;False;375;ColorMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1243;-5352.114,-5272.687;Inherit;False;WetSplats;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1281;-6022.813,-4729.174;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1294;-1714.743,-3095.508;Inherit;False;Property;_WetColor;WetColor;68;0;Create;True;0;0;0;True;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1277;-1760.579,-3175.976;Inherit;False;1276;WetSplatsAlbedoOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1207;-2055.73,-4690.503;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;745;-745.622,3165.121;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;773;-959.8351,4622.978;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;378;-3794.881,-5487.761;Inherit;True;ColorMask1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1317;-1222.17,-1415.593;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1226;-1472.852,-3269.959;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1269;297.6462,2879.273;Inherit;False;677.5999;431.4761;Comment;5;1265;1267;44;1268;1266;;0.1745283,0.7742985,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;608;-2843.159,216.9346;Inherit;False;859.3313;401.7373;Comment;5;604;603;602;824;821;;0,0,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;820;-578.1862,410.518;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1259;-6016.002,-5181.515;Inherit;False;SplatsOp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;43;-1627.161,-4341.796;Inherit;False;Property;_AlphaEx;AlphaEx;25;0;Create;True;0;0;0;True;1;Header (Cloth Tearings);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1040;-4466.293,-141.0843;Inherit;False;Constant;_WeatheringBumpPower;WeatheringBumpPower;57;0;Create;True;0;0;0;True;0;False;2;2;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;774;-957.9332,4766.213;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;568;-874.0647,291.5295;Inherit;False;817;ColorTex;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1260;-5995.002,-4995.515;Inherit;False;WetGlossBase;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;824;-2797.244,499.5484;Inherit;False;378;ColorMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1318;-1016.822,-1584.638;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1284;-1280.474,-3198.166;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;900;-704.4413,-2184.396;Inherit;False;836.9009;810.3851;Comment;12;1252;1233;1255;1291;1251;1236;1292;1289;1290;1261;1262;1234;;0.1933962,0.7485096,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1195;-1635.581,-4568.834;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1272;-1075.589,-2895.798;Inherit;False;1243;WetSplats;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1319;-994.2271,-1480.744;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;645;-2368.958,-1040.936;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1314;-1367.106,-1728.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;405;-3717.155,943.6603;Inherit;False;TearingsMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1268;352.6462,3196.149;Inherit;False;877;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;775;-750.425,4802.525;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1324;-1889.224,-746.5564;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1288;-6004.537,-5087.436;Inherit;False;SplatsGloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1323;-1958.154,-830.3314;Inherit;False;Property;_DetailMetallicScale;DetailMetallicScale;32;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1266;347.6462,3058.149;Inherit;False;1264;WetBumpOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1221;-1342.496,-4336.09;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;37;-2852.843,-420.1084;Inherit;False;Property;_EmissionColor;EmissionColor;15;0;Create;True;0;0;0;True;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1295;-1345.772,-3098.131;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;653;-2900.975,-876.407;Inherit;False;Property;_Metallic4;Metallic4;51;0;Create;True;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;-5790.748,-4724.136;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;776;-777.3399,4573.752;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1286;-1066.323,-2811.102;Inherit;False;1259;SplatsOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;590;-1879.648,276.6216;Inherit;False;817;ColorTex;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;751;-584.4581,3267.156;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;574;-446.6233,299.6359;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1041;-4183.996,-263.6761;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;796;-2691.792,1622.041;Inherit;False;Property;_DetailOcclusionContrast;DetailOcclusionContrast;36;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1042;-4168.39,-30.84887;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;808;-1847.21,-2107.749;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;822;-1601.198,421.619;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;827;-2366.942,-1217.343;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1322;-1885.93,-916.8684;Inherit;False;1308;Detail1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1261;-695.7404,-2022.664;Inherit;False;1288;SplatsGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;807;-2158.43,-895.6591;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;755;-424.7832,3284.703;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1325;-1661.281,-811.7074;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1227;-1766.249,-2714.719;Inherit;True;Property;_TextureSample19;Texture Sample 14;9;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;23;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1326;-1333.219,-819.05;Inherit;False;Property;_DetailMetallicScale2;DetailMetallicScale2;33;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CrossProductOpNode;777;-616.1771,4675.787;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1329;-1683.876,-915.6014;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1327;-1262.684,-905.587;Inherit;False;1309;Detail2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;821;-2492.633,404.3725;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1290;-684.2074,-1902.662;Inherit;False;1243;WetSplats;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;579;-2213.279,-468.4026;Inherit;False;889.9937;335.6628;If toggled Color 3 used as Emission Color and Glossiness3 as Emission Strength;6;564;612;609;613;610;611;Color Mask Required;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1306;-1427.607,-2106.492;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;-855.3218,-1584.837;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1262;-680.3074,-1745.229;Inherit;False;1260;WetGlossBase;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;816;-2167.514,-1210.001;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1234;-679.4414,-1638.551;Inherit;False;877;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-2701.678,1426.843;Inherit;False;Property;_DetailOcclusionScale;DetailOcclusionScale;34;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1044;-3995.585,-77.38597;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;442;-2669.698,1520.11;Inherit;False;366;DetailMask1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;-268.6975,295.9216;Inherit;False;EC3;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1193;-1290.861,-4689.245;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;569;-2639.518,-417.9818;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1258;-2179.982,-1582.246;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;593;-1459.009,281.5229;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;44;355.0053,2929.273;Inherit;False;Property;_BumpScale;BumpScale;27;0;Create;True;0;0;0;True;2;Header (Bump);;False;1;1;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;798;-2718.878,2201.569;Inherit;False;Property;_DetailOcclusionContrast2;DetailOcclusionContrast2;37;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1293;-952.0647,-3091.128;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1043;-4001.498,-283.158;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1328;-1265.978,-735.275;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;604;-2786.967,273.014;Inherit;False;817;ColorTex;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1168;-3846.567,-2491.879;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1267;630.6461,3064.149;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleContrastOpNode;795;-2369.624,1225.526;Inherit;False;2;1;COLOR;0,0,0,0;False;0;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1285;-836.1226,-2857.301;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;705;-1189.422,-4336.531;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;406;-1435.579,-4444.638;Inherit;False;405;TearingsMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1278;-5618.863,-4729.962;Inherit;False;WetBodyOffset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CeilOpNode;1203;-2671.222,-4208.53;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1265;819.6461,2937.149;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1279;-575.7712,-2998.304;Inherit;False;1278;WetBodyOffset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1332;-1038.035,-800.426;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;55;-2719.32,1985.837;Inherit;False;Property;_DetailOcclusionScale2;DetailOcclusionScale2;35;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;784;-2214.872,1353.263;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;708;-1069.091,-4588.748;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1292;-268.5766,-1772.723;Inherit;False;1259;SplatsOp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1331;-1060.63,-904.3201;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-2691.49,2086.245;Inherit;False;367;DetailMask2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1251;-267.7985,-1640.646;Inherit;False;1243;WetSplats;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1289;-447.2074,-1918.662;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1257;-2137.251,-1590.516;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1236;-420.3813,-1655.865;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1297;-744.2307,-2728.599;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1307;-992.6314,-2103.341;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1217;-902.9826,-4348.708;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;782;-2125.773,1221.093;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1330;-1522.376,-915.8004;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;778;-456.5022,4693.334;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;1205;-599.4298,-4180.913;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;594;-1216.055,275.2897;Inherit;False;EC2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;836;-194.6561,3263.052;Inherit;True;DetailNormal1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;1169;-3688.323,-2491.11;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;806;-1841.79,-1308.831;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;602;-2344.924,276.8787;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;611;-2164.349,-269.568;Inherit;False;588;EC3;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1271;-608.4908,-3263.689;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleContrastOpNode;797;-2364.346,1775.622;Inherit;False;2;1;COLOR;0,0,0,0;False;0;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CrossProductOpNode;1045;-3829.337,-169.1219;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;573;-2394.624,-412.573;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1233;-294.3405,-2104.594;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1046;-3657.661,-166.576;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1255;-264.7195,-1920.29;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1179;1028.843,2886.43;Inherit;True;Property;_TextureSample3;Texture Sample 3;4;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;244;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;457;-1878.432,1202.785;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;932;-3473.684,-2494.567;Inherit;False;WeatheringAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;783;-2125.719,1771.069;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1204;-552.8497,-4202.789;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1334;-1418.543,-1307.435;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;837;-223.1501,4689.553;Inherit;True;DetailNormal2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1291;-78.30246,-1902.342;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;564;-2181.092,-418.48;Inherit;False;Property;_EmissionColor3;Color3 is Emissive;45;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1048;1015.285,3403.734;Inherit;False;1192;WeatheringUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;701;-804.3464,-4686.764;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;393;-2476.944,-1487.942;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;838;1252.038,3077.411;Inherit;False;836;DetailNormal1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;552;-2215.485,1921.321;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1178;-2726.443,911.4077;Inherit;True;Property;_TextureSample2;Texture Sample 2;9;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;23;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;1229;-228.4133,-2622.089;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;612;-1904.358,-265.8963;Inherit;False;594;EC2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1175;238.8799,-2186.51;Inherit;False;589.0088;1031.718;Comment;5;1174;1173;1129;1130;1131;;1,1,1,1;0;0
Node;AmplifyShaderEditor.Compare;1228;-349.5108,-3169.66;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;70;-2715.201,1122.98;Inherit;False;Property;_OcclusionStrength;OcclusionStrength;46;0;Create;True;0;0;0;False;1;Header (Ambient Occlusion);False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;603;-2195.081,272.6816;Inherit;False;EC1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1333;-899.1297,-904.519;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;839;1604.792,3073.48;Inherit;False;837;DetailNormal2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1047;-3499.053,-169.16;Inherit;False;WeatheringBump;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1130;320.7062,-1732.391;Inherit;False;932;WeatheringAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1174;311.1296,-1611.269;Inherit;False;922;WeatheringAlpha2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;790;-1623.003,1202.986;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1252;-41.26755,-2104.117;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1131;305.7515,-2034.998;Inherit;False;Constant;_WeatheringGloss;WeatheringGloss;56;0;Create;True;0;0;0;True;0;False;0.8;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1335;-964.0879,-1305.87;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1230;67.65445,-3276.657;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1050;1274.4,3384.361;Inherit;True;Property;_TextureSample18;Texture Sample 17;10;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;24;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1049;2028.964,3650.085;Inherit;False;932;WeatheringAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-1626.023,-265.5755;Inherit;False;603;EC1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1202;-459.2822,-4688.059;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;570;-2433.716,-627.1408;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1172;378.2715,-2988.462;Inherit;False;Constant;_ColorOffset;ColorOffset;61;0;Create;True;0;0;0;False;0;False;0.282353;0.280914;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1056;375.8586,-3262.845;Inherit;False;Property;_WeatheringAlbedo;WeatheringAlbedo;16;0;Create;True;0;0;0;True;0;False;0.6,0.65,0.65,0;0.6,0.65,0.65,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;609;-1903.253,-417.8161;Inherit;False;Property;_EmissionColor2;Color2 is Emissive;44;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1054;377.9385,-3078.542;Inherit;False;922;WeatheringAlpha2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;519;-1890.963,939.6177;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1231;70.53616,-3133.029;Inherit;False;877;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;462;-1863.736,1754.116;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;252;1454.513,2893.496;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1232;404.5777,-3562.681;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;789;-1421.197,1181.711;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;791;-1601.452,1755.257;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1173;660.7601,-1301.436;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;610;-1612.007,-420.3001;Inherit;False;Property;_EmissionColor1;Color1 is Emissive;43;0;Create;False;0;0;0;True;1;Header (Color Mask Required (Optional));False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1053;2132.875,3070.541;Inherit;False;1047;WeatheringBump;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1171;763.6323,-3246.251;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1051;2324.616,3457.962;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1220;-295.4961,-4688.09;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;374;1796.579,2894.145;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;394;-2390.063,-579.9329;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1055;685.8461,-3379.09;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1129;648.8627,-2104.837;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.83;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;487;-136.141,-4692.797;Inherit;True;AlphaMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1338;905.2091,-1300.149;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1339;894.432,-1897.766;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;792;-1130.644,1480.018;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;88;-1237.098,-604.611;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1057;1147.63,-3559.895;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0.6,0.65,0.65;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1052;2392.139,2894.121;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;491;2059.707,-1002.61;Inherit;False;487;AlphaMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;501;1493.905,-3563.994;Inherit;True;DiffuseMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;636;1145.379,-1304.615;Inherit;True;MetallicFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;584;1229.056,-2109.298;Inherit;True;GlossinessFinal;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;553;-313.3468,913.1072;Inherit;False;OcclusionMix;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;496;2607.103,2888.877;Inherit;True;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;580;-16.12184,-606.1724;Inherit;True;EmissionFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;840;-6095.334,2861.151;Inherit;False;2735.525;1180.599;Comment;20;869;868;867;865;866;863;864;860;862;856;859;858;853;854;851;852;850;849;848;844;Wetness Bump;0,0.7945042,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;760;-4731.882,892.2487;Inherit;True;Property;_DetailGlossMap;DetailGlossMap;6;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (Detail1);False;-1;None;359c7b7e1aa9c074488dd8a5a3c2fecc;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;871;2053.858,3183.982;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;515;2038.282,-1515.371;Inherit;False;501;DiffuseMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;42;-4681.347,1826.029;Inherit;False;Property;_patternuvbase;patternuvbase;23;0;Fetch;False;0;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;586;2015.585,-1170.945;Inherit;False;584;GlossinessFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;850;-5477.992,3794.532;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;244;-4398.097,1130.591;Inherit;True;Property;_BumpMap;BumpMap;4;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;2;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;849;-5573.317,3681.351;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleSubtractOpNode;860;-4558.473,3318.075;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;851;-5257.968,3678.532;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1181;-4389.424,1582.671;Inherit;True;Property;_DetailMainTex;DetailMainTex;2;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (Render Texture (leave empty));False;-1;None;e5ee6ce4102fab048b15588211bc9906;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;865;-4157.441,3544.333;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;867;-4023.194,3417.595;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;866;-4184.356,3315.559;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;858;-4909.758,3366.391;Inherit;True;Property;_TextureSample10;Texture Sample 10;12;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;831;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;852;-5268.514,3823.687;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;635;2031.003,-1254.402;Inherit;False;636;MetallicFinal;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;872;1723.793,3287.102;Inherit;False;869;WetnessNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;25;-4739.07,1362.111;Inherit;True;Property;_WeatheringMask;WeatheringMask;11;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;876;1764.682,3369.255;Inherit;False;877;ExGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-4050.38,1590.075;Inherit;True;Property;_MainTex;MainTex;1;1;[NoScaleOffset];Create;True;0;0;0;True;2;Header(Render Texture (leave empty));;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;24;-4741.333,1594.257;Inherit;True;Property;_WeatheringMap;WeatheringMap;10;1;[NoScaleOffset];Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;856;-4915.403,3603.886;Inherit;True;Property;_TextureSample9;Texture Sample 9;12;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;831;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;581;2022.45,-1335.129;Inherit;False;580;EmissionFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;40;-4679.347,2089.408;Inherit;False;Property;_patternuv2;patternuv2;21;0;Create;False;0;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;21;-4404.972,893.56;Inherit;True;Property;_DetailMask;DetailMask;5;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (R_Detail1 G_Detail2);False;-1;None;b0bd35b5317d73a448ffc7bf7b3e60ce;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;831;-4058.561,1364.024;Inherit;True;Property;_WetnessMap;WetnessMap;12;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (Packed (R_Glossiness G_Bump));False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1210;2384.379,-823.5623;Inherit;False;Property;_CullMode;CullMode;0;1;[IntRange];Create;True;0;0;0;True;0;False;0;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;554;2032.814,-1088.07;Inherit;False;553;OcclusionMix;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;41;-4679.347,1956.406;Inherit;False;Property;_patternuv3;patternuv3;22;0;Create;False;0;0;0;True;0;False;1,0;1,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;853;-5105.164,3675.97;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;39;-4680.347,2217.408;Inherit;False;Property;_patternuv1;patternuv1;20;0;Create;False;0;0;0;True;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;1180;-4401.745,1354.72;Inherit;True;Property;_MetallicGlossMap;MetallicGlossMap;8;1;[NoScaleOffset];Create;True;0;0;0;True;2;Header(Packed (R_Gloss G_Emission B_MetallicMask));;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;-4382.61,3508.021;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;864;-4366.853,3364.785;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;844;-5846.453,3106.429;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;859;-4902.717,3077.329;Inherit;True;Property;_TextureSample11;Texture Sample 11;12;0;Create;True;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Instance;831;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;779;-4732.906,1130.974;Inherit;True;Property;_DetailGlossMap2;DetailGlossMap2;7;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (Detail2);False;-1;None;16fcd75b2522efa418e3357511ce35cb;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;113;-4064.719,1131.531;Inherit;True;Property;_ColorMask;ColorMask;3;1;[NoScaleOffset];Create;True;0;0;0;True;1;Header (Optional (Required for Color 4));False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;854;-5125.379,3802.067;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DitheringNode;804;2283.583,-1003.018;Inherit;False;1;False;4;0;FLOAT;0;False;1;SAMPLER2D;;False;2;FLOAT4;0,0,0,0;False;3;SAMPLERSTATE;;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;868;-3863.519,3435.141;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;862;-4564.652,3550.909;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;660;-340.3632,-4416.56;Inherit;False;Property;_Cutoff;Cutoff;24;0;Create;True;0;0;0;True;1;Header (Zero Disable Dithering);False;0;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;499;2039.389,-1425.304;Inherit;False;496;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;869;-3630.165,3431.361;Inherit;True;WetnessNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;848;-5659.777,3785.905;Inherit;False;False;2;0;FLOAT;0.2;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2560.923,-1379.488;Float;False;True;-1;7;ASEMaterialInspector;0;0;Standard;Hanmen/Clothes True Cutoff;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.5;True;True;0;False;TransparentCutout;2600;AlphaTest;All;6;d3d9;d3d11_9x;d3d11;glcore;gles;gles3;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;1;2;True;1;True;0;1;False;-1;10;False;-1;1;5;False;-1;8;False;-1;6;False;-1;6;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;1210;-1;0;True;660;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1132;0;912;1
WireConnection;1133;0;912;2
WireConnection;1134;0;912;3
WireConnection;1148;0;1134;0
WireConnection;1149;0;1134;0
WireConnection;936;0;912;2
WireConnection;936;1;912;1
WireConnection;1142;0;1132;0
WireConnection;1143;0;1132;0
WireConnection;1188;0;1187;3
WireConnection;1188;1;1187;4
WireConnection;1141;0;1133;0
WireConnection;1189;0;1188;0
WireConnection;1135;0;1141;0
WireConnection;934;0;912;1
WireConnection;934;1;912;2
WireConnection;1136;0;1142;0
WireConnection;1102;0;1149;0
WireConnection;1190;0;1187;1
WireConnection;1190;1;1187;2
WireConnection;1112;0;936;0
WireConnection;1137;0;1148;0
WireConnection;1094;0;1143;0
WireConnection;1093;0;1094;0
WireConnection;1139;0;1135;0
WireConnection;1138;0;1137;0
WireConnection;1105;0;1112;0
WireConnection;1191;0;1190;0
WireConnection;1191;1;1189;0
WireConnection;1109;0;934;0
WireConnection;1140;0;1136;0
WireConnection;1101;0;1102;0
WireConnection;1145;0;1139;0
WireConnection;1192;0;1191;0
WireConnection;1107;0;1105;0
WireConnection;1150;0;1138;0
WireConnection;1302;0;38;0
WireConnection;1144;0;1140;0
WireConnection;1108;0;1109;0
WireConnection;1146;0;1093;0
WireConnection;1147;0;1101;0
WireConnection;1080;0;469;0
WireConnection;969;0;1107;0
WireConnection;972;0;1144;0
WireConnection;972;1;1145;0
WireConnection;1021;0;1080;0
WireConnection;973;0;1146;0
WireConnection;973;1;1147;0
WireConnection;1079;0;474;0
WireConnection;939;0;1150;0
WireConnection;1083;0;471;0
WireConnection;1082;0;472;0
WireConnection;1084;0;470;0
WireConnection;1081;0;473;0
WireConnection;983;0;469;0
WireConnection;983;3;1164;0
WireConnection;968;0;1108;0
WireConnection;916;1;915;0
WireConnection;923;0;968;0
WireConnection;923;1;1084;0
WireConnection;954;0;969;0
WireConnection;954;1;1083;0
WireConnection;955;0;939;0
WireConnection;955;1;1082;0
WireConnection;984;0;983;0
WireConnection;1301;0;327;0
WireConnection;1301;1;1303;0
WireConnection;957;0;973;0
WireConnection;957;1;1079;0
WireConnection;956;0;972;0
WireConnection;956;1;1081;0
WireConnection;1300;0;240;0
WireConnection;1008;0;955;0
WireConnection;1010;0;957;0
WireConnection;1007;0;954;0
WireConnection;233;0;1301;0
WireConnection;919;0;470;0
WireConnection;919;3;1164;0
WireConnection;979;0;474;0
WireConnection;979;3;1164;0
WireConnection;977;0;472;0
WireConnection;977;3;1164;0
WireConnection;1016;0;916;2
WireConnection;1016;1;1022;0
WireConnection;978;0;473;0
WireConnection;978;3;1164;0
WireConnection;1304;0;326;0
WireConnection;1304;1;1305;0
WireConnection;975;0;471;0
WireConnection;975;3;1164;0
WireConnection;1009;0;956;0
WireConnection;1006;0;923;0
WireConnection;980;0;977;0
WireConnection;236;0;1304;0
WireConnection;981;0;978;0
WireConnection;1119;0;1022;0
WireConnection;1299;0;251;0
WireConnection;982;0;979;0
WireConnection;1018;0;1016;0
WireConnection;1018;1;1017;0
WireConnection;974;0;919;0
WireConnection;976;0;975;0
WireConnection;234;0;233;0
WireConnection;234;1;235;0
WireConnection;234;2;1300;0
WireConnection;1001;0;916;2
WireConnection;1001;1;1014;0
WireConnection;996;0;916;2
WireConnection;996;1;1013;0
WireConnection;1163;0;1119;0
WireConnection;785;0;234;0
WireConnection;986;0;916;2
WireConnection;986;1;1011;0
WireConnection;237;0;236;0
WireConnection;237;1;238;0
WireConnection;237;2;1299;0
WireConnection;991;0;916;2
WireConnection;991;1;1012;0
WireConnection;1065;0;1018;0
WireConnection;928;0;916;2
WireConnection;928;1;925;0
WireConnection;747;0;746;0
WireConnection;1003;0;1001;0
WireConnection;1003;1;1002;0
WireConnection;786;0;237;0
WireConnection;1116;0;1163;0
WireConnection;993;0;991;0
WireConnection;993;1;992;0
WireConnection;753;0;785;0
WireConnection;988;0;986;0
WireConnection;988;1;987;0
WireConnection;998;0;996;0
WireConnection;998;1;997;0
WireConnection;929;0;928;0
WireConnection;929;1;985;0
WireConnection;1161;0;1065;0
WireConnection;1062;0;993;0
WireConnection;1152;0;1161;0
WireConnection;762;0;761;0
WireConnection;1066;0;929;0
WireConnection;1064;0;1003;0
WireConnection;1063;0;998;0
WireConnection;744;0;753;0
WireConnection;744;1;747;0
WireConnection;1117;0;1116;0
WireConnection;1027;0;1026;0
WireConnection;741;0;753;1
WireConnection;741;1;747;0
WireConnection;1061;0;988;0
WireConnection;763;0;786;0
WireConnection;764;0;763;1
WireConnection;764;1;762;0
WireConnection;1029;0;1027;0
WireConnection;1067;0;1066;0
WireConnection;1067;1;1061;0
WireConnection;1067;2;1062;0
WireConnection;1067;3;1063;0
WireConnection;1067;4;1064;0
WireConnection;1067;5;1065;0
WireConnection;1030;0;1028;0
WireConnection;1216;0;23;1
WireConnection;366;0;1182;1
WireConnection;756;0;744;0
WireConnection;756;1;753;1
WireConnection;1160;0;1117;0
WireConnection;1162;0;1152;0
WireConnection;748;0;753;0
WireConnection;748;1;741;0
WireConnection;765;0;763;0
WireConnection;765;1;762;0
WireConnection;750;1;748;0
WireConnection;767;0;765;0
WireConnection;767;1;763;1
WireConnection;780;1;787;0
WireConnection;657;0;5;0
WireConnection;766;0;763;0
WireConnection;766;1;764;0
WireConnection;742;1;756;0
WireConnection;1245;0;1244;1
WireConnection;1245;1;1244;2
WireConnection;1032;0;1030;1
WireConnection;1032;1;1029;0
WireConnection;1336;0;222;0
WireConnection;599;0;71;0
WireConnection;658;0;1185;0
WireConnection;1031;0;1030;0
WireConnection;1031;1;1029;0
WireConnection;743;1;785;0
WireConnection;877;0;728;0
WireConnection;1068;0;1067;0
WireConnection;367;0;1182;2
WireConnection;1167;0;1160;0
WireConnection;1127;0;1162;0
WireConnection;1298;0;1244;3
WireConnection;1298;1;1244;4
WireConnection;376;0;1183;2
WireConnection;770;1;786;0
WireConnection;426;0;1185;4
WireConnection;1337;0;231;0
WireConnection;733;0;369;0
WireConnection;733;1;1336;0
WireConnection;781;1;788;0
WireConnection;1308;0;780;1
WireConnection;768;1;766;0
WireConnection;1034;0;1030;0
WireConnection;1034;1;1032;0
WireConnection;179;0;1183;1
WireConnection;179;1;1183;2
WireConnection;179;2;1183;3
WireConnection;121;0;658;0
WireConnection;121;1;657;0
WireConnection;121;2;599;0
WireConnection;1214;0;1212;0
WireConnection;1214;1;1211;0
WireConnection;758;0;750;2
WireConnection;758;1;743;2
WireConnection;754;0;742;2
WireConnection;754;1;743;2
WireConnection;1069;0;1068;0
WireConnection;1069;1;1127;0
WireConnection;1069;2;1167;0
WireConnection;1246;0;1245;0
WireConnection;1246;1;1298;0
WireConnection;769;1;767;0
WireConnection;1200;0;23;4
WireConnection;1273;0;1222;0
WireConnection;1033;0;1031;0
WireConnection;1033;1;1030;1
WireConnection;734;0;370;0
WireConnection;734;1;1337;0
WireConnection;377;0;1183;3
WireConnection;534;1;15;1
WireConnection;534;2;533;0
WireConnection;1242;1;1246;0
WireConnection;828;1;15;1
WireConnection;828;2;829;0
WireConnection;1309;0;781;1
WireConnection;749;0;754;0
WireConnection;749;1;733;0
WireConnection;922;0;1069;0
WireConnection;757;0;758;0
WireConnection;757;1;733;0
WireConnection;180;0;179;0
WireConnection;772;0;769;2
WireConnection;772;1;770;2
WireConnection;817;0;658;0
WireConnection;375;0;1183;1
WireConnection;1037;1;1033;0
WireConnection;1036;1;1034;0
WireConnection;1035;1;1028;0
WireConnection;1276;0;1275;0
WireConnection;1283;0;1223;4
WireConnection;771;0;768;2
WireConnection;771;1;770;2
WireConnection;1218;0;1209;0
WireConnection;1218;1;1219;0
WireConnection;1215;0;121;0
WireConnection;1215;1;1213;0
WireConnection;1215;2;1214;0
WireConnection;815;0;828;0
WireConnection;815;1;343;3
WireConnection;1282;0;1283;0
WireConnection;752;2;757;0
WireConnection;1313;0;1310;0
WireConnection;1313;1;1311;0
WireConnection;1038;0;1036;3
WireConnection;1038;1;1035;3
WireConnection;1312;0;1315;0
WireConnection;810;0;189;0
WireConnection;810;1;534;0
WireConnection;1039;0;1037;3
WireConnection;1039;1;1035;3
WireConnection;1264;0;1263;0
WireConnection;1243;0;1242;3
WireConnection;1281;0;1223;0
WireConnection;1207;0;1197;0
WireConnection;1207;1;1208;0
WireConnection;1207;2;1218;0
WireConnection;745;2;749;0
WireConnection;773;0;772;0
WireConnection;773;1;734;0
WireConnection;378;0;180;0
WireConnection;1226;0;1215;0
WireConnection;1226;1;1274;0
WireConnection;820;0;87;0
WireConnection;820;1;825;0
WireConnection;1259;0;1250;0
WireConnection;774;0;771;0
WireConnection;774;1;734;0
WireConnection;1260;0;835;0
WireConnection;1318;0;1321;0
WireConnection;1284;0;1226;0
WireConnection;1284;1;1277;0
WireConnection;1195;0;1207;0
WireConnection;1195;1;1194;0
WireConnection;1319;0;1316;0
WireConnection;1319;1;1317;0
WireConnection;645;1;15;1
WireConnection;645;2;646;0
WireConnection;1314;0;1312;0
WireConnection;1314;1;1313;0
WireConnection;405;0;23;3
WireConnection;775;2;774;0
WireConnection;1288;0;1287;0
WireConnection;1221;0;43;0
WireConnection;1295;0;1294;0
WireConnection;1280;0;1281;0
WireConnection;1280;1;1282;0
WireConnection;776;2;773;0
WireConnection;751;0;745;0
WireConnection;751;1;752;0
WireConnection;574;0;568;0
WireConnection;574;1;820;0
WireConnection;1041;0;1039;0
WireConnection;1041;1;1040;0
WireConnection;1042;0;1038;0
WireConnection;1042;1;1040;0
WireConnection;808;0;815;0
WireConnection;808;1;810;0
WireConnection;808;2;809;0
WireConnection;822;0;87;0
WireConnection;822;1;823;0
WireConnection;827;1;15;1
WireConnection;827;2;830;0
WireConnection;807;0;645;0
WireConnection;807;1;653;0
WireConnection;755;0;751;0
WireConnection;1325;0;1323;0
WireConnection;1325;1;1324;0
WireConnection;777;0;776;0
WireConnection;777;1;775;0
WireConnection;1329;0;1322;0
WireConnection;821;0;87;0
WireConnection;821;1;824;0
WireConnection;1306;0;808;0
WireConnection;1306;1;1314;0
WireConnection;1320;0;1318;0
WireConnection;1320;1;1319;0
WireConnection;816;0;827;0
WireConnection;816;1;343;1
WireConnection;1044;2;1042;0
WireConnection;588;0;574;0
WireConnection;1193;0;1207;0
WireConnection;1193;2;1195;0
WireConnection;569;0;37;0
WireConnection;1258;0;15;4
WireConnection;593;0;590;0
WireConnection;593;1;822;0
WireConnection;1293;0;1284;0
WireConnection;1293;1;1295;0
WireConnection;1293;2;1294;4
WireConnection;1043;2;1041;0
WireConnection;1168;0;1069;0
WireConnection;1267;0;1266;0
WireConnection;1267;1;1268;0
WireConnection;795;1;780;0
WireConnection;795;0;796;0
WireConnection;1285;0;1272;0
WireConnection;1285;1;1286;0
WireConnection;705;0;1221;0
WireConnection;1278;0;1280;0
WireConnection;1203;0;1197;0
WireConnection;1265;0;44;0
WireConnection;1265;1;1267;0
WireConnection;1332;0;1326;0
WireConnection;1332;1;1328;0
WireConnection;784;0;54;0
WireConnection;784;1;442;0
WireConnection;708;0;1193;0
WireConnection;708;1;406;0
WireConnection;708;2;705;0
WireConnection;1331;0;1327;0
WireConnection;1289;0;1261;0
WireConnection;1289;1;1290;0
WireConnection;1257;0;1258;0
WireConnection;1236;0;1262;0
WireConnection;1236;1;1234;0
WireConnection;1297;0;1227;4
WireConnection;1307;0;1306;0
WireConnection;1307;1;1320;0
WireConnection;1217;0;705;0
WireConnection;782;0;795;0
WireConnection;1330;0;1329;0
WireConnection;1330;1;1325;0
WireConnection;778;0;777;0
WireConnection;1205;0;1203;0
WireConnection;594;0;593;0
WireConnection;836;0;755;0
WireConnection;1169;0;1168;0
WireConnection;806;0;816;0
WireConnection;806;1;807;0
WireConnection;806;2;809;0
WireConnection;602;0;604;0
WireConnection;602;1;821;0
WireConnection;1271;0;1226;0
WireConnection;1271;1;1293;0
WireConnection;1271;2;1285;0
WireConnection;797;1;781;0
WireConnection;797;0;798;0
WireConnection;1045;0;1043;0
WireConnection;1045;1;1044;0
WireConnection;573;0;569;0
WireConnection;573;1;87;0
WireConnection;1233;0;1307;0
WireConnection;1233;1;1257;0
WireConnection;1233;2;1236;0
WireConnection;1046;0;1045;0
WireConnection;1255;0;1289;0
WireConnection;1255;1;1234;0
WireConnection;1179;5;1265;0
WireConnection;457;1;782;0
WireConnection;457;2;784;0
WireConnection;932;0;1169;0
WireConnection;783;0;797;0
WireConnection;1204;0;1205;0
WireConnection;1334;0;806;0
WireConnection;1334;1;1330;0
WireConnection;837;0;778;0
WireConnection;1291;0;1292;0
WireConnection;1291;1;1251;0
WireConnection;1291;2;1234;0
WireConnection;564;1;573;0
WireConnection;564;0;611;0
WireConnection;701;0;1193;0
WireConnection;701;1;708;0
WireConnection;701;2;1217;0
WireConnection;393;0;15;2
WireConnection;552;0;55;0
WireConnection;552;1;441;0
WireConnection;1229;0;1227;4
WireConnection;1228;0;1297;0
WireConnection;1228;2;1271;0
WireConnection;1228;3;1279;0
WireConnection;603;0;602;0
WireConnection;1333;0;1331;0
WireConnection;1333;1;1332;0
WireConnection;1047;0;1046;0
WireConnection;790;0;457;0
WireConnection;1252;0;1233;0
WireConnection;1252;1;1255;0
WireConnection;1252;2;1291;0
WireConnection;1335;0;1334;0
WireConnection;1335;1;1333;0
WireConnection;1230;0;1271;0
WireConnection;1230;1;1228;0
WireConnection;1230;2;1229;0
WireConnection;1050;1;1048;0
WireConnection;1202;0;701;0
WireConnection;1202;1;1204;0
WireConnection;570;0;393;0
WireConnection;609;1;564;0
WireConnection;609;0;612;0
WireConnection;519;1;1178;2
WireConnection;519;2;70;0
WireConnection;462;1;783;0
WireConnection;462;2;552;0
WireConnection;252;0;1179;0
WireConnection;252;1;838;0
WireConnection;1232;0;1215;0
WireConnection;1232;1;1230;0
WireConnection;1232;2;1231;0
WireConnection;789;0;519;0
WireConnection;789;1;790;0
WireConnection;791;0;462;0
WireConnection;1173;0;1335;0
WireConnection;1173;2;1174;0
WireConnection;610;1;609;0
WireConnection;610;0;613;0
WireConnection;1171;0;1054;0
WireConnection;1171;1;1172;0
WireConnection;1051;0;1050;3
WireConnection;1051;1;1049;0
WireConnection;1220;0;1202;0
WireConnection;374;0;252;0
WireConnection;374;1;839;0
WireConnection;394;0;570;0
WireConnection;1055;0;1056;0
WireConnection;1129;0;1252;0
WireConnection;1129;1;1131;0
WireConnection;1129;2;1130;0
WireConnection;487;0;1220;0
WireConnection;1338;0;1173;0
WireConnection;1339;0;1129;0
WireConnection;792;0;789;0
WireConnection;792;1;791;0
WireConnection;88;0;394;0
WireConnection;88;1;610;0
WireConnection;1057;0;1232;0
WireConnection;1057;1;1055;0
WireConnection;1057;2;1171;0
WireConnection;1052;0;374;0
WireConnection;1052;1;1053;0
WireConnection;1052;2;1051;0
WireConnection;501;0;1057;0
WireConnection;636;0;1338;0
WireConnection;584;0;1339;0
WireConnection;553;0;792;0
WireConnection;496;0;1052;0
WireConnection;580;0;88;0
WireConnection;871;0;374;0
WireConnection;871;1;872;0
WireConnection;871;2;876;0
WireConnection;850;0;848;0
WireConnection;849;0;844;0
WireConnection;860;0;858;2
WireConnection;860;1;859;2
WireConnection;851;0;849;0
WireConnection;851;1;850;0
WireConnection;865;2;863;0
WireConnection;867;0;866;0
WireConnection;867;1;865;0
WireConnection;866;2;864;0
WireConnection;858;1;853;0
WireConnection;852;0;849;1
WireConnection;852;1;850;0
WireConnection;856;1;854;0
WireConnection;853;0;851;0
WireConnection;853;1;849;1
WireConnection;863;0;862;0
WireConnection;864;0;860;0
WireConnection;859;1;844;0
WireConnection;854;0;849;0
WireConnection;854;1;852;0
WireConnection;804;0;491;0
WireConnection;868;0;867;0
WireConnection;862;0;856;2
WireConnection;862;1;859;2
WireConnection;869;0;868;0
WireConnection;0;0;515;0
WireConnection;0;1;499;0
WireConnection;0;2;581;0
WireConnection;0;3;635;0
WireConnection;0;4;586;0
WireConnection;0;5;554;0
WireConnection;0;10;804;0
ASEEND*/
//CHKSM=CEB829125650C3FC05DD0EC59A041D4F7DDA1852
