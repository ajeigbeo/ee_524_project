# -- an example to run SPEC 429.mcf on gem5, put it under 429.mcf folder --
export GEM5_DIR=/Users/oluwafemiajeigbe/Desktop/PA3/gem5
export BENCHMARK=./src/benchmark
export ARGUMENT="./data/input.program 10"
export OUTPUT_DIR=./m5out # Set the output directory according to your preference.
time $GEM5_DIR/build/X86/gem5.opt -d $OUTPUT_DIR $GEM5_DIR/configs/example/se.py -c $BENCHMARK -o "$ARGUMENT" -I 500000000 --cpu-type=TimingSimpleCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=1MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=4 --cacheline_size=64
