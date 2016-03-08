// ======================================================================
// MotorController.v generated from TopDesign.cysch
// 03/08/2016 at 18:36
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

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=true, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=0, CompareValue2=63, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=255, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=false, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=true, UseControl=true, UseInterrupt=false, UseStatus=false, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=PWM_v3_30, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_motor, CY_INSTANCE_SHORT_NAME=PWM_motor, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PWM_motor, )
module PWM_v3_30_0 (
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
    defparam PWMUDB.UseStatus = 0;

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

// Component: and_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\and_v1_0\and_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\and_v1_0\and_v1_0.v"
`endif

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// Component: B_Timer_v2_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Timer_v2_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Timer_v2_70\B_Timer_v2_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Timer_v2_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Timer_v2_70\B_Timer_v2_70.v"
`endif

// Timer_v2_70(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=true, CaptureMode=1, CONTROL3=0, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG32, CySetRegReplacementString=CY_SET_REG32, DeviceFamily=PSoC5, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, HWCaptureCounterEnabled=false, InterruptOnCapture=true, InterruptOnFIFOFull=false, InterruptOnTC=true, IntOnCapture=1, IntOnFIFOFull=0, IntOnTC=1, NumberOfCaptures=2, param45=1, Period=23999999, RegDefReplacementString=reg32, RegSizeReplacementString=uint32, Resolution=32, RstStatusReplacementString=rstSts, RunMode=0, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=false, UDB24=false, UDB32=true, UDB8=false, UDBControlReg=true, UsesHWEnable=0, VerilogSectionReplacementString=sT32, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=Timer_v2_70, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer_RPM, CY_INSTANCE_SHORT_NAME=Timer_RPM, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=70, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=Timer_RPM, )
module Timer_v2_70_1 (
    clock,
    reset,
    interrupt,
    enable,
    capture,
    trigger,
    capture_out,
    tc);
    input       clock;
    input       reset;
    output      interrupt;
    input       enable;
    input       capture;
    input       trigger;
    output      capture_out;
    output      tc;

    parameter CaptureCount = 2;
    parameter CaptureCounterEnabled = 0;
    parameter DeviceFamily = "PSoC5";
    parameter InterruptOnCapture = 1;
    parameter InterruptOnTC = 1;
    parameter Resolution = 32;
    parameter SiliconRevision = "0";

          wire  Net_261;
          wire  Net_260;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_53;

    B_Timer_v2_70 TimerUDB (
        .reset(reset),
        .interrupt(Net_55),
        .enable(enable),
        .trigger(trigger),
        .capture_in(capture),
        .capture_out(capture_out),
        .tc(Net_53),
        .clock(clock));
    defparam TimerUDB.Capture_Count = 2;
    defparam TimerUDB.CaptureCounterEnabled = 0;
    defparam TimerUDB.CaptureMode = 1;
    defparam TimerUDB.EnableMode = 0;
    defparam TimerUDB.InterruptOnCapture = 1;
    defparam TimerUDB.Resolution = 32;
    defparam TimerUDB.RunMode = 0;
    defparam TimerUDB.TriggerMode = 0;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = Net_102;



endmodule

// Component: not_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0\not_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0\not_v1_0.v"
`endif

// Comp_v2_0(Hysteresis=0, Pd_Override=0, Polarity=0, PSOC5A=false, Speed=2, Sync=1, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=Comp_v2_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Comp_1, CY_INSTANCE_SHORT_NAME=Comp_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=Comp_1, )
module Comp_v2_0_2 (
    Vplus,
    CmpOut,
    Vminus,
    clock);
    inout       Vplus;
    electrical  Vplus;
    output      CmpOut;
    inout       Vminus;
    electrical  Vminus;
    input       clock;


          wire  Net_9;
          wire  Net_1;

    cy_psoc3_ctcomp_v1_0 ctComp (
        .vplus(Vplus),
        .vminus(Vminus),
        .cmpout(Net_1),
        .clk_udb(clock),
        .clock(clock));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign CmpOut = Net_1;


    assign Net_9 = ~Net_1;



endmodule

// VDAC8_v1_90(Data_Source=0, Initial_Value=100, Strobe_Mode=0, VDAC_Range=4, VDAC_Speed=0, Voltage=1600, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=VDAC8_v1_90, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=VDAC8_1, CY_INSTANCE_SHORT_NAME=VDAC8_1, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=90, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=VDAC8_1, )
module VDAC8_v1_90_3 (
    strobe,
    data,
    vOut);
    input       strobe;
    input      [7:0] data;
    inout       vOut;
    electrical  vOut;

    parameter Data_Source = 0;
    parameter Initial_Value = 100;
    parameter Strobe_Mode = 0;

    electrical  Net_77;
          wire  Net_83;
          wire  Net_82;
          wire  Net_81;

    cy_psoc3_vidac8_v1_0 viDAC8 (
        .reset(Net_83),
        .idir(Net_81),
        .data(data[7:0]),
        .strobe(strobe),
        .vout(vOut),
        .iout(Net_77),
        .ioff(Net_82),
        .strobe_udb(strobe));
    defparam viDAC8.is_all_if_any = 0;
    defparam viDAC8.reg_data = 0;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_81));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_82));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_83));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_77));



endmodule

// Component: cy_srff_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_srff_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_srff_v1_0\cy_srff_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_srff_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_srff_v1_0\cy_srff_v1_0.v"
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

// Component: CyStatusReg_v1_90
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
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

// CAN_v3_0(AckError=false, AckErrorUseHelper=true, AdvancedInterruptConfig=false, APIDictionary=0, Arbiter=0, ArbLost=false, ArbLostUseHelper=true, BaudRate=500, BitError=false, BitErrorUseHelper=true, Bitrate=2, BussOff=true, BussOffUseHelper=true, ClkFrequency=24, ConnectExtInterruptLine=false, ConnectTxEn=true, CrcError=false, CrcErrorUseHelper=true, DataGridSaved=0, EdgeMode=0, FormError=false, FormErrorUseHelper=true, FullCustomIntISR=false, IntEnable=true, IntISRDisable=false, M0S8CAN_BLOCK_VER=-1, Overload=false, OverloadUseHelper=true, Reset=0, RTRAutomaticReply=false, RTRAutomaticReplyUseHelper=true, RxMsg=true, RxMsgLost=false, RxMsgLostUseHelper=true, RxMsgUseHelper=true, Sjw=2, Sm=0, SSTError=false, SSTErrorUseHelper=true, StuckAtZero=false, StuckAtZeroUseHelper=true, StuffError=false, StuffErrorUseHelper=true, SwapDataByteEndianness=false, Tseg1=13, Tseg2=2, TxMsg=false, TxMsgUseHelper=true, XMLMainData=<?xml version="1.0" encoding="utf-16"?><CyParameters xmlns:version="v1.50"><TXRegUnits><CyRegUnit Type="etTX" Name="0" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="1" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="2" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="3" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="4" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="5" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="6" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etTX" Name="7" State="esBasic" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /></TXRegUnits><RXRegUnits><CyRegUnit Type="etRX" Name="0" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="1" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="2" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="3" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="4" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="5" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="6" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="7" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="8" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="9" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="10" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="11" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="12" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="13" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="14" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /><CyRegUnit Type="etRX" Name="15" State="esEmpty" Id="0" IDE="false" RTR="false" RTRReply="false" DLC="8" IRQ="false" Linking="false" SST="false" /></RXRegUnits></CyParameters>, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=CAN_v3_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CAN_1, CY_INSTANCE_SHORT_NAME=CAN_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=CAN_1, )
module CAN_v3_0_4 (
    rx,
    tx,
    tx_en,
    interrupt);
    input       rx;
    output      tx;
    output      tx_en;
    output      interrupt;


          wire  Net_31;
          wire  Net_30;
          wire  Net_27;
          wire  Net_25;


	cy_clock_v1_0
		#(.id("2c366327-8ea9-4813-ab0d-a7ce473af76e/ccbbccde-4db5-4009-af85-8e8bae589faa"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock
		 (.clock_out(Net_25));


    cy_psoc3_can_v1_0 CanIP (
        .clock(Net_25),
        .can_rx(rx),
        .can_tx(tx),
        .can_tx_en(tx_en),
        .interrupt(interrupt));


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr
		 (.int_signal(interrupt));



    assign Net_31 = Net_25 | Net_30;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_30));



endmodule

// USBFS_v3_0(AudioDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Audio">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, CDCDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="CDC">\r\n      <Nodes>\r\n        <DescriptorNode Key="Interface60">\r\n          <m_value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 1</DisplayName>\r\n          </m_value>\r\n          <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 1</DisplayName>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor61">\r\n              <m_value d8p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>49</iwInterface>\r\n                <bInterfaceClass>2</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>0</bInterfaceNumber>\r\n                <bNumEndpoints>1</bNumEndpoints>\r\n                <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                <iInterface>3</iInterface>\r\n                <sInterface>CDC Communication Interface</sInterface>\r\n              </m_value>\r\n              <Value d8p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>49</iwInterface>\r\n                <bInterfaceClass>2</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>0</bInterfaceNumber>\r\n                <bNumEndpoints>1</bNumEndpoints>\r\n                <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                <iInterface>3</iInterface>\r\n                <sInterface>CDC Communication Interface</sInterface>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="USBDescriptor63">\r\n                  <m_value d10p1:type="CyCDCHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                    <bcdADC>272</bcdADC>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                    <bcdADC>272</bcdADC>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor64">\r\n                  <m_value d10p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>4</bLength>\r\n                    <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bmCapabilities>2</bmCapabilities>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>4</bLength>\r\n                    <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bmCapabilities>2</bmCapabilities>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor65">\r\n                  <m_value d10p1:type="CyCDCUnionDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                    <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCUnionDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                    <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor66">\r\n                  <m_value d10p1:type="CyCDCCallManagementDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bDataInterface>1</bDataInterface>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCCallManagementDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bDataInterface>1</bDataInterface>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor67">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>129</bEndpointAddress>\r\n                    <bmAttributes>3</bmAttributes>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>129</bEndpointAddress>\r\n                    <bmAttributes>3</bmAttributes>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="Interface68">\r\n          <m_value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 2</DisplayName>\r\n          </m_value>\r\n          <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 2</DisplayName>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor69">\r\n              <m_value d8p1:type="CyDataInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>50</iwInterface>\r\n                <bInterfaceClass>10</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>1</bInterfaceNumber>\r\n                <bNumEndpoints>2</bNumEndpoints>\r\n                <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                <iInterface>4</iInterface>\r\n                <sInterface>CDC Data Interface</sInterface>\r\n              </m_value>\r\n              <Value d8p1:type="CyDataInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>50</iwInterface>\r\n                <bInterfaceClass>10</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>1</bInterfaceNumber>\r\n                <bNumEndpoints>2</bNumEndpoints>\r\n                <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                <iInterface>4</iInterface>\r\n                <sInterface>CDC Data Interface</sInterface>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="USBDescriptor71">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>130</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>130</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor72">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>3</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>3</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DeviceDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Device">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor51">\r\n          <m_value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>47</iwManufacturer>\r\n            <iwProduct>48</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>USBUART</sProduct>\r\n            <sSerialNumber />\r\n            <bDeviceClass>2</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>62002</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </m_value>\r\n          <Value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>47</iwManufacturer>\r\n            <iwProduct>48</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>USBUART</sProduct>\r\n            <sSerialNumber />\r\n            <bDeviceClass>2</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>62002</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor56">\r\n              <m_value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>47</iwConfiguration>\r\n                <sConfiguration>Cypress Semiconductor</sConfiguration>\r\n                <wTotalLength>67</wTotalLength>\r\n                <bNumInterfaces>2</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>1</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </m_value>\r\n              <Value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>47</iwConfiguration>\r\n                <sConfiguration>Cypress Semiconductor</sConfiguration>\r\n                <wTotalLength>67</wTotalLength>\r\n                <bNumInterfaces>2</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>1</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="Interface60">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 1</DisplayName>\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 1</DisplayName>\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor61">\r\n                      <m_value d12p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>49</iwInterface>\r\n                        <bInterfaceClass>2</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>1</bNumEndpoints>\r\n                        <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                        <iInterface>3</iInterface>\r\n                        <sInterface>CDC Communication Interface</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>49</iwInterface>\r\n                        <bInterfaceClass>2</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>1</bNumEndpoints>\r\n                        <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                        <iInterface>3</iInterface>\r\n                        <sInterface>CDC Communication Interface</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor63">\r\n                          <m_value d14p1:type="CyCDCHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                            <bcdADC>272</bcdADC>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                            <bcdADC>272</bcdADC>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor64">\r\n                          <m_value d14p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>4</bLength>\r\n                            <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bmCapabilities>2</bmCapabilities>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>4</bLength>\r\n                            <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bmCapabilities>2</bmCapabilities>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor65">\r\n                          <m_value d14p1:type="CyCDCUnionDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                            <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCUnionDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                            <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor66">\r\n                          <m_value d14p1:type="CyCDCCallManagementDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bDataInterface>1</bDataInterface>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCCallManagementDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bDataInterface>1</bDataInterface>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor67">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="Interface68">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 2</DisplayName>\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 2</DisplayName>\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor69">\r\n                      <m_value d12p1:type="CyDataInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>50</iwInterface>\r\n                        <bInterfaceClass>10</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>1</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>CDC Data Interface</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="CyDataInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>50</iwInterface>\r\n                        <bInterfaceClass>10</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>1</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>CDC Data Interface</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor71">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor72">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>3</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>3</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DmaChannelPriority=3, DW_Hide_DmaAuto=true, DW_Hide_Usbv2Regs=true, DW_RegSize=8, DW_USB_CHGDET_CTRL=CR0, DW_USB_INTR_CAUSE_HI=CR0, DW_USB_INTR_CAUSE_LO=CR0, DW_USB_INTR_CAUSE_MED=CR0, DW_USB_INTR_LVL_SEL=CR0, DW_USB_INTR_SIE=CR0, DW_USB_INTR_SIE_MASK=CR0, DW_USB_LPM_CTRL=CR0, DW_USB_LPM_STAT=CR0, DW_USB_POWER_CTRL=CR0, EnableBatteryChargDetect=false, EnableCDCApi=true, EnableMidiApi=true, endpointMA=0, endpointMM=0, epDMAautoOptimization=false, extern_cls=false, extern_vbus=false, extern_vnd=false, extJackCount=0, Gen16bitEpAccessApi=true, HandleMscRequests=true, HIDReportDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="HIDReport">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, isrGroupArbiter=0, isrGroupBusReset=2, isrGroupEp0=1, isrGroupEp1=1, isrGroupEp2=1, isrGroupEp3=1, isrGroupEp4=1, isrGroupEp5=1, isrGroupEp6=1, isrGroupEp7=1, isrGroupEp8=1, isrGroupLpm=0, isrGroupSof=2, M0S8USBDSS_BLOCK_COUNT_1=0, max_interfaces_num=2, MidiDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Midi">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, Mode=false, mon_vbus=false, MscDescriptors=, MscLogicalUnitsNum=1, out_sof=false, Pid=F232, powerpad_vbus=false, PRIMITIVE_INSTANCE=USB, ProdactName=, ProdactRevision=, REG_SIZE=reg8, RemoveDmaAutoOpt=true, RemoveVbusPin=true, rm_arb_int=false, rm_dma_1=true, rm_dma_2=true, rm_dma_3=true, rm_dma_4=true, rm_dma_5=true, rm_dma_6=true, rm_dma_7=true, rm_dma_8=true, rm_dp_int=false, rm_ep_isr_0=false, rm_ep_isr_1=false, rm_ep_isr_2=false, rm_ep_isr_3=false, rm_ep_isr_4=true, rm_ep_isr_5=true, rm_ep_isr_6=true, rm_ep_isr_7=true, rm_ep_isr_8=true, rm_lpm_int=true, rm_ord_int=true, rm_sof_int=false, rm_usb_int=false, SofTermEnable=false, StringDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="String">\r\n      <Nodes>\r\n        <DescriptorNode Key="LANGID">\r\n          <m_value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </m_value>\r\n          <Value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor47">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor48">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>USBUART</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>USBUART</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor49">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>56</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Communication Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>56</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Communication Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor50">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Data Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Data Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n    <DescriptorNode Key="SpecialString">\r\n      <Nodes>\r\n        <DescriptorNode Key="Serial">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>SILICON_NUMBER</snType>\r\n            <bString />\r\n            <bUsed>true</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>SILICON_NUMBER</snType>\r\n            <bString />\r\n            <bUsed>true</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="EE">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, UINT_TYPE=uint8, VbusDetectTermEnable=false, VendorName=, Vid=04B4, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=USBFS_v3_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=USBUART_1, CY_INSTANCE_SHORT_NAME=USBUART_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=USBUART_1, )
module USBFS_v3_0_5 (
    sof,
    vbusdet);
    output      sof;
    input       vbusdet;

    parameter epDMAautoOptimization = 0;

          wire  Net_1914;
          wire  Net_1915;
          wire  Net_1916;
          wire  Net_1917;
          wire  Net_1918;
          wire  Net_1919;
          wire [7:0] dma_request;
          wire  Net_1920;
          wire  Net_1921;
          wire  Net_1922;
          wire [7:0] Net_2039;
          wire  Net_2038;
          wire  Net_2037;
          wire  EPs_1_to_7_dma_complete;
          wire  Net_2036;
          wire  Net_2035;
          wire  Net_2034;
          wire  Net_2033;
          wire  Net_2032;
          wire  Net_2031;
          wire  Net_2030;
          wire  Net_2029;
          wire  Net_2028;
          wire  Net_2027;
          wire  Net_2026;
          wire  Net_2025;
          wire  Net_2024;
          wire [7:0] Net_1940;
          wire  Net_1939;
          wire  Net_1938;
          wire  Net_1937;
          wire  Net_1936;
          wire  Net_1935;
          wire  Net_1934;
          wire  Net_1933;
          wire  Net_1932;
          wire  Net_2047;
          wire  Net_1202;
          wire  dma_terminate;
          wire [7:0] Net_2040;
          wire  Net_1010;
    electrical  Net_1000;
    electrical  Net_597;
          wire  Net_1495;
          wire  Net_1498;
          wire  Net_1559;
          wire  Net_1567;
          wire  Net_1576;
          wire  Net_1579;
          wire  Net_1591;
          wire [7:0] dma_complete;
          wire  Net_1588;
          wire  Net_1876;
          wire [8:0] ep_int;
          wire  Net_1889;
          wire  busClk;
          wire  Net_95;


	cy_isr_v1_0
		#(.int_type(2'b10))
		dp_int
		 (.int_signal(Net_1010));


	wire [0:0] tmpOE__Dm_net;
	wire [0:0] tmpFB_0__Dm_net;
	wire [0:0] tmpIO_0__Dm_net;
	wire [0:0] tmpINTERRUPT_0__Dm_net;
	electrical [0:0] tmpSIOVREF__Dm_net;

	cy_psoc3_pins_v1_10
		#(.id("beca5e2d-f70f-4900-a4db-7eca1ed3126e/8b77a6c4-10a0-4390-971c-672353e2a49c"),
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
		  .layout_mode("NONCONTIGUOUS"),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dm
		 (.oe(tmpOE__Dm_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dm_net[0:0]}),
		  .analog({Net_597}),
		  .io({tmpIO_0__Dm_net[0:0]}),
		  .siovref(tmpSIOVREF__Dm_net),
		  .interrupt({tmpINTERRUPT_0__Dm_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dm_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dp_net;
	wire [0:0] tmpFB_0__Dp_net;
	wire [0:0] tmpIO_0__Dp_net;
	electrical [0:0] tmpSIOVREF__Dp_net;

	cy_psoc3_pins_v1_10
		#(.id("beca5e2d-f70f-4900-a4db-7eca1ed3126e/618a72fc-5ddd-4df5-958f-a3d55102db42"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dp
		 (.oe(tmpOE__Dp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dp_net[0:0]}),
		  .analog({Net_1000}),
		  .io({tmpIO_0__Dp_net[0:0]}),
		  .siovref(tmpSIOVREF__Dp_net),
		  .interrupt({Net_1010}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_psoc3_usb_v1_0 USB (
        .dp(Net_1000),
        .dm(Net_597),
        .sof_int(sof),
        .arb_int(Net_1889),
        .usb_int(Net_1876),
        .ept_int(ep_int[8:0]),
        .ord_int(Net_95),
        .dma_req(dma_request[7:0]),
        .dma_termin(dma_terminate));


	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_3
		 (.int_signal(ep_int[3]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_2
		 (.int_signal(ep_int[2]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_1
		 (.int_signal(ep_int[1]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_0
		 (.int_signal(ep_int[0]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		bus_reset
		 (.int_signal(Net_1876));



	cy_isr_v1_0
		#(.int_type(2'b10))
		arb_int
		 (.int_signal(Net_1889));



	cy_isr_v1_0
		#(.int_type(2'b10))
		sof_int
		 (.int_signal(sof));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign dma_complete[0] = Net_1922;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1922));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign dma_complete[1] = Net_1921;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1921));

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign dma_complete[2] = Net_1920;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1920));

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign dma_complete[3] = Net_1919;

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_1919));

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign dma_complete[4] = Net_1918;

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign dma_complete[5] = Net_1917;

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_1918));

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_1917));

	// VirtualMux_7 (cy_virtualmux_v1_0)
	assign dma_complete[6] = Net_1916;

	// VirtualMux_8 (cy_virtualmux_v1_0)
	assign dma_complete[7] = Net_1915;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1916));

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_1915));



endmodule

// Component: B_PowerMonitor_v1_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PowerMonitor_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PowerMonitor_v1_50\B_PowerMonitor_v1_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PowerMonitor_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_PowerMonitor_v1_50\B_PowerMonitor_v1_50.v"
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

// ADC_DelSig_v2_30(ADC_Charge_Pump_Clock=true, ADC_Clock=1, ADC_CLOCK_FREQUENCY=1310000, ADC_Input_Mode=0, ADC_Input_Range=5, ADC_Input_Range_Config2=10, ADC_Input_Range_Config3=9, ADC_Input_Range_Config4=4, ADC_Power=1, ADC_Reference=0, ADC_Reference_Config2=0, ADC_Reference_Config3=0, ADC_Reference_Config4=0, ADC_Resolution=12, ADC_Resolution_Config2=12, ADC_Resolution_Config3=12, ADC_Resolution_Config4=12, Clock_Frequency=64000, Comment_Config1=Default Config, Comment_Config2=Second Config, Comment_Config3=Third Config, Comment_Config4=Fourth Config, Config1_Name=CFG1, Config2_Name=CFG2, Config3_Name=CFG3, Config4_Name=CFG4, Configs=4, Conversion_Mode=0, Conversion_Mode_Config2=0, Conversion_Mode_Config3=0, Conversion_Mode_Config4=0, Debug=false, DsmName=DSM4, Enable_Vref_Vss=false, Input_Buffer_Gain=1, Input_Buffer_Gain_Config2=1, Input_Buffer_Gain_Config3=1, Input_Buffer_Gain_Config4=1, Input_Buffer_Mode=2, Input_Buffer_Mode_Config2=2, Input_Buffer_Mode_Config3=2, Input_Buffer_Mode_Config4=2, PSOC5A=false, Ref_Voltage=1.024, Ref_Voltage_Config2=1.024, Ref_Voltage_Config3=1.024, Ref_Voltage_Config4=1.024, Sample_Rate=10000, Sample_Rate_Config2=10000, Sample_Rate_Config3=10000, Sample_Rate_Config4=10000, sRate_Err=false, Start_of_Conversion=0, Vdda_Value=5, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=ADC_DelSig_v2_30, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1:ADC, CY_INSTANCE_SHORT_NAME=ADC, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=30, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1_ADC, )
module ADC_DelSig_v2_30_6 (
    vplus,
    vminus,
    soc,
    eoc,
    aclk,
    nVref);
    inout       vplus;
    electrical  vplus;
    inout       vminus;
    electrical  vminus;
    input       soc;
    output      eoc;
    input       aclk;
    inout       nVref;
    electrical  nVref;


          wire  aclock;
          wire [3:0] mod_dat;
          wire  mod_reset;
    electrical  Net_13;
    electrical  Net_12;
    electrical  Net_11;
          wire  Net_10;
          wire [7:0] Net_9;
          wire  Net_8;
          wire  Net_7;
          wire  Net_6;
          wire [7:0] Net_5;
          wire  Net_14;
    electrical  Net_3;
    electrical  Net_2;
          wire  Net_1;
    electrical  Net_686;
    electrical  Net_690;
    electrical  Net_681;
    electrical  Net_677;
    electrical  Net_570;
          wire  Net_488;
          wire  Net_482;
          wire  Net_481;
          wire  Net_478;
          wire  Net_438;
          wire [3:0] Net_471;
          wire [3:0] Net_470;
    electrical  Net_352;
    electrical  Net_580;
    electrical  Net_349;
    electrical  Net_573;
    electrical  Net_257;
          wire  Net_487;
          wire  Net_40;
    electrical  Net_520;

    cy_psoc3_decimator_v1_0 DEC (
        .aclock(aclock),
        .mod_dat(mod_dat[3:0]),
        .ext_start(soc),
        .mod_reset(mod_reset),
        .interrupt(eoc));

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_481));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_482));


	cy_clock_v1_0
		#(.id("0ee5ce44-b7e9-439f-8c89-02f983ad5a4e/1c1c56bf-4576-430d-a753-e3f79171b0a8/edd15f43-b66b-457b-be3a-5342345270c8"),
		  .source_clock_id("61737EF6-3B74-48f9-8B91-F7473A442AE7"),
		  .divisor(0),
		  .period("763358778.625954"),
		  .is_direct(0),
		  .is_digital(0))
		theACLK
		 (.clock_out(Net_40));


	// Clock_VirtualMux (cy_virtualmux_v1_0)
	assign Net_488 = Net_40;


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(eoc));


	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_520, vminus);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_580, Net_349);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Net_573, Net_257);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_2 (
        .noconnect(Net_349));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_3 (
        .noconnect(Net_257));


	cy_clock_v1_0
		#(.id("0ee5ce44-b7e9-439f-8c89-02f983ad5a4e/1c1c56bf-4576-430d-a753-e3f79171b0a8/b7604721-db56-4477-98c2-8fae77869066"),
		  .source_clock_id("61737EF6-3B74-48f9-8B91-F7473A442AE7"),
		  .divisor(0),
		  .period("190839694.656489"),
		  .is_direct(0),
		  .is_digital(1))
		Ext_CP_Clk
		 (.clock_out(Net_487));


	// cy_analog_virtualmux_5 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_5_connect(Net_570, Net_352);
	defparam cy_analog_virtualmux_5_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_5 (
        .noconnect(Net_352));

    cy_psoc3_ds_mod_v4_0 DSM4 (
        .vplus(vplus),
        .vminus(Net_520),
        .modbit(Net_7),
        .reset_udb(Net_8),
        .aclock(Net_488),
        .mod_dat(Net_471[3:0]),
        .dout_udb(Net_9[7:0]),
        .reset_dec(mod_reset),
        .dec_clock(Net_478),
        .extclk_cp_udb(Net_487),
        .clk_udb(1'b0),
        .ext_pin_1(Net_580),
        .ext_pin_2(Net_573),
        .ext_vssa(Net_570),
        .qtz_ref(Net_677));
    defparam DSM4.resolution = 12;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_7));

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_8));

	// Clock_VirtualMux_2 (cy_virtualmux_v1_0)
	assign mod_dat[3:0] = Net_471[3:0];

	// Clock_VirtualMux_3 (cy_virtualmux_v1_0)
	assign aclock = Net_478;

	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(Net_677, Net_12);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_12));

	// cy_analog_virtualmux_6 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_6_connect(Net_690, Net_13);
	defparam cy_analog_virtualmux_6_connect.sig_width = 1;



endmodule

// Component: PM_AMux_v1_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\PM_AMux_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\PM_AMux_v1_50\PM_AMux_v1_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\PM_AMux_v1_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\PM_AMux_v1_50\PM_AMux_v1_50.v"
`endif

// PGA_v2_0(Gain=0, Power=2, VddaValue=5, Vref_Input=0, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=PGA_v2_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1:PGA, CY_INSTANCE_SHORT_NAME=PGA, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1_PGA, )
module PGA_v2_0_7 (
    Vin,
    Vref,
    Vout);
    inout       Vin;
    electrical  Vin;
    inout       Vref;
    electrical  Vref;
    inout       Vout;
    electrical  Vout;


    electrical  Net_75;
          wire  Net_41;
          wire  Net_40;
    electrical  Net_17;
          wire  Net_39;
          wire  Net_38;
          wire  Net_37;

    cy_psoc3_scblock_v1_0 SC (
        .vin(Vin),
        .vref(Net_17),
        .vout(Vout),
        .modout_sync(Net_41),
        .aclk(Net_37),
        .clk_udb(Net_38),
        .dyn_cntl(Net_39),
        .bst_clk(Net_40));

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_37));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_38));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_39));

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_40));

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_17, Net_75);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_2 (
        .noconnect(Net_75));



