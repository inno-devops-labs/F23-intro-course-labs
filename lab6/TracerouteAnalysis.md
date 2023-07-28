# Trace Route Analysis

## Traceroute

`traceroute` – print the route packets take to network host

### Example

`traceroute bibatalo.ru`

```
traceroute to bibatalov.ru (62.84.126.150), 64 hops max, 52 byte packets
 1  * * *
 2  90.150.180.22 (90.150.180.22)  6.743 ms  11.005 ms  7.518 ms
 3  79.133.87.196 (79.133.87.196)  12.953 ms  8.553 ms  11.632 ms
 4  79.133.87.153 (79.133.87.153)  9.090 ms  11.654 ms  10.731 ms
 5  87.226.181.89 (87.226.181.89)  28.281 ms  31.159 ms  29.875 ms
 6  broadband-90-154-109-162.ip.moscow.rt.ru (90.154.109.162)  31.392 ms  27.298 ms  51.854 ms
 7  * * *
 8  * * *
 9  * * *
10  * * *
11  * * *
12  * * *
13  62.84.126.150 (62.84.126.150)  40.073 ms * *
```

## Dig

`nslookup` - query Internet name servers interactively

`dig` - DNS lookup utility

### Insights

Might be used in VPN's to check correctness of names. For example in clusters

### Examples

`dig bibatalov.ru`

```
; <<>> DiG 9.10.6 <<>> bibatalov.ru
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 41251
;; flags: qr rd ra ad; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;bibatalov.ru.                  IN      A

;; ANSWER SECTION:
bibatalov.ru.           345     IN      A       62.84.126.150

;; Query time: 4 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Fri Jul 28 20:50:54 +05 2023
;; MSG SIZE  rcvd: 46
```

`nslookup bibatalov.ru`

```
Server:         192.168.0.1
Address:        192.168.0.1#53

Non-authoritative answer:
Name:   bibatalov.ru
Address: 62.84.126.150
```