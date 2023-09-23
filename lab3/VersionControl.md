# Task 1: Understanding Version Control Systems

### Definition of version control systems and their purpose
Version control is a practice in software development that can save our code or any other information and maintain its history throughout the software development and deployment cycle. It is very important practice in the software development as it allows you to keep a detailed modification record which will ensure these modifications are traceable and reversible.
The purpose of the version control system is same as mentioned earlier, it helps us to manage and track the modifications of the code througout the software development cycle. 

### Benefits and advantages of using version control in a collaborative environment
By using version control system in the process of software developemnt it ensures that there is 
1. Efficient collaboration among the developers, especially when working concurently.
2. Identifying the conficts and to resolve them quickly. 
3. In making a modular packages
4. Roll back to previous version if the current version is having any issues.
5. Easy to integrate it with Continous deployment archetecture to release the software to the consumers.

Therefore it enhances the project development speed, prodcutivity and communication in the team.

### Overview of different types of version control systems (centralized, distributed, etc.)

It turns out that the version control systems come in three main forms: local, centralized, and distributed.

1. **Local Version Control Systems**: This type of VCS stores all the files and changes on the users local machine.
2. **Centralized Version Control Systems (CVCS)** : Here the CVCS stores all the files in a central repository. All users work with the same central repository. Which can be daunting and unefficient to work with. Especially for large projects.
3. **Distributed Version Control Systems (DVCS)**:  Finally, this type allows users to access a repository from multiple locations. Each local repository is an exact copy of the central repository, including its history. This DVCS is the most commonly used VCS in todays repository holding platforms like github, bitbucket etc.

### Comparison of popular version control systems (Git, Subversion, Mercurial, etc.)
#### 1. **Git**
   - It adopts distributed version control system (DVCS).
   - It has Faster commits because it has to store the repo local repositories.
   - It has Steeper learning curve for those accustomed to centralized VCSs.
   - Struggles with very large repositories.
   - Most commonly used VCS.

#### 2. **Subversion**
   - It adopts centralized version control system (CVCS).
   - Less flexible in terms of workflow, commits to a central repository etc are not so pleasant as Git.
   - Simpler and easier to use but lacks some features of Git.

#### 3. **Mercurial**
   - It adopts distributed version control system like Git (DVCS).
   - Permanent storage of each branch into commits, making it impossible to remove or edit past work.
   - Less forgiving of mistakes and offers fewer options than Git