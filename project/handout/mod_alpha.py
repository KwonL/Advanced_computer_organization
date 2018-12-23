#!/usr/bin/python
import os, sys

SIMPLE = "../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 "

binary_dirs = os.listdir("./alpha_binaries")

for bin_dir in binary_dirs :
    f = open("./alpha_binaries/" + bin_dir + "/run.sh")
    my = open("./alpha_binaries/" + bin_dir +"/my_run.sh", "w")
    os.chmod("./alpha_binaries/" + bin_dir +"/my_run.sh", 0777)
    my.write("#!/bin/sh\n")
    size = os.path.getsize("./alpha_binaries/" + bin_dir + "/run.sh")
    for line in f :
        size -= len(line)
        if not size :
            tmp_str = SIMPLE + line.replace("\n", "")
        else :
            tmp_str = SIMPLE + line.replace("\n", "") + " &"
        my.write(tmp_str + "\n")