#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 500000000 -cache:il1 none -mem:lat 250 2 -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./mcf_base.alpha64-gcc82-static inp.in > inp.out 2>> inp.err&
