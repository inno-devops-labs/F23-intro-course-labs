## Task 2

### Traceroute

For performing the traceroute in Windows we need to write the command `tracert [ip/web address]` in command prompt.
I chose the [yandex.com](yandex.com) web address. The output is the following:

```
>tracert yandex.com
Tracing a route to yandex.com [5.255.255.80]
with the maximum number of jumps 30:

  1     1 ms     1 ms     1 ms  ARCHER_C5 [192.168.0.1]
  2     2 ms     2 ms     2 ms  94x180x131x253.dynamic.kzn.ertelecom.ru [94.180.131.253]
  3     3 ms     2 ms     2 ms  lag-8-438.bbr01.samara.ertelecom.ru [109.194.184.30]
  4    22 ms    20 ms    22 ms  ertelecom.w-ix.ru [193.106.112.151]
  5    22 ms    24 ms    23 ms  net131.234.188-243.ertelecom.ru [188.234.131.243]
  6    29 ms    34 ms    39 ms  vla-32z3-ae3.yndx.net [93.158.160.155]
  7     *       30 ms    25 ms  10.4.3.1
  8    25 ms    24 ms    24 ms  yandex.ru [5.255.255.80]

Tracing completed.
```

**Observations:** We can notice that the 7th line contains asterisk (*). 
This means that the request timed out on just one of the three attempts. 
This can be a sign that there is an intermittent problem at that hop.

Also we see that on other hops the amount of time in all attempts is almost similar, which means that everything is running properly.

### Dig

For performing the DNS lookup in Windows we need use the command `nslookup [domain name/ip address]`. 
I chose the [yandex.com](yandex.com) web address. The output is the following:

```
>nslookup yandex.com
Server:  UnKnown
Address:  192.168.0.1

Non-authoritative answer:
Name:     yandex.com
Addresses:  2a02:6b8:a::a
          77.88.55.80
          5.255.255.80
          5.255.255.88
          77.88.55.77
```

**Observations:** We see that we got `non-authoritative answer`. 
It means that the answer for my DNS query is coming for a non-authoritative source.
It’s because the answer is not coming directly from the name server of the server I am querying, but 
it comes from my internet service provider’s name server.

**Note:**

For this task I could aslo use the alternative of the `dig` command in Linux, but for Windows.
This command should be run in PowerShell:

```
>Resolve-DnsName -Name yandex.com -Type any
Name                                     Type   TTL   Section    NameExchange                              Preference
----                                     ----   ---   -------    ------------                              ----------
yandex.com                               MX     1200  Answer     mx.yandex.ru                              10

Name      : yandex.com
QueryType : TXT
TTL       : 1200
Section   : Answer
Strings   : {_globalsign-domain-verification=zJjMlP1B6Q7ytzSIa3SU664oS9Q2g9rx7BXcFhbVxD}

...

Name                   : yandex.com
QueryType              : SOA
TTL                    : 3600
Section                : Answer
NameAdministrator      : sysadmin.yandex.ru
SerialNumber           : 2023041745
TimeToZoneRefresh      : 3600
TimeToZoneFailureRetry : 900
TimeToExpiration       : 2592000
DefaultTTL             : 900

``` 

This is just a part of the output, because it is too big, However, we can notice that it returns more domain info than nslookup.
Also I could use `dig` on Windows by installing BIND.