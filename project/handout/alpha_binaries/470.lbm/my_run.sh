#!/bin/sh
../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./lbm_base.alpha64-gcc82-static 3000 reference.dat 0 0 100_100_130_ldc.of > lbm.out 2>> lbm.err
