
# Task 1: Container Management

1. List Containers:
    - I used `docker ps -a` to list containers in environment and here's the output i got:
   ```
   CONTAINER ID   IMAGE                               COMMAND                  CREATED       STATUS                    PORTS 
   ```

2. Pull Latest Ubuntu Image:
    - I used `docker ps -a` to list containers in environment and here's the output i got:
   
    ```
    latest: Pulling from library/ubuntu
    aece8493d397: Pull complete 
    Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest
    ```
   - The size of container is `77.8 MB`

3. Run Container:
    - I used `docker run -it --name devops ubuntu:latest` to run container. Because there is no foreground process since the default command is `/bin/bash`, it requires interactive model (the `-it` flag) to run.
    
4. Remove Image:
    - I used `docker rmi image-id` command to remove container but it does not work because we have a container associated with it so it gives following error:
    ```
    Error response from daemon: conflict: unable to delete e4c58958181a (must be forced) - image is being used by stopped container d0573e947e07
    ```
    So first, we need to remove container using: ```docker container rm container-ID```

    Then we can run `docker rmi image-id` and remove container and this is what i did and removed container succesfully. The output of removal is:
    ```
    Untagged: ubuntu:latest
    Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
    Deleted: sha256:256d88da41857db513b95b50ba9a9b28491b58c954e25477d5dad8abb465430b
    ``` 
   
