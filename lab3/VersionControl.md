# Task 1: Understanding Version Control Systems
---
- Version control system (VCS) is a software tool that tracks amd manages changes to source files.
- The main purpost of VCS is to provide a single reporitory for source code, so that multiple developers can collaborate, make changes to source code, and track the version history.
- Using a VCS tool is preferrable in collaborative environment since it greatly simplifies peer-reviewing, checking other collaborators' changes, and reduces the risk of errors and conflicts what merging new changes.
- There are two types of VCS: 
    1. Centralized; there is a single copy of a repository on a server. All commits go to this central copy, but when pulling files from there, user will never have a full local copy of the project.
    2. Distributed; each collaborator clones a copy of the repository locally and has the full project history. This approach allows more flixible offline work,
- The main advantage of Git is that it is faster and more efficient in coparison with other VCS, but it's more difficult to learn and use. Subversion is the easiest to use, but it has inefficient branching and tagging system. Mercurial is also fairly easy, but it can only track single upstream only and doesn't distinguish between local and remote heads. 