## Task 2: Image and Container Operations

1. Create Image Archive:
   - Pull the latest Ubuntu image `sudo docker pull ubuntu:latest`
        - Output: 
            ```bash 
            latest: Pulling from library/ubuntu
            445a6a12be2b: Already exists 
            Digest: sha256:aabed3296a3d45cede1dc866a24476c4d7e093aa806263c27ddaadbdce3c1054
            Status: Downloaded newer image for ubuntu:latest
            docker.io/library/ubuntu:latest
            ```
   - Create an archive file from it: `docker save -o ubuntu.tar ubuntu:latest`
   - Compare the size of the archive file with the size of the original image:
       - `du -sh ubuntu.tar`  output: 

         ```bash
            77M     ubuntu.tar
         ```

      - `docker images | grep ubuntu`  output:

         ```bash
         ubuntu        latest    c6b84b685f35   6 weeks ago     77.8MB
         ```
   
2. Run Nginx Container:
   1. To run a container using the Nginx web server image and bind the container's port 80 to the local port 80 in detached mode by the  name  "nginx_container" use the following command: 
      - `docker run -d -p 80:80 --name nginx_container nginx`
      - The Output: 
         ```shell
         Unable to find image 'nginx:latest' locally
         latest: Pulling from library/nginx
         a803e7c4b030: Pull complete 
         8b625c47d697: Pull complete 
         4d3239651a63: Pull complete 
         0f816efa513d: Pull complete 
         01d159b8db2f: Pull complete 
         5fb9a81470f3: Pull complete 
         9b1e1e7164db: Pull complete 
         Digest: sha256:32da30332506740a2f7c34d5dc70467b7f14ec67d912703568daff790ab3f755
         Status: Downloaded newer image for nginx:latest
         4b775b8d3535c0c2a63a7f35d01fddd1bb1a175900b96a921c003fe709853ebf
         ```
      - Verify that the web server is running and accessible from the local machine: `curl localhost:80 -o ~/Documents/intro-course-labs/lab8/nginx.html` 
         - Output:
            ```ruby
            % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                                Dload  Upload   Total   Spent    Left  Speed
               100   615  100   615    0     0   600k      0 --:--:-- --:--:-- --:--:--  600k
            ```

   3. Create HTML File:
      - Create an HTML file with the specified content:
      ```bash
      echo 
      ```
      ```html
         <html>
         <head>
         <title>The best</title>
         </head>
         <body>
         <h1>website</h1>
         </body>
         </html>
      ```
         ```bash
         > index.html
         ```

      - Copy the HTML file to the container at the appropriate location to serve as an index file: 
      - `docker cp index.html nginx_container:/usr/share/nginx/html`

   4. Create Custom Image:
      - Create a custom Docker image from the running container and name it "my_website" and tag the container with the "latest" tag: `docker commit nginx_container my_website:latest`


   5. Remove Original Container:
      - Remove the original container (nginx_container) `docker rm -f nginx_container`
      - verify that it has been successfully removed: `docker ps` 

   6. Create New Container:
      - Create a new container using the custom image you've created: `docker run -d -p 80:80 --name new_container my_website:latest`

   7. Test Web Server:
      - Use the `curl` command to access the web server: `curl localhost:80 -o my_website.html`.

   8. Analyze Image Changes:
      - Use the `docker diff new_container` command to analyze the changes made to the new image.
      - Output: 
         ```bash
         C /etc
         C /etc/nginx
         C /etc/nginx/conf.d
         C /etc/nginx/conf.d/default.conf
         C /run
         C /run/nginx.pid
         ```
      - The changes are indicated with the letters `A` (Add), `D `(Delete), and `C `(Change).