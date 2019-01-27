// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1799578,fgcg:0.2352941,fgcb:0.08131487,fgca:1,fgde:0.1,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4795,x:33401,y:32256,varname:node_4795,prsc:2|emission-3949-OUT,clip-1193-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:29838,y:33438,ptovrint:False,ptlb:Emissvie Tex,ptin:_EmissvieTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-5318-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:31333,y:33012,varname:node_2393,prsc:2|A-998-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:30049,y:33015,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:30732,y:33281,ptovrint:True,ptlb:Emissive Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:31128,y:33165,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Fresnel,id:3452,x:31032,y:32122,varname:node_3452,prsc:2|EXP-3487-OUT;n:type:ShaderForge.SFN_Color,id:1973,x:30800,y:31790,ptovrint:False,ptlb:Emissive_Add Fresnel Color,ptin:_Emissive_AddFresnelColor,varname:node_1973,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:10,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:3159,x:32115,y:32057,varname:node_3159,prsc:2|A-4487-OUT,B-2393-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3487,x:30590,y:32123,ptovrint:False,ptlb:Emissive_Add Fresnel Edge,ptin:_Emissive_AddFresnelEdge,varname:node_3487,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1392,x:31386,y:31985,varname:node_1392,prsc:2|A-3322-OUT,B-3452-OUT;n:type:ShaderForge.SFN_Power,id:3949,x:32923,y:32355,varname:node_3949,prsc:2|VAL-4977-OUT,EXP-9553-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9553,x:32557,y:32650,ptovrint:False,ptlb:Emissive Contrast,ptin:_EmissiveContrast,varname:_Fresnel_amount_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6838,x:30825,y:32025,ptovrint:False,ptlb:Emissive_Add Fresenl Brightness,ptin:_Emissive_AddFresenlBrightness,varname:_Emissive_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:3322,x:31109,y:31848,varname:node_3322,prsc:2|A-1973-RGB,B-6838-OUT;n:type:ShaderForge.SFN_Multiply,id:998,x:30600,y:32698,varname:node_998,prsc:2|A-6074-RGB,B-6436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6436,x:30299,y:32720,ptovrint:False,ptlb:Emissive Brightness,ptin:_EmissiveBrightness,varname:_Fresenl_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8761,x:29272,y:31778,ptovrint:False,ptlb:UV Effect Tex————————————————————————————————————————————————————,ptin:_UVEffectTex,varname:node_8761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2b6f0cb630b8724390e4b1f6450aca0,ntxv:0,isnm:False|UVIN-7290-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5463,x:29288,y:32161,ptovrint:False,ptlb:UV Effect Tex_01,ptin:_UVEffectTex_01,varname:_Distortion_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2b6f0cb630b8724390e4b1f6450aca0,ntxv:0,isnm:False|UVIN-4644-UVOUT;n:type:ShaderForge.SFN_Panner,id:7290,x:29045,y:31768,varname:node_7290,prsc:2,spu:1,spv:1|UVIN-1254-UVOUT,DIST-7511-OUT;n:type:ShaderForge.SFN_Panner,id:4644,x:28979,y:32188,varname:node_4644,prsc:2,spu:1,spv:1|UVIN-6412-UVOUT,DIST-6986-OUT;n:type:ShaderForge.SFN_TexCoord,id:1254,x:28571,y:31376,varname:node_1254,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5849,x:28302,y:31512,ptovrint:False,ptlb:UV Effect Tex Panner X,ptin:_UVEffectTexPannerX,varname:_Dissolve_Panner_Y,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7511,x:28759,y:31787,varname:node_7511,prsc:2|A-1760-OUT,B-2917-TSL;n:type:ShaderForge.SFN_Time,id:2917,x:28421,y:31812,varname:node_2917,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5542,x:28302,y:31662,ptovrint:False,ptlb:UV Effect Tex Panner Y,ptin:_UVEffectTexPannerY,varname:_Dissolve_Panner_Z,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:1760,x:28569,y:31592,varname:node_1760,prsc:2|A-5849-OUT,B-5542-OUT;n:type:ShaderForge.SFN_TexCoord,id:6412,x:28529,y:32006,varname:node_6412,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5588,x:28059,y:32021,ptovrint:False,ptlb:UV Effect Tex_01 Panner X,ptin:_UVEffectTex_01PannerX,varname:_Distortion_Panner_Y,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6986,x:28617,y:32221,varname:node_6986,prsc:2|A-4442-OUT,B-6753-TSL;n:type:ShaderForge.SFN_Time,id:6753,x:28343,y:32346,varname:node_6753,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2340,x:28074,y:32254,ptovrint:False,ptlb:UV Effect Tex_01 Panner Y,ptin:_UVEffectTex_01PannerY,varname:_Distortion_Panner_Z,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Append,id:4442,x:28330,y:32126,varname:node_4442,prsc:2|A-5588-OUT,B-2340-OUT;n:type:ShaderForge.SFN_TexCoord,id:3469,x:30342,y:31668,varname:node_3469,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:1286,x:30773,y:31576,ptovrint:False,ptlb:Emissvie_Add Tex,ptin:_Emissvie_AddTex,varname:_Emissvie_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-2360-OUT;n:type:ShaderForge.SFN_Add,id:4487,x:31787,y:31908,varname:node_4487,prsc:2|A-9932-OUT,B-1392-OUT;n:type:ShaderForge.SFN_Multiply,id:9278,x:30210,y:31412,varname:node_9278,prsc:2|A-8978-OUT,B-9578-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9578,x:29981,y:31301,ptovrint:False,ptlb:Emissvie_Add UV Effect Power,ptin:_Emissvie_AddUVEffectPower,varname:node_9578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:2360,x:30544,y:31575,varname:node_2360,prsc:2|A-9278-OUT,B-3469-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6010,x:31157,y:31479,varname:node_6010,prsc:2|A-1377-RGB,B-1286-RGB;n:type:ShaderForge.SFN_Color,id:1377,x:30787,y:31387,ptovrint:False,ptlb:Emissvie_Add Color,ptin:_Emissvie_AddColor,varname:node_1377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:8978,x:29621,y:31973,varname:node_8978,prsc:2|A-8761-R,B-5463-R;n:type:ShaderForge.SFN_Panner,id:2757,x:29423,y:33184,varname:node_2757,prsc:2,spu:1,spv:1|UVIN-6122-UVOUT,DIST-9817-OUT;n:type:ShaderForge.SFN_TexCoord,id:6122,x:28788,y:33053,varname:node_6122,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:3192,x:28511,y:33245,ptovrint:False,ptlb:Emissvie Panner X,ptin:_EmissviePannerX,varname:_Emissvie_Add_01UVEffectPannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9817,x:29260,y:33382,varname:node_9817,prsc:2|A-6889-OUT,B-5956-TSL;n:type:ShaderForge.SFN_Time,id:5956,x:29011,y:33474,varname:node_5956,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9362,x:28490,y:33490,ptovrint:False,ptlb:Emissvie Panner Y,ptin:_EmissviePannerY,varname:_Emissvie_Add_01UVEffectPannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:6889,x:28715,y:33354,varname:node_6889,prsc:2|A-3192-OUT,B-9362-OUT;n:type:ShaderForge.SFN_Add,id:5318,x:29631,y:33080,varname:node_5318,prsc:2|A-9551-OUT,B-2757-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9551,x:29145,y:32848,varname:node_9551,prsc:2|A-8978-OUT,B-3920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3920,x:28793,y:32855,ptovrint:False,ptlb:Emissive UV Effect Power,ptin:_EmissiveUVEffectPower,varname:node_3920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4470,x:31590,y:33247,varname:node_4470,prsc:2|A-6074-A,B-797-A,C-2053-A;n:type:ShaderForge.SFN_ToggleProperty,id:7120,x:31102,y:31703,ptovrint:False,ptlb:Emissive_Add————————————————————————————————————————————————————,ptin:_Emissive_Add,varname:node_7120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:9932,x:31470,y:31587,varname:node_9932,prsc:2|A-6010-OUT,B-7120-OUT;n:type:ShaderForge.SFN_Tex2d,id:9675,x:31827,y:32424,ptovrint:False,ptlb:Emissive_Mask Tex,ptin:_Emissive_MaskTex,varname:node_9675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9535-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4977,x:32454,y:32303,varname:node_4977,prsc:2|A-3159-OUT,B-100-OUT;n:type:ShaderForge.SFN_Multiply,id:8513,x:32373,y:32835,varname:node_8513,prsc:2|A-4470-OUT,B-100-OUT;n:type:ShaderForge.SFN_Slider,id:3923,x:31844,y:33129,ptovrint:False,ptlb:Clip Amount,ptin:_ClipAmount,varname:node_3923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:1193,x:33043,y:33014,varname:node_1193,prsc:2|A-8513-OUT,B-906-OUT;n:type:ShaderForge.SFN_RemapRange,id:906,x:32790,y:33191,varname:node_906,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1018-OUT;n:type:ShaderForge.SFN_OneMinus,id:1018,x:32420,y:33172,varname:node_1018,prsc:2|IN-3923-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:100,x:32191,y:32435,ptovrint:False,ptlb:Emissive_Mask————————————————————————————————————————————————————,ptin:_Emissive_Mask,varname:node_100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7611-OUT,B-9675-A;n:type:ShaderForge.SFN_Vector1,id:7611,x:31993,y:32311,varname:node_7611,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:2127,x:35245,y:33119,ptovrint:False,ptlb:node_4791_copy,ptin:_node_4791_copy,varname:_node_4791_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Panner,id:9535,x:31581,y:32447,varname:node_9535,prsc:2,spu:1,spv:1|UVIN-9792-UVOUT,DIST-6907-OUT;n:type:ShaderForge.SFN_TexCoord,id:9792,x:31132,y:32265,varname:node_9792,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:4090,x:30760,y:32302,ptovrint:False,ptlb:Emissive_Mask Panner X,ptin:_Emissive_MaskPannerX,varname:_UVEffectTex_01PannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6907,x:31318,y:32502,varname:node_6907,prsc:2|A-3316-OUT,B-1214-TSL;n:type:ShaderForge.SFN_Time,id:1214,x:31044,y:32627,varname:node_1214,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2658,x:30775,y:32535,ptovrint:False,ptlb:Emissive_Mask Panner Y,ptin:_Emissive_MaskPannerY,varname:_UVEffectTex_01PannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:3316,x:31031,y:32407,varname:node_3316,prsc:2|A-4090-OUT,B-2658-OUT;proporder:6074-797-3192-9362-6436-9553-3920-8761-5849-5542-5463-5588-2340-7120-1286-1377-9578-1973-3487-6838-100-9675-4090-2658-3923;pass:END;sub:END;*/

