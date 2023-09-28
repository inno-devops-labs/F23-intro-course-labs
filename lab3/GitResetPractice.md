
# Task 2: 
## Practice with Git Reset Command:

1. Creted branch with `git-reset-practice` using `git checkout -b git-reset-practice` command.
2. Doing `git reset --mixed` (default behavior) on the changes that are in staging area removes them from staging area.
3. Doing `git reset --soft` on the changes that are in staging area does not have any effect.
3. Doing `git reset --hard` on the changes that are in staging area discards uncommitted changes completely.
4. Doing `git reset --mixed commitID` takes pointer to the specified commit and unstages changes from commits after `commitID` as well.
5. Doing `git reset --soft commitID` takes pointer to the specified commit but keeps changes from commits after `commitID` on staging area.
6. Doing `git reset --hard commitID` moves the pointer to the specified commit and completely removes any trace of the undone commits.
7. Doing `git reset HEAD~2` allows me to move to specific head position in refernce to the current head pointer. `HEAD~2` refers to the second commit before the current HEAD position. Rest of the properties with `--soft`, `--hard`, `--mixed` are same this is just a different way of referencing.
