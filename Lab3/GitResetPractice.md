# Git Reset Practice

## Steps
 ### Create a new branch
   git checkout -b git-reset-practice
   
 ### Made changes and commits to file 
 * git add TestPractice.txt
     * git commit -m "First Commit"
 * git add TestPractice.txt
     * git commit -m "Second Commit"
 * git add TestPractice.txt
     * git commit -m "Third Commit"

## Git Reset Practice 
  *  **Soft reset (git reset --soft HEAD~1):**
   This option moves the branch pointer to a previous commit while keeping the changes in the working directory and staging area.
   
 * **Mixed reset (git reset --mixed HEAD~1):**
   This option moves the branch pointer and updates the staging area, but not the working directory. Changes in the undone commits will be unstaged.
   
 * **Hard reset (git reset --hard HEAD~1):**
   This option moves the branch pointer, updates the staging area, and discards the changes in the working directory. The changes made in the undone commits will be completely removed.

Output of each command screenshot it in Lab 3 folder.
