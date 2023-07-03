# Student Information
Name: Md Motasim Bhuiyan

Email: m.bhuiyan@innopolis.university

Group: BS21-CS-01

# Practice

The following changes were made in each commit before I started experimenting with git reset-

- Commit 1: `echo "Commit 1" > practice.txt`
- Commit 2: `echo "\nCommit 2" >> practice.txt`
- Commit 3: `echo "Commit 3" > practice.txt`

`git log --oneline` gives the following-

```
bb05a23 (HEAD -> git-reset-practice) Commit 3
e8a9ba8 Commit 2
249d043 Commit 1
...
```

Then I changed the file using `echo "Unsaved commit" > practice.txt` and `git add`. Then I ran `git reset` of different types and printed the content of the file-

```bash
>>> git reset --soft HEAD~2
>>> cat practice.txt
Unsaved commit
>>> git diff

>>> git log --oneline
249d043 (HEAD -> git-reset-practice) Commit 1
...
>>> git reset bb05a23
>>> cat practice.txt
Unsaved commit
>>> git diff
diff --git a/practice.txt b/practice.txt
index 873f6ad..dc07518 100644
--- a/practice.txt
+++ b/practice.txt
@@ -1 +1 @@
-Commit 3
+Unsaved commit
>>> git log --oneline
bb05a23 (HEAD -> git-reset-practice) Commit 3
e8a9ba8 Commit 2
249d043 Commit 1
...
>>> git reset HEAD~1 --hard
>>> git log --oneline
e8a9ba8 (HEAD -> git-reset-practice) Commit 2
249d043 Commit 1
...
>>> cat practice.txt
Commit 1
\nCommit 2
```

My findings are as follows-

Commit Identification:
- `git reset HEAD~<n>`: This resets the HEAD to n-th previous commit. In other words, this command is used to undo n number of commits. This can be used to go back to past commit only.
- `git reset <hash>`: This resets the HEAD to a specific commit identified by the hash. This command can be used to undo a reset and go to a future commit.

Commit Types:
- `--soft`: When resetting to a commit, this option keeps the changes in staging ares. So the changes are indexed and can be committed. `git diff` doesn't show anything but `git status` shows the changes to be committed
- `--mixed`: This option is default. This option removes the commit from staging area but keeps in the working directory. Can be used to undo a staging by `git reset HEAD`
- `--hard`: This option removes the commit from both staging area and working directory. This can be used to discard any changes by using `git reset HEAD --hard`