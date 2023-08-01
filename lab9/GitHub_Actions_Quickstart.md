# CI/CD Lab - GitHub Actions

## Observations and Key Concepts for GitHub Actions Quickstart:

`GitHub Actions` is a powerful continuous integration and continuous deployment (CI/CD) platform provided by `GitHub`. It allows you to automate various tasks, such as building, testing, and deploying your code, directly within your GitHub repositories.

### Below are the key concepts and steps I followed during the Quickstart.

#### Key Concepts:

- **Workflow**: A workflow is an automated process defined using a YAML file called workflow file. It contains a series of jobs that can run in parallel or sequentially. Each job can consist of multiple steps.

- **Triggering Workflow**: Workflows can be triggered by various events, such as pushing code, creating a pull request, or scheduled runs.

- **Workflow File**: The workflow file (e.g., main.yml) is placed in the .github/workflows directory of a repository.

- **Jobs**: A workflow can have one or more jobs. Jobs are units of work that can run independently. They usually represent separate steps in a CI/CD pipeline.

- **Steps:** Each job consists of one or more steps, which are individual tasks performed as part of the job.

- **Actions**: Actions are reusable units of code that can be combined to create workflows. GitHub provides many built-in actions, and you can also create custom actions.

- **Runners**: Workflows run on GitHub-hosted runners or self-hosted runners. GitHub-hosted runners are virtual machines provided by GitHub, while self-hosted runners run on a infrastructure.

- **Workflow Syntax**: The workflow file is written in YAML and follows a specific syntax to define jobs, steps, and actions.

#### Steps Followed:

- I read the official GitHub Actions Quickstart guide at https://docs.github.com/en/actions/quickstart.

- I created a new directory called .github/workflows in the root of my repository.

- Inside the .github/workflows directory, I created a workflow file named main.yml.

- In the workflow file, I defined a simple workflow with one job that consists of a few steps. For example:

```
name: CI/CD Pipeline
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Build and Test
        run: |
          npm install
          npm test
```

- I committed and pushed the workflow file to my GitHub repository.

### Observations of Workflow Execution:

After pushing some changes to my repository, the GitHub Actions workflow was triggered automatically (based on the on: [push] event).

### I observed the following during the workflow execution:

- The workflow started running and went through the defined steps in the job.

- The `Checkout code` step used the built-in `actions/checkout@v2` action to fetch the latest code from the repository.

- The `Build and Test` step executed the commands `npm install` and `npm test`. This could vary depending on the specific commands you have in your workflow file.

- If there were any errors encountered during the workflow execution, they would be displayed in the Actions tab of your repository. Common errors could be related to dependencies, syntax issues in the workflow file, or test failures.

- The status of the workflow run (e.g., success, failure) would be visible in the Actions tab, along with details about each step's execution.

- The output and any logs generated during the workflow execution would also be available for review.

**Note**: The above example workflow is just a basic one, and in a real-world scenario, you may need to set up more complex workflows based on your specific requirements.


## Task 2: Gathering System Information and Manual Triggering

### Steps Followed to Implement Manual Trigger and Gather System Information:

#### Configure a Manual Trigger:
I modified the existing workflow file (main.yml) to add a manual trigger using the workflow_dispatch event. This allows us to manually trigger the workflow from the GitHub Actions UI without any specific inputs.

```
name: CI/CD Pipeline
on:
  push:
    branches:
      - main
  workflow_dispatch:  # Manual trigger

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Build and Test
        run: |
          npm install
          npm test

```


#### Manual Trigger Execution
To manually trigger the workflow, follow these steps:

- Go to your GitHub repository.
- Click on the `Actions` tab.
- On the left side of the Actions page, you should see `Workflows` with a list of available workflows.
- Find the workflow you want to manually trigger (in this case, `CI/CD Pipeline`) and click on the `Run workflow` button on the right side.

**Note**: This will trigger the workflow manually, and you can observe the workflow execution as described in the previous task.


#### Gather System Information: 
I added a new step to the existing workflow. I used the `actions/setup-node` action to set up the Node.js environment and then executed a shell command to gather system information.

```
name: CI/CD Pipeline
on:
  push:
    branches:
      - main
  workflow_dispatch:  # Manual trigger

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Build and Test
        run: |
          npm install
          npm test

      - name: Gather System Information
        uses: actions/setup-node@v2
        with:
          node-version: '14.x'
        run: |
          echo "Operating System:"
          uname -a
          echo "Processor Info:"
          lscpu
          echo "Memory Info:"
          free -h
          echo "Disk Space:"
          df -h
```

**Note**: When the workflow is manually triggered, the `Gather System Information` step will execute the specified shell commands to display system information, including the operating system details, processor info, memory info, and disk space.


