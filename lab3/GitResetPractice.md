### 1) Steps to perform the Git reset operations:

- Creating an test_file.txt file and add it to staging
- Changing content using git nano command several times
- Testing of the git reset command with three options: --soft, --mixed and --hard
- Experimenting with different HEAD values

### 2) Description of the different git reset options used and their effects:
- <b>--soft</b>: This option undoes the last commit, leaving all changes in the working directory and index. The state of changes will be the same as before the commit was executed. You can make additional changes and make a new commit.
- <b>--mixed</b>: This option is the default for git reset. It undoes the last commit and resets the index, but saves the changes in the working directory. Any changes that were added to the index will be removed, but you can add them back to the index and make a new commit.
- <b>--hard</b>: This option completely undoes the last commit, removing all changes from the index and working directory. All changes that were made in the last commit will be lost without the possibility of recovery.

### 3) Examples and outputs of the commands executed:
- <b>If developer commited something by mistake:</b> We can undo our last commit and return the file to the working directory using git reset --mixed HEAD~1. Now you can edit the contents of the file and commit it again.
- <b>If developer commited something in a wrong branch:</b> If we made a commit to a branch, for example, master, but we needed to create a new branch and commit there, then the task will be solved in several stages. First, you need to create a new branch (1). Secondly, we need to make master point to the previous commit (2). Finally, you need to be in the new branch (3). <br> (1) git branch new <br>
(2) git reset --hard HEAD~1 <br>
(3) git checkout new <br>

### 4) Reflection on the benefits and use cases of the git reset command in version control workflows:
1. <b>Undoing unwanted commits</b> (From previous chapter)

2. <b>Reassigning commits.</b> For example, you can combine several commits into one, or split one commit into several to make the story more logical and understandable.

3. <b>Removing confidential information.</b> If developer accidentally included user's passwords in a commit

4. <b>Restoring Deleted Commits.</b> If developer accidentally deleted commits
