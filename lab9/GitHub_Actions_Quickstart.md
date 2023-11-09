# GitHub Actions Quickstart Guide

## Task 1: Create your First GitHub Actions Pipeline

### Reading Official Guide:

#### Steps Followed:

1. Created `.github/workflows` directory in the repository as instructed.
2. Then created a `github-actions-demo.yml` file as per instructions.
3. Added the configuration to the YAML file from the quickstart guide.
4. Committed the workflow file to the new branch, which triggered the GitHub Actions workflow automatically
5. Observed CI status and logs on *Actions* page. 

#### Key Concepts:

1. **Workflow:** A workflow is the basic block that is defined by YAML file in `.github/workflows` directory. This contains commands that'll be run when the pipeline runs.
2. **Events:**  Specific activities that trigger workflows like `push`, `pull_request`, as we did in our case.
3. **Jobs:** Set of steps that execute on the same runner. By default, jobs run in parallel, but they can be configured to run sequentially.
4. **Steps:** Individual tasks that run commands or actions. A job consists of one or more steps.
5. **Runners:** Servers that have the GitHub Actions runner application installed. They run the jobs in a workflow.

#### Observation:

- As soon i created the `.yaml` file and added into the repo with certain steps, the CI got triggered and ran each step one by one. The logs could be seen there.

### Observing the Workflow Execution:

- Pushed the partial task 1.1 and went again on *Actions* tab to see logs.
- The interesting observation for me is the *job setup* section that shows OS and runner image along with read-only permissions for the repo. I am sure we can customize it and use the OS image of our choice.
- Fortunately, No errors were encountered during the process.

### Logs:

