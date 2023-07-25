## Create Image Archive

1. Pull Latest Ubuntu Image
Command:
```shell
docker pull ubuntu:latest
```

Result:
```shell
latest: Pulling from library/ubuntu
3153aa388d02: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```

2. Create an archive file from it
Command:
```shell
docker save -o ubuntu_latest.tar ubuntu:latest
```

3. Get the size of the original "ubuntu:latest" image
Command:
```shell
docker images --format "{{.Repository}}:{{.Tag}}\t{{.Size}}" | Select-String "ubuntu:latest"
```

Result:
```shell
ubuntu:latest   77.8MB
```
4. Get the size of the archive file (ubuntu_latest.tar)
Command:
```shell
(Get-Item .\ubuntu_latest.tar).Length / 1MB
```

Result:
```shell
76,6240234375
```

### Explanation

* If the archive file size is smaller than the original image size, it means the archive has compressed the layers and reduced the overall size.
* If the archive file size is larger than the original image size, it could be due to compression inefficiencies or additional metadata added during the archive process.


## Run Nginx Container

1. Pull the image of nginx.
Command:
```shell
docker pull nginx
```

Result:
```shell
Using default tag: latest
latest: Pulling from library/nginx
faef57eae888: Already exists
76579e9ed380: Pull complete
cf707e233955: Pull complete
91bb7937700d: Pull complete
4b962717ba55: Pull complete
f46d7b05649a: Pull complete
103501419a0a: Pull complete
Digest: sha256:08bc36ad52474e528cc1ea3426b5e3f4bad8a130318e3140d6cfe29c8892c7ef
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest
```

2. Run the container.
Command:
```shell
docker run -d -p 80:80 --name nginx_container nginx
```

3. Verify that the web server is running and accessible from the local machine 

Command:
```shell
Invoke-WebRequest -Uri 'http://localhost'
```

Result:
```shell
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
                    Date: Tue, 25 Jul 2023 09:27:39 GMT
                    ETag: "6488865a-267"
                    Last-Modified: Tue, 13 Jun 2023 ...
Forms             : {}
Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 615], [Content-Type, text/html]
                    ...}
Images            : {}
InputFields       : {}
Links             : {@{innerHTML=nginx.org; innerText=nginx.org; outerHTML=<A href="http://nginx.org/">nginx.org</A>; o
                    uterText=nginx.org; tagName=A; href=http://nginx.org/}, @{innerHTML=nginx.com; innerText=nginx.com;
                     outerHTML=<A href="http://nginx.com/">nginx.com</A>; outerText=nginx.com; tagName=A; href=http://n
                    ginx.com/}}
ParsedHtml        : mshtml.HTMLDocumentClass
RawContentLength  : 615
```

4. Create and copy the HTML file to the container at the appropriate location to serve as an index file

Command:
```shell
docker cp C:\Users\Asus\source\repos\ant1b0t\labs\lab8\index.html nginx_container:/usr/share/nginx/html/index.html
```

5. Verify

Command:
```shell
Invoke-WebRequest -Uri 'http://localhost'
```

Result:
```shell
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
                    Content-Length: 124
                    Content-Type: text/html
                    Date: Tue, 25 Jul 2023 09:42:21 GMT
                    ETag: "64bf96a5-7c"
                    Last-Modified: Tue, 25 Jul 2023 0...
Forms             : {}
Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 124], [Content-Type, text/html]
                    ...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : mshtml.HTMLDocumentClass
RawContentLength  : 124
```

6. Create Custom Image

Command:
```shell
docker commit nginx_container my_website:latest
```

Result:
```shell
sha256:0b0e5b4677b4c898b092858b42a22cec86ca2824665f1f28a6bfd34a098d35b7
```

7. Remove Original Container

```shell
docker stop nginx_container
docker rm nginx_container
```

8. Create New Container

```shell
docker run -d -p 80:80 --name nginx_container my_website
```

9. Test Web Server

Command:
```shell
curl 127.0.0.1:80
```

Result:
```shell
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
                    Content-Length: 124
                    Content-Type: text/html
                    Date: Tue, 25 Jul 2023 09:48:24 GMT
                    ETag: "64bf96a5-7c"
                    Last-Modified: Tue, 25 Jul 2023 0...
Forms             : {}
Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 124], [Content-Type, text/html]
                    ...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : mshtml.HTMLDocumentClass
RawContentLength  : 124
```

10. Analyze Image Changes

Command:
```shell
curl 127.0.0.1:80
```

Result:
```shell
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```

### Explanation

The docker diff command shows the differences between the container's file system and the image it was created from. It displays three types of symbols for each file or directory:
* "A" for added: This indicates that the file or directory is newly added to the container compared to the image.
* "C" for changed: This indicates that the file's content has been modified in the container compared to the image.
* "D" for deleted: This indicates that the file or directory has been deleted from the container compared to the image.

In our case we can observe С-type of changes. 