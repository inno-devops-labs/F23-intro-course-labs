# System Information Tools

## Processor, RAM, and Network Information:

For displaying processor, RAM, and network information separately, the following command-line tools can be used:

1. `lscpu` command: It displays information about the processor(s) in the system.
```
   oleg@ubuntu:~$ lscpu
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  3
  On-line CPU(s) list:   0-2
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz
    CPU family:          6
    Model:               142
    Thread(s) per core:  1
    Core(s) per socket:  3
    Socket(s):           1
    Stepping:            12
    BogoMIPS:            4607.92
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mc
                         a cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall n
                         x rdtscp lm constant_tsc rep_good nopl xtopology nonsto
                         p_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 cx16 pci
                         d sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx rdran
                         d hypervisor lahf_lm abm 3dnowprefetch invpcid_single p
                         ti fsgsbase bmi1 avx2 bmi2 invpcid rdseed clflushopt md
                         _clear flush_l1d arch_capabilities
Virtualization features: 
  Hypervisor vendor:     KVM
  Virtualization type:   full
Caches (sum of all):     
  L1d:                   96 KiB (3 instances)
  L1i:                   96 KiB (3 instances)
  L2:                    768 KiB (3 instances)
  L3:                    24 MiB (3 instances)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0-2
Vulnerabilities:         
  Gather data sampling:  Unknown: Dependent on hypervisor status
  Itlb multihit:         KVM: Mitigation: VMX unsupported
  L1tf:                  Mitigation; PTE Inversion
  Mds:                   Mitigation; Clear CPU buffers; SMT Host state unknown
  Meltdown:              Mitigation; PTI
  Mmio stale data:       Mitigation; Clear CPU buffers; SMT Host state unknown
  Retbleed:              Vulnerable
  Spec rstack overflow:  Not affected
  Spec store bypass:     Vulnerable
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:  oleg@ubuntu:~$ lscpu
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  3
  On-line CPU(s) list:   0-2
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz
    CPU family:          6
    Model:               142
    Thread(s) per core:  1
    Core(s) per socket:  3
    Socket(s):           1
    Stepping:            12
    BogoMIPS:            4607.92
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mc
                         a cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall n
                         x rdtscp lm constant_tsc rep_good nopl xtopology nonsto
                         p_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 cx16 pci
                         d sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx rdran
                         d hypervisor lahf_lm abm 3dnowprefetch invpcid_single p
                         ti fsgsbase bmi1 avx2 bmi2 invpcid rdseed clflushopt md
                         _clear flush_l1d arch_capabilities
Virtualization features: 
  Hypervisor vendor:     KVM
  Virtualization type:   full
Caches (sum of all):     
  L1d:                   96 KiB (3 instances)
  L1i:                   96 KiB (3 instances)
  L2:                    768 KiB (3 instances)
  L3:                    24 MiB (3 instances)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0-2
Vulnerabilities:         
  Gather data sampling:  Unknown: Dependent on hypervisor status
  Itlb multihit:         KVM: Mitigation: VMX unsupported
  L1tf:                  Mitigation; PTE Inversion
  Mds:                   Mitigation; Clear CPU buffers; SMT Host state unknown
  Meltdown:              Mitigation; PTI
  
  Mmio stale data:       Mitigation; Clear CPU buffers; SMT Host state unknown
  Retbleed:              Vulnerable
  Spec rstack overflow:  Not affected
  Spec store bypass:     Vulnerable
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:            Mitigation; Retpolines, STIBP disabled, RSB filling, PB
                         RSB-eIBRS Not affected
  Srbds:                 Unknown: Dependent on hypervisor status
  Tsx async abort:       Not affected
          Mitigation; Retpolines, STIBP disabled, RSB filling, PB
                         RSB-eIBRS Not affected
  Srbds:                 Unknown: Dependent on hypervisor status
  Tsx async abort:       Not affected
 ```

2. `free` command: It displays information about the system's RAM (memory) usage.

```
oleg@ubuntu:~$ free
               total        used        free      shared  buff/cache   available
Mem:         2961580     1179656       79456       38072     1702468     1561656
Swap:        2744316       25024     2719292
```

3. `ifconfig` or `ip addr` command: It displays information about network interfaces.

```
oleg@ubuntu:~$ ifconfig 
enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::e267:92d1:8a5d:fdf4  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:4a:ef:c5  txqueuelen 1000  (Ethernet)
        RX packets 442109  bytes 633588784 (633.5 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 53891  bytes 4869837 (4.8 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 2238  bytes 268357 (268.3 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2238  bytes 268357 (268.3 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

## Operating System Specifications:

For displaying operating system specifications, you can use the following command-line tool:

1. `lsb_release` command: It displays information about the operating system distribution and version.

Command: `lsb_release -a`

Example output:

```
oleg@ubuntu:~$ lsb_release -a
No LSB modules are available.
Distributor ID:  Ubuntu
Description:  Ubuntu 22.04.3 LTS
Release:  22.04
Codename:  jammy
```