```
2023-11-09T00:09:52.6233510Z Requested labels: ubuntu-latest
2023-11-09T00:09:52.6233809Z Job defined at: uahmad235/intro-course-labs/.github/workflows/github-actions-demo.yml@refs/heads/lab-9-1
2023-11-09T00:09:52.6233929Z Waiting for a runner to pick up this job...
2023-11-09T00:09:53.1898510Z Job is waiting for a hosted runner to come online.
2023-11-09T00:09:57.1885468Z Job is about to start running on the hosted runner: GitHub Actions 1 (hosted)
2023-11-09T00:09:59.4867569Z Current runner version: '2.311.0'
2023-11-09T00:09:59.4891542Z ##[group]Operating System
2023-11-09T00:09:59.4892310Z Ubuntu
2023-11-09T00:09:59.4892708Z 22.04.3
2023-11-09T00:09:59.4893014Z LTS
2023-11-09T00:09:59.4893446Z ##[endgroup]
2023-11-09T00:09:59.4893860Z ##[group]Runner Image
2023-11-09T00:09:59.4894271Z Image: ubuntu-22.04
2023-11-09T00:09:59.4894769Z Version: 20231030.2.0
2023-11-09T00:09:59.4895782Z Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20231030.2/images/linux/Ubuntu2204-Readme.md
2023-11-09T00:09:59.4897221Z Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20231030.2
2023-11-09T00:09:59.4898140Z ##[endgroup]
2023-11-09T00:09:59.4898550Z ##[group]Runner Image Provisioner
2023-11-09T00:09:59.4899052Z 2.0.312.1
2023-11-09T00:09:59.4899457Z ##[endgroup]
2023-11-09T00:09:59.4900443Z ##[group]GITHUB_TOKEN Permissions
2023-11-09T00:09:59.4902096Z Contents: read
2023-11-09T00:09:59.4902543Z Metadata: read
2023-11-09T00:09:59.4903082Z Packages: read
2023-11-09T00:09:59.4903652Z ##[endgroup]
2023-11-09T00:09:59.4906590Z Secret source: Actions
2023-11-09T00:09:59.4907309Z Prepare workflow directory
2023-11-09T00:09:59.5521353Z Prepare all required actions
2023-11-09T00:09:59.5677599Z Getting action download info
2023-11-09T00:09:59.8296634Z Download action repository 'actions/checkout@v4' (SHA:b4ffde65f46336ab88eb53be808477a3936bae11)
2023-11-09T00:10:00.0527670Z Complete job name: Explore-GitHub-Actions
2023-11-09T00:10:00.1331238Z ##[group]Run echo "🎉 The job was automatically triggered by a push event."
2023-11-09T00:10:00.1332456Z [36;1mecho "🎉 The job was automatically triggered by a push event."[0m
2023-11-09T00:10:00.1516385Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:00.1516947Z ##[endgroup]
2023-11-09T00:10:00.1734561Z 🎉 The job was automatically triggered by a push event.
2023-11-09T00:10:00.1899176Z ##[group]Run echo "🐧 This job is now running on a Linux server hosted by GitHub!"
2023-11-09T00:10:00.1900332Z [36;1mecho "🐧 This job is now running on a Linux server hosted by GitHub!"[0m
2023-11-09T00:10:00.1942518Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:00.1943019Z ##[endgroup]
2023-11-09T00:10:00.2007063Z 🐧 This job is now running on a Linux server hosted by GitHub!
2023-11-09T00:10:00.2044862Z ##[group]Run echo "🔎 The name of your branch is refs/heads/lab-9-1 and your repository is uahmad235/intro-course-labs."
2023-11-09T00:10:00.2047089Z [36;1mecho "🔎 The name of your branch is refs/heads/lab-9-1 and your repository is uahmad235/intro-course-labs."[0m
2023-11-09T00:10:00.2087516Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:00.2088003Z ##[endgroup]
2023-11-09T00:10:00.2152751Z 🔎 The name of your branch is refs/heads/lab-9-1 and your repository is uahmad235/intro-course-labs.
2023-11-09T00:10:00.2281612Z ##[group]Run actions/checkout@v4
2023-11-09T00:10:00.2282305Z with:
2023-11-09T00:10:00.2282712Z   repository: uahmad235/intro-course-labs
2023-11-09T00:10:00.2283521Z   token: ***
2023-11-09T00:10:00.2284015Z   ssh-strict: true
2023-11-09T00:10:00.2284457Z   persist-credentials: true
2023-11-09T00:10:00.2284964Z   clean: true
2023-11-09T00:10:00.2285470Z   sparse-checkout-cone-mode: true
2023-11-09T00:10:00.2285959Z   fetch-depth: 1
2023-11-09T00:10:00.2286383Z   fetch-tags: false
2023-11-09T00:10:00.2286868Z   show-progress: true
2023-11-09T00:10:00.2287259Z   lfs: false
2023-11-09T00:10:00.2287664Z   submodules: false
2023-11-09T00:10:00.2288153Z   set-safe-directory: true
2023-11-09T00:10:00.2288582Z ##[endgroup]
2023-11-09T00:10:00.4510866Z Syncing repository: uahmad235/intro-course-labs
2023-11-09T00:10:00.4512985Z ##[group]Getting Git version info
2023-11-09T00:10:00.4514049Z Working directory is '/home/runner/work/intro-course-labs/intro-course-labs'
2023-11-09T00:10:00.4515564Z [command]/usr/bin/git version
2023-11-09T00:10:00.4521393Z git version 2.42.0
2023-11-09T00:10:00.4547258Z ##[endgroup]
2023-11-09T00:10:00.4569385Z Temporarily overriding HOME='/home/runner/work/_temp/1d517a66-35ea-4089-a72e-e7c8d6eb0e98' before making global git config changes
2023-11-09T00:10:00.4572230Z Adding repository directory to the temporary git global config as a safe directory
2023-11-09T00:10:00.4574770Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-09T00:10:00.4608986Z Deleting the contents of '/home/runner/work/intro-course-labs/intro-course-labs'
2023-11-09T00:10:00.4615765Z ##[group]Initializing the repository
2023-11-09T00:10:00.4619701Z [command]/usr/bin/git init /home/runner/work/intro-course-labs/intro-course-labs
2023-11-09T00:10:00.4690736Z hint: Using 'master' as the name for the initial branch. This default branch name
2023-11-09T00:10:00.4692653Z hint: is subject to change. To configure the initial branch name to use in all
2023-11-09T00:10:00.4694321Z hint: of your new repositories, which will suppress this warning, call:
2023-11-09T00:10:00.4695764Z hint: 
2023-11-09T00:10:00.4696790Z hint: 	git config --global init.defaultBranch <name>
2023-11-09T00:10:00.4697613Z hint: 
2023-11-09T00:10:00.4698306Z hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
2023-11-09T00:10:00.4700103Z hint: 'development'. The just-created branch can be renamed via this command:
2023-11-09T00:10:00.4701621Z hint: 
2023-11-09T00:10:00.4702374Z hint: 	git branch -m <name>
2023-11-09T00:10:00.4704515Z Initialized empty Git repository in /home/runner/work/intro-course-labs/intro-course-labs/.git/
2023-11-09T00:10:00.4714343Z [command]/usr/bin/git remote add origin https://github.com/uahmad235/intro-course-labs
2023-11-09T00:10:00.4745983Z ##[endgroup]
2023-11-09T00:10:00.4746760Z ##[group]Disabling automatic garbage collection
2023-11-09T00:10:00.4748920Z [command]/usr/bin/git config --local gc.auto 0
2023-11-09T00:10:00.4776430Z ##[endgroup]
2023-11-09T00:10:00.4777277Z ##[group]Setting up auth
2023-11-09T00:10:00.4781803Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-09T00:10:00.4812333Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-09T00:10:00.5140714Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-09T00:10:00.5173834Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-09T00:10:00.5419689Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2023-11-09T00:10:00.5453829Z ##[endgroup]
2023-11-09T00:10:00.5455133Z ##[group]Fetching the repository
2023-11-09T00:10:00.5464445Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --no-recurse-submodules --depth=1 origin +268c86692eee1b14bb6714b630b1383e3b83b50c:refs/remotes/origin/lab-9-1
2023-11-09T00:10:00.9789702Z From https://github.com/uahmad235/intro-course-labs
2023-11-09T00:10:00.9791454Z  * [new ref]         268c86692eee1b14bb6714b630b1383e3b83b50c -> origin/lab-9-1
2023-11-09T00:10:00.9816336Z ##[endgroup]
2023-11-09T00:10:00.9817453Z ##[group]Determining the checkout info
2023-11-09T00:10:00.9818912Z ##[endgroup]
2023-11-09T00:10:00.9819928Z ##[group]Checking out the ref
2023-11-09T00:10:00.9824028Z [command]/usr/bin/git checkout --progress --force -B lab-9-1 refs/remotes/origin/lab-9-1
2023-11-09T00:10:00.9879602Z Switched to a new branch 'lab-9-1'
2023-11-09T00:10:00.9881200Z branch 'lab-9-1' set up to track 'origin/lab-9-1'.
2023-11-09T00:10:00.9887559Z ##[endgroup]
2023-11-09T00:10:00.9921673Z [command]/usr/bin/git log -1 --format='%H'
2023-11-09T00:10:00.9944507Z '268c86692eee1b14bb6714b630b1383e3b83b50c'
2023-11-09T00:10:01.0070267Z ##[group]Run echo "💡 The uahmad235/intro-course-labs repository has been cloned to the runner."
2023-11-09T00:10:01.0071439Z [36;1mecho "💡 The uahmad235/intro-course-labs repository has been cloned to the runner."[0m
2023-11-09T00:10:01.0118448Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:01.0118868Z ##[endgroup]
2023-11-09T00:10:01.0182580Z 💡 The uahmad235/intro-course-labs repository has been cloned to the runner.
2023-11-09T00:10:01.0215841Z ##[group]Run echo "🖥️ The workflow is now ready to test your code on the runner."
2023-11-09T00:10:01.0216759Z [36;1mecho "🖥️ The workflow is now ready to test your code on the runner."[0m
2023-11-09T00:10:01.0257069Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:01.0257512Z ##[endgroup]
2023-11-09T00:10:01.0323556Z 🖥️ The workflow is now ready to test your code on the runner.
2023-11-09T00:10:01.0360895Z ##[group]Run ls /home/runner/work/intro-course-labs/intro-course-labs
2023-11-09T00:10:01.0361739Z [36;1mls /home/runner/work/intro-course-labs/intro-course-labs[0m
2023-11-09T00:10:01.0402869Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:01.0403440Z ##[endgroup]
2023-11-09T00:10:01.0478680Z README.md
2023-11-09T00:10:01.0479279Z index.html
2023-11-09T00:10:01.0479929Z lab1
2023-11-09T00:10:01.0480485Z lab10
2023-11-09T00:10:01.0480955Z lab2
2023-11-09T00:10:01.0481489Z lab3
2023-11-09T00:10:01.0481871Z lab4
2023-11-09T00:10:01.0482604Z lab5
2023-11-09T00:10:01.0483144Z lab6
2023-11-09T00:10:01.0483640Z lab7
2023-11-09T00:10:01.0484103Z lab8
2023-11-09T00:10:01.0484427Z lab9
2023-11-09T00:10:01.0518345Z ##[group]Run echo "🍏 This job's status is success."
2023-11-09T00:10:01.0518981Z [36;1mecho "🍏 This job's status is success."[0m
2023-11-09T00:10:01.0559175Z shell: /usr/bin/bash -e {0}
2023-11-09T00:10:01.0559601Z ##[endgroup]
2023-11-09T00:10:01.0624932Z 🍏 This job's status is success.
2023-11-09T00:10:01.0710383Z Post job cleanup.
2023-11-09T00:10:01.1448750Z [command]/usr/bin/git version
2023-11-09T00:10:01.1490887Z git version 2.42.0
2023-11-09T00:10:01.1538572Z Temporarily overriding HOME='/home/runner/work/_temp/ff9f673f-98cf-4f63-b768-e58a887b18be' before making global git config changes
2023-11-09T00:10:01.1540452Z Adding repository directory to the temporary git global config as a safe directory
2023-11-09T00:10:01.1544173Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-09T00:10:01.1577582Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-09T00:10:01.1608670Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-09T00:10:01.1856257Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-09T00:10:01.1877385Z http.https://github.com/.extraheader
2023-11-09T00:10:01.1889410Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2023-11-09T00:10:01.1919811Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-09T00:10:01.2385967Z Cleaning up orphan processes
```


