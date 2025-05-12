#!/bin/bash
target=$1
log_dir=$2

echo -e "\n[+] Running DNS Enumeration on $target"
dig $target any +short | tee "$log_dir/dns.txt"
host $target | tee -a "$log_dir/dns.txt"
nslookup $target | tee -a "$log_dir/dns.txt"
