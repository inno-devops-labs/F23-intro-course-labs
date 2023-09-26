# Definition
__Version controll system__ is a type of software that allows developers to save code in a safe manner with all the history of changes represented as a graph of distinct __commits__;
it also helps for collaborative work providing ability to work on different __branches__ at the same time completing distinct tasks that could be __merged__ in future.
# Benefits for collaborative development
  * Ability to work in parallel at different branches (it is also possible to work on a same branch, but some conflicts may occur)
  * Conflict resolving during merging (some of conflicts could be resolved automatically, sometimes developer is being asked to resolve it himself)
  * Security and code-review - code contribution in a big project is commonly performed in a form of __pull-request__. This request is being reviewed by the owner of project before commiting
making contributing more safe as the code will pass multiple check stages.
# Version controll systems overview
  * __Local Version Controll System__ - all the changes are stored at a local database and only local files are being tracked. This version controll realization is not safe, because fall of
local database could lead to project lose, collaborative work is almost impossible in this scenario, and, finally, whetever happens to local machine (it will break, be lost, etc.) all the code will be lost.
  * __Centralized Version Control System__ - in this case the database containing all the file changes stored on distributed server, allowing collaborative work (ones having access could
__pull__ the files to their own local machine or __push__ back to server. But this realization is still not reliable, because it all depends on one server. In cases of server being shut down
it's impossible to push or pull or to perform any other operations.
  * __Distributed Version Control System__ - the most resilient and complete type of VCS - every pull here is not just a shapshot of files on server, but a repository will full history of it's changes.
In that case, even if the server dies, having at least one user with this copy of repository, it's available to recreate it with all the legacy.
# Comparison of _Git_ and _Mercurial_
Similarities:
  * Files revisions are associated with their checksums.
  * History is represented in a form of graph.
Differences:
  * __Git__ supports the staging area - __Mercurial__ has no staging area before _commit_.
  * __Git__ became industrial standart and it's more convenient to use it nowadays.
  * __Git__ is slightly slower than __Mercurial__
  * __Git__ offer a better branching, than __Mercurial__
