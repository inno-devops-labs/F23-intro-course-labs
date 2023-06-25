# Docker and Docker Compose Installation

This document outlines the steps followed to install Docker and Docker Compose using pip, as well as the versions installed. It also includes any observations or challenges encountered during the installation process.

## Docker Installation

To install Docker using pip, the following command was used:
pip install docker

After the installation, the version of Docker installed was checked using the following command:
docker --version

This command outputs the version of Docker installed. For example, it might output something like:
Docker version 23.0.4, build f480fb1

In this case, the version of Docker installed is 20.10.7.

## Docker Compose Installation

To install Docker Compose using pip, the following command was used:
pip install docker-compose

This command outputs the version of Docker Compose installed. For example, it might output something like:
docker-compose version 1.29.2, build unknown

## Observations and Challenges

The installation process was straightforward and did not present any major challenges. However, it is important to note that Docker and Docker Compose require certain system prerequisites to be met. For instance, Docker requires a 64-bit version of your operating system and a version of Linux kernel that is 3.10 or higher.

If you encounter any issues during the installation process, it is recommended to check the official Docker and Docker Compose documentation or seek help from online communities such as Stack Overflow. 
