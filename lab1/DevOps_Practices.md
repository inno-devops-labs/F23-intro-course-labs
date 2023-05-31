## Task 1: Research and Define DevOps Principles and Practices

The main principles of DevOps as per my opinion are the following:

1. Continuous improvement
    All your development processes should be imporved constantly. After you automated some process to some certain level there are still things that could be done better, for this partucular time your approach might be enough, but later on it should be improved to bring more benefits.

    Example: Create manually triggred pipeline with tests, then switch it to automaticly triggered.

2. Continuous testing
    Quality - this is what your customer concerns about. Since developers make a lot of changes to the code base it is a good approach to always test their changes to check wheter all the things are ok and work as expected.

    Example: Trigger unit-test for each commit

3. Automation of all processes
    This can decrease the amount of "hand" work done by developers, thus save the time and budget for your project and get rid of mistakes made by "hands"

    Example: Merge changes from one env to another with one button push in GitLab

4. Experience sharing
    For now we have lots of technologes and approaches how to implement and deploy our application. Dev, qa and devops have their own area to cover and during the communication they can help others to create the soultion which might ease the work of others.

    Example: DevOps might say to Auto qa how to better use env variables to more easily incorporate it later in the pipeline

5. Continuous monitoring
    To track what is happening with your project you can add monitoring dashboards in varios areas:
    CPU usage, test coverage, test results etc.

    Example: CPU usage dashboard might be used by support team.