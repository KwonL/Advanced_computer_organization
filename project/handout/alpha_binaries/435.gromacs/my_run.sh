#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 500000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gromacs_base.alpha64-gcc82-static -silent -deffnm gromacs -nice 0 2>> gromacs.err&
