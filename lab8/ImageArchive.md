# Image and Container Operations

1. To create an archive file from the Ubuntu image, we run the following command:

   ```bash
   docker save ubuntu:latest > ubuntu.tar
   ```

   The archive is 154 MB in size. The original image is 77.81 MB in size. The archive is larger than the original image because the archive contains the image and all of its layers, while the original image is just the image itself.

2. To run the Nginx container, we first pull the image by running the following command:

   ```bash
   docker pull nginx:latest
   ```

   Then we run nginx_container using the following command:

   ```bash
   docker run -d -p 80:80 --name nginx_container nginx:latest
   ```

3. Then we move into the container using the following command:

   ```bash
   docker exec -it nginx_container bash
   ```

   Then we create the HTML file using the following command:

   ```bash
   echo "<html> <head> <title>The best</title> </head> <body> <h1>website</h1> </body></html>" > /usr/share/nginx/html/index.html
   ```

   Then we exit the container using the following command:

   ```bash
   exit
   ```

   Screenshot of all actions up to this point:
   ![Alt text](https://i.ibb.co/v4q3m75/nginx2.png)

4. To create a custom image, we first commit the container using the following command:

   ```bash
   docker commit nginx_container my_website
   ```

   Then we tag the image using the following command:

   ```bash
   docker tag my_website my_website:latest
   ```

5. To remove the original container, we run the following command:

   ```bash
   docker rm -f nginx_container
   ```

   To verify that it has been successfully removed, we run the following command:

   ```bash
   docker ps -a
   ```

   The container should not be listed.

6. To create a new container using the custom image, we run the following command:

   ```bash
   docker run -d -p 80:80 --name nginx_container my_website:latest
   ```

   Screnshot of all actions from last screenshot up to this point:
   ![Alt text](https://i.ibb.co/j6jZsdd/nginx3.png)

7. To test the web server, we run the following command:

   ```bash
   curl
   ```

   The output should be the HTML file we created earlier.

8. To analyze the changes made to the new image, we run the following command:

   ```bash
   docker diff nginx_container
   ```

   The output is:

   ```bash
   C /run
   C /run/nginx.pid
   C /etc
   C /etc/nginx
   C /etc/nginx/conf.d
   C /etc/nginx/conf.d/default.conf
   ```

   This means that the container has changed the run directory, the nginx.pid file, and the nginx configuration file.

   Screenshot of all actions from last screenshot up to this point:
   ![Alt text](https://i.ibb.co/Wxv4xrj/nginx4.png)
