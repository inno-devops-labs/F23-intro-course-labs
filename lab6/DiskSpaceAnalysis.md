## Disk Space Analysis

To check the available disk space on your Linux operating system, use the `df` command with the `-h` option to display sizes in a human-readable format. Open the terminal and run the following command:

```bash
df -h
```

The output will show the available disk space for each mounted file system. Here is an example of the output:

```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           3,1G  2,7M  3,1G   1% /run
/dev/nvme0n1p7  196G  168G   19G  91% /
tmpfs            16G   84M   16G   1% /dev/shm
tmpfs           5,0M  4,0K  5,0M   1% /run/lock
tmpfs           4,0M     0  4,0M   0% /sys/fs/cgroup
/dev/nvme0n1p1  256M   47M  210M  19% /boot/efi
tmpfs           3,1G  148K  3,1G   1% /run/user/1000
```

## Inodes Analysis

To check the number of inodes on your Linux operating system, use the `df` command with the `-i` option. This will display information about the file system inode usage. Open the terminal and run the following command:

```bash
df -i
```

The output will show the number of inodes used and available for each mounted file system. Here is an example of the output:

```
Filesystem       Inodes   IUsed    IFree IUse% Mounted on
tmpfs           4032416    1649  4030767    1% /run
/dev/nvme0n1p7 13107200 1807855 11299345   14% /
tmpfs           4032416     216  4032200    1% /dev/shm
tmpfs           4032416       4  4032412    1% /run/lock
tmpfs              1024      19     1005    2% /sys/fs/cgroup
/dev/nvme0n1p1        0       0        0     - /boot/efi
tmpfs            806483     165   806318    1% /run/user/1000
```

## Resource Consumption Analysis

To identify the process consuming the most RAM and CPU on your Linux operating system, use the `top` command. This command displays real-time information about system processes, including resource consumption. Open the terminal and run the following command:

```bash
top
```

In the `top` command output, you can observe the processes listed in descending order of CPU usage (in the `%CPU` column) and memory usage (in the `%MEM` column). The process at the top will be the one consuming the most resources.
In my case, the most resources were consumed by open browser tabs and the terminal.
Observations and insights regarding resource consumption can vary based on the specific system and workload. It's important to monitor resource usage regularly to identify any processes that may be consuming an excessive amount of CPU or memory. This information can help in troubleshooting performance issues and optimizing resource allocation.