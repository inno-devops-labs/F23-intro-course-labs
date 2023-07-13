# CI/CD

## Creating a GitHub Actions Pipeline

1. Create a .github/workflows folder in your repository and create a new file named "github-actions-demo.yml" in the folder.
2. Add the code to it, as seen in .github/workflows/github-actions-demo.yml.
3. Create a branch for the changes and create a pull request to the lab9 branch.
4. Merge the pull request and observe the workflow execution in Actions tab.
   My results:
   ![Alt text](https://i.ibb.co/ZfZkMJ4/cicd1.png)
   ![Alt text](https://i.ibb.co/z2z78d5/cicd2.png)

## Gathering System Information and Manual Triggering

1. Create a new file and add code, as seen in .github/workflows/github-actions-manual-trigger.yml
2. Push the changes to the lab9 branch.
3. Open .github/workflows/github-actions-manual-trigger.yml and click View Runs
4. Click Run workflow and observe the workflow execution.
   My results:
   ![Alt text](https://i.ibb.co/j8srNDj/cicd3.png)
   Output:
   INFO=(
   "CPU Model: Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz"
   "OS: Ubuntu, linux: 22.04"
   "Kernel release: 5.15.0-1041-azure"
   "Kernel version: #48-Ubuntu SMP Tue Jun 20 20:34:08 UTC 2023"
   )
