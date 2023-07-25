# Task 2: Image and Container Operations

```
# Pull the latest Ubuntu image
docker pull ubuntu:latest

# Save the image
docker save -o ubuntu_latest.tar ubuntu:latest
```

### compare size of files
```
# Size of the archive file
ls -lh ubuntu_latest.tar

# Size of the original image
docker images ubuntu:latest
```

### Run Nginx Container

To run a container using the Nginx web server image and connect its port 80 to the local port 80, Please see below

```
docker run -d -p 80:80 --name test nginx
```

### Verify the web server is running
We can verify if the web server is running and accessible from the local machine by opening a web browser and and pasting the url http://localhost/.
### Copy the HTML file to the container

To copy the HTML file to the container at the appropriate location to serve as an index file (e.g., the default Nginx web root), use the following command:

```
docker cp index.html test:/usr/share/nginx/html/
```

### Create Custom Image

Create a custom Docker image from the running container and name it "my_website" with the "new" tag:

```
docker commit test my_website:new
```

### Remove Original Container

To remove the original container use the below command:

```
docker rm -f nginx_container
```

### Create New Container

Create a new container using the below command.

```
docker run -d -p 80:80 --name test1 my_website:new
```

### Test Web Server

Test by accessing the web server at 127.0.0.1:80

### Analyze Image Changes

To analyze the changes made to the new image use the below command:

```
docker diff test1
```