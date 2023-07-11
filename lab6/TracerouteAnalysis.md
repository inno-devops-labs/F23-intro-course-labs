## Task 2: Networking Analysis

####1. Traceroute:

>**`traceroute lenta.ru`**
```
traceroute to lenta.ru (81.19.72.33), 30 hops max, 60 byte packets 
1 WIN-7AEJUR7JPT1.mshome.net (172.23.64.1) 0.494 ms 0.474 ms 0.469 ms 
2 10.91.64.1 (10.91.64.1) 3.382 ms 8.156 ms 3.359 ms 
3 1.123.18.84.in-addr.arpa (84.18.123.1) 11.866 ms 11.863 ms 49.748 ms 
4 188.254.80.81 (188.254.80.81) 11.883 ms 11.074 ms 11.877 ms 
5 87.226.183.89 (87.226.183.89) 25.204 ms 33.566 ms 87.226.181.89 (87.226.181.89) 34.084 ms 
6 213.24.124.98 (213.24.124.98) 21.922 ms 21.088 ms 26.270 ms 
7 * * *  
```

When data is reveived and no communication between hops is going on, then traceroute just shows * * * .

####2. Dig:

>**`dig wikipedia.org`**
```
; <<>> DiG 9.16.1-Ubuntu <<>> lenta.ru   
;; global options: +cmd   
;; Got answer:   
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 20271  
;; flags: qr rd ad; QUERY: 1, ANSWER: 3, AUTHORITY: 0, ADDITIONAL: 0  ;; WARNING: recursion requested but not available     
;; QUESTION SECTION:   ;lenta.ru. IN A      
;; ANSWER SECTION:   lenta.ru. 0 IN A 81.19.72.34  lenta.ru. 0 IN A 81.19.72.33  lenta.ru. 0 IN A 81.19.72.32     
;; Query time: 10 msec   
;; SERVER: 172.23.64.1#53(172.23.64.1)   
;; WHEN: Tue Jul 11 12:08:38 MSK 2023   
;; MSG SIZE rcvd: 82   
```
This command facilitates a variety of DNS queries, such as obtaining information about an IP address that is associated with a domain name.