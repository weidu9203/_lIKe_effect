// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:278,x:32759,y:32651,varname:node_278,prsc:2|emission-367-OUT,clip-5398-OUT,voffset-3005-OUT;n:type:ShaderForge.SFN_Tex2d,id:4260,x:31257,y:32793,ptovrint:False,ptlb:node_4260,ptin:_node_4260,varname:node_4260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f0d49b6f020d6fb4fb5767d773891137,ntxv:0,isnm:False|UVIN-218-OUT;n:type:ShaderForge.SFN_Multiply,id:3005,x:32164,y:33010,varname:node_3005,prsc:2|A-4260-RGB,B-3695-W,C-813-OUT;n:type:ShaderForge.SFN_NormalVector,id:813,x:31768,y:33225,prsc:2,pt:False;n:type:ShaderForge.SFN_TexCoord,id:3695,x:31162,y:32640,varname:node_3695,prsc:2,uv:2,uaff:True;n:type:ShaderForge.SFN_Color,id:9943,x:32412,y:31951,ptovrint:False,ptlb:BemeColor,ptin:_BemeColor,varname:node_9943,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:367,x:32580,y:32422,varname:node_367,prsc:2|A-1304-OUT,B-4734-OUT,T-2270-OUT;n:type:ShaderForge.SFN_Step,id:2270,x:32104,y:32451,varname:node_2270,prsc:2|A-3695-Z,B-4260-R;n:type:ShaderForge.SFN_Color,id:6012,x:32155,y:32647,ptovrint:False,ptlb:Somkecolore,ptin:_Somkecolore,varname:node_6012,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.2275862,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:8993,x:32031,y:32810,varname:node_8993,prsc:2|A-4260-R,B-7975-OUT;n:type:ShaderForge.SFN_Vector1,id:7975,x:31857,y:32871,varname:node_7975,prsc:2,v1:1.3;n:type:ShaderForge.SFN_Step,id:1455,x:32324,y:32782,varname:node_1455,prsc:2|A-3695-Z,B-8993-OUT;n:type:ShaderForge.SFN_Lerp,id:1304,x:32537,y:32703,varname:node_1304,prsc:2|A-6012-RGB,B-1615-RGB,T-1455-OUT;n:type:ShaderForge.SFN_Color,id:1615,x:32285,y:32552,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_1615,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1074,x:31634,y:32245,ptovrint:False,ptlb:node_1074,ptin:_node_1074,varname:node_1074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7c271776650490044ac90fdbcafc20d3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:5398,x:31894,y:32292,varname:node_5398,prsc:2|A-1074-R,B-3695-U;n:type:ShaderForge.SFN_Tex2d,id:1871,x:32279,y:32019,ptovrint:False,ptlb:smokes,ptin:_smokes,varname:node_1871,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4734,x:32488,y:32078,varname:node_4734,prsc:2|A-1871-RGB,B-9943-RGB,C-8818-RGB;n:type:ShaderForge.SFN_VertexColor,id:8818,x:31998,y:32031,varname:node_8818,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:726,x:30346,y:33244,ptovrint:False,ptlb:U,ptin:_U,varname:node_726,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8216,x:30452,y:32809,ptovrint:False,ptlb:V,ptin:_V,varname:node_8216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:1154,x:30251,y:32917,varname:node_1154,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8586,x:30622,y:32957,varname:node_8586,prsc:2|A-8216-OUT,B-1154-T;n:type:ShaderForge.SFN_Multiply,id:5439,x:30603,y:33182,varname:node_5439,prsc:2|A-1154-T,B-726-OUT;n:type:ShaderForge.SFN_Append,id:2532,x:30909,y:33158,varname:node_2532,prsc:2|A-8586-OUT,B-5439-OUT;n:type:ShaderForge.SFN_Add,id:218,x:31097,y:33103,varname:node_218,prsc:2|A-3912-UVOUT,B-2532-OUT;n:type:ShaderForge.SFN_TexCoord,id:3912,x:30686,y:32777,varname:node_3912,prsc:2,uv:0,uaff:False;proporder:4260-9943-6012-1615-1074-1871-726-8216;pass:END;sub:END;*/

Shader "M/baozha" {
    Properties {
        _node_4260 ("node_4260", 2D) = "white" {}
        [HDR]_BemeColor ("BemeColor", Color) = (0,0,0,1)
        [HDR]_Somkecolore ("Somkecolore", Color) = (1,0.2275862,0,1)
        [HDR]_Color2 ("Color2", Color) = (0.5,0.5,0.5,1)
        _node_1074 ("node_1074", 2D) = "white" {}
        _smokes ("smokes", 2D) = "white" {}
        _U ("U", Float ) = 0
        _V ("V", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _node_4260; uniform float4 _node_4260_ST;
            uniform float4 _BemeColor;
            uniform float4 _Somkecolore;
            uniform float4 _Color2;
            uniform sampler2D _node_1074; uniform float4 _node_1074_ST;
            uniform sampler2D _smokes; uniform float4 _smokes_ST;
            uniform float _U;
            uniform float _V;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv2 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1154 = _Time;
                float2 node_218 = (o.uv0+float2((_V*node_1154.g),(node_1154.g*_U)));
                float4 _node_4260_var = tex2Dlod(_node_4260,float4(TRANSFORM_TEX(node_218, _node_4260),0.0,0));
                v.vertex.xyz += (_node_4260_var.rgb*o.uv2.a*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _node_1074_var = tex2D(_node_1074,TRANSFORM_TEX(i.uv0, _node_1074));
                clip(step(_node_1074_var.r,i.uv2.r) - 0.5);
////// Lighting:
////// Emissive:
                float4 node_1154 = _Time;
                float2 node_218 = (i.uv0+float2((_V*node_1154.g),(node_1154.g*_U)));
                float4 _node_4260_var = tex2D(_node_4260,TRANSFORM_TEX(node_218, _node_4260));
                float4 _smokes_var = tex2D(_smokes,TRANSFORM_TEX(i.uv0, _smokes));
                float3 emissive = lerp(lerp(_Somkecolore.rgb,_Color2.rgb,step(i.uv2.b,(_node_4260_var.r*1.3))),(_smokes_var.rgb*_BemeColor.rgb*i.vertexColor.rgb),step(i.uv2.b,_node_4260_var.r));
                float3 finalColor = emissive;
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
            Cull Back
            
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
            uniform sampler2D _node_4260; uniform float4 _node_4260_ST;
            uniform sampler2D _node_1074; uniform float4 _node_1074_ST;
            uniform float _U;
            uniform float _V;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 uv2 : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1154 = _Time;
                float2 node_218 = (o.uv0+float2((_V*node_1154.g),(node_1154.g*_U)));
                float4 _node_4260_var = tex2Dlod(_node_4260,float4(TRANSFORM_TEX(node_218, _node_4260),0.0,0));
                v.vertex.xyz += (_node_4260_var.rgb*o.uv2.a*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _node_1074_var = tex2D(_node_1074,TRANSFORM_TEX(i.uv0, _node_1074));
                clip(step(_node_1074_var.r,i.uv2.r) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
