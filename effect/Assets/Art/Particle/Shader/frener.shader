// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9183,x:32816,y:32776,varname:node_9183,prsc:2|custl-9417-OUT,alpha-4455-OUT;n:type:ShaderForge.SFN_Fresnel,id:1873,x:32031,y:32682,varname:node_1873,prsc:2|NRM-5233-OUT,EXP-4101-OUT;n:type:ShaderForge.SFN_Multiply,id:9417,x:32571,y:32773,varname:node_9417,prsc:2|A-1873-OUT,B-7914-RGB,C-185-RGB;n:type:ShaderForge.SFN_NormalVector,id:5233,x:31785,y:32673,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:4101,x:31673,y:32879,ptovrint:False,ptlb:Slider,ptin:_Slider,varname:node_4101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.709404,max:10;n:type:ShaderForge.SFN_Color,id:7914,x:32145,y:32854,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.75,c2:0.3529412,c3:0.3529412,c4:1;n:type:ShaderForge.SFN_VertexColor,id:185,x:32147,y:33083,varname:node_185,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4455,x:32484,y:33131,varname:node_4455,prsc:2|A-1873-OUT,B-185-A,C-7914-A;proporder:4101-7914;pass:END;sub:END;*/

Shader "Unlit/NewUnlitShader" {
    Properties {
        _Slider ("Slider", Range(0, 10)) = 1.709404
        _Color ("Color", Color) = (0.75,0.3529412,0.3529412,1)
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
            uniform float _Slider;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float node_1873 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Slider);
                float3 finalColor = (node_1873*_Color.rgb*i.vertexColor.rgb);
                fixed4 finalRGBA = fixed4(finalColor,(node_1873*i.vertexColor.a*_Color.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
