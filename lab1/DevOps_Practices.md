# Task 1

## What is DevOps
DevOps is a methodology that automates software assembly, configuration and deployment processes to solve problems between development and operation teams for improving and shortering development life cycle.

## Collaboration
Development and operations teams coalesce into a functional team that communicates, shares feedback, and collaborates throughout the entire development and deployment cycle. Development and operations teams merge into a single team that works across the entire application lifecycle. Team then will own an entire feature or project and deliver it together.

Example: While implementing new feature or a project, developers and operation managers meet and discuss the requirements implementation, and possible challenges (for example scaling, security, performance). Developers write code and perform automated tests, while the operations team reviews the changes, making sure they comply with the platform's infrastructure and scalability requirements. Developers and operations work together to monitor the performance of the new feature in production, reacting quickly to any potential issues or improvements.

Sometimes it may happen that developers will simultaneously be people who make releases, monitor metrics and perform other operational work. This is done through shifts, so that every week some developer is responsible for a release or other activity.

## Automation
Essential practice is to automate as much of the software development lifecycle as possible. Automation reduce human errors and increase team productivity, allow teams to achieve continuous improvement with short iteration times, quickly respond to customer feedback.

Automation includes:

### - ****Continuous Integration**** 
Developers should commit small chuncks of code to repository frequently. This practice lowers code-review time and time-to-production, makes development less risky.
Another important aspect is automated testing pipeline. After pull request to the master created, builds of the project are created to determine compatibility of new code with the existing code. 

Example: There is a paradigm called Trunk Based Development, in which there is only a main branch and the ability to create only one branch from it, which lives no more than two days. Pull requests should be very small. The code review should happen very quickly, within 10-15 minutes. Unfinished pieces of code turn into feature flags, and trunk is always ready for release. 
This approach saves time, money and reduces risks.

Example of automated pipeline: Before code will be merged, pull request should be checked for: Build, All Unit test, All UI tests, other tests (such as screenshot tests), static code checks, confilcts check, no issues should be open, sometimes PR requiers "OK" from QA. If all these conditions are met, the pull request can be automatically mereged.

### - ****Continuous Delivery****
All about making releases stably with the same defined peroidicity or as frequently as possible using automated approach. 

Example:There is a release every Friday in our team. The release attendant at 14:00 takes the branch away from the master, launches a release pipeline on it, which creates test builds, raises the version, does all sorts of checks and tests. The release attendant does not even need to resolve any conflicts and connect anything with his hands, everything has already been either done at the CI stage, or done automatically.
### - ****Continuous Monitoring****
Ensures the application runs without any issue and builds on the CI/CD concept.

Example: 
Monitoring systems monitor metrics and the performance of services and send alerts to those on duty in case of abnormal indicators or automatically perform measures such as disabling/increasing or decreasing resources, etc.

## Version Control
Version control paradigms such as git flow or tbd - something without what it is difficult to imagine working in a development team.
Helps developers work in separate branches, and then painlessly (or almost painlessly) combine their changes into a single version. 

## Incremental Releases
Changes are released in smaller, more manageable parts instead of one major update.
DevOps provide a large amount of inertia to keep the momentum going for the code to get it released to production even if it has updates, bug fixes or need some troubleshooting, the deployment cycle is very flexible.

Example:
Chat GPT released
Release 1: Main functionality is available. There are bugs, no premium subscription, load problems. But developers can already receive feedback at this stage, raise the popularity of the product, and test it in real conditions
Release 2: Some bugs fixed. Developers already have an idea of what the user wants and can adapt.
Release 3: Subscription added, New model added 
...


