// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1799578,fgcg:0.2352941,fgcb:0.08131487,fgca:1,fgde:0.1,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4795,x:33401,y:32256,varname:node_4795,prsc:2|emission-3949-OUT,clip-4470-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31227,y:32993,ptovrint:False,ptlb:Emissvie Tex,ptin:_EmissvieTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-5318-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32293,y:32734,varname:node_2393,prsc:2|A-998-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31358,y:32678,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31642,y:32878,ptovrint:True,ptlb:Emissive Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32038,y:33072,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Fresnel,id:3452,x:31671,y:32283,varname:node_3452,prsc:2|EXP-3487-OUT;n:type:ShaderForge.SFN_Color,id:1973,x:31439,y:31951,ptovrint:False,ptlb:Emissive_Add Fresnel Color,ptin:_Emissive_AddFresnelColor,varname:node_1973,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:10,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:3159,x:32754,y:32218,varname:node_3159,prsc:2|A-4487-OUT,B-2393-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3487,x:31229,y:32284,ptovrint:False,ptlb:Emissive_Add Fresnel Edge,ptin:_Emissive_AddFresnelEdge,varname:node_3487,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1392,x:32025,y:32146,varname:node_1392,prsc:2|A-3322-OUT,B-3452-OUT;n:type:ShaderForge.SFN_Power,id:3949,x:33110,y:32337,varname:node_3949,prsc:2|VAL-3159-OUT,EXP-9553-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9553,x:32855,y:32552,ptovrint:False,ptlb:Emissive Contrast,ptin:_EmissiveContrast,varname:_Fresnel_amount_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6838,x:31464,y:32186,ptovrint:False,ptlb:Emissive_Add Fresenl Brightness,ptin:_Emissive_AddFresenlBrightness,varname:_Emissive_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:3322,x:31748,y:32009,varname:node_3322,prsc:2|A-1973-RGB,B-6838-OUT;n:type:ShaderForge.SFN_Multiply,id:998,x:31560,y:32420,varname:node_998,prsc:2|A-6074-RGB,B-6436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6436,x:31259,y:32442,ptovrint:False,ptlb:Emissive Brightness,ptin:_EmissiveBrightness,varname:_Fresenl_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8761,x:29582,y:31652,ptovrint:False,ptlb:UV Effect Tex,ptin:_UVEffectTex,varname:node_8761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2b6f0cb630b8724390e4b1f6450aca0,ntxv:0,isnm:False|UVIN-7290-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5463,x:29598,y:32035,ptovrint:False,ptlb:UV Effect Tex_01,ptin:_UVEffectTex_01,varname:_Distortion_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2b6f0cb630b8724390e4b1f6450aca0,ntxv:0,isnm:False|UVIN-4644-UVOUT;n:type:ShaderForge.SFN_Panner,id:7290,x:29355,y:31642,varname:node_7290,prsc:2,spu:1,spv:1|UVIN-1254-UVOUT,DIST-7511-OUT;n:type:ShaderForge.SFN_Panner,id:4644,x:29343,y:32090,varname:node_4644,prsc:2,spu:1,spv:1|UVIN-6412-UVOUT,DIST-6986-OUT;n:type:ShaderForge.SFN_TexCoord,id:1254,x:28881,y:31250,varname:node_1254,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5849,x:28612,y:31386,ptovrint:False,ptlb:UV Effect Tex Panner X,ptin:_UVEffectTexPannerX,varname:_Dissolve_Panner_Y,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7511,x:29069,y:31661,varname:node_7511,prsc:2|A-1760-OUT,B-2917-TSL;n:type:ShaderForge.SFN_Time,id:2917,x:28731,y:31686,varname:node_2917,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5542,x:28612,y:31536,ptovrint:False,ptlb:UV Effect Tex Panner Y,ptin:_UVEffectTexPannerY,varname:_Dissolve_Panner_Z,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:1760,x:28879,y:31466,varname:node_1760,prsc:2|A-5849-OUT,B-5542-OUT;n:type:ShaderForge.SFN_TexCoord,id:6412,x:28959,y:31968,varname:node_6412,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5588,x:28489,y:31983,ptovrint:False,ptlb:UV Effect Tex_01 Panner X,ptin:_UVEffectTex_01PannerX,varname:_Distortion_Panner_Y,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6986,x:29047,y:32183,varname:node_6986,prsc:2|A-4442-OUT,B-6753-TSL;n:type:ShaderForge.SFN_Time,id:6753,x:28773,y:32308,varname:node_6753,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2340,x:28504,y:32216,ptovrint:False,ptlb:UV Effect Tex_01 Panner Y,ptin:_UVEffectTex_01PannerY,varname:_Distortion_Panner_Z,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Append,id:4442,x:28760,y:32088,varname:node_4442,prsc:2|A-5588-OUT,B-2340-OUT;n:type:ShaderForge.SFN_TexCoord,id:3469,x:30981,y:31829,varname:node_3469,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:1286,x:31412,y:31737,ptovrint:False,ptlb:Emissvie_Add Tex,ptin:_Emissvie_AddTex,varname:_Emissvie_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-2360-OUT;n:type:ShaderForge.SFN_Add,id:4487,x:32426,y:32069,varname:node_4487,prsc:2|A-9932-OUT,B-1392-OUT;n:type:ShaderForge.SFN_Multiply,id:9278,x:30301,y:31582,varname:node_9278,prsc:2|A-8978-OUT,B-9578-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9578,x:30072,y:31471,ptovrint:False,ptlb:Emissvie_Add UV Effect Power,ptin:_Emissvie_AddUVEffectPower,varname:node_9578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:2360,x:31183,y:31736,varname:node_2360,prsc:2|A-9278-OUT,B-3469-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6010,x:31796,y:31640,varname:node_6010,prsc:2|A-1377-RGB,B-1286-RGB;n:type:ShaderForge.SFN_Color,id:1377,x:31426,y:31548,ptovrint:False,ptlb:Emissvie_Add Color,ptin:_Emissvie_AddColor,varname:node_1377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:8978,x:29931,y:31847,varname:node_8978,prsc:2|A-8761-R,B-5463-R;n:type:ShaderForge.SFN_Panner,id:2757,x:30835,y:32773,varname:node_2757,prsc:2,spu:1,spv:1|UVIN-6122-UVOUT,DIST-9817-OUT;n:type:ShaderForge.SFN_TexCoord,id:6122,x:30200,y:32642,varname:node_6122,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:3192,x:29923,y:32834,ptovrint:False,ptlb:Emissvie Panner X,ptin:_EmissviePannerX,varname:_Emissvie_Add_01UVEffectPannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9817,x:30672,y:32971,varname:node_9817,prsc:2|A-6889-OUT,B-5956-TSL;n:type:ShaderForge.SFN_Time,id:5956,x:30423,y:33063,varname:node_5956,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9362,x:29902,y:33079,ptovrint:False,ptlb:Emissvie Panner Y,ptin:_EmissviePannerY,varname:_Emissvie_Add_01UVEffectPannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:6889,x:30127,y:32943,varname:node_6889,prsc:2|A-3192-OUT,B-9362-OUT;n:type:ShaderForge.SFN_Add,id:5318,x:31043,y:32669,varname:node_5318,prsc:2|A-9551-OUT,B-2757-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9551,x:30631,y:32452,varname:node_9551,prsc:2|A-8978-OUT,B-3920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3920,x:30279,y:32459,ptovrint:False,ptlb:Emissive UV Effect Power,ptin:_EmissiveUVEffectPower,varname:node_3920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4470,x:32115,y:33226,varname:node_4470,prsc:2|A-6074-A,B-797-A,C-2053-A;n:type:ShaderForge.SFN_ToggleProperty,id:7120,x:31741,y:31864,ptovrint:False,ptlb:Emissive_Add————————————————————————————————————————————————————,ptin:_Emissive_Add,varname:node_7120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:9932,x:32109,y:31748,varname:node_9932,prsc:2|A-6010-OUT,B-7120-OUT;proporder:6074-797-3192-9362-6436-9553-3920-8761-5849-5542-5463-5588-2340-7120-1286-1377-9578-1973-3487-6838;pass:END;sub:END;*/

