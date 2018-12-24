#!/bin/sh
pids=""
RESULT=0
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static 166.i -o 166.s > 166.out 2>> 166.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static 200.i -o 200.s > 200.out 2>> 200.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static c-typeck.i -o c-typeck.s > c-typeck.out 2>> c-typeck.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static cp-decl.i -o cp-decl.s > cp-decl.out 2>> cp-decl.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static expr.i -o expr.s > expr.out 2>> expr.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static expr2.i -o expr2.s > expr2.out 2>> expr2.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static g23.i -o g23.s > g23.out 2>> g23.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static s04.i -o s04.s > s04.out 2>> s04.err&
../../simplescalar/sim-outorder -max:inst 500000000 -mem:lat 250 2 -cache:il2lat 9 -decode:width 4 -issue:width 8 -commit:width 4 -ruu:size 128 -lsq:size 64 ./gcc_base.alpha64-gcc82-static scilab.i -o scilab.s > scilab.out 2>> scilab.err&
