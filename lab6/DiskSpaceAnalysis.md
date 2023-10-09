## Task 1: Operating System Analysis

1. **Analyze Disk space:**
To check the available disk space we can use the following command on linux based os
```shell
    df -h
```
Output:
```s
Filesystem      Size  Used Avail Use% Mounted on
udev            6.8G     0  6.8G   0% /dev
tmpfs           1.4G  2.8M  1.4G   1% /run
/dev/nvme1n1p3  443G   96G  325G  23% /
tmpfs           6.8G  140M  6.7G   3% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
tmpfs           6.8G     0  6.8G   0% /sys/fs/cgroup
/dev/loop0      128K  128K     0 100% /snap/bare/5
/dev/loop3       74M   74M     0 100% /snap/core22/858
/dev/loop1      310M  310M     0 100% /snap/blender/4036
/dev/loop2      304M  304M     0 100% /snap/code/141
/dev/loop4      310M  310M     0 100% /snap/blender/4023
/dev/loop7       13M   13M     0 100% /snap/snap-store/959
/dev/loop6      497M  497M     0 100% /snap/gnome-42-2204/141
/dev/loop5      350M  350M     0 100% /snap/gnome-3-38-2004/143
/dev/loop9       64M   64M     0 100% /snap/core20/1828
/dev/loop16      46M   46M     0 100% /snap/snap-store/638
/dev/loop10      56M   56M     0 100% /snap/core18/2790
/dev/loop8      304M  304M     0 100% /snap/code/142
/dev/loop24      41M   41M     0 100% /snap/snapd/19993
/dev/loop25     366M  366M     0 100% /snap/zoom-client/208
/dev/loop23     366M  366M     0 100% /snap/zoom-client/210
/dev/loop11      64M   64M     0 100% /snap/core20/2015
/dev/loop22      92M   92M     0 100% /snap/gtk-common-themes/1535
/dev/loop18     321M  321M     0 100% /snap/vlc/3078
/dev/loop15     7.4M  7.4M     0 100% /snap/gnome-clocks/463
/dev/loop14     161M  161M     0 100% /snap/brave/285
/dev/loop12     159M  159M     0 100% /snap/brave/283
/dev/loop21     408M  408M     0 100% /snap/telegram-desktop/5088
/dev/loop20      41M   41M     0 100% /snap/snapd/20092
/dev/loop19     410M  410M     0 100% /snap/telegram-desktop/5133
/dev/loop17     7.3M  7.3M     0 100% /snap/gnome-clocks/461
/dev/loop13      67M   67M     0 100% /snap/cups/980
/dev/loop27      74M   74M     0 100% /snap/core22/864
/dev/loop26     347M  347M     0 100% /snap/gnome-3-38-2004/119
/dev/loop28     497M  497M     0 100% /snap/gnome-42-2204/132
/dev/nvme0n1p1  256M   37M  220M  15% /boot/efi
tmpfs           1.4G   16K  1.4G   1% /run/user/126
tmpfs           1.4G   44K  1.4G   1% /run/user/1000
```
#### Observations/Insights
By using these commands, you can keep track of your disk space usage and ensure that you have enough available space for your applications and files.

2. **Inodes Analysis:**
To check the number of inodes we can use the following command on linux based os
```s
    df -i
```
Output:
```s
Filesystem       Inodes  IUsed    IFree IUse% Mounted on
udev            1759122    775  1758347    1% /dev
tmpfs           1769299   1666  1767633    1% /run
/dev/nvme1n1p3 29523968 870367 28653601    3% /
tmpfs           1769299    804  1768495    1% /dev/shm
tmpfs           1769299      5  1769294    1% /run/lock
tmpfs           1769299     19  1769280    1% /sys/fs/cgroup
/dev/loop0           29     29        0  100% /snap/bare/5
/dev/loop3        14327  14327        0  100% /snap/core22/858
/dev/loop1         5923   5923        0  100% /snap/blender/4036
/dev/loop2         9766   9766        0  100% /snap/code/141
/dev/loop4         5923   5923        0  100% /snap/blender/4023
/dev/loop7         2038   2038        0  100% /snap/snap-store/959
/dev/loop6        20627  20627        0  100% /snap/gnome-42-2204/141
/dev/loop5        18307  18307        0  100% /snap/gnome-3-38-2004/143
/dev/loop9        11906  11906        0  100% /snap/core20/1828
/dev/loop16       17275  17275        0  100% /snap/snap-store/638
/dev/loop10       10944  10944        0  100% /snap/core18/2790
/dev/loop8         9760   9760        0  100% /snap/code/142
/dev/loop24         658    658        0  100% /snap/snapd/19993
/dev/loop25        4963   4963        0  100% /snap/zoom-client/208
/dev/loop23        3586   3586        0  100% /snap/zoom-client/210
/dev/loop11       11991  11991        0  100% /snap/core20/2015
/dev/loop22       76208  76208        0  100% /snap/gtk-common-themes/1535
/dev/loop18       51460  51460        0  100% /snap/vlc/3078
/dev/loop15        1063   1063        0  100% /snap/gnome-clocks/463
/dev/loop14         233    233        0  100% /snap/brave/285
/dev/loop12         233    233        0  100% /snap/brave/283
/dev/loop21       27972  27972        0  100% /snap/telegram-desktop/5088
/dev/loop20         658    658        0  100% /snap/snapd/20092
/dev/loop19       27972  27972        0  100% /snap/telegram-desktop/5133
/dev/loop17        1063   1063        0  100% /snap/gnome-clocks/461
/dev/loop13        2534   2534        0  100% /snap/cups/980
/dev/loop27       14329  14329        0  100% /snap/core22/864
/dev/loop26       18272  18272        0  100% /snap/gnome-3-38-2004/119
/dev/loop28       20559  20559        0  100% /snap/gnome-42-2204/132
/dev/nvme0n1p1        0      0        0     - /boot/efi
tmpfs           1769299     45  1769254    1% /run/user/126
tmpfs           1769299    104  1769195    1% /run/user/1000
```
#### Observations/Insights
By using this command, you can keep track of the number of inodes on your system, which can be useful for managing disk space and ensuring that you have enough inodes for your files

3. **Resource Consumption Analysis:**
To check the process consuming most RAM and CPU on our os we can use following:
```shell
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
```
Output:
```s
  PID    PPID CMD                         %MEM %CPU
   3806    3716 /snap/brave/285/opt/brave.c  2.6  2.2
   3040    2713 /usr/bin/gnome-shell         2.4  4.1
   5737    3822 /snap/brave/285/opt/brave.c  2.0  1.3
   5933    3822 /snap/brave/285/opt/brave.c  1.7  0.2
   6380    6330 /snap/code/142/usr/share/co  1.6  4.8
   3870    3817 /snap/brave/285/opt/brave.c  1.6  1.7
   2027    1959 /usr/bin/gnome-shell         1.6  0.0
   3323    2713 /snap/snap-store/959/usr/bi  1.6  0.1
   7114    6555 /snap/code/142/usr/share/co  1.5  0.5
```
#### Observations/Insights
 We need to note that high CPU or memory usage can impact the performance of the system. It might be due to a process that needs more resources than it's being allocated, etc. so this command is useful when thats the case.