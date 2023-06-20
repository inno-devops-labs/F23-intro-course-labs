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

## Hard reset

# Steps
1. Make 3 commits
2. Run 'git reset --hard 4d8b36b5' (the second commit)

# Observations
* The branch pointer is moved to the second commit. 
* The working directory is changed to match that commit. 
* The staging area is changed to match that commit.

It's important to note that git reset alters the commit history, so it should be used with caution, especially when working with shared repositories or branches that other people are also using.