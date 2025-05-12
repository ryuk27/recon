#!/bin/bash
target=$1
log_dir=$2

echo -e "\n[+] Running WHOIS lookup on $target"
whois "$target" | tee "$log_dir/whois.txt"
