I have Mac OS.

1. Analyse disk space


Command: `df -h`

Output: 
```
Filesystem       Size   Used  Avail Capacity iused     ifree %iused  Mounted on
/dev/disk1s5s1  466Gi   21Gi   63Gi    25%  502162 658897440    0%   /
devfs           339Ki  339Ki    0Bi   100%    1172         0  100%   /dev
/dev/disk1s4    466Gi  4.9Gi   63Gi     8%       5 658897440    0%   /System/Volumes/VM
/dev/disk1s2    466Gi  2.1Gi   63Gi     4%    3935 658897440    0%   /System/Volumes/Preboot
/dev/disk1s6    466Gi  107Mi   63Gi     1%     403 658897440    0%   /System/Volumes/Update
/dev/disk1s1    466Gi  374Gi   63Gi    86% 3276189 658897440    0%   /System/Volumes/Data
map auto_home     0Bi    0Bi    0Bi   100%       0         0  100%   /System/Volumes/Data/home
/dev/disk1s5    466Gi   21Gi   63Gi    25%  502163 658897440    0%   /System/Volumes/Update/mnt1
```
Observation: -h displays the space using human-readable format on each mounted file system. My laptop has 63Gi of free disk space. 

2. Inodes analysis

Command: `df -i`

Output:
```
Filesystem     512-blocks      Used Available Capacity iused     ifree %iused  Mounted on
/dev/disk1s5s1  976490568  43070904 131772304    25%  502162 658861520    0%   /
devfs                 677       677         0   100%    1172         0  100%   /dev
/dev/disk1s4    976490568  10352352 131772304     8%       5 658861520    0%   /System/Volumes/VM
/dev/disk1s2    976490568   4309208 131772304     4%    3935 658861520    0%   /System/Volumes/Preboot
/dev/disk1s6    976490568    220008 131772304     1%     403 658861520    0%   /System/Volumes/Update
/dev/disk1s1    976490568 784260976 131772304    86% 3276196 658861520    0%   /System/Volumes/Data
map auto_home           0         0         0   100%       0         0  100%   /System/Volumes/Data/home
/dev/disk1s5    976490568  43070904 131772304    25%  502163 658861520    0%   /System/Volumes/Update/mnt1

```
3. Resource consumption analysis

Command (sort by CPU usage): `top -o cpu`

Output (processes with the highest CPU usage):

```
Processes: 584 total, 3 running, 581 sleeping, 2780 threads                                                                                                                                               12:40:52
Load Avg: 1.33, 2.00, 1.98  CPU usage: 4.80% user, 8.7% sys, 87.11% idle     SharedLibs: 476M resident, 66M data, 32M linkedit. MemRegions: 628665 total, 3911M resident, 152M private, 1586M shared.
PhysMem: 16G used (2782M wired), 356M unused. VM: 67T vsize, 3153M framework vsize, 800606(0) swapins, 1399586(0) swapouts.   Networks: packets: 11904365/13G in, 4469662/636M out.
Disks: 4279308/62G read, 3297096/46G written.

PID    COMMAND      %CPU  TIME     #TH   #WQ  #PORT MEM    PURG   CMPRS  PGRP  PPID  STATE    BOOSTS            %CPU_ME %CPU_OTHRS UID  FAULTS    COW    MSGSENT    MSGRECV    SYSBSD     SYSMACH    CSW
1710   CleanMyMac X 17.3  02:28:26 17    10   274+  306M+  0B     234M   1710  1     sleeping *0[1]             1.27312 0.00000    501  1183988+  54650+ 19622871+  1576556+   200663723+ 36280814+  31289211+
84906  top          6.2   00:04.90 1/1   0    28    7464K  0B     0B     84906 25205 running  *0[1]             0.00000 0.00000    0    25660+    106    1889587+   944788+    94750+     1126306+   2650+
25203  Terminal     5.7   00:33.75 8     2    390   96M+   16M+   8404K  25203 1     sleeping *0[1984+]         0.30576 0.09437    501  864463+   625    202760+    41852+     283100+    494229+    212423+
0      kernel_task  3.1   85:51.05 228/8 0    0     382M   0B     0B     0     0     running   0[0]             0.00000 0.00000    0    234998    7745   2147483647 2147483647 0          0          582112482+
171    WindowServer 2.6   02:38:05 14    5    1881+ 659M+  12M    79M    171   1     sleeping *0[1]             0.11511 0.11179    88   9296122+  49146  100246694+ 86686469+  233338082+ 336798491+ 96399169+
375    TouchBarServ 2.5   03:56.06 7     3    401+  29M+   0B-    9708K+ 375   1     sleeping *0[1]             0.00000 0.02226    0    70613+    799    1301508+   674854+    7744548+   12738670+  5095553+
134    launchservic 2.0   19:08.04 6     5    559   4560K  0B     612K   134   1     sleeping *0[15100309+]     0.00000 1.19113    0    1645976   141    16638801+  15765999+  57516099+  47645572+  18124446+
2010   com.apple.Vi 1.7   73:13.91 8     1    59    8196M  0B     12G    2010  1     sleeping *6[3]             0.00000 0.00000    501  41510077+ 160    589        195        267672503+ 19640      131190262+
1754   Google Chrom 0.2   57:45.50 45    1    1771  377M   80K    105M   1754  1     sleeping *0[10655+]        0.00000 0.00663    501  14191725+ 73821  37206267+  15392536+  41911837+  95262420+  28611856+
```

