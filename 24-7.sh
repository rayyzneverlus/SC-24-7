#!/bin/bash
# SCRIPT 24/7 BY FAREL - SUPER FINAL VERSION

start_time=$(date +%s)

clear
echo -e "\033[1;36m╔════════════════════════════════════╗\033[0m"
echo -e "        \033[1;32m🚀 SCRIPT 24/7 BY FAREL 🚀\033[0m"
echo -e "\033[1;36m╚════════════════════════════════════╝\033[0m"
echo -e "\033[1;33mTHANKS FOR USING THIS SCRIPT!\033[0m"
echo ""
echo -e "🙏 Thanks To:"
echo -e " - Allah SWT"
echo -e " - Farel (Developer)"
echo -e "\033[1;36m====================================\033[0m"
echo -e "\033[1;35mTekan 'q' lalu ENTER untuk keluar.\033[0m"
echo ""

# Loop utama
while true; do
    # Cek input user (1 detik sekali)
    read -t 1 -n 1 input
    if [[ $input == "q" ]]; then
        echo -e "\n\033[1;31m[✘] SCRIPT dihentikan oleh user.\033[0m"
        break
    fi

    # Hitung uptime
    now=$(date +%s)
    uptime=$((now - start_time))
    hours=$((uptime / 3600))
    minutes=$(((uptime % 3600) / 60))
    seconds=$((uptime % 60))

    # Efek blinking RUNNING
    echo -e "\033[5;32m[✔] SCRIPT 24/7 BY FAREL RUNNING...\033[0m"
    echo -e "\033[1;34m⏳ Uptime: ${hours}h ${minutes}m ${seconds}s\033[0m"

    # Countdown dengan animasi titik
    for i in 3 2 1; do
        echo -ne "\033[1;33mNext loop in ${i}s $(printf '.%.0s' $(seq 1 $((4 - i))))\033[0m\r"
        sleep 1
    done
    echo -e "                                   \r"
done
