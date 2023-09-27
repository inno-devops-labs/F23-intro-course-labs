1. **Disk Space Analysis:** to display disk info we use: 
 `df -h`
    ```bash

    Filesystem      Size  Used Avail Use% Mounted on
    tmpfs           772M  2.7M  769M   1% /run
    /dev/nvme0n1p5  125G  108G   11G  91% /
    tmpfs           3.8G  109M  3.7G   3% /dev/shm
    tmpfs           5.0M  4.0K  5.0M   1% /run/lock
    /dev/nvme0n1p1   96M   50M   47M  52% /boot/efi
    tmpfs           772M  164K  772M   1% /run/user/1000
    ```

2. **Inodes Analysis:** to display inodes info we use: 
`df -i`
    ```bash
    Filesystem      Inodes   IUsed   IFree IUse% Mounted on
    tmpfs           987744    1833  985911    1% /run
    /dev/nvme0n1p5 8388608 1015682 7372926   13% /
    tmpfs           987744     339  987405    1% /dev/shm
    tmpfs           987744       4  987740    1% /run/lock
    /dev/nvme0n1p1       0       0       0     - /boot/efi
    tmpfs           197548     185  197363    1% /run/user/1000
    ```

3. **Resource Consumption Analysis:** to display resources info we use: 
`top`
    ```bash
    top - 18:20:25 up  5:15,  1 user,  load average: 0.28, 0.57, 0.48
    Tasks: 333 total,   1 running, 332 sleeping,   0 stopped,   0 zombie
    %Cpu(s):  1.1 us,  0.2 sy,  0.0 ni, 98.7 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
    MiB Mem :   7716.8 total,   1265.6 free,   2879.9 used,   3571.2 buff/cache
    MiB Swap:  10240.0 total,   9871.0 free,    369.0 used.   3815.3 avail Mem 

        PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                     
    6112 gh        20   0 1132.0g 142644 108388 S   5.0   1.8  18:02.24 msedge                                      
    4927 gh        20   0   32.9g 120848  57080 S   2.7   1.5  13:39.18 msedge                                      
    2697 gh        20   0 6598876 301588  55560 S   1.0   3.8   6:54.13 gnome-shell                                 
    2217 gh        20   0 1617460  78312  42004 S   0.7   1.0   4:42.85 Xorg                                        
    4817 gh        20   0   33.1g 324448 190328 S   0.7   4.1   8:11.78 msedge                                      
    2073 root      20   0 1651732  16824   4480 S   0.3   0.2   0:32.64 containerd                                  
    4899 gh        20   0 1123.0g 100888  63432 S   0.3   1.3   1:37.63 code                                        
    5277 gh        20   0 1122.8g  47660  31104 S   0.3   0.6   0:39.13 code                                        
    5564 gh        20   0 1134.0g 226304 115852 S   0.3   2.9   1:40.73 msedge                                      
    16561 gh        20   0  994912  78512  48460 S   0.3   1.0   0:03.41 x-terminal-emul                             
    16707 gh        20   0   13392   4224   3328 R   0.3   0.1   0:00.06 top                                         
        1 root      20   0  168864  12952   7320 S   0.0   0.2   0:06.71 systemd                                     
        2 root      20   0       0      0      0 S   0.0   0.0   0:00.01 kthreadd                                    
        3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp                                      
        4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp                                  
        5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 slub_flushwq                                
        6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 netns                                       
        8 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri                 
        10 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu_wq                                
        11 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_kthread                           
        12 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread   
    ```