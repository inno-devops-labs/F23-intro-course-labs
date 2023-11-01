# Task 2

## Task 1. Pull Ubuntu

We are once again using command to get ubuntu:

```sh
docker pull ubuntu
```

Then, we can save it using command:

```sh
docker save ubuntu | gzip > ubuntu.tar.gz
```

For comparison, I saved the original, uncompressed image with 

```sh
docker save ubuntu > ubuntu.tar
```

As a result, original image weights 78474 KB, while compressed one weights 29013 KB

## Task 2. Run Nginx Container

First, we pull image with nginx, using:

```sh
docker pull nginx
```

Got the output:

```sh
Using default tag: latest
latest: Pulling from library/nginx
578acb154839: Pull complete
e398db710407: Pull complete
85c41ebe6d66: Pull complete
7170a263b582: Pull complete
8f28d06e2e2e: Pull complete
6f837de2f887: Pull complete
c1dfc7e1671e: Pull complete
Digest: sha256:86e53c4c16a6a276b204b0fd3a8143d86547c967dc8258b3d47c3a21bb68d3c6
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview nginx
```

Then, to run it with specific settings, I run it using:

```sh
docker run --name nginx_container -d -p 80:80 nginx
```

I got the output:

```sh
d7cf5311b9c839d5092302dd188eab0bd3a52d1257bfe76ba899f9d3143e6384
```

To verify, if it is accessible, I use curl:

```sh
curl http://localhost:80
```

I got response:

```sh


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
                    Date: Wed, 01 Nov 2023 20:28:12 GMT
                    ETag: "6537cac7-267"
                    Last-Modified: Tue, 24 Oct 2023 ...
Forms             : {}
Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 615], [Content-Type, text/html]...}
Images            : {}
InputFields       : {}
Links             : {@{innerHTML=nginx.org; innerText=nginx.org; outerHTML=<A href="http://nginx.org/">nginx.org</A>; outerText=nginx.org; tagName=A; href=http://nginx.org/}, @{innerHTML=nginx.com; innerText=nginx.com;
                    outerHTML=<A href="http://nginx.com/">nginx.com</A>; outerText=nginx.com; tagName=A; href=http://nginx.com/}}
ParsedHtml        : System.__ComObject
RawContentLength  : 615
```

Then, I copy an html, using command:

```sh
docker cp .\lab8\index.html nginx_container://usr/share/nginx/html
```

where docker cp - command to copy file to image, /usr/share/nginx/html - default index.html location on nginx container

Then, I get the following output:

```sh
Successfully copied 2.05kB to nginx_container://usr/share/nginx/html
```

I get hte following curl result after manipulations:

```sh
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
                    Content-Length: 92
                    Content-Type: text/html
                    Date: Wed, 01 Nov 2023 20:34:38 GMT
                    ETag: "6542b5d1-5c"
                    Last-Modified: Wed, 01 Nov 2023 20...
Forms             : {}
Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 92], [Content-Type, text/html]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : System.__ComObject
RawContentLength  : 92
```

## Task 4

To create custom image from the container, I use command:

```sh
docker commit nginx_container my_website:latest
```

I get the output:

```sh
sha256:c4034826c11b47594d9d9fe46c93c0a7963876a5987b53fc2967f6b77c256dff
```

listing all the images, I get:

```sh
> docker image ls
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
my_website   latest    c4034826c11b   7 seconds ago   187MB
nginx        latest    c20060033e06   15 hours ago    187MB
ubuntu       latest    e4c58958181a   3 weeks ago     77.8MB
```

## Task 5. Remove original container

To remove container, I use:

```sh
docker kill nginx_container
```

I get the output:

```sh
nginx_container
```

Then, I verify it has been deleted with ps:

```sh
> docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

## Task 6. Create new container

I use the modified version of command from earlier:

```sh
docker run --name my_nginx -d -p 80:80 my_website
```

## Task 7. Test Web Server

I apply curl, and get the output:

```sh
> curl http://localhost:80


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
                    Content-Length: 92
                    Content-Type: text/html
                    Date: Wed, 01 Nov 2023 20:45:01 GMT
                    ETag: "6542b5d1-5c"
                    Last-Modified: Wed, 01 Nov 2023 20...
Forms             : {}
Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 92], [Content-Type, text/html]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : System.__ComObject
RawContentLength  : 92
```

## Task 8

I run command:

```sh
docker diff my_nginx
```

I get the output:

```sh
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```

The command lists all stuff that was changed since container creation. Symbol C means they were changed
