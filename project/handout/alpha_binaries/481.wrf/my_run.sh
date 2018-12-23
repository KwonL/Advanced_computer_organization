#!/bin/sh
../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./wrf_base.alpha64-gcc82-static > rsl.out.0000 2>> wrf.err
