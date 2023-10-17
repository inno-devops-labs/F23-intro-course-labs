## Task 2: Image and Container Operations

### 1. Create Image Archive:
- **Pull the ubuntu image again**
```shell
sudo docker pull ubuntu:latest
```
```r
latest: Pulling from library/ubuntu
aece8493d397: Pull complete 
Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```
- **Create an archive file from the pulled image**
```shell
sudo docker image save ubuntu:latest > ubuntu_latest.tar
```

- **Compare of the archive file with the size of the original image**
*Archive Image size*
```shell
du -sh ubuntu_latest.tar 
```
> 77M	ubuntu_latest.tar

*Original Image size*
```shell
sudo docker images ubuntu:latest
```
```r
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
ubuntu       latest    e4c58958181a   12 days ago   77.8MB
```


### 2. Run Nginx Container:

- **Pull the nginx container**
```shell
sudo docker pull nginx:latest
```
```r
latest: Pulling from library/nginx
a378f10b3218: Pull complete 
4dfff0708538: Pull complete 
2135e49ace4b: Pull complete 
c843f6b280ce: Pull complete 
6f35ab6f1400: Pull complete 
6c538b49fa4a: Pull complete 
d57731fb9008: Pull complete 
Digest: sha256:b4af4f8b6470febf45dc10f564551af682a802eda1743055a7dfc8332dffa595
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest
```


- **Run the container in detach mode, bind the container port 80 to localhost port 80**

```shell
sudo docker run --name nginx_container -p 80:80 -d nginx:latest
```
```r
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                               NAMES
ae4dc9c36bab   nginx:latest     "/docker-entrypoint.…"   8 seconds ago   Up 7 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp   nginx_container
```

- **Check if the container is running and accessible from my local machine**
```shell
curl http://localhost:80 > nginx_output.html
```
```r
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

- **Create an HTML file:**

```shell
echo '''
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
''' > index.html
```

- **Copy this index.html file using following command**
```shell
sudo docker cp index.html nginx_container:/usr/share/nginx/html/index.html
```
```r
Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html/index.html
```

- **Create the Custom Image**
we can create a Docker image from the running "nginx_container" and name it "my_website" using the "docker commit"
```shell
sudo docker commit nginx_container my_website
```

- **Tag the new image with the "latest" tag**
```shell
sudo docker tag my_website my_website:latest
```

- **Stop and remove the original nginx_container and Verify**
Stop and remove the original nginx_container and verify
```shell
sudo docker stop nginx_container
sudo docker rm nginx_container

sudo docker ps -a
```
As we can see no container is running
```r
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```


- **Create new container**
using the custom image we just created create a new container
```shell
sudo docker run --name new_nginx_container -p 80:80 -d my_website:latest
```

- **Test the web server**
```shell
curl http://localhost:80
```

- **Analyze image changes**
Finally to analye the changes made to the new image we can use the "docker diff" command
```shell
sudo docker diff new_nginx_container
```
```r
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```
The output shows the file system changes made to the container. The Letter "C" indicates the changes, on the side note, the letter "A" indicates files or directories which were added and letter "D" indicates deletions.

