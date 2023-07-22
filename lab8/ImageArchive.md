# Image and Container Operations

## Create Image Archive:
- Commands:
```
docker pull ubuntu:latest
docker save -o ubuntu_image.tar ubuntu:latest
```
- Sizes: (ther are the same)
```
docker images
REPOSITORY              TAG                     IMAGE ID       CREATED         SIZE
ubuntu                  latest                  5a81c4b8502e   3 weeks ago     77.8MB

ls -lh ubuntu_image.tar
-rw------- 1 rostislav rostislav 77M Jul 22 16:03 ubuntu_image.tar
```

## Run Nginx Container:

### Run Nginx:
- Command: docker run -d -p 80:80 --name nginx_container nginx:latest
- Runned latest nginx container with detached mode

### Create & Copy HTML File:
- Command: docker cp index.html nginx_container:/usr/share/nginx/html/index.html

### Create Custom Image:
- Command: docker commit nginx_container my_website:latest
- Output: sha256:a32ce2044de80c85875fcd9a5161e8865b720f36b31f707243ed81946da7ba27

### Remove Original Container:
Command: 
```
docker stop nginx_container
docker rm nginx_container
```

With **docker images** command we can be sure that nginx_container removed

### Create New Container:
- Command: docker run -d -p 80:80 --name my_website_container my_website:latest
- Output: 0724361d5eab850d634d0a6687461642fbe06c196b889514be84cf08d9cd4f3e

### Test Web Server:
- Command: curl http://127.0.0.1:80

### Analyze Image Changes:
- Command: docker diff my_website_container
- Output:
```
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```
This command shows any changes mage to container's filesystem compared to original image
