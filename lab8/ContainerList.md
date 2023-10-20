# Container Management

## List Containers:

1. I listed all Docker containers, including those not running, using the command `docker ps -a`.

There is an output:
```
CONTAINER ID   IMAGE         COMMAND    CREATED       STATUS                   PORTS     NAMES
5b2ac2f4e77a   hello-world   "/hello"   10 days ago   Exited (0) 10 days ago             funny_ritchie
```

2. I pulled the latest Ubuntu image from the Docker registry using the command `docker pull ubuntu:latest`

```
latest: Pulling from library/ubuntu
Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Status: Image is up to date for ubuntu:latest
docker.io/library/ubuntu:latest

```

4. I ran a container using the Ubuntu image I pulled by executing the command `docker run -d ubuntu:latest`

```
user@user-HP-ProBook-430-G7:~/docker$ sudo docker run -d ubuntu:latest
395f057a69f1189d2453bd13e9591df55e4d0cfd0502bbdc7be9b0694e2e2f15

user@user-HP-ProBook-430-G7:~/docker$ sudo docker ps -a
CONTAINER ID   IMAGE           COMMAND       CREATED         STATUS                     PORTS     NAMES
395f057a69f1   ubuntu:latest   "/bin/bash"   3 seconds ago   Exited (0) 2 seconds ago             blissful_antonelli

```
5. I stop docker container using command `sudo docker rm 395f057a69f1`

6. I checked all existing images with `docker images`

```
REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
ubuntu        latest    e4c58958181a   2 weeks ago    77.8MB
hello-world   latest    9c7a54a9a43c   5 months ago   13.3kB
```

7. I attempted to remove the Ubuntu image I pulled earlier using the command `docker rmi e4c58958181a`
8. I check existing images `docker images`

```
REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
hello-world   latest    9c7a54a9a43c   5 months ago   13.3kB
```
