#!/bin/bash
target=$1
log_dir=$2

echo -e "\n[+] Running Web Enumeration on $target"
whatweb "$target" | tee "$log_dir/web_enum.txt"
dirb "http://$target" | tee -a "$log_dir/web_enum.txt"
