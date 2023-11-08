
# Task 1: Create your First GitHub Actions Pipeline

Steps followed:

1. Reading the official guide provided.
2. Click on Actions
3. Click on "skip this and setup workflow yourself".
4. create a file in the repository named "github-actions-demo.yml" with the following content:
```bash
name: GitHub Actions Demo
run-name: ${{ github.actor }} is testing out GitHub Actions 🚀
on: [push]
jobs:
  Explore-GitHub-Actions:
    runs-on: ubuntu-latest
    steps:
      - run: echo "🎉 The job was automatically triggered by a ${{ github.event_name }} event."
      - run: echo "🐧 This job is now running on a ${{ runner.os }} server hosted by GitHub!"
      - run: echo "🔎 The name of your branch is ${{ github.ref }} and your repository is ${{ github.repository }}."
      - name: Check out repository code
        uses: actions/checkout@v4
      - run: echo "💡 The ${{ github.repository }} repository has been cloned to the runner."
      - run: echo "🖥️ The workflow is now ready to test your code on the runner."
      - name: List files in the repository
        run: |
          ls ${{ github.workspace }}
      - run: echo "🍏 This job's status is ${{ job.status }}."
```

5. Committed workflow file, which triggered the GitHub Actions workflow.

the output as follow:

![Create the workflow](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/249e3e8b-ac8d-4207-8c07-7968bc1c312c)

![ready Workflow](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/f3fa710e-ae4c-4afa-994e-2f324d7fd7a4)


and the log:

