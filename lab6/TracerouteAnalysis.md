
# Networking Analysis

## Traceroute

Below is the output of the command traceroute from my local machine to ```8.8.8.8 (dns.google)```

```
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  _gateway (192.168.0.1)  2.095 ms  2.280 ms  2.276 ms
 2  10.243.1.1 (10.243.1.1)  2.679 ms  2.677 ms  2.671 ms
 3  10.250.0.2 (10.250.0.2)  2.661 ms  2.655 ms  2.630 ms
 4  10.252.5.1 (10.252.5.1)  2.987 ms  2.966 ms  2.935 ms
 5  188.130.155.1 (188.130.155.1)  5.116 ms  5.122 ms  5.111 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  11.980 ms  10.825 ms  10.420 ms
 7  188.170.164.138 (188.170.164.138)  10.223 ms  10.029 ms  10.650 ms
 8  * * *
 9  * * *
10  83.169.204.166 (83.169.204.166)  25.641 ms  21.626 ms  25.520 ms
11  142.251.238.82 (142.251.238.82)  46.499 ms 216.239.51.32 (216.239.51.32)  46.385 ms  46.127 ms
12  209.85.254.20 (209.85.254.20)  46.909 ms 142.251.237.146 (142.251.237.146)  45.037 ms 142.250.235.62 (142.250.235.62)  44.802 ms
13  172.253.64.113 (172.253.64.113)  47.592 ms 142.250.56.125 (142.250.56.125)  46.125 ms 216.239.58.53 (216.239.58.53)  47.140 ms
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  * * *
20  * * *
21  * * *
22  * * *
23  dns.google (8.8.8.8)  46.342 ms  46.030 ms  44.787 ms
```

### Observations or Insights

-   **First Hop**: The first hop is usually the local machine router, and it should have a very low latency.
-   **Subsequent Hops**: These could be various routers and switches on the Internet. The IP addresses and latencies will vary.
-   **Final Hop**: The final hop should be the IP address of the destination (`dns.google` in this case). The latency here gives us an idea of the time it takes for a packet to travel from my computer to the destination.
-   **Asterisks**: As we can see rows of asterisks, that usually means that the packet was lost or that the device at that hop is configured not to respond.
-   **High Latency**: High latency at a particular hop could indicate network congestion or other issues at that point.

The `traceroute` command can be a useful diagnostic tool for understanding network paths and identifying issues with latency or packet loss.

## Dig

I first installed ```dnsutils``` to be able to run the command, the output below is the output of ```dig stackoverflow.com```

```
; <<>> DiG 9.18.12-0ubuntu0.22.04.3-Ubuntu <<>> stackoverflow.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 59180
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;stackoverflow.com.		IN	A

;; ANSWER SECTION:
stackoverflow.com.	16	IN	A	188.114.99.229
stackoverflow.com.	16	IN	A	188.114.98.229

;; Query time: 4 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Thu Oct 19 02:25:45 MSK 2023
;; MSG SIZE  rcvd: 78
```
### Observations or Insights

-   **Status**: The `status: NOERROR` indicates that the DNS query was successful.
-   **Answer Section**: This section shows the IP address (`188.114.99.229`) associated with `stackoverflow.com`.
-   **Query Time**: This shows how long it took to get the answer, which is `4 msec` in this example.
-   **Server**: This indicates which DNS server responded to the query, `27.0.0.53` in this case.

The `dig` command is a powerful tool for diagnosing DNS issues and understanding how domain names are resolved to IP addresses. It can show us not only the IP address but also other DNS records like MX for mail servers, TXT for text records, etc.
