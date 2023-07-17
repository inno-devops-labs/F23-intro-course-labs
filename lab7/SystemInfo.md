Task 1: VM Deployment
Version of virtualbox - 6.1.16

Screenshot:
![Alt text](image.png)

Task 2: System Information Iools

2.1 Processor, RAM and Network information

Command-line tools:
"lscpu" - for processor information
"free -h" - for RAM information
"ip addr show" - for Network information 

Output:

Processor information using lscpu

Architecture:        x86_64
CPU op-mode(s):      32-bit, 64-bit
Byte Order:          Little Endian
CPU(s):              4
On-line CPU(s) list: 0-3
Thread(s) per core:  2
Core(s) per socket:  2
Socket(s):           1
Vendor ID:           GenuineIntel
CPU family:          6
Model:               158
Model name:          Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz
Stepping:            10
CPU MHz:             800.000
CPU max MHz:         3400.0000
CPU min MHz:         400.0000
BogoMIPS:            3600.00
Virtualization:      VT-x
L1d cache:           128 KiB
L1i cache:           128 KiB
L2 cache:            1 MiB
L3 cache:            6 MiB

RAM information using free -h

total        used        free      shared  buff/cache   available
Mem:          7.7Gi       1.3Gi       5.7Gi       512Mi       824Mi       5.6Gi
Swap:         2.0Gi          0B       2.0Gi

Network information using ip addr show

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 00:0c:29:ed:be:0b brd ff:ff:ff:ff:ff:ff
    inet 192.168.0.100/24 brd 192.168.0.255 scope global dynamic noprefixroute ens33
       valid_lft 86278sec preferred_lft 86278sec
    inet6 fe80::faad:e00f:8c4c:e87c/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

2.2 Operating System Specification

Command-line tool - "lsb_release -a"

Output:

No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 20.04.6 LTS
Release:        20.04
Codename:       focal
