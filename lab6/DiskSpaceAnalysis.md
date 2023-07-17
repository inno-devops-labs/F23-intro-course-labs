# Student Information
Name: Md Motasim Bhuiyan

Group: B21-CS-01

Email: m.bhuiyan@innopolis.university

# Disk Space Analysis
This lab was done on a Ubuntu 20.04 server instance hosted on AWS. 

## Disk Space
I used the `df` command to check the available disk space on the operating system. The output is as follows:
```bash
df -h
```
The output is as follows:
```bash
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        59G  5.9G   53G  11% /
devtmpfs        989M     0  989M   0% /dev
tmpfs           993M  1.1M  992M   1% /dev/shm
tmpfs           199M  884K  198M   1% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           993M     0  993M   0% /sys/fs/cgroup
/dev/loop1       25M   25M     0 100% /snap/amazon-ssm-agent/6312
tmpfs           199M     0  199M   0% /run/user/1001
/dev/loop7       56M   56M     0 100% /snap/core18/2751
/dev/loop8       25M   25M     0 100% /snap/amazon-ssm-agent/6563
/dev/loop3       56M   56M     0 100% /snap/core18/2785
/dev/loop6       64M   64M     0 100% /snap/core20/1950
/dev/loop2      119M  119M     0 100% /snap/core/15419
/dev/loop13     174M  174M     0 100% /snap/lxd/25086
/dev/loop4       64M   64M     0 100% /snap/core20/1974
/dev/loop5      174M  174M     0 100% /snap/lxd/25112
/dev/loop0      119M  119M     0 100% /snap/core/15511
/dev/loop10      74M   74M     0 100% /snap/core22/806
/dev/loop11      74M   74M     0 100% /snap/core22/817
```
This shows us that the server has 59GB of disk space, of which 5.9GB is used and 53GB is available. 

## Inodes
Using the same command it is possible to check the number of inodes on the operating system. The output is as follows:
```bash
df -i
```
The output was following-
```bash
Filesystem      Inodes  IUsed   IFree IUse% Mounted on
/dev/root      7680000 138876 7541124    2% /
devtmpfs        253067    322  252745    1% /dev
tmpfs           254095     14  254081    1% /dev/shm
tmpfs           254095    553  253542    1% /run
tmpfs           254095      3  254092    1% /run/lock
tmpfs           254095     18  254077    1% /sys/fs/cgroup
/dev/loop1          16     16       0  100% /snap/amazon-ssm-agent/6312
tmpfs           254095     22  254073    1% /run/user/1001
/dev/loop7       10905  10905       0  100% /snap/core18/2751
/dev/loop8          16     16       0  100% /snap/amazon-ssm-agent/6563
/dev/loop3       10944  10944       0  100% /snap/core18/2785
/dev/loop6       11990  11990       0  100% /snap/core20/1950
/dev/loop2       12854  12854       0  100% /snap/core/15419
/dev/loop13        936    936       0  100% /snap/lxd/25086
/dev/loop4       11995  11995       0  100% /snap/core20/1974
/dev/loop5         936    936       0  100% /snap/lxd/25112
/dev/loop0       12906  12906       0  100% /snap/core/15511
/dev/loop10      14327  14327       0  100% /snap/core22/806
/dev/loop11      14327  14327       0  100% /snap/core22/817
```
This shows us that the server has 7680000 inodes, of which 138876 are used and 7541124 are available.

## Resource Consumption
To identify the process consuming the most RAM and CPU on the operating system, I used the `top` command. The output is as follows:
```bash
top
```
The output is as follows:
```bash
top - 10:29:55 up 151 days,  6:03,  1 user,  load average: 0.00, 0.00, 0.00
Tasks: 127 total,   1 running, 126 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.7 sy,  0.0 ni, 99.3 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   1985.1 total,    287.3 free,    760.2 used,    937.7 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.   1036.1 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
 528695 rfd       20   0  136488  47384   4972 S   0.3   2.3 142:51.70 python
 716891 rfd       20   0  340640 248948   4236 S   0.3  12.2  92:57.57 python3
      1 root      20   0  168816  10944   6444 S   0.0   0.5   3:14.40 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.13 kthreadd
```
Here, we can see that the process with PID 716891 (`python3`) is consuming the most RAM and CPU. It is using 12.2% of the memory and 0.3% of the CPU. The process with PID 528695 (`python`) is using 2.3% of the memory and 0.3% of the CPU.