# Introduction to DevOps Lab8
**Leonid Zelenskiy** <br>
**B21-CS-01** <br>
*l.zelenskiy@innopolis.university*

## Image Archive
**Command**: `docker save ubuntu:latest`

**Result**:<br>
.tar file size: 80.3 MB
Image size: 77.8 MB

## Run Nginx Container:

``` bash
docker run -d -p 80:80 --name 'nginx_container' nginx 
docker cp index.html nginx_container:/usr/share/nginx/html
docker commit nginx_container new_nginx
docker stop nginx_container && docker rm nginx_container
docker run -p 80:80 -d new_nginx
docker diff
# This directories and files were changed
# C /etc            
# C /etc/nginx
# C /etc/nginx/conf.d
# C /etc/nginx/conf.d/default.conf
# C /run
# C /run/nginx.pid
```