// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3099,x:32993,y:32594,varname:node_3099,prsc:2|emission-589-OUT,alpha-7077-OUT;n:type:ShaderForge.SFN_TexCoord,id:3958,x:31677,y:32367,varname:node_3958,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7133,x:31573,y:32595,varname:node_7133,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9638,x:31765,y:32587,varname:node_9638,prsc:2|A-4656-OUT,B-7133-T;n:type:ShaderForge.SFN_ValueProperty,id:4656,x:31465,y:32508,ptovrint:False,ptlb:U_Speed,ptin:_U_Speed,varname:node_4656,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4189,x:31519,y:32894,ptovrint:False,ptlb:V_Speed,ptin:_V_Speed,varname:node_4189,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:1044,x:31787,y:32884,varname:node_1044,prsc:2|A-7133-T,B-4189-OUT;n:type:ShaderForge.SFN_Append,id:6476,x:31996,y:32712,varname:node_6476,prsc:2|A-9638-OUT,B-1044-OUT;n:type:ShaderForge.SFN_Add,id:2550,x:32161,y:32626,varname:node_2550,prsc:2|A-3958-UVOUT,B-6476-OUT;n:type:ShaderForge.SFN_Tex2d,id:3282,x:32381,y:32619,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_3282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2550-OUT;n:type:ShaderForge.SFN_Multiply,id:589,x:32747,y:32694,varname:node_589,prsc:2|A-3282-RGB,B-8390-RGB,C-4426-RGB;n:type:ShaderForge.SFN_Color,id:8390,x:32240,y:32825,ptovrint:False,ptlb:Colore,ptin:_Colore,varname:node_8390,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7077,x:32711,y:32888,varname:node_7077,prsc:2|A-3282-A,B-9095-R,C-4426-A;n:type:ShaderForge.SFN_VertexColor,id:4426,x:32419,y:32894,varname:node_4426,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9095,x:32407,y:33238,ptovrint:False,ptlb:Opatiy,ptin:_Opatiy,varname:node_9095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:4656-4189-3282-8390-9095;pass:END;sub:END;*/

Shader "M/ALHPE" {
    Properties {
        _U_Speed ("U_Speed", Float ) = 0
        _V_Speed ("V_Speed", Float ) = 0
        _Texture ("Texture", 2D) = "white" {}
        [HDR]_Colore ("Colore", Color) = (0.5,0.5,0.5,1)
        _Opatiy ("Opatiy", 2D) = "white" {}
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float _U_Speed;
            uniform float _V_Speed;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Colore;
            uniform sampler2D _Opatiy; uniform float4 _Opatiy_ST;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_7133 = _Time;
                float2 node_2550 = (i.uv0+float2((_U_Speed*node_7133.g),(node_7133.g*_V_Speed)));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_2550, _Texture));
                float3 emissive = (_Texture_var.rgb*_Colore.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 _Opatiy_var = tex2D(_Opatiy,TRANSFORM_TEX(i.uv0, _Opatiy));
                fixed4 finalRGBA = fixed4(finalColor,(_Texture_var.a*_Opatiy_var.r*i.vertexColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
