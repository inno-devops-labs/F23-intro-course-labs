## Analyze Disk Space
On Linux:

    df -h

Output:

    Filesystem      Size  Used Avail Use% Mounted on
    /dev/sdb        251G  4.5G  234G   2% /
    tmpfs           6.2G     0  6.2G   0% /mnt/wsl
    tools           140G  133G  6.7G  96% /init
    none            6.2G     0  6.2G   0% /dev
    none            6.2G  4.0K  6.2G   1% /run
    none            6.2G     0  6.2G   0% /run/lock
    none            6.2G     0  6.2G   0% /run/shm
    none            6.2G     0  6.2G   0% /run/user
    tmpfs           6.2G     0  6.2G   0% /sys/fs/cgroup
    drivers         140G  133G  6.7G  96% /usr/lib/wsl/drivers
    lib             140G  133G  6.7G  96% /usr/lib/wsl/lib
    C:\             140G  133G  6.7G  96% /mnt/c

## Inodes Analysis
Command:

    df -i

Output:

    Filesystem       Inodes   IUsed    IFree IUse% Mounted on
    /dev/sdb       16777216  139419 16637797    1% /
    tmpfs           1604415       1  1604414    1% /mnt/wsl
    tools               999 -999001  1000000     - /init
    none            1603894     141  1603753    1% /dev
    none            1604415       9  1604406    1% /run
    none            1604415       1  1604414    1% /run/lock
    none            1604415       1  1604414    1% /run/shm
    none            1604415       1  1604414    1% /run/user
    tmpfs           1604415      15  1604400    1% /sys/fs/cgroup
    drivers             999 -999001  1000000     - /usr/lib/wsl/drivers
    lib                 999 -999001  1000000     - /usr/lib/wsl/lib
    C:\                 999 -999001  1000000     - /mnt/c

## Resource Consumption Analysis
Command:

    top

Output:

    top - 18:07:37 up 6 min,  0 users,  load average: 0.14, 0.03, 0.01
    Tasks:   5 total,   1 running,   4 sleeping,   0 stopped,   0 zombie
    %Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
    MiB Mem :  12534.5 total,  12376.7 free,     82.0 used,     75.8 buff/cache
    MiB Swap:   4096.0 total,   4096.0 free,      0.0 used.  12267.3 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
    1 root      20   0     988    604    476 S   0.0   0.0   0:00.08 init
    13 root      20   0    1336    432     20 S   0.0   0.0   0:00.00 init
    14 root      20   0    1336    432     20 S   0.0   0.0   0:00.01 init
    15 earina    20   0   10056   5004   3292 S   0.0   0.0   0:00.12 bash
    81 earina    20   0   10872   3712   3196 R   0.0   0.0   0:00.00 top

Observations: the system is not heavily loaded, low usage of cpu and plenty of available memory.