Shader "StormFX Studio/Twosided/StormFX_Naruto_Clip_UVEffect" {
    Properties {
        _EmissvieTex ("Emissvie Tex", 2D) = "black" {}
        _TintColor ("Emissive Color", Color) = (0.5,0.5,0.5,1)
        _EmissviePannerX ("Emissvie Panner X", Float ) = 0
        _EmissviePannerY ("Emissvie Panner Y", Float ) = 0
        _EmissiveBrightness ("Emissive Brightness", Float ) = 1
        _EmissiveContrast ("Emissive Contrast", Float ) = 1
        _EmissiveUVEffectPower ("Emissive UV Effect Power", Float ) = 0
        _UVEffectTex ("UV Effect Tex", 2D) = "white" {}
        _UVEffectTexPannerX ("UV Effect Tex Panner X", Float ) = 1
        _UVEffectTexPannerY ("UV Effect Tex Panner Y", Float ) = 1
        _UVEffectTex_01 ("UV Effect Tex_01", 2D) = "white" {}
        _UVEffectTex_01PannerX ("UV Effect Tex_01 Panner X", Float ) = -1
        _UVEffectTex_01PannerY ("UV Effect Tex_01 Panner Y", Float ) = -1
        [MaterialToggle] _Emissive_Add ("Emissive_Add————————————————————————————————————————————————————", Float ) = 0
        _Emissvie_AddTex ("Emissvie_Add Tex", 2D) = "black" {}
        _Emissvie_AddColor ("Emissvie_Add Color", Color) = (0,0,0,1)
        _Emissvie_AddUVEffectPower ("Emissvie_Add UV Effect Power", Float ) = 0
        _Emissive_AddFresnelColor ("Emissive_Add Fresnel Color", Color) = (10,1,1,1)
        _Emissive_AddFresnelEdge ("Emissive_Add Fresnel Edge", Float ) = 1
        _Emissive_AddFresenlBrightness ("Emissive_Add Fresenl Brightness", Float ) = 0
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
            uniform float4 _TimeEditor;
            uniform sampler2D _EmissvieTex; uniform float4 _EmissvieTex_ST;
            uniform float4 _TintColor;
            uniform float4 _Emissive_AddFresnelColor;
            uniform float _Emissive_AddFresnelEdge;
            uniform float _EmissiveContrast;
            uniform float _Emissive_AddFresenlBrightness;
            uniform float _EmissiveBrightness;
            uniform sampler2D _UVEffectTex; uniform float4 _UVEffectTex_ST;
            uniform sampler2D _UVEffectTex_01; uniform float4 _UVEffectTex_01_ST;
            uniform float _UVEffectTexPannerX;
            uniform float _UVEffectTexPannerY;
            uniform float _UVEffectTex_01PannerX;
            uniform float _UVEffectTex_01PannerY;
            uniform sampler2D _Emissvie_AddTex; uniform float4 _Emissvie_AddTex_ST;
            uniform float _Emissvie_AddUVEffectPower;
            uniform float4 _Emissvie_AddColor;
            uniform float _EmissviePannerX;
            uniform float _EmissviePannerY;
            uniform float _EmissiveUVEffectPower;
            uniform fixed _Emissive_Add;
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
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 node_2917 = _Time + _TimeEditor;
                float2 node_7290 = (i.uv0+(float2(_UVEffectTexPannerX,_UVEffectTexPannerY)*node_2917.r)*float2(1,1));
                float4 _UVEffectTex_var = tex2D(_UVEffectTex,TRANSFORM_TEX(node_7290, _UVEffectTex));
                float4 node_6753 = _Time + _TimeEditor;
                float2 node_4644 = (i.uv0+(float2(_UVEffectTex_01PannerX,_UVEffectTex_01PannerY)*node_6753.r)*float2(1,1));
                float4 _UVEffectTex_01_var = tex2D(_UVEffectTex_01,TRANSFORM_TEX(node_4644, _UVEffectTex_01));
                float node_8978 = (_UVEffectTex_var.r+_UVEffectTex_01_var.r);
                float4 node_5956 = _Time + _TimeEditor;
                float2 node_5318 = ((node_8978*_EmissiveUVEffectPower)+(i.uv0+(float2(_EmissviePannerX,_EmissviePannerY)*node_5956.r)*float2(1,1)));
                float4 _EmissvieTex_var = tex2D(_EmissvieTex,TRANSFORM_TEX(node_5318, _EmissvieTex));
                clip((_EmissvieTex_var.a*_TintColor.a*i.vertexColor.a) - 0.5);
////// Lighting:
////// Emissive:
                float2 node_2360 = ((node_8978*_Emissvie_AddUVEffectPower)+i.uv0);
                float4 _Emissvie_AddTex_var = tex2D(_Emissvie_AddTex,TRANSFORM_TEX(node_2360, _Emissvie_AddTex));
                float3 emissive = pow(((((_Emissvie_AddColor.rgb*_Emissvie_AddTex_var.rgb)*_Emissive_Add)+((_Emissive_AddFresnelColor.rgb*_Emissive_AddFresenlBrightness)*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Emissive_AddFresnelEdge)))+((_EmissvieTex_var.rgb*_EmissiveBrightness)*i.vertexColor.rgb*_TintColor.rgb*2.0)),_EmissiveContrast);
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
            uniform float4 _TimeEditor;
            uniform sampler2D _EmissvieTex; uniform float4 _EmissvieTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _UVEffectTex; uniform float4 _UVEffectTex_ST;
            uniform sampler2D _UVEffectTex_01; uniform float4 _UVEffectTex_01_ST;
            uniform float _UVEffectTexPannerX;
            uniform float _UVEffectTexPannerY;
            uniform float _UVEffectTex_01PannerX;
            uniform float _UVEffectTex_01PannerY;
            uniform float _EmissviePannerX;
            uniform float _EmissviePannerY;
            uniform float _EmissiveUVEffectPower;
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
                float4 node_2917 = _Time + _TimeEditor;
                float2 node_7290 = (i.uv0+(float2(_UVEffectTexPannerX,_UVEffectTexPannerY)*node_2917.r)*float2(1,1));
                float4 _UVEffectTex_var = tex2D(_UVEffectTex,TRANSFORM_TEX(node_7290, _UVEffectTex));
                float4 node_6753 = _Time + _TimeEditor;
                float2 node_4644 = (i.uv0+(float2(_UVEffectTex_01PannerX,_UVEffectTex_01PannerY)*node_6753.r)*float2(1,1));
                float4 _UVEffectTex_01_var = tex2D(_UVEffectTex_01,TRANSFORM_TEX(node_4644, _UVEffectTex_01));
                float node_8978 = (_UVEffectTex_var.r+_UVEffectTex_01_var.r);
                float4 node_5956 = _Time + _TimeEditor;
                float2 node_5318 = ((node_8978*_EmissiveUVEffectPower)+(i.uv0+(float2(_EmissviePannerX,_EmissviePannerY)*node_5956.r)*float2(1,1)));
                float4 _EmissvieTex_var = tex2D(_EmissvieTex,TRANSFORM_TEX(node_5318, _EmissvieTex));
                clip((_EmissvieTex_var.a*_TintColor.a*i.vertexColor.a) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
