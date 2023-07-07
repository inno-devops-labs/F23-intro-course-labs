# Containers Lab - Docker

In this lab, you will gain hands-on experience with Docker, a popular containerization platform. You will perform various tasks related to Docker containers, such as listing and pulling images, running containers, and creating custom images. Follow the tasks below to complete the lab assignment.

## Task 1: Container Management

**To achieve a grade of 6/10**, follow these steps:

1. List Containers:
   - Use the appropriate command to list the Docker containers present in your environment.
   - Document the command used and provide the output in a Markdown file named "ContainerList.md" in the lab folder.

2. Pull Latest Ubuntu Image:
   - Use the appropriate command to pull the latest Ubuntu image from the Docker registry.
   - Document the command used in the same "ContainerList.md" file.

3. Run Container:
   - Use the appropriate command to run a container using the Ubuntu image you just pulled.
   - Document the command used and any relevant details about the container in the same "ContainerList.md" file.

4. Remove Image:
   - Attempt to remove the Ubuntu image you pulled earlier.
   - Document the command used and the outcome of the removal process in the same "ContainerList.md" file.

## Task 2: Image and Container Operations

To earn an additional 4 points, follow these steps for image and container operations:

1. Create Image Archive:
   - Pull the latest Ubuntu image and create an archive file from it.
   - Document the commands used in a Markdown file named "ImageArchive.md" in the lab folder.
   - Compare the size of the archive file with the size of the original image. Explain any differences, if present in the same "ImageArchive.md" file.

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

### Guidelines

- Use proper Markdown formatting and structure for the documentation files.
- Organize the files within the lab folder using appropriate naming conventions.
- Create a Pull Request to the main branch of the repository with your completed lab assignment.

> Note: Actively explore Docker container management and image operations to gain practical experience with containerization.
