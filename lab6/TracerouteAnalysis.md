1. Start by installing Traceroute using the following command: ``` 
sudo apt-get install traceroute ```

2. Check your installed version: `traceroute --version`
    ```ruby
    Modern traceroute for Linux, version 2.1.0
    Copyright (c) 2016  Dmitry Butskoy,   License: GPL v2 or any later
    ```

3. I used google website to test: `traceroute google.com`
    ```ruby
    traceroute to google.com (216.239.38.120), 30 hops max, 60 byte packets
    1  10.100.20.2 (10.100.20.2)  123.388 ms  123.336 ms  123.320 ms
    2  1.123.18.84.in-addr.arpa (84.18.123.1)  123.301 ms  124.090 ms  124.074 ms
    3  188.170.164.138 (188.170.164.138)  123.257 ms  123.241 ms  123.227 ms
    4  * * *
    5  * * *
    6  83.169.204.166 (83.169.204.166)  203.675 ms 83.169.204.176 (83.169.204.176)  143.651 ms 83.169.204.166 (83.169.204.166)  143.521 ms
    7  142.251.238.82 (142.251.238.82)  160.443 ms  160.426 ms 142.250.239.64 (142.250.239.64)  160.406 ms
    8  142.250.235.74 (142.250.235.74)  160.388 ms 209.85.254.6 (209.85.254.6)  160.473 ms 216.239.57.222 (216.239.57.222)  114.666 ms
    9  172.253.51.241 (172.253.51.241)  114.609 ms 142.250.56.131 (142.250.56.131)  114.592 ms 172.253.51.219 (172.253.51.219)  114.500 ms
    10  * * *
    11  * * *
    12  * * *
    13  * * *
    14  * * *
    15  * * *
    16  * * *
    17  * * *
    18  * * *
    19  any-in-2678.1e100.net (216.239.38.120)  37.726 ms  34.509 ms *
    ```


4. Dig is already installed on linux OS we can use it as follows: `dig google.com`
    ```ruby
    ; <<>> DiG 9.18.12-0ubuntu0.22.04.3-Ubuntu <<>> google.com
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 53205
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 65494
    ;; QUESTION SECTION:
    ;google.com.                    IN      A

    ;; ANSWER SECTION:
    google.com.             7030    IN      CNAME   forcesafesearch.google.com.
    forcesafesearch.google.com. 7030 IN     A       216.239.38.120

    ;; Query time: 3 msec
    ;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
    ;; WHEN: Wed Sep 27 18:31:52 MSK 2023
    ;; MSG SIZE  rcvd: 85
    ```