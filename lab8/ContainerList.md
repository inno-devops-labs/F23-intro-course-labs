
# Task 1: Container Management

## 1. List Containers:


- The command for listing container is:
    ```
    docker ps -a
    ```
- Here's the output i got since i have no containers apparently:
    ```
    CONTAINER ID   IMAGE                               COMMAND                  CREATED       STATUS                    PORTS 
    ```

## 2. Pull Latest Ubuntu Image:


- Command for pulling latest ubuntu image:
    ```
    docker pull ubuntu:latest
    ```
    
-  Here's the output i got:

    ```
    latest: Pulling from library/ubuntu
    aece8493d397: Pull complete 
    Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest
    ```
- The size of container is `77.8 MB` that can be checked using `docker images` command

## 3. Run Container:
- Command for running container:
    ```
    docker run -it --name devops ubuntu:latest
    ```
- Because there is no foreground process since the default command for ubuntu container is `/bin/bash`, it requires interactive model (the `-it` flag) to run.

## 4. Remove Image:
- I used following command to remove container:
    ```
    docker rmi e4c58958181a
    ```
    But it does not work because we have a container associated with it so it gives following error:
    ```
    Error response from daemon: conflict: unable to delete e4c58958181a (must be forced) - image is being used by stopped container d0573e947e07
    ```
- In order to remove container i used:
    ```
    docker container rm d0573e947e07
    ```

- Then I used following command and removed container using:
    ```
    docker rmi e4c58958181a
    ```
- The output of removal is:
    ```
    Untagged: ubuntu:latest
    Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
    Deleted: sha256:256d88da41857db513b95b50ba9a9b28491b58c954e25477d5dad8abb465430b
    ``` 

