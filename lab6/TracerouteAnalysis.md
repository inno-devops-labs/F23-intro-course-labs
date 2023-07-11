# Introduction to DevOps Lab6
**Leonid Zelenskiy** <br>
**B21-CS-01** <br>
*l.zelenskiy@innopolis.university*

## Traceroute:

**Command:** `traceroute cocktail.chickenkiller.com` <br>
**Output:** <br>
traceroute to cocktail.chickenkiller.com (104.248.128.110), 30 hops max, 60 byte packets<br>
|1. | XiaoQiang (192.168.31.1)|  1.544 ms | 1.596 ms | 1.583 ms|
|---|-------------------------|-----------|----------|---------|
|2.  |10.241.1.1 (10.241.1.1) | 2.125 ms | 2.772 ms | 3.151 ms|
|3. | 10.250.0.2 (10.250.0.2) | 4.481 ms | 4.468 ms | 4.456 ms|
|4. | 10.252.5.1 (10.252.5.1) | 6.853 ms | 11.488 ms | 6.827 ms|
|5. | 188.130.155.1 (188.130.155.1) | 12.074 ms | 16.650 ms | 13.100 ms|
|6. | 1.123.18.84.in-addr.arpa (84.18.123.1) | 49.832 ms | 10.877 ms | 20.179 ms|
|7. | 188.170.164.138 (188.170.164.138) | 20.475 ms | 9.313 ms | 9.592 ms|
|8. | *| *| *|
|9.  |*| *| *|
|10. | *| *| *|
|11. | 83.169.204.124 (83.169.204.124) | 52.253 ms | 52.020 ms | 52.938 ms|
|12. | fra2-edge1.digitalocean.com (80.81.195.151) | 53.410 ms | fra1-edge1.digitalocean.com (80.81.193.141) | 53.394 ms | fra2-edge1.digitalocean.com (80.81.195.151) | 54.105 ms|
|13. | 138.197.250.142 (138.197.250.142) | 59.475 ms| 138.197.250.152 (138.197.250.152) | 54.949 ms| *|
|14. | *| *| *|
|15. | *| *| *|
|16. | *| *| *|
|17. | *| *| *|
|18. | *| *| *|
|19. | *| *| *|
|20. | *| *| *|
|21. | *| *| *|
|22. | *| *| *|
|23. | *| *| *|
|24. | *| *| *|
|25. | *| *| *|
|26. | *| *| *|
|27. | *| *| *|
|28. | *| *| *|
|29. | *| *| *|
|30. | *| *| *|


## Dig:
**Command:** `dig cocktail.chickenkiller.com` <br>
**Output:** <br>
```
; <<>> DiG 9.18.12-0ubuntu0.22.04.2-Ubuntu <<>> cocktail.chickenkiller.com<br>
;; global options: +cmd<br>
;; Got answer:<br>
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 65324<br>
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1<br>



;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;cocktail.chickenkiller.com.	IN	A

;; ANSWER SECTION:
cocktail.chickenkiller.com. 300	IN	A	104.248.128.110

;; Query time: 315 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Tue Jul 11 20:00:32 MSK 2023
;; MSG SIZE  rcvd: 71

```