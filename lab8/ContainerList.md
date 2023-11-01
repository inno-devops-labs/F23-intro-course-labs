# Introduction to DevOps Lab 8

## Task 1. Command to list the containers

To show the containers currently running on our machine, we can use command

```sh
docker ps
```

I usually use it with a flag '-q' because it is really useful to kill all the containers in one swipe with combination with docker kill. My output for the task is:

```sh
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

```

## Task 2. Pull the latest Ubuntu image

To pull the latest ubuntu image, we can use:

```sh
docker pull ubuntu:latest
```

We could also ommit the words: ':latest' in version, since it is default behaviour of Docker to pull the latest version of the image if it is not specified

## Task 3. Run Container

To run the container, we can use:

```sh
docker run ubuntu
```

Unspecified version semantically means latest, so I did not have to wait for it to download to my computer. We can also use command from **Task 1** to check if the image is running. Here is the output:

```sh
CONTAINER ID   IMAGE     COMMAND       CREATED          STATUS          PORTS     NAMES
4a9be9d3c319   ubuntu    "/bin/bash"   41 seconds ago   Up 41 seconds             unruffled_brahmagupta
```

## Task 4. Remove image

To remove image, we need to use:

```sh
docker rmi ubuntu
```

Firstly, however, we need to remove a running container. I used Docker Desktop to make it fast, so I managed to remove image. After that, Docker printed:

```
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
Deleted: sha256:256d88da41857db513b95b50ba9a9b28491b58c954e25477d5dad8abb465430b
```

