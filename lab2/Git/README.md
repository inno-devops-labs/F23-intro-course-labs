### 1. Description
**Git** is a version control system which allows to trace and store any changes in the repository.
Team can retract to any point of development process without risks of loosing any version of the repository. It also can isolate someones' work-in-progress by utilizing different branches in Git.

### 2. Use cases
Let's say we have John who is developing the backend part of web-site and Martin who implements frontend part. For testing purposes Martin relies on John's backend. One day John have pushed new version of backend which became incompatible with Martin's configuration. Hopefully, John have been doing it on his own branch and Martin can begin to configuring his frontend at any point by rebasing to the John's commit.
