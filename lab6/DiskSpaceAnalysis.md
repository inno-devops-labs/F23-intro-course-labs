# Disk Space and Resource Consumption Analysis

I will be using WSL to show the commands

## Disk Space Analysis:

**Command Used**: `df -h`

**Output**:
```
Filesystem      Size  Used Avail Use% Mounted on
none            3.9G  4.0K  3.9G   1% /mnt/wsl
none            931G  265G  667G  29% /usr/lib/wsl/drivers
none            3.9G     0  3.9G   0% /usr/lib/wsl/lib
/dev/sdc       1007G  2.6G  954G   1% /
none            3.9G  928K  3.9G   1% /mnt/wslg
rootfs          3.9G  1.9M  3.9G   1% /init
none            3.9G 1012K  3.9G   1% /run
none            3.9G     0  3.9G   0% /run/lock
none            3.9G     0  3.9G   0% /run/shm
none            3.9G     0  3.9G   0% /run/user
tmpfs           4.0M     0  4.0M   0% /sys/fs/cgroup
none            3.9G   76K  3.9G   1% /mnt/wslg/versions.txt
none            3.9G   76K  3.9G   1% /mnt/wslg/doc
drvfs           931G  265G  667G  29% /mnt/c
drvfs           932G  628G  304G  68% /mnt/d
snapfuse        128K  128K     0 100% /snap/bare/5
snapfuse         73M   73M     0 100% /snap/core22/607
snapfuse         74M   74M     0 100% /snap/core22/864
snapfuse         92M   92M     0 100% /snap/gtk-common-themes/1535
snapfuse         54M   54M     0 100% /snap/snapd/18933
snapfuse         41M   41M     0 100% /snap/snapd/20092
snapfuse        131M  131M     0 100% /snap/ubuntu-desktop-installer/1239
snapfuse        131M  131M     0 100% /snap/ubuntu-desktop-installer/1241
snapfuse        131M  131M     0 100% /snap/ubuntu-desktop-installer/1243
snapfuse        131M  131M     0 100% /snap/ubuntu-desktop-installer/1245
/dev/sde       1007G   33G  924G   4% /mnt/wsl/docker-desktop-data/isocache
none            3.9G   12K  3.9G   1% /mnt/wsl/docker-desktop/shared-sockets/host-services
/dev/sdd       1007G   60M  956G   1% /mnt/wsl/docker-desktop/docker-desktop-user-distro
/dev/loop0      443M  443M     0 100% /mnt/wsl/docker-desktop/cli-tools
drvfs           931G  265G  667G  29% /Docker/host
snapfuse        131M  131M     0 100% /snap/ubuntu-desktop-installer/1260
snapfuse        131M  131M     0 100% /snap/ubuntu-desktop-installer/1267
```

## Inodes Analysis:

**Command Used**: `df -i`

**Output**:
```
Filesystem       Inodes   IUsed    IFree IUse% Mounted on
none            1004941      13  1004928    1% /mnt/wsl
none                999 -999001  1000000     - /usr/lib/wsl/drivers
none            1004941       5  1004936    1% /usr/lib/wsl/lib
/dev/sdc       67108864   39628 67069236    1% /
none            1004941      55  1004886    1% /mnt/wslg
rootfs          1004130      11  1004119    1% /init
none            1004941     630  1004311    1% /run
none            1004941       2  1004939    1% /run/lock
none            1004941       1  1004940    1% /run/shm
none            1004941       3  1004938    1% /run/user
tmpfs              1024      19     1005    2% /sys/fs/cgroup
none            1004941      49  1004892    1% /mnt/wslg/versions.txt
none            1004941      49  1004892    1% /mnt/wslg/doc
drvfs               999 -999001  1000000     - /mnt/c
drvfs               999 -999001  1000000     - /mnt/d
snapfuse             29      29        0  100% /snap/bare/5
snapfuse          13367   13367        0  100% /snap/core22/607
snapfuse          14329   14329        0  100% /snap/core22/864
snapfuse          76208   76208        0  100% /snap/gtk-common-themes/1535
snapfuse            656     656        0  100% /snap/snapd/18933
snapfuse            658     658        0  100% /snap/snapd/20092
snapfuse           8512    8512        0  100% /snap/ubuntu-desktop-installer/1239
snapfuse           8512    8512        0  100% /snap/ubuntu-desktop-installer/1241
snapfuse           8512    8512        0  100% /snap/ubuntu-desktop-installer/1243
snapfuse           8536    8536        0  100% /snap/ubuntu-desktop-installer/1245
/dev/sde       67108864  180488 66928376    1% /mnt/wsl/docker-desktop-data/isocache
none            1004941      51  1004890    1% /mnt/wsl/docker-desktop/shared-sockets/host-services
/dev/sdd       67108864     788 67108076    1% /mnt/wsl/docker-desktop/docker-desktop-user-distro
/dev/loop0            0       0        0     - /mnt/wsl/docker-desktop/cli-tools
drvfs               999 -999001  1000000     - /Docker/host
snapfuse           8560    8560        0  100% /snap/ubuntu-desktop-installer/1260
snapfuse           8560    8560        0  100% /snap/ubuntu-desktop-installer/1267
```

