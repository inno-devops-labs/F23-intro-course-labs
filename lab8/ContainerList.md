# Containers Lab - Docker

## Task 1: Container Management

**To achieve a grade of 6/10**, follow these steps:

1. List Containers:
   - Used this command `sudo docker container ls -a `  to list the Docker containers regardless of their status (running, stopped, etc.).
   - Output:
        ```shell
        CONTAINER ID   IMAGE          COMMAND       CREATED       STATUS                   PORTS     NAMES
        6203ec810f22   c6b84b685f35   "/bin/bash"   9 hours ago   Exited (0) 9 hours ago             kind_perlman
        f52f551b6cc6   c6b84b685f35   "/bin/bash"   9 hours ago   Exited (0) 9 hours ago             laughing_murdock
        ```

2. Pull Latest Ubuntu Image:
   - Used this command ` sudo docker pull ubuntu:latest ` to pull the latest Ubuntu image from the Docker registry.
   - Output:
        ```shell
        latest: Pulling from library/ubuntu
        445a6a12be2b: Already exists 
        Digest: sha256:aabed3296a3d45cede1dc866a24476c4d7e093aa806263c27ddaadbdce3c1054
        Status: Downloaded newer image for ubuntu:latest
        docker.io/library/ubuntu:latest
        ``` 

3. Run Container:
   - Used this command `sudo docker run -d ubuntu:latest` to run a container using the Ubuntu image.
   - Output:
        ```bash
        CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS                      PORTS     NAMES
        40089be17a4e   ubuntu:latest   "/bin/bash"   17 seconds ago   Exited (0) 15 seconds ago             cool_buck
        6203ec810f22   ubuntu:latest   "/bin/bash"   9 hours ago      Exited (0) 9 hours ago                kind_perlman
        f52f551b6cc6   ubuntu:latest   "/bin/bash"   9 hours ago      Exited (0) 9 hours ago                laughing_murdock
        ```

4. Remove Image:
   - To remove the Ubuntu image I used `sudo docker image rm <container_id> -f`.
        > **Note:** we can't remove an image if there are containers associated with it. We need to stop and remove those containers first. 
        > - `sudo docker stop <container_id>` 
        > - `sudo docker container rm <container_id>`.

