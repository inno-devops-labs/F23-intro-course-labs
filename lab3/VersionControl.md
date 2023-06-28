# Version control

---

## Version control system definition

Version control system is a system that helps
track changes in a source code or other files.

## Benefits and advantages

- Version control provides easy
  communication between developers
  that work on one project.

- Version control could help
  to make development more secure.
  In particular, branching could help
  to experiment without affecting main app.
  Pull requests could help to review code
  for any security issues or bugs to avoid problems

## Types of Version control

- Centralized - Code should be uploaded to server and
  then it could be downloaded from server to local machine.

- Distributed - Whole repositories are stored
  on each developers' computers.

- Mixed (Was mentioned on the lecture,
  but I didn't find anything about it in the Internet)

## Comparision of popular VCS

### Git

- Distributed VCS

- Stores changes between commits for old versions.
  For newest, uses th whole file.

- No operations that change content of files.
  Instead every time creates new files

- Could copy only part of branches. Instead
  of copying every branch

- On creating branch, creates new commit and
  adds pointer on new commit.

### Mercurial

- Distributed VCS

- Stores either changes or whole files,
  depending on how much data is required
  to restore file

- While copying, user will get every branch
  in repository

- It is possible to get
  the whole history of each branch

- Uses branching by cloning

### Subversion

- Centralized VCS

- History of changes and copy of files
  are stored in "deltas"
  (Changes between versions)

- While working on some files,
  these files could be locked
  for other users

- Uses only emulation of branching