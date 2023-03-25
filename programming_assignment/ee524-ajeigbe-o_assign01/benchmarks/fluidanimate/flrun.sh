#!/bin/bash

#returns an error(illegal number of parameters) if an output file is not specified before running the script  
if [ "$#" -lt 1 ]; then
    echo "Illegal number of parameters"
    exit 0
fi


# cd into current directory to access benchmarch files
cd "$(dirname "$0")"


# running performance counters for A7 cores

for i in 0 0,1 0,1,2 0,1,2,3 #loop through the combinations of cores
do

for j in 1 2 4 #loop through varying thread values
do
	echo "=== fluidanimate test run on A7 with $j threads on core $i ===" >> $1

	perf stat -e armv7_cortex_a7/inst_retired/,cycles,armv7_cortex_a7/br_mis_pred/,armv7_cortex_a7/l1d_cache_refill/,armv7_cortex_a7/l1i_cache_refill/,armv7_cortex_a7/l2d_cache_refill/ -o $1 --append taskset -c $i ./fluidanimate $j 20 in_300K.fluid out.fluid
	python3 /home/oluwafemi/EE524/benchmarks/clearcache.py

done
done


# running for A15 cores
for i in 4 4,5 4,5,6 4,5,6,7 
do

for j in 1 2 4
do

	echo "=== fluidanimate test run on A15 with $j threads on core $i ===" >> $1

	perf stat -e armv7_cortex_a15/inst_retired/,cycles,armv7_cortex_a15/br_mis_pred/,armv7_cortex_a15/l1d_cache_refill/,armv7_cortex_a15/l1i_cache_refill/,armv7_cortex_a15/l2d_cache_refill/ -o $1 --append taskset -c $i ./fluidanimate $j 20 in_300K.fluid out.fluid
	python3 /home/oluwafemi/EE524/benchmarks/clearcache.py

done
done

