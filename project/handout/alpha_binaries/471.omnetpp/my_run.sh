#!/bin/sh
../../simplescalar/sim-outorder -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./omnetpp_base.alpha64-gcc82-static omnetpp.ini > omnetpp.log 2>> omnetpp.err
