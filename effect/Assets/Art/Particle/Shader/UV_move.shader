// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:981,x:33012,y:32674,varname:node_981,prsc:2|emission-3690-OUT,alpha-6278-OUT;n:type:ShaderForge.SFN_Tex2d,id:2982,x:32594,y:32573,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_2982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3988-OUT;n:type:ShaderForge.SFN_TexCoord,id:5011,x:32144,y:32538,varname:node_5011,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:6050,x:32115,y:33018,varname:node_6050,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4023,x:32234,y:32815,varname:node_4023,prsc:2|A-4118-OUT,B-6050-T;n:type:ShaderForge.SFN_ValueProperty,id:4118,x:32026,y:32716,ptovrint:False,ptlb:U,ptin:_U,varname:node_4118,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5475,x:32249,y:33167,ptovrint:False,ptlb:V,ptin:_V,varname:node_5475,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:8729,x:32376,y:33048,varname:node_8729,prsc:2|A-5475-OUT,B-6050-T;n:type:ShaderForge.SFN_Append,id:4151,x:32397,y:32798,varname:node_4151,prsc:2|A-4023-OUT,B-8729-OUT;n:type:ShaderForge.SFN_Color,id:3203,x:32545,y:32855,ptovrint:False,ptlb:Colore,ptin:_Colore,varname:node_3203,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3690,x:32829,y:32699,varname:node_3690,prsc:2|A-2982-RGB,B-3203-RGB,C-9402-RGB;n:type:ShaderForge.SFN_Add,id:3988,x:32397,y:32573,varname:node_3988,prsc:2|A-5011-UVOUT,B-4151-OUT;n:type:ShaderForge.SFN_VertexColor,id:9402,x:32597,y:33067,varname:node_9402,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6278,x:32842,y:33067,varname:node_6278,prsc:2|A-2982-A,B-9402-A,C-3203-A,D-9594-R;n:type:ShaderForge.SFN_Tex2d,id:9594,x:32496,y:33272,ptovrint:False,ptlb:OPCTIC,ptin:_OPCTIC,varname:node_9594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:2982-3203-4118-5475-9594;pass:END;sub:END;*/

Shader "M/UV_move" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        [HDR]_Colore ("Colore", Color) = (0.5,0.5,0.5,1)
        _U ("U", Float ) = 0
        _V ("V", Float ) = 0
        _OPCTIC ("OPCTIC", 2D) = "white" {}
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _U;
            uniform float _V;
            uniform float4 _Colore;
            uniform sampler2D _OPCTIC; uniform float4 _OPCTIC_ST;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_6050 = _Time;
                float2 node_3988 = (i.uv0+float2((_U*node_6050.g),(_V*node_6050.g)));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_3988, _Texture));
                float3 emissive = (_Texture_var.rgb*_Colore.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 _OPCTIC_var = tex2D(_OPCTIC,TRANSFORM_TEX(i.uv0, _OPCTIC));
                fixed4 finalRGBA = fixed4(finalColor,(_Texture_var.a*i.vertexColor.a*_Colore.a*_OPCTIC_var.r));
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
