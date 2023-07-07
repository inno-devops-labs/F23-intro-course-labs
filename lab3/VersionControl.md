## Definition of version control systems and their purpose
Version Control System (VCS) is a special software that is capable of tracking changes to digital artifacts and storing intermediate versions of it. VCS allows programmers to save and track important changes, and helps them to revert back to the stable version after making unwanted changes.

## Explanation of the benefits and advantages of using version control in a collaborative environment
In collaborative environment, VCS helps to track contribution of each programmer and allows developers to independently work on different parts of the code, as it provides programmers with tools to commit changes locally and exchange them on remote repostiories. Also, VCS can work as a saveguard against an unwanted change, as it provides ways to separate commits into multiple branches, protecting master branch from untested change.

## Overview of different types of version control systems (centralized, distributed, etc.)
Version control systems come in three major groups, distinguished in the way they store and exchange commit data between instances of VCS.

### Local VCS
Local VCS is a VCS that does not allow for exchange of commits between different instances of it. All changes are stored locally and never sent to other machine.

### Centralized VCS
Centralized VCS allows its users to collaborate, by storing all the code and commits on a single server, to which all the commits are sent the instant the commit is made. 

### Decentralized VCS
Decentralzed VCS stores a copy of repository and all of its changes and branches locally, allowing users to make commits and track branches on the local machine. But it also provides a pull/push mechanic, allowing user to send all local commits and updates to a remote (usually centralized) repository and later retrieve changes commited and pushed by others.

## Comparison of popular version control systems (Git, Subversion, Mercurial, etc.)

### Git
Git is one of the most popular and widely used VCS, which follows the Decentralized VCS design. It is considered to be the go-to VCS for most developers and is used in this very homework. It supports all nescessary VCS features, like branching and decentralized mechanics and has multiple publicly available repositories like Github or Gitlab, which proivde additional integrations and services.

### Mercurial
Mercurial another Decentralized VCS, quite similar to Git. It has the same core functionality, required by Decentralized VCS design, but compared to Git, its branching mechanics are less complex and powerful, but simplier to learn and use. It also does not provide any means to change old commits and edit the code history. It also lacks staging features present in Git.

### Subversion
Subversion is an example of a Centralized VCS system. Just like Git it is designed for enterprise market, but being a Centralized VCS it relies on a central server for tracking of commits made to a project. Its centralized paradigm, allows for better security and permission control on the repository and has simpler (similar to Mercurial) functionality, but relies heavily on central server, making any commits impossible when offline.