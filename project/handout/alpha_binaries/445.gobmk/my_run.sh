#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < 13x13.tst > 13x13.out 2>> 13x13.err&
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < nngs.tst > nngs.out 2>> nngs.err&
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < score2.tst > score2.out 2>> score2.err&
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < trevorc.tst > trevorc.out 2>> trevorc.err&
../../simplescalar/sim-outorder -fastfwd 2000000000 -max:inst 1000000000 -cache:il2lat 9 -mem:lat 250 2 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < trevord.tst > trevord.out 2>> trevord.err&
