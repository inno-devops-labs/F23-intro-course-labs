1. I used `df -h`
   
   Output:
   ```
   Filesystem      Size  Used Avail Use% Mounted on
    tmpfs           1.6G  2.3M  1.6G   1% /run
    /dev/nvme0n1p6  196G   54G  133G  29% /
    tmpfs           7.6G   62M  7.5G   1% /dev/shm
    tmpfs           5.0M  4.0K  5.0M   1% /run/lock
    /dev/nvme0n1p1  256M   52M  205M  21% /boot/efi
    tmpfs           1.6G  144K  1.6G   1% /run/user/1000
   ```
   
2. I used `df -i`

   Output:

   ```
   Filesystem       Inodes  IUsed    IFree IUse% Mounted on
   tmpfs           1969396   1297  1968099    1% /run
   /dev/nvme0n1p6 13107200 594553 12512647    5% /
   tmpfs           1969396    153  1969243    1% /dev/shm
   tmpfs           1969396      5  1969391    1% /run/lock
   /dev/nvme0n1p1        0      0        0     - /boot/efi
   tmpfs            393879    168   393711    1% /run/user/1000
   ```

3. I used `top`

   Output:

   ```
    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND  
   9505 anastas+  20   0   32.6g 165000  80944 S  36.5   1.0   1:23.83 yandex_+ 
   9345 anastas+  20   0 1135.2g 435992 161020 S  19.9   2.8   1:06.27 yandex_+ 
   4491 anastas+  20   0   32.8g 277716 166384 S  10.0   1.8   1:39.77 yandex_+ 
   3269 anastas+  20   0 5749788 352768 163272 S   8.3   2.2   1:20.84 gnome-s+ 
   4112 anastas+  20   0   32.6g 360576 233892 S   3.0   2.3   1:21.31 yandex_+ 
   3053 anastas+   9 -11 2558552  32084  21732 S   2.3   0.2   0:05.52 pulseau+ 
   9124 anastas+  20   0  578556  58676  45920 S   2.3   0.4   0:02.20 gnome-t+ 
   4284 anastas+  20   0  826164 117056  71468 S   1.3   0.7   0:22.66 Xwayland 
    321 root     -51   0       0      0      0 S   0.7   0.0   0:04.71 irq/70-+ 
   6154 anastas+  20   0   32.9g  67556  55384 S   0.7   0.4   0:01.76 yandex_+ 
   9047 root      20   0       0      0      0 D   0.7   0.0   0:01.28 kworker+ 
   1264 root      -2   0       0      0      0 S   0.3   0.0   0:02.85 gfx      
      1 root      20   0  167060  12380   8352 S   0.0   0.1   0:01.41 systemd
   ```

   `%MEM` shows percentage of RAM usage. Moreover I find alternative command `htop`. 
