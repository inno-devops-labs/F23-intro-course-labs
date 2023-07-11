1. Traceroute

Command: `traceroute yandex.ru`


Output:
```
traceroute to yandex.ru (213.180.193.56), 64 hops max, 52 byte packets
 1  10.91.64.1 (10.91.64.1)  2.619 ms  2.284 ms  2.107 ms
 2  1.123.18.84.in-addr.arpa (84.18.123.1)  11.229 ms  9.414 ms  9.529 ms
 3  188.170.164.138 (188.170.164.138)  7.978 ms  8.542 ms  7.475 ms
 4  * * *
 5  * * *
 6  83.169.204.176 (83.169.204.176)  23.212 ms  20.871 ms
    83.169.204.166 (83.169.204.166)  21.276 ms
 7  * *
```

Observations: The command provides the list of routers through which the network packets pass in order to reach the destination (IP addresses and round-trip times). 

2. Dig

Command: `dig yandex.ru`

Output:
```
; <<>> DiG 9.10.6 <<>> yandex.ru
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 52759
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4000
;; QUESTION SECTION:
;yandex.ru.			IN	A

;; ANSWER SECTION:
yandex.ru.		13	IN	A	213.180.193.56

;; Query time: 2 msec
;; SERVER: 10.90.128.11#53(10.90.128.11)
;; WHEN: Tue Jul 11 12:50:40 MSK 2023
;; MSG SIZE  rcvd: 54

```

Observations: The command provides the information about DNS resolution including DNS records and IP address mapped to the domain.
