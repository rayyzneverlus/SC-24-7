#!/usr/bin/env bash
# SCRIPT 24/7 BY FAREL
# THANKS FOR USING THIS SCRIPT

trap 'echo -e "\n[!] SCRIPT 24/7 BY FAREL stopped."; exit' INT TERM

start_time=$(date +%s)

while true; do
  clear
  echo "======================================"
  echo "         SCRIPT 24/7 BY FAREL"
  echo "======================================"
  echo " THANKS FOR USING THIS SCRIPT"
  echo "--------------------------------------"

  # waktu dan uptime
  now=$(date +"%Y-%m-%d %H:%M:%S")
  elapsed=$(( $(date +%s) - start_time ))
  printf " Time now : %s\n" "$now"
  printf " Uptime   : %02d:%02d:%02d\n" $((elapsed/3600)) $(( (elapsed%3600)/60 )) $((elapsed%60))

  echo "--------------------------------------"
  echo " Press Ctrl+C to stop"
  sleep 5
done
