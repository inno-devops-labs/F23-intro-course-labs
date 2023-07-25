## Task 1: Container Management

1. List Containers:

To list containers, we can run the following command with flag -a (to list all existing containers, not only active):
**`docker ps -a`**
```
CONTAINER ID   IMAGE             COMMAND                  CREATED        STATUS                          PORTS                                                   NAMES
dbb1ee97ce94   nginx             "/docker-entrypoint.…"   5 days ago     Restarting (1) 13 seconds ago                                                           nginx
f0a8557c4f32   grafana/grafana   "/run.sh"                5 days ago     Exited (255) 42 seconds ago     3000/tcp                                                abdt-grafana
5f386c8e5b7c   apache/nifi       "../scripts/start.sh"    5 days ago     Up 41 seconds                   8000/tcp, 8080/tcp, 10000/tcp, 0.0.0.0:8443->8443/tcp   abdt-nifi
69be467c4e38   postgres          "docker-entrypoint.s…"   5 days ago     Up 41 seconds                   0.0.0.0:7432->5432/tcp                                  abdt-db
3e2afa40add2   postgres          "docker-entrypoint.s…"   2 months ago   Exited (0) 7 weeks ago                                                                  postgres
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
root@23becaf159f2:/#
```
We can also use `docker inspect` to get detailed info about this container:

**`docker inspect 23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4`**
```
[
    {
        "Id": "23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4",
        "Created": "2023-07-25T06:33:59.77620834Z",
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
            "ExitCode": 130,
            "Error": "",
            "StartedAt": "2023-07-25T06:33:59.967951632Z",
            "FinishedAt": "2023-07-25T06:41:42.379641138Z"
        },
        "Image": "sha256:37f74891464b2067aacbde60d9e2888e002af047a0d5dfc0b06b701928e0b473",
        "ResolvConfPath": "/var/lib/docker/containers/23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4/hostname",
        "HostsPath": "/var/lib/docker/containers/23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4/hosts",
        "LogPath": "/var/lib/docker/containers/23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4/23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4-json.log",
        "Name": "/youthful_sanderson",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        ...
```

4. Remove Image:

**`docker rmi ubuntu`**
```
Error response from daemon: conflict: unable to remove repository reference "ubuntu" (must force) - container 23becaf159f2 is using its referenced image 37f74891464b
```
Ok, we need to remove container first:
**`docker rm 23becaf159f284b5ec355b14018b5c8f9486b9ffee836206b22d52ae9b1ee4f4`**

Now we can remove the image:
**`docker rmi ubuntu`**
```
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Deleted: sha256:37f74891464b2067aacbde60d9e2888e002af047a0d5dfc0b06b701928e0b473
Deleted: sha256:c5ca84f245d30117a9a2720cb4297cedf3642816471d4d699f4d77e39e13a39c
```