// ======================================================================
// sample.v generated from TopDesign.cysch
// 01/11/2016 at 10:09
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_TMA4 2
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 3
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC5LP 4
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PANTHER 5
`define CYDEV_CHIP_REV_PANTHER_PRODUCTION 1
`define CYDEV_CHIP_REV_PANTHER_ES1 1
`define CYDEV_CHIP_REV_PANTHER_ES0 0
`define CYDEV_CHIP_DIE_EXPECT 4
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 4
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_MEMBER_4G 2
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 3
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 4
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 5
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 6
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 7
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 8
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 9
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 10
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 11
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4F 12
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4M 13
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 14
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 15
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4C 16
`define CYDEV_CHIP_REVISION_4C_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_MEMBER_5B 17
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 18
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 17
`define CYDEV_CHIP_REVISION_USED 0
// Component: ADC_AMUX_v2_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0\ADC_AMUX_v2_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0\ADC_AMUX_v2_0.v"
`endif

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: cy_vref_v1_60
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60\cy_vref_v1_60.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_vref_v1_60\cy_vref_v1_60.v"
`endif

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// ADC_SAR_v3_0(ADC_Clock=0, ADC_Clock_Frequency=10105264, ADC_Input_Range=1, ADC_Power=0, ADC_Reference=0, ADC_Resolution=12, ADC_SampleMode=2, Enable_next_out=true, Ref_Voltage=2.5, Ref_Voltage_mV=2500, rm_int=true, Sample_Precharge=4, Sample_Rate=0, Sample_Rate_def=631579, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=ADC_SAR_v3_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=AD_konverter:SAR, CY_INSTANCE_SHORT_NAME=SAR, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP1, INSTANCE_NAME=AD_konverter_SAR, )
module ADC_SAR_v3_0_0 (
    vplus,
    vminus,
    soc,
    eoc,
    aclk,
    vdac_ref,
    eos);
    inout       vplus;
    electrical  vplus;
    inout       vminus;
    electrical  vminus;
    input       soc;
    output      eoc;
    input       aclk;
    inout       vdac_ref;
    electrical  vdac_ref;
    output      eos;


          wire [3:0] vp_ctl;
          wire [3:0] vn_ctl;
          wire  Net_381;
    electrical  Net_255;
    electrical  Net_267;
    electrical  Net_210;
    electrical  Net_209;
          wire [11:0] Net_207;
          wire  Net_252;
          wire  Net_205;
          wire  Net_378;
          wire  Net_376;
    electrical  Net_368;
    electrical  Net_235;
    electrical  Net_216;
    electrical  Net_233;
          wire  Net_221;
    electrical  Net_248;
    electrical  Net_257;
    electrical  Net_149;
    electrical  Net_126;
    electrical  Net_215;
          wire  Net_188;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Net_248, Net_235);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;

    ZeroTerminal ZeroTerminal_1 (
        .z(vp_ctl[0]));

    ZeroTerminal ZeroTerminal_2 (
        .z(vp_ctl[2]));

    ZeroTerminal ZeroTerminal_3 (
        .z(vn_ctl[1]));

    ZeroTerminal ZeroTerminal_4 (
        .z(vn_ctl[3]));

    ZeroTerminal ZeroTerminal_5 (
        .z(vp_ctl[1]));

    ZeroTerminal ZeroTerminal_6 (
        .z(vp_ctl[3]));

    ZeroTerminal ZeroTerminal_7 (
        .z(vn_ctl[0]));

    ZeroTerminal ZeroTerminal_8 (
        .z(vn_ctl[2]));

	// Clock_VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_188 = aclk;

    cy_psoc5_sar_v2_0 ADC_SAR (
        .clock(Net_188),
        .sof_udb(soc),
        .clk_udb(),
        .vp_ctl_udb(vp_ctl[3:0]),
        .vn_ctl_udb(vn_ctl[3:0]),
        .vplus(vplus),
        .vminus(Net_126),
        .irq(Net_252),
        .data_out(Net_207[11:0]),
        .eof_udb(eoc),
        .pump_clock(Net_188),
        .ext_pin(Net_215),
        .vrefhi_out(Net_257),
        .vref(Net_248),
        .next_out(eos));

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_215, Net_209);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_126, Net_149);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 noconnect (
        .noconnect(Net_209));

	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(Net_257, Net_149);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_255));


	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("4720866E-BC14-478d-B8A0-3E44F38CADAC"),
		  .name("Vdda/2"))
		vRef_Vdda_1
		 (.vout(Net_235));


    cy_analog_noconnect_v1_0 noconnect_1 (
        .noconnect(Net_368));


    assign Net_221 = Net_376 | Net_381;

    assign Net_381 = 1'h0;



endmodule

// Component: bADC_SAR_SEQ_v2_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0\bADC_SAR_SEQ_v2_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0\bADC_SAR_SEQ_v2_0.v"
`endif

// Component: cy_sync_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`endif

