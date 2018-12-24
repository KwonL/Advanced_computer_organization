#!/bin/sh

for i in `ls alpha_binaries`; do
    cd "./alpha_binaries/$i"
    echo "GO to $i"
    cp -a -t ../../base_res ./*.err ./*.stderr
    cd -
done

for i in `ls alpha_binaries_long`; do
    cd "./alpha_binaries_long/$i"
    echo "GO to $i"
    mkdir ../../base_res/$i
    cp -a -t ../../base_res/$i ./*.err ./*.stderr
    cd -
done
