# Containers Lab - Docker
## Task 1
### 1 List Containers.
In order to list all containers, run command below:
> docker container ls -a  

The output given:  
|CONTAINER ID|   IMAGE                        |COMMAND                  |CREATED        |STATUS                    |PORTS     |NAMES |
|------------|--------------------------------|-------------------------|---------------|--------------------------|----------|------|
|11e93d507f32|   text_classification-server   |"/bin/sh -c 'gunicor…"   |43 hours ago   |Exited (3) 21 hours ago   |          |text_classification-server-1|  
### 2 Pull Latest Ubuntu Image.
In order to pull latest Ubuntu image, run this command (latest is default tag, so it's optional):
> docker pull ubuntu

The output given:  
>Using default tag: latest  
latest: Pulling from library/ubuntu  
aece8493d397: Pull complete   
Digest: sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f  
Status: Downloaded newer image for ubuntu:latest  
docker.io/library/ubuntu:latest  
What's Next?  
  View a summary of image vulnerabilities and recommendations → docker scout quickview ubuntu  
### 3 Run Container.
In order to run it:
> docker run ubuntu

The output given:  
### 4 Remove Image.
In order to remove created image:
> docker image rm --force e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4

The output given:  
>Untagged: ubuntu:latest  
Untagged: ubuntu@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f  
Deleted: sha256:e4c58958181a5925816faa528ce959e487632f4cfd192f8132f71b32df2744b4  
