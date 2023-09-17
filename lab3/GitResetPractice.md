# Task 2


**Steps:**

1. Created new branch "git-reset-practice"

2. Added 4 commits to README.md file in my new branch. The example of first change is the following:
    ```
    vi README.md
    git add README.md
    git commit -m "First change"
    git push origin git-reset-practice
    ```

3. The result commit history

    ```
    git log --oneline
    e4fd7db (HEAD -> git-reset-practice, origin/git-reset-practice) Fourth change
    ca60816 Third change
    60eb079 Second change
    a7cc5b1 First change
    ```

4. Tried different `git reset` commands:

      **`git reset --soft`**

      I used `git reset --soft` with relative references `HEAD~1` to change only last commit. The resutl is the following:

      ```
      git reset --soft HEAD~1

      git log --oneline
      ca60816 (HEAD -> git-reset-practice) Third change
      60eb079 Second change
      a7cc5b1 First change
      00f6536 (origin/main, origin/HEAD, main) new
      ```

      ```
      $ git status
      On branch git-reset-practice
      Your branch is behind 'origin/git-reset-practice' by 1 commit, and can be fast-forwarded.
        (use "git pull" to update your local branch)

      Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
              modified:   README.md
      ```

      By looking at these outputs we can see that `git reset --soft HEAD~1` removed only one (the fourth) commit from commit history because of using 
      relative reference `HEAD~1`. At the same time option `--soft` did not influence on the working tree and index file as they were not changed at all.

      **`git reset --mixed`**

      ```
      git reset --mixed HEAD~2

      git log --oneline
      a7cc5b1 (HEAD -> git-reset-practice) First change
      00f6536 (origin/main, origin/HEAD, main) new
      ```
      ```
      git status
      Changes not staged for commit:
        (use "git add <file>..." to update what will be committed)
        (use "git restore <file>..." to discard changes in working directory)
              modified:   README.md
      ```
      `git reset --mixed HEAD~2` removed 2 last commits from the commit history and reseted the index but not the working tree 
      (i.e., the changed files are preserved but not marked for commit).


      **`git reset --hard`**

      ```
      git reset --hard HEAD~1

      git log --oneline
      00f6536 (HEAD -> git-reset-practice, origin/main, origin/HEAD, main) new
      ```
      
      ```  
      git status
      On branch git-reset-practice
      Your branch is behind 'origin/git-reset-practice' by 4 commits, and can be fast-forwarded.
        (use "git pull" to update your local branch)

      nothing to commit, working tree clean
      ```

      `git reset --hard HEAD~1` removed the last commint from commit history as well as from index file and from working tree.
      At the same time any changes to tracked files in the working tree since <commit> were discarded.


**Reflection:**

`git reset` is a very useful and important tool for managing the commit history. By using this command we can modify the commit history based
on our needs. Also `git reset` has different modes, which can be used in special situations. For example, by using `git reset --mixed`
we can unstage changes that were mistakenly added to the staging area. And by using `get reset --hard` we can remove the commits 
and reset our branch to a previous state. 

