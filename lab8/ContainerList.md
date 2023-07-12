# Introduction to DevOps Lab8
**Leonid Zelenskiy** <br>
**B21-CS-01** <br>
*l.zelenskiy@innopolis.university*

## List Containers:
**Command**: `docker container ls`

**Output**:
``` bash
CONTAINER ID   IMAGE              COMMAND                  CREATED        STATUS        PORTS                                       NAMES
6bfbe2ff352b   cocktail-server    "uvicorn cocktail.se…"   25 hours ago   Up 25 hours   0.0.0.0:7777->7777/tcp, :::7777->7777/tcp   cocktail-server-1
71940f3e6e50   cocktail-flutter   "python3 -m http.ser…"   25 hours ago   Up 25 hours   0.0.0.0:8888->8888/tcp, :::8888->8888/tcp   cocktail-flutter-1
```

## Pull Latest Ubuntu Image:
**Command**: `docker pull ubuntu:latest`

**Output**:
``` bash
latest: Pulling from library/ubuntu
3153aa388d02: Pull complete 
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

## Run Container:
**Command**: `docker run -d -i ubuntu`

**Result**:

``` bash
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS         PORTS     NAMES
923590a048e9   ubuntu    "/bin/bash"   6 seconds ago   Up 4 seconds             jolly_lamarr
```

## Remove Container:
**Command**: `docker stop jolly_lamarr && sudo docker rm jolly_lamarr`
