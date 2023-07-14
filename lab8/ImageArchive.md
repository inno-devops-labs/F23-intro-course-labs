## Image and Container Operations
1. Commands to pull the latest Ubuntu image and create an archive file from it:  
`docker pull ubuntu:latest`  
`docker save -o ubuntu_archive.tar ubuntu:latest`
2. The size of the archive file is smaller than the size of the original image.
3. Run Nginx container:
```
PS D:\Study\DevOps> docker run -d -p 80:80 --name nginx_container nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
faef57eae888: Pull complete
76579e9ed380: Pull complete
cf707e233955: Pull complete
91bb7937700d: Pull complete
4b962717ba55: Pull complete
f46d7b05649a: Pull complete
103501419a0a: Pull complete
Digest: sha256:08bc36ad52474e528cc1ea3426b5e3f4bad8a130318e3140d6cfe29c8892c7ef
Status: Downloaded newer image for nginx:latest
571a74668e5e0929d03ac692d81e19f6b1fe1679ec7aba3e2716fdd34a40a227
PS D:\Study\DevOps> docker cp index.html nginx_container:/usr/share/nginx/html/
PS D:\Study\DevOps> docker commit nginx_container my_website:latest
sha256:14a1fab2eed835082dc9d68d4a0c8796124bfbb10834517335ef767b8a58dad8
PS D:\Study\DevOps> docker stop nginx_container
nginx_container
PS D:\Study\DevOps> docker rm nginx_container
nginx_container
PS D:\Study\DevOps> docker ps -a
CONTAINER ID   IMAGE             COMMAND                  CREATED        STATUS                        PORTS                    NAMES
f38b1c212eeb   inn-time-app      "/bin/sh -c 'flask r…"   26 hours ago   Exited (255) 24 minutes ago   0.0.0.0:5000->5000/tcp   app
173893854b9d   postgres:latest   "docker-entrypoint.s…"   2 weeks ago    Exited (255) 24 minutes ago   5432/tcp                 db
PS D:\Study\DevOps> docker run -d -p 80:80 --name my_website_container my_website:latest
f5217d6c7d1a1f88e32d167da2e35cba178e9850be4887b9a913a87b105e5845
PS D:\Study\DevOps> docker diff my_website_container
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```