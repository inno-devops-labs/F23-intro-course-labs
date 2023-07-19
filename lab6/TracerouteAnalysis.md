## Traceroute

Firstly, I installed traceroute using following command:

sudo apt install traceroute

Then, I decided to traceroute yandex.ru website.

Command:

traceroute -I yandex.ru

Result:
```
traceroute to yandex.ru (213.180.193.56), 30 hops max, 60 byte packets
 1  _gateway (10.0.2.2)  0.305 ms  0.247 ms  0.233 ms
 2  10.91.48.1 (10.91.48.1)  6.293 ms  6.227 ms  6.214 ms
 3  1.123.18.84.in-addr.arpa (84.18.123.1)  16.460 ms  16.445 ms  16.340 ms
 4  188.170.164.138 (188.170.164.138)  13.169 ms  14.933 ms  16.202 ms
 5  * * *
 6  * * *
 7  83.169.204.166 (83.169.204.166)  28.176 ms  21.587 ms  22.759 ms
 8  * * *
 9  familysearch.yandex.ru (213.180.193.56)  26.545 ms  27.223 ms  27.209 ms
```
Observations:

Since I tracerouted yandex.ru website that is located in Russia, number of hops and
latency were relatively small.

## Dig

Command:

dig yandex.ru

Result:
```
; <<>> DiG 9.18.1-1ubuntu1.3-Ubuntu <<>> yandex.ru
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 1628
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;yandex.ru.			IN	A

;; ANSWER SECTION:
yandex.ru.		277	IN	A	213.180.193.56

;; Query time: 0 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Thu Jul 20 01:44:07 +04 2023
;; MSG SIZE  rcvd: 54

```
Observations:

As I see in the answer section, IP address of yandex.ru website is 213.180.193.56