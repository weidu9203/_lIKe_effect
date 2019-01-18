// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3535,x:32987,y:32659,varname:node_3535,prsc:2|emission-4735-OUT,alpha-1998-OUT;n:type:ShaderForge.SFN_TexCoord,id:8147,x:31647,y:32149,varname:node_8147,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7536,x:31441,y:32483,varname:node_7536,prsc:2|A-980-OUT,B-8819-T;n:type:ShaderForge.SFN_Multiply,id:9582,x:31450,y:32165,varname:node_9582,prsc:2|A-4503-OUT,B-8819-T;n:type:ShaderForge.SFN_ValueProperty,id:4503,x:31200,y:32161,ptovrint:False,ptlb:U,ptin:_U,varname:node_4503,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:980,x:31090,y:32325,ptovrint:False,ptlb:V,ptin:_V,varname:node_980,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:8819,x:31105,y:32468,varname:node_8819,prsc:2;n:type:ShaderForge.SFN_Append,id:6865,x:31631,y:32435,varname:node_6865,prsc:2|A-9582-OUT,B-7536-OUT;n:type:ShaderForge.SFN_Add,id:8477,x:31900,y:32300,varname:node_8477,prsc:2|A-8147-UVOUT,B-6865-OUT;n:type:ShaderForge.SFN_Tex2d,id:6730,x:32326,y:32486,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6730,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7932-OUT;n:type:ShaderForge.SFN_Multiply,id:4735,x:32752,y:32704,varname:node_4735,prsc:2|A-6730-RGB,B-4258-RGB,C-9810-RGB;n:type:ShaderForge.SFN_Color,id:4258,x:32142,y:32716,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4258,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1998,x:32707,y:32930,varname:node_1998,prsc:2|A-6730-A,B-4258-A,C-9810-A,D-1353-R;n:type:ShaderForge.SFN_VertexColor,id:9810,x:32192,y:32864,varname:node_9810,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:1353,x:32349,y:33039,ptovrint:False,ptlb:Opictiy,ptin:_Opictiy,varname:node_1353,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:7665,x:31287,y:32766,varname:node_7665,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Append,id:6293,x:31566,y:32816,varname:node_6293,prsc:2|A-7665-Z,B-7665-W;n:type:ShaderForge.SFN_Add,id:4177,x:31893,y:32680,varname:node_4177,prsc:2|A-8147-UVOUT,B-6293-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7932,x:32067,y:32509,ptovrint:False,ptlb:ON/OFF,ptin:_ONOFF,varname:node_7932,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8477-OUT,B-4177-OUT;proporder:4258-4503-980-6730-1353-7932;pass:END;sub:END;*/

Shader "M/ADD_move" {
    Properties {
        [HDR]_Color ("Color", Color) = (0.5,0.5,0.5,1)
        _U ("U", Float ) = 0
        _V ("V", Float ) = 0
        _Texture ("Texture", 2D) = "white" {}
        _Opictiy ("Opictiy", 2D) = "white" {}
        [MaterialToggle] _ONOFF ("ON/OFF", Float ) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float _U;
            uniform float _V;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color;
            uniform sampler2D _Opictiy; uniform float4 _Opictiy_ST;
            uniform fixed _ONOFF;
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
                float4 node_8819 = _Time;
                float2 _ONOFF_var = lerp( (i.uv0+float2((_U*node_8819.g),(_V*node_8819.g))), (i.uv0+float2(i.uv1.b,i.uv1.a)), _ONOFF );
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(_ONOFF_var, _Texture));
                float3 emissive = (_Texture_var.rgb*_Color.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 _Opictiy_var = tex2D(_Opictiy,TRANSFORM_TEX(i.uv0, _Opictiy));
                fixed4 finalRGBA = fixed4(finalColor,(_Texture_var.a*_Color.a*i.vertexColor.a*_Opictiy_var.r));
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
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