```bash
2023-11-08T22:31:38.8400712Z Requested labels: ubuntu-latest
2023-11-08T22:31:38.8401076Z Job defined at: AhmadTaha96/intro-course-labs/.github/workflows/github-actions-demo.yml@refs/heads/AhmadTaha96-patch-1
2023-11-08T22:31:38.8401202Z Waiting for a runner to pick up this job...
2023-11-08T22:31:39.5124042Z Job is waiting for a hosted runner to come online.
2023-11-08T22:31:42.8325902Z Job is about to start running on the hosted runner: GitHub Actions 1 (hosted)
2023-11-08T22:31:44.8155064Z Current runner version: '2.311.0'
2023-11-08T22:31:44.8186579Z ##[group]Operating System
2023-11-08T22:31:44.8187473Z Ubuntu
2023-11-08T22:31:44.8187956Z 22.04.3
2023-11-08T22:31:44.8188440Z LTS
2023-11-08T22:31:44.8188903Z ##[endgroup]
2023-11-08T22:31:44.8189431Z ##[group]Runner Image
2023-11-08T22:31:44.8190040Z Image: ubuntu-22.04
2023-11-08T22:31:44.8190613Z Version: 20231030.2.0
2023-11-08T22:31:44.8191991Z Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20231030.2/images/linux/Ubuntu2204-Readme.md
2023-11-08T22:31:44.8194150Z Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20231030.2
2023-11-08T22:31:44.8195381Z ##[endgroup]
2023-11-08T22:31:44.8195951Z ##[group]Runner Image Provisioner
2023-11-08T22:31:44.8196702Z 2.0.312.1
2023-11-08T22:31:44.8197144Z ##[endgroup]
2023-11-08T22:31:44.8198477Z ##[group]GITHUB_TOKEN Permissions
2023-11-08T22:31:44.8200666Z Contents: read
2023-11-08T22:31:44.8201245Z Metadata: read
2023-11-08T22:31:44.8202101Z Packages: read
2023-11-08T22:31:44.8202713Z ##[endgroup]
2023-11-08T22:31:44.8206545Z Secret source: Actions
2023-11-08T22:31:44.8207349Z Prepare workflow directory
2023-11-08T22:31:44.8952270Z Prepare all required actions
2023-11-08T22:31:44.9142156Z Getting action download info
2023-11-08T22:31:45.1136541Z Download action repository 'actions/checkout@v4' (SHA:b4ffde65f46336ab88eb53be808477a3936bae11)
2023-11-08T22:31:45.4175137Z Complete job name: Explore-GitHub-Actions
2023-11-08T22:31:45.5052245Z ##[group]Run echo "🎉 The job was automatically triggered by a push event."
2023-11-08T22:31:45.5053714Z [36;1mecho "🎉 The job was automatically triggered by a push event."[0m
2023-11-08T22:31:45.5108869Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:45.5109466Z ##[endgroup]
2023-11-08T22:31:45.5538186Z 🎉 The job was automatically triggered by a push event.
2023-11-08T22:31:45.5733435Z ##[group]Run echo "🐧 This job is now running on a Linux server hosted by GitHub!"
2023-11-08T22:31:45.5734809Z [36;1mecho "🐧 This job is now running on a Linux server hosted by GitHub!"[0m
2023-11-08T22:31:45.5771762Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:45.5772286Z ##[endgroup]
2023-11-08T22:31:45.5839080Z 🐧 This job is now running on a Linux server hosted by GitHub!
2023-11-08T22:31:45.5879062Z ##[group]Run echo "🔎 The name of your branch is refs/heads/AhmadTaha96-patch-1 and your repository is AhmadTaha96/intro-course-labs."
2023-11-08T22:31:45.5881473Z [36;1mecho "🔎 The name of your branch is refs/heads/AhmadTaha96-patch-1 and your repository is AhmadTaha96/intro-course-labs."[0m
2023-11-08T22:31:45.5915169Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:45.5915711Z ##[endgroup]
2023-11-08T22:31:45.5974672Z 🔎 The name of your branch is refs/heads/AhmadTaha96-patch-1 and your repository is AhmadTaha96/intro-course-labs.
2023-11-08T22:31:45.6126154Z ##[group]Run actions/checkout@v4
2023-11-08T22:31:45.6126796Z with:
2023-11-08T22:31:45.6127266Z   repository: AhmadTaha96/intro-course-labs
2023-11-08T22:31:45.6128269Z   token: ***
2023-11-08T22:31:45.6128712Z   ssh-strict: true
2023-11-08T22:31:45.6129191Z   persist-credentials: true
2023-11-08T22:31:45.6129708Z   clean: true
2023-11-08T22:31:45.6130176Z   sparse-checkout-cone-mode: true
2023-11-08T22:31:45.6130766Z   fetch-depth: 1
2023-11-08T22:31:45.6131186Z   fetch-tags: false
2023-11-08T22:31:45.6131642Z   show-progress: true
2023-11-08T22:31:45.6132096Z   lfs: false
2023-11-08T22:31:45.6132483Z   submodules: false
2023-11-08T22:31:45.6132957Z   set-safe-directory: true
2023-11-08T22:31:45.6133469Z ##[endgroup]
2023-11-08T22:31:45.9422504Z Syncing repository: AhmadTaha96/intro-course-labs
2023-11-08T22:31:45.9424848Z ##[group]Getting Git version info
2023-11-08T22:31:45.9426387Z Working directory is '/home/runner/work/intro-course-labs/intro-course-labs'
2023-11-08T22:31:45.9427927Z [command]/usr/bin/git version
2023-11-08T22:31:45.9657861Z git version 2.42.0
2023-11-08T22:31:45.9661624Z ##[endgroup]
2023-11-08T22:31:45.9677508Z Temporarily overriding HOME='/home/runner/work/_temp/14dfc265-1f1e-409d-b5bd-88261188ec90' before making global git config changes
2023-11-08T22:31:45.9679749Z Adding repository directory to the temporary git global config as a safe directory
2023-11-08T22:31:45.9681629Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T22:31:45.9733088Z Deleting the contents of '/home/runner/work/intro-course-labs/intro-course-labs'
2023-11-08T22:31:45.9762725Z ##[group]Initializing the repository
2023-11-08T22:31:45.9764460Z [command]/usr/bin/git init /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T22:31:45.9881353Z hint: Using 'master' as the name for the initial branch. This default branch name
2023-11-08T22:31:45.9882778Z hint: is subject to change. To configure the initial branch name to use in all
2023-11-08T22:31:45.9884503Z hint: of your new repositories, which will suppress this warning, call:
2023-11-08T22:31:45.9885397Z hint: 
2023-11-08T22:31:45.9886015Z hint: 	git config --global init.defaultBranch <name>
2023-11-08T22:31:45.9886752Z hint: 
2023-11-08T22:31:45.9887656Z hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
2023-11-08T22:31:45.9889012Z hint: 'development'. The just-created branch can be renamed via this command:
2023-11-08T22:31:45.9889948Z hint: 
2023-11-08T22:31:45.9890381Z hint: 	git branch -m <name>
2023-11-08T22:31:45.9891855Z Initialized empty Git repository in /home/runner/work/intro-course-labs/intro-course-labs/.git/
2023-11-08T22:31:45.9916220Z [command]/usr/bin/git remote add origin https://github.com/AhmadTaha96/intro-course-labs
2023-11-08T22:31:45.9968463Z ##[endgroup]
2023-11-08T22:31:45.9969427Z ##[group]Disabling automatic garbage collection
2023-11-08T22:31:45.9970454Z [command]/usr/bin/git config --local gc.auto 0
2023-11-08T22:31:45.9997740Z ##[endgroup]
2023-11-08T22:31:45.9998620Z ##[group]Setting up auth
2023-11-08T22:31:46.0005730Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-08T22:31:46.0058450Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-08T22:31:46.0495073Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-08T22:31:46.0504193Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-08T22:31:46.0740729Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2023-11-08T22:31:46.0787594Z ##[endgroup]
2023-11-08T22:31:46.0790247Z ##[group]Fetching the repository
2023-11-08T22:31:46.0803703Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --no-recurse-submodules --depth=1 origin +755c276063ee1fde6a399afa518c9b20ea3f2b1e:refs/remotes/origin/AhmadTaha96-patch-1
2023-11-08T22:31:46.3424874Z From https://github.com/AhmadTaha96/intro-course-labs
2023-11-08T22:31:46.3430020Z  * [new ref]         755c276063ee1fde6a399afa518c9b20ea3f2b1e -> origin/AhmadTaha96-patch-1
2023-11-08T22:31:46.3472618Z ##[endgroup]
2023-11-08T22:31:46.3474988Z ##[group]Determining the checkout info
2023-11-08T22:31:46.3475951Z ##[endgroup]
2023-11-08T22:31:46.3477491Z ##[group]Checking out the ref
2023-11-08T22:31:46.3478850Z [command]/usr/bin/git checkout --progress --force -B AhmadTaha96-patch-1 refs/remotes/origin/AhmadTaha96-patch-1
2023-11-08T22:31:46.3530120Z Switched to a new branch 'AhmadTaha96-patch-1'
2023-11-08T22:31:46.3531188Z branch 'AhmadTaha96-patch-1' set up to track 'origin/AhmadTaha96-patch-1'.
2023-11-08T22:31:46.3533231Z ##[endgroup]
2023-11-08T22:31:46.3551568Z [command]/usr/bin/git log -1 --format='%H'
2023-11-08T22:31:46.3572630Z '755c276063ee1fde6a399afa518c9b20ea3f2b1e'
2023-11-08T22:31:46.3775016Z ##[group]Run echo "💡 The AhmadTaha96/intro-course-labs repository has been cloned to the runner."
2023-11-08T22:31:46.3776615Z [36;1mecho "💡 The AhmadTaha96/intro-course-labs repository has been cloned to the runner."[0m
2023-11-08T22:31:46.3815393Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:46.3815952Z ##[endgroup]
2023-11-08T22:31:46.3879566Z 💡 The AhmadTaha96/intro-course-labs repository has been cloned to the runner.
2023-11-08T22:31:46.3917756Z ##[group]Run echo "🖥️ The workflow is now ready to test your code on the runner."
2023-11-08T22:31:46.3918920Z [36;1mecho "🖥️ The workflow is now ready to test your code on the runner."[0m
2023-11-08T22:31:46.3952347Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:46.3952848Z ##[endgroup]
2023-11-08T22:31:46.4020279Z 🖥️ The workflow is now ready to test your code on the runner.
2023-11-08T22:31:46.4164494Z ##[group]Run ls /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T22:31:46.4165392Z [36;1mls /home/runner/work/intro-course-labs/intro-course-labs[0m
2023-11-08T22:31:46.4197772Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:46.4198186Z ##[endgroup]
2023-11-08T22:31:46.4269935Z README.md
2023-11-08T22:31:46.4270756Z index.html
2023-11-08T22:31:46.4271479Z lab1
2023-11-08T22:31:46.4271830Z lab10
2023-11-08T22:31:46.4272150Z lab2
2023-11-08T22:31:46.4272413Z lab3
2023-11-08T22:31:46.4272668Z lab4
2023-11-08T22:31:46.4273119Z lab5
2023-11-08T22:31:46.4273384Z lab6
2023-11-08T22:31:46.4273628Z lab7
2023-11-08T22:31:46.4273885Z lab8
2023-11-08T22:31:46.4274129Z lab9
2023-11-08T22:31:46.4309677Z ##[group]Run echo "🍏 This job's status is success."
2023-11-08T22:31:46.4310350Z [36;1mecho "🍏 This job's status is success."[0m
2023-11-08T22:31:46.4342246Z shell: /usr/bin/bash -e {0}
2023-11-08T22:31:46.4342676Z ##[endgroup]
2023-11-08T22:31:46.4400407Z 🍏 This job's status is success.
2023-11-08T22:31:46.4487122Z Post job cleanup.
2023-11-08T22:31:46.5437772Z [command]/usr/bin/git version
2023-11-08T22:31:46.5472824Z git version 2.42.0
2023-11-08T22:31:46.5552786Z Temporarily overriding HOME='/home/runner/work/_temp/961131e3-c3a0-4bcf-960f-a9d718d660eb' before making global git config changes
2023-11-08T22:31:46.5556915Z Adding repository directory to the temporary git global config as a safe directory
2023-11-08T22:31:46.5565064Z [command]/usr/bin/git config --global --add safe.directory /home/runner/work/intro-course-labs/intro-course-labs
2023-11-08T22:31:46.5611753Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2023-11-08T22:31:46.5652352Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
2023-11-08T22:31:46.5948178Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2023-11-08T22:31:46.5963860Z http.https://github.com/.extraheader
2023-11-08T22:31:46.5976956Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2023-11-08T22:31:46.6017853Z [command]/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
2023-11-08T22:31:46.6585643Z Cleaning up orphan processes
```


