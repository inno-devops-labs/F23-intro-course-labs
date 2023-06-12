# Docker

**Description:**

Docker is an open lightweight container virtualization platform for the development, delivery and operation of applications. Docker is designed for faster deployment of your applications. With docker, you can separate your application from your infrastructure and encapsulate the application along with all its dependencies.

**Purpose and Benefits:**

Docker simplifies and automates application deployment using containerization. With Docker developer can distribute and delivery  containers to development and testing teams. Release containers on productions, both in servers, data centers or in the clouds. Also Docker is very useful in high-load applications.

**Key Features and Functionalities:**

Docker uses a client-server architecture. The Docker client communicates with the Docker daemon, which takes on the burden of creating, launching, distributing your containers. Both, the client and the server can run on the same system, you can connect the client to a remote docker daemon.

Docker have: 
- Images: read-only templates. Images are used to create containers. Docker makes it easy to create new images, update existing ones, or you can download images created by other people. Images are components of a docker build.

- Containers: The containers contain everything you need for the application to work. Each container is created from an image. Containers can be created, started, stopped, migrated, or deleted. Each container is isolated and is a secure platform for the application. Containers are a component of work.

- Registry: Docker registry stores images. There are public and private registries from which you can download or upload images. The public Docker registry is a Docker Hub. Images can be created by you or you can use images created by others. Registries are components of distribution.

**Use Cases and Examples:**

- We develop mobile application. In CI pipeline after commiting changes to pull request automatic checking tool can create docker image that will use curren branch to build application inside container and / or run unit and UI tests. 

- If we want to use microservices architecture in our project, we can deploy individual services as Docker containers.

