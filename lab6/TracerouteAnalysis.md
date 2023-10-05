## Traceroute
Command:

    traceroute youtube.com

Output:

    traceroute to youtube.com (142.250.74.78), 30 hops max, 60 byte packets
    1  LAPTOP-SC43OLUL.mshome.net (172.29.96.1)  1.177 ms  1.113 ms  1.097 ms
    2  10.91.48.1 (10.91.48.1)  5.641 ms  5.627 ms  5.184 ms
    3  1.123.18.84.in-addr.arpa (84.18.123.1)  16.258 ms  14.176 ms  16.235 ms
    4  188.170.164.138 (188.170.164.138)  12.566 ms  15.619 ms  12.543 ms
    5  * * *
    6  * * *
    7  83.169.204.166 (83.169.204.166)  95.892 ms  94.596 ms 83.169.204.176 (83.169.204.176)  332.896 ms
    8  108.170.227.90 (108.170.227.90)  332.871 ms 108.170.250.129 (108.170.250.129)  27.688 ms 172.253.69.92 (172.253.69.92)  27.152 ms
    9  108.170.250.99 (108.170.250.99)  31.213 ms 108.170.250.146 (108.170.250.146)  27.640 ms 108.170.250.130 (108.170.250.130)  27.082 ms
    10  142.251.79.148 (142.251.79.148)  51.778 ms 209.85.255.116 (209.85.255.116)  58.015 ms 142.250.238.12 (142.250.238.12)  56.267 ms
    11  209.85.241.33 (209.85.241.33)  51.751 ms  51.742 ms  51.734 ms
    12  108.170.253.161 (108.170.253.161)  49.199 ms  49.191 ms 108.170.253.177 (108.170.253.177)  49.183 ms
    13  142.251.65.81 (142.251.65.81)  251.961 ms  251.937 ms 142.251.65.83 (142.251.65.83)  101.846 ms
    14  arn09s23-in-f14.1e100.net (142.250.74.78)  101.802 ms  101.745 ms  101.732 ms

The router at 5 and 6 hop did not respond to the packet used in traceroute 

## Dig
Command:

    dig yandex.ru

Output:

    ; <<>> DiG 9.16.1-Ubuntu <<>> yandex.ru
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 14233
    ;; flags: qr rd ad; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0
    ;; WARNING: recursion requested but not available

    ;; QUESTION SECTION:
    ;yandex.ru.                     IN      A

    ;; ANSWER SECTION:
    yandex.ru.              0       IN      A       213.180.193.56

    ;; Query time: 109 msec
    ;; SERVER: 172.29.96.1#53(172.29.96.1)
    ;; WHEN: Thu Oct 05 18:24:24 MSK 2023
    ;; MSG SIZE  rcvd: 52

The DNS resolution for "yandex.ru" was successful and the IPv4 address associated with the domain is 213.180.193.56. The query requested recursive resolution, and the response was DNSSEC authenticated, ensuring the integrity of the DNS data.