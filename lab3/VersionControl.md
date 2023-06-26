# Version Control Systems

> A system for managing state of the software

Make process of software development reliable and collaboritve.

## Using version control in a collaborative environment

Version control systems enable collaborative software development by
managing different states of source code, implementing rollbacks, commits,
different branches for different developers which could be merged into the
final version later.

## Different types of version control systems

### Centralized

A server serves as the main repository for all versions of the code.
It is suitable for small teams where communication is neccessary to prevent conflicts since users commit directly to the main branch.

Example: **SVN**

### Distributed

In such a systems, every developer's machine mirrors the whole codebase, including its complete version history.

Example: **GIT**

## Comparison

| Feature | Git | Mercurial |
| --- | --- | --- |
| Type | Distributed | Distributed |
| Popularity | Widely used | Less popular |
| Learning curve | Steep | Easier |
| Branching and merging | Powerful and flexible | Less powerful |
| Performance | Faster for large repositories | Slower for large repositories |
| Command line interface | Extensive and complex | Simple and intuitive |
| GUI tools | Available, but less user-friendly | More user-friendly |
| Hosting options | GitHub, GitLab, Bitbucket, etc. | Bitbucket, Kiln, etc. |
| Integration with other tools | Extensive | Limited |
| Community support | Large and active | Smaller and less active |
