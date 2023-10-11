## Task 1: VM Deployment
### Install VirtualBox:

- I downloaded VirtualBox from [Oracle website](https://www.oracle.com/cis/virtualization/technologies/vm/downloads/virtualbox-downloads.html)
- Version: 7.0.10.

### Deploy a Virtual Machine:

- I found an Ubuntu 20.04 image on my computer
- Launched VirtualBox and created a virtual machine based on this image
- Basic settings:</br> 1. Base Memory: 4 GiB</br> 2. Processor(s): 4</br> 3. Enable EFI: False
- Created a Virtual Hard Disk with 30 GiB size
- Waited for the installation process
- Made a screenshot and added it to repo in lab5 folder. File: [Installed.png](https://github.com/AmZakirov/intro-course-labs/blob/Lab7/lab7/Installed.png)

## Task 2: System Information Tools

### Task 2.1: CPU, RAM and network info:

<b>Tool: </b> *hwinfo* is a command line utility for collecting information about hardware components and their status on a computer. It can provide detailed information about the processor, memory, motherboard, hard drives, video cards, network adapters and other devices.
- CPU info:</br>
<b>Full log:</b> [link](https://drive.google.com/file/d/1gFY8GNywI8Mr0BGNO_1dGJJpUIcXJioT/view?usp=sharing)</br>
<b>Command:</b>: sudo hwinfo --cpu</br>
  ```
  01: None 00.0: 10103 CPU                                        
    [Created at cpu.465]
    Unique ID: rdCR.j8NaKXDZtZ6
    Hardware Class: cpu
    Arch: X86-64
    Vendor: "AuthenticAMD"
    Model: 25.80.0 "AMD Ryzen 7 5800H with Radeon Graphics"
    ...
  ```
  ETC...

- RAM info:</br>
<b>Full log:</b> [link](https://drive.google.com/file/d/1P6pIQr-Z-S74ZQun9X4moaKCoDHguqp3/view?usp=sharing)</br>
<b>Command:</b>: sudo hwinfo --memory</br>
  ```
  01: None 00.0: 10102 Main Memory                                
  [Created at memory.74]
  Unique ID: rdCR.CxwsZFjVASF
  Hardware Class: memory
  Model: "Main Memory"
  Memory Range: 0x00000000-0xee79dfff (rw)
  Memory Size: 3 GB + 768 MB
  Config Status: cfg=new, avail=yes, need=no, active=unknown
  ```

- Netwok info:</br>
<b>Full log:</b> [link](https://drive.google.com/file/d/1bVWA99QqKa_6B7Uq-MKiwtPtbL-39gqm/view?usp=sharing)</br>
<b>Command:</b>: sudo hwinfo --network</br>
  ```
  15: None 00.0: 10701 Ethernet                                   
  [Created at net.126]
  Unique ID: wbsj.ndpeucax6V1
  Parent ID: Fybr.GkSpXDNdaaB
  SysFS ID: /class/net/enp0s3
  SysFS Device Link: /devices/pci0000:00/0000:00:03.0
  Hardware Class: network interface
  Model: "Ethernet network interface"
  Driver: "e1000"
  Driver Modules: "e1000"
  Device File: enp0s3
  HW Address: 08:00:27:6f:9d:3d
  Permanent HW Address: 08:00:27:6f:9d:3d
  Link detected: yes
  Config Status: cfg=new, avail=yes, need=no, active=unknown
  Attached to: #6 (Ethernet controller)
  ...
  ```
  ETC...
  
### Task 2.2: Operating System Specifications:

<b>Tool: </b> *Neofetch* is a command line tool that allows you to display information about your system and hardware in the form of a beautiful banner or logo. It can display information about the operating system, kernel, processor, memory, graphics card, screen resolution and other components.</br>
<b>Command:</b>: neofetch</br>
 ```
            .-/+oossssoo+/-.               root@Amir 
        `:+ssssssssssssssssss+:`           --------- 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 20.04.6 LTS x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: VirtualBox 1.2 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 5.15.0-86-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 29 mins 
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1644 (dpkg), 7 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: bash 5.0.17 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 800x600 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   Terminal: gnome-terminal 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   CPU: AMD Ryzen 7 5800H with Radeon  
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   GPU: 00:02.0 VMware SVGA II Adapter 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Memory: 1241MiB / 3815MiB 
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/
  +sssssssssdmydMMMMMMMMddddyssssssss+                             
   /ssssssssssshdmNNNNmyNMMMMhssssss/                              
    .ossssssssssssssssssdMMMNysssso.
      -+sssssssssssssssssyyyssss+-
        `:+ssssssssssssssssss+:`
            .-/+oossssoo+/-.
 ```

