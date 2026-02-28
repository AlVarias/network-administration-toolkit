Scenario                                              Command
Capture DNS Traffic                                   tcpdump -i eth0 port 53 -vv
Capture HTTP (Port 80)                                tcpdump -i any port 80 -A
Watch traffic from a specific                         IPtcpdump src 192.168.1.50
Save to file for Wireshark                            tcpdump -w output.pcap -i eth0
