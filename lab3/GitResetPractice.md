# Git reset practice 

## The steps I took to test git-rest:
1. Create a new branch called "practice" and switch to it using `git checkout -b practice` the output of this command is     `Switched to a new branch 'git-reset-practice'`
2. Create a file and make changes in *"practice.txt"* file:
    - Input:
    `echo "First change" > lab3\practice.txt `
    - Input:
    `git status`
    - Output: 
        ```c++
        On branch git-reset-practice
        Untracked files:
        (use "git add <file>..." to include in what will be committed)
        lab3/VersionControl.md
        lab3/practice.txt

        nothing added to commit but untracked files present (use "git add" to track)
        ```
3. Commit the changes `practice.txt`:

    - Input:
    `git add  lab3/practice.txt `

    - Input:
    `git status`

    - Output:
        ```c++
        On branch git-reset-practice
        Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
        new file:   lab3/practice.txt

        Untracked files:
        (use "git add <file>..." to include in what will be committed)
        lab3/VersionControl.md```

    - Input: `git commit -m "First change""`

    - Output: 
        ```Python
        [git-reset-practice 448ba42] First change
        1 file changed, 0 insertions(+), 0 deletions(-)
        create mode 100644 lab3/practice.txt
        ```
    
    
    - Input: `git log --oneline `
    - Output:
        ```c++
        448ba42 (HEAD -> git-reset-practice) First change
        36b5e2a (origin/main, origin/HEAD, main) lab1 and lab2 HW
        ```
    
    
    
    - Input: `echo "Second change" > lab3\practice.txt `
    - Input: ` git add lab3\practice.txt `
    - Input: `git commit -m "Second change"`


    - Output: 
        ```c++
        [git-reset-practice 98ec20c] Second change
        1 file changed, 0 insertions(+), 0 deletions(-)
        ```
    - Input:`git log --oneline `
    - Output: 
        ```c++
        98ec20c (HEAD -> git-reset-practice) Second change
        448ba42 First change
        36b5e2a (origin/main, origin/HEAD, main) lab1 and lab2 HW
        ```
    
    - Input: `echo "Third change" > lab3\practice.txt `
    - Input: ` git add lab3\practice.txt `
    - Input: `git commit -m "Third change"`

    - Output: 
        ```c++
        [git-reset-practice 8272a3f] Third change
        1 file changed, 0 insertions(+), 0 deletions(-)
        ```
    - Input:`git log --oneline `
    - Output: 
        ```c++
        8272a3f (HEAD -> git-reset-practice) Third change
        98ec20c Second change
        448ba42 First change
        36b5e2a (origin/main, origin/HEAD, main) lab1 and lab2 HW
        ```

4. Try git reset with three main modes: `--soft`, `--mixed`, and `--hard`. 
    - *`git reset --soft`* :  This command moves the HEAD to the specified commit. However, it leaves the staging index and the working directory untouched. This means that the changes will remain intact and will be marked as 'to be committed' in the staging area.
        - Input: `git reset --soft HEAD~1`
        
        - Input: `git log --oneline `
        - Output:
            ```c++
            98ec20c (HEAD -> git-reset-practice) Second change
            448ba42 First change
            36b5e2a (origin/main, origin/HEAD, main) lab1 and lab2 HW
            ```


        - Input: `git status`
        - Output: 
            ```c++
            On branch git-reset-practice
            Changes to be committed:
            (use "git restore --staged <file>..." to unstage)
            modified:   lab3/practice.txt

            Untracked files:
            (use "git add <file>..." to include in what will be committed)
            lab3/VersionControl.md
            ```
        **This command moves the HEAD pointer back one commit (i.e., it "undoes" the last commit). However, the changes from that commit are kept in the staging area**
    -  *`git reset --mixed`*: This is the default mode. Like `--soft`, it moves the HEAD to the specified commit. But it also changes the staging index to match the specified commit. Your working directory, however, remains untouched.

        - Input:
        `git reset --mixed HEAD~1`
        - Output:
            ```c++
                Unstaged changes after reset:
                M               lab3/practice.txt 
            ```

        - Input:
        `git log --oneline`
        - Output:
        ``` c++
        448ba42 (HEAD -> git-reset-practice) First change
        36b5e2a (origin/main, origin/HEAD, main) lab1 and lab2 HW
        ```
        - Input: `git status `
        - Output:
            ```c++
            On branch git-reset-practice
            Changes not staged for commit:
            (use "git add <file>..." to update what will be committed)
            (use "git restore <file>..." to discard changes in working directory)
            modified:   lab3/practice.txt

            Untracked files:
            (use "git add <file>..." to include in what will be committed)
            lab3/VersionControl.md
            ```
         **This command also moves the HEAD pointer back one commit, but it also unstages the changes. The changes are still present in the working directory.**
    - *`git reset --hard`*: This command moves the HEAD to the specified commit, changes the staging index to match this commit, and also modifies the working directory to match the specified commit. This is the most destructive option as it discards all changes in the staging index and the working directory.

        - Input: `git reset --hard HEAD~1`
        - Output: 
        ```c++
        HEAD is now at 36b5e2a lab1 and lab2 HW
        ```
        - Input:
        `git log --oneline`
        - Output:
        ``` c++
        36b5e2a (HEAD -> git-reset-practice, origin/main, origin/HEAD, main) lab1 and lab2 HW
        ```
        - Input: `git status `
        - Output:
            ```c++
            On branch git-reset-practice
            Untracked files:
            (use "git add <file>..." to include in what will be committed)
            lab3/VersionControl.md

            nothing added to commit but untracked files present (use "git add" to track)
            ```
        **This command moves the HEAD pointer back one commit, unstages the changes, and discards the changes from the working directory**



## Reflection on Git Reset

The `git reset` command is a powerful tool in Git that allows for rewinding and altering the commit history. Soft resets are useful when you want to undo commits but retain changes for recommitting. Mixed resets help unstage changes while keeping them in the working directory for review. Hard resets are beneficial when you need to completely discard changes.

### Benefits and Use Cases

- **Undoing Mistakes:** Allows you to go back to a previous state, fixing mistakes in commits.
- **Preparing Clean Commits:** Helps in restructuring commits before pushing to ensure a clean and logical commit history.
- **Branch Cleanup:** Useful for cleaning up branches by removing unwanted commits before merging.
- **Interactive Rebasing:** Enables interactive rebasing by moving branches to different commits, aiding in a more organized history.

