# Git Reset Practice

## Mixed Reset

Mixed reset is a default option of "git reset" command. It will reset the staging area to match the current HEAD commit, but it will leave the changes made to the files intact.

## Hard Reset

Hard reset is a more aggressive option of "git reset" command. It removes commits from the current branch and moves them to the staging area. Moreover, it also changes the working directory. It is envoked by adding "--hard" option to the "git reset" command.

## Soft Reset

Soft reset is a less aggressive option of "git reset" command. It resetы both the staging area and the current branch's HEAD to the specified commit, but it will leave the changes made to the files staged. It is envoked by adding "--soft" option to the "git reset" command.

## Usecases of git reset

Soft and Mixed resets are generally "safer" options, as you do not lose any changes made to the files. Hard reset is a more aggressive option, as it removes commits locally too. It is useful when you want to remove commits from the current branch.

## Screenshots of my practice

![alt text](https://i.ibb.co/v4wwvC3/dev1.jpg)
![alt text](https://i.ibb.co/pJRYX1N/dev2.jpg)
