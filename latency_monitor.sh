#!/bin/bash
# Description: MTR-based latency report for ISP vs Internal hops
TARGET="8.8.8.8"
echo "--- 60-Second Network Latency Audit for $TARGET ---"
# Runs a non-interactive MTR report for 10 cycles
mtr -rw -c 10 $TARGET > network_report_$(date +%F).txt
echo "Report saved. Check for high 'Loss%' or 'Avg' latency in the text file."