## Resource Consumption Analysis:

**Command Used**: `top`

**Output**:
```
top - 01:33:33 up 5 days,  7:34,  2 users,  load average: 0.06, 0.10, 0.05
Tasks:  50 total,   1 running,  49 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.1 us,  0.1 sy,  0.0 ni, 99.6 id,  0.2 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   7851.1 total,   3854.2 free,   1705.1 used,   2291.8 buff/cache
MiB Swap:   2048.0 total,   2048.0 free,      0.0 used.   5880.1 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                                                         
    196 root      20   0 2133480  51048  19424 S   1.3   0.6  98:33.47 snapd
     61 root      20   0   21956   5640   4268 S   0.3   0.1   0:05.07 systemd-udevd
   7809 yusuf     20   0    7784   3600   3004 R   0.3   0.0   0:00.09 top                                                                                                                                                             
      1 root      20   0  167252  12596   8156 S   0.0   0.2   0:12.48 systemd
      2 root      20   0    2324   1268   1152 S   0.0   0.0   0:00.05 init-systemd(Ub
      5 root      20   0    2324      4      0 S   0.0   0.0   0:00.00 init
     37 root      19  -1   47724  15812  14744 S   0.0   0.2   0:13.55 systemd-journal
     73 root      20   0    4492    192     48 S   0.0   0.0   0:00.02 snapfuse
     74 root      20   0    4492    184     36 S   0.0   0.0   0:00.02 snapfuse
     75 root      20   0    4888   1940   1272 S   0.0   0.0   0:01.67 snapfuse
     81 root      20   0    4624    176     20 S   0.0   0.0   0:00.02 snapfuse
     87 root      20   0    4492    144      0 S   0.0   0.0   0:00.00 snapfuse
     90 root      20   0    4492    204     52 S   0.0   0.0   0:00.00 snapfuse
     91 root      20   0    4768   1724   1180 S   0.0   0.0   0:06.07 snapfuse
     97 root      20   0    4492    168     20 S   0.0   0.0   0:00.00 snapfuse
    100 root      20   0    4624   1416   1184 S   0.0   0.0   0:00.01 snapfuse
    102 root      20   0    4800   1860   1292 S   0.0   0.0   0:02.56 snapfuse
    117 systemd+  20   0   25528  12400   8204 S   0.0   0.2   0:01.52 systemd-resolve
    159 root      20   0    4304   2636   2380 S   0.0   0.0   0:01.17 cron
```

**Observations**: 

1. The `snapd` process is the most resource-intensive at the moment, but even then, it's only using a small fraction of the system's resources.
2. No processes are utilizing a significant portion of the CPU, and memory utilization is also well within comfortable limits.
3. The system hasn't had to use the swap memory, which is a good sign, as relying on swap can slow down the system.
4. With a load average of 0.06 in the last minute, the system is not under heavy load. A load average close to 0 in a single-core system indicates it's mostly idle.
