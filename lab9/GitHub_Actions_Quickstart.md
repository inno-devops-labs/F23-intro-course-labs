# GitHub Actions Quickstart Guide

## Task 1: Create your First GitHub Actions Pipeline

### Reading the Official Guide

#### Steps Followed:

1. Created a `.github/workflows` directory in the repository.
2. Inside that directory, created a `github-actions-demo.yml` file.
3. Added the necessary configuration to the YAML file as per the quickstart guide.
4. Committed the workflow file to the branch, which triggered the GitHub Actions workflow.

![Alt text](/images/lab9task1.png)

#### Key Concepts:

- **Workflow**: A configurable automated process that runs one or more jobs. Defined using YAML.
- **Job**: A set of steps that execute on the same runner.
- **Step**: An individual task that can run commands in a job.
- **Runner**: A server that has the GitHub Actions runner application installed.
- **Event**: A specific activity that triggers a workflow.
- **Artifact**: Files created during the build process, which can be used later on.
- **Workflow Dispatch**: An event that allows workflows to be manually triggered.

### Observing the Workflow Execution

#### Execution Details:

- Pushed changes to the repository triggered the workflow automatically.
- Workflow checked out the code and ran the configured steps.
- No errors were encountered during the execution.

#### Logs:
```sh
2023-11-08T15:36:36.4273240Z Requested labels: ubuntu-latest
2023-11-08T15:36:36.4273609Z Job defined at: YusufRoshdy/devops-course-labs/.github/workflows/github-actions-demo.yml@refs/heads/lab9
2023-11-08T15:36:36.4273764Z Waiting for a runner to pick up this job...
2023-11-08T15:36:37.0058115Z Job is waiting for a hosted runner to come online.
2023-11-08T15:36:41.0572202Z Job is about to start running on the hosted runner: GitHub Actions 1 (hosted)
2023-11-08T15:36:43.9533793Z Current runner version: '2.311.0'
2023-11-08T15:36:43.9559680Z ##[group]Operating System
2023-11-08T15:36:43.9560313Z Ubuntu
2023-11-08T15:36:43.9560670Z 22.04.3
2023-11-08T15:36:43.9561044Z LTS
2023-11-08T15:36:43.9561372Z ##[endgroup]
2023-11-08T15:36:43.9561731Z ##[group]Runner Image
2023-11-08T15:36:43.9562227Z Image: ubuntu-22.04
2023-11-08T15:36:43.9562662Z Version: 20231030.2.0
2023-11-08T15:36:43.9563674Z Included Software: https://github.com/actions/runner-images/blob/ubuntu22/20231030.2/images/linux/Ubuntu2204-Readme.md
2023-11-08T15:36:43.9565128Z Image Release: https://github.com/actions/runner-images/releases/tag/ubuntu22%2F20231030.2
2023-11-08T15:36:43.9566002Z ##[endgroup]
2023-11-08T15:36:43.9566444Z ##[group]Runner Image Provisioner
2023-11-08T15:36:43.9566950Z 2.0.312.1
2023-11-08T15:36:43.9567293Z ##[endgroup]
2023-11-08T15:36:43.9568259Z ##[group]GITHUB_TOKEN Permissions
2023-11-08T15:36:43.9569850Z Contents: read
2023-11-08T15:36:43.9570291Z Metadata: read
2023-11-08T15:36:43.9570931Z Packages: read
2023-11-08T15:36:43.9571398Z ##[endgroup]
2023-11-08T15:36:43.9574359Z Secret source: Actions
2023-11-08T15:36:43.9574985Z Prepare workflow directory
2023-11-08T15:36:44.0186757Z Prepare all required actions
2023-11-08T15:36:44.0342325Z Getting action download info
2023-11-08T15:36:44.2620131Z Download action repository 'actions/checkout@v4' (SHA:b4ffde65f46336ab88eb53be808477a3936bae11)
2023-11-08T15:36:44.4832764Z Complete job name: Explore-GitHub-Actions
2023-11-08T15:36:44.5655083Z ##[group]Run echo "🎉 The job was automatically triggered by a push event."
2023-11-08T15:36:44.5656222Z [36;1mecho "🎉 The job was automatically triggered by a push event."[0m
2023-11-08T15:36:44.5714282Z shell: /usr/bin/bash -e {0}
2023-11-08T15:36:44.5714756Z ##[endgroup]
...
```

#### Conclusion:

The workflow ran successfully, indicating that the setup was correct and the runner was able to process the jobs as expected.

#### Observations:

The workflow was triggered automatically on a push event. All steps completed successfully and logs were generated without any errors. The status checks on GitHub showed a green checkmark indicating success.
