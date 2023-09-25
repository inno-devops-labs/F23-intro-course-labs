# Git reset practice 

## The steps I took are as follows:
1. Create a new branch called "practice" and switch to it using `git checkout -b practice` the output of this command is     `Switched to a new branch 'git-reset-practice'`
2. Create a file:
    - Input:
    `touch test_file.txt`
    - Input:
    `git status`
    - Output: 
        ```c++
        On branch git-reset-practice Untracked files: (use "git add <file>..." to include in what will be committed) VersionControl.md test_file.txt

        nothing added to commit but untracked files present (use "git add" to track)
        ```
3. Make changes to `test_file.txt` and commit them:
    - Input:
    `echo "first modification to test file " > test_file.txt`

    - Input:
    `git add test_file.txt`

    - Input:
    `git status`

    - Output:
        ```c++
        On branch git-reset-practice Changes to be committed: (use "git restore --staged <file>..." to unstage) new file: test_file.txt

        Untracked files: (use "git add <file>..." to include in what will be committed) VersionControl.md```

    - Input: `git commit -m "1st Modification"`

    - Output: 
        ```Python
        [git-reset-practice 74045a5] 1st Modification
        1 file changed, 1 insertion(+)
        create mode 100644 lab3/test_file.txt
        ```
    
    
    - Input: `git log --oneline `
    - Output:
        ```c++
        74045a5 (HEAD -> git-reset-practice) 1st Modification
        ```
    
    
    
    - Input: `echo "2nd edit" > test_file.txt `
    - Input: ` git add test_file.txt `
    - Input: `git commit -m "2nd edit"`


    - Output: 
        ```c++
        [git-reset-practice c89bffe] 2nd edit
        1 file changed, 1 insertion(+), 1 deletion(-)
        ```
    - Input:`git log --oneline `
    - Output: 
        ```c++
        c89bffe (HEAD -> git-reset-practice) 2nd edit
        74045a5 1st Modification
        55261c5 (origin/main, origin/HEAD, main, lab3) update
        7f6460e Merge branch 'main' of https://github.com/Ghadeer-Issa92/intro-course-labs
        fc43ac7 lab2_HW_update
        ```
    
4. Try git reset with three main modes: `--soft`, `--mixed`, and `--hard`. 
    - *`git reset --soft`*: This command moves the HEAD to the specified commit. However, it leaves the staging index and the working directory untouched. This means that the changes will remain intact and will be marked as 'to be committed' in the staging area.
        - Input: `git reset --soft HEAD~1`
        
        - Input: `git log --oneline `
        - Output:
            ```c++
            74045a5 (HEAD -> git-reset-practice) 1st Modificationq
            ```


        - Input: `git status`
        - Output: 
            ```c++
            On branch git-reset-practice
            Changes to be committed:
            (use "git restore --staged <file>..." to unstage)
                    modified:   test_file.txt

            Untracked files:
            (use "git add <file>..." to include in what will be committed)
                    VersionControl.md
            ```
        **This command will move the HEAD one commit back, but the changes from the last commit will still be in the staging area.**
    -  *`git reset --mixed`*: This is the default mode. Like `--soft`, it moves the HEAD to the specified commit. But it also changes the staging index to match the specified commit. Your working directory, however, remains untouched.

        - Input:
        `git reset --mixed HEAD~1`
        - Input: `git status `
        - Output:
            ```c++
            On branch git-reset-practice Untracked files: (use "git add <file>..." to include in what will be committed) VersionControl.md test_file.txt```
         **This command will move the HEAD one commit back, and the changes from the last commit will be unstaged, but still present in the working directory.**
    - *`git reset --hard`*: This command moves the HEAD to the specified commit, changes the staging index to match this commit, and also modifies the working directory to match the specified commit. This is the most destructive option as it discards all changes in the staging index and the working directory.

        - Input: `git reset --hard HEAD~1`
    
        **This command will move the HEAD one commit back, and all changes from the last commit will be discarded.**



## The use of git reset can be beneficial in many ways:

1. **Undo commits**: The ability to move the HEAD to a previous commit is a powerful feature that allows you to easily undo changes. This can be particularly useful when you realize that a commit was made in error.
2. **Clean up the staging area**: By resetting the staging index to match a commit, you can quickly clean up your staging area. This is useful when you've added a lot of changes to the staging area that you no longer want to commit.
3. **Discard unwanted changes**: By using the `--hard `option, you can discard all changes in your working directory and staging index. This is a useful way to get back to a clean slate when you've made a lot of changes that you no longer want.
