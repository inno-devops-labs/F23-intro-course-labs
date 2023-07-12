# Introduction to DevOps Lab7
**Leonid Zelenskiy** <br>
**B21-CS-01** <br>
*l.zelenskiy@innopolis.university*

## SystemInfo
**CPU**

Command : `lscpu`

Output:
``` bash
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  2
  On-line CPU(s) list:   0,1
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
    CPU family:          6
    Model:               158
    Thread(s) per core:  1
    Core(s) per socket:  2
    Socket(s):           1
    Stepping:            10
    BogoMIPS:            4800.00
    Flags:               fpu vme de pse tsc msr pae mce cx8
                         apic sep mtrr pge mc
                         a cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss 
                         ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art
                         arch_perfmon pebs bts rep_good nopl xtopology nonstop_
                         tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cp
                         l vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1
                          sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsav
                         e avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault
                          epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow
                          vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust 
                         bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap cl
                         flushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm
                          ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp
                          md_clear flush_l1d arch_capabilities
Virtualization features:
  Hypervisor vendor:     KVM
  Virtualization:        full
Caches (sum of all):     
  L1d:                   64 KiB (2 instances)
  L1i:                   64  KiB (2 instances)
  L2:                    512 KiB (2 instances)
  L3:                    16 MiB (2 instances)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0,1
Vulnerabilities:         
  Itlb multihit:         KVM: Mitigation: VMX unsupported
  L1tf:                  Mitigation; PTE Inversion
  Mds:                   Mitigation; Clear CPU buffers; SMT Host state unknown vulnerable
  Meltdown:              Mitigation; PTI
  Mmio stale data:       Mitigation; Clear CPU buffers; SMT Host state unknown vulnerable
  Retbleed:              Vulnerable
  Spec store bypass:     Vulnerable
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:            Mitigation; Retpolines STIBP disabled, RSB filling, PB RSB-eIBRS Not affected
  Srbds:                 Unknown: Dependent on hypervisor status
  Tsx async abort:       Not affected

```
**Memory**

Command: `lshw -c memory`

Output: 
``` bash
*-firmware                
       description: BIOS
       vendor: innotek GmbH
       physical id: 0
       version: VirtualBox
       date: 12/01/2006
       size: 128KiB
       capacity: 128KiB
       capabilities: isa pci cdboot bootselect int9keyboard int10video acpi uefi

*-memory
       description: System Memory
       physical id: 1
       size: 4GiB
```
**Network**

Command: `ip a`

Output: 
``` bash
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:25:c1:fd brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 84693sec preferred_lft 84693sec
    inet6 fe80::6e63:bf02:29cf:88ce/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

**OS Specifications**

Command: `uname -a`

Output:
```
Linux ramprin-vbox 5.19.0-32-generic #33~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Mon Jan 30 17:03:34 UTC 2 x86_64 x86_64 x86_64 GNU/Linux
```