# Image and Container Operations

To create an image archive, follow these steps:

1. Pull the latest Ubuntu image:
   ```
   docker pull ubuntu:latest
   ```

2. Create an archive file from the image:
   ```
   docker save ubuntu:latest -o ubuntu_image.tar
   ```

3. Document the commands used in a Markdown file named "ImageArchive.md" in the lab folder.

To compare the size of the archive file with the original image, use the following command:
```
ls -lh ubuntu_image.tar
docker image inspect --format='{{.Size}}' ubuntu:latest
```
Explain any differences, if present, in the "ImageArchive.md" file. Differences can occur due to compression and storage formats used in the archive file.

To run an Nginx container, execute these steps:

1. Run the container using the Nginx web server image:
   ```
   docker run -d -p 80:80 --name nginx_container nginx
   ```

2. Verify that the web server is running and accessible from the local machine by opening a web browser and visiting httpNO LINKSlocalhost.

To create an HTML file and copy it to the container:

1. Create an HTML file named "index.html" with the specified content.

2. Copy the HTML file to the container at the appropriate location:
   ```
   docker cp index.html nginx_container:/usr/share/nginx/html/
   ```

To create a custom Docker image from the running container:

1. Commit the container to a new image and name it "my_website":
   ```
   docker commit nginx_container my_website
   ```

2. Tag the container with the "latest" tag:
   ```
   docker tag my_website:latest my_website:latest
   ```

To remove the original container:

1. Remove the original container "nginx_container":
   ```
   docker rm -f nginx_container
   ```

2. Verify that it has been successfully removed:
   ```
   docker ps -a
   ```

To create a new container using the custom image:

1. Run the new container using the custom image "my_website":
   ```
   docker run -d -p 80:80 --name new_container my_website
   ```

To test the web server:

1. Use the curl command to access the web server at 127.0.0.1:80:
   ```
   curl 127.0.0.1:80
   ```

To analyze the changes made to the new image:

1. Use the docker diff command to analyze the changes:
   ```
   docker diff new_container
   ```

2. The output of the docker diff command displays the file system changes within the container. It shows added, modified, or deleted files compared to the base image.
