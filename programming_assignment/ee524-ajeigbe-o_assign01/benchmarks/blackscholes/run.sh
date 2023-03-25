#!/bin/bash

# the script accepts one argument to indidate the output file where the perf results are appended to. 
# e.g., ./run.sh perf-result-file


for i in 2 1
do
	echo "=== test run with $i threads ===" >> $1  
	perf stat -e cycles,instructions -o $1 --append ./blackscholes $i in_64K.txt output.txt

done
