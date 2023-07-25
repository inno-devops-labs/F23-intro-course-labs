## List containers

Command:
```shell
docker ps -a
```

Result:
```shell
CONTAINER ID   IMAGE                  COMMAND               CREATED          STATUS          PORTS                                              NAMES
ce411507fb71   playgroundserver:dev   "tail -f /dev/null"   13 seconds ago   Up 10 seconds   0.0.0.0:64966->8080/tcp, 0.0.0.0:64967->8081/tcp   Playground.Server_1
```

## Pull Latest Ubuntu Image

Command:
```shell
docker pull ubuntu:latest
```

Result:
```shell
latest: Pulling from library/ubuntu
3153aa388d02: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

## Run Container

Command:
```shell
docker run -it ubuntu
```

Result:
```shell
root@b359e638b767:/#
```

As the result we obtain commandline input.

We can use ``docker inspect`` command to obtain all the details about the specified container. For example:

```shell
docker inspect b359e638b7671632095802ee79e4c60408f5e997f89f4198a34951673525d974
```

The result will be JSON-formatted.

For specific format of response we can use the next one:

```shell
docker inspect --format='{{.Name}}: {{.State.Status}}' b359e638b7671632095802ee79e4c60408f5e997f89f4198a34951673525d974
```

Result:
```shel
mystifying_banach: running
```

## Remove Image

1. Firstly, we should stop container.

Command:
```shell
docker stop b359e638b7671632095802ee79e4c60408f5e997f89f4198a34951673525d974
```

2. Then remove container.

Command:
```shell
docker rm b359e638b7671632095802ee79e4c60408f5e997f89f4198a34951673525d974
```

3. Then remove image.

Command:
```shell
docker rmi ubuntu
```

Result:
```shell
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Deleted: sha256:5a81c4b8502e4979e75bd8f91343b95b0d695ab67f241dbed0d1530a35bde1eb
Deleted: sha256:59c56aee1fb4dbaeb334aef06088b49902105d1ea0c15a9e5a2a9ce560fa4c5d
```