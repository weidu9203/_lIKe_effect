// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1799578,fgcg:0.2352941,fgcb:0.08131487,fgca:1,fgde:0.1,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4795,x:33401,y:32256,varname:node_4795,prsc:2|emission-3949-OUT,clip-1193-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:29838,y:33438,ptovrint:False,ptlb:Emissvie Tex,ptin:_EmissvieTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-2757-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:31333,y:33012,varname:node_2393,prsc:2|A-998-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:30049,y:33015,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:30732,y:33281,ptovrint:True,ptlb:Emissive Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:31128,y:33165,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:3949,x:32923,y:32355,varname:node_3949,prsc:2|VAL-4977-OUT,EXP-9553-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9553,x:32557,y:32650,ptovrint:False,ptlb:Emissive Contrast,ptin:_EmissiveContrast,varname:_Fresnel_amount_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:998,x:30600,y:32698,varname:node_998,prsc:2|A-6074-RGB,B-6436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6436,x:30299,y:32720,ptovrint:False,ptlb:Emissive Brightness,ptin:_EmissiveBrightness,varname:_Fresenl_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9578,x:29981,y:31301,ptovrint:False,ptlb:Emissvie_Add UV Effect Power,ptin:_Emissvie_AddUVEffectPower,varname:node_9578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Panner,id:2757,x:29423,y:33184,varname:node_2757,prsc:2,spu:1,spv:1|UVIN-6122-UVOUT,DIST-9817-OUT;n:type:ShaderForge.SFN_TexCoord,id:6122,x:28788,y:33053,varname:node_6122,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:3192,x:28511,y:33245,ptovrint:False,ptlb:Emissvie Panner X,ptin:_EmissviePannerX,varname:_Emissvie_Add_01UVEffectPannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9817,x:29260,y:33382,varname:node_9817,prsc:2|A-6889-OUT,B-5956-TSL;n:type:ShaderForge.SFN_Time,id:5956,x:29011,y:33474,varname:node_5956,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9362,x:28490,y:33490,ptovrint:False,ptlb:Emissvie Panner Y,ptin:_EmissviePannerY,varname:_Emissvie_Add_01UVEffectPannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:6889,x:28715,y:33354,varname:node_6889,prsc:2|A-3192-OUT,B-9362-OUT;n:type:ShaderForge.SFN_Multiply,id:4470,x:31590,y:33247,varname:node_4470,prsc:2|A-6074-A,B-797-A,C-2053-A;n:type:ShaderForge.SFN_Tex2d,id:9675,x:31827,y:32424,ptovrint:False,ptlb:Emissive_Mask Tex,ptin:_Emissive_MaskTex,varname:node_9675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9535-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4977,x:32454,y:32303,varname:node_4977,prsc:2|A-2393-OUT,B-100-OUT;n:type:ShaderForge.SFN_Multiply,id:8513,x:32373,y:32835,varname:node_8513,prsc:2|A-4470-OUT,B-100-OUT;n:type:ShaderForge.SFN_Slider,id:3923,x:31844,y:33129,ptovrint:False,ptlb:Clip Amount,ptin:_ClipAmount,varname:node_3923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:1193,x:33043,y:33014,varname:node_1193,prsc:2|A-8513-OUT,B-906-OUT;n:type:ShaderForge.SFN_RemapRange,id:906,x:32790,y:33191,varname:node_906,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1018-OUT;n:type:ShaderForge.SFN_OneMinus,id:1018,x:32420,y:33172,varname:node_1018,prsc:2|IN-3923-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:100,x:32191,y:32435,ptovrint:False,ptlb:Emissive_Mask————————————————————————————————————————————————————,ptin:_Emissive_Mask,varname:node_100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7611-OUT,B-9675-A;n:type:ShaderForge.SFN_Vector1,id:7611,x:31993,y:32311,varname:node_7611,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:2127,x:35245,y:33119,ptovrint:False,ptlb:node_4791_copy,ptin:_node_4791_copy,varname:_node_4791_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Panner,id:9535,x:31581,y:32447,varname:node_9535,prsc:2,spu:1,spv:1|UVIN-8961-OUT,DIST-6907-OUT;n:type:ShaderForge.SFN_TexCoord,id:9792,x:31133,y:32265,varname:node_9792,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:4090,x:30760,y:32302,ptovrint:False,ptlb:Emissive_Mask Panner X,ptin:_Emissive_MaskPannerX,varname:_UVEffectTex_01PannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6907,x:31318,y:32502,varname:node_6907,prsc:2|A-3316-OUT,B-1214-TSL;n:type:ShaderForge.SFN_Time,id:1214,x:31044,y:32627,varname:node_1214,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2658,x:30775,y:32535,ptovrint:False,ptlb:Emissive_Mask Panner Y,ptin:_Emissive_MaskPannerY,varname:_UVEffectTex_01PannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:3316,x:31031,y:32407,varname:node_3316,prsc:2|A-4090-OUT,B-2658-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8961,x:31494,y:32097,ptovrint:False,ptlb:Emissive_Mask UV2,ptin:_Emissive_MaskUV2,varname:node_8961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9792-UVOUT,B-4143-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4143,x:31165,y:32007,varname:node_4143,prsc:2,uv:1;proporder:6074-797-3192-9362-6436-9553-9578-100-9675-4090-2658-3923-8961;pass:END;sub:END;*/

