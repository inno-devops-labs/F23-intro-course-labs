Team of 5 people are developing mobile application. 
- Developers merge all their commits directly into main branch. \
Solution: \
****Version control system, pull requests, restrict pushing to main branch:**** Merging to main branch must be available only after all checks are passed, reviewers shipped the code. Thus, unwanted/low-quality/broken code will not end up in the main branch

- Developers add new features, but this breaks the old ones and they spend a lot of time fixing the code. \
Solution: \
****Add Automated tests and checks:**** Pull request will should pass all available tests, a static analyzer, should build. This ensures that main branch is not corrupted and builds, there are no stupid syntactical errorsand that the old functionality is not broken.

- They are trying to make the app perfect, postponing releases and continuing to improve the app without a specific launch point. \
Solution: \
****Incremental releases:**** Make releases regularly, for example, every week. The main should always be ready for release, everything that turned out to be in the main branch is either completed or is under the feature flag. \
****Сontonious delivery:**** Automate releases, build the process so that the release can be done automatically. Thus, most of the problems with the release should be solved long before the release and smeared in time, rather than collapsing all together an hour before the release.

- Developers sometimes work on big features in separate branches. The development of each feature can take several weeks. When trying to change a feature, the developer is faced with a large number of conflicts and the release of merge is postponed indefinitely. \
Solution: \
****Introduce continious integration:**** Decompose the feature, commit often and little by little. This will make life easier for reviewers, they will not miss the faults on the review. The main brand will be up-to-date, other developers will be able to pull changes and resolve small conflicts every day. This will make life much easier for everyone.