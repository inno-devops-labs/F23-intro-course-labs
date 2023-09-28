
# Git Reset Practice Documentation

## Introduction

In this practice session, I explored the `git reset` command and its various options, namely `--soft`, `--mixed`, and `--hard`. The objective was to understand the implications and behaviors of each of these reset methods, I have included a screenshot folder to show every steps I have done, kindly refer to it, also note that all changes was made in git-practice-reset branch not in lab 3 branch, in lab 3 branch I solved the first task of lab 3.

## Steps Taken

1. Created a new branch named "git-reset-practice".
2. Made three initial commits, representing different changes in the repository.
3. Applied `git reset` with different options on these commits.
4. Created another set of commits to further understand the command.
5. Reset to a specific commit using a commit hash.

## Reset Option Descriptions

- **Soft (`--soft`)**: 
    - **Action**: This option undoes the specified commit(s) but retains the changes in the staging area.
    - **Observation**: After using this option, running `git status` showed the changes as "Changes to be committed".

- **Mixed (`--mixed`)**:
    - **Action**: This option undoes the specified commit(s), unstages the changes, and keeps them in the working directory.
    - **Observation**: After this reset, changes were visible as "Changes not staged for commit".

- **Hard (`--hard`)**: 
    - **Action**: This option undoes the specified commit(s) and completely discards the changes.
    - **Observation**: The working directory returned to the state of the commit I reset to, discarding all subsequent changes.

## Command Outputs

(Note: Actual outputs were not included here. Kindly refer to screenshots to check it as everything was reset to the initial state.)

1. `git reset --soft HEAD~1`: This command undid the last commit and moved its changes to the staging area.
2. `git reset HEAD~1`: This is the mixed reset by default. It undid the last commit and moved its changes to the working directory as unstaged changes.
3. `git reset --hard HEAD~1`: This command completely undid the last commit, discarding its changes.

## Reflection

Understanding the `git reset` command is crucial for managing and navigating the commit history. Each reset option has its specific use cases:

- **Soft Reset**: Useful when we want to redo the commit message or combine several commits into one.
- **Mixed Reset**: Beneficial when we need to make more changes before re-committing.
- **Hard Reset**: Important when we need to completely discard recent mistakes or unwanted commits.

It's essential to use these commands, especially `--hard`, with caution to avoid data loss. 
