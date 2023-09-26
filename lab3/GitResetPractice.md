# Git Reset Practice

## Steps Taken
1. Created a new branch called "git-reset-practice" and switched to it using `git checkout -b git-reset-practice`.
2. Made several commits with different changes to a file named "test.txt" using `git add test.txt` and `git commit -m "test commit 1/2/3"`.
3. Used Git reset with different options to undo the commits and observe the changes.
4. Experimented with resetting to a specific commit using commit hashes or relative references like `HEAD~2`.

## Git Reset Options and Effects
1. **Soft reset (`git reset --soft`):** Moves the branch pointer to the specified commit, keeping the changes in the staging area.
2. **Mixed reset (`git reset --mixed`):** Moves the branch pointer to the specified commit, resetting the changes in the staging area but keeping the changes in the working directory.
3. **Hard reset (`git reset --hard`):** Moves the branch pointer to the specified commit, discarding any changes in the staging area and working directory.

## Examples and Outputs

**Soft Reset:**
```shell
git reset --soft HEAD~2
```
- Effect: Moves the branch pointer to the commit two steps back, keeping the changes in the staging area.
- Output: No output, but `git status` will show the changes in the staging area.

**Mixed Reset:**
```shell
git reset --mixed HEAD~2
```
- Effect: Moves the branch pointer to the commit two steps back, resetting the changes in the staging area but keeping the changes in the working directory.
- Output: No output, but `git status` will show the changes in the working directory.

**Hard Reset:**
```shell
git reset --hard HEAD~2
```
- Effect: Moves the branch pointer to the commit two steps back, discarding any changes in the staging area and working directory.
- Output: No output, and `git status` will show a clean working directory.

## Reflection

Git reset is a powerful command that allows us to modify the commit history and move the branch pointer. It provides flexibility in undoing commits and managing the project's state. The different reset options offer varying levels of control over the changes made.

The soft reset option is useful when we want to keep the changes in the staging area and make further modifications before committing. The mixed reset option is helpful when we want to unstage the changes but keep them in the working directory for further review. The hard reset option is beneficial when we want to completely discard the changes and revert to a previous commit.

Git reset is particularly useful in version control workflows for scenarios such as removing unwanted commits, undoing changes, or starting over from a specific point. It allows us to maintain a clean and organized commit history.

Overall, understanding the different git reset options and their effects empowers us to manage our project's history effectively and recover from mistakes or unwanted changes.