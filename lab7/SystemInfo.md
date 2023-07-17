#  System Information Tools

### Processor, RAM, and Network Information
- Processor Informaion
To display processor information we can use the below command
```
sudo lshw -class processor
```
- RAM
 To display RAM information we can use the below command, It will provide with information like Type, size and speed.
```
sudo lshw -class memory
```
- Network Information
To display network information, use the following command. It will show details about your network interfaces, including the network cards, drivers, and configurations.

```
sudo lshw -class network
```

### Operating System Specifications
To display the operating system specifications we can install "neofetch" by using below command.
```
sudo apt install neofetch
```
To display all the information regarding operating system just run the below command.
```
neofetch
```

### Output
All outputs screenshots for above commands are in same directory. 