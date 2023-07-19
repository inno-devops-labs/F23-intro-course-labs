## Demid Efremov
## d.efremov@innopolis.university
## telegram: @Not_A_Snek
&nbsp;

## Analyze Disk Space
Command:
```
$ df -h
```

Output:
```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           4,8G  4,4M  4,8G   1% /run
/dev/sda3       457G  216G  218G  50% /
tmpfs            24G     0   24G   0% /dev/shm
tmpfs           5,0M  4,0K  5,0M   1% /run/lock
/dev/sda2       512M  6,1M  506M   2% /boot/efi
tmpfs           4,8G   96K  4,8G   1% /run/user/1000
```

## Inodes Analysis
Command:
```
$ df -i /dev/sda3
```

Output:
```
Filesystem       Inodes   IUsed    IFree IUse% Mounted on
/dev/sda3      30498816 2219519 28279297    8% /
```

## Resource Consumption Analysis
Command CPU:
```
$ ps aux --sort -%cpu | head -2
```

Output CPU:
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
demid        987  0.6 19.2 26052176 9520664 ?    Ssl  июл18  16:19 python3 launch.py --listen
```

Command Mem:
```
$ ps aux --sort -%mem | head -2
```

Output Mem:
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
demid        987  0.6 19.2 26052176 9520664 ?    Ssl  июл18  16:20 python3 launch.py --listen
```