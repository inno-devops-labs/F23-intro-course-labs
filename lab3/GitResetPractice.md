1. First, I switched to the master branch using the command `git checkout master`.

2. Next, I created a new branch named "git-reset-practice" using the command `git checkout -b git-reset-practice`.

3. Then, I made several commits with different changes to a file named "test.txt".

4. To undo the commits, I used the `git reset` command with different options:

 - `git reset --soft HEAD~1` - This option undoes the commit, but the changes made in the commit are kept in the staging area. The changes can be committed again using the `git commit` command. Output: `Unstaged changes after reset:`

 - `git reset --mixed HEAD~1` - This option undoes the commit and moves the changes to the working directory. Changes are no longer in the staging area, so they must be re-added using the `git add` command before committing again. Output: `Changes not staged for commit:`

 - `git reset --hard HEAD~1` - This option undoes the commit and discards the changes made in the commit. The changes cannot be recovered after this command is used. Output: `HEAD is now at <commit hash> <commit message>`.

5. To experiment with resetting to a specific commit using commit hashes, I used the command `git reset <commit hash>`.

6. To experiment with resetting using relative references, I used the command `git reset HEAD~2`.

After performing the Git reset operations, I observed the following effects:

 - The `--soft` option undid the commit, but the changes made in the commit were still present in the staging area. This option is useful for undoing a commit, but keeping the changes in the staging area, so they can be committed again with additional changes.

 - The `--mixed` option undid the commit and moved the changes to the working directory. The changes were no longer in the staging area, so they needed to be added and committed again. This option is useful for undoing a commit and bringing the changes back into the working directory.

 - The `--hard` option undid the commit and completely discarded the changes made in the commit. This option is useful for completely removing changes and starting over from a previous commit.

