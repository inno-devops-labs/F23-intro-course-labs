# Operating systems and Networking

## Networking Analysis:

> CASE: Ubuntu:lastest, HP Portable Computer

### Traceroute:

To trace route on Ubuntu I used the command "traceroute" followed by the website url. On windows I would have used "tracert" command.

```sh
  traceroute www.mentorideal.com
```

#### Output:

1 \* \* _ Request timed out.
2 147 ms 144 ms 144 ms 172.20.21.254
3 145 ms 145 ms 144 ms 172.20.22.3
4 _ \* _ Request timed out.
5 546 ms 704 ms 680 ms 146.70.112.65
6 237 ms 287 ms 569 ms xe-0-0-0-0.agg2.qc1.ca.m247.com [82.102.29.182]
7 151 ms 158 ms 153 ms vlan2920.as18.nyc1.us.m247.com [77.243.185.221]
8 361 ms 211 ms 160 ms motl-b1-link.ip.twelve99.net [213.248.90.212]
9 256 ms 242 ms 180 ms toro-b5-link.ip.twelve99.net [62.115.137.100]
10 160 ms 186 ms 217 ms toro-b2-link.ip.twelve99.net [62.115.117.229]
11 166 ms 171 ms 161 ms imperva-ic-373067.ip.twelve99-cust.net [213.248.93.205]
12 _ \* _ Request timed out.
13 _ \* _ Request timed out.
14 288 ms 346 ms 214 ms 199.193.7.170
15 _ \* _ Request timed out.
16 _ \* \* Request timed out.
17 398 ms 323 ms 337 ms server252-4.web-hosting.com [68.65.123.232]

> Observations: It tool 16 routes to reach to the actual server.

### Dig

To trace route on Ubuntu I used the command "traceroute" followed by the website url. On windows I would have used "tracert" command.

```sh
    nslookup www.mentorideal.com
```

#### Output:

Server: 57.172.252.162.in-addr.arpa
Address: 162.252.172.57

Non-authoritative answer:
Name: mentorideal.com
Address: 68.65.123.232
Aliases: www.mentorideal.com

> Observations: The real server address was returned.
