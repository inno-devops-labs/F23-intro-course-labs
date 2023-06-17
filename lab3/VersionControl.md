# Version control systems (VCS)

## Defenition

Version control systems - is a software or a collection of ready to use instruments allowing to a group of developer to contribute their work into a common project. Such systems supporting different level of management over code sources trhough over the time.

## Benefits and advantages of using

- Over a time it is possible to see the list of all changes trhough the code source, so you will be able to track some specific changes or to get the state of a snippet for a concrete period of time.
- Having in arms VCS it is possible to split team performance into different parts of an application with an opportunity to be more independent in terms of common contributions into the source, since each team might perform with a specific state of corresponding code segment. Morever through the time it is possible to merge the changes into a common source to iterate the version of an application.

## Different types overview

| Centralized                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |                                                                                    Distributed                                                                                     |
| ---------------------------------------------------------------------------------------------: |
| Server - Client approach. Where server is a master repository, containing the entire project history and managing restrictions of an access for a particular user. After pulling code and commiting some changes your version becomes new version, which should be uploaded to the master repository. So the basic workflow involves in the centralized source control is getting the latest version of the code from a central repository that will contain other people’s code as well, making your own changes in the code, and then committing or merging those changes into the central repository. | Unlike the centralized systems it is possible to have multiple instances of local versions containing on different machines and the main repository containing on the server side. |

## Comparison of popular version control systems

Certainly! Here's the comparison table rewritten in Markdown format:
Git
: distributed version control system the one which the most heard about in my opinion. Widely used throughout the world by both open-source and enterprise products. Git's conflict resolution requires manual intervention. It provides full offline capability, allowing users to work offline and sync changes later.

Subversion
: is a centralized version control system. Conflict resolution in Subversion is also manual and explicit. Subversion provides fewer flexible branching and merging options compared to other versions systems.

Mercurial
: distributed version control system that focuses on simplicity and ease of use. It has automatic conflict resolution, which simplifies the process.
| Criteria | Git | Subversion (SVN) | Mercurial (Hg) |
|--------------------|-------------------------------------|-----------------------------------|------------------------------------|
| Type | Distributed | Centralized | Distributed |
| Learning Curve | Moderate | Moderate | Easy |
| Popularity | Widely used | Widely used | Less popular |
| Performance | Fast | Slower | Fast |
| Branching and Merging | Efficient and easy to use | Supportive, but less flexible | Efficient and easy to use |
| Conflict Resolution | Manual and explicit | Manual and explicit | Automatic and explicit |
| Offline Usage | Full offline capability | Partial offline capability | Full offline capability |
| Repository Size | Small repository size | Large repository size | Small repository size |
| Integration | Strong integration with IDEs, tools | Good integration with IDEs, tools | Good integration with IDEs, tools |
| Scalability | Excellent | Good | Excellent |
| Community Support | Large and active community | Active community | Active community |
