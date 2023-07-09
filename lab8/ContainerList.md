# Containers Lab - Docker

## Task 1: Container Management

1. List Containers:
   - To show docker container i used "docker ps"

2. Pull Latest Ubuntu Image:
   - To pull latest ubuntu image i used "docker pull ubuntu:latest"

3. Run Container:
   - To run the container i used "docker run --name devops -it -d ubuntu:latest". I used -it and -d flag to keep container active and be detached to my main shell.

4. Remove Image:
   - I tried to delete my image but i got an error: "Error response from daemon: conflict: unable to remove repository reference "ubuntu" (must force) - container 891d01bbc0c1 is using its referenced image 5a81c4b8502e". It means that it is not possible to delete the image if you have running containers.

