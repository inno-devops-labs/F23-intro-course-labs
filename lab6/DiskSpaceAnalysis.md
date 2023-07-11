## Analyze Disk Space

```shell
wmic logicaldisk get deviceid, freespace, size
```

DeviceID  FreeSpace     Size
C:        131330465792  510140944384

## Inodes Analysis

Windows does not have the concept of inodes like Linux and macOS. Instead, it uses a different file system structure (NTFS) that doesn't expose inode information in the same way. However, you can use tools like PowerShell to gather information about files and directories, but it won't provide a direct count of inodes.

## Resource Consumption Analysis

### RAM
```shell
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 1
```

```shell
Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   1092      57   630904     484852         48  12996   1 Telegram

```

### CPU
```shell
Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 1
```

```shell
Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
    972      27   165916     228540        684   1688   1 browser

```