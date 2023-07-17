# Task 1: Operating System Analysis
---
### Alanyze disk space
`df -h --total`
|Filesystem|             Size|  Used| Avail| Use%| Mounted on|
|---|---|---|---|---|---|
|tmpfs                  |772M|  2.1M|  770M|   1% |/run|
|/dev/mapper/data-root|  460G|   79G|  358G|  18% |/|
|tmpfs|                  3.8G|  1.1M | 3.8G|  1%| /dev/shm|
|tmpfs                 | 5.0M|     0 | 5.0M |  0%| /run/lock
|/dev/nvme0n1p1        |1020M | 411M | 610M | 41%| /boot/efi
|/dev/nvme0n1p2         |4.0G | 2.5G | 1.6G | 63%| /recovery
|tmpfs                  |772M | 1.7M | 770M  | 1%| /run/user/1000
|total                  |470G |  82G | 365G  |19%| -

### Inodes Analysis
`df -h -i`
|Filesystem            |Inodes| IUsed| IFree| IUse% |Mounted on|
|---|---|---|---|---|---|
tmpfs                   |964K  |1.2K|  963K   | 1%| /run
/dev/mapper/data-root   | 30M  |479K  | 29M  |  2% |/
tmpfs                   |964K  |   4|  964K   | 1% |/dev/shm
tmpfs                   |964K  |   3 | 964K  |  1% |/run/lock
/dev/nvme0n1p1          |   0 |    0  |   0  |   - |/boot/efi
/dev/nvme0n1p2          |   0|     0   |  0 |    - |/recovery
tmpfs                   |193K|   173  |193K |   1% |/run/user/1000


### Resource Consumption Analysis
`top`
top - 21:50:28 up 12:07,  1 user,  load average: 0.64, 0.76, 0.72
Tasks: 302 total,   1 running, 301 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.3 us,  1.0 sy,  1.8 ni, 96.8 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   7710.2 total,   2491.8 free,   2968.5 used,   2249.9 buff/cache
MiB Swap:  11805.5 total,  11096.5 free,    709.0 used.   3236.9 avail Mem 

   | PID| USER  |    PR | NI   | VIRT  |  RES    |SHR |S  |%CPU  |%MEM   |  TIME+| COMMAND        |
   |---|---|---|---|---|---|---|---|---|---|---|---|
 |  4186 |user|   25 |  5|   13.1g| 621688 |186360| S  | 9.3 |  7.9|  97:52.10 |firefox-bin    |
 | 16687 |user|   25 |  5  | 10.8g| 318132 |100676| S   |7.9 |  4.0 | 29:11.15| Isolated Web Co   |
 |  1702 |user|    9 |-11 | 288136|  20240 | 12124| S |  4.3 |  0.3 | 19:46.59| wireplumber       |
 | 42695 |user|   25 |  5| 2732780| 281588 |101960| S  | 2.3 |  3.6 |  0:35.31| Isolated Web Co    |
 |  1704 |user|    9 |-11 |  98304|  43360 |  7956| S |  2.0 |  0.5  | 7:24.19 |pipewire-pulse    |
 |  1800 |user|   15 | -5 |1473592|  48020 | 27000| S |  1.3 |  0.6 | 17:21.34 |Xorg         |
 |  1699 |user|    9 |-11 | 102920|  21600 |  7844| S |  1.0 |  0.3 |  3:11.23| pipewire      |
 |   782 |root   |   29 |  9 |  10872|   4992  | 4480| S   |0.7 |  0.1  | 0:39.52 |bluetoothd      |
 |  2159 |user |  15 | -5 |5604404| 259996  |69976| S   |0.7  | 3.3 | 22:30.79 |gnome-shell     |
