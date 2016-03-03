 .../Systemarkitektur/Klassediagram.vsdx            |  Bin [31m61789[m -> [32m63720[m bytes
 .../MotorController.cydsn/ControllerClass.c        |   12 [32m+[m
 .../MotorController.cydsn/ControllerClass.h        |    2 [32m+[m
 .../Export/PSoCCreatorExportIDE.xml                |   56 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/config.hex              |   29 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/cyfitter.h              |   12 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/cyfitter_cfg.c          |    6 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/cyfittergnu.inc         |   12 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/cyfitteriar.inc         |   12 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/cyfitterrv.inc          |   12 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/cymetadata.c            |   93 [32m+[m[31m-[m
 .../Generated_Source/PSoC5/project.h               |    1 [32m+[m
 .../MotorController.cydsn/MotorController.c        |   59 [32m+[m
 .../MotorController.cydsn/MotorController.cycdx    |  857 [32m++[m[31m--[m
 .../MotorController.cydsn/MotorController.cyfit    |  Bin [31m200140[m -> [32m200455[m bytes
 .../MotorController.cydsn/MotorController.cyprj    |  128 [32m+[m
 .../MotorController.cyprj.jonathan                 |   61 [32m+[m[31m-[m
 .../MotorController.cydsn/MotorController.h        |    7 [32m+[m[31m-[m
 .../MotorController.cydsn/MotorController.rpt      |  336 [32m+[m[31m-[m
 .../MotorController.cydsn/MotorController.svd      | 4566 [32m++++++++++[m[31m----------[m
 .../MotorController_timing.html                    |   20 [32m+[m[31m-[m
 .../MotorController/MotorController.cydsn/Pedal.c  |   14 [32m+[m
 .../MotorController/MotorController.cydsn/Pedal.h  |    5 [32m+[m[31m-[m
 .../TopDesign/TopDesign.cysch                      |  Bin [31m191759[m -> [32m192827[m bytes
 .../codegentemp/MotorController.ctl                |    2 [32m+[m[31m-[m
 .../codegentemp/MotorController.cycdx              |  857 [32m++[m[31m--[m
 .../codegentemp/MotorController.cyfit              |  Bin [31m200140[m -> [32m200455[m bytes
 .../codegentemp/MotorController.dsf                |    1 [32m+[m
 .../codegentemp/MotorController.pci                |    2 [32m+[m[31m-[m
 .../codegentemp/MotorController.pco                |    5 [32m+[m[31m-[m
 .../codegentemp/MotorController.plc_log            |    2 [32m+[m[31m-[m
 .../codegentemp/MotorController.route              |   70 [32m+[m[31m-[m
 .../codegentemp/MotorController.rpt                |  336 [32m+[m[31m-[m
 .../codegentemp/MotorController.rt_log             |    6 [32m+[m[31m-[m
 .../codegentemp/MotorController.sdc                |   10 [32m+[m[31m-[m
 .../codegentemp/MotorController.svd                | 4566 [32m++++++++++[m[31m----------[m
 .../codegentemp/MotorController.tr                 |  108 [32m+[m[31m-[m
 .../codegentemp/MotorController.v                  |  153 [32m+[m[31m-[m
 .../codegentemp/MotorController.vh2                |   15 [32m+[m[31m-[m
 .../codegentemp/MotorController.wde                |   38 [32m+[m[31m-[m
 .../codegentemp/MotorController_p.pco              |   25 [32m+[m[31m-[m
 .../codegentemp/MotorController_p.vh2              |    9 [32m+[m[31m-[m
 .../codegentemp/MotorController_r.vh2              |   12 [32m+[m[31m-[m
 .../codegentemp/MotorController_t.vh2              |   14 [32m+[m[31m-[m
 .../codegentemp/MotorController_timing.html        |   20 [32m+[m[31m-[m
 .../codegentemp/MotorController_u.sdc              |    6 [32m+[m[31m-[m
 .../codegentemp/bitstream.txt                      |   12 [32m+[m[31m-[m
 .../MotorController.cydsn/codegentemp/config.hex   |   29 [32m+[m[31m-[m
 .../MotorController.cydsn/codegentemp/cyfitter.h   |   12 [32m+[m[31m-[m
 .../codegentemp/cyfitter_cfg.c                     |    6 [32m+[m[31m-[m
 .../codegentemp/cyfittergnu.inc                    |   12 [32m+[m[31m-[m
 .../codegentemp/cyfitteriar.inc                    |   12 [32m+[m[31m-[m
 .../codegentemp/cyfitterrv.inc                     |   12 [32m+[m[31m-[m
 .../MotorController.cydsn/codegentemp/cymetadata.c |   93 [32m+[m[31m-[m
 .../codegentemp/elab_dependencies.txt              | 1625 [32m+++[m[31m----[m
 .../codegentemp/generated_files.txt                |  250 [32m+[m[31m-[m
 .../codegentemp/lcpsoc3/index                      |  Bin [31m1792[m -> [32m1792[m bytes
 .../MotorController.cydsn/codegentemp/project.h    |    1 [32m+[m
 .../codegentemp/project_ids.txt                    |   10 [32m+[m[31m-[m
 .../codegentemp/warp_dependencies.txt              |   12 [32m+[m[31m-[m
 .../MotorController/MotorController.cywrk.jonathan |   19 [32m+[m[31m-[m
 .../RollingRoadUART/test9/test9.cywrk.jonathan     |    6 [31m-[m
 62 files changed, 7540 insertions(+), 7128 deletions(-)
