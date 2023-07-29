# Task 1: Create your First GitHub Actions Pipeline

## Steps Followed

### Create a new repository
- Created a new repository on GitHub by clicking the "+" sign in the top right corner and selecting "New repository."
- Named the repository "testRep" and provided a brief description.

### Clone the repository
- Then we have to clone the newly created repository to the local machine using the below command:

```bash
git clone URL to your repository
```

### Create a workflow file
- Inside the local repository, create a new directory named ".github/workflows."
- In this directory, create a YAML file named "main.yml".

### Define the workflow
- Within "main.yml," define a basic workflow that will run when changes are pushed to the repository.
- The YAML syntax for the workflow is as follows:
```yaml
name: CI Workflow
on:
  push:
    branches:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2
      - name: Display a message
        run: echo "Priveet, Is it really working??"
```

### Commit and push
- Commit the "main.yml" file to the local repository and push the changes to the remote repository on GitHub.

### Observe the Workflow Execution
- After pushing the changes, go to the "Actions" tab on the GitHub repository to observe the workflow execution.
- I could see the workflow named "CI Workflow" running, and it displayed the message "Priveet, Is it really working??" as expected.



# Task 2: Gathering System Information and Manual Triggering


### Update the Workflow File

Modify the existing "main.yml" workflow file to include the manual trigger and the system information gathering step.

```yaml
name: CI Workflow
on:
  push:
    branches:
      - main
  workflow_dispatch:  # Manual trigger

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Display a message
        run: echo "Priveet, Is it really working??"

      - name: Gather System Information
        run: 
          echo "System Information:"
          lscpu
          free -h
          df -h
```

### Step 2: Commit and Push the Updated Workflow

I will commit the changes to the "main.yml" file and push them to the remote repository on GitHub.

### Step 3: Manually Trigger the Workflow

To manually trigger the workflow, follow these steps:
1. Go to the repository on GitHub.
2. Click on the "Actions" tab.
3. On the left side, you will see "Workflows" with the name of your workflow ("CI Workflow").
4. Click on the "Run workflow" dropdown button.
5. Click on "Run workflow" in the "Run workflow" section.

### Step 4: Observe the Workflow Execution and Gathered System Information

After manually triggering the workflow, observe the output and the gathered system information. The output will display the "Hello, GitHub Actions!" message, and the system information will include details about the runner, hardware specifications, and operating system.

## Gathered System Information

The following system information was gathered during the workflow execution:

```
System Information:
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Address sizes:                   46 bits physical, 48 bits virtual
Byte Order:                      Little Endian
CPU(s):                          2
On-line CPU(s) list:             0,1
Vendor ID:                       GenuineIntel
Model name:                      Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
```

## Observations and Key Concepts

1. **Manual Trigger**: By adding `workflow_dispatch` under the `on` key, we have enabled the manual trigger for the workflow. 

2. **System Information Gathering**: To collect system information, we used a new step in the workflow and executed shell commands to gather details about the runner environment, CPU, RAM, and disk space. In this example, we used `lscpu`, `free -h`, and `df -h` commands to get this information.

3. **Workflow Execution**: When manually triggering the workflow, you can observe the progress and output in real-time on the GitHub Actions dashboard.

By incorporating a manual trigger and gathering system information, the GitHub Actions workflow becomes more versatile and informative. By a manual trigger we can control CI process.  