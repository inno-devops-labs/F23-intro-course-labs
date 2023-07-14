## Container Managment
1. List containers command: `docker ps -a`  
Output:  
```
CONTAINER ID   IMAGE             COMMAND                  CREATED        STATUS                        PORTS                    NAMES
f38b1c212eeb   inn-time-app      "/bin/sh -c 'flask r…"   26 hours ago   Exited (255) 24 minutes ago   0.0.0.0:5000->5000/tcp   app
173893854b9d   postgres:latest   "docker-entrypoint.s…"   2 weeks ago    Exited (255) 24 minutes ago   5432/tcp                 db
```
2. Pull latest Ubuntu image command: `docker pull ubuntu:latest`
3. Run container command: `docker run -it ubuntu:latest`
4. Remove image command: `docker rmi ubuntu:latest`  
Output:  
```Untagged: ubuntu:latest  
Untagged: ubuntu@sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508  
Deleted: sha256:5a81c4b8502e4979e75bd8f91343b95b0d695ab67f241dbed0d1530a35bde1eb  
Deleted: sha256:59c56aee1fb4dbaeb334aef06088b49902105d1ea0c15a9e5a2a9ce560fa4c5d
```