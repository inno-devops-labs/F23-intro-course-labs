# GIT Reset Practice

## Steps

1. Create a blank file, commit it
2. Add some changes to it, commit
3. Run `git reset --soft HEAD~1` to undo the last commit and move the changes into the staging area
4. Commit again.
5. Run `git reset --hard HEAD~2` to undo the last commit and remove the changes completely. This is a dangerous command, though it's possible to recover from it using `git reflog`
6. Add some changes & commit again...
7. Run `git reset HEAD~1` will run reset in a *mixed* mode. That means, it will undo the commit, it will remove the changes from staged area but will keep the changes files unstaged (in contrast to `--hard` which will remove the changes completely)
 
## Use-cases & Benefits

### Use-cases

- Reverting changes made in a commit that caused issues in the codebase.
- Removing changes accidentally added to the staging area.
- Resetting a branch to a previous commit to start over from a clean slate.
- Fixing mistakes in commit messages or metadata.
- Removing unwanted changes introduced by merging or rebasing.

### Benefits

- Allows developers to undo changes and move the branch pointer to a specific commit.
- Helps maintain a clean and organized version control history.
- Enables developers to fix mistakes in commit messages.