// ADC_SAR_SEQ_v2_0(ADC_Clock_Frequency=1280000, Adjust=0, ClockSource=0, InputRange=1, NumChannels=4, Reference=0, Resolution=12, rm_int=false, SampleMode=2, SamplePrecharge=4, SampleRate=80000, SampleRate_def=631579, VrefValue=2.5, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=ADC_SAR_SEQ_v2_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=AD_konverter, CY_INSTANCE_SHORT_NAME=AD_konverter, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP1, INSTANCE_NAME=AD_konverter, )
module ADC_SAR_SEQ_v2_0_1 (
    soc,
    aclk,
    sdone,
    eoc,
    AIN3,
    AIN_31,
    AIN_30,
    AIN_21,
    AIN_20,
    AIN1,
    AIN_10,
    AIN_40,
    AIN_41,
    AIN_50,
    AIN_51,
    AIN5,
    AIN_60,
    AIN_61,
    AIN_70,
    AIN_71,
    AIN7,
    AIN_80,
    AIN_81,
    AIN_90,
    AIN_91,
    AIN9,
    AIN_100,
    AIN_101,
    AIN_110,
    AIN_111,
    AIN11,
    AIN_120,
    AIN_121,
    AIN_130,
    AIN_131,
    AIN13,
    AIN_140,
    AIN_141,
    AIN_150,
    AIN_151,
    AIN15,
    AIN_160,
    AIN_161,
    AIN_170,
    AIN_171,
    AIN17,
    AIN_180,
    AIN_181,
    AIN_190,
    AIN_191,
    AIN19,
    AIN_200,
    AIN_201,
    AIN_210,
    AIN_211,
    AIN21,
    AIN_220,
    AIN_221,
    AIN_230,
    AIN_231,
    AIN23,
    AIN_240,
    AIN_241,
    AIN_250,
    AIN_251,
    AIN25,
    AIN_260,
    AIN_261,
    AIN_270,
    AIN_271,
    AIN27,
    AIN_280,
    AIN_281,
    AIN_290,
    AIN_291,
    AIN29,
    AIN_300,
    AIN_301,
    AIN_310,
    AIN_311,
    AIN31,
    AIN_320,
    AIN_321,
    AIN49,
    AIN50,
    AIN51,
    AIN52,
    AIN53,
    AIN54,
    AIN55,
    AIN56,
    AIN57,
    AIN58,
    AIN59,
    AIN60,
    AIN61,
    AIN62,
    AIN63,
    AIN64,
    vdac_ref);
    input       soc;
    input       aclk;
    output      sdone;
    output      eoc;
    inout       AIN3;
    electrical  AIN3;
    inout       AIN_31;
    electrical  AIN_31;
    inout       AIN_30;
    electrical  AIN_30;
    inout       AIN_21;
    electrical  AIN_21;
    inout       AIN_20;
    electrical  AIN_20;
    inout       AIN1;
    electrical  AIN1;
    inout       AIN_10;
    electrical  AIN_10;
    inout       AIN_40;
    electrical  AIN_40;
    inout       AIN_41;
    electrical  AIN_41;
    inout       AIN_50;
    electrical  AIN_50;
    inout       AIN_51;
    electrical  AIN_51;
    inout       AIN5;
    electrical  AIN5;
    inout       AIN_60;
    electrical  AIN_60;
    inout       AIN_61;
    electrical  AIN_61;
    inout       AIN_70;
    electrical  AIN_70;
    inout       AIN_71;
    electrical  AIN_71;
    inout       AIN7;
    electrical  AIN7;
    inout       AIN_80;
    electrical  AIN_80;
    inout       AIN_81;
    electrical  AIN_81;
    inout       AIN_90;
    electrical  AIN_90;
    inout       AIN_91;
    electrical  AIN_91;
    inout       AIN9;
    electrical  AIN9;
    inout       AIN_100;
    electrical  AIN_100;
    inout       AIN_101;
    electrical  AIN_101;
    inout       AIN_110;
    electrical  AIN_110;
    inout       AIN_111;
    electrical  AIN_111;
    inout       AIN11;
    electrical  AIN11;
    inout       AIN_120;
    electrical  AIN_120;
    inout       AIN_121;
    electrical  AIN_121;
    inout       AIN_130;
    electrical  AIN_130;
    inout       AIN_131;
    electrical  AIN_131;
    inout       AIN13;
    electrical  AIN13;
    inout       AIN_140;
    electrical  AIN_140;
    inout       AIN_141;
    electrical  AIN_141;
    inout       AIN_150;
    electrical  AIN_150;
    inout       AIN_151;
    electrical  AIN_151;
    inout       AIN15;
    electrical  AIN15;
    inout       AIN_160;
    electrical  AIN_160;
    inout       AIN_161;
    electrical  AIN_161;
    inout       AIN_170;
    electrical  AIN_170;
    inout       AIN_171;
    electrical  AIN_171;
    inout       AIN17;
    electrical  AIN17;
    inout       AIN_180;
    electrical  AIN_180;
    inout       AIN_181;
    electrical  AIN_181;
    inout       AIN_190;
    electrical  AIN_190;
    inout       AIN_191;
    electrical  AIN_191;
    inout       AIN19;
    electrical  AIN19;
    inout       AIN_200;
    electrical  AIN_200;
    inout       AIN_201;
    electrical  AIN_201;
    inout       AIN_210;
    electrical  AIN_210;
    inout       AIN_211;
    electrical  AIN_211;
    inout       AIN21;
    electrical  AIN21;
    inout       AIN_220;
    electrical  AIN_220;
    inout       AIN_221;
    electrical  AIN_221;
    inout       AIN_230;
    electrical  AIN_230;
    inout       AIN_231;
    electrical  AIN_231;
    inout       AIN23;
    electrical  AIN23;
    inout       AIN_240;
    electrical  AIN_240;
    inout       AIN_241;
    electrical  AIN_241;
    inout       AIN_250;
    electrical  AIN_250;
    inout       AIN_251;
    electrical  AIN_251;
    inout       AIN25;
    electrical  AIN25;
    inout       AIN_260;
    electrical  AIN_260;
    inout       AIN_261;
    electrical  AIN_261;
    inout       AIN_270;
    electrical  AIN_270;
    inout       AIN_271;
    electrical  AIN_271;
    inout       AIN27;
    electrical  AIN27;
    inout       AIN_280;
    electrical  AIN_280;
    inout       AIN_281;
    electrical  AIN_281;
    inout       AIN_290;
    electrical  AIN_290;
    inout       AIN_291;
    electrical  AIN_291;
    inout       AIN29;
    electrical  AIN29;
    inout       AIN_300;
    electrical  AIN_300;
    inout       AIN_301;
    electrical  AIN_301;
    inout       AIN_310;
    electrical  AIN_310;
    inout       AIN_311;
    electrical  AIN_311;
    inout       AIN31;
    electrical  AIN31;
    inout       AIN_320;
    electrical  AIN_320;
    inout       AIN_321;
    electrical  AIN_321;
    inout       AIN49;
    electrical  AIN49;
    inout       AIN50;
    electrical  AIN50;
    inout       AIN51;
    electrical  AIN51;
    inout       AIN52;
    electrical  AIN52;
    inout       AIN53;
    electrical  AIN53;
    inout       AIN54;
    electrical  AIN54;
    inout       AIN55;
    electrical  AIN55;
    inout       AIN56;
    electrical  AIN56;
    inout       AIN57;
    electrical  AIN57;
    inout       AIN58;
    electrical  AIN58;
    inout       AIN59;
    electrical  AIN59;
    inout       AIN60;
    electrical  AIN60;
    inout       AIN61;
    electrical  AIN61;
    inout       AIN62;
    electrical  AIN62;
    inout       AIN63;
    electrical  AIN63;
    inout       AIN64;
    electrical  AIN64;
    inout       vdac_ref;
    electrical  vdac_ref;


    electrical  V_single;
    electrical  V_diff1;
          wire [5:0] ch_addr;
    electrical  V_diff0;
          wire  nrq;
          wire  clock;
          wire  soc_out;
          wire  Net_3905;
          wire  Net_3867;
          wire  Net_3716;
          wire  Net_3823;
          wire  Net_3822;
          wire  Net_3821;
    electrical  Net_3934;
    electrical  Net_3939;
          wire  Net_3710;
          wire  Net_3935;
          wire  Net_3830;
          wire  Net_3698;
          wire  Net_3874;
    electrical  Net_2803;

    // -- AMuxHw AMuxHw_2 start -- ***
    
    // -- AMuxHw Decoder Start--
    
    reg [63:0] AMuxHw_2_Decoder_one_hot;
    reg [5:0] AMuxHw_2_Decoder_old_id;
    wire  AMuxHw_2_Decoder_is_active;
    wire  AMuxHw_2_Decoder_enable;
    
    assign AMuxHw_2_Decoder_enable = 1'b1;
    
    genvar AMuxHw_2_Decoder_i;
    
    assign AMuxHw_2_Decoder_is_active = (ch_addr[5:0] == AMuxHw_2_Decoder_old_id) && AMuxHw_2_Decoder_enable;
    
    always @(posedge clock)
    begin
        AMuxHw_2_Decoder_old_id = ch_addr[5:0];
    end
    
    generate
        for (AMuxHw_2_Decoder_i = 0; AMuxHw_2_Decoder_i < 64; AMuxHw_2_Decoder_i = AMuxHw_2_Decoder_i + 1 )
        begin : AMuxHw_2_OutBit
            always @(posedge clock)
            begin
                AMuxHw_2_Decoder_one_hot[AMuxHw_2_Decoder_i] <= (AMuxHw_2_Decoder_old_id == AMuxHw_2_Decoder_i) && AMuxHw_2_Decoder_is_active;
            end
        end
    endgenerate
    
    // -- AMuxHw Decoder End--
    
    // -- AMuxHw Primitive A --
    
    cy_psoc3_amux_v1_0 #(
        .muxin_width(64),
        .hw_control(1),
        .one_active(1),
        .init_mux_sel(64'h0),
        .api_type(2'b10))
        AMuxHw_2(
        .muxin({
            AIN64,
            AIN63,
            AIN62,
            AIN61,
            AIN60,
            AIN59,
            AIN58,
            AIN57,
            AIN56,
            AIN55,
            AIN54,
            AIN53,
            AIN52,
            AIN51,
            AIN50,
            AIN49,
            AIN_321,
            AIN31,
            AIN_310,
            AIN_301,
            AIN29,
            AIN_290,
            AIN_281,
            AIN27,
            AIN_270,
            AIN_261,
            AIN25,
            AIN_250,
            AIN_241,
            AIN23,
            AIN_230,
            AIN_221,
            AIN21,
            AIN_210,
            AIN_201,
            AIN19,
            AIN_190,
            AIN_181,
            AIN17,
            AIN_170,
            AIN_161,
            AIN15,
            AIN_150,
            AIN_141,
            AIN13,
            AIN_130,
            AIN_121,
            AIN11,
            AIN_110,
            AIN_101,
            AIN9,
            AIN_90,
            AIN_81,
            AIN7,
            AIN_70,
            AIN_61,
            AIN5,
            AIN_50,
            AIN_41,
            AIN3,
            AIN_30,
            AIN_21,
            AIN1,
            AIN_10
            }),
        .hw_ctrl_en(AMuxHw_2_Decoder_one_hot[63:0]),
        .vout(V_single)
        );
    
    // -- AMuxHw AMuxHw_2 end -- ***

    ADC_SAR_v3_0_0 SAR (
        .vplus(Net_2803),
        .vminus(Net_3939),
        .soc(soc_out),
        .eoc(Net_3830),
        .aclk(clock),
        .vdac_ref(Net_3934),
        .eos(sdone));

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_2803, V_single);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    bADC_SAR_SEQ_v2_0 bSAR_SEQ (
        .clock(clock),
        .ch_addr(ch_addr[5:0]),
        .eoc(eoc),
        .eos(sdone),
        .nrq(Net_3935),
        .bus_clock(Net_3710),
        .soc(soc),
        .soc_out(soc_out),
        .sar_eoc(Net_3830));
    defparam bSAR_SEQ.NumChannels = 4;
    defparam bSAR_SEQ.SampleMode = 2;

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign clock = Net_3874;


	cy_clock_v1_0
		#(.id("481ae5d4-74f1-4ce5-9076-d6c458f189b8/9725d809-97e7-404e-b621-dfdbe78d0ca9"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("781250000"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_3874));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		TempBuf
		 (.drq(Net_3830),
		  .trq(1'b0),
		  .nrq(Net_3698));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		FinalBuf
		 (.drq(Net_3698),
		  .trq(1'b0),
		  .nrq(nrq));



	cy_clock_v1_0
		#(.id("481ae5d4-74f1-4ce5-9076-d6c458f189b8/3d23b625-9a71-4c05-baf4-2f904356009b"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		BusClock
		 (.clock_out(Net_3710));



    assign Net_3905 = Net_3874 | Net_3867;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_3867));


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(eoc));


    cy_sync_v1_0 Sync (
        .s_in(nrq),
        .clock(Net_3710),
        .s_out(Net_3935));
    defparam Sync.SignalWidth = 1;



