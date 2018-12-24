#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./hmmer_base.alpha64-gcc82-static nph3.hmm swiss41 > nph3.out 2>> nph3.err&
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./hmmer_base.alpha64-gcc82-static --fixed 0 --mean 500 --num 500000 --sd 350 --seed 0 retro.hmm > retro.out 2>> retro.err&
