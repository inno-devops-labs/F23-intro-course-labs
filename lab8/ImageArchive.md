# Containers Lab - Docker
## Task 2: Image and Container Operations
### 1 Create Image Archive
Commands:
> docker pull ubuntu  
> docker save -o ubuntu_image.tar ubuntu
> docker images --format "{{.Repository}}\t{{.Tag}}\t{{.Size}}"

**Observation:**  
Archived image size is quite smaller than original one due to compression.
### 2 Run Nginx Container
Command to run (download nginx if needed):
> docker run -d -p 80:80 --name nginx_container nginx

Output:
> Unable to find image 'nginx:latest' locally  
latest: Pulling from library/nginx  
578acb154839: Pull complete  
e398db710407: Pull complete  
85c41ebe6d66: Pull complete  
7170a263b582: Pull complete  
8f28d06e2e2e: Pull complete  
6f837de2f887: Pull complete  
c1dfc7e1671e: Pull complete  
Digest: sha256:86e53c4c16a6a276b204b0fd3a8143d86547c967dc8258b3d47c3a21bb68d3c6  
Status: Downloaded newer image for nginx:latest  
eb63b67f896957fdb6a6ca4a6ebbf7d4a9bce820110b351614efdffc750026c0

Checked if it accessible via web-browser(adress: **localhost:80**):
![image](https://github.com/timur2104/intro-course-labs/assets/65979482/86a31c2a-1a6a-4780-858b-3f6732965a98)  
Created file and named it **index.html** located in C/InnoProjects/static directory.  
Run with volume (-v) to copy file:
> docker run -d -p 80:80 --name nginx_container -v //C/InnoProjects/static:/usr/share/nginx/html nginx

Create custom image:
> docker commit nginx_container my_website:latest

Remove container:
> docker rm nginx_container

Creating new container from our image:
> docker run -d -p 80:80 --name nginx_container my_website:latest

Checking accessibility via _curl_:
> curl localhost:80

Checking diffs:
> docker diff nginx_container