endmodule

// Component: B_UART_v2_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`endif

// UART_v2_50(Address1=0, Address2=0, BaudRate=57600, BreakBitsRX=13, BreakBitsTX=13, BreakDetect=false, CRCoutputsEn=false, Enable_RX=1, Enable_RXIntInterrupt=0, Enable_TX=1, Enable_TXIntInterrupt=0, EnableHWAddress=0, EnIntRXInterrupt=false, EnIntTXInterrupt=false, FlowControl=0, HalfDuplexEn=false, HwTXEnSignal=true, InternalClock=true, InternalClockToleranceMinus=3.93736842105263, InternalClockTolerancePlus=3.93736842105263, InternalClockUsed=1, InterruptOnAddDetect=0, InterruptOnAddressMatch=0, InterruptOnBreak=0, InterruptOnByteRcvd=1, InterruptOnOverrunError=0, InterruptOnParityError=0, InterruptOnStopError=0, InterruptOnTXComplete=true, InterruptOnTXFifoEmpty=false, InterruptOnTXFifoFull=false, InterruptOnTXFifoNotFull=false, IntOnAddressDetect=false, IntOnAddressMatch=false, IntOnBreak=false, IntOnByteRcvd=true, IntOnOverrunError=false, IntOnParityError=false, IntOnStopError=false, NumDataBits=8, NumStopBits=1, OverSamplingRate=8, ParityType=0, ParityTypeSw=false, RequiredClock=460800, RXAddressMode=0, RXBufferSize=4, RxBuffRegSizeReplacementString=uint8, RXEnable=true, TXBitClkGenDP=true, TXBufferSize=4, TxBuffRegSizeReplacementString=uint8, TXEnable=true, Use23Polling=true, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=UART_v2_50, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART, CY_INSTANCE_SHORT_NAME=UART, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=50, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP1, INSTANCE_NAME=UART, )
module UART_v2_50_2 (
    rx_clk,
    rx_data,
    tx_clk,
    tx_data,
    rx_interrupt,
    tx_interrupt,
    tx,
    tx_en,
    rts_n,
    reset,
    cts_n,
    clock,
    rx);
    output      rx_clk;
    output      rx_data;
    output      tx_clk;
    output      tx_data;
    output      rx_interrupt;
    output      tx_interrupt;
    output      tx;
    output      tx_en;
    output      rts_n;
    input       reset;
    input       cts_n;
    input       clock;
    input       rx;

    parameter Address1 = 0;
    parameter Address2 = 0;
    parameter EnIntRXInterrupt = 0;
    parameter EnIntTXInterrupt = 0;
    parameter FlowControl = 0;
    parameter HalfDuplexEn = 0;
    parameter HwTXEnSignal = 1;
    parameter NumDataBits = 8;
    parameter NumStopBits = 1;
    parameter ParityType = 0;
    parameter RXEnable = 1;
    parameter TXEnable = 1;

          wire  Net_289;
          wire  Net_61;
          wire  Net_9;


	cy_clock_v1_0
		#(.id("b0162966-0060-4af5-82d1-fcb491ad7619/be0a0e37-ad17-42ca-b5a1-1a654d736358"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("2170138888.88889"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_9));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_61 = Net_9;

    B_UART_v2_50 BUART (
        .cts_n(cts_n),
        .tx(tx),
        .rts_n(rts_n),
        .tx_en(tx_en),
        .clock(Net_61),
        .reset(reset),
        .rx(rx),
        .tx_interrupt(tx_interrupt),
        .rx_interrupt(rx_interrupt),
        .tx_data(tx_data),
        .tx_clk(tx_clk),
        .rx_data(rx_data),
        .rx_clk(rx_clk));
    defparam BUART.Address1 = 0;
    defparam BUART.Address2 = 0;
    defparam BUART.BreakBitsRX = 13;
    defparam BUART.BreakBitsTX = 13;
    defparam BUART.BreakDetect = 0;
    defparam BUART.CRCoutputsEn = 0;
    defparam BUART.FlowControl = 0;
    defparam BUART.HalfDuplexEn = 0;
    defparam BUART.HwTXEnSignal = 1;
    defparam BUART.NumDataBits = 8;
    defparam BUART.NumStopBits = 1;
    defparam BUART.OverSampleCount = 8;
    defparam BUART.ParityType = 0;
    defparam BUART.ParityTypeSw = 0;
    defparam BUART.RXAddressMode = 0;
    defparam BUART.RXEnable = 1;
    defparam BUART.RXStatusIntEnable = 1;
    defparam BUART.TXBitClkGenDP = 1;
    defparam BUART.TXEnable = 1;
    defparam BUART.Use23Polling = 1;



