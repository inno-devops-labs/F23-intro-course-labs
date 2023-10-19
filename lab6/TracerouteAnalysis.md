1. install Traceroute 
```console
sudo apt-get install traceroute
```

2. Verify installation 
```console
ahmad@ahmad-workstation:~$ traceroute --version
Modern traceroute for Linux, version 2.1.0
Copyright (c) 2016  Dmitry Butskoy,   License: GPL v2 or any later
```

3. Test 
```console
ahmad@ahmad-workstation:~$ traceroute google.com
traceroute to google.com (216.58.209.206), 30 hops max, 60 byte packets
 1  XiaoQiang (192.168.31.1)  0.925 ms  1.074 ms  1.166 ms
 2  10.16.255.135 (10.16.255.135)  3.559 ms  3.642 ms  4.204 ms
 3  10.16.248.229 (10.16.248.229)  4.285 ms 10.16.248.225 (10.16.248.225)  10.393 ms 10.16.248.213 (10.16.248.213)  4.270 ms
 4  10.16.248.150 (10.16.248.150)  4.609 ms 10.16.248.218 (10.16.248.218)  10.194 ms 10.16.248.150 (10.16.248.150)  4.579 ms
 5  10.16.248.130 (10.16.248.130)  10.154 ms  10.313 ms *
 6  188.170.164.138 (188.170.164.138)  20.057 ms  22.886 ms 10.16.248.130 (10.16.248.130)  3.454 ms
 7  188.170.164.138 (188.170.164.138)  19.220 ms 10.222.16.33 (10.222.16.33)  18.434 ms 188.170.164.32 (188.170.164.32)  19.180 ms
 8  10.222.16.50 (10.222.16.50)  18.414 ms 10.222.16.33 (10.222.16.33)  18.560 ms  19.291 ms
 9  83.169.204.176 (83.169.204.176)  19.246 ms 83.169.204.166 (83.169.204.166)  19.237 ms  18.732 ms
10  83.169.204.176 (83.169.204.176)  18.470 ms 108.170.250.129 (108.170.250.129)  22.871 ms 83.169.204.176 (83.169.204.176)  18.258 ms
11  108.170.226.176 (108.170.226.176)  101.347 ms 108.170.250.99 (108.170.250.99)  101.268 ms 108.170.225.36 (108.170.225.36)  101.251 ms
12  108.170.250.34 (108.170.250.34)  101.227 ms 108.170.250.66 (108.170.250.66)  101.200 ms 209.85.255.136 (209.85.255.136)  101.147 ms
13  142.250.46.44 (142.250.46.44)  101.184 ms 209.85.249.158 (209.85.249.158)  101.152 ms 172.253.66.116 (172.253.66.116)  101.142 ms
14  142.250.36.209 (142.250.36.209)  101.119 ms  101.097 ms 142.250.36.193 (142.250.36.193)  100.999 ms
15  142.250.227.83 (142.250.227.83)  79.775 ms  79.690 ms  79.680 ms
16  hem09s03-in-f14.1e100.net (216.58.209.206)  79.665 ms 142.250.227.83 (142.250.227.83)  94.405 ms  94.308 ms
```

4. Using dig
```console
ahmad@ahmad-workstation:~$ dig google.com

; <<>> DiG 9.18.12-0ubuntu0.22.04.3-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 63147
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		248	IN	A	216.58.209.206

;; Query time: 4 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Thu Oct 19 11:17:25 MSK 2023
;; MSG SIZE  rcvd: 55
```