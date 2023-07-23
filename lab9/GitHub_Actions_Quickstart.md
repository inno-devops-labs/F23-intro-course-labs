# Task 1: Create your First GitHub Actions Pipeline

## Create first workflow:
1) Create .github/workflows directory in your repository on GitHub if this directory does not already exist
2) In this directory, create file named github-actions-demo.yml
3) Copy YAML content from Quickstart for GitHub Actions
4) Committing workflow file to branch in repository triggers push event and runs your workflow
5) You can see output of workflow in output.jpg

# Task 2: Gathering System Information and Manual Triggering

## Configure a Manual Trigger:

To add manual trigger to our workflow, we can just add **workflow_dispatch** to **on: part** of file like this:
```
on:
  push:
  workflow_dispatch:
```

## Gather System Information:
To check system information we should add following part to github-actions-demo.yml:
```
# Add step to gather system information
      - name: Gather System Information
        run: |
          echo "🔧 Runner's operating system: ${{ runner.os }}"
          echo "🔧 Runner's hardware architecture: ${{ runner.arch }}"
          echo "🔧 Runner's CPU: $(lscpu)"
          echo "🔧 Total memory: $(free -h | grep Mem | awk '{print $2}')"
          echo "🔧 Total disk space: $(df -h --total | grep total | awk '{print $2}')"
```
