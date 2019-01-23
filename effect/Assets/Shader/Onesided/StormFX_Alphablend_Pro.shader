// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1799578,fgcg:0.2352941,fgcb:0.08131487,fgca:1,fgde:0.1,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33401,y:32256,varname:node_4795,prsc:2|emission-3949-OUT,alpha-448-OUT,clip-5046-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31137,y:32287,ptovrint:False,ptlb:Emissvie,ptin:_Emissvie,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-5318-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32217,y:32224,varname:node_2393,prsc:2|A-998-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:30832,y:32485,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31143,y:32672,ptovrint:True,ptlb:Emissive Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:31917,y:32482,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Tex2d,id:993,x:32134,y:33313,ptovrint:False,ptlb:Dissolve Tex,ptin:_DissolveTex,varname:node_993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:41bf95033b5429e44a6088435ed14372,ntxv:0,isnm:False|UVIN-3603-UVOUT;n:type:ShaderForge.SFN_Slider,id:5722,x:31121,y:32971,ptovrint:False,ptlb:Dissolve Amount,ptin:_DissolveAmount,varname:node_5722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:73,x:32448,y:33243,varname:node_73,prsc:2|A-6510-OUT,B-993-A;n:type:ShaderForge.SFN_RemapRange,id:6510,x:31791,y:32985,varname:node_6510,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-3088-OUT;n:type:ShaderForge.SFN_OneMinus,id:3088,x:31551,y:32985,varname:node_3088,prsc:2|IN-5722-OUT;n:type:ShaderForge.SFN_TexCoord,id:6092,x:30628,y:33172,varname:node_6092,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3603,x:31875,y:33414,varname:node_3603,prsc:2,spu:1,spv:1|UVIN-9262-OUT,DIST-9751-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7312,x:30911,y:33424,ptovrint:False,ptlb:Dissolve Panner X,ptin:_DissolvePannerX,varname:node_7312,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9751,x:31538,y:33534,varname:node_9751,prsc:2|A-819-OUT,B-591-TSL;n:type:ShaderForge.SFN_Time,id:591,x:30765,y:33633,varname:node_591,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:3670,x:30902,y:33550,ptovrint:False,ptlb:Dissolve Panner Y,ptin:_DissolvePannerY,varname:_node_7312_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:819,x:31235,y:33428,varname:node_819,prsc:2|A-7312-OUT,B-3670-OUT;n:type:ShaderForge.SFN_Fresnel,id:3452,x:31336,y:31958,varname:node_3452,prsc:2|EXP-3487-OUT;n:type:ShaderForge.SFN_Color,id:1973,x:31045,y:31610,ptovrint:False,ptlb:Emissive_Add Fresnel Color,ptin:_Emissive_AddFresnelColor,varname:node_1973,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:10,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:3159,x:32428,y:31922,varname:node_3159,prsc:2|A-4797-OUT,B-2393-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3487,x:30894,y:31959,ptovrint:False,ptlb:Emissive Add  Fresnel Edge,ptin:_EmissiveAddFresnelEdge,varname:node_3487,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1392,x:31690,y:31821,varname:node_1392,prsc:2|A-3322-OUT,B-3452-OUT;n:type:ShaderForge.SFN_Power,id:3949,x:32765,y:31954,varname:node_3949,prsc:2|VAL-3159-OUT,EXP-9553-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9553,x:32561,y:32153,ptovrint:False,ptlb:Emissive Contrast,ptin:_EmissiveContrast,varname:_Fresnel_amount_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6838,x:30942,y:31778,ptovrint:False,ptlb:Emissive Add  Fresenl Brightness,ptin:_EmissiveAddFresenlBrightness,varname:_Emissive_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:3322,x:31325,y:31638,varname:node_3322,prsc:2|A-1973-RGB,B-6838-OUT;n:type:ShaderForge.SFN_Multiply,id:998,x:31780,y:32165,varname:node_998,prsc:2|A-6074-RGB,B-6436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6436,x:31375,y:32301,ptovrint:False,ptlb:Emissive Brightness,ptin:_EmissiveBrightness,varname:_Fresenl_Power_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8761,x:28792,y:31518,ptovrint:False,ptlb:UV Effect Tex,ptin:_UVEffectTex,varname:node_8761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2b6f0cb630b8724390e4b1f6450aca0,ntxv:0,isnm:False|UVIN-7290-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5463,x:28788,y:31785,ptovrint:False,ptlb:UV Effect Tex_01,ptin:_UVEffectTex_01,varname:_Distortion_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2b6f0cb630b8724390e4b1f6450aca0,ntxv:0,isnm:False|UVIN-4644-UVOUT;n:type:ShaderForge.SFN_Panner,id:7290,x:28404,y:31643,varname:node_7290,prsc:2,spu:1,spv:1|UVIN-1254-UVOUT,DIST-7511-OUT;n:type:ShaderForge.SFN_Panner,id:4644,x:28472,y:31927,varname:node_4644,prsc:2,spu:1,spv:1|UVIN-6412-UVOUT,DIST-6986-OUT;n:type:ShaderForge.SFN_TexCoord,id:1254,x:27714,y:31140,varname:node_1254,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5849,x:27587,y:31326,ptovrint:False,ptlb:UV Effect Tex Panner X,ptin:_UVEffectTexPannerX,varname:_Dissolve_Panner_Y,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7511,x:28118,y:31662,varname:node_7511,prsc:2|A-1760-OUT,B-2917-TSL;n:type:ShaderForge.SFN_Time,id:2917,x:27530,y:31588,varname:node_2917,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5542,x:27587,y:31476,ptovrint:False,ptlb:UV Effect Tex Panner Y,ptin:_UVEffectTexPannerY,varname:_Dissolve_Panner_Z,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:1760,x:27854,y:31406,varname:node_1760,prsc:2|A-5849-OUT,B-5542-OUT;n:type:ShaderForge.SFN_TexCoord,id:6412,x:27906,y:31769,varname:node_6412,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5588,x:27564,y:31937,ptovrint:False,ptlb:UV Effect Tex_01 Panner X,ptin:_UVEffectTex_01PannerX,varname:_Distortion_Panner_Y,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6986,x:28195,y:32108,varname:node_6986,prsc:2|A-4442-OUT,B-6753-TSL;n:type:ShaderForge.SFN_Time,id:6753,x:27600,y:32403,varname:node_6753,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2340,x:27564,y:32187,ptovrint:False,ptlb:UV Effect Tex_01 Panner Y,ptin:_UVEffectTex_01PannerY,varname:_Distortion_Panner_Z,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Append,id:4442,x:27881,y:32051,varname:node_4442,prsc:2|A-5588-OUT,B-2340-OUT;n:type:ShaderForge.SFN_Tex2d,id:1286,x:31011,y:31421,ptovrint:False,ptlb:Emissvie_Add Tex,ptin:_Emissvie_AddTex,varname:_Emissvie_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-2360-OUT;n:type:ShaderForge.SFN_Add,id:4487,x:32095,y:31575,varname:node_4487,prsc:2|A-6010-OUT,B-1392-OUT;n:type:ShaderForge.SFN_Multiply,id:9278,x:29571,y:31718,varname:node_9278,prsc:2|A-8978-OUT,B-9578-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9578,x:29219,y:31945,ptovrint:False,ptlb:Emissvie_Add UV Effect Power,ptin:_Emissvie_AddUVEffectPower,varname:node_9578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:2360,x:30552,y:31818,varname:node_2360,prsc:2|A-9278-OUT,B-341-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6010,x:31580,y:31314,varname:node_6010,prsc:2|A-1377-RGB,B-1286-RGB;n:type:ShaderForge.SFN_Color,id:1377,x:31060,y:31221,ptovrint:False,ptlb:Emissvie_Add Color,ptin:_Emissvie_AddColor,varname:node_1377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:8978,x:29111,y:31665,varname:node_8978,prsc:2|A-8761-R,B-5463-R;n:type:ShaderForge.SFN_Multiply,id:5036,x:30528,y:32769,varname:node_5036,prsc:2|A-8978-OUT,B-5150-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5150,x:30113,y:33202,ptovrint:False,ptlb:Dissolve UV Effect Power,ptin:_DissolveUVEffectPower,varname:_Emissvie_AddUVEffectPower_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:9262,x:30952,y:33140,varname:node_9262,prsc:2|A-5036-OUT,B-6092-UVOUT;n:type:ShaderForge.SFN_Panner,id:2757,x:30344,y:32484,varname:node_2757,prsc:2,spu:1,spv:1|UVIN-6122-UVOUT,DIST-9817-OUT;n:type:ShaderForge.SFN_TexCoord,id:6122,x:29927,y:32455,varname:node_6122,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:3192,x:29320,y:32704,ptovrint:False,ptlb:Emissvie Panner X,ptin:_EmissviePannerX,varname:_Emissvie_Add_01UVEffectPannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9817,x:29904,y:32767,varname:node_9817,prsc:2|A-6889-OUT,B-5956-TSL;n:type:ShaderForge.SFN_Time,id:5956,x:29365,y:33064,varname:node_5956,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9362,x:29317,y:32872,ptovrint:False,ptlb:Emissvie Panner Y,ptin:_EmissviePannerY,varname:_Emissvie_Add_01UVEffectPannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:6889,x:29558,y:32754,varname:node_6889,prsc:2|A-3192-OUT,B-9362-OUT;n:type:ShaderForge.SFN_Multiply,id:6646,x:31821,y:32694,varname:node_6646,prsc:2|A-2053-A,B-797-A,C-6074-A;n:type:ShaderForge.SFN_Multiply,id:448,x:32304,y:32559,varname:node_448,prsc:2|A-6646-OUT,B-1704-OUT;n:type:ShaderForge.SFN_Fresnel,id:1704,x:31916,y:32828,varname:node_1704,prsc:2|EXP-2298-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2298,x:31698,y:32879,ptovrint:False,ptlb:Emissive Fresnel Power,ptin:_EmissiveFresnelPower,varname:_FresnelEdge_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:5318,x:30820,y:32207,varname:node_5318,prsc:2|A-9551-OUT,B-2757-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9551,x:30499,y:32198,varname:node_9551,prsc:2|A-9278-OUT,B-3920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3920,x:30253,y:32237,ptovrint:False,ptlb:Emissive UV Effect Power,ptin:_EmissiveUVEffectPower,varname:node_3920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:9433,x:32436,y:32850,varname:node_9433,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:5046,x:32837,y:32854,ptovrint:False,ptlb:Dissolve——————————————————————————————————————————————————————,ptin:_Dissolve,varname:node_5046,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9433-OUT,B-73-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:5917,x:32280,y:31445,ptovrint:False,ptlb:Emissive_Add——————————————————————————————————————————————————————,ptin:_Emissive_Add,varname:node_5917,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:4797,x:32530,y:31459,varname:node_4797,prsc:2|A-5917-OUT,B-4487-OUT;n:type:ShaderForge.SFN_Panner,id:341,x:30458,y:30953,varname:node_341,prsc:2,spu:1,spv:1|UVIN-6773-UVOUT,DIST-6806-OUT;n:type:ShaderForge.SFN_TexCoord,id:6773,x:29810,y:30927,varname:node_6773,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5181,x:29434,y:31173,ptovrint:False,ptlb:Emissvie_Add Panner X,ptin:_Emissvie_AddPannerX,varname:_EmissviePannerX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6806,x:30018,y:31236,varname:node_6806,prsc:2|A-3884-OUT,B-7144-TSL;n:type:ShaderForge.SFN_Time,id:7144,x:29479,y:31533,varname:node_7144,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8843,x:29431,y:31341,ptovrint:False,ptlb:Emissvie_Add Panner Y,ptin:_Emissvie_AddPannerY,varname:_EmissviePannerY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:3884,x:29672,y:31223,varname:node_3884,prsc:2|A-5181-OUT,B-8843-OUT;proporder:6074-797-3192-9362-6436-9553-3920-2298-8761-5849-5542-5463-5588-2340-5917-1286-1377-5181-8843-9578-3487-1973-6838-5046-993-5722-7312-3670-5150;pass:END;sub:END;*/

