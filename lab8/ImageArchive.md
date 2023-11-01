# Docker Image and Container Operations

## 1. Create Image Archive
   - Pull the latest Ubuntu image:
     ```sh
     docker pull ubuntu:latest
     ```
   - Save the image to an archive file:
     ```sh
     docker save -o ubuntu_latest.tar ubuntu:latest
     ```
   - Check the size of the archive file on windows:
     ```sh
     > ls *.tar
     Mode                 LastWriteTime         Length Name
     ----                 -------------         ------ ----
     -a----         11/1/2023   4:18 PM       80357376 ubuntu_latest.tar
     ```

   - Check the size of the original image:
     ```sh
     > docker images --filter reference=ubuntu:latest --format "{{.Size}}"
     77.8MB
     ```
    The image and archive have similar size because the archive doesn't compress the image.
    if we want to compress it using something link zip, it goes to 29MB

## 2. Run Nginx Container
   - Run a container using the Nginx web server image:
     ```sh
     > docker run --name nginx_container -p 80:80 -d nginx
     Unable to find image 'nginx:latest' locally
     latest: Pulling from library/nginx
     578acb154839: Already exists                                                                                                                                                                             
     e398db710407: Pull complete
     85c41ebe6d66: Pull complete
     7170a263b582: Pull complete
     8f28d06e2e2e: Pull complete
     6f837de2f887: Pull complete
     c1dfc7e1671e: Pull complete
     Digest: sha256:0820ca3d97dafab03cd6c24808aa78d2954c70489669aab713ef3846cb7cba45
     Status: Downloaded newer image for nginx:latest
     e4854b8ee666d76bc8c053674c558c1a3aacdac6e8d7fe005c892a302ace2e55
     ```

   - Verify the web server is running and accessible:
     ```sh
        > curl http://127.0.0.1
        StatusCode        : 200
        StatusDescription : OK
        Content           : <!DOCTYPE html>
                            <html>
                            <head>
                            <title>Welcome to nginx!</title>
                            <style>
                            html { color-scheme: light dark; }
                            body { width: 35em; margin: 0 auto;
                            font-family: Tahoma, Verdana, Arial, sans-serif; }
                            </style...
        RawContent        : HTTP/1.1 200 OK
                            Connection: keep-alive
                            Accept-Ranges: bytes
                            Content-Length: 615
                            Content-Type: text/html
                            Date: Wed, 01 Nov 2023 14:50:03 GMT
                            ETag: "6537cac7-267"
                            Last-Modified: Tue, 24 Oct 2023 ...
        Forms             : {}
        Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 615], [Content-Type, text/html]...}
        Images            : {}
        InputFields       : {}
        Links             : {@{innerHTML=nginx.org; innerText=nginx.org; outerHTML=<A href="http://nginx.org/">nginx.org</A>; outerText=nginx.org; tagName=A; href=http://nginx.org/}, @{innerHTML=nginx.com;    
                            innerText=nginx.com; outerHTML=<A href="http://nginx.com/">nginx.com</A>; outerText=nginx.com; tagName=A; href=http://nginx.com/}}
        ParsedHtml        : System.__ComObject
        RawContentLength  : 615
     ```

## 3. Custom HTML File and Image
   - Create an HTML file named "index.html" with the specified content.
   - Copy the HTML file to the container:
     ```sh
     > docker cp index.html nginx_container:/usr/share/nginx/html/index.html
     Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html/index.html
     ```
   - Commit the changes to a new image:
     ```sh
     > docker commit nginx_container my_website:latest
     sha256:6434060cd414a665d5ccae42f4d109ffcc52884617ed6817f84e0fcebadd0949
     ```

## 4. Test and Analyze
   - Remove the original container:
     ```sh
     docker rm -f nginx_container
     ```
   - Verify the container has been removed:
     ```sh
     > docker ps -a
     CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
     ```
   - Run a new container using the custom image:
     ```sh
     > docker run --name new_nginx_container -p 80:80 -d my_website:latest
     31d0ea3603e436cbc5f20dd9e0f924b90e6ba5742f73dc4531a7304cfabe082d
     ```
   - Access the web server and check the custom HTML content:
     ```sh
        > curl http://127.0.0.1
        StatusCode        : 200
        StatusDescription : OK
        Content           : <html>

                            <head>
                                <title>The best</title>
                            </head>

                            <body>
                                <h1>website</h1>
                            </body>

                            </html>
        RawContent        : HTTP/1.1 200 OK
                            Connection: keep-alive
                            Accept-Ranges: bytes
                            Content-Length: 106
                            Content-Type: text/html
                            Date: Wed, 01 Nov 2023 15:14:39 GMT
                            ETag: "65426aa9-6a"
                            Last-Modified: Wed, 01 Nov 2023 1...
        Forms             : {}
        Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 106], [Content-Type, text/html]...}
        Images            : {}
        InputFields       : {}
        Links             : {}
        ParsedHtml        : System.__ComObject
        RawContentLength  : 106
     ```
   - Analyze the changes made to the new image:
     ```sh
     > docker diff new_nginx_container
     C /run
     C /run/nginx.pid
     C /etc
     C /etc/nginx
     C /etc/nginx/conf.d
     C /etc/nginx/conf.d/default.conf
     ```
     The `docker diff` command output shows changes made to the file system of the `new_nginx_container`. The changes are mainly in the `/etc/nginx` directory and its subdirectories, which are related to the Nginx web server configuration, as well as the `/run` directory, where the PID file for the Nginx process is stored. These changes are expected as part of running the Nginx web server inside the container.