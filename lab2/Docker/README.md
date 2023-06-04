# Task 1

## Tool name and description

   Docker is an open-source platform that allows you to automate the deployment of your system.
   It provides a way to package an application and its dependencies into a lightweight standardized unit called a container.

## Purpose and benefits

   The main purpose - to ease the deployment process and keep all the dependencies in the isolated environment.

## Key features

- Containerization
- Scalability and Elasticity
- Isolation
- Infrastructure as Code

## Use cases

   In my project i used docker in the following scenario:
   I created the auto test framewrok with set of test cases. And then added docker file with all dependecies inside it.
   Using that container test could be run on any machine (my local) even in the GitLab pipeline. And it is not matter
   what OS this machine has. Each time when you run the tests in the pipeline it creates docker container with source
   code and needed packages, run all the test cases inside it and store the results of execution.