# Task 2: Image and Container Operations

1. Create Image Archive:
   - Pull the latest Ubuntu image the following command:
   - **Input:**
      ``` bash
         sudo docker pull ubuntu:latest
      ```
   - **Output:** 
      ``` bash 
            latest: Pulling from library/ubuntu
            aece8493d397: Pull complete 
            Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
            Status: Downloaded newer image for ubuntu:latest
            docker.io/library/ubuntu:latest
            ahmad@ahmad-G5-ME:~/Desktop/labs/intr
      ```
   - Create an archive file from it:
      - **Input:**
      ``` bash
         sudo docker save -o ubuntu.tar ubuntu:latest
      ```
   - Compare the size of this archive file with the size of the original image:
      - **Input:**
      ``` bash
      du -sh ubuntu.tar
      ```
     - **Output:** 
      ```bash
         77M     ubuntu.tar
      ```

      - **Input:**
      ``` bash
         sudo docker images | grep ubuntu
      ```
      -**Output:**
      ```bash
        ubuntu       latest    e4c58958181a   2 weeks ago   77.8MB
      ```
   
2. Run Nginx Container:
   1. To run a container using the Nginx web server image and bind the container's **port 80** to the local **port 80** in detached mode by the  name  "nginx_container" use the following command: 
      - **Input:**
      ``` bash
         sudo docker run -d -p 80:80 --name nginx_container nginx
      ```

      - **Output:** 
      ``` bash
         Unable to find image 'nginx:latest' locally
         latest: Pulling from library/nginx
         a378f10b3218: Pull complete 
         4dfff0708538: Pull complete 
         2135e49ace4b: Pull complete 
         c843f6b280ce: Pull complete 
         6f35ab6f1400: Pull complete 
         6c538b49fa4a: Pull complete 
         d57731fb9008: Pull complete 
         Digest: sha256:b4af4f8b6470febf45dc10f564551af682a802eda1743055a7dfc8332dffa595
         Status: Downloaded newer image for nginx:latest
         0264d532c77ecf98fa1382bb561ad39416ea77145eb5767c5af2d008c84ddd8a

      ```
      - Verify that the web server is running and accessible from the local machine.: 
      - **Input:**
      ``` bash
         sudo curl localhost:80 -o /home/ahmad/Desktop/labs/intro-course-labs/nginx.html 
      ```
      - **Output:**
      ```bash
         % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                         Dload  Upload   Total   Spent    Left  Speed
         100   615  100   615    0     0   490k      0 --:--:-- --:--:-- --:--:--  600k
      ```

   3. Create HTML File:
      - Create an HTML file with the specified content:
      - **Input:**
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
      -**Input:**
       ``` bash
       sudo docker cp index.html nginx_container:/usr/share/nginx/html
       ```
       

   4. Create Custom Image:
      - Create a custom Docker image from the running container and name it "my_website" and tag the container with the "latest" tag:
      -**Input:**
       ``` bash
       sudo docker commit nginx_container my_website:latest
       ```


   5. Remove Original Container:
      - Remove the original container (nginx_container) 
      -**Input:**
      ``` bash
         sudo docker rm -f nginx_container`
      ```
      - verify that it has been successfully removed:
      -**Input:**
       ``` bash
         sudo docker ps
       ```


   6. Create New Container:
      - Create a new container using the custom image you've created:
      -**Input:**
      ``` bash
         sudo docker run -d -p 80:80 --name new_container my_website:latest
      ```

   7. Test Web Server:
      - Use the `curl` command to access the web server: 
      -**Input:**
      ``` bash
         curl localhost:80 -o my_website.html
      ```

   8. Analyze Image Changes:
      - Use the the `docker diff` command to analyze the changes made to the new image:
      -**Input:**
      ``` bash
         sudo docker diff new_container
      ```
      - **Output:** 
      ```bash
         C /etc
         C /etc/nginx
         C /etc/nginx/conf.d
         C /etc/nginx/conf.d/default.conf
         C /run
         C /run/nginx.pid
      ```