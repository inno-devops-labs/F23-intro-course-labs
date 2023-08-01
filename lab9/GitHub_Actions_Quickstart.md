# Steps

- Create a .github/workflows

- Create github-actions-demo.yml inside .github/workflows

- write

```
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
        uses: actions/checkout@v3
      - run: echo "💡 The ${{ github.repository }} repository has been cloned to the runner."
      - run: echo "🖥️ The workflow is now ready to test your code on the runner."
      - name: List files in the repository
        run: |
          ls ${{ github.workspace }}
      - run: echo "🍏 This job's status is ${{ job.status }}."
```

- push to repo

# Observations 

```
Explore-GitHub-Actions
succeeded now in 3s

1s
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
❯ Run echo "🎉 The job was automatically triggered by a push event."
🎉 The job was automatically triggered by a push event.
0s
❯ Run echo "🐧 This job is now running on a Linux server hosted by GitHub!"
🐧 This job is now running on a Linux server hosted by GitHub!
0s
❯ Run echo "🔎 The name of your branch is refs/heads/lab9 and your repository is KamilKhairullin/labs."
🔎 The name of your branch is refs/heads/lab9 and your repository is KamilKhairullin/labs.
1s
❯ Run actions/checkout@v3
Syncing repository: KamilKhairullin/labs
Getting Git version info
Temporarily overriding HOME='/home/runner/work/_temp/4da03c48-3b3f-4ce0-b4f3-c3bfe8d3a3b3' before making global git config changes
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
'd2d206183bc8d7ef87c7b09b4cd7183f3079c416'
0s
❯ Run echo "💡 The KamilKhairullin/labs repository has been cloned to the runner."
💡 The KamilKhairullin/labs repository has been cloned to the runner.
0s
❯ Run echo "🖥️ The workflow is now ready to test your code on the runner."
🖥️ The workflow is now ready to test your code on the runner.
0s
❯ Run ls /home/runner/work/labs/labs
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
❯ Run echo "🍏 This job's status is success."
🍏 This job's status is success.
0s
Post job cleanup.
/usr/bin/git version
git version 2.41.0
Temporarily overriding HOME='/home/runner/work/_temp/d666cc3b-2603-472c-a201-88a47f644a8a' before making global git config changes
Adding repository directory to the temporary git global config as a safe directory
/usr/bin/git config --global --add safe.directory /home/runner/work/labs/labs
/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :"
/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
http.https://github.com/.extraheader
/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
/usr/bin/git submodule foreach --recursive sh -c "git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :"
0s
❯ Complete job
Cleaning up orphan processes
```