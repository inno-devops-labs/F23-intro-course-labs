# Github Actions

```
DevOps Toolchain Category: Version control, CI-CD
```

## Create your First GitHub Actions Pipeline:

Observations: Actually it is quite simple. The steps to setup this pipeline are :

- I crreated a '.github/workflow' directory in from the project source
- Inside this directory I created a 'github-actions.yml'
- I copy and pasted the actions to run in the 'github-actions.yml' file
- I Committed the changes on the branch

Observations:

- Each time I push a commit on the branch having the workflow-actions, the actions specified in the YAML file runs.

**Image proof**
![Settings](assets/workflow-runs.png)

## Gathering System Information and Manual Triggering :

### Configure a Manual Trigger:

The steps I followed to add a manual trigger to my workflow

- I edited my workflow file to add a new trigger ('workflow_dispactch' event ).

**Image view**
![Settings](assets/workflow-dispatch.png)

- I added this event under the "On" key section
- I saved the changes and committed them

Obersations : On the GitHub repository, in the workflow list, I could see a "Run Workflow" button added to my edited workflow

- To run it, I then clicked, on the "Run workflow" and leaving the inputs parameters empty.

**Image view**
![Settings](assets/manual-run.png)

Observations: For the workflow dispatch, to be detected, I had to merge my branch to the main branch, as per github actions documentation.

### Gather System Information:

#### System information gathering

To gather system information I can make use of GitHub's context which has user system details. Using the `actions/github-script` action.
The steps I follow are :

- I modified my workflow to add an action name `gather system info`
- I added an action-step the use the `actions/gihub-script@v5`, with which it is possible to run Javascript code.

```sh
    jobs:
        gather_info:
            runs-on: Ubuntu-latest
            steps:
              - name : get github context
                uses : actions/github-script@v5
                id: context
                with:
                  script: |
                    console.log(JSON.stringigy(github.context, null,2))
```

#### Hardware specifications gathering

For Hardware info, I can use the `actions/setup-latest` action. This action sets up the runner with the latest version of the
specified operating system.

- I added another step

```sh
       - name : get hardware specs
         uses : actions/setup-latest@v2
         with :
            os: ubuntu
         id: hardware_os
```
