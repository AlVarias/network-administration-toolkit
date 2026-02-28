Systemethix uses CheckMK/Nagios. This is a documentation file explaining how you monitor bandwidth.

Tool: iperf3

Process: Run iperf3 -s on a central monitoring node and iperf3 -c [IP] from a client.

Metric: If the throughput drops below 80% of the link speed (e.g., < 800Mbps on a 1G link), trigger a Critical Alert in Nagios.
