## To analyze disk space on your operating system, you can use the df command.

Open a terminal and run the following command: df -h

## To document the command used and provide the output in a Markdown file named "DiskSpaceAnalysis.md" in the lab folder, you can follow these steps:

1. Open the terminal.
2. Navigate to the lab folder using the cd command.
3. Run the df -h command and redirect the output to a file named "DiskSpaceAnalysis.md" using the > operator.

## Here's an example of how you can do this:
cd lab6
df -h > DiskSpaceAnalysis.md


| Filesystem  | Size| Used| Avail | Use% | Mounted on |
| -------- | -------- | -------- | -------- | -------- | -------- |
| tmpfs | 1.2G | 2.0M |  1.2G | 1% | /run |
| /dev/sda2  | 234G | 112G | 110G | 51% | / |
| tmpfs | 5.8G |  206M | 5.6G | 4%  | /dev/shm |
| tmpfs  | 5.0M | 4.0K | 5.0M | 1% | /run/lock |
| tmpfs  | 5.8G |0  | 5.8G | 0% | /run/qemu |
| /dev/sda1 | 511M |  6.1M | 505M | 2% | /boot/efi|




## To check the number of inodes on your operating system, you can use the df -i command.

## To document the command used and provide the output in the same "DiskSpaceAnalysis.md" file, you can follow these steps:

1. Open the terminal.
2. Navigate to the lab folder using the cd command.
3. Run the df -i command and append the output to the "DiskSpaceAnalysis.md" file using the >> operator.

## Here's an example of how you can do this:
cd lab6
df -i >> DiskSpaceAnalysis.md

Filesystem       Inodes   IUsed    IFree IUse% Mounted on
tmpfs           1515041    1348  1513693    1% /run
/dev/sda2      15597568 2016133 13581435   13% /
tmpfs           1515041     869  1514172    1% /dev/shm
tmpfs           1515041       7  1515034    1% /run/lock
tmpfs           1515041       1  1515040    1% /run/qemu
/dev/sda1             0       0        0     - /boot/efi
tmpfs            303008     132   302876    1% /run/user/1000

| Filesystem  | Inodes | IUsed|  IFree| IUse% | Mounted on |
| -------- | -------- | -------- | -------- | -------- | -------- |
| tmpfs | 1515041  | 1348 |  1513693 | 1% | /run |
| /dev/sda2  | 15597568 | 2016133 | 13581435 | 13% | / |
| tmpfs | 1515041 |  869 | 1515034 | 1%  | /dev/shm |
| tmpfs  | 1515041  | 1 | 1515040 | 1% | /run/lock |
| tmpfs  | 5.8G |0  | 5.8G | 1% | /run/qemu |
| /dev/sda1 | 0 |  0 | 0 | - | /boot/efi|


## To identify the process consuming the most RAM and CPU on your operating system, you can use the top command.

## To document the command used and provide the output in the same "DiskSpaceAnalysis.md" file, you can follow these steps:

1. Open the terminal.
2. Navigate to the lab folder using the cd command.
3. Run the top command and append the output to the "DiskSpaceAnalysis.md" file using the >> operator.

## Here's an example of how you can do this:
cd lab6
top -n 1 -o %MEM >> DiskSpaceAnalysis.md

top - 23:43:25 up 15 days, 21:18,  1 user,  load average: 1.24, 1.06, 1.70
Tasks: 327 total,   1 running, 324 sleeping,   0 stopped,   2 zombie
%Cpu(s): 23.3 us,  7.0 sy,  0.0 ni, 69.8 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :  11836.3 total,    856.4 free,   6961.5 used,   4018.4 buff/cache
MiB Swap:   2048.0 total,    107.2 free,   1940.8 used.   2994.6 avail Mem 
top - 23:46:02 up 15 days, 21:21,  1 user,  load average: 1.58, 1.22, 1.65
Tasks: 324 total,   2 running, 320 sleeping,   0 stopped,   2 zombie
%Cpu(s): 24.7 us, 11.0 sy,  0.0 ni, 64.4 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :  11836.3 total,    841.0 free,   6987.0 used,   4008.3 buff/cache
MiB Swap:   2048.0 total,    107.2 free,   1940.8 used.   2981.8 avail Mem 

|  PID | USER  | PR  | NI | VIRT| RES | SHR |  S | %CPU | %MEM | TIME+ | COMMAND |
| -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | --------- | --------- | --------- |
| 2532 | pencil | 20 | 0 | 12.8g | 499516 | 105816 | S | 0.0| 4.1 | 1284:14| firefox |
| 169378 | pencil | 20 | 0 |  2891484 | 389920 | 72704 | S | 0.0| 3.2 | 8:23.76| Isolated Web Co|
| 5377 | pencil | 20 | 0 |   32.8g | 367956| 163704 | S | 0.0| 3.0 | 223:52.78| chrome |
| 151515 | pencil | 20 | 0 |   3283700 | 366416| 66208 | S | 0.0| 3.0 | 9:53.87|Isolated Web Co  |
| 3713911 | pencil | 20 | 0 |   3157588 | 361532| 66204 | S | 0.0| 3.0 |  3:51.55|Isolated Web Co  |
| 850064 | pencil | 20 | 0 |   1137.0g | 332680| 113576 | S | 0.0| 2.7 |  19:09.66|chrome   |
| 96184 | pencil | 20 | 0 |  3267452 |330144| 44244 | S | 0.0| 2.7 |  28:49.96|Isolated Web Co  |