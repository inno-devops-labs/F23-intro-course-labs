# Git reset

  

## reset soft
> git reset --soft **commit**

The first of the three modes you can use with Git reset is --soft for the Git reset soft command. This option moves HEAD back to the specified commit, undoes all the changes made between where HEAD was pointing and the specified commit, and saves all the changes in the index. In other words, Git re-adds the changes as staged, ready to be committed again.
### commit changes
![alt commit](https://github.com/Usama050/Lab3/blob/main/Screenshot%20(1).png)

### reset
![alt reset](https://github.com/Usama050/Lab3/blob/main/Screenshot%20(2).png)

## reset mixed
> git reset --mixed **commit**

Similar to Git reset soft, performing a Git reset with the `--mixed` option will undo all the changes between HEAD and the specified commit, but will preserve your changes in the Working Directory, as unstaged changes. If you perform a Git reset and do not supply an option of `--soft`, `--mixed`, or `--hard`, Git will use `--mixed` by default.


### staged changes
![alt staged](https://github.com/Usama050/Lab3/blob/main/Screenshot%20(5).png)

## reset hard
> git reset --hard **commit**

Unlike with the Git reset soft and mixed, Git reset hard carries some danger, as it will automatically discard all the changes made between HEAD and the specified commit.

Git reset hard should be used with extreme caution and only for local changes you’re sure you want to eliminate. Performing a Git reset –hard when working on a shared branch with commits that can be accessed by other contributors can cause issues with your Git history.

### reset
![alt reset](https://github.com/Usama050/Lab3/blob/main/Screenshot%20(4).png)



## Reflection on Benefits and Use Cases of Git Reset

Git reset is a valuable command in version control workflows, offering several benefits and use cases:

1. **Undoing commits**: Git reset allows us to undo one or more commits by moving the branch pointer to a previous commit. This is useful when a commit needs to be removed from the commit history or if a commit was made in error and needs to be corrected.

2. **Selective staging**: With `git reset --mixed`, changes can be unstaged while keeping them in the working directory. This allows for selective staging of changes before committing, providing greater control over which changes are included in the next commit.

3. **Branch maintenance**: Git reset can be used to fix mistakes or rearrange commits in a branch, aiding in maintaining a clean commit history. It allows for rewriting commits, combining or splitting commits, or rearranging the commit order.

4. **Reverting changes**: By using `git reset --hard`, all changes after a specific commit can be discarded, effectively reverting the project to a previous state. This is useful when it's necessary to completely remove unwanted changes and start fresh.

5. **Collaboration workflows**: Git reset is often used in collaboration workflows to undo changes before pushing to a shared repository. It allows developers to review and refine their changes locally before sharing them with the team.
