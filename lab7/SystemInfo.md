## Processor information

Command:

lscpu

Output:
```
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  2
  On-line CPU(s) list:   0,1
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i3-10110U CPU @ 2.10GHz
    CPU family:          6
    Model:               142
    Thread(s) per core:  1
    Core(s) per socket:  2
    Socket(s):           1
    Stepping:            12
    BogoMIPS:            5184.00
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mc
                         a cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall n
                         x rdtscp lm constant_tsc rep_good nopl xtopology nonsto
                         p_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 cx16 pci
                         d sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx rdran
                         d hypervisor lahf_lm abm 3dnowprefetch invpcid_single f
                         sgsbase avx2 invpcid rdseed clflushopt md_clear flush_l
                         1d arch_capabilities
Virtualization features: 
  Hypervisor vendor:     KVM
  Virtualization type:   full
Caches (sum of all):     
  L1d:                   64 KiB (2 instances)
  L1i:                   64 KiB (2 instances)
  L2:                    512 KiB (2 instances)
  L3:                    8 MiB (2 instances)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0,1
Vulnerabilities:         
  Itlb multihit:         KVM: Mitigation: VMX unsupported
  L1tf:                  Not affected
  Mds:                   Not affected
  Meltdown:              Not affected
  Mmio stale data:       Vulnerable: Clear CPU buffers attempted, no microcode; 
                         SMT Host state unknown
  Retbleed:              Vulnerable
  Spec store bypass:     Vulnerable
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:            Mitigation; Retpolines, STIBP disabled, RSB filling, PB
                         RSB-eIBRS Not affected
  Srbds:                 Unknown: Dependent on hypervisor status
  Tsx async abort:       Not affected

```

## RAM information

Command:

free -h

Output:
```
total        used        free      shared  buff/cache   available
Mem:           3,8Gi       1,0Gi       1,0Gi        40Mi       1,8Gi       2,6Gi
Swap:          3,8Gi          0B       3,8Gi
```

## Network information (Tool: net-tools)
Command:

ifconfig

Output:
```
enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::69c8:35a1:657:2779  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:83:c0:60  txqueuelen 1000  (Ethernet)
        RX packets 15089  bytes 22062949 (22.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 3223  bytes 256162 (256.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 306  bytes 27188 (27.1 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 306  bytes 27188 (27.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```

## Operating System Specifications (Tool: neofetch)
Command:

neofetch

Output:
```
            .-/+oossssoo+/-.               rail@rail-VirtualBox 
        `:+ssssssssssssssssss+:`           -------------------- 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 22.04.1 LTS x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: VirtualBox 1.2 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 5.19.0-32-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 18 mins 
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1735 (dpkg), 12 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: bash 5.1.16 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 1920x950 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   DE: GNOME 42.2 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   WM: Mutter 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   WM Theme: Adwaita 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Theme: Yaru [GTK2/3] 
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/    Icons: Yaru [GTK2/3] 
  +sssssssssdmydMMMMMMMMddddyssssssss+     Terminal: gnome-terminal 
   /ssssssssssshdmNNNNmyNMMMMhssssss/      CPU: Intel i3-10110U (2) @ 2.592GHz 
    .ossssssssssssssssssdMMMNysssso.       GPU: 00:02.0 VMware SVGA II Adapter 
      -+sssssssssssssssssyyyssss+-         Memory: 1071MiB / 3923MiB 
        `:+ssssssssssssssssss+:`
            .-/+oossssoo+/-.                                       
                                                                   

```




