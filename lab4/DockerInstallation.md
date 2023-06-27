# Docker installation
Here I will install operate in Windows Subsystem for Linux on my laptop.
## Step 1. Install Docker
 - I have checked if `pip` available on the vm ![alt text][pipVer]
 - Running `pip install docker` I realized docker already available 
 - Running `docker -v` I get version of docker ![alt text][dockerVer]
 - `docker` version is **Docker version 20.10.12, build 20.10.12-0ubuntu2~20.04.1**
## Step 2. Install Docker Compose
 - Running `pip install docker-compose` I realized docker already available
 - Running `docker-compose -v` I get version of docker-compose ![alt text][docker-composeVer]
 - `docker-compose` version is **docker-compose version 1.25.0, build unknown, build unknown**
## Observations or challenges
 - if you already installed docker or docker-compose, you can update their version as well using `pip install docker-compose **upgrade`


[pipVer]: /lab4/pip-V.png "pip version"
[dockerVer]: /lab4/checkDockerVersion.png "docker version"
[docker-composeVer]: /lab4/docker-composeVer.png "docker-compose version"