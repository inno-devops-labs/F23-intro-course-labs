# Report - Git Reset Practice

#### Preparation
- Firstly, I create branch "git-reset-practice" and do 3 commits in it.
 
![commits looks like this 1](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/commits_looks_like_this_1.png)

#### git reset --soft - first try
- Then I use "git reset --soft HEAD~1" several times, but I haven't seen any changes

#### git reset --hard - first try
- Then I try to use command "git reset --hard HEAD~1". It broke all that I have done - it deletes all commits and the branch(. Maybe because I used "git reset --soft HEAD~1" beafore...

#### git reset --mixed
- Besides, after that I try to do new commit in get-reset-practice branch
 
![new file](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/new_file.png)

![new commit](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/new_commit.png)

- so I try to undo it with command "git reset --mixed HEAD~1". The result was: commit was deleted, while the file still in the filesystem(but it is need "git add" command to be commited)

![there is no commit](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/there_is_no_commit.png)

![but file still in filesystem](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/but_file_still_in_filesystem.png)

#### git reset --soft - second try
- I redo Preparation section. and change experamental file, but I didn't commit last changes.

![now commits look like this 2](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/now_commits_look_like_this_2.png)

![now file look like this(it is uncommited)](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/now_file_look_like_this_it_is_uncommited.png)
- I use "git reset --soft HEAD~1" again. And now I see the result: the last commit is undo, but the changes in the file are still stored.

![commits now look like this 3](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/commits_now_look_like_this_3.png)

#### git reset --hard - second try
- Now I try to undo the last two commits with --hard option. And yes, now command "git reset --hard HEAD~1" use more correctly - it is undo one last commit. So I use it two times to undo two commits.

![finally, commits now look like this](https://github.com/MinusOne-1/DevOps_labs/blob/lab3_solution/lab3/Task2_images/finally_commits_now_look_like_this.png)