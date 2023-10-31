

## Task 2: Image and Container Operations

In this task we will pull the latest ubuntu on image on *Windows* OS and apply some process to it

1. Create Image Archive:
   - we used the command ```docker pull ubuntu:latest```.
   - After pulling we archived the image by saving it as .tar file through the command ```docker save ubuntu -o ubuntu.tar```
   - Upon comparing between the compressed the image and the original one, we found that the original one has **smaller** size than the compressed one. I tried to sue the ```gzip``` tool for further compressing but it returend error.


#### Compressed Size:

```
 ls ubuntu.tar


    Directory: C:\Users\AbdulrahmanTakriti


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/31/2023  11:09 PM       80357376 ubuntu.tar
```
#### Original Size:

```
docker inspect -f "{{ .Size }}" ubuntu
77823855
```

2. Run Nginx Container:

We used the ```docker run```  with ```-d``` to create a detached mode, and the ```-p``` option to map to port
   - ```
        docker run --name nginx_container -p 80:80 -d nginx

        0bc9265a3441073662e7f49a8fc21f0ce3d3f10e22295bdb40dce7fefa769697
        ```

 The local host is runnable through ```localhost:80``` in browser. Moreoever, the output from command ```docker ps``` is :

  ![Alt text](image.png)

 ```
 CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                NAMES
0bc9265a3441   nginx     "/docker-entrypoint.…"   16 minutes ago   Up 16 minutes   0.0.0.0:80->80/tcp   nginx_cont
 ```

3. Create HTML File:
    - We created the ```index_file.html```, filled it with the desired text, and copied through the command: 

    ```
     docker cp "D:\Masters\Fall 2023\DevOps\intro-course-devops\lab8\index_file.html" nginx_container:/usr/share/nginx/html
    Successfully copied 1.54kB to nginx_container:/usr/share/nginx/html
     ```

    Where we specified first the ```SOURCE PATh``` of html file and ```DST PATH``` of the container

    - Now we create a custome modified image from the original one and named it ```my_website```:

```
docker commit nginx_container my_website:latest
sha256:a1a22e882a329fbd3ce88d62744b8406081fbdfab70f1ca28261558410e6e5d9
```


4. Create Custom Image:
      - Create a custom Docker image from the running container and name it "my_website".
      - Tag the container with the "latest" tag.



   5. Remove Original Container:
      - We removed the original container by command:
       ```
      docker rm -f nginx_container
      nginx_container
      ```
      - Note that we used ```-f``` as force removing since the container was in running mode.
      - To verify the successful of deleting, we run ```docker ps```.



   6. Create New Container:
      - New container was created using same old command but with new image name:
    ```
    docker run --name nginx_container -p 80:80 -d my_website:latest
    6e51d1c998506b5c99ef0e95b7041b39c8b4571c926f5469d7da01c4ae51a28f
    ```
    - Here we specified the name as ```my_website_latest``` rather than ```nginx```
    - 
   7. Test Web Server:
      - To test the webserver, we went to browser and typed  `127.0.0.1:80` or `localhost:80`. 
      - The service works perfectly

   8. Analyze Image Changes:
      - We used the command
       ```
        docker diff nginx_container
        C /etc
        C /etc/nginx
        C /etc/nginx/conf.d
        C /etc/nginx/conf.d/default.conf
        C /run
        C /run/nginx.pid
       ```
       here the `C` indicates as the `changes` done to the container.
    

