Task 1: Create your First GitHub Actions Pipeline
1. Official guide 
    Observations:

    1.1 GitHub Actions allows you to automate various tasks and workflows directly within your GitHub repositories.
    1.2 Workflows are defined in YAML files, known as "workflow files," and reside within the .github/workflows directory of your repository.
    1.3 Actions can be triggered by various events such as code pushes, pull requests, issue updates, etc.
    1.4 Workflows consist of one or more jobs, and each job can run on a different virtual environment or runner.

    Key Concepts:

    Workflow: The automated process defined in a YAML file that describes the CI/CD (Continuous Integration/Continuous Deployment) pipeline for your project.

    Job: A set of steps that run on the same runner, usually used to perform a specific task within the workflow.
    Step: An individual task or action within a job, such as running a script, executing tests, or deploying code.
    
    Runner: The execution environment where jobs run, which can be hosted by GitHub (GitHub-hosted runners) or your own infrastructure (self-hosted runners).
    
    Event: Triggers that start a workflow, like push events, pull request events, issue events, etc.
    
    Artifact: A file or collection of files generated during a workflow that can be preserved and used in subsequent jobs.
    Workflow Dispatch: A way to manually trigger a workflow using the GitHub API.

    Steps:

    - Creating a workflow file
    - Defining the workflow
    - Specifying the jobs and speps
    - Saving and commiting
    - Checking the workflow

2. Observe the Workflow Execution

    Pushing changes into main branch of repository:
    
    Push changes to the main branch of my repository.

    GitHub detects the push event and triggers the "My Workflow" workflow defined in main.yml.

    The workflow starts executing on a GitHub-hosted runner (e.g., an Ubuntu virtual machine).

    The runner checks out your repository code into the virtual environment.

    The "Build project" step runs and displays the following output: "Building project..."

    The "Run tests" step runs and displays the following output: "Running tests..."

    The "Deploy" step runs and displays the following output: "Deployment complete!"

    The workflow execution completes successfully

    Observations:

    -The workflow ran automatically upon pushing changes to the main branch due to the on: push configuration in the workflow file.
    -Each step executed successfully and displayed the expected output.
    -If there were any errors in the workflow file or during execution, the "Actions" tab would show a red X mark, indicating a failed run, and you could click on it to view the details of the error. 

Task 2: Gathering System Information and Manual Triggering

1. Configure a Manual Trigger:

    Changes:
    name: My Workflow
on:
  push:
    branches:
      - main
  workflow_dispatch:  # Add manual trigger
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
      - name: Build project
        run: echo "Building project..."
      - name: Run tests
        run: echo "Running tests..."
      - name: Deploy
        run: echo "Deployment complete!"

    Commentary: The only change made is the addition of the workflow_dispatch event under the on section. This enables the manual trigger for the workflow.

2. Gather System Information:

    System information:
     # New Step: Gather system information
      - name: Gather System Info
        id: sysinfo
        run: |
          echo "=== Runner Information ==="
          uname -a
          echo "=== CPU Information ==="
          lscpu
          echo "=== Memory Information ==="
          free -h
          echo "=== Disk Information ==="
          df -h

    Changes Made:

    2.1 Added a new job named gather-system-info to the workflow.
    2.2 Set the runs-on key to ubuntu-latest, indicating that the job will run on a GitHub-hosted runner with Ubuntu as the operating system.
    2.3 Added a new step named Gather System Info.
    2.4 Used the id: sysinfo to identify this step uniquely.
    2.5 In the run field of the Gather System Info step, shell commands are used to gather the system information:
        "uname" -a gathers information about the runner and its operating system.
        "lscpu" collects CPU information.
        "free" -h displays memory information in a human-readable format.
        "df" -h provides disk usage details.