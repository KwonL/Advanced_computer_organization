#!/bin/sh
../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./mcf_base.alpha64-gcc82-static inp.in > inp.out 2>> inp.err
