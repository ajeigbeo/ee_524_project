#!/bin/bash

#Performs 3 perf runs on the four benchmarks while storing the output in the .out files

./fluidanimate/flrun.sh runfl1.out
./fluidanimate/flrun.sh runfl2.out
./fluidanimate/flrun.sh runfl3.out

./blackscholes/blrun.sh runbl1.out
./blackscholes/blrun.sh runbl2.out
./blackscholes/blrun.sh runbl3.out

./qsort/qsrun.sh runqs1.out
./qsort/qsrun.sh runqs2.out
./qsort/qsrun.sh runqs3.out

./basicmath/barun.sh runba1.out
./basicmath/barun.sh runba2.out
./basicmath/barun.sh runba3.out
