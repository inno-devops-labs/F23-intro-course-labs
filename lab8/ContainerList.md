# Docker Operations Report

## 1. List Containers

The command used to list Docker containers is `docker ps -a`.

Output: 
```bash
CONTAINER ID   IMAGE                              COMMAND                  CREATED        STATUS                      PORTS     NAMES
bc65439d60e8   compose_inno_arl_velodyne_mavros   "/ros_entrypoint.sh …"   4 days ago     Exited (137) 47 hours ago             compose_inno_arl_velodyne_mavros_1
```

## 2. Pull Latest Ubuntu Image

The command used to pull the latest Ubuntu image from Docker registry is `docker pull ubuntu:latest`.

Output: 
```bash
latest: Pulling from library/ubuntu
aece8493d397: Pull complete 
Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

## 3. Run Container

The command used to run a container using the Ubuntu image is `docker run -it ubuntu`.

Output: 
```bash
root@1defa2205ce9:/# 
```

Note: The `-it` flag is used to run the container in interactive mode with a tty attached.

## 4. Remove Image

The command used to remove the Ubuntu image is `docker rmi ubuntu`.

Output: 
```bash
Error response from daemon: conflict: unable to remove repository reference "ubuntu" (must force) - container 1defa2205ce9 is using its referenced image e4c58958181a
```
```bash
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
Deleted: sha256:256d88da41857db513b95b50ba9a9b28491b58c954e25477d5dad8abb465430b
```

Note: The `docker rmi` command is used to remove Docker images. If the image is in use by an existing container, we need to remove the container first before the image can be removed.