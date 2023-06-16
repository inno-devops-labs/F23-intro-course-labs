## DevOps Core Principles

### Collaboration
Development and operations teams coalesce into a functional team that communicates, shares feedback, and collaborates throughout the entire development and deployment cycle. Often, this means development and operations teams merge into a single team that works across the entire application lifecycle.

### DevOps Pipeline
- Develop - each feature is divided in small modules and distributed among developers.
- Build - the team compiles the code and checks for errors if any
- Test - Ops team runs several tests to ensure the new code written by the team works properly
- Deploy - during this phase it must be ensured that interface modules is covered with test cases
- Production - during this phase the product is staged for users

### Automation
An essential practice of DevOps is to automate as much of the software development lifecycle as possible. This gives developers more time to write code and develop new features.
Automation is a key element of a CI/CD pipeline and helps to reduce human errors and increase team productivity.

### Continious Monitoring
Continuous Monitoring ensures the application runs without any issue and builds on the CI/CD concept. DevOps keep an eye through monitoring technologies and techniques to ensure application is behaving adequately.
Right from logs, apps, systems to infrastructure, DevOps team monitor and in case of any issue they revert it back to previous stage and team gets enough time to resolve the issue without hassles to customer.

### Version Control
Most of the version control systems allow developers to create branches of the original project and let them modify without affecting others’ work. Typically, developers write their code on their respective branch of the same project, submit code updates, and run all the automated tests for validation.
Before merging it with the master branch, a new build is generated to ensure code is compatible with existing code. If everything goes smoothly, it gets merged in the master branch and moved from deployment to production.
