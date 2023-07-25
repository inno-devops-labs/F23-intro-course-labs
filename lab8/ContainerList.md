# Task 1: Container Management

### List Containers:
To list the Docker containers present in your environment, you can use the below command.

```
docker ps
```

Output:
```
CONTAINER ID   IMAGE                  COMMAND       CREATED         STATUS         PORTS   NAMES
testContai   nginx:latest           "nginx -g..."  2 minutes ago   Up 2 minutes          web_server
```

### Pull Latest Ubuntu Image:
To pull the latest Ubuntu image from the Docker registry, you can use the `docker pull` command with the `ubuntu` tag, which will get the latest available version.

```
docker pull ubuntu:latest
```

Output:
```
latest: Pulling from library/ubuntu 
3153aa388d02: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

### Run Container:
To run a container using the Ubuntu image you just pulled, you can use the below command.

```
docker run -it --name my_ubuntu_container ubuntu:latest 
```

### Remove Image:
To remove the Ubuntu image you pulled earlier, you can use the below command.

```
docker rmi ubuntu:latest
```

Outcome:
```
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Deleted: sha256:5a81c4b8502e4979e75bd8f91343b95b0d695ab67f241dbed0d1530a35bde1eb
Deleted: sha256:59c56aee1fb4dbaeb334aef06088b49902105d1ea0c15a9e5a2a9ce560fa4c5d
```
