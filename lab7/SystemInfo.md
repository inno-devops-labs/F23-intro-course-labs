## Deploy a Virtual Machine:

1. In VirtualBox, click "New" to create a new VM.
2. Name your VM and select "Ubuntu" in the "Type" and "Version" dropdown menus, then click "Next".
3. Allocate memory to your VM (recommended: at least 2GB), then click "Next".
4. Choose to create a new virtual hard disk now, then click "Create".
5. Choose "VDI (VirtualBox Disk Image)" as the hard disk file type, then click "Next".
6. Choose whether you want the virtual hard disk to be dynamically allocated or a fixed size, then click "Next".
7. Allocate storage to your virtual hard disk (recommended: at least 10GB), then click "Create".
8. Go to "Settings" > "System" > "Processor" and adjust the number of CPU cores as needed.
9. Go to "Settings" > "Network" and set up your network configuration.
10. Start your VM.
11. During the first startup, VirtualBox will ask you to select a start-up disk (ISO file). Choose the Ubuntu ISO file that you've downloaded from the Ubuntu website.
12. Follow the on-screen instructions to install Ubuntu on your VM.

## Task 2: System Information Tools

Processor, RAM, and Network Information:
1. The lscpu, free -m, and ip addr commands in the terminal can be used to display processor, RAM, and network information respectively.
2. Open the terminal in your VM.
3. To display the processor information, type lscpu and press Enter.
4. To display the RAM information, type free -m and press Enter.
5. To display the network information, type ip addr and press Enter.


Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         39 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  4
  On-line CPU(s) list:   0-3
Vendor ID:               GenuineIntel
  Model name:            Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
    CPU family:          6
    Model:               78
    Thread(s) per core:  2
    Core(s) per socket:  2
    Socket(s):           1
    Stepping:            3
    CPU(s) scaling MHz:  17%
    CPU max MHz:         3000.0000
    CPU min MHz:         400.0000
    BogoMIPS:            4999.90
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc 
                         art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr pdcm p
                         cid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb sti
                         bp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetb
                         v1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d arch_capabilities
Virtualization features: 
  Virtualization:        VT-x
Caches (sum of all):     
  L1d:                   64 KiB (2 instances)
  L1i:                   64 KiB (2 instances)
  L2:                    512 KiB (2 instances)
  L3:                    3 MiB (1 instance)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0-3
Vulnerabilities:         
  Itlb multihit:         KVM: Mitigation: VMX disabled
  L1tf:                  Mitigation; PTE Inversion; VMX conditional cache flushes, SMT vulnerable
  Mds:                   Mitigation; Clear CPU buffers; SMT vulnerable
  Meltdown:              Mitigation; PTI
  Mmio stale data:       Mitigation; Clear CPU buffers; SMT vulnerable
  Retbleed:              Mitigation; IBRS
  Spec store bypass:     Mitigation; Speculative Store Bypass disabled via prctl
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer sanitization
  Spectre v2:            Mitigation; IBRS, IBPB conditional, RSB filling, PBRSB-eIBRS Not affected
  Srbds:                 Mitigation; Microcode
  Tsx async abort:       Mitigation; TSX disabled


             total        used        free      shared  buff/cache   available
Mem:           11836        5364         369        1043        6102        5117
Swap:           2047          22        2025

##  Operating System Specifications:

1. The uname -a command in the terminal can be used to display the operating system specifications.
2. Open the terminal in your VM.
3. Type uname -a and press Enter to display the operating system specifications.
