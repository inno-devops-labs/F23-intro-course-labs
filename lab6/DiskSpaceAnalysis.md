## Analyzing Disk Space

Command:

df -h

Result:
```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           393M  1,6M  391M   1% /run
/dev/sda3       118G   13G   99G  12% /
tmpfs           2,0G     0  2,0G   0% /dev/shm
tmpfs           5,0M  4,0K  5,0M   1% /run/lock
/dev/sda2       512M  5,3M  507M   2% /boot/efi
tmpfs           393M  4,7M  388M   2% /run/user/1000
/dev/sr0         59M   59M     0 100% /media/rail/VBox_GAs_6.1.34
```

## Analyzing Inodes

Command:

df -h

Result:
```
Filesystem      Inodes  IUsed   IFree IUse% Mounted on
tmpfs           502207    993  501214    1% /run
/dev/sda3      7831552 251458 7580094    4% /
tmpfs           502207      1  502206    1% /dev/shm
tmpfs           502207      4  502203    1% /run/lock
/dev/sda2            0      0       0     - /boot/efi
tmpfs           100441    155  100286    1% /run/user/1000
/dev/sr0             0      0       0     - /media/rail/VBox_GAs_6.1.34
```

## Analyzing Resource Consumption

Command:

top

Result:
```
    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                             
   1183 rail      20   0 4290752 380256 139096 S   7,0   9,5   1:01.45 gnome-shell                                                                                                                         
   3530 rail      20   0  576376  57740  44848 S   1,3   1,4   0:04.44 gnome-terminal-                                                                                                                     
   1577 rail      20   0  227732   2652   2264 S   0,3   0,1   0:04.48 VBoxClient                                                                                                                          
   4448 rail      20   0   21876   4132   3424 R   0,3   0,1   0:00.04 top                                                                                                                                 
      1 root      20   0  168072  13376   8216 S   0,0   0,3   0:09.39 systemd 
```
As I see, the process consuming most RAM and CPU is located in the first row.