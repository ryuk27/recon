#!/bin/bash
target=$1
log_dir=$2

echo -e "\n[+] Running Nmap scan on $target"
nmap -sS -T4 -Pn "$target" -oN "$log_dir/nmap.txt"
