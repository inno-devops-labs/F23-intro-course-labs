
# Task 1: Container Management


1. List Containers:
   - Used this command the following command to list the Docker containers regardless of their status (running, stopped, etc.).
   - **Input:**
    ``` bash
        sudo docker container ls -a 
    ```
   - **Output:**
        ```bash
        CONTAINER ID   IMAGE               COMMAND                  CREATED      STATUS                  PORTS     NAMES
        edbdc70c8657   my_website:latest   "/docker-entrypoint.…"   3 days ago   Exited (0) 3 days ago             new_container

        ```

2. Pull Latest Ubuntu Image:
   - Used the following command  to pull the latest Ubuntu image from the Docker registry.
   - **Input:**
      ``` bash
          sudo docker pull ubuntu:latest 
      ```
   - **Output:**
        ```bash
            latest: Pulling from library/ubuntu
            Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
            Status: Image is up to date for ubuntu:latest
            docker.io/library/ubuntu:latest

        ``` 

3. Run Container:
   - Used this command  to run a container using the Ubuntu image.
    -**Input:**
    ``` bash
      sudo docker run -d ubuntu:latest
    ```
   - **Output:**
        ```bash
        CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS                      PORTS     NAMES
        244e5d028ae3   ubuntu:latest   "/bin/bash"   20 seconds ago   Exited (0) 15 seconds ago             cool_buck
        ```
    - OR

    - **Input:**
        ``` bash
        sudo  docker run -it ubuntu
        ```
    - **Output:**
        ``` bash
          root@244e5d028ae3:/#
        ```

4. Remove Image:
   - To remove the Ubuntu image I used the following command:
      -**Input:**
        ``` bash
        sudo docker image rm 244e5d028ae3 -f
        ```
      where `244e5d028ae3` is the container ID. we can't remove the image if there are any containers associated with it. we msut stop and remove those containers first.
