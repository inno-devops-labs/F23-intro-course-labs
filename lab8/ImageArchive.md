# Containers Lab - Docker

## Task 2: Image and Container Operations

1. Create Image Archive:
    Pull latest ubuntu image:
    ```
    docker pull ubuntu:latest
    > latest: Pulling from library/ubuntu
    > 5af00eab9784: Pull complete
    > Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
    > Status: Downloaded newer image for ubuntu:latest
    > docker.io/library/ubuntu:latest
    ```
    Create an archive from it:
    ```
    docker save ubuntu | gzip > ubuntu.tar
    ls
    > ContainerList.md ImageArchive.md  README.md  ubuntu.tar
    ```
    Find out size of the archive:
    ```
    du -h ubuntu.tar
    > 27M	ubuntu.tar
    ```
    ind out size of the original image:
    ```
    docker images | grep ubuntu
    > ubuntu                   latest    37f74891464b   3 weeks ago     69.2MB
    ```
    Archive is smaller due to gzip compression.

2. Run Nginx Container:
    Pull nginx image:
    ```
    docker pull nginx
    > Using default tag: latest
    > latest: Pulling from library/nginx
    > 3ae0c06b4d3a: Pull complete
    > efe5035ea617: Pull complete
    > a9b1bd25c37b: Pull complete
    > f853dda6947e: Pull complete
    > 38f44e054f7b: Pull complete
    > ed88a19ddb46: Pull complete
    > 495e6abbed48: Pull complete
    > Digest: sha256:08bc36ad52474e528cc1ea3426b5e3f4bad8a130318e3140d6cfe29c8892c7ef
    > Status: Downloaded newer image for nginx:latest
    > docker.io/library/nginx:latest
    ```
    Run container with ports binding and specified name `nginx_container`, in detached mode:
    ```
    docker run -d -p 80:80 --name nginx_container nginx
    > ebac7427a943be9cdf67eda78a41a1f930537b063e18087949310de8cee700c2
    ```
    Verify container is running:
    ```
    docker ps -a
    > CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                NAMES
    > ebac7427a943   nginx     "/docker-entrypoint.…"   3 seconds ago   Up 2 seconds   0.0.0.0:80->80/tcp   nginx_container

    curl localhost
    > <!DOCTYPE html>
    > <html>
    > <head>
    > <title>Welcome to nginx!</title>
    > <style>
    > html { color-scheme: light dark; }
    > body { width: 35em; margin: 0 auto;
    > font-family: Tahoma, Verdana, Arial, sans-serif; }
    > </style>
    > </head>
    > <body>
    > <h1>Welcome to nginx!</h1>
    > <p>If you see this page, the nginx web server is successfully installed and
    > working. Further configuration is required.</p>
    > <p>For online documentation and support please refer to
    > <a href="http://nginx.org/">nginx.org</a>.<br/>
    > Commercial support is available at
    > <a href="http://nginx.com/">nginx.com</a>.</p>
    > <p><em>Thank you for using nginx.</em></p>
    > </body>
    > </html>
    ```

3. Create HTML File:
    Create file:
    ```
    echo "<html>
      <head>
      <title>The best</title>
      </head>
      <body>
      <h1>website</h1>
      </body>
      </html>" > index.html
    ```
    Copy the HTML file to the container:
    ```
    docker cp index.html nginx_container:/usr/share/nginx/html
    ```
    Verify changes:
    ```
    curl localhost
    > <html>
    > <head>
    > <title>The best</title>
    > </head>
    > <body>
    > <h1>website</h1>
    > </body>
    > </html>
    ```

4. Create Custom Image:
    Create image:
    ```
    docker commit nginx_container my_website:latest
    > a229d6bfc438844c9357315a63af658a4031243ab6365c166da617fb5336a970
    ```
    Verify:
    ```
    docker images | grep my_website
    > my_website               latest    a229d6bfc438   43 seconds ago   192MB
    ```

5. Remove Original Container:
    Remove container:
    ```
    docker stop nginx_container && docker rm nginx_container
    > nginx_container
    > nginx_container
    ```
    Verify:
    ```
    docker ps -a
    > CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
    ```

6. Create New Container:
    Run new container:
    ```
    docker run -d -p 80:80 --name nginx_container my_website
    > 19814dc95e0c173aac76258d65156089bb6c22d586234df0dd1758ca0cdbd385
    ```
    Verify:
    ```
    docker ps -a
    > CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                NAMES
    > 19814dc95e0c   my_website   "/docker-entrypoint.…"   8 seconds ago   Up 8 seconds   0.0.0.0:80->80/tcp   nginx_container
    ```

7. Test Web Server:
    ```
    curl localhost
    > <html>
    > <head>
    > <title>The best</title>
    > </head>
    > <body>
    > <h1>website</h1>
    > </body>
    > </html>
    ```
    
8. Analyze Image Changes:  
    Use `docker diff`:
    ```
    docker diff nginx_container
    > C /etc
    > C /etc/nginx
    > C /etc/nginx/conf.d
    > C /etc/nginx/conf.d/default.conf
    > C /run
    > C /run/nginx.pid
    ```
    Output does not say much because it analyzes container's filesystem.
    Lets see layers of with `docker inspect` both images. For original nginx:
    ```
    "sha256:efd1965f1684506744544d66c57387a60bd89607480e2dbc89bf3e8a30081bc1",
    "sha256:c58d5a26ffa8db76c403fb4c29965689bb96d291f6b7973fcd2da7458e77b09f",
    "sha256:4e6bef96e37ee051573dda6c367adb7310ef7a87128ce00fcf0ce2cbd2d8779b",
    "sha256:ad6517b0c9140f029ee765885ec82f571513bc8db2f834aa1d204f67d61cad12",
    "sha256:7cd1e5cbf1244b4fcca08e842c7672aba5ead973c2a4532496278aa5846802a3",
    "sha256:45437bbd87f23643f7893993d62b4affddbdf91808ff8cd0530b301acbc5f120",
    "sha256:0a13d2aaa54c14621a732a3ffe6f25a487aa726529ad152c4174d2e741b7ef66"
    ```
    For custom my_website image:
    ```
    "sha256:efd1965f1684506744544d66c57387a60bd89607480e2dbc89bf3e8a30081bc1",
    "sha256:c58d5a26ffa8db76c403fb4c29965689bb96d291f6b7973fcd2da7458e77b09f",
    "sha256:4e6bef96e37ee051573dda6c367adb7310ef7a87128ce00fcf0ce2cbd2d8779b",
    "sha256:ad6517b0c9140f029ee765885ec82f571513bc8db2f834aa1d204f67d61cad12",
    "sha256:7cd1e5cbf1244b4fcca08e842c7672aba5ead973c2a4532496278aa5846802a3",
    "sha256:45437bbd87f23643f7893993d62b4affddbdf91808ff8cd0530b301acbc5f120",
    "sha256:0a13d2aaa54c14621a732a3ffe6f25a487aa726529ad152c4174d2e741b7ef66",
    "sha256:2a220c3062d60fa86217079664d2977594d1b955013ae090121394bda225758f"
    ```
    One layer is added on tp in our custom image. This mist by new index.html file.
    