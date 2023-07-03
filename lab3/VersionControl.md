# Student Information
Name: Md Motasim Bhuiyan

Email: m.bhuiyan@innopolis.university

Group: BS21-CS-01

# Definition and Purpose
Version control systems are tools to manage changes to files and folders over time. These softwares enable individuals or teams to track modifications, coordinate collaboration, and maintain a history of revisions. The purpose of version control is to provide a structured and systematic approach for code management. This allows contributors to work independently without conflicts and have better productivity.

# Benefits and Advantages
- History tracking: Version control systems track every change made to the project. This helps going back and forth in the project history and resolve issues if necessary.

- Collaborative development: Version control systems let all the team members work on their own branch/copy of the project and merge later. This adds a highly effecient way to do collaborative development

- Conflict resolution: Version control systems come with conflict resolution system. Either by merging or picking one of the changes, conflicts can be resolved easily.

- Rollbacks and branching: In any part of the development lifecycle, it is possible to go back in a previous commit and undo/change to resolve a bug or add a feature. This helps easier collaborative development.

## Types of Version Control Systems
- Centralized: Centralized version control systems have a central server that stores the entire repository. A user needs to check out a file, copy locally and then check in. Subversion is one of such example. Such systems are easy to use but have a single point of failure. Also, centralized system is not suitable for distributed or offline development.

- Decentralized: Git, Mercurial etc provide decentralized approach to version control. In such system, every user have their local copy of the repository including all history. User pushes the change to the online repository after working online. Such systems offer offline and distributed development.

## Comparison of Version Control Systems

- Git: Git is the most popular version control system. It is a decentralized system that offers a handful number of commands which are intuitive and do the job well. However, mastering git is not a very easy task and requires practice. One of the main advantages of git is that some of the commands do several things at once. For example, `git pull` is a combination of `git fetch` and `git merge`. This makes the workflow easier and faster. Git handles large binary files as file pointers to reduce the size of the repository.
- Subversion: Subversion is a centralized version control system. This has a simple learning curve and good for online development. However, developing online or in a distributed manner is not efficient. This is also not very suitable for large projects. Subversion handles large binary files by storing the entire file in the repository.
- Mercurial: Mercurial is a decentralized version control system. It is very similar to git in terms of commands and workflow. However, it is not as popular as git and has a smaller community. Mercurial is easy to learn and its commands do one thing at a time. Mercurial also handles large binary files as file pointers to reduce the size of the repository.