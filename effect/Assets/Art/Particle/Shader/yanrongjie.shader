// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2143,x:32865,y:32662,varname:node_2143,prsc:2|emission-9454-OUT,alpha-3785-OUT,clip-3785-OUT;n:type:ShaderForge.SFN_Tex2d,id:6107,x:32100,y:32521,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7421-OUT;n:type:ShaderForge.SFN_Color,id:7274,x:32121,y:32755,ptovrint:False,ptlb:Colore,ptin:_Colore,varname:node_7274,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9454,x:32530,y:32677,varname:node_9454,prsc:2|A-6107-RGB,B-7274-RGB,C-6756-RGB;n:type:ShaderForge.SFN_Multiply,id:3785,x:32489,y:32959,varname:node_3785,prsc:2|A-6107-A,B-1465-OUT,C-6756-A,D-7274-A;n:type:ShaderForge.SFN_VertexColor,id:6756,x:32165,y:32916,varname:node_6756,prsc:2;n:type:ShaderForge.SFN_Vector1,id:9055,x:32252,y:33165,varname:node_9055,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:6348,x:31650,y:32526,varname:node_6348,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:7421,x:31889,y:32681,varname:node_7421,prsc:2|A-6348-UVOUT,B-3783-OUT;n:type:ShaderForge.SFN_Append,id:3783,x:31871,y:32853,varname:node_3783,prsc:2|A-6129-OUT,B-5804-OUT;n:type:ShaderForge.SFN_Time,id:6235,x:31397,y:32844,varname:node_6235,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6129,x:31650,y:32778,varname:node_6129,prsc:2|A-7020-OUT,B-6235-T;n:type:ShaderForge.SFN_ValueProperty,id:7020,x:31442,y:32570,ptovrint:False,ptlb:U,ptin:_U,varname:node_7020,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2094,x:31461,y:33132,ptovrint:False,ptlb:v,ptin:_v,varname:node_2094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5804,x:31663,y:33041,varname:node_5804,prsc:2|A-2094-OUT,B-6235-T;n:type:ShaderForge.SFN_TexCoord,id:5085,x:31876,y:33220,varname:node_5085,prsc:2,uv:2,uaff:True;n:type:ShaderForge.SFN_Step,id:1465,x:32237,y:33237,varname:node_1465,prsc:2|A-5085-U,B-1533-R;n:type:ShaderForge.SFN_Tex2d,id:1533,x:31908,y:33436,ptovrint:False,ptlb:Disslove,ptin:_Disslove,varname:node_1533,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8304,x:32097,y:33068,ptovrint:False,ptlb:Opaictiy,ptin:_Opaictiy,varname:node_8304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:6107-7274-7020-2094-1533-8304;pass:END;sub:END;*/

Shader "M/rongjie" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        [HDR]_Colore ("Colore", Color) = (0.5,0.5,0.5,1)
        _U ("U", Float ) = 0
        _v ("v", Float ) = 0
        _Disslove ("Disslove", 2D) = "white" {}
        _Opaictiy ("Opaictiy", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Colore;
            uniform float _U;
            uniform float _v;
            uniform sampler2D _Disslove; uniform float4 _Disslove_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv2 : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_6235 = _Time;
                float2 node_7421 = (i.uv0+float2((_U*node_6235.g),(_v*node_6235.g)));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_7421, _Texture));
                float4 _Disslove_var = tex2D(_Disslove,TRANSFORM_TEX(i.uv0, _Disslove));
                float node_3785 = (_Texture_var.a*step(i.uv2.r,_Disslove_var.r)*i.vertexColor.a*_Colore.a);
                clip(node_3785 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_Texture_var.rgb*_Colore.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_3785);
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Colore;
            uniform float _U;
            uniform float _v;
            uniform sampler2D _Disslove; uniform float4 _Disslove_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 uv2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_6235 = _Time;
                float2 node_7421 = (i.uv0+float2((_U*node_6235.g),(_v*node_6235.g)));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_7421, _Texture));
                float4 _Disslove_var = tex2D(_Disslove,TRANSFORM_TEX(i.uv0, _Disslove));
                float node_3785 = (_Texture_var.a*step(i.uv2.r,_Disslove_var.r)*i.vertexColor.a*_Colore.a);
                clip(node_3785 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