Shader "StormFX Studio/Twosided/StormFX_Clip_Mask" {
    Properties {
        _EmissvieTex ("Emissvie Tex", 2D) = "black" {}
        _TintColor ("Emissive Color", Color) = (0.5,0.5,0.5,1)
        _EmissviePannerX ("Emissvie Panner X", Float ) = 0
        _EmissviePannerY ("Emissvie Panner Y", Float ) = 0
        _EmissiveBrightness ("Emissive Brightness", Float ) = 1
        _EmissiveContrast ("Emissive Contrast", Float ) = 1
        _Emissvie_AddUVEffectPower ("Emissvie_Add UV Effect Power", Float ) = 0
        [MaterialToggle] _Emissive_Mask ("Emissive_Mask————————————————————————————————————————————————————", Float ) = 1
        _Emissive_MaskTex ("Emissive_Mask Tex", 2D) = "white" {}
        _Emissive_MaskPannerX ("Emissive_Mask Panner X", Float ) = 0
        _Emissive_MaskPannerY ("Emissive_Mask Panner Y", Float ) = 0
        _ClipAmount ("Clip Amount", Range(0, 1)) = 0
        [MaterialToggle] _Emissive_MaskUV2 ("Emissive_Mask UV2", Float ) = 0
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
            uniform float _EmissiveContrast;
            uniform float _EmissiveBrightness;
            uniform float _EmissviePannerX;
            uniform float _EmissviePannerY;
            uniform sampler2D _Emissive_MaskTex; uniform float4 _Emissive_MaskTex_ST;
            uniform float _ClipAmount;
            uniform fixed _Emissive_Mask;
            uniform float _Emissive_MaskPannerX;
            uniform float _Emissive_MaskPannerY;
            uniform fixed _Emissive_MaskUV2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_5956 = _Time + _TimeEditor;
                float2 node_2757 = (i.uv0+(float2(_EmissviePannerX,_EmissviePannerY)*node_5956.r)*float2(1,1));
                float4 _EmissvieTex_var = tex2D(_EmissvieTex,TRANSFORM_TEX(node_2757, _EmissvieTex));
                float4 node_1214 = _Time + _TimeEditor;
                float2 node_9535 = (lerp( i.uv0, i.uv1, _Emissive_MaskUV2 )+(float2(_Emissive_MaskPannerX,_Emissive_MaskPannerY)*node_1214.r)*float2(1,1));
                float4 _Emissive_MaskTex_var = tex2D(_Emissive_MaskTex,TRANSFORM_TEX(node_9535, _Emissive_MaskTex));
                float _Emissive_Mask_var = lerp( 1.0, _Emissive_MaskTex_var.a, _Emissive_Mask );
                clip((((_EmissvieTex_var.a*_TintColor.a*i.vertexColor.a)*_Emissive_Mask_var)+((1.0 - _ClipAmount)*2.0+-1.0)) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = pow((((_EmissvieTex_var.rgb*_EmissiveBrightness)*i.vertexColor.rgb*_TintColor.rgb*2.0)*_Emissive_Mask_var),_EmissiveContrast);
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
            uniform float _EmissviePannerX;
            uniform float _EmissviePannerY;
            uniform sampler2D _Emissive_MaskTex; uniform float4 _Emissive_MaskTex_ST;
            uniform float _ClipAmount;
            uniform fixed _Emissive_Mask;
            uniform float _Emissive_MaskPannerX;
            uniform float _Emissive_MaskPannerY;
            uniform fixed _Emissive_MaskUV2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_5956 = _Time + _TimeEditor;
                float2 node_2757 = (i.uv0+(float2(_EmissviePannerX,_EmissviePannerY)*node_5956.r)*float2(1,1));
                float4 _EmissvieTex_var = tex2D(_EmissvieTex,TRANSFORM_TEX(node_2757, _EmissvieTex));
                float4 node_1214 = _Time + _TimeEditor;
                float2 node_9535 = (lerp( i.uv0, i.uv1, _Emissive_MaskUV2 )+(float2(_Emissive_MaskPannerX,_Emissive_MaskPannerY)*node_1214.r)*float2(1,1));
                float4 _Emissive_MaskTex_var = tex2D(_Emissive_MaskTex,TRANSFORM_TEX(node_9535, _Emissive_MaskTex));
                float _Emissive_Mask_var = lerp( 1.0, _Emissive_MaskTex_var.a, _Emissive_Mask );
                clip((((_EmissvieTex_var.a*_TintColor.a*i.vertexColor.a)*_Emissive_Mask_var)+((1.0 - _ClipAmount)*2.0+-1.0)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
