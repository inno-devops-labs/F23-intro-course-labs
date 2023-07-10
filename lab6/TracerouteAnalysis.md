traceroute to forcesafesearch.google.com (216.239.38.120), 64 hops max
 
| -  | - | -|  - | - |
| -------- | -------- | -------- | -------- | -------- |
| 1 | 10.242.1.1  | 0.962ms | 3.173ms | 1.059ms  | 
| 2 |  10.250.0.2 | 1.196ms | 0.976ms | 1.059ms |
| 3  | 10.252.5.1 | 2.669ms | 5.016ms | 8.365ms |
|  4  | 188.130.155.1 | 11.796ms | 10.369ms | 5.047ms |
|  5  | 84.18.123.1 | 12.470ms | 11.006ms | 13.085ms |
|  6  | 188.170.164.138 | 14.368ms | 8.329ms | 9.801ms |

Based on the provided output, the traceroute reached up to hop 6, which is the IP address 188.170.164.138. After that, there are no further responses from the subsequent hops. This could indicate that the network path beyond hop 6 is not responding to the traceroute requests.

The latency values shown in the output represent the time it took for each hop to respond to the traceroute request. Lower latency values indicate faster response times.

## To perform a DNS lookup for a specified domain name, you can use the dig command. Here are the steps to follow:

1. Open the terminal.
2. Navigate to the lab folder using the cd command.
3. Run the dig command followed by the domain name you want to lookup.

## Here's an example of how you can do this:
dig google.com


; <<>> DiG 9.18.12-0ubuntu0.22.10.1-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 5108
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		6651	IN	CNAME	forcesafesearch.google.com.
forcesafesearch.google.com. 6651 IN	A	216.239.38.120

;; Query time: 0 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Mon Jul 10 00:41:21 PDT 2023
;; MSG SIZE  rcvd: 85

