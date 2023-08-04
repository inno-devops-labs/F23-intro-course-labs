# Operating Systems & Networking Lab

## Task 1: Operating System Analysis

1. Analyze Disk Space:
```bash
df -h
> Filesystem       Size   Used  Avail Capacity iused      ifree %iused  Mounted on
> /dev/disk3s1s1  926Gi  9.0Gi  781Gi     2%  355384 4292745782    0%   /
```
781Gi is available on my system.

2. Inodes Analysis:
```bash
df -i
Filesystem     512-blocks      Used  Available Capacity iused      ifree %iused  Mounted on
> /dev/disk3s1s1 1942700360  18784296 1638365232     2%  355384 4292745782    0%   /
> devfs                 422       422          0   100%     730          0  100%   /dev
> /dev/disk3s6   1942700360        40 1638365232     1%       0 8191826160    0%   /System/Volumes/VM
> /dev/disk3s2   1942700360  19030064 1638365232     2%    1161 8191826160    0%   /System/Volumes/Preboot
> /dev/disk3s4   1942700360   1349640 1638365232     1%     283 8191826160    0%   /System/Volumes/Update
> /dev/disk1s2      1024000     12328     985184     2%       1    4925920    0%   /System/Volumes/xarts
> /dev/disk1s1      1024000     12664     985184     2%      31    4925920    0%   /System/Volumes/iSCPreboot
> /dev/disk1s3      1024000      4104     985184     1%      48    4925920    0%   /System/Volumes/Hardware
> /dev/disk3s5   1942700360 261521184 1638365232    14% 1720451 8191826160    0%   /System/Volumes/Data
> map auto_home           0         0          0   100%       0          0  100%   /System/Volumes/Data/home
> /dev/disk2s1     10485672   3167680    7278520    31%      58   36392600    0%   /System/Volumes/Update/SFR/mnt1
> /dev/disk3s1   1942700360  18784296 1638365232     2%  355384 4292637534    0%   /System/Volumes/Update/mnt1
```
The system has 12 inodes.

3. Resource Consumption Analysis:
```bash
top
> Processes: 804 total, 2 running, 802 sleeping, 4090 threads                                                         14:17:12
> Load Avg: 2.50, 3.34, 3.41  CPU usage: 6.82% user, 8.43% sys, 84.73% idle
> SharedLibs: 817M resident, 141M data, 87M linkedit. MemRegions: 879254 total, 8897M resident, 341M private, 4828M shared.
> PhysMem: 30G used (2277M wired, 9273M compressor), 795M unused.
> VM: 376T vsize, 4283M framework vsize, 0(0) swapins, 0(0) swapouts. Networks: packets: 207760150/155G in, 140658556/51G out.
> Disks: 24651165/418G read, 43814377/665G written.
> 
> PID    COMMAND      %CPU TIME     #TH   #WQ  #PORT MEM    PURG   CMPRS  PGRP  PPID  STATE    BOOSTS             %CPU_ME
> 155    WindowServer 25.7 55:36:59 26    0    4949- 1428M- 74M+   257M   155   1     sleeping *0[1]              2.57085
> 457    iTerm2       18.8 20:10:56 5     2    553-  1549M- 59M+   1109M- 457   1     sleeping *0[77052]          0.51974
> 0      kernel_task  16.7 32:25:21 515/8 0    0     2944K  0B     0B     0     0     running   0[0]              0.00000
```
WindowServer process (PID 155) consumes the most CPU at the time of snapshot.
