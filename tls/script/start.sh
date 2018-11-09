#!/bin/bash

# tcpdump -i eth1 -w /pcap/trace_tls.pcap &

sleep 5

echo "Starting TLS test"

echo -e "Hello from TLS" | openssl s_client -connect tls-proxy.test.org:3868 -cert /etc/cert/ssl.pem -key /etc/cert/ssl.key -msg -servername tls-proxy.test.org -showcerts -ign_eof

