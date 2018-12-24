#!/bin/sh

./rm_all_output.sh
for i in `ls alpha_binaries`; do
    cd "./alpha_binaries/$i"
    echo "GO to $i"
    ./base_run.sh &
    cd -
done
