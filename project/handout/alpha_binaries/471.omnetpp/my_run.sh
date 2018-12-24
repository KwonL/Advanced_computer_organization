#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./omnetpp_base.alpha64-gcc82-static omnetpp.ini > omnetpp.log 2>> omnetpp.err&
pids="$pids $!"
for pid in $pids; do
	wait $pid || let "RESULT=1"
done
if [ "$RESULT" == "1" ];
	then
		exit 1
fi
