# _git reset_ command practice
## Steps I took
  * Created __git-reset-practice__ branch from __main__
  * Created file _reset_practice.txt_
  * Performed different types of reset on this file being at different states.
## git reset --hard
After performing few commits and hard reseting to @~2 (two steps down from HEAD), get this message, meaning that this file is not indexed - we restored commit, deleted index and directory to coincide with 
commit we reset to.
> Unstaged changes after reset:  
D       lab3/reset_practice.txt
## git reset [--mixed]
This is a default type of reset that resets index and commit, but current directory is stays the same (useful command for rewriting commit if made mistake). 
## git reset --soft
This command only moves current commit pointer, but saves indexed files, so that they can be commited from different place.
