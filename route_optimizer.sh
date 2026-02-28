#!/bin/bash
echo "--- Current Routing Table Audit ---"
ip route show
echo -e "\nChecking for Default Gateway redundancy:"
ip route list | grep default || echo "ALERT: No Default Gateway Found!"
echo -e "\nInternal Subnet Reachability:"
netstat -rn