endmodule

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

// ADC_Vssa_v1_20(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=ADC_Vssa_v1_20, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1:ADC_Vssa_3, CY_INSTANCE_SHORT_NAME=ADC_Vssa_3, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=20, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1_ADC_Vssa_3, )
module ADC_Vssa_v1_20_8 (
    vout);
    inout       vout;
    electrical  vout;




	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("15B3DB15-B7B3-4d62-A2DF-25EA392A7161"),
		  .name("Vssa (GND)"))
		vRef_1
		 (.vout(vout));




endmodule

// ADC_Vssa_v1_20(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=ADC_Vssa_v1_20, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1:ADC_Vssa_1, CY_INSTANCE_SHORT_NAME=ADC_Vssa_1, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=20, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1_ADC_Vssa_1, )
module ADC_Vssa_v1_20_9 (
    vout);
    inout       vout;
    electrical  vout;




	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("15B3DB15-B7B3-4d62-A2DF-25EA392A7161"),
		  .name("Vssa (GND)"))
		vRef_1
		 (.vout(vout));




endmodule

// ADC_Vssa_v1_20(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=ADC_Vssa_v1_20, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1:ADC_Vssa_2, CY_INSTANCE_SHORT_NAME=ADC_Vssa_2, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=20, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1_ADC_Vssa_2, )
module ADC_Vssa_v1_20_10 (
    vout);
    inout       vout;
    electrical  vout;




	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("15B3DB15-B7B3-4d62-A2DF-25EA392A7161"),
		  .name("Vssa (GND)"))
		vRef_1
		 (.vout(vout));




