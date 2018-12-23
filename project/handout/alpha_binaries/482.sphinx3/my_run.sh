#!/bin/sh
../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./sphinx_livepretend_base.alpha64-gcc82-static ctlfile . args.an4 > an4.log 2>> an4.err
