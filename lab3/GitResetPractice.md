## Task 2: Practice with Git Reset Command

### 1. git reset --hard
Steps:
1. make 4 commits with some changes in your branch
2. run `git reset --hard HEAD~4`

Observations:
hard reset moves HEAD pointer of your current branch 4 revisions behind, clears git index, and resets all changes in the working directory that were made in last 4 commits.

### 2. git reset --mixed
Steps:
1. make 4 commits with some changes in your branch
2. run `git reset --mixed HEAD~4` or simply `git reset HEAD~4`

Observations:
mixed reset moves HEAD pointer of your current branch 4 revisions behind and clears git index. Working directory stays the same, changed files are in unstaged area.

### 3. git reset --soft
Steps:
1. make 4 commits with some changes in your branch
2. run `git reset --soft HEAD~4`

Observations:
hard reset moves HEAD pointer of your current branch 4 revisions behind, index and working directory stay the same. 

Different reset options give you an opportunity to control over your git history. For example, I often use soft reset to fix changes made in the last commit or to change commit message (we can also use `git amend` for that). Hovewer, it is not so useful for more difficult changes in git history. In this case we use interactive rebase `rebase -i`.