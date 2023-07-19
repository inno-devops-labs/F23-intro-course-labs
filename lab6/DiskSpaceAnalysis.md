# Operating System Analysis

## Disk Space
To check disk space on Fedora Linux Distribution, we can run following command
```bash
df -h
```

### Result
![Disk Space](./disk_space.png)

## Inodes Analysis
To check number of inodes on Fedora Linux Distribution, we can run following command
```bash
df -i
```

### Result
![Inodes](./inodes.png)

## Resource Consumption
To identify processes consuming the most RAM, we can run following command
```bash
top -o %MEM
```

### Result
![Mem](./top_mem.png)

To identify processes consuming the most CPU, we can run following command
```bash
top -o %CPU
```

### Result
![CPU](./top_cpu.png)
