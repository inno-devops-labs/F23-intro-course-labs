
# Operating System analysis

I am running on Ubantu Linux operation system, so all commands here are consistent with Ubantu Linux.

## Analyze Disk Space

To analyze disk space I used ```df -h```, This command will display the disk usage in a human-readable format (`-h` flag).

Output as follow:

```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           782M  2.2M  780M   1% /run
/dev/sda7       307G  143G  148G  50% /
tmpfs           3.9G   42M  3.8G   2% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
/dev/sda6       976M  6.1M  969M   1% /boot/efi
tmpfs           782M  132K  782M   1% /run/user/1000
```

## Check Number of Inodes

To check the number of inodes, we can use the `df` command with the `-i` flag, output as follow:
```
Filesystem       Inodes  IUsed    IFree IUse% Mounted on
tmpfs           1000325   1285   999040    1% /run
/dev/sda7      20447232 542790 19904442    3% /
tmpfs           1000325    114  1000211    1% /dev/shm
tmpfs           1000325      4  1000321    1% /run/lock
/dev/sda6             0      0        0     - /boot/efi
tmpfs            200065    162   199903    1% /run/user/1000
```
### Identify Processes Consuming Most RAM and CPU
The following is a part of ```top``` command output but truncated,because it is much longer.
```
top - 01:56:39 up 1 day, 10:15,  1 user,  load average: 0.53, 0.92, 1.09
Tasks: 240 total,   1 running, 239 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3.3 us,  1.9 sy,  0.0 ni, 94.4 id,  0.3 wa,  0.0 hi,  0.1 si,  0.0 st
MiB Mem :   7815.0 total,    484.4 free,   1564.0 used,   5766.7 buff/cache
MiB Swap:   9533.0 total,   9512.8 free,     20.2 used.   5463.7 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                              
     12 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread                                                                                                               
     13 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_trace_kthread                                                                                                              
     14 root      20   0       0      0      0 S   0.0   0.0   0:01.26 ksoftirqd/0                                                                                                                          
     15 root      20   0       0      0      0 I   0.0   0.0   0:11.50 rcu_preempt                                                                                                                          
     16 root      rt   0       0      0      0 S   0.0   0.0   0:00.16 migration/0                                                                                                                          
     17 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/0                                                                                                                        
     20 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0                                                                                                                              
     21 root      20   0       0      0      0 S   0.0   0.0   0:00.07 cpuhp/1                                                                                                                              
     22 root     -51   0       0      0      0 S   0.0   0.0   0:00.01 idle_inject/1                                                                                                                        
     23 root      rt   0       0      0      0 S   0.0   0.0   0:00.32 migration/1                                                                                                                          
     24 root      20   0       0      0      0 S   0.0   0.0   0:07.73 ksoftirqd/1                                                                                                                          
     26 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/1:0H-events_highpri                                                                                                          
     28 root      20   0       0      0      0 S   0.0   0.0   0:00.11 cpuhp/2                                                                                                                              
     29 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/2                                                                                                                        
     30 root      rt   0       0      0      0 S   0.0   0.0   0:00.29 migration/2                                                                                                                          
     31 root      20   0       0      0      0 S   0.0   0.0   0:20.41 ksoftirqd/2                                                                                                                          
     33 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/2:0H-events_highpri                                                                                                          
     34 root      20   0       0      0      0 S   0.0   0.0   0:00.06 cpuhp/3                                                                                                                              
     35 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/3                                                                                                                        
     36 root      rt   0       0      0      0 S   0.0   0.0   0:00.26 migration/3                                                                                                                          
     37 root      20   0       0      0      0 S   0.0   0.0   0:00.99 ksoftirqd/3                                                                                                                          
     39 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/3:0H-events_highpri                                                                                                          
     40 root      20   0       0      0      0 S   0.0   0.0   0:00.08 kdevtmpfs                                                                                                                            
     44 root       0 -20       0      0      0 I   0.0   0.0   0:00.01 inet_frag_wq                                                                                                                         
     45 root      20   0       0      0      0 S   0.0   0.0   0:00.01 kauditd                                                                                                                              
     46 root      20   0       0      0      0 S   0.0   0.0   0:00.01 khungtaskd                                                                                                                           
     47 root      20   0       0      0      0 S   0.0   0.0   0:00.00 oom_reaper                                                                                                                           
     49 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 writeback                                                                                                                            
     50 root      20   0       0      0      0 S   0.0   0.0   0:05.02 kcompactd0                                                                                                                           
     51 root      25   5       0      0      0 S   0.0   0.0   0:00.00 ksmd                                                                                                                                 
     52 root      39  19       0      0      0 S   0.0   0.0   0:00.09 khugepaged                                                                                                                           
     53 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kintegrityd                                                                                                                          
     54 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kblockd                                                                                                                              
     55 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 blkcg_punt_bio                                                                                                                       
     57 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 tpm_dev_wq                                                                                                                           
     58 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 ata_sff                                                                                                                              
     59 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 md                                                                                                                                   
     60 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 edac-poller                                                                                                                          
     61 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 devfreq_wq                                                                                                                           
     62 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 watchdogd                                                                                                                            
     64 root      20   0       0      0      0 S   0.0   0.0   0:11.54 kswapd0                                                                                                                              
     65 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ecryptfs-kthread                                                                                                                     
     66 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kthrotld                                                                                                                             
     67 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 irq/122-aerdrv                                                                                                                       
     68 root     -51   0       0      0      0 S   0.0   0.0   0:04.85 irq/123-aerdrv                                                                                                                       
     69 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 irq/124-aerdrv                                                                                                                       
     70 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 acpi_thermal_pm                                                                                                                      
     71 root      20   0       0      0      0 S   0.0   0.0   0:00.00 xenbus_probe                                                                                                                         
```

Alternatively, we can use `htop` for a more user-friendly interface (if installed).

### Observations or Insights

#### Disk Space

-   **tmpfs**: This is a temporary filesystem in RAM. It has 782 MB of total space, and only 2.2 MB is used, leaving 780 MB available. It's mounted at `/run`.
-   **/dev/sda7**: This is the root filesystem. It has a total size of 307 GB, with 143 GB used and 148 GB available. It's 50% full.
-   **/dev/sda6**: This is the EFI system partition. It has 976 MB of total space, with only 6.1 MB used, leaving 969 MB available. It's mounted at `/boot/efi`.


The root filesystem is half full, so I still have a good amount of space left.

#### Inode Usage

-   **tmpfs**: It has 1,000,325 total inodes, and only 1,285 are used, leaving 999,040 free.
-   **/dev/sda7**: It has 20,447,232 total inodes, and 542,790 are used, leaving 19,904,442 free.
-   **/dev/sda6**: It shows 0 inodes, which is unusual and might indicate that the filesystem does not support inode tracking or it's not correctly mounted.

We have plenty of inodes in my system, no danger or running out of it for the current time.

#### Processes Consuming Most RAM and CPU
-   **System Uptime**: The system has been up for 1 day, 10 hours, and 15 minutes.
-   **Load Average**: The load average for the last 1, 5, and 15 minutes are 0.53, 0.92, and 1.09 respectively.
-   **Memory**: Out of 7815 MB total RAM, 484.4 MB is free, 1564 MB is used, and 5766.7 MB is used as buffer/cache.
-   **Swap**: Out of 9533 MB total swap, 9512.8 MB is free.

 **Memory**: For the memory I have a decent amount of free RAM and almost all of the swap is free, indicating that I am not running low on memory.
**CPU**: The CPU is mostly idle, with 94.4% idle time, indicating that the system is not under heavy load.
