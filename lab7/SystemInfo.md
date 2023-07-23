## Processor, RAM, and Network Information
### CPU specs:
Command:
```
$ lscpu
```
Output:
```
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  2
  On-line CPU(s) list:   0,1
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i7-4710HQ CPU @ 2.50GHz
    CPU family:          6
    Model:               60
    Thread(s) per core:  1
    Core(s) per socket:  2
    Socket(s):           1
    Stepping:            3
    BogoMIPS:            4988.44
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mc
                         a cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall n
                         x rdtscp lm constant_tsc rep_good nopl xtopology nonsto
                         p_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 cx16 pci
                         d sse4_1 sse4_2 movbe popcnt aes rdrand hypervisor lahf
                         _lm abm invpcid_single pti fsgsbase bmi1 bmi2 invpcid m
                         d_clear flush_l1d arch_capabilities
Virtualization features: 
  Hypervisor vendor:     KVM
  Virtualization type:   full
Caches (sum of all):     
  L1d:                   64 KiB (2 instances)
  L1i:                   64 KiB (2 instances)
  L2:                    512 KiB (2 instances)
  L3:                    12 MiB (2 instances)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0,1
Vulnerabilities:         
  Itlb multihit:         KVM: Mitigation: VMX unsupported
  L1tf:                  Mitigation; PTE Inversion
  Mds:                   Mitigation; Clear CPU buffers; SMT Host state unknown
  Meltdown:              Mitigation; PTI
  Mmio stale data:       Unknown: No mitigations
  Retbleed:              Not affected
  Spec store bypass:     Vulnerable
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:            Mitigation; Retpolines, STIBP disabled, RSB filling, PB
                         RSB-eIBRS Not affected
  Srbds:                 Unknown: Dependent on hypervisor status
  Tsx async abort:       Not affected    
```

### Memory specs:
Command:
```
$ free
```
Output:
```
               total        used        free      shared  buff/cache   available
Mem:         4005360      758704     2396724       38612      849932     2989444
Swap:        1751036           0     1751036
```

### Network data:
Command:
```
$ ifconfig
```
Output:
```
enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::f908:bb27:a07d:a97d  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:e7:0d:1f  txqueuelen 1000  (Ethernet)
        RX packets 183  bytes 218174 (218.1 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 144  bytes 14109 (14.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 204  bytes 15959 (15.9 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 204  bytes 15959 (15.9 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```
## Operating System Specifications
Command:
```
$ neofetch
```
Output:
```
            .-/+oossssoo+/-.               demid@a-thing 
        `:+ssssssssssssssssss+:`           ------------- 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 22.04.2 LTS x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: VirtualBox 1.2 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 5.19.0-46-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 10 mins 
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1599 (dpkg), 9 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: bash 5.1.16 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 1920x977 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   DE: GNOME 42.5 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   WM: Mutter 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   WM Theme: Adwaita 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Theme: Yaru [GTK2/3] 
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/    Icons: Yaru [GTK2/3] 
  +sssssssssdmydMMMMMMMMddddyssssssss+     Terminal: gnome-terminal 
   /ssssssssssshdmNNNNmyNMMMMhssssss/      CPU: Intel i7-4710HQ (2) @ 2.494GHz 
    .ossssssssssssssssssdMMMNysssso.       GPU: 00:02.0 VMware SVGA II Adapter 
      -+sssssssssssssssssyyyssss+-         Memory: 791MiB / 3911MiB 
        `:+ssssssssssssssssss+:`
            .-/+oossssoo+/-.                                       
                                                                             
```


