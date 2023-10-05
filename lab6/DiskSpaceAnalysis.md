# Task 1

## Disk Space analysis

I have Windows operating system, therefore in command prompt I utilized the following command:
```
>dir C:\

29.08.2022  17:42    <DIR>          Anaconda3
28.09.2023  14:26    <DIR>          Intel
07.12.2019  12:14    <DIR>          PerfLogs
01.09.2023  00:12    <DIR>          Program Files
01.09.2023  00:10    <DIR>          Program Files (x86)
11.11.2022  14:37    <DIR>          Users
17.09.2023  23:45    <DIR>          Windows
               0 files              0 byte
               7 folders  281 331 191 808 byte is free
```
We see that on C disk 281 331 191 808 byte (262,02 GB) is available.
With the same command we could check the space on D disk.

If we don't want to use `cmd`, we could use `bash` to check the disks spaces with the command `df -h`.

## Inodes Analysis

Windows does not use the concept of inodes like Unix-like operating systems. 
In Windows, file and directory management is handled differently, and there is no direct equivalent to inodes. 
Windows uses a different file system architecture, primarily NTFS (New Technology File System).
In NTFS file metadata is stored in the Master File Table (MFT) records,  which is the analog of inode in Windows.

We can use the `fsutil` command in command prompt to retrieve some information about the file system:
```
>fsutil volume diskfree C:
Total free bites       : 281 287 245 824 (262,0 ГБ)
Total bites             : 498 826 747 904 (464,6 ГБ)
Total free quota bytes  : 281 287 245 824 (262,0 ГБ)
```
We see that output includes the information about the total free space, the total allocated space, and the total reserved space on the volume.
However, it won't provide inode-like information.

## Resource Consumption Analysis

### CPU

To check the top process consuming the most CPU I used the following command in PowerShell:
```
>Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 5
Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   1149     149   289384     248592     388,94  15924   5 Discord
   2241      79   219276     245488     318,66   1336   5 browser
   1781      65   214660     276860     272,52   9692   5 chrome
   1347     468    14456      29876     192,56  34468   5 SynTPEnh
    904      62    54092      87888     167,55  29428   5 Reverso

```

### RAM

To check the top process consuming the most RAM I used the following command in PowerShell:

```
>Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5
Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
      0       0     2388     720268              3668   0 Memory Compression
   1934      70   204104     272992     378,31   9692   5 chrome
   1153     150   290364     254020     462,78  15924   5 Discord
   2239      78   223632     243672     372,69   1336   5 browser
    628      27   222140     217508      77,61  34324   5 jetbrains-toolbox
```

Also we could check RAM and CPU using Task Manager.

Observations: We see that the Memory Compression feature uses the most RAM. However, yandex browser, discord and chrome are also programs 
consuming more CPU and RAM in comparison with other programs. 