To create an image archive, we will start by pulling the latest Ubuntu image and then create an archive file from it. Here are the commands used:

1. Pull the latest Ubuntu image:
   ```
   docker pull ubuntu
   ```

2. Create an archive file from the Ubuntu image:
   ```
   docker save -o ubuntu_image.tar ubuntu
   ```

The size of the archive file can be compared with the size of the original image using the following command:

```
docker images --format "{{.Repository}}\t{{.Tag}}\t{{.Size}}"
```

Observations:
- The size of the archive file may be smaller than the original image due to compression. Docker uses a combination of gzip and tar to compress and package the image layers into an archive file. This compression reduces the overall size of the image, resulting in a smaller archive file.

# Nginx Container

1. Run Nginx Container:

To run a container using the Nginx web server image, we will use the following command:

```
docker run -d -p 80:80 --name nginx_container nginx
```

Observations:
- The `-d` flag runs the container in detached mode, allowing it to run in the background.
- The `-p 80:80` flag binds the container's port 80 to the local port 80, enabling access to the web server from the local machine.
- The `--name nginx_container` flag names the container as "nginx_container".

2. Create HTML File:

To create an HTML file with the specified content, we can use any text editor and save the file with a .html extension. Here is an example of the HTML file content:

```html
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
```

Once the HTML file is created, we can copy it to the container using the following command:

```
docker cp index.html nginx_container:/usr/share/nginx/html/index.html
```

This command copies the HTML file to the appropriate location in the container, which is `/usr/share/nginx/html/index.html`.

3. Create Custom Image:

To create a custom Docker image from the running container, we can use the following command:

```
docker commit nginx_container my_website:latest
```

Observations:
- The `nginx_container` is the name of the running container that we want to create a custom image from.
- `my_website` is the name we give to the custom image.
- `latest` is the tag we assign to the image.

4. Remove Original Container:

To remove the original container (nginx_container), we can use the following command:

```
docker rm nginx_container
```

We can verify that the container has been successfully removed by running the following command:

```
docker ps -a
```

Observations:
- The `docker rm` command removes a container.
- The `-a` flag shows all containers, including the ones that have exited or are not running.

5. Create New Container:

To create a new container using the custom image we've created, we can use the same command as before:

```
docker run -d -p 80:80 --name nginx_container my_website:latest
```

Observations:
- We are using the custom image "my_website" with the "latest" tag to create a new container.
- The container will run in detached mode and bind to the local port 80.

6. Test Web Server:

To test the web server and verify its accessibility from the local machine, we can use the curl command:

```
curl http://127.0.0.1:80
```

Observations:
- The `curl` command sends an HTTP request to the specified URL and displays the response.

7. Analyze Image Changes:

To analyze the changes made to the new image, we can use the `docker diff` command:

```
docker diff nginx_container
```

Observations:
- The `docker diff` command shows the changes made to the file system of a container compared to