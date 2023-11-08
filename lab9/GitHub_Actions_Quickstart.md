# GitHub Actions Quickstart

## Steps Followed

### Setting up the Workflow

- Accessed the "Actions" tab on GitHub repository.
- Chose to set up a workflow manually as in said in guide.

### Logs

```
2023-11-08T13:35:46.8370336Z Requested labels: ubuntu-latest
2023-11-08T13:35:46.8370753Z Job defined at: olegogogo/intro-course-labs/.github/workflows/github-actions-demo.yml@refs/heads/olegogogo-patch-1
2023-11-08T13:35:46.8370920Z Waiting for a runner to pick up this job...
2023-11-08T13:35:47.6094103Z Job is waiting for a hosted runner to come online.
2023-11-08T13:35:51.1031103Z Job is about to start running on the hosted runner: GitHub Actions 1 (hosted)
2023-11-08T13:35:53.4036502Z Current runner version: '2.311.0'
2023-11-08T13:35:53.4060695Z ##[group]Operating System
2023-11-08T13:35:53.4061298Z Ubuntu
2023-11-08T13:35:53.4061773Z 22.04.3
2023-11-08T13:35:53.4062101Z LTS
2023-11-08T13:35:53.4062405Z ##[endgroup]
2023-11-08T13:35:53.4062912Z ##[group]Runner Image
2023-11-08T13:35:53.4063344Z Image: ubuntu-22.04
2023-11-08T13:35:53.4063712Z Version: 20231030.2.0
2023-11-08T13:35:53.4064786Z Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20231030.2/images/linux/Ubuntu2204-Readme.md
2023-11-08T13:35:53.4066202Z Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20231030.2
2023-11-08T13:35:53.4067015Z ##[endgroup]
2023-11-08T13:35:53.4067497Z ##[group]Runner Image Provisioner
2023-11-08T13:35:53.4067976Z 2.0.312.1
2023-11-08T13:35:53.4068276Z ##[endgroup]
2023-11-08T13:35:53.4069295Z ##[group]GITHUB_TOKEN Permissions
2023-11-08T13:35:53.4070815Z Contents: read
2023-11-08T13:35:53.4071382Z Metadata: read
2023-11-08T13:35:53.4071931Z Packages: read
2023-11-08T13:35:53.4072508Z ##[endgroup]
2023-11-08T13:35:53.4075883Z Secret source: Actions
2023-11-08T13:35:53.4076465Z Prepare workflow directory
2023-11-08T13:35:53.4689147Z Prepare all required actions
2023-11-08T13:35:53.4845026Z Getting action download info
2023-11-08T13:35:53.7375471Z Download action repository 'actions/checkout@v4' (SHA:b4ffde65f46336ab88eb53be808477a3936bae11)
2023-11-08T13:35:53.9805287Z Complete job name: Explore-GitHub-Actions
2023-11-08T13:35:54.0602719Z ##[group]Run echo "🎉 The job was automatically triggered by a push event."
2023-11-08T13:35:54.0603809Z [36;1mecho "🎉 The job was automatically triggered by a push event."[0m
2023-11-08T13:35:54.0661687Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.0662285Z ##[endgroup]
2023-11-08T13:35:54.1007222Z 🎉 The job was automatically triggered by a push event.
2023-11-08T13:35:54.1172773Z ##[group]Run echo "🐧 This job is now running on a Linux server hosted by GitHub!"
2023-11-08T13:35:54.1173942Z [36;1mecho "🐧 This job is now running on a Linux server hosted by GitHub!"[0m
2023-11-08T13:35:54.1216801Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.1217254Z ##[endgroup]
2023-11-08T13:35:54.1283260Z 🐧 This job is now running on a Linux server hosted by GitHub!
2023-11-08T13:35:54.1321229Z ##[group]Run echo "🔎 The name of your branch is refs/heads/olegogogo-patch-1 and your repository is olegogogo/intro-course-labs."
2023-11-08T13:35:54.1323061Z [36;1mecho "🔎 The name of your branch is refs/heads/olegogogo-patch-1 and your repository is olegogogo/intro-course-labs."[0m
2023-11-08T13:35:54.1364073Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.1364519Z ##[endgroup]
2023-11-08T13:35:54.1429062Z 🔎 The name of your branch is refs/heads/olegogogo-patch-1 and your repository is olegogogo/intro-course-labs.
2023-11-08T13:35:54.1559282Z ##[group]Run actions/checkout@v4
2023-11-08T13:35:54.1559881Z with:
2023-11-08T13:35:54.1560266Z   repository: olegogogo/intro-course-labs
2023-11-08T13:35:54.1561167Z   token: ***
2023-11-08T13:35:54.1561624Z   ssh-strict: true
2023-11-08T13:35:54.1562121Z   persist-credentials: true
2023-11-08T13:35:54.1562572Z   clean: true
2023-11-08T13:35:54.1562983Z   sparse-checkout-cone-mode: true
2023-11-08T13:35:54.1563549Z   fetch-depth: 1
2023-11-08T13:35:54.1563920Z   fetch-tags: false
2023-11-08T13:35:54.1564324Z   show-progress: true
2023-11-08T13:35:54.1564786Z   lfs: false
2023-11-08T13:35:54.1565129Z   submodules: false
2023-11-08T13:35:54.1565541Z   set-safe-directory: true
2023-11-08T13:35:54.1566087Z ##[endgroup]
2023-11-08T13:35:54.3648597Z Syncing repository: olegogogo/intro-course-labs
2023-11-08T13:35:54.3650915Z ##[group]Getting Git version info
2023-11-08T13:35:54.3652023Z Working directory is '/home/runner/work/intro-course-labs/intro-course-labs'
2023-11-08T13:35:54.3653799Z [command]/usr/bin/git version
2023-11-08T13:35:54.3669695Z git version 2.42.0
2023-11-08T13:35:54.3693922Z ##[endgroup]
2023-11-08T13:35:54.3711206Z Temporarily overriding HOME='/home/runner/work/_temp/6b312b83-99b3-4933-806c-984a7e5c134d' before making global git config changes
2023-11-08T13:35:54.3713771Z Adding repository directory to the temporary git global config as a safe directory
2023-11-08T13:35:54.3716328Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T13:35:54.3748399Z Deleting the contents of '/home/runner/work/intro-course-labs/intro-course-labs'
2023-11-08T13:35:54.3754319Z ##[group]Initializing the repository
2023-11-08T13:35:54.3757467Z [command]/usr/bin/git init /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T13:35:54.3827591Z hint: Using 'master' as the name for the initial branch. This default branch name
2023-11-08T13:35:54.3829239Z hint: is subject to change. To configure the initial branch name to use in all
2023-11-08T13:35:54.3830764Z hint: of your new repositories, which will suppress this warning, call:
2023-11-08T13:35:54.3832181Z hint: 
2023-11-08T13:35:54.3832977Z hint: 	git config --global init.defaultBranch <name>
2023-11-08T13:35:54.3833883Z hint: 
2023-11-08T13:35:54.3834970Z hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
2023-11-08T13:35:54.3836722Z hint: 'development'. The just-created branch can be renamed via this command:
2023-11-08T13:35:54.3837543Z hint: 
2023-11-08T13:35:54.3838060Z hint: 	git branch -m <name>
2023-11-08T13:35:54.3839049Z Initialized empty Git repository in /home/runner/work/intro-course-labs/intro-course-labs/.git/
2023-11-08T13:35:54.3845498Z [command]/usr/bin/git remote add origin https://github.com/olegogogo/intro-course-labs
2023-11-08T13:35:54.3882157Z ##[endgroup]
2023-11-08T13:35:54.3883040Z ##[group]Disabling automatic garbage collection
2023-11-08T13:35:54.3885618Z [command]/usr/bin/git config --local gc.auto 0
2023-11-08T13:35:54.3913344Z ##[endgroup]
2023-11-08T13:35:54.3914375Z ##[group]Setting up auth
2023-11-08T13:35:54.3918782Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-08T13:35:54.3946812Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-08T13:35:54.4253784Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-08T13:35:54.4281567Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-08T13:35:54.4521858Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2023-11-08T13:35:54.4554627Z ##[endgroup]
2023-11-08T13:35:54.4556618Z ##[group]Fetching the repository
2023-11-08T13:35:54.4569187Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --no-recurse-submodules --depth=1 origin +2764769aa39330588844deba799098b61f84f0c8:refs/remotes/origin/olegogogo-patch-1
2023-11-08T13:35:54.8930161Z From https://github.com/olegogogo/intro-course-labs
2023-11-08T13:35:54.8932101Z  * [new ref]         2764769aa39330588844deba799098b61f84f0c8 -> origin/olegogogo-patch-1
2023-11-08T13:35:54.8950814Z ##[endgroup]
2023-11-08T13:35:54.8951805Z ##[group]Determining the checkout info
2023-11-08T13:35:54.8954376Z ##[endgroup]
2023-11-08T13:35:54.8955380Z ##[group]Checking out the ref
2023-11-08T13:35:54.8961412Z [command]/usr/bin/git checkout --progress --force -B olegogogo-patch-1 refs/remotes/origin/olegogogo-patch-1
2023-11-08T13:35:54.9018959Z Switched to a new branch 'olegogogo-patch-1'
2023-11-08T13:35:54.9020778Z branch 'olegogogo-patch-1' set up to track 'origin/olegogogo-patch-1'.
2023-11-08T13:35:54.9026486Z ##[endgroup]
2023-11-08T13:35:54.9059886Z [command]/usr/bin/git log -1 --format='%H'
2023-11-08T13:35:54.9084072Z '2764769aa39330588844deba799098b61f84f0c8'
2023-11-08T13:35:54.9215869Z ##[group]Run echo "💡 The olegogogo/intro-course-labs repository has been cloned to the runner."
2023-11-08T13:35:54.9217409Z [36;1mecho "💡 The olegogogo/intro-course-labs repository has been cloned to the runner."[0m
2023-11-08T13:35:54.9261880Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.9262399Z ##[endgroup]
2023-11-08T13:35:54.9333279Z 💡 The olegogogo/intro-course-labs repository has been cloned to the runner.
2023-11-08T13:35:54.9368836Z ##[group]Run echo "🖥️ The workflow is now ready to test your code on the runner."
2023-11-08T13:35:54.9369948Z [36;1mecho "🖥️ The workflow is now ready to test your code on the runner."[0m
2023-11-08T13:35:54.9412493Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.9412965Z ##[endgroup]
2023-11-08T13:35:54.9475956Z 🖥️ The workflow is now ready to test your code on the runner.
2023-11-08T13:35:54.9510614Z ##[group]Run ls /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T13:35:54.9511636Z [36;1mls /home/runner/work/intro-course-labs/intro-course-labs[0m
2023-11-08T13:35:54.9551961Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.9552445Z ##[endgroup]
2023-11-08T13:35:54.9626855Z README.md
2023-11-08T13:35:54.9627677Z index.html
2023-11-08T13:35:54.9628043Z lab1
2023-11-08T13:35:54.9628398Z lab10
2023-11-08T13:35:54.9628896Z lab2
2023-11-08T13:35:54.9629190Z lab3
2023-11-08T13:35:54.9629510Z lab4
2023-11-08T13:35:54.9630270Z lab5
2023-11-08T13:35:54.9630839Z lab6
2023-11-08T13:35:54.9631484Z lab7
2023-11-08T13:35:54.9631957Z lab8
2023-11-08T13:35:54.9632461Z lab9
2023-11-08T13:35:54.9668963Z ##[group]Run echo "🍏 This job's status is success."
2023-11-08T13:35:54.9669705Z [36;1mecho "🍏 This job's status is success."[0m
2023-11-08T13:35:54.9709627Z shell: /usr/bin/bash -e {0}
2023-11-08T13:35:54.9710222Z ##[endgroup]
2023-11-08T13:35:54.9775585Z 🍏 This job's status is success.
2023-11-08T13:35:54.9865973Z Post job cleanup.
2023-11-08T13:35:55.0592470Z [command]/usr/bin/git version
2023-11-08T13:35:55.0632116Z git version 2.42.0
2023-11-08T13:35:55.0675777Z Temporarily overriding HOME='/home/runner/work/_temp/47b909e8-57a3-44d1-9127-0a73ad791824' before making global git config changes
2023-11-08T13:35:55.0677923Z Adding repository directory to the temporary git global config as a safe directory
2023-11-08T13:35:55.0680323Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T13:35:55.0712793Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-08T13:35:55.0744253Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-08T13:35:55.0987309Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-08T13:35:55.1008919Z http.https://github.com/.extraheader
2023-11-08T13:35:55.1023676Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2023-11-08T13:35:55.1057747Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-08T13:35:55.1526908Z Cleaning up orphan processes
```

## Observations

### Workflow Execution

- Upon committing the workflow file, GitHub Actions triggered the workflow as expected.
- The "Actions" tab showed the workflow as running.
- Each step's execution was visible, with logs available for review.

### Output and Errors

- The output of the echo command was visible in the logs.
- No errors were encountered during this initial test.
- The workflow completed successfully with green check marks.

## Manual Trigger Configuration:

## Manual Trigger Configuration

Added `workflow_dispatch` to the workflow file to enable manual triggers. This allows the workflow to be triggered from the GitHub Actions UI without a code push.

The relevant section of the workflow file now looks like this:

```
name: CI

on: 
  push:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Run a one-line script
      run: echo Hello, world!
```

## System Information Gathering
Extended the workflow with an additional step that prints out system information of the runner.

```
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Run a one-line script
      run: echo Hello, world!
    - name: Get system information
      run: |
        echo "System Information:"
        uname -a
        echo "CPU Information:"
        lscpu
        echo "Memory Information:"
        free -h
        echo "Disk Information:"
        df -h
```

As a result, three tests were conducted and passed.
![image](https://github.com/olegogogo/intro-course-labs/assets/45263316/22e9ec64-b3ba-4d6a-b850-b4c450352674)
