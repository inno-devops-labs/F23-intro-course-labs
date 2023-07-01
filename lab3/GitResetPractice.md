# Git Reset Practice
## Steps taken to perform Git reset operations:
1) Create a new branch named "git-reset-practice" in the Git repository.
2) Make 4 commits with different changes to files.
3) Use git reset with different options (soft, mixed, hard) to undo commits and observe changes.
4) Experiment with resetting to specific commit using relative reference HEAD~2.
5) Take note of the differences and outcomes of each git reset variation.

## Description of git reset options used and their effects:
- **Soft reset**: git reset --soft moves branch pointer to previous commit while keeping changes in staging area. This option allows to uncommit changes and modify commit before committing again.

- **Mixed reset**: git reset --mixed moves branch pointer to previous commit and resets staging area. This option keeps changes in working directory, allowing to review and selectively stage changes before committing again.

- **Hard reset**: git reset --hard moves branch pointer to previous commit, resets staging area and discards all changes in working directory. This option completely removes changes made after specified commit.

## Examples and outputs of the commands executed:
**Soft Reset**:
- git reset --soft HEAD~2 moves branch pointer to two commits behind current HEAD, keeping changes in staging area.
- Example output: nothing outputted in console

**Mixed Reset:**
- git reset --mixed HEAD~2 moves branch pointer to two commits behind current HEAD, resetting staging area.
- Example output: nothing outputted in console

**Hard Reset:**
- git reset --hard HEAD~2 moves branch pointer to two commits behind current HEAD, discarding all changes in working directory.
- Example output: HEAD is now at d938e3a Create abcdef.md

## Reflection on the benefits and use cases of the git reset command in version control workflows:
Git reset command is powerful tool in version control workflows with several benefits and use cases:

1) **Undoing commits**: Git reset allows to undo commits and move branch pointer to previous state, effectively removing commits from branch's history.

2) **Selective staging**: With mixed reset, you can unstage changes and review them before deciding which changes to include in the next commit. This provides greater control over the commit contents.

3) **Rolling back changes**: Hard reset enables to completely discard changes in working directory, allowing to revert to specific commit without any traces of subsequent modifications.

4) **Branch cleanup**: Git reset is useful for cleaning up branch by removing unwanted commits, particularly when commits are local and haven't been pushed to a shared repository.

5) **Experimental development**: Git reset allows for easy experimentation with different commits, branches and versions without polluting the commit history or affecting main codebase.
