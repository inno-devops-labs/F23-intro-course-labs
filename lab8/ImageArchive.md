# Containers Lab - Docker

## Task 2: Image and Container Operations

1. Create Image Archive:
   - I used "docker save ubuntu > ubuntu.tar". The size of my archive is smaller than original docker image, i think because it is compressed in "tar" file as archive.

2. Run Nginx Container:
   1. To start container i used "docker container run --name nginx_container -p 80:80 -d nginx" command
   2. I checked "<http://localhost/>" in my browser and it showed me "Welcome to nginx!" starting page

   3. To copy the file to container i used "docker cp index.html 7be5c723bb28:/usr/share/nginx/html/index.html"

   4. To create new image i used "docker commit 7be5c723bb28 my_website"

   5. To remove my container i used "docker stop nginx_container" then "docker rm nginx_container"

   6. To run conatiner from new saved image "docker container run --name my_website -p 80:80 -d my_website"

   7. Curl showed me content from my new html file.

   8. Docker diff is command used to track changes in container, when i executed it, i saw these changes:
   C /etc
   C /etc/nginx
   C /etc/nginx/conf.d
   C /etc/nginx/conf.d/default.conf
   C /run
   C /run/nginx.pid
   if you add new file via "cp" command docker diff show it
