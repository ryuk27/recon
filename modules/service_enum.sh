#!/bin/bash
target=$1
log_dir=$2

echo -e "\n[+] Running Service Enumeration on $target"
nmap -sV --script=default "$target" -oN "$log_dir/service_enum.txt"
