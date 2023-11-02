# Create Image Archive:
1. Pull the latest Ubuntu image:
    ```ruby
    ahmad@ahmad-workstation:~$ sudo docker pull ubuntu:latest
    latest: Pulling from library/ubuntu
    aece8493d397: Already exists 
    Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest

    ```
2. Create an archive file:
    ```ruby
    ahmad@ahmad-workstation:~$ docker save -o ubuntu.tar ubuntu:latest
    ```
3. Compare the size of the archive file with the size of the original image:
    ```ruby
    ahmad@ahmad-workstation:~$ du -sh ubuntu.tar
    77M	ubuntu.tar
    ahmad@ahmad-workstation:~$ docker images | grep ubuntu
    ubuntu                 latest                e4c58958181a   3 weeks ago    77.8MB
    ```

# Run Nginx Container:
1.  ```ruby 
    ahmad@ahmad-workstation:~$ docker run -d -p 80:80 --name nginx_container nginx
    Unable to find image 'nginx:latest' locally
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
    5bab75a2d09ea8e8ac2ebc9ef214d780989d6d35aaecf1306d52645150dbfc83
    ```
2. Verify that the web server is running:
    ```ruby
    % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                    Dload  Upload   Total   Spent    Left  Speed
    100   615  100   615    0     0   777k      0 --:--:-- --:--:-- --:--:--  600k
    ```

3. Copy the HTML file to the container at the appropriate location to serve as an index file:
    ```ruby
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ docker cp index.html nginx_container:/usr/share/nginx/html
    Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html
    ```
4. Create Custom Image:
    ```ruby
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ docker commit nginx_container my_website:latest
    sha256:664a477cbb696544cc14b2dc08c0a66b5d3dafb05b8d32cd2cbe80d73516c311
    ```
5. Remove Original Container:
    ```ruby
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ docker rm -f nginx_container
    nginx_container
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ docker ps 
    CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
    ```
6. Create a new container using the custom image you've created: 
    ```ruby
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ docker run -d -p 80:80 --name new_container my_website:latest
    d9f00dc6a057f93a959bb48bd07f72fbd01eb115198b7fbe67ac54bb2eda4939
    ```

7. Test Web Server:
    ```ruby
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ curl localhost:80 -o my_website.html
    % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                    Dload  Upload   Total   Spent    Left  Speed
    100   109  100   109    0     0   140k      0 --:--:-- --:--:-- --:--:--  106k
    ```

8. Analyze Image Changes:
    ```ruby
    ahmad@ahmad-workstation:~/Git/intro-course-labs/lab8$ docker diff new_container
    C /etc
    C /etc/nginx
    C /etc/nginx/conf.d
    C /etc/nginx/conf.d/default.conf
    C /run
    C /run/nginx.pid
    ```