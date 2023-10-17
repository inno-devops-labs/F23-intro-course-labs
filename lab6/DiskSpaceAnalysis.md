
# Task1: Operating System Analysis

## 1. Disk Space Analysis:

- Command I used for disk space analyis is ```bash df -h```. `h` flag is used for giving more human readable form.

- Output is the filesystems, total storage, used and available storage, used percentage and the mount point.

- The most important one is the `/dev/root` mountpoint that is actually mounted on `/`.

**Output**
```
Filesystem      Size  Used Avail Use% Mounted on
udev            7.8G     0  7.8G   0% /dev
tmpfs           1.6G  3.2M  1.6G   1% /run
/dev/nvme0n1p1  234G  220G  1.9G 100% /
tmpfs           7.8G  400M  7.4G   6% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
/dev/loop0      128K  128K     0 100% /snap/bare/5

```

## 2. Inodes Analysis:

- Command that I used for inodes analyis is ```bash df -i```. If we use `-ih` flag, the output is more human readable.

**Output**
```
Filesystem     Inodes IUsed IFree IUse% Mounted on
udev             2.0M   703  2.0M    1% /dev
tmpfs            2.0M  1.6K  2.0M    1% /run
/dev/nvme0n1p1    15M  1.4M   14M    9% /
tmpfs            2.0M  2.9K  2.0M    1% /dev/shm
tmpfs            2.0M     5  2.0M    1% /run/lock
tmpfs            2.0M    19  2.0M    1% /sys/fs/cgroup
/dev/loop0         29    29     0  100% /snap/bare/5
```

## 3. Resource Consumption Analysis:

- Linux (Ubuntu) has a pre-installed utility called `top` for assessing compute and memory requirements.
- There is another wrapper `htop` that is more user friendly. However, the output of `top` is as follows:

```
top - 22:47:32 up 6 days,  8:22,  1 user,  load average: 1.38, 1.45, 1.38
Tasks: 501 total,   1 running, 500 sleeping,   0 stopped,   0 zombie
%Cpu(s):  6.0 us,  2.7 sy,  0.0 ni, 90.9 id,  0.0 wa,  0.0 hi,  0.3 si,  0.0 st
MiB Mem :  15850.3 total,    599.6 free,  11302.1 used,   3948.6 buff/cache
MiB Swap:  16384.0 total,  13721.6 free,   2662.4 used.   3863.8 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                             
 685951 usman     20   0 2955568 488396 117888 S  30.2   3.0  10:42.73 Isolated Web Co                                     
 540529 usman     20   0 4882320 532784 216280 S  21.9   3.3  63:45.20 firefox                                             
   6842 usman     20   0 5110700 678424  81316 S  13.6   4.2   1033:54 gnome-shell                                         
 554322 usman     20   0  454580  97804  77708 S  11.6   0.6  10:56.14 RDD Process                                         
   3834 root      20   0 1208568 416628  45724 S   5.6   2.6 365:08.73 k3s-server                                          
   3312 root     -51   0       0      0      0 S   3.0   0.0 216:11.39 irq/94-nvidia                                       
   6520 root      20   0   24.3g  99396  32344 S   2.7   0.6 150:09.08 Xorg                                                
  46262 usman     20   0  944536  61916  21384 S   2.0   0.4  10:47.17 gnome-terminal-                                     
   6183 usman      9 -11 4368032  12200   8592 S   1.7   0.1 131:15.92 pulseaudio                                          
   8375 usman     20   0   33.3g 637308 275044 S   1.7   3.9 304:36.35 chrome                                              
 540750 usman     20   0  329424  26008  22808 S   1.3   0.2   1:45.32 Utility Process                                     
   3919 root      20   0  783276  28236   7320 S   0.7   0.2  44:23.09 containerd                                          
   9468 usman     20   0  754316  27056  12104 S   0.7   0.2  43:16.78 metrics-server                                      
   5063 root      20   0  763748  19808   8488 S   0.3   0.1  13:03.23 coredns                                             
   7081 usman     20   0  162920    732    292 S   0.3   0.0   2:52.32 at-spi2-registr                                     
 540624 usman     20   0 6947000 208764  50096 S   0.3   1.3   1:56.85 WebExtensions                                       
 662069 usman     20   0 2571800 186188 100620 S   0.3   1.1   0:49.59 Isolated Web Co    
 ```