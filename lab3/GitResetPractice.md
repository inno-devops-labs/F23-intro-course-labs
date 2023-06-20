1. Made 5 changes to README.md and committed each change
2. Observed the commit history with git log command, the output included all commits with info, e.g. 

commit 4e9964f8ab763c33e77397e09771deecbe3a547c (HEAD -> main)

Author: dariamikl <d.miklashevskaya@innopolis.ru>

Date:   Tue Jun 20 12:35:43 2023 +0300

    lab 3 git tool

3. Performed git reset --soft using commit hashes (e.g. 11db3814f9b664897fb6a8494c0fcf869f938542) and relative references (HEAD-1 and HEAD-2)
4. The branch pointer moved to the specified commit, the changes were kept in the staging area and could be committed again, useful for reorganising commits
5. Performed git reset (the default option is --mixed anyways)
6. The branch pointer was moved to the specified commit, the staging area changes were reset to the specified commit, but all files were kept the same so I could decide which changes to include in the 
commit. Useful when one wants to unstage changes but not lose modifications.
7. Performed git reset --hard
8. HEAD is now at ... output was displayed
9. The branch pointer was moved to the specified commit, the staging area changes were all reset, the changes from local directory were also reset and working directory matched the files from the specified 
commit. Basically, all the changes after the specified commit were cancelled like they never happened. Useful when one wants to completely destroy the changes.
