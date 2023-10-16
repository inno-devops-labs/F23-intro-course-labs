# Task 2: Image and Container Operations

1. **Create Image Archive**

    To pull the latest ubuntu image: `docker pull ubuntu:latest`

    ```
    >docker pull ubuntu:latest
    latest: Pulling from library/ubuntu
    37aaf24cf781: Pulling fs layer
    37aaf24cf781: Verifying Checksum
    37aaf24cf781: Download complete
    37aaf24cf781: Pull complete
    Digest: sha256:9b8dec3bf938bc80fbe758d856e96fdfab5f56c39d44b0cff351e847bb1b01ea
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest
    ```

    For creating an archive I used the command: `docker save ubuntu:latest | gzip > ~/Downloads/ubuntu.tar.gz`.

    Let's check the size of the image:

    ```
    >docker images
    REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
    new          latest    72ef73fe8f6f   16 hours ago   8.66GB
    ubuntu       latest    3565a89d9e81   13 days ago    77.8MB
    ```
    
    So the size of the image is `77.8MB`.

    Let's check the size of the archive:

    ```
    >du -h ~/Downloads/ubuntu.tar.gz
    29M     /c/Users/Айнура/Downloads/ubuntu.tar.gz
    ```

    We see that the size of archive is `29MB`.

    There is a difference because of compression algorithms in archive files.

2. **Run Nginx Container**

    1. First we need to pull nginx image:

        ```
        $ docker pull nginx
        Using default tag: latest
        latest: Pulling from library/nginx
        a803e7c4b030: Pulling fs layer
        8b625c47d697: Pulling fs layer
        4d3239651a63: Pulling fs layer
        0f816efa513d: Pulling fs layer
        01d159b8db2f: Pulling fs layer
        5fb9a81470f3: Pulling fs layer
        9b1e1e7164db: Pulling fs layer
        01d159b8db2f: Waiting
        0f816efa513d: Waiting
        5fb9a81470f3: Waiting
        9b1e1e7164db: Waiting
        4d3239651a63: Download complete
        0f816efa513d: Download complete
        01d159b8db2f: Verifying Checksum
        01d159b8db2f: Download complete
        5fb9a81470f3: Verifying Checksum
        5fb9a81470f3: Download complete
        9b1e1e7164db: Verifying Checksum
        9b1e1e7164db: Download complete
        a803e7c4b030: Verifying Checksum
        a803e7c4b030: Download complete
        8b625c47d697: Verifying Checksum
        8b625c47d697: Download complete
        a803e7c4b030: Pull complete
        8b625c47d697: Pull complete
        4d3239651a63: Pull complete
        0f816efa513d: Pull complete
        01d159b8db2f: Pull complete
        5fb9a81470f3: Pull complete
        9b1e1e7164db: Pull complete
        Digest: sha256:32da30332506740a2f7c34d5dc70467b7f14ec67d912703568daff790ab3f755
        Status: Downloaded newer image for nginx:latest
        docker.io/library/nginx:latest
        ```

    2. Running the container
    
        2.1 We run the container with ports binding and specified name `nginx_container``, in detached mode:

        ```
        >docker run -d -p 80:80 --name nginx_container nginx
        af905c1783280c7e1d51c0a168376880adba84c34c1742b808ae049473e5debd
        ```

        2.2 Let's verify that container is running:

        ```
        >docker ps -a
        CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                NAMES
        af905c178328   nginx     "/docker-entrypoint.…"   2 minutes ago   Up 2 minutes   0.0.0.0:80->80/tcp   nginx_container
        ```

        ```
        > curl localhost:80
        % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                        Dload  Upload   Total   Spent    Left  Speed
        100   615  100   615    0     0  63271      0 --:--:-- --:--:-- --:--:-- 68333<!DOCTYPE html>
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
        ```

    3. Create an HTML file:

        3.1 Let's create an HTML file:

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

        3.2 Copy the HTML file to the container:

        `docker cp index.html nginx_container:/usr/share/nginx/html`

        3.3 Veryfing the changes:

        ```
        >curl localhost:80
        % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                        Dload  Upload   Total   Spent    Left  Speed
        100   100  100   100    0     0  10131      0 --:--:-- --:--:-- --:--:-- 11111<html>
        <head>
        <title>The best</title>
        </head>
        <body>
        <h1>website</h1>
        </body>
        </html>
        ```

    4. Create Custom Image

        4.1 Create a custom Docker image from the running container with a tag 'latest' and name it "my_website".

        ```
        >docker commit nginx_container my_website:latest
        sha256:03fba800c3059c4355e772ff2fffbc6b3026eafe16bb81418847c8a798b63771
        ```

        4.2 Let's verify the image:

        ```
        > docker images
        REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
        my_website   latest    03fba800c305   46 seconds ago   187MB
        new          latest    72ef73fe8f6f   17 hours ago     8.66GB
        ubuntu       latest    3565a89d9e81   13 days ago      77.8MB
        nginx        latest    61395b4c586d   2 weeks ago      187MB
        ```

    5. Remove Original Container

        5.1 First stop the `nginx_container`

        ```
        > docker stop nginx_container
        nginx_container
        ```

        5.2 Then remove the container:

        ```
        > docker rm nginx_container
        nginx_container
        ```

        5.3 Let's verify that it was removed:

        ```
        > docker ps -a
        CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
        ```

    6.  Create New Container

        ```
        > docker run -d -p 80:80 --name nginx_container my_website
        4d4b5903ef01d078c8a5a989ec5b31a08d75fcb2c791a2517b921f46ffd102b8
        ```

        Let's verify:

        ```
        > docker ps -a
        CONTAINER ID   IMAGE        COMMAND                  CREATED          STATUS          PORTS                NAMES
        4d4b5903ef01   my_website   "/docker-entrypoint.…"   32 seconds ago   Up 30 seconds   0.0.0.0:80->80/tcp   nginx_container
        ```

    7. Test Web Server

        ```
        > curl localhost:80
        % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                        Dload  Upload   Total   Spent    Left  Speed
        100   100  100   100    0     0   4777      0 --:--:-- --:--:-- --:--:--  5000<html>
        <head>
        <title>The best</title>
        </head>
        <body>
        <h1>website</h1>
        </body>
        </html>
        ```    

    8. Analyze Image Changes

        ```
        > docker diff nginx_container
        C /etc
        C /etc/nginx
        C /etc/nginx/conf.d
        C /etc/nginx/conf.d/default.conf
        C /run
        C /run/nginx.pid
        ```

        The `docker diff` command is used to list the changed files and directories in a container᾿s filesystem since the container was created. The `C` symbol means that a file or directory was changed. Therefore, we can say that within all these directories some change(s) was\were made. But just using `docker diff` we cannot say what specific changes were made , because the command does not provide details about this.