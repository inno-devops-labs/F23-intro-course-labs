# Disk Space Analysis

## Disk

`df` - display free disk space

`du` - display disk usage statistics

### Example

`df -H`

```
Filesystem          Size   Used  Avail Capacity iused      ifree %iused  Mounted on
/dev/disk1s5s1      500G    23G   346G     7%  502048 3374650040    0%   /
devfs               245k   245k     0B   100%     828          0  100%   /dev
/dev/disk1s4        500G   3.2G   346G     1%       3 3374650040    0%   /System/Volumes/VM
/dev/disk1s2        500G   267M   346G     1%     825 3374650040    0%   /System/Volumes/Preboot
/dev/disk1s6        500G   107M   346G     1%     450 3374650040    0%   /System/Volumes/Update
/dev/disk1s1        500G   126G   346G    27% 2533270 3374650040    0%   /System/Volumes/Data
map auto_home         0B     0B     0B   100%       0          0  100%   /System/Volumes/Data/home
map -fstab            0B     0B     0B   100%       0          0  100%   /System/Volumes/Data/Network/Servers
/dev/disk1s5        500G    23G   346G     7%  502163 3374650040    0%   /System/Volumes/Update/mnt1
*** Some other staff that I'd like to hide ***
```

Here I can see filesystems and other parameters. So, I can see, that my ssd has capacity of 500G and 346G free space.
Also, I can see inodes used and free inodes 

## RAM && CPU

`top` – display sorted information about processes

```
Processes: 590 total, 3 running, 587 sleeping, 3596 threads                                                                                       20:44:28
Load Avg: 2.96, 3.43, 3.62  CPU usage: 6.6% user, 3.59% sys, 90.33% idle     SharedLibs: 500M resident, 60M data, 31M linkedit.
MemRegions: 1071547 total, 4556M resident, 121M private, 2612M shared. PhysMem: 16G used (2773M wired), 59M unused.
VM: 105T vsize, 3025M framework vsize, 17097260(0) swapins, 19419979(0) swapouts. Networks: packets: 29225078/28G in, 12592303/3766M out.
Disks: 7475176/166G read, 8510940/152G written.

PID    COMMAND      %CPU TIME     #TH    #WQ  #PORTS MEM    PURG   CMPRS  PGRP  PPID  STATE    BOOSTS            %CPU_ME %CPU_OTHRS UID       FAULTS
46271  Yandex Helpe 16.5 07:15.74 37     1    682    248M+  0B     32M    513   513   sleeping *0[8]             0.00000 0.00000    277203556 1414548+
690    VTDecoderXPC 13.9 36:08.43 6      1    92     75M    0B     23M    690   1     sleeping *0[1154726+]      0.00000 13.71617   277203556 1116205
68013  top          9.4  00:03.48 1/1    0    27-    5532K  0B     0B     68013 60669 running  *0[1]             0.00000 0.00000    0         10631+
221    coreaudiod   5.3  02:10:39 15     5    1371   34M    0B     16M    221   1     sleeping *0[1]             0.00000 0.01023    202       1068421
1635   Yandex Helpe 4.8  37:28.73 13     1    227    19M    0B     14M    513   513   sleeping *0[4]             0.01023 0.00000    277203556 82111
0      kernel_task  4.8  02:19:42 247/12 0    0      234M   0B     0B     0     0     running   0[0]             0.00000 0.00000    0         975234
615    Yandex Helpe 3.3  02:34:50 27     1    670    970M   0B     351M   513   513   sleeping *1[5]             13.7161 0.00000    277203556 37211616
618    Yandex Helpe 3.2  52:55.94 22     2    210    51M-   0B     18M    513   513   sleeping *0[5]             0.00000 0.00000    277203556 9813088
22211  Code Helper  3.0  31:52.12 15     1    69     362M+  0B     355M   3444  16326 sleeping *0[1]             0.00000 0.00000    277203556 1028734+
2906   qemu-system- 2.1  94:32.08 7      1    29     3272M  0B     1332M  2869  2904  sleeping *0[1]             0.00000 0.00000    277203556 129945989+
3444   Electron     2.1  56:14.29 30     2    702-   130M+  96K    32M    3444  1     sleeping *0-[19757]        0.19036 0.06826    277203556 10731314
```