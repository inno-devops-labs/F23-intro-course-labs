# Analyzing Disk space

For this task, I use commands on my Innopolis Virtual machine. WSL has some corrupted things

## Task 1

I used the following command:

```sh
ncdu /
```

Its output:

```sh
    2.6 GiB [##########] /usr                                                                                               2.2 GiB [########  ] /snap
    2.0 GiB [#######   ]  swap.img
    1.5 GiB [#####     ] /var
  232.9 MiB [          ] /boot
    8.7 MiB [          ] /root
    5.2 MiB [          ] /etc
    3.9 MiB [          ] /opt
  932.0 KiB [          ] /run
   72.0 KiB [          ] /tmp
   44.0 KiB [          ] /home
e  16.0 KiB [          ] /lost+found
    8.0 KiB [          ] /mnt
e   4.0 KiB [          ] /srv
e   4.0 KiB [          ] /media
e   4.0 KiB [          ] /cdrom
.   0.0   B [          ] /proc
    0.0   B [          ] /sys
    0.0   B [          ] /dev
@   0.0   B [          ]  libx32
@   0.0   B [          ]  lib64
@   0.0   B [          ]  lib32
@   0.0   B [          ]  sbin
@   0.0   B [          ]  lib
@   0.0   B [          ]  bin


 Total disk usage:   8.6 GiB  Apparent size:   8.7 GiB  Items: 343330
```

## Task 2

I used the command:

```sh
df -i
```

And got the output:

```sh
Filesystem      Inodes  IUsed   IFree IUse% Mounted on
udev            230235    426  229809    1% /dev
tmpfs           236602    619  235983    1% /run
/dev/sda2      3899392 139785 3759607    4% /
tmpfs           236602      4  236598    1% /dev/shm
tmpfs           236602      3  236599    1% /run/lock
tmpfs           236602     19  236583    1% /sys/fs/cgroup
/dev/sda1            0      0       0     - /boot/efi
/dev/loop1       10858  10858       0  100% /snap/core18/2566
/dev/loop3       11882  11882       0  100% /snap/core20/1623
/dev/loop6         658    658       0  100% /snap/snapd/20092
/dev/loop7       14329  14329       0  100% /snap/core22/864
/dev/loop8       11991  11991       0  100% /snap/core20/2015
/dev/loop9       10944  10944       0  100% /snap/core18/2790
/dev/loop0         963    963       0  100% /snap/lxd/25505
tmpfs           236602     25  236577    1% /run/user/0
/dev/loop2        2446   2446       0  100% /snap/lxd/25748
```

## Task 3

I used command:

```sh
top
```

It displays sorted processes that use most of the resources. Output:

```sh
Tasks: 105 total,   1 running, 104 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   1848.5 total,    192.1 free,    468.9 used,   1187.4 buff/cache
MiB Swap:   2048.0 total,   2031.6 free,     16.4 used.   1184.8 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
      1 root      20   0  169596  12992   6968 S   0.0   0.7   0:26.37 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.08 kthreadd
      3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 netns
      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri
      9 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu_wq
     10 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_tasks_rude_
     11 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_tasks_trace
     12 root      20   0       0      0      0 S   0.0   0.0   0:01.06 ksoftirqd/0
     13 root      20   0       0      0      0 I   0.0   0.0   2:26.55 rcu_sched
     14 root      rt   0       0      0      0 S   0.0   0.0   0:04.07 migration/0
     16 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0
     17 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/1
     18 root      rt   0       0      0      0 S   0.0   0.0   0:04.14 migration/1
     19 root      20   0       0      0      0 S   0.0   0.0   0:01.96 ksoftirqd/1
     21 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/1:0H-events_highpri
     22 root       0 -20       0      0      0 I   0.0   0.0   0:17.08 kworker/0:1H-events_highpri
     23 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kdevtmpfs
     24 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 inet_frag_wq
     25 root       0 -20       0      0      0 I   0.0   0.0   0:33.71 kworker/1:1H-events_highpri
     26 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kauditd
     28 root      20   0       0      0      0 S   0.0   0.0   0:00.29 khungtaskd
```