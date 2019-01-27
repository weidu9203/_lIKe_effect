// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1799578,fgcg:0.2352941,fgcb:0.08131487,fgca:1,fgde:0.1,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9946-OUT,alpha-9946-OUT,refract-7644-OUT;n:type:ShaderForge.SFN_ValueProperty,id:367,x:30522,y:33219,ptovrint:False,ptlb:REF Power,ptin:_REFPower,varname:node_367,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:5331,x:30769,y:32630,ptovrint:False,ptlb:Normal Tex,ptin:_NormalTex,varname:node_5331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c0e602b4d07dd01448d012af76c31a40,ntxv:3,isnm:False|UVIN-3965-OUT;n:type:ShaderForge.SFN_Vector1,id:9946,x:32231,y:32985,varname:node_9946,prsc:2,v1:0;n:type:ShaderForge.SFN_VertexColor,id:4989,x:30502,y:32999,varname:node_4989,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4848,x:31144,y:32985,varname:node_4848,prsc:2|A-4989-A,B-367-OUT;n:type:ShaderForge.SFN_Append,id:4959,x:29897,y:32651,varname:node_4959,prsc:2|A-9962-OUT,B-7742-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9962,x:29559,y:32576,ptovrint:False,ptlb:Normal Tex Panner X,ptin:_NormalTexPannerX,varname:node_9962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:7742,x:29578,y:32755,ptovrint:False,ptlb:Normal Tex Panner Y,ptin:_NormalTexPannerY,varname:node_7742,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:3608,x:29853,y:32905,varname:node_3608,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4878,x:30283,y:32681,varname:node_4878,prsc:2|A-4959-OUT,B-3608-TSL;n:type:ShaderForge.SFN_TexCoord,id:8489,x:30254,y:32481,varname:node_8489,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:3965,x:30555,y:32632,varname:node_3965,prsc:2|A-8489-UVOUT,B-4878-OUT;n:type:ShaderForge.SFN_Fresnel,id:1596,x:31246,y:33570,varname:node_1596,prsc:2|EXP-1564-OUT;n:type:ShaderForge.SFN_Multiply,id:7644,x:31946,y:33187,varname:node_7644,prsc:2|A-1189-OUT,B-9260-OUT;n:type:ShaderForge.SFN_OneMinus,id:9260,x:31648,y:33494,varname:node_9260,prsc:2|IN-1596-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1564,x:30886,y:33639,ptovrint:False,ptlb:Fresnel Power,ptin:_FresnelPower,varname:node_1564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:2045,x:30988,y:33376,varname:node_2045,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5331-RGB;n:type:ShaderForge.SFN_Multiply,id:1189,x:31303,y:33168,varname:node_1189,prsc:2|A-4848-OUT,B-2045-OUT;proporder:5331-9962-7742-367-1564;pass:END;sub:END;*/

Shader "StormFX Studio/Refraction/Refraction Fresnel" {
    Properties {
        _NormalTex ("Normal Tex", 2D) = "bump" {}
        _NormalTexPannerX ("Normal Tex Panner X", Float ) = 0
        _NormalTexPannerY ("Normal Tex Panner Y", Float ) = 0
        _REFPower ("REF Power", Float ) = 0.5
        _FresnelPower ("Fresnel Power", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float _REFPower;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalTexPannerX;
            uniform float _NormalTexPannerY;
            uniform float _FresnelPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 node_3608 = _Time + _TimeEditor;
                float2 node_3965 = (i.uv0+(float2(_NormalTexPannerX,_NormalTexPannerY)*node_3608.r));
                float4 _NormalTex_var = tex2D(_NormalTex,TRANSFORM_TEX(node_3965, _NormalTex));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (((i.vertexColor.a*_REFPower)*_NormalTex_var.rgb.rg)*(1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelPower)));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float node_9946 = 0.0;
                float3 emissive = float3(node_9946,node_9946,node_9946);
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,node_9946),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}