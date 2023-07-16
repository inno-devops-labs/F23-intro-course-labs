# Version Control

```
DevOps Toolchain Category: Version Control
```

## What are version control systems

Version control systems are tools that help manage chanches to files and projects over time. They allow multiple people to collaborate on a project by keeping track of different versions of files and recording any modifications made. With a version control system, we can track who made changes, when they were made, and what changes were made. They also enable you to revert back to previous versions if needed (rollback) and help in resolving conflitcs when multiple people are working on the same file simultaneously.

In few words, a version control system help ensure better organization, collaboration, and tracking of chnages in software development and other collaborative projects.

## benefits and advantages of using version control in a collaborative environment

The usage of version control systems is so important in software development. Software engineering without the use of versin control systems would have been very tedious and messy. Some of the benefits and advantages are :

1. History and Version Tracking:

   - Keeps track of all changes made to files, providing a complete history.
   - Allows you to easily view, compare, and revert back to previous versions.

2. Collaboration and Teamwork:

   - Enables multiple people to work on the same files simultaneously.
   - Helps in merging changes made by different team members, reducing conflicts.

3. Branching and Parallel Development:

   - Allows creating branches to work on separate features or experiments.
   - Supports parallel development efforts without interfering with each other.
   - Allows for experimentation with different ideas and approaches.
   - Serves as a documentation tool by preserving the history of project changes

4. Fault Tolerance and Recovery:

   - Provides a backup of the entire project's history, reducing the risk of data loss.
   - Enables quick recovery in case of accidental deletions or system failures.

5. Code Review and Collaboration:

   - Facilitates code review processes, allowing team members to provide feedback.
   - Makes it easier to discuss and resolve issues or bugs in the code.

6. Integrates with CI/CD (Continuous Integration/Continuous Deployment) processes.
   - Enables automated testing, building, and deployment of software.
   - Scalability and Project Management:

## types of version control systems

### Centralized Version Control Systems (CVCS):

In centralized source control, there is a server and a client. The server is the master repository that contains all of the versions of the code. To work on any project, firstly user or client needs to get the code from the master repository or server. So the client communicates with the server and pulls all the code or current version of the code from the server to their local machine. In other terms we can say, you need to take an update from the master repository and then you get the local copy of the code in your system. So once you get the latest version of the code, you start making your own changes in the code and after that, you simply need to commit those changes straight forward into the master repository.

- Examples: CVS (Concurrent Versions System), Subversion (SVN)
- Usage Context: Suitable for small to medium-sized teams working on a centralized server, where all files and version history are stored centrally.

#### Subversion (SVN):

Usage Context: Commonly used for centralized version control, especially in corporate environments. Suitable for projects where centralized control and access management are critical.

### Distributed Version Control Systems (DVCS):

In distributed version control most of the mechanism or model applies the same as centralized. The only major difference you will find here is, instead of one single repository which is the server, here every single developer or client has their own server and they will have a copy of the entire history or version of the code and all of its branches in their local server or machine. Basically, every client or user can work locally and disconnected which is more convenient than centralized source control and that’s why it is called distributed.

- Examples: Git, Mercurial, Bazaar
- Usage Context: Ideal for both small and large teams, distributed environments, and projects with high collaboration needs. Each team member has a full copy of the repository, enabling offline work and faster operations.

##### Git:

Widely used for source code management, especially in open-source projects and software development teams. Offers powerful branching and merging capabilities.

##### Mercurial:

Similar to Git, it is distributed and versatile. Often used for both small and large projects, offering ease of use and flexibility.

## Real word usecase example

A real world simle example coudld be in the development of a simple web application. Imagine a team of software developers working on a web application. The team is made up of 2 backend developers and 2 frontend developers.
Frontend can divide their tasks and collaborate in the development of UI features and pages, while backend developers would collaborate on the development of backend services or API.

Using version control would,

- Each developer have access the latest version of the code (front or back)
- Developers can track the development history and see what changes their peers implemented.
- Each developer can create their branch, code and merge the code to the main branch through pull request
- Developers can rollback the code if there are bugs in the latest version
- Remote collaboration is possible
