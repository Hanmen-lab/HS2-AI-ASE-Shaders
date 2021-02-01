// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hanmen/Next-Gen Tongue"
{
	Properties
	{
		[HideInInspector]SSS_shader("", Float) = 1
		[NoScaleOffset]_MainTex("MainTex", 2D) = "white" {}
		[NoScaleOffset][Normal]_BumpMap("BumpMap", 2D) = "bump" {}
		[NoScaleOffset]_SubsurfaceAlbedo("SubsurfaceAlbedo", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,0)
		[Header (Specularity)]_SpecColor("SpecColor", Color) = (0.2,0.2,0.2,0)
		_OcclusionColor("OcclusionColor", Color) = (0,0,0,0)
		[NoScaleOffset]_NailMask("NailMask", 2D) = "white" {}
		_TransmissionColor("TransmissionColor", Color) = (0.2,0.2,0.2,0)
		[Header (Separate Profile)]_ProfileColor("Profile Color", Color) = (0,0,0,0)
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_AlbedoTile("AlbedoTile", Range( 1 , 20)) = 1
		[NoScaleOffset]_WeatheringMap("WeatheringMap", 2D) = "white" {}
		_WeatheringSpecular1("WeatheringSpecular", Color) = (0,0,0,0)
		_BumpScale("BumpScale", Range( 0 , 1)) = 1
		_Gloss("Gloss", Range( 0 , 1)) = 1
		[Header (Ambient Occlusion)]_OcclusionStrength("OcclusionStrength", Range( 0 , 1)) = 0
		_AlbedoOpacity("AlbedoOpacity", Range( 0 , 1)) = 1
		_WeatheringAlbedo("WeatheringAlbedo", Color) = (0,0,0,0)
		_SubsurfaceAlbedoOpacity("SubsurfaceAlbedoOpacity", Range( 0 , 1)) = 0
		_SubsurfaceAlbedoSaturation("SubsurfaceAlbedoSaturation", Range( 0 , 1)) = 1
		[Header (Transmission)]_TransBase("TransBase", Range( 0 , 5)) = 1
		_TransDynamic("TransDynamic", Range( 0 , 1)) = 1
		_TransRange("TransRange", Range( 0 , 5)) = 0.5
		_TransOcclusion("TransOcclusion", Range( 0 , 1)) = 1
		_TransShadows("TransShadows", Range( 0 , 1)) = 1
		[HideInInspector]_CavityStrength("CavityStrength", Range( 0 , 1)) = 1
		[HideInInspector][Toggle(SUBSURFACE_PARALLAX)]SUBSURFACE_PARALLAX("SUBSURFACE_PARALLAX", Float) = 0
		[NoScaleOffset]_MetallicGlossMap("MetallicGlossMap", 2D) = "white" {}
		[HideInInspector]_SubSurfaceParallax("SubSurface Parallax", Range( -0.002 , 0)) = -0.000363
		[HideInInspector]_FresnelIntensity("FresnelIntensity", Range( 0 , 1)) = 1
		[NoScaleOffset]_OcclusionMap("OcclusionMap", 2D) = "white" {}
		_WeatheringBumpPower("WeatheringBumpPower", Range( 0 , 9)) = 0
		[Header (Juice Texture)]_WeatheringAll("WeatheringAll", Range( 0 , 1)) = 0
		_WeatheringRange6("WeatheringRange6", Range( 0 , 1)) = 0
		_WeatheringGloss("WeatheringGloss", Range( 0 , 2)) = 0.8
		_WeatheringBump("WeatheringBump", Range( 0 , 2)) = 0.4
		_WeatheringBump1("WeatheringBump1", Range( 0 , 10)) = 0.4
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "AlphaTest-40" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile_instancing
		#include "Assets/SSS/Resources/SSS_Common.hlsl"
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
			float4 screenPos;
			float3 worldNormal;
			INTERNAL_DATA
		};

		uniform float _Cutoff;
		uniform sampler2D _MetallicGlossMap;
		uniform sampler2D _WeatheringMap;
		uniform float4 _WeatheringMap_ST;
		uniform float _WeatheringBump;
		uniform float _WeatheringBump1;
		uniform float _WeatheringBumpPower;
		uniform float _WeatheringAll;
		uniform float _WeatheringRange6;
		uniform float4 _WeatheringAlbedo;
		uniform float _Gloss;
		uniform float4 _WeatheringSpecular1;
		uniform float _WeatheringGloss;


		float3 LightingPass332( float3 Albedo , float4 screenPos )
		{
			#if !defined(SCENE_VIEW)
			            half3 LightingPass = 0;
			            float4 coords = 0;
						coords = UNITY_PROJ_COORD(screenPos);
			            coords.w += .0001;
						float2 screenUV = coords.xy / coords.w;
			            
			               #ifdef UNITY_SINGLE_PASS_STEREO
							float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex];
						    screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy;
			               #endif
			            if (unity_StereoEyeIndex == 0)
			                LightingPass = tex2D(LightingTexBlurred, screenUV).rgb;
			            else
			                LightingPass = tex2D(LightingTexBlurredR, screenUV).rgb;
			            return Albedo * LightingPass;
			#else
			return 0;
			            #endif
		}


		float3 ShadeSH9326( float3 worldNormal )
		{
			return ShadeSH9(float4(worldNormal,1));
		}


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_BumpMap117 = i.uv_texcoord;
			float2 uv0_WeatheringMap = i.uv_texcoord * _WeatheringMap_ST.xy + _WeatheringMap_ST.zw;
			float2 break651 = uv0_WeatheringMap;
			float temp_output_650_0 = ( pow( _WeatheringBump , _WeatheringBump1 ) * 0.1 );
			float2 appendResult655 = (float2(( break651.x + temp_output_650_0 ) , break651.y));
			float4 tex2DNode656 = tex2D( _WeatheringMap, uv0_WeatheringMap );
			float3 appendResult665 = (float3(1.0 , 0.0 , ( ( tex2D( _WeatheringMap, appendResult655 ).b - tex2DNode656.b ) * _WeatheringBumpPower )));
			float2 appendResult654 = (float2(break651.x , ( break651.y + temp_output_650_0 )));
			float3 appendResult664 = (float3(0.0 , 1.0 , ( ( tex2D( _WeatheringMap, appendResult654 ).b - tex2DNode656.b ) * _WeatheringBumpPower )));
			float3 normalizeResult667 = normalize( cross( appendResult665 , appendResult664 ) );
			float3 WeatheringBump668 = normalizeResult667;
			float2 uv_WeatheringMap711 = i.uv_texcoord;
			float temp_output_673_0 = max( _WeatheringAll , _WeatheringRange6 );
			float WeatheringBumpPower678 = ceil( temp_output_673_0 );
			float3 lerpResult713 = lerp( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap117 ), _BumpScale ) , WeatheringBump668 , ( tex2D( _WeatheringMap, uv_WeatheringMap711 ).b * WeatheringBumpPower678 ));
			float3 NormalMix376 = lerpResult713;
			o.Normal = NormalMix376;
			float3 temp_cast_0 = (0.0).xxx;
			o.Albedo = temp_cast_0;
			float3 temp_cast_1 = (1.0).xxx;
			float2 uv_MainTex85 = i.uv_texcoord;
			float2 uv_WeatheringMap680 = i.uv_texcoord;
			float4 tex2DNode680 = tex2D( _WeatheringMap, uv_WeatheringMap680 );
			float temp_output_682_0 = (( temp_output_673_0 >= 0.51 && temp_output_673_0 <= 1.0 ) ? 0.0 :  0.05 );
			float clampResult684 = clamp( ( ( tex2DNode680.g * WeatheringBumpPower678 ) - temp_output_682_0 ) , 0.0 , 1.0 );
			float WeatheringAlpha2685 = clampResult684;
			float3 lerpResult718 = lerp( ( (tex2D( _MainTex, uv_MainTex85 )).rgb * (_Color).rgb ) , (_WeatheringAlbedo).rgb , WeatheringAlpha2685);
			float3 albedo79 = lerpResult718;
			float3 lerpResult340 = lerp( temp_cast_1 , (albedo79).xyz , _AlbedoOpacity);
			float grayscale329 = Luminance(lerpResult340);
			float3 temp_cast_2 = (( grayscale329 * 6.0 )).xxx;
			float3 lerpResult344 = lerp( temp_cast_2 , lerpResult340 , _SubsurfaceAlbedoSaturation);
			float3 albedo_final354 = lerpResult344;
			float3 Albedo332 = albedo_final354;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 screenPos332 = ase_screenPos;
			float3 localLightingPass332 = LightingPass332( Albedo332 , screenPos332 );
			float3 lighting_pass336 = localLightingPass332;
			float2 uv_NailMask321 = i.uv_texcoord;
			float2 uv_OcclusionMap645 = i.uv_texcoord;
			float lerpResult219 = lerp( 1.0 , tex2D( _OcclusionMap, uv_OcclusionMap645 ).r , _OcclusionStrength);
			float occlusion_sample217 = lerpResult219;
			float lerpResult317 = lerp( 1.0 , occlusion_sample217 , _TransOcclusion);
			float3 worldNormal326 = normalize( (WorldNormalVector( i , NormalMix376 )) );
			float3 localShadeSH9326 = ShadeSH9326( worldNormal326 );
			float3 transmission_deferred335 = ( ( tex2D( _NailMask, uv_NailMask321 ).a * lerpResult317 * (_TransmissionColor).rgb ) * localShadeSH9326 * _TransBase );
			float3 emission_final352 = ( lighting_pass336 + transmission_deferred335 );
			o.Emission = emission_final352;
			float3 break549 = (_SpecColor).rgb;
			float4 appendResult534 = (float4(break549.x , break549.y , break549.z , _Gloss));
			float WeatheringPower694 = temp_output_673_0;
			float clampResult692 = clamp( ( ( ( tex2DNode680.g * WeatheringPower694 ) - temp_output_682_0 ) * 10.0 ) , 0.0 , 1.0 );
			float WeatheringAlpha693 = clampResult692;
			float3 lerpResult703 = lerp( (appendResult534).rgb , (_WeatheringSpecular1).rgb , WeatheringAlpha693);
			float3 Specularity1541 = lerpResult703;
			o.Specular = Specularity1541;
			float2 uv_MetallicGlossMap273 = i.uv_texcoord;
			float3 temp_cast_3 = (_WeatheringGloss).xxx;
			float3 lerpResult707 = lerp( ( (appendResult534).a * (tex2D( _MetallicGlossMap, uv_MetallicGlossMap273 )).rgb ) , temp_cast_3 , WeatheringAlpha693);
			float3 Smoothness542 = lerpResult707;
			o.Smoothness = Smoothness542.x;
			float occlusion220 = lerpResult219;
			o.Occlusion = occlusion220;
			o.Alpha = 1;
		}

		ENDCG
		CGPROGRAM
		#pragma only_renderers d3d11_9x d3d11 
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows nodynlightmap 

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
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 screenPos : TEXCOORD2;
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
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.screenPos = ComputeScreenPos( o.pos );
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
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.screenPos = IN.screenPos;
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18301
131;1;1782;1010;12.12897;5097.076;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;670;-1501.925,-4449.932;Inherit;False;1869.881;1076.625;Comment;23;695;694;693;692;691;690;689;687;685;684;683;682;681;680;679;678;673;672;671;698;699;697;696;Weathering;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;671;-1437.797,-4221.091;Inherit;False;Property;_WeatheringAll;WeatheringAll;33;0;Create;True;0;0;True;1;Header (Juice Texture);False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;672;-1433.095,-4125.274;Inherit;False;Property;_WeatheringRange6;WeatheringRange6;34;0;Create;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;646;518.5902,-5367.167;Inherit;False;2647.625;920.0429;Comment;23;668;667;666;665;664;663;662;661;660;659;658;657;656;655;654;653;652;651;650;649;647;714;719;Weathering to Normal;0.8344216,0.6179246,1,1;0;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;673;-1128.65,-4185.605;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CeilOpNode;699;-728.4315,-4182.296;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;719;554.871,-4591.076;Inherit;False;Property;_WeatheringBump1;WeatheringBump1;37;0;Create;True;0;0;True;0;False;0.4;3.341177;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;647;558.8793,-4710.386;Inherit;False;Property;_WeatheringBump;WeatheringBump;36;0;Create;True;0;0;True;0;False;0.4;0.4;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;649;872.6573,-4609.593;Inherit;False;False;2;0;FLOAT;0.43;False;1;FLOAT;3.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;714;647.8604,-5281.802;Inherit;False;0;669;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;678;71.80894,-4185.324;Inherit;False;WeatheringBumpPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;650;1054.445,-4599.966;Inherit;False;0.1;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;680;-1443.698,-4022.503;Inherit;True;Property;_TextureSample16;Texture Sample 16;12;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;669;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;698;-986.4727,-3621.283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;679;-1469.503,-3689.976;Inherit;False;678;WeatheringBumpPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;651;959.1172,-4713.146;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;653;1263.926,-4570.811;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;681;-671.3042,-3706.876;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCCompareWithRange;682;-925.9658,-3593.556;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0.51;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;43;516.2476,-4268.89;Inherit;False;1690.91;899.6671;Comment;8;235;79;78;48;718;715;716;717;Albedo Mix;0.3113208,0.3113208,0.3113208,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;652;1274.469,-4715.965;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;48;644.403,-4180.849;Inherit;False;660.1913;481.1368;MAIN;4;412;68;409;85;MainTex;1,1,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;655;1427.274,-4718.525;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;683;-497.4135,-3706.908;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;654;1407.058,-4592.429;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;656;1598.604,-5310.344;Inherit;True;Property;_TextureSample29;Texture Sample 29;12;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;669;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;68;691.4412,-3892.65;Inherit;False;Property;_Color;Color;4;0;Fetch;True;0;0;True;0;False;1,1,1,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;85;679.616,-4105.695;Inherit;True;Property;_TextureSample2;Texture Sample 2;1;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;42;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;657;1617.032,-4790.61;Inherit;True;Property;_TextureSample22;Texture Sample 22;12;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;669;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;684;-186.462,-3708.047;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;658;1606.679,-5030.104;Inherit;True;Property;_TextureSample23;Texture Sample 23;12;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;669;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;660;1943.518,-4951.337;Inherit;False;Property;_WeatheringBumpPower;WeatheringBumpPower;32;0;Create;True;0;0;True;0;False;0;0;0;9;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;412;1059.556,-3893.085;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;715;688.2112,-3652.469;Inherit;False;Property;_WeatheringAlbedo;WeatheringAlbedo;18;0;Create;True;0;0;True;0;False;0,0,0,0;0.643,0.65,0.678,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;685;75.75211,-3713.804;Inherit;False;WeatheringAlpha2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;661;1967.784,-4843.588;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;659;1973.964,-5076.422;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;409;1057.515,-4103.324;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;717;1069.669,-3651.626;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;716;1035.875,-3506.32;Inherit;False;685;WeatheringAlpha2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;78;1425.217,-4025.66;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;663;2236.815,-5048.928;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;662;2239.421,-4840.103;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;718;1678.266,-4023.886;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0.6,0.65,0.65;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;308;-578.7418,-1183.191;Inherit;False;3481.855;1913.182;Comment;7;355;356;338;319;315;309;350;SSSSS by David Miranda;0.7064003,1,0.6462264,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;665;2419.31,-5082.412;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;696;-983.4282,-4335.084;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;664;2446.224,-4853.64;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;666;2580.472,-4980.375;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;315;-485.2629,-1078.629;Inherit;False;1950.029;618.0199;Albedo Scene View;13;354;344;340;339;334;333;331;329;327;316;358;527;526;;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;697;-921.2335,-4365.149;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;87;2368.795,-4236.143;Inherit;False;1480.423;847.7101;Comment;7;376;713;709;711;710;712;107;Normal Mix;0.7484773,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;79;1936.804,-4029.607;Inherit;True;albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;107;2422.639,-4165.625;Inherit;False;754.3678;255.0435;Comment;2;110;117;Normal Map1;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;316;-439.7619,-1013.163;Inherit;True;79;albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;667;2752.148,-4977.83;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;694;83.41534,-4395.717;Inherit;False;WeatheringPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;711;2817.22,-3769.89;Inherit;True;Property;_TextureSample18;Texture Sample 17;12;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;669;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;215;519.3502,-3137.705;Inherit;False;1155.898;568.112;Comment;6;221;220;219;218;217;645;Ambient Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;333;-427.6799,-761.6362;Inherit;False;Property;_AlbedoOpacity;AlbedoOpacity;17;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;709;2837.423,-3540.543;Inherit;False;678;WeatheringBumpPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;110;2475.954,-4070.314;Inherit;False;Property;_BumpScale;BumpScale;14;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;327;-137.7297,-1013.109;Inherit;False;True;True;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;668;2910.756,-4980.414;Inherit;False;WeatheringBump;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;331;-118.55,-858.3862;Inherit;False;Constant;_Float22;Float 22;39;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;695;-1460.734,-3785.57;Inherit;False;694;WeatheringPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;645;571.5016,-3083.857;Inherit;True;Property;_TextureSample5;Texture Sample 5;31;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;644;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;712;2870.989,-3868.636;Inherit;False;668;WeatheringBump;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;710;3160.908,-3560.578;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;117;2822.603,-4117.086;Inherit;True;Property;_BumpMap7777;BumpMap7777;2;0;Fetch;False;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;129;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;687;-959.9547,-3781.418;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;340;142.909,-839.4392;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;218;556.915,-2870.339;Inherit;False;Property;_OcclusionStrength;OcclusionStrength;16;0;Fetch;True;0;0;True;2;Header (Ambient Occlusion);;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;713;3340.189,-4027.781;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;689;-725.9373,-3971.384;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;219;1050.261,-3078.517;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-437.9358,-565.3163;Inherit;False;Property;_SubsurfaceAlbedoSaturation;SubsurfaceAlbedoSaturation;20;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;329;338.108,-992.4733;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;530;490.0764,-2436.652;Inherit;False;2428.656;1123.914;Comment;21;708;707;706;703;705;704;701;702;700;273;542;541;538;537;539;643;534;549;531;546;299;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;690;-494.5854,-3970.063;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;527;629.3562,-737.3123;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;3607.743,-4033.638;Inherit;False;NormalMix;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;309;-476.3879,-352.5902;Inherit;False;1693.552;1024.997;BASE_TRANSMISSION_DEFERRED;17;370;369;368;335;328;326;325;324;321;320;318;317;314;313;312;311;310;Transmission;1,1,1,1;0;0
Node;AmplifyShaderEditor.WireNode;526;623.9452,-848.2454;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;217;1412.062,-3083.562;Inherit;False;occlusion_sample;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;339;667.8782,-990.1151;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;6;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;312;-394.8947,-88.56422;Inherit;False;Constant;_Float7;Float 7;39;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;299;572.9938,-2229.565;Inherit;False;Property;_SpecColor;SpecColor;5;0;Fetch;False;0;0;True;1;Header (Specularity);False;0.2,0.2,0.2,0;0.1999995,0.1999995,0.1999995,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;344;994.9402,-993.3612;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;691;-315.3849,-3970.715;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;314;-393.6638,105.6417;Inherit;False;Property;_TransOcclusion;TransOcclusion;24;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;311;-369.6731,206.8678;Inherit;False;Property;_TransmissionColor;TransmissionColor;8;0;Fetch;False;0;0;True;0;False;0.2,0.2,0.2,0;0.1999995,0.1999995,0.1999995,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;313;-355.1867,393.2087;Inherit;True;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;310;-397.03,15.40771;Inherit;False;217;occlusion_sample;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;318;-66.78095,380.2727;Inherit;True;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;319;1499.621,-1072.589;Inherit;False;783.1226;440.5972;Lighting Pass to Emission;4;336;332;323;322;;1,1,1,1;0;0
Node;AmplifyShaderEditor.ComponentMaskNode;546;962.7959,-2231.219;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;321;-407.177,-303.9734;Inherit;True;Property;_TextureSample19;Texture Sample 19;7;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;82;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;320;-61.4621,208.0708;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;692;-136.5877,-3970.285;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;354;1213.818,-997.3704;Inherit;True;albedo_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;317;-30.12373,-90.7643;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;693;74.56998,-3975.212;Inherit;False;WeatheringAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;326;288.3221,92.1357;Inherit;False;return ShadeSH9(float4(worldNormal,1))@;3;False;1;True;worldNormal;FLOAT3;0,0,0;In;;Inherit;False;ShadeSH9;True;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;322;1542.594,-823.9124;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;531;523.6082,-2023.074;Inherit;False;Property;_Gloss;Gloss;15;0;Create;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;324;258.5189,-154.1873;Inherit;True;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;325;234.7902,409.3237;Inherit;False;Property;_TransBase;TransBase;21;0;Fetch;True;0;0;True;1;Header (Transmission);False;1;1;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;323;1540.898,-1031.406;Inherit;True;354;albedo_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;549;1274.242,-2226.045;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;701;1873.211,-1991.358;Inherit;False;693;WeatheringAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;328;655.9772,-155.9833;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;534;1619.83,-2086.993;Inherit;False;COLOR;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomExpressionNode;332;1814.555,-1007.611;Inherit;False;#if !defined(SCENE_VIEW)$            half3 LightingPass = 0@$            float4 coords = 0@$			coords = UNITY_PROJ_COORD(screenPos)@$            coords.w += .0001@$			float2 screenUV = coords.xy / coords.w@$            $               #ifdef UNITY_SINGLE_PASS_STEREO$				float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex]@$			    screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy@$               #endif$            if (unity_StereoEyeIndex == 0)$                LightingPass = tex2D(LightingTexBlurred, screenUV).rgb@$            else$                LightingPass = tex2D(LightingTexBlurredR, screenUV).rgb@$$            return Albedo * LightingPass@$#else$return 0@$            #endif;3;False;2;True;Albedo;FLOAT3;0,0,0;In;;Inherit;False;True;screenPos;FLOAT4;0,0,0,0;In;;Inherit;False;LightingPass;True;False;0;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;273;541.7452,-1636.504;Inherit;True;Property;_TextureSample14;Texture Sample 14;28;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;642;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;336;2050.042,-1014.553;Inherit;True;lighting_pass;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;643;929.5081,-1636.102;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;705;2321.209,-1961.859;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;338;1393.553,-402.8822;Inherit;False;1404;370;Final Emission;4;352;346;342;341;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;335;860.938,-169.2102;Inherit;True;transmission_deferred;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;539;1804.837,-1828.438;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;700;1874.699,-2174.301;Inherit;False;Property;_WeatheringSpecular1;WeatheringSpecular;13;0;Create;True;0;0;True;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;708;2071.651,-1444.275;Inherit;False;693;WeatheringAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;341;1412.552,-341.8822;Inherit;False;336;lighting_pass;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;538;1802.132,-2271.75;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;537;2043.155,-1657.143;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;702;2138.641,-2173.712;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;704;2355.244,-1990.452;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;342;1408.046,-198.4292;Inherit;False;335;transmission_deferred;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;706;2028.165,-1539.592;Inherit;False;Property;_WeatheringGloss;WeatheringGloss;35;0;Create;True;0;0;True;0;False;0.8;0.8;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;346;1866.554,-325.8822;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;703;2451.18,-2267.862;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0.35,0.35,0.35;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;707;2416.057,-1655.807;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0.83,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;356;1354.549,114.9797;Inherit;False;371.0001;461.4971;Comment;1;360;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;2666.503,-1662.513;Inherit;True;Smoothness;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;382;-221.7124,-3051.378;Inherit;False;406.1982;1654.062;Comment;7;644;42;642;129;403;82;669;Samplers;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;355;2362.519,-1046.043;Inherit;False;226;165;SSS FLAG;1;371;;1,0,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;2655.823,-2272.394;Inherit;True;Specularity1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;350;1951.855,152.5088;Inherit;False;693.5801;490.9063;Comment;5;367;366;362;359;357;NOT USED?;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;220;1427.232,-2933.292;Inherit;False;occlusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;352;2502.081,-332.7803;Inherit;True;emission_final;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;669;-143.98,-1702.799;Inherit;True;Property;_WeatheringMap;WeatheringMap;12;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;370;838.1472,300.2597;Inherit;False;Property;_TransRange;TransRange;23;0;Fetch;True;0;0;True;0;False;0.5;0.5;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;221;587.8292,-2766.58;Inherit;False;Property;_OcclusionColor;OcclusionColor;6;0;Fetch;True;0;0;True;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;357;1999.126,500.8809;Inherit;False;Property;_SubSurfaceParallax;SubSurface Parallax;29;1;[HideInInspector];Fetch;True;0;0;True;0;False;-0.000363;-0.000363;-0.002;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;359;1998.361,405.5777;Inherit;False;Property;SUBSURFACE_PARALLAX;SUBSURFACE_PARALLAX;27;1;[HideInInspector];Fetch;False;0;0;True;1;Toggle(SUBSURFACE_PARALLAX);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;644;-152.7752,-1933.171;Inherit;True;Property;_OcclusionMap;OcclusionMap;31;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;235;1894.91,-3779.569;Inherit;False;Property;_Cutoff;Cutoff;10;0;Create;True;0;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;377;3501.039,-954.5155;Inherit;False;352;emission_final;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;367;1992.858,225.9368;Inherit;False;Property;_CavityStrength;CavityStrength;26;1;[HideInInspector];Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;371;2407.417,-993.6472;Inherit;False;Property;SSS_shader;;0;1;[HideInInspector];Fetch;False;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;642;-157.1674,-2139.403;Inherit;True;Property;_MetallicGlossMap;MetallicGlossMap;28;1;[NoScaleOffset];Create;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;360;1410.988,385.6167;Inherit;False;Property;_ProfileColor;Profile Color;9;0;Fetch;True;0;0;True;1;Header (Separate Profile);False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;403;-94.47842,-2350.155;Inherit;True;Property;_SubsurfaceAlbedo;SubsurfaceAlbedo;3;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;82;-154.8193,-2572.085;Inherit;True;Property;_NailMask;NailMask;7;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;42;-159.0884,-2991.673;Inherit;True;Property;_MainTex;MainTex;1;1;[NoScaleOffset];Fetch;True;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;366;1996.087,312.2337;Inherit;False;Property;_FresnelIntensity;FresnelIntensity;30;1;[HideInInspector];Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;368;836.6771,168.8048;Inherit;False;Property;_TransDynamic;TransDynamic;22;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;129;-157.8303,-2786.548;Inherit;True;Property;_BumpMap;BumpMap;2;2;[NoScaleOffset];[Normal];Fetch;True;0;0;True;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;378;3515.116,-862.7641;Inherit;False;541;Specularity1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;369;836.7521,428.4057;Inherit;False;Property;_TransShadows;TransShadows;25;0;Fetch;True;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;362;2297.655,223.0307;Inherit;False;Property;_AlbedoTile;AlbedoTile;11;0;Fetch;True;0;0;True;0;False;1;1;1;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;379;3527.291,-753.645;Inherit;False;542;Smoothness;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;380;3531.381,-663.4171;Inherit;False;220;occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;525;3574.091,-1146.713;Inherit;False;Constant;_Float0;Float 0;59;0;Create;True;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;375;3524.531,-1051.423;Inherit;False;376;NormalMix;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-422.1819,-665.2512;Inherit;False;Property;_SubsurfaceAlbedoOpacity;SubsurfaceAlbedoOpacity;19;0;Fetch;True;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;4311.318,-1137.718;Float;False;True;-1;7;ASEMaterialInspector;0;0;StandardSpecular;Hanmen/Next-Gen Tongue;False;False;False;False;False;False;False;True;False;False;False;False;False;False;False;False;True;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;True;-40;True;Opaque;;AlphaTest;All;2;d3d11_9x;d3d11;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;32;10;10000;True;1;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;True;235;1;Include;;True;2ba580a89acd8064088f619c7025925c;Custom;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;673;0;671;0
WireConnection;673;1;672;0
WireConnection;699;0;673;0
WireConnection;649;0;647;0
WireConnection;649;1;719;0
WireConnection;678;0;699;0
WireConnection;650;0;649;0
WireConnection;698;0;673;0
WireConnection;651;0;714;0
WireConnection;653;0;651;1
WireConnection;653;1;650;0
WireConnection;681;0;680;2
WireConnection;681;1;679;0
WireConnection;682;0;698;0
WireConnection;652;0;651;0
WireConnection;652;1;650;0
WireConnection;655;0;652;0
WireConnection;655;1;651;1
WireConnection;683;0;681;0
WireConnection;683;1;682;0
WireConnection;654;0;651;0
WireConnection;654;1;653;0
WireConnection;656;1;714;0
WireConnection;657;1;654;0
WireConnection;684;0;683;0
WireConnection;658;1;655;0
WireConnection;412;0;68;0
WireConnection;685;0;684;0
WireConnection;661;0;657;3
WireConnection;661;1;656;3
WireConnection;659;0;658;3
WireConnection;659;1;656;3
WireConnection;409;0;85;0
WireConnection;717;0;715;0
WireConnection;78;0;409;0
WireConnection;78;1;412;0
WireConnection;663;0;659;0
WireConnection;663;1;660;0
WireConnection;662;0;661;0
WireConnection;662;1;660;0
WireConnection;718;0;78;0
WireConnection;718;1;717;0
WireConnection;718;2;716;0
WireConnection;665;2;663;0
WireConnection;696;0;673;0
WireConnection;664;2;662;0
WireConnection;666;0;665;0
WireConnection;666;1;664;0
WireConnection;697;0;696;0
WireConnection;79;0;718;0
WireConnection;667;0;666;0
WireConnection;694;0;697;0
WireConnection;327;0;316;0
WireConnection;668;0;667;0
WireConnection;710;0;711;3
WireConnection;710;1;709;0
WireConnection;117;5;110;0
WireConnection;687;0;695;0
WireConnection;340;0;331;0
WireConnection;340;1;327;0
WireConnection;340;2;333;0
WireConnection;713;0;117;0
WireConnection;713;1;712;0
WireConnection;713;2;710;0
WireConnection;689;0;680;2
WireConnection;689;1;687;0
WireConnection;219;1;645;1
WireConnection;219;2;218;0
WireConnection;329;0;340;0
WireConnection;690;0;689;0
WireConnection;690;1;682;0
WireConnection;527;0;334;0
WireConnection;376;0;713;0
WireConnection;526;0;340;0
WireConnection;217;0;219;0
WireConnection;339;0;329;0
WireConnection;344;0;339;0
WireConnection;344;1;526;0
WireConnection;344;2;527;0
WireConnection;691;0;690;0
WireConnection;318;0;313;0
WireConnection;546;0;299;0
WireConnection;320;0;311;0
WireConnection;692;0;691;0
WireConnection;354;0;344;0
WireConnection;317;0;312;0
WireConnection;317;1;310;0
WireConnection;317;2;314;0
WireConnection;693;0;692;0
WireConnection;326;0;318;0
WireConnection;324;0;321;4
WireConnection;324;1;317;0
WireConnection;324;2;320;0
WireConnection;549;0;546;0
WireConnection;328;0;324;0
WireConnection;328;1;326;0
WireConnection;328;2;325;0
WireConnection;534;0;549;0
WireConnection;534;1;549;1
WireConnection;534;2;549;2
WireConnection;534;3;531;0
WireConnection;332;0;323;0
WireConnection;332;1;322;0
WireConnection;336;0;332;0
WireConnection;643;0;273;0
WireConnection;705;0;701;0
WireConnection;335;0;328;0
WireConnection;539;0;534;0
WireConnection;538;0;534;0
WireConnection;537;0;539;0
WireConnection;537;1;643;0
WireConnection;702;0;700;0
WireConnection;704;0;705;0
WireConnection;346;0;341;0
WireConnection;346;1;342;0
WireConnection;703;0;538;0
WireConnection;703;1;702;0
WireConnection;703;2;704;0
WireConnection;707;0;537;0
WireConnection;707;1;706;0
WireConnection;707;2;708;0
WireConnection;542;0;707;0
WireConnection;541;0;703;0
WireConnection;220;0;219;0
WireConnection;352;0;346;0
WireConnection;0;0;525;0
WireConnection;0;1;375;0
WireConnection;0;2;377;0
WireConnection;0;3;378;0
WireConnection;0;4;379;0
WireConnection;0;5;380;0
ASEEND*/
//CHKSM=09D3A93255D0E49D1124E49AE1079CC3C30B198B