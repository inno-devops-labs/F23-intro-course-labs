# GitHub Actions Quickstart Guide

## Task 1: Create your First GitHub Actions Pipeline

### Reading Official Guide:

#### Steps Followed:

1. Created `.github/workflows` directory in the repository as instructed.
2. Then created a `github-actions-demo.yml` file as per instructions.
3. Added the configuration to the YAML file from the quickstart guide.
4. Committed the workflow file to the new branch, which triggered the GitHub Actions workflow automatically

#### Key Concepts:

1. **Workflow:** A workflow is the basic block that is defined by YAML file in `.github/workflows` directory. This contains commands that'll be run when the pipeline runs.
2. **Events:**  Specific activities that trigger workflows like `push`, `pull_request`, as we did in our case.
3. **Jobs:** Set of steps that execute on the same runner. By default, jobs run in parallel, but they can be configured to run sequentially.
4. **Steps:** Individual tasks that run commands or actions. A job consists of one or more steps.
5. **Runners:** Servers that have the GitHub Actions runner application installed. They run the jobs in a workflow.

## Observation:

- As soon i created the `.yaml` file and added into the repo with certain steps, the CI got triggered and ran each step one by one. The logs could be seen there.
 