Shader "StormFX Studio/Onesided/StormFX_Alphablend_Pro" {
    Properties {
        _Emissvie ("Emissvie", 2D) = "black" {}
        _TintColor ("Emissive Color", Color) = (0.5,0.5,0.5,1)
        _EmissviePannerX ("Emissvie Panner X", Float ) = 0
        _EmissviePannerY ("Emissvie Panner Y", Float ) = 0
        _EmissiveBrightness ("Emissive Brightness", Float ) = 1
        _EmissiveContrast ("Emissive Contrast", Float ) = 1
        _EmissiveUVEffectPower ("Emissive UV Effect Power", Float ) = 0
        _EmissiveFresnelPower ("Emissive Fresnel Power", Float ) = 0
        _UVEffectTex ("UV Effect Tex", 2D) = "white" {}
        _UVEffectTexPannerX ("UV Effect Tex Panner X", Float ) = 1
        _UVEffectTexPannerY ("UV Effect Tex Panner Y", Float ) = 1
        _UVEffectTex_01 ("UV Effect Tex_01", 2D) = "white" {}
        _UVEffectTex_01PannerX ("UV Effect Tex_01 Panner X", Float ) = -1
        _UVEffectTex_01PannerY ("UV Effect Tex_01 Panner Y", Float ) = -1
        [MaterialToggle] _Emissive_Add ("Emissive_Add——————————————————————————————————————————————————————", Float ) = 0
        _Emissvie_AddTex ("Emissvie_Add Tex", 2D) = "black" {}
        _Emissvie_AddColor ("Emissvie_Add Color", Color) = (0,0,0,1)
        _Emissvie_AddPannerX ("Emissvie_Add Panner X", Float ) = 0
        _Emissvie_AddPannerY ("Emissvie_Add Panner Y", Float ) = 0
        _Emissvie_AddUVEffectPower ("Emissvie_Add UV Effect Power", Float ) = 1
        _EmissiveAddFresnelEdge ("Emissive Add  Fresnel Edge", Float ) = 1
        _Emissive_AddFresnelColor ("Emissive_Add Fresnel Color", Color) = (10,1,1,1)
        _EmissiveAddFresenlBrightness ("Emissive Add  Fresenl Brightness", Float ) = 0
        [MaterialToggle] _Dissolve ("Dissolve——————————————————————————————————————————————————————", Float ) = 0.5
        _DissolveTex ("Dissolve Tex", 2D) = "white" {}
        _DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0
        _DissolvePannerX ("Dissolve Panner X", Float ) = 0
        _DissolvePannerY ("Dissolve Panner Y", Float ) = 0
        _DissolveUVEffectPower ("Dissolve UV Effect Power", Float ) = 0
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Emissvie; uniform float4 _Emissvie_ST;
            uniform float4 _TintColor;
            uniform sampler2D _DissolveTex; uniform float4 _DissolveTex_ST;
            uniform float _DissolveAmount;
            uniform float _DissolvePannerX;
            uniform float _DissolvePannerY;
            uniform float4 _Emissive_AddFresnelColor;
            uniform float _EmissiveAddFresnelEdge;
            uniform float _EmissiveContrast;
            uniform float _EmissiveAddFresenlBrightness;
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
            uniform float _DissolveUVEffectPower;
            uniform float _EmissviePannerX;
            uniform float _EmissviePannerY;
            uniform float _EmissiveFresnelPower;
            uniform float _EmissiveUVEffectPower;
            uniform fixed _Dissolve;
            uniform fixed _Emissive_Add;
            uniform float _Emissvie_AddPannerX;
            uniform float _Emissvie_AddPannerY;
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
                float4 node_591 = _Time + _TimeEditor;
                float4 node_2917 = _Time + _TimeEditor;
                float2 node_7290 = (i.uv0+(float2(_UVEffectTexPannerX,_UVEffectTexPannerY)*node_2917.r)*float2(1,1));
                float4 _UVEffectTex_var = tex2D(_UVEffectTex,TRANSFORM_TEX(node_7290, _UVEffectTex));
                float4 node_6753 = _Time + _TimeEditor;
                float2 node_4644 = (i.uv0+(float2(_UVEffectTex_01PannerX,_UVEffectTex_01PannerY)*node_6753.r)*float2(1,1));
                float4 _UVEffectTex_01_var = tex2D(_UVEffectTex_01,TRANSFORM_TEX(node_4644, _UVEffectTex_01));
                float node_8978 = (_UVEffectTex_var.r+_UVEffectTex_01_var.r);
                float2 node_3603 = (((node_8978*_DissolveUVEffectPower)+i.uv0)+(float2(_DissolvePannerX,_DissolvePannerY)*node_591.r)*float2(1,1));
                float4 _DissolveTex_var = tex2D(_DissolveTex,TRANSFORM_TEX(node_3603, _DissolveTex));
                clip(lerp( 1.0, (((1.0 - _DissolveAmount)*1.0+-0.5)+_DissolveTex_var.a), _Dissolve ) - 0.5);
////// Lighting:
////// Emissive:
                float node_9278 = (node_8978*_Emissvie_AddUVEffectPower);
                float4 node_7144 = _Time + _TimeEditor;
                float2 node_2360 = (node_9278+(i.uv0+(float2(_Emissvie_AddPannerX,_Emissvie_AddPannerY)*node_7144.r)*float2(1,1)));
                float4 _Emissvie_AddTex_var = tex2D(_Emissvie_AddTex,TRANSFORM_TEX(node_2360, _Emissvie_AddTex));
                float4 node_5956 = _Time + _TimeEditor;
                float2 node_5318 = ((node_9278*_EmissiveUVEffectPower)+(i.uv0+(float2(_EmissviePannerX,_EmissviePannerY)*node_5956.r)*float2(1,1)));
                float4 _Emissvie_var = tex2D(_Emissvie,TRANSFORM_TEX(node_5318, _Emissvie));
                float3 emissive = pow(((_Emissive_Add*((_Emissvie_AddColor.rgb*_Emissvie_AddTex_var.rgb)+((_Emissive_AddFresnelColor.rgb*_EmissiveAddFresenlBrightness)*pow(1.0-max(0,dot(normalDirection, viewDirection)),_EmissiveAddFresnelEdge))))+((_Emissvie_var.rgb*_EmissiveBrightness)*i.vertexColor.rgb*_TintColor.rgb*2.0)),_EmissiveContrast);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,((i.vertexColor.a*_TintColor.a*_Emissvie_var.a)*pow(1.0-max(0,dot(normalDirection, viewDirection)),_EmissiveFresnelPower)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
