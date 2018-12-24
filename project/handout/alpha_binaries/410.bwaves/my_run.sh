#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bwaves_base.alpha64-gcc82-static 2>> bwaves.err&
