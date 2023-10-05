# Lab 06:
## Task 2:
### Traceroute:

Traceroute is a tool that allows the user to monitor the package track on the internet from source to destination.

We tried the command to check the route of the package with website of ***Innopolis Univeristy***

```bash
    tracert www.innopolis.university

Tracing route to www.innopolis.university [213.159.212.4]
over a maximum of 30 hops:

  1     2 ms     1 ms     1 ms  10.100.20.2
  2    17 ms    13 ms    14 ms  1.123.18.84.in-addr.arpa [84.18.123.1]
  3    13 ms    13 ms    14 ms  ae11-498.rt.itp.kzn.ru.retn.net [87.245.231.208]
  4    67 ms    84 ms    64 ms  ae2-6.rt.ok.msk.retn.ru [139.45.243.3]
  5    70 ms    58 ms    57 ms  139.45.226.3
  6     *        *        *     Request timed out.
  7     *        *        *     Request timed out.
  8    54 ms    55 ms    53 ms  213.159.212.4

Trace complete.
```
### DIG / NSLOOKUP:
This command has more to do with inquiring about the DNS of a specific domain or IP.  
This tools doesn't come with windows, rathehr it has to be isntalled from aw third-party website. For convenient, we decided to use another tool that comes with windows, `nslookup`
```bash
    nslookup innopolis.university
Server:  UnKnown
Address:  10.90.137.30

Non-authoritative answer:
Name:    innopolis.university
Address:  213.159.212.4

```