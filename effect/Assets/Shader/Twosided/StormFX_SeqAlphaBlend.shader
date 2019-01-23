// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-2253-OUT,alpha-9760-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32031,y:32954,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Vector4Property,id:1422,x:28097,y:32766,ptovrint:False,ptlb:SeqSettings,ptin:_SeqSettings,varname:node_1422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Relay,id:3105,x:29269,y:32609,varname:node_3105,prsc:2|IN-1422-X;n:type:ShaderForge.SFN_Relay,id:9737,x:29267,y:32752,varname:node_9737,prsc:2|IN-1422-Y;n:type:ShaderForge.SFN_Relay,id:5808,x:28726,y:33187,varname:node_5808,prsc:2|IN-1422-Z;n:type:ShaderForge.SFN_Append,id:2539,x:31331,y:32670,varname:node_2539,prsc:2|A-3105-OUT,B-9737-OUT;n:type:ShaderForge.SFN_Divide,id:228,x:31102,y:32749,varname:node_228,prsc:2|A-4022-OUT,B-3105-OUT;n:type:ShaderForge.SFN_Fmod,id:4022,x:31112,y:32881,varname:node_4022,prsc:2|A-4230-OUT,B-3105-OUT;n:type:ShaderForge.SFN_Multiply,id:8615,x:28958,y:33232,varname:node_8615,prsc:2|A-5808-OUT,B-4903-T;n:type:ShaderForge.SFN_Time,id:4903,x:28717,y:33352,varname:node_4903,prsc:2;n:type:ShaderForge.SFN_Frac,id:7765,x:29203,y:33241,varname:node_7765,prsc:2|IN-8615-OUT;n:type:ShaderForge.SFN_Multiply,id:1326,x:29754,y:33165,varname:node_1326,prsc:2|A-5470-OUT,B-7765-OUT;n:type:ShaderForge.SFN_Multiply,id:5470,x:29458,y:33014,varname:node_5470,prsc:2|A-3105-OUT,B-9737-OUT;n:type:ShaderForge.SFN_Round,id:4230,x:30052,y:33177,varname:node_4230,prsc:2|IN-1326-OUT;n:type:ShaderForge.SFN_Divide,id:2476,x:30461,y:33158,varname:node_2476,prsc:2|A-4230-OUT,B-3105-OUT;n:type:ShaderForge.SFN_Floor,id:8177,x:30672,y:33145,varname:node_8177,prsc:2|IN-2476-OUT;n:type:ShaderForge.SFN_Divide,id:2746,x:30910,y:33064,varname:node_2746,prsc:2|A-8177-OUT,B-9737-OUT;n:type:ShaderForge.SFN_OneMinus,id:3574,x:31082,y:33055,varname:node_3574,prsc:2|IN-2746-OUT;n:type:ShaderForge.SFN_Append,id:8555,x:31340,y:32915,varname:node_8555,prsc:2|A-228-OUT,B-3574-OUT;n:type:ShaderForge.SFN_Divide,id:2341,x:31611,y:32681,varname:node_2341,prsc:2|A-6041-UVOUT,B-2539-OUT;n:type:ShaderForge.SFN_TexCoord,id:6041,x:31356,y:32480,varname:node_6041,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:4462,x:31812,y:32706,varname:node_4462,prsc:2|A-2341-OUT,B-8555-OUT;n:type:ShaderForge.SFN_Tex2d,id:2444,x:32026,y:32695,ptovrint:False,ptlb:Tex,ptin:_Tex,varname:node_2444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4462-OUT;n:type:ShaderForge.SFN_Multiply,id:2253,x:32309,y:32678,varname:node_2253,prsc:2|A-2444-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Multiply,id:9760,x:32330,y:33002,varname:node_9760,prsc:2|A-2444-A,B-7241-A;proporder:7241-1422-2444;pass:END;sub:END;*/

Shader "StormFX Studio/Twosided/StormFX_SeqAlphaBlend" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _SeqSettings ("SeqSettings", Vector) = (1,1,0,0)
        _Tex ("Tex", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float4 _SeqSettings;
            uniform sampler2D _Tex; uniform float4 _Tex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_3105 = _SeqSettings.r;
                float node_9737 = _SeqSettings.g;
                float4 node_4903 = _Time + _TimeEditor;
                float node_4230 = round(((node_3105*node_9737)*frac((_SeqSettings.b*node_4903.g))));
                float2 node_4462 = ((i.uv0/float2(node_3105,node_9737))+float2((fmod(node_4230,node_3105)/node_3105),(1.0 - (floor((node_4230/node_3105))/node_9737))));
                float4 _Tex_var = tex2D(_Tex,TRANSFORM_TEX(node_4462, _Tex));
                float3 emissive = (_Tex_var.rgb*_Color.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(_Tex_var.a*_Color.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
