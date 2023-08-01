# CI/CD Lab - GitHub Actions

## Task 1: Create your First GitHub Actions Pipeline

### Observations
GitHub Actions is a powerful and flexible automation platform integrated with GitHub.
It allows developers to define custom workflows, called actions, to automate various tasks such as building, testing, and deploying projects.
Actions can be triggered on different events, such as code commits, pull requests, and issue comments.
GitHub Actions offers a wide range of pre-built actions that can be used directly or customized to suit specific needs.
Workflows are defined using YAML files (with .yml or .yaml extension) and reside in the ".github/workflows" directory of your repository.
A workflow consists of one or more jobs, and each job contains one or more steps that execute actions.
Workflows can run on different types of runners, such as GitHub-hosted runners or self-hosted runners.

### Key Concepts
**Workflows**: Automated processes defined in YAML files that run on specific events or schedules.
**Jobs**: Units of work within a workflow that run concurrently.
**Steps**: Individual tasks in a job that execute commands or actions.
**Actions**: Reusable, standalone scripts or tools that can be used in workflows.
**Runners**: The environments where workflows execute. They can be GitHub-hosted runners or self-hosted runners.

### Steps
**Create a new repository:** I created a new repository on GitHub.
**Create a workflow file:** I created a new directory named ".github/workflows" and added a YAML file named "main.yml" inside it. This is where we define our workflow.
**Define the workflow:** In the "main.yml" file, I defined a simple workflow that runs on every push event to the main branch. The workflow has one job named "say_hello," and it consists of a single step that prints "Hello, GitHub Actions!" to the console.
**Commit and push changes:** I committed the changes and pushed them to the "main" branch of my GitHub repository.
**Verify the workflow:** After the push, I navigated to the "Actions" tab on my GitHub repository. I could see the workflow listed and running on the latest commit.
**View the workflow run:** Clicking on the workflow run, I was able to see the details of the job and the step. The step output showed "Hello, GitHub Actions!" as expected.


I created the workflow as following:
```sh
# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main" ]


# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:

      - name: Run a one-line script
        run: echo Hello, world!

```

**Output:**

![alt nginx](./images/actions1.png)

## Task 2: Gathering System Information and Manual Triggering

For manual trigger we can add the following code to the workflow:

> #Allows you to run this workflow manually from the Actions tab
> workflow_dispatch:

The the following option should be available: 
![alt nginx](./images/manual.png)


### For investigation of the system specification we can use the following workflow:
```sh
name: system
on:
  push:
    branches:
      - main
  workflow_dispatch: 

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: System Information
        run: 
            lscpu &&
            free -h &&
            df -h
```

**Results:**
```sh

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
BogoMIPS:                        4589.37
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
Mem:           6.8Gi       533Mi       5.0Gi        22Mi       1.2Gi       5.9Gi
Swap:          4.0Gi          0B       4.0Gi
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        84G   62G   22G  74% /
tmpfs           3.4G  172K  3.4G   1% /dev/shm
tmpfs           1.4G  1.1M  1.4G   1% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/sda15      105M  6.1M   99M   6% /boot/efi
/dev/sdb1        14G  4.1G  9.0G  31% /mnt
tmpfs           694M   12K  694M   1% /run/user/1001
```

### For investigation of the system specification we can use the following workflow:

```sh
- name: OS Information
        run:
            lsb_release -a
```

**Results:**
```sh
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 22.04.2 LTS
Release:	22.04
Codename:	jammy
```