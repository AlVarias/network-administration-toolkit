#!/bin/bash
echo "--- NETWORK DIAGNOSTIC REPORT ---"
echo "1. Interface Status:"
ip -br addr show

echo -e "\n2. Local Gateway Connectivity:"
ip route | grep default

echo -e "\n3. DNS Resolution (Google & Internal):"
nslookup google.com || echo "External DNS Failed"

echo -e "\n4. Listening Ports (ESTABLISHED):"
ss -tulpn | grep LISTEN

echo -e "\n5. External Latency Check:"
ping -c 3 8.8.8.8
