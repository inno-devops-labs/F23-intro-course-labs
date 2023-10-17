# Operating System Analysis

### Disk Space Analysis:

To check the available disk space on the operating system, you can use the "df" command. Run the following command in the terminal:

```
df -h
```

This command will display the available disk space in a human-readable format. The "-h" flag is used to show the sizes in a more understandable format (e.g., "10G" instead of bytes).

output:

```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           778M  2,3M  775M   1% /run
/dev/nvme0n1p2  468G   44G  401G  10% /
tmpfs           3,8G     0  3,8G   0% /dev/shm
tmpfs           5,0M  4,0K  5,0M   1% /run/lock
/dev/nvme0n1p1  511M  6,1M  505M   2% /boot/efi
tmpfs           778M  124K  778M   1% /run/user/1000
```

### Inodes Analysis:

To check the number of inodes on your operating system, you can use the "df" command with the "-i" flag. Run the following command in the terminal:

```
df -i
```

This command will display the number of inodes for each file system in the system.

ounput:

```
Filesystem       Inodes  IUsed    IFree IUse% Mounted on
tmpfs            994818   1369   993449    1% /run
/dev/nvme0n1p2 31227904 587714 30640190    2% /
tmpfs            994818      1   994817    1% /dev/shm
tmpfs            994818      4   994814    1% /run/lock
/dev/nvme0n1p1        0      0        0     - /boot/efi
tmpfs            198963    164   198799    1% /run/user/1000
```

### Resource Consumption Analysis:

To identify the process consuming the most RAM and CPU on your operating system, you can use the "top" command. Run the following command in the terminal:

```
top
```

The topmost process will indicate the one consuming the most resources.

output:

```top - 08:40:39 up 8 min,  1 user,  load average: 1,05, 1,20, 0,70
Tasks: 296 total,   1 running, 295 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3,0 us,  1,1 sy,  0,0 ni, 95,7 id,  0,2 wa,  0,0 hi,  0,0 si,  0,0 st
MiB Mem :   7772,0 total,    291,6 free,   2399,4 used,   5081,0 buff/cache
MiB Swap:   2048,0 total,   2043,7 free,      4,2 used.   4583,0 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND  
   5881 user      20   0 2912676 371716 112976 S   9,9   4,7   1:11.12 Isolate+ 
   2184 user      20   0 5341592 281608 127232 S   5,9   3,5   0:33.20 gnome-s+ 
   5516 user      20   0 2883496 250468 115712 S   5,4   3,1   0:40.35 Isolate+ 
   5375 user      20   0  619980 110720  85888 S   2,7   1,4   0:11.23 RDD Pro+ 
   4209 user      20   0 3797672 418256 198908 S   2,3   5,3   2:09.29 firefox  
   4961 user      20   0  331116  50088  38272 S   1,8   0,6   0:05.32 Utility+ 
   1999 user       9 -11 1793704  27224  19416 S   0,9   0,3   0:02.56 pulseau+ 
   4640 user      20   0 2464244 110724  80228 S   0,9   1,4   0:01.28 Privile+ 
     15 root      20   0       0      0      0 I   0,5   0,0   0:00.39 rcu_pre+ 
    644 systemd+  20   0   14824   6912   6144 S   0,5   0,1   0:00.72 systemd+ 
   5828 user      20   0 2412944  78948  60388 S   0,5   1,0   0:00.73 Isolate+ 
   6592 root      20   0       0      0      0 I   0,5   0,0   0:00.16 kworker+ 
      1 root      20   0  168520  13176   8056 S   0,0   0,2   0:04.02 systemd  
      2 root      20   0       0      0      0 S   0,0   0,0   0:00.00 kthreadd 
      3 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 rcu_gp   
      4 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 rcu_par+ 
      5 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 slub_fl+ 

```
