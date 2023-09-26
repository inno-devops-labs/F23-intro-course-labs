### Git reset practice

1. I added two commits into the test.txt file ("commit 1" and "commit 2") lines
2. I did `git reset --soft HEAD~1` which allowed me to go back one commit back but maintain all staged in that commit changes. With soft commit the working directori does not update. All I had to do to return back is `git commit -m "..."`
3. I did `git reset --mixed HEAD~1` which allowed me to go back one commit back, clear the staged changes but preserve the working directory. I had to add all changes (`git add .`) and commit them (`git commit "..."`) to go back to similar state.
4. Finally, I did `git reset --hard HEAD~1` which send back one commit, clear the staged changes and update the working directory to the state of that commit. To go back I had to reiterate the changes (`echo commit 2 >> ./test.txt`), add all changes (`git add .`) and commit them (`git commit "..."`) to go back to similar state.

I will not display the terminal output since the amount of output does is way too big for such simple thoughts. But for myself I used the following commands:
1. `git status` to make sure which changes are staged and which are not
2. `git log --oneline` to understand the history of made commits
3. `echo test.txt` to see whether the work directory got updated

Overall **soft** commits are good choice if you want to go back and preserve everything, for instance, if you want to combine last few commits into a single one. **mixed** commits good if you want to make few changes in your previous commits since it does not update the directory but unstage everything in git. **hard** is good if you sure you do not need the changes made. It is a potentially destructive action and have to be attended with care.
