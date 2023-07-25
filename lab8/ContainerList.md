## Task 1: Container Management

1. List Containers:
**`docker ps -a`**
```
root@WIN-7AEJUR7JPT1:/home/qqq# docker ps                                                                                                                                  CONTAINER ID   IMAGE              COMMAND                  CREATED        STATUS          PORTS                                   NAMES                                    5f527ed4ea78   wordpress:latest   "docker-entrypoint.s…"   3 months ago   Up 27 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   wordpressdocker_wordpress_1              89ce75f78935   mysql:5.7          "docker-entrypoint.s…"   3 months ago   Up 27 seconds   3306/tcp, 33060/tcp                     wordpressdocker_db_1                     r
```

2. Pull Latest Ubuntu Image:

**`docker pull ubuntu:latest`**
```
latest: Pulling from library/ubuntu
5af00eab9784: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

3. Run Container:

We can use the following command to run container in interactive mode:
**`docker run -it ubuntu`**
```
root@WIN-7AEJUR7JPT1:/#
```


4. Remove Image:

**`docker rmi ubuntu`**
Remove container first:
**`docker rm 9f284b5ec23becaf15355b19486b9ffee836206b24018b5c8f2d52ae9b1ee4f4`**

Now we can remove the image:
**`docker rmi ubuntu`**
```
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:9f284b5ec23becaf15355b19486b9ffee836206b24018b5c8f2d52ae9b1ee4f4
Deleted: sha256:9f284b5ec23becaf15355b19486b9ffee836206b24018b5c8f2d52ae9b1ee4f4
Deleted: sha256:9f284b5ec23becaf15355b19486b9ffee836206b24018b5c8f2d52ae9b1ee4f4
```