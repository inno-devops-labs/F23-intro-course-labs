# Containers Lab - Docker

## Task 1: Container Management

1. List Containers:
   ```
   docker ps -a
   > CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
   ```
   No containers are present in my current evnironment.

2. Pull Latest Ubuntu Image:
   ```
   docker pull ubuntu:latest
   > latest: Pulling from library/ubuntu
   > 5af00eab9784: Pull complete
   > Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
   > Status: Downloaded newer image for ubuntu:latest
   > docker.io/library/ubuntu:latest
   ```

3. Run Container:
   I runned container in interractive mode end printed "Hello, world!" into terminal. Then exited the container.
   ```
   docker run -it ubuntu /bin/bash
   root@519be52d2989:/# echo "Hello, world!"
   > Hello, world
   exit
   ```

4. Remove Image:
   Find if of the image:
   ```
   docker images | grep ubuntu
   > ubuntu                   latest    37f74891464b   3 weeks ago     69.2MB
   ```
   Remove image by id:
   ```
   docker rmi 37f74891464b
   > Error response from daemon: conflict: unable to delete 37f74891464b (must be forced) - image is being used by stopped container d3849f3dfa13
   ```
   Error is caused by stopped containers than use this image. I need to deelte them first:
   ```
   docker container prune
   > WARNING! This will remove all stopped containers.
   > Are you sure you want to continue? [y/N] y
   > Deleted Containers:
   > 519be52d29892deeb50e3e80cdda07a97f3cd50a5d5f876e8d46f15a8c60b808
   > 6578c16683af249d308d3d9de5fd6f07685585ed96fa71c7f44f962c59525c38
   > d3849f3dfa13f4a42a509f2b473bd3f011fd2591679a85a0c53ad84753bed8b7
   ```
   Remove image by id:
   ```
   docker rmi 37f74891464b
   > Untagged: ubuntu:latest
   > Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
   > Deleted: sha256:37f74891464b2067aacbde60d9e2888e002af047a0d5dfc0b06b701928e0b473
   > Deleted: sha256:c5ca84f245d30117a9a2720cb4297cedf3642816471d4d699f4d77e39e13a39c
   ```
   Removed image successfully this time.