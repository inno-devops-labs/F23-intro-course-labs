# Operating Systems & Networking Lab

## Task 2: Networking Analysis

1. Traceroute:
   - I used "tracert www.google.com" command in cmd. First row gave me results and the rest were with "*" and timeouts. I read that some network administrators may block or restrict ICMP packets, which can affect the output of the tracert command.

2. Dig:
   - I used "nslookup www.google.com" command in cmd. It showed me: "Server:  dns.opendns.com; Address:  208.67.222.222". Also it added "Non-authoritative answer:". I googled it and got new insight that a non-authoritative answer means that the DNS server that provided the response is not the ultimate source of information for the queried domain.

