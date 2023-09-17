# Task 1

### Definition and purpose of version control systems 

Version control systems (VCS) are software tools that help developers manage changes to their code and other files.
The main purpose of using version control systems is to track the evolution of a project's source code as well as 
collaborate with software team on different projects. 

### Benefits and advantages of using version control in a collaborative environment

1. **Track changes**

   VCS maintain detailed history of all changes made to files, allowing users to track who and when made changes.

2. **Collaboration**

    VCS enables multiple developers to work on the same project simultaneously. 

3. **Rollback**

    As VCS stores the history of changes, in the case of system failure, developers can return to previous working
    versions. 

5. **Branching**

    In case of working on new feature or bug fixes, VCS allows to create branches without affecting the main code.
    After testing the changes, branches can be merged into the main branch.


### Types of VCS:

The main two popular VCS are:
1. **Centralized version control systems (CVCS)**

   All the files are stored in the centar repository
   
   _Example_: Concurrent Versions System (CVS), Perforce, and Subversion (SVN).

2. **Distributed version control system (DVCS)**

   All the files are stored across multiple repositories
   
   _Example_: Git, Mercurial

In other sources I found also the following types of VCS:

**Lock-based version control system**

   Files are locked to manage concurrent access to files and resources. 
   File locking prevents two or more users from making conflicting changes to the same file or resource.

**Optimistic version control system**

   Every user has their own private workspace. 
   When they want to share their changes with the rest of the team, they submit a request to the server. 
   The server then looks at all the changes and determines which ones can be safely merged together.

**Local Version Control System**

   A local version control system is a local database located on your local computer, in which every file change is 
   stored as a patch.


### Comparison of different VCS:

**Git**

- distributed VCS;
- easy branching and merging;
- fast in commits, branching, and merging;
- scalable.

**Subversion**

- centralized VCS;
- not so flexible branching and merging as in Git;
- strong access control;
- slow with the growth of repository;
- simpler for beginner in compare with Git.

**Mercurial**

- distributed VCS;
- simple and easy to use;
- more user-friendly branching than in Git;
- less widely adopted than Git.
