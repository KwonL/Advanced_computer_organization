#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bzip2_base.alpha64-gcc82-static input.source 280 > input.source.out 2>> input.source.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bzip2_base.alpha64-gcc82-static chicken.jpg 30 > chicken.jpg.out 2>> chicken.jpg.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bzip2_base.alpha64-gcc82-static liberty.jpg 30 > liberty.jpg.out 2>> liberty.jpg.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bzip2_base.alpha64-gcc82-static input.program 280 > input.program.out 2>> input.program.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bzip2_base.alpha64-gcc82-static text.html 280 > text.html.out 2>> text.html.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./bzip2_base.alpha64-gcc82-static input.combined 200 > input.combined.out 2>> input.combined.err&
pids="$pids $!"
for pid in $pids; do
	wait $pid || let "RESULT=1"
done
if [ "$RESULT" == "1" ];
	then
		exit 1
fi
