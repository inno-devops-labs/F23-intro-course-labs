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
   - Create an archive file from it: 
   - Compare the size of the archive file with the size of the original image. 
   
2. Run Nginx Container:
   1. Document the output of all the commands in the tasks, along with your findings and observations.
   2. Use the appropriate command to run a container using the Nginx web server image:
      - Bind the container's port 80 to the local port 80.
      - Run the container in detached mode and name it "nginx_container".
      - Verify that the web server is running and accessible from the local machine.

   3. Create HTML File:
      - Create an HTML file with the specified content:

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

      - Copy the HTML file to the container at the appropriate location to serve as an index file.

   4. Create Custom Image:
      - Create a custom Docker image from the running container and name it "my_website".
      - Tag the container with the "latest" tag.

   5. Remove Original Container:
      - Remove the original container (nginx_container) and verify that it has been successfully removed.

   6. Create New Container:
      - Create a new container using the custom image you've created (the same way as the original container).

   7. Test Web Server:
      - Use the `curl` command to access the web server at `127.0.0.1:80`.

   8. Analyze Image Changes:
      - Use the `docker diff` command to analyze the changes made to the new image.
      - Explain the output of the `docker diff` command.