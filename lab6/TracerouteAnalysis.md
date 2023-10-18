## Traceroute

To perform a traceroute to a specified website or IP address, use the `traceroute` command. This command helps identify the network path and latency from your Linux machine to the destination.

Open the terminal and run the following command, replacing `example.com` with the desired website or IP address:

```bash
traceroute google.com
```

The output will show the hops (routers) along the network path to the destination. Each line represents a hop and displays the IP address and latency (in milliseconds) for that hop. Here is an example of the output:

```
traceroute to google.com (216.239.38.120), 64 hops max
  1   192.168.3.1  4,614ms  1,146ms  1,163ms 
  2   10.243.1.1  1,759ms  1,675ms  1,528ms 
  3   10.250.0.2  2,924ms  1,957ms  2,319ms 
  4   10.252.5.1  2,604ms  2,083ms  * 
  5   188.130.155.1  25,468ms  2,656ms  2,954ms 
  6   84.18.123.1  11,383ms  *  49,537ms 
  7   188.170.164.138  9,636ms  9,508ms  8,919ms
```

Observations and insights regarding the network path and latency can be made based on the output. You can identify the number of hops, the IP addresses of the routers, and the latency between each hop. Higher latency values may indicate network congestion or other issues along the path.

## Dig

To perform a DNS lookup for a specified domain name, use the `dig` command. This command provides detailed information about DNS resolution, including the IP address associated with the domain name.

Open the terminal and run the following command, replacing `google.com` with the desired domain name:

```bash
dig google.com
```

The output will display various information, including the IP address associated with the domain name and additional DNS-related details. Here is an example of the output:

```
; <<>> DiG 9.18.1-1ubuntu1-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 43070
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		6699	IN	CNAME	forcesafesearch.google.com.
forcesafesearch.google.com. 6699 IN	A	216.239.38.120

;; Query time: 0 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Wed Oct 18 21:16:40 MSK 2023
;; MSG SIZE  rcvd: 85
```

Observations and insights regarding the DNS resolution can be made based on the output. You can identify the IP address associated with the domain name and the query time. It's important to ensure that the IP address matches the expected destination and that the query time is within an acceptable range. Additionally, the output may provide information about the DNS server used for the lookup.