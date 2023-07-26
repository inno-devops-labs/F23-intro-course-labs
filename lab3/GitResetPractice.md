# Git Reset Practice

1. `git reset --soft` resets HEAD pointer, changes of reseted commits become unstaged
2. `git reset --mixed` resets HEAD pointer, changes of all commits till merge base become unstaged
3. `git reset --hard` resets HEAD pointer, index, working tree. Changes will be reset till commit

## Steps

1. Create branch with several commits
2. Use `git reset` with different options
3. See changes with `git log`, `git diff`

## Some use cases

1. You would like to squash commits
   1. `git reset --soft <commit>`
   2. `git add . && git commit -m <message>`
2. You wrote some bad code and would like to erase it asap
   1. `git reset --hard <commit>`