endmodule

// Component: B_PWM_v3_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`endif

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=true, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=0, CompareValue2=63, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=255, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=true, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_Regulering, CY_INSTANCE_SHORT_NAME=PWM_Regulering, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP1, INSTANCE_NAME=PWM_Regulering, )
module PWM_v3_30_3 (
    pwm2,
    tc,
    clock,
    reset,
    pwm1,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    output      pwm2;
    output      tc;
    input       clock;
    input       reset;
    output      pwm1;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 8;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    B_PWM_v3_30 PWMUDB (
        .reset(reset),
        .clock(clock),
        .tc(Net_101),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .interrupt(Net_55),
        .kill(kill),
        .capture(capture),
        .enable(enable),
        .cmp_sel(cmp_sel),
        .trigger(trigger),
        .pwm(Net_96),
        .ph1(ph1),
        .ph2(ph2));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 1;
    defparam PWMUDB.CompareType2 = 1;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 0;
    defparam PWMUDB.Resolution = 8;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Component: B_Counter_v3_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`endif

// Counter_v3_0(CaptureMode=1, CaptureModeSoftware=0, ClockMode=0, CompareMode=5, CompareModeSoftware=1, CompareStatusEdgeSense=true, CompareValue=255, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG32, CySetRegReplacementString=CY_SET_REG32, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=0, InterruptOnCapture=true, InterruptOnCompare=false, InterruptOnOverUnderFlow=false, InterruptOnTC=false, Period=4294967295, RegDefReplacementString=reg32, RegSizeReplacementString=uint32, ReloadOnCapture=true, ReloadOnCompare=false, ReloadOnOverUnder=false, ReloadOnReset=true, Resolution=32, RunMode=0, UDB16=false, UDB24=false, UDB32=true, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC32, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Counter_Speed, CY_INSTANCE_SHORT_NAME=Counter_Speed, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP1, INSTANCE_NAME=Counter_Speed, )
module Counter_v3_0_4 (
    clock,
    comp,
    tc,
    reset,
    interrupt,
    enable,
    capture,
    upCnt,
    downCnt,
    up_ndown,
    count);
    input       clock;
    output      comp;
    output      tc;
    input       reset;
    output      interrupt;
    input       enable;
    input       capture;
    input       upCnt;
    input       downCnt;
    input       up_ndown;
    input       count;

    parameter CaptureMode = 1;
    parameter ClockMode = 0;
    parameter CompareMode = 5;
    parameter CompareStatusEdgeSense = 1;
    parameter EnableMode = 0;
    parameter ReloadOnCapture = 1;
    parameter ReloadOnCompare = 0;
    parameter ReloadOnOverUnder = 0;
    parameter ReloadOnReset = 1;
    parameter Resolution = 32;
    parameter RunMode = 0;
    parameter UseInterrupt = 1;

          wire  Net_47;
          wire  Net_102;
          wire  Net_95;
          wire  Net_82;
          wire  Net_91;
          wire  Net_89;
          wire  Net_49;
          wire  Net_48;
          wire  Net_42;
          wire  Net_43;

	// int_vm (cy_virtualmux_v1_0)
	assign interrupt = Net_43;

	// TC_vm (cy_virtualmux_v1_0)
	assign tc = Net_49;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_82));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_89 = up_ndown;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_95));

	// vmEnableMode (cy_virtualmux_v1_0)
	assign Net_91 = enable;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

    B_Counter_v3_0 CounterUDB (
        .reset(reset),
        .tc_out(Net_49),
        .cmp_out(comp),
        .clock(clock),
        .irq_out(Net_43),
        .up_ndown(Net_89),
        .upcnt(upCnt),
        .dwncnt(downCnt),
        .enable(enable),
        .capture(capture),
        .count(count));
    defparam CounterUDB.CaptureMode = 1;
    defparam CounterUDB.ClockMode = 0;
    defparam CounterUDB.CompareMode = 5;
    defparam CounterUDB.CompareStatusEdgeSense = 1;
    defparam CounterUDB.EnableMode = 0;
    defparam CounterUDB.ReloadOnCapture = 1;
    defparam CounterUDB.ReloadOnCompare = 0;
    defparam CounterUDB.ReloadOnOverUnder = 0;
    defparam CounterUDB.ReloadOnReset = 1;
    defparam CounterUDB.Resolution = 32;
    defparam CounterUDB.RunMode = 0;
    defparam CounterUDB.UseInterrupt = 1;



endmodule

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=true, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=2, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=4999, CompareValue2=63, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=true, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=1, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=9999, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=true, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_Speed, CY_INSTANCE_SHORT_NAME=PWM_Speed, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP1, INSTANCE_NAME=PWM_Speed, )
module PWM_v3_30_5 (
    pwm2,
    tc,
    clock,
    reset,
    pwm1,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    output      pwm2;
    output      tc;
    input       clock;
    input       reset;
    output      pwm1;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 16;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    B_PWM_v3_30 PWMUDB (
        .reset(reset),
        .clock(clock),
        .tc(Net_101),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .interrupt(Net_55),
        .kill(kill),
        .capture(capture),
        .enable(enable),
        .cmp_sel(cmp_sel),
        .trigger(trigger),
        .pwm(Net_96),
        .ph1(ph1),
        .ph2(ph2));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 2;
    defparam PWMUDB.CompareType2 = 1;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 0;
    defparam PWMUDB.Resolution = 16;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// top
module top ;

          wire  Net_2003;
          wire  Net_2164;
          wire  Net_2163;
          wire  Net_2162;
          wire  Net_2161;
          wire  Net_2160;
          wire  Net_2159;
          wire  Net_2158;
          wire  Net_2157;
          wire  Net_2156;
          wire  Net_2155;
          wire  Net_2014;
          wire  Net_1922;
          wire  Net_1921;
          wire  Net_1920;
          wire  Net_1919;
          wire  Net_1918;
          wire  Net_1917;
          wire  Net_1916;
          wire  Net_1141;
          wire  Net_1350;
          wire  Net_1349;
          wire  Net_1095;
          wire  Net_1348;
          wire  Net_1347;
          wire  Net_1346;
          wire  Net_1345;
          wire  Net_1344;
          wire  Net_1343;
          wire  Net_1342;
          wire  Net_1341;
          wire  Net_1340;
          wire  Net_674;
          wire  Net_661;
          wire  Net_1504;
          wire  Net_1503;
          wire  Net_1502;
          wire  Net_1501;
          wire  Net_1500;
          wire  Net_1493;
          wire  Net_1499;
          wire  Net_1498;
          wire  Net_1497;
          wire  Net_1494;
          wire  Net_1496;
          wire  Net_472;
          wire  Net_1495;
    electrical  Net_446;
    electrical  Net_445;
    electrical  Net_444;
    electrical  Net_443;
    electrical  Net_442;
    electrical  Net_441;
    electrical  Net_440;
    electrical  Net_439;
    electrical  Net_438;
    electrical  Net_437;
    electrical  Net_436;
    electrical  Net_435;
    electrical  Net_434;
    electrical  Net_433;
    electrical  Net_432;
    electrical  Net_431;
    electrical  Net_430;
    electrical  Net_429;
    electrical  Net_428;
    electrical  Net_427;
    electrical  Net_426;
    electrical  Net_425;
    electrical  Net_424;
    electrical  Net_423;
    electrical  Net_422;
    electrical  Net_421;
    electrical  Net_420;
    electrical  Net_419;
    electrical  Net_418;
    electrical  Net_417;
    electrical  Net_416;
    electrical  Net_415;
    electrical  Net_414;
    electrical  Net_413;
    electrical  Net_412;
    electrical  Net_411;
    electrical  Net_410;
    electrical  Net_409;
    electrical  Net_408;
    electrical  Net_407;
    electrical  Net_406;
    electrical  Net_405;
    electrical  Net_404;
    electrical  Net_403;
    electrical  Net_402;
    electrical  Net_401;
    electrical  Net_400;
    electrical  Net_399;
    electrical  Net_398;
    electrical  Net_397;
    electrical  Net_396;
    electrical  Net_395;
    electrical  Net_394;
    electrical  Net_393;
    electrical  Net_392;
    electrical  Net_391;
    electrical  Net_390;
    electrical  Net_389;
    electrical  Net_388;
    electrical  Net_387;
    electrical  Net_386;
    electrical  Net_385;
    electrical  Net_384;
    electrical  Net_383;
    electrical  Net_382;
    electrical  Net_381;
    electrical  Net_380;
    electrical  Net_379;
    electrical  Net_378;
    electrical  Net_377;
    electrical  Net_376;
    electrical  Net_375;
    electrical  Net_374;
    electrical  Net_373;
    electrical  Net_372;
    electrical  Net_371;
    electrical  Net_370;
    electrical  Net_369;
    electrical  Net_368;
    electrical  Net_367;
    electrical  Net_366;
    electrical  Net_365;
    electrical  Net_364;
    electrical  Net_363;
    electrical  Net_362;
    electrical  Net_361;
    electrical  Net_360;
    electrical  Net_359;
    electrical  Net_358;
    electrical  Net_357;
    electrical  Net_356;
    electrical  Net_846;
    electrical  Net_479;
    electrical  Net_355;
    electrical  Net_847;
    electrical  Net_848;
          wire  Net_352;
          wire  Net_351;
          wire  Net_908;
          wire  Net_1118;
          wire  Net_1630;
          wire  Net_284;
          wire  Net_308;
          wire  Net_554;
          wire  Net_1;
          wire  Net_1511;
          wire  Net_4;
          wire  Net_641;
          wire  Net_1417;
          wire  Net_688;
          wire  Net_648;
          wire  Net_671;

    ADC_SAR_SEQ_v2_0_1 AD_konverter (
        .soc(Net_1417),
        .aclk(1'b0),
        .sdone(Net_352),
        .eoc(Net_688),
        .AIN_10(Net_848),
        .AIN1(Net_847),
        .AIN_20(Net_355),
        .AIN_21(Net_479),
        .AIN_30(Net_846),
        .AIN_31(Net_356),
        .AIN3(Net_357),
        .AIN_40(Net_358),
        .AIN_41(Net_359),
        .AIN_50(Net_360),
        .AIN_51(Net_361),
        .AIN5(Net_362),
        .AIN_60(Net_363),
        .AIN_61(Net_364),
        .AIN_70(Net_365),
        .AIN_71(Net_366),
        .AIN7(Net_367),
        .AIN_80(Net_368),
        .AIN_81(Net_369),
        .AIN_90(Net_370),
        .AIN_91(Net_371),
        .AIN9(Net_372),
        .AIN_100(Net_373),
        .AIN_101(Net_374),
        .AIN_110(Net_375),
        .AIN_111(Net_376),
        .AIN11(Net_377),
        .AIN_120(Net_378),
        .AIN_121(Net_379),
        .AIN_130(Net_380),
        .AIN_131(Net_381),
        .AIN13(Net_382),
        .AIN_140(Net_383),
        .AIN_141(Net_384),
        .AIN_150(Net_385),
        .AIN_151(Net_386),
        .AIN15(Net_387),
        .AIN_160(Net_388),
        .AIN_161(Net_389),
        .AIN_170(Net_390),
        .AIN_171(Net_391),
        .AIN17(Net_392),
        .AIN_180(Net_393),
        .AIN_181(Net_394),
        .AIN_190(Net_395),
        .AIN_191(Net_396),
        .AIN19(Net_397),
        .AIN_200(Net_398),
        .AIN_201(Net_399),
        .AIN_210(Net_400),
        .AIN_211(Net_401),
        .AIN21(Net_402),
        .AIN_220(Net_403),
        .AIN_221(Net_404),
        .AIN_230(Net_405),
        .AIN_231(Net_406),
        .AIN23(Net_407),
        .AIN_240(Net_408),
        .AIN_241(Net_409),
        .AIN_250(Net_410),
        .AIN_251(Net_411),
        .AIN25(Net_412),
        .AIN_260(Net_413),
        .AIN_261(Net_414),
        .AIN_270(Net_415),
        .AIN_271(Net_416),
        .AIN27(Net_417),
        .AIN_280(Net_418),
        .AIN_281(Net_419),
        .AIN_290(Net_420),
        .AIN_291(Net_421),
        .AIN29(Net_422),
        .AIN_300(Net_423),
        .AIN_301(Net_424),
        .AIN_310(Net_425),
        .AIN_311(Net_426),
        .AIN31(Net_427),
        .AIN_320(Net_428),
        .AIN_321(Net_429),
        .AIN49(Net_430),
        .AIN50(Net_431),
        .AIN51(Net_432),
        .AIN52(Net_433),
        .AIN53(Net_434),
        .AIN54(Net_435),
        .AIN55(Net_436),
        .AIN56(Net_437),
        .AIN57(Net_438),
        .AIN58(Net_439),
        .AIN59(Net_440),
        .AIN60(Net_441),
        .AIN61(Net_442),
        .AIN62(Net_443),
        .AIN63(Net_444),
        .AIN64(Net_445),
        .vdac_ref(Net_446));

	wire [0:0] tmpOE__Rx_net;
	wire [0:0] tmpIO_0__Rx_net;
	wire [0:0] tmpINTERRUPT_0__Rx_net;
	electrical [0:0] tmpSIOVREF__Rx_net;

	cy_psoc3_pins_v1_10
		#(.id("1425177d-0d0e-4468-8bcc-e638e5509a9b"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Rx
		 (.oe(tmpOE__Rx_net),
		  .y({1'b0}),
		  .fb({Net_1495}),
		  .io({tmpIO_0__Rx_net[0:0]}),
		  .siovref(tmpSIOVREF__Rx_net),
		  .interrupt({tmpINTERRUPT_0__Rx_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Rx_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Voltage_net;
	wire [0:0] tmpFB_0__Pin_Voltage_net;
	wire [0:0] tmpIO_0__Pin_Voltage_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Voltage_net;
	electrical [0:0] tmpSIOVREF__Pin_Voltage_net;

	cy_psoc3_pins_v1_10
		#(.id("77715107-f8d5-47e5-a629-0fb83101ac6b"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Voltage
		 (.oe(tmpOE__Pin_Voltage_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Voltage_net[0:0]}),
		  .analog({Net_848}),
		  .io({tmpIO_0__Pin_Voltage_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Voltage_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Voltage_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Voltage_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("d12abaf0-bd91-40b2-97b7-193fd2185ff7"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("50000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Sample_Clock
		 (.clock_out(Net_1417));



	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_1
		 (.int_signal(Net_688));


	wire [0:0] tmpOE__Pin_Current_net;
	wire [0:0] tmpFB_0__Pin_Current_net;
	wire [0:0] tmpIO_0__Pin_Current_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Current_net;
	electrical [0:0] tmpSIOVREF__Pin_Current_net;

	cy_psoc3_pins_v1_10
		#(.id("0dfe66f2-7082-41d4-bd65-d54e6caf9305"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Current
		 (.oe(tmpOE__Pin_Current_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Current_net[0:0]}),
		  .analog({Net_847}),
		  .io({tmpIO_0__Pin_Current_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Current_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Current_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Current_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Load_Current_net;
	wire [0:0] tmpFB_0__Pin_Load_Current_net;
	wire [0:0] tmpIO_0__Pin_Load_Current_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Load_Current_net;
	electrical [0:0] tmpSIOVREF__Pin_Load_Current_net;

	cy_psoc3_pins_v1_10
		#(.id("8b068d6e-ce6c-44f8-86a3-5b35a1abbb95"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Load_Current
		 (.oe(tmpOE__Pin_Load_Current_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Load_Current_net[0:0]}),
		  .analog({Net_846}),
		  .io({tmpIO_0__Pin_Load_Current_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Load_Current_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Load_Current_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Load_Current_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Torque_net;
	wire [0:0] tmpFB_0__Pin_Torque_net;
	wire [0:0] tmpIO_0__Pin_Torque_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Torque_net;
	electrical [0:0] tmpSIOVREF__Pin_Torque_net;

	cy_psoc3_pins_v1_10
		#(.id("02e2406c-27d9-47be-8674-9cc3527c9445"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Torque
		 (.oe(tmpOE__Pin_Torque_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Torque_net[0:0]}),
		  .analog({Net_479}),
		  .io({tmpIO_0__Pin_Torque_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Torque_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Torque_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Torque_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    UART_v2_50_2 UART (
        .cts_n(1'b0),
        .tx(Net_1494),
        .rts_n(Net_1497),
        .tx_en(Net_1498),
        .clock(1'b0),
        .reset(Net_1493),
        .rx(Net_1495),
        .tx_interrupt(Net_1500),
        .rx_interrupt(Net_641),
        .tx_data(Net_1501),
        .tx_clk(Net_1502),
        .rx_data(Net_1503),
        .rx_clk(Net_1504));
    defparam UART.Address1 = 0;
    defparam UART.Address2 = 0;
    defparam UART.EnIntRXInterrupt = 0;
    defparam UART.EnIntTXInterrupt = 0;
    defparam UART.FlowControl = 0;
    defparam UART.HalfDuplexEn = 0;
    defparam UART.HwTXEnSignal = 1;
    defparam UART.NumDataBits = 8;
    defparam UART.NumStopBits = 1;
    defparam UART.ParityType = 0;
    defparam UART.RXEnable = 1;
    defparam UART.TXEnable = 1;

	wire [0:0] tmpOE__Tx_net;
	wire [0:0] tmpFB_0__Tx_net;
	wire [0:0] tmpIO_0__Tx_net;
	wire [0:0] tmpINTERRUPT_0__Tx_net;
	electrical [0:0] tmpSIOVREF__Tx_net;

	cy_psoc3_pins_v1_10
		#(.id("ed092b9b-d398-4703-be89-cebf998501f6"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Tx
		 (.oe(tmpOE__Tx_net),
		  .y({Net_1494}),
		  .fb({tmpFB_0__Tx_net[0:0]}),
		  .io({tmpIO_0__Tx_net[0:0]}),
		  .siovref(tmpSIOVREF__Tx_net),
		  .interrupt({tmpINTERRUPT_0__Tx_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Tx_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign Net_1493 = 1'h0;


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_2
		 (.int_signal(Net_554));



	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_5
		 (.int_signal(Net_641));


	wire [0:0] tmpOE__Pin_Speed_net;
	wire [0:0] tmpIO_0__Pin_Speed_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Speed_net;
	electrical [0:0] tmpSIOVREF__Pin_Speed_net;

	cy_psoc3_pins_v1_10
		#(.id("8d318d8b-cf7b-4b6b-b02c-ab1c5c49d0ba"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Speed
		 (.oe(tmpOE__Pin_Speed_net),
		  .y({1'b0}),
		  .fb({Net_1511}),
		  .io({tmpIO_0__Pin_Speed_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Speed_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Speed_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Speed_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("adad9983-62ad-43e3-817f-cebcd53eea27"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("10000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Regulation_Clock
		 (.clock_out(Net_648));



	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_3
		 (.int_signal(Net_671));



	cy_clock_v1_0
		#(.id("098730c3-0b61-404c-9b4a-b5812b6b8a6b"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("200000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Log_Clock
		 (.clock_out(Net_671));



	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_4
		 (.int_signal(Net_648));


    PWM_v3_30_3 PWM_Regulering (
        .reset(Net_1118),
        .clock(Net_908),
        .tc(Net_1340),
        .pwm1(Net_1341),
        .pwm2(Net_1342),
        .interrupt(Net_1343),
        .capture(1'b0),
        .kill(1'b1),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_1095),
        .ph1(Net_1349),
        .ph2(Net_1350));
    defparam PWM_Regulering.Resolution = 8;


	cy_clock_v1_0
		#(.id("c2d73e49-cf95-4234-8d30-49c265e8fc2c"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("183486238.53211"),
		  .is_direct(0),
		  .is_digital(1))
		PWM_Clock
		 (.clock_out(Net_908));


	wire [0:0] tmpOE__PWM_Out_net;
	wire [0:0] tmpFB_0__PWM_Out_net;
	wire [0:0] tmpIO_0__PWM_Out_net;
	wire [0:0] tmpINTERRUPT_0__PWM_Out_net;
	electrical [0:0] tmpSIOVREF__PWM_Out_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		PWM_Out
		 (.oe(tmpOE__PWM_Out_net),
		  .y({Net_1095}),
		  .fb({tmpFB_0__PWM_Out_net[0:0]}),
		  .io({tmpIO_0__PWM_Out_net[0:0]}),
		  .siovref(tmpSIOVREF__PWM_Out_net),
		  .interrupt({tmpINTERRUPT_0__PWM_Out_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__PWM_Out_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign Net_1118 = 1'h0;

    Counter_v3_0_4 Counter_Speed (
        .reset(Net_1),
        .tc(Net_1916),
        .comp(Net_1917),
        .clock(Net_4),
        .interrupt(Net_1918),
        .enable(1'b0),
        .capture(Net_1630),
        .upCnt(1'b0),
        .downCnt(1'b0),
        .up_ndown(1'b1),
        .count(Net_1511));
    defparam Counter_Speed.CaptureMode = 1;
    defparam Counter_Speed.ClockMode = 0;
    defparam Counter_Speed.CompareMode = 5;
    defparam Counter_Speed.CompareStatusEdgeSense = 1;
    defparam Counter_Speed.EnableMode = 0;
    defparam Counter_Speed.ReloadOnCapture = 1;
    defparam Counter_Speed.ReloadOnCompare = 0;
    defparam Counter_Speed.ReloadOnOverUnder = 0;
    defparam Counter_Speed.ReloadOnReset = 1;
    defparam Counter_Speed.Resolution = 32;
    defparam Counter_Speed.RunMode = 0;
    defparam Counter_Speed.UseInterrupt = 1;

    assign Net_1 = 1'h0;

    assign Net_308 = 1'h0;


	cy_clock_v1_0
		#(.id("dd5f033b-831b-4928-a819-ceecc1cfa4c0"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("10000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Speed_Clock
		 (.clock_out(Net_284));


    PWM_v3_30_5 PWM_Speed (
        .reset(Net_308),
        .clock(Net_284),
        .tc(Net_2155),
        .pwm1(Net_2156),
        .pwm2(Net_2157),
        .interrupt(Net_554),
        .capture(1'b0),
        .kill(1'b1),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_1630),
        .ph1(Net_2163),
        .ph2(Net_2164));
    defparam PWM_Speed.Resolution = 16;


	cy_clock_v1_0
		#(.id("2507a239-ce4f-4500-a54b-afbca2e3f6ba"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("41666666.6666667"),
		  .is_direct(0),
		  .is_digital(1))
		Counter_Clock
		 (.clock_out(Net_4));




endmodule

