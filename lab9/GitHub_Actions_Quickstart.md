# Task 1: Create your First GitHub Actions Pipeline.
Performed steps according to guide:
  * created repository __.github/workflows__ in a root of my git repository.
  * created file __*github-actions-demo.yml*__ in __.github/workflows__ containing:

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
        uses: actions/checkout@v4
      - run: echo "💡 The ${{ github.repository }} repository has been cloned to the runner."
      - run: echo "🖥️ The workflow is now ready to test your code on the runner."
      - name: List files in the repository
        run: |
          ls ${{ github.workspace }}
      - run: echo "🍏 This job's status is ${{ job.status }}."
```
  * commited and pushed changes
  * observed occurrence of a new action in the [actions](https://github.com/timur2104/intro-course-labs/actions) tab
  * watched details and outputs of each command
  * created file named __testfile.txt__ in current branch and observed how action will act.
  * Action executed without errors
### Observation
We created Github action file with few informative echo commands about our repository that triggers whenever a push is performed (__on: [push]__). It seems to be a useful tool that will easily automates CI/CD process.
### Conclusion
__*Github actions*__ provides us with powerfull and at the same time simple tool for performing CI/CD automatization.

# Task 2: Gathering system information and manual triggering
  * added new trigger at __*.github/workflows/github-actions-demo.yml*__:
```
    - on: [push]
    + on: [workflow_dispatch]
```
  * added command to track new hardware info:
```
    - run: |
          echo "Operating System Info:"
          uname -a
          echo "CPU Info:"
          lscpu
          echo "Memory Info:"
          free -h
          echo "Operating system details:"
          cat /etc/os-release
```
