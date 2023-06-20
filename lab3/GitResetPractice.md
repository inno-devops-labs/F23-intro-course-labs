# Git Reset Exercises

## Practicing Git Reset Command

1. Performing a "git reset --hard" command
   Steps I followed:
    - Added a new file and staged it.
    - Modified the content of an existing file.
    - Executed the "git reset --hard" command.
      Observations:
    - All files in the staged and modified areas were restored to their previous state.

2. Performing a "git reset --mixed" command
   Steps I followed:
    - Added a new file and staged it.
    - Modified the content of an existing file and staged it.
    - Executed the "git reset --mixed" command.
      Observations:
    - All files in the staged area were moved back to the modified area.

3. Performing a "git reset --soft HEAD~2" command
   Steps I followed:
    - Created five commits in the local branch.
    - Added a new file and staged it.
    - Modified the content of an existing file.
    - Executed the "git reset --soft HEAD~2" command.
      Observations:
    - All files in the staged and modified areas remained unchanged.
    - The branch reverted back to the state of the previous two commits in the staged area.

The reset command allows you to restore a previous state of your code, providing the option to undo changes. It grants you control over the number of commits you want to go back and how to handle current modifications, empowering you with precise control over your codebase.