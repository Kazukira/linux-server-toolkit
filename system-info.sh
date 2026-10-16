#!/usr/bin/env bash

set -euo pipefail

echo "================================"
echo "       LINUX SERVER TOOLKIT"
echo "================================"
echo

echo "[1] Hostname"
hostname
echo

echo "[2] Operating System"
grep -E '^(PRETTY_NAME|ID)=' /etc/os-release
echo

echo "[3] Kernel"
uname -r
echo

echo "[4] System Uptime"
uptime -p
echo

echo "[5] Memory Usage"
free -h
echo

echo "[6] Root Disk Usage"
df -h /
echo

echo "[7] Disk Space Health Check"

disk_usage=$(df -P / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')

if (( disk_usage >= 80 )); then
    echo "WARNING: Root filesystem usage is ${disk_usage}%!"
else
    echo "OK: Root filesystem usage is ${disk_usage}%."
fi

echo

echo "System information collected successfully."