## Task-2: Gathering System Information and Manual triggering:


### Configure a Manual Trigger:

#### Workflow Changes:
To enable both manual triggers and triggers on push, I modified the following part in `yaml` config to:
```yaml
on: [push]
```
to:
```yaml
on:
  push:
  workflow_dispatch:
```

### Gather System Information
#### Additional Step Added:

I added another step to gather system hardware and runner info:
```yaml
- name: Get system information
  run: |
    echo "Gathering system information..."
    uname -a
    echo "CPU Information:"
    lscpu
    echo "Memory Information:"
    free -h
    echo "Disk Information:"
    df -h
    echo "Network Information:"
    ifconfig -a || ip a

```
#### System Information Output:
The output from this step in the workflow provided detailed information about the runner's operating system, CPU, and memory.
### Logs (only system info logs):
```
2023-11-09T00:24:44.3066174Z ##[group]Run echo "Gathering system information..."
2023-11-09T00:24:44.3066961Z [36;1mecho "Gathering system information..."[0m
2023-11-09T00:24:44.3067586Z [36;1muname -a[0m
2023-11-09T00:24:44.3068135Z [36;1mecho "CPU Information:"[0m
2023-11-09T00:24:44.3068619Z [36;1mlscpu[0m
2023-11-09T00:24:44.3069085Z [36;1mecho "Memory Information:"[0m
2023-11-09T00:24:44.3069685Z [36;1mfree -h[0m
2023-11-09T00:24:44.3070073Z [36;1mecho "Disk Information:"[0m
2023-11-09T00:24:44.3070605Z [36;1mdf -h[0m
2023-11-09T00:24:44.3071100Z [36;1mecho "Network Information:"[0m
2023-11-09T00:24:44.3071622Z [36;1mifconfig -a || ip a[0m
2023-11-09T00:24:44.3111630Z shell: /usr/bin/bash -e {0}
2023-11-09T00:24:44.3112121Z ##[endgroup]
2023-11-09T00:24:44.3175148Z Gathering system information...
2023-11-09T00:24:44.3184955Z Linux fv-az1269-522 6.2.0-1015-azure #15~22.04.1-Ubuntu SMP Fri Oct  6 13:20:44 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
2023-11-09T00:24:44.3187107Z CPU Information:
2023-11-09T00:24:44.3226792Z Architecture:                       x86_64
2023-11-09T00:24:44.3228292Z CPU op-mode(s):                     32-bit, 64-bit
2023-11-09T00:24:44.3229517Z Address sizes:                      48 bits physical, 48 bits virtual
2023-11-09T00:24:44.3230466Z Byte Order:                         Little Endian
2023-11-09T00:24:44.3231277Z CPU(s):                             4
2023-11-09T00:24:44.3232158Z On-line CPU(s) list:                0-3
2023-11-09T00:24:44.3233037Z Vendor ID:                          AuthenticAMD
2023-11-09T00:24:44.3234003Z Model name:                         AMD EPYC 7763 64-Core Processor
2023-11-09T00:24:44.3235008Z CPU family:                         25
2023-11-09T00:24:44.3235662Z Model:                              1
2023-11-09T00:24:44.3236316Z Thread(s) per core:                 2
2023-11-09T00:24:44.3237121Z Core(s) per socket:                 2
2023-11-09T00:24:44.3237681Z Socket(s):                          1
2023-11-09T00:24:44.3238646Z Stepping:                           1
2023-11-09T00:24:44.3239510Z BogoMIPS:                           4890.85
2023-11-09T00:24:44.3246974Z Flags:                              fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good nopl tsc_reliable nonstop_tsc cpuid extd_apicid aperfmperf pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm cmp_legacy svm cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw topoext invpcid_single vmmcall fsgsbase bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves clzero xsaveerptr rdpru arat npt nrip_save tsc_scale vmcb_clean flushbyasid decodeassists pausefilter pfthreshold v_vmsave_vmload umip vaes vpclmulqdq rdpid fsrm
2023-11-09T00:24:44.3256233Z Virtualization:                     AMD-V
2023-11-09T00:24:44.3256893Z Hypervisor vendor:                  Microsoft
2023-11-09T00:24:44.3257759Z Virtualization type:                full
2023-11-09T00:24:44.3258408Z L1d cache:                          64 KiB (2 instances)
2023-11-09T00:24:44.3259136Z L1i cache:                          64 KiB (2 instances)
2023-11-09T00:24:44.3259944Z L2 cache:                           1 MiB (2 instances)
2023-11-09T00:24:44.3260615Z L3 cache:                           32 MiB (1 instance)
2023-11-09T00:24:44.3261257Z NUMA node(s):                       1
2023-11-09T00:24:44.3261942Z NUMA node0 CPU(s):                  0-3
2023-11-09T00:24:44.3262553Z Vulnerability Gather data sampling: Not affected
2023-11-09T00:24:44.3263272Z Vulnerability Itlb multihit:        Not affected
2023-11-09T00:24:44.3264027Z Vulnerability L1tf:                 Not affected
2023-11-09T00:24:44.3264664Z Vulnerability Mds:                  Not affected
2023-11-09T00:24:44.3265348Z Vulnerability Meltdown:             Not affected
2023-11-09T00:24:44.3266102Z Vulnerability Mmio stale data:      Not affected
2023-11-09T00:24:44.3266970Z Vulnerability Retbleed:             Not affected
2023-11-09T00:24:44.3267880Z Vulnerability Spec rstack overflow: Mitigation; safe RET, no microcode
2023-11-09T00:24:44.3268823Z Vulnerability Spec store bypass:    Vulnerable
2023-11-09T00:24:44.3270074Z Vulnerability Spectre v1:           Mitigation; usercopy/swapgs barriers and __user pointer sanitization
2023-11-09T00:24:44.3272167Z Vulnerability Spectre v2:           Mitigation; Retpolines, STIBP disabled, RSB filling, PBRSB-eIBRS Not affected
2023-11-09T00:24:44.3274245Z Vulnerability Srbds:                Not affected
2023-11-09T00:24:44.3275032Z Vulnerability Tsx async abort:      Not affected
2023-11-09T00:24:44.3275628Z Memory Information:
2023-11-09T00:24:44.3276316Z                total        used        free      shared  buff/cache   available
2023-11-09T00:24:44.3277211Z Mem:            15Gi       593Mi        13Gi        21Mi       1.2Gi        14Gi
2023-11-09T00:24:44.3277919Z Swap:          4.0Gi          0B       4.0Gi
2023-11-09T00:24:44.3278576Z Disk Information:
2023-11-09T00:24:44.3279103Z Filesystem      Size  Used Avail Use% Mounted on
2023-11-09T00:24:44.3279705Z /dev/root        84G   61G   24G  73% /
2023-11-09T00:24:44.3280367Z tmpfs           7.9G  172K  7.9G   1% /dev/shm
2023-11-09T00:24:44.3280996Z tmpfs           3.2G  1.1M  3.2G   1% /run
2023-11-09T00:24:44.3281568Z tmpfs           5.0M     0  5.0M   0% /run/lock
2023-11-09T00:24:44.3282279Z /dev/sdb15      105M  6.1M   99M   6% /boot/efi
2023-11-09T00:24:44.3282897Z /dev/sda1        63G  4.1G   56G   7% /mnt
2023-11-09T00:24:44.3283476Z tmpfs           1.6G   12K  1.6G   1% /run/user/1001
2023-11-09T00:24:44.3284167Z Network Information:
2023-11-09T00:24:44.3294553Z docker0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
2023-11-09T00:24:44.3295662Z         inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
2023-11-09T00:24:44.3296608Z         ether 02:42:56:ff:c2:0d  txqueuelen 0  (Ethernet)
2023-11-09T00:24:44.3297757Z         RX packets 0  bytes 0 (0.0 B)
2023-11-09T00:24:44.3298947Z         RX errors 0  dropped 0  overruns 0  frame 0
2023-11-09T00:24:44.3299640Z         TX packets 0  bytes 0 (0.0 B)
2023-11-09T00:24:44.3300370Z         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
2023-11-09T00:24:44.3300906Z 
2023-11-09T00:24:44.3301359Z eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
2023-11-09T00:24:44.3302404Z         inet 10.1.0.30  netmask 255.255.0.0  broadcast 10.1.255.255
2023-11-09T00:24:44.3313381Z         inet6 fe80::6245:bdff:fec1:8e8  prefixlen 64  scopeid 0x20<link>
2023-11-09T00:24:44.3314432Z         ether 60:45:bd:c1:08:e8  txqueuelen 1000  (Ethernet)
2023-11-09T00:24:44.3315343Z         RX packets 8973  bytes 11833743 (11.8 MB)
2023-11-09T00:24:44.3315997Z         RX errors 0  dropped 0  overruns 0  frame 0
2023-11-09T00:24:44.3316773Z         TX packets 1066  bytes 389993 (389.9 KB)
2023-11-09T00:24:44.3317532Z         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
2023-11-09T00:24:44.3318064Z 
2023-11-09T00:24:44.3318308Z lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
2023-11-09T00:24:44.3319004Z         inet 127.0.0.1  netmask 255.0.0.0
2023-11-09T00:24:44.3319644Z         inet6 ::1  prefixlen 128  scopeid 0x10<host>
2023-11-09T00:24:44.3320297Z         loop  txqueuelen 1000  (Local Loopback)
2023-11-09T00:24:44.3321009Z         RX packets 142  bytes 19128 (19.1 KB)
2023-11-09T00:24:44.3321658Z         RX errors 0  dropped 0  overruns 0  frame 0
2023-11-09T00:24:44.3322318Z         TX packets 142  bytes 19128 (19.1 KB)
2023-11-09T00:24:44.3323082Z         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
2023-11-09T00:24:44.3323641Z 
2023-11-09T00:24:44.3421950Z Post job cleanup.
2023-11-09T00:24:44.4149147Z [command]/usr/bin/git version
2023-11-09T00:24:44.4188633Z git version 2.42.0
2023-11-09T00:24:44.4235967Z Temporarily overriding HOME='/home/runner/work/_temp/c0a0efb2-293b-4d84-a586-508061aa2e2e' before making global git config changes
2023-11-09T00:24:44.4238650Z Adding repository directory to the temporary git global config as a safe directory
2023-11-09T00:24:44.4241098Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-09T00:24:44.4274066Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-09T00:24:44.4305998Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-09T00:24:44.4543016Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-09T00:24:44.4562284Z http.https://github.com/.extraheader
2023-11-09T00:24:44.4573768Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2023-11-09T00:24:44.4602070Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-09T00:24:44.5065738Z Cleaning up orphan processes

```