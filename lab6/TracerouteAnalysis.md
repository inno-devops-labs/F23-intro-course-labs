# Traceroute
````
❯ traceroute to ya.ru (213.180.193.56), 64 hops max, 52 byte packets
 1  router.asus.com (192.168.1.1)  2.311 ms  2.193 ms  1.350 ms
 2  10.241.1.1 (10.241.1.1)  1.964 ms  1.979 ms  1.734 ms
 3  10.250.0.2 (10.250.0.2)  2.522 ms  3.797 ms  1.887 ms
 4  10.252.5.1 (10.252.5.1)  2.673 ms  3.027 ms  9.768 ms
 5  188.130.155.1 (188.130.155.1)  4.596 ms  7.835 ms  8.364 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  12.784 ms  16.397 ms  12.003 ms
 7  188.170.164.138 (188.170.164.138)  9.128 ms  13.209 ms  11.056 ms
 8  * * *
 9  * * *
10  83.169.204.176 (83.169.204.176)  26.603 ms  22.603 ms
    83.169.204.166 (83.169.204.166)  22.149 ms
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
````

# DNS lookup

````
❯ dig ya.ru                                                                                                                  11:30:23

; <<>> DiG 9.10.6 <<>> ya.ru
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 27123
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ya.ru.				IN	A

;; ANSWER SECTION:
ya.ru.			37	IN	A	213.180.193.56

;; Query time: 2 msec
;; SERVER: 192.168.1.1#53(192.168.1.1)
;; WHEN: Tue Jul 11 11:30:26 MSK 2023
;; MSG SIZE  rcvd: 50

~ ❯ host ya.ru                                                                                                                 11:30:26
ya.ru has address 213.180.193.56
ya.ru has IPv6 address 2a02:6b8::1:56
ya.ru mail is handled by 10 mx.yandex.ru.
````