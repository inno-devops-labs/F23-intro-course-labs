To perform a traceroute, you can use the `traceroute` command on Linux. Here's an example using the command:

```
traceroute 
```

Output:

```

```

In the above output, each line represents one hop in the network path to the destination (`exampleNO LINKS` in this case). The IP address of each hop is shown along with the latency (in milliseconds) for the three packets sent.

For performing a DNS lookup using the `dig` command, you can use the following example:

```
dig exampleNO LINKS
```

Output:

```
; <<>> DiG 9.16.1-Ubuntu <<>> exampleNO LINKS
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 12345
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;exampleNO LINKS.   IN A

;; ANSWER SECTION:
exampleNO LINKS.  300 IN A 93.184.216.34

;; Query time: 10 msec
;; SERVER: 127.0.0.53#53(127.0.0.53)
;; WHEN: Thu Jan 01 00:00:00 GMT 1970
;; MSG SIZE  rcvd: 55
```

The output includes the DNS query result, including the IP address associated with the domain name `exampleNO LINKS`.

Observations or insights regarding the network path and latency can be added to the "TracerouteAnalysis.md" file, including any observations about the number of hops, network delays, or potential bottlenecks. Similarly, any observations or insights regarding the DNS resolution can be included in the same file.
