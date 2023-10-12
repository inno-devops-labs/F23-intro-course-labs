### 1. Create Image Archive:

<b>Command list:</b><br>

| Command | Meaning |
|:-----: | :-----: |
|docker pull ubuntu:latest| Pull the latest Ubuntu image |
|docker save -o ubuntu_image.tar ubuntu:latest| Create an archive file from the image |
|docker images --format "{{.Repository}}:{{.Tag}}\t{{.Size}}" / grep "ubuntu:latest" | Size of the original image |
|ls -lh ubuntu_image.tar | Size of the archive file |

<br>
| in the third command was replaced by / to keep table formatting 

<b>Obtained sizes:</b><br>
- original image: 77.8MB
- archive file: 77MB

<b>Explanation:</b><br>The size of the archive file is different from the original image due to compression. The original image is a layered file system, while the archive is a single compressed file. The size difference depends on the layers and compression algorithm used.

### 2. Run Nginx Container:

### ii. Use the appropriate command to run a container using the Nginx web server image:

<b>Command:</b> docker run -d -p 80:80 --name nginx_container nginx<br>
<b>Meaning: </b><br>
- `docker run`: This command is used to run a container.
- `-d`: It runs the container in detached mode, which means it runs in the background.
- `-p 80:80`: This option binds the container's port 80 to the local port 80, allowing access to the Nginx web server from the local machine.
- `--name nginx_container`: It assigns the name "nginx_container" to the running container.
- `nginx`: This is the name of the Docker image to be used, in this case, the Nginx web server image.

<b>Output:</b>
``` amir@PC:~ $ sudo docker run -d -p 80:80 --name nginx_container nginx
56a9173124aa344b6dfa90d941445c18a8e7d52850be1b2d266f0ba32fbfb708 
``` 
### iii. Create HTML File:
1. Create an HTML file with the specified content: <br>
`File name: index.html`
2. Copy the HTML file to the container at the appropriate location to serve as an index file:<br>
<b>Command : </b><br>
`docker cp index.html nginx_container:/usr/share/nginx/html/index.html`<br>
<b>Output : </b><br>
`Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html/index.html`

### iv. Create Custom Image:
1. Create a custom Docker image from the running container and name it "my_website" and tag the container with the "latest" tag::<br>
<b>Command : </b><br>
`docker commit nginx_container my_website:latest`<br>
<b>Output : </b><br>
`sha256:9ff1a74ae59b81da53b4c4b46d2ba327fe6d926f4055638d9954d2dd1d35349a`

### v. Remove Original Container:
1. Remove the original container (nginx_container) and verify that it has been successfully removed:
- Firstly, let's remove the container:<br>
<b>Command:</b><br> `docker rm -f nginx_container`<br>
<b>Output:</b><br> `nginx_container`<br>
- Secondly, let's verify:<br>
<b>Command:</b><br> `docker container ps`<br>
<b>Output:</b><br>
``` 
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
``` 

### vi. Create New Container:
1. Create a new container using the custom image you've created (the same way as the original container).<br>
<b>Command:</b><br>
`sudo docker run -d -p 80:80 --name my_website_container my_website:latest`<br>
<b>Output:</b><br>
`ff723963dde523e289b189172e6da683f3d4258034eecbb1e9e3d469e427aa18`

### vii. Test Web Server:
1. Use the curl command to access the web server at 127.0.0.1:80 :<br>
<b>Command:</b><br>
`curl http://127.0.0.1:80`<br>
<b>Output:</b><br>
*Body of written html file*

### viii. Analyze Image Changes:
1. Use the docker diff command to analyze the changes made to the new image:<br>
<b>Command:</b><br>
`sudo docker diff ff723963dde523e289b189172e6da683f3d4258034eecbb1e9e3d469e427aa18`<br>
<b>Output:</b><br>
```
C /var
C /var/cache
C /var/cache/nginx
A /var/cache/nginx/client_temp
A /var/cache/nginx/fastcgi_temp
A /var/cache/nginx/proxy_temp
A /var/cache/nginx/scgi_temp
A /var/cache/nginx/uwsgi_temp
C /run
A /run/nginx.pid
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
```
