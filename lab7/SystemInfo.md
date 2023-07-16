# Virtualization Lab

```
DevOps Toolchain Category: Virtualizatino tools
```

## System Information Tools :

### Processor, RAM, and Network Information :

To display processor, RAM, and network information on Ubuntu Server using the command line, you can use various commands. Here are some commonly used commands for each category:

Processor Information:

- To display general processor information, including model, architecture, and CPU cores:

```sh
 lscpu
```

RAM (Memory) Information:

- To view information about available memory, including total, used, and free memory:

```sh
  free -h
```

- To get more detailed information about memory usage, including usage by individual processes:

```sh
  top
```

Network Information:

- To view network interfaces and their IP addresses:

```sh
  ip addr show
```

- To display active network connections and listening ports:

```sh
  netstat -tuln
```

### Operating System Specifications:

To display OS information on Ubuntu server, we can use the command

```sh
    lsb_release -a
```
