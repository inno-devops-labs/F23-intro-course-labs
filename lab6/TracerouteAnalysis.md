## Task 2: Networking Analysis

1. **Traceroute:**
```shell
sudo apt install traceroute
traceroute google.com

```
Ourput:
```s
traceroute to google.com (XXX.XXX.XXX.XXX), 30 hops max, 60 byte packets
 1  _gateway (XXX.XXX.XXX.XXX)  1.766 ms  6.554 ms  6.364 ms
 2  XXX.XXX.XXX.XXX.in-addr.arpa (XXX.XXX.XXX.XXX)  9.319 ms  9.602 ms  9.580 ms
 3  XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  9.010 ms  15.404 ms  10.817 ms
 4  * * *
 5  * * *
 6  XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  27.767 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  20.326 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  98.104 ms
 7  XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  98.058 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  98.029 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  97.978 ms
 8  XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  97.959 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  97.927 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  97.908 ms
 9  XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  95.324 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  95.280 ms XXX.XXX.XXX.XXX (XXX.XXX.XXX.XXX)  95.251 ms
10  * * *
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  any-in-2678.1e100.net (XXX.XXX.XXX.XXX)  108.024 ms * *
```
> Note: replaced all ip addresses with a placeholder

#### Observations/Insights
The traceroute output can provide us valuable information. the round trip time for each hop can give us an idea of the network latency between our system and each hop along the path.

2. **Dig:**
```shell
    dig google.com
```
Output:
```s
; <<>> DiG 9.16.1-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 64287
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		6648	IN	CNAME	forcesafesearch.google.com.
forcesafesearch.google.com. 6648 IN	A	XXX.XXX.XXX.XXX

;; Query time: 0 msec
;; SERVER: 127.0.0.53#53(127.0.0.53)
;; WHEN: Mon Oct 09 21:09:55 MSK 2023
;; MSG SIZE  rcvd: 85

```
#### Observations/Insights
the dig output can provide valuable information as follows,
The **ANSWER SECTION** shows the IP address associated with the domain name, which is the result of the DNS lookup. The **QUERY time** shows how long it took to get the DNS response, which can be useful for diagnosing DNS resolution issues. The **STATUS** field shows whether the DNS lookup was successful or if there was an error 