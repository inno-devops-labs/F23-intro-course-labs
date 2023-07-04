# Operating System Analysis

## 1. Analyze Disk Space:
To check the available disk space on Ubuntu, I use the df command:
```bash
df -h
```
The **-h** option is used to display the output in human-readable format.

## 2. Inodes Analysis
To check the number of inodes on Ubuntu, I use the df command with the -i option:
```bash
df -i
```
The **-i** option is used to display the output inodes information.

## 3. Resource Consumption Analysis
To identify the process consuming the most RAM and CPU on Ubuntu, I use the top command:
```bash
top
```
The top command displays the top processes on the system and their resource consumption.
This will display real-time information about processes and resource consumption. The process using the highest CPU and RAM will be listed at the top.

To sort the processes by CPU usage, press **Shift + P**. To sort by memory usage, press **Shift + M**. Take note of the process consuming the most resources.

