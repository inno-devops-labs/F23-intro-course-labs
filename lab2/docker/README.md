# Docker

```
DevOps Toolchain Category: Container Management
```

## What is Docker

Docker is a free and open source containeriszation platform. It allows developers and teams to package programs into "Containers". A container is an isolated environment that allows to run a application based on certain configurations. Containers combines application source code with OS librairies and dependencies needed to run that code in any environment.

## The purpose of using the Docker

The main purpose of Docker is to ensure portability of applications throughout the development lifecycle. With docker applications can be transported into containers which provide all necessary librairies and dependencies for the application to be built and ran on any environment(desktop & cloud).

## Some benefits of using Docker

### Profitability :

Docker offers free plan for small projects and is backed up by an open source community. For this reason it is trusted and cost effective for most small companies.

### Portability Across Machines :

Docker allows developers to package applications along with their dependencies into containers. This ensures that the application can run on any machine running docker. This provides consistency and avoids compatibility issues.

### Simplified Deployment:

Docker makes the deployment process much simpler and more streamlined, as you only need to deploy the container to any Docker-compatible environment.

### Scalability :

Docker allows for easy scalability by enabling the deployment and management of multiple containers across different hosts. It used system resources efficiently as containers share the host's operating system kernel, resulting in higher density and optimal resource utilization.
###Continuous Integration and Delivery (CI/CD):
Docker facilitates the implementation of CI/CD pipelines by providing consistent environments for testing and deployment. Containers can be easily integrated into CI/CD workflows, enabling faster and more reliable software delivery.

## Key functionalities and features of Docker

1. Containerization: Docker utilizes containerization technology, allowing you to package applications and their dependencies into lightweight, isolated containers.
2. Portability: Docker containers can run on any system that supports Docker.
3. Image-based Packaging: Docker uses a layered image-based approach for packaging applications and their dependencies. Images can be shared, reused, and versioned, making it easier to distribute and deploy applications consistently.
4. Registry : Docker registry provides a portal and Hub for developers to push their docker images,making it accessible to others.
5. Orchestration: Docker provides built-in orchestration tools like Docker Swarm and integration with Kubernetes. These tools help manage and scale containerized applications across multiple hosts, enabling automated deployment, load balancing, and service discovery.
6. Security: Docker incorporates several security features, such as isolation between containers, resource constraints, and secure image signing. It also provides options for securing the container runtime environment, network, and storage.

## Real word usecase example

Let's imagine a team of 3 developers that are building a softwar and each developer having a different computer specifications and operating system from the other (macOs, Windows and Linux). For consistency, sharing, building and running the source code all developers can make use of docker. To achieve this, of of them would create a docker container, tag it, push it to a registry, and allow others to pull and run the container on their own machines. The main step involve:

- Downloading and Installing docker on their PC
- Build a docker Image, by creating a dockerfile with instructions on how to build the image.
- Tag the image by assigning a docker tag (label versioning) to the image
- Push the image to a docker Registry
- Other developers would have to pull and run the docker image to launch the application.
