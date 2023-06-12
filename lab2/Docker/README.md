# Docker

## Desctiption

Docker is an open source platform, allowing conterize any kind of environment using single excecutable making possible to boot multiple containers with possible independent containers centralizing managment of these containers in single place.

## Purpose and benefits in the DevOps context

Docker allows to collect packages and source code into a single container with all the reuired tools and variables required to run corresponding environment. Having only this in hand allows DevOps to manage manipulations of multiple containers from a single place.
Next Docker reduce the time if the environment should be rebooted since docker containers commonly more lightweight than the most common VM are.
Docker containers support isolation property, since within the container owner are free to set any verison what is preforable within the borders of developing application. Environments contained within the containers are completely self-contained, so the environment will be absolutely the same despite the fact what OS runs the container.

## Key features and functionalities

1. Docker Hub
   Commonly used resource of storing and hosting images, where everyone is free to download or uplaod images containing specific environments within.
2. Docker File (Docker-compose.yml)
   A file, containing variables and set of instructions how to build a specific image with respect to predefined variables.
3. Docker Image
   Self-contained and isolated executable package which can be used within the container. An image is a binary containing everythin nneed de to run an application, counting any necessary configurations and sources that are required to perform the installation and work.
4. Networking
   Docker containers support isolated integrated networking system making it possible to cooperate different services within virtual network system specifing restrictions and limitations, of which containers can use the network and how.
5. Docker daemon
   Is a service, serving the central point of the Docker implementation, daemon itself can be compared as an sub operating system s.a. Windows, macOs and Linux systems.
6. Scalability
   Depends on your demand it is possible to break down application into multiple containers, which will not require significant amount of time to be booted and connected together since they are lightweight.

## Use cases and examples

1. Docker perfectly fits in solutions when monolith application should be rearranged into microservices architecture. Provided above scalability benefit explains the benefits of using the Docker in such case.
2. Having in mind the same case when DevOps has microservices architecture he should monitor the performance of multiple services, having docker in hand containers monitoring is relativelier easier than doing everything manually. Moreover config files allowing you to set up different variables and instructions how specific services should goes under.
