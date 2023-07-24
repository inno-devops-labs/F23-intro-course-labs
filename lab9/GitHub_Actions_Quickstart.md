# Task 1: Create your First GitHub Actions Pipeline
---
### Steps followed to create a GitHub Actions Pipeline:
1. Go to the `Actions` section;
2. Click `set up a workflow yourself ->`;
3. Copy the suggested YAML contents into the `github-actions-demo.yml` file;
4. Commit the changes into a new branch (github-actions in my case);
5. Go to the `Actions` section again to observe the workflow execution.

# Task 2: Gathering System Information and Manual Triggering 
---

### Steps to configure a manual trigger:
1. Go to the `Actions` section
2. Click `New workflow`;
3. Click `set up a workflow yourself ->`; 
4. Copy the suggested contents [from here](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow#defining-inputs-for-manually-triggered-workflows);
5. Commit the changes into the branch;
6. Go to the `Actions` section again to observe the workflow execution. 

### Gathering system information
This code may be intergrated with any other workflow file to gather system information:
```
on: [push]
jobs:
  collect-info:
    runs-on: ${{ runner.os }}
    steps:
      - name: Collect hardware and OS details
        run: |
          echo "🖥 Runner hardware specifications:"
          lscpu
          echo "📊 Memory usage:"
          free -m
          echo "💻 Operating system details:"
          uname -a
```
The steps to configure such a file is the same as above.