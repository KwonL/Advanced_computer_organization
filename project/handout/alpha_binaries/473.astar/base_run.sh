#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 500000000 -cache:il1 none -mem:lat 250 2 -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./astar_base.alpha64-gcc82-static BigLakes2048.cfg > BigLakes2048.out 2>> BigLakes2048.err&
../../simplescalar/sim-outorder -max:inst 500000000 -cache:il1 none -mem:lat 250 2 -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./astar_base.alpha64-gcc82-static rivers.cfg > rivers.out 2>> rivers.err&
