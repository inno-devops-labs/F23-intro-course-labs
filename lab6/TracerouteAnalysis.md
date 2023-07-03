## Traceroute Analysis

### Traceroute
- Command: `tracert dzen.ru`
- Output:  
```angular2html
Tracing route to dzen.ru [62.217.160.2]
over a maximum of 30 hops:

  1     9 ms     3 ms     2 ms  10.91.48.1
  2    13 ms    11 ms    12 ms  1.123.18.84.in-addr.arpa [84.18.123.1]
  3    15 ms     9 ms     9 ms  188.170.164.138
  4     *        *        *     Request timed out.
  5     *        *        *     Request timed out.
  6     *        *        *     Request timed out.
  7    24 ms    21 ms    21 ms  83.169.204.117
  8     *        *        *     Request timed out.
  9    20 ms    20 ms    20 ms  www.dzen.ru [62.217.160.2]

Trace complete.
```
### Dig
- Command: `nslookup dzen.ru`
- Output: 
```angular2html
Server:  UnKnown
Address:  10.90.137.30

Non-authoritative answer:
Name:    dzen.ru
Address:  62.217.160.2
```