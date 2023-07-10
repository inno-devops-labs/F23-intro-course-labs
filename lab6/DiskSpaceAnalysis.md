# Task 1: Operating System Analysis

## Analyze Disk Space

- Open File Explorer
- Right-click on the drive you want to check and select "Properties"
- The properties window will display the available and used disk space.

### Alternatively, you can also use the command prompt or PowerShell:

- Open the command prompt or PowerShell (press Windows key + R, type "cmd" or "powershell," and press Enter).
- In the command prompt or PowerShell, type the following command and press Enter:
   ```
   wmic logicaldisk get caption, freespace, size
   ```
This command will display the available and total disk space for all drives.

## Inodes Analysis

Open a terminal and use the following command:

```
df -i
```

## Resource Consumption Analysis

For Windows:

- Press Ctrl + Shift + Esc to open the Task Manager.
- In the Task Manager window, click on the "Processes" or "Details" tab.
- Click on the "Memory" column header to sort the processes by memory usage. The process at the top will be consuming the most RAM.
- Click on the "CPU" column header to sort the processes by CPU usage. The process at the top will be consuming the most CPU.
