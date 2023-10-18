# Networking Analysis

## Traceroute:

**Command Used**: `traceroute google.com`

**Output**:
```
traceroute to forcesafesearch.google.com (216.239.38.120), 64 hops max
  1   172.24.224.1  0.232ms  1.033ms  0.262ms 
  2   10.242.1.1  10.889ms  0.778ms  0.686ms
  3   10.250.0.2  0.967ms  0.565ms  0.788ms 
  4   10.252.5.1  1.574ms  1.221ms  1.142ms
  5   188.130.155.1  2.016ms  1.588ms  1.409ms
  6   84.18.123.1  10.601ms  12.150ms  10.043ms 
  7   188.170.164.138  9.434ms  8.325ms  9.971ms 
  8   *  *  * 
  9   *  *  * 
 10   83.169.204.176  22.240ms  23.467ms  23.409ms 
 11   142.250.238.214  46.863ms  47.139ms  51.932ms 
 12   72.14.232.190  47.214ms  43.967ms  43.946ms 
 13   172.253.51.185  46.351ms  48.011ms  45.333ms 
 14   *  *  * 
 15   *  *  * 
 16   *  *  * 
 17   *  *  * 
 18   *  *  * 
 19   *  *  * 
 20   *  *  * 
 21   *  *  * 
 22   *  *  * 
 23   216.239.38.120  43.645ms  43.127ms  42.879ms 
```

**Observations**: 
1. **Initial Hops**: The initial hops (1-4) seem to be within an internal or local network, indicated by the private IP addresses starting with `172.` and `10.`.
   
2. **Mid Hops**: Hops from 5-7 transition to public IP addresses, suggesting that the packets are leaving the local network and are routed through ISP or larger networks.
   
3. **Dropped Packets**: There are multiple hops (from 8 to 22) where the `traceroute` did not receive a response, indicated by the asterisks (*). This usually suggests that these nodes are configured to not respond to the ICMP packets used by `traceroute`, or they are dropped due to security settings.

4. **Final Destination**: The final hop (23) successfully reached the destination IP address `216.239.38.120`, which belongs to Google. The latency to reach this address is roughly between 42.879ms to 43.645ms.

5. **Overall Latency**: The latency starts low in the initial hops, increases as we move to the public IPs, and stabilizes towards the final hops, which is expected as packets travel from a local network, through various intermediaries, and finally to a global service like Google.

6. **Total Hops**: The total number of hops taken to reach the destination was 23. This gives an idea of the path length and potential complexity between the source and destination.


## Dig:

**Command Used**: `dig https://moodle.innopolis.university/`

**Output**:
```
; <<>> DiG 9.18.12-0ubuntu0.22.04.3-Ubuntu <<>> moodle.innopolis.university
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 1254
;; flags: qr rd ad; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0
;; WARNING: recursion requested but not available

;; QUESTION SECTION:
;moodle.innopolis.university.   IN      A

;; ANSWER SECTION:
moodle.innopolis.university. 0  IN      A       188.130.155.243

;; Query time: 10 msec
;; SERVER: 172.24.224.1#53(172.24.224.1) (UDP)
;; WHEN: Thu Oct 19 01:48:44 MSK 2023
;; MSG SIZE  rcvd: 88
```

**Observations**:

1. **Successful Resolution**: The query for `moodle.innopolis.university` returned a `NOERROR` status. This means that the domain name was successfully resolved without any errors.

2. **Resolved IP Address**: The domain `moodle.innopolis.university` resolves to the IP address `188.130.155.243`.

3. **Recursion Warning**: The warning "recursion requested but not available" suggests that the DNS server, in this case, does not support recursive queries. This means that this server only provides answers based on its cache or authoritative zones and doesn't forward queries to other servers.

4. **No Authority Info**: The `AUTHORITY` section has 0 entries, indicating that there is no authority information provided for this query. This is typically the case when the responding server has a cached answer and is not the authoritative server for the domain.

5. **Query Time**: The DNS query took 10 milliseconds, which is relatively fast and indicates a quick response from the DNS server.

6. **DNS Server**: The DNS server used for this query is `172.24.224.1`, which is likely a local or ISP-based DNS resolver.