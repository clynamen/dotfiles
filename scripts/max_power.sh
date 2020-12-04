echo 0|sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
echo 100 | sudo tee /sys/devices/system/cpu/intel_pstate/max_perf_pct
sudo cpupower frequency-set -g performance
