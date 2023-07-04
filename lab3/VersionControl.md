#### Definition and purposes

Version Control Systems (VCS) is a software tools that tracking changes to files over time. The main purpose is providing a truth source which prevent the loss of important information and changes.

**Purposes**

 - Helps in recording changes made to file by keeping track of modifications in the code.
 - Helps team work in parallel
 - Provides enhanced project development speed through efficient collaboration, improved productivity and expedited product delivery.
 - It enables reverting to previous versions, comparing changes over time, and tracking who made specific changes. 
 - If incompatible changes are made, version control systems identify the problem areas and enable quick reversion or comparison of changes.
 
#### Benefits and advantages in a collaborative environment

 - Accountability: every change made to the codebase is recorded, along with information about who made the change and when. It encourages developers to take responsibility for their changes.
 - Security: a secure and centralized repository for storing code provide features like access control, authentication, and encryption to protect the source code from unauthorized access or modifications. In case of accidental changes or code loss, version control allows for easy recovery and restoration of previous versions.
 - Concurrent Work and Code Branching: the developers can work on the same code simultaneously and create different branches with themselves changes.
 
#### Types of VCS:

 - Local Version Control System: maintains track of files within the local system. It is simple and common but also error-prone, as there is a higher chance of accidentally writing to the wrong file.
 - Centralized Version Control System: all changes to files are tracked under a centralized server. The server contains all the information about versioned files and a list of clients that check out files from that central place. An example of a centralized version control system is Tortoise SVN
 - Distributed Version Control System: each client clones the repository, including its full history. If a server dies, any of the client repositories can be copied onto the server to restore it. Every clone is considered a full backup of all the data. Git is an example of a distributed version control system.
 
#### Comparison

 - Git: DVCS, offers a powerful branching model, making it easy to create and manage branches for different features or bug fixes, extensive documentation, has a steep learning curve for beginners due to its powerful and flexible features.
 - Subversion: CVCS, provides centralized authentication and hosting, making it suitable for large teams with strict security requirements, considered easier to learn and use compared to Git and Mercurial, stable and reliable.
 - Mercurial: DVCS, primarily implemented in Python, making it easier for Python developers to contribute and customize, shares some similarities with SVN, making the learning curve for SVN users less steep, stores branches permanently, making it harder to remove or edit past work compared to Git.
