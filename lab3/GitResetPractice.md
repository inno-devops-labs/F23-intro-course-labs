**Steps**
1. Make some commits
2. Write 
````
git reset --[hard | mixed | soft] 4fafc2aa7539fb5c597ead5a585fe8fa33fa912c

             ^                    ^ 
             option               commit SHA
````

**Description of the different `git reset` options used and their effects.**
- soft \
Resets to given commit. Stages all changes from commites between old and new HEAD
- mixed \ 
Resets to given commit. All changes from commites between old and new HEAD are not staged.
- hard \
Resets to given commit. All changes from commites between old and new HEAD are discarded.

**Examples and outputs of the commands executed.**
````
input: git reset --soft 0c18331ea2daf929c2d1c8c7eac79daa54697734
output: 
````

````
git reset --mixed 0c18331ea2daf929c2d1c8c7eac79daa54697734
output: 
````

````
input: git reset --hard 0c18331ea2daf929c2d1c8c7eac79daa54697734
output: HEAD is now at 0c18331 text commit
````

**Reflection on the benefits and use cases of the `git reset` command in version control workflows.**

- Clean working directory: The git reset command with the --hard option allows developers to clear the working directory by discarding all local modifications 

- Resolve merge conflicts: If a developer encounters a complicated merge conflict that cannot be easily resolved, they can use git reset to undo the merge and return to an earlier state

- Clean uncommited changes

- Rewrite commit history

