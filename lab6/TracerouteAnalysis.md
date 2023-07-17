# Student Information
Name: Md Motasim Bhuiyan

Group: B21-CS-01

Email: m.bhuiyan@innopolis.university

# Traceroute Analysis
This lab was done on a Ubuntu 20.04 server instance hosted on AWS. 

## Traceroute
I used traceroute to trace the path to `innopolis.university`. The output is as follows:
```bash
traceroute innopolis.university
```
The output is as follows:
```
traceroute to innopolis.university (213.159.212.4), 30 hops max, 60 byte packets
 1  ec2-99-150-19-79.eu-central-1.compute.amazonaws.com (99.150.19.79)  6.425 ms ec2-99-150-19-83.eu-central-1.compute.amazonaws.com (99.150.19.83)  2.662 ms ec2-99-150-19-87.eu-central-1.compute.amazonaws.com (99.150.19.87)  5.844 ms
 2  240.0.88.13 (240.0.88.13)  0.383 ms 240.0.88.12 (240.0.88.12)  0.548 ms 240.0.88.13 (240.0.88.13)  0.408 ms
 3  242.1.84.167 (242.1.84.167)  1.403 ms 242.1.84.35 (242.1.84.35)  0.620 ms 242.1.85.39 (242.1.85.39)  1.408 ms
 4  240.0.96.32 (240.0.96.32)  0.902 ms 240.0.96.35 (240.0.96.35)  0.945 ms  1.020 ms
 5  242.1.100.33 (242.1.100.33)  1.854 ms 242.1.101.167 (242.1.101.167)  1.001 ms 242.1.101.165 (242.1.101.165)  4.949 ms
 6  100.100.2.12 (100.100.2.12)  1.112 ms 100.100.2.6 (100.100.2.6)  0.813 ms 100.100.2.10 (100.100.2.10)  0.781 ms
 7  frm-nt-cr2.ae26-1456.rascom.as20764.net (81.27.241.220)  1.116 ms  1.005 ms  1.001 ms
 8  * * *
 9  tspu-6364.no-hope.msk-m9-cr5.ae666-3002.rascom.as20764.net (80.64.97.55)  54.320 ms  36.333 ms  36.314 ms
10  msk-m9-cr3.xe-10-1-12-2993.rascom.as20764.net (80.64.102.192)  36.740 ms  36.706 ms  36.867 ms
11  prf.msk-m9-cr3.rascom.as20764.net (80.64.102.193)  40.031 ms  40.038 ms  40.663 ms
12  * * *
13  * * *
14  ext01.university.innopolis.ru (213.159.212.4)  39.809 ms !X  39.521 ms !X  39.525 ms !X
```

Here, we can see that the traceroute was able to reach the destination in 14 hops. Hop 8, 12, and 13 were not able to be reached. The `!X` indicates that the destination was reached and no further hops were required. The latency was quite low (`< 3ms`) until entering the RASCOM network and the subsequent hops.

## Dig
To perform a DNS lookup for `innopolis.university`, I used the `dig` command as follows:
```bash
dig innopolis.university
```
The output is as follows:
```
; <<>> DiG 9.16.1-Ubuntu <<>> innopolis.university
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 36355
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;innopolis.university.          IN      A

;; ANSWER SECTION:
innopolis.university.   300     IN      A       213.159.212.4

;; Query time: 159 msec
;; SERVER: 127.0.0.53#53(127.0.0.53)
;; WHEN: Mon Jul 17 10:14:39 UTC 2023
;; MSG SIZE  rcvd: 65
```
The IP address of the domain is `213.159.212.4`. The query time was `159 msec`.