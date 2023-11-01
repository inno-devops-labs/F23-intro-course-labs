
# Task 2: Image and Container Operations

1. Create Image Archive:
   - Pulled image using:
      ```
      docker pull ubuntu:latest
      ```

   - Created an archive file from it using:
      ```
      docker save ubuntu:latest -o ubuntu.tar
      ```

   - I checked the size of archive and docker image using 
      ```
      ls -lh ubuntu.tar
      docker images | grep ubuntu
      ```
     However, the difference between both sizes was almost unnoticeable. My understanding is that `docker save` did not compress the container because it was already very small or didn't have compression flexibility.

2. Run Nginx Container:

   - Here's the command for running `ngnix` container:
      ```
      docker run -d -p 80:80 --name nginx_container nginx:latest
     ```
   - Verified the service using `curl localhost:80` and got the default ngnix welcome page with html.

   - Copied `index.html` with the content given in assignment description into container using:
      
      ```
      docker cp index.html nginx_container:/usr/share/nginx/html/
      ```
   - **Create Custom Image:** Used following command to create container from our `ngnix_container`:
      ```
      docker commit nginx_container my_website:latest
      ```
   - **Remove original container and verify**: Removed container using:
      ```
      docker stop nginx_container
      docker rm nginx_container
      ```
   -  Verified the removal using:
      ```
      docker ps -a | grep nginx_container
      ```
   - **Create New Container:** Created new container using: 
      ```
      docker run -d -p 80:80 --name custom_nginx_container my_website:latest
      ```
   - Verified the service using `curl localhost:80` and got the new "Best website" page that belong to html file we put.

   - **docker diff output:** Here's my output of docker diff command:
      ```
      C /run
      C /run/nginx.pid
      C /etc
      C /etc/nginx
      C /etc/nginx/conf.d
      C /etc/nginx/conf.d/default.conf
      ```
      **Explanation:** *C* refer to Changes detected. `/run` and `/run/nginx.pid` are files that store main process IDs. The presence of this file indicates that Nginx is running inside the container.
      The paths `/etc, /etc/nginx, /etc/nginx/conf.d, and /etc/nginx/conf.d/default.conf` indicate that there have been changes in the Nginx configuration which are most likely because we restarted the container and ngnix.