endmodule

// ADC_Vssa_v1_20(CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=ADC_Vssa_v1_20, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1:ADC_Vssa_4, CY_INSTANCE_SHORT_NAME=ADC_Vssa_4, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=20, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1_ADC_Vssa_4, )
module ADC_Vssa_v1_20_11 (
    vout);
    inout       vout;
    electrical  vout;




	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("15B3DB15-B7B3-4d62-A2DF-25EA392A7161"),
		  .name("Vssa (GND)"))
		vRef_1
		 (.vout(vout));




endmodule

// PowerMonitor_v1_60(Aux1SingleEnded=false, Aux2SingleEnded=false, Aux3SingleEnded=false, Aux4SingleEnded=false, AuxFilterType=3, AuxiliaryTable=<?xml version="1.0" encoding="utf-16"?><CyAuxTable xmlns:version="v1.0"><m_auxTable /></CyAuxTable>, Ctrl_Reg_RplcmntString=SyncCtl, CtrlReg_RplcString=Sync, CurrentFilterType=3, CurrentsTable=<?xml version="1.0" encoding="utf-16"?><CyCurrentsTable xmlns:version="v1.0"><m_currentsTable><CyCurrentsTableRow><m_ocWarningThreshold>9</m_ocWarningThreshold><m_ocFaulthTreshold>12</m_ocFaulthTreshold><m_shuntResistorValue>5</m_shuntResistorValue><m_csaGain>10</m_csaGain><m_currentMeasurementType>Direct</m_currentMeasurementType></CyCurrentsTableRow></m_currentsTable></CyCurrentsTable>, DiffCurrentRange=0, EocConfiguration=1, ExposeCalPin=false, FaultSources_OC=true, FaultSources_OV=true, FaultSources_UV=true, I10CSA=false, I11CSA=false, I12CSA=false, I13CSA=false, I14CSA=false, I15CSA=false, I16CSA=false, I17CSA=false, I18CSA=false, I19CSA=false, I1CSA=false, I20CSA=false, I21CSA=false, I22CSA=false, I23CSA=false, I24CSA=false, I25CSA=false, I26CSA=false, I27CSA=false, I28CSA=false, I29CSA=false, I2CSA=false, I30CSA=false, I31CSA=false, I32CSA=false, I3CSA=false, I4CSA=false, I5CSA=false, I6CSA=false, I7CSA=false, I8CSA=false, I9CSA=false, NumAuxChannels=0, NumConverters=1, PgoodConfig=0, PM_RplcString=PM_1_8_Ctrl1, SEVoltageRange=1, SymbolBVisible=true, V10SingleEnded=false, V11SingleEnded=false, V12SingleEnded=false, V13SingleEnded=false, V14SingleEnded=false, V15SingleEnded=false, V16SingleEnded=false, V17SingleEnded=false, V18SingleEnded=false, V19SingleEnded=false, V1SingleEnded=false, V20SingleEnded=false, V21SingleEnded=false, V22SingleEnded=false, V23SingleEnded=false, V24SingleEnded=false, V25SingleEnded=false, V26SingleEnded=false, V27SingleEnded=false, V28SingleEnded=false, V29SingleEnded=false, V2SingleEnded=false, V30SingleEnded=false, V31SingleEnded=false, V32SingleEnded=false, V3SingleEnded=false, V4SingleEnded=false, V5SingleEnded=false, V6SingleEnded=false, V7SingleEnded=false, V8SingleEnded=false, V9SingleEnded=false, Voltage_Input_Buffer_Mode=2, VoltageFilterType=3, VoltagesTable=<?xml version="1.0" encoding="utf-16"?><CyVoltagesTable xmlns:version="v1.0"><m_voltagesTable><CyVoltagesTableRow><m_converterName>Converter 1</m_converterName><m_nominalOutputVoltage>2.25</m_nominalOutputVoltage><m_uvFaultTreshold>0.75</m_uvFaultTreshold><m_uvWarningTreshold>1.7</m_uvWarningTreshold><m_ovFaultTreshold>3</m_ovFaultTreshold><m_ovWarningTreshold>2.825</m_ovWarningTreshold><m_inputScalingFactor>1</m_inputScalingFactor><m_voltageMeasurementType>SingleEnded</m_voltageMeasurementType></CyVoltagesTableRow></m_voltagesTable></CyVoltagesTable>, WarnSources_OC=false, WarnSources_OV=false, WarnSources_UV=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=PowerMonitor_v1_60, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PowerMonitor_1, CY_INSTANCE_SHORT_NAME=PowerMonitor_1, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=60, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 SP1, INSTANCE_NAME=PowerMonitor_1, )
module PowerMonitor_v1_60_12 (
    pgood_bus,
    v1,
    i1_rtn1,
    eoc,
    fault,
    warn,
    pgood,
    cal,
    clock);
    output     [31:0] pgood_bus;
    inout       v1;
    electrical  v1;
    inout       i1_rtn1;
    electrical  i1_rtn1;
    output      eoc;
    output      fault;
    output      warn;
    output      pgood;
    inout       cal;
    electrical  cal;
    input       clock;

    parameter NumConverters = 1;
    parameter PgoodConfig = 0;

    electrical  negSignal;
    electrical  posSignal;
    electrical  CSA23;
          wire [32:1] pgoodbus;
    electrical  CSA17;
    electrical  CSA6;
    electrical  CSA15;
    electrical  CSA13;
    electrical  CSA11;
    electrical  CSA9;
    electrical  i20;
    electrical  CSA10;
    electrical  CSA8;
    electrical  i2;
    electrical  CSA31;
    electrical  i18;
    electrical  CSA20;
    electrical  CSA5;
    electrical  CSA19;
    electrical  CSA18;
    electrical  CSA16;
    electrical  CSA14;
    electrical  CSA12;
    electrical  CSA4;
    electrical  CSA3;
    electrical  CSA2;
    electrical  CSA7;
    electrical  i1;
    electrical  CSA21;
    electrical  CSA1;
    electrical  CSA22;
    electrical  CSA24;
    electrical  i32;
    electrical  i31;
    electrical  i30;
    electrical  i29;
    electrical  i28;
    electrical  i27;
    electrical  i26;
    electrical  i25;
    electrical  i24;
    electrical  i23;
    electrical  i22;
    electrical  i21;
    electrical  i7;
    electrical  i6;
    electrical  i5;
    electrical  Net_1542;
    electrical  Net_1540;
    electrical  Net_2325;
          wire  Net_2324;
    electrical  CSA25;
    electrical  CSA26;
    electrical  CSA27;
    electrical  CSA28;
    electrical  CSA29;
    electrical  CSA30;
    electrical  CSA32;
    electrical  i4;
          wire  Net_2323;
    electrical  i3;
    electrical  i8;
    electrical  i9;
    electrical  i10;
    electrical  i11;
    electrical  i12;
    electrical  i13;
    electrical  i14;
    electrical  i15;
    electrical  i16;
    electrical  i17;
    electrical  i19;
    electrical  NEG_IN_7;
          wire  Net_2322;
    electrical  NEG_IN_36;
    electrical  NEG_IN_35;
    electrical  NEG_IN_34;
    electrical  NEG_IN_33;
    electrical  NEG_IN_32;
    electrical  NEG_IN_31;
    electrical  NEG_IN_30;
    electrical  NEG_IN_29;
    electrical  NEG_IN_28;
    electrical  NEG_IN_27;
    electrical  NEG_IN_26;
    electrical  NEG_IN_25;
    electrical  NEG_IN_24;
    electrical  NEG_IN_23;
    electrical  NEG_IN_22;
    electrical  NEG_IN_21;
    electrical  NEG_IN_20;
    electrical  NEG_IN_19;
    electrical  NEG_IN_18;
    electrical  NEG_IN_17;
    electrical  NEG_IN_16;
    electrical  NEG_IN_15;
    electrical  NEG_IN_14;
    electrical  NEG_IN_13;
    electrical  NEG_IN_12;
    electrical  NEG_IN_11;
    electrical  NEG_IN_10;
    electrical  NEG_IN_9;
    electrical  NEG_IN_8;
    electrical  NEG_IN_1;
    electrical  NEG_IN_2;
    electrical  NEG_IN_3;
    electrical  NEG_IN_4;
    electrical  NEG_IN_5;
    electrical  NEG_IN_6;
    electrical  Net_2299;
    electrical  POS_IN_19;
    electrical  POS_IN_32;
    electrical  POS_IN_33;
    electrical  POS_IN_34;
    electrical  POS_IN_35;
    electrical  POS_IN_36;
    electrical  POS_IN_37;
    electrical  POS_IN_31;
    electrical  POS_IN_30;
    electrical  POS_IN_29;
    electrical  POS_IN_28;
    electrical  POS_IN_27;
    electrical  POS_IN_26;
    electrical  POS_IN_25;
    electrical  POS_IN_24;
    electrical  POS_IN_23;
    electrical  POS_IN_22;
    electrical  POS_IN_21;
    electrical  POS_IN_20;
    electrical  Net_1942;
    electrical  POS_IN_18;
    electrical  POS_IN_17;
    electrical  POS_IN_16;
    electrical  POS_IN_15;
    electrical  POS_IN_14;
    electrical  POS_IN_13;
    electrical  POS_IN_12;
    electrical  POS_IN_11;
    electrical  POS_IN_10;
    electrical  POS_IN_9;
    electrical  POS_IN_8;
    electrical  POS_IN_7;
    electrical  POS_IN_6;
    electrical  POS_IN_5;
    electrical  POS_IN_4;
    electrical  POS_IN_3;
    electrical  POS_IN_2;
    electrical  POS_IN_1;
    electrical  PGA_REF;
    electrical  Net_2011;
    electrical  Net_1640;

    B_PowerMonitor_v1_50 B_PowerMonitor (
        .clock(clock),
        .pgood_bus(pgoodbus[32:1]),
        .warn(warn),
        .fault(fault),
        .eoc(eoc));
    defparam B_PowerMonitor.NumConverters = 1;
    defparam B_PowerMonitor.PgoodConfig = 0;

    ADC_DelSig_v2_30_6 ADC (
        .vplus(posSignal),
        .vminus(negSignal),
        .soc(1'b1),
        .eoc(Net_2323),
        .aclk(1'b0),
        .nVref(Net_2325));

    // -- AMux PM_AMux_Current start -- ***
    // -- Mux A --
    
    cy_psoc3_amux_v1_0 PM_AMux_Current(
        .muxin({
            PGA_REF,
            Net_1540,
            NEG_IN_36,
            NEG_IN_35,
            NEG_IN_34,
            NEG_IN_33,
            NEG_IN_32,
            NEG_IN_31,
            NEG_IN_30,
            NEG_IN_29,
            NEG_IN_28,
            NEG_IN_27,
            NEG_IN_26,
            NEG_IN_25,
            NEG_IN_24,
            NEG_IN_23,
            NEG_IN_22,
            NEG_IN_21,
            NEG_IN_20,
            NEG_IN_19,
            NEG_IN_18,
            NEG_IN_17,
            NEG_IN_16,
            NEG_IN_15,
            NEG_IN_14,
            NEG_IN_13,
            NEG_IN_12,
            NEG_IN_11,
            NEG_IN_10,
            NEG_IN_9,
            NEG_IN_8,
            NEG_IN_7,
            NEG_IN_6,
            NEG_IN_5,
            NEG_IN_4,
            NEG_IN_3,
            NEG_IN_2,
            NEG_IN_1
            }),
        .vout(negSignal)
        );
    
    defparam PM_AMux_Current.muxin_width = 38;
    defparam PM_AMux_Current.init_mux_sel = 38'h0;
    defparam PM_AMux_Current.one_active = 0;
    
    // -- AMux PM_AMux_Current end --

    PGA_v2_0_7 PGA (
        .Vin(Net_2299),
        .Vref(Net_1542),
        .Vout(PGA_REF));


	cy_vref_v1_0
		#(.autoenable(1),
		  .guid("89B398AD-36A8-4627-9212-707F2986319E"),
		  .name("1.024V"))
		vRef_1
		 (.vout(Net_2299));


	// cy_analog_virtualmux_38 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_38_connect(i19, Net_2011);
	defparam cy_analog_virtualmux_38_connect.sig_width = 1;

	// cy_analog_virtualmux_37 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_37_connect(i18, Net_2011);
	defparam cy_analog_virtualmux_37_connect.sig_width = 1;

	// cy_analog_virtualmux_36 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_36_connect(i17, Net_2011);
	defparam cy_analog_virtualmux_36_connect.sig_width = 1;

	// cy_analog_virtualmux_35 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_35_connect(i16, Net_2011);
	defparam cy_analog_virtualmux_35_connect.sig_width = 1;

	// cy_analog_virtualmux_34 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_34_connect(i15, Net_2011);
	defparam cy_analog_virtualmux_34_connect.sig_width = 1;

	// cy_analog_virtualmux_33 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_33_connect(i14, Net_2011);
	defparam cy_analog_virtualmux_33_connect.sig_width = 1;

	// cy_analog_virtualmux_32 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_32_connect(i13, Net_2011);
	defparam cy_analog_virtualmux_32_connect.sig_width = 1;

	// cy_analog_virtualmux_31 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_31_connect(i1, i1_rtn1);
	defparam cy_analog_virtualmux_31_connect.sig_width = 1;

	// cy_analog_virtualmux_30 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_30_connect(i2, Net_2011);
	defparam cy_analog_virtualmux_30_connect.sig_width = 1;

	// cy_analog_virtualmux_29 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_29_connect(i3, Net_2011);
	defparam cy_analog_virtualmux_29_connect.sig_width = 1;

	// cy_analog_virtualmux_28 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_28_connect(i4, Net_2011);
	defparam cy_analog_virtualmux_28_connect.sig_width = 1;

	// cy_analog_virtualmux_27 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_27_connect(i5, Net_2011);
	defparam cy_analog_virtualmux_27_connect.sig_width = 1;

	// cy_analog_virtualmux_26 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_26_connect(i6, Net_2011);
	defparam cy_analog_virtualmux_26_connect.sig_width = 1;

	// cy_analog_virtualmux_25 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_25_connect(i7, Net_2011);
	defparam cy_analog_virtualmux_25_connect.sig_width = 1;

	// cy_analog_virtualmux_24 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_24_connect(i8, Net_2011);
	defparam cy_analog_virtualmux_24_connect.sig_width = 1;

	// cy_analog_virtualmux_23 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_23_connect(i9, Net_2011);
	defparam cy_analog_virtualmux_23_connect.sig_width = 1;

	// cy_analog_virtualmux_22 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_22_connect(i10, Net_2011);
	defparam cy_analog_virtualmux_22_connect.sig_width = 1;

	// cy_analog_virtualmux_21 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_21_connect(i11, Net_2011);
	defparam cy_analog_virtualmux_21_connect.sig_width = 1;

	// cy_analog_virtualmux_17 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_17_connect(NEG_IN_36, Net_2011);
	defparam cy_analog_virtualmux_17_connect.sig_width = 1;

	// cy_analog_virtualmux_16 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_16_connect(NEG_IN_35, Net_2011);
	defparam cy_analog_virtualmux_16_connect.sig_width = 1;

	// cy_analog_virtualmux_15 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_15_connect(NEG_IN_34, Net_2011);
	defparam cy_analog_virtualmux_15_connect.sig_width = 1;

	// cy_analog_virtualmux_14 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_14_connect(NEG_IN_33, Net_2011);
	defparam cy_analog_virtualmux_14_connect.sig_width = 1;

	// cy_analog_virtualmux_13 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_13_connect(i32, Net_2011);
	defparam cy_analog_virtualmux_13_connect.sig_width = 1;

	// cy_analog_virtualmux_12 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_12_connect(i20, Net_2011);
	defparam cy_analog_virtualmux_12_connect.sig_width = 1;

	// cy_analog_virtualmux_11 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_11_connect(i21, Net_2011);
	defparam cy_analog_virtualmux_11_connect.sig_width = 1;

	// cy_analog_virtualmux_10 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_10_connect(i22, Net_2011);
	defparam cy_analog_virtualmux_10_connect.sig_width = 1;

	// cy_analog_virtualmux_9 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_9_connect(i23, Net_2011);
	defparam cy_analog_virtualmux_9_connect.sig_width = 1;

	// cy_analog_virtualmux_5 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_5_connect(i27, Net_2011);
	defparam cy_analog_virtualmux_5_connect.sig_width = 1;

	// cy_analog_virtualmux_6 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_6_connect(i26, Net_2011);
	defparam cy_analog_virtualmux_6_connect.sig_width = 1;

	// cy_analog_virtualmux_7 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_7_connect(i25, Net_2011);
	defparam cy_analog_virtualmux_7_connect.sig_width = 1;

	// cy_analog_virtualmux_8 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_8_connect(i24, Net_2011);
	defparam cy_analog_virtualmux_8_connect.sig_width = 1;

	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(i28, Net_2011);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(i29, Net_2011);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(i30, Net_2011);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(i31, Net_2011);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    ADC_Vssa_v1_20_8 ADC_Vssa_3 (
        .vout(Net_2011));

	// cy_analog_virtualmux_20 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_20_connect(i12, Net_2011);
	defparam cy_analog_virtualmux_20_connect.sig_width = 1;

    ADC_Vssa_v1_20_9 ADC_Vssa_1 (
        .vout(Net_1540));

    // -- AMux PM_AMux_Voltage start -- ***
    // -- Mux A --
    
    cy_psoc3_amux_v1_0 PM_AMux_Voltage(
        .muxin({
            CSA32,
            CSA31,
            CSA30,
            CSA29,
            CSA28,
            CSA27,
            CSA26,
            CSA25,
            CSA24,
            CSA23,
            CSA22,
            CSA21,
            CSA20,
            CSA19,
            CSA18,
            CSA17,
            CSA16,
            CSA15,
            CSA14,
            CSA13,
            CSA12,
            CSA11,
            CSA10,
            CSA9,
            CSA8,
            CSA7,
            CSA6,
            CSA5,
            CSA4,
            CSA3,
            CSA2,
            CSA1,
            POS_IN_37,
            POS_IN_36,
            POS_IN_35,
            POS_IN_34,
            POS_IN_33,
            POS_IN_32,
            POS_IN_31,
            POS_IN_30,
            POS_IN_29,
            POS_IN_28,
            POS_IN_27,
            POS_IN_26,
            POS_IN_25,
            POS_IN_24,
            POS_IN_23,
            POS_IN_22,
            POS_IN_21,
            POS_IN_20,
            POS_IN_19,
            POS_IN_18,
            POS_IN_17,
            POS_IN_16,
            POS_IN_15,
            POS_IN_14,
            POS_IN_13,
            POS_IN_12,
            POS_IN_11,
            POS_IN_10,
            POS_IN_9,
            POS_IN_8,
            POS_IN_7,
            POS_IN_6,
            POS_IN_5,
            POS_IN_4,
            POS_IN_3,
            POS_IN_2,
            POS_IN_1
            }),
        .vout(posSignal)
        );
    
    defparam PM_AMux_Voltage.muxin_width = 69;
    defparam PM_AMux_Voltage.init_mux_sel = 69'h0;
    defparam PM_AMux_Voltage.one_active = 0;
    
    // -- AMux PM_AMux_Voltage end --

	// cy_analog_virtualmux_73 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_73_connect(POS_IN_37, Net_1640);
	defparam cy_analog_virtualmux_73_connect.sig_width = 1;

	// cy_analog_virtualmux_18 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_18_connect(POS_IN_31, Net_1640);
	defparam cy_analog_virtualmux_18_connect.sig_width = 1;

	// cy_analog_virtualmux_19 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_19_connect(POS_IN_30, Net_1640);
	defparam cy_analog_virtualmux_19_connect.sig_width = 1;

	// cy_analog_virtualmux_39 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_39_connect(POS_IN_29, Net_1640);
	defparam cy_analog_virtualmux_39_connect.sig_width = 1;

	// cy_analog_virtualmux_40 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_40_connect(POS_IN_28, Net_1640);
	defparam cy_analog_virtualmux_40_connect.sig_width = 1;

	// cy_analog_virtualmux_41 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_41_connect(POS_IN_27, Net_1640);
	defparam cy_analog_virtualmux_41_connect.sig_width = 1;

	// cy_analog_virtualmux_42 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_42_connect(POS_IN_26, Net_1640);
	defparam cy_analog_virtualmux_42_connect.sig_width = 1;

	// cy_analog_virtualmux_43 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_43_connect(POS_IN_25, Net_1640);
	defparam cy_analog_virtualmux_43_connect.sig_width = 1;

	// cy_analog_virtualmux_44 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_44_connect(POS_IN_24, Net_1640);
	defparam cy_analog_virtualmux_44_connect.sig_width = 1;

	// cy_analog_virtualmux_45 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_45_connect(POS_IN_23, Net_1640);
	defparam cy_analog_virtualmux_45_connect.sig_width = 1;

	// cy_analog_virtualmux_46 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_46_connect(POS_IN_22, Net_1640);
	defparam cy_analog_virtualmux_46_connect.sig_width = 1;

	// cy_analog_virtualmux_47 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_47_connect(POS_IN_21, Net_1640);
	defparam cy_analog_virtualmux_47_connect.sig_width = 1;

	// cy_analog_virtualmux_48 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_48_connect(POS_IN_20, Net_1640);
	defparam cy_analog_virtualmux_48_connect.sig_width = 1;

	// cy_analog_virtualmux_49 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_49_connect(POS_IN_32, Net_1640);
	defparam cy_analog_virtualmux_49_connect.sig_width = 1;

	// cy_analog_virtualmux_50 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_50_connect(POS_IN_33, Net_1640);
	defparam cy_analog_virtualmux_50_connect.sig_width = 1;

	// cy_analog_virtualmux_51 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_51_connect(POS_IN_34, Net_1640);
	defparam cy_analog_virtualmux_51_connect.sig_width = 1;

	// cy_analog_virtualmux_52 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_52_connect(POS_IN_35, Net_1640);
	defparam cy_analog_virtualmux_52_connect.sig_width = 1;

	// cy_analog_virtualmux_53 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_53_connect(POS_IN_36, Net_1640);
	defparam cy_analog_virtualmux_53_connect.sig_width = 1;

	// cy_analog_virtualmux_54 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_54_connect(POS_IN_12, Net_1640);
	defparam cy_analog_virtualmux_54_connect.sig_width = 1;

	// cy_analog_virtualmux_55 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_55_connect(POS_IN_11, Net_1640);
	defparam cy_analog_virtualmux_55_connect.sig_width = 1;

	// cy_analog_virtualmux_56 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_56_connect(POS_IN_10, Net_1640);
	defparam cy_analog_virtualmux_56_connect.sig_width = 1;

	// cy_analog_virtualmux_57 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_57_connect(POS_IN_9, Net_1640);
	defparam cy_analog_virtualmux_57_connect.sig_width = 1;

	// cy_analog_virtualmux_58 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_58_connect(POS_IN_8, Net_1640);
	defparam cy_analog_virtualmux_58_connect.sig_width = 1;

	// cy_analog_virtualmux_59 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_59_connect(POS_IN_7, Net_1640);
	defparam cy_analog_virtualmux_59_connect.sig_width = 1;

	// cy_analog_virtualmux_60 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_60_connect(POS_IN_6, Net_1640);
	defparam cy_analog_virtualmux_60_connect.sig_width = 1;

	// cy_analog_virtualmux_61 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_61_connect(POS_IN_5, Net_1640);
	defparam cy_analog_virtualmux_61_connect.sig_width = 1;

	// cy_analog_virtualmux_62 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_62_connect(POS_IN_4, Net_1640);
	defparam cy_analog_virtualmux_62_connect.sig_width = 1;

	// cy_analog_virtualmux_63 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_63_connect(POS_IN_3, Net_1640);
	defparam cy_analog_virtualmux_63_connect.sig_width = 1;

	// cy_analog_virtualmux_64 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_64_connect(POS_IN_2, Net_1640);
	defparam cy_analog_virtualmux_64_connect.sig_width = 1;

	// cy_analog_virtualmux_65 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_65_connect(POS_IN_1, v1);
	defparam cy_analog_virtualmux_65_connect.sig_width = 1;

	// cy_analog_virtualmux_66 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_66_connect(POS_IN_13, Net_1640);
	defparam cy_analog_virtualmux_66_connect.sig_width = 1;

	// cy_analog_virtualmux_67 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_67_connect(POS_IN_14, Net_1640);
	defparam cy_analog_virtualmux_67_connect.sig_width = 1;

	// cy_analog_virtualmux_68 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_68_connect(POS_IN_15, Net_1640);
	defparam cy_analog_virtualmux_68_connect.sig_width = 1;

	// cy_analog_virtualmux_69 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_69_connect(POS_IN_16, Net_1640);
	defparam cy_analog_virtualmux_69_connect.sig_width = 1;

	// cy_analog_virtualmux_70 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_70_connect(POS_IN_17, Net_1640);
	defparam cy_analog_virtualmux_70_connect.sig_width = 1;

	// cy_analog_virtualmux_71 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_71_connect(POS_IN_18, Net_1640);
	defparam cy_analog_virtualmux_71_connect.sig_width = 1;

	// cy_analog_virtualmux_72 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_72_connect(POS_IN_19, Net_1640);
	defparam cy_analog_virtualmux_72_connect.sig_width = 1;

    ADC_Vssa_v1_20_10 ADC_Vssa_2 (
        .vout(Net_1640));

	// cy_analog_virtualmux_75 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_75_connect(CSA31, Net_1942);
	defparam cy_analog_virtualmux_75_connect.sig_width = 1;

	// cy_analog_virtualmux_76 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_76_connect(CSA30, Net_1942);
	defparam cy_analog_virtualmux_76_connect.sig_width = 1;

	// cy_analog_virtualmux_77 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_77_connect(CSA29, Net_1942);
	defparam cy_analog_virtualmux_77_connect.sig_width = 1;

	// cy_analog_virtualmux_78 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_78_connect(CSA28, Net_1942);
	defparam cy_analog_virtualmux_78_connect.sig_width = 1;

	// cy_analog_virtualmux_79 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_79_connect(CSA27, Net_1942);
	defparam cy_analog_virtualmux_79_connect.sig_width = 1;

	// cy_analog_virtualmux_80 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_80_connect(CSA26, Net_1942);
	defparam cy_analog_virtualmux_80_connect.sig_width = 1;

	// cy_analog_virtualmux_81 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_81_connect(CSA25, Net_1942);
	defparam cy_analog_virtualmux_81_connect.sig_width = 1;

	// cy_analog_virtualmux_82 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_82_connect(CSA24, Net_1942);
	defparam cy_analog_virtualmux_82_connect.sig_width = 1;

	// cy_analog_virtualmux_83 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_83_connect(CSA23, Net_1942);
	defparam cy_analog_virtualmux_83_connect.sig_width = 1;

	// cy_analog_virtualmux_84 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_84_connect(CSA22, Net_1942);
	defparam cy_analog_virtualmux_84_connect.sig_width = 1;

	// cy_analog_virtualmux_85 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_85_connect(CSA21, Net_1942);
	defparam cy_analog_virtualmux_85_connect.sig_width = 1;

	// cy_analog_virtualmux_86 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_86_connect(CSA20, Net_1942);
	defparam cy_analog_virtualmux_86_connect.sig_width = 1;

	// cy_analog_virtualmux_87 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_87_connect(CSA32, Net_1942);
	defparam cy_analog_virtualmux_87_connect.sig_width = 1;

	// cy_analog_virtualmux_92 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_92_connect(CSA12, Net_1942);
	defparam cy_analog_virtualmux_92_connect.sig_width = 1;

	// cy_analog_virtualmux_93 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_93_connect(CSA11, Net_1942);
	defparam cy_analog_virtualmux_93_connect.sig_width = 1;

	// cy_analog_virtualmux_94 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_94_connect(CSA10, Net_1942);
	defparam cy_analog_virtualmux_94_connect.sig_width = 1;

	// cy_analog_virtualmux_95 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_95_connect(CSA9, Net_1942);
	defparam cy_analog_virtualmux_95_connect.sig_width = 1;

	// cy_analog_virtualmux_96 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_96_connect(CSA8, Net_1942);
	defparam cy_analog_virtualmux_96_connect.sig_width = 1;

	// cy_analog_virtualmux_97 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_97_connect(CSA7, Net_1942);
	defparam cy_analog_virtualmux_97_connect.sig_width = 1;

	// cy_analog_virtualmux_98 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_98_connect(CSA6, Net_1942);
	defparam cy_analog_virtualmux_98_connect.sig_width = 1;

	// cy_analog_virtualmux_99 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_99_connect(CSA5, Net_1942);
	defparam cy_analog_virtualmux_99_connect.sig_width = 1;

	// cy_analog_virtualmux_100 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_100_connect(CSA4, Net_1942);
	defparam cy_analog_virtualmux_100_connect.sig_width = 1;

	// cy_analog_virtualmux_101 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_101_connect(CSA3, Net_1942);
	defparam cy_analog_virtualmux_101_connect.sig_width = 1;

	// cy_analog_virtualmux_102 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_102_connect(CSA2, Net_1942);
	defparam cy_analog_virtualmux_102_connect.sig_width = 1;

	// cy_analog_virtualmux_103 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_103_connect(CSA1, Net_1942);
	defparam cy_analog_virtualmux_103_connect.sig_width = 1;

	// cy_analog_virtualmux_104 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_104_connect(CSA13, Net_1942);
	defparam cy_analog_virtualmux_104_connect.sig_width = 1;

	// cy_analog_virtualmux_105 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_105_connect(CSA14, Net_1942);
	defparam cy_analog_virtualmux_105_connect.sig_width = 1;

	// cy_analog_virtualmux_106 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_106_connect(CSA15, Net_1942);
	defparam cy_analog_virtualmux_106_connect.sig_width = 1;

	// cy_analog_virtualmux_107 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_107_connect(CSA16, Net_1942);
	defparam cy_analog_virtualmux_107_connect.sig_width = 1;

	// cy_analog_virtualmux_108 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_108_connect(CSA17, Net_1942);
	defparam cy_analog_virtualmux_108_connect.sig_width = 1;

	// cy_analog_virtualmux_109 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_109_connect(CSA18, Net_1942);
	defparam cy_analog_virtualmux_109_connect.sig_width = 1;

	// cy_analog_virtualmux_110 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_110_connect(CSA19, Net_1942);
	defparam cy_analog_virtualmux_110_connect.sig_width = 1;

    ADC_Vssa_v1_20_11 ADC_Vssa_4 (
        .vout(Net_1942));

	// cy_analog_virtualmux_74 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_74_connect(NEG_IN_1, i1);
	defparam cy_analog_virtualmux_74_connect.sig_width = 1;

	// cy_analog_virtualmux_88 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_88_connect(NEG_IN_2, Net_2011);
	defparam cy_analog_virtualmux_88_connect.sig_width = 1;

	// cy_analog_virtualmux_89 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_89_connect(NEG_IN_15, Net_2011);
	defparam cy_analog_virtualmux_89_connect.sig_width = 1;

	// cy_analog_virtualmux_90 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_90_connect(NEG_IN_3, Net_2011);
	defparam cy_analog_virtualmux_90_connect.sig_width = 1;

	// cy_analog_virtualmux_91 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_91_connect(NEG_IN_16, Net_2011);
	defparam cy_analog_virtualmux_91_connect.sig_width = 1;

	// cy_analog_virtualmux_111 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_111_connect(NEG_IN_17, Net_2011);
	defparam cy_analog_virtualmux_111_connect.sig_width = 1;

	// cy_analog_virtualmux_112 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_112_connect(NEG_IN_18, Net_2011);
	defparam cy_analog_virtualmux_112_connect.sig_width = 1;

	// cy_analog_virtualmux_113 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_113_connect(NEG_IN_14, Net_2011);
	defparam cy_analog_virtualmux_113_connect.sig_width = 1;

	// cy_analog_virtualmux_114 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_114_connect(NEG_IN_13, Net_2011);
	defparam cy_analog_virtualmux_114_connect.sig_width = 1;

	// cy_analog_virtualmux_115 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_115_connect(NEG_IN_12, Net_2011);
	defparam cy_analog_virtualmux_115_connect.sig_width = 1;

	// cy_analog_virtualmux_116 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_116_connect(NEG_IN_11, Net_2011);
	defparam cy_analog_virtualmux_116_connect.sig_width = 1;

	// cy_analog_virtualmux_117 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_117_connect(NEG_IN_10, Net_2011);
	defparam cy_analog_virtualmux_117_connect.sig_width = 1;

	// cy_analog_virtualmux_118 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_118_connect(NEG_IN_9, Net_2011);
	defparam cy_analog_virtualmux_118_connect.sig_width = 1;

	// cy_analog_virtualmux_119 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_119_connect(NEG_IN_8, Net_2011);
	defparam cy_analog_virtualmux_119_connect.sig_width = 1;

	// cy_analog_virtualmux_120 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_120_connect(NEG_IN_7, Net_2011);
	defparam cy_analog_virtualmux_120_connect.sig_width = 1;

	// cy_analog_virtualmux_121 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_121_connect(NEG_IN_6, Net_2011);
	defparam cy_analog_virtualmux_121_connect.sig_width = 1;

	// cy_analog_virtualmux_122 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_122_connect(NEG_IN_5, Net_2011);
	defparam cy_analog_virtualmux_122_connect.sig_width = 1;

	// cy_analog_virtualmux_123 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_123_connect(NEG_IN_4, Net_2011);
	defparam cy_analog_virtualmux_123_connect.sig_width = 1;

	// cy_analog_virtualmux_124 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_124_connect(NEG_IN_32, Net_2011);
	defparam cy_analog_virtualmux_124_connect.sig_width = 1;

	// cy_analog_virtualmux_125 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_125_connect(NEG_IN_31, Net_2011);
	defparam cy_analog_virtualmux_125_connect.sig_width = 1;

	// cy_analog_virtualmux_126 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_126_connect(NEG_IN_30, Net_2011);
	defparam cy_analog_virtualmux_126_connect.sig_width = 1;

	// cy_analog_virtualmux_127 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_127_connect(NEG_IN_29, Net_2011);
	defparam cy_analog_virtualmux_127_connect.sig_width = 1;

	// cy_analog_virtualmux_128 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_128_connect(NEG_IN_28, Net_2011);
	defparam cy_analog_virtualmux_128_connect.sig_width = 1;

	// cy_analog_virtualmux_129 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_129_connect(NEG_IN_27, Net_2011);
	defparam cy_analog_virtualmux_129_connect.sig_width = 1;

	// cy_analog_virtualmux_130 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_130_connect(NEG_IN_26, Net_2011);
	defparam cy_analog_virtualmux_130_connect.sig_width = 1;

	// cy_analog_virtualmux_131 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_131_connect(NEG_IN_25, Net_2011);
	defparam cy_analog_virtualmux_131_connect.sig_width = 1;

	// cy_analog_virtualmux_132 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_132_connect(NEG_IN_24, Net_2011);
	defparam cy_analog_virtualmux_132_connect.sig_width = 1;

	// cy_analog_virtualmux_133 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_133_connect(NEG_IN_23, Net_2011);
	defparam cy_analog_virtualmux_133_connect.sig_width = 1;

	// cy_analog_virtualmux_134 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_134_connect(NEG_IN_22, Net_2011);
	defparam cy_analog_virtualmux_134_connect.sig_width = 1;

	// cy_analog_virtualmux_135 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_135_connect(NEG_IN_21, Net_2011);
	defparam cy_analog_virtualmux_135_connect.sig_width = 1;

	// cy_analog_virtualmux_136 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_136_connect(NEG_IN_20, Net_2011);
	defparam cy_analog_virtualmux_136_connect.sig_width = 1;

	// cy_analog_virtualmux_137 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_137_connect(NEG_IN_19, Net_2011);
	defparam cy_analog_virtualmux_137_connect.sig_width = 1;


	cy_analog_location_v1_0
		#(.guid("58EDBE38-8752-48de-9177-34A2D120FD5C"),
		  .name("Analog Local Bus Left 1 (abusl1)"),
		  .is_amux_constraint(1))
		Mux_Constraint_1
		 (.connect(PGA_REF));



    assign pgood_bus = pgoodbus[32:1];

    assign pgood = pgoodbus[1];


