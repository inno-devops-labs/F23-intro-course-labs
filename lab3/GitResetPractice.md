## Task 2: Git reset practice

### Procedure:
1. Created a new branch called **git-reset-practice**
    ```shell
    git checkout -b git-reset-practice
    ```
    
2. Now check the git log

    ```shell
    git log --oneline
    0d74967 (HEAD -> git-reset-practice, main) add git reset practice.md
    ```
    There are no commits yet in the new branch so it shows the previous commit to my main branch

3. Now i added two files with some random text and committed it one by one as follows:

4. File 1:
    ```shell
    echo "adding some random text to file1.txt" > file1.txt
    git add file1.txt
    git commit -m "add file1.txt"
    ```
5.  File 2:
    ```shell
    echo "adding some random text to file2.txt" > file2.txt
    git add file2.txt
    git commit -m "add file2.txt"
    git push origin git-reset-practice
    ```
6. Now we check the git log again
    ```shell
    git log --oneline
    cb82a00 (HEAD -> git-reset-practice) add file2.txt
    f478332 add file1.txt
    0d74967 (main) add git reset practice.md
    ```
**Note**: See now we got the HEAD pointing to the new branch and the 2nd commit which we have done.

7. Now lets try the git reset soft command:
    ```shell
    git reset --soft HEAD~1
    ```
**Note**: This command moves the HEAD pointer back one commit (i.e. to the "add file1.txt" commit), but it leaves the working directory and staging area as they were before. So, file2.txt is still present and its changes are also in the stagging area for commit.

8. check the git log
    ```shell
    git log --oneline
    f478332 (HEAD -> git-reset-practice) add file1.txt
    ```

9. Now lets try the git reset mixed command:
    ```shell
    git reset --mixed HEAD~1
    ```
**Note**: This command moves the HEAD pointer back one more commit, and also updates the staging area to match HEAD. So, the changes in file1.txt and file2.txt are still present in the working directory, but they are not in the stagging area for commit.

10. check the git log
    ```shell
    git log --oneline
    0d74967 (HEAD -> git-reset-practice, main) add git reset practice.md
    ```

11. Finally, lets try the git reset hard command:
    ```shell
    git reset --hard HEAD
    ```
**Note**: Finally, this command moves the HEAD pointer to the current commit, and updates both the staging area and the working directory to match HEAD. So, all changes in the working directory are discarded, and all files are reverted to their state at the last commit. Before using git reset --hard HEAD always make sure you backup your changes like you can use stash as well.

