## Create Image Archive:
1. Pull the latest ubuntu image:

        docker pull ubuntu:latest


2. Create and archive:


        docker save ubuntu | gzip > ubuntu_latest.tar.gz


3. Get the size of the image:

    Command:

        docker images --format '{{.Repository}}:{{.Tag}}        {{.Size}}' | grep ubuntu:latest

    Output:

        ubuntu:latest        77.8MB

4. Get the size of the archive:

    Command:

        du -h ubuntu_latest.tar.gz
        
    Output:

        29M     ubuntu_latest.tar.gz

Explanation: the archive compressed all layers and resulted in smaller size

## Run Nginx Container
1. Run a container using the Nginx web server image

    Command:

        docker run -d -p 80:80 --name nginx_container nginx

    -d argument allows to run in detach mode, -p specifies the port and --name specifies the name of the container

    Check that the web server is running:

        curl localhost:80

    Output:

        <!DOCTYPE html>
        <html>
        <head>
        <title>Welcome to nginx!</title>
        <style>
        html { color-scheme: light dark; }
        body { width: 35em; margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif; }
        </style>
        </head>
        <body>
        <h1>Welcome to nginx!</h1>
        <p>If you see this page, the nginx web server is successfully installed and
        working. Further configuration is required.</p>

        <p>For online documentation and support please refer to
        <a href="http://nginx.org/">nginx.org</a>.<br/>
        Commercial support is available at
        <a href="http://nginx.com/">nginx.com</a>.</p>

        <p><em>Thank you for using nginx.</em></p>
        </body>
        </html>

2. Create `index.html` and copy the file to container:

    Command: 

        docker cp index.html nginx_container:/usr/share/nginx/html/

3. Create custom image:

    Command:

        docker commit nginx_container my_website:latest

    Output:

        sha256:42e49af3735f4d30a7907ce25b9f57f8ea21ee89e60ba4b319216eafab87ebb3
    
4. Stop and remove original container:

    Command:

        docker stop nginx_container && docker rm nginx_container

    Output:

        nginx_container
        nginx_container


    Verify:

        docker ps -a

5. Create new container:

    Command:

        docker run -d -p 80:80 --name nginx_container my_website
    
6. Test Web Server:

    Command:

        curl 127.0.0.1:80

    Output:

        <html>
        <head>
        <title>The best</title>
        </head>
        <body>
        <h1>website</h1>
        </body>
        </html>

7. Analyze Image Changes:

    Command:

        docker diff nginx_container

    Output:

        C /etc
        C /etc/nginx
        C /etc/nginx/conf.d
        C /etc/nginx/conf.d/default.conf
        C /run
        C /run/nginx.pid

    For each directory and file listed prefix C means that the file's content has been modified in the container compared to the image.