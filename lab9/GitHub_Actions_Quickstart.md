# CI/CD Lab - GitHub Actions


## Task 1: Create GitHub Actions Pipeline


1. Create a .github/workflows directory 

2. In the .github/workflows directory, create a file named github-actions-demo.yml.

3. Copy the following YAML contents into the github-actions-demo.yml file:
     ```yaml
    name: GitHub Actions Demo
    run-name: ${{ github.actor }} is testing out GitHub Actions 🚀
    on: [push]
    jobs:
    Explore-GitHub-Actions:
        runs-on: ubuntu-latest
        steps:
        - run: echo "🎉 The job was automatically triggered by a ${{ github.event_name }} event."
        - run: echo "🐧 This job is now running on a ${{ runner.os }} server hosted by GitHub!"
        - run: echo "🔎 The name of your branch is ${{ github.ref }} and your repository is ${{ github.repository }}."
        - name: Check out repository code
            uses: actions/checkout@v4
        - run: echo "💡 The ${{ github.repository }} repository has been cloned to the runner."
        - run: echo "🖥️ The workflow is now ready to test your code on the runner."
        - name: List files in the repository
            run: |
            ls ${{ github.workspace }}
        - run: echo "🍏 This job's status is ${{ job.status }}."
    ```

4. Stage the files  ` git add .` commit, then push  ` git commit -m "msg` , `git push --set-upstream origin lab9`

5. The action will be available in action tab in the repo

6. after pushing some changes the workflow run automatically without any errors:

     ![Alt text](imgs/1.png)


 ## Task 2: Gathering System Information and Manual Triggering

 1. Configure a Manual Trigger:
   - Extend your existing GitHub Actions workflow to include a [manual trigger](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow#defining-inputs-for-manually-triggered-workflows).
   - We don't need inputs for manually triggered workflows you can skip them.
   - Document the changes made to the workflow file in the same "GitHub_Actions_Quickstart.md" file.
   - Check the guide on how to manually run the workflow using the [official documentation](https://docs.github.com/en/actions/using-workflows/manually-running-a-workflow) if you face any issue.

2. Gather System Information:
   - Modify your workflow to include an additional step for gathering system information.
   - Use the appropriate actions and steps to collect information about the runner, hardware specifications, and operating system details.
   - Document the changes made to the workflow file and the gathered system information in the same "GitHub_Actions_Quickstart.md" file.