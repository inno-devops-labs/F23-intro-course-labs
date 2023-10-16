## Lab 6 Task 2 - Networking analysis

1. **Traceroute** allow us to trace path of our request starting from home router to the server destination. For example, I used `traceroute github.com` and received the responce as stated below. First ip was my own router `192.168.1.1`. Then it showed few addresses in Saint-Petersburg `5.19.0.xxx` (the server I tested on is indeed in Saint-Petersburg). Than it went to Germany, Sweden and finally landed in USA.

=====================start of responce======================================
      traceroute to github.com (140.82.121.4), 30 hops max, 60 byte packets
      1  _gateway (192.168.1.1)  0.309 ms  0.369 ms  0.428 ms
      2  5x19x0x102.static-business.spb.ertelecom.ru (5.19.0.102)  2.565 ms 5x19x0x98.static-business.spb.ertelecom.ru (5.19.0.98)  2.594 ms 5x19x0x102.static-business.spb.ertelecom.ru (5.19.0.102)  2.632 ms
      3  5x19x0x189.static-business.spb.ertelecom.ru (5.19.0.189)  2.473 ms  2.471 ms  2.520 ms
      4  ertelekom-ic-381104.ip.twelve99-cust.net (213.248.97.53)  4.529 ms  3.161 ms  4.748 ms
      5  sap-b5-link.ip.twelve99.net (213.248.97.52)  2.701 ms  3.048 ms  2.984 ms
      6  s-bb2-link.ip.twelve99.net (80.91.250.99)  13.704 ms  12.509 ms  12.046 ms
      7  * ffm-bb2-link.ip.twelve99.net (62.115.138.105)  33.731 ms  33.631 ms
      8  * * *
      9  github-ic-350972.ip.twelve99-cust.net (62.115.182.171)  31.968 ms  31.973 ms  31.758 ms
      10  * * github-ic-350972.ip.twelve99-cust.net (62.115.182.171)  31.691 ms
=====================end of responce======================================

2. For **DNS lookup** I used `nslookup` utility. After inserting the `nslookup github.com` command, I received the output as stated below. I noted that it firstly states my local host 127.0.0.53 which is my DNS system server. Than there is a note that the answer is non-authoritative indicating that out DNS server may not include the complete information for the address. However usually that doesn't mean much and the answer should be reliable. Finally there is the destination address 140.82.121.3 which corresponds with an address we received in the previous sub-task. Note that this address in Australia and we were traced to the USA. It seems that we've got redirected to the nearest distribution server in USA.

=====================start of responce======================================
Server:         127.0.0.53
Address:        127.0.0.53#53                                                                                                        
Non-authoritative answer:
Name:   github.com
Address: 140.82.121.3
=====================end of responce======================================
