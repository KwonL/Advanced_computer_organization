#!/bin/sh
../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./GemsFDTD_base.alpha64-gcc82-static > ref.log 2>> ref.err
