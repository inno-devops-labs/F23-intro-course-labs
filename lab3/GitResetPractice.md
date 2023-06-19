# Git reset command

`git reset --param commithash`

## Requirements to conduct the reseaerch

1. Create new branch
2. Write 1 lc commit
3. Repeat step 2 (3 more times)
4. Trace the changes with `git log --oneline` command
5. Write down findings

To perform this research had to create a file where i have created 1 line per commit (4 commits total) and was tryign to perform git reset actions for each commit exclusively.

## Git reset --hard

`git reset --hard 6e9c6de`
Removing commits, conducted after the specified commit without an opportunity to bring last changes back.

## Git reset --soft

`git reset --soft 6e9c6de`

Removing commits after the specified commit having all the changes above in staged changes.

## Git reset --mixed

`git reset --mixed 6e9c6de`

Removing commits after the specified commitbut all changes are not staged.

## Reflection on the benefits

Having `git reset` command tool in arms it is possible to make commit history cleaner from small commits and fixing-commits (correcting small parts of previous commits). Version control history tracebility promotion.
