# Lab6: Operating Systems & Networking Lab

- Zeyad Alagamy
- Bs-Cs-01
- z.alagamy@innopolis.university

## Task 2: Networking Analysis

### 2.1 Traceroute:

- Command used: `traceroute`

- Command details: `traceroute` command to trace the network path to a specified website or IP address.

- Usage:

```bash
$ traceroute example.com
```

- Output:

```bash
traceroute to example.com (93.184.216.34), 64 hops max
1   10.241.1.1  0.339ms  0.251ms  0.246ms
2   10.250.0.2  0.576ms  0.744ms  0.727ms
3   10.252.5.1  1.638ms  0.825ms  0.826ms
4   188.130.155.1  2.235ms  2.050ms  2.499ms
5   84.18.123.1  10.784ms  12.894ms  10.463ms
6   87.245.231.208  10.313ms  10.425ms  15.034ms
7   87.245.234.167  193.907ms  192.994ms  193.432ms
8   206.81.81.28  207.958ms  195.733ms  195.443ms
9   152.195.93.129  202.482ms  194.668ms  199.889ms
10   93.184.216.34  196.329ms  205.283ms  198.175ms
11   93.184.216.34  200.429ms  196.874ms  202.516ms
```

- Observations: The first three routers are IU routers so they got the same prefix and replied relatively faster then the others.

### 2.2 Dig:

- Command used: `dig`

- Command details: `dig` command to perform a DNS lookup for a specified domain name.

- Usage:

```bash
$ dig example.com
```

- Output:

```bash
; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> example.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 56502
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;example.com.			IN	A

;; ANSWER SECTION:
example.com.		6971	IN	A	93.184.216.34

;; Query time: 0 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Sat Jul 15 22:13:23 MSK 2023
;; MSG SIZE  rcvd: 56
```

- Observations:
  - Sucessful lookup `status: NOERROR`
  - The query time is extremely low (0 msec), indicating a quick response from the DNS server. Maybe because of my `traceroute` :) 
  - The DNS server used for the query is 127.0.0.53#53, which is the local DNS resolver on the Ubuntu system ((UDP) indicates the use of UDP protocol).
  - The output also includes the version of dig (9.18.12-0ubuntu0.22.04.2-Ubuntu) and the timestamp (Sat Jul 15 22:13:23 MSK 2023).

