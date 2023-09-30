# TraceRoute tasks

For this task, I use commands on my Innopolis Virtual machine. WSL has some corrupted things

## Task 1

I used the following command:

```sh
traceroute google.com
```

And got the following output:

```sh
traceroute to google.com (64.233.163.113), 30 hops max, 60 byte packets
 1  10.90.136.2 (10.90.136.2)  0.856 ms  0.833 ms  0.818 ms
 2  1.123.18.84.in-addr.arpa (84.18.123.1)  9.337 ms  9.576 ms  9.308 ms
 3  188.170.164.138 (188.170.164.138)  7.953 ms  11.043 ms  7.925 ms
 4  * * *
 5  * * *
 6  83.169.204.176 (83.169.204.176)  24.007 ms 83.169.204.166 (83.169.204.166)  18.940 ms  18.918 ms
 7  142.251.237.154 (142.251.237.154)  44.224 ms  42.831 ms 142.251.237.156 (142.251.237.156)  37.449 ms
 8  72.14.235.69 (72.14.235.69)  38.423 ms 142.250.233.0 (142.250.233.0)  83.744 ms 209.85.254.6 (209.85.254.6)  36.164 ms
 9  216.239.62.9 (216.239.62.9)  32.751 ms 142.250.56.131 (142.250.56.131)  34.726 ms 172.253.70.47 (172.253.70.47)  34.665 ms
10  * * *
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  lj-in-f113.1e100.net (64.233.163.113)  36.762 ms  36.750 ms  33.185 ms
```

I used 19 hops to find google.com, which is interesting. I also got some responses with * which basically means the ttl of my request expired, and another service did not sent ICMP package back to notify me.

To ping IP addresses we need to use (for ipv4):

```sh
traceroute -4 ip
```

To ping IP addresses we need to use (for ipv6):

```sh
traceroute -6 ip
```

## Task 2

I used the following command to perform DNS lookup:

```sh
dig google.com
```

And got the following response:

```sh
; <<>> DiG 9.16.1-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 14072
;; flags: qr rd ra; QUERY: 1, ANSWER: 6, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;google.com.                    IN      A

;; ANSWER SECTION:
google.com.             235     IN      A       108.177.14.138
google.com.             235     IN      A       108.177.14.102
google.com.             235     IN      A       108.177.14.113
google.com.             235     IN      A       108.177.14.101
google.com.             235     IN      A       108.177.14.139
google.com.             235     IN      A       108.177.14.100

;; Query time: 27 msec
;; SERVER: 77.88.8.1#53(77.88.8.1)
;; WHEN: Sat Sep 30 16:43:11 MSK 2023
;; MSG SIZE  rcvd: 135
```
