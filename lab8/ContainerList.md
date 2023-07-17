# Student Information
Name: Md Motasim Bhuiyan

Group: B21-CS-01

Email: m.bhuiyan@innopolis.university

# Docker
## List Containers
`docker ps` command is used to check for containers. It shows the running containers. To check for all the containers, `docker ps -a` command is used. The output of the command is shown below.
```bash
CONTAINER ID   IMAGE                       COMMAND                  CREATED          STATUS                        PORTS                  NAMES
a07d9837230b   grafana/grafana-oss         "/run.sh"                50 seconds ago   Created                                              grafana
bad0c3c4daef   prom/prometheus:latest      "/bin/prometheus --c…"   51 seconds ago   Created                                              prometheus
1487e23efb36   nginx                       "/docker-entrypoint.…"   51 seconds ago   Created                                              petro-nginx-1
aee23eb36b11   backend                     "/bin/sh -c 'flask i…"   52 seconds ago   Created                                              petro-backend_3-1
5b414a9c0c81   backend                     "/bin/sh -c 'flask i…"   52 seconds ago   Created                                              petro-backend_2-1
70d1ef048e44   backend                     "/bin/sh -c 'flask i…"   52 seconds ago   Created                                              petro-backend_1-1
393bb4ba7a0f   prom/alertmanager:v0.23.0   "/bin/alertmanager -…"   55 seconds ago   Exited (0) 26 seconds ago                            petro-alertmanager-1
53f8c0dab17f   frontend                    "docker-entrypoint.s…"   55 seconds ago   Exited (0) 26 seconds ago                            petro-frontend-1
f9a3266cc467   postgres:15.3-alpine        "docker-entrypoint.s…"   55 seconds ago   Exited (137) 17 seconds ago                          petro-postgresql-1
795c98a14e01   021283c8eb95                "/docker-entrypoint.…"   2 hours ago      Exited (255) 3 minutes ago    0.0.0.0:8080->80/tcp   tutorial
```

## Pull Latest Ubuntu Image
`docker pull` command is used to pull docker images.
```bash
docker pull ubuntu:latest
```

## Running Ubuntu
`docker run` command is used to run a container. The command is used as follows:

```bash
docker run -it --rm ubuntu:latest bash
```
This would run the ubuntu image as a container and give a bash terminal. The `--rm` flag is used to remove the container after exiting the container. The `-it` flag is used to run the container in interactive mode.

Installing and running `neofetch` in the container would show OS information.
![docker image](https://i.postimg.cc/HLKhq0gX/image.png)

## Remove Image
`docker rmi` command is used to remove images. The command is used as follows:
```bash
$ docker rmi ubuntu:latest

Untagged: ubuntu:latest
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Deleted: sha256:5a81c4b8502e4979e75bd8f91343b95b0d695ab67f241dbed0d1530a35bde1eb
Deleted: sha256:59c56aee1fb4dbaeb334aef06088b49902105d1ea0c15a9e5a2a9ce560fa4c5d
```