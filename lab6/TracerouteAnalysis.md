# lab6 task 2 (Amirlan Sharipov)

## traceroute

### Command
```
traceroute rinri-d.xyz
```

### Output
```
traceroute to rinri-d.xyz (80.240.17.228), 30 hops max, 60 byte packets
 1  _gateway (10.244.1.1)  0.347 ms  0.333 ms  0.340 ms
 2  10.250.0.2 (10.250.0.2)  0.550 ms  0.531 ms  0.513 ms
 3  10.252.5.1 (10.252.5.1)  1.220 ms  1.040 ms  1.099 ms
 4  188.130.155.1 (188.130.155.1)  1.748 ms  1.771 ms  1.825 ms
 5  1.123.18.84.in-addr.arpa (84.18.123.1)  9.353 ms  9.970 ms  9.384 ms
 6  188.170.164.138 (188.170.164.138)  7.759 ms  7.641 ms  8.027 ms
 7  * * *
 8  * * *
 9  * * *
10  83.169.204.126 (83.169.204.126)  52.560 ms 83.169.204.124 (83.169.204.124)  55.851 ms  55.768 ms
11  decix.fkt.vultr.com (80.81.196.21)  64.341 ms  64.323 ms  64.317 ms
12  * * *
13  * * *
14  * * *
15  80.240.17.228.vultrusercontent.com (80.240.17.228)  55.382 ms  55.360 ms  54.246 ms
```

### Comments
The packets first go through the gateway and the local network. Only after that the packet goes to the internet.
A few months ago, there was a problem: my website was working well with traceroute, but for some reason, I couldn't connect to the website using https (443). I used tcptraceroute to test with 443 port, but it couldn't find my website. Every other port worked flawlessly. I couldn't solve the issue, but now it works fine.

## dig

### Command
```
dig rinri-d.xyz
```

### Output
```
; <<>> DiG 9.18.16 <<>> rinri-d.xyz
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 19312
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 2296d0cc6b2a2a8e4ba3717a64b8fa01e65c8a2389214050 (good)
;; QUESTION SECTION:
;rinri-d.xyz.                   IN      A

;; ANSWER SECTION:
rinri-d.xyz.            174     IN      A       80.240.17.228

;; Query time: 153 msec
;; SERVER: 8.8.8.8#53(8.8.8.8) (UDP)
;; WHEN: Thu Jul 20 12:10:25 MSK 2023
;; MSG SIZE  rcvd: 84
```

### Comments
The command returned the A DNS record.
