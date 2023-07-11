# Networking Analysis

### Traceroute
`> traceroute github.com`
```
ezpzbaby@Bekzhans-MBP ~ % traceroute github.com
traceroute to github.com (140.82.121.4), 64 hops max, 52 byte packets
 1  router.asus.com (192.168.1.1)  3.153 ms  1.145 ms  0.969 ms
 2  10.241.1.1 (10.241.1.1)  1.548 ms  1.243 ms  1.191 ms
 3  10.250.0.2 (10.250.0.2)  1.787 ms  1.749 ms  1.810 ms
 4  10.252.5.1 (10.252.5.1)  5.769 ms  4.445 ms  3.387 ms
 5  188.130.155.1 (188.130.155.1)  3.080 ms  7.213 ms  3.528 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  12.613 ms  16.344 ms  14.817 ms
 7  188.170.164.138 (188.170.164.138)  32.283 ms  18.032 ms  9.366 ms
 8  * * *
 9  * * *
10  * * *
11  83.169.204.74 (83.169.204.74)  39.156 ms  38.995 ms  38.026 ms
12  war-b3-link.ip.twelve99.net (195.12.255.204)  39.585 ms  39.241 ms  42.436 ms
13  ffm-bb1-link.ip.twelve99.net (62.115.117.224)  56.338 ms
    ffm-bb2-link.ip.twelve99.net (62.115.120.20)  62.885 ms
    ffm-bb1-link.ip.twelve99.net (62.115.117.224)  56.195 ms
14  ffm-b11-link.ip.twelve99.net (62.115.124.119)  66.110 ms  100.818 ms
    ffm-b11-link.ip.twelve99.net (62.115.124.117)  61.396 ms
15  github-ic-350972.ip.twelve99-cust.net (62.115.182.171)  70.239 ms  64.664 ms  62.781 ms
16  * * *
17  * * *
18  * * *
19  * * *
20  * * *
21  * * *
22  * * *
23  * * *
24  * * *
25  * * *
26  * * *
27  * * *
28  * * *
29  * * *
30  * * *
31  * * *
```

Then it kept showing triple `*` symbols, and I decided to stop the process


### Dig
`> dig github.com any`
```
ezpzbaby@Bekzhans-MBP ~ % dig github.com any

; <<>> DiG 9.10.6 <<>> github.com any
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 22036
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 13, ADDITIONAL: 14

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;github.com.			IN	ANY

;; ANSWER SECTION:
github.com.		13	IN	A	140.82.121.4

;; AUTHORITY SECTION:
.			48223	IN	NS	d.root-servers.net.
.			48223	IN	NS	k.root-servers.net.
.			48223	IN	NS	e.root-servers.net.
.			48223	IN	NS	a.root-servers.net.
.			48223	IN	NS	h.root-servers.net.
.			48223	IN	NS	j.root-servers.net.
.			48223	IN	NS	m.root-servers.net.
.			48223	IN	NS	i.root-servers.net.
.			48223	IN	NS	l.root-servers.net.
.			48223	IN	NS	f.root-servers.net.
.			48223	IN	NS	b.root-servers.net.
.			48223	IN	NS	c.root-servers.net.
.			48223	IN	NS	g.root-servers.net.

;; ADDITIONAL SECTION:
g.root-servers.net.	12202	IN	A	192.112.36.4
l.root-servers.net.	1429	IN	A	199.7.83.42
f.root-servers.net.	31566	IN	A	192.5.5.241
m.root-servers.net.	2497	IN	A	202.12.27.33
j.root-servers.net.	29828	IN	A	192.58.128.30
e.root-servers.net.	57250	IN	A	192.203.230.10
b.root-servers.net.	12010	IN	A	199.9.14.201
d.root-servers.net.	29107	IN	A	199.7.91.13
k.root-servers.net.	21873	IN	A	193.0.14.129
a.root-servers.net.	66365	IN	A	198.41.0.4
c.root-servers.net.	4519	IN	A	192.33.4.12
h.root-servers.net.	54915	IN	A	198.97.190.53
i.root-servers.net.	8831	IN	A	192.36.148.17

;; Query time: 8 msec
;; SERVER: 192.168.1.1#53(192.168.1.1)
;; WHEN: Tue Jul 11 11:06:38 MSK 2023
;; MSG SIZE  rcvd: 474
```

Returned all records for a hostname, including NS and SOA records
