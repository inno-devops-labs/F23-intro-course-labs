# Version Control Systems

Version Control System is a place where you can store code (and other data types),
control versions of work iterations, and collaborate with others

## Collaboration

VCS helps to avoid problems with erasing iterations of teammates, controlling releases of project

## Kinds of VCS

1. Local

    A local version control system is a local database located on your local computer, in which every file change is stored as a patch.

    Pros: Simple

    Cons: 
    - collaborating with other developers or a team is very hard or nearly impossible
    - its local, so local problems can affect to vcs

2. Centralized

    A centralized version control system has a single server that contains all the file versions. This enables multiple clients to simultaneously access files on the server, pull them to their local computer or push them onto the server from their local computer.

    Cons:
    - Everything is stored on the centralized server. If something were to happen to that server, nobody can save their versioned changes, pull files or collaborate at all


3. Distributed
    
    With distributed version control systems, clients don’t just check out the latest snapshot of the files from the server, they fully mirror the repository, including its full history. Thus, everyone collaborating on a project owns a local copy of the whole project, i.e. owns their own local database with their own complete history.

## Comparison of popular VCS

||| Concurrency model ||
|-----------|-------------|---------------|------|
| SVN       | Centralized | Merge or lock | Free |
| Mercurian | Distributed | Merge         | Free |
| Git       | Distributed | Merge         | Free |
