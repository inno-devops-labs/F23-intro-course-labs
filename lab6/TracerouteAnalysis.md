## Task 2: Networking Analysis

####1. Traceroute:

>**`traceroute wikipedia.org`**
```
traceroute to wikipedia.org (91.198.174.192), 64 hops max, 52 byte packets
 1  192.168.1.1 (192.168.1.1)  19.948 ms  2.863 ms  3.050 ms
 2  10.243.1.1 (10.243.1.1)  15.156 ms  3.586 ms  3.393 ms
 3  10.250.0.2 (10.250.0.2)  15.390 ms  3.828 ms  3.573 ms
 4  10.252.5.1 (10.252.5.1)  13.588 ms  5.829 ms  3.759 ms
 5  188.130.155.1 (188.130.155.1)  21.284 ms  4.807 ms  7.664 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  59.030 ms  13.595 ms  13.472 ms
 7  188.254.80.81 (188.254.80.81)  31.384 ms  13.586 ms  19.390 ms
 8  188.128.126.43 (188.128.126.43)  86.848 ms
    188.128.126.27 (188.128.126.27)  81.565 ms *
 9  * * *
10  * * *
```

When data is reveived and no communication between hops is going on, then traceroute just shows * * * .

####2. Dig:

>**`dig wikipedia.org`**
```
; <<>> DiG 9.10.6 <<>> wikipedia.org
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 50179
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;wikipedia.org.			IN	A

;; ANSWER SECTION:
wikipedia.org.		414	IN	A	91.198.174.192

;; Query time: 18 msec
;; SERVER: 192.168.1.1#53(192.168.1.1)
;; WHEN: Tue Jul 11 11:36:53 MSK 2023
;; MSG SIZE  rcvd: 58
```
This command helps to make different DNS queries, e.g. information about IP address that is linked with its domain name.