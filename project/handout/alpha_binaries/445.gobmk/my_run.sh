#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < 13x13.tst > 13x13.out 2>> 13x13.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < nngs.tst > nngs.out 2>> nngs.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < score2.tst > score2.out 2>> score2.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < trevorc.tst > trevorc.out 2>> trevorc.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gobmk_base.alpha64-gcc82-static --quiet --mode gtp < trevord.tst > trevord.out 2>> trevord.err&
pids="$pids $!"
for pid in $pids; do
	wait $pid || let "RESULT=1"
done
if [ "$RESULT" == "1" ];
	then
		exit 1
fi
