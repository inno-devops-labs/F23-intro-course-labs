# System Information Report

## Processor, RAM, and Network Information

### Tool used: `lshw`

`lshw` is a small tool to provide detailed information on the hardware configuration of the machine.

### Installation

This tool comes preinstalled on many Linux distributions. If not, it can be installed using the following command:

```bash
sudo apt-get install lshw
```

### Commands and Output

#### Processor Information

Command: `lshw -class processor`

Output: 
```bash
 *-cpu                     
       product: Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz
       vendor: Intel Corp.
       physical id: 1
       bus info: cpu@0
       version: 6.142.12
       width: 64 bits
       capabilities: fpu fpu_exception wp vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx rdtscp x86-64 constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 avx2 bmi2 invpcid rdseed clflushopt md_clear flush_l1d arch_capabilities
```

#### RAM Information

Command: `lshw -class memory`

Output: 
```bash
 *-memory                  
       description: System memory
       physical id: 0
       size: 4GiB
```

#### Network Information

Command: `lshw -class network`

Output: 
```bash
  *-network                 
       description: Ethernet interface
       product: 82540EM Gigabit Ethernet Controller
       vendor: Intel Corporation
       physical id: 3
       bus info: pci@0000:00:03.0
       logical name: enp0s3
       version: 02
       serial: 08:00:27:4a:ef:c5
       size: 1Gbit/s
       capacity: 1Gbit/s
       width: 32 bits
       clock: 66MHz
       capabilities: bus_master cap_list ethernet physical tp 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=e1000 driverversion=6.2.0-35-generic duplex=full ip=10.0.2.15 latency=64 link=yes mingnt=255 multicast=yes port=twisted pair speed=1Gbit/s
       resources: irq:19 memory:f0200000-f021ffff ioport:d020(size=8)
```

## Operating System Specifications

### Tool used: `lsb_release` and `uname`

`lsb_release` provides certain LSB (Linux Standard Base) and distribution-specific information.

`uname` prints system information.

### Commands and Output

#### Operating System Information

Command: `lsb_release -a`

Output: 
```bash
No LSB modules are available.
Distributor ID:  Ubuntu
Description:  Ubuntu 22.04.3 LTS
Release:  22.04
Codename:  jammy
```

#### Kernel and Machine Information

Command: `uname -a`

Output: 
```bash
Linux ubuntu 6.2.0-35-generic #35~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Fri Oct  6 10:23:26 UTC 2 x86_64 x86_64 x86_64 GNU/Linux
```