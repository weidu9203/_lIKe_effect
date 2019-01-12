// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5802,x:32790,y:32706,varname:node_5802,prsc:2|emission-9046-OUT,alpha-7549-OUT;n:type:ShaderForge.SFN_Tex2d,id:8806,x:32073,y:32614,ptovrint:False,ptlb:Teture,ptin:_Teture,varname:node_8806,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1925-OUT;n:type:ShaderForge.SFN_Multiply,id:9046,x:32517,y:32796,varname:node_9046,prsc:2|A-8806-RGB,B-1648-RGB,C-3319-RGB;n:type:ShaderForge.SFN_Color,id:1648,x:32119,y:32820,ptovrint:False,ptlb:Clore,ptin:_Clore,varname:node_1648,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7549,x:32517,y:33074,varname:node_7549,prsc:2|A-8806-A,B-7545-R,C-3319-A;n:type:ShaderForge.SFN_Tex2d,id:7545,x:32162,y:33096,ptovrint:False,ptlb:op,ptin:_op,varname:node_7545,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:3319,x:32226,y:32965,varname:node_3319,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:3276,x:31216,y:32783,varname:node_3276,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Append,id:6453,x:31474,y:32757,varname:node_6453,prsc:2|A-3276-Z,B-3276-W;n:type:ShaderForge.SFN_Time,id:4820,x:30737,y:32464,varname:node_4820,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:8987,x:31205,y:32159,varname:node_8987,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9226,x:31206,y:32318,varname:node_9226,prsc:2|A-3953-OUT,B-4820-T;n:type:ShaderForge.SFN_Multiply,id:7755,x:31196,y:32562,varname:node_7755,prsc:2|A-3426-OUT,B-4820-T;n:type:ShaderForge.SFN_ValueProperty,id:3953,x:30960,y:32257,ptovrint:False,ptlb:node_3953,ptin:_node_3953,varname:node_3953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3426,x:30945,y:32643,ptovrint:False,ptlb:node_3426,ptin:_node_3426,varname:node_3426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:8367,x:31632,y:32361,varname:node_8367,prsc:2|A-8987-UVOUT,B-8757-OUT;n:type:ShaderForge.SFN_Append,id:8757,x:31346,y:32480,varname:node_8757,prsc:2|A-9226-OUT,B-7755-OUT;n:type:ShaderForge.SFN_Add,id:5162,x:31679,y:32720,varname:node_5162,prsc:2|A-8987-UVOUT,B-6453-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1925,x:31837,y:32621,ptovrint:False,ptlb:UV/ON,ptin:_UVON,varname:node_1925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8367-OUT,B-5162-OUT;proporder:8806-1648-7545-3953-3426-1925;pass:END;sub:END;*/

Shader "M/hunhe" {
    Properties {
        _Teture ("Teture", 2D) = "white" {}
        [HDR]_Clore ("Clore", Color) = (0.5,0.5,0.5,1)
        _op ("op", 2D) = "white" {}
        _node_3953 ("node_3953", Float ) = 0
        _node_3426 ("node_3426", Float ) = 0
        [MaterialToggle] _UVON ("UV/ON", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
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
            uniform sampler2D _Teture; uniform float4 _Teture_ST;
            uniform float4 _Clore;
            uniform sampler2D _op; uniform float4 _op_ST;
            uniform float _node_3953;
            uniform float _node_3426;
            uniform fixed _UVON;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
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
                float4 node_4820 = _Time;
                float2 _UVON_var = lerp( (i.uv0+float2((_node_3953*node_4820.g),(_node_3426*node_4820.g))), (i.uv0+float2(i.uv1.b,i.uv1.a)), _UVON );
                float4 _Teture_var = tex2D(_Teture,TRANSFORM_TEX(_UVON_var, _Teture));
                float3 emissive = (_Teture_var.rgb*_Clore.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 _op_var = tex2D(_op,TRANSFORM_TEX(i.uv0, _op));
                fixed4 finalRGBA = fixed4(finalColor,(_Teture_var.a*_op_var.r*i.vertexColor.a));
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
