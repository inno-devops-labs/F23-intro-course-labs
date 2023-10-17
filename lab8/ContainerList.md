
## Task 1: Container Management

### **1. List Containers:**
   ```shell
    sudo docker ps -a
   ```
   ```r
   CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS                     PORTS     NAMES
   d73c62777a60   ubuntu:latest   "/bin/bash"   23 seconds ago   Exited (0) 2 seconds ago             laughing_grothendieck
   ```

### **2. Pull Latest Ubuntu Image:**
   ```shell
    sudo docker pull ubuntu:latest
   ```
   ```r
    latest: Pulling from library/ubuntu
    aece8493d397: Pull complete 
    Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest
   ```

### **3. Run Container:**
    Run the docker container using the ubuntu image we just pulled, here we can interact with the container using the "it" flag
   ```shell
   sudo docker run -it ubuntu:latest /bin/bash
   sudo docker ps
   ```
   ```r
    CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS          PORTS     NAMES
    7df83d534576   ubuntu:latest   "/bin/bash"   27 seconds ago   Up 27 seconds             intelligent_kilby
   ```

### **4. Remove Image:**
Now we remove the ubuntu image we pulled earlier, but to remove the image we need to first remove the containers which use that image.
```shell
sudo docker rmi ubuntu:latest
```
```r
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4
Deleted: sha256:256d88da41857db513b95b50ba9a9b28491b58c954e25477d5dad8abb465430b
```
