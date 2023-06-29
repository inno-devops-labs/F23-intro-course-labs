# Git Reset Practice

## Steps Taken for Git Reset Operations

- Created a new branch named `git-reset-practice` using the command: `git checkout -b git-reset-practice`.
- Made several commits with different changes to a file.
- Performed git reset with different options to undo the commits and observe the changes.
- Experimented with resetting to a specific commit using commit hashes and relative references.
- Documented the process and outcomes.

## Description of git reset Options and Their Effects

- Soft Reset: `git reset --soft` moves the branch pointer to a specific commit while preserving the changes made in the
  undone commits. It keeps the changes in the staging area, allowing you to modify them before committing again.
- Mixed Reset: `git reset --mixed` (default behavior) moves the branch pointer to a specific commit and resets the staging
  area. It preserves the changes made in the undone commits as uncommitted modifications in the working directory.
- Hard Reset: `git reset --hard` moves the branch pointer to a specific commit and discards all changes made in the undone
  commits. It resets the staging area and working directory to match the specified commit.