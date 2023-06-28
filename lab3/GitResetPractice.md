# Git Reset Practice

---

## Git Reset Options (soft, hard, mixed)

### Created commits

- Created file 'git_reset_practice': commit 8b227033387647f184bc59f2aec8e42eb7f168ec

- write 'Hello, world' to file: commit f72457597695a594b403c7d9b3a40ff4334b4141

- add 'new commit': commit fb61db719c6c807e569c4c29babbf517b4594e92

- add '55': commit 5d994cb8b32ce7f8f1cffb603d6f267d950c56d1

- add 'Line to remove': commit 4ca185f6f2d75fbe13866f49fef4b9aa8c7bae20

- remove 'Line to remove': commit 2692bca08ed63e2420d88372263e5e2d999652c4

### Git reset commands

---

Command:

> ```git reset --soft 5d994cb8b32ce7f8f1cffb603d6f267d950c56d1```

No output

**Git reset soft on specific commit** didn't change files,
just deleted commits after specified commit.
Changed HEAD to specified commit.
Changes are marked to be commited

---

Command:

> ```git reset --hard HEAD~2```

Output:

> ```HEAD is now at f724575 write 'Hello, world' to file```

**Git reset hard on HEAD~2** changed file to
state 2 commits before. HEAD moved to 2 commits before.
Two last commits are deleted

---

Command:

> ``` git reset --mixed 8b227033387647f184bc59f2aec8e42eb7f168ec ```

Output:

> ```unstaged changes after reset:``` <br>
> ```M lab3/git_reset_practice```

**Git reset mixed on specific commit** didn't change file,
deleted all commits after specified commit.
Changed HEAD to specified commit.
Changes are not marked to be commited.

> ```git status``` <br>
> ```On branch git-reset-practice``` <br>
> ```Changes not staged for commit:``` <br>
> ```(use "git add <file>..." to update what will be committed)``` <br>
> ```(use "git restore <file>..." to discard changes in working directory)``` <br>
> ```modified:   git_reset_practice``` <br>

## Reflection

`git reset` is useful feature to change history of
projects.

`--hard` flag could be used to undo code
after some commit. I think it should be used
only in specific dangerous situations

`--soft` flag could be used to undo commit
to polish code. I think could be mostly used
for resetting last commit

`--mixed` flag could be used to not change added
files to commit because it doesn't put
files to be commited. You need to add it
manually. For example, resetting to delete
secret file from history
