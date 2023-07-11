# Analyze Disk Space

````
❯ df -h                                    11:15:56
Filesystem       Size   Used  Avail Capacity iused      ifree %iused  Mounted on
/dev/disk3s1s1  460Gi  8.5Gi  216Gi     4%  356093 2261289640    0%   /
devfs           205Ki  205Ki    0Bi   100%     710          0  100%   /dev
/dev/disk3s6    460Gi  1.0Gi  216Gi     1%       1 2261289640    0%   /System/Volumes/VM
/dev/disk3s2    460Gi  4.4Gi  216Gi     3%     848 2261289640    0%   /System/Volumes/Preboot
/dev/disk3s4    460Gi  7.3Mi  216Gi     1%      47 2261289640    0%   /System/Volumes/Update
/dev/disk1s2    500Mi  6.0Mi  481Mi     2%       1    4922680    0%   /System/Volumes/xarts
/dev/disk1s1    500Mi  6.2Mi  481Mi     2%      27    4922680    0%   /System/Volumes/iSCPreboot
/dev/disk1s3    500Mi  2.3Mi  481Mi     1%      52    4922680    0%   /System/Volumes/Hardware
/dev/disk3s5    460Gi  230Gi  216Gi    52% 4008360 2261289640    0%   /System/Volumes/Data
map auto_home     0Bi    0Bi    0Bi   100%       0          0  100%   /System/Volumes/Data/home
/dev/disk4s1    687Mi  630Mi   57Mi    92%    1286 4294965993    0%   /Volumes/Parallels Desktop 18
/dev/disk5s1    694Mi  640Mi   54Mi    93%    1258 4294966021    0%   /Volumes/Parallels Desktop 18 1
````

# i-nodes Analysis

````
❯ df -i                                                                                      11:18:37
Filesystem     512-blocks      Used Available Capacity iused      ifree %iused  Mounted on
/dev/disk3s1s1  965595304  17725008 452230576     4%  356093 2261152880    0%   /
devfs                 410       410         0   100%     710          0  100%   /dev
/dev/disk3s6    965595304   2097192 452230576     1%       1 2261152880    0%   /System/Volumes/VM
/dev/disk3s2    965595304   9242264 452230576     3%     848 2261152880    0%   /System/Volumes/Preboot
/dev/disk3s4    965595304     14872 452230576     1%      47 2261152880    0%   /System/Volumes/Update
/dev/disk1s2      1024000     12328    984536     2%       1    4922680    0%   /System/Volumes/xarts
/dev/disk1s1      1024000     12632    984536     2%      27    4922680    0%   /System/Volumes/iSCPreboot
/dev/disk1s3      1024000      4784    984536     1%      52    4922680    0%   /System/Volumes/Hardware
/dev/disk3s5    965595304 482295920 452230576    52% 4008447 2261152880    0%   /System/Volumes/Data
map auto_home           0         0         0   100%       0          0  100%   /System/Volumes/Data/home
/dev/disk4s1      1407160   1289456    117704    92%    1286 4294965993    0%   /Volumes/Parallels Desktop 18
/dev/disk5s1      1421312   1310504    110808    93%    1258 4294966021    0%   /Volumes/Parallels Desktop 18 1
````

# CPU: 

````
❯ top
Processes: 773 total, 3 running, 770 sleeping, 2789 threads                                                                    11:24:13
Load Avg: 3.14, 2.85, 2.93  CPU usage: 11.27% user, 6.76% sys, 81.96% idle  SharedLibs: 533M resident, 100M data, 35M linkedit.
MemRegions: 240110 total, 3610M resident, 213M private, 2675M shared. PhysMem: 15G used (2407M wired, 4952M compressor), 100M unused.
VM: 303T vsize, 4272M framework vsize, 87362(0) swapins, 223680(0) swapouts. Networks: packets: 14383648/16G in, 5297377/1073M out.
Disks: 7826347/148G read, 4463584/130G written.

