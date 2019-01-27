// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1799578,fgcg:0.2352941,fgcb:0.08131487,fgca:1,fgde:0.1,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33309,y:32611,varname:node_4013,prsc:2|emission-4797-OUT,custl-5989-OUT,clip-9342-OUT;n:type:ShaderForge.SFN_Tex2d,id:4283,x:31599,y:32365,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:_Emissive,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9534,x:32495,y:32356,varname:node_9534,prsc:2|A-4283-RGB,B-5456-RGB;n:type:ShaderForge.SFN_Color,id:5456,x:31812,y:32571,ptovrint:False,ptlb:Emissive Color,ptin:_EmissiveColor,varname:_EmissiveColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:2637,x:32415,y:32739,varname:node_2637,prsc:2|A-4283-A,B-5456-A;n:type:ShaderForge.SFN_Multiply,id:921,x:32517,y:33283,varname:node_921,prsc:2|A-2285-VFACE,B-7233-OUT;n:type:ShaderForge.SFN_Color,id:8492,x:31746,y:33339,ptovrint:False,ptlb:Custom Lighting Color,ptin:_CustomLightingColor,varname:_CustomLightingColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:5811,x:31793,y:33627,ptovrint:False,ptlb:Custom Lighting Power,ptin:_CustomLightingPower,varname:_CustomLightingPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7233,x:32159,y:33394,varname:node_7233,prsc:2|A-8492-RGB,B-5811-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:5648,x:32402,y:32958,ptovrint:False,ptlb:Custom Lighting,ptin:_CustomLighting,varname:node_5648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:5989,x:32820,y:32966,varname:node_5989,prsc:2|A-5648-OUT,B-921-OUT;n:type:ShaderForge.SFN_Multiply,id:4797,x:32847,y:32549,varname:node_4797,prsc:2|A-9534-OUT,B-947-RGB;n:type:ShaderForge.SFN_VertexColor,id:947,x:32300,y:32519,varname:node_947,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9342,x:32753,y:32688,varname:node_9342,prsc:2|A-947-A,B-2637-OUT;n:type:ShaderForge.SFN_FaceSign,id:2285,x:32148,y:33105,varname:node_2285,prsc:2,fstp:0;proporder:4283-5456-5648-8492-5811;pass:END;sub:END;*/

Shader "StormFX Studio/Twosided/StormFX_Naruto_Clip_Custom Lighting" {
    Properties {
        _Emissive ("Emissive", 2D) = "white" {}
        _EmissiveColor ("Emissive Color", Color) = (1,1,1,1)
        [MaterialToggle] _CustomLighting ("Custom Lighting", Float ) = 0
        _CustomLightingColor ("Custom Lighting Color", Color) = (0.5,0.5,0.5,1)
        _CustomLightingPower ("Custom Lighting Power", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float4 _EmissiveColor;
            uniform float4 _CustomLightingColor;
            uniform float _CustomLightingPower;
            uniform fixed _CustomLighting;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _Emissive_var = tex2D(_Emissive,TRANSFORM_TEX(i.uv0, _Emissive));
                clip((i.vertexColor.a*(_Emissive_var.a*_EmissiveColor.a)) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = ((_Emissive_var.rgb*_EmissiveColor.rgb)*i.vertexColor.rgb);
                float3 finalColor = emissive + (_CustomLighting*(isFrontFace*(_CustomLightingColor.rgb*_CustomLightingPower)));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float4 _EmissiveColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _Emissive_var = tex2D(_Emissive,TRANSFORM_TEX(i.uv0, _Emissive));
                clip((i.vertexColor.a*(_Emissive_var.a*_EmissiveColor.a)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
