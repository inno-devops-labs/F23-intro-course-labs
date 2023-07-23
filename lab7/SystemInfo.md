# Task 1: VM Deployment
---
### Version Number
I have installed VirtualBox with `sudo apt install virtualbox-qt` command.
The version number is 7.0.8_Ubuntu r156879

### VM deployment steps
1. Press ctrl+N to open a dialog window;
2. Enter the name for your new virtual machine. If you start writing something like 'Ubuntu', the machine type and version will be selected automatically. Press Next;
3. Choose hardware's base memory and the processor count. I chose the default 2048 MB of memory and 1 CPU core. Press Next;
4. Choose disk size for the virtual machine. I chose 1 GB. Press Next;
5. Check out the summary of installation. Press Finish.


# Task 2: System Information Tools
---
### Processor 
`lscpu`
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Byte Order:                      Little Endian
Address sizes:                   39 bits physical, 48 bits virtual
CPU(s):                          1
On-line CPU(s) list:             0
Thread(s) per core:              1
Core(s) per socket:              1
Socket(s):                       1
NUMA node(s):                    1
Vendor ID:                       GenuineIntel
CPU family:                      6
Model:                           140
Model name:                      11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
Stepping:                        1
CPU MHz:                         2419.200
BogoMIPS:                        4838.40
Hypervisor vendor:               KVM
Virtualization type:             full
L1d cache:                       48 KiB
L1i cache:                       32 KiB
L2 cache:                        1.3 MiB
L3 cache:                        8 MiB
NUMA node0 CPU(s):               0
Vulnerability Itlb multihit:     KVM: Vulnerable
Vulnerability L1tf:              Mitigation; PTE Inversion
Vulnerability Mds:               Mitigation; Clear CPU buffers; SMT Host state unknown
Vulnerability Meltdown:          Mitigation; PTI
Vulnerability Spec store bypass: Vulnerable
Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:        Mitigation; Retpolines, STIBP disabled, RSB filling
Vulnerability Srbds:             Not affected
Vulnerability Tsx async abort:   Not affected
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq pni pclmulqdq monitor ssse3 cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 avx2 bmi2 invpcid rdseed clflushopt md_clear flush_l1d arch_capabilities

### RAM
`free -m`
              total        used        free      shared  buff/cache   available
Mem:           1983         656          95         206        1231         950
Swap:             0           0           0

### Network
`sudo lshw -class network`
  *-network
       description: Ethernet interface
       product: 82540EM Gigabit Ethernet Controller
       vendor: Intel Corporation
       physical id: 3
       bus info: pci@0000:00:03.0
       logical name: enp0s3
       version: 02
       serial: 08:00:27:f1:ea:d5
       size: 1Gbit/s
       capacity: 1Gbit/s
       width: 32 bits
       clock: 66MHz
       capabilities: pm pcix bus_master cap_list ethernet physical tp 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=e1000 driverversion=7.3.21-k8-NAPI duplex=full ip=10.0.2.15 latency=64 link=yes mingnt=255 multicast=yes port=twisted pair speed=1Gbit/s
       resources: irq:19 memory:f0200000-f021ffff ioport:d020(size=8)
       
### OS Specifications
`inxi -F -x`
System:
  Host: qwerty Kernel: 5.4.0-113-generic x86_64 bits: 64 compiler: gcc 
  v: 9.4.0 Desktop: LXDE 0.10.0 Distro: LXLE 
  base: Ubuntu 20.04.4 LTS (Focal Fossa) 
Machine:
  Type: Virtualbox System: innotek product: VirtualBox v: 1.2 
  serial: <superuser/root required> 
  Mobo: Oracle model: VirtualBox v: 1.2 serial: <superuser/root required> 
  BIOS: innotek v: VirtualBox date: 12/01/2006 
Battery:
  ID-1: BAT0 charge: 50.0 Wh condition: 50.0/50.0 Wh (100%) model: innotek 1 
  status: Full 
CPU:
  Topology: Single Core model: 11th Gen Intel Core i5-1135G7 bits: 64 
  type: MCP arch: Tiger Lake rev: 1 L2 cache: 8192 KiB 
  flags: avx avx2 lm nx pae sse sse2 sse3 sse4_1 sse4_2 ssse3 bogomips: 4838 
  Speed: 2419 MHz min/max: N/A Core speed (MHz): 1: 2419 
Graphics:
  Device-1: VMware SVGA II Adapter driver: vmwgfx v: 2.15.0.0 
  bus ID: 00:02.0 
  Display: x11 server: X.Org 1.20.13 driver: vmware 
  unloaded: fbdev,modesetting,vesa resolution: 800x600~60Hz 
  OpenGL: renderer: llvmpipe (LLVM 12.0.0 256 bits) v: 4.5 Mesa 21.2.6 
  direct render: Yes 
Audio:
  Device-1: Intel 82801AA AC97 Audio vendor: Dell driver: snd_intel8x0 
  v: kernel bus ID: 00:05.0 
  Sound Server: ALSA v: k5.4.0-113-generic 
Network:
  Device-1: Intel 82540EM Gigabit Ethernet driver: e1000 v: 7.3.21-k8-NAPI 
  port: d020 bus ID: 00:03.0 
  IF: enp0s3 state: up speed: 1000 Mbps duplex: full mac: 08:00:27:f1:ea:d5 
  Device-2: Intel 82371AB/EB/MB PIIX4 ACPI type: network bridge 
  driver: piix4_smbus v: N/A port: d200 bus ID: 00:07.0 
Drives:
  Local Storage: total: 1024.0 MiB used: 186.6 MiB (18.2%) 
  ID-1: /dev/sda vendor: VirtualBox model: VBOX HARDDISK size: 1024.0 MiB 
Partition:
  ID-1: / size: 991.7 MiB used: 186.6 MiB (18.8%) fs: overlay 
  source: ERR-102 
Sensors:
  Message: No sensors data was found. Is sensors configured? 
Info:
  Processes: 136 Uptime: 1h 12m Memory: 1.94 GiB used: 845.0 MiB (42.6%) 
  Init: systemd runlevel: 5 Compilers: gcc: N/A Shell: bash v: 5.1.8 
  inxi: 3.0.38 