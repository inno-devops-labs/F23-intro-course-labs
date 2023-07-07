# Git Reset Practice

## Steps Taken

1. Created a new branch named "git-reset-practice" using the command: `git branch git-reset-practice`
2. Checked out the "git-reset-practice" branch using: `git checkout git-reset-practice` output:
    ```bash
    xdr@XDR /m/d/U/i/l/labs (Lab3_solution)> git checkout git-reset-practice
    M       README.md
    M       index.html
    M       lab1/README.md
    M       lab2/README.md
    M       lab3/README.md
    M       lab4/README.md
    M       lab6/README.md
    M       lab7/README.md
    M       lab8/README.md
    M       lab9/README.md
    Switched to branch 'git-reset-practice'    
    ```
3. Made several commits with different changes to a file.
4. Experimented with different options of the `git reset` command.
5. Noted the outcomes and differences of each `git reset` variation.
6. Documented the practice in the "GitResetPractice.md" file.

## Git Reset Options and Their Effects

Git provides three options for the `git reset` command: `--soft`, `--mixed` (default), and `--hard`. Each option has different effects on the staging area, working directory, and commit history.

1. `--soft`: This option resets the HEAD and moves the branch pointer to a specified commit, but keeps the changes in the staging area. It does not modify the working directory or the commit history. The files remain as they were in the latest commit.
2. `--mixed`: This is the default option if no option is provided. It resets the HEAD, moves the branch pointer, and updates the staging area to match the specified commit. The changes made after the specified commit are unstaged but remain in the working directory.
3. `--hard`: This option resets the HEAD, moves the branch pointer, updates the staging area, and discards all changes in the working directory. It reverts the files to the state of the specified commit, including all modifications made after that commit.

## Examples and Outputs

1. Resetting to a specific commit using commit hash:
   - Command: `git reset --hard <commit-hash>`
   - Output: The working directory and staging area are modified to match the specified commit. All changes made after the commit are discarded.

2. Resetting to a specific commit using relative reference:
   - Command: `git reset --soft HEAD~2`
   - Output: The branch pointer and HEAD are moved back two commits. The changes made in the last two commits are preserved in the staging area. The working directory remains unchanged.

3. Resetting to a specific commit using relative reference and mixed option:
   - Command: `git reset --mixed HEAD~3`
   - Output: The branch pointer and HEAD are moved back three commits. The changes made in the last three commits are unstaged, but the modifications remain in the working directory.

## Benefits and Use Cases of `git reset`

The `git reset` command offers several benefits and use cases in version control workflows:

1. Undoing commits: `git reset` allows us to undo one or more commits by moving the branch pointer and HEAD to a previous commit. This is useful for removing unwanted or incorrect commits from the commit history.
2. Refactoring commits: By resetting to a specific commit, we can modify or rearrange the changes made in previous commits before creating new commits. This helps in organizing commits and making the commit history more meaningful.
3. Splitting commits: `git reset` allows us to unstage changes from a specific commit, making it possible to split a large commit into multiple smaller ones. This aids in creating focused and granular commits.
4. Correcting mistakes: If a commit contains errors or unintended changes, `git reset` can be used to go back to a previous state and make corrections before committing again.
5. Branch management: `git reset` is useful for managing branches, especially when combined with other Git commands like `git branch` and `git merge`. It enables adjusting branch pointers, merging changes, and creating clean branch histories.

Overall, the `git reset` command provides powerful tools for manipulating commit history and managing branches effectively, making it a valuable asset in Git version control workflows.