Command (sort by RAM usage): `top -o mem`

Output (processes with the highest memory usage):

```
Processes: 583 total, 3 running, 580 sleeping, 2774 threads                                                                                                                                               12:42:42
Load Avg: 1.45, 1.84, 1.91  CPU usage: 6.30% user, 8.28% sys, 85.41% idle   SharedLibs: 476M resident, 66M data, 32M linkedit. MemRegions: 628359 total, 3925M resident, 152M private, 1579M shared.
PhysMem: 16G used (3039M wired), 310M unused. VM: 67T vsize, 3153M framework vsize, 800670(0) swapins, 1399586(0) swapouts. Networks: packets: 11904624/13G in, 4469954/636M out.
Disks: 4304146/63G read, 3298854/46G written.

PID    COMMAND      %CPU  TIME     #TH   #WQ  #PORT MEM    PURG   CMPRS  PGRP  PPID  STATE    BOOSTS             %CPU_ME %CPU_OTHRS UID  FAULTS    COW    MSGSENT    MSGRECV    SYSBSD     SYSMACH    CSW
2010   com.apple.Vi 3.8   73:16.72 8     1    59    8196M  0B     12G    2010  1     sleeping *6[3]              0.00000 0.00000    501  41528796+ 160    589        195        267873172+ 19673      131291051+
1931   Google Chrom 0.0   53:12.31 26    1    496   2045M  5936K  1154M  1754  1754  sleeping *1[5]              0.00000 0.00000    501  9737652   3119   68473599   23582147   21261370   106012942+ 35577960+
2155   Telegram     1.1   77:27.34 32    1    500   978M   0B     579M   2155  1     sleeping *0[16323]          0.00000 0.00000    501  6226537   41939  28396948+  12011685+  11863057+  59144625+  8323190+
66912  Google Chrom 0.0   08:47.26 25    1    710   715M   0B     654M   1754  1754  sleeping *0[7]              0.00000 0.00000    501  2978124   8219   1791697    625223     1889064    4417759    2232344
66871  Google Chrom 0.0   04:30.55 21    1    1811  707M   0B     642M   1754  1754  sleeping *0[7]              0.00000 0.00000    501  2492226   38743  821878     286310     1086128    1918289    1001496
66829  Google Chrom 0.0   01:37.35 22    1    1625  680M   0B     571M   1754  1754  sleeping *0[8]              0.00000 0.00000    501  1650590   5557   225017     93571      479632     522812     368877
171    WindowServer 4.3   02:38:13 14    6    1876  678M   18M    77M    171   1     sleeping *0[1]              0.75320 0.19251    88   9326076+  49146  100347168+ 86781732+  233610048+ 337248074+ 96480670+
0      kernel_task  8.0   85:56.09 228/8 0    0     410M-  0B     0B     0     0     running   0[0]              0.00000 0.00000    0    235012    7745   2147483647 2147483647 0          0          582613985+
1754   Google Chrom 0.1   57:49.41 47    3    1770  377M   80K    105M   1754  1     sleeping *0[10724]          0.00000 0.00000    501  14199546+ 73838  37279637+  15411010+  41950025+  95438741+  28652865+
1710   CleanMyMac X 17.4  02:28:34 15    8    270   305M+  0B     234M   1710  1     sleeping *0[1]              1.21801 0.01332    501  1184605+  54693+ 19641988+  1577616+   200854383+ 36317285+  31321882+


```
Observations: CleanMyMac application is the most CPU-intensive at the moment on my laptop, while Google Chrome has a high memory usage. Alternatively, `htop --sort-key=PERCENT_MEM` or `htop --sort-key=PERCENT_CPU` command can be used, it is a bit more user-friendly.