PID    COMMAND      %CPU TIME     #TH   #WQ  #PORT MEM    PURG   CMPRS  PGRP  PPID  STATE    BOOSTS           %CPU_ME %CPU_OTHRS UID
60228  iTerm2       40.5 00:16.57 5     2    265-  133M-  44M+   12M    60228 1     sleeping *0[83]           0.36110 1.06158    501
378    WindowServer 34.6 06:45:10 24    5    4569- 1290M+ 264M-  366M   378   1     sleeping *0[1]            1.25064 0.54960    88
0      kernel_task  14.8 03:46:58 520/8 0    0     10M    0B     0B     0     0     running   0[0]            0.00000 0.00000    0
60548  top          8.9  00:02.96 1/1   0    31    8961K+ 0B     0B     60548 60232 running  *0[1]            0.00000 0.00000    0
47269  Telegram     7.1  24:28.91 24    4    1376  491M   112K   346M-  47269 1     sleeping *0[5092]         0.00580 0.00000    501
396    airportd     4.9  20:19.95 7     5    2615+ 16M+   0B     5152K- 396   1     sleeping *7021[1]         0.00000 4.77600    0
358    locationd    4.5  06:17.85 7     4    354+  11M+   256K+  3584K- 358   1     sleeping *0[107433+]      5.27234 0.16027    205
55147  backboardd   2.2  04:08.08 6     1    145   13M    0B     8576K  55147 55143 sleeping *0[1]            1.02520 0.25881    501
371    bluetoothd   2.2  13:21.15 10    4    361   25M    16K    14M    371   1     sleeping *0[1]            1.08711 0.29822    0
741    Magnet       2.1  07:59.00 3     1    615   50M    0B     41M    741   1     sleeping *5[150]          0.00000 0.00000    501
55151  backboardd   2.0  04:26.98 5     1    150   12M    0B     7744K  55151 55145 sleeping *0[1]            0.93892 0.22975    501
55138  SimMetalHost 2.0  03:57.43 6     4    171   20M    0B     5456K  55138 1     sleeping *0[262537+]      0.25881 0.75344    501
55141  SimMetalHost 1.8  04:21.58 6     4    171   24M    0B     5856K  55141 1     sleeping *0[262356+]      0.22753 0.69260    501
55135  SimRenderSer 1.7  03:24.69 7     5    213   84M    0B     5760K  55135 1     sleeping *0[262503+]      0.00000 0.26286    501
55136  SimRenderSer 1.5  03:33.13 7/2   5/1  213+  122M   0B     5616K  55136 1     running  *0[262332+]      0.00000 0.23646    501
1      launchd      1.4  24:31.88 3     2    3356  25M    0B     4512K  1     0     sleeping  0[0]            0.00000 0.09432    0
54291  Xcode        1.1  05:59.57 19    6    806   585M   0B     418M   54291 1     sleeping *0[10300+]       0.00000 0.02754    501
54774  Simulator    1.0  00:39.78 6     4    361+  155M+  0B     134M   54774 1     sleeping *0[7388+]        0.00000 0.08375    501
623    Notification 1.0  36:15.27 4     2    330   49M    0B     36M-   623   1     sleeping *0[9836781+]     0.00000 0.00000    501
60105  Code Helper  0.8  00:10.87 13    5    173   135M   2432K  21M    60102 60102 sleeping *1[5]            0.00000 0.00000    501
36515  UniversalCon 0.8  05:37.94 2     1    125   10M    0B     4736K  36515 1     sleeping *0[1]            0.00000 0.00000    501
9873   SimStreamPro 0.7  04:09.60 5     3    240   16M    0B     13M    9873  1     sleeping *0[4116]         0.00000 0.00000    501
314    logd         0.6  09:14.37 4     3    1733+ 27M+   0B     17M    314   1     sleeping *0[1]            0.00000 0.00000    0
633    sharingd     0.4  03:36.82 4     1    304   14M    0B     7776K  633   1     sleeping *0[1]            0.29822 0.20848    501
54808  diagnosticd  0.4  02:57.55 7     6    458   55M    0B     47M    54808 54772 sleeping *0[1]            0.00000 0.00688    501
55398  diagnosticd  0.3  01:54.20 3     2    19    3329K  0B     2224K  55398 1     sleeping *0[1]            0.00000 0.00000    0
36600  parsecd      0.3  00:03.82 4     3    89+   7393K+ 0B     3056K- 36600 1     sleeping  0[106]          0.00000 0.10925    501
56860  com.apple.We 0.2  00:28.20 7     1    165   85M    576K   20M    56860 1     sleeping *0[1275]         0.00000 0.00000    501
60435  com.apple.We 0.2  00:02.52 7     3    98    188M   92M    10M    60435 1     sleeping  0[1899+]        0.00000 0.00000    501
949    nearbyd      0.2  00:55.11 7     5    92    4753K  0B     2576K  949   1     sleeping *1[669]          0.00000 0.20635    268
55145  launchd_sim  0.2  00:37.69 3     2    72    5170K  0B     2352K  55145 1     sleeping *0[1]            0.00000 0.09630    501
54795  locationd    0.2  00:42.28 7     5    266   40M    128K   32M    54795 54772 sleeping *0[1]            0.00688 0.00000    501
574    Dock         0.2  02:18.05 3     1    760   78M    176K   70M    574   1     sleeping *1[19]           0.00000 0.15324    501
````

