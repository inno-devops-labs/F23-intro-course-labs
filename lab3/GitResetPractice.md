# GIT reset practice
## Preparations
I decided to use new git repo to practice with `git reset`. I've added a few commits with simple changes.
```
mkdir git-reset-practice
git init
```
I added 6 commits: two commits for 3 files.
```
touch FileX.py
git add FileX.py
git commit -m "Add FileX.py"
echo "print('This is file X')" > FileX.py
git add FileX.py
git commit -m "Update FileX.py"
```
Result commit history
```
git log --oneline
> f635de4 (HEAD -> master) Update File3.py
> cffff5f Add File3.py
> 0bdf3c2 Update File2.py
> 589da94 Add File2.py
> 84c903f Update File1.py
> f2897e6 Add File1.py
```

## soft reset
```
git reset --soft HEAD~1

git log --oneline
> cffff5f (HEAD -> master) Add File3.py
> 0bdf3c2 Update File2.py
> 589da94 Add File2.py
> 84c903f Update File1.py
> f2897e6 Add File1.py

git status
> On branch master
> Changes to be committed:
>   (use "git restore --staged <file>..." to unstage)
> 	modified:   File3.py
```
Git reset soft removes commits from commit history, but changes in files stay in the working tree. Changes also stay in the index.

## mixed reset
```
git reset --mixed HEAD~1

git log --oneline
> cffff5f (HEAD -> master) Add File3.py
> 0bdf3c2 Update File2.py
> 589da94 Add File2.py
> 84c903f Update File1.py
> f2897e6 Add File1.py

git status
> On branch master
> Changes not staged for commit:
>   (use "git add <file>..." to update what will be committed)
>   (use "git restore <file>..." to discard changes in working directory)
> 	modified:   File3.py
```
Git reset mixed removes commits from commit history, but changes in files stay in the working tree. Changes are also removed from the index.


## hard reset
```
git reset --hard HEAD~1

git log --oneline
> cffff5f (HEAD -> master) Add File3.py
> 0bdf3c2 Update File2.py
> 589da94 Add File2.py
> 84c903f Update File1.py
> f2897e6 Add File1.py

git status
> On branch master
> nothing to commit, working tree clean
```
Git reset mixed removes commits from commit history, but changes in files stay in the working tree. Changes are also removed from the index.

## relative reset with HEAD
As you can see in examples above, using HEAD we can do a reset to commit relative to the current one. In this approach we don't need to know hash of the target commit, we only need the number of commits we want to reset.

## reset with hash
```
git reset 0bdf3c2
> 0bdf3c2 (HEAD -> master) Update File2.py
> 589da94 Add File2.py
> 84c903f Update File1.py
> f2897e6 Add File1.py
```
Using hash we can reset all commits form current one to  the specified with hash.

## Reflection
`git reset` allows to undo changes and move the current branch pointer to a different commit. It can be also used for refactoring code commit history and branch management. `git reset` has different modes, but hard reset is very dangerous as it can completely delete changes.
