 In this file, we will discuss more about software version control systems

### Defenition:
 these systems are used to control and manage the changes and mofications to the source code throughout the lifecycle.

###  Advantages of using version control:

 Overall, using version control systems aids in providing a controlled environment for code sharing and merging effortlessly. 

 Also it keeps track of the changes and automatically.

###  Types of version control systems:

  - **Local:** Can be described as a local daatabase on the working machine. Each file modificationis tored as a patch, which contains only the recoreed changes.

- **Cetralized:** A sserver that encubates all the versions of the file. This asllows multiple users to connect to the server simultaneously, get the files to the local working machine or upload them back after modifications 
- **Distributed:** This method allows the users to fully clone the repository including the history. In this way, every membrs who work on the project get a complet version of the project, i.e local database.

### Comparison of popular version control systems:


#### 1- GIT: 
provides strong support for non-linear development, allows distributed model, and handles various proejcts sizes.

**Pros:** 
+ Cross Platform
+ Efficient performance
+ Easily maintainable

**Cons:**
  + Complex history log
  + No support keyboard expansion 

-------
#### 2- Mercurial: 
Offers more advanced branching and merging capabilities. Moreover, it is fully distributed and decenteralized 

**Pros:** 
+ Fast and powerful
+ Easy to learn
+ Simple in concept

**Cons:**
  + all the extensions must be written in python
  + No Partial checkouts

-------
#### 3- SVN: 
This system has everything versioned. From directories to copying and deleting.

**Pros:** 
+ Good GUI tool
+ better windows support that GIT
+ Easy to set up an admin

**Cons:**
  + Does not deal with filename
  + Does not support signed revisions

--------
 Adding some comments for testing the **git reset** command. This modifications shall only be to the branc **git-reset-practice**.

 EOF