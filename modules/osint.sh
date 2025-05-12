#!/bin/bash
target=$1
log_dir=$2

echo -e "\n[+] Running OSINT on $target"
theHarvester -d "$target" -b google | tee "$log_dir/osint.txt"
