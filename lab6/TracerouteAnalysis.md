# Task 2: Networking Analysis

## 1. Traceroute


Traceroute is a network diagnostic tool that helps trace the path of network packets from a source device to a destination. By sending packets with increasing TTL values and recording the IP addresses of intermediate routers, traceroute provides insights into the network path and latency. It is commonly used to troubleshoot network connectivity issues, identify potential bottlenecks, and analyze the performance of network connections.

Following command will write the result of the traceroute into a markdown file:

> traceroute google.com > ~/Documents/Github/labs/lab6/results.md

**Results:**

``` sh
 1  10.91.48.1 (10.91.48.1)  6.314 ms  6.076 ms  4.431 ms
 2  1.123.18.84.in-addr.arpa (84.18.123.1)  10.899 ms  11.602 ms  11.400 ms
 3  188.170.164.138 (188.170.164.138)  10.484 ms  14.150 ms  14.681 ms
 4  * * *
 5  * * *
 6  83.169.204.176 (83.169.204.176)  23.071 ms  20.887 ms
    83.169.204.166 (83.169.204.166)  21.392 ms
 7  142.251.238.84 (142.251.238.84)  37.406 ms
    142.250.238.214 (142.250.238.214)  39.890 ms
    216.239.51.32 (216.239.51.32)  40.233 ms
 8  142.251.237.148 (142.251.237.148)  40.393 ms
    172.253.65.159 (172.253.65.159)  37.549 ms
    142.250.235.68 (142.250.235.68)  37.850 ms
 9  142.250.56.219 (142.250.56.219)  37.592 ms
    216.239.47.167 (216.239.47.167)  37.563 ms
    216.239.46.243 (216.239.46.243)  41.091 ms
```

### Insights and Observations of Traceroute
1. Sometime *** will apear in the result of the traceroute command, after searching for the answer, here is my findings about this phonomena:

In the traceroute command, the "" represents a timeout or lack of response from a particular network hop along the traceroute path. It indicates that the ICMP (Internet Control Message Protocol) Echo Request packets sent to that hop did not receive a response within the specified time limit. This could occur due to various reasons, such as network congestion, firewall configurations, or routers configured to block ICMP traffic. The appearance of "" suggests that further investigation may be required to understand the network behavior at that specific hop. 

2. Identifying Bottlenecks: By analyzing the traceroute output, you can identify network hops with consistently higher latency or increased packet loss.

## 2. Dig

The dig command is a DNS (Domain Name System) diagnostic tool used to perform DNS queries and retrieve information about domain names. It allows users to query DNS servers to obtain details such as IP addresses, MX (Mail Exchange) records, and other DNS-related information for a specific domain. dig sends a DNS query to a specified DNS server and receives a response containing the requested DNS records. This tool is commonly used for DNS troubleshooting, verifying DNS configurations, and obtaining DNS information for domain names.

Following command will write the result of the traceroute into a markdown file:

> traceroute google.com > ~/Documents/Github/labs/lab6/results.md

**Results:**
``` sh 
; <<>> DiG 9.10.6 <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 11383
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		115	IN	A	142.250.184.238

;; Query time: 61 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Tue Jul 11 12:02:32 MSK 2023
;; MSG SIZE  rcvd: 55
```

### Insights and Observations of Dig:
1. dig allows you to perform DNS lookups and verify if a domain name can be resolved to an IP address. It helps validate DNS settings and ensures that domain names are properly mapped to the intended IP addresses. 
2. The dig command provides information about various DNS records associated with a domain name, such as A (IPv4 address), AAAA (IPv6 address), MX (mail exchange), CNAME (canonical name), NS (name server), and more. By using the dig command, you can retrieve specific DNS records and gain insights into the domain's DNS configuration.
