# Git Reset Practice

## Steps Taken to Perform the Git Reset Operations

1. Created a new branch named **"git-reset-practice"** using the command `git branch git-reset-practice`
2. Switched to the new branch using git checkout `git-reset-practice`
3. Made several commits with different changes to a file using `git commit -m "Commit message"`
4. Used git reset with different options to undo the commits and observe the changes
5. Experimented with resetting to a specific commit using commit hashes and relative references


## Description of the Different git reset Options Used and Their Effects

- **Soft Reset:** git reset --soft moves the HEAD pointer and the branch pointer to a specific commit, but keeps the changes in the working directory and staging area. This allows for re-committing the changes or making further modifications before committing again

- **Mixed Reset:** git reset --mixed (default behavior) moves the HEAD pointer and the branch pointer to a specific commit, resets the staging area to match that commit, but keeps the changes in the working directory as uncommitted modifications. This allows for reviewing the changes before staging and committing them

- **Hard Reset:** git reset --hard moves the HEAD pointer and the branch pointer to a specific commit, discarding any changes made after that commit. This option resets both the staging area and the working directory to match the specified commit, permanently removing any uncommitted changes


## Examples and Outputs of the Commands Executed
- `git reset --soft HEAD~2`
    - **Description:** This command performs a soft reset to the commit two steps before the current HEAD.
    - **Output:** The HEAD and branch pointers are moved to the specified commit, and the changes from the last two commits are kept in the staging area
    - 
    
- `git reset --mixed abc123`
    - **Description:** This command performs a mixed reset to the commit identified by the hash "abc123".
    - **Output:** The HEAD and branch pointers are moved to the specified commit, the staging area is reset to match the commit, and the changes from the commit are preserved in the working directory as uncommitted modifications
    - 
- `git reset --hard origin/master`
    - **Description:** This command performs a hard reset to the commit referenced by the "origin/master" branch.
    - **Output:** The HEAD and branch pointers are moved to the specified commit, the staging area is reset to match the commit, and any changes made after the commit are permanently discarded
    -


## Reflection on the Benefits and Use Cases of the git reset Command in Version Control Workflows
The git reset command is a powerful tool in version control workflows that offers several benefits and use cases:

1. **Undoing Commits:** Git reset allows you to undo one or more commits, depending on the options used. This is helpful when you want to revise or remove specific commits from the commit history

2. **Adjusting Branches:** Resetting a branch to a previous commit allows you to modify the branch's history, reorganize commits, or remove unwanted changes. It is useful when you want to create a cleaner commit history before merging or sharing code with others

3. **Correcting Mistakes:** Git reset helps correct mistakes by allowing you to revert changes made in commits without creating new commits to undo them. It gives you the flexibility to modify the commit history and fix issues more efficiently

4. **Interactive Rebasing:** Combining git reset with interactive rebasing enables you to squash or edit commits, making your commit history more concise and coherent