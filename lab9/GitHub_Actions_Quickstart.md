## Task 1: Create your First GitHub Actions Pipeline

### 1. Read the Official Guide:
- Create a new repository to set up GitHub Actions<br>[Link to example repository](https://github.com/AmZakirov/ex_repo)<br>

- Created some txt file in repository

- Created a new directory called `.github/workflows` to define a workflow configuration files

- In the `.github/workflows` directory, created a new YAML file (e.g., `github-actions-demo.yml`) to define a workflow

- Coppied YAML contents from tutorial

- Committed and started pull request the workflow file

### 2. Viewing the workflow results:
- From the list of workflow runs, clicked the name of the run

- Let's look at our runner's log. For example, one of the `echo` and `ls` commands. The `echo` command is responsible for displaying text, and using the `ls` command you can see a list of files in a directory

- Saved a screenshot to Google Drive<br>[Link to log of changed runner](https://drive.google.com/file/d/16E5AFkprE-PRMRsUmjLtdFNE-d7JuhR0/view?usp=sharing)<br>

### 3. Observe the Workflow Execution:
- Let's create another txt file in our repository

- Also let's change the text of one of the `echo` commands in our runner and see the result

- As we can see, the editted text has changed, and a new file has appeared in the list

- Saved a screenshot to Google Drive<br>[Link to log of pure tutorial runner](https://drive.google.com/file/d/1sSD7SA_pF2mFdNftIA3AYvePPDZ6nWWC/view?usp=sharing)<br>


## Task 2: Gathering System Information and Manual Triggering

### 1. Configure a Manual Trigger:
- First, let's create a simple runner that will simply display "Hello!" and name it "Manual trigger"

- String `on: workflow_dispatch:` is responsible for manually triggering

- Body of the yml file:

  ```
  name: Manual trigger

  on:
    workflow_dispatch:

  jobs:
    bash-example:
      runs-on: ubuntu-latest
      steps:
        - run: echo "Hello!"

  ```
- Now, to run a workflow it's necessary to click on the "Run workflow" button in 'Actions' tab

- Result of the runner is placed in Google Drive:

  [link1](https://drive.google.com/file/d/1qn6j57OE0Wy7_1lsNhGEt4D_7y3F-o3n/view?usp=sharing), 
  [link2](https://drive.google.com/file/d/1qn6j57OE0Wy7_1lsNhGEt4D_7y3F-o3n/view?usp=sharing)

### 2. Gathering System Information and Manual Triggering:
- The main task is divided into 3 stages: collect information about the runner, system and components (I chose CPU, RAM and Hard disk)

- To begin with, I will attach a link to the yml file that I used in the current task [yml](https://github.com/AmZakirov/ex_repo/blob/main/.github/workflows/system_info.yml)

- I will also attach screenshots of the runner's results [Runner info and System info](https://drive.google.com/file/d/1ZObs4-mOtxfW3VxGWIzfv5iLhBJpYZsL/view?usp=sharing) and [Hardware info](https://drive.google.com/file/d/1It7Sle7gHBC0kLYGge0_8gu99VDSB8Qd/view?usp=sharing)

<b>1. Runner info:</b><br>
- We can collect information about our runner using the [official tutorial](https://docs.github.com/en/actions/learn-github-actions/contexts). I am attaching the main changes:<br>
```
- name: Dump runner context
        env:
          RUNNER_CONTEXT: ${{ toJson(runner) }}
        run: echo "$RUNNER_CONTEXT"
```

<b>2. System information:</b><br>
- To collect data about the system, I wrote a script in Python and placed it in the runner.<br>
- I collected information about the system using the standard *platform* library
- From the [official tutorial](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python), you we use the following commands to run a Python script:
```
- name: Operating System Details
        shell: python
        run: |
          "Python commands here"
```

<b>3. Hardware specifications: </b><br>
- Obtaining data about computer components turned out to be more difficult due to the fact that external libraries were required to collect data (*cpuinfo*, *psutil*)
- So I followed the same steps as in the [official tutorial](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python) paragraph "Installing Dependencies":
```
steps:
- uses: actions/checkout@v4
- name: Set up Python
  uses: actions/setup-python@v4
  with:
    python-version: '3.11'
- name: Install dependencies
  run: python -m pip install --upgrade pip install psutil

```

#### Main ouputs:
<b>1. Runner info:</b><br>
```
 {
  "os": "Linux",
  "arch": "X64",
  "name": "GitHub Actions 1",
  "environment": "github-hosted",
  "tool_cache": "/opt/hostedtoolcache",
  "temp": "/home/runner/work/_temp",
  "workspace": "/home/runner/work/ex_repo"
}
```

<b>2. System information:</b><br>
```
Operating System: Linux
OS Release: 6.2.0-1012-azure
OS Version: #12~22.04.1-Ubuntu SMP Thu Sep  7 14:07:14 UTC 2023
```

<b>3. Hardware specifications: </b><br>
```
CPU info:
brand_raw : Intel(R) Xeon(R) Platinum 8370C CPU @ 2.80GHz
hz_advertised_friendly : 2.8000 GHz
arch : X86_64
bits : 64
count : 2 (kernels)

RAM info:
Total: 6.76 GB
Available: 5.88 GB
Used: 0.55 GB

Hard disk info:
Total: 83.16 GB
Used: 65.85 GB
Free: 17.30 GB
```
