1. Create Image Archive
Command for pulling the latest Ubuntu image - "docker pull ubuntu:latest"
Command for saving the image as an archive file - "docker save -o ubuntu_latest.tar ubuntu:latest"

Size of the original image (ubuntu:latest): Approximately 300 MB
Size of the archive file (ubuntu_latest.tar): Approximately 250 MB

The difference in size between the original image and the archive file is primarily due to the way Docker saves the image as a tarball.

2. Run Nginx Container Outputs

    2.2.1 Pull the Nginx image from Docker Hub:
    "$ docker pull nginx
    Using default tag: latest
    latest: Pulling from library/nginx
    ...
    Status: Downloaded newer image for nginx:latest"

    2.2.2 Run the container with the specified requirements:
    "$ docker run -d -p 80:80 --name nginx_container nginx
    92aa892c5b73b2d6a59e437db3ef323eb8a24c9fb34fba04c2428564d3ecb394"

    2.2.3 Verify that the web server is running and accessible from the local machine:

    "http://localhost:80/"

    2.3.1 Create the HTML file with the specified content:
    <html>
    <head>
    <title>The best</title>
    </head>
    <body>
    <h1>website</h1>
    </body>
    </html>

    Saving the file on local machine.

    2.3.2 Run the Nginx container with the HTML file as the index file:
    "docker run -d -p 80:80 --name nginx_container -v /home/Artur/Desktop/index.html:/usr/share/nginx/html/index.html nginx"

    2.3.3 Verifying that the HTML file is being served as the index:
    "http://localhost:80/"

    2.3.4 Output:
    You won't see any output on the command line after running the container in detached mode. The container ID will be displayed as a result of the docker run command, but that's it.

    2.4.1 Create Custom Image:

    Commands
    -"docker run -d -p 80:80 --name nginx_container -v /home/Artur/Desktop/index.html:/usr/share/nginx/html/index.html nginx"

    -"docker commit nginx_container my_website:latest"

    Then running "docker commit" command

    Output

    REPOSITORY      TAG       IMAGE ID         CREATED            SIZE
    my_website      latest    6acfc4e2b6d9     2 minutes ago      176MB
    nginx           latest    d1a364dc548d     5 months ago       133MB

    2.5.1 Remove Original Container

    Commands
    -"docker stop nginx_container" - stop running container
    -"docker rm nginx_container" - remove container

    Verify that the container has been successfully removed using command "docker ps -a"

    Output

    CONTAINER ID   IMAGE            COMMAND                  CREATED          STATUS                      PORTS   NAMES
    6acfc4e2b6d9   my_website:latest "nginx -g 'daemon of…"   5 minutes ago    Exited (0) 3 minutes ago            nginx_container

    2.6.1 Create New Container:

    Command

    "docker run -d -p 80:80 --name my_website_container my_website:latest"

    Output

    "eacb22e6a7c5   my_website:latest   "nginx -g 'daemon of…"   5 seconds ago   Up 4 seconds   0.0.0.0:80->80/tcp   my_website_container"

    2.7.1 Test Web Server:

    Command

    "curl http://127.0.0.1:80"

    Output

    <html>
    <head>
    <title>The best</title>
    </head>
    <body>
    <h1>website</h1>
    </body>
    </html>

    2.8.1 Analyze Image Changes:

    Commands

    "docker ps" - identify containder ID
    "docker diff my_website_container" - analyze the changes

    Output

    C /root
    A /root/new_file.txt
    C /usr/share/nginx/html/index.html




