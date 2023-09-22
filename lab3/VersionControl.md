### Definition
Version control system (VCS) is an application which traces each version of source files. It's main purpose it to be able to return to any version at any point in time.

### Benefits in collaborative enviroment
Application of version control system in a large team allows to keep control of different development branches and effectively introduce them into the solution. Various people can develop their part of code and apply those changes to the main branch. In case those changes are not satisfactory, we may retract the changes in the efficient manner.

### Different types of VCS
There are two main types of VCS:
#### 1. Centralized VCS
Centralized VCS allows to working groups to introduce their changes directly to the solution. This is efficient if the whole repository is relevant to the whole team and it is crucial to have constant updates.
#### 2. Distributed VCS
Distributed VCS provides local copies of repository to each user. Thus, the groups are isolated from each other which reduces the risks of uncontrolled mistakes caused by pushed changes. Users may pull the changes from the main repository and test their changes independendly before introducing to the origin. Additionally this solution does not require constant connection to the origin.

### Comparison of different VCS
#### 1. Git
Git is a distributed VCS which is pointed out as extremely agile. It allows to create various branches for independent development and publish those changes into the main branch. Worth noting that Git saves the whole files in binary format after commited changes generating duplicate information. The diff between versions calculated dynamically.

#### 2. Subverion
Apache subversion is a centrilized VCS. Unusual feature is a branching system which essentially is creation of a separate folder which then get intorduced into the trunk. Overall it is noted that Subversion lacks flexebility but more easy to use compared to the other VCSs.

#### 3. Mercurial
Mercurial is a distributed VCS. Key feature of the system is incremental storing of the changes having only delta data. Additionally, all branches of this VCS are globally known and unique unlike the git system where branches can have any names in local repositories
