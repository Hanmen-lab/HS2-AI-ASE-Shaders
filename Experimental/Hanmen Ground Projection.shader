// Unity built-in shader source. Copyright (c) 2016 Unity Technologies. MIT license (see license.txt)

Shader "Hanmen/Skybox Ground Projection" {
	Properties{
		_Tint("Tint Color", Color) = (.5, .5, .5, .5)
		[Gamma] _Exposure("Exposure", Range(0, 8)) = 1.0
		_Rotation("Rotation", Range(0, 360)) = 0
		[NoScaleOffset] _Tex("Cubemap   (HDR)", Cube) = "grey" {}
		_Offset("Offset", Vector) = (0,0,0,0)
		_Size("Size", Range(1 , 100)) = 20
	}

		SubShader{
			Tags { "Queue" = "Background" "RenderType" = "Background" "PreviewType" = "Skybox" }
			Cull Off ZWrite Off

			Pass {

				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma target 2.0

				#include "UnityCG.cginc"

				samplerCUBE _Tex;
				half4 _Tex_HDR;
				half4 _Tint;
				half _Exposure;
				half _Size;
				float _Rotation;
				half4 _Offset;

				float3 RotateAroundYInDegrees(float3 vertex, float degrees)
				{
					float alpha = degrees * UNITY_PI / 180.0;
					float sina, cosa;
					sincos(alpha, sina, cosa);
					float2x2 m = float2x2(cosa, -sina, sina, cosa);
					return float3(mul(m, vertex.xz), vertex.y).xzy;
				}

				struct appdata_t {
					float4 vertex : POSITION;
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f {
					float4 vertex : SV_POSITION;
					float3 texcoord : TEXCOORD0;
					UNITY_VERTEX_OUTPUT_STEREO
				};

				v2f vert(appdata_t v)
				{
					v2f o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
					float3 rotated = RotateAroundYInDegrees(v.vertex, _Rotation);
					o.vertex = UnityObjectToClipPos(rotated);
					o.texcoord = v.vertex.xyz;
					return o;
				}

				fixed4 frag(v2f i) : SV_Target
				{
					

					float3 appendResult35 = (float3(float4(unity_CameraToWorld[0][3], unity_CameraToWorld[1][3], unity_CameraToWorld[2][3], unity_CameraToWorld[3][3]).x, float4(unity_CameraToWorld[0][3], unity_CameraToWorld[1][3], unity_CameraToWorld[2][3], unity_CameraToWorld[3][3]).y, float4(unity_CameraToWorld[0][3], unity_CameraToWorld[1][3], unity_CameraToWorld[2][3], unity_CameraToWorld[3][3]).z));
					float3 temp_output_37_0 = (appendResult35 - _Offset);
					float3 normalizeResult36 = normalize(float3(0, 1, 0));
					float dotResult40 = dot(temp_output_37_0, normalizeResult36);
					float dotResult41 = dot(i.texcoord, normalizeResult36);
					float3 normalizeResult55 = normalize((((i.texcoord*(dotResult40 / (dotResult41 * -1.0)) + 0.0) + temp_output_37_0) - (normalizeResult36*_Size + 0.0)));
					float3 lerpResult56 = lerp(normalizeResult55, i.texcoord, (dotResult41 > 0.0 ? 1.0 : 0.0));

					half4 tex = texCUBE(_Tex, (lerpResult56 - float3(0, 0, 0)));

				//	float3 decodeLightMap65 = DecodeLightmap(texCUBE(_Skybox, (lerpResult56 - float3(0, 0, 0))));

					half3 c = DecodeHDR(tex, _Tex_HDR);
					c = c * _Tint.rgb * unity_ColorSpaceDouble.rgb;
					c *= _Exposure;
					return half4(c, 1);
				}
				ENDCG
			}
	}


		Fallback Off

}
