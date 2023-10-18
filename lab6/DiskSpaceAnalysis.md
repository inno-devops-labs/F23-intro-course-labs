1. **Disk Space Analysis:** to display disk info we use: 
 `df -h`
    ```c++
        Filesystem      Size  Used Avail Use% Mounted on
        tmpfs           1,6G  2,3M  1,6G   1% /run
        /dev/nvme0n1p5   74G   20G   51G  28% /
        tmpfs           7,7G     0  7,7G   0% /dev/shm
        tmpfs           5,0M  4,0K  5,0M   1% /run/lock
        /dev/nvme0n1p1   96M   35M   62M  37% /boot/efi
        tmpfs           1,6G   96K  1,6G   1% /run/user/1000

    ```

2. **Inodes Analysis:** to display inodes info we use: 
`df -i`
    ```c++
    Filesystem       Inodes  IUsed    IFree IUse% Mounted on
    tmpfs           2008732   1260  2007472    1% /run
    /dev/nvme0n1p5  4915200 652445  4262755   14% /
    tmpfs           2008732      1  2008731    1% /dev/shm
    tmpfs           2008732      4  2008728    1% /run/lock
    /dev/nvme0n1p1        0      0        0     - /boot/efi
    tmpfs            401746    111   401635    1% /run/user/1000
    /dev/nvme0n1p4 58486380  17427 58468953    1% /media/ahmad/D

    ```

3. **Resource Consumption Analysis:** to display resources info we use: 
`top`

```c++
    top - 11:28:01 up 7 min,  1 user,  load average: 0,39, 0,42, 0,22
    Tasks: 339 total,   1 running, 338 sleeping,   0 stopped,   0 zombie
    %Cpu(s):  0,7 us,  0,6 sy,  0,0 ni, 98,7 id,  0,0 wa,  0,0 hi,  0,0 si,  0,0 st
    MiB Mem :  15693,2 total,  12860,8 free,   1392,9 used,   1439,5 buff/cache
    MiB Swap:   2048,0 total,   2048,0 free,      0,0 used.  13507,8 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND  
   1238 root      20   0 3799424 127248  85964 S   6,3   0,8   0:34.74 Xorg     
   2668 ahmad     20   0 2521200 159816  88232 S   5,0   1,0   0:24.01 Isolate+ 
   2094 ahmad     20   0 3617184 344916 186320 S   4,0   2,1   0:40.83 firefox+ 
   1821 ahmad     20   0 5662908 186012 114108 S   3,3   1,2   0:29.11 cinnamon 
   2052 ahmad     20   0  475224  42160  32064 S   1,7   0,3   0:03.24 gnome-t+ 
   2644 ahmad     20   0 2504816 142828  88668 S   1,0   0,9   0:01.63 Isolate+ 
      9 root      20   0       0      0      0 I   0,3   0,0   0:01.66 kworker+ 
    207 root      20   0       0      0      0 I   0,3   0,0   0:00.33 kworker+ 
    920 root      20   0    2812   1176   1088 S   0,3   0,0   0:00.06 acpid    
    967 root      20   0  185168  14960  12640 S   0,3   0,1   0:01.37 touchegg 
   1984 ahmad     20   0  317168  38236  25000 S   0,3   0,2   0:00.62 blueman+ 
   2975 ahmad     20   0   13332   4164   3200 R   0,3   0,0   0:00.28 top      
      1 root      20   0  166336  11808   8488 S   0,0   0,1   0:00.76 systemd  
      2 root      20   0       0      0      0 S   0,0   0,0   0:00.00 kthreadd 
      3 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 rcu_gp   
      4 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 rcu_par+ 
      5 root       0 -20       0      0      0 I   0,0   0,0   0:00.00 slub_fl+

    ```
