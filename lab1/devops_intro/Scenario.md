## Task 2: Apply DevOps Practices in a Scenario

1. Challenges.
Software team gets a lot of new bugs after making the changes in the repository and code is not formatted well. Each developer write the code in his own way.

2. What DevOps practice to apply.
    1. Continuous Testing.
        To keep the quality level of the code team might make the trigger for unit tests for each merge request.
        This prevents merging the changes which do not pass this type of testing and wrong code will not be merged to the branch.

    2. Automation of all processes.
        To keep the code formatting we can add auto formatting before the commit in the local branch and check the code formatting before pushing the branch to remote repository

    3. Continuous monitoring.
        To keep the quality level and decide should we merge changes further we can use dashobards with last test resulst and code coverage. Since this metrics are visally easy to understand even non-technical employees can use it.