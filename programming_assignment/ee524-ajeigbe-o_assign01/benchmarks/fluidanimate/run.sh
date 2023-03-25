#!/bin/bash

# the script accepts one argument to indidate the output file where the perf results are appended to. 
# e.g., ./run.sh perf-result-file

for i in 4 2 1
do
	echo "=== test run with $i threads 3 cores===" >> $1  
	perf stat -e instructions,cycles -o $1 --append taskset -c 0,1,2 ./fluidanimate $i 20 in_300K.fluid out.fluid

done


for i in 4 2 1
do
        echo "=== test run with $i threads === 2 cores" >> $1
        perf stat -e instructions,cycles -o $1 --append taskset -c 0,1 ./fluidanimate $i 20 in_300K.fluid out.fluid

done

for i in 4 2 1
do
        echo "=== test run with $i threads 4 cores ===" >> $1
        perf stat -e instructions,cycles -o $1 --append taskset -c 0,1,2,3 ./fluidanimate $i 20 in_300K.fluid out.fluid

done
