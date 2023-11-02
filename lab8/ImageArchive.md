# Image Archive

## Pulling Image and Creating Archive

Pulled the latest Ubuntu image using the following command:
```bash
docker pull ubuntu:latest
```

Faced permission denied error when attempting to create an archive without specifying the path. Resolved by creating a directory and changing its permissions:
```bash
mkdir /home/ahmad/Desktop/docker-images/
chmod 777 /home/ahmad/Desktop/docker-images/
docker save ubuntu:latest -o /home/ahmad/Desktop/docker-images/ubuntu.tar
```

## Size Comparison

-   Docker Image size: `77.8 MB` using `docker images | grep ubuntu`
-   Archive size: `77 MB` using `ls -lh ubuntu.tar` (in the same directory)
The tiny difference in size may be due to metadata or file system overhead.

# Run Nginx Container
### Running the Container

```bash
docker run -d -p 80:80 --name nginx_container nginx:latest
```
### Verifying the Container and Web Server
```bash
docker ps -q
curl http://localhost:80
```

***output:***

```bash
<!DOCTYPE html> 
<html> 
<head> 
<title>Welcome to nginx!</title> 
<style> 
html { color-scheme: light dark; } 
body { width: 35em; margin: 0 auto; font-family: Tahoma, Verdana, Arial, sans-serif; } </style> 
</head> 
<body> 
<h1>Welcome to nginx!</h1> 
<p>If you see this page, the nginx web server is successfully installed and working. Further configuration is required.</p>
<p>For online documentation and support please refer to <a href="http://nginx.org/">nginx.org</a>.<br/> Commercial support is available at <a href="http://nginx.com/">nginx.com</a>.</p>
<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

### Create HTML File
Created an `index.html` file with the specified content. Copied the HTML file to the container to serve as an index file:

```bash
docker cp index.html nginx_container:/usr/share/nginx/html/index.html
```

Verified the copy:
```bash
docker exec nginx_container ls /usr/share/nginx/html
```

Accessed the web server again via web browser (`localhost:80`) or using curl:
```bash
curl http://localhost:80
```

***Output:***
```bash
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
```
Output as website h1 content and the best as title

### Create Custom Image
Created a new custom image from the running container and tagged it:
```bash
docker commit nginx_container my_website:latest
```
### Remove Original Container
Stopped and removed the original container:
```bash
docker stop nginx_container
docker rm nginx_container
```
Verified the removal:
```bash
docker ps -a | grep nginx_container
```
***(No output, indicating successful removal)***

### Create New Container
Created a new container using the custom image:
```bash
docker run -d -p 80:80 --name new_nginx_container my_website:latest
```
Verified the creation via:
```bash
docker images | grep my_website
```
Accessed the web server again and verified the output:
```bash
curl http://localhost:80
```
***output:***
```bash
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
```

Output again as website h1 content and the best as title

### Analyze Image Changes
Ran docker diff to analyze changes:
```bash
docker diff new_nginx_container
```

***output:***
```bash
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```
***Output Explanation:*** 
The `docker diff` command output indicates changes made to certain files and directories within the container file system compared to the original image it was created from. The changes in the nginx configuration and the PID file are likely related to the running nginx process in the container.
