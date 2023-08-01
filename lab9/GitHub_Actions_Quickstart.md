# Create your First GitHub Actions Pipeline

1. Create a .github/workflows directory. Then add github-actions-demo.yml file that contains jobs that should be done.

2. And with the one command pipline started doing it's things. Magic. Actually, I already had an experinece with this. For it was not difficult

![Alt text](<img/Screenshot 2023-08-01 at 9.17.48 PM.png>)

No issues. Everything is just perfect!


# Gathering System Information and Manual Triggering

For mannual trigger
2. Change default branch for `lab_9`.
1. Add `on: [workflow_dispatch]` into the `.yml` file
3. Push
4. Trigger manually 

For system investigation, add followign jobs:
```
- name: System Information
  run: 
      lscpu &&
      free -h &&
      df -h

- name: OS Information
  run:
      lsb_release -a
```

## Result:

![Alt text](<img/Screenshot 2023-08-01 at 9.40.51 PM.png>)

### System information
```
Run lscpu && free -h && df -h
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Address sizes:                   46 bits physical, 48 bits virtual
Byte Order:                      Little Endian
CPU(s):                          2
On-line CPU(s) list:             0,1
Vendor ID:                       GenuineIntel
Model name:                      Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
CPU family:                      6
Model:                           79
Thread(s) per core:              1
Core(s) per socket:              2
Socket(s):                       1
Stepping:                        1
BogoMIPS:                        4589.36
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm rdseed adx smap xsaveopt md_clear
Hypervisor vendor:               Microsoft
Virtualization type:             full
L1d cache:                       64 KiB (2 instances)
L1i cache:                       64 KiB (2 instances)
L2 cache:                        512 KiB (2 instances)
L3 cache:                        50 MiB (1 instance)
NUMA node(s):                    1
NUMA node0 CPU(s):               0,1
Vulnerability Itlb multihit:     KVM: Mitigation: VMX unsupported
Vulnerability L1tf:              Mitigation; PTE Inversion
Vulnerability Mds:               Mitigation; Clear CPU buffers; SMT Host state unknown
Vulnerability Meltdown:          Mitigation; PTI
Vulnerability Mmio stale data:   Vulnerable: Clear CPU buffers attempted, no microcode; SMT Host state unknown
Vulnerability Retbleed:          Not affected
Vulnerability Spec store bypass: Vulnerable
Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:        Mitigation; Retpolines, STIBP disabled, RSB filling, PBRSB-eIBRS Not affected
Vulnerability Srbds:             Not affected
Vulnerability Tsx async abort:   Mitigation; Clear CPU buffers; SMT Host state unknown
               total        used        free      shared  buff/cache   available
Mem:           6.8Gi       518Mi       5.1Gi        21Mi       1.1Gi       5.9Gi
Swap:          4.0Gi          0B       4.0Gi
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        84G   61G   23G  73% /
tmpfs           3.4G  172K  3.4G   1% /dev/shm
tmpfs           1.4G  1.1M  1.4G   1% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/sdb15      105M  6.1M   99M   6% /boot/efi
/dev/sda1        14G  4.1G  9.0G  31% /mnt
tmpfs           694M   12K  694M   1% /run/user/1001
```

### OS information

```
Run lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 22.04.2 LTS
Release:	22.04
Codename:	jammy
```