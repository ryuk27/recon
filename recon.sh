#!/bin/bash

source modules/banner.sh

read -p "Enter domain or IP: " target
log_dir="logs/$target"
mkdir -p "$log_dir"

echo -e "\nSelect an option:"
options=("Full Recon" "DNS Enum" "WHOIS" "Port Scan" "Service Enum" "Web Enum" "OSINT" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Full Recon")
            for script in modules/*.sh; do
                if [[ $script != *banner.sh ]]; then
                    bash "$script" "$target" "$log_dir"
                fi
            done
            ;;
        "DNS Enum") bash modules/dns_enum.sh "$target" "$log_dir" ;;
        "WHOIS") bash modules/whois_lookup.sh "$target" "$log_dir" ;;
        "Port Scan") bash modules/port_scan.sh "$target" "$log_dir" ;;
        "Service Enum") bash modules/service_enum.sh "$target" "$log_dir" ;;
        "Web Enum") bash modules/web_enum.sh "$target" "$log_dir" ;;
        "OSINT") bash modules/osint.sh "$target" "$log_dir" ;;
        "Exit") break ;;
        *) echo "Invalid option";;
    esac
done
