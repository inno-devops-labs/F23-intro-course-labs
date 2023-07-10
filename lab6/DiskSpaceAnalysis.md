# Operating systems and Networking

## Operating Systems Analysis

> CASE: Ubuntu:lastest, HP Portable Computer

### Analyze Disk Space:

To analyze disk space, I simply used the command:

```sh
    df -h:
```

#### Output:

> Filesystem Size Used Avail Use% Mounted on
> none 1.9G 4.0K 1.9G 1% /mnt/wsl
> none 156G 145G 12G 93% /usr/lib/wsl/drivers
> none 1.9G 0 1.9G 0% /usr/lib/wsl/lib
> /dev/sdc 1007G 1013M 955G 1% /
> none 1.9G 100K 1.9G 1% /mnt/wslg
> rootfs 1.9G 1.9M 1.9G 1% /init
> none 1.9G 4.0K 1.9G 1% /run
> none 1.9G 0 1.9G 0% /run/lock
> none 1.9G 0 1.9G 0% /run/shm
> none 1.9G 0 1.9G 0% /run/user
> tmpfs 1.9G 0 1.9G 0% /sys/fs/cgroup
> none 1.9G 76K 1.9G 1% /mnt/wslg/versions.txt
> none 1.9G 76K 1.9G 1% /mnt/wslg/doc
> drvfs 156G 145G 12G 93% /mnt/c
> drvfs 511M 25M 487M 5% /mnt/d
> drvfs 315G 42G 274G 14% /mnt/e
> /dev/sde 1007G 11G 946G 2% /mnt/wsl/docker-desktop-data/isocache
> none 1.9G 12K 1.9G 1% /mnt/wsl/docker-desktop/shared-sockets/host-services
> /dev/sdd 1007G 50M 956G 1% /mnt/wsl/docker-desktop/docker-desktop-user-distro
> /dev/loop0 499M 499M 0 100% /mnt/wsl/docker-desktop/cli-tools
> drvfs 156G 145G 12G 93% /Docker/host

### Inodes Analysis:

```sh
    df -i:
```

#### Output:

> Filesystem Inodes IUsed IFree IUse% Mounted on
> none 485368 13 485355 1% /mnt/wsl
> none 999 -999001 1000000 - /usr/lib/wsl/drivers
> none 485368 4 485364 1% /usr/lib/wsl/lib
> /dev/sdc 67108864 29610 67079254 1% /
> none 485368 33 485335 1% /mnt/wslg
> rootfs 484557 11 484546 1% /init
> none 485368 13 485355 1% /run
> none 485368 1 485367 1% /run/lock
> none 485368 1 485367 1% /run/shm
> none 485368 1 485367 1% /run/user
> tmpfs 485368 16 485352 1% /sys/fs/cgroup
> none 485368 49 485319 1% /mnt/wslg/versions.txt
> none 485368 49 485319 1% /mnt/wslg/doc
> drvfs 999 -999001 1000000 - /mnt/c
> drvfs 999 -999001 1000000 - /mnt/d
> drvfs 999 -999001 1000000 - /mnt/e
> /dev/sde 67108864 550553 66558311 1% /mnt/wsl/docker-desktop-data/isocache
> none 485368 50 485318 1% /mnt/wsl/docker-desktop/shared-sockets/host-services
> /dev/sdd 67108864 786 67108078 1% /mnt/wsl/docker-desktop/docker-desktop-user-distro
> /dev/loop0 0 0 0 - /mnt/wsl/docker-desktop/cli-tools
> drvfs 999 -999001 1000000 - /Docker/host

### Resource Consumption Analysis:

Ubutntu Top Command:
The top command in the terminal provides a dynamic view of the system's resource usage. It displays a list of processes sorted by their resource consumption, including CPU usage, memory usage, and more. To run the top command, I openned the terminal and simply typed top.

```sh
    top
```

#### Output:

> top - 01:32:56 up 9:30, 0 users, load average: 0.00, 0.00, 0.00
> Tasks: 11 total, 1 running, 10 sleeping, 0 stopped, 0 zombie
> %Cpu(s): 0.1 us, 0.1 sy, 0.0 ni, 99.8 id, 0.0 wa, 0.0 hi, 0.0 si, 0.0 st
> MiB Mem : 3791.9 total, 254.4 free, 1448.5 used, 2089.0 buff/cache
> MiB Swap: 1024.0 total, 1002.1 free, 21.9 used. 2147.7 avail Mem

> PID USER PR NI VIRT RES SHR S %CPU %MEM TIME+ COMMAND
> 1 root 20 0 2324 1708 1600 S 0.0 0.0 0:00.07 init(Ubuntu)
> 4 root 20 0 2340 68 68 S 0.0 0.0 0:00.02 init
> 128 root 20 0 2328 108 0 S 0.0 0.0 0:00.00 SessionLeader
> 129 root 20 0 2344 112 0 S 0.0 0.0 0:00.00 Relay(130)
> 130 root 20 0 731344 23696 11484 S 0.0 0.6 0:04.93 docker-desktop-
> 146 root 20 0 2344 112 0 S 0.0 0.0 0:00.00 Relay(147)
> 147 borel 20 0 769336 28920 12340 S 0.0 0.7 0:04.59 docker
> 159 root 20 0 2328 108 0 S 0.0 0.0 0:00.00 SessionLeader
> 160 root 20 0 2344 112 0 S 0.0 0.0 0:00.01 Relay(161)
> 161 borel 20 0 6212 5116 3388 S 0.0 0.1 0:00.28 bash
> 209 borel 20 0 7800 3648 3056 R 0.0 0.1 0:00.04 top