# MEM:

````
❯ top -o mem

Processes: 770 total, 3 running, 1 stuck, 766 sleeping, 2750 threads                                                           11:25:16
Load Avg: 2.38, 2.70, 2.87  CPU usage: 7.39% user, 6.12% sys, 86.47% idle  SharedLibs: 533M resident, 100M data, 35M linkedit.
MemRegions: 239644 total, 3606M resident, 209M private, 2391M shared. PhysMem: 15G used (2479M wired, 4966M compressor), 267M unused.
VM: 302T vsize, 4272M framework vsize, 87362(0) swapins, 223680(0) swapouts. Networks: packets: 14384728/16G in, 5298444/1074M out.
Disks: 7826959/148G read, 4464544/130G written.

PID    COMMAND      %CPU TIME     #TH   #WQ  #PORT MEM    PURG  CMPRS  PGRP  PPID  STATE    BOOSTS           %CPU_ME %CPU_OTHRS UID
54955  lldb-rpc-ser 0.0  00:45.22 8     1    71    2915M  0B    2900M  54955 54291 sleeping *0[5]            0.00000 0.00000    501
378    WindowServer 34.7 06:45:22 24    5    4572- 1288M- 158M+ 366M   378   1     stuck    *0[1]            1.39081 0.62595    88
54291  Xcode        1.1  06:01.00 17    4    797   585M   0B    417M   54291 1     sleeping *0[10365+]       0.00000 0.08369    501
54306  SourceKitSer 0.0  01:25.20 2     1    26    548M   0B    547M   54306 1     sleeping  0[2252]         0.00000 0.00000    501
60402  com.apple.We 0.0  00:13.28 3     1    88    547M   48M   32M    60402 1     sleeping  0[4836]         0.00000 0.00000    501
47269  Telegram     0.9  24:31.63 25    5    1376  490M   224K  346M   47269 1     sleeping *0[5097]         0.00565 0.00000    501
56902  com.apple.We 0.0  00:29.95 4     1    96    427M   0B    196M   56902 1     sleeping  0[11387]        0.00000 0.00000    501
60514  com.apple.We 0.0  00:01.72 3     1    87    223M   42M   19M    60514 1     sleeping *0[246]          0.00000 0.00000    501
60435  com.apple.We 0.4  00:03.77 5     2    95    214M   34M   18M    60435 1     sleeping  0[3228+]        0.00000 0.00000    501
56945  com.apple.We 0.0  00:06.43 3     1    84    172M   0B    174M   56945 1     sleeping  0[2136]         0.00000 0.00000    501
54774  Simulator    0.9  00:39.98 5     3    360   155M   0B    135M   54774 1     sleeping *0[7426]         0.00000 0.00000    501
56858  Safari       0.0  01:38.30 7     1    883   152M   86M   57M    56858 1     sleeping *0[1574+]        0.05657 0.02096    501
60105  Code Helper  1.1  00:12.59 13    5    174   142M   2432K 19M    60102 60102 sleeping *1[5]            0.00000 0.00000    501
60174  Code Helper  0.0  00:03.64 16    1    76    140M   0B    21M    60102 60102 sleeping *0[1]            0.00000 0.00000    501
60002  com.apple.We 0.0  00:02.80 3     1    83    136M   0B    42M    60002 1     sleeping  0[857]          0.00000 0.00000    501
60109  Code Helper  0.0  00:24.12 23    1    221   136M   0B    9856K  60102 60102 sleeping *0[2]            0.00000 0.00000    501
579    Finder       0.0  01:55.27 4     1    618-  134M-  0B    99M    579   1     sleeping *0[6425]         0.00000 0.00000    501
60228  iTerm2       22.9 00:22.22 6     3    265   134M+  89M+  10M    60228 1     sleeping *0[96]           0.55797 1.15746    501
59896  com.apple.We 0.0  00:07.79 3     1    89    130M   32K   30M    59896 1     sleeping  0[2131]         0.00000 0.00000    501
54776  SpringBoard  0.0  00:48.85 6     1    642   123M   0B    118M   54776 54772 sleeping *0[629]          0.00000 0.00000    501
55136  SimRenderSer 1.8  03:34.50 7     5    212   122M   0B    5536K  55136 1     sleeping *0[263891+]      0.00000 0.29853    501
59465  com.apple.We 0.0  00:03.79 3     1    86    109M   0B    88M    59465 1     sleeping  0[1508]         0.00000 0.00000    501
54303  XCBBuildServ 0.0  00:16.23 3     2    49    106M   0B    105M   54303 54291 sleeping *0[1]            0.00000 0.00000    501
60495  com.apple.We 0.0  00:02.52 3     1    92    106M   32M   19M    60495 1     sleeping  0[1468]         0.00000 0.00000    501
54768  SimRenderSer 0.0  00:17.74 3     1    251-  103M-  288K  18M    54768 1     sleeping *0[16016]        0.00000 0.00000    501
60439  com.apple.We 0.0  00:02.43 3     1    89    102M   0B    13M    60439 1     sleeping  0[924]          0.00000 0.00000    501
60540  com.apple.We 0.0  00:00.95 3     1    112   91M    33M   77M    60540 1     sleeping  0[137]          0.00000 0.00000    501
56860  com.apple.We 0.3  00:28.59 7     1    163   86M    560K  20M    56860 1     sleeping *0[1290]         0.00000 0.00000    501
55135  SimRenderSer 2.0  03:26.01 7     5    213   84M    0B    5712K  55135 1     sleeping *0[264071+]      0.00000 0.29145    501
59963  Fork         0.0  00:06.25 5     1    456   84M    0B    65M    59963 1     sleeping  0[136]          0.00000 0.00000    501
383    loginwindow  0.0  00:58.19 3     1    628   82M    0B    83M    383   1     sleeping *30[4157]        0.00000 0.00000    501
59093  com.apple.We 0.0  00:03.19 3     1    89    78M    0B    19M    59093 1     sleeping  0[1557]         0.00000 0.00000    501
574    Dock         0.1  02:18.14 3     1    760   78M    352K  70M    574   1     sleeping *1[19]           0.00000 0.09616    501
````