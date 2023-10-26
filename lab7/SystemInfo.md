# System Information Documentation

This document provides a summary of the various command-line tools used to gather system information from the Ubuntu Virtual Machine.

## Processor Information

### lscpu
- The `lscpu` command displays information about the CPU architecture.
- Command used: `lscpu`

![lscpu](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/08fcb1e7-fdd1-4d84-b30a-48027e941a49)


## Hardware Information

### lshw
- The `lshw` command lists hardware information including, but not limited to, memory configuration, firmware, CPU, and disk details.
- Command used: `lshw`

![lh](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/66ca6183-bc3e-4446-9f7d-f2b4ac02a437)


## Memory Information

### free -h
- The `free` command displays the amount of free and used memory in the system.
- The `-h` flag makes the output human-readable by displaying sizes in human-readable format (e.g., KB, MB).
- Command used: `free -h`

![free](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/04fa53a8-77b6-4a1e-9479-254e26a79a0f)


## Operating System Specifications

### lsb_release -a
- The `lsb_release` command displays certain LSB (Linux Standard Base) and distribution-specific information.
- The `-a` flag displays all available information.
- Command used: `lsb_release -a`

![LSB](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/f7f97f96-a916-41ba-9382-7595eda7442d)

### uname -a
- The `uname` command displays system information including the kernel name, version, and other details.
- The `-a` flag displays all available information.
- Command used: `uname -a`

![sys](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/3598179a-032d-4ab6-b673-d09d7b92df3d)

## Network Information

### Installation of Net Tools
- Installed network tools using the command: `apt install net-tools`

![installing net](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/76bdbf57-d9df-4edf-95b7-19b1d11c19cc)

### ifconfig
- The `ifconfig` command, part of the net-tools package, displays network interface configuration and allows you to configure them.
- Command used: `ifconfig`

![ifc](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/857a1e5c-6a85-4fcf-a6fb-a716f12c6e35)

### ip a
- The `ip` command is a modern replacement for `ifconfig` and provides more features and options.
- The `a` flag lists all network interfaces.
- Command used: `ip a`

![ipa](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/099119e6-7477-4df5-8b42-80fe2055602d)
