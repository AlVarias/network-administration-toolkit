import socket

def check_ports(ip, port_list):
    print(f"--- Security Audit for {ip} ---")
    for port in port_list:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip, port))
        if result == 0:
            print(f"[OPEN] Port {port} is active.")
        sock.close()

if __name__ == "__main__":
    # Common ports for a Linux Web Server
    target_ports = [22, 80, 443, 3306, 8080]
    check_ports("127.0.0.1", target_ports)
