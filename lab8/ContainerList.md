# Docker Container Management

## 1. List Containers

- Command: `docker ps -a`
- Output:

```
> docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
I don't have any containers yet

## 2. Pull Latest Ubuntu Image

- Command: `docker pull ubuntu:latest`
- Output:

```sh
> docker pull ubuntu:latest
latest: Pulling from library/ubuntu
aece8493d397: Pull complete
Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview ubuntu:latest
```

## 3. Run Container

- Command: `docker run -it --name my_container ubuntu:latest`
- Output:

```sh
> docker run -it --name my_container ubuntu:latest
root@99f3703410e8:/# exit
```
- Explanation: The `docker run` command creates a new container instance named `my_container` from a given image. The `-it` flag attaches an interactive terminal session.

- Additional Command: `docker inspect my_container`
- Additional Output:

```sh
[
    {
        "Id": "99f3703410e8240c2ae8f7d7e233a6ff8afd64319ec5720ea8c2f046ed16228a",
        "Created": "2023-11-01T10:02:21.489302225Z",
        "Path": "/bin/bash",
        "Args": [],
        "State": {
            "Status": "exited",
            "Running": false,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 0,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2023-11-01T10:02:21.896478766Z",
            "FinishedAt": "2023-11-01T10:02:28.538992782Z"
        },
        ...
```

- Explanation: The `docker inspect` command provides detailed information about a specific container, such as its configuration, state, network settings, and more. This command will help you to understand the internal details of the container you just created.

## 4. Remove Image

After running a container using the Ubuntu image, you may attempt to remove the image from your local Docker environment.

- Command: `docker rmi ubuntu:latest`
- Expected Output:

```sh
Error response from daemon: conflict: unable to remove repository reference "ubuntu:latest" (must force) - container 1b5ef255a016 is using its referenced image e4c58958181a
```

- Explanation: The `docker rmi` command is used to remove one or more Docker images. However, if an image is being used by a running container, Docker will prevent you from removing the image to avoid breaking the container. The error message indicates that the image cannot be removed because it is in use by a container.

To remove the image, you will first need to stop and remove the container that is using the image:

- Commands:

```sh
docker stop my_container
docker rm my_container
docker rmi ubuntu:latest
```

- Output:

```sh
> docker stop my_container
my_container
> docker rm my_container
my_container
> docker rmi ubuntu:latest
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
Deleted: sha256:256d88da41857db513b95b50ba9a9b28491b58c954e25477d5dad8abb465430b
```

- Explanation: The `docker stop` command stops the running container. The `docker rm` command removes the container from your local Docker environment. After stopping and removing the container, you can then use the `docker rmi` command to remove the image.