Shader "StormFX Studio/Onesided/StormFX_Clip_Mask_UVEffect" {
    Properties {
        _EmissvieTex ("Emissvie Tex", 2D) = "black" {}
        _TintColor ("Emissive Color", Color) = (0.5,0.5,0.5,1)
        _EmissviePannerX ("Emissvie Panner X", Float ) = 0
        _EmissviePannerY ("Emissvie Panner Y", Float ) = 0
        _EmissiveBrightness ("Emissive Brightness", Float ) = 1
        _EmissiveContrast ("Emissive Contrast", Float ) = 1
        _EmissiveUVEffectPower ("Emissive UV Effect Power", Float ) = 0
        _UVEffectTex ("UV Effect Tex————————————————————————————————————————————————————", 2D) = "white" {}
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
        [MaterialToggle] _Emissive_Mask ("Emissive_Mask————————————————————————————————————————————————————", Float ) = 1
        _Emissive_MaskTex ("Emissive_Mask Tex", 2D) = "white" {}
        _Emissive_MaskPannerX ("Emissive_Mask Panner X", Float ) = 0
        _Emissive_MaskPannerY ("Emissive_Mask Panner Y", Float ) = 0
        _ClipAmount ("Clip Amount", Range(0, 1)) = 0
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
            uniform sampler2D _Emissive_MaskTex; uniform float4 _Emissive_MaskTex_ST;
            uniform float _ClipAmount;
            uniform fixed _Emissive_Mask;
            uniform float _Emissive_MaskPannerX;
            uniform float _Emissive_MaskPannerY;
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
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
                float4 node_1214 = _Time + _TimeEditor;
                float2 node_9535 = (i.uv0+(float2(_Emissive_MaskPannerX,_Emissive_MaskPannerY)*node_1214.r)*float2(1,1));
                float4 _Emissive_MaskTex_var = tex2D(_Emissive_MaskTex,TRANSFORM_TEX(node_9535, _Emissive_MaskTex));
                float _Emissive_Mask_var = lerp( 1.0, _Emissive_MaskTex_var.a, _Emissive_Mask );
                clip((((_EmissvieTex_var.a*_TintColor.a*i.vertexColor.a)*_Emissive_Mask_var)+((1.0 - _ClipAmount)*2.0+-1.0)) - 0.5);
////// Lighting:
////// Emissive:
                float2 node_2360 = ((node_8978*_Emissvie_AddUVEffectPower)+i.uv0);
                float4 _Emissvie_AddTex_var = tex2D(_Emissvie_AddTex,TRANSFORM_TEX(node_2360, _Emissvie_AddTex));
                float3 emissive = pow((((((_Emissvie_AddColor.rgb*_Emissvie_AddTex_var.rgb)*_Emissive_Add)+((_Emissive_AddFresnelColor.rgb*_Emissive_AddFresenlBrightness)*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Emissive_AddFresnelEdge)))+((_EmissvieTex_var.rgb*_EmissiveBrightness)*i.vertexColor.rgb*_TintColor.rgb*2.0))*_Emissive_Mask_var),_EmissiveContrast);
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
            uniform sampler2D _Emissive_MaskTex; uniform float4 _Emissive_MaskTex_ST;
            uniform float _ClipAmount;
            uniform fixed _Emissive_Mask;
            uniform float _Emissive_MaskPannerX;
            uniform float _Emissive_MaskPannerY;
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
            float4 frag(VertexOutput i) : COLOR {
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
                float4 node_1214 = _Time + _TimeEditor;
                float2 node_9535 = (i.uv0+(float2(_Emissive_MaskPannerX,_Emissive_MaskPannerY)*node_1214.r)*float2(1,1));
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