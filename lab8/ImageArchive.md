# Task 2: Image and Container Operations
---
### Create Image Archive
`sudo docker pull ubuntu:latest`
`sudo docker save ubuntu:latest -o ubuntu.tar`

`docker images ubuntu:latest --format "{{.Size}}"`
77.8MB
`ls -s -h | grep "ubuntu.tar"`
77M ubuntu.tar

The original image and the archive file are of the same size.

### Run Nginx Container
To run a container:
`sudo docker run -d -p 80:80 --name nginx_container nginx:latest`

To copy the HTML file to the containter:
`sudo docker cp index.html nginx_container:/usr/share/nginx/html/index.html`

To create a custom Docker image:
`sudo docker commit nginx_container my_website:latest`

To remove the original container:
`sudo docker stop nginx_container`
`sudo docker rm nginx_cointainer`

To create a new container using the custom image:
`sudo docker run -d -p 80:80 --name my_website_container my_website:latest`

To test the server:
`curl http://localhost`

To analyze the image changes:
`sudo docker diff my_website_container`