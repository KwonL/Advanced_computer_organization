#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il1 none -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./h264ref_base.alpha64-gcc82-static -d foreman_ref_encoder_baseline.cfg > foreman_ref_baseline_encodelog.out 2>> foreman_ref_baseline_encodelog.err&
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il1 none -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./h264ref_base.alpha64-gcc82-static -d foreman_ref_encoder_main.cfg > foreman_ref_main_encodelog.out 2>> foreman_ref_main_encodelog.err&
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il1 none -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./h264ref_base.alpha64-gcc82-static -d sss_encoder_main.cfg > sss_main_encodelog.out 2>> sss_main_encodelog.err&
