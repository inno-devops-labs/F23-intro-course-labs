The git log before resets:

| Commit hash - Username | Time              | Description                                |
|------------------------|-------------------|--------------------------------------------|
| 8b82ac7 - zaqbez39me   | 18 seconds ago    | added fours                                |
| c30921b - zaqbez39me   | 33 seconds ago    | added threes                               |
| 5310eab - zaqbez39me   | 43 seconds ago    | added twos                                 |
| bf460d2 - zaqbez39me   | 60 seconds ago    | added ones                                 |
| b542920 - zaqbez39me   | 5 minutes ago     | added solution to second part of third lab |
| 3a7694c - zaqbez39me   | 24 minutes ago    | added file with text                       |
| 8e028f4 - zaqbez39me   | 27 minutes ago    | solved first part of third lab             |
| 4994ce7 - Dmitriy Creed| 2 weeks ago       | Update README.md                           |
| 5480baa - Dmitriy Creed| 2 weeks ago       | Upload lab5                               |
| 483ec84 - Dmitriy Creed| 3 weeks ago       | Lab3 & Lab4                               |
| 3833fac - Dmitriy Creed| 5 weeks ago       | Update lab1 README.md                      |
| c3d3655 - Dmitriy Creed| 7 weeks ago       | Lab1 & Lab2                               |
| 514f2a8 - Dmitriy Creed| 7 weeks ago       | Upload the description                     |
| bc8af54 - Dmitriy Creed| 7 weeks ago       | Initial commit                             |

### Steps

1. Initialized file, putted some text in it and commited it .
2. Then added some text and commited, and again and again several
   times.
3. Started to do resets to previous commits using hash cheching the git status and status of file.
4. I observed different outcomes for each variation of git reset.

### Description

I used the git reset with different options (soft, mixed, hard). I saw the difference. Soft reset just uncommitted
changes the changes left staged. Then, when I performed mixed reset, changes left in working directory/tree but became
unstaged and uncommitted. The hard reset was even harder, it removed everything that was after the commit to which I
reset.

### Examples

Command:
`git reset --soft c30921b`

Output:
`Unstaged changes after reset:
M       lab3/GitResetPractice.md`

Description:
lab3/file became uncommited
---
Command:
`git reset --mixed 5310eab`
Output:
`Unstaged changes after reset:
M       lab3/GitResetPractice.md
M       lab3/file`
Description:
file became unstaged and uncommitted but saved content.
---
Command:
`git reset --hard bf460d2`
Output:
`HEAD is now at bf460d2 added ones`
Description:
The changes became unstaged, uncommitted and deleted. Saved only content of the committed files before bf460d2.
---

### Reflection

The "git reset" command in version control workflows offers distinct benefits and use cases with its hard, mixed, and
soft reset options.

**Hard Reset:** This type completely discards commits and moves the branch pointer, making it useful for reverting to a
previous state and discarding subsequent changes.

**Mixed Reset:** The default behavior, it moves the branch pointer while preserving subsequent changes as uncommitted
modifications. It allows for selective modification of files or changes before committing again.

**Soft Reset:** This type preserves subsequent changes as staged modifications. It is helpful for uncommitting recent
changes without losing them, enabling adjustments to commit history or preparing a clean, organized history for
collaboration.

Overall, "git reset" empowers version control workflows by providing flexibility to revert changes, selectively modify
commits, and maintain a clear, organized history.
