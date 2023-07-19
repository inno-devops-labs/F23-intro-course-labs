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
To run the `nginx` container, I first pulled the `nginx:alpine` docker image and ran it. I renamed the container as `nginx_container` with the port `80` exposed to the host's port `80`.
```bash
$ docker pull nginx:alpine
$ docker create --name nginx_container -p 80:80 nginx:alpine
```
This can be verified using `docker ps -a` command. Then I used the `docker start` command to start the container.
```bash
$ docker start nginx_container
```
Going to `localhost` shows nginx's default page.

Now, I saved the content of the given html in a file named `new_index.html` and copied it to the container's `/usr/share/nginx/html` directory.
```bash
$ docker cp new_index.html nginx_container:/usr/share/nginx/html/index.html
```

Now, going to `localhost` shows the content of the changed file instead of nginx default.

To create a image from the container, I used the `docker commit` command. I tagged the image as `my_website:latest`. Then I used `docker images` to see the image.
```bash
$ docker commit nginx_container my_website:latest
sha256:56c1c6bc7b575710b685d3f93e542b2f983ab5ff2fb66a89fe671fc86222b5a1

$ docker images
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
my_website        latest    56c1c6bc7b57   12 seconds ago   41.4MB
nginx             alpine    4937520ae206   15 minutes ago   41.4MB
```

Then I deleted the container using `docker rm` command. And verified with `docker ps -a`
```bash
$ docker stop nginx_container
$ docker rm nginx_container
$ docker ps -a

```
I followed the same steps as before to create a container from `my_website:latest` image.
```bash
$ docker create --name my_website_container -p 80:80 my_website:latest
$ docker start my_website_container
```

Then I verified the new container using `curl`
```bash
$ curl 127.0.0.1:80
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
```
    
Then I used `docker diff` to see the changes made to the container.
```bash
$ docker diff my_website_container
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```
Here, `C` means that the files are changed. Basically the files that are changed are only `default.conf` and `nginx.pid`. The `default.conf` file is changed to work with available files (for example no `404.html` was provided). And the `nginx.pid` file is changed because the container is restarted. And the other files considered `changed` is because they are the parent directories of the changed files.