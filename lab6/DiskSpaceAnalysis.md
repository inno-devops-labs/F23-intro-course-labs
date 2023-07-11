# Operating Systems & Networking Lab

## Task 1: Operating System Analysis

## 1. Analyze Disk Space:
To check the available disk space on my operating system I used the following command:

> df -h

For the tool I can use the "Utilities" folder within the "Applications" folder.
> cd ~/Applications

To save the output in a Markdown file:

> df -h > ~/Documents/Github/labs/lab6/DiskSpaceAnalysis.md

**Output of the command:**

``` sh
Filesystem       Size   Used  Avail Capacity iused     ifree %iused  Mounted on
/dev/disk1s1s1  233Gi   21Gi   52Gi    29%  502144 547818880    0%   /
devfs           192Ki  192Ki    0Bi   100%     664         0  100%   /dev
/dev/disk1s4    233Gi  4.0Gi   52Gi     8%       4 547818880    0%   /System/Volumes/VM
/dev/disk1s2    233Gi  1.7Gi   52Gi     4%     837 547818880    0%   /System/Volumes/Preboot
/dev/disk1s6    233Gi  105Mi   52Gi     1%     403 547818880    0%   /System/Volumes/Update
/dev/disk1s5    233Gi  154Gi   52Gi    75% 1875454 547818880    0%   /System/Volumes/Data
map auto_home     0Bi    0Bi    0Bi   100%       0         0  100%   /System/Volumes/Data/home
/dev/disk1s1    233Gi   21Gi   52Gi    29%  502163 547818880    0%   /System/Volumes/Update/mnt1
```

2. Inodes Analysis:
To check the Inodes on my operating system I used the following command:

> df -i

To save the output in a Markdown file:

> df -i > ~/Documents/Github/labs/lab6/DiskSpaceAnalysis.md

**Results:**

``` sh
Filesystem     512-blocks      Used Available Capacity iused     ifree %iused  Mounted on
/dev/disk1s1s1  489620264  43088424 109588224    29%  502144 547941120    0%   /
devfs                 383       383         0   100%     664         0  100%   /dev
/dev/disk1s4    489620264   8388736 109588224     8%       4 547941120    0%   /System/Volumes/VM
/dev/disk1s2    489620264   3607144 109588224     4%     837 547941120    0%   /System/Volumes/Preboot
/dev/disk1s6    489620264    215744 109588224     1%     403 547941120    0%   /System/Volumes/Update
/dev/disk1s5    489620264 322277992 109588224    75% 1875464 547941120    0%   /System/Volumes/Data
map auto_home           0         0         0   100%       0         0  100%   /System/Volumes/Data/home
/dev/disk1s1    489620264  43088424 109588224    29%  502163 547941120    0%   /System/Volumes/Update/mnt1
```

## 3. Resource Consumption Analysis:

To identify the process consuming the most RAM and CPU on my operating system, I used the followinfg command:
> top

To save the output in a Markdown file:

> top -l 1 -o cpu -n 3 > ~/Documents/Github/labs/lab6/results.md

This command will identify top 3 resource consuming processes, I did for 3, otherwise the results would have been so long.

**Results:**

``` sh 
Processes: 363 total, 2 running, 361 sleeping, 2544 threads 
2023/07/11 11:32:25
Load Avg: 2.71, 3.16, 3.81 
CPU usage: 6.42% user, 14.48% sys, 79.8% idle 
SharedLibs: 227M resident, 57M data, 15M linkedit.
MemRegions: 637123 total, 1550M resident, 47M private, 684M shared.
PhysMem: 8153M used (2793M wired), 38M unused.
VM: 55T vsize, 3152M framework vsize, 1137160689(0) swapins, 1148915322(0) swapouts.
Networks: packets: 58024613/40G in, 43233080/8920M out.
Disks: 47141316/4825G read, 32699922/4607G written.

PID    COMMAND         %CPU TIME     #TH #WQ #PORTS MEM   PURG CMPRS PGRP  PPID  STATE    BOOSTS %CPU_ME %CPU_OTHRS UID FAULTS COW MSGSENT MSGRECV SYSBSD SYSMACH CSW  PAGEINS IDLEW POWER INSTRS CYCLES USER    #MREGS RPRVT VPRVT VSIZE KPRVT KSHRD
76411  top             0.0  00:01.14 1/1 0   15     3408K 0B   0B    76411 32447 running  *0[1]  0.00000 0.00000    0   1574   101 1306631 653315  1632   657012  1049 11      0     0.0   0      0      root    N/A    N/A   N/A   N/A   N/A   N/A  
76410  wifip2pd        0.0  00:00.07 2   1   29     1200K 0B   0B    76410 1     sleeping *5[1]  0.00000 0.00000    0   2773   209 111     54      929    205     216  80      1     0.0   0      0      root    N/A    N/A   N/A   N/A   N/A   N/A  
76409  mdworker_shared 0.0  00:00.04 3   1   47     1224K 0B   0B    76409 1     sleeping *0[1]  0.00000 0.00000    501 2639   167 554     247     948    546     154  0       1     0.0   0      0      mahmood N/A    N/A   N/A   N/A   N/A   N/A  
```

## 4. Observations and Insights
- **'top' command observations**:

1. The top command provides real-time information about processes running on the system, including CPU and memory usage.
2. By default, processes are sorted by CPU usage, with the most CPU-intensive processes displayed at the top.
3. The top command updates dynamically, allowing you to monitor resource consumption in real-time.
4. You can observe which processes are using the most CPU and identify any processes that might be consuming excessive resources.
5. The top command also displays memory (RAM) usage, load averages, and other system statistics.

**'df' command observations:**

1. The df command provides information about disk space usage on the system.
2. When used with the -h option, the output is displayed in a human-readable format, making it easier to interpret.
3. The df command shows the total, used, and available disk space for each mounted filesystem on the system.
4. You can identify the percentage of disk space utilized, helping you assess how much storage is currently in use.
5. The df command also provides information about the filesystem type and the mount point of each filesystem.
6. By using the -i option, you can obtain information about the number of inodes available on each filesystem, which helps determine filesystem capacity.