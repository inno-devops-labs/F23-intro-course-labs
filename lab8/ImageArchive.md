# Image and Container Operations

## Create Image Archive

### Pull the latest Ubuntu image
```bash
docker pull ubuntu:latest
```

output:
```
latest: Pulling from library/ubuntu
Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Status: Image is up to date for ubuntu:latest
docker.io/library/ubuntu:latest
```

### Save the image to an archive file
```bash
docker save ubuntu:latest > ubuntu_latest.tar
```

### Size Comparison
- Check the size of the Docker image:
  ```bash
  docker image ls ubuntu:latest
  ```
- Check the size of the archive file:
  ```bash
  ls -lh ubuntu_latest.tar
  ```
- Output:

```
user@user-HP-ProBook-430-G7:~$ sudo docker image ls ubuntu:latest
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
ubuntu       latest    e4c58958181a   3 weeks ago   77.8MB

user@user-HP-ProBook-430-G7:~$ ls -lh ubuntu_latest.tar
-rw-rw-r-- 1 user user 77M окт 28 15:27 ubuntu_latest.tar
```

---

## Run Nginx Container

### Run an Nginx container
```bash
docker run --name nginx_container -p 80:80 -d nginx
```

Output:

```
latest: Pulling from library/nginx
a378f10b3218: Pull complete 
5b5e4b85559a: Pull complete 
508092f60780: Pull complete 
59c24706ed13: Pull complete 
1a8747e4a8f8: Pull complete 
ad85f053b4ed: Pull complete 
3000e3c97745: Pull complete 
Digest: sha256:add4792d930c25dd2abf2ef9ea79de578097a1c175a16ab25814332fe33622de
Status: Downloaded newer image for nginx:latest
c2f9595f87221a3c3ab95a2d21c71efdce0e26667f1fa16c3a7d5f8f59400d03
```

### Verify the web server
```bash
curl localhost
```

- Output:

```
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

---

## Create HTML File

### Create an HTML file
```html
echo "<html><head><title>The best</title></head><body><h1>website</h1></body></html>" > index.html
```

### Copy the HTML file to the container
```bash
docker cp index.html nginx_container:/usr/share/nginx/html/
```

---

## Create Custom Image

### Commit the container to an image
```bash
docker commit nginx_container my_website:latest
```
Output: 

```
Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html/
```

---

## Remove Original Container

### Remove the Nginx container
```bash
docker rm -f nginx_container
```

### Verify the container is removed
```bash
docker ps -a | grep nginx_container
```

---

## Create New Container

### Run a new container from the custom image
```bash
docker run --name new_nginx_container -p 80:80 -d my_website:latest
```

---

## Test Web Server

### Use the curl command
```bash
curl localhost
```
Output:

```
user@user-HP-ProBook-430-G7:~$ curl localhost
<html><head><title>The best</title></head><body><h1>website</h1></body></html>
```
---

## Analyze Image Changes

### Use the docker diff command
```bash
docker diff new_nginx_container
```

- Output:

```
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```

---
