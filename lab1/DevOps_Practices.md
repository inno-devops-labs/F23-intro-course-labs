

## Task 1: DevOps Principles and Practices

### Continuous Integration (CI): 

Continuous Integration is the practice of frequently merging code changes into a central repository which is automatically tested against a set of checks configured by devops engineers like code formatting, type hinting (in Python), running unittests. This helps with making code standarized across developers and avoid conflicts in codebase with faster feedback loops

**Example:**  A team is works on a project. Developers are working on different (or same) parts/features of the code. They can use some CI pipeline such as gitlab CI that automatically checks the code against set of rules defined in CI whenever a dev pushes code. The dev is notified of any issue via email if the pipeline fails and avoids pushing inconcisttent code.

### Continuous Delivery (CD):

CD pipeline helps with automation of the release process. This helps with reliable deployments. This helps standardize the process for releasing software builds with minimal or no manual intervention. 

**Example:**   Take the same example. After the CI has passed, the code needs to be deployed on servers to be tested and then moved to production. CD takes care of the automatic code deployment. CD also runs some integration and end-to-end tests to ensure that no bugs get deployed in staging and consequently in production.

### Infrastructure as Code (IaC):

Infrastructure as Code involves managing and provisioning infrastructure resources using code and configuration files. It enables automating large deployments as i understand. The configurations of the deployments are standardized and can be reproduced anywhere.

**Example:**   Terraform can be used to achieve this. A team can write configuration  files for terraform pipeline and can be pushed anywhere.

