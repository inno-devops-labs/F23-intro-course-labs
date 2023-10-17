# Networking Analysis

## Traceroute

To perform a traceroute, you can use the `traceroute` command on Linux. Here's an example using the command:

```
traceroute ya.ru
```

Output:

```
traceroute to ya.ru (213.180.193.56), 30 hops max, 60 byte packets
 1  _gateway (192.168.3.1)  1.789 ms  1.954 ms  2.585 ms
 2  10.242.1.1 (10.242.1.1)  3.274 ms  3.521 ms  3.507 ms
 3  10.250.0.2 (10.250.0.2)  3.846 ms  3.482 ms  3.818 ms
 4  10.252.5.1 (10.252.5.1)  3.814 ms  3.800 ms  4.031 ms
 5  188.130.155.1 (188.130.155.1)  5.255 ms  4.975 ms  4.959 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  12.211 ms  11.140 ms  11.893 ms
 7  188.254.80.81 (188.254.80.81)  12.358 ms  12.724 ms  13.017 ms
 8  185.140.148.159 (185.140.148.159)  26.380 ms  25.991 ms 185.140.148.157 (185.140.148.157)  29.879 ms
 9  188.254.94.106 (188.254.94.106)  30.914 ms  35.707 ms  30.263 ms
10  * vla-32z1-ae2.yndx.net (93.158.172.19)  26.773 ms *
```

In the above output, each line represents one hop in the network path to the destination (`ya.ru` in this case). The IP address of each hop is shown along with the latency (in milliseconds) for the three packets sent.

## Dig

For performing a DNS lookup using the `dig` command, you can use the following example:

```
dig ya.ru
```

Output:

```
; <<>> DiG 9.18.12-0ubuntu0.22.04.3-Ubuntu <<>> ya.ru
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 23144
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;ya.ru.				IN	A

;; ANSWER SECTION:
ya.ru.			38	IN	A	213.180.193.56

;; Query time: 3 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Tue Oct 17 09:28:05 MSK 2023
;; MSG SIZE  rcvd: 50
```

The output includes the DNS query result, including the IP address associated with the domain name `ya.ru`.
