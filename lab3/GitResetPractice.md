# Practicing with Git Reset

## Introduction

The `git reset` command is one of the core commands in Git that helps in undoing changes. It operates in three primary modes: soft, mixed, and hard.

## Steps for Git Reset Operations

1. **Create a new branch**:
   ```bash
   git checkout -b git-reset-practice
   ```

2. **Make four commits**:
   a. First commit:
   ```bash
   echo "First change" > file.txt
   git add file.txt
   git commit -m "First commit"
   ```
   
   b. Second commit:
   ```bash
   echo "Second change" >> file.txt
   git add file.txt
   git commit -m "Second commit"
   ```

   c. Third commit:
   ```bash
   echo "Third change" >> file.txt
   git add file.txt
   git commit -m "Third commit"
   ```

   d. Fourth commit:
   ```bash
   echo "Fourth change" >> file.txt
   git add file.txt
   git commit -m "Fourth commit"
   ```

3. **Use `git reset` with different options**:

   a. Soft reset (to undo the fourth commit but keep the changes staged):
   ```bash
   git reset --soft HEAD~1
   ```

   b. Mixed reset (to undo the third commit and unstage the changes):
   ```bash
   git reset HEAD~1
   ```

   c. Hard reset (to undo the second commit and discard all changes):
   ```bash
   git reset --hard HEAD~1
   ```

4. **Resetting to the first commit**:

I used `git log` to get the commit hash of first commit and reset to it
   ```bash
   git log
   git reset --hard 146b70c0
   ```

## Description of Git Reset Options

- **Soft**: This undoes the commit but keeps all changes staged.
- **Mixed**: This undoes the commit and unstages the changes.
- **Hard**: This undoes the commit and discards all changes, reverting the working directory to the state of the previous commit.

## Reflection

The `git reset` command offers a versatile means of undoing changes in a repository. By practicing with the various options, we gain a deeper understanding of the nuances and implications of each reset mode. While powerful, it's crucial to use the command with caution to avoid unintended loss of work.