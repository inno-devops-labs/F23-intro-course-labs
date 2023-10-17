# Task2: Networking Analysis

## 1. Traceroute:

- I used `traceroute` command for analysing the network path from my machine to `gmail.com`.

- The command i ran was: `traceroute gmail.com`

**Output:**

```
traceroute to gmail.com (64.233.161.18), 30 hops max, 60 byte packets
 1  XiaoQiang (172.28.8.1)  1.558 ms  1.483 ms  1.226 ms
 2  10.244.1.1 (10.244.1.1)  7.001 ms  6.973 ms  6.947 ms
 3  10.250.0.2 (10.250.0.2)  2.311 ms  2.288 ms  2.481 ms
 4  10.252.5.1 (10.252.5.1)  4.725 ms  4.474 ms  4.445 ms
 5  188.130.155.1 (188.130.155.1)  3.800 ms  3.573 ms  6.146 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  12.200 ms  11.200 ms  12.929 ms
 7  188.254.80.81 (188.254.80.81)  23.005 ms  11.691 ms  11.397 ms
 8  95.167.92.165 (95.167.92.165)  38.484 ms  38.677 ms 95.167.92.161 (95.167.92.161)  50.193 ms
 9  * * *
10  72.14.209.89 (72.14.209.89)  36.168 ms  37.119 ms  38.331 ms
11  * * *
12  72.14.233.94 (72.14.233.94)  40.670 ms 108.170.250.129 (108.170.250.129)  37.219 ms 209.85.245.2 (209.85.245.2)  33.083 ms
13  108.170.250.83 (108.170.250.83)  44.563 ms 108.170.250.99 (108.170.250.99)  42.943 ms 108.170.250.34 (108.170.250.34)  42.903 ms
14  142.251.237.154 (142.251.237.154)  56.895 ms  55.374 ms 209.85.249.158 (209.85.249.158)  58.821 ms
15  142.250.235.68 (142.250.235.68)  52.951 ms 172.253.66.108 (172.253.66.108)  51.746 ms 142.251.238.66 (142.251.238.66)  51.719 ms
16  172.253.79.115 (172.253.79.115)  55.113 ms 216.239.62.13 (216.239.62.13)  51.602 ms 172.253.79.169 (172.253.79.169)  49.601 ms
17  * * *
18  * * *
19  * * *
20  * * *
21  * * *
22  * * *
23  * * *
24  * * *
25  * * *
26  lh-in-f18.1e100.net (64.233.161.18)  54.289 ms  50.138 ms  55.473 ms
```

**Observations:**

- Each line in the output of the command represents a hop in the path that the packets take to get from local machine to gmail. With each hop we can see the round trip time (ms). The first hop for example took between 1.226 ms and 1.558 ms.
- It took 26 hops map full path to reach to Gmail's server.

- Astericks mean that particular hop didn't respond within a certain time frame.

## 2. Dig

- I ran `dig` utility for dns lookup that comes with `dnsutils` package in ubuntu.

- I did a lookup on the domain `github.com`

**Output:**

```
 <<>> DiG 9.16.1-Ubuntu <<>> github.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 5724
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;github.com.			IN	A

;; ANSWER SECTION:
github.com.		27	IN	A	140.82.121.3

;; Query time: 4 msec
;; SERVER: 127.0.0.53#53(127.0.0.53)
;; WHEN: منگل اکتوبر 17 23:19:59 MSK 2023
;; MSG SIZE  rcvd: 55

```

**Observations:**

- The DNS query was successful (status: NOERROR).

- The IP address associated with `github.com` is 140.82.121.3.

- The result has a time-to-live (TTL) of 27 seconds, meaning the result can be cached for that duration.

- The query was fast and took only 4 milliseconds.

- The DNS server that responded is your local system's caching resolver (127.0.0.53).

- The response message size was 55 bytes.