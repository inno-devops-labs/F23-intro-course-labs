# Operating System Analysis

### Disk Space Analysis:

To check the available disk space on the operating system, you can use the "df" command. Run the following command in the terminal:

```
df -h
```

This command will display the available disk space in a human-readable format. The "-h" flag is used to show the sizes in a more understandable format (e.g., "10G" instead of bytes).

### Inodes Analysis:

To check the number of inodes on your operating system, you can use the "df" command with the "-i" flag. Run the following command in the terminal:

```
df -i
```

This command will display the number of inodes for each file system in the system.

### Resource Consumption Analysis:

To identify the process consuming the most RAM and CPU on your operating system, you can use the "top" command. Run the following command in the terminal:

```
top
```

This command will display a live view of the processes running on your system, sorted by CPU usage by default. Press "Shift + M" to sort by memory usage instead. The topmost process will indicate the one consuming the most resources.

