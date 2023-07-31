## Task 1: Create your First GitHub Actions Pipeline

1. I added .github/workflows/github-actions-demo.yml file that contains jobs that should be done in response to some action (in my case it is `git push` command). This file can be found in this repository. It is interesting that we can use ready-to-use actions from github to perform some complex tasks.
2. Then I pushed a commit to github and waited until the process done.
```
2s
Current runner version: '2.307.1'
Operating System
Runner Image
Runner Image Provisioner
GITHUB_TOKEN Permissions
Secret source: Actions
Prepare workflow directory
Prepare all required actions
Getting action download info
Download action repository 'actions/checkout@v3' (SHA:c85c95e3d7251135ab7dc9ce3241c5835cc595a9)
Complete job name: Explore-GitHub-Actions
0s
Run echo "🎉 The job was automatically triggered by a push event."
🎉 The job was automatically triggered by a push event.
0s
Run echo "🐧 This job is now running on a Linux server hosted by GitHub!"
🐧 This job is now running on a Linux server hosted by GitHub!
0s
Run echo "🔎 The name of your branch is refs/heads/lab9 and your repository is andrey-kulevich/labs."
🔎 The name of your branch is refs/heads/lab9 and your repository is andrey-kulevich/labs.
0s
Run actions/checkout@v3
Syncing repository: andrey-kulevich/labs
Getting Git version info
Temporarily overriding HOME='/home/runner/work/_temp/a6a1d19c-aee0-4f75-873a-479833746e8c' before making global git config changes
Adding repository directory to the temporary git global config as a safe directory
/usr/bin/git config --global --add safe.directory /home/runner/work/labs/labs
Deleting the contents of '/home/runner/work/labs/labs'
Initializing the repository
Disabling automatic garbage collection
Setting up auth
Fetching the repository
Determining the checkout info
Checking out the ref
/usr/bin/git log -1 --format='%H'
'5ecdbe4fc5cd8554c12265969ee2b341aa9958a9'
0s
Run echo "💡 The andrey-kulevich/labs repository has been cloned to the runner."
💡 The andrey-kulevich/labs repository has been cloned to the runner.
0s
Run echo "🖥️ The workflow is now ready to test your code on the runner."
🖥️ The workflow is now ready to test your code on the runner.
0s
Run ls /home/runner/work/labs/labs
README.md
index.html
lab1
lab10
lab2
lab3
lab4
lab5
lab6
lab7
lab8
lab9
0s
Run echo "🍏 This job's status is success."
🍏 This job's status is success.
0s
Post job cleanup.
/usr/bin/git version
git version 2.41.0
Temporarily overriding HOME='/home/runner/work/_temp/5b06a6f9-b1c3-4c89-b3a4-aa8f20a00c8a' before making global git config changes
Adding repository directory to the temporary git global config as a safe directory
/usr/bin/git config --global --add safe.directory /home/runner/work/labs/labs
/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
http.https://github.com/.extraheader
/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
0s
Cleaning up orphan processes
```
I faced no errors, the process is pretty simple.


## Task 2: Gathering System Information and Manual Triggering

1. I configured workflow with manual trigger in a new workflow .github/workflows/github-actions-manual-trigger.yml
2. I pushed new workflow and runned it manually in github.
3. I also added action to gather system info using kenchan0130/actions-system-info action.

Here are the results:

```
0s
Run kenchan0130/actions-system-info@master
0s
Run OUTPUTS=(
  OUTPUTS=(
    "CPU: 2, Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz"
    "Hostname: fv-az262-189"
    "Kernel release: 5.15.0-1041-azure"
    "Kernel version: #48-Ubuntu SMP Tue Jun 20 20:34:08 UTC 2023"
    "Platform: linux"
    "Release: 22.04"
    "Total memory: 7268675584"
  )
  shell: /usr/bin/bash -e {0}
```