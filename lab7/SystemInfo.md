# VM Ubuntu System Information

## Install lshw
```bash
sudo apt-get install lshw
```

![Neofetch](./neofetch.png)

## Display Processor Information
```bash
sudo lshw -C cpu
```

![CPU](./cpu.png)

## Display RAM Information
```bash
sudo lshw -C memory
```

![RAM](./ram.png)

## Display Network Information
```bash
sudo lshw -C network
```

![Network](./network.png)

## Display Operating System Specifications
```bash
lsb_release -a
```

![Release](./release.png)
