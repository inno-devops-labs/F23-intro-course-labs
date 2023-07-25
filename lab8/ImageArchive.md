# Docker

```
DevOps Toolchain Category: Container Management
```

## Image and Container Operations :

1. Create Image Archive

- Fistrly I pul the Ubuntu Image using

```sh
    docker pull ubuntu:latest
```

- Next, I save the Image into a tarball file, using the following command, "docker save -o output_file_name.tar Image_Id_Or_Name":

```sh
    docker save -o ubuntu.tar ubuntu
```

- To load an Image from a tarball file, I use the following command, "docker load -i file_name.tar"

```sh
    docker load -i ubuntu.tar
```

### Comparing the size of the archive and the original image sizes :

- Original Docker Ubuntu Image file size : 77.81 MB
- Docker Ubuntu Archive file size: 76.6 MB

The difference between the docker iamge archive (tarball) and the original size of the Docker image can be due to several factors;

- Compression: Image archive created using 'docker save', command compresses the content to reduce the file size. It compresses image layers and metadata resulting in smaller file size. It uses compression algorithms like gzip or bzip2.
- Excluded data: Depending on how we create the Docker image, certain files or data might be excluded, such as build cache, temporary files or other artificats that are not necessary for distribution.

2. Run Nginx Container Outputs

#### Pulling and running the Nginx server

```sh
    docker pull nginx
```

- Bind the container's port 80 to the local port 80.
- Run the container in detached mode and name it "nginx_container".
- Verify that the web server is running and accessible from the local machine.

```sh
    docker run -d -p 80:80 --name nginx_container nginx
```

Command line output : c50698468f42f98ccbc0cd08733404a422e55911f2e90d4378690ae7432249a0
Running server : http://localhost:80

#### Create HTML File:

I create an hmtl document with content

```sh
 <html>
    <head>
    <title>The best</title>
    </head>
    <body>
    <h1>website</h1>
    </body>
    </html>
```

#### Copy the HTML file to the container at the appropriate location to serve as an index file.

Then a copy it to the docker container directory

```sh
    docker cp index.html nginx_container:/usr/share/nginx/html/index.html
```

#### Create Custom Image named "my_website" and tagged "latest" :

- I make sure my nginx container is running
- Then I can use the command

```sh
    docker run -d -p 80:80 --name nginx_container my_website:latest
```

#### Remove Original Container:

Using 'rm" command to kill original Nginx container

```sh
    docker rm -f nginx_container
```

#### Create New Container:

To create a new container using the custom image, I used the following command:

```sh
    docker run -d -p 80:80 --name my_website_container my_website:latest
```

#### Test Web Server:

To test the web server, I used the following command:

```sh
    curl http://localhost
```

To access the web server, open http://localhost

Observations : this would display the HTML content that was added to the index.hmtl file

#### Analyze Image Changes:

To analyze the changes made to the new image, I used the docker diff command followed by the image ID or name. For example:

```sh
    docker diff my_website:latest
```

Observations: This overall process demonstrates how you can customize and persist changes to a running container by creating a custom image from it and then using that custom image to create new containers with the desired configuration.
