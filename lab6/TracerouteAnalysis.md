# Task 2: Networking Analysis
---
### Traceroute
To install Traceroute run:
`sudo apt install traceroute`

To perform a traceroute to google.com run:
`traceroute google.com`

Output:

traceroute to google.com (216.239.38.120), 30 hops max, 60 byte packets
 1  _gateway (10.91.48.1)  3.533 ms  3.471 ms  3.454 ms
 2  1.123.18.84.in-addr.arpa (84.18.123.1)  13.259 ms  9.908 ms  13.218 ms
 3  188.170.164.138 (188.170.164.138)  13.199 ms  13.183 ms  13.169 ms
 4  * * *
 5  * * *
 6  83.169.204.166 (83.169.204.166)  20.123 ms  19.403 ms 83.169.204.176 (83.169.204.176)  26.401 ms
 7  142.250.238.214 (142.250.238.214)  36.901 ms 142.250.239.64 (142.250.239.64)  33.294 ms 72.14.234.54 (72.14.234.54)  36.668 ms
 8  172.253.66.108 (172.253.66.108)  36.646 ms 74.125.253.109 (74.125.253.109)  36.626 ms 142.251.238.68 (142.251.238.68)  36.607 ms
 9  142.250.56.13 (142.250.56.13)  43.033 ms 216.239.58.53 (216.239.58.53)  36.569 ms 142.250.56.215 (142.250.56.215)  39.347 ms
10  * * *
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  any-in-2678.1e100.net (216.239.38.120)  36.918 ms  36.908 ms  33.712 ms

### Dig
To perform a DNS lookup to google.com run:
`dig google.com`

Output:
; <<>> DiG 9.18.1-1ubuntu1.3-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4214
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		7014	IN	CNAME	forcesafesearch.google.com.
forcesafesearch.google.com. 7014 IN	A	216.239.38.120

;; Query time: 0 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Fri Jul 14 21:59:19 MSK 2023
;; MSG SIZE  rcvd: 85

