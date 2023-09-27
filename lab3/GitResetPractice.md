# Git Reset Practice

## Steps for Git Reset Operations

1. Created a new branch called "git-reset-practice" using the command: `git branch git-reset-practice`
2. Checked out the new branch using: `git checkout git-reset-practice`
3. Made some changes to the files in the repository.
4. Added the changes to the staging area using: `git add .`
5. Committed the changes using: `git commit -m "Commit message"`
6. Executed different git reset commands to demonstrate their effects.
7. Pushed results to repository with: `git push`

## Git Reset Options and Effects

1. `git reset --soft <commit>`
   - This option moves the HEAD pointer to the specified commit, keeping the changes in the working directory and staging area.
   - Example: `git reset --soft HEAD~1`

2. `git reset --mixed <commit>`
   - This option moves the HEAD pointer to the specified commit, resetting the staging area but keeping the changes in the working directory.
   - Example: `git reset --mixed HEAD~1`

3. `git reset --hard <commit>`
   - This option moves the HEAD pointer to the specified commit, resetting both the staging area and the working directory to the state of the commit.
   - Example: `git reset --hard HEAD~2`

## Output

Outputs are look like:

`olego@DESKTOP-9GO256I MINGW64 ~/Desktop/intro-course-labs (git-reset-practice)`

`$ git reset --hard HEAD~2`

`HEAD is now at 37e76b1 after reseting commit`

## Reflection on Git Reset

Git reset is a powerful command that allows us to manipulate the commit history in Git. It provides options to move the HEAD pointer and update the staging area and working directory accordingly.
