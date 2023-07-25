## Task 1: Container Management

```
~ ❯ docker ps -a                                                       12:49:42

CONTAINER ID   IMAGE              COMMAND                  CREATED         STATUS                      PORTS                      NAMES
4f53a4d26702   sonarqube:latest   "/opt/sonarqube/dock…"   3 months ago    Exited (255) 2 weeks ago    0.0.0.0:9000->9000/tcp     sonarqube
5e1453004f07   mongo:latest       "docker-entrypoint.s…"   14 months ago   Exited (255) 8 months ago   0.0.0.0:27017->27017/tcp   backend-mongo-1

```

```
~ ❯ docker pull ubuntu:latest                                          12:50:07
latest: Pulling from library/ubuntu
5af00eab9784: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

```
~ ❯ docker run -it ubuntu /bin/bash                                11s 12:51:23
root@1e80cc59e31b:/#
```

```
~ ❯ docker ps -a                                                       12:53:11

CONTAINER ID   IMAGE              COMMAND                  CREATED          STATUS                      PORTS                      NAMES
1e80cc59e31b   ubuntu             "/bin/bash"              42 seconds ago   Up 42 seconds                                          recursing_austin
4f53a4d26702   sonarqube:latest   "/opt/sonarqube/dock…"   3 months ago     Exited (255) 2 weeks ago    0.0.0.0:9000->9000/tcp     sonarqube
5e1453004f07   mongo:latest       "docker-entrypoint.s…"   14 months ago    Exited (255) 8 months ago   0.0.0.0:27017->27017/tcp   backend-mongo-1
~ ❯ docker stop 1e80cc59e31b                                           12:53:15
1e80cc59e31b


~ ❯ docker rm 1e80cc59e31b                                             12:54:38
1e80cc59e31b

~ ❯ docker images                                                      12:54:21
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
ubuntu       latest    37f74891464b   3 weeks ago     69.2MB
sonarqube    latest    8f9f4cb9fe38   3 months ago    679MB
mongo        latest    1b7803cb64be   15 months ago   665MB

~ ❯ docker rmi 37f74891464b                                            12:54:55
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Deleted: sha256:37f74891464b2067aacbde60d9e2888e002af047a0d5dfc0b06b701928e0b473
Deleted: sha256:c5ca84f245d30117a9a2720cb4297cedf3642816471d4d699f4d77e39e13a39c
```