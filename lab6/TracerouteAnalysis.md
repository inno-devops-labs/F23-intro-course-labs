# Traceroute Analysis

---

## Traceroute

Url to traceroute: `www.google.com` (`traceroute www.google.com`)

Output of trace route

> ```traceroute to www.google.com (216.239.38.120), 30 hops max, 60 byte packets
> 1  XiaoQiang (192.168.31.1)  1.850 ms  1.767 ms  1.847 ms
> 2  10.243.1.1 (10.243.1.1)  2.206 ms  2.180 ms  2.235 ms
> 3  10.250.0.2 (10.250.0.2)  2.594 ms  2.570 ms  2.546 ms
> 4  10.252.5.1 (10.252.5.1)  2.796 ms  4.157 ms  3.029 ms
> 5  188.130.155.1 (188.130.155.1)  4.035 ms  11.866 ms  12.522 ms
> 6  1.123.18.84.in-addr.arpa (84.18.123.1)  16.718 ms  13.221 ms  13.181 ms
> 7  188.170.164.138 (188.170.164.138)  20.145 ms  20.118 ms  20.105 ms
> 8  * * *
> 9  * * *
> 10  83.169.204.176 (83.169.204.176)  21.638 ms  21.581 ms  21.848 ms
> 11  142.250.239.64 (142.250.239.64)  48.410 ms 142.251.237.156 (142.251.237.156)  39.693 ms 142.251.238.82 (142.251.238.82)  38.905 ms
> 12  108.170.235.204 (108.170.235.204)  35.103 ms 142.251.237.146 (142.251.237.146)  43.997 ms 108.170.235.204 (108.170.235.204)  41.497 ms
> 13  216.239.58.53 (216.239.58.53)  36.557 ms 142.250.232.179 (142.250.232.179)  39.418 ms 216.239.58.53 (216.239.58.53)  37.783 ms
> 14  * * *
> 15  * * *
> 16  * * *
> 17  * * *
> 18  * * *
> 19  * * *
> 20  * * *
> 21  * * *
> 22  any-in-2678.1e100.net (216.239.38.120)  37.512 ms * *

To access google homepage, it is accessing some other domain.
Could be that this address is used to perform load balancing

## Dig

Url to dig `www.google.com` (`dig www.google.com`)

> ```; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> www.google.com
> ;; global options: +cmd
> ;; Got answer:
> ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 32943
> ;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1
>
> ;; OPT PSEUDOSECTION:
> ; EDNS: version: 0, flags:; udp: 65494
> ;; QUESTION SECTION:
> ;www.google.com.			IN	A
>
> ;; ANSWER SECTION:
> www.google.com.		1968	IN	CNAME	forcesafesearch.google.com.
> forcesafesearch.google.com. 1968 IN	A	216.239.38.120
>
> ;; Query time: 4 msec
> ;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
> ;; WHEN: Sun Jul 16 16:23:19 MSK 2023
> ;; MSG SIZE  rcvd: 89 ```

Given IP in answer section leads
to google search homepage