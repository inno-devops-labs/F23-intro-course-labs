# Git Reset Practice

## Task 2: Practice with Git Reset Command

1. git reset --hard
    Steps i used:
     - add new file and move it to stage area
     - change the content of existing file
     - use git reset --hard command
    Observations:
     - all files in staged and modified areas were restored

2. git reset --mixed
    Steps i used:
     - add new file and move it to stage area
     - change the content of existing file and move it to stage area
     - use git reset --mixed command
    Observations:
     - all files in staged were moved to modified area

3. git reset --soft HEAD~2
    Steps i used:
     - created 5 commits in local branch
     - add new file and move it to stage area
     - change the content of existing file
     - use git reset --soft HEAD~2
    Observations:
     - all files in staged and modified areas keep the same state, branch has previous 2 commits in staged area.

Usin restore command you can restore your prevous state of the code if you want to redo it. You can control how many commits back you want to return as well as what to do with current changes. So it gives you control over your code.
