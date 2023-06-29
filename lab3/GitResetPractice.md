# Lab 3: Version Control

- Zeyad Alagamy
- BSc-Cs-01
- z.alagamy@innopolis.university

## Docs:

1. Created a new branch using

```bash
$ git checkout -b git-reset-practice
```

2. Create a new file and add content to it using

```bash
$ echo "Hello git reset" >> "gitResetTest.txt"
```

Then commit the changes:

```bash
$ git add *
$ git commit -m "create git reset file"
```

3. Made three additional commits and the file at the end looks like:

```txt
Hello git reset

2nd commit

3rd commit

4th commit
```

### 5. git reset --soft: Undoes commits but keeping them in the staging area.

- Lets go back two commits to the '2nd commit' from the HEAD using soft reset then check the logs as follows:

```bash
$ git reset --soft HEAD~2
$ git log
$ git diff --cached
```

- The output is:

```txt
commit 9b1334103bbb0cc94f2094eb656237f2cd8e6b2e (HEAD -> git-reset-practice)
Author: zeyadAjamy <wezza2003@gmail.com>
Date:   Tue Jun 29 23:20:01 2023 +0300

    2nd commit

commit b2503e276ee4c1ce0a0a081c7aaec4a3b3f082be
Author: zeyadAjamy <wezza2003@gmail.com>
Date:   Tue Jun 29 23:18:01 2023 +0300

    created git reset file

txt
diff --git a/lab3/gitResetTest.txt b/lab3/gitResetTest.txt
index 30b60c1..75bb8e4 100644
--- a/lab3/gitResetTest.txt
+++ b/lab3/gitResetTest.txt
@@ -1,3 +1,7 @@
 Hello git reset

-2nd commit
\ No newline at end of file
+2nd commit
+
+3rd commit
+
+4th commit
\ No newline at end of file
```

#### Observation:

- The file is not deleted but the changes are in the stageing area already.
- The history is reset

### 6. git reset --mixed: Undoes the commits and moves the changes to the working directory.

- I committed a new commit called "soft reset" then lets try the mixed by going back again to "2nd commit" that is 1 commit behind the HEAD

```bash
$ git reset --mixed HEAD~1
$ git log
$ git diff
```

- The output is:

```txt
[+] From reset
Unstaged changes after reset:
M       lab3/GitResetPractice.md
M       lab3/VersionControl.md
M       lab3/gitResetTest.txt

[+] log
commit 9b1334103bbb0cc94f2094eb656237f2cd8e6b2e (HEAD -> git-reset-practice)
Author: zeyadAjamy <wezza2003@gmail.com>
Date:   Tue Jun 29 23:20:01 2023 +0300

    2nd commit

commit b2503e276ee4c1ce0a0a081c7aaec4a3b3f082be
Author: zeyadAjamy <wezza2003@gmail.com>
Date:   Tue Jun 29 23:18:01 2023 +0300

    created git reset file

[+] diff

diff --git a/lab3/gitResetTest.txt b/lab3/gitResetTest.txt
index 30b60c1..75bb8e4 100644
--- a/lab3/gitResetTest.txt
+++ b/lab3/gitResetTest.txt
@@ -1,3 +1,7 @@
 Hello git reset

-2nd commit
\ No newline at end of file
+2nd commit
+
+3rd commit
+
+4th commit
\ No newline at end of file
```

### Observation:

1. The changes are not deleted but they are back to the working dir.
2. The history is reset

### 6. git reset --hard: Undoes the commits and discards all changes made in the undone commits.

- I committed a new commit called "mixed reset" then lets try the mixed by going back again to "2nd commit" that is 1 commit behind the HEAD

```bash
$ git reset --hard HEAD~1
$ git status
```

- The output is:

```txt
On branch git-reset-practice
nothing to commit, working tree clean
```

- The file contents:

```txt
On branch git-reset-practice
nothing to commit, working tree clean
```

- The logs:

```txt
commit 9b1334103bbb0cc94f2094eb656237f2cd8e6b2e (HEAD -> git-reset-practice)
Author: zeyadAjamy <wezza2003@gmail.com>
Date:   Tue Jun 29 23:20:01 2023 +0300

    2nd commit

commit b2503e276ee4c1ce0a0a081c7aaec4a3b3f082be
Author: zeyadAjamy <wezza2003@gmail.com>
Date:   Tue Jun 29 23:18:01 2023 +0300

    created git reset file
```

### Observation:

1. The changes are reset
2. The history is reset


## Reflection:

Git reset command provides valuable flexibility in managing the commit history and working directory. It allows for undoing commits while preserving changes, splitting commits, preparing clean commits, and managing branches. Overall, Git reset is a powerful tool that helps maintain a clean and organized version control workflow.