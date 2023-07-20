# Containers Lab - Docker

### 1. Create Image Archive:

To create an archive file from the latest Ubuntu image:

```bash
# Pull the latest Ubuntu image
docker pull ubuntu:latest

# Save the image as an archive file
docker save -o ubuntu_latest.tar ubuntu:latest
```

**Explanation:** The `docker save` command exports an image to a tarball archive. This creates an archive file named `ubuntu_latest.tar` in the current directory.

To compare the size of the archive file with the size of the original image, I used the `ls` command:

```bash
# Get the size of the archive file
ls -lh ubuntu_latest.tar

# Get the size of the original image
docker images --format "{{.Repository}}:{{.Tag}}\t{{.Size}}"
```

**Observation:** The size of the archive file smaller than the original image size reported by Docker. This is because the archive contains only the image's layers and metadata, whereas Docker includes additional data and information when reporting image size.

### 2. Run Nginx Container:

1. To run a container using the Nginx web server image with the specified requirements:

```bash
docker run -d -p 80:80 --name nginx_container nginx:latest
```

**Explanation:** The command run the Nginx container in detached mode (`-d`), bind the container's port 80 to the local port 80 (`-p 80:80`), and give the container the name "nginx_container" (`--name nginx_container`).

2. To verify that the web server is running and accessible from the local machine, I opened a web browser and navigate to `http://127.0.0.1`. I saw default Nginx page, which means the web server is running and accessible.

### 3. Create HTML File:

To create an HTML file with the specified content:

```bash
# Create the HTML file
echo "<html><head><title>The best</title></head><body><h1>website</h1></body></html>" > index.html

# Copy the HTML file to the container
docker cp index.html nginx_container:/usr/share/nginx/html/index.html
```

**Explanation:** The `docker cp` command copies this HTML file into the running container at the appropriate location for Nginx to serve it as the index file.

### 4. Create Custom Image:

To create a custom Docker image from the running container and name it "my_website" with the "latest" tag:

```bash
docker commit nginx_container my_website:latest
```

**Explanation:** The `docker commit` command creates a new image from a container's changes. It takes the running container named "nginx_container" and creates a new image tagged as "my_website:latest" from it.

### 5. Remove Original Container:

To remove the original container "nginx_container":

```bash
docker stop nginx_container   # Stop the container
docker rm nginx_container     # Remove the container
```

**Verification:** To verify that the container has been removed, I used the `docker ps -a` command and check if "nginx_container" is no longer listed.

### 6. Create New Container:

To create a new container using the custom image "my_website":

```bash
docker run -d -p 80:80 --name my_website_container my_website:latest
```

**Explanation:** The command runs a new container in detached mode, binding the container's port 80 to the local port 80, and names the container "my_website_container."

### 7. Test Web Server:

To test the web server inside the new container, I opened a web browser and navigate to `http://127.0.0.1`. I saw the HTML page I created earlier, which means the web server is running and accessible.

### 8. Analyze Image Changes:

To analyze the changes made to the new image, I used the `docker diff` command:

```bash
docker diff my_website_container
```

**Explanation:** The `docker diff` command shows the changes made to the container's file system compared to its base image. It will display the list of added, modified, or deleted files.