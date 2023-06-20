Steps: 
    1. I made several commits with Lab_2 branch 
    2. I put some information down there. 
    3. Then I decided to put a little bit more, to clearly state my thoughts, but I understood that this is to much. 
    4. I used "$ git reset --hard" command to return branch to the initial state, I might say from which I started.

Git Reset Options and Their Effects:
    1. Soft Reset (--soft): This option moves the branch pointer to the specified commit while keeping the changes in the working directory and staging area intact. It undoes the commit but preserves the changes as uncommitted modifications.
    2. Mixed Reset (default or --mixed): This is the default option if you don't specify a reset type. It moves the branch pointer and updates the staging area to match the specified commit. 
    3. Hard Reset (--hard): This option moves the branch pointer to the specified commit and updates the staging area and working directory to match that commit. It discards all changes after the reset point.

Examples and Outputs of Git Reset Commands:
    a) Soft Reset Example: "git reset --soft SMTH~1". The branch pointer moves to the previous commit, and the changes from the last commit remain in the staging area and working directory, ready for modification or recommit.
    b) Mixed Reset Example: "git reset SMTH~1". The branch pointer moves to the previous commit, and the changes from the last commit are unstaged. The changes remain in the working directory for further modifications.
    c) Hard Reset Example: "git reset --hard SMTH~1". The branch pointer moves to the previous commit, and both the staging area and working directory are updated to match that commit.

Benefits and Use Cases of Git Reset:
    a) Undoing Commits: Git reset allows you to undo one or more commits, removing them from the branch's history.
    b) Refactoring: Git reset can be used to split or merge commits, rearrange commits, or rewrite the commit history to create a cleaner and more organized project structure.
    c) Resetting to a Specific State: Git reset lets you reset the repository to a specific commit, branch, or reference point, allowing you to revert to a known good state.

