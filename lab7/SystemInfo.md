# Task 1

##VM Installation
Since use of WSL 2 was allowed the lecture, I used it for this lab.

WSL version: 1.2.5.0

Steps to install WSL 2:
- open Windows PowerShell
- use command **wsl --install**
- reboot Windows

With these steps will be installed last Ubuntu distribution and WSL 2.

Screenshot of working VM in Screenshot_VM.jpg.

# Task 2

## Processor, RAM, and Network Information:

### Processor
- Command: lscpu
- Output:

```
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  4
  On-line CPU(s) list:   0-3
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i5-4210U CPU @ 1.70GHz
    CPU family:          6
    Model:               69
    Thread(s) per core:  2
    Core(s) per socket:  2
    Socket(s):           1
    Stepping:            1
    BogoMIPS:            4788.91
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse ss
                         e2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon rep_good nopl xtopology cpuid p                 
                         ni pclmulqdq ssse3 fma cx16 pdcm pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hype                 
                         rvisor lahf_lm abm invpcid_single pti ssbd ibrs ibpb stibp fsgsbase bmi1 avx2 smep bmi2 erms in                         
                         vpcid xsaveopt flush_l1d arch_capabilities
                         
Virtualization features:
  Hypervisor vendor:     Microsoft 
  Virtualization type:   full 
Caches (sum of all):
  L1d:                   64 KiB (2 instances) 
  L1i:                   64 KiB (2 instances) 
  L2:                    512 KiB (2 instances)
  L3:                    3 MiB (1 instance)
Vulnerabilities:
  Itlb multihit:         KVM: Mitigation: VMX unsupported
  L1tf:                  Mitigation; PTE Inversion
  Mds:                   Vulnerable: Clear CPU buffers attempted, no microcode; SMT Host state unknown
  Meltdown:              Mitigation; PTI
  Mmio stale data:       Unknown: No mitigations
  Retbleed:              Not affected
  Spec store bypass:     Mitigation; Speculative Store Bypass disabled via prctl and seccomp
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer sanitization
  Spectre v2:            Mitigation; Retpolines, IBPB conditional, IBRS_FW, STIBP conditional, RSB filling, PBRSB-eIBRS
                         Not affected              
  Srbds:                 Unknown: Dependent on hypervisor status
  Tsx async abort:       Not affected
```

### RAM 
- Command: free -h
- Output:
```
                 total        used        free      shared  buff/cache   available
Mem:           5.7Gi       507Mi       4.7Gi       3.0Mi       544Mi       5.0Gi
Swap:          2.0Gi          0B       2.0Gi
```

### Network Information
- Command: ifconfig
- Output:
```
  docker0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:0b:e6:34:8e  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.29.206.194  netmask 255.255.240.0  broadcast 172.29.207.255
        inet6 fe80::215:5dff:fe25:40f7  prefixlen 64  scopeid 0x20<link>  
        ether 00:15:5d:25:40:f7  txqueuelen 1000  (Ethernet)
        RX packets 522  bytes 291313 (291.3 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 72  bytes 7169 (7.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

## Operating System Specifications:
- Name: lsb_release
- Command: lsb_release -a
- Output:
```
  No LSB modules are available.
  Distributor ID: Ubuntu
  Description:    Ubuntu 22.04.2 LTS
  Release:        22.04
  Codename:       jammy
```
