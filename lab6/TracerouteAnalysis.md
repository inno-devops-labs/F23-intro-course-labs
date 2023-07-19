## Traceroute
Command:
```
$ traceroute 1.1.1.1
```

Output:
```
traceroute to 1.1.1.1 (1.1.1.1), 30 hops max, 60 byte packets
 1  172.29.32.1 (172.29.32.1)  0.334 ms  0.297 ms  0.285 ms
 2  10.243.1.1 (10.243.1.1)  1.273 ms  1.247 ms  1.230 ms
 3  10.250.0.2 (10.250.0.2)  1.181 ms  1.164 ms  1.151 ms
 4  10.252.5.1 (10.252.5.1)  2.174 ms  2.667 ms  2.144 ms
 5  188.130.155.1 (188.130.155.1)  2.447 ms  3.065 ms  3.049 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  11.271 ms  10.640 ms  13.224 ms
 7  188.254.80.81 (188.254.80.81)  21.217 ms  18.234 ms  18.193 ms
 8  95.167.92.161 (95.167.92.161)  39.848 ms 95.167.92.165 (95.167.92.165)  39.831 ms  39.814 ms
 9  * * *
10  * * *
11  * * *
12  * * *
13  * one.one.one.one (1.1.1.1)  49.213 ms  49.189 ms
```

## Dig
Command:
```
$ dig kringeproduction.duckdns.org
```

Output:
```

; <<>> DiG 9.16.1-Ubuntu <<>> youtube.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 55781
;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: e198d4fc5478e1554d51845164b863634d7f7bfa4c62e175 (good)
;; QUESTION SECTION:
;youtube.com.                   IN      A

;; ANSWER SECTION:
youtube.com.            61      IN      A       74.125.205.190
youtube.com.            61      IN      A       74.125.205.136
youtube.com.            61      IN      A       74.125.205.91
youtube.com.            61      IN      A       74.125.205.93

;; Query time: 0 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Thu Jul 20 01:27:47 MSK 2023
;; MSG SIZE  rcvd: 132

```