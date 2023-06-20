Definition of VCS: Version Control Systems (VCS) are software tools that allow developers to manage and track changes to code and files in collaborative environment.
Purpose: The tool allows different developers to effectively collaborate while working on the same project simultaneously by keeping track of their changes and organising versions of the code.

Benefits and advantages:
- Tracking History: VCS track history of changes made to the source code and the commiter of these changes. This allows to easily identify any modifications, find errors, and if necessary revert the 
changes. For example if developers are working on a project and there is a certain issue because of recent changes, the developers can easier find the commit that caused problems using history and fix it.
- Concurrent Work: Multiple developers can work on the same code simultaneously without conflicts. For example, two developers can develop features in two different feature branches, and VCS will help to 
merge the changes into the main branch and resolve the conflicts. 
- Code Branching: The developers can create different branches and experiment with code independently without affecting the work of fellow developers. It makes it easier to create and test new features. 

Different Types of VCS:
- Centralised: Central server stores the entire codebase and all history. The developers make changes to the server and the server handles conflicts resolutions, merging and updates. For example, 
Subversion (SVN) uses centralised model.
- Distributed: Each developer has a complete copy of codebase and history. Developers can work on code locally and make independent changes and then synchronise the changes with other repositories. For 
example, Git uses distributed model.
- Hybrid (federated): Combination of features of centralised and distributed models. A central repository with the whole codebase and history is maintained but developers can also create local copies to 
work offline. Changes made to local copies are synchronised with the central repository. One example of such system is Perforce, which allows developers to work offline and synchronise changes later. 
Hybrid VCS can be useful in scenarios where a centralized approach is preferred, but occasional disconnected work or branching is required.

Comparison of popular VCS:
- Git: a very popular distributed solution with good speed, flexibility and powerful branching and merges management. Currently it is the industry standard. Git is used by major companies and open-source 
projects worldwide, including Google, Microsoft, Atlassian.
- Subversion (SVN): based on centralised model, handles binary files well, still used in enterprises due to its simpler learning curve. For example, Apache and SourceForge use SVN.
- Mercurial: another distributed VCS still used by some organisation, although Git is still a more popular solution. Mercurial has a simpler learning curve and more intuitive and user-friendly interface 
according to the users. For example, Facebook historically uses Mercurial, as well as Unity and Mozilla.
- Perforce: is a hybrid VCS based on centralised model and also providing an ability to work offline with later synchronisation. Popular in game development, automotive industry and airforce. Used by 
Electronic Arts, NVIDIA, Ubisoft.

