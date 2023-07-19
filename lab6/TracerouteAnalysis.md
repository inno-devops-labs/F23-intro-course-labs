1. Command `traceroute www.google.com`

   Output:

   ```
   traceroute to www.google.com (216.239.38.120), 30 hops max, 60 byte packets
   1  _gateway (192.168.0.1)  26.766 ms  26.751 ms  27.022 ms
   2  10.243.1.1 (10.243.1.1)  27.015 ms  27.009 ms  27.003 ms
   3  10.250.0.2 (10.250.0.2)  26.997 ms  29.609 ms  26.978 ms
   4  10.252.5.1 (10.252.5.1)  26.972 ms  26.966 ms  26.988 ms
   5  188.130.155.1 (188.130.155.1)  27.176 ms  27.339 ms  30.739 ms
   6  1.123.18.84.in-addr.arpa (84.18.123.1)  44.670 ms  13.426 ms  24.060 ms
   7  188.170.164.138 (188.170.164.138)  9.950 ms  11.990 ms  13.369 ms
   8  * * *
   9  * * *
   10  83.169.204.176 (83.169.204.176)  26.105 ms 83.169.204.166 (83.169.204.166)  27.025 ms  26.040 ms
   11  172.253.66.116 (172.253.66.116)  41.372 ms 142.250.238.214 (142.250.238.214)  47.385 ms  43.270 ms
   12  72.14.235.69 (72.14.235.69)  43.255 ms 172.253.66.108 (172.253.66.108)  43.663 ms 209.85.254.6 (209.85.254.6)  43.594 ms
   13  172.253.51.239 (172.253.51.239)  53.970 ms 142.250.56.125 (142.250.56.125)  43.571 ms 142.250.56.219 (142.250.56.219)  53.608 ms
   14  * * *
   15  * * *
   16  * * *
   17  * * *
   18  * * *
   19  * * *
   20  * * *
   21  * * *
   22  * * *
   23  any-in-2678.1e100.net (216.239.38.120)  61.853 ms  62.198 ms  63.428 ms
   ```

   This command will show the path and the number of network hops taken to reach the specified website or IP address, as well as the time taken to reach each hop. 

2. Command `dig www.google.com `

   Output:

   ```
   ; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> www.google.com
   ;; global options: +cmd
   ;; Got answer:
   ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 6629
   ;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 2

   ;; OPT PSEUDOSECTION:
   ; EDNS: version: 0, flags:; udp: 65494
   ;; QUESTION SECTION:
   ;www.google.com.			IN	A

   ;; ANSWER SECTION:
   www.google.com.		5796	IN	CNAME	forcesafesearch.google.com.
   forcesafesearch.google.com. 3476 IN	A	216.239.38.120

   ;; ADDITIONAL SECTION:
   forcesafesearch.google.com. 5796 IN	AAAA	2001:4860:4802:32::78

   ;; Query time: 0 msec
   ;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
   ;; WHEN: Wed Jul 19 19:50:46 MSK 2023
   ;; MSG SIZE  rcvd: 117
   ```

   This command will display detailed information about the DNS records associated with the specified domain name.


   
