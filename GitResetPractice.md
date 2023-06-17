## Git Reset Practice
In this exercise, I practiced using the git reset command with different options to undo commits on a new branch named "git-reset-practice" in my Git repository.

## Steps Taken
1. Created a new branch named "git-reset-practice" using the command git checkout -b git-reset-practice.
2. Made several commits with different changes to a file using the command git commit -am "commit message".
3. Used git log to view the commit history and note the commit hashes of the commits to undo.
4. Used git reset with different options to undo the commits and observe the changes.

## Git Reset Options Used and Their Effects
# Soft Reset

A soft reset moves the HEAD to the specified commit without modifying the staging area or working directory. To perform a soft reset, I used the command git reset --soft <commit>.

Example: git reset --soft commit_id

In this example, the commit id was moved back. The changes made in the commits were undone, but the changes were kept in the working directory and the staging area.

## Mixed Reset
A mixed reset moves the HEAD to the specified commit, resets the staging area to the specified commit, but does not modify the working directory. To perform a mixed reset, I used the command git reset <commit>.

Example: git reset HEAD~2

Output:

Copy
Unstaged changes after reset:
M       gitreset.md


In this example, the HEAD was moved back two commits. The changes made in the last two commits were undone, and the changes were removed from the staging area, but were kept in the working directory.

## Hard Reset
A hard reset moves the HEAD to the specified commit, resets the staging area to the specified commit, and modifies the working directory to match the specified commit. To perform a hard reset, I used the command git reset --hard <commit>.

In this example, the HEAD was moved back two commits. The changes made in the last two commits were undone, and the changes were removed from the staging area and the working directory.

## Reset to Specific Commit
I also experimented with resetting to a specific commit using commit hashes or relative references. For example, to reset to a specific commit with the hash "abcdefg", I used the command git reset --hard abcdefg.

## Reflection
The git reset command is a powerful tool that allows you to undo changes and manipulate the commit history in your Git repository. It is useful in situations where you need to undo changes that were committed accidentally or need to reorganize your commit history.

The soft option is useful when you want to undo a commit but keep the changes in the working directory and staging area. This allows you to easily modify the changes and commit them again.

The mixed option is useful when you want to undo a commit and remove the changes from the staging area but keep the changes in the working directory. This allows you to modify the changes and stage them again using git add.

The hard option is useful when you want to completely undo a commit and remove the changes from both the staging area and the working directory. This is useful when you want to completely discard the changes made in the commit.