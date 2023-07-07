# Git reset

`git reset` command is used to manipulate the commit history and move the pointer and branch references to different commit positions.

1. Soft reset (`git reset --soft`) moves the pointer to a specific commit while preserving the changes in the staging area and working directory.
2. Mixed reset (`git reset`, default behaviour) moves the pointer to a specific commit and resets the staging area, but keeps the changes in the working directory.
3. Hard reset (`git reset --hard`) moves the pointer to a specific commit and discards all changes made after the specified commit.
