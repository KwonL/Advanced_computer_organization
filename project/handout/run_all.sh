#!/bin/sh

./rm_all_output.sh
for i in `ls alpha_binaries`; do
    cd "./alpha_binaries/$i"
    echo "GO to $i"
    ./my_run.sh &
    cd -
done
