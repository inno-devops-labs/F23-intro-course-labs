# Task 2: Practice with Git Reset Command

## Steps Taken

1. Created a new branch named "git-reset-practice" using the command:

```
git branch git-reset-practice
```

2. Change to new branch "git-reset-practice" using the command:

```
git checkout git-reset-practice
```

3. Made several commits with different changes to a file named "example.txt".
```
git add .   // To add all changes
git commit -m 'commit tag name'
```

4. Used git reset with different options to undo the commits and observe the changes.

## Git Reset Options and Effects

The `git reset` command is used to undo changes made to the working tree. It can be used to undo changes made to the index or the working tree.

- **Soft Reset (`git reset --soft`):** This option moves the HEAD and the branch pointer to a specified commit, but keeps the changes from the undone commits in the staging area. The working directory is not modified. The soft reset allows you to make new commits based on the undone changes.

- **Mixed Reset (`git reset --mixed` or `git reset`):** This is the default option if no option is provided. It moves the HEAD and the branch pointer to a specified commit, resets the staging area to the state of the specified commit, but keeps the changes in the index or in the working directory as uncommitted changes. The mixed reset allows you to review the changes before committing them again.

- **Hard Reset (`git reset --hard`):** This option moves the HEAD and the branch pointer to a specified commit and discards all changes made in the working tree and index. It resets the staging area and the working directory to the state of the specified commit. The hard reset should be used with caution as it permanently discards changes.

## Examples and outputs of the commands executed.

### Performing a Soft Reset:

```
git reset --soft HEAD~2
```

The following outputs were observed:

```
Unstaged changes after reset:
M	example.txt
```

**Explanation:** The `--soft` option moved the HEAD and the branch pointer to the commit before the last two commits (`HEAD~2`). The changes from the undone commits are now in the staging area. The working directory still contains the changes.


### Performing a Mixed Reset:

```
git reset --mixed HEAD~2 or git reset HEAD~2
```

The following outputs were observed:

```
Unstaged changes after reset:
M	example.txt
```

**Explanation:** The mixed reset is the default option, so using `git reset` without specifying an option is equivalent to `git reset --mixed`. The command moved the HEAD and the branch pointer to the commit before the last two commits (`HEAD~2`). The changes from the undone commits are now in the working directory as uncommitted changes.


### Performing a Hard Reset:

```
git reset --hard HEAD~2
```

The following outputs were observed:

```
HEAD is now at c3d3655 Lab1 & Lab2
```

**Explanation:** The `--hard` option moved the HEAD and the branch pointer to the commit before the last two commits (`HEAD~2`). All changes from the undone commits, both in the staging area and the working directory, are discarded. The working directory is now reverted to the state of the specified commit.

## Benefits and Use Cases of `git reset` command in version control workflows.
The `git reset` command provides several benefits and use cases in version control workflows. Some of the most common benefits and use cases are listed below:

- **Undoing commits:** Git reset allows you to undo one or more commits, removing them from the branch's history. This can be useful when you want to discard changes or start fresh.

- **Selective staging:** By using different reset options, you can selectively unstage changes or move changes between the staging area and the working directory. This allows you to carefully choose which changes to include in the next commit.

- **Branch pointer manipulation:** Git reset allows you to move the branch pointer to a specific commit, allowing you to rewrite the branch's history. This is particularly helpful when you need to reorganize commits or squash multiple commits into one.

- **Reverting changes:** Git reset can be used to revert specific changes introduced by one or more commits. By resetting to a previous commit and then selectively applying desired changes, you can effectively revert unwanted modifications.

- **Error correction:** In case of accidental commits or mistakes, Git reset can help correct errors in the commit history. By resetting the branch to a previous commit, you can fix errors and make necessary adjustments before recommitting.

- **Maintaining a clean and organized history:** Git reset allows you to maintain a clean commit history by removing unnecessary commits or rearranging commits. This can improve the readability, clarity, and overall quality of the project's version control history.

- **Collaborative development synchronization:** Git reset is useful for synchronizing with the latest changes in a collaborative development environment. By resetting the branch to the latest upstream commit, you can ensure that your local branch is up to date with the latest changes.

## Resources

- [Git Reset Documentation](https://git-scm.com/docs/git-reset)
- [Git Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified)
- [Git Reset Explained](https://www.atlassian.com/git/tutorials/undoing-changes/git-reset)
- [Resetting, Checking Out & Reverting](https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting)
