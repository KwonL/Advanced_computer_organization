#!/usr/bin/python
import os, sys

SIMPLE = "../../simplescalar/sim-outorder -max:inst 100000000 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 "
BASE = "../../simplescalar/sim-outorder -max:inst 100000000 -cache:il1 none -cache:il2 none -cache:dl1 none -cache:dl2 none -tlb:itlb none -tlb:dtlb none -bpred perfect -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 "

binary_dirs = os.listdir("./alpha_binaries")

for bin_dir in binary_dirs :
    f = open("./alpha_binaries/" + bin_dir + "/run.sh")
    my = open("./alpha_binaries/" + bin_dir +"/my_run.sh", "w")
    os.chmod("./alpha_binaries/" + bin_dir +"/my_run.sh", 0777)
    base = open("./alpha_binaries/" + bin_dir + "/base_run.sh", "w")
    os.chmod("./alpha_binaries/" + bin_dir +"/base_run.sh", 0777)


    my.write("#!/bin/sh\n")
    my.write('pids=""\nRESULT=0\n')
    for line in f :
        tmp_str = SIMPLE + line.replace("\n", "") + "&"
        my.write(tmp_str + "\n")
        my.write("pids=\"$pids $!\"\n")

    my.write("for pid in $pids; do\n\twait $pid || let \"RESULT=1\"\ndone\n")
    my.write('if [ "$RESULT" == "1" ];\n\tthen\n\t\texit 1\nfi\n')
    
    my.write
