# Version Control Systems
Amirlan Sharipov

## Task 1
- Version control systems are systems that are used to manage changes to some data, usually source code of a program.
- They are especially useful for collaborative development, since multiple people can manage their own changes and after that it's possible to merge the changes together.
- A centralized version control system relies on a single central server to commit changes. Examples include Subversion, CVS, and others. The downside is that there is a risk that the server will fail and it will be impossible to recover the data.
- A distributed version control system takes a different approach: every developer has their own copy of the source code. Even if a remote server fails, there are multiple copies, so it's easy to restore the data. Examples: Git, Bazaar, and Mercurial.

### Git vs Subversion vs Mercurial
Git and Mercurial are distributed version control systems, while Subversion (SVN) is a centralzied one. Git and Mercurial are very similar, it's even possible to convert Git repository to Mercurial one and backwards. But Git is more popular and there are popular platforms based on git like Github and Gitlab.

## Task 2
I used a different dummy repository to conduct the experiments.
1. I created a file "test.txt" and inserted "a" at the end.
2. Commited the changes
3. Added "b" at the end and commited
4. Added "c" at the end and commited

### git reset modes
- Mixed mode, which is the default one, moves the Head, resets the index, but not the working tree, meaning that files won't change, but the changes are not added to the index (we need to git add before commiting).
- Soft mode doesn't change the files and the index. It only moves the Head. Changes will be already "added", so you won't need to "git add" before commit.
- Hard mode moves the head and resets both the index and the working tree, meaning the files are changed as well.

The reset commands in all modes work as expected: hard command changes the file, soft mode doesn't change anything except the Head, mixed mode doesn't autmatically stage the changes.

Head relative (Head~n) and commit hash resets work as expected. For example, I did a hard reset to HEAD~2 from the 3rd commit and got the file with only "a" in it.