endmodule

// top
module top ;

          wire  Net_2440;
          wire [31:0] Net_2439;
          wire  Net_2438;
    electrical  Net_2437;
          wire  Net_2414;
          wire  Net_2413;
    electrical  Net_2408;
    electrical  Net_2403;
          wire  Net_2442;
          wire  Net_2401;
          wire  Net_2276;
          wire  Net_2275;
          wire  Net_2338;
          wire  Net_2337;
          wire [7:0] Net_2086;
          wire  Net_2085;
          wire  Net_2084;
          wire  Net_2083;
          wire  Net_2082;
          wire  Net_2081;
          wire  Net_2080;
          wire  Net_2079;
          wire  Net_2078;
          wire  Net_2400;
          wire  Net_1615;
          wire [7:0] Net_1180;
          wire  Net_1179;
          wire  Net_1079;
          wire  Net_2211;
          wire  Net_2210;
          wire  Net_2209;
          wire  Net_2208;
          wire  Net_2399;
          wire  Net_2154;
          wire  Net_2153;
          wire  Net_2152;
          wire  Net_2151;
          wire  Net_2150;
          wire  Net_2149;
          wire  Net_2148;
          wire  Net_2147;
          wire  Net_276;
          wire  Net_46;
          wire  Net_2398;
          wire  Net_2397;
          wire  Net_2396;
          wire  Net_2395;
          wire  Net_2394;
          wire  Net_2393;
          wire  Net_2392;
          wire  Net_2391;
          wire  Net_2390;
          wire  Net_2389;
          wire  Net_2388;
          wire  Net_2248;
          wire  Net_11;
          wire  Net_1844;
    electrical  Net_1078;
          wire  Net_1399;
          wire  Net_290;
          wire  Net_289;
          wire  Net_1334;
          wire  Net_1488;
          wire  Net_1396;
          wire  Net_1473;
    electrical  Net_1076;
          wire  Net_754;
          wire  Net_701;
          wire  Net_12;
          wire  Net_10;
          wire  Net_227;
          wire  Net_174;

    PWM_v3_30_0 PWM_motor (
        .reset(Net_227),
        .clock(Net_174),
        .tc(Net_2388),
        .pwm1(Net_2389),
        .pwm2(Net_2390),
        .interrupt(Net_2391),
        .capture(1'b0),
        .kill(1'b1),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_289),
        .ph1(Net_2397),
        .ph2(Net_2398));
    defparam PWM_motor.Resolution = 8;


	cy_clock_v1_0
		#(.id("f0d9fc48-2682-4ff3-a810-e9d468acc330"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("83333333.3333333"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_1
		 (.clock_out(Net_174));


    assign Net_227 = 1'h0;

	wire [0:0] tmpOE__Motor_out_net;
	wire [0:0] tmpFB_0__Motor_out_net;
	wire [0:0] tmpIO_0__Motor_out_net;
	wire [0:0] tmpINTERRUPT_0__Motor_out_net;
	electrical [0:0] tmpSIOVREF__Motor_out_net;

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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_out
		 (.oe(tmpOE__Motor_out_net),
		  .y({Net_276}),
		  .fb({tmpFB_0__Motor_out_net[0:0]}),
		  .io({tmpIO_0__Motor_out_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_out_net),
		  .interrupt({tmpINTERRUPT_0__Motor_out_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_out_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


    assign Net_276 = Net_290 & Net_289;

    CyControlReg_v1_80 Control_Reg_motor_reset (
        .control_1(Net_2147),
        .control_2(Net_2148),
        .control_3(Net_2149),
        .control_0(Net_1473),
        .control_4(Net_2150),
        .control_5(Net_2151),
        .control_6(Net_2152),
        .control_7(Net_2153),
        .clock(Net_1334),
        .reset(1'b0));
    defparam Control_Reg_motor_reset.Bit0Mode = 3;
    defparam Control_Reg_motor_reset.Bit1Mode = 0;
    defparam Control_Reg_motor_reset.Bit2Mode = 0;
    defparam Control_Reg_motor_reset.Bit3Mode = 0;
    defparam Control_Reg_motor_reset.Bit4Mode = 0;
    defparam Control_Reg_motor_reset.Bit5Mode = 0;
    defparam Control_Reg_motor_reset.Bit6Mode = 0;
    defparam Control_Reg_motor_reset.Bit7Mode = 0;
    defparam Control_Reg_motor_reset.BitValue = 0;
    defparam Control_Reg_motor_reset.BusDisplay = 0;
    defparam Control_Reg_motor_reset.ExtrReset = 1;
    defparam Control_Reg_motor_reset.NumOutputs = 1;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_12));


	cy_clock_v1_0
		#(.id("c0fb34bd-1044-4931-9788-16b01ce89812"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		timer_clock
		 (.clock_out(Net_10));


    Timer_v2_70_1 Timer_RPM (
        .reset(Net_12),
        .interrupt(Net_754),
        .enable(1'b1),
        .trigger(1'b1),
        .capture(Net_701),
        .capture_out(Net_2210),
        .tc(Net_2211),
        .clock(Net_10));
    defparam Timer_RPM.CaptureCount = 2;
    defparam Timer_RPM.CaptureCounterEnabled = 0;
    defparam Timer_RPM.DeviceFamily = "PSoC5";
    defparam Timer_RPM.InterruptOnCapture = 1;
    defparam Timer_RPM.InterruptOnTC = 1;
    defparam Timer_RPM.Resolution = 32;
    defparam Timer_RPM.SiliconRevision = "0";

	wire [0:0] tmpOE__RPM_net;
	wire [0:0] tmpIO_0__RPM_net;
	wire [0:0] tmpINTERRUPT_0__RPM_net;
	electrical [0:0] tmpSIOVREF__RPM_net;

	cy_psoc3_pins_v1_10
		#(.id("8d318d8b-cf7b-4b6b-b02c-ab1c5c49d0ba"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		RPM
		 (.oe(tmpOE__RPM_net),
		  .y({1'b0}),
		  .fb({Net_701}),
		  .io({tmpIO_0__RPM_net[0:0]}),
		  .siovref(tmpSIOVREF__RPM_net),
		  .interrupt({tmpINTERRUPT_0__RPM_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__RPM_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_isr_v1_0
		#(.int_type(2'b10))
		RPM_isr
		 (.int_signal(Net_754));


	wire [0:0] tmpOE__Motor_Amp_net;
	wire [0:0] tmpFB_0__Motor_Amp_net;
	wire [0:0] tmpIO_0__Motor_Amp_net;
	wire [0:0] tmpINTERRUPT_0__Motor_Amp_net;
	electrical [0:0] tmpSIOVREF__Motor_Amp_net;

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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_Amp
		 (.oe(tmpOE__Motor_Amp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_Amp_net[0:0]}),
		  .analog({Net_1076}),
		  .io({tmpIO_0__Motor_Amp_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_Amp_net),
		  .interrupt({tmpINTERRUPT_0__Motor_Amp_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_Amp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    Comp_v2_0_2 Comp_1 (
        .Vplus(Net_1076),
        .CmpOut(Net_1396),
        .Vminus(Net_1078),
        .clock(1'b0));

    VDAC8_v1_90_3 VDAC8_1 (
        .strobe(1'b0),
        .data(8'b00000000),
        .vOut(Net_1078));
    defparam VDAC8_1.Data_Source = 0;
    defparam VDAC8_1.Initial_Value = 100;
    defparam VDAC8_1.Strobe_Mode = 0;

    // -- SRFF Start --
    reg  cy_srff_1;
    always @(posedge Net_1334)
    begin
        cy_srff_1 <= (Net_1396 | Net_1399) & ~Net_1488;
    end
    assign Net_1399 = cy_srff_1;
    // -- SRFF End --

    cy_sync_v1_0 Sync_1 (
        .s_in(Net_1473),
        .clock(Net_1334),
        .s_out(Net_1488));
    defparam Sync_1.SignalWidth = 1;


	cy_clock_v1_0
		#(.id("58861494-af90-4b0e-bb80-8ad5c43d2264"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("83333333.3333333"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_2
		 (.clock_out(Net_1334));



    assign Net_290 = ~Net_1399;


	cy_clock_v1_0
		#(.id("6894617c-11d4-4086-8a50-700c2dc79115"),
		  .source_clock_id("315365C3-2E3E-4f04-84A2-BB564A173261"),
		  .divisor(0),
		  .period("5000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_motor
		 (.clock_out(Net_1844));



	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_motor
		 (.int_signal(Net_1844));


    CyStatusReg_v1_90 Status_Reg_OverCurrent (
        .status_0(Net_1399),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(Net_1334),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_2085),
        .status_bus(8'b0));
    defparam Status_Reg_OverCurrent.Bit0Mode = 0;
    defparam Status_Reg_OverCurrent.Bit1Mode = 0;
    defparam Status_Reg_OverCurrent.Bit2Mode = 0;
    defparam Status_Reg_OverCurrent.Bit3Mode = 0;
    defparam Status_Reg_OverCurrent.Bit4Mode = 0;
    defparam Status_Reg_OverCurrent.Bit5Mode = 0;
    defparam Status_Reg_OverCurrent.Bit6Mode = 0;
    defparam Status_Reg_OverCurrent.Bit7Mode = 0;
    defparam Status_Reg_OverCurrent.BusDisplay = 0;
    defparam Status_Reg_OverCurrent.Interrupt = 0;
    defparam Status_Reg_OverCurrent.MaskValue = 0;
    defparam Status_Reg_OverCurrent.NumInputs = 1;

	wire [0:0] tmpOE__RX_1_net;
	wire [0:0] tmpIO_0__RX_1_net;
	wire [0:0] tmpINTERRUPT_0__RX_1_net;
	electrical [0:0] tmpSIOVREF__RX_1_net;

	cy_psoc3_pins_v1_10
		#(.id("1425177d-0d0e-4468-8bcc-e638e5509a9b"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		RX_1
		 (.oe(tmpOE__RX_1_net),
		  .y({1'b0}),
		  .fb({Net_11}),
		  .io({tmpIO_0__RX_1_net[0:0]}),
		  .siovref(tmpSIOVREF__RX_1_net),
		  .interrupt({tmpINTERRUPT_0__RX_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__RX_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__TX_1_net;
	wire [0:0] tmpFB_0__TX_1_net;
	wire [0:0] tmpIO_0__TX_1_net;
	wire [0:0] tmpINTERRUPT_0__TX_1_net;
	electrical [0:0] tmpSIOVREF__TX_1_net;

	cy_psoc3_pins_v1_10
		#(.id("ed092b9b-d398-4703-be89-cebf998501f6"),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		TX_1
		 (.oe(tmpOE__TX_1_net),
		  .y({Net_2248}),
		  .fb({tmpFB_0__TX_1_net[0:0]}),
		  .io({tmpIO_0__TX_1_net[0:0]}),
		  .siovref(tmpSIOVREF__TX_1_net),
		  .interrupt({tmpINTERRUPT_0__TX_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__TX_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CAN_v3_0_4 CAN_1 (
        .rx(Net_11),
        .tx(Net_2248),
        .tx_en(Net_2337),
        .interrupt(Net_2338));

    USBFS_v3_0_5 USBUART_1 (
        .sof(Net_2275),
        .vbusdet(1'b0));
    defparam USBUART_1.epDMAautoOptimization = 0;


	cy_isr_v1_0
		#(.int_type(2'b00))
		isr_overCurrent
		 (.int_signal(Net_1399));



	cy_clock_v1_0
		#(.id("bee57878-e7be-4495-b77f-12aade13ce86"),
		  .source_clock_id("61737EF6-3B74-48f9-8B91-F7473A442AE7"),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		pmon_clock
		 (.clock_out(Net_2401));


	wire [0:0] tmpOE__v_1_net;
	wire [0:0] tmpFB_0__v_1_net;
	wire [0:0] tmpIO_0__v_1_net;
	wire [0:0] tmpINTERRUPT_0__v_1_net;
	electrical [0:0] tmpSIOVREF__v_1_net;

	cy_psoc3_pins_v1_10
		#(.id("e62985f7-7b27-4992-91b7-5f3ef3ea7df7"),
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
		  .layout_mode("NONCONTIGUOUS"),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		v_1
		 (.oe(tmpOE__v_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__v_1_net[0:0]}),
		  .analog({Net_2403}),
		  .io({tmpIO_0__v_1_net[0:0]}),
		  .siovref(tmpSIOVREF__v_1_net),
		  .interrupt({tmpINTERRUPT_0__v_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__v_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__i_1_net;
	wire [0:0] tmpFB_0__i_1_net;
	wire [0:0] tmpIO_0__i_1_net;
	wire [0:0] tmpINTERRUPT_0__i_1_net;
	electrical [0:0] tmpSIOVREF__i_1_net;

	cy_psoc3_pins_v1_10
		#(.id("301acb5f-5722-4ec8-bf04-2b5e9627e87e"),
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
		  .layout_mode("NONCONTIGUOUS"),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		i_1
		 (.oe(tmpOE__i_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__i_1_net[0:0]}),
		  .analog({Net_2408}),
		  .io({tmpIO_0__i_1_net[0:0]}),
		  .siovref(tmpSIOVREF__i_1_net),
		  .interrupt({tmpINTERRUPT_0__i_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__i_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__pgood_net;
	wire [0:0] tmpFB_0__pgood_net;
	wire [0:0] tmpIO_0__pgood_net;
	wire [0:0] tmpINTERRUPT_0__pgood_net;
	electrical [0:0] tmpSIOVREF__pgood_net;

	cy_psoc3_pins_v1_10
		#(.id("2dd69be1-d090-4bdc-a0dd-ea313c086a43"),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		pgood
		 (.oe(tmpOE__pgood_net),
		  .y({Net_2413}),
		  .fb({tmpFB_0__pgood_net[0:0]}),
		  .io({tmpIO_0__pgood_net[0:0]}),
		  .siovref(tmpSIOVREF__pgood_net),
		  .interrupt({tmpINTERRUPT_0__pgood_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__pgood_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__fault_net;
	wire [0:0] tmpFB_0__fault_net;
	wire [0:0] tmpIO_0__fault_net;
	wire [0:0] tmpINTERRUPT_0__fault_net;
	electrical [0:0] tmpSIOVREF__fault_net;

	cy_psoc3_pins_v1_10
		#(.id("67ab3839-526b-4fa0-aeac-99c5c47a6624"),
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
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		fault
		 (.oe(tmpOE__fault_net),
		  .y({Net_2414}),
		  .fb({tmpFB_0__fault_net[0:0]}),
		  .io({tmpIO_0__fault_net[0:0]}),
		  .siovref(tmpSIOVREF__fault_net),
		  .interrupt({tmpINTERRUPT_0__fault_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__fault_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PowerMonitor_v1_60_12 PowerMonitor_1 (
        .cal(Net_2437),
        .pgood(Net_2413),
        .eoc(Net_2438),
        .pgood_bus(Net_2439[31:0]),
        .clock(Net_2401),
        .warn(Net_2440),
        .fault(Net_2414),
        .v1(Net_2403),
        .i1_rtn1(Net_2408));
    defparam PowerMonitor_1.NumConverters = 1;
    defparam PowerMonitor_1.PgoodConfig = 0;



endmodule

