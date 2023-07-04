# Student Information
Name: Md Motasim Bhuiyan

Email: m.bhuiyan@innopolis.university

Group: BS21-CS-01

# Docker Installation
Apparently, `docker` cannot be installed with `pip` only. The engine needs to be downloaded first and the `pip` package gives python api interface only.

The installation procedure goes as follows- 
- Used the command`sudo apt install docker.io` (This is the debian maintained version and not the official one)
- Permitted installation procedure when prompted
- Used command `sudo usermod -aG docker $USER` to add current user to docker group
- Logged out and logged back in to apply changes
- Ran `docker run hello-world` to verify installation
- Ran `docker --version` to check version

Docker Version: 20.10.21, build 20.10.21-0ubuntu1~20.04.2

# Docker Composer Installation
This could be installed with `pip` only. The installation procedure goes as follows-
- Used command `pip3 install docker-compose`
- Ran `docker-compose --version` to check version

Docker Compose Version: 1.29.2, build unknown