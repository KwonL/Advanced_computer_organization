#!/bin/sh

for i in `ls alpha_binaries`; do
    cd "./alpha_binaries/$i"
    rm ./*.out ./*.err
    cd -
done
