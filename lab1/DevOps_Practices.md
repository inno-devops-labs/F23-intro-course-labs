# DevOps definition 
DevOps is a set of practices used to reduce the time between development stage and deployment and testing stage until the change is added to production, all that while ensuring the intended quality.

## Continuous Integration and Continuous Delivery (CI/CD):
Continuous integration involves merging all developers working copies to a shared repo daily and even several times per day. Continuous delivery is the ability to get changes of all types into production.

For example, when a developer commits changes to the code, those changes can be automatically tested and built into a new version of the software. If all tests pass, the new version can be automatically deployed to a staging environment for further testing, and if all goes well, it can be automatically deployed to production.

## Infrastructure as Code (IaC): 
Infrastructure as code is the process of managing and provisioning computer data centers through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools.

For instance, using tools like Docker, Kubernetes, or Terraform, you can write code that specifies the resources your application needs, such as databases, networking configurations, and virtual machines. Then, you can run this code to automatically create these resources in a cloud environment.

##  Continous Monitoring: 
Involves keeping track of the health and performance of your applications and infrastructure, and being able to understand the state of your system just by looking at the data it generates.

For example, tools like Prometheus or Grafana can be used to collect and visualize metrics from your applications and infrastructure, helping you to spot any potential problems before they impact your users.

## Automated Testing:
It involves leveraging automation frameworks and tools to create scripts that validate an application's functionality, thereby helping to produce software quickly and to the highest standards. This allows for high product velocity and enables developers to deliver more value to users faster.

## Automated Code Review:
A process where the code is automatically reviewed using a predefined set of rules to identify inefficient or suboptimal code allowing human reviewers to focus on higher-level code issues. The core purpose is to find bugs and potential vulnerabilities, ensuring that the code meets the standards of the company as fast as possible and using minimum human resources. 
