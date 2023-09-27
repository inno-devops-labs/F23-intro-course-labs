# Lab 03:

## Task 2:

- To perform the git reset command, we first created the branch "git-reset-practice".

- Then we made some changes to a random file called random.md

- When we apply git reset hard type: the changesare applied to the files corresponding from workspace, staging area(index) and history.
- On the other hand, git reset soft undoes the modifications only to the index(stage).
- Finally, git reset mixed is the default option and does what "hard" does. It reverts chanes between Head and commit. It doesn't modify files from working space, only from head and index. 


### Example: 
- In the ```Dumpy.md``` file we made some changes and pushed to the remote repository, then we applied command ```git reset --hard HEAD~2 ID``` and the changes were removed from workspace

- Later, we pulled from remote to have original file and then appleid ```git reset --soft HEAD~2 ID``` and the editing were removed from the HEAD 

- Finally, we applied ```git reset --mixed HEAD~2 ID``` and the features were removed from the staged area
### Reflection:

We can say the git reset tree is a powerful tool that is used to undo some changes commited to the repository or branch. Furthermore it must be used with caution as it moves HEAD and the branch pointer to desired commit, which will be more confusing