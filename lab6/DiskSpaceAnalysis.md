# Lab6 (Amirlan Sharipov)

## Disk Space
Use df command with human-readable (Megabytes, etc) output.

### Command:
```
df -h
```

### Output:
```
Filesystem      Size  Used Avail Use% Mounted on
dev             7.3G     0  7.3G   0% /dev
run             7.3G  1.6M  7.3G   1% /run
/dev/sdb3        64G   44G   17G  73% /
tmpfs           7.3G  1.1M  7.3G   1% /dev/shm
tmpfs           7.3G   12K  7.3G   1% /tmp
/dev/sdb4        95G   79G   12G  88% /home
/dev/sdb6       780M  129M  652M  17% /boot
/dev/sda9       523G  428G   68G  87% /mnt/data
/dev/sda8       315G  255G   61G  81% /mnt/rec
/dev/sdb2       250G  190G   61G  76% /mnt/win
tmpfs           1.5G   40K  1.5G   1% /run/user/1000
```

## Inodes

### Command:
```
df -hi
```

### Output:
```
Filesystem     Inodes IUsed IFree IUse% Mounted on
dev              1.9M   747  1.9M    1% /dev
run              1.9M  1.4K  1.9M    1% /run
/dev/sdb3        4.1M  1.1M  3.1M   26% /
tmpfs            1.9M     3  1.9M    1% /dev/shm
tmpfs            1.0M    24  1.0M    1% /tmp
/dev/sdb4        6.1M  863K  5.3M   14% /home
/dev/sdb6           0     0     0     - /boot
/dev/sda9         34M   16K   34M    1% /mnt/data
/dev/sda8         61M  132K   61M    1% /mnt/rec
/dev/sdb2         62M  524K   61M    1% /mnt/win
tmpfs            373K    74  373K    1% /run/user/1000
```

## Resource Consumption

### Command
```
ps aux | sort -rnk 3 | head -1
```

### Output
```
rinri       8495 15.7  3.2 3488252 497676 ?      Ssl  11:51   1:24 /usr/lib/librewolf/librewolf
```

### Comment
ps - prints the processes with data like CPU or memory consumption.
sort - sorts with reverse order, numeric sort, 3rd column.
head - prints only the first line
We can change sort command to sort by memory consumption instead by specifying the 4th column.
