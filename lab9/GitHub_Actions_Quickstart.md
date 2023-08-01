# Create your First GitHub Actions Pipeline

1. Create a .github/workflows directory. Then add github-actions-demo.yml file that contains jobs that should be done.

2. And with the one command pipline started doing it's things. Magic. Actually, I already had an experinece with this. For it was not difficult

![Alt text](<img/Screenshot 2023-08-01 at 9.17.48 PM.png>)

No issues. Everything is just perfect!


# Gathering System Information and Manual Triggering

For mannual trigger
2. Change default branch for `lab_9`.
1. Add `on: [workflow_dispatch]` into the `.yml` file
3. Push
4. Trigger manually 

For system investigation, add followign jobs:
```
- name: System Information
  run: 
      lscpu &&
      free -h &&
      df -h

- name: OS Information
  run:
      lsb_release -a
```