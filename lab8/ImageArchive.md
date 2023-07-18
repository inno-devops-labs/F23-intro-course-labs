# Student Information
Name: Md Motasim Bhuiyan

Group: B21-CS-01

Email: m.bhuiyan@innopolis.university

# Image and Container Operations

## Archiving Image
To pull and archive the latest `ubuntu` image, I did the following:
```bash
$ docker pull ubuntu:latest
latest: Pulling from library/ubuntu
3153aa388d02: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

$ docker save -o ubuntu_latest.tar ubuntu:latest
```
To see the sizes, I used `ls` command for the archive and `docker images` for the image:
```bash
$ ls -lh ubuntu_latest.tar
-rw-r--r-- 1 rafee 197609 77M Jul 17 14:32 ubuntu_latest.tar

$ docker images --format "{{.Repository}}:{{.Tag}}\t{{.Size}}"
ubuntu:latest   77.8MB
```

## Running Nginx Container