1. Start by installing Traceroute using the following command: ``` 
sudo apt-get install traceroute ```

2. Check your installed version: `traceroute --version`
    ```ruby
    Modern traceroute for Linux, version 2.1.0
    Copyright (c) 2016  Dmitry Butskoy,   License: GPL v2 or any later
    ```
3. I used google website to test: `traceroute google.com`
    ```ruby
   traceroute to yandex.com (5.255.255.80), 30 hops max, 60 byte packets
    1  _gateway (10.91.48.1)  3.686 ms  3.649 ms  3.544 ms
    2  1.123.18.84.in-addr.arpa (84.18.123.1)  10.329 ms  25.922 ms  25.911 ms
    3  188.170.164.138 (188.170.164.138)  10.184 ms  10.169 ms  7.925 ms
    4  * * *
    5  * * *
    6  83.169.204.166 (83.169.204.166)  21.804 ms 83.169.204.176 (83.169.204.176)  22.814 ms  25.776 ms
    7  * * *
    8  * * *
    9  * * *
    10  * * *
    11  * * *
    12  * * *
    13  * * *
    14  * * *
    15  * * *
    16  * * *
    17  * * *
    18  * * *
    19  * * *
    20  * * *
    21  * * *
    22  * * *
    23  * * *
    24  * * *
    25  * * *
    26  * * *
    27  * * *
    28  * * *
    29  * * *
    30  * * *
    ```
4. Dig is already installed on linux OS we can use it as follows: `dig google.com`
    ```ruby
    ; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> yandex.com
    ;; global options: +cmd
    ;; Got answer:  
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 63498
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 65494
    ;; QUESTION SECTION:
    ;yandex.com.			IN	A

    ;; ANSWER SECTION:
    yandex.com.		741	IN	A	5.255.255.88
    yandex.com.		741	IN	A	77.88.55.80
    yandex.com.		741	IN	A	5.255.255.80
    yandex.com.		741	IN	A	77.88.55.77

    ;; Query time: 0 msec
    ;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
    ;; WHEN: Wed Oct 04 11:33:32 MSK 2023
    ;; MSG SIZE  rcvd: 103
    
    ```
