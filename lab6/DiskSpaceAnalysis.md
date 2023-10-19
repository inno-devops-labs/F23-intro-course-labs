1. **Disk Space Analysis**:
```console 
ahmad@ahmad-workstation:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           782M  2.2M  780M   1% /run
/dev/sda3       117G   99G   12G  90% /
tmpfs           3.9G   71M  3.8G   2% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
/dev/sda2       512M  6.1M  506M   2% /boot/efi
tmpfs           782M  164K  782M   1% /run/user/1000
```

2. **Inodes Analysis**:
```console
ahmad@ahmad-workstation:~$ df -i
Filesystem      Inodes   IUsed   IFree IUse% Mounted on
tmpfs          1000786    1366  999420    1% /run
/dev/sda3      7782400 1199159 6583241   16% /
tmpfs          1000786     236 1000550    1% /dev/shm
tmpfs          1000786       5 1000781    1% /run/lock
/dev/sda2            0       0       0     - /boot/efi
tmpfs           200157     182  199975    1% /run/user/1000
```

3. **Resource Consumption Analysis**: 
```console
ahmad@ahmad-workstation:~$ top

top - 10:35:55 up 1 day, 10:30,  1 user,  load average: 0.30, 0.45, 0.44
Tasks: 293 total,   1 running, 292 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.5 us,  0.2 sy,  0.0 ni, 99.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   7818.6 total,    624.4 free,   3106.0 used,   4088.2 buff/cache
MiB Swap:   2048.0 total,   2038.8 free,      9.2 used.   3635.8 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                              
   2368 ahmad     20   0 5761208 368028 154264 S   4.7   4.6  12:26.19 gnome-shell                                                                                                                          
  20481 ahmad     20   0  601736  86504  56456 S   3.0   1.1   0:04.10 x-terminal-emul                                                                                                                      
    565 root     -51   0       0      0      0 S   0.3   0.0   4:04.33 irq/128-rtw88_pci                                                                                                                    
   2594 ahmad     20   0  389448  12404   7176 S   0.3   0.2   0:56.00 ibus-daemon                                                                                                                          
   3988 ahmad     20   0   32.7g 383144 262028 S   0.3   4.8   8:04.63 chrome                                                                                                                               
   4053 ahmad     20   0   32.3g  55492  41712 S   0.3   0.7   0:04.38 chrome                                                                                                                               
  29528 ahmad     20   0 1131.0g 402596 137316 S   0.3   5.0  14:50.73 chrome                                                                                                                               
  29809 ahmad     20   0 1134.9g 242296 101756 S   0.3   3.0   1:53.43 code                                                                                                                                 
  30704 root      20   0       0      0      0 I   0.3   0.0   0:01.17 kworker/6:2-events                                                                                                                   
  32983 ahmad     20   0   13500   4096   3200 R   0.3   0.1   0:00.03 top                                                                                                                                  
      1 root      20   0  167176  12424   8252 S   0.0   0.2   0:04.85 systemd                                                                                                                              
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.03 kthreadd                                                                                                                             
      3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp                                                                                                                               
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp                                                                                                                           
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 slub_flushwq                                                                                                                         
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 netns                                                                                                                                
      8 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri                                                                                                          
     10 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu_wq                                                                                                                         
     11 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_kthread                                                                                                                    
     12 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread                                                                                                               
     13 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_trace_kthread                                                                                                              
     14 root      20   0       0      0      0 S   0.0   0.0   0:00.45 ksoftirqd/0                                                                                                                          
     15 root      20   0       0      0      0 I   0.0   0.0   0:21.10 rcu_preempt                                                                                                                          
     16 root      rt   0       0      0      0 S   0.0   0.0   0:00.18 migration/0                                                                                                                          
     17 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/0                                                                                                                        
     19 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0                                                                                                                              
     20 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/1                                                                                                                              
     21 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/1                                                                                                                        
     22 root      rt   0       0      0      0 S   0.0   0.0   0:00.29 migration/1                                                                                                                          
     23 root      20   0       0      0      0 S   0.0   0.0   0:00.26 ksoftirqd/1                                                                                                                          
     25 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/1:0H-events_highpri                                                                                                          
     26 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/2                                                                                                                              
     27 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/2                                                                                                                        
     28 root      rt   0       0      0      0 S   0.0   0.0   0:00.29 migration/2                                                                                                                          
     29 root      20   0       0      0      0 S   0.0   0.0   0:00.23 ksoftirqd/2                                                                                                                          
     32 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/3                                                                                                                              
     33 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/3                                                                                                                        
     34 root      rt   0       0      0      0 S   0.0   0.0   0:00.32 migration/3                                                                                                                          
     35 root      20   0       0      0      0 S   0.0   0.0   0:00.23 ksoftirqd/3                                                                                                                          
     37 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/3:0H-events_highpri                                                                                                          
     38 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/4                                                                                                                              
     39 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/4                                                                                                                        
     40 root      rt   0       0      0      0 S   0.0   0.0   0:00.32 migration/4                                                                                                                          
     41 root      20   0       0      0      0 S   0.0   0.0   0:00.26 ksoftirqd/4                                                                                                                          
     43 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/4:0H-events_highpri                                                                                                          
     44 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/5                                                                                                                              
     45 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/5                                                                                                                        
     46 root      rt   0       0      0      0 S   0.0   0.0   0:00.58 migration/5  
```