# Report - Git Reset Practice

#### Preparation
- Firstly, I create branch "git-reset-practice" and do 3 commits in it.
![commits looks like this]()

#### git reset --soft - first try
- Then I use "git reset --soft HEAD~1" several times, but I haven't seen any changes

#### git reset --hard - first try
- Then I try to use command "git reset --hard HEAD~1". It broke all that I have done - it deletes all commits and the branch(. Maybe because I used "git reset --soft HEAD~1" beafore...

#### git reset --mixed
- Beside, after that I try to do new commit in get-reset-practice branch
![new file in lab3-solution branch]()
![new commit lab3-solution branch]()
so I try to undo it with command "git reset --mixed HEAD~1". The result was: commit was deleted, while the file still in the filesystem(but it is need "git add" command to be commited)
![there is no commit]()
![but file still in filesystem]()

#### git reset --soft - second try
- I redo Preparation section. and change experamental file, but I didn't commit last changes.
![now commits look like this]()
![now file look like this(it is uncommited)]()
- I use "git reset --soft HEAD~1" again. And now I see the result: the last commit is undo, but the changes in the file are still stored.
![commits now look like this]()

#### git reset --hard - second try
- Now I try to undo the last two commits with --hard option. And yes, now command "git reset --hard HEAD~1" use more correctly - it is undo one last commit. So I use it two times to undo two commits.
![finally, commits now look like this]()