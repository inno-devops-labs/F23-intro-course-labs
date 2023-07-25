# Container management

## List
`docker ps -a`
```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

## Pull Latest Ubuntu Image
`Pull Latest Ubuntu Image`
```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker pull ubuntu:latest
latest: Pulling from library/ubuntu
3153aa388d02: Pull complete 
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview ubuntu:latest
```

## Run container
`docker run -it ubuntu`
```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker run -it ubuntu                      
root@631a563360e9:/# whoami
root
root@631a563360e9:/# ps -a
  PID TTY          TIME CMD
   10 pts/0    00:00:00 ps
root@631a563360e9:/# 
```

`docker inspect `
```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker inspect 631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338
[
    {
        "Id": "631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338",
        "Created": "2023-07-25T09:00:32.997327251Z",
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
            "ExitCode": 137,
            "Error": "",
            "StartedAt": "2023-07-25T09:00:33.27021723Z",
            "FinishedAt": "2023-07-25T09:01:09.595269132Z"
        },
        "Image": "sha256:5a81c4b8502e4979e75bd8f91343b95b0d695ab67f241dbed0d1530a35bde1eb",
        "ResolvConfPath": "/var/lib/docker/containers/631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338/hostname",
        "HostsPath": "/var/lib/docker/containers/631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338/hosts",
        "LogPath": "/var/lib/docker/containers/631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338/631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338-json.log",
        "Name": "/amazing_swartz",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        
        ...
        ...
        ...
```

## Remove image
`docker rmi ubuntu`

But first need to remove containers. Otherwise it shows this error `Error response from daemon: conflict: unable to remove repository reference "ubuntu" (must force) - container 631a563360e9 is using its referenced image 5a81c4b8502e`

To remove `docker rm 631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338`
```
docker rm 631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338
631a563360e9eb530a3bb7e7e0e14cb4d78d828e0643bb03fc939021ffe74338
```

then
```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker rmi ubuntu                                                         
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Deleted: sha256:5a81c4b8502e4979e75bd8f91343b95b0d695ab67f241dbed0d1530a35bde1eb
Deleted: sha256:59c56aee1fb4dbaeb334aef06088b49902105d1ea0c15a9e5a2a9ce560fa4c5d
```
