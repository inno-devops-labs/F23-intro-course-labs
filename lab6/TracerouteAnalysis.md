# Operating Systems & Networking Lab

1. Traceroute:
```bash
traceroute google.com
> traceroute to google.com (172.217.23.206), 30 hops max, 60 byte packets
>  1  10.9.0.1 (10.9.0.1)  56.990 ms  57.181 ms  57.182 ms
>  2  5.8.44.253 (5.8.44.253)  74.482 ms  74.714 ms  74.722 ms
>  3  5.255.95.96 (5.255.95.96)  58.265 ms  59.112 ms  59.124 ms
>  4  185.8.179.33 (185.8.179.33)  59.267 ms  60.045 ms  60.050 ms
>  5  74.125.119.118 (74.125.119.118)  63.622 ms  65.479 ms  63.874 ms
>  6  108.170.241.193 (108.170.241.193)  60.300 ms 108.170.241.225 (108.170.241.225)  61.646 ms 108.170.241.193 (108.170.241.193)  59.966 ms
>  7  142.251.255.39 (142.251.255.39)  59.542 ms  59.937 ms 142.251.255.41 (142.251.255.41)  60.277 ms
>  8  ams16s37-in-f14.1e100.net (172.217.23.206)  60.226 ms  60.258 ms  60.254 ms
```

2. Dig:
```bash
dig google.com
> ; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> google.com
> ;; global options: +cmd
> ;; Got answer:
> ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16828
> ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
> 
> ;; OPT PSEUDOSECTION:
> ; EDNS: version: 0, flags:; udp: 65494
> ;; QUESTION SECTION:
> ;google.com.			IN	A
> 
> ;; ANSWER SECTION:
> google.com.		149	IN	A	172.217.23.206
> 
> ;; Query time: 0 msec
> ;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
> ;; WHEN: Tue Jul 04 11:21:22 MSK 2023
> ;; MSG SIZE  rcvd: 55
```
