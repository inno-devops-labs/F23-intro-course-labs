### 1. Traceroute:

<b> Insights:</b> Traceroute is a network diagnostic tool used to track the path that an internet packet takes from your computer to a destination IP address or domain name. It helps in identifying network connectivity issues, packet loss, and latency problems.</br>
<b>Website: </b>youtube.com</br>
<b>Command:</b> traceroute youtube.com</br>
<b>Output: </b></br>
traceroute to youtube.com (64.233.165.136), 30 hops max, 60 byte packets

 1  _gateway (192.168.3.1)  1.515 ms  1.571 ms  1.815 ms

 2  10.242.1.1 (10.242.1.1)  3.088 ms  3.050 ms  3.014 ms

 3  10.250.0.2 (10.250.0.2)  3.237 ms  2.959 ms  3.164 ms

 4  * 10.252.5.1 (10.252.5.1)  3.109 ms  3.622 ms

 5  188.130.155.1 (188.130.155.1)  10.693 ms  16.110 ms  8.741 ms

 6  1.123.18.84.in-addr.arpa (84.18.123.1)  12.821 ms  12.135 ms  11.117 ms

 7  188.254.80.81 (188.254.80.81)  12.530 ms  13.733 ms  12.674 ms

 8  * * *

 9  * * *

10  72.14.209.89 (72.14.209.89)  42.834 ms  35.130 ms  35.334 ms

11  * * *

12  108.170.226.164 (108.170.226.164)  35.795 ms 108.170.250.33 (108.170.250.33)  34.041 ms 108.170.250.129 (108.170.250.129)  35.369 ms

13  108.170.250.51 (108.170.250.51)  36.113 ms 108.170.250.66 (108.170.250.66)  37.233 ms 108.170.250.51 (108.170.250.51)  67.568 ms

14  142.251.49.24 (142.251.49.24)  47.843 ms 142.251.238.82 (142.251.238.82)  55.647 ms 72.14.234.54 (72.14.234.54)  54.502 ms

15  72.14.232.86 (72.14.232.86)  54.195 ms 108.170.235.204 (108.170.235.204)  53.720 ms 142.250.235.74 (142.250.235.74)  68.693 ms

16  72.14.237.201 (72.14.237.201)  69.910 ms 74.125.253.147 (74.125.253.147)  54.875 ms 216.239.63.25 (216.239.63.25)  55.867 ms

17  * * *

18  * * *

19  * * *

20  * * *

21  * * *

22  * * *

23  * * *

24  * * *

25  * * *

26  lg-in-f136.1e100.net (64.233.165.136)  66.638 ms  66.891 ms  50.846 ms

### 2. Dig:

<b> Insights:</b> Dig (Domain Information Groper) is a command-line tool used for querying DNS (Domain Name System) servers to retrieve information about domain names, IP addresses, and other DNS records. It is commonly used for troubleshooting DNS-related issues and gathering DNS-related information.</br>
<b>Website: youtube.com</b></br>
<b>Command: dig youtube.com</b></br>
<b>Output: </b></br>
; <<>> DiG 9.16.1-Ubuntu <<>> youtube.com

;; global options: +cmd

;; Got answer:

;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 23644

;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 0, ADDITIONAL: 1


;; OPT PSEUDOSECTION:

; EDNS: version: 0, flags:; udp: 65494

;; QUESTION SECTION:

;youtube.com.			IN	A


;; ANSWER SECTION:

youtube.com.		184	IN	A	108.177.14.190

youtube.com.		184	IN	A	108.177.14.136

youtube.com.		184	IN	A	108.177.14.93

youtube.com.		184	IN	A	108.177.14.91


;; Query time: 32 msec

;; SERVER: 127.0.0.53#53(127.0.0.53)

;; WHEN: Ср окт 11 11:32:42 MSK 2023

;; MSG SIZE  rcvd: 104

