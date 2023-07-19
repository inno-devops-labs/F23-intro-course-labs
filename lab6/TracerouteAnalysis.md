# Traceroute Analysis

## Traceroute

```bash
# 1.1 is actually a valid IP address which will be expanded to the
# 1.0.0.1 (Cloudflare)
traceroute 1.1
```

Output:

```
traceroute to 1.1 (1.0.0.1), 64 hops max, 52 byte packets
 1  192.168.31.1 (192.168.31.1)  9.658 ms  2.977 ms  2.722 ms
 2  10.242.1.1 (10.242.1.1)  3.248 ms  3.395 ms  3.518 ms
 3  10.250.0.2 (10.250.0.2)  3.354 ms  3.277 ms  3.058 ms
 4  10.252.5.1 (10.252.5.1)  4.819 ms  4.255 ms  6.815 ms
 5  188.130.155.1 (188.130.155.1)  4.930 ms  4.555 ms  9.168 ms
 6  1.123.18.84.in-addr.arpa (84.18.123.1)  14.863 ms  14.417 ms  18.965 ms
 7  188.254.80.81 (188.254.80.81)  12.985 ms  15.086 ms  13.377 ms
 8  * * *
 9  95.71.2.226 (95.71.2.226)  55.321 ms * *
10  * * *
11  one.one.one.one (1.0.0.1)  56.830 ms * *
```

<details>

<summary>ChatGPT explains this output pretty much accurately</summary>

> The first hop is the local router with IP address 192.168.31.1. The next three hops are within the local network and have IP addresses starting with 10.x.x.x, indicating that they are private addresses assigned by the router.
>
> The fifth hop has an IP address belonging to an internet service provider (ISP), indicating that the packets have left the local network and are now being routed through the ISP's network.
>
> The sixth hop has a reverse DNS entry indicating that it belongs to an ISP. The seventh hop also belongs to an ISP.
>
> Hops eight and ten show asterisks, indicating that the packets were not able to reach those destinations, possibly due to network congestion or firewall rules.
>
> Finally, on hop eleven, the packets reach the destination IP address of 1.0.0.1, which is the Cloudflare DNS resolver service.

</details>

## Dig

To perform a  DNS lookup we can use the following command

```bash
dig innopolis.university
```

```
; <<>> DiG 9.10.6 <<>> innopolis.university
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 37932
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;innopolis.university.		IN	A

;; ANSWER SECTION:
innopolis.university.	802	IN	A	213.159.212.4

;; Query time: 37 msec
;; SERVER: 1.1.1.1#53(1.1.1.1)
;; WHEN: Wed Jul 19 22:52:07 MSK 2023
;; MSG SIZE  rcvd: 65
```

From there, we can obtain an IP address from the `A` record: `213.159.212.4`
