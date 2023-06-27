# Introduction to DevOps Lab3
**Leonid Zelenskiy** <br>
**B21-CS-01** <br>
*l.zelenskiy@innopolis.university*

## Git reset research
**git log:**
Change 4 (HEAD)
Change 3
Change 2
Change 1

Differences between --soft, --mixed, --hard

- **git reset HEAD~1 --soft**

    HEAD changes to Change 3 and all differences between Change 3 and Change 4 are staged to commit

- **git reset HEAD~1 --mixed**

    HEAD changes to Change 3 but all differences between Change 3 and Change 4 are not staged to commit

- **git reset HEAD~1 --hard**

    HEAD changes to Change 3 but all differences between Change 3 and Change 4 are deleted 

Overall, `git reset` if very usefull, if the performed changes cause errors, or break the build. `git reset` allows to get back to stable version of a project.