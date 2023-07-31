# Operating System Analysis

1. Analyze Disk Space

    To check available disk space, I use the `df` command:

    ```bash
    df -h
    ```

    Output

    ```bash
    Filesystem       Size   Used  Avail Capacity iused      ifree %iused  Mounted on
    /dev/disk3s1s1  460Gi  9.0Gi  307Gi     3%  355384 3217975880    0%   /
    devfs           198Ki  198Ki    0Bi   100%     684          0  100%   /dev
    /dev/disk3s6    460Gi  5.0Gi  307Gi     2%       5 3217975880    0%   /System/Volumes/VM
    /dev/disk3s2    460Gi  9.0Gi  307Gi     3%    1099 3217975880    0%   /System/Volumes/Preboot
    /dev/disk3s4    460Gi  592Mi  307Gi     1%     302 3217975880    0%   /System/Volumes/Update
    /dev/disk1s2    500Mi  6.0Mi  481Mi     2%       1    4924080    0%   /System/Volumes/xarts
    /dev/disk1s1    500Mi  6.2Mi  481Mi     2%      32    4924080    0%   /System/Volumes/iSCPreboot
    /dev/disk1s3    500Mi  2.2Mi  481Mi     1%      62    4924080    0%   /System/Volumes/Hardware
    /dev/disk3s5    460Gi  128Gi  307Gi    30% 2766651 3217975880    0%   /System/Volumes/Data
    map auto_home     0Bi    0Bi    0Bi   100%       0          0  100%   /System/Volumes/Data/home
    /dev/disk2s1    5.0Gi  1.5Gi  3.5Gi    30%      62   37024560    0%   /System/Volumes/Update/SFR/mnt1
    /dev/disk3s1    460Gi  9.0Gi  307Gi     3%  355384 3217975880    0%   /System/Volumes/Update/mnt1
    ```

2. Inodes Analysis

    To check inodes, I laso use `df` command:

    ```bash
    df -i
    ```

    Output

    ```bash
    Filesystem     512-blocks      Used Available Capacity iused      ifree %iused  Mounted on
    /dev/disk3s1s1  965595304  18779176 643559000     3%  355384 3217795000    0%   /
    devfs                 395       395         0   100%     684          0  100%   /dev
    /dev/disk3s6    965595304  10485832 643559000     2%       5 3217795000    0%   /System/Volumes/VM
    /dev/disk3s2    965595304  18876936 643559000     3%    1099 3217795000    0%   /System/Volumes/Preboot
    /dev/disk3s4    965595304   1212992 643559000     1%     302 3217795000    0%   /System/Volumes/Update
    /dev/disk1s2      1024000     12328    984816     2%       1    4924080    0%   /System/Volumes/xarts
    /dev/disk1s1      1024000     12680    984816     2%      32    4924080    0%   /System/Volumes/iSCPreboot
    /dev/disk1s3      1024000      4456    984816     1%      62    4924080    0%   /System/Volumes/Hardware
    /dev/disk3s5    965595304 269257448 643559000    30% 2766827 3217795000    0%   /System/Volumes/Data
    map auto_home           0         0         0   100%       0          0  100%   /System/Volumes/Data/home
    /dev/disk2s1     10485672   3041808   7404912    30%      62   37024560    0%   /System/Volumes/Update/SFR/mnt1
    /dev/disk3s1    965595304  18779176 643559000     3%  355384 3217795000    0%   /System/Volumes/Update/mnt1
    ```

3. Resource Consumption Analysis

    To check RAM and CPU usage by process, I usually use `top`:

    ```bash
    top -o MEM -o CPU
    ```

    Output (just top part of output)

    ```bash
    Processes: 460 total, 2 running, 458 sleeping, 3961 threads                                      21:18:48
    Load Avg: 1.74, 2.60, 2.67  CPU usage: 5.85% user, 5.67% sys, 88.46% idle
    SharedLibs: 507M resident, 97M data, 31M linkedit.
    MemRegions: 1048953 total, 3006M resident, 122M private, 1886M shared.
    PhysMem: 15G used (1954M wired, 7211M compressor), 251M unused.
    VM: 262T vsize, 4283M framework vsize, 151499(4) swapins, 411804(0) swapouts.
    Networks: packets: 6495980/7656M in, 2106642/844M out. Disks: 7894682/121G read, 3660427/60G written.
    ```

    This shows the MDS process (Metadata server for Filesystem) consuming the most CPU and 'top' process itself consuming the most memory. No unexpected processes consuming excessive resources.
