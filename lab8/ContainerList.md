The "$" symbols have been removed to avoid formatting conflicts*


### 1. List Containers:
<b>Command:</b> sudo docker container ls -a 

<b>Output:</b> 
``` 
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
``` 

### 2. Pull Latest Ubuntu Image:
<b>Command:</b> sudo docker pull ubuntu:22.04

<b>Output:</b> 
``` 
22.04: Pulling from library/ubuntu
37aaf24cf781: Pull complete 
Digest: sha256:9b8dec3bf938bc80fbe758d856e96fdfab5f56c39d44b0cff351e847bb1b01ea
Status: Downloaded newer image for ubuntu:22.04
docker.io/library/ubuntu:22.04
``` 

### 3. Run Container:
<b>Command:</b> sudo docker run -ti ubuntu /bin/bash </br>

<b>Description:</b> This command tells Docker to run the Docker Ubuntu container in an interactive terminal mode (-ti). The /bin/bash argument is a way of telling the container to run the Bash shell terminal.

<b>Output:</b> 
The shell starts as a root user and the terminal is similar to what you get on a typical Linux system.
``` 
root@55689e692a9d:/# 
``` 
Also now we can get a list of running containers using the command from the first paragraph:
``` 
sudo docker container ls 
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS         PORTS     NAMES
55689e692a9d   ubuntu    "/bin/bash"   3 minutes ago   Up 3 minutes             xenodochial_merkle
``` 

### 4. Remove Image:
<b>Commands:</b><br>
docker rm [CONTAINER ID] <br>
<b>Description:</b> Before removing container we have to stop it.

<b>Output:</b> 
``` 
amir@PC:~ sudo docker rm 55689e692a9d
Error response from daemon: You cannot remove a running container 55689e692a9d9637ba59fa8786a836ad1b00142924b2321054d90a7d2cf9051f. Stop the container before attempting removal or force remove
amir@PC:~ sudo docker stop 55689e692a9d 
55689e692a9d
amir@PC:~ sudo docker rm 55689e692a9d 
55689e692a9d
amir@PC:~ sudo docker container ls
CONTAINER ID   IMAGE     COMMAND       CREATED          STATUS          PORTS     NAMES
amir@PC:~
``` 
