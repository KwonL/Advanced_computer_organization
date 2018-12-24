#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./h264ref_base.alpha64-gcc82-static -d foreman_ref_encoder_baseline.cfg > foreman_ref_baseline_encodelog.out 2>> foreman_ref_baseline_encodelog.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./h264ref_base.alpha64-gcc82-static -d foreman_ref_encoder_main.cfg > foreman_ref_main_encodelog.out 2>> foreman_ref_main_encodelog.err&
pids="$pids $!"
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./h264ref_base.alpha64-gcc82-static -d sss_encoder_main.cfg > sss_main_encodelog.out 2>> sss_main_encodelog.err&
pids="$pids $!"
for pid in $pids; do
	wait $pid || let "RESULT=1"
done
if [ "$RESULT" == "1" ];
	then
		exit 1
fi
