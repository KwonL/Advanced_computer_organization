#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 500000000 -cache:il1 none -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./hmmer_base.alpha64-gcc82-static nph3.hmm swiss41 > nph3.out 2>> nph3.err&
../../simplescalar/sim-outorder -max:inst 500000000 -cache:il1 none -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./hmmer_base.alpha64-gcc82-static --fixed 0 --mean 500 --num 500000 --sd 350 --seed 0 retro.hmm > retro.out 2>> retro.err&
