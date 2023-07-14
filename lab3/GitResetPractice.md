# Task 2: Practice with Git Reset Command
---
### git reset --soft HEAD~1

No output.
Soft reset moves the head to a specific commit and keeps all changes .

### git reset --hard HEAD~1

Output: 
**HEAD is now at 15de636 Update website**

Hard reset moves the head to a specific commit and deletes all changes. This type of reset is useful to completely undo all changes. 


### git reset --mixed HEAD~1
Output:
**Unstaged changes after reset:
M   index.html**

Mixed reset moves the head to a specific commit, and makes all the changes not staged to commit.

## Use cases and benefits
The *git reset* command allows to get back to some previous version of the project. This feature is usually used when changes in new commit contain errors or these changes were made accidentally, so it is requred to start over.