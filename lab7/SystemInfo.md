## Task 2: System Information Tools

follow these steps to discover suitable tools for displaying system information:


## **1. Processor, RAM, and Network Information:**

### A. **Processor**
use following commadn to display the processor informaiton
```shell
    lscpu
```
```r
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         48 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  1
  On-line CPU(s) list:   0
Vendor ID:               AuthenticAMD
  Model name:            AMD Ryzen 7 5800H with Radeon Graphics
    CPU family:          25
    Model:               80
    Thread(s) per core:  1
    Core(s) per socket:  1
    Socket(s):           1
    Stepping:            0
    BogoMIPS:            6387.99
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mc
                         a cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall n
                         x mmxext fxsr_opt rdtscp lm constant_tsc rep_good nopl 
                         nonstop_tsc cpuid extd_apicid tsc_known_freq pni pclmul
                         qdq monitor ssse3 cx16 sse4_1 sse4_2 x2apic movbe popcn
                         t aes xsave avx rdrand hypervisor lahf_lm cr8_legacy ab
                         m sse4a misalignsse 3dnowprefetch vmmcall fsgsbase avx2
                          invpcid rdseed clflushopt arat
Virtualization features: 
  Hypervisor vendor:     KVM
  Virtualization type:   full
Caches (sum of all):     
  L1d:                   32 KiB (1 instance)
  L1i:                   32 KiB (1 instance)
  L2:                    512 KiB (1 instance)
  L3:                    16 MiB (1 instance)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0
Vulnerabilities:         
  Gather data sampling:  Not affected
  Itlb multihit:         Not affected
  L1tf:                  Not affected
  Mds:                   Not affected
  Meltdown:              Not affected
  Mmio stale data:       Not affected
  Retbleed:              Not affected
  Spec rstack overflow:  Mitigation; safe RET, no microcode
  Spec store bypass:     Not affected
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:            Mitigation; Retpolines, STIBP disabled, RSB filling, PB
                         RSB-eIBRS Not affected
  Srbds:                 Not affected
  Tsx async abort:       Not affected
  ```

### B. **RAM**
use following commadn to display the RAM information
```shell
    free -h
```

```r
total        used        free      shared  buff/cache   available
Mem:           3,8Gi       1,4Gi       953Mi        67Mi       1,5Gi       2,2Gi
Swap:          2,1Gi          0B       2,1Gi
```

### C. **Network Information**
use following commands to display the network information
```shell
    sudo apt update
    sudo apt install net-tools
    ifconfig
```

```r
enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.XXX  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::217c:d31:cf5e:4a7a  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:9c:d5:XX  txqueuelen 1000  (Ethernet)
        RX packets 33182  bytes 38140599 (38.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 11875  bytes 1442045 (1.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 799  bytes 87100 (87.1 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 799  bytes 87100 (87.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

## **2. Operating System Specifications:**

### **A. Display operating system name and Version:**
```shell
    lsb_release -a
``` 
```r
   No LSB modules are available.
   Distributor ID: Ubuntu
   Description:    Ubuntu 22.04 LTS
   Release:        22.04
   Codename:       jammy
```

### **B. Diplay kerner version:**
```shell
    uname -a
```
```r
    Linux syedvm-VirtualBox 6.2.0-34-generic #34~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Sep  7 13:12:03 UTC 2 x86_64 x86_64 x86_64 GNU/Linux
```