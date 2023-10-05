
# Docker and Docker Compose Installation

This document outlines the steps followed to install Docker and Docker Compose using pip, as well as the versions installed.

## Docker Installation

Install Docker using pip:
```
pip install docker
```
Now as we have downloaded docker python package we can Verify the installation and get the version number of Docker by running the follwoing code:
   ```
>>> python3
>>> import docker
>>> print(docker.__version__)
```
  
After running the previous code I got: `6.1.3`

## Docker Compose Installation

1. Install Docker Compose using pip by executing the following command:
    ```bash
    pip install docker-compose
    ```

2. Verify the installation and get the version number of Docker Compose by running:
    ```bash
    docker-compose --version
    ```

The installed Docker Compose version is: `docker-compose version 1.29.2, build unknown`

## Observations and Challenges

- The installation process was straightforward with pip handling the dependencies, It allowed to install docker Python library for interacting with Docker, not the Docker software itself. I also installed docker using  ```sudo snap install docker``` to install docker software itself.

