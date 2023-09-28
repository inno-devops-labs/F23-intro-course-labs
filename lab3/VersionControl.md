
# Task-1:
## Version Control Systems (VCS)

Version Control Systems or VCS are essential tools in software development. They serve the purpose of tracking and managing changes to source code and other files in a systematic and organized manner.

Purpose of VCS is as follows:

1. **History Tracking:** Tracking incremental changes to the codebase
2. **Collaboration:** Facilitates collaborative work by allowing multiple developers to work on the same codebase simultaneously.
3. **Backup and Recovery:** Acts as a robust backup mechanism, ensuring that data is not lost due to accidental deletions or changes.
4. **Code Reviews:** Aids in the code review process by providing a clear history of changes and who did them.

### Examples:

1. Github
2. Gitlab
3. BitBucket
4. Jetbrains VCS


## Benefits of Version Control in Collaborative Environment

1. **Code Sync:** Team members can easily synchronize their work and avoid overwriting each other's changes.

2. **Tracking/Audit:** VCS logs all changes, providing a clear record of who made what modifications and when.

3. **Parallel Development:** Developers can work on different aspects of a project simultaneously, speeding up development.

4. **Testing and QA:** Different branches allow for separate testing and quality assurance efforts, ensuring a stable product.

5. **Fast Development:** Allows faster development of the project without too much conflicts.

## Types of Version Control Systems

There are two primary types of version control systems as studied in the lectures:

### Centralized Version Control System (CVCS):

In CVCS, there is a central server that stores the repository. Developers check out files from this central repository to work on them.

**Example:** Subversion (SVN).

### Distributed Version Control System (DVCS):

In DVCS, every developer has a local copy of the entire repository. Developers can commit changes locally without needing constant network access.

**Example:** Git, Mercurial.


## Comparison of Popular Version Control Systems:

**Git:**

* Type: Distributed
* Branching: Lightweight and easy
* Offline Work: Yes
* Description: Git is a distributed VCS known for its speed and flexibility. It allows for lightweight branching and is widely used in open-source and corporate projects. Developers have the advantage of working offline and merging changes seamlessly.

**Subversion (SVN):**

* Type: Centralized
* Branching: Heavier, but manageable
* Performance: Slower for large repositories
* Offline Work: Limited
* Description: SVN is a centralized VCS where all code is stored in a central repository. While branching can be heavier, it offers good control over versioning. It's commonly used in corporate environments with stricter access control and permission settings.

**Mercurial:**

* Type: Distributed
* Branching: Lightweight and intuitive
* Performance: Fast
* Offline Work: Yes
* Description: Mercurial is a distributed VCS with a focus on simplicity and ease of use. It's known for its intuitive branching and user-friendly interface. While it's less common than Git, it can be a great choice for teams seeking a straightforward DVCS solution.
