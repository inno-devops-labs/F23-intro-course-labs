## Soft reset

# Steps
1. Make 3 commits
2. Run 'git reset --soft d0712745' (the second commit)

# Observations
* The branch pointer is moved to the second commit. 
* The working directory is not changed. 
* The staging area is not changed.

## Mixed reset

# Steps
1. Make 3 commits
2. Run 'git reset --mixed dad356ec' (the second commit)

# Observations
* The branch pointer is moved to the second commit. 
* The working directory is not changed. 
* The staging area is changed to match that commit.

1 commit