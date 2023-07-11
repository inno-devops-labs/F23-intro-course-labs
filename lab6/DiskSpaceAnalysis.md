## Task 1: Operating System Analysis

####1. Analyze Disk Space:

I used `df -h` command to get information about my disk space on MacOS:

>**`df -h`**
```
Filesystem       Size   Used  Avail Capacity iused      ifree %iused  Mounted on
/dev/disk3s1s1  460Gi  8.4Gi  218Gi     4%  355382 2286318360    0%   /
devfs           199Ki  199Ki    0Bi   100%     690          0  100%   /dev
/dev/disk3s6    460Gi   20Ki  218Gi     1%       0 2286318360    0%   /System/Volumes/VM
/dev/disk3s2    460Gi  4.4Gi  218Gi     2%     811 2286318360    0%   /System/Volumes/Preboot
/dev/disk3s4    460Gi   26Mi  218Gi     1%      52 2286318360    0%   /System/Volumes/Update
/de
v/disk1s2    500Mi  6.0Mi  483Mi     2%       3    4942560    0%   /System/Volumes/xarts
/dev/disk1s1    500Mi  6.2Mi  483Mi     2%      29    4942560    0%   /System/Volumes/iSCPreboot
/dev/disk1s3    500Mi  396Ki  483Mi     1%      34    4942560    0%   /System/Volumes/Hardware
**/dev/disk3s5    460Gi  229Gi  218Gi    52% 5202550 2286318360    0%   /System/Volumes/Data**
map auto_home     0Bi    0Bi    0Bi   100%       0          0  100%   /System/Volumes/Data/home
```
In general, I have approximately 48% of free disk space.

####2. Inodes Analysis:

I used `df -i` command to get the number of inodes on MacOS:

>**`df -i`**
```
Filesystem     512-blocks      Used Available Capacity iused      ifree %iused  Mounted on
/dev/disk3s1s1  965595304  17698352 457258232     4%  355382 2286291160    0%   /
devfs                 398       398         0   100%     690          0  100%   /dev
/dev/disk3s6    965595304        40 457258232     1%       0 2286291160    0%   /System/Volumes/VM
/dev/disk3s2    965595304   9234576 457258232     2%     811 2286291160    0%   /System/Volumes/Preboot
/dev/disk3s4    965595304     54184 457258232     1%      52 2286291160    0%   /System/Volumes/Update
/dev/disk1s2      1024000     12328    988512     2%       3    4942560    0%   /System/Volumes/xarts
/dev/disk1s1      1024000     12648    988512     2%      29    4942560    0%   /System/Volumes/iSCPreboot
/dev/disk1s3      1024000       792    988512     1%      34    4942560    0%   /System/Volumes/Hardware
/dev/disk3s5    965595304 479479608 457258232    52% 5203011 2286291160    0%   /System/Volumes/Data
map auto_home           0         0         0   100%       0          0  100%   /System/Volumes/Data/home
```

####3. Resource Consumption Analysis:

To get total usage of CPU and RAM on Mac, we can use the following command:

>**`ps -A -o %cpu,%mem | awk '{ cpu += $1; mem += $2} END {print "CPU: "cpu"% MEM: "mem"%"}'`**

Result: `CPU: 21.1% MEM: 95.5%`

To the processes consuming the most RAM and CPU, we can use `top`:

>**`top`**

```
Processes: 633 total, 4 running, 629 sleeping, 2904 threads                                                                       11:20:22
Load Avg: 1.09, 1.19, 1.26  CPU usage: 9.32% user, 4.84% sys, 85.83% idle  SharedLibs: 646M resident, 114M data, 62M linkedit.
MemRegions: 333340 total, 5614M resident, 285M private, 2127M shared. PhysMem: 15G used (1826M wired, 3398M compressor), 131M unused.
VM: 265T vsize, 4283M framework vsize, 0(0) swapins, 0(0) swapouts. Networks: packets: 9770384/11G in, 2700100/562M out.
Disks: 6647681/75G read, 1869835/24G written.

PID   COMMAND      %CPU TIME     #TH   #WQ  #PORT MEM    PURG  CMPRS  PGRP PPID STATE    BOOSTS            %CPU_ME %CPU_OTHRS UID  FAULTS
481   stable       37.3 02:19.00 38/1  3    330   299M+  0B    201M   481  1    running  *0[1046]          0.16612 0.13795    501  1655682+
176   WindowServer 33.1 03:35:11 20    5    3031  958M-  122M+ 160M   176  1    sleeping *0[1]             0.18776 0.32599    88   8353148+
0     kernel_task  11.4 01:53:14 485/8 0    0     14M    0B    0B     0    0    running   0[0]             0.00000 0.00000    0    16895
239   coreaudiod   8.1  64:58.49 9/1   2    586   30M    0B    11M    239  1    running  *0[1]             0.00000 0.02051    202  203810
951   Yandex Music 6.4  50:35.52 21    1    697   162M   0B    55M    498  498  sleeping *0[1]             0.00000 0.00000    501  385114
8661  top          5.6  00:00.90 1/1   0    27    6913K  0B    0B     8661 7208 running  *0[1]             0.00000 0.00000    0    7670+
6060  Code Helper  1.6  00:38.91 14    6    174   104M   1600K 20M    6057 6057 sleeping *1[5]             0.00000 0.00000    501  34490
2647  Google Chrom 1.1  04:43.22 21    2    175   122M   0B    37M    2638 2638 sleeping *1[5]             0.00000 0.00000    501  29687
1174  Notion Helpe 1.0  05:00.62 18    2    170   185M   0B    50M    509  509  sleeping *1[3]             0.00000 0.00000    501  41866
893   Yandex Music 0.9  05:35.31 11    2    197   93M    0B    33M    498  498  sleeping *1[5]             0.00000 0.00000    501  61822
1188  com.apple.We 0.8  23:50.34 12    5    234   201M   912K  52M    1188 1    sleeping *0[56267]         0.00000 0.00000    501  1646328+
496   Telegram     0.8  39:49.95 26    3    1581  684M+  0B    485M   496  1    sleeping *0[28093]         0.00145 0.00000    501  5946804+
4600  com.apple.We 0.7  13:26.24 10    1    155   739M   0B    505M   4600 1    sleeping *0[259853+]       0.00000 0.00000    501  611109+
1148  Yandex Music 0.7  02:58.09 8     1    173   13M    0B    9152K  498  498  sleeping *0[5]             0.00000 0.00000    501  26898
498   Yandex Music 0.6  04:15.26 32    4    445   84M    416K  33M    498  1    sleeping *65[1329]         0.00000 0.00000    501  104036
7044  com.apple.We 0.4  00:21.69 5     2    88    174M+  0B    5152K  7044 1    sleeping  0[38318+]        0.00000 0.00000    501  42108+
3217  DeepL        0.3  03:45.98 35    4    513   70M    128K  27M    3217 1    sleeping *0[1276]          0.00000 0.00000    501  51107
2315  Rectangle    0.2  00:13.06 3     1    378   21M    0B    11M    2315 1    sleeping *0[2000]          0.07865 0.10223    501  45119+
305   com.apple.Ap 0.2  02:49.29 4     3    214   4065K  0B    2064K  305  1    sleeping  0[1]             0.00000 0.00000    270  56950
```
It is notable that most processes are in sleeping state.