**Essential Ideas:**

 -  Workflow: A sequence of automated actions consisting of multiple jobs, established through YAML configuration
 -  Job: A collection of steps that are executed in a unified setting. 
 - Step: A single operation capable of executing commands within a job.
 -  Runner: A host machine equipped with the GitHub Actions runner software. 
 - Event: A particular occurrence that initiates the execution of a workflow. 
 - Artifact: Outputs generated during the execution process, which can be utilized subsequently. 
 - Workflow Dispatch: A type of event that facilitates the manual initiation of workflows.


## Workflow Execution

I made one new commit (adding testing file), I checked the workflow to see that the workflow was triggered automatically and I saw the following output (3 screenshot for every stage in the workflow processing):

![after commiting new file](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/2a6acc35-d51d-45e6-8c96-5708582c8aa0)

![2nd output](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/05deaef2-7d2c-49cc-87d2-d969f196fbd1)

![ready Workflow](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/90256900-a15a-4cfd-bb93-8c27c89a8856)


Conclusion: The workflow executed without issues, signifying that the configuration was properly established and the runner processed the jobs as intended.

Observatios: The workflow commenced automatically in response to a push event. Each step was carried out flawlessly, and error-free logs were produced. On GitHub, the status checks displayed a green checkmark, denoting a successful operation.

# Task 2: Gathering system information and manual triggering

To enable the manual trigger and the push trigger we can do the follwoing:
The `on` section in the github-actions-demo.yml file was updated to facilitate activation by both manual initiation and push events. it will be include now the follwoing:
```bash
on:
  push:
  workflow_dispatch:
```
The workflow now can be triggered by any push to the repository as well as manually through the GitHub interface, the follwoing screenshot show how the workflow triggered after this and then it's ready:

![Ensbling](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/93b38d31-26f5-47ef-b2d3-8b6794461552)

## Gather Sys Information
In order to get and gather system information we need to add more to our workflow file we have created as follow (to be add):

```bash
name: Display System Information
run: |
    echo "Operating System Info:"
    uname -a
    echo "CPU Info:"
    lscpu
    echo "Memory Info:"
    free -h
 ```

The output as follow shows system information gathered:
![Sys information](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/01553d0d-3ee9-4443-b0a8-02573662d1fb)
