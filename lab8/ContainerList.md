# Docker

```
DevOps Toolchain Category: Container Management
```

## Docker commands :

To Install Docker using pip, the prerequisite was to have python installed on the system.

1. List Containers:

To list docker containers we use the command "docker ps". This command will display a list of running containers along with their details, such as container ID, names, status, ports.

```sh
    docker ps
```

To see all containers (including stopped ones), we can use the `-a` flag. This will show both running and stopped containers.

```sh
    docker ps -a
```

2. Pull Latest Ubuntu Image:

This will show both running and stopped containers.

```sh
    docker pull ubuntu:latest
```

3. Run Container:

To run a new container based of our latest Ubuntu image, we can use "docker run". This will start a new container based on the latest Ubuntu image and provide an interactive shell inside the container.

```sh
   docker run -it ubuntu:latest /bin/bash
```

3. Remove Image:

To remove a Docker image from my local machine, we use the following command "docker rmi image_Id or image_name"

```sh
   docker rmi ubuntu:latest
```
