## GitHub Actions 
GitHub Actions is a powerful tool that allows you to automate your software development workflows. With GitHub Actions, you can build, test, and deploy your code right from GitHub. I will set up a simple workflow that runs a Python script on every push to the main branch of a repository.

## Setting up a Workflow
To set up a workflow, I need to create a .github/workflows directory in our repository and add a YAML file inside it. The YAML file describes the workflow and its jobs. Here's an example YAML file that runs a Python script:

```yaml
name: Python Script

on:
  push:
    branches:
      - main

jobs:
  run-script:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repo
        uses: actions/checkout@v2
      - name: Set up Python
        uses: actions/setup-python@v2
        with:
          python-version: '3.1'
      - name: Run Python Script
        run: python script.py
        
```
## Observing Workflow Execution
To observe the workflow execution, we need to push some changes to our repository. Let's create a simple Python script called script.py:

I added this file to the repository and push it to the main branch. After a few seconds, the workflow start running in the Actions tab of our repository.

If everything goes well, the workflow should complete successfully and we should see a green checkmark next to it. We can click on the workflow to see more details, including the output of each step. In this case, we should see the output "Hello, GitHub Actions!".

If there are any errors or failures, we'll see a red X next to the workflow. We can click on the workflow to see the error message and debug the issue.