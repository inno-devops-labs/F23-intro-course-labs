# Steps followed

- I created `labs/lab9/.github/workflows/github-actions-demo.yml` file with the content from quickstart page in a new branch called `dariamikl-lab9-patch-1`.
- Upon creating PR from `dariamikl-lab9-patch-1` to `lab9` branch I didn't observe `push` event in triggered in Actions page.
- I created new `github-actions-demo.yml`, now in `labs/.github/workflows/github-actions-demo.yml` path in a new branch called `dariamikl-lab9-patch-2`.
- Upon creating PR from `dariamikl-lab9-patch-2` to `lab9` I observed new successfully executed workflow.
- After merging the PR, workflow started again, now in the branch `lab9`. This is because merging PR pushes new commit to the branch, which triggers `push` event in the workflow.
- Workflow executed corretly, `ls` working as expected.
- Results:

![image](https://github.com/dariamikl/labs/assets/32385940/ed61c1ac-63ad-44d7-9201-e0d914cda606)


# Configure a Manual Trigger
- I added a new event like this: `on: [push, workflow_dispatch]`
- After commiting changes to a new branch, I had a problem of finding a button to run the workflow manually. Turns out I needed to have the workflow on the default branch as stated in the documentation
- After merging changes into `main` branch, I successfully executed the workflow manually

  ![image](https://github.com/dariamikl/labs/assets/32385940/15360221-f725-4b03-b1ea-44ccecea1131)

# Gather System Information
- I added a new job to the `github-actions-demo.yml`:
```yaml
  Collect-Info:
    runs-on: ubuntu-latest
    steps:
      - run: echo "Runner Type - ${{ runner.os }}"
      - run: echo "Hardware Information - " && lshw -short
      - run: echo "Operating System Details - " && uname -a
```
- Results:

  ![image](https://github.com/dariamikl/labs/assets/32385940/40c7cec0-ecb9-4fdb-8c03-94bd2e05a97e)
