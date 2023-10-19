# Traceroute
  * run command:
    > traceroute google.com
  * output:
    > 1  10.101.10.1 (10.101.10.1)  66.893 ms  4.615 ms  3.053 ms  
 2  172.17.6.1 (172.17.6.1)  38.909 ms  8.645 ms  8.559 ms  
 3  10.64.0.1 (10.64.0.1)  56.185 ms  8.897 ms  7.396 ms  
 4  172.27.0.134 (172.27.0.134)  38.509 ms  8.985 ms  8.562 ms  
 5  * * *  
 6  * * *  
 7  * * *  
 8  128.alien.westcall.net (84.52.75.128)  68.095 ms  123.888 ms  38.951 ms  
 9  84-52-79-114.westcall.net (84.52.79.114)  70.138 ms  17.562 ms *  
10  74.125.244.180 (74.125.244.180)  82.157 ms  15.609 ms  
    74.125.244.181 (74.125.244.181)  45.532 ms  
11  142.251.51.187 (142.251.51.187)  52.461 ms  33.855 ms  
    142.251.61.221 (142.251.61.221)  77.387 ms  
12  142.250.235.63 (142.250.235.63)  50.549 ms  
    142.251.237.145 (142.251.237.145)  49.669 ms  
    172.253.66.109 (172.253.66.109)  49.777 ms  
13  66.249.94.110 (66.249.94.110)  50.703 ms  
    142.251.238.64 (142.251.238.64)  54.610 ms  
    142.250.63.8 (142.250.63.8)  51.606 ms  
14  142.250.37.65 (142.250.37.65)  52.920 ms  22.052 ms  29.148 ms  
15  108.170.238.171 (108.170.238.171)  52.356 ms  21.489 ms  
    142.251.235.111 (142.251.235.111)  56.546 ms  
16  mad01s24-in-f238.1e100.net (216.58.211.238)  50.367 ms  19.770 ms  49.576 ms  
  * observations:
  > The trace for just [google.com](https://www.google.com/) have lots of transitional IP-adresses, but the whole request itself, completes in just few seconds.
# DNS lookup
  * run command:
  > nslookup google.com
  * output:
    > Server:		10.64.244.52  
Address:	10.64.244.52#53  
Non-authoritative answer:  
Name:	google.com  
Address: 108.177.14.113  
Name:	google.com  
Address: 108.177.14.102  
Name:	google.com  
Address: 108.177.14.138  
Name:	google.com  
Address: 108.177.14.139  
Name:	google.com  
Address: 108.177.14.101  
Name:	google.com  
Address: 108.177.